BOOL __PCSDeleteFromKeychainICDP(const void *a1, CFErrorRef *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = 0;
  v10 = 0;
  v28[3] = *MEMORY[0x1E69E9840];
  v28[0] = kPCSServiceName[0];
  v28[1] = kPCSiCloudServiceMarkerName[0];
  v28[2] = kPCSiCloudServiceName[0];
  v27 = *MEMORY[0x1E697AFF8];
  v26 = *MEMORY[0x1E697B018];
  v11 = *MEMORY[0x1E697AE70];
  v12 = *MEMORY[0x1E697B390];
  v13 = *MEMORY[0x1E695E4D0];
  v14 = *MEMORY[0x1E697B3B8];
  v15 = *MEMORY[0x1E695E4C0];
  key = *MEMORY[0x1E697AE80];
  v23 = *MEMORY[0x1E697AEB0];
  do
  {
    v16 = v28[v9];
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, v27, v26);
    if (!MutableForCFTypesWith)
    {
      break;
    }

    v18 = MutableForCFTypesWith;
    if (a1)
    {
      CFDictionarySetValue(MutableForCFTypesWith, key, a1);
    }

    if (PCSUseSyncKeychain == 1)
    {
      CFDictionarySetValue(v18, v23, v13);
    }

    v19 = _PCSSecItemDeleteIfPresent(v18);
    v20 = PCSSecError(v19, a2, @"SecItem failed to delete iCDP %@ domain", v16);
    CFRelease(v18);
    if (!v20)
    {
      break;
    }

    v10 = v9++ > 1;
  }

  while (v9 != 3);
  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

__CFDictionary *__PCSDeleteFromKeychainICDPForRPD(const void *a1, CFErrorRef *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = kPCSiCloudServiceGuitarfishName[0];
  v11 = *MEMORY[0x1E695E4D0];
  v20 = *MEMORY[0x1E695E4C0];
  v18 = *MEMORY[0x1E695E4D0];
  v19 = *MEMORY[0x1E697B3B8];
  v17 = *MEMORY[0x1E697B390];
  v16 = *MEMORY[0x1E697AE70];
  result = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (result)
  {
    v13 = result;
    if (a1)
    {
      CFDictionarySetValue(result, *MEMORY[0x1E697AE80], a1);
    }

    if (PCSUseSyncKeychain == 1)
    {
      CFDictionarySetValue(v13, *MEMORY[0x1E697AEB0], v11);
    }

    v14 = _PCSSecItemDeleteIfPresent(v13);
    v15 = PCSSecError(v14, a2, @"SecItem failed to delete iCDP %@ domain", v10);
    CFRelease(v13);
    return v15;
  }

  return result;
}

CFTypeRef PCSFPCreate(void *a1, void *a2, const void **a3)
{
  v5 = a1;
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (Empty = __PCSShareProtectionCreateEmpty(a3)) == 0)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v8 = Empty;
  RandomKey = CreateRandomKey();
  if (!RandomKey)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v10 = RandomKey;
  *(v8 + 208) = 1;
  if ([v5 isEqualToString:kPCSFPTypeClassic])
  {
    *(v8 + 204) = 2;
    v20 = CFRetain(v10);
    *(v8 + 72) = v20;
    generateObjectKey(v8, v20, 0);
  }

  else if ([v5 isEqualToString:kPCSFPTypeShare])
  {
    *(v8 + 204) = 3;
    *(v8 + 209) = 0;
    *(v8 + 213) = 0;
    generateOtherKeysFromRWMasterKey(v8, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    if (![v5 isEqualToString:kPCSFPTypeLight])
    {
      v17 = 0;
      goto LABEL_10;
    }

    *(v8 + 204) = 0;
    generateObjectKey(v8, v10, 0);
    *(v8 + 72) = CFRetain(v10);
  }

  *(v8 + 176) = PCFPOptionCopyIdentity(v6);
  v21 = PCFPOptionCopyIdentity(v6);
  if (v21)
  {
    v23 = v21;
    SigningIdentity = _PCSIdentityGetSigningIdentity(v21);
    v22 = SigningIdentity;
    if (SigningIdentity)
    {
      CFRetain(SigningIdentity);
    }

    CFRelease(v23);
  }

  else
  {
    v22 = 0;
  }

  *(v8 + 184) = v22;
  v25 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [v25 objectForKeyedSubscript:kPCSFPService];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = PCSServiceItemRequireAuthorship(v26);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  *(v8 + 214) = v27;
  v28 = [v25 objectForKeyedSubscript:kPCSFPZoneObject];

  if (v28)
  {
    v29 = v28[50];
    if (v29)
    {
      *(v8 + 200) = v29;
    }
  }

  KeyIDFromKey = CreateKeyIDFromKey(*(v8 + 72));
  *(v8 + 80) = KeyIDFromKey;
  if (!KeyIDFromKey)
  {
    v17 = 0;
    v18 = v8;
    v8 = v10;
    goto LABEL_11;
  }

  v17 = CFRetain(v8);
LABEL_10:
  v18 = v10;
LABEL_11:
  CFRelease(v18);
LABEL_12:
  CFRelease(v8);
LABEL_13:

  return v17;
}

void *PCFPOptionCopyIdentity(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v2 = [v1 objectForKeyedSubscript:kPCSFPIdentity];

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == PCSIdentityGetTypeID())
    {
      v4 = CFRetain(v2);
LABEL_18:
      v9 = v4;
      goto LABEL_20;
    }
  }

  v5 = [v1 objectForKeyedSubscript:kPCSFPIdentitySet];

  if (!v5 || (v6 = CFGetTypeID(v5), v6 != PCSIdentitySetGetTypeID()))
  {
    v9 = [v1 objectForKeyedSubscript:kPCSFPZoneObject];

    if (!v9)
    {
      goto LABEL_20;
    }

    v11 = CFGetTypeID(v9);
    if (v11 == PCSShareProtectionGetTypeID())
    {
      v12 = v9[2];
      if (v12)
      {
        v4 = PCSIdentitySetCopyCurrentIdentityWithError(v12, kPCSServiceRaw, 0);
        goto LABEL_18;
      }
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v7 = [v1 objectForKeyedSubscript:kPCSFPService];

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_19;
  }

  cf = 0;
  v9 = PCSIdentitySetCopyCurrentIdentityWithError(v5, v7, &cf);
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = cf;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCFPOptionCopyIdentity(kPCSFPIdentitySet) but failed to find identity: %@", buf, 0xCu);
  }

  v10 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v10);
  }

LABEL_20:

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t MarkForCounterSigning(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *(a2 + 16);
      if (result)
      {
        result = PCSIdentitySetCopyCurrentIdentityWithError(result, kPCSServiceRaw, 0);
        if (result)
        {
          v5 = result;
          v6 = *(a1 + 176);
          if (v6)
          {
            *(a1 + 176) = 0;
            CFRelease(v6);
          }

          v7 = *(a1 + 184);
          if (v7)
          {
            *(a1 + 184) = 0;
            CFRelease(v7);
          }

          *(a1 + 176) = v5;
          SigningIdentity = _PCSIdentityGetSigningIdentity(v5);
          v9 = SigningIdentity;
          if (SigningIdentity)
          {
            CFRetain(SigningIdentity);
          }

          *(a1 + 184) = v9;
          result = 1;
          *(a1 + 214) = 1;
          v10 = *(a2 + 200);
          if (v10)
          {
            *(a1 + 200) = v10;
          }
        }
      }
    }
  }

  return result;
}

const void *PCSFPCopyCurrentPrivateKey(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return PCSIdentitySetCopyCurrentIdentityWithError(v1, kPCSServiceRaw, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

CFTypeRef PCSFPCreateWithExported(uint64_t a1, uint64_t a2, const void **a3)
{
  if (!a2)
  {
    _PCSError(a3, 27, @"PCSFPCreateWithExported need an identity");
    return 0;
  }

  Mutable = PCSIdentitySetCreateMutable(a3);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  if (PCSIdentitySetAddIdentity(Mutable, a2))
  {
    v8 = CreateWithExportedInternal(a1, v7, 0, 0, 0, 0, 0, a3);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

CFTypeRef PCSObjectCreateFromExportedWithKeyedPCS(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    return OUTLINED_FUNCTION_0_2(a2, v7, *(a1 + 168), *(a1 + 200), 0, 0, a7, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

CFTypeRef PCSObjectCreateFromExportedWithKeyedPCSAndOptionsWithTrusts(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    return OUTLINED_FUNCTION_0_2(a3, v7, *(a1 + 168), *(a1 + 200), 0, a4, a7, a5);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

uint64_t PCSFPAddEncryptedSharePCS(uint64_t a1, CFDataRef theData, uint64_t a3, const void **a4)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  memset(v31, 0, sizeof(v31));
  v32 = 0u;
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v8 = OUTLINED_FUNCTION_8_0();
  v12 = decode_PCSShareProtection(v8, v9, v10, v11);
  if (v12)
  {
    v24 = v12;
    v25 = "decode PCSShareProtection";
LABEL_18:
    _PCSErrorASN1(a4, v25, v24);
LABEL_19:
    v21 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  if (CFDataGetLength(theData) || !*(&v27 + 1))
  {
    goto LABEL_19;
  }

  v13 = decode_PCSObjectSignature(*(*(&v27 + 1) + 24), *(*(&v27 + 1) + 16), v31, 0);
  if (v13)
  {
    v24 = v13;
    v25 = "decode PCSObjectSignature";
    goto LABEL_18;
  }

  if (!v32)
  {
    goto LABEL_19;
  }

  if (!*v32)
  {
    goto LABEL_19;
  }

  v14 = *(v32 + 8);
  if (*v14 != 3)
  {
    goto LABEL_19;
  }

  v15 = CFDataCreate(0, *(v14 + 24), *(v14 + 16));
  if (v15)
  {
    v21 = PCSPublicIdentityCreateFromKeyData();
    if (v21)
    {
      v22 = PCSFPAddPublicIdentityWithShareFlags(a1, v21, a3, v16, v17, v18, v19, v20);
      goto LABEL_11;
    }
  }

  else
  {
    _PCSErrorOOM(a4);
    v21 = 0;
  }

LABEL_20:
  v22 = 0;
LABEL_11:
  free_PCSShareProtection(v26);
  free_PCSObjectSignature(v31);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

uint64_t PCSFPCopyPrivateKey(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 16)) != 0)
  {
    return PCSIdentitySetCopyIdentity(v2, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

uint64_t PCSFPRemovePrivateKey(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 48) = 0;
    CFRelease(v5);
    v4 = *(a1 + 16);
  }

  return PCSIdentitySetRemoveIdentity(v4, a2);
}

uint64_t PCSFPChainingSetCurrentIdentity()
{
  OUTLINED_FUNCTION_6_0();
  if (v2)
  {
    v5 = *(v1 + 24);
    v4 = (v1 + 24);
    Mutable = v5;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v1 + 32);
    v4 = (v1 + 32);
    Mutable = v6;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  Mutable = PCSIdentitySetCreateMutable(0);
  *v4 = Mutable;
  if (!Mutable)
  {
    return 0;
  }

LABEL_6:
  if (!PCSIdentitySetSetCurrentIdentity(Mutable, v0))
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_7_0();

  return regenFPChainingAttribute(v7, v8);
}

uint64_t PCSFPChainingAddIdentity()
{
  OUTLINED_FUNCTION_6_0();
  if (v2)
  {
    v5 = *(v1 + 24);
    v4 = (v1 + 24);
    Mutable = v5;
    if (!v5)
    {
LABEL_5:
      Mutable = PCSIdentitySetCreateMutable(0);
      *v4 = Mutable;
      if (!Mutable)
      {
        return 0;
      }
    }
  }

  else
  {
    v6 = *(v1 + 32);
    v4 = (v1 + 32);
    Mutable = v6;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (PCSIdentitySetAddIdentity(Mutable, v0))
  {
    v7 = OUTLINED_FUNCTION_7_0();
    regenFPChainingAttribute(v7, v8);
  }

  return 0;
}

uint64_t PCSFPChainingRemoveIdentity(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 32;
  if (a2)
  {
    v3 = 24;
  }

  v4 = *(a1 + v3);
  if (!v4 || !PCSIdentitySetRemoveIdentity(v4, a3))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_7_0();

  return regenFPChainingAttribute(v5, v6);
}

void noMatchingIdentity(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v6, v7, v8, v9);
  if (Mutable)
  {
    v11 = Mutable;
    v12 = OUTLINED_FUNCTION_0_1();
    v15 = CFArrayCreateMutable(v12, v13, v14);
    if (v15)
    {
      v16 = v15;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __noMatchingIdentity_block_invoke;
      v33[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
      v33[4] = v15;
      PCSIdentitySetEnumeratePublicKeys(a1, v33);
      v17 = CFStringCreateByCombiningStrings(0, v16, @", ");
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(v11, kPCSErrorSetIdentities, v16);
        CFRelease(v16);
        v19 = OUTLINED_FUNCTION_0_1();
        v22 = CFArrayCreateMutable(v19, v20, v21);
        if (!v22)
        {
          v28 = 0;
          goto LABEL_10;
        }

        v23 = v22;
        if (a2)
        {
          v24 = *(a2 + 40);
          OUTLINED_FUNCTION_2_0();
          CFDictionaryApplyFunction(v25, v26, v23);
        }

        else
        {
          CFArrayAppendValue(v22, @"light-object");
        }

        v27 = CFStringCreateByCombiningStrings(0, v23, @", ");
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v11, kPCSErrorObjectIdentities, v23);
          CFRelease(v23);
          _PCSErrorUserInfo(0, a3, 73, v11, @"PCS object didn't contain any of the identities [%@], it contained [%@]", v29, v30, v31, v18);
LABEL_10:
          CFRelease(v11);
          CFRelease(v18);
          if (!v28)
          {
            return;
          }

          v32 = v28;
          goto LABEL_12;
        }

        CFRelease(v23);
        CFRelease(v11);
        v32 = v18;
      }

      else
      {
        CFRelease(v16);
        v32 = v11;
      }

LABEL_12:
      CFRelease(v32);
      return;
    }

    CFRelease(v11);
  }
}

CFTypeRef ProcessChainKeys(uint64_t a1, uint64_t a2, const void **a3)
{
  v19[0] = 0;
  v19[1] = 0;
  v4 = CFDataCreateWithBytesNoCopy(0, *(a2 + 8), *a2, *MEMORY[0x1E695E498]);
  if (!v4)
  {
    v17 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_7_0();
  v8 = PCSCloudKitShareTokenCopyDecryptedData(v6, v7);
  if (!v8)
  {
    v17 = 0;
    v9 = v5;
    goto LABEL_7;
  }

  v9 = v8;
  CFDataGetBytePtr(v8);
  CFDataGetLength(v9);
  v10 = OUTLINED_FUNCTION_8_0();
  v14 = decode_PCSSPKeyList(v10, v11, v12, v13);
  if (v14)
  {
    _PCSErrorASN1(a3, "decode PCSSPKeyList", v14);
    goto LABEL_12;
  }

  Mutable = PCSIdentitySetCreateMutable(a3);
  if (!Mutable)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = Mutable;
  v17 = CFRetain(Mutable);
  CFRelease(v16);
LABEL_6:
  CFRelease(v5);
LABEL_7:
  CFRelease(v9);
LABEL_8:
  free_PCSSPKeyList(v19);
  return v17;
}

uint64_t __fillChainingKeys_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v4 = PCSIdentityCopyExportedPublicKey(a2);
  if (v4)
  {
    v5 = v4;
    LODWORD(v8) = 3;
    if (!FillOctetString(&v9, v4) || add_PCSSPKeyList((*(*(a1 + 32) + 8) + 32)))
    {
LABEL_7:
      CFRelease(v5);
      return free_PCSSPKey(&v8);
    }

    CFRelease(v5);
    free_PCSSPKey(&v8);
    v6 = PCSIdentityCopyExportedPrivateKey(a2, 0);
    if (v6)
    {
      v5 = v6;
      LODWORD(v8) = 2;
      if (FillOctetString(&v9, v6))
      {
        add_PCSSPKeyList((*(*(a1 + 40) + 8) + 32));
      }

      goto LABEL_7;
    }
  }

  return free_PCSSPKey(&v8);
}

void __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSFPAddSharePCSWithFlags_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!*(a1 + 72) || *(a1 + 204) == 3 && (*(a1 + 209) & 1) != 0 || (v8 = PCSIdentitySetCopyCurrentIdentityWithError(*(a2 + 16), kPCSServiceRaw, 0)) == 0)
  {
    v7 = 0;
  }

  else
  {
    v9 = v8;
    v10 = PCSIdentityCopyPublicIdentity(v8);
    if (v10)
    {
      v16 = v10;
      v7 = PCSFPAddPublicIdentityWithShareFlags(a1, v10, a3, v11, v12, v13, v14, v15);
      CFRelease(v9);
      v9 = v16;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v9);
  }

  *a4 = v7;
}

void PCSFPCreatePrivateKey_cold_2(uint64_t *a1, void *a2)
{
  if (!a1[9] || !a1[2])
  {
    RandomCompactRaw = 0;
    goto LABEL_8;
  }

  RandomCompactRaw = PCSIdentityCreateRandomCompactRaw(0);
  if (RandomCompactRaw)
  {
    if ((PCSIdentitySetSetCurrentIdentity(a1[2], RandomCompactRaw) & 1) == 0)
    {
      v5 = RandomCompactRaw;
      RandomCompactRaw = 0;
      goto LABEL_7;
    }

    v5 = a1[6];
    if (v5)
    {
      a1[6] = 0;
LABEL_7:
      CFRelease(v5);
    }
  }

LABEL_8:
  *a2 = RandomCompactRaw;
}

void deriveHKDF_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void deriveHKDF_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSFPUpdateIdentityAndRollZoneKey_cold_1(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("fpkeyRoll");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7 = 138412546;
    v8 = a1;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "FP Failed Roll for zone %@ %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

CFIndex ValidateSignature_cold_3(uint64_t *a1, const void **a2)
{
  ServiceID = *a1;
  if (ServiceID)
  {
    ServiceID = PCSIdentityGetServiceID(ServiceID);
  }

  return _PCSError(a2, 16, @"Author signature or server signature required for service: %d", ServiceID);
}

CFTypeRef PCSIdentitySetCreateNamed(const void *a1, const void **a2)
{
  Mutable = PCSIdentitySetCreateMutable(a2);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  if (addNamedServiceToSet(Mutable, 0, a1, 0) && (v6 = _PCSIdentitySetCopyCurrentIdentityInternal(v5, kPCSServiceMaster, a2)) != 0)
  {
    v9 = v6;
    v10 = OUTLINED_FUNCTION_0_3(v6, v7, v8, @"Bladerunner");
    if (!v10)
    {
      goto LABEL_30;
    }

    v13 = OUTLINED_FUNCTION_0_3(v10, v11, v12, @"Hyperion");
    if (!v13)
    {
      goto LABEL_30;
    }

    v16 = OUTLINED_FUNCTION_0_3(v13, v14, v15, @"Liverpool");
    if (!v16)
    {
      goto LABEL_30;
    }

    v19 = OUTLINED_FUNCTION_0_3(v16, v17, v18, kPCSServiceEscrow);
    if (!v19)
    {
      goto LABEL_30;
    }

    v22 = OUTLINED_FUNCTION_0_3(v19, v20, v21, kPCSServicePianoMover);
    if (!v22)
    {
      goto LABEL_30;
    }

    v25 = OUTLINED_FUNCTION_0_3(v22, v23, v24, kPCSServiceBackup);
    if (!v25)
    {
      goto LABEL_30;
    }

    v28 = OUTLINED_FUNCTION_0_3(v25, v26, v27, kPCSServiceNotes);
    if (!v28)
    {
      goto LABEL_30;
    }

    v31 = OUTLINED_FUNCTION_0_3(v28, v29, v30, kPCSServiceNews);
    if (!v31)
    {
      goto LABEL_30;
    }

    v34 = OUTLINED_FUNCTION_0_3(v31, v32, v33, kPCSServiceFDE);
    if (!v34)
    {
      goto LABEL_30;
    }

    v37 = OUTLINED_FUNCTION_0_3(v34, v35, v36, kPCSServiceSharing);
    if (!v37)
    {
      goto LABEL_30;
    }

    v40 = OUTLINED_FUNCTION_0_3(v37, v38, v39, kPCSServiceKeyboardServices);
    if (!v40)
    {
      goto LABEL_30;
    }

    v43 = OUTLINED_FUNCTION_0_3(v40, v41, v42, kPCSServiceActivities);
    if (!v43)
    {
      goto LABEL_30;
    }

    v46 = OUTLINED_FUNCTION_0_3(v43, v44, v45, kPCSServiceGaming);
    if (!v46)
    {
      goto LABEL_30;
    }

    v49 = OUTLINED_FUNCTION_0_3(v46, v47, v48, kPCSServiceiAD);
    if (!v49)
    {
      goto LABEL_30;
    }

    v52 = OUTLINED_FUNCTION_0_3(v49, v50, v51, kPCSServiceBulkMail);
    if (v52 && (v55 = OUTLINED_FUNCTION_0_3(v52, v53, v54, kPCSServiceBTPairing)) && (v58 = OUTLINED_FUNCTION_0_3(v55, v56, v57, kPCSServiceBTAnnouncement)) && (v61 = OUTLINED_FUNCTION_0_3(v58, v59, v60, kPCSServiceTTYCallHistory)) && (v64 = OUTLINED_FUNCTION_0_3(v61, v62, v63, kPCSServiceContinuity)) && (v67 = OUTLINED_FUNCTION_0_3(v64, v65, v66, kPCSServiceSafari)) && (v70 = OUTLINED_FUNCTION_0_3(v67, v68, v69, kPCSServiceCloudKitApple)) && OUTLINED_FUNCTION_0_3(v70, v71, v72, kPCSHealthSync2))
    {
      v73 = CFRetain(v5);
    }

    else
    {
LABEL_30:
      v73 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v73 = 0;
    v9 = v5;
  }

  CFRelease(v9);
  return v73;
}

BOOL addNamedServiceToSet(uint64_t a1, uint64_t a2, CFTypeRef cf, const __CFNumber *key)
{
  v5 = __PCSIdentityCreateWithNameEmpty(a2, cf, key);
  if (v5)
  {
    PCSIdentitySetAddIdentity(a1, v5);
    CFRelease(v5);
  }

  return v5 != 0;
}

void *PCSIdentitySetCopyCurrentPublicIdentityWithError(uint64_t a1, uint64_t a2, const void **a3)
{
  OUTLINED_FUNCTION_3_1();
  if (PCSCurrentPersonaMatchesDSIDFromSet(v6))
  {
    v7 = PCSIdentitySetCopyCurrentIdentityWithError(v4, v3, a3);
    if (v7)
    {
      v8 = v7;
      v9 = PCSIdentityCopyPublicIdentity(v7);
      CFRelease(v8);
      return v9;
    }
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
  }

  return 0;
}

uint64_t PCSIdentitySetCreateClassic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_1();
  v27[1] = *MEMORY[0x1E69E9840];
  if (!v11)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(v4, kPCSSetupDSID[0]);
  v13 = Value;
  if (!Value)
  {
    goto LABEL_6;
  }

  v14 = CFGetTypeID(Value);
  if (v14 != CFStringGetTypeID())
  {
    _PCSError(a3, 47, @"DSID not a string");
    goto LABEL_17;
  }

  if (!CFEqual(v13, kPCSSetupDSIDAny[0]))
  {
LABEL_6:
    if (PCSCurrentPersonaMatchesDSID(v13))
    {
      goto LABEL_7;
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x1E696ABC0];
    v24 = kPCSErrorDomain;
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @"Current persona does not match chosen dsid";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *a3 = [v23 errorWithDomain:v24 code:152 userInfo:v25];

LABEL_17:
    a3 = 0;
    goto LABEL_14;
  }

LABEL_5:
  v13 = 0;
LABEL_7:
  v15 = __PCSCopyFromiCloudKeychain(0, v13, 0, v6, v7, v8, v9, v10);
  if (!v15)
  {
    v15 = __PCSCopyFromKeychain(0, 0, v13, a3, v16, v17, v18, v19);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v20 = v15;
  a3 = PCSIdentitySetCreateFromExternalForm(v4, v15, 0, a3);
  if (a3)
  {
    if (v3)
    {
      CFRetain(v3);
    }

    *(a3 + 32) = v3;
  }

  CFRelease(v20);
LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
  return a3;
}

BOOL _PCSKeychainAmendCKKSEntry(uint64_t a1, __CFDictionary *a2)
{
  v4 = PCSIdentityCopyExportedPublicKey(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = PCSIdentityCopyPublicKeyInfo(a1);
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v9 = PCSIdentityCopyServiceNumber(a1);
    if (v9)
    {
      CFDictionarySetValue(a2, *MEMORY[0x1E697ADE0], v5);
      CFDictionarySetValue(a2, *MEMORY[0x1E697ADD8], v8);
      CFDictionarySetValue(a2, *MEMORY[0x1E697ADE8], v9);
    }

    CFRelease(v5);
    CFRelease(v8);
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v9 = v5;
  }

  CFRelease(v9);
  return v7;
}

CFTypeRef _PCSIdentityCopyKeychainAttributes(uint64_t a1)
{
  v43 = 0;
  ServiceName = PCSIdentityGetServiceName(a1);
  if (!ServiceName)
  {
    return 0;
  }

  v3 = ServiceName;
  v41 = IdentityCopyServiceNumber(a1, 0);
  if (!v41)
  {
    return 0;
  }

  PublicKey = PCSIdentityGetPublicKey(a1);
  if (!PublicKey || (v44.location = 0, v44.length = 8, (v5 = CFStringCreateWithSubstring(0, PublicKey, v44)) == 0))
  {
    v28 = v41;
LABEL_21:
    CFRelease(v28);
    return 0;
  }

  v6 = v5;
  if (!PCSIdentityGetKeyID(a1) || (v7 = OUTLINED_FUNCTION_0_1(), (v42 = CFStringCreateWithFormat(v7, v8, v9, v3, v6)) == 0))
  {
    CFRelease(v41);
    v28 = v6;
    goto LABEL_21;
  }

  v10 = PCSIdentityCopyExportedPrivateKey(a1, &v43);
  if (v10)
  {
    v40 = v6;
    key = *MEMORY[0x1E697AFF8];
    v38 = *MEMORY[0x1E697B018];
    v37 = *MEMORY[0x1E697ABD8];
    PCSServiceItemGetAccessClassByName(v3);
    v11 = *MEMORY[0x1E697B390];
    v12 = *MEMORY[0x1E695E4D0];
    v13 = *MEMORY[0x1E697ABD0];
    AccessGroupByName = PCSServiceItemGetAccessGroupByName(v3);
    v36 = *MEMORY[0x1E697B3C0];
    v35 = *MEMORY[0x1E697AD00];
    v34 = *MEMORY[0x1E697AE80];
    v15 = v41;
    v33 = *MEMORY[0x1E697AEF8];
    v32 = *MEMORY[0x1E697ADC8];
    v31 = *MEMORY[0x1E697AC50];
    v30 = *MEMORY[0x1E697AC30];
    v29 = *MEMORY[0x1E697AE70];
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(AccessGroupByName, v16, v17, v18, v19, v20, v21, v22, key, v38);
    ServiceViewHint = PCSIdentityGetServiceViewHint(a1);
    if (ServiceViewHint)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEA8], ServiceViewHint);
    }

    OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
    v6 = v40;
    if (v25)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], v12);
    }

    _PCSKeychainAmendCKKSEntry(a1, MutableForCFTypesWith);
    v26 = CFRetain(MutableForCFTypesWith);
  }

  else
  {
    MutableForCFTypesWith = 0;
    v26 = 0;
    v15 = v41;
  }

  CFRelease(v15);
  CFRelease(v42);
  CFRelease(v6);
  if (v10)
  {
    CFRelease(v10);
  }

  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  return v26;
}

BOOL MemoryIsCurrentIdentity()
{
  OUTLINED_FUNCTION_3_1();
  v3 = PCSIdentityCopyServiceNumber(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(*(v1 + 72), v3);
  if (Value)
  {
    v6 = CFEqual(Value, v0) != 0;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

void *KeychainCopyByKeyID(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v46 = 0;
  v9 = *MEMORY[0x1E697B018];
  v10 = *MEMORY[0x1E697AE70];
  v11 = *MEMORY[0x1E697B260];
  v12 = *MEMORY[0x1E695E4D0];
  v44 = *MEMORY[0x1E695E4D0];
  v45 = *MEMORY[0x1E697B318];
  v43 = *MEMORY[0x1E697B310];
  v41 = *MEMORY[0x1E697B268];
  v42 = *MEMORY[0x1E697AC50];
  v13 = OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], v36, v37, v38, v39, v40);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = *(a1 + 40);
  if (v15)
  {
    CFDictionarySetValue(v13, *MEMORY[0x1E697AE80], v15);
  }

  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v16)
  {
    CFDictionarySetValue(v14, *MEMORY[0x1E697AEB0], v12);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v17 = _PCSKeychainForwardTable(v14, &v46);
  v18 = PCSMeasureRelativeNanoTime();
  OUTLINED_FUNCTION_11_0(v18);
  if (v17)
  {
    goto LABEL_24;
  }

  if (!v46)
  {
    goto LABEL_24;
  }

  v19 = CFGetTypeID(v46);
  if (v19 != CFArrayGetTypeID())
  {
    goto LABEL_24;
  }

  Count = CFArrayGetCount(v46);
  if (Count < 1)
  {
    goto LABEL_24;
  }

  v21 = Count;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *MEMORY[0x1E697B3C0];
  v26 = *MEMORY[0x1E697AEA8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v46, v24);
    Value = CFDictionaryGetValue(ValueAtIndex, v25);
    if (Value)
    {
      v29 = CFGetTypeID(Value);
      if (v29 == CFDataGetTypeID())
      {
        v30 = CFDictionaryGetValue(ValueAtIndex, v26);
        v31 = IsViewHintPreferred(v30);
        if (v22)
        {
          v32 = v22;
        }

        else
        {
          v32 = ValueAtIndex;
        }

        if (v31)
        {
          v23 = ValueAtIndex;
        }

        else
        {
          v22 = v32;
        }
      }
    }

    ++v24;
  }

  while (v21 != v24);
  if (v23 || (v23 = v22) != 0)
  {
    v33 = PCSIdentityCreateWithKeychainAttributes(v23);
    UpdateCKKSIdentity(v33, v23);
  }

  else
  {
LABEL_24:
    v33 = 0;
  }

  CFRelease(v14);
  v34 = v46;
  if (v46)
  {
    v46 = 0;
    CFRelease(v34);
  }

  return v33;
}

uint64_t KeychainIsCurrentIdentity(uint64_t a1, uint64_t a2, char a3)
{
  v34 = 0;
  valuePtr = 0;
  if (a3)
  {
    CachedCurrentBit = _PCSIdentityGetCachedCurrentBit(a2);
    v6 = *MEMORY[0x1E695E4D0];
    v7 = CachedCurrentBit == *MEMORY[0x1E695E4D0];
    if (CachedCurrentBit)
    {
      return v7;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  key = *MEMORY[0x1E697AFF8];
  v9 = *MEMORY[0x1E697B018];
  v10 = *MEMORY[0x1E697AE70];
  v11 = *MEMORY[0x1E697AC30];
  PublicKey = PCSIdentityGetPublicKey(a2);
  v32 = *MEMORY[0x1E697B310];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(PublicKey, v12, v13, v14, v15, v16, v17, v18, key, v9);
  if (!MutableForCFTypesWith)
  {
    return 0;
  }

  v20 = MutableForCFTypesWith;
  v21 = *(a1 + 40);
  if (v21)
  {
    CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AE80], v21);
  }

  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v22)
  {
    CFDictionarySetValue(v20, *MEMORY[0x1E697AEB0], v6);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v23 = _PCSKeychainForwardTable(v20, &v34);
  v24 = PCSMeasureRelativeNanoTime();
  OUTLINED_FUNCTION_11_0(v24);
  if (!v23 && v34 && (v25 = CFGetTypeID(v34), v25 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v34, *MEMORY[0x1E697AEF8])) != 0 && (v27 = Value, v28 = CFGetTypeID(Value), v28 == CFNumberGetTypeID()) && CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr))
  {
    v7 = BYTE2(valuePtr) & 1;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v20);
  v29 = v34;
  if (v34)
  {
    v34 = 0;
    CFRelease(v29);
  }

  return v7;
}

BOOL KeychainAddIdentity(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  cf = 0;
  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = _PCSIdentityCopyKeychainAttributes(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  CFDictionarySetValue(v4, *MEMORY[0x1E697B328], *MEMORY[0x1E695E4D0]);
  v6 = PCSMeasureRelativeNanoTime();
  ++PCSMeasure;
  v7 = (*(&_PCSKeychainForwardTable + 1))(v5, &cf);
  qword_1ED6F2608 += PCSMeasureRelativeNanoTime() - v6;
  v8 = v7 == 0;
  if (v7)
  {
    PCSSecError(v7, a3, @"SecItemAdd");
  }

  CFRelease(v5);
  v9 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v9);
  }

  return v8;
}

BOOL KeychainRemoveIdentity(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v18 = *(a1 + 40);
  v17 = *MEMORY[0x1E697AE80];
  v16 = *MEMORY[0x1E697AC30];
  v15 = *MEMORY[0x1E697AE70];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (!MutableForCFTypesWith)
  {
    return 0;
  }

  v9 = MutableForCFTypesWith;
  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v10)
  {
    CFDictionarySetValue(v9, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
  }

  v11 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2620;
  v12 = off_1ED6F2360(v9);
  qword_1ED6F2628 += PCSMeasureRelativeNanoTime() - v11;
  v13 = v12 == 0;
  CFRelease(v9);
  return v13;
}

uint64_t KeychainSetCurrentIdentity(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v6 = IdentityCopyServiceNumber(a2, 0);
  v7 = IdentityCopyServiceNumber(a2, 0x10000);
  v15 = v7;
  if (*(a1 + 40))
  {
    v16 = *MEMORY[0x1E697AFF8];
    v17 = *MEMORY[0x1E697B018];
    v18 = *MEMORY[0x1E697AE70];
    v19 = *MEMORY[0x1E697AEF8];
    v56 = *(a1 + 40);
    v55 = *MEMORY[0x1E697AE80];
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v7, v8, v9, v10, v11, v12, v13, v14, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    v28 = MutableForCFTypesWith;
    if (MutableForCFTypesWith)
    {
      v57 = a3;
      v58 = v15;
      if (PCSUseSyncKeychain == 1)
      {
        CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
      }

      v29 = CFDictionaryCreateForCFTypes(MutableForCFTypesWith, v21, v22, v23, v24, v25, v26, v27, v19, v6);
      PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2610;
      v30 = qword_1ED6F2358(v28, v29);
      v31 = PCSMeasureRelativeNanoTime();
      OUTLINED_FUNCTION_10_0(v31);
      if (v30 == -25300 || !v30)
      {
        CFRelease(v28);
        if (v29)
        {
          CFRelease(v29);
        }

        v32 = *MEMORY[0x1E697AC30];
        PublicKey = PCSIdentityGetPublicKey(a2);
        v28 = CFDictionaryCreateMutableForCFTypesWith(PublicKey, v33, v34, v35, v36, v37, v38, v39, v16, v17);
        v15 = v58;
        if (v28)
        {
          OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
          if (v48)
          {
            CFDictionarySetValue(v28, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
          }

          v29 = CFDictionaryCreateForCFTypes(v40, v41, v42, v43, v44, v45, v46, v47, v19, v58);
          if (v29)
          {
            PCSMeasureRelativeNanoTime();
            ++qword_1ED6F2610;
            v49 = qword_1ED6F2358(v28, v29);
            v50 = PCSMeasureRelativeNanoTime();
            OUTLINED_FUNCTION_10_0(v50);
            if (!v49)
            {
              v51 = 1;
LABEL_18:
              v15 = v58;
              goto LABEL_19;
            }

            PCSSecError(v49, v57, @"Failed to mark %@ as current", a2);
LABEL_17:
            v51 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v29 = 0;
        }

        v51 = 0;
LABEL_19:
        if (!v6)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      PCSSecError(v30, v57, @"Failed to remove current on attributes", key);
      goto LABEL_17;
    }

    v29 = 0;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v51 = 0;
  if (v6)
  {
LABEL_20:
    CFRelease(v6);
  }

LABEL_21:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v51;
}

uint64_t KeychainUnsetCurrentIdentity(uint64_t a1, const __CFNumber *key, CFErrorRef *a3)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  IndexByName = PCSServiceItemGetIndexByName(key);
  v36 = IndexByName;
  if (!IndexByName)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_7_1(IndexByName, v6, &v36);
  v36 |= 0x10000u;
  v9 = OUTLINED_FUNCTION_7_1(v7, v8, &v36);
  v10 = *MEMORY[0x1E697AEF8];
  v35 = *(a1 + 40);
  v34 = *MEMORY[0x1E697AE80];
  v33 = *MEMORY[0x1E697AE70];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v9, v11, v12, v13, v14, v15, v16, v17, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (MutableForCFTypesWith)
  {
    OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
    if (v27)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
    }

    v28 = CFDictionaryCreateForCFTypes(v19, v20, v21, v22, v23, v24, v25, v26, v10, v7);
    if (v28)
    {
      v29 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2610;
      v30 = qword_1ED6F2358(MutableForCFTypesWith, v28);
      qword_1ED6F2618 += PCSMeasureRelativeNanoTime() - v29;
      v31 = 1;
      if (v30 == -25300 || !v30)
      {
        goto LABEL_12;
      }

      PCSSecError(v30, a3, @"Failed to remove current on attributes");
    }
  }

  else
  {
    v28 = 0;
  }

  v31 = 0;
LABEL_12:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v31;
}

uint64_t KeychainEnumerateIdentities(uint64_t a1, const void *a2, void *a3)
{
  TypeID = a3;
  v13 = TypeID;
  if (!a1)
  {
    goto LABEL_21;
  }

  v14 = *(a1 + 32);
  if (a2)
  {
    v15 = CFGetTypeID(a2);
    TypeID = CFDictionaryGetTypeID();
    if (v15 == TypeID && !v14)
    {
      TypeID = CFDictionaryGetValue(a2, kPCSSetupService[0]);
      v14 = TypeID;
    }
  }

  v16 = *MEMORY[0x1E697B018];
  v17 = *MEMORY[0x1E697AE70];
  v18 = *MEMORY[0x1E697B260];
  v19 = *MEMORY[0x1E695E4D0];
  v43 = *MEMORY[0x1E695E4D0];
  v44 = *MEMORY[0x1E697B310];
  v41 = *MEMORY[0x1E697B268];
  v42 = *MEMORY[0x1E697B318];
  v20 = OUTLINED_FUNCTION_2_1(TypeID, v6, v7, v8, v9, v10, v11, v12, *MEMORY[0x1E697AFF8], v36, v37, v38, v39, v40);
  if (!v20)
  {
LABEL_21:
    v34 = 0;
    goto LABEL_20;
  }

  v21 = v20;
  v22 = *(a1 + 40);
  if (v22)
  {
    CFDictionarySetValue(v20, *MEMORY[0x1E697AE80], v22);
  }

  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v23)
  {
    CFDictionarySetValue(v21, *MEMORY[0x1E697AEB0], v19);
  }

  if (v14)
  {
    v24 = CFGetTypeID(v14);
    if (v24 == CFStringGetTypeID())
    {
      IndexByName = PCSServiceItemGetIndexByName(v14);
      v45 = IndexByName;
      v27 = OUTLINED_FUNCTION_7_1(IndexByName, v26, &v45);
      if (!v27)
      {
        goto LABEL_22;
      }

      v28 = v27;
      v29 = *MEMORY[0x1E697AEF8];
      OUTLINED_FUNCTION_8_1();
      CFRelease(v28);
      processQuery(v21, v13);
      v30 = OUTLINED_FUNCTION_4_1();
      if (!v30 || (v31 = v30, OUTLINED_FUNCTION_8_1(), CFRelease(v31), processQuery(v21, v13), (v32 = OUTLINED_FUNCTION_4_1()) == 0))
      {
LABEL_22:
        v34 = 0;
        goto LABEL_19;
      }

      v33 = v32;
      OUTLINED_FUNCTION_8_1();
      CFRelease(v33);
    }
  }

  processQuery(v21, v13);
  v34 = 1;
LABEL_19:
  CFRelease(v21);
LABEL_20:

  return v34;
}

CFMutableDictionaryRef KeychainCopyIdentities()
{
  OUTLINED_FUNCTION_3_1();
  v0 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    OUTLINED_FUNCTION_1_1();
    v5 = OUTLINED_FUNCTION_12();
    if ((KeychainEnumerateIdentities(v5, v6, v7) & 1) == 0)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

PCSCurrentIdentity *KeychainCopyXIdentityWithCount(uint64_t a1, const __CFNumber *key, CFIndex *a3, const void **a4)
{
  v6 = key;
  v61 = 0;
  v60 = 0;
  if (!key)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      _PCSError(a4, 27, @"service missing");
      goto LABEL_35;
    }
  }

  IndexByName = PCSServiceItemGetIndexByName(v6);
  v60 = IndexByName;
  if (!IndexByName)
  {
LABEL_35:
    v44 = 0;
    v24 = 0;
    v18 = 0;
    goto LABEL_40;
  }

  v60 = IndexByName | 0x10000;
  v10 = OUTLINED_FUNCTION_7_1(IndexByName, v9, &v60);
  v18 = v10;
  if (v10)
  {
    v19 = *MEMORY[0x1E697B018];
    v20 = *MEMORY[0x1E697AE70];
    v21 = *MEMORY[0x1E697AEF8];
    v22 = *MEMORY[0x1E695E4D0];
    v58 = *MEMORY[0x1E695E4D0];
    v59 = *MEMORY[0x1E697B390];
    v56 = *MEMORY[0x1E695E4D0];
    v57 = *MEMORY[0x1E697B318];
    v54 = *MEMORY[0x1E697B268];
    v55 = *MEMORY[0x1E697B310];
    v53 = *MEMORY[0x1E697B260];
    v23 = OUTLINED_FUNCTION_2_1(v10, v11, v12, v13, v14, v15, v16, v17, *MEMORY[0x1E697AFF8], v48, v49, v50, v51, v52);
    v24 = v23;
    if (v23)
    {
      v25 = *(a1 + 40);
      if (v25)
      {
        CFDictionarySetValue(v23, *MEMORY[0x1E697AE80], v25);
      }

      OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
      if (v26)
      {
        CFDictionarySetValue(v24, *MEMORY[0x1E697AEB0], v22);
      }

      v27 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2630;
      v28 = _PCSKeychainForwardTable(v24, &v61);
      qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v27;
      if (v28)
      {
        PCSSecError(v28, a4, @"Failed finding service %@", v6);
      }

      else if (v61 && (v29 = CFGetTypeID(v61), v29 == CFArrayGetTypeID()))
      {
        Count = CFArrayGetCount(v61);
        v31 = Count;
        if (a3)
        {
          *a3 = Count;
        }

        if (Count >= 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = *MEMORY[0x1E697B3C0];
          v36 = *MEMORY[0x1E697AEA8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v61, v34);
            if (ValueAtIndex)
            {
              v38 = ValueAtIndex;
              v39 = CFGetTypeID(ValueAtIndex);
              if (v39 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(v38, v35);
                if (Value)
                {
                  v41 = CFGetTypeID(Value);
                  if (v41 == CFDataGetTypeID())
                  {
                    v42 = CFDictionaryGetValue(v38, v36);
                    if (IsViewHintPreferred(v42) && (!v33 || IdentityAttributesCompare(v38, v33) == kCFCompareGreaterThan))
                    {
                      v33 = v38;
                    }

                    else if (!v32 || IdentityAttributesCompare(v38, v32) == kCFCompareGreaterThan)
                    {
                      v32 = v38;
                    }
                  }
                }
              }
            }

            ++v34;
          }

          while (v31 != v34);
          if (v33 || (v33 = v32) != 0)
          {
            v43 = PCSIdentityCreateWithKeychainAttributes(v33);
            UpdateCKKSIdentity(v43, v33);
            if (v43)
            {
              v44 = [[PCSCurrentIdentity alloc] initWithIdentity:v43 currentItemPointerModificationTime:0];
              CFRelease(v43);
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        _PCSError(a4, 21, @"return data not array");
      }
    }

    v44 = 0;
  }

  else
  {
    _PCSErrorOOM(a4);
    v44 = 0;
    v24 = 0;
  }

LABEL_40:
  v45 = v61;
  if (v61)
  {
    v61 = 0;
    CFRelease(v45);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v46 = v61;
  if (v61)
  {
    v61 = 0;
    CFRelease(v46);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v44;
}

void __KeychainRepairCurrentIdentity_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v2 = KeychainCopyXIdentityWithCount(*(a1 + 40), *(a1 + 48), &v11, 0);
  v3 = v2;
  cf = 0;
  if (v11 <= 1 && (!v2 || CFEqual([v2 identity], *(a1 + 56))))
  {
LABEL_4:
    v4 = 1;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "current pointer/bit mismatch detected", buf, 2u);
  }

  v8 = KeychainSetCurrentIdentity(*(a1 + 40), *(a1 + 56), &cf);
  v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "successfully set current identity", buf, 2u);
    }

    goto LABEL_4;
  }

  if (v9)
  {
    *buf = 138412290;
    v13 = cf;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to set current identity: %@", buf, 0xCu);
  }

  v4 = 0;
LABEL_5:
  v5 = *(a1 + 32);
  v6 = cf;
  if (v5)
  {
    (*(v5 + 16))(v5, v4, cf);
    v6 = cf;
  }

  if (v6)
  {
    cf = 0;
    CFRelease(v6);
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 56));

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t KeychainGetSecurityDomainStatus(uint64_t a1, __CFString *a2, int *a3, const void **a4, int a5, int a6, int a7, int a8)
{
  v114 = *MEMORY[0x1E69E9840];
  v109 = 0;
  v10 = *MEMORY[0x1E697AC30];
  v11 = *MEMORY[0x1E695E4D0];
  v12 = *MEMORY[0x1E697B260];
  v13 = *MEMORY[0x1E697B270];
  v89 = *MEMORY[0x1E697B270];
  v90 = 0;
  v87 = *MEMORY[0x1E695E4D0];
  v88 = *MEMORY[0x1E697B260];
  v106 = *MEMORY[0x1E697B318];
  v85 = kPCSAccount[0];
  v86 = *MEMORY[0x1E697B318];
  v84 = *MEMORY[0x1E697AC30];
  v82 = *MEMORY[0x1E697AE70];
  v83 = a2;
  v103 = *MEMORY[0x1E697AE70];
  v104 = *MEMORY[0x1E697B018];
  v107 = *MEMORY[0x1E697AFF8];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  v15 = MutableForCFTypesWith;
  v16 = *(a1 + 40);
  if (v16)
  {
    CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AE80], v16);
  }

  if (PCSUseSyncKeychain == 1)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E697AEB0], v11);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  *a3 = _PCSKeychainForwardTable(v15, &v109);
  v17 = PCSMeasureRelativeNanoTime();
  v18 = OUTLINED_FUNCTION_5_1(v17);
  if (v26 != -25300)
  {
    goto LABEL_14;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v89 = v13;
  v90 = 0;
  v87 = v11;
  v88 = v12;
  v85 = kPCSAccount[0];
  v86 = v106;
  v84 = v10;
  v82 = *MEMORY[0x1E697AE88];
  v83 = a2;
  v101 = *MEMORY[0x1E697AE88];
  v102 = *MEMORY[0x1E697B008];
  v27 = CFDictionaryCreateMutableForCFTypesWith(v18, v19, v20, v21, v22, v23, v24, v25, v107, *MEMORY[0x1E697B008]);
  v15 = v27;
  v28 = *(a1 + 40);
  if (v28)
  {
    CFDictionarySetValue(v27, *MEMORY[0x1E697ACF0], v28);
  }

  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v29)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E697AEB0], v11);
  }

  PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  *a3 = _PCSKeychainForwardTable(v15, &v109);
  v30 = PCSMeasureRelativeNanoTime();
  OUTLINED_FUNCTION_5_1(v30);
  if (v31)
  {
    goto LABEL_14;
  }

  v53 = *(a1 + 40);
  if (!v53)
  {
    goto LABEL_14;
  }

  v54 = v109;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v110) = 0;
    OUTLINED_FUNCTION_6_1();
    _os_log_impl(v61, v62, v63, v64, v65, 2u);
  }

  v99 = v54;
  v100 = 0;
  v97 = @"PCS-MasterKey";
  v98 = *MEMORY[0x1E697B3C0];
  v95 = v53;
  v96 = *MEMORY[0x1E697AEA8];
  v93 = kPCSDefaultKeychainGroup[0];
  v94 = *MEMORY[0x1E697AE80];
  v91 = v11;
  v92 = *MEMORY[0x1E697ABD0];
  v89 = *MEMORY[0x1E697ABE0];
  v90 = *MEMORY[0x1E697B390];
  v87 = kPCSAccount[0];
  v88 = *MEMORY[0x1E697ABD8];
  v85 = kPCSiCloudServiceMarkerName[0];
  v86 = v10;
  v83 = @"PCS iCloud Data Protection";
  v84 = v103;
  v82 = *MEMORY[0x1E697ADC8];
  v66 = CFDictionaryCreateMutableForCFTypesWith(@"PCS-MasterKey", *MEMORY[0x1E697B3C0], v55, v56, v57, v58, v59, v60, v107, v104);
  v67 = MEMORY[0x1E697AEB0];
  if (v66)
  {
    v68 = v66;
    OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
    if (v29)
    {
      CFDictionarySetValue(v68, *v67, v11);
    }

    v93 = v13;
    v94 = 0;
    v91 = v11;
    v92 = v12;
    v89 = v11;
    v90 = v106;
    v87 = v53;
    v88 = *MEMORY[0x1E697AD00];
    v85 = kPCSAccount[0];
    v86 = *MEMORY[0x1E697ACF0];
    v83 = kPCSiCloudServiceMarkerName[0];
    v84 = v10;
    v82 = v101;
    v77 = CFDictionaryCreateMutableForCFTypesWith(v69, v70, v71, v72, v73, v74, v75, v76, v107, v102);
    if (v77)
    {
      v78 = v77;
      OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
      if (v29)
      {
        CFDictionarySetValue(v78, *v67, v11);
      }

      v79 = (*(&_PCSKeychainForwardTable + 1))(v68, 0);
      if (!v79 || v79 == -25299)
      {
        off_1ED6F2360(v78);
      }

      CFRelease(v68);
    }

    else
    {
      v78 = v68;
    }

    v32 = a2;
    CFRelease(v78);
  }

  else
  {
LABEL_14:
    v32 = a2;
  }

  if (!CFEqual(v32, kPCSPlesioMarkerName[0]) && !CFEqual(v32, kPCSPlesioMarkerNewName[0]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v33 = *a3;
    v110 = 138412546;
    v111 = v32;
    v112 = 1024;
    LODWORD(v113) = v33;
    OUTLINED_FUNCTION_6_1();
    _os_log_impl(v34, v35, v36, v37, v38, 0x12u);
  }

  v39 = *a3;
  if (v39)
  {
    if (v39 != -25300)
    {
      _PCSError(a4, 50, @"Marker (%@) return unexpected error code: %d", v32, v39, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    }

    goto LABEL_57;
  }

  if (!v109 || (v40 = CFGetTypeID(v109), v40 != CFDataGetTypeID()))
  {
    _PCSError(a4, 50, @"Failed getting iCDP data", key, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
LABEL_57:
    v42 = 0;
    goto LABEL_26;
  }

  v41 = CFDataCreate(0, iCloudDataProtection, 21);
  v42 = v41;
  if (v41)
  {
    if (CFEqual(v41, v109))
    {
      v43 = 1;
      goto LABEL_27;
    }

    _PCSError(a4, 50, @"Entry in iCDP not iCDP!");
  }

  else
  {
    _PCSErrorOOM(a4);
  }

LABEL_26:
  v43 = 0;
LABEL_27:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v44 = "off";
    if (v43)
    {
      v44 = "on";
    }

    v110 = 138412546;
    v111 = v32;
    v112 = 2080;
    v113 = v44;
    OUTLINED_FUNCTION_6_1();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v50 = v109;
  if (v109)
  {
    v109 = 0;
    CFRelease(v50);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  v51 = *MEMORY[0x1E69E9840];
  return v43;
}

uint64_t KeychainSetSecurityDomainStatus(uint64_t a1, CFTypeRef cf1, int a3, CFErrorRef *a4)
{
  v89 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = *a4;
    if (*a4)
    {
      *a4 = 0;
      CFRelease(v8);
    }
  }

  if (!*(a1 + 40))
  {
    goto LABEL_41;
  }

  v9 = CFEqual(cf1, kPCSPlesioMarkerName[0]);
  if (!v9)
  {
    v9 = CFEqual(cf1, kPCSPlesioMarkerNewName[0]);
    if (!v9)
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        OUTLINED_FUNCTION_6_1();
        _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      }
    }
  }

  if (!a3)
  {
    v78 = *(a1 + 40);
    v76 = *MEMORY[0x1E697AE80];
    v75 = *MEMORY[0x1E697AC30];
    v74 = *MEMORY[0x1E697AE70];
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v9, v10, v11, v12, v13, v14, v15, v16, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
    if (MutableForCFTypesWith)
    {
      v67 = MutableForCFTypesWith;
      OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
      if (v38)
      {
        CFDictionarySetValue(v67, *MEMORY[0x1E697AEB0], *MEMORY[0x1E695E4D0]);
      }

      v68 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2620;
      v69 = off_1ED6F2360(v67);
      qword_1ED6F2628 += PCSMeasureRelativeNanoTime() - v68;
      v63 = 1;
      if (v69 != -25300 && v69)
      {
        PCSSecError(v69, a4, @"Failed to delete: %@", cf1);
        v63 = 0;
      }

      v70 = v67;
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  v22 = CFDataCreate(0, iCloudDataProtection, 21);
  if (!v22)
  {
LABEL_39:
    _PCSErrorOOM(a4);
LABEL_41:
    v63 = 0;
    goto LABEL_38;
  }

  v28 = v22;
  v87 = a4;
  v29 = *MEMORY[0x1E697AFF8];
  v30 = *MEMORY[0x1E697B018];
  v31 = *MEMORY[0x1E697AE70];
  v32 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E697B3C0];
  v86 = *MEMORY[0x1E697AEA8];
  v84 = *(a1 + 40);
  v85 = *MEMORY[0x1E697AD00];
  v82 = *MEMORY[0x1E695E4D0];
  v83 = *MEMORY[0x1E697ABD0];
  v80 = *MEMORY[0x1E697ABE0];
  v81 = *MEMORY[0x1E697B390];
  v79 = *MEMORY[0x1E697ABD8];
  v73 = *MEMORY[0x1E697ADC8];
  v34 = CFDictionaryCreateMutableForCFTypesWith(@"PCS-MasterKey", *MEMORY[0x1E697AC30], *MEMORY[0x1E697AE80], v23, v24, v25, v26, v27, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (!v34)
  {
LABEL_40:
    _PCSErrorOOM(v87);
    CFRelease(v28);
    goto LABEL_41;
  }

  v35 = v34;
  v36 = v30;
  v88 = v28;
  v37 = v29;
  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v38)
  {
    CFDictionarySetValue(v35, *MEMORY[0x1E697AEB0], v32);
  }

  v39 = PCSMeasureRelativeNanoTime();
  ++PCSMeasure;
  v40 = (*(&_PCSKeychainForwardTable + 1))(v35, 0);
  qword_1ED6F2608 += PCSMeasureRelativeNanoTime() - v39;
  if (v40 == -25299)
  {
    v41 = v37;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_1();
      _os_log_impl(v42, v43, v44, v45, v46, 0x1Cu);
    }

    CFRelease(v35);
    v28 = v88;
    v55 = CFDictionaryCreateMutableForCFTypesWith(v47, v48, v49, v50, v51, v52, v53, v54, key, v88);
    if (v55)
    {
      v35 = v55;
      v77 = *(a1 + 40);
      v63 = CFDictionaryCreateMutableForCFTypesWith(v55, v56, v57, v58, v59, v60, v61, v62, v41, v36);
      if (v63)
      {
        OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
        if (v38)
        {
          CFDictionarySetValue(v63, *MEMORY[0x1E697AEB0], v32);
        }

        v64 = PCSMeasureRelativeNanoTime();
        ++qword_1ED6F2610;
        v65 = qword_1ED6F2358(v63, v35);
        qword_1ED6F2618 += PCSMeasureRelativeNanoTime() - v64;
        CFRelease(v63);
        if (v65)
        {
          PCSSecError(v65, v87, @"Failed to update: %@", cf1);
          v63 = 0;
        }

        else
        {
          v63 = 1;
        }
      }

      else
      {
        _PCSErrorOOM(v87);
      }

      goto LABEL_36;
    }

    goto LABEL_40;
  }

  if (v40)
  {
    PCSSecError(v40, v87, @"Failed to add: %@", cf1);
    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  v28 = v88;
LABEL_36:
  CFRelease(v28);
  v70 = v35;
LABEL_37:
  CFRelease(v70);
LABEL_38:
  v71 = *MEMORY[0x1E69E9840];
  return v63;
}

void KeychainCopyCurrentIdentity_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get W state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void UpdateCKKSIdentity_cold_1(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E697B018];
  v10 = *MEMORY[0x1E697B390];
  v11 = *MEMORY[0x1E697AEB0];
  v36 = *MEMORY[0x1E695E4D0];
  v12 = OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], v31, v32, v33, v34, v35);
  v13 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v13, v14, v15, v16);
  v18 = _PCSKeychainAmendCKKSEntry(a1, Mutable);
  if (v18)
  {
    OUTLINED_FUNCTION_9_0(v18, v19, *MEMORY[0x1E697AEA8]);
    OUTLINED_FUNCTION_9_0(v20, v21, *MEMORY[0x1E697AE70]);
    OUTLINED_FUNCTION_9_0(v22, v23, *MEMORY[0x1E697AC30]);
    OUTLINED_FUNCTION_9_0(v24, v25, *MEMORY[0x1E697AEF8]);
    OUTLINED_FUNCTION_9_0(v26, v27, *MEMORY[0x1E697AE80]);
    v28 = qword_1ED6F2358(v12, Mutable);
    if (v12)
    {
      CFRelease(v12);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v28)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v38 = a1;
        v39 = 1024;
        v40 = v28;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to update identity %@ to set CKKS PCS public attributes: %d", buf, 0x12u);
      }
    }

LABEL_15:
    v30 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (!Mutable)
  {
    goto LABEL_15;
  }

  v29 = *MEMORY[0x1E69E9840];

  CFRelease(Mutable);
}

const __CFDictionary *_PCSIsiCDPEnabled(const __CFDictionary *a1, int a2)
{
  result = GetiCDPMetadata(a1);
  if (result)
  {
    v5 = result;
    if ((_PCSIsiCDPIsWalrus(a1) & 1) != 0 || _PCSIsiCDPIsPlesio(a1))
    {
      Value = *MEMORY[0x1E695E4D0];
      if (!*MEMORY[0x1E695E4D0])
      {
        return 0;
      }
    }

    else
    {
      if (a2)
      {
        v8 = kPCSMetadataiCDPArmed;
      }

      else
      {
        v8 = kPCSMetadataiCDP;
      }

      Value = CFDictionaryGetValue(v5, *v8);
      if (!Value)
      {
        return 0;
      }
    }

    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(Value) != 0);
    }

    return 0;
  }

  return result;
}

const __CFDictionary *GetiCDPMetadata(const __CFDictionary *a1)
{
  result = GetHSMClientMetaData(a1);
  if (result)
  {
    result = CFDictionaryGetValue(result, kPCSSecureBackupCFiCloudDataProtectionKey[0]);
    if (result)
    {
      v2 = result;
      v3 = CFGetTypeID(result);
      if (v3 == CFDictionaryGetTypeID())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

const __CFDictionary *_PCSIsiCDPIsWalrus(const __CFDictionary *a1)
{
  result = GetiCDPMetadata(a1);
  if (result)
  {
    Value = CFDictionaryGetValue(result, kPCSMetadataiCDPWalrus[0]);
    result = 0;
    if (Value)
    {
      v3 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v3))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *_PCSIsiCDPIsPlesio(const __CFDictionary *a1)
{
  result = GetiCDPMetadata(a1);
  if (result)
  {
    Value = CFDictionaryGetValue(result, kPCSMetadataiCDPDrop[0]);
    result = 0;
    if (Value)
    {
      v3 = Value;
      v4 = CFGetTypeID(Value);
      if (v4 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v3))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t PCSIdentityMigrateEngineExecute(uint64_t a1, const void *a2, CFTypeRef cf, const void **a4)
{
  v4 = PCSIdentityMigrateEngineCreate(a1, a2, 1, cf, a4);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_15();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFTypeRef PCSIdentitySetup(CFTypeRef cf, const void **a2)
{
  v2 = PCSIdentityMigrateEngineCreate(&setupIdentities, @"SetupIdentities", 1, cf, a2);
  if (v2 && OUTLINED_FUNCTION_15() && [v2 set])
  {
    v3 = CFRetain([v2 set]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PCSMigrationState *PCSIdentityMigrateEngineCreate(uint64_t a1, const void *a2, int a3, CFTypeRef cf, const void **a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDictionaryGetTypeID()))
  {
    _PCSError(a5, 127, @"Missing options dictionary");
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(cf, kPCSSetupLogFacility[0]);
  if (Value)
  {
    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 != CFStringGetTypeID())
    {
      _PCSError(a5, 126, @"Log facility not a string");
LABEL_22:
      v18 = 0;
      goto LABEL_18;
    }
  }

  else if (a3)
  {
    v12 = @"PCSMigration";
  }

  else
  {
    v12 = @"PCSMisc";
  }

  if (a3)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = PCSCreateLogContext(v14, v12);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = objc_alloc_init(PCSMigrationState);
  v18 = v17;
  if (v17)
  {
    [(PCSMigrationState *)v17 setFirstStep:a1];
    [(PCSMigrationState *)v18 setCurrentStep:a1];
    CFDictionaryCreateCopy(0, cf);
    [OUTLINED_FUNCTION_1_2() setInitialOptions:?];
    [(PCSMigrationState *)v18 initialOptions];
    v19 = OUTLINED_FUNCTION_0_1();
    CFDictionaryCreateMutableCopy(v19, v20, v21);
    [OUTLINED_FUNCTION_1_2() setOptions:?];
    CFRetain(v16);
    [OUTLINED_FUNCTION_1_2() setLog:?];
    CFRetain(a2);
    [OUTLINED_FUNCTION_1_2() setType:?];
    [OUTLINED_FUNCTION_5_2() setNewIdentity:?];
    [OUTLINED_FUNCTION_5_2() setModified:?];
    v22 = [(PCSMigrationState *)v18 options];
    if (!CFDictionaryGetValue(v22, kPCSSetupLogContext[0]))
    {
      v23 = [(PCSMigrationState *)v18 options];
      CFDictionarySetValue(v23, kPCSSetupLogContext[0], v16);
    }

    v24 = v18;
  }

  CFRelease(v16);
LABEL_18:

  return v18;
}

uint64_t PCSIdentityMigrateEngineRun(void *a1, uint64_t *a2)
{
  v4 = a1;
  v29 = objc_autoreleasePoolPush();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v28 = os_transaction_create();
  [v4 log];
  v5 = [OUTLINED_FUNCTION_11_1() type];
  PCSMigrationLog(v2, @"%@ start", v5);
  v6 = _os_activity_create(&dword_1B229C000, "PCSMigrationEngine", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7 = v6;
  if (v6)
  {
    os_activity_scope_enter(v6, &state);
  }

  while (*([v4 currentStep] + 8))
  {
    if ([v4 done])
    {
      break;
    }

    v8 = [v4 currentStep];
    [v4 setCurrentStep:{objc_msgSend(v4, "currentStep") + 16}];
    v9 = [v4 log];
    v10 = [v4 type];
    v11 = *v8;
    if ([v4 modified])
    {
      v12 = " (modified)";
    }

    else
    {
      v12 = "";
    }

    PCSMigrationLog(v9, @"  running %@ step %@%s", v10, v11, v12);
    if (!(*(v8 + 8))(v4, a2))
    {
      goto LABEL_18;
    }

    if ([v4 restart])
    {
      if ([v4 restartCounter] > 4)
      {
        goto LABEL_18;
      }

      PCSMigrationLog([v4 log], @"  starting migration to the begining: %u", objc_msgSend(v4, "restartCounter"));
      [OUTLINED_FUNCTION_5_2() setRestart:?];
      [v4 firstStep];
      [OUTLINED_FUNCTION_1_2() setCurrentStep:?];
      [v4 setRestartCounter:{objc_msgSend(v4, "restartCounter") + 1}];
      if ([v4 options])
      {
        CFRelease([v4 options]);
      }

      [v4 initialOptions];
      v13 = OUTLINED_FUNCTION_0_1();
      CFDictionaryCreateMutableCopy(v13, v14, v15);
      [OUTLINED_FUNCTION_1_2() setOptions:?];
      [v4 softReset];
      v16 = arc4random_uniform(2 * [v4 restartCounter] + 10);
      sleep(v16 + 5);
    }
  }

  if (*([v4 currentStep] + 8) && !objc_msgSend(v4, "done"))
  {
LABEL_18:
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v4 options];
  v19 = CFDictionaryGetValue(v18, kPCSSetupStatistics[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "numberIdentityMissing")}];
    [v19 setObject:v20 forKeyedSubscript:@"numberIdentityMissing"];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "modified")}];
    [v19 setObject:v21 forKeyedSubscript:@"modified"];

    if ([v4 missingFromRegistry])
    {
      [v19 setObject:objc_msgSend(v4 forKeyedSubscript:{"missingFromRegistry"), @"missingFromRegistry"}];
    }

    if ([v4 brokenEncryptedMetadatakeys])
    {
      [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"brokenEncryptedMetadatakeys"];
    }
  }

  v22 = [v4 log];
  v23 = [v4 type];
  v24 = @"failed";
  if (v17)
  {
    v24 = @"success";
  }

  if (a2)
  {
    v25 = v17;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *a2;
  }

  PCSMigrationLog(v22, @"%@ complete: %@ (error: %@)", v23, v24, v26);
  if (v7)
  {
    os_activity_scope_leave(&state);
  }

  objc_autoreleasePoolPop(v29);
  return v17;
}

CFTypeRef PCSIdentityLegacySetup(CFTypeRef cf, const void **a2)
{
  v2 = PCSIdentityMigrateEngineCreate(&legacySetupIdentities, @"LegacySetupIdentities", 1, cf, a2);
  if (!v2)
  {
    goto LABEL_9;
  }

  if (qword_1EB7AAB20 != -1)
  {
    dispatch_once(&qword_1EB7AAB20, &__block_literal_global_1045);
  }

  [v2 setLimitLocalStoring:_MergedGlobals_0];
  v3 = [v2 limitLocalStoring];
  if (v3)
  {
    CFRetain(v3);
  }

  if (OUTLINED_FUNCTION_15() && [v2 set])
  {
    v4 = CFRetain([v2 set]);
  }

  else
  {
LABEL_9:
    v4 = 0;
  }

  return v4;
}

uint64_t PCSIdentitySetValidate(const void *a1, CFTypeRef cf, uint64_t a3, const void **a4)
{
  v9 = cf && (v8 = CFGetTypeID(cf), v8 == CFDictionaryGetTypeID()) && CFDictionaryGetValue(cf, kPCSSetupForceLogging[0]) != 0;
  if (!a3)
  {
    _PCSError(a4, 123, @"needPassword param missing");
    v10 = 0;
    goto LABEL_20;
  }

  *a3 = 0;
  v10 = PCSIdentityMigrateEngineCreate(&validateKeys, @"ValidateCredentials", v9, cf, a4);
  if (!v10)
  {
    goto LABEL_21;
  }

  [v10 setSet:CFRetain(a1)];
  if (!a1)
  {
    goto LABEL_21;
  }

  v11 = [v10 options];
  Value = CFDictionaryGetValue(v11, kPCSSetupForceValidateKey[0]);
  if (!Value || (v13 = CFGetTypeID(Value), v13 != CFBooleanGetTypeID()))
  {
    [v10 setRequireIdentityInHSM:1];
  }

  v14 = PCSIdentityMigrateEngineRun(v10, a4);
  v15 = v14;
  if (a4)
  {
    if ((v14 & 1) == 0)
    {
      if (*a4)
      {
        Domain = CFErrorGetDomain(*a4);
        if (CFEqual(Domain, *MEMORY[0x1E696A978]))
        {
          PCSMigrationLog([v10 log], @"PCS skipping validation failure since error is network issue: %@", *a4);
          v17 = *a4;
          if (*a4)
          {
            *a4 = 0;
            CFRelease(v17);
          }

          [v10 setNeedPassword:0];
          goto LABEL_19;
        }
      }
    }
  }

  if (!v15)
  {
LABEL_21:
    a3 = 0;
    goto LABEL_20;
  }

LABEL_19:
  *a3 = [v10 needPassword];
  a3 = 1;
LABEL_20:

  return a3;
}

CFTypeRef PCSIdentityRecoverFDE(CFTypeRef cf, const void **a2)
{
  v3 = PCSIdentityMigrateEngineCreate(&recoverFDE, @"RecoveryFDE", 1, cf, a2);
  if (!v3 || !OUTLINED_FUNCTION_15())
  {
    v4 = 0;
    goto LABEL_10;
  }

  if ([v3 set])
  {
    v4 = CFRetain([v3 set]);
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if (!cf)
    {
      goto LABEL_10;
    }
  }

  Value = CFDictionaryGetValue(cf, kPCSSetupService[0]);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      _PCSIdentitySetSetService([v3 set], v6);
    }
  }

LABEL_10:

  return v4;
}

const __CFDictionary *PCSIdentityiCDPPlesio(uint64_t a1, int a2, const __CFDictionary *a3, const void **a4)
{
  if (a2)
  {
    result = __PCSCopyStingrayInfo(0, 0, a3, a4);
    if (result)
    {
      v5 = result;
      v6 = _PCSIsiCDPIsPlesio(result);
      CFRelease(v5);
      return v6;
    }
  }

  else
  {

    return PCSIdentitySetIsPlesio(a1, a4);
  }

  return result;
}

const __CFDictionary *GetHSMClientMetaData(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, *MEMORY[0x1E6994F70]);
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(v2, *MEMORY[0x1E6994E48]);
      if (result)
      {
        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFDictionaryGetTypeID())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t PCSEnginePrepareMetaData(void *a1)
{
  v2 = a1;
  v3 = CaptureMetadata(v2, [v2 metadata]);
  if (v3)
  {
    v4 = GetiCDPMetadata([v2 metadata]);
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v4, kPCSMetadataiCDP[0]);
      if (Value && (v1 = Value, v7 = CFGetTypeID(Value), v7 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v1);
        OUTLINED_FUNCTION_4_2();
      }

      else
      {
        v8 = 0;
      }

      [v2 setICDPHSM:v8];
      v9 = CFDictionaryGetValue(v5, kPCSMetadataiCDPArmed[0]);
      if (v9 && (v1 = v9, v10 = CFGetTypeID(v9), v10 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v1);
        OUTLINED_FUNCTION_4_2();
      }

      else
      {
        v11 = 0;
      }

      [v2 setICDPHSMArmed:v11];
      v12 = CFDictionaryGetValue(v5, kPCSMetadataiCDPWalrus[0]);
      if (v12 && (v1 = v12, v13 = CFGetTypeID(v12), v13 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v1);
        OUTLINED_FUNCTION_4_2();
      }

      else
      {
        v14 = 0;
      }

      [v2 setICDPHSMWalrus:v14];
      v15 = CFDictionaryGetValue(v5, kPCSMetadataiCDPDrop[0]);
      if (v15 && (v16 = v15, v1 = CFGetTypeID(v15), v1 == CFBooleanGetTypeID()))
      {
        CFBooleanGetValue(v16);
        OUTLINED_FUNCTION_4_2();
        v17 = v2;
      }

      else
      {
        v17 = OUTLINED_FUNCTION_5_2();
      }

      [v17 setICDPHSMPlesio:?];
    }

    else
    {
      v18 = [v2 options];
      v19 = CFDictionaryGetValue(v18, kPCSSetupDSID[0]);
      v32 = 0;
      v20 = [PCSAccountsModel adpEnabledForDSID:v19 error:&v32];
      v21 = v32;
      v22 = [OUTLINED_FUNCTION_10_1() log];
      if (v20)
      {
        PCSMigrationLog(v22, @"iCDP metadata is missing, but OTAccountSettings indicate that ADP is enabled");
        [OUTLINED_FUNCTION_0_5() setICDPHSMWalrus:?];
      }

      else
      {
        PCSMigrationLog(v22, @"Unable to determine ADP state: %@", v1);
      }
    }

    if ([v2 iCDPHSMWalrus])
    {
      v1 = [MEMORY[0x1E69DF068] sharedManager];
      v23 = [(__CFBoolean *)v1 currentPersona];

      if ([v23 isDataSeparatedPersona])
      {
        v24 = [v2 options];
        v1 = CFDictionaryGetValue(v24, kPCSSetupDSID[0]);
        v25 = +[PCSAccountsModel accountForCurrentPersona];
        v26 = [v25 aa_personID];
        if ([v26 isEqualToString:v1])
        {
          v27 = [v25 aa_isManagedAppleID];

          if (v27)
          {
            v28 = _PCSIsInternalRelease();
            v29 = [v2 log];
            if (v28)
            {
              PCSMigrationLog(v29, @"Walrus is unexpectedly enabled. Disabling, will update metadata.");
              [OUTLINED_FUNCTION_5_2() setICDPHSMWalrus:?];
              [OUTLINED_FUNCTION_0_5() setModified:?];
            }

            else
            {
              PCSMigrationLog(v29, @"Walrus is unexpectedly enabled.");
            }
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v23 = 0;
    }

    [v2 log];
    v30 = [OUTLINED_FUNCTION_10_1() iCDPHSMArmed];
    PCSMigrationLog(v1, @"Stingray iCDP status is armed %d icdp %d walrus %d plesio %d", v30, [v2 iCDPHSM], objc_msgSend(v2, "iCDPHSMWalrus"), objc_msgSend(v2, "iCDPHSMPlesio"));
  }

  return v3;
}

uint64_t PCSEngineSynchronizeiCDP(void *a1, const void **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = GetiCDPMetadata([v3 metadata]);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, kPCSMetadataiCDP[0]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v7);
        OUTLINED_FUNCTION_4_2();
        [v3 setICDPHSM:?];
      }
    }

    v9 = CFDictionaryGetValue(v5, kPCSMetadataiCDPArmed[0]);
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFBooleanGetTypeID())
      {
        CFBooleanGetValue(v10);
        OUTLINED_FUNCTION_4_2();
        [v3 setICDPHSMArmed:?];
      }
    }
  }

  if ([v3 newIdentity])
  {
    v12 = 0;
    IsICDP = 0;
  }

  else
  {
    v14 = PCSIdentitySetCreate([v3 options], 0, a2);
    v12 = v14;
    if (v14)
    {
      IsICDP = PCSIdentitySetIsICDP(v14, 0);
    }

    else
    {
      IsICDP = 0;
    }

    v15 = pcsLogObjForScope("migration");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"OFF";
      if (IsICDP)
      {
        v16 = @"ON";
      }

      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1B229C000, v15, OS_LOG_TYPE_DEFAULT, "Not creating new identity; local store iCDP state is %@", buf, 0xCu);
    }
  }

  [v3 setICDP:{objc_msgSend(v3, "iCDPHSM")}];
  v17 = [v3 iCDPHSMArmed];
  if (IsICDP)
  {
    if ((v17 & 1) == 0)
    {
      PCSMigrationLog([v3 log], @"iCDP state mismatching, using the most restrictive (local)");
      [OUTLINED_FUNCTION_0_5() setModified:?];
      [OUTLINED_FUNCTION_5_2() setICDP:?];
    }

    [OUTLINED_FUNCTION_0_5() setICDPArmed:?];
  }

  else if (v17)
  {
    PCSMigrationLog([v3 log], @"iCDP state mismatching, using the most restrictive (remote)");
    [OUTLINED_FUNCTION_0_5() setICDPArmed:?];
    [OUTLINED_FUNCTION_0_5() setModified:?];
  }

  [v3 log];
  v18 = [OUTLINED_FUNCTION_9_1() iCDPArmed];
  v19 = _PCSYESNO(v18);
  PCSMigrationLog(IsICDP, @"   iCDP state is (%@)", v19);
  if (v12)
  {
    CFRelease(v12);
  }

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

void PCSEngineAddMissingFromRegistry(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 buf, int a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_13();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v33 = v32;
  v34 = _PCSServiceItemsGetTooRolledServiceTypes();
  a16 = 0;
  if ([v33 missingFromRegistry])
  {
    v35 = [v33 set];
    v36 = _PCSIdentitySetCopyCurrentIdentityInternal(v35, kPCSServiceMaster, 0);
    if (v36 || ([v33 missingFromRegistry], v37 = objc_msgSend(OUTLINED_FUNCTION_11_1(), "missingFromRegistry"), CFArrayGetCount(v37), v38 = OUTLINED_FUNCTION_8_2(), !CFArrayContainsValue(v38, v58, v39)))
    {
      PCSMigrationLog([v33 log], @"   master identity NOT missing from registry, refusing to add one");
    }

    else
    {
      if (!PCSIdentityCreateMaster(0, v31))
      {
        goto LABEL_38;
      }

      v40 = [OUTLINED_FUNCTION_10_1() log];
      PCSMigrationLog(v40, @"   master identity missing from registry, adding one");
      if (!PCSIdentitySetAddIdentity([v33 set], 0) || !PCSIdentitySetSetCurrentIdentity(objc_msgSend(v33, "set"), 0))
      {
        goto LABEL_37;
      }

      [OUTLINED_FUNCTION_0_5() setModified:?];
    }

    v41 = [v33 missingFromRegistry];
    v42 = kPCSServiceMaster;
    CFArrayGetCount(v41);
    v43 = OUTLINED_FUNCTION_8_2();
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v43, v59, v42);
    if (FirstIndexOfValue != -1)
    {
      for (i = FirstIndexOfValue; i != -1; i = CFArrayGetFirstIndexOfValue(v46, v60, v42))
      {
        CFArrayRemoveValueAtIndex(v41, i);
        CFArrayGetCount(v41);
        v46 = OUTLINED_FUNCTION_8_2();
      }
    }

    Count = CFArrayGetCount([v33 missingFromRegistry]);
    if (Count >= 1)
    {
      v48 = Count;
      for (j = 0; v48 != j; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex([v33 missingFromRegistry], j);
        if (PCSServiceItemTypeIsManatee(ValueAtIndex))
        {
          PCSMigrationLog([v33 log], @"   not creating Manatee service: %@");
        }

        else if ([v34 containsObject:ValueAtIndex])
        {
          PCSMigrationLog([v33 log], @"   not creating tooRolled service: %@");
        }

        else
        {
          if ([v33 limitLocalStoring])
          {
            v51 = [v33 limitLocalStoring];
            v61.length = CFArrayGetCount([v33 limitLocalStoring]);
            v61.location = 0;
            if (!CFArrayContainsValue(v51, v61, ValueAtIndex))
            {
              continue;
            }
          }

          if (CFEqual(ValueAtIndex, kPCSServiceEscrow))
          {
            if ([v33 newIdentity])
            {
              v52 = pcsLogObjForScope("migration");
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                buf = 0;
                _os_log_impl(&dword_1B229C000, v52, OS_LOG_TYPE_DEFAULT, "Creating new Escrow identity", &buf, 2u);
              }

              AddService();
              if (!v53)
              {
                break;
              }

              v54 = [v33 set];
              _PCSIdentitySetCopyCurrentIdentityInternal(v54, kPCSServiceEscrow, v31);
              [OUTLINED_FUNCTION_1_2() setEscrowIdentity:?];
              if (![v33 escrowIdentity])
              {
                break;
              }
            }
          }

          else
          {
            v55 = _PCSIdentitySetCopyCurrentIdentityInternal([v33 set], ValueAtIndex, 0);
            if (v55)
            {
              v56 = v55;
              if (_PCSIdentityValidate(v55, &a16, 0) && a16 != 1)
              {
                CFRelease(v56);
                continue;
              }

              CFRelease(v56);
            }

            AddService();
            if ((v57 & 1) == 0)
            {
              break;
            }
          }
        }
      }
    }

    if (v36)
    {
LABEL_37:
      CFRelease(v36);
    }
  }

LABEL_38:

  OUTLINED_FUNCTION_12_0();
}

uint64_t PCSEngineStepValidateLooseLeaves(void *a1, const void **a2)
{
  v5 = a1;
  _PCSServiceItemsGetTooRolledServiceTypes();
  objc_claimAutoreleasedReturnValue();
  if (![OUTLINED_FUNCTION_11_1() stableMetadata])
  {
    CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [OUTLINED_FUNCTION_1_2() setStableMetadata:?];
    if (![v5 stableMetadata])
    {
      goto LABEL_43;
    }
  }

  v6 = [v5 stableMetadata];
  CFDictionaryGetValue(v6, kPCSSecureBackupCFStableLooseLeaves[0]);
  if (([OUTLINED_FUNCTION_9_1() iCDPHSMWalrus] & 1) != 0 || objc_msgSend(v5, "iCDPHSMPlesio"))
  {
    v7 = [v5 log];
    if (v2)
    {
      PCSMigrationLog(v7, @"  Removing loose leaves");
      v8 = [v5 stableMetadata];
      CFDictionaryRemoveValue(v8, kPCSSecureBackupCFStableLooseLeaves[0]);
      [OUTLINED_FUNCTION_0_5() setModified:?];
    }

    else
    {
      PCSMigrationLog(v7, @"  Skipping validation of loose leaves");
    }

    v9 = [v5 metadata];
    if (CFDictionaryGetValue(v9, *MEMORY[0x1E6994FB8]))
    {
      [OUTLINED_FUNCTION_0_5() setModified:?];
    }

    goto LABEL_40;
  }

  if (![v5 escrowIdentity])
  {
    goto LABEL_40;
  }

  if (v2 && (v10 = CFGetTypeID(v2), v10 == CFDictionaryGetTypeID()))
  {
    v11 = OUTLINED_FUNCTION_0_1();
    MutableCopy = CFDictionaryCreateMutableCopy(v11, v12, v2);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_1();
    MutableCopy = CFDictionaryCreateMutable(v14, v15, v16, v17);
  }

  v18 = MutableCopy;
  if (!MutableCopy)
  {
LABEL_43:
    _PCSErrorOOM(a2);
    goto LABEL_40;
  }

  v43 = a2;
  CFArrayOfNames = PCSServiceItemsGetCFArrayOfNames();
  cf = PCSIdentitySetCreateMutable(0);
  Count = CFArrayGetCount(CFArrayOfNames);
  if (Count < 1)
  {
LABEL_33:
    v41 = [v5 stableMetadata];
    CFDictionarySetValue(v41, kPCSSecureBackupCFStableLooseLeaves[0], v18);
    v25 = 0;
    Mutable = 0;
    goto LABEL_34;
  }

  v21 = Count;
  v22 = 0;
  v45 = v3;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(CFArrayOfNames, v22);
    if (!PCSServiceItemTypeIsManatee(ValueAtIndex))
    {
      break;
    }

LABEL_21:
    CFDictionaryRemoveValue(v18, ValueAtIndex);
LABEL_22:
    if (v21 == ++v22)
    {
      goto LABEL_33;
    }
  }

  if ([v3 containsObject:ValueAtIndex])
  {
    PCSMigrationLog([v5 log], @"Skipping too rolled identity for loose leaves: %@", ValueAtIndex);
    goto LABEL_21;
  }

  v24 = PCSIdentitySetCopyOrderedIdentities([v5 set], ValueAtIndex);
  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = v24;
  v26 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v26, v27, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    _PCSErrorOOM(v43);
    goto LABEL_34;
  }

  Value = CFDictionaryGetValue(v18, ValueAtIndex);
  if (Value)
  {
    v30 = Value;
    v31 = CFGetTypeID(Value);
    if (v31 == CFArrayGetTypeID())
    {
      v53 = MEMORY[0x1E69E9820];
      v54 = 3221225472;
      v55 = __PCSEngineStepValidateLooseLeaves_block_invoke;
      v56 = &unk_1E7B194C0;
      v57 = v5;
      v58 = cf;
      v59 = ValueAtIndex;
      v60 = Mutable;
      CFArrayGetCount(v30);
      OUTLINED_FUNCTION_2_2();
      v32 = OUTLINED_FUNCTION_8_2();
      CFArrayApplyFunction(v32, v61, v33, v34);
    }
  }

  v35 = OUTLINED_FUNCTION_0_1();
  v37 = CFArrayCreateMutable(v35, v36, MEMORY[0x1E695E9C0]);
  if (v37)
  {
    v38 = v37;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSEngineStepValidateLooseLeaves_block_invoke_2;
    context[3] = &unk_1E7B194E8;
    v51 = Mutable;
    v52 = v37;
    v39 = v5;
    v50 = v39;
    CFArrayGetCount(v25);
    OUTLINED_FUNCTION_2_2();
    v62.location = 0;
    CFArrayApplyFunction(v25, v62, v40, context);
    if (CFArrayGetCount(v38))
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __PCSEngineStepValidateLooseLeaves_block_invoke_3;
      v46[3] = &unk_1E7B19510;
      v48 = v38;
      v47 = v39;
      CFDictionaryApplyFunction(Mutable, apply_block_2_3, v46);
      CFDictionarySetValue(v18, ValueAtIndex, v38);
    }

    CFRelease(Mutable);
    CFRelease(v25);
    CFRelease(v38);

    v3 = v45;
    goto LABEL_22;
  }

  _PCSErrorOOM(v43);
  v3 = v45;
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v18);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v25)
  {
    CFRelease(v25);
  }

LABEL_40:

  return 1;
}

uint64_t CaptureMetadata(void *a1, const __CFDictionary *a2)
{
  v3 = a1;
  HSMClientMetaData = GetHSMClientMetaData(a2);
  if (HSMClientMetaData)
  {
    v5 = HSMClientMetaData;
    Value = CFDictionaryGetValue(HSMClientMetaData, kPCSSecureBackupCFStableMetadataKey[0]);
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 != CFDictionaryGetTypeID() || ([v3 clearStableMetadata], v9 = OUTLINED_FUNCTION_0_1(), CFDictionaryCreateMutableCopy(v9, v10, v7), objc_msgSend(OUTLINED_FUNCTION_1_2(), "setStableMetadata:"), !objc_msgSend(v3, "stableMetadata")))
      {
        v17 = 0;
        goto LABEL_12;
      }
    }

    v11 = [v3 options];
    v12 = [v11 objectForKeyedSubscript:kPCSPasswordGenerationFromExistingMetadata[0]];

    if (!v12)
    {
      [(__CFDictionary *)v5 objectForKeyedSubscript:@"IdMSPasswordGeneration"];
      objc_claimAutoreleasedReturnValue();
      [objc_msgSend(OUTLINED_FUNCTION_9_1() "options")];
    }

    [v3 clearOldRegistry];
    CFDictionaryGetValue(v5, kPCSSecureBackupCFSecureBackupKeyRegistry[0]);
    [OUTLINED_FUNCTION_1_2() setOldRegistry:?];
    if ([v3 oldRegistry])
    {
      CFRetain([v3 oldRegistry]);
      v13 = [v3 options];
      v14 = CFDictionaryGetValue(v13, kPCSSetupCallbackKeyRegistry[0]);
      if (v14)
      {
        v15 = [v3 options];
        CFDictionaryGetValue(v15, kPCSSetupDSID[0]);
        v16 = [OUTLINED_FUNCTION_9_1() oldRegistry];
        (v14)[2](v14, v12, v16);
      }
    }
  }

  v17 = 1;
LABEL_12:

  return v17;
}

void PCSEngineHaveSyncEnoughToCreateIdentities()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v3 = v2;
  if (![v3 set])
  {
    PCSIdentitySetCreate([v3 options], 0, v1);
    [OUTLINED_FUNCTION_1_2() setSet:?];
    if (![v3 set])
    {
      v7 = 0;
      v4 = 0;
      goto LABEL_35;
    }
  }

  v4 = PCSStateCopyKeychainClassicIdentities(v3, 0, v1);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_35;
  }

  v5 = [v3 set];
  v6 = _PCSIdentitySetCopyCurrentIdentityInternal(v5, kPCSServiceMaster, v1);
  v7 = v6;
  if (!v6)
  {
LABEL_35:
    LODWORD(v10) = 0;
    goto LABEL_28;
  }

  PublicKey = PCSIdentityGetPublicKey(v6);
  if (!PublicKey)
  {
    goto LABEL_27;
  }

  if (![v3 oldRegistry])
  {
    LODWORD(v10) = 1;
    goto LABEL_28;
  }

  v9 = [v3 oldRegistry];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = CFGetTypeID(v9);
  if (v11 != CFDictionaryGetTypeID())
  {
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v10, kPCSServiceMaster);
  v10 = Value;
  if (!Value)
  {
    goto LABEL_28;
  }

  v13 = CFGetTypeID(Value);
  if (v13 == CFDictionaryGetTypeID() && (v14 = CFDictionaryGetValue(v10, kPCSSecureBackupCFKeyRegistryPublicIdentities[0])) != 0 && (v15 = v14, v16 = CFGetTypeID(v14), v16 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v15), Count >= 1))
  {
    v18 = Count;
    v19 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v19 - 1);
      LODWORD(v10) = ValueAtIndex;
      if (ValueAtIndex)
      {
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == CFDataGetTypeID() && (v22 = OUTLINED_FUNCTION_8_2(), (v24 = PCSPublicIdentityCreateWithPublicKeyInfo(v22, v23)) != 0))
        {
          v25 = v24;
          PublicID = PCSPublicIdentityGetPublicID(v24);
          if (PublicID)
          {
            LODWORD(v10) = CFEqual(PublicID, PublicKey) != 0;
          }

          else
          {
            LODWORD(v10) = 0;
          }

          CFRelease(v25);
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (v19 >= v18)
      {
        break;
      }

      ++v19;
    }

    while (!v10);
  }

  else
  {
LABEL_27:
    LODWORD(v10) = 0;
  }

LABEL_28:
  v27 = [v3 log];
  _PCSYESNO(v10);
  [v3 oldRegistry];
  _PCSYESNO(v4 != 0);
  PCSMigrationLog(v27, @"EnoughToUpdate: %@ though %@ (master %@, content %@)");
  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  OUTLINED_FUNCTION_12_0();
}

void AddService()
{
  OUTLINED_FUNCTION_13();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  FlagsByName = PCSServiceItemGetFlagsByName(v3);
  if (CFEqual(v3, kPCSServiceMaster))
  {
    [v7 log];
    [OUTLINED_FUNCTION_9_1() set];
    _PCSErrorContext(v3, v1, 54, @"Can't add master to set %@");
    goto LABEL_12;
  }

  v9 = _PCSIdentitySetCopyCurrentIdentityInternal([v7 set], v3, 0);
  if (v9)
  {
    v10 = v9;
    if (PCSIdentityCheckValidPublicKey(v9, 0))
    {
      goto LABEL_11;
    }

    v12 = [v7 log];
    _PCSYESNO(0);
    _PCSYESNO(1);
    _PCSYESNO((FlagsByName >> 2) & 1);
    PCSMigrationLog(v12, @"   service %@ identity missing: %@ invalid: %@, manatee: %@. adding one");
    CFRelease(v10);
  }

  else
  {
    v11 = [v7 log];
    _PCSYESNO(1);
    _PCSYESNO(0);
    _PCSYESNO((FlagsByName >> 2) & 1);
    PCSMigrationLog(v11, @"   service %@ identity missing: %@ invalid: %@, manatee: %@. adding one");
  }

  Service = PCSIdentityCreateService(v5, FlagsByName | 1, v3, v1);
  if (!Service)
  {
    goto LABEL_12;
  }

  v10 = Service;
  if (PCSIdentitySetAddIdentity([v7 set], Service) && PCSIdentitySetSetCurrentIdentity(objc_msgSend(v7, "set"), v10))
  {
    [OUTLINED_FUNCTION_0_5() setModified:?];
  }

LABEL_11:
  CFRelease(v10);
LABEL_12:

  OUTLINED_FUNCTION_12_0();
}

uint64_t PCSEngineStepValidateEscrowedKeys(void *a1)
{
  v1 = a1;
  [v1 recordTypeForReading];
  if (([v1 iCDPHSMWalrus] & 1) == 0 && (objc_msgSend(v1, "iCDPHSMPlesio") & 1) == 0)
  {
    v2 = [v1 set];
    v3 = _PCSIdentitySetCopyCurrentIdentityInternal(v2, kPCSServiceEscrow, 0);
    if (v3)
    {
      v4 = v3;
      if ((PCSIdentityCheckValidPublicKey(v3, 0) & 1) == 0)
      {
        v5 = GetiCDPMetadata([v1 metadata]);
        if (v5)
        {
          Value = CFDictionaryGetValue(v5, kPCSMetadataEscrowedKeys[0]);
          if (Value)
          {
            v7 = Value;
            v8 = CFGetTypeID(Value);
            if (v8 == CFDataGetTypeID())
            {
              v9 = PCSBackupCopyRecoveredKeysetWithIdentity(v4, v7, 0);
              if (v9)
              {
                CFRelease(v9);
              }

              else
              {
                [OUTLINED_FUNCTION_0_5() setModified:?];
              }
            }
          }
        }
      }

      CFRelease(v4);
    }
  }

  return 1;
}

uint64_t _PCSEngineStoreiCDPStatus(void *a1, char a2, const void **a3)
{
  v5 = a1;
  cf = 0;
  v40 = 0;
  v6 = PCSIdentitySetCreate([v5 options], 0, a3);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  v8 = [v5 iCDPArmed];
  if (v8 != PCSIdentitySetIsICDP(v7, 0))
  {
    PCSMigrationLog([v5 log], @"Updating iCDP");
    [v5 iCDPArmed];
    v9 = OUTLINED_FUNCTION_7_2();
    if (!PCSIdentitySetEnableICDP(v9, v10, v11))
    {
      goto LABEL_10;
    }
  }

  v12 = PCSIdentitySetIsWalrusWithForceFetch(v7, 1, &cf);
  v13 = cf;
  if (cf)
  {
    if ((a2 & 1) != 0 || ((Domain = CFErrorGetDomain(cf), Code = CFErrorGetCode(cf), !CFEqual(Domain, kPCSErrorDomain)) || Code != 90) && (!CFEqual(Domain, *MEMORY[0x1E697AAE8]) || Code != 29))
    {
      if (a3)
      {
        *a3 = CFRetain(cf);
      }

      v14 = [v5 log];
      PCSMigrationLog(v14, @"Failed getting Walrus state: %@", cf);
      v15 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v15);
      }

      goto LABEL_10;
    }

    v22 = [v5 log];
    PCSMigrationLog(v22, @"Will not update W: %@", cf);
    v23 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v23);
    }
  }

  else if (v12 != [v5 iCDPHSMWalrus])
  {
    PCSMigrationLog([v5 log], @"Updating Walrus");
    [v5 iCDPHSMWalrus];
    v17 = OUTLINED_FUNCTION_7_2();
    if (!PCSIdentitySetSetWalrus(v17, v18, v19))
    {
      goto LABEL_10;
    }
  }

  v24 = [v5 iCDPPlesio];
  if (v24 == PCSIdentitySetIsPlesio(v7, 0) || (PCSMigrationLog([v5 log], @"Updating Plesio"), objc_msgSend(v5, "iCDPPlesio"), v25 = OUTLINED_FUNCTION_7_2(), PCSIdentitySetSetPlesio(v25, v26, v27)))
  {
    IsICDP = PCSIdentitySetIsICDP(v7, &v40);
    if (!v40)
    {
      v29 = IsICDP;
      if (v13)
      {
        v30 = 0;
      }

      else
      {
        v30 = PCSIdentitySetIsWalrusWithForceFetch(v7, 0, &cf);
        if (cf)
        {
          v36 = [v5 log];
          PCSMigrationLog(v36, @"Failed getting Walrus state after set: %@", cf);
          v37 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v37);
          }
        }
      }

      IsPlesio = PCSIdentitySetIsPlesio(v7, a3);
      PCSMigrationLog([v5 log], @"Just stored status: %d (iCDPArmed), checked afterward, it was: %d", objc_msgSend(v5, "iCDPArmed"), v29);
      [v5 log];
      v32 = [OUTLINED_FUNCTION_11_1() iCDPHSMWalrus];
      PCSMigrationLog(v29, @"Just stored status: %d (Walrus), checked afterward, it was: %d", v32, v30);
      [v5 log];
      v33 = [OUTLINED_FUNCTION_10_1() iCDPPlesio];
      PCSMigrationLog(v30, @"Just stored status: %d (Plesio), checked afterward, it was: %d", v33, IsPlesio);
      v16 = 1;
      goto LABEL_26;
    }

    v38 = [v5 log];
    PCSMigrationLog(v38, @"Failed getting iCDPState: %@", v40);
  }

LABEL_10:
  v16 = 0;
LABEL_26:
  CFRelease(v7);
  v34 = v40;
  if (v40)
  {
    v40 = 0;
    CFRelease(v34);
  }

LABEL_28:

  return v16;
}

uint64_t PCSEngineEvaluateOctagon(void *a1, void *a2)
{
  v4 = a1;
  if (!CaptureMetadata(v4, [v4 metadata]))
  {
    goto LABEL_46;
  }

  v5 = GetiCDPMetadata([v4 metadata]);
  if (!v5)
  {
    goto LABEL_46;
  }

  Value = CFDictionaryGetValue(v5, kPCSMetadataiCDPWalrus[0]);
  v9 = Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFBooleanGetTypeID()) && CFBooleanGetValue(v7) != 0;
  v10 = v4;
  v11 = [v10 options];
  v12 = CFDictionaryGetValue(v11, kPCSSetupDSID[0]);
  v13 = [v10 options];
  v14 = CFDictionaryGetValue(v13, kPCSSetupAltDSID[0]);
  if (v14 || ([PCSAccountsModel altDSIDForDSID:v12], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2050000000;
    v16 = getAKAccountManagerClass_softClass_0;
    v58 = getAKAccountManagerClass_softClass_0;
    if (!getAKAccountManagerClass_softClass_0)
    {
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __getAKAccountManagerClass_block_invoke_0;
      v54[3] = &unk_1E7B18A90;
      v54[4] = &v55;
      __getAKAccountManagerClass_block_invoke_0(v54);
      v16 = v56[3];
    }

    v17 = v16;
    _Block_object_dispose(&v55, 8);
    v18 = [v16 sharedInstance];
    v53 = 0;
    v19 = [v18 authKitAccountWithAltDSID:v15 error:&v53];
    v20 = v53;
    v49 = v20;
    v50 = v12;
    if (!v19)
    {
      if (a2)
      {
        v32 = v20;
        OUTLINED_FUNCTION_6_2();
        v33 = 0;
        *a2 = v34;
      }

      else
      {
        OUTLINED_FUNCTION_6_2();
        v33 = 0;
      }

LABEL_40:

      if (v33)
      {
        PCSMigrationLog([v10 log], @"Evaluated and equalized account state");
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if ([v18 securityLevelForAccount:v19] != 4)
    {
      OUTLINED_FUNCTION_6_2();
      v33 = 1;
      goto LABEL_40;
    }

    v45 = v9;
    v47 = a2;
    v21 = objc_alloc_init(MEMORY[0x1E697AA88]);
    [v21 setAltDSID:v15];
    [v21 setContext:*MEMORY[0x1E697AAD0]];
    v22 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v21];
    v23 = objc_alloc_init(MEMORY[0x1E697AA98]);
    [v23 setUseCachedAccountStatus:1];
    v52 = 0;
    v24 = [v22 fetchCliqueStatus:v23 error:&v52];
    v46 = v52;
    v48 = 0;
    v16 = 0;
    if (v24)
    {
      goto LABEL_38;
    }

    v51 = 0;
    v44 = v21;
    v16 = [MEMORY[0x1E697AA80] fetchAccountWideSettings:v21 error:&v51];
    v25 = v51;
    v48 = v25;
    if (v16)
    {
      v42 = v10;
      v26 = v22;
      v41 = v22;
      v27 = v16;
      if ([v27 hasWalrus])
      {
        v28 = [v27 walrus];
        v29 = [v28 enabled];

        if (!v45)
        {
          v26 = v22;
          if (v29)
          {
            [v42 setICDPHSMWalrus:1];
            [v42 setModified:1];
          }

          goto LABEL_37;
        }

        v26 = v22;
        if (v29)
        {
LABEL_37:

          v22 = v26;
          v21 = v44;
LABEL_38:

          v33 = 1;
LABEL_39:
          v9 = v46;
          a2 = v47;
          v2 = v48;
          goto LABEL_40;
        }

        v31 = v41;
        v30 = v42;
LABEL_34:
        PCSEngineFixOctagonW(v30, v31, 1);
        goto LABEL_37;
      }

      if (!v45 || ([v27 hasWalrus] & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if ([v25 code] == 53)
      {
        v35 = [v48 domain];
        v43 = [v35 isEqualToString:*MEMORY[0x1E697AAE8]];

        if ((v45 | v43 ^ 1) != 1)
        {

          v16 = 0;
          v33 = 0;
          goto LABEL_39;
        }
      }

      if (v47 && v46)
      {
        *v47 = v46;
      }

      v36 = v10;
      v26 = v22;
      v37 = v22;
      if (!v45)
      {
        goto LABEL_37;
      }
    }

    v30 = v10;
    v31 = v26;
    goto LABEL_34;
  }

LABEL_42:
  v38 = [v10 log];
  if (a2)
  {
    v39 = *a2;
  }

  else
  {
    v39 = 0;
  }

  PCSMigrationLog(v38, @"Unable to evaluate and equalize account state: %@", v39);
LABEL_46:

  return 1;
}

uint64_t PCSEngineFailOnDroppedKeys(void *a1, const void **a2)
{
  v3 = a1;
  if ((_PCSIsiCDPIsWalrus([v3 metadata]) & 1) != 0 || _PCSIsiCDPIsPlesio(objc_msgSend(v3, "metadata")))
  {
    _PCSError(a2, 159, @"Keys dropped from HSM");
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL PCSEngineIgnoreKeysInHSM(void *a1, const void **a2)
{
  v3 = a1;
  [v3 clearSet];
  PCSIdentitySetCreateMutable(a2);
  [OUTLINED_FUNCTION_1_2() setSet:?];
  if ([v3 set])
  {
    Keychain = PCSIdentitySetCreateKeychain([v3 options], 0, a2);
    v5 = Keychain != 0;
    if (Keychain)
    {
      CFRelease(Keychain);
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t PCSEngineValidateiCDP(void *a1, const void **a2)
{
  v3 = a1;
  if ([v3 metadata])
  {
    if (_PCSIsiCDPEnabled([v3 metadata], 1))
    {
      [OUTLINED_FUNCTION_0_5() setICDP:?];
      [OUTLINED_FUNCTION_0_5() setICDPArmed:?];
      [v3 setICDPPlesio:{_PCSIsiCDPIsPlesio(objc_msgSend(v3, "metadata"))}];
      if (!_PCSEngineStoreiCDPStatus(v3, 0, a2))
      {
        v4 = 0;
        goto LABEL_5;
      }
    }

    if (([v3 triggerUpdate] & 1) == 0)
    {
      PCSMigrationLog([v3 log], @"Checking for ValidateiCDP migration");
      if (_PCSIsiCDPIsWalrus([v3 metadata]))
      {
        PCSMigrationLog([v3 log], @"Using Walrus account");
      }

      else
      {
        if (!_PCSIsiCDPIsPlesio([v3 metadata]))
        {
          v6 = _PCSIsiCDPEnabled([v3 metadata], 0);
          v7 = [v3 log];
          if (v6)
          {
            PCSMigrationLog(v7, @"Using iCDP account");
          }

          else
          {
            PCSMigrationLog(v7, @"Using SA account");
          }

          goto LABEL_4;
        }

        PCSMigrationLog([v3 log], @"Using Plesio account");
      }

      PCSEngineDifferentOnDroppedKeys(v3);
    }
  }

LABEL_4:
  v4 = 1;
LABEL_5:

  return v4;
}

CFIndex PCSEnginePreCheckKeychain_cold_1(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 121, @"Missing parameter: dsid");
}

CFIndex PCSEngineEnsureClassicContent_cold_5(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 126, @"Metadata missing");
}

uint64_t PCSEngineEnsureClassicContent_cold_7(void *a1, char a2, CFErrorRef *a3, char *a4)
{
  result = [a1 classicContent];
  v9 = 0;
  if ((a2 & 1) != 0 && !result)
  {
    result = *a3;
    if (*a3 && (result = CFErrorGetCode(result), result == 33) && (Domain = CFErrorGetDomain(*a3), result = CFEqual(Domain, *MEMORY[0x1E6994E70]), result))
    {
      PCSMigrationLog([a1 log], @"Congestion event at read happen restarting state machine");
      v11 = *a3;
      if (*a3)
      {
        *a3 = 0;
        CFRelease(v11);
      }

      v9 = 1;
      result = [a1 setRestart:1];
    }

    else
    {
      v9 = 0;
    }
  }

  *a4 = v9;
  return result;
}

uint64_t PCSEngineExtractKeys_cold_3(void *a1, void *a2, void *a3, void *a4)
{
  v8 = [a1 log];
  if (a2)
  {
    PCSMigrationLog(v8, @"Encrypted metadata keys failure: %@", *a2);
    v9 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v9);
    }
  }

  else
  {
    PCSMigrationLog(v8, @"Encrypted metadata keys failure: %@", 0);
  }

  v10 = [a1 escrowIdentity];
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __PCSEngineExtractKeys_block_invoke;
  a3[3] = &unk_1E7B193A8;
  v11 = a1;
  a3[4] = v11;
  PCSIdentityCheckValidPublicKey(v10, a3);
  [v11 setBrokenEncryptedMetadatakeys:1];
  result = [v11 setModified:1];
  *a4 = a3[4];
  return result;
}

CFIndex checkData_cold_1(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 129, @"Keybag hash mismatch");
}

CFIndex checkData_cold_2(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 126, @"KeybagSHA256/KeybagDigest missing");
}

CFIndex PCSEnginePreCheckHSMWrite_cold_1(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 123, @"Missing parameter: password");
}

CFIndex PCSEnginePreCheckHSMWrite_cold_2(void *a1, const void **a2)
{
  v3 = [a1 log];

  return _PCSErrorContext(v3, a2, 122, @"Missing parameter: username");
}

uint64_t PCSEngineDifferentOniCDP_cold_1(void *a1, void *a2)
{
  PCSEngineHaveSyncEnoughToCreateIdentities();
  if (v4)
  {
    return [a1 setCurrentStep:&validationInNoTouchHSMContent];
  }

  PCSMigrationLog([a1 log], @"DifferentOniCDP: not enough in sync: %@", *a2);
  return [OUTLINED_FUNCTION_0_5() setDone:?];
}

void PCSCacheCurrentIdentitiesForServices_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to determine accessgroup and/or viewhint for service %@", buf, 0xCu);
}

void _PCSGuitarfishGetKeychainItem_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _PCSGuitarfishSetKeychainItem_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void _PCSGuitarfishSetKeychainItem_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_6(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishResetProtectedData_cold_7()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_8()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_9()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_10()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_11()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_12()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_13()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PCSGuitarfishResetProtectedData_cold_14()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void performStingrayRecovery_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void performStingrayRecovery_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void performStingrayRecovery_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishSetupIdentitiesAndReturnRecoveryToken_cold_3()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _PCSGuitarfishDeleteKeychainItem_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void PCSGuitarfishUnwrapKeysUsingWrappingKey_cold_1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B229C000, a1, OS_LOG_TYPE_DEFAULT, "Unwrapped PCS keys successfully", v2, 2u);
  }
}

CFTypeRef BackupCreateEscrowedCommon(const __CFData *a1, const __CFData *a2, uint64_t a3, const void **a4)
{
  RandomKey = _PCSStingrayCreateRandomKey(a4);
  if (!RandomKey)
  {
    return 0;
  }

  v9 = RandomKey;
  v10 = _PCSStingrayCopyEncryptedData(RandomKey, a1);
  if (v10)
  {
    v11 = v10;
    if (_PCSFillOctetString((a3 + 16), v10) && (!a2 || _PCSFillOctetString((a3 + 32), a2)))
    {
      v12 = CFRetain(v9);
    }

    else
    {
      _PCSErrorOOM(a4);
      v12 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    _PCSErrorOOM(a4);
    v12 = 0;
  }

  CFRelease(v9);
  return v12;
}

void PCSGuitarfishRepairIdentities_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B229C000, a2, OS_LOG_TYPE_ERROR, "Existing stashed wrappingKey is not valid for the current record. p_password or p_token recover is needed: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __PCSSupportGetClientInfo_block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
    v3 = CFDictionaryGetValue(v1, *MEMORY[0x1E695E1F0]);
    v4 = 0;
    if (Value && v3)
    {
      v4 = CFStringCreateWithFormat(0, 0, @"%@;%@", v3, Value);
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
  }

  PCSSupportGetClientInfo_clientInfo = v4;
}

CFTypeRef PCSMMCSCopyEncryptedData(const __CFData *a1, const __CFData *a2, const __CFData *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = ccaes_siv_encrypt_mode();
  v7 = OUTLINED_FUNCTION_0_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  if (PCSMMCSGetDerivedSIVKey(a1, &v15) && (OUTLINED_FUNCTION_1_3(), ccsiv_init(), CFDataGetLength(a3), v8 = ccsiv_ciphertext_size(), (Mutable = CFDataCreateMutable(0, 0)) != 0))
  {
    v10 = Mutable;
    CFDataSetLength(Mutable, v8 + 17);
    MutableBytePtr = CFDataGetMutableBytePtr(v10);
    *MutableBytePtr = v15;
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, MutableBytePtr + 1))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_3();
    ccsiv_set_nonce();
    CFDataGetMutableBytePtr(v10);
    OUTLINED_FUNCTION_1_3();
    if (ccsiv_aad())
    {
      goto LABEL_11;
    }

    if (a2)
    {
      CFDataGetLength(a2);
      CFDataGetBytePtr(a2);
      OUTLINED_FUNCTION_1_3();
      if (ccsiv_aad())
      {
        goto LABEL_11;
      }
    }

    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    OUTLINED_FUNCTION_1_3();
    if (ccsiv_crypt())
    {
LABEL_11:
      v12 = 0;
    }

    else
    {
      v12 = CFRetain(v10);
    }

    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  cc_clear();
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeRef PCSMMCSCopyDecryptedData(const __CFData *a1, const __CFData *a2, const __CFData *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = ccaes_siv_decrypt_mode();
  v7 = OUTLINED_FUNCTION_0_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  if (CFDataGetLength(a3) >= 18 && PCSMMCSGetDerivedSIVKey(a1, &v15) && (OUTLINED_FUNCTION_0_0(), ccsiv_init(), CFDataGetLength(a3), v8 = ccsiv_plaintext_size(), (Mutable = CFDataCreateMutable(0, 0)) != 0))
  {
    v10 = Mutable;
    CFDataSetLength(Mutable, v8);
    BytePtr = CFDataGetBytePtr(a3);
    if (*BytePtr != v15)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_0();
    ccsiv_set_nonce();
    OUTLINED_FUNCTION_0_0();
    if (ccsiv_aad())
    {
      goto LABEL_12;
    }

    if (a2)
    {
      CFDataGetLength(a2);
      CFDataGetBytePtr(a2);
      OUTLINED_FUNCTION_0_0();
      if (ccsiv_aad())
      {
        goto LABEL_12;
      }
    }

    CFDataGetMutableBytePtr(v10);
    OUTLINED_FUNCTION_0_0();
    if (ccsiv_crypt())
    {
LABEL_12:
      v12 = 0;
    }

    else
    {
      v12 = CFRetain(v10);
    }

    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  cc_clear();
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

__CFData *PCSKeyEnvelopeEncrypt(uint64_t a1, uint64_t a2, const __CFData *a3, CFTypeRef cf, const void **a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    _PCSError(a5, 126, @"%s: associatedData argument not CFData", "CFDataRef  _Nullable PCSKeyEnvelopeEncrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  v16 = _PCSKEExtractSeed(a1, a2, a5, v11, v12, v13, v14, v15);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = _PCSKEKeyFromSeed(v16, 68, "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.EncryptionKeyFromSeed", a5);
  if (!v18)
  {
    CFRelease(v17);
    return 0;
  }

  v19 = v18;
  Length = CFDataGetLength(a3);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, Length + 28);
  if (Mutable)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v24 = MutableBytePtr + 12;
    v25 = MutableBytePtr + 28;
    _PCSRandomData(0xCuLL, MutableBytePtr);
    ccaes_gcm_encrypt_mode();
    CFDataGetLength(v19);
    CFDataGetBytePtr(v19);
    CFDataGetLength(cf);
    CFDataGetBytePtr(cf);
    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    OUTLINED_FUNCTION_0_8();
    if (ccgcm_one_shot())
    {
      CFRelease(Mutable);
      _PCSError(a5, 92, @"%s: AES-GCM failed", "CFDataRef  _Nullable PCSKeyEnvelopeEncrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", v25, 16, v24);
      Mutable = 0;
    }
  }

  else
  {
    _PCSError(a5, 150, @"%s: could not allocate the ciphertext", "CFDataRef  _Nullable PCSKeyEnvelopeEncrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
  }

  CFRelease(v17);
  CFRelease(v19);
  return Mutable;
}

__CFData *PCSKeyEnvelopeDecrypt(uint64_t a1, uint64_t a2, const __CFData *a3, CFTypeRef cf, const void **a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    _PCSError(a5, 126, @"%s: associatedData argument not CFData", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  if (CFDataGetLength(a3) <= 0x1B)
  {
    Length = CFDataGetLength(a3);
    _PCSError(a5, 20, @"%s: encryptedData too short (length %u)", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", Length);
    return 0;
  }

  v17 = _PCSKEExtractSeed(a1, a2, a5, v11, v12, v13, v14, v15);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = _PCSKEKeyFromSeed(v17, 68, "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.EncryptionKeyFromSeed", a5);
  if (v19)
  {
    v20 = v19;
    v21 = CFDataGetLength(a3) - 28;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v21);
    if (Mutable)
    {
      v26 = a5;
      v22 = CFDataGetBytePtr(a3) + 12;
      ccaes_gcm_decrypt_mode();
      CFDataGetLength(v20);
      CFDataGetBytePtr(v20);
      CFDataGetLength(cf);
      CFDataGetBytePtr(cf);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      OUTLINED_FUNCTION_0_8();
      if (ccgcm_one_shot())
      {
        CFRelease(Mutable);
        _PCSError(v26, 149, @"%s: AES-GCM failed", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)", MutableBytePtr, 16, v22);
        Mutable = 0;
      }
    }

    else
    {
      _PCSError(a5, 150, @"%s: could not allocate data", "CFDataRef  _Nullable PCSKeyEnvelopeDecrypt(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    }

    CFRelease(v20);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v18);
  return Mutable;
}

__CFData *PCSKeyEnvelopeAuthenticate(uint64_t a1, uint64_t a2, CFTypeRef cf, const void **a4)
{
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDataGetTypeID()))
  {
    _PCSError(a4, 126, @"%s: data argument not CFData", "CFDataRef  _Nonnull PCSKeyEnvelopeAuthenticate(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    return 0;
  }

  v14 = _PCSKEExtractSeed(a1, a2, a4, v9, v10, v11, v12, v13);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = _PCSKEKeyFromSeed(v14, 72, "com.apple.ProtectedCloudStorage.PCSKeyEnvelope.AuthenticationKeyFromSeed", a4);
  if (v16)
  {
    v17 = v16;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, 32);
    if (Mutable)
    {
      ccsha256_di();
      CFDataGetLength(v17);
      CFDataGetBytePtr(v17);
      CFDataGetLength(cf);
      CFDataGetBytePtr(cf);
      CFDataGetMutableBytePtr(Mutable);
      cchmac();
    }

    else
    {
      _PCSError(a4, 150, @"%s: could not allocate the tag", "CFDataRef  _Nonnull PCSKeyEnvelopeAuthenticate(PCSShareProtectionRef _Nonnull, PCSKeyEnvelopeRef _Nonnull, CFDataRef _Nonnull, CFErrorRef * _Nullable)");
    }

    CFRelease(v17);
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v15);
  return Mutable;
}

uint64_t PCSKeyEnvelopeVerify(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef cf, const void **a5)
{
  v6 = PCSKeyEnvelopeAuthenticate(a1, a2, cf, a5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFEqual(v6, a3);
  v9 = MEMORY[0x1E695E4C0];
  if (v8)
  {
    v9 = MEMORY[0x1E695E4D0];
  }

  v10 = *v9;
  CFRelease(v7);
  return v10;
}

uint64_t aks_assert_hold_cold_1()
{
  v0 = *MEMORY[0x1E69E9858];
  OUTLINED_FUNCTION_0_10();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1773, "", "");
}

uint64_t aks_assert_drop_cold_1()
{
  v0 = *MEMORY[0x1E69E9858];
  OUTLINED_FUNCTION_0_10();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1791, "", "");
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v4 = MEMORY[0x1EEDB6CF0](theData, dataToFind, searchRange.location, searchRange.length, compareOptions);
  result.length = v5;
  result.location = v4;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}