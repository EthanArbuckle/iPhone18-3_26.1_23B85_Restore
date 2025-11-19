void sub_1B22ACDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a13, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSDeleteGuitarfishTokenRecord(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v6 = __PCSCreateSecureBackupContext(2, a2);
  v7 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ____PCSDeleteGuitarfishTokenRecord_block_invoke;
  v16[3] = &unk_1E7B18B68;
  v18 = &v24;
  v19 = a1;
  v8 = v7;
  v17 = v8;
  v9 = _PCSSecureBackupSymbols[3];
  if (!v9)
  {
    v9 = MEMORY[0x1E6994D80];
    _PCSSecureBackupSymbols[3] = MEMORY[0x1E6994D80];
  }

  v9(v6, v16);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v8);
  if (v6)
  {
    CFRelease(v6);
  }

  Value = CFDictionaryGetValue(a2, kPCSSetupDSID[0]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ____PCSDeleteGuitarfishTokenRecord_block_invoke_26;
  v15[3] = &unk_1E7B18B90;
  v15[4] = &v20;
  v15[5] = a1;
  _PCSGuitarfishDeleteKeychainItem(@"RecoveryToken", Value, v15);
  v11 = v25;
  v12 = v25[3];
  if (v12)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = v21[3];
  if (v12)
  {
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_10:
    *a3 = CFRetain(v12);
    v11 = v25;
    v12 = v25[3];
    if (!v12)
    {
LABEL_12:
      a3 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v11[3] = 0;
    CFRelease(v12);
    goto LABEL_12;
  }

  a3 = 1;
LABEL_13:
  v13 = v21[3];
  if (v13)
  {
    v21[3] = 0;
    CFRelease(v13);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return a3;
}

void sub_1B22AD024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t PCSFPValidateShare(const __CFData *a1, uint64_t a2, const void **a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (decode_PCSShareProtection(BytePtr, Length, v27, &v20))
  {
    goto LABEL_22;
  }

  v8 = v20;
  if (v8 != CFDataGetLength(a1))
  {
    _PCSError(a3, 16, @"Did not parse all exported PCS object");
LABEL_22:
    v15 = 0;
LABEL_19:
    free_PCSShareProtection(v27);
    free_PCSObjectSignature(v21);
    v16 = *MEMORY[0x1E69E9840];
    return v15;
  }

  if (!*(&v28 + 1))
  {
    goto LABEL_22;
  }

  if (decode_PCSObjectSignature(*(*(&v28 + 1) + 24), *(*(&v28 + 1) + 16), v21, &v20))
  {
    goto LABEL_22;
  }

  if (v20 != *(*(&v28 + 1) + 16))
  {
    goto LABEL_22;
  }

  v9 = ccsha256_di();
  v19 = 0;
  v10 = length_PCSSignedShareProtection(v27);
  Mutable = CFDataCreateMutable(0, v10);
  if (!Mutable)
  {
    goto LABEL_22;
  }

  v12 = Mutable;
  CFDataSetLength(Mutable, v10);
  MutableBytePtr = CFDataGetMutableBytePtr(v12);
  if (encode_PCSSignedShareProtection(&MutableBytePtr[v10 - 1], v10, v27, &v19))
  {
    CFRelease(v12);
    goto LABEL_22;
  }

  if (v10 == v19)
  {
    if (v28)
    {
      v14 = CFDataCreate(0, *(v28 + 8), *v28);
    }

    else
    {
      v14 = 0;
    }

    _PCSMakeDigest(v9, v12, v14, v21, v32);
    v15 = (_PCSVerifyHash(a2, v23[2], *v9, v32, &v22 + 8, a3) & 1) != 0 || *(&v25 + 1) && (_PCSVerifyHash(a2, *(*(&v25 + 1) + 16), *v9, v32, *(&v25 + 1), a3) & 1) != 0;
    CFRelease(v12);
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_19;
  }

  v18 = asn1_abort();
  return _PCSPostHaveCredentials(v18);
}

uint64_t __PCSKeyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

BOOL PCSKeyCompare(const void *a1, const void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != PCSKeyGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  return v5 == PCSKeyGetTypeID() && a1 == a2;
}

CFStringRef PCSKeyCopyDescription(uint64_t a1)
{
  v2 = PCSKeyCopyExportedPublicKey(a1);
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  v5 = _PCSCreateBase64(BytePtr, Length, 0);
  v6 = CFStringCreateWithFormat(0, 0, @"<PCSKey@%p keyid: %@>", a1, v5);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t __PCSIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef PCSIdentityCopyDescription(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = @"name: ";
  }

  else
  {
    v4 = &stru_1F297D620;
  }

  if (v3)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v5 = &stru_1F297D620;
  }

  if (v2 && (v6 = *(v2 + 16)) != 0)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  NameByIndex = PCSServiceItemGetNameByIndex(v7);
  v9 = _PCSIdentityCopyBAT(a1);
  PublicKey = PCSIdentityGetPublicKey(a1);
  v11 = @"pubkey";
  if (PublicKey)
  {
    v11 = PublicKey;
  }

  v12 = CFStringCreateWithFormat(0, 0, @"<PCSIdentity %@%@ pubkey: %@ service: %@ BAT: %@ %@>", v4, v5, v11, NameByIndex, v9, &stru_1F297D620);
  if (v9)
  {
    CFRelease(v9);
  }

  return v12;
}

CFDataRef PCSIdentityCopyCircleFingerPrint(uint64_t a1, const void **a2)
{
  if (!PCSIdentityWithAttributesCheck(a1, a2))
  {
    return 0;
  }

  v4 = *(*(*(a1 + 16) + 16) + 24);
  v5 = *v4;
  if (!v5)
  {
LABEL_6:
    _PCSError(a2, 83, @"old-identity2");
    return 0;
  }

  v6 = 0;
  v7 = *(v4 + 1);
  v8 = 24 * v5;
  while (*(v7 + v6) != 6)
  {
    v6 += 24;
    if (v8 == v6)
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (decode_PCSManateeCircleFingerPrint(*(v7 + v6 + 16), *(v7 + v6 + 8), &v12, &v11))
  {
    _PCSError(a2, 83, @"invalid-Circle-FingerPrint");
    return 0;
  }

  if (*(*(v4 + 1) + v6 + 8) == v11)
  {
    v9 = CFDataCreate(*MEMORY[0x1E695E480], v13, v12);
  }

  else
  {
    v9 = 0;
  }

  free_PCSManateeCircleFingerPrint(&v12);
  return v9;
}

uint64_t PCSIdentityWithAttributesCheck(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 16)) != 0)
  {
    if (*(v5 + 24))
    {
      return 1;
    }

    if (*(v5 + 4) == 1)
    {
      _PCSError(a2, 83, @"old-identity", v2, v3);
    }

    else
    {
      _PCSError(a2, 83, @"service", v2, v3);
    }
  }

  else
  {
    _PCSError(a2, 83, @"raw-identity", v2, v3);
  }

  return 0;
}

uint64_t PCSIdentityGetCreationTime(uint64_t a1, const void **a2)
{
  v2 = PCSIdentityCopyBuildAndTime(a1, a2);
  if (!v2)
  {
    return -1;
  }

  v3 = v2;
  v4 = *(v2 + 1);
  free_PCSBuildAndTime(v2);
  free(v3);
  return v4;
}

void *PCSIdentityCopyBuildAndTime(uint64_t a1, const void **a2)
{
  if (PCSIdentityWithAttributesCheck(a1, a2))
  {
    v4 = *(*(*(a1 + 16) + 16) + 24);
    v5 = *v4;
    if (v5)
    {
      v6 = 0;
      v7 = 24 * v5;
      v8 = @"old-identity2";
      while (*(*(v4 + 1) + v6) != 1)
      {
        v6 += 24;
        if (v7 == v6)
        {
          goto LABEL_10;
        }
      }

      v9 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
      if (!decode_PCSBuildAndTime(*(*(v4 + 1) + v6 + 16), *(*(v4 + 1) + v6 + 8), v9, 0))
      {
        return v9;
      }

      v8 = @"invalid-BAT";
LABEL_10:
      _PCSError(a2, 83, v8);
    }

    else
    {
      _PCSError(a2, 83, @"old-identity2");
    }
  }

  return 0;
}

__CFString *_PCSIdentityCopyBAT(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v1 = PCSIdentityCopyBuildAndTime(a1, &v8);
  if (v1)
  {
    v2 = v1;
    memset(&v7, 0, sizeof(v7));
    gmtime_r(v1 + 1, &v7);
    strftime(v9, 0x1EuLL, "%Y%m%d%H%M%S", &v7);
    v3 = CFStringCreateWithFormat(0, 0, @"%s;%s", v9, *v2);
    free_PCSBuildAndTime(v2);
    free(v2);
  }

  else
  {
    v4 = v8;
    if (v8)
    {
      v8 = 0;
      CFRelease(v4);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

const __CFData *PCSIdentityWebSafePublicKeyID(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = _PCSKeyCopyExportedPublicKey(v1);
    }

    else
    {
      v2 = 0;
    }

    v3 = _PCSCopyWebSafePublicKey(v2);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFData *PCSIdentityCopyExportedPublicKey(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return _PCSKeyCopyExportedPublicKey(result);
  }

  return result;
}

const __CFData *_PCSCopyWebSafePublicKey(const __CFData *a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    ccsha256_di();
    CFDataGetLength(v1);
    CFDataGetBytePtr(v1);
    ccdigest();
    v2 = CFDataCreateWithBytesNoCopy(0, bytes, 20, *MEMORY[0x1E695E498]);
    v3 = objc_autoreleasePoolPush();
    v4 = [(__CFData *)v2 base64EncodedStringWithOptions:0];
    v1 = [v4 mutableCopy];

    [(__CFData *)v1 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:0, [(__CFData *)v1 length]];
    [(__CFData *)v1 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:0, [(__CFData *)v1 length]];
    [(__CFData *)v1 replaceOccurrencesOfString:@"=" withString:&stru_1F297D620 options:0 range:0, [(__CFData *)v1 length]];
    objc_autoreleasePoolPop(v3);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t __PCSPublicIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t PCSPublicIdentityCompare(const void *a1, const void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != PCSPublicIdentityGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != PCSPublicIdentityGetTypeID())
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  PublicID = PCSPublicIdentityGetPublicID(a1);
  v7 = PCSPublicIdentityGetPublicID(a2);

  return CFEqual(PublicID, v7);
}

CFStringRef PCSPublicIdentityCopyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  PublicID = PCSPublicIdentityGetPublicID(a1);
  if (PublicID)
  {
    v6 = PublicID;
  }

  else
  {
    v6 = @"pubkey";
  }

  v7 = *(a1 + 24);
  v8 = "";
  if (v7 && (*(v7 + 32) & 4) != 0)
  {
    v8 = " div";
  }

  v9 = PCSPublicIdentityCopyWebSafePublicKeyID(a1);
  v10 = CFStringCreateWithFormat(0, 0, @"<PCSPublicIdentity@%p pubkey: %@ (%@) service: %d%s>", a1, v6, v9, v4, v8);
  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

BOOL _PCSFillOctetString(CFIndex *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  v5 = malloc_type_malloc(Length, 0xA8A18144uLL);
  a1[1] = v5;
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v7 = CFDataGetLength(theData);
    memcpy(v5, BytePtr, v7);
    *a1 = CFDataGetLength(theData);
  }

  return v5 != 0;
}

void PCSAbortv(char *a1, va_list a2)
{
  v3 = 0;
  if (vasprintf(&v3, a1, a2) >= 1 && v3 != 0)
  {
    syslog(3, "PCSAbort: %s", v3);
  }

  abort();
}

void PCSAbortCF(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  v2 = PCSCFStringToCString(v1);
  PCSAbort("%s", v3, v4, v5, v6, v7, v8, v9, v2);
}

uint64_t PCSIdentityGetServiceViewHint(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return PCSServiceItemGetViewHintByIndex(*v2);
  }

  else
  {
    return PCSServiceItemGetViewHintByIndex(0);
  }
}

__CFString *PCSIdentityGetServiceAccessGroup(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return PCSServiceItemGetAccessGroupByIndex(*v2);
  }

  else
  {
    return PCSServiceItemGetAccessGroupByIndex(0);
  }
}

uint64_t _PCSKeyAllocateDiversizedKey(void *a1, uint64_t a2)
{
  if ((*(a2 + 32) & 4) == 0)
  {
    _PCSKeyAllocateDiversizedKey_cold_1();
  }

  v4 = malloc_type_calloc(1uLL, 24 * *a1 + 16, 0x60040B37CB4BBuLL);
  *(a2 + 40) = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = 24 * *a1 + 16;
  v6 = 1;
  v7 = malloc_type_calloc(1uLL, v5, 0x60040B37CB4BBuLL);
  *(a2 + 48) = v7;
  if (!v7)
  {
    return 0;
  }

  return v6;
}

CFTypeRef _PCSKeyCreateKeyIDFromData(const __CFData *a1)
{
  PublicWithData = PCSKeyCreatePublicWithData(a1, 0);
  if (!PublicWithData)
  {
    return 0;
  }

  v2 = PublicWithData;
  v3 = *(PublicWithData + 24);
  if (v3)
  {
    v4 = CFRetain(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

uint64_t PCSIdentityCopyPublicKeyInfo(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return PCSCreateExportedPublicKeyInfo(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t PCSCreateExportedPublicKeyInfo(uint64_t a1)
{
  v2 = length_PCSPublicKeyInfo(a1);
  Mutable = CFDataCreateMutable(0, v2);
  if (!Mutable)
  {
    return 0;
  }

  v4 = Mutable;
  v8 = 0;
  CFDataSetLength(Mutable, v2);
  MutableBytePtr = CFDataGetMutableBytePtr(v4);
  if (encode_PCSPublicKeyInfo(&MutableBytePtr[v2 - 1], v2, a1, &v8))
  {
    CFRelease(v4);
    return 0;
  }

  if (v2 == v8)
  {
    return v4;
  }

  v7 = asn1_abort();
  return PCSPublicIdentityGetPublicKey(v7);
}

CFTypeRef PCSDeriveIdentity(const __CFData *a1, int a2, const __CFData *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    ccsha512_di();
    v5 = ccec_cp_521();
  }

  else if (a2 == 1)
  {
    ccsha256_di();
    v5 = MEMORY[0x1B2744A50]();
  }

  else
  {
    if (a2)
    {
      v15 = 0;
      goto LABEL_18;
    }

    ccsha256_di();
    v5 = MEMORY[0x1B2744A40]();
  }

  v6 = v5;
  v7 = cczp_bitlen();
  v8 = (v7 + 7) >> 3;
  MEMORY[0x1EEE9AC00](v7);
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  if (cchkdf() || (PCSIdentityGetTypeID(), (v9 = _CFRuntimeCreateInstance()) == 0))
  {
    v15 = 0;
  }

  else
  {
    v10 = v9;
    PCSKeyGetTypeID();
    Instance = _CFRuntimeCreateInstance();
    v10[2] = Instance;
    if (Instance && (*(v10[2] + 40) = malloc_type_calloc(1uLL, (32 * *v6) | 0x10, 0x60040B37CB4BBuLL)) != 0 && (ccDRBGGetRngState(), v12 = *(v10[2] + 40), !ccec_generate_key_deterministic()) && (*(v10[2] + 32) |= 1u, *(v10[2] + 32) &= ~2u, SetKeyID(v10[2])) && (v14 = _PCSSignKey(v10[2], *(v10[2] + 40), (*(v10[2] + 32) >> 1) & 1, 0, 0, v13, 0), (*(v10[2] + 16) = v14) != 0))
    {
      v15 = CFRetain(v10);
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v10);
  }

  v16 = cczp_bitlen();
  bzero(v19 - ((v8 + 23) & 0x3FFFFFFFFFFFFFF0), (v16 + 7) >> 3);
LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

void _PCSIdentitySetSigningIdentity(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 80);
  if (v3 != cf)
  {
    if (v3)
    {
      *(a1 + 80) = 0;
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 80) = cf;
  }
}

uint64_t PCSPublicIdentityCopyPublicKeyInfo(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return PCSCreateExportedPublicKeyInfo(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t __PCSIdentitySetGetPrivateKey(uint64_t a1, void *a2, const void **a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_6;
  }

  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040698877B7uLL);
  a2[2] = v7;
  if (v7)
  {
    v8 = *(*(a1 + 16) + 16);
    if (!copy_PCSPublicKeyInfo())
    {
      v3 = *(a1 + 16);
LABEL_6:
      if (CopyOctetStringFromPrivKey((*(v3 + 32) >> 1) & 1, 0, *(v3 + 40), a2))
      {
        return 1;
      }

      _PCSError(a3, 42, @"failed to export full key");
      goto LABEL_11;
    }
  }

  _PCSErrorOOM(a3);
LABEL_11:
  free_PCSPrivateKey(a2);
  return 0;
}

uint64_t CopyOctetStringFromPrivKey(int a1, int a2, uint64_t *a3, uint64_t a4)
{
  if (a2 == 1 || !a1)
  {
    v10 = ccec_der_export_priv_size();
    if (v10)
    {
      v11 = v10;
      v12 = malloc_type_malloc(v10, 0x6F41E4F5uLL);
      *(a4 + 8) = v12;
      if (v12)
      {
        *a4 = v11;
        if (!ccec_der_export_priv())
        {
          return 1;
        }

        free(*(a4 + 8));
      }
    }

    return 0;
  }

  v5 = *a3;
  v6 = (cczp_bitlen() + 7) >> 2;
  v7 = v6 & 0x3FFFFFFFFFFFFFFELL;
  if ((v6 & 0x3FFFFFFFFFFFFFFELL) == 0)
  {
    return 0;
  }

  v8 = malloc_type_malloc(v6 & 0x3FFFFFFFFFFFFFFELL, 0xD308353AuLL);
  *(a4 + 8) = v8;
  if (!v8)
  {
    return 0;
  }

  *a4 = v7;
  v9 = 1;
  ccec_compact_export();
  return v9;
}

BOOL __PCSFillCurrentsKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 24);
  *a2 = **(v3 + 16);
  return _PCSFillOctetString((a2 + 8), v4);
}

CFDataRef PCSIdentityCopyExternalForm(uint64_t a1, uint64_t a2, const void **a3)
{
  v44 = 0;
  v45 = &v44;
  v46 = 0x6010000000;
  v47 = &unk_1B23165E5;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  if (!a1)
  {
    _PCSError(a3, 125, @"PCSIdentityCopyExternalForm: identity missing");
    goto LABEL_29;
  }

  v50 = 0uLL;
  v51 = 0uLL;
  v48 = 0uLL;
  v49 = 0uLL;
  v6 = *(a1 + 24);
  if (v6)
  {
    CFRetain(*(a1 + 24));
    Length = CFStringGetLength(v6);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    if (!CFStringGetCString(v6, v9, MaximumSizeForEncoding, 0x8000100u))
    {
      *v9 = 0;
    }

    CFRelease(v6);
    v10 = v45;
  }

  else
  {
    v9 = strdup("");
    v10 = &v44;
  }

  v10[4] = v9;
  if (*(a1 + 40))
  {
    v11 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    v45[10] = v11;
    if (!v11)
    {
      _PCSErrorOOM(a3);
      goto LABEL_29;
    }

    *v11 = *(a1 + 40);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    if (*(*(a1 + 16) + 16))
    {
      v13 = CFDictionaryGetCount(v12) + 1;
      v14 = malloc_type_calloc(v13, 0x18uLL, 0x10800404ACF7207uLL);
      v45[8] = v14;
      v15 = *(a1 + 16);
      *v14 = **(v15 + 16);
      _PCSFillOctetString(v14 + 1, *(v15 + 24));
      *(v41 + 6) = 1;
      v16 = *(a1 + 64);
      if (v16)
      {
        context[0] = MEMORY[0x1E69E9820];
        context[1] = 3221225472;
        context[2] = __PCSIdentityCopyExternalForm_block_invoke;
        context[3] = &unk_1E7B18BB8;
        context[4] = &v44;
        context[5] = &v40;
        context[6] = v13;
        CFDictionaryApplyFunction(v16, apply_block_2_0, context);
        if (v13 != *(v41 + 6))
        {
          __assert_rtn("PCSIdentityCopyExternalForm", "CloudIdentity.m", 2305, "n == count");
        }
      }
    }
  }

  if (!AddPCSKey((v45 + 4), *(a1 + 16), a3))
  {
    goto LABEL_29;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    if (*(*(a1 + 16) + 16))
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __PCSIdentityCopyExternalForm_block_invoke_2;
      v34[3] = &unk_1E7B18BE0;
      v34[4] = &v35;
      v34[5] = &v44;
      v34[6] = a1;
      v34[7] = a3;
      CFDictionaryApplyFunction(v17, apply_block_2_0, v34);
      v18 = *(v36 + 24);
      _Block_object_dispose(&v35, 8);
      if (v18)
      {
        goto LABEL_29;
      }
    }
  }

  v35 = 0;
  v19 = length_PCSKeySet((v45 + 4));
  Mutable = CFDataCreateMutable(0, v19);
  v21 = Mutable;
  if (!Mutable)
  {
    goto LABEL_27;
  }

  CFDataSetLength(Mutable, v19);
  MutableBytePtr = CFDataGetMutableBytePtr(v21);
  v23 = encode_PCSKeySet(&MutableBytePtr[v19 - 1], v19, (v45 + 4), &v35);
  if (v23)
  {
LABEL_20:
    CFRelease(v21);
LABEL_28:
    _PCSError(a3, 7, @"PCSKeySet encode error: %d", v23);
LABEL_29:
    ExternalRepresentation = 0;
LABEL_30:
    free_PCSKeySet((v45 + 4));
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
    return ExternalRepresentation;
  }

  if (v19 != v35)
  {
    goto LABEL_44;
  }

  v24 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  v45[9] = v24;
  if (!v24)
  {
    goto LABEL_38;
  }

  v25 = malloc_type_malloc(0x20uLL, 0xA60C6CC3uLL);
  *(v45[9] + 8) = v25;
  v26 = v45[9];
  if (!v26[1])
  {
    _PCSErrorOOM(a3);
    goto LABEL_38;
  }

  *v26 = 32;
  ccsha256_di();
  CFDataGetLength(v21);
  CFDataGetBytePtr(v21);
  v27 = *(v45[9] + 8);
  ccdigest();
  CFRelease(v21);
  v35 = 0;
  v28 = length_PCSKeySet((v45 + 4));
  v29 = CFDataCreateMutable(0, v28);
  v21 = v29;
  if (!v29)
  {
LABEL_27:
    v23 = 12;
    goto LABEL_28;
  }

  CFDataSetLength(v29, v28);
  v30 = CFDataGetMutableBytePtr(v21);
  v23 = encode_PCSKeySet(&v30[v28 - 1], v28, (v45 + 4), &v35);
  if (v23)
  {
    goto LABEL_20;
  }

  if (v28 == v35)
  {
    if (a2 == 1)
    {
      v33 = __PCSCreateExportPEM(kPCSPEMIdentityCollection, v21);
      if (v33)
      {
        ExternalRepresentation = CFStringCreateExternalRepresentation(0, v33, 0x8000100u, 0);
        CFRelease(v33);
        goto LABEL_39;
      }
    }

    else
    {
      if (!a2)
      {
        CFRetain(v21);
        ExternalRepresentation = v21;
LABEL_39:
        CFRelease(v21);
        goto LABEL_30;
      }

      _PCSError(a3, 7, @"Invalid format: %d", a2);
    }

LABEL_38:
    ExternalRepresentation = 0;
    goto LABEL_39;
  }

LABEL_44:
  result = asn1_abort();
  __break(1u);
  return result;
}

void sub_1B22AEDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

BOOL __PCSIdentityCopyExternalForm_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1[4] + 8) + 64) + 24 * *(*(a1[5] + 8) + 24);
  v5 = *(a3 + 16);
  v6 = *(v5 + 24);
  *v4 = **(v5 + 16);
  result = _PCSFillOctetString((v4 + 8), v6);
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 24);
  if (a1[6] <= v9)
  {
    __PCSIdentityCopyExternalForm_block_invoke_cold_1();
  }

  *(v8 + 24) = v9 + 1;
  *(*(a1[4] + 8) + 56) = *(*(a1[5] + 8) + 24);
  return result;
}

uint64_t AddPCSKey(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a2 + 16);
    if (CopyOctetStringFromPrivKey((v4 >> 1) & 1, 0, *(a2 + 40), &v8))
    {
      v6 = add_PCSPrivateKeys((a1 + 8));
      free(v9);
      if (!v6)
      {
        return 1;
      }

      _PCSErrorOOM(a3);
    }

    else
    {
      _PCSError(a3, 42, @"failed to export full key");
    }
  }

  else
  {
    _PCSError(a3, 40, @"Identity not a full identity");
  }

  return 0;
}

uint64_t __PCSIdentityCopyExternalForm_block_invoke_2(uint64_t result, const void *a2, uint64_t *cf1)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v5 = result;
    result = CFEqual(cf1, *(result + 48));
    if (!result)
    {
      result = CFEqual(*(cf1[2] + 24), a2);
      if (result)
      {
        result = AddPCSKey(*(*(v5 + 40) + 8) + 32, cf1[2], *(v5 + 56));
        if ((result & 1) == 0)
        {
          *(*(*(v5 + 32) + 8) + 24) = 1;
        }
      }
    }
  }

  return result;
}

BOOL _PCSValidateKey(uint64_t *a1, _BYTE *a2, const __CFDictionary *a3, __CFString *a4, const void **a5)
{
  v10 = _PCSCreateHexString(*(a1[2] + 16), *(a1[2] + 8));
  if (!v10)
  {
    _PCSErrorOOM(a5);
    return 0;
  }

  v11 = v10;
  v12 = CFDataCreate(0, *(a1[2] + 16), *(a1[2] + 8));
  if (!v12)
  {
    _PCSErrorOOM(a5);
    CFRelease(v11);
    return 0;
  }

  v13 = v12;
  KeyIDFromData = _PCSKeyCreateKeyIDFromData(v12);
  v15 = KeyIDFromData;
  if (!KeyIDFromData)
  {
    _PCSErrorOOM(a5);
    v21 = 0;
    v19 = 0;
LABEL_24:
    v22 = 0;
    goto LABEL_12;
  }

  BytePtr = CFDataGetBytePtr(KeyIDFromData);
  Length = CFDataGetLength(v15);
  v18 = _PCSCreateHexString(BytePtr, Length);
  v19 = v18;
  if (!v18)
  {
    _PCSErrorOOM(a5);
    v21 = 0;
    goto LABEL_24;
  }

  OptionallyAppend(a4, @"Key: %d %@ - %@ (priv key size %d)\n", *a1[2], v11, v18, *a1);
  if (a3 && a4)
  {
    if (CFDictionaryGetValue(a3, v19))
    {
      CFStringAppendFormat(a4, 0, @"\tWARNING: key is duplicated\n");
    }

    CFDictionarySetValue(a3, v19, v11);
  }

  v20 = PCSKeyCreate(a1, 1, a5);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_24;
  }

  v22 = _PCSValidatePCSKey(v20, v13, a2, a4);
LABEL_12:
  CFRelease(v13);
  CFRelease(v11);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

BOOL _PCSIdentityValidate(uint64_t a1, _BYTE *a2, __CFString *a3)
{
  v6 = *(a1 + 16);
  if (v6 && (v7 = *(v6 + 16)) != 0)
  {
    v9 = CFDataCreateWithBytesNoCopy(0, *(v7 + 16), *(v7 + 8), *MEMORY[0x1E695E498]);
    v10 = _PCSValidatePCSKey(*(a1 + 16), v9, a2, a3);
    if (v9)
    {
      CFRelease(v9);
    }

    return v10;
  }

  else
  {

    return _PCSValidatePCSKey(v6, 0, a2, a3);
  }
}

void OptionallyAppend(__CFString *a1, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    CFStringAppendFormatAndArguments(a1, 0, format, va);
  }
}

__CFString *PCSIdentityCopyDiagnostic(const __CFData *a1, int a2, _BYTE *a3, const void **a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = PCSServiceItemsCount();
  v42[2] = v42;
  v9 = v8 + 1;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v42 - v13);
  if ((v15 & 1) == 0)
  {
    bzero(v12, 4 * v8 + 4);
    bzero(v14, 4 * v8 + 4);
  }

  if (a2)
  {
    v16 = 7;
  }

  else
  {
    v16 = v8;
  }

  if (v16 > v9)
  {
    abort();
  }

  v43 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  *a3 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable || (v18 = Mutable, (v19 = CFStringCreateMutable(0, 0)) == 0))
  {
    _PCSErrorOOM(a4);
    *a3 = 1;
    free_PCSKeySet(&v44);
LABEL_53:
    v20 = 0;
    goto LABEL_48;
  }

  v20 = v19;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v23 = decode_PCSKeySet(BytePtr, Length, &v44, &v43);
  if (v23)
  {
    _PCSError(a4, 8, @"failed to decode PCSKeySet: %d", v23);
    goto LABEL_52;
  }

  v24 = v43;
  if (v24 != CFDataGetLength(a1))
  {
    _PCSError(a4, 8, @"PCSKeySet not the full buffer");
    goto LABEL_52;
  }

  if (!VerifyChecksum(&v44, a4))
  {
LABEL_52:
    *a3 = 1;
    free_PCSKeySet(&v44);
    CFRelease(v20);
    goto LABEL_53;
  }

  CFStringAppendFormat(v20, 0, @"Name: %s\n", v44);
  if (*(&v46 + 1))
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  CFStringAppendFormat(v20, 0, @"Checksum: %@\n", v25);
  if (*(&v46 + 1))
  {
    v27 = **(&v46 + 1);
    v26 = *(*(&v46 + 1) + 8);
  }

  else
  {
    v42[1] = ccsha256_di();
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccdigest();
    v26 = &v48;
    v27 = 32;
  }

  v28 = _PCSCreateHexString(v26, v27);
  CFStringAppendFormat(v20, 0, @"ksID: %@\n", v28);
  if (v28)
  {
    CFRelease(v28);
  }

  CFStringAppendFormat(v20, 0, @"Keys %u:\n", DWORD2(v44));
  CFStringAppendFormat(v20, 0, @"Key bag:\n");
  if (DWORD2(v44))
  {
    v29 = 0;
    v30 = 0;
    v31 = v45;
    while (_PCSValidateKey((v31 + v29), a3, v18, v20, a4))
    {
      v31 = v45;
      v32 = **(v45 + v29 + 16);
      if (v9 > v32)
      {
        ++v12[v32];
      }

      ++v30;
      v29 += 24;
      if (v30 >= DWORD2(v44))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_52;
  }

LABEL_26:
  CFStringAppendFormat(v20, 0, @"Current keys:\n");
  if (DWORD2(v45))
  {
    v33 = 0;
    v34 = 0;
    v35 = v46;
    do
    {
      v36 = _PCSCreateHexString(*(v35 + v33 + 16), *(v35 + v33 + 8));
      CFStringAppendFormat(v20, 0, @"keys service: %d data: %@\n", *(v46 + v33), v36);
      if (v36)
      {
        CFRelease(v36);
      }

      v35 = v46;
      v37 = *(v46 + v33);
      if (v9 > v37)
      {
        ++v14[v37];
      }

      ++v34;
      v33 += 24;
    }

    while (v34 < DWORD2(v45));
  }

  free_PCSKeySet(&v44);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (i)
      {
        if (!v12[i])
        {
          CFStringAppendFormat(v20, 0, @"expected service not found service %d\n", i);
        }
      }

      else if (*v12)
      {
        CFStringAppendFormat(v20, 0, @"unepexcted service 0");
      }
    }

    for (j = 0; j != v16; ++j)
    {
      if (j)
      {
        if (v14[j] != 1)
        {
          CFStringAppendFormat(v20, 0, @"current service found %u of service %d\n", v14[j], j);
        }
      }

      else if (*v14)
      {
        CFStringAppendFormat(v20, 0, @"unexpected service 0\n");
      }
    }
  }

LABEL_48:
  v40 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t PCSIdentityIsPartial(uint64_t result)
{
  if (result)
  {
    return (*(result + 40) >> 1) & 1;
  }

  return result;
}

uint64_t PCSIdentityGetCDPStatus(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    if (+[PCSUtilities deviceNeedsCompanion])
    {
      if (PCSIdentitySetCompanionCircleMember(a1, a3))
      {
        return 0;
      }

      else
      {
        return 30;
      }
    }

    else
    {
      v5 = fakeCdpOnForTest;
      if (fakeCdpOnForTest == 99)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = _PCSIdentitySetGetAltDSIDorPCSAccountsModel(a1);
        if (v8)
        {
          v9 = objc_alloc_init(MEMORY[0x1E697AA88]);
          [v9 setAltDSID:v8];
          [v9 setContext:*MEMORY[0x1E697AAD0]];
          v10 = [objc_alloc(MEMORY[0x1E697AA80]) initWithContextData:v9];
          v11 = objc_alloc_init(MEMORY[0x1E697AA98]);
          [v11 setUseCachedAccountStatus:1];
          v15 = 0;
          v12 = [v10 fetchCliqueStatus:v11 error:&v15];
          v13 = v15;
          if (v12 == 2)
          {
            v14 = 10;
          }

          else
          {
            v14 = 30;
          }

          if (v12)
          {
            v5 = v14;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          _PCSError(a3, 90, @"cannot determine altDSID");
          v5 = 30;
        }

        objc_autoreleasePoolPop(v7);
      }
    }
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 30;
  }

  return v5;
}

uint64_t PCSIdentityGetServiceStatus(uint64_t a1, void *a2, const void **a3)
{
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
  {
    v9 = @"Current persona does not match chosen dsid";
    v10 = a3;
    v11 = 152;
LABEL_7:
    _PCSError(v10, v11, v9);
    return 30;
  }

  if (!a1)
  {
    v9 = @"No Identity Set Specified";
LABEL_13:
    v10 = a3;
    v11 = 83;
    goto LABEL_7;
  }

  if (!a2)
  {
    v9 = @"No Service Specified";
    goto LABEL_13;
  }

  v6 = PCSIdentitySetCopyCurrentIdentityWithError(a1, a2, 0);
  if (v6)
  {
    CFRelease(v6);
    return 0;
  }

  else
  {

    return PCSIdentityGetCDPStatus(a1, v7, a3);
  }
}

CFDataRef PCSIdentityCreateExportedRawCompact(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 16);
  if ((*(v3 + 32) & 1) == 0)
  {
    _PCSError(a2, 40, @"Identity not a full identity");
    return 0;
  }

  if ((*(v3 + 32) & 2) == 0)
  {
    _PCSError(a2, 41, @"Identity not a compact identity");
    return 0;
  }

  v7 = 0;
  v8 = 0;
  if ((CopyOctetStringFromPrivKey(1, 1, *(v3 + 40), &v7) & 1) == 0)
  {
    _PCSErrorOOM(a2);
    return 0;
  }

  v6 = v8;
  v4 = CFDataCreate(0, v8, v7);
  cc_clear();
  free(v6);
  if (!v4)
  {
    _PCSErrorOOM(a2);
  }

  return v4;
}

uint64_t PCSKeyCreateRandomFullKey(int a1)
{
  PCSKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = MEMORY[0x1B2744A40]();
    if (a1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    *(Instance + 32) = v4 | *(Instance + 32) & 0xF8;
    v5 = malloc_type_calloc(1uLL, (32 * *v3) | 0x10, 0x60040B37CB4BBuLL);
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    ccDRBGGetRngState();
    if (a1)
    {
      if (ccec_compact_generate_key())
      {
LABEL_8:
        free(v6);
LABEL_9:
        *(Instance + 40) = 0;
LABEL_12:
        CFRelease(Instance);
        return 0;
      }
    }

    else if (ccec_generate_key_fips())
    {
      goto LABEL_8;
    }

    *(Instance + 40) = v6;
    if (!SetKeyID(Instance))
    {
      goto LABEL_12;
    }
  }

  return Instance;
}

__CFData *PCSIdentityCopyWrappedKey(uint64_t a1, const __CFData *a2, const void **a3)
{
  result = *(a1 + 16);
  if (result)
  {
    return _PCSKeyCopyWrappedKey(result, a2, a3);
  }

  return result;
}

uint64_t PCSIdentityCheckValidPublicKey(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v5 = *(a1 + 16);
  v6 = v3;
  v35 = 0;
  if (!v5)
  {
    goto LABEL_26;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_26;
  }

  v7 = _PCSKeyCopyExportedPublicKey(v5);
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = v7;
  v9 = CFDataCreate(0, *(*(v5 + 16) + 16), *(*(v5 + 16) + 8));
  if (!v9)
  {
    CFRelease(v8);
LABEL_26:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  if (!CFEqual(v8, v9))
  {
    BytePtr = CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v8);
    v15 = CopyPublicKeyFromData(BytePtr, Length, &v35 + 1, 0);
    if (!v15)
    {
      InvalidPublicKey(v6, @"Failed to parse the exported public key", v16, v17, v18, v19, v20, v21, v34);
LABEL_14:
      v11 = 0;
      goto LABEL_8;
    }

    v22 = v15;
    v23 = CFDataGetBytePtr(v10);
    v24 = CFDataGetLength(v10);
    v25 = CopyPublicKeyFromData(v23, v24, &v35, 0);
    if (!v25)
    {
      InvalidPublicKey(v6, @"Failed to parse the PKI from the public key", v26, v27, v28, v29, v30, v31, v34);
      free(v22);
      goto LABEL_14;
    }

    v32 = v25;
    if (HIBYTE(v35) == v35)
    {
      if (**v22 == **v25)
      {
        if (!ccn_cmp())
        {
          v11 = 1;
          goto LABEL_24;
        }

        v33 = @"Different X between the keys, all is lost";
      }

      else
      {
        v33 = @"Different n of the keys";
      }
    }

    else
    {
      v33 = @"Different compactness";
    }

    InvalidPublicKey(v6, v33, v26, v27, v28, v29, v30, v31, v34);
    v11 = 0;
LABEL_24:
    free(v22);
    free(v32);
    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:
  CFRelease(v8);
  CFRelease(v10);
LABEL_9:

LABEL_11:
  return v11;
}

uint64_t _PCSPublicIdentityExportPCSSPKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = (a1 + 24);
  v9 = *(a1 + 24);
  if (!v9 || (v9 = _PCSPublicIdentityExportPCSSPKey_cold_1(v9, v10, v8), (v9 & 1) != 0))
  {
    _PCSPublicIdentityExportPCSSPKey_cold_2(v9, v10, v8, a4, a5, a6, a7, a8);
  }

  return 1;
}

CFDataRef PCSPublicIdentityCopyPublicKey(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return PCSKeyCopyExportedPublicKey(result);
  }

  return result;
}

const __CFData *PCSPublicIdentityCopyWebSafePublicKeyID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = PCSKeyCopyExportedPublicKey(v1);
    v3 = _PCSCopyWebSafePublicKey(v4);
    if (v4)
    {
      CFRelease(v4);
    }

    return v3;
  }

  return _PCSCopyWebSafePublicKey(0);
}

uint64_t PCSPublicIdentityGetServiceName(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return PCSServiceItemGetNameByIndex(*v2);
  }

  else
  {
    return PCSServiceItemGetNameByIndex(0);
  }
}

uint64_t PCSPublicIdentityGetServiceID(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

const void *PCSPublicIdentityGetService(uint64_t a1, const __CFNumber *key, void *a3, const void **a4)
{
  if (!a3)
  {
    IndexByName = PCSServiceItemGetIndexByName(key);
    if (IndexByName)
    {
      NumberByIndex = PCSServiceItemGetNumberByIndex(IndexByName);
      if (NumberByIndex)
      {
        Value = CFDictionaryGetValue(*(a1 + 32), NumberByIndex);
        if (!Value)
        {
          return Value;
        }

        goto LABEL_7;
      }
    }

    else
    {
      _PCSError(a4, 2, @"unknown service key: %@", key);
    }

    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 40), a3);
  if (!Value)
  {
    _PCSError(a4, 2, @"no such keyid: %@", a3);
    return Value;
  }

LABEL_7:
  TypeID = PCSPublicIdentityGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    PCSPublicIdentityGetService_cold_1();
  }

  return Value;
}

__CFData *PCSPublicServiceIdentityCopyWrappedKey(uint64_t a1, const __CFData *a2, const void **a3)
{
  result = *(a1 + 24);
  if (result)
  {
    return _PCSKeyCopyWrappedKey(result, a2, a3);
  }

  return result;
}

__CFData *_PCSKeyCopyWrappedKey(uint64_t a1, const __CFData *a2, const void **a3)
{
  v6 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2640;
  v7 = _CopyECPGPWrappedData(a1, a2, a3);
  qword_1ED6F2648 += PCSMeasureRelativeNanoTime() - v6;
  return v7;
}

__CFData *PCSServiceIdentityCopyUnwrappedKey(uint64_t a1, const __CFData *a2, const void **a3)
{
  result = *(a1 + 16);
  if (result)
  {
    return _PCSKeyCopyUnwrappedData(result, a2, a3);
  }

  return result;
}

uint64_t _PCSSignHash(uint64_t a1, const __CFData *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  result = _PCSSignAlgToDI(a3, 0);
  if (result)
  {
    if (*result != a4)
    {
      return 0;
    }

    *(a6 + 16) = a3;
    v12 = **(a1 + 40);
    v13 = (((cczp_bitlen() + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 9;
    *(a6 + 24) = v13;
    *(a6 + 32) = malloc_type_malloc(v13, 0x44F18CuLL);
    v14 = PCSMeasureRelativeNanoTime();
    ++qword_1ED6F2660;
    v15 = *(a1 + 40);
    v16 = *(a6 + 32);
    ccDRBGGetRngState();
    v17 = ccec_sign();
    qword_1ED6F2668 += PCSMeasureRelativeNanoTime() - v14;
    if (!v17)
    {
      if (!a2)
      {
        return 1;
      }

      result = _PCSFillOctetString(a6, a2);
      if (result)
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _PCSSignKey(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5, uint64_t a6, const void **a7)
{
  v13 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040698877B7uLL);
  v14 = v13;
  if (!v13)
  {
    _PCSErrorOOM(a7);
    return v14;
  }

  *v13 = a4;
  if (a5)
  {
    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    *(v14 + 24) = v15;
    if (!v15 || copy_PCSAttributes())
    {
      goto LABEL_16;
    }
  }

  *(v14 + 4) = 1;
  v16 = *a2;
  v17 = cczp_bitlen() + 7;
  if (a3)
  {
    *(v14 + 8) = v17 >> 3;
    v18 = malloc_type_malloc(v17 >> 3, 0x489F4E51uLL);
    *(v14 + 16) = v18;
    if (v18)
    {
      ccec_compact_export();
      goto LABEL_11;
    }

LABEL_16:
    _PCSErrorOOM(a7);
LABEL_21:
    free_PCSPublicKeyInfo(v14);
    free(v14);
    return 0;
  }

  v19 = (v17 >> 2) | 1;
  *(v14 + 8) = v19;
  v20 = malloc_type_malloc(v19, 0xB3714C6CuLL);
  *(v14 + 16) = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  ccec_export_pub();
LABEL_11:
  v21 = PCSCreateExportedPublicKeyInfo(v14);
  v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040EC46ECBEuLL);
  *(v14 + 32) = v22;
  if (!v22)
  {
    _PCSErrorOOM(a7);
    goto LABEL_19;
  }

  v23 = *(a1 + 24);
  Length = CFDataGetLength(v21);
  BytePtr = CFDataGetBytePtr(v21);
  if ((signData(a1, v23, 1u, Length, BytePtr, *(v14 + 32)) & 1) == 0)
  {
    _PCSError(a7, 16, @"Signing of service key failed");
LABEL_19:
    if (v21)
    {
      CFRelease(v21);
    }

    goto LABEL_21;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v14;
}

uint64_t signData(uint64_t a1, const __CFData *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  result = _PCSSignAlgToDI(a3, 0);
  if (result)
  {
    v11 = result;
    v12 = (((*(result + 8) + *(result + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
    (MEMORY[0x1EEE9AC00])();
    v14 = v20 - v13;
    ccdigest_init();
    v15 = ccdigest_update();
    if (a3 >= 0x10000)
    {
      v20[1] = bswap32(a3);
      v15 = ccdigest_update();
    }

    v16 = *v11;
    MEMORY[0x1EEE9AC00](v15);
    v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 56))(v11, v14, v18);
    result = _PCSSignHash(a1, a2, a3, *v11, v18, a6);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _PCSIdentitySupportsServerSigning(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = _PCSIdentityIsManatee(result);
    if (result)
    {
      v2 = *(v1 + 16);
      if (v2 && (v3 = *(v2 + 16)) != 0)
      {
        v4 = *v3;
      }

      else
      {
        v4 = 0;
      }

      NameByIndex = PCSServiceItemGetNameByIndex(v4);
      return NameByIndex && CFEqual(NameByIndex, kPCSEnergyKitAmiLimitedPeers);
    }
  }

  return result;
}

uint64_t _PCSIdentityIsTooRolled(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  result = PCSServiceItemGetNameByIndex(v3);
  if (result)
  {
    v5 = result;
    v6 = _PCSServiceItemsGetTooRolledServiceTypes();
    v7 = [v6 containsObject:v5];

    return v7;
  }

  return result;
}

void *PCSIdentityCreateService(uint64_t a1, char a2, const __CFNumber *key, const void **a4)
{
  v25[0] = 0;
  v25[1] = 0;
  IndexByName = PCSServiceItemGetIndexByName(key);
  if (!IndexByName)
  {
    _PCSError(a4, 2, @"unknown service: %@", key);
    return 0;
  }

  v9 = IndexByName;
  PCSIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = PCSKeyCreateRandomFullKey(a2 & 1);
  if (PCSServiceItemTypeIsManatee(key))
  {
    v11 = a2 | 4;
  }

  else
  {
    v11 = a2;
  }

  IsShareableManatee = PCSServiceItemTypeIsShareableManatee(key);
  v14 = 0;
  if (IsShareableManatee)
  {
    v15 = v11 | 8;
  }

  else
  {
    v15 = v11;
  }

  if ((v15 & 4) == 0)
  {
    goto LABEL_9;
  }

  v27[1] = 0;
  v27[2] = 3;
  v26 = 0;
  v27[0] = 0;
  if ((v15 & 8) != 0)
  {
    LODWORD(v27[0]) = 1;
  }

  v17 = length_PCSManateeFlags(v27);
  v27[3] = v17;
  v18 = malloc_type_malloc(v17, 0xC9EE53DBuLL);
  v28 = v18;
  if (!v18)
  {
    v21 = 12;
    goto LABEL_18;
  }

  v19 = v18;
  v20 = encode_PCSManateeFlags(v18 + v17 - 1, v17, v27, &v26);
  if (v20)
  {
    v21 = v20;
    free(v19);
    v28 = 0;
LABEL_18:
    _PCSErrorASN1(a4, "ManateeFlags", v21);
    v22 = 0;
LABEL_19:
    free(v22);
    goto LABEL_20;
  }

  if (v26 != v17)
  {
    abort();
  }

  if (add_PCSAttributes(v25))
  {
    _PCSErrorOOM(a4);
    v22 = v28;
    goto LABEL_19;
  }

  free(v28);
  v14 = v25;
  PCSIdentityAddBuildAndCreationTime(v25);
  if ((v15 & 8) != 0)
  {
    RandomCompactRaw = PCSIdentityCreateRandomCompactRaw(a4);
    Instance[10] = RandomCompactRaw;
    if (!RandomCompactRaw)
    {
      goto LABEL_20;
    }

    v14 = v25;
  }

LABEL_9:
  v16 = _PCSSignKey(*(a1 + 16), *(Instance[2] + 40), a2 & 1, v9, v14, v13, a4);
  *(Instance[2] + 16) = v16;
  if (!v16)
  {
LABEL_20:
    free_PCSAttributes(v25);
    CFRelease(Instance);
    return 0;
  }

  free_PCSAttributes(v25);
  return Instance;
}

BOOL PCSIdentityAddBuildAndCreationTime(unsigned int *a1)
{
  v10 = 0;
  v11 = 0;
  ClientInfo = PCSSupportGetClientInfo();
  if (ClientInfo)
  {
    v3 = PCSCFStringToCString(ClientInfo);
    v4 = v3;
  }

  else
  {
    v4 = 0;
    v3 = "UNKNOWN-BUILD";
  }

  v14[0] = v3;
  v14[1] = time(0);
  LODWORD(v11) = 1;
  v5 = length_PCSBuildAndTime(v14);
  v12 = v5;
  v6 = malloc_type_malloc(v5, 0x2FFBFB10uLL);
  v13 = v6;
  if (v6)
  {
    v7 = v6;
    if (encode_PCSBuildAndTime(v6 + v5 - 1, v5, v14, &v10))
    {
      free(v7);
      v6 = 0;
      v8 = 0;
      v13 = 0;
    }

    else
    {
      if (v10 != v5)
      {
        abort();
      }

      v8 = add_PCSAttributes(a1) == 0;
      v6 = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  free(v6);
  if (v4)
  {
    free(v4);
  }

  return v8;
}

CFTypeRef PCSIdentityCreateMaster(uint64_t a1, const void **a2)
{
  v25[0] = 0;
  v25[1] = 0;
  PCSIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    _PCSErrorOOM(a2);
    v8 = 0;
    goto LABEL_7;
  }

  v5 = Instance;
  RandomFullKey = PCSKeyCreateRandomFullKey(1);
  v5[2] = RandomFullKey;
  if (!RandomFullKey)
  {
    _PCSErrorOOM(a2);
    goto LABEL_16;
  }

  if (!PCSIdentityAddBuildAndCreationTime(v25))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_6;
  }

  if (a1)
  {
    v10 = v5[2];
    v26 = 0;
    v11 = PCSKeyCopyExportedPublicKey(*(a1 + 16));
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v13 = PCSKeyCopyExportedPublicKey(v10);
    if (v13)
    {
      v14 = v13;
      Mutable = CFDataCreateMutable(0, 0);
      if (Mutable)
      {
        v16 = Mutable;
        CFDataAppendBytes(Mutable, "PCSForwardMasterCertification", 30);
        BytePtr = CFDataGetBytePtr(v12);
        Length = CFDataGetLength(v12);
        CFDataAppendBytes(v16, BytePtr, Length);
        v19 = CFDataGetBytePtr(v14);
        v20 = CFDataGetLength(v14);
        CFDataAppendBytes(v16, v19, v20);
        CFRelease(v12);
        CFRelease(v14);
        Signature = PCSIdentityCreateSignature(a1, 0, v16, a2);
        if (Signature)
        {
          v22 = Signature;
          LODWORD(v26) = 2;
          v28 = CFDataGetBytePtr(Signature);
          v27 = CFDataGetLength(v22);
          v23 = add_PCSAttributes(v25);
          CFRelease(v22);
          CFRelease(v16);
          if (!v23)
          {
            goto LABEL_5;
          }

          goto LABEL_16;
        }

        v24 = v16;
LABEL_21:
        CFRelease(v24);
        goto LABEL_16;
      }

      CFRelease(v12);
    }

    else
    {
      v14 = v12;
    }

    v24 = v14;
    goto LABEL_21;
  }

LABEL_5:
  *(v5[2] + 16) = _PCSSignKey(v5[2], *(v5[2] + 40), 1, 1, v25, v7, a2);
  v8 = CFRetain(v5);
LABEL_6:
  CFRelease(v5);
LABEL_7:
  free_PCSAttributes(v25);
  return v8;
}

CFDataRef PCSSignatureCopyKeyID(const __CFData *a1, _BYTE *a2, const void **a3)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v8 = decode_PCSSignature(BytePtr, Length, &v13, &v12);
  if (v8)
  {
    _PCSError(a3, 16, @"Failed to decode signature: %d", v8);
LABEL_9:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = v12;
  if (v9 != CFDataGetLength(a1))
  {
    _PCSError(a3, 16, @"Did not parse all signature");
    goto LABEL_9;
  }

  v10 = CFDataCreate(0, *(&v13 + 1), v13);
  if (v10)
  {
    if (a2)
    {
      *a2 = BYTE2(v14) & 1;
    }
  }

  else
  {
    _PCSErrorOOM(a3);
  }

LABEL_6:
  free_PCSSignature(&v13);
  return v10;
}

CFMutableDictionaryRef *PCSPublicIdentityCreatePEMParser(int a1, int a2, CFDataRef theData)
{
  v47 = 0;
  v48 = 0;
  v49 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v6 = decode_PCSUserPublicKeys(BytePtr, Length, &v48, &v47);
  if (v6)
  {
    _PCSError(0, 8, @"Failed to decode PCSUserPublicKeys: %d", v6);
LABEL_45:
    free_PCSUserPublicKeys(&v48);
    return 0;
  }

  if (!v48)
  {
    goto LABEL_45;
  }

  v7 = _PCSPublicIdentityCreateFromPKI(v49);
  if (!v7)
  {
    goto LABEL_45;
  }

  v8 = v7;
  v9 = v7[3];
  if (**(v9 + 2) != 1)
  {
    goto LABEL_41;
  }

  CFDictionarySetValue(v7[5], *(v9 + 3), v7);
  if (v48 < 2)
  {
LABEL_31:
    free_PCSUserPublicKeys(&v48);
    return v8;
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v49 + v10;
    v14 = (v49 + v10 + 80);
    v13 = *v14;
    if (!*v14)
    {
      PCSPublicIdentityCreatePEMParser_cold_4();
      goto LABEL_41;
    }

    v45 = v11;
    v46 = v10;
    v15 = v8[5];
    v18 = *(v12 + 88);
    v16 = (v12 + 88);
    v17 = v18;
    v19 = _PCSSignAlgToDI(*(v13 + 16), 0);
    if (!v19)
    {
      goto LABEL_41;
    }

    v20 = v19;
    v21 = CFDataCreate(0, *(v13 + 8), *v13);
    if (!v21)
    {
      _PCSErrorOOM(0);
      goto LABEL_41;
    }

    v22 = v21;
    Value = CFDictionaryGetValue(v15, v21);
    if (!Value)
    {
      v44 = v22;
      v42 = @"Can't find signature for signer: %@";
      goto LABEL_38;
    }

    v24 = Value;
    v25 = CFGetTypeID(Value);
    if (v25 != PCSKeyGetTypeID())
    {
      break;
    }

    if ((v24[32] & 4) != 0)
    {
      v44 = v22;
      v42 = @"Diversified keys not support for verification: %@";
LABEL_38:
      _PCSError(0, 28, v42, v44);
      goto LABEL_39;
    }

LABEL_19:
    v29 = *(v24 + 2);
    v30 = *(v24 + 5);
    if (v29 && *v29 != 1)
    {
      PCSPublicIdentityCreatePEMParser_cold_2();
      goto LABEL_39;
    }

    v31 = (v14 - 4);
    *v14 = 0;
    v14[1] = 0;
    v32 = PCSCreateExportedPublicKeyInfo((v14 - 4));
    *v14 = v13;
    *v16 = v17;
    if (!v32)
    {
      _PCSError(0, 5, @"Couldn't get public identity for %@", v22);
      goto LABEL_39;
    }

    v33 = v32;
    v34 = CFDataGetLength(v32);
    v35 = CFDataGetBytePtr(v33);
    if (!ccec_digest_and_verify(v30, v20, v34, v35, *(v13 + 24), *(v13 + 32)))
    {
      CFRelease(v22);
      v41 = v33;
      goto LABEL_40;
    }

    CFRelease(v33);
    if (*v16)
    {
      PCSPublicIdentityCreatePEMParser_cold_3();
      if (v36)
      {
        goto LABEL_41;
      }
    }

    else
    {
      CFRelease(v22);
    }

    v37 = _PCSPublicIdentityCreateFromPKI(v31);
    if (!v37)
    {
      goto LABEL_41;
    }

    v38 = v37;
    NumberByIndex = PCSServiceItemGetNumberByIndex(*v31);
    if (NumberByIndex)
    {
      v40 = NumberByIndex;
      if (!CFDictionaryContainsKey(v8[4], NumberByIndex))
      {
        CFDictionarySetValue(v8[4], v40, v38);
      }
    }

    CFDictionarySetValue(v8[5], *(v38[3] + 24), v38);
    CFRelease(v38);
    v10 = v46 + 48;
    v11 = v45 + 1;
    if (v45 + 1 >= v48)
    {
      goto LABEL_31;
    }
  }

  v26 = CFGetTypeID(v24);
  if (v26 == PCSIdentityGetTypeID())
  {
    v27 = 16;
LABEL_18:
    v24 = *&v24[v27];
    goto LABEL_19;
  }

  v28 = CFGetTypeID(v24);
  if (v28 == PCSPublicIdentityGetTypeID())
  {
    v27 = 24;
    goto LABEL_18;
  }

  PCSPublicIdentityCreatePEMParser_cold_1(v24);
LABEL_39:
  v41 = v22;
LABEL_40:
  CFRelease(v41);
LABEL_41:
  free_PCSUserPublicKeys(&v48);
  CFRelease(v8);
  return 0;
}

uint64_t __PCSIdentityCreateWithNameEmpty(uint64_t a1, CFTypeRef cf, const __CFNumber *key)
{
  if (!cf)
  {
    return 0;
  }

  if (key)
  {
    IndexByName = PCSServiceItemGetIndexByName(key);
    v7 = CFStringCreateWithFormat(0, 0, @"%@-%@", cf, key);
  }

  else
  {
    v7 = CFRetain(cf);
    IndexByName = 1;
  }

  PCSIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = Instance;
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v7, 0x8000100u, 0);
  KeyFromRandomData = PCSKeyCreateKeyFromRandomData(ExternalRepresentation, "love", v12, 0);
  *(v8 + 16) = KeyFromRandomData;
  *(*(v8 + 16) + 16) = _PCSSignKey(*(v10 + 16), *(KeyFromRandomData + 40), (*(KeyFromRandomData + 32) >> 1) & 1, IndexByName, 0, v14, 0);
  CFRelease(ExternalRepresentation);
  CFRelease(v7);
  return v8;
}

uint64_t __PCSIdentityCreateWithName(__CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"<unnamed>";
  }

  Empty = _PCSIdentityCreateEmpty(0);
  CFRetain(v1);
  *(Empty + 24) = v1;
  PCSKeyGetTypeID();
  *(Empty + 16) = _CFRuntimeCreateInstance();
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  *(Empty + 64) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(Empty + 72) = CFDictionaryCreateMutable(0, 0, v3, v4);
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v1, 0x8000100u, 0);
  KeyFromRandomData = PCSKeyCreateKeyFromRandomData(ExternalRepresentation, "love", v6, 0);
  *(Empty + 16) = KeyFromRandomData;
  if (KeyFromRandomData && (v9 = _PCSSignKey(KeyFromRandomData, *(KeyFromRandomData + 40), 0, 1, 0, v8, 0), v10 = *(Empty + 16), (*(v10 + 16) = v9) != 0))
  {
    CFDictionarySetValue(*(Empty + 72), *(v10 + 24), Empty);
    CFRelease(ExternalRepresentation);
    addNameService(Empty, v1, @"Bladerunner");
    addNameService(Empty, v1, @"Hyperion");
    addNameService(Empty, v1, @"Liverpool");
    addNameService(Empty, v1, @"Escrow");
    addNameService(Empty, v1, @"FDE");
    addNameService(Empty, v1, @"PianoMover");
    addNameService(Empty, v1, @"Sharing");
  }

  else
  {
    CFRelease(Empty);
    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }

    return 0;
  }

  return Empty;
}

void addNameService(uint64_t a1, const void *a2, const __CFNumber *key)
{
  IndexByName = PCSServiceItemGetIndexByName(key);
  if (!IndexByName)
  {
    addNameService_cold_2();
  }

  NumberByIndex = PCSServiceItemGetNumberByIndex(IndexByName);
  if (!NumberByIndex)
  {
    addNameService_cold_1();
  }

  v8 = NumberByIndex;
  v9 = __PCSIdentityCreateWithNameEmpty(a1, a2, key);
  CFDictionarySetValue(*(a1 + 72), *(v9[2] + 24), v9);
  CFDictionarySetValue(*(a1 + 64), v8, v9);

  CFRelease(v9);
}

uint64_t *__PCSPublicIdentityCreateWithName(const __CFString *a1)
{
  PCSPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  PCSKeyGetTypeID();
  Instance[3] = _CFRuntimeCreateInstance();
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0);
  KeyFromRandomData = PCSKeyCreateKeyFromRandomData(ExternalRepresentation, "love", v4, 0);
  Instance[3] = KeyFromRandomData;
  if (!KeyFromRandomData)
  {
    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }

    ExternalRepresentation = Instance;
    Instance = 0;
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E695E9D8];
  v7 = MEMORY[0x1E695E9E8];
  Instance[4] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Mutable = CFDictionaryCreateMutable(0, 0, v6, v7);
  Instance[5] = Mutable;
  CFDictionarySetValue(Mutable, *(Instance[3] + 24), Instance);
  *(Instance[3] + 16) = _PCSSignKey(Instance[3], *(Instance[3] + 40), 0, 1, 0, v9, 0);
  addPublicNameService(Instance, a1, @"Bladerunner");
  addPublicNameService(Instance, a1, @"Hyperion");
  addPublicNameService(Instance, a1, @"Liverpool");
  addPublicNameService(Instance, a1, @"Escrow");
  addPublicNameService(Instance, a1, @"FDE");
  addPublicNameService(Instance, a1, @"PianoMover");
  *(Instance[3] + 32) &= ~1u;
  if (ExternalRepresentation)
  {
LABEL_3:
    CFRelease(ExternalRepresentation);
  }

  return Instance;
}

void addPublicNameService(uint64_t a1, uint64_t a2, const __CFNumber *key)
{
  IndexByName = PCSServiceItemGetIndexByName(key);
  if (!IndexByName)
  {
    addPublicNameService_cold_2();
  }

  v7 = IndexByName;
  NumberByIndex = PCSServiceItemGetNumberByIndex(IndexByName);
  if (!NumberByIndex)
  {
    addPublicNameService_cold_1();
  }

  v9 = NumberByIndex;
  v10 = CFStringCreateWithFormat(0, 0, @"%@-%@", a2, key);
  PCSPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, v10, 0x8000100u, 0);
  KeyFromRandomData = PCSKeyCreateKeyFromRandomData(ExternalRepresentation, "love", v13, 0);
  Instance[3] = KeyFromRandomData;
  *(KeyFromRandomData + 32) &= ~1u;
  CFRelease(ExternalRepresentation);
  CFRelease(v10);
  v16 = _PCSSignKey(*(a1 + 24), *(Instance[3] + 40), 0, v7, 0, v15, 0);
  v17 = Instance[3];
  *(v17 + 16) = v16;
  CFDictionarySetValue(*(a1 + 40), *(v17 + 24), Instance);
  CFDictionarySetValue(*(a1 + 32), v9, Instance);

  CFRelease(Instance);
}

uint64_t PCSGetPublicIdentitites()
{
  if (PCSGetPublicIdentitites_onceToken != -1)
  {
    PCSGetPublicIdentitites_cold_1();
  }

  return PCSGetPublicIdentitites_dict;
}

void __PCSGetPublicIdentitites_block_invoke()
{
  v0 = 0;
  PCSGetPublicIdentitites_dict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = *MEMORY[0x1E695E4D0];
  do
  {
    CFDictionarySetValue(PCSGetPublicIdentitites_dict, PCSGetPublicIdentitites_publicIdentities[v0++], v1);
  }

  while (v0 != 7);
}

CFTypeRef PCSIdentityCollectionSetup(const void *a1, const void **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSIdentityCollectionSetup", &v13, 2u);
  }

  if (a1 && (Value = CFDictionaryGetValue(a1, kPCSSetupRecoverMode)) != 0 && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()) && CFBooleanGetValue(v5))
  {
    v7 = PCSIdentityRecoverFDE(a1, a2);
  }

  else
  {
    v7 = PCSIdentitySetup(a1, a2);
  }

  v8 = v7;
  if (v7)
  {
    if ((PCSCurrentPersonaMatchesDSIDFromSet(v7) & 1) == 0)
    {
      _PCSError(a2, 152, @"Current persona does not match chosen dsid");
      IdentityFromSet = 0;
LABEL_12:
      CFRelease(v8);
      goto LABEL_13;
    }

    IdentityFromSet = CreateIdentityFromSet(v8, a2);
  }

  else
  {
    IdentityFromSet = 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v12 = *a2;
    }

    else
    {
      v12 = 0;
    }

    v13 = 138412546;
    v14 = IdentityFromSet;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSIdentityCollectionSetup: return %@ error: %@", &v13, 0x16u);
  }

  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return IdentityFromSet;
}

CFTypeRef PCSIdentityCollectionCopyCurrent(const __CFDictionary *a1, const void **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSIdentityCollectionCopyCurrent", &v13, 2u);
  }

  if (a1)
  {
    if (CFDictionaryGetValue(a1, kPCSSetupDSID[0]))
    {
      v4 = 0;
      goto LABEL_9;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v4 = MutableCopy;
  CFDictionarySetValue(MutableCopy, kPCSSetupDSID[0], kPCSSetupDSIDAny[0]);
  a1 = v4;
LABEL_9:
  v6 = PCSIdentitySetCreate(a1, 0, a2);
  if (v6)
  {
    v7 = v6;
    if ((PCSCurrentPersonaMatchesDSIDFromSet(v6) & 1) == 0)
    {
      _PCSError(a2, 152, @"Current persona does not match chosen dsid");
      CFRelease(v7);
      if (v4)
      {
        CFRelease(v4);
      }

      v8 = 0;
      goto LABEL_14;
    }

    IdentityFromSet = CreateIdentityFromSet(v7, a2);
    if (IdentityFromSet)
    {
LABEL_18:
      v8 = IdentityFromSet;
      CFRelease(v7);
      if (!v4)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    CFRelease(v7);
    Classic = PCSIdentitySetCreateClassic(a1, 0, a2);
    if (Classic)
    {
      v7 = Classic;
      IdentityFromSet = CreateIdentityFromSet(Classic, a2);
      goto LABEL_18;
    }
  }

  v8 = 0;
  if (v4)
  {
LABEL_19:
    CFRelease(v4);
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSIdentityCollectionCopyCurrent: return %@", &v13, 0xCu);
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t PCSIdentityCollectionDestroy(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v7 = PCSCreateLogContext(@"Destroy", 0);
  if (!a2)
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a2, kPCSSetupDSID[0]);
  v9 = Value;
  if (!Value)
  {
    goto LABEL_12;
  }

  if (!CFEqual(Value, kPCSSetupDSIDAny[0]) && (v10 = CFGetTypeID(v9), v10 == CFStringGetTypeID()))
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFStringGetTypeID() && (!kPCSSetupDSIDAny[0] || !CFEqual(v9, kPCSSetupDSIDAny[0])) && !PCSCurrentPersonaMatchesDSID(v9))
    {
      if (a4)
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = kPCSErrorDomain;
        v37 = *MEMORY[0x1E696A578];
        v38[0] = @"Current persona does not match chosen dsid";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        *a4 = [v12 errorWithDomain:v13 code:152 userInfo:v14];

        a4 = 0;
      }

      goto LABEL_21;
    }
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

LABEL_12:
  v15 = PCSCopyPIIClearedOptions(a2);
  v16 = PCSLogGetOSLog(v7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138543618;
    v34 = a1;
    v35 = 2114;
    v36 = v15;
    _os_log_impl(&dword_1B229C000, v16, OS_LOG_TYPE_DEFAULT, "PCSIdentityCollectionDestroy: %{public}@ options: %{public}@", &v33, 0x16u);
  }

  if (__PCSDeleteFromKeychain(a4, v17, v18, v19, v20, v21, v22, v23) && __PCSDeleteFromKeychainICDP(v9, a4, v24, v25, v26, v27, v28, v29) && __PCSDeleteKeyfile(v9, a4))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kPCSNotificationRemovedCredentials, 0, 0, 0);
    a4 = 1;
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  a4 = 0;
  if (v7)
  {
LABEL_18:
    CFRelease(v7);
  }

LABEL_19:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_21:
  v31 = *MEMORY[0x1E69E9840];
  return a4;
}

__CFData *PCSFDECopyUnwrappedDataWithSet(uint64_t a1, const __CFData *a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = PCSIdentitySetCopyIdentities(a1, 0);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSFDECopyUnwrappedDataWithSet_block_invoke;
    context[3] = &unk_1E7B18C68;
    context[4] = &v13;
    CFDictionaryApplyFunction(v6, apply_block_2_0, context);
    CFRelease(v7);
    v8 = v14;
    v9 = v14[3];
    if (v9)
    {
      if (v9[2])
      {
        v10 = _PCSKeyCopyUnwrappedData(v9[2], a2, a3);
        v8 = v14;
        v9 = v14[3];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = 0;
      }

      v8[3] = 0;
      CFRelease(v9);
    }

    else
    {
LABEL_8:
      _PCSError(a3, 27, @"Failed to copy FDE identity");
      v10 = 0;
    }

LABEL_11:
    _Block_object_dispose(&v13, 8);
    return v10;
  }

  _PCSError(a3, 152, @"Current persona does not match chosen dsid");
  return 0;
}

void sub_1B22B1E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__PCSFDECopyUnwrappedDataWithSet_block_invoke(void *result, int a2, void *cf)
{
  if (!*(*(result[4] + 8) + 24))
  {
    v3 = cf[2];
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        if (*v4 == 6)
        {
          v5 = result;
          result = CFRetain(cf);
          *(*(v5[4] + 8) + 24) = result;
        }
      }
    }
  }

  return result;
}

__CFData *PCSCopyUnwrappedDataForFDEWithIdentity(uint64_t a1, const __CFData *a2, const void **a3)
{
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 16)) == 0 || *v7 != 6)
  {
    ServiceWithID = _PCSIdentityGetServiceWithID(a1, 6u, a3);
    if (ServiceWithID)
    {
      v6 = *(ServiceWithID + 2);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      _PCSError(a3, 27, @"Failed to copy FDE identity");
    }

    return 0;
  }

LABEL_4:

  return _PCSKeyCopyUnwrappedData(v6, a2, a3);
}

__CFData *PCSCopyWrappedDataWithFDEWithIdentity(const __CFDictionary *ServiceWithID, const __CFData *a2, const void **a3)
{
  v5 = *(ServiceWithID + 2);
  if (!v5 || (v6 = *(v5 + 16)) == 0 || *v6 != 6)
  {
    ServiceWithID = _PCSIdentityGetServiceWithID(ServiceWithID, 6u, a3);
    if (!ServiceWithID)
    {
      _PCSError(a3, 27, @"Failed to copy FDE identity");
      return 0;
    }
  }

  v7 = PCSIdentityCopyPublicIdentity(ServiceWithID);
  if (!v7)
  {
    _PCSError(a3, 5, @"Failed to copy public FDE identity");
    return 0;
  }

  v8 = v7;
  v9 = v7[3];
  if (v9)
  {
    v10 = _PCSKeyCopyWrappedKey(v9, a2, a3);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v8);
  return v10;
}

uint64_t PCSIdentityCreateSignature(uint64_t a1, unsigned int a2, const __CFData *a3, const void **a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 1;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v8 = *(a1 + 16);
  if ((a2 & 0x10000) != 0)
  {
    if (!v8)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v9 = _PCSKeyCopyExportedPublicKey(v8);
  }

  else
  {
    v9 = CFRetain(*(v8 + 24));
  }

  v10 = v9;
LABEL_9:
  v11 = *(a1 + 16);
  if (!v11 || (*(v11 + 32) & 1) == 0)
  {
    _PCSError(a4, 16, @"no key to sign with");
    goto LABEL_17;
  }

  Length = CFDataGetLength(a3);
  BytePtr = CFDataGetBytePtr(a3);
  if ((signData(v11, v10, v7, Length, BytePtr, v26) & 1) == 0)
  {
    _PCSError(a4, 16, @"Signing of service key failed");
    goto LABEL_17;
  }

  v25 = 0;
  v14 = length_PCSSignature(v26);
  Mutable = CFDataCreateMutable(0, v14);
  if (!Mutable)
  {
    v19 = 12;
    goto LABEL_16;
  }

  v16 = Mutable;
  CFDataSetLength(Mutable, v14);
  MutableBytePtr = CFDataGetMutableBytePtr(v16);
  v18 = encode_PCSSignature(&MutableBytePtr[v14 - 1], v14, v26, &v25);
  if (v18)
  {
    v19 = v18;
    CFRelease(v16);
LABEL_16:
    _PCSError(a4, 16, @"Failed encoding signature: %d", v19);
LABEL_17:
    v16 = 0;
    goto LABEL_19;
  }

  if (v14 != v25)
  {
    v21 = asn1_abort();
    return PCSValidateSignature(v21, v22, v23, v24);
  }

LABEL_19:
  if (v10)
  {
    CFRelease(v10);
  }

  free_PCSSignature(v26);
  return v16;
}

uint64_t PCSValidateSignature(uint64_t *a1, CFDataRef theData, const __CFData *a3, const void **a4)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = decode_PCSSignature(BytePtr, Length, v15, &v14);
  if (v10)
  {
    _PCSError(a4, 16, @"Failed to decode signature: %d", v10);
LABEL_7:
    v12 = 0;
    goto LABEL_4;
  }

  v11 = v14;
  if (v11 != CFDataGetLength(theData))
  {
    _PCSError(a4, 16, @"Did not parse all signature");
    goto LABEL_7;
  }

  v12 = _PCSValidateSignature(a1, v15, a3, a4);
LABEL_4:
  free_PCSSignature(v15);
  return v12;
}

uint64_t *PCSValidateSignatureGetSigner(const __CFDictionary *a1, CFDataRef theData, const __CFData *a3, const void **a4)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = decode_PCSSignature(BytePtr, Length, v19, &v18);
  if (v10)
  {
    _PCSError(a4, 16, @"Failed to decode signature: %d", v10);
LABEL_14:
    free_PCSSignature(v19);
    return 0;
  }

  v11 = v18;
  if (v11 != CFDataGetLength(theData))
  {
    _PCSError(a4, 16, @"Did not parse all signature");
    goto LABEL_14;
  }

  v12 = CFDataCreate(0, *(&v19[0] + 1), *&v19[0]);
  if (!v12)
  {
    _PCSErrorOOM(a4);
    goto LABEL_14;
  }

  v13 = v12;
  Value = CFDictionaryGetValue(a1, v12);
  if (Value)
  {
    v15 = Value;
    if (_PCSValidateSignature(Value, v19, a3, a4))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    _PCSError(a4, 28, @"Can't find signature for signer: %@", v13);
    v16 = 0;
  }

  free_PCSSignature(v19);
  CFRelease(v13);
  return v16;
}

CFTypeRef PCSValidateSignatureWithSet(uint64_t a1, CFDataRef theData, const __CFData *a3, const void **a4)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = decode_PCSSignature(BytePtr, Length, &v20, &v19);
  if (v10)
  {
    _PCSError(a4, 16, @"Failed to decode signature: %d", v10);
    goto LABEL_16;
  }

  v11 = v19;
  if (v11 != CFDataGetLength(theData))
  {
    _PCSError(a4, 16, @"Did not parse all signature");
    goto LABEL_16;
  }

  if ((BYTE2(v21) & 1) == 0)
  {
    v12 = CFDataCreate(0, *(&v20 + 1), v20);
    if (v12)
    {
      v13 = v12;
      v14 = PCSIdentitySetCopyIdentityByKeyID(a1, v12);
      goto LABEL_8;
    }

LABEL_13:
    _PCSErrorOOM(a4);
LABEL_16:
    free_PCSSignature(&v20);
    return 0;
  }

  v15 = _PCSCreateBase64(*(&v20 + 1), v20, 0);
  if (!v15)
  {
    goto LABEL_13;
  }

  v13 = v15;
  v14 = PCSIdentitySetCopyIdentity(a1, v15);
LABEL_8:
  v16 = v14;
  CFRelease(v13);
  if (!v16)
  {
    goto LABEL_13;
  }

  if (PCSValidateSignature(v16, theData, a3, a4))
  {
    v17 = CFRetain(v16);
  }

  else
  {
    v17 = 0;
  }

  free_PCSSignature(&v20);
  CFRelease(v16);
  return v17;
}

void __PCSIdentitySetCopyPublishableIdentities_block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (_PCSIdentityValidate(a2, &v17, 0) || v17 != 1)
  {
    v7 = *(a2 + 16);
    if (v7 && (v8 = *(v7 + 16)) != 0)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    NameByIndex = PCSServiceItemGetNameByIndex(v9);
    if (NameByIndex && CFEqual(*(a1 + 32), NameByIndex))
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = PCSCreateExportedPublicKeyInfo(v12);
          if (v13)
          {
            v14 = v13;
            CFArrayAppendValue(*(a1 + 40), v13);
            CFRelease(v14);
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = NameByIndex;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "PCSIdentitySetCopyPublishableIdentities found invalid match: expected %@ found %@";
      v6 = 22;
      goto LABEL_17;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = a2;
    v4 = MEMORY[0x1E69E9C10];
    v5 = "PCSIdentitySetCopyPublishableIdentities found unpublishable identity: %@";
    v6 = 12;
LABEL_17:
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

__CFData *_CopyECPGPWrappedData(uint64_t a1, CFDataRef theData, const void **a3)
{
  if (!theData)
  {
    _PCSError(a3, 12, @"input data to key wrapping missing");
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  CFDataGetLength(theData);
  v8 = ccec_rfc6637_wrap_key_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v8);
  if ((v6 & 4) == 0)
  {
    if (Mutable)
    {
      CFDataGetMutableBytePtr(Mutable);
      CFDataGetLength(theData);
      CFDataGetBytePtr(theData);
      v15 = ccDRBGGetRngState();
      v10 = ccec_rfc6637_wrap_key();
      goto LABEL_7;
    }

LABEL_10:
    _PCSErrorOOM(a3);
    return Mutable;
  }

  if (!Mutable)
  {
    goto LABEL_10;
  }

  v13 = a1 + 40;
  v12 = *(a1 + 40);
  v11 = *(v13 + 8);
  CFDataGetMutableBytePtr(Mutable);
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  ccDRBGGetRngState();
  v15 = "fingerprint";
  v10 = ccec_rfc6637_wrap_key_diversified();
LABEL_7:
  if (v10)
  {
    _PCSError(a3, 12, @"wrap failed with %d", v10, v15);
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void InvalidPublicKey(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = CFStringCreateWithFormatAndArguments(0, 0, a2, &a9);
  v12 = v11;
  if (v10 && v11)
  {
    v10[2](v10, v11);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSKeyCheckForInvalidPublicKey: %@", buf, 0xCu);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t ccec_digest_and_verify(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v10 = (((a2[1] + a2[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v15 - v11;
  ccdigest_init();
  ccdigest_update();
  result = ccec_verify_di(a1, a2, v12, a5, a6, 0);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccec_verify_di(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v20 = *MEMORY[0x1E69E9840];
  HIBYTE(v19) = 0;
  v8 = *a2;
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 56))(v10, v11, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2670;
  v13 = *a2;
  v14 = ccec_verify();
  qword_1ED6F2678 += PCSMeasureRelativeNanoTime() - v12;
  v15 = (v14 == 0) & HIBYTE(v19);
  if (((v14 == 0) & HIBYTE(v19)) == 0)
  {
    if ((v19 & 0x100000000000000) != 0)
    {
      v18 = "";
    }

    else
    {
      v18 = "!";
    }

    _PCSError(a6, 31, @"Verification failed, ret=%d, %svalid", v14, v18);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __CreateIdentityFromSet_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (_PCSIdentitySetIsCurrentIdentity(*(a1 + 32), a3))
  {
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, *(a3[2] + 16));
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(*(*(a1 + 40) + 64), v5, a3);
      CFRelease(v6);
    }
  }

  if (!CFEqual(*(a1 + 40), a3))
  {
    v7 = *(*(a1 + 40) + 72);
    v8 = *(a3[2] + 24);

    CFDictionarySetValue(v7, v8, a3);
  }
}

void *OUTLINED_FUNCTION_5_0()
{
  v4 = v2 + 24 * *v0;

  return malloc_type_calloc(1uLL, v4, v1);
}

void sub_1B22B3560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B22B45F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60)
{
  objc_destroyWeak(&a60);
  _Block_object_dispose((v60 - 248), 8);
  objc_destroyWeak((v60 - 216));
  _Unwind_Resume(a1);
}

void sub_1B22B4D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B22B53B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFData *PCSCloudKitShareTokenCopyDecryptedData(const __CFData *a1, const __CFData *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = ccaes_gcm_decrypt_mode();
  v5 = (*v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  Length = CFDataGetLength(a2);
  v7 = Length - 32;
  if (Length >= 32)
  {
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccgcm_init();
    CFDataGetBytePtr(a2);
    ccgcm_set_iv();
    Mutable = CFDataCreateMutable(0, v7);
    v8 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, v7);
      CFDataGetMutableBytePtr(v8);
      ccgcm_update();
      ccgcm_finalize();
      if (cc_cmp_safe())
      {
        CFRelease(v8);
        v8 = 0;
      }
    }

    ccgcm_context_size();
    cc_clear();
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL PCSDaemonKeyRollIsPending(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (PCSServiceItemCanRoll(a2))
  {
    if (commonUserDefaults_once != -1)
    {
      PCSDaemonKeyRollIsPending_cold_1();
    }

    v5 = commonUserDefaults_defaults;
    if (commonUserDefaults_defaults)
    {
      v6 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      v9 = kPCSErrorDomain;
      v24[0] = *MEMORY[0x1E696A578];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not get ProtectedCloudKeyStorage defaults"];
      *v23 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v24 count:1];
      v6 = [v8 errorWithDomain:v9 code:134 userInfo:v11];
      v12 = v6;

      v5 = commonUserDefaults_defaults;
    }

    v13 = v5;
    v14 = v6;
    if (v13)
    {
      v15 = [v13 objectForKey:kPCSPendingRollEpoch];
      if (v15 && ([MEMORY[0x1E695DF00] date], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", v15), v16, v17 != -1) && (objc_msgSend(v15, "timeIntervalSinceNow"), fabs(v18) <= 2419200.0) && (CurrentCreationTime = PCSIdentitySetGetCurrentCreationTime(a1, a2, 0)) != 0)
      {
        v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:CurrentCreationTime];
        v7 = [v15 compare:v20] != -1;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 138412290;
        *&v23[4] = v14;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSDaemonKeyRollIsPending error: %@", v23, 0xCu);
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __commonUserDefaults_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  commonUserDefaults_defaults = [v0 initWithSuiteName:kPCSSettingsSuiteName];

  return MEMORY[0x1EEE66BB8]();
}

void __PCSSupportsPersonaMultiuser_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  PCSSupportsPersonaMultiuser_ffPCSSupportsPersonaMultiuserStatus = _os_feature_enabled_impl();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    if (PCSSupportsPersonaMultiuser_ffPCSSupportsPersonaMultiuserStatus)
    {
      v0 = "enabled";
    }

    else
    {
      v0 = "disabled";
    }

    v2 = 136315138;
    v3 = v0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSSupportsMultiuser is %s", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void PCSSetSupportsPersonaMultiuser(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  gPCSSupportsPersonaMultiuserStatus = v2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = "disabled";
    if (a1)
    {
      v3 = "enabled";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSSupportsMultiuser overriden to %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void PCSClearSupportsPersonaMultiuserOverride()
{
  gPCSSupportsPersonaMultiuserStatus = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSSupportsMultiuser override removed", v0, 2u);
  }
}

BOOL __PCSStoreIniCloudKeychain(int a1, int a2, int a3, const void **a4)
{
  if (a1)
  {
    if (a1 != 1)
    {
      __PCSStoreIniCloudKeychain_cold_1();
    }

    v5 = kPCSiCloudServiceGuitarfishName;
  }

  else
  {
    v5 = kPCSiCloudServiceName;
  }

  v6 = *MEMORY[0x1E695E4D0];
  v17 = *MEMORY[0x1E695E4D0];
  v18 = *MEMORY[0x1E697ABD0];
  v15 = *MEMORY[0x1E697ABE0];
  v16 = *MEMORY[0x1E697B390];
  v14 = *MEMORY[0x1E697ABD8];
  v12 = *v5;
  v13 = *MEMORY[0x1E697AC30];
  v11 = *MEMORY[0x1E697AE70];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(kPCSDefaultKeychainGroup[0], a2, a3, *MEMORY[0x1E697AE80], *MEMORY[0x1E697B3C0], *MEMORY[0x1E697AD00], *MEMORY[0x1E697AEA8], @"PCS-MasterKey", *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  v8 = MutableForCFTypesWith;
  if (MutableForCFTypesWith)
  {
    if (PCSUseSyncKeychain == 1)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], v6);
    }

    v9 = PCSMeasureRelativeNanoTime();
    ++PCSMeasure;
    SecItemAdd(v8, 0);
    qword_1ED6F2608 += PCSMeasureRelativeNanoTime() - v9;
    CFRelease(v8);
  }

  else
  {
    _PCSErrorOOM(a4);
  }

  return v8 != 0;
}

BOOL __PCSUpdateIniCloudKeychain(int a1, uint64_t a2, int a3, const void **a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  if (a1)
  {
    if (a1 != 1)
    {
      __PCSStoreIniCloudKeychain_cold_1();
    }

    v10 = kPCSiCloudServiceGuitarfishName;
  }

  else
  {
    v10 = kPCSiCloudServiceName;
  }

  v11 = *MEMORY[0x1E695E4D0];
  v30 = *MEMORY[0x1E695E4D0];
  v31 = *MEMORY[0x1E697ABD0];
  v28 = *MEMORY[0x1E697ABE0];
  v29 = *MEMORY[0x1E697B390];
  v27 = *MEMORY[0x1E697ABD8];
  v25 = *v10;
  v26 = *MEMORY[0x1E697AC30];
  v24 = *MEMORY[0x1E697AE70];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(kPCSDefaultKeychainGroup[0], *MEMORY[0x1E697AE80], a3, *MEMORY[0x1E697AD00], *MEMORY[0x1E697AEA8], @"PCS-MasterKey", a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  v20 = MutableForCFTypesWith;
  if (MutableForCFTypesWith)
  {
    if (PCSUseSyncKeychain == 1)
    {
      CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AEB0], v11);
    }

    v21 = CFDictionaryCreateMutableForCFTypesWith(MutableForCFTypesWith, v13, v14, v15, v16, v17, v18, v19, *MEMORY[0x1E697B3C0], a2);
    v22 = PCSMeasureRelativeNanoTime();
    ++qword_1ED6F2610;
    SecItemUpdate(v20, v21);
    qword_1ED6F2618 += PCSMeasureRelativeNanoTime() - v22;
    CFRelease(v20);
    if (v21)
    {
      CFRelease(v21);
    }
  }

  else
  {
    _PCSErrorOOM(a4);
  }

  return v20 != 0;
}

CFTypeRef __PCSCopyFromiCloudKeychain(int a1, const void *a2, const void **a3, int a4, int a5, int a6, int a7, int a8)
{
  result = 0;
  if (a1)
  {
    if (a1 != 1)
    {
      __PCSStoreIniCloudKeychain_cold_1();
    }

    v10 = kPCSiCloudServiceGuitarfishName;
  }

  else
  {
    v10 = kPCSiCloudServiceName;
  }

  v11 = *MEMORY[0x1E695E4D0];
  v27 = *MEMORY[0x1E697B270];
  v25 = *MEMORY[0x1E695E4D0];
  v26 = *MEMORY[0x1E697B260];
  v23 = kPCSAccount[0];
  v24 = *MEMORY[0x1E697B318];
  v21 = *v10;
  v22 = *MEMORY[0x1E697AC30];
  v20 = *MEMORY[0x1E697AE70];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  if (!MutableForCFTypesWith)
  {
    _PCSErrorOOM(a3);
    return 0;
  }

  v13 = MutableForCFTypesWith;
  if (a2)
  {
    CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AE80], a2);
  }

  if (PCSUseSyncKeychain == 1)
  {
    CFDictionarySetValue(v13, *MEMORY[0x1E697AEB0], v11);
  }

  v14 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v15 = SecItemCopyMatching(v13, &result);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v14;
  if (v15)
  {
    PCSSecError(v15, a3, @"SecItem failed to %@ %@", @"fetch", kPCSiCloudServiceName[0], v20, v21, v22, v23, v24, v25, v26, v27, 0);
  }

  else if (result)
  {
    v16 = CFGetTypeID(result);
    if (v16 == CFDataGetTypeID())
    {
      v17 = CFRetain(result);
      goto LABEL_14;
    }
  }

  v17 = 0;
LABEL_14:
  CFRelease(v13);
  v18 = result;
  if (result)
  {
    result = 0;
    CFRelease(v18);
  }

  return v17;
}

uint64_t __PCSStoreInKeychain(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = *MEMORY[0x1E697AFF8];
    v11 = *MEMORY[0x1E697B008];
    v12 = *MEMORY[0x1E697AC30];
    v13 = *MEMORY[0x1E697ABD8];
    v14 = *MEMORY[0x1E697ABD0];
    v48 = *MEMORY[0x1E697B3C0];
    v45 = kPCSDefaultKeychainGroup[0];
    v46 = *MEMORY[0x1E697ACF0];
    v43 = *MEMORY[0x1E695E4D0];
    v44 = *MEMORY[0x1E697ABD0];
    v41 = *MEMORY[0x1E697ABE8];
    v42 = *MEMORY[0x1E697B390];
    v38 = kPCSAccount[0];
    v40 = *MEMORY[0x1E697ABD8];
    v36 = kPCSServiceName[0];
    v37 = *MEMORY[0x1E697AC30];
    v35 = *MEMORY[0x1E697AE88];
    v15 = CFDictionaryCreateForCFTypes(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    if (!v15)
    {
      _PCSErrorOOM(a4);
      return 0;
    }

    v16 = v15;
    v50 = v11;
    v51 = a4;
    v17 = kPCSServiceName[0];
    v18 = PCSMeasureRelativeNanoTime();
    ++PCSMeasure;
    v19 = SecItemAdd(v16, 0);
    qword_1ED6F2608 += PCSMeasureRelativeNanoTime() - v18;
    if (v19 == -25299)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v16);
      if (MutableCopy)
      {
        v21 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, v10);
        CFDictionaryRemoveValue(v21, v13);
        CFDictionaryRemoveValue(v21, v14);
        v39 = kPCSAccount[0];
        v30 = CFDictionaryCreateForCFTypes(v22, v23, v24, v25, v26, v27, v28, v29, v10, v50);
        if (v30)
        {
          v31 = v30;
          v32 = PCSMeasureRelativeNanoTime();
          ++qword_1ED6F2610;
          v33 = SecItemUpdate(v31, v21);
          qword_1ED6F2618 += PCSMeasureRelativeNanoTime() - v32;
          CFRelease(v21);
          CFRelease(v31);
          if (v33)
          {
            PCSSecError(v33, v51, @"Failed to update: %@: item: %@ query: %@", v17, v16, 0, v17, v12, v39, 0);
LABEL_16:
            v8 = 0;
            goto LABEL_11;
          }

LABEL_10:
          _PCSPostHaveCredentials();
          v8 = 1;
LABEL_11:
          CFRelease(v16);
          return v8;
        }

        CFRelease(v21);
      }

      _PCSErrorOOM(v51);
      goto LABEL_16;
    }

    PCSSecError(v19, v51, @"SecItem failed to %@ %@", @"add", v17, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, a3, v48, a2, 0, v50);
    goto LABEL_10;
  }

  return 1;
}

CFDictionaryRef CFDictionaryCreateForCFTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = &a10;
  v10 = 0;
  if (a9)
  {
    do
    {
      v10 += 2;
      v11 = v23;
      v23 += 2;
    }

    while (v11[1]);
  }

  v24 = &a9;
  v12 = malloc_type_calloc(v10 >> 1, 8uLL, 0xC0040B8AA526DuLL);
  v13 = malloc_type_calloc(v10 >> 1, 8uLL, 0xC0040B8AA526DuLL);
  v14 = v13;
  if (v10)
  {
    v15 = *MEMORY[0x1E695E738];
    v16 = v12;
    v17 = v13;
    v18 = v10 >> 1;
    do
    {
      v19 = v24;
      *v16++ = *v24;
      v24 += 2;
      v20 = v19[1];
      if (!v20)
      {
        v20 = v15;
      }

      *v17++ = v20;
      --v18;
    }

    while (v18);
  }

  v21 = CFDictionaryCreate(0, v12, v13, v10 >> 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  free(v12);
  free(v14);
  return v21;
}

uint64_t _PCSSecItemDeleteIfPresent(uint64_t a1)
{
  v2 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2620;
  v3 = off_1ED6F2360(a1);
  qword_1ED6F2628 += PCSMeasureRelativeNanoTime() - v2;
  if (v3 == -25300)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

BOOL __PCSDeleteFromKeychain(CFErrorRef *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = *MEMORY[0x1E697AC30];
  v14 = *MEMORY[0x1E697AE88];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  if (MutableForCFTypesWith)
  {
    v10 = MutableForCFTypesWith;
    v11 = _PCSSecItemDeleteIfPresent(MutableForCFTypesWith);
    v12 = PCSSecError(v11, a1, @"SecItem failed to delete on private identity");
    CFRelease(v10);
    return v12;
  }

  else
  {
    _PCSErrorOOM(a1);
    return 0;
  }
}

void sub_1B22B76C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B22B7960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B22B7C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B22B7ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B22B89DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  AccountsLibrary();
  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getACAccountStoreClass_block_invoke_cold_1();
    return AccountsLibrary();
  }

  return result;
}

uint64_t AccountsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccountsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccountsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B18E08;
    v6 = 0;
    AccountsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccountsLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AccountsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __AccountsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccountsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getACDAccountStoreDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACDAccountStoreDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACDAccountStoreDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getACAccountTypeIdentifierKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACAccountTypeIdentifierKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACAccountTypeIdentifierKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getACAccountTypeIdentifierAppleAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACAccountTypeIdentifierAppleAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACAccountTypeIdentifierAppleAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAKAccountManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AuthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B18E38;
    v7 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AuthKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
  }

  getAKAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PCSShareProtectionGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t PCSShareProtectionCompare(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != PCSShareProtectionGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != PCSShareProtectionGetTypeID())
  {
    return 0;
  }

  v6 = a1[9];
  v7 = a2[9];

  return CFEqual(v6, v7);
}

uint64_t __ShareEntryGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t ShareEntryCompare(uint64_t a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != ShareEntryGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != ShareEntryGetTypeID())
  {
    return 0;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t _PCSRandomData(size_t count, void *bytes)
{
  result = SecRandomCopyBytes(*MEMORY[0x1E697B308], count, bytes);
  if (result)
  {
    abort();
  }

  return result;
}

__CFData *CreateRandomKey()
{
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 16);
  if (Mutable)
  {
    Length = CFDataGetLength(Mutable);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    _PCSRandomData(Length, MutableBytePtr);
  }

  return Mutable;
}

BOOL generateOtherKeysFromRWMasterKey(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 204) != 3)
  {
    generateOtherKeysFromRWMasterKey_cold_1(a1, theData, a3, a4, a5, a6, a7, a8);
  }

  if (*(a1 + 210) == 1)
  {
    generateOtherKeysFromRWMasterKey_cold_2(a1, theData, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    *(a1 + 64) = 0;
    CFRelease(v10);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    *(a1 + 80) = 0;
    CFRelease(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    *(a1 + 72) = 0;
    CFRelease(v12);
  }

  MutableCopy = CFDataCreateMutableCopy(0, 0, theData);
  *(a1 + 64) = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_14;
  }

  generateObjectKey(a1, MutableCopy, 1);
  Length = CFDataGetLength(theData);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, Length);
  *(a1 + 72) = Mutable;
  v16 = *(a1 + 64);
  v17 = CFDataGetLength(Mutable);
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 72));
  result = _PCSCreateDerivedKey(v16, 20, &MasterROKeyInputData, v17, MutableBytePtr, 0);
  if (!result)
  {
LABEL_14:
    abort();
  }

  *(a1 + 204) = 3;
  return result;
}

uint64_t PCSFPIsReadWrite(uint64_t a1)
{
  if (*(a1 + 204) == 3)
  {
    v1 = *(a1 + 209) ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t PCSFPSupportFeature(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = (*(a1 + 204) & 0xFFFFFFFE) == 2;
  }

  else if (a2 == 1)
  {
    if (*(a1 + 204) == 3)
    {
      v2 = *(a1 + 209) ^ 1;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PCSFPStatus(uint64_t a1)
{
  if (*(a1 + 216) != 1192348414)
  {
    return 24;
  }

  if (!*(a1 + 72))
  {
    return 11;
  }

  if (!*(a1 + 80))
  {
    return 23;
  }

  if (*(a1 + 16))
  {
    return 0;
  }

  return 11;
}

__CFString *PCSFPCopyDiagnostic(uint64_t a1)
{
  v2 = PCSIdentitySetCopyIdentities(*(a1 + 16), 0);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_35;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(*(a1 + 72));
    v7 = _PCSCreateBase64(BytePtr, Length, 0);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_35;
    }

    CFStringAppendFormat(Mutable, 0, @"Masterkey: %@\n", v7);
    CFRelease(v8);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"Masterkey: ---- NO MASTERKEY available----\n");
  }

  v9 = *(a1 + 80);
  if (!v9)
  {
LABEL_9:
    v14 = _PCSYESNO(*(a1 + 208));
    CFStringAppendFormat(Mutable, 0, @"Validated: %@\n", v14);
    if (*(a1 + 204) == 3)
    {
      v15 = *(a1 + 209) ^ 1;
    }

    else
    {
      v15 = 1;
    }

    v16 = _PCSYESNO(v15 & 1);
    CFStringAppendFormat(Mutable, 0, @"ReadWrite: %@\n", v16);
    v17 = _PCSYESNO((*(a1 + 204) & 0xFFFFFFFE) == 2);
    CFStringAppendFormat(Mutable, 0, @"Expose zone key: %@\n", v17);
    v18 = _PCSYESNO(*(a1 + 204) == 3);
    CFStringAppendFormat(Mutable, 0, @"Version2: %@\n", v18);
    v19 = _PCSYESNO(*(a1 + 204) == 0);
    CFStringAppendFormat(Mutable, 0, @"Light: %@\n", v19);
    *(v42 + 6) = 0;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSFPCopyDiagnostic_block_invoke;
    context[3] = &unk_1E7B18C08;
    context[4] = &v41;
    context[5] = Mutable;
    CFDictionaryApplyFunction(v2, apply_block_2_1, context);
    *(v42 + 6) = 0;
    v20 = *(a1 + 40);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __PCSFPCopyDiagnostic_block_invoke_2;
    v39[3] = &unk_1E7B18C08;
    v39[4] = &v41;
    v39[5] = Mutable;
    CFDictionaryApplyFunction(v20, apply_block_2_1, v39);
    v21 = *(a1 + 112);
    if (v21)
    {
      *(v42 + 6) = 0;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __PCSFPCopyDiagnostic_block_invoke_3;
      v38[3] = &unk_1E7B18C08;
      v38[4] = &v41;
      v38[5] = Mutable;
      CFDictionaryApplyFunction(v21, apply_block_2_1, v38);
    }

    v22 = *(a1 + 48);
    if (v22)
    {
      *(v42 + 6) = 0;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __PCSFPCopyDiagnostic_block_invoke_4;
      v37[3] = &unk_1E7B18E58;
      v37[4] = &v41;
      v37[5] = Mutable;
      v23 = v37;
      v45.length = CFArrayGetCount(v22);
      v45.location = 0;
      CFArrayApplyFunction(v22, v45, apply_block_1_0, v23);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    CFStringAppendFormat(Mutable, 0, @"Top Level Service ID: %u\n", *(a1 + 200));
    v24 = *(a1 + 168);
    if (v24)
    {
      v25 = PCSPublicIdentityCopyPublicKey(v24);
      v26 = v25;
      if (v25)
      {
        v27 = CFDataGetBytePtr(v25);
        v28 = CFDataGetLength(v26);
        v29 = _PCSCreateBase64(v27, v28, 0);
      }

      else
      {
        v29 = 0;
      }

      CFStringAppendFormat(Mutable, 0, @"Validation identity: %@\n", v29);
      if (v29)
      {
        CFRelease(v29);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    v30 = *(a1 + 160);
    if (v30)
    {
      v31 = PCSPublicIdentityCopyPublicKey(v30);
      v32 = v31;
      if (v31)
      {
        v33 = CFDataGetBytePtr(v31);
        v34 = CFDataGetLength(v32);
        v35 = _PCSCreateBase64(v33, v34, 0);
      }

      else
      {
        v35 = 0;
      }

      CFStringAppendFormat(Mutable, 0, @"Owner identity: %@\n", v35);
      if (v35)
      {
        CFRelease(v35);
      }

      if (v32)
      {
        CFRelease(v32);
      }
    }

    goto LABEL_34;
  }

  v10 = CFDataGetBytePtr(v9);
  v11 = CFDataGetLength(*(a1 + 80));
  v12 = _PCSCreateHexString(v10, v11);
  v13 = v12;
  if (v12)
  {
    CFStringAppendFormat(Mutable, 0, @"MasterkeyID: %@\n", v12);
    CFRelease(v13);
    goto LABEL_9;
  }

LABEL_35:
  if (v2)
  {
    CFRelease(v2);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_34:
  _Block_object_dispose(&v41, 8);
  return Mutable;
}

void __PCSFPCopyDiagnostic_block_invoke_2(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = PCSPublicIdentityCopyWebSafePublicKeyID(*(a3 + 16));
  CFStringAppendFormat(*(a1 + 40), 0, @"Share peer %d: %@ (%@) flags: %d\n", *(*(*(a1 + 32) + 8) + 24), a2, v6, *(a3 + 24));
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = PCSGetPublicIdentitites();
  if (CFDictionaryGetValue(v7, a2))
  {
    CFStringAppendFormat(*(a1 + 40), 0, @"\tis CloudKit Public Identity\n");
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

void __PCSFPCopyDiagnostic_block_invoke_3(uint64_t a1, const __CFData *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v8 = _PCSCreateBase64(BytePtr, Length, 0);
  CFStringAppendFormat(*(a1 + 40), 0, @"old master key %d: %@\n", *(*(*(a1 + 32) + 8) + 24), v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = CFDataGetBytePtr(a2);
  v10 = CFDataGetLength(a2);
  v11 = _PCSCreateHexString(v9, v10);
  CFStringAppendFormat(*(a1 + 40), 0, @"old master key ID %d: %@\n", *(*(*(a1 + 32) + 8) + 24), v11);
  if (v11)
  {
    CFRelease(v11);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

void __PCSFPCopyDiagnostic_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = PCSPublicIdentityCopyWebSafePublicKeyID(a2);
  IsDiversified = _PCSPublicIdentityIsDiversified(a2);
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 32) + 8) + 24);
  PublicID = PCSPublicIdentityGetPublicID(a2);
  v9 = "";
  if (IsDiversified)
  {
    v9 = " div";
  }

  CFStringAppendFormat(v6, 0, @"public identity %d: %@ (%@)%s\n", v7, PublicID, v4, v9);
  if (v4)
  {
    CFRelease(v4);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

__CFData *_PCSFPCopyExportedWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v123 = 0;
  v124 = &v123;
  v125 = 0x7810000000;
  v126 = &unk_1B23165E5;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0;
  v116 = 0;
  v117 = &v116;
  v118 = 0x3810000000;
  v119 = &unk_1B23165E5;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x2020000000;
  v115 = 0;
  if (*(a1 + 216) != 1192348414)
  {
    v99 = "PCSShareProtectionObject no longer alive (overrelease):(sp)->alive == pcsfpTruelyAlive";
    goto LABEL_132;
  }

  v9 = a3;
  v10 = a2;
  if ((a2 | a3) == 1 && !a4)
  {
    _PCSError(a5, 141, @"cannot sign or request PPPCS signature without a public identity");
    goto LABEL_137;
  }

  if (!*(a1 + 204))
  {
    LightPCSObject = _CreateLightPCSObject(a1, a5);
LABEL_121:
    _Block_object_dispose(&v112, 8);
    _Block_object_dispose(&v116, 8);
    _Block_object_dispose(&v123, 8);
    return LightPCSObject;
  }

  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  v121 = 0;
  v122 = 0;
  v120 = 0;
  if (!*(a1 + 72))
  {
    _PCSError(a5, 25, @"can't export object w/o masterkey");
LABEL_137:
    LightPCSObject = 0;
    v102 = 0;
    v67 = 0;
LABEL_117:
    free_PCSEncryptedKeys((v117 + 4));
    free_PCSShareProtection((v124 + 4));
    if (v102)
    {
      free_PCSSPKeyList(v102);
      free(v102);
    }

    if (v67)
    {
      free_PCSSignature(v67);
      free(v67);
    }

    goto LABEL_121;
  }

  if (*(a1 + 209) == 1)
  {
    _PCSError(a5, 48, @"share is readonly for unwrapping identity");
    goto LABEL_137;
  }

  Count = CFDictionaryGetCount(*(a1 + 40));
  v13 = Count;
  if (!Count)
  {
    goto LABEL_137;
  }

  v14 = malloc_type_calloc(Count, 0x38uLL, 0x109004004F1B07DuLL);
  v15 = v124;
  v124[6] = v14;
  if (!v14)
  {
    goto LABEL_137;
  }

  *(v15 + 10) = v13;
  *(v113 + 6) = 0;
  v16 = *(a1 + 40);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = ___PCSFPCopyExportedWithOptions_block_invoke;
  context[3] = &unk_1E7B18E80;
  context[6] = a1;
  context[7] = a5;
  context[4] = &v123;
  context[5] = &v112;
  context[8] = v13;
  CFDictionaryApplyFunction(v16, apply_block_2_1, context);
  if (v13 != *(v113 + 6))
  {
    v99 = "wrong number of PublicKeys:n == count";
    goto LABEL_132;
  }

  if (*(a1 + 204) != 3)
  {
    *(a1 + 204) = 2;
  }

  v17 = PCSIdentitySetCopyOrderedIdentities(*(a1 + 16), kPCSServiceRaw);
  theArray = v17;
  if (!v17 || (v18 = CFArrayGetCount(v17)) == 0)
  {
    v102 = 0;
    goto LABEL_19;
  }

  v102 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  if (!v102)
  {
    _PCSErrorOOM(a5);
    LightPCSObject = 0;
    v102 = 0;
    goto LABEL_148;
  }

  v102[1] = malloc_type_calloc(v18, 0x20uLL, 0x1090040863882BEuLL);
  v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
  v117[6] = v19;
  if (!v19 || (v20 = malloc_type_calloc(v18, 0x20uLL, 0x1090040863882BEuLL), (*(v117[6] + 8) = v20) == 0))
  {
    _PCSErrorOOM(a5);
    LightPCSObject = 0;
LABEL_148:
    v67 = 0;
    v32 = 0;
    v51 = 0;
    v95 = theArray;
    goto LABEL_112;
  }

  *(v113 + 6) = 0;
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = ___PCSFPCopyExportedWithOptions_block_invoke_2;
  v110[3] = &unk_1E7B18EA8;
  v110[4] = &v116;
  v110[5] = &v112;
  v110[6] = v102;
  v110[7] = v18;
  v21 = v110;
  v133.length = CFArrayGetCount(theArray);
  v133.location = 0;
  CFArrayApplyFunction(theArray, v133, apply_block_1_0, v21);

LABEL_19:
  v22 = CFDictionaryGetCount(*(a1 + 112));
  if (v22)
  {
    v23 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    v117[4] = v23;
    v24 = malloc_type_calloc(v22, 0x10uLL, 0x108004057E67DB5uLL);
    *(v117[4] + 8) = v24;
    *(v113 + 6) = 0;
    v25 = *(a1 + 112);
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = ___PCSFPCopyExportedWithOptions_block_invoke_3;
    v109[3] = &unk_1E7B18ED0;
    v109[4] = &v116;
    v109[5] = &v112;
    CFDictionaryApplyFunction(v25, apply_block_2_1, v109);
    if (v22 != *(v113 + 6))
    {
      __assert_rtn("_PCSFPCopyExportedWithOptions", "PCSShareProtection.m", 1746, "n == count");
    }
  }

  v26 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040863882BEuLL);
  v27 = v117;
  v117[5] = v26;
  if (!v26)
  {
    goto LABEL_134;
  }

  *&v105 = 0;
  v28 = length_PCSEncryptedKeys((v27 + 4));
  Mutable = CFDataCreateMutable(0, v28);
  v30 = Mutable;
  if (!Mutable)
  {
    goto LABEL_134;
  }

  CFDataSetLength(Mutable, v28);
  MutableBytePtr = CFDataGetMutableBytePtr(v30);
  if (encode_PCSEncryptedKeys(&MutableBytePtr[v28 - 1], v28, (v117 + 4), &v105))
  {
    CFRelease(v30);
LABEL_134:
    v51 = 0;
    v32 = 0;
    goto LABEL_51;
  }

  if (v28 == v105)
  {
    v32 = PCSFPCopyEncryptedData(a1, 0, v30, a5);
    CFRelease(v30);
    if (v32)
    {
      v33 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      v124[12] = v33;
      if (!v33 || (v34 = malloc_type_malloc(4uLL, 0x9505AEA3uLL), *(v124[12] + 8) = v34, (v35 = *(v124[12] + 8)) == 0))
      {
        _PCSErrorOOM(a5);
        goto LABEL_50;
      }

      *v35 = *CFDataGetBytePtr(*(a1 + 80));
      *v124[12] = 4;
      if (!v9)
      {
LABEL_45:
        v58 = *(a1 + 160);
        if (v58)
        {
          v108 = 0;
          *v106 = 0u;
          v107 = xmmword_1B23019B0;
          v105 = 0u;
          v104 = 0;
          if ((_PCSPublicIdentityExportPCSSPKey(v58, &v105, v36, v37, v38, v39, v40, v41) & 1) == 0)
          {
            PCSAbort("failed to fill ownerIdentity PCSSPKey:_PCSPublicIdentityExportPCSSPKey(sp->ownerIdentity, &ownerPublicKey)", v59, v60, v61, v62, v63, v64, v65, v100);
          }

          *(&v107 + 1) = length_PCSSPKey(&v105);
          v66 = malloc_type_malloc(*(&v107 + 1), 0xF90FE606uLL);
          v108 = v66;
          if (!v66)
          {
            goto LABEL_50;
          }

          if (encode_PCSSPKey(v66 + *(&v107 + 1) - 1, *(&v107 + 1), &v105, &v104))
          {
            goto LABEL_49;
          }

          v68 = v124[7];
          if (!v68)
          {
            v68 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
            v124[7] = v68;
          }

          PCSReplaceOrUpdateAttribute(v68, v107, (&v107 + 8));
          free_PCSSPKey(&v105);
          free_PCSTypeValue(&v107);
        }

        *&v105 = 0;
        v69 = length_PCSSignedShareProtection((v124 + 4));
        v70 = CFDataCreateMutable(0, v69);
        v51 = v70;
        if (!v70)
        {
          goto LABEL_50;
        }

        CFDataSetLength(v70, v69);
        v71 = CFDataGetMutableBytePtr(v51);
        if (!encode_PCSSignedShareProtection(&v71[v69 - 1], v69, (v124 + 4), &v105))
        {
          if (v69 != v105)
          {
            goto LABEL_157;
          }

          v72 = *(a1 + 204);
          if (v72 == 2)
          {
            if (getObjectKey(a1))
            {
              v73 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040863882BEuLL);
              v124[9] = v73;
              if (!v73)
              {
                goto LABEL_139;
              }

              v74 = 5;
LABEL_68:
              *v73 = v74;
              goto LABEL_69;
            }

            v99 = "no ObjectKey, yet public keys:getObjectKey(sp)";
          }

          else
          {
            if (v72 != 3)
            {
LABEL_69:
              v75 = v124;
              v76 = v124[9];
              if (v76)
              {
                v77 = v76 + 16;
              }

              else
              {
                v77 = 0;
              }

              if (*(a1 + 214) != 1 || !*(a1 + 176))
              {
                goto LABEL_76;
              }

              if (!v76)
              {
                _PCSError(a5, 89, @"can't do authorship w/o selfSign");
                goto LABEL_51;
              }

              v78 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040EC46ECBEuLL);
              v75 = v124;
              v124[13] = v78;
              if (v78)
              {
LABEL_76:
                if (!v10)
                {
                  v67 = 0;
LABEL_82:
                  if (!CreateSignature(a1, v51, v32, v102, (a1 + 128), v75 + 10, v77, v75[13], v67, a5))
                  {
                    goto LABEL_52;
                  }

                  v80 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
                  v124[8] = v80;
                  if (!v80)
                  {
LABEL_135:
                    _PCSErrorOOM(a5);
                    goto LABEL_52;
                  }

                  FillOctetString(v80, v32);
                  if (*(a1 + 204) <= 2u && (*(a1 + 214) & 1) == 0 && (v124[7] || v124[13] || v124[14]))
                  {
                    goto LABEL_52;
                  }

                  if (!v10)
                  {
                    goto LABEL_100;
                  }

                  if (!v67)
                  {
                    goto LABEL_52;
                  }

                  v106[0] = 0;
                  v105 = xmmword_1B23019C8;
                  if (!_PCSFPMustEncryptManateeSharingAttributes(a1))
                  {
                    *&v107 = 0;
                    *(&v105 + 1) = length_PCSSignature(v67);
                    v97 = malloc_type_malloc(*(&v105 + 1), 0xBA20226FuLL);
                    v106[0] = v97;
                    if (v97)
                    {
                      v98 = encode_PCSSignature(v97 + *(&v105 + 1) - 1, *(&v105 + 1), v67, &v107);
                      if (!v98)
                      {
LABEL_99:
                        add_PCSAttributes(v124[14]);
                        free_PCSTypeValue(&v105);
LABEL_100:
                        if (_PCSIdentitySupportsServerSigning(*(a1 + 176)))
                        {
                          v87 = *(a1 + 192);
                          if (v87)
                          {
                            v88 = CFArrayGetCount(v87);
                            if (v88 >= 1)
                            {
                              v89 = 0;
                              do
                              {
                                ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 192), v89);
                                v106[0] = 0;
                                v105 = xmmword_1B23019E0;
                                if (!v124[14])
                                {
                                  v91 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
                                  v124[14] = v91;
                                  if (!v91)
                                  {
                                    goto LABEL_135;
                                  }
                                }

                                FillOctetString(&v105 + 1, ValueAtIndex);
                                add_PCSAttributes(v124[14]);
                                free_PCSTypeValue(&v105);
                              }

                              while (v88 != ++v89);
                            }
                          }
                        }

                        *&v105 = 0;
                        v92 = length_PCSShareProtection((v124 + 4));
                        v93 = CFDataCreateMutable(0, v92);
                        LightPCSObject = v93;
                        if (!v93)
                        {
                          goto LABEL_52;
                        }

                        CFDataSetLength(v93, v92);
                        v94 = CFDataGetMutableBytePtr(LightPCSObject);
                        if (encode_PCSShareProtection(&v94[v92 - 1], v92, (v124 + 4), &v105))
                        {
                          CFRelease(LightPCSObject);
                          goto LABEL_52;
                        }

                        if (v92 == v105)
                        {
                          *(a1 + 210) = 0;
LABEL_111:
                          v95 = theArray;
                          if (!theArray)
                          {
LABEL_113:
                            if (v32)
                            {
                              CFRelease(v32);
                            }

                            if (v51)
                            {
                              CFRelease(v51);
                            }

                            goto LABEL_117;
                          }

LABEL_112:
                          CFRelease(v95);
                          goto LABEL_113;
                        }

                        goto LABEL_157;
                      }

                      free(v106[0]);
                      v106[0] = 0;
                    }

                    else
                    {
                      v98 = 12;
                    }

                    _PCSErrorASN1(a5, "encode PCSSignature", v98);
                    goto LABEL_52;
                  }

                  *&v107 = 0;
                  v81 = length_PCSSignature(v67);
                  v82 = CFDataCreateMutable(0, v81);
                  v83 = v82;
                  if (!v82)
                  {
                    goto LABEL_52;
                  }

                  CFDataSetLength(v82, v81);
                  v84 = CFDataGetMutableBytePtr(v83);
                  if (encode_PCSSignature(&v84[v81 - 1], v81, v67, &v107))
                  {
                    CFRelease(v83);
                    goto LABEL_52;
                  }

                  if (v81 == v107)
                  {
                    v85 = CFDataCreate(0, "PCSSignatureEncryption", 22);
                    v86 = PCSFPCopyEncryptedData(a1, v85, v83, a5);
                    if (v85)
                    {
                      CFRelease(v85);
                    }

                    CFRelease(v83);
                    if (!v86)
                    {
                      goto LABEL_52;
                    }

                    LODWORD(v105) = 10;
                    FillOctetString(&v105 + 1, v86);
                    CFRelease(v86);
                    goto LABEL_99;
                  }

LABEL_157:
                  result = asn1_abort();
                  goto LABEL_158;
                }

                if (!*(a1 + 184))
                {
                  _PCSError(a5, 142, @"can't do pppcs signing without a signing key");
                  goto LABEL_51;
                }

                v67 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040EC46ECBEuLL);
                if (v67)
                {
                  v75 = v124;
                  if (!v124[14])
                  {
                    v79 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
                    v75 = v124;
                    v124[14] = v79;
                  }

                  goto LABEL_82;
                }
              }

LABEL_139:
              _PCSErrorOOM(a5);
              goto LABEL_51;
            }

            if (*(a1 + 209))
            {
              v99 = "version 2 but read only:!sp->flags.readonly";
            }

            else
            {
              if (getObjectKey(a1))
              {
                v73 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040863882BEuLL);
                v124[9] = v73;
                if (!v73)
                {
                  goto LABEL_139;
                }

                v74 = 4;
                goto LABEL_68;
              }

              v99 = "no ObjectKey, yet version2:getObjectKey(sp)";
            }
          }

LABEL_132:
          PCSAbort(v99, a2, a3, a4, a5, a6, a7, a8, v100);
        }

LABEL_142:
        CFRelease(v51);
        goto LABEL_50;
      }

      if (!a4)
      {
        _PCSError(a5, 141, @"cannot request PPPCS signature without a public identity");
        goto LABEL_50;
      }

      v108 = 0;
      *v106 = 0u;
      v107 = xmmword_1B2301998;
      v105 = 0u;
      if ((_PCSPublicIdentityExportPCSSPKey(a4, &v105, v36, v37, v38, v39, v40, v41) & 1) == 0)
      {
        PCSAbort("failed to fill manatee sharee PCSSPKey:_PCSPublicIdentityExportPCSSPKey(shareeSignatureIdentity, &expectedPublicKey)", v42, v43, v44, v45, v46, v47, v48, v100);
      }

      if (_PCSFPMustEncryptManateeSharingAttributes(a1))
      {
        v104 = 0;
        v49 = length_PCSSPKey(&v105);
        v50 = CFDataCreateMutable(0, v49);
        v51 = v50;
        if (v50)
        {
          CFDataSetLength(v50, v49);
          v52 = CFDataGetMutableBytePtr(v51);
          if (encode_PCSSPKey(&v52[v49 - 1], v49, &v105, &v104))
          {
            goto LABEL_142;
          }

          if (v49 != v104)
          {
            goto LABEL_157;
          }

          v53 = CFDataCreate(0, "PCSSignatureKeyIDEncryption", 27);
          v54 = PCSFPCopyEncryptedData(a1, v53, v51, a5);
          if (v53)
          {
            CFRelease(v53);
          }

          CFRelease(v51);
          if (!v54)
          {
            goto LABEL_50;
          }

          LODWORD(v107) = 11;
          FillOctetString(&v107 + 1, v54);
          CFRelease(v54);
          goto LABEL_42;
        }
      }

      else
      {
        v104 = 0;
        *(&v107 + 1) = length_PCSSPKey(&v105);
        v56 = malloc_type_malloc(*(&v107 + 1), 0x6B8A7B0EuLL);
        v108 = v56;
        if (v56)
        {
          if (encode_PCSSPKey(v56 + *(&v107 + 1) - 1, *(&v107 + 1), &v105, &v104))
          {
LABEL_49:
            free(v108);
            goto LABEL_50;
          }

LABEL_42:
          v57 = v124[7];
          if (!v57)
          {
            v57 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
            v124[7] = v57;
          }

          PCSReplaceOrUpdateAttribute(v57, v107, (&v107 + 8));
          free_PCSSPKey(&v105);
          free_PCSTypeValue(&v107);
          goto LABEL_45;
        }
      }
    }

LABEL_50:
    v51 = 0;
LABEL_51:
    v67 = 0;
LABEL_52:
    LightPCSObject = 0;
    goto LABEL_111;
  }

  result = asn1_abort();
LABEL_158:
  __break(1u);
  return result;
}

void sub_1B22BABD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 224), 8);
  _Unwind_Resume(a1);
}

CFDataRef _CreateLightPCSObject(uint64_t a1, const void **a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = 0;
  if (*(a1 + 204))
  {
    _PCSError(a2, 64, @"Not a light object");
LABEL_3:
    Copy = 0;
    goto LABEL_20;
  }

  if (CFDictionaryGetCount(*(a1 + 40)) != 1)
  {
    _PCSError(a2, 65, @"More than one share object");
    goto LABEL_3;
  }

  CFDictionaryGetKeysAndValues(*(a1 + 40), 0, values);
  v5 = MEMORY[0x1B2744A40]();
  v6 = ccsha256_di();
  ccaes_ecb_encrypt_mode();
  v7 = (cczp_bitlen() + 7) >> 3;
  CFDataGetLength(*(a1 + 72));
  v8 = ccwrap_wrapped_size();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v34 = v29;
  v11 = v10 | (32 * *v5);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29[-v12];
  v14 = ccecb_context_size();
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v29[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)];
  PublicKey = PCSPublicIdentityGetPublicKey(*(values[0] + 2));
  if (!PublicKey)
  {
    Mutable = 0;
    Copy = 0;
    goto LABEL_16;
  }

  v35 = v5;
  v32 = v7 + 1;
  v33 = v6;
  v17 = v7 + 1 + v8;
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v17 + 2);
  if (!Mutable || (v31 = v8, MutableBytePtr = CFDataGetMutableBytePtr(Mutable), bzero(MutableBytePtr, v17 + 2), *MutableBytePtr = -1, ccDRBGGetRngState(), ccec_generate_key_fips()) || (v38 = v7, ccDRBGGetRngState(), ccecdh_compute_shared_secret()))
  {
    PublicKey = 0;
  }

  else
  {
    PublicKey = PCSPublicIdentityCopyExportedPublicKey(*(values[0] + 2));
    if (PublicKey)
    {
      v20 = *v13;
      if (v7 == (cczp_bitlen() + 7) >> 3)
      {
        v30[0] = v17;
        v30[1] = v30;
        ccec_compact_export();
        CFDataGetLength(PublicKey);
        CFDataGetBytePtr(PublicKey);
        if (cchkdf())
        {
          Copy = 0;
          goto LABEL_15;
        }

        ccecb_init();
        v21 = v31;
        v37 = v31;
        CFDataGetLength(*(a1 + 72));
        CFDataGetBytePtr(*(a1 + 72));
        v22 = ccwrap_auth_encrypt();
        ccecb_context_size();
        cc_clear();
        if (!v22)
        {
          if (v37 != v21)
          {
            _CreateLightPCSObject_cold_1();
          }

          BytePtr = CFDataGetBytePtr(*(a1 + 80));
          *&MutableBytePtr[v30[0]] = *BytePtr;
          Copy = CFDataCreateCopy(0, Mutable);
          goto LABEL_15;
        }
      }
    }
  }

  Copy = 0;
LABEL_15:
  v5 = v35;
LABEL_16:
  v24 = *v5;
  cc_clear();
  if (PublicKey)
  {
    CFRelease(PublicKey);
  }

  v25 = (cczp_bitlen() + 7) >> 3;
  v26 = cczp_bitlen();
  memset_s(v36, v25, 0, (v26 + 7) >> 3);
  memset_s(v34, 0x10uLL, 0, 0x10uLL);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_20:
  v27 = *MEMORY[0x1E69E9840];
  return Copy;
}

BOOL FillOctetString(CFIndex *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  v5 = malloc_type_malloc(Length, 0x49CD5330uLL);
  a1[1] = v5;
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v7 = CFDataGetLength(theData);
    memcpy(v5, BytePtr, v7);
    *a1 = CFDataGetLength(theData);
  }

  return v5 != 0;
}

BOOL _PCSFPMustEncryptManateeSharingAttributes(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    ServiceID = PCSIdentityGetServiceID(v2);
    if (!ServiceID)
    {
      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 160);
    if (!v4)
    {
      return 0;
    }

    ServiceID = PCSPublicIdentityGetServiceID(v4);
    if (!ServiceID)
    {
      return 0;
    }
  }

  return (PCSServiceItemAnonymousSharingByIndex(ServiceID) & 1) != 0;
}

unsigned int *PCSReplaceOrUpdateAttribute(unsigned int *result, int a2, __int128 *a3)
{
  v4 = result;
  v5 = *result;
  if (v5)
  {
    v6 = *(result + 1);
    v7 = 24 * v5;
    v8 = -8;
    while (*v6 != a2)
    {
      v8 -= 24;
      v6 += 24;
      if (v7 + v8 == -8)
      {
        goto LABEL_5;
      }
    }

    free(*(v6 + 16));
    v9 = *(v4 + 1) - v8;

    return MEMORY[0x1EEE64DF0](a3, v9);
  }

  else
  {
LABEL_5:
    if (*(a3 + 1))
    {
      v10 = *a3;
      return add_PCSAttributes(result);
    }
  }

  return result;
}

BOOL CreateSignature(uint64_t a1, const __CFData *a2, const __CFData *a3, _DWORD *a4, _DWORD *a5, size_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, const void **a10)
{
  v54 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  if (!a7)
  {
    v37 = 0;
LABEL_30:
    Hmac = makeHmac(a1, a2, a3, a7, a6);
LABEL_31:
    if (!v37)
    {
LABEL_33:
      free_PCSObjectSignature(v51);
      goto LABEL_34;
    }

LABEL_32:
    CFRelease(v37);
    goto LABEL_33;
  }

  v47 = a6;
  v48 = a8;
  v16 = ccsha256_di();
  v49 = &v45;
  v17 = *v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  ObjectKey = getObjectKey(a1);
  if ((*(a1 + 204) - 4) <= 0xFFFFFFFD)
  {
    CreateSignature_cold_2(ObjectKey, v21, v22, v23, v24, v25, v26, v27);
  }

  v28 = ObjectKey;
  if (!ObjectKey)
  {
    CreateSignature_cold_1(0, v21, v22, v23, v24, v25, v26, v27);
  }

  v29 = _PCSKeyCopyExportedPublicKey(ObjectKey);
  if (v29)
  {
    v30 = v29;
    v46 = a10;
    DWORD2(v51[0]) = 1;
    FillOctetString(&v51[1] + 1, v29);
    CFRelease(v30);
    if (a4)
    {
      if (*a4)
      {
        *&v53 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
        if (!v53 || copy_PCSSPKeyList())
        {
          goto LABEL_50;
        }
      }
    }

    if (a5)
    {
      if (*a5)
      {
        *(&v53 + 1) = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
        if (!*(&v53 + 1) || copy_PCSAttributes())
        {
          goto LABEL_50;
        }
      }
    }

    v31 = *(a1 + 124);
    v32 = *(a1 + 120) + 1;
    *(a1 + 120) = v32;
    *&v51[0] = __PAIR64__(v31, v32);
    if (*(a1 + 214) == 1)
    {
      DWORD1(v51[0]) = v31 | 3;
    }

    if (CFDictionaryGetCount(*(a1 + 112)))
    {
      v33 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      *&v52 = v33;
      if (!v33)
      {
        goto LABEL_50;
      }

      *v33 = CFDictionaryGetCount(*(a1 + 112));
    }

    _PCSMakeDigest(v16, a2, a3, v51, v19);
    if (_PCSSignHash(v28, 0, 1, *v16, v19, &v51[2] + 8))
    {
      if (!*(a1 + 104))
      {
        goto LABEL_22;
      }

      v34 = malloc_type_calloc(1uLL, 0x28uLL, 0x1080040EC46ECBEuLL);
      *(&v52 + 1) = v34;
      if (v34)
      {
        if (!_PCSSignHash(*(a1 + 104), 0, 1, *v16, v19, v34))
        {
LABEL_26:
          v37 = 0;
LABEL_27:
          Hmac = 0;
          goto LABEL_31;
        }

LABEL_22:
        v35 = length_PCSObjectSignature(v51);
        *a7 = v35;
        v36 = malloc_type_malloc(v35, 0x6A9A5B2AuLL);
        *(a7 + 8) = v36;
        if (!v36)
        {
LABEL_25:
          free_PCSObjectSignature(v51);
          goto LABEL_26;
        }

        if (encode_PCSObjectSignature(v36 + *a7 - 1, *a7, v51, &v50))
        {
          free(*(a7 + 8));
          *(a7 + 8) = 0;
          goto LABEL_25;
        }

        free_PCSObjectSignature(v51);
        if (*a7 != v50)
        {
          abort();
        }

        if (v48)
        {
          Key = _PCSIdentityGetKey(*(a1 + 176));
          if (!Key)
          {
            goto LABEL_26;
          }

          v42 = Key;
          v37 = _PCSKeyCopyExportedPublicKey(Key);
          if (!v37)
          {
            goto LABEL_53;
          }

          if (!_PCSSignHash(v42, v37, 1, *v16, v19, v48))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v37 = 0;
        }

        if (!a9)
        {
LABEL_48:
          a6 = v47;
          goto LABEL_30;
        }

        v43 = _PCSIdentityGetKey(*(a1 + 184));
        if (!v43)
        {
          _PCSError(v46, 142, @"PCSShareProtection missing signing identity; cannot generate pppcs signature");
          goto LABEL_27;
        }

        v44 = v43;
        if (v37)
        {
          CFRelease(v37);
        }

        v37 = _PCSKeyCopyExportedPublicKey(v44);
        if (v37)
        {
          if (!_PCSSignHash(v44, v37, 1, *v16, v19, a9))
          {
LABEL_49:
            Hmac = 0;
            goto LABEL_32;
          }

          goto LABEL_48;
        }

LABEL_53:
        _PCSErrorOOM(v46);
        goto LABEL_27;
      }

LABEL_50:
      _PCSErrorOOM(v46);
      goto LABEL_26;
    }
  }

  Hmac = 0;
LABEL_34:
  v39 = *MEMORY[0x1E69E9840];
  return Hmac;
}

CFTypeRef PCSObjectCreateFromExportedWithIdentitiesAndOptions(uint64_t a1, int a2, uint64_t a3, const void **a4)
{
  if (a1)
  {

    return CreateWithExportedInternal(a3, a1, 0, 0, 0, 0, 0, a4);
  }

  else
  {
    _PCSError(a4, 27, @"PCSFPCreateWithExported need an identity", v4, v5);
    return 0;
  }
}

void __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync", v2);
  v1 = PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_queue;
  PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_queue = v0;
}

void __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2 || a3)
  {
    if (a3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3_cold_2();
      }

      v7 = a3;
      v8 = [v7 domain];
      if ([v8 isEqualToString:@"CKKSErrorDomain"])
      {
        v9 = [v7 code];
        v10 = kPCSCKKSErrorOutOfBandFetchingDisallowed;

        if (v9 == v10)
        {
          atomic_store(1u, initialSyncComplete);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3_cold_3();
          }
        }
      }

      else
      {
      }
    }

    v13 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    cf = 0;
    v5 = CreateWithExportedInternal(*(a1 + 56), a2, 0, 0, 0, 0, 0, &cf);
    if (v5)
    {
      v6 = v5;
      (*(*(a1 + 32) + 16))();
      CFRelease(v6);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3_cold_1(&cf);
      }

      v11 = *(a1 + 40);
      (*(*(a1 + 32) + 16))();
    }

    v12 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v12);
    }
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 56));
}

CFMutableArrayRef PCSFPCopyKeyIDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v10 = *(a1 + 16);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __PCSFPCopyKeyIDs_block_invoke;
  v12[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
  v12[4] = Mutable;
  PCSIdentitySetEnumeratePublicKeys(v10, v12);
  return Mutable;
}

uint64_t PCSFPCopyPublicIdentities(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (*(a1 + 216) != 1192348414)
  {
    PCSAbort("PCSShareProtectionObject no longer alive (overrelease):(sp)->alive == pcsfpTruelyAlive", v2, v3, v4, v5, v6, v7, v8, v12);
  }

  v9 = *(a1 + 40);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __PCSFPCopyPublicIdentities_block_invoke;
  context[3] = &unk_1E7B18C68;
  context[4] = &v14;
  CFDictionaryApplyFunction(v9, apply_block_2_1, context);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

void sub_1B22BBE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PCSFPEnumeratePublicIdentities(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 40);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = ___PCSFPEnumeratePublicIdentities_block_invoke;
  context[3] = &unk_1E7B18F68;
  v14 = v3;
  v12 = v3;
  CFDictionaryApplyFunction(v11, apply_block_2_1, context);
}

uint64_t PCSFPAddPublicIdentityWithShareFlags(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a3;
  v11 = *(a1 + 204);
  if (v11)
  {
    if (v11 != 3 || (*(a1 + 209) & 1) == 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (CFDictionaryGetCount(*(a1 + 40)) > 0)
  {
    return 0;
  }

LABEL_6:
  result = ShareEntryCreate(a2, v9);
  if (result)
  {
    v13 = result;
    v14 = *(a1 + 40);
    PublicID = PCSPublicIdentityGetPublicID(a2);
    CFDictionarySetValue(v14, PublicID, v13);
    CFRelease(v13);
    return 1;
  }

  return result;
}

BOOL PCSFPAddCurrentIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v8 = a4;
  v12 = *(a1 + 204);
  if (v12)
  {
    if (v12 == 3 && (*(a1 + 209) & 1) != 0)
    {
      return 0;
    }
  }

  else if (CFDictionaryGetCount(*(a1 + 40)) > 0)
  {
    return 0;
  }

  v13 = PCSIdentitySetCopyCurrentPublicIdentityWithError(a2, a3, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = ShareEntryCreate(v13, v8);
  v16 = v15 != 0;
  if (v15)
  {
    v17 = v15;
    v18 = *(a1 + 40);
    PublicID = PCSPublicIdentityGetPublicID(v14);
    CFDictionarySetValue(v18, PublicID, v17);
    CFRelease(v17);
  }

  CFRelease(v14);
  return v16;
}

uint64_t PCSFPRemovePublicIdentity(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 204) == 3 && (*(a1 + 209) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  PublicID = PCSPublicIdentityGetPublicID(a2);
  CFDictionaryRemoveValue(v3, PublicID);
  return 1;
}

uint64_t PCSFPAddSharePCSWithFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  PCSFPAddSharePCSWithFlags_cold_2(a1, a2, a3, &v9);
  return v9;
}

uint64_t PCSFPRemoveSharePCS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!*(a1 + 72) || *(a1 + 204) == 3 && (*(a1 + 209) & 1) != 0)
  {
    return 0;
  }

  result = PCSIdentitySetCopyIdentities(*(a2 + 16), 0);
  if (result)
  {
    v10 = result;
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSFPRemoveSharePCS_block_invoke;
    context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    context[4] = a1;
    CFDictionaryApplyFunction(result, apply_block_2_1, context);
    CFRelease(v10);
    return 1;
  }

  return result;
}

void __PCSFPRemoveSharePCS_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    abort();
  }

  v5 = *(*(a1 + 32) + 40);

  CFDictionaryRemoveValue(v5, cf);
}

uint64_t PCSFPCreatePrivateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  PCSFPCreatePrivateKey_cold_2(a1, &v9);
  return v9;
}

uint64_t PCSFPAddPrivateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 48) = 0;
    CFRelease(v11);
    v9 = *(a1 + 16);
  }

  return PCSIdentitySetAddIdentity(v9, a2);
}

uint64_t PCSFPSetCurrentPrivateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!*(a1 + 72))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 48) = 0;
    CFRelease(v11);
    v9 = *(a1 + 16);
  }

  return PCSIdentitySetSetCurrentIdentity(v9, a2);
}

uint64_t PCSFPGetChainingKeyset(uint64_t a1, int a2)
{
  v2 = 32;
  if (a2)
  {
    v2 = 24;
  }

  return *(a1 + v2);
}

const void *PCSFPChainingCreateIdentity(uint64_t a1, int a2, const void **a3)
{
  v4 = 32;
  if (a2)
  {
    v4 = 24;
  }

  v5 = *(a1 + v4);
  if (!v5 || (RandomCompactRaw = PCSIdentitySetCopyCurrentIdentityWithError(v5, kPCSServiceRaw, 0)) == 0)
  {
    RandomCompactRaw = PCSIdentityCreateRandomCompactRaw(a3);
    if (RandomCompactRaw && (PCSFPChainingSetCurrentIdentity() & 1) == 0)
    {
      CFRelease(RandomCompactRaw);
      return 0;
    }
  }

  return RandomCompactRaw;
}

const void *PCSFPChainingCopyCurrentIdentity(uint64_t a1, int a2)
{
  v2 = 32;
  if (a2)
  {
    v2 = 24;
  }

  result = *(a1 + v2);
  if (result)
  {
    return PCSIdentitySetCopyCurrentIdentityWithError(result, kPCSServiceRaw, 0);
  }

  return result;
}

uint64_t regenFPChainingAttribute(uint64_t a1, const void **a2)
{
  v17 = 0uLL;
  v16 = 0;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 72;
    if (*(a1 + 204) > 2u)
    {
      v5 = 64;
    }

    v6 = *(a1 + v5);
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = PCSIdentitySetCopyOrderedIdentities(v4, kPCSServiceRaw);
    if (!v7 || !fillChainingKeys(v6, v7, &v19, &v18, a2))
    {
      goto LABEL_18;
    }

    CFRelease(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v7 = PCSIdentitySetCopyOrderedIdentities(v8, kPCSServiceRaw);
    if (!v7 || !fillChainingKeys(*(a1 + 72), v7, &v19 + 1, &v18 + 1, a2))
    {
      goto LABEL_18;
    }

    CFRelease(v7);
  }

  v9 = length_PCSObjectChaining(&v18);
  *&v17 = v9;
  v10 = malloc_type_malloc(v9, 0x5CA1025CuLL);
  *(&v17 + 1) = v10;
  if (!v10)
  {
    v13 = 12;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = encode_PCSObjectChaining(v10 + v9 - 1, v9, &v18, &v16);
  if (v12)
  {
    v13 = v12;
    free(v11);
    *(&v17 + 1) = 0;
LABEL_16:
    _PCSErrorASN1(a2, "encode PCSObjectChaining", v13);
LABEL_17:
    v7 = 0;
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if (v16 != v9)
  {
    abort();
  }

  PCSReplaceOrUpdateAttribute((a1 + 128), 4, &v17);
  v7 = 0;
  v14 = 1;
LABEL_19:
  free_PCSObjectChaining(&v18);
  if (*(&v17 + 1))
  {
    free(*(&v17 + 1));
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v14;
}

BOOL PCSShareProtectionAddKeyWithAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = PCSFPCreatePrivateKey(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  if (v8)
  {
    CFRelease(v8);
  }

  return v9 != 0;
}

CFArrayRef PCSShareProtectionCopyPublicKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  if (!*(a1 + 48))
  {
    *(a1 + 48) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v9 = PCSIdentitySetCopyIdentities(*(a1 + 16), 0);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSShareProtectionCopyPublicKeys_block_invoke;
    context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    context[4] = a1;
    CFDictionaryApplyFunction(v9, apply_block_2_1, context);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  return CFArrayCreateCopy(0, *(a1 + 48));
}

void __PCSShareProtectionCopyPublicKeys_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = PCSIdentityCopyPublicIdentity(a3);
  CFArrayAppendValue(*(*(a1 + 32) + 48), v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

CFDataRef PCSFPCreateDerivedDataFromMasterKey(uint64_t a1, const __CFData *a2, const __CFData *a3, size_t a4)
{
  v8 = CFDataCreate(0, "DerivedDataFromMasterKey", 24);
  v9 = *(a1 + 72);
  Length = CFDataGetLength(v9);
  v11 = deriveHKDF(v9, 0, v8, Length);
  if (v8)
  {
    CFRelease(v8);
  }

  if (!v11)
  {
    return 0;
  }

  v12 = deriveHKDF(v11, a2, a3, a4);
  CFRelease(v11);
  return v12;
}

CFDataRef deriveHKDF(const __CFData *a1, CFDataRef theData, const __CFData *a3, size_t a4)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
  }

LABEL_5:
  if (CCKDFParametersCreateHkdf())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      deriveHKDF_cold_1();
    }

    return 0;
  }

  else
  {
    v9 = malloc_type_malloc(a4, 0xF4264991uLL);
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    if (CCDeriveKey())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        deriveHKDF_cold_2();
      }

      free(v9);
      v8 = 0;
    }

    else
    {
      v8 = CFDataCreateWithBytesNoCopy(0, v9, a4, *MEMORY[0x1E695E488]);
    }

    CCKDFParametersDestroy();
  }

  return v8;
}

uint64_t PCSFPGetCurrentMasterKeyID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 80);
}

uint64_t PCSFPGetCurrentMasterKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = *(a1 + 200);
  if (v9 && PCSServiceItemAllowKeyExportByIndex(v9))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

const void *PCSFPGetMasterKeyForKeyID(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Value = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 216) != 1192348414)
    {
      PCSAbort("PCSShareProtectionObject no longer alive (overrelease):(sp)->alive == pcsfpTruelyAlive", a2, a3, a4, a5, a6, a7, a8, v15[0]);
    }

    v11 = *(a1 + 200);
    if (v11 && PCSServiceItemAllowKeyExportByIndex(v11))
    {
      if (CFEqual(a2, *(a1 + 80)))
      {
        goto LABEL_7;
      }

      if (CFDataGetLength(a2) > 4)
      {
        Value = CFDictionaryGetValue(*(a1 + 112), a2);
        goto LABEL_13;
      }

      v12 = *(a1 + 80);
      v20.length = CFDataGetLength(v12);
      v20.location = 0;
      if (!CFDataFind(v12, a2, v20, 2uLL).location)
      {
LABEL_7:
        Value = *(a1 + 72);
LABEL_13:
        v17[3] = Value;
        goto LABEL_14;
      }

      v13 = *(a1 + 112);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __PCSFPGetMasterKeyForKeyID_block_invoke;
      v15[3] = &unk_1E7B18C08;
      v15[4] = &v16;
      v15[5] = a2;
      CFDictionaryApplyFunction(v13, apply_block_2_1, v15);
      Value = v17[3];
    }

    else
    {
      Value = 0;
    }
  }

LABEL_14:
  _Block_object_dispose(&v16, 8);
  return Value;
}

void sub_1B22BCCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFIndex __PCSFPGetMasterKeyForKeyID_block_invoke(CFIndex result, CFDataRef theData, uint64_t a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v5 = result;
    v6 = *(result + 40);
    v7.length = CFDataGetLength(theData);
    v7.location = 0;
    result = CFDataFind(theData, v6, v7, 2uLL).location;
    if (!result)
    {
      *(*(*(v5 + 32) + 8) + 24) = a3;
    }
  }

  return result;
}

const void *PCSFPSetOwnerIdentity(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 160) = 0;
    CFRelease(v4);
  }

  v5 = CFGetTypeID(cf);
  if (v5 == PCSIdentityGetTypeID())
  {
    result = PCSIdentityCopyPublicIdentity(cf);
    cf = result;
  }

  else
  {
    v7 = CFGetTypeID(cf);
    result = PCSPublicIdentityGetTypeID();
    if (v7 != result)
    {
      return result;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }
  }

  *(a1 + 160) = cf;
  return result;
}

uint64_t PCSFPGetOwnerIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 160);
}

_DWORD *PCSFPSetAuthorshipIdentity(_DWORD *result, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result[54] != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(result, cf, a3, a4, a5, a6, a7, a8);
  }

  if (cf)
  {
    v9 = result;
    v10 = *(result + 22);
    if (v10)
    {
      v9[22] = 0;
      CFRelease(v10);
    }

    result = CFRetain(cf);
    v9[22] = cf;
  }

  return result;
}

uint64_t PCSFPGetAuthorshipIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 176);
}

uint64_t PCSFPRollMasterKey(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = a2;
  if (*(a1 + 204) == 3 && *(a1 + 209) == 1)
  {
    _PCSError(a3, 48, @"Share is a readonly share");
    return 0;
  }

  if (*(a1 + 210) == 1)
  {
    _PCSError(a3, 49, @"Share is rolled w/o export");
    return 0;
  }

  if (CFDictionaryGetCount(*(a1 + 112)) >> 31)
  {
    _PCSError(a3, 136, @"Share master key rolled too much");
    return 0;
  }

  if ((v9 & 1) == 0)
  {
    CFDictionarySetValue(*(a1 + 112), *(a1 + 80), *(a1 + 72));
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (v11)
    {
      CFRelease(v11);
    }

    RandomKey = CreateRandomKey();
    v11 = RandomKey;
    if (!RandomKey)
    {
      break;
    }

    v21 = *(a1 + 64);
    if (*(a1 + 204) == 3)
    {
      if (!v21)
      {
        PCSFPRollMasterKey_cold_3(RandomKey, v14, v15, v16, v17, v18, v19, v20);
      }

      generateOtherKeysFromRWMasterKey(a1, RandomKey, v15, v16, v17, v18, v19, v20);
    }

    else
    {
      if (v21)
      {
        PCSFPRollMasterKey_cold_2(RandomKey, v14, v15, v16, v17, v18, v19, v20);
      }

      v22 = *(a1 + 72);
      if (v22)
      {
        *(a1 + 72) = 0;
        CFRelease(v22);
      }

      MutableCopy = CFDataCreateMutableCopy(0, 0, v11);
      *(a1 + 72) = MutableCopy;
      if (!MutableCopy)
      {
        break;
      }

      generateObjectKey(a1, v11, 1);
    }

    KeyIDFromKey = CreateKeyIDFromKey(*(a1 + 72));
    if (!KeyIDFromKey)
    {
      _PCSErrorOOM(a3);
      v30 = 0;
      goto LABEL_29;
    }

    v12 = KeyIDFromKey;
    v25 = *(a1 + 80);
    if (v25)
    {
      *(a1 + 80) = 0;
      CFRelease(v25);
    }

    v26 = CFRetain(v12);
    *(a1 + 80) = v26;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    if (CFDataGetLength(v26) >= 4)
    {
      v27 = *(a1 + 112);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = ___PCSFPMasterKeyIDHintConflict_block_invoke;
      context[3] = &unk_1E7B19020;
      context[4] = &v33;
      context[5] = 4;
      context[6] = v26;
      CFDictionaryApplyFunction(v27, apply_block_2_1, context);
    }

    v28 = *(v34 + 24);
    _Block_object_dispose(&v33, 8);
    if ((v28 & 1) == 0)
    {
      v29 = 1;
      *(a1 + 210) = 1;
      PCSFPUpdateMasterKeyIDAttribute(a1);
LABEL_27:
      CFRelease(v12);
      v30 = v29;
      goto LABEL_28;
    }
  }

  _PCSErrorOOM(a3);
  v29 = 0;
  v30 = 0;
  if (v12)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (!v11)
  {
    return v30;
  }

LABEL_29:
  CFRelease(v11);
  return v30;
}

void sub_1B22BD134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PCSFPUpdateMasterKeyIDAttribute(uint64_t a1)
{
  v25 = 0uLL;
  v24 = 0uLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19 = 0;
  Count = CFDictionaryGetCount(*(a1 + 112));
  LODWORD(v24) = Count;
  *(&v24 + 1) = malloc_type_calloc(Count, 0x10uLL, 0x108004057E67DB5uLL);
  if (*(&v24 + 1))
  {
    v3 = *(a1 + 112);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSFPUpdateMasterKeyIDAttribute_block_invoke;
    context[3] = &unk_1E7B19070;
    v17 = v24;
    context[4] = &v20;
    v18 = 4;
    CFDictionaryApplyFunction(v3, apply_block_2_1, context);
    if (*(v21 + 6) != Count)
    {
      v14 = "old master key length incorrect:n == ids.len";
      goto LABEL_10;
    }

    v11 = length_PCSMasterKeyIDs(&v24);
    *&v25 = v11;
    v12 = malloc_type_malloc(v11, 0xD748AF28uLL);
    v13 = v12;
    *(&v25 + 1) = v12;
    if (v12)
    {
      if (encode_PCSMasterKeyIDs(v12 + v11 - 1, v11, &v24, &v19))
      {
        free(v13);
        *(&v25 + 1) = 0;
        goto LABEL_8;
      }

      if (v11 == v19)
      {
        PCSReplaceOrUpdateAttribute((a1 + 128), 5, &v25);
        goto LABEL_8;
      }

      v14 = "asn1 encoding failure:data.length == length";
LABEL_10:
      PCSAbort(v14, v4, v5, v6, v7, v8, v9, v10, v15);
    }
  }

LABEL_8:
  free(*(&v24 + 1));
  free(*(&v25 + 1));
  _Block_object_dispose(&v20, 8);
}

void sub_1B22BD304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSFPRemoveMasterKey(uint64_t a1, CFDataRef theData, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, theData, a3, a4, a5, a6, a7, a8);
  }

  Length = CFDataGetLength(theData);
  v12 = Length;
  if (Length == 4 || Length == 32)
  {
    if (CFDictionaryContainsKey(*(a1 + 112), theData))
    {
      CFDictionaryRemoveValue(*(a1 + 112), theData);
LABEL_6:
      PCSFPUpdateMasterKeyIDAttribute(a1);
      return 1;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v15 = *(a1 + 112);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __PCSFPRemoveMasterKey_block_invoke;
    context[3] = &__block_descriptor_56_e15_v24__0r_v8r_v16l;
    context[4] = theData;
    context[5] = v12;
    context[6] = Mutable;
    CFDictionaryApplyFunction(v15, apply_block_2_1, context);
    Count = CFArrayGetCount(Mutable);
    if (Count == 1)
    {
      v21 = *(a1 + 112);
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
      CFDictionaryRemoveValue(v21, ValueAtIndex);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_6;
    }

    if (Count)
    {
      _PCSError(a3, 163, @"Multiple matching master keys found");
    }

    else if (*(a1 + 80) && ((BytePtr = CFDataGetBytePtr(theData), v18 = CFDataGetBytePtr(*(a1 + 80)), v19 = CFDataGetLength(*(a1 + 80)), v12 >= v19) ? (v20 = v19) : (v20 = v12), !memcmp(BytePtr, v18, v20)))
    {
      _PCSError(a3, 162, @"Cannot remove current master key");
    }

    else
    {
      _PCSError(a3, 25, @"No matching master key found");
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    _PCSError(a3, 32, @"Invalid key ID length");
  }

  return 0;
}

void __PCSFPRemoveMasterKey_block_invoke(uint64_t a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(*(a1 + 32));
  v6 = CFDataGetBytePtr(theData);
  if (*(a1 + 40) >= Length)
  {
    v7 = Length;
  }

  else
  {
    v7 = *(a1 + 40);
  }

  if (!memcmp(BytePtr, v6, v7))
  {
    v8 = *(a1 + 48);

    CFArrayAppendValue(v8, theData);
  }
}

uint64_t PCSFPShouldRoll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 211);
}

uint64_t _PCSFPSetShouldRoll(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
  }

  *(result + 211) = a2;
  return result;
}

uint64_t PCSNeedsRollAndCounterSign(const __CFData *a1, const void **a2)
{
  v14 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0u;
  v17 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = decode_PCSShareProtection(BytePtr, Length, v15, &v14);
  if (v6)
  {
    _PCSErrorASN1(a2, "decode PCSShareProtection", v6);
    v12 = 0;
  }

  else
  {
    if (v17)
    {
      v7 = *v17;
      if (v7)
      {
        v8 = *(v17 + 1);
        v9 = v7 - 1;
        do
        {
          v10 = *v8;
          v8 += 6;
          LODWORD(v7) = v10 == 12;
        }

        while (v10 != 12 && v9-- != 0);
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (*(&v16 + 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }
  }

  free_PCSShareProtection(v15);
  return v12;
}

uint64_t PCSFPIsOutOfNetwork(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 213);
}

uint64_t PCSFPShouldUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 212);
}

uint64_t PCSFPGetAuthorIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return *(a1 + 152);
}

uint64_t _PCSFPUpdateIdentityKey(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_51;
  }

  v11 = *(a1 + 204);
  if (v11 == 3)
  {
    if (*(a1 + 209) == 1)
    {
      _PCSError(a3, 48, @"RO object can't upgrade key");
LABEL_50:
      v9 = 0;
LABEL_51:
      v15 = 0;
      v14 = 0;
      goto LABEL_52;
    }
  }

  else if (!v11)
  {
    _PCSError(a3, 65, @"Light object can't upgrade key");
    goto LABEL_50;
  }

  if ((*(a1 + 211) & 1) == 0)
  {
    _PCSError(a3, 49, @"Rolling not required, refusing to roll");
    goto LABEL_50;
  }

  v12 = *(a1 + 176);
  if (!v12)
  {
    _PCSError(a3, 94, @"Wrap identity not known");
    goto LABEL_50;
  }

  ServiceName = PCSIdentityGetServiceName(v12);
  if (ServiceName)
  {
    v14 = PCSIdentitySetCopyIdentities(v9, 0);
    if (!v14)
    {
      _PCSErrorOOM(a3);
      v9 = 0;
      v15 = 0;
      goto LABEL_52;
    }

    v15 = PCSIdentitySetCopyCurrentPublicIdentityWithError(v9, ServiceName, a3);
    if (!v15)
    {
      v9 = 0;
      goto LABEL_52;
    }

    v9 = PCSIdentitySetCopyCurrentIdentityWithError(v9, ServiceName, a3);
    if (!v9)
    {
LABEL_52:
      ServiceName = 0;
      goto LABEL_18;
    }

    PublicID = PCSPublicIdentityGetPublicID(v15);
    if (!PublicID)
    {
      _PCSError(a3, 60, @"Failed to get rolling identity");
      goto LABEL_52;
    }

    if (*(a1 + 216) != 1192348414)
    {
      PCSFPCopyUnwrappedKey_cold_1(PublicID, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = PublicID;
    v25 = *(a1 + 152);
    if (v25 && CFEqual(v25, v15))
    {
      _PCSError(a3, 96, @"Asked to roll, but we're already using that service identity");
      ServiceName = 0;
      *(a1 + 211) = 0;
    }

    else
    {
      ServiceName = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
      if (ServiceName)
      {
        v32 = ShareEntryCreate(v15, 0);
        if (v32)
        {
          v33 = v32;
          v34 = PCSPublicIdentityGetPublicID(v15);
          CFDictionarySetValue(ServiceName, v34, v33);
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = ___PCSFPUpdateIdentityKey_block_invoke;
          v41[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
          v41[4] = v24;
          v41[5] = ServiceName;
          CFDictionaryApplyFunction(v14, apply_block_2_1, v41);
          v35 = *(a1 + 40);
          if (v35)
          {
            *(a1 + 40) = 0;
            CFRelease(v35);
          }

          *(a1 + 40) = CFRetain(ServiceName);
          *(a1 + 211) = 0;
          v36 = *(a1 + 176);
          if (v36)
          {
            *(a1 + 176) = 0;
            CFRelease(v36);
          }

          *(a1 + 176) = CFRetain(v9);
          v37 = *(a1 + 184);
          if (v37)
          {
            *(a1 + 184) = 0;
            CFRelease(v37);
          }

          SigningIdentity = _PCSIdentityGetSigningIdentity(v9);
          v39 = SigningIdentity;
          if (SigningIdentity)
          {
            CFRetain(SigningIdentity);
          }

          *(a1 + 184) = v39;
          v40 = *(a1 + 152);
          if (v40)
          {
            *(a1 + 152) = 0;
            CFRelease(v40);
          }

          *(a1 + 152) = CFRetain(v15);
          CFRelease(v33);
          v28 = 1;
          goto LABEL_43;
        }
      }

      _PCSErrorOOM(a3);
    }
  }

  else
  {
    _PCSError(a3, 94, @"Wrap identity service type is not known");
    v9 = 0;
    v15 = 0;
    v14 = 0;
  }

LABEL_18:
  if (*a3)
  {
    v26 = pcsLogObjForScope("fprollKeys");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *a3;
      *buf = 138412290;
      v43 = v27;
      _os_log_impl(&dword_1B229C000, v26, OS_LOG_TYPE_DEFAULT, "Not rolling zone key %@", buf, 0xCu);
    }
  }

  v28 = 0;
  v29 = 0;
  if (!ServiceName)
  {
    if (!v14)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  CFRelease(ServiceName);
  v29 = v28;
  if (v14)
  {
LABEL_24:
    CFRelease(v14);
  }

LABEL_25:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t PCSFPUpdateIdentityAndRollZoneKey(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  ServiceName = PCSIdentityGetServiceName(*(a1 + 176));
  if ((_PCSFPUpdateIdentityKey(a1, a2, a3, v7, v8, v9, v10, v11) & 1) == 0)
  {
    PCSFPUpdateIdentityAndRollZoneKey_cold_1(a1, a3);
LABEL_9:
    result = 0;
    goto LABEL_6;
  }

  v19 = PCSFPCreatePrivateKey(a1, v12, v13, v14, v15, v16, v17, v18);
  if (!v19)
  {
    _PCSErrorOOM(a3);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = pcsLogObjForScope("fpkeyRoll");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = ServiceName;
    _os_log_impl(&dword_1B229C000, v21, OS_LOG_TYPE_DEFAULT, "FP Rolled for Zone %@", &v24, 0xCu);
  }

  CFRelease(v20);
  result = 1;
LABEL_6:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B22BDEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CreateWithExportedInternal_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = CFDataCreateWithBytesNoCopy(0, *(*(a1 + 48) + 40), *(*(a1 + 48) + 32), *MEMORY[0x1E695E498]);
    *(*(*(a1 + 32) + 8) + 24) = _PCSIdentityCopyUnwappedKey(a3, v5, 0);
    if (v5)
    {
      CFRelease(v5);
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = CFRetain(a3);
      if ((*(a1 + 72) & 4) != 0)
      {
        if (!*(*(a1 + 56) + 56))
        {
          *(*(a1 + 56) + 56) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v6 = CFDataCreate(0, *(*(a1 + 48) + 40), *(*(a1 + 48) + 32));
        CFDictionarySetValue(*(*(a1 + 56) + 56), *(a1 + 64), v6);

        CFRelease(v6);
      }
    }
  }
}

void __CreateLightObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!*(*(*(*(a1 + 32) + 8) + 24) + 72))
  {
    v5 = MEMORY[0x1B2744A40]();
    v6 = ccsha256_di();
    ccaes_ecb_decrypt_mode();
    v7 = (cczp_bitlen() + 7) >> 3;
    if (CFDataGetLength(*(a1 + 40)) >= v7 + 3)
    {
      Length = CFDataGetLength(*(a1 + 40));
      v9 = Length - (v7 + 3);
      if (v9 <= 0x28 && (v9 & 7) == 0)
      {
        v38[2] = v6;
        v40 = v38;
        v11 = MEMORY[0x1EEE9AC00](Length);
        v38[3] = v37;
        v12 = MEMORY[0x1EEE9AC00](v11);
        v39 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v13 = (24 * *v5 + 31) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](v12);
        v14 = ccecb_context_size();
        MEMORY[0x1EEE9AC00](v14);
        v38[1] = &v37[-v15];
        v16 = cczp_bitlen();
        MEMORY[0x1EEE9AC00](v16);
        v43 = (cczp_bitlen() + 7) >> 3;
        if (PCSIdentityGetPrivateKey(a3))
        {
          v17 = *(a1 + 48);
          if (!ccec_compact_import_pub())
          {
            ccDRBGGetRngState();
            if (!ccecdh_compute_shared_secret())
            {
              v41 = PCSIdentityCopyExportedPublicKey(a3);
              v18 = CFDataGetLength(v41);
              v38[0] = v7;
              v19 = v39;
              if (v18 == v7)
              {
                v20 = v41;
                CFDataGetLength(v41);
                CFDataGetBytePtr(v20);
                v21 = v19;
                if (!cchkdf())
                {
                  ccecb_init();
                  v42 = 32;
                  v22 = *(a1 + 48) + v43;
                  v23 = ccwrap_auth_decrypt();
                  ccecb_context_size();
                  cc_clear();
                  if (!v23)
                  {
                    v24 = v42;
                    v25 = v38[0];
                    if (v42 == 32 || v42 == 16)
                    {
                      Mutable = CFDataCreateMutable(0, 0);
                      CFDataSetLength(Mutable, v24);
                      *(*(*(*(a1 + 32) + 8) + 24) + 72) = Mutable;
                      MutableBytePtr = CFDataGetMutableBytePtr(*(*(*(*(a1 + 32) + 8) + 24) + 72));
                      memcpy(MutableBytePtr, v21, v42);
                      *(*(*(*(a1 + 32) + 8) + 24) + 80) = CreateKeyIDFromKey(*(*(*(*(a1 + 32) + 8) + 24) + 72));
                      v29 = *(a1 + 48) + v25 + v9;
                      if (*(v29 + 1) != *CFDataGetBytePtr(*(*(*(*(a1 + 32) + 8) + 24) + 80)))
                      {
                        v30 = *(*(*(a1 + 32) + 8) + 24);
                        v31 = *(v30 + 72);
                        if (v31)
                        {
                          *(v30 + 72) = 0;
                          CFRelease(v31);
                          v30 = *(*(*(a1 + 32) + 8) + 24);
                        }

                        v32 = *(v30 + 80);
                        if (v32)
                        {
                          *(v30 + 80) = 0;
                          CFRelease(v32);
                        }

                        goto LABEL_17;
                      }

                      v33 = PCSIdentityCopyPublicIdentity(a3);
                      if (v33)
                      {
                        v34 = v33;
                        v35 = ShareEntryCreate(v33, 0);
                        PublicID = PCSPublicIdentityGetPublicID(v34);
                        CFDictionarySetValue(*(*(*(*(a1 + 32) + 8) + 24) + 40), PublicID, v35);
                        if (v35)
                        {
                          CFRelease(v35);
                        }

                        CFRelease(v34);
                      }
                    }

                    memset_s(v21, v9, 0, v9);
                  }
                }
              }

LABEL_17:
              if (v41)
              {
                CFRelease(v41);
              }
            }
          }
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t fillChainingKeys(const __CFData *a1, const __CFArray *a2, CFIndex **a3, void *a4, const void **a5)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v28 = 0;
  v29 = 0;
  v27 = &unk_1B23165E5;
  v34 = 0;
  v35 = 0;
  v33 = &unk_1B23165E5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __fillChainingKeys_block_invoke;
  v23[3] = &unk_1E7B19048;
  v23[4] = &v30;
  v23[5] = &v24;
  v10 = v23;
  v36.length = CFArrayGetCount(a2);
  v36.location = 0;
  CFArrayApplyFunction(a2, v36, apply_block_1_0, v10);

  v22 = 0;
  v11 = length_PCSSPKeyList((v25 + 4));
  Mutable = CFDataCreateMutable(0, v11);
  v13 = Mutable;
  if (!Mutable)
  {
    v15 = 12;
    goto LABEL_5;
  }

  CFDataSetLength(Mutable, v11);
  MutableBytePtr = CFDataGetMutableBytePtr(v13);
  v15 = encode_PCSSPKeyList(&MutableBytePtr[v11 - 1], v11, (v25 + 4), &v22);
  if (v15)
  {
    CFRelease(v13);
LABEL_5:
    _PCSErrorASN1(a5, "encode PCSSPKeyList", v15);
    v16 = 0;
LABEL_15:
    free_PCSSPKeyList((v31 + 4));
    free_PCSSPKeyList((v25 + 4));
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
    return v16;
  }

  if (v11 == v22)
  {
    v17 = PCSCloudKitShareTokenCopyEncryptedData(a1, v13);
    if (!v17)
    {
      v16 = 0;
      goto LABEL_14;
    }

    v18 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    *a3 = v18;
    if (v18)
    {
      if (FillOctetString(v18, v17))
      {
        v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
        *a4 = v19;
        if (v19)
        {
          v20 = copy_PCSSPKeyList();
          if (!v20)
          {
            v16 = 1;
LABEL_13:
            CFRelease(v17);
LABEL_14:
            CFRelease(v13);
            goto LABEL_15;
          }

          _PCSErrorASN1(a5, "copy PCSSPKeyList", v20);
        }
      }
    }

    v16 = 0;
    goto LABEL_13;
  }

  result = asn1_abort();
  __break(1u);
  return result;
}

void sub_1B22BEA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const UInt8 *__PCSFPUpdateMasterKeyIDAttribute_block_invoke(void *a1, CFDataRef theData)
{
  result = CFDataGetBytePtr(theData);
  v4 = a1[6];
  v5 = a1[7];
  *(v4 + 16 * *(*(a1[4] + 8) + 24) + 8) = result;
  *(v4 + 16 * (*(*(a1[4] + 8) + 24))++) = v5;
  return result;
}

uint64_t PCSSetKeyRollingFlags(uint64_t result, char a2, char a3, char a4)
{
  allow_rolling = result;
  allow_manatee_rolling = a2;
  allow_masterkey_rolling = a3;
  allow_allserviceidentity_rolling = a4;
  return result;
}

uint64_t PCSIdentitySetRollManateeServices(uint64_t a1, int a2, _BYTE *a3, const void **a4)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = time(0);
  if (a3)
  {
    *a3 = 0;
  }

  if (allow_rolling == 1 && (allow_manatee_rolling & 1) != 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __PCSIdentitySetRollManateeServices_block_invoke;
    v9[3] = &unk_1E7B190C0;
    v10 = a2;
    v9[4] = v11;
    v9[5] = a1;
    v9[6] = a3;
    PCSServiceItemsInfoIteration(v9);
  }

  else
  {
    _PCSError(a4, 98, @"Identity rolling disabled");
  }

  _Block_object_dispose(v11, 8);
  return 1;
}

void sub_1B22BEDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PCSIdentitySetRollManateeServices_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a6 >= 1 && a5 && a4)
  {
    v24[5] = v6;
    v24[6] = v7;
    v24[0] = 0;
    CurrentCreationTime = PCSIdentitySetGetCurrentCreationTime(*(a1 + 40), a3, v24);
    if (CurrentCreationTime)
    {
      v12 = *(a1 + 56);
      if (v12 == -1)
      {
        v12 = a6;
      }

      if (CurrentCreationTime + v12 <= *(*(*(a1 + 32) + 8) + 24))
      {
        v13 = dispatch_semaphore_create(0);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __PCSIdentitySetRollManateeServices_block_invoke_2;
        v19[3] = &unk_1E7B19098;
        v23 = *(a1 + 56);
        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v21 = a3;
        v22 = v14;
        v16 = v13;
        v20 = v16;
        PCSIdentitySetCreateManatee(v15, a3, 0, v19);
        v17 = v24[0];
        if (v24[0])
        {
          v24[0] = 0;
          CFRelease(v17);
        }

        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      v18 = v24[0];
      if (v24[0])
      {
        v24[0] = 0;
        CFRelease(v18);
      }
    }
  }
}

intptr_t __PCSIdentitySetRollManateeServices_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("keyRoll");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v12 = 138412546;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Rolled Service Identity %@ expiration %d", &v12, 0x12u);
    }

    **(a1 + 48) = 1;
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v12 = 138412546;
      v13 = v8;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "Rolled Service Identity %@ expiration %d", &v12, 0x12u);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCSEnvelopedKeyMaterialReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__n128 _PCSUpdateKeychainForwardTable(uint64_t a1)
{
  xmmword_1EB7AAAC8 = xmmword_1ED6F2368;
  unk_1EB7AAAD8 = *&off_1ED6F2378;
  qword_1EB7AAAE8 = off_1ED6F2388;
  savedPCSKeychainForwardTable = _PCSKeychainForwardTable;
  unk_1EB7AAAB8 = *&qword_1ED6F2358;
  v2 = *(a1 + 32);
  v1 = *(a1 + 48);
  v3 = *(a1 + 16);
  off_1ED6F2388 = *(a1 + 64);
  xmmword_1ED6F2368 = v2;
  *&off_1ED6F2378 = v1;
  *&qword_1ED6F2358 = v3;
  result = *a1;
  _PCSKeychainForwardTable = *a1;
  return result;
}

double _PCSResetKeychainForwardTable()
{
  xmmword_1ED6F2368 = xmmword_1EB7AAAC8;
  *&off_1ED6F2378 = unk_1EB7AAAD8;
  off_1ED6F2388 = qword_1EB7AAAE8;
  result = dbl_1EB7AAAB8[0];
  _PCSKeychainForwardTable = savedPCSKeychainForwardTable;
  *&qword_1ED6F2358 = *dbl_1EB7AAAB8;
  return result;
}

uint64_t PCSIdentitySetCopyIdentityByKeyID(uint64_t a1, uint64_t a2)
{
  if (!PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 16);

  return v4(a1, a2);
}

const void *PCSIdentitySetCopyCurrentIdentityWithError(uint64_t a1, void *a2, const void **a3)
{
  v3 = PCSIdentitySetCopyCurrentIdentityPointer(a1, a2, a3);
  v4 = [v3 identity];
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  return v5;
}

id PCSIdentitySetCopyCurrentIdentityPointer(uint64_t a1, void *a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    if (!a2)
    {
      a2 = *(a1 + 32);
      if (!a2)
      {
        goto LABEL_6;
      }
    }

    if (!PCSServiceItemTypeIsManatee(a2) || CFEqual(**(a1 + 16), @"Memory"))
    {
      goto LABEL_6;
    }

    if (PCSIdentityGetCDPStatus(a1, a2, a3))
    {
      _PCSError(a3, 130, @"Manatee is not available");
    }

    else
    {
      if (!PCSDaemonKeyRollIsPending(a1, a2))
      {
LABEL_6:
        v6 = __PCSIdentitySetCopyCurrentIdentityPointerInternal(a1, a2, a3);
        goto LABEL_9;
      }

      _PCSError(a3, 135, @"Cannot retrieve the current identity for %@ while a keyroll is pending", a2);
    }
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
  }

  v6 = 0;
LABEL_9:

  return v6;
}

uint64_t PCSIdentitySetAddIdentityWithError(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 40);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetRemoveIdentity(uint64_t a1, uint64_t a2)
{
  result = PCSCurrentPersonaMatchesDSIDFromSet(a1);
  if (result)
  {
    v5 = *(*(a1 + 16) + 48);

    return v5(a1, a2);
  }

  return result;
}

uint64_t PCSIdentitySetSetCurrentIdentityWithError(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 56);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetUnsetCurrentIdentity(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 64);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t _PCSIdentitySetIsCurrentIdentity(uint64_t a1, uint64_t a2)
{
  result = PCSCurrentPersonaMatchesDSIDFromSet(a1);
  if (result)
  {
    v5 = *(*(a1 + 16) + 32);

    return v5(a1, a2, 0);
  }

  return result;
}

uint64_t _PCSIdentitySetIsCurrentIdentityPreferCache(uint64_t a1, uint64_t a2)
{
  result = PCSCurrentPersonaMatchesDSIDFromSet(a1);
  if (result)
  {
    v5 = *(*(a1 + 16) + 32);

    return v5(a1, a2, 1);
  }

  return result;
}

uint64_t PCSIdentitySetEnumerateIdentities(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = (*(*(a1 + 16) + 72))(a1, a2, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t PCSIdentitySetCopyOrderedIdentities(uint64_t a1, uint64_t a2)
{
  if (!PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 88);

  return v4(a1, a2);
}

void PCSIdentitySetRepairCurrentIdentity(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    (*(*(a1 + 16) + 104))(a1, a2, a3, v7);
  }

  else if (v7)
  {
    cf = 0;
    _PCSError(&cf, 152, @"Current persona does not match chosen dsid");
    v7[2](v7, 0, cf);
    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }
  }
}

uint64_t PCSIdentitySetIsICDP(uint64_t a1, const void **a2)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v4 = *(*(a1 + 16) + 112);

    return v4(a1, a2);
  }

  else
  {
    _PCSError(a2, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetCompanionCircleMember(uint64_t a1, const void **a2)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v4 = *(*(a1 + 16) + 176);

    return v4(a1, a2);
  }

  else
  {
    _PCSError(a2, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetEnableCompanionCircleMember(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 184);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetIsICDPNetwork(uint64_t a1, const void **a2)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {

    return PCSIdentitySetIsICDPNetworkWithOptions(a1, 0, a2);
  }

  else
  {
    _PCSError(a2, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetIsICDPNetworkWithOptions(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 120);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetEnableICDP(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 128);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetIsPlesio(uint64_t a1, const void **a2)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v4 = *(*(a1 + 16) + 136);

    return v4(a1, a2);
  }

  else
  {
    _PCSError(a2, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetSetPlesio(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 144);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetIsWalrusWithForceFetch(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 152);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetSetWalrus(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 160);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

CFComparisonResult _PCSIdentityComparePublicKey(uint64_t a1, uint64_t a2)
{
  PublicKey = PCSIdentityGetPublicKey(a1);
  v4 = PCSIdentityGetPublicKey(a2);

  return CFStringCompare(PublicKey, v4, 0);
}

uint64_t PCSIdentitySetCreateExternalForm(uint64_t a1, uint64_t a2, char a3, const __CFArray *a4, const void **a5)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a2))
  {

    return PCSIdentitySetCreateExternalFormWithName(a1, a2, 0, a3, a4, a5);
  }

  else
  {
    _PCSError(a5, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetCreateExternalFormWithName(uint64_t a1, uint64_t a2, const __CFString *a3, char a4, const __CFArray *a5, const void **a6)
{
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a2) & 1) == 0)
  {
    _PCSError(a6, 152, @"Current persona does not match chosen dsid");
    return 0;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x6010000000;
  v56 = &unk_1B23165E5;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    _PCSErrorOOM(a6);
    v14 = 0;
LABEL_53:
    free_PCSKeySet((v54 + 4));
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
    return v14;
  }

  if (!a2)
  {
    _PCSError(a6, 125, @"%s: identity missing", "CFDataRef PCSIdentitySetCreateExternalFormWithName(PCSLogContextRef, PCSIdentitySetRef, CFStringRef, BOOL, CFArrayRef, CFErrorRef *)");
LABEL_42:
    v14 = 0;
    v16 = 0;
    v15 = 0;
LABEL_43:
    v17 = 0;
    goto LABEL_44;
  }

  if (a3)
  {
    v13 = PCSCFStringToCString(a3);
  }

  else
  {
    v13 = strdup("ks");
  }

  v54[4] = v13;
  if (!PCSCurrentPersonaMatchesDSIDFromSet(a2))
  {
    goto LABEL_42;
  }

  v15 = (*(*(a2 + 16) + 80))(a2, 0);
  if (!v15)
  {
LABEL_56:
    v14 = 0;
    v16 = 0;
    goto LABEL_43;
  }

  v16 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!v16)
  {
    _PCSErrorOOM(a6);
    goto LABEL_56;
  }

  v17 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!v17)
  {
    _PCSErrorOOM(a6);
    v14 = 0;
    goto LABEL_43;
  }

  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __PCSIdentitySetCreateExternalFormWithName_block_invoke;
  context[3] = &__block_descriptor_57_e15_v24__0r_v8r_v16l;
  v48 = a4;
  context[4] = a5;
  context[5] = a1;
  context[6] = v16;
  CFDictionaryApplyFunction(v15, apply_block_2_2, context);
  v61.length = CFArrayGetCount(v16);
  v61.location = 0;
  CFArraySortValues(v16, v61, _PCSIdentityComparePublicKey, 0);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __PCSIdentitySetCreateExternalFormWithName_block_invoke_40;
  v46[3] = &unk_1E7B19158;
  v46[4] = &v49;
  v46[5] = &v53;
  v46[6] = a6;
  v46[7] = a2;
  v46[8] = v17;
  v46[9] = Mutable;
  v18 = v46;
  v62.length = CFArrayGetCount(v16);
  v62.location = 0;
  CFArrayApplyFunction(v16, v62, apply_block_1_1, v18);

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __PCSIdentitySetCreateExternalFormWithName_block_invoke_2;
  v45[3] = &__block_descriptor_40_e10_v16__0r_v8l;
  v45[4] = Mutable;
  v19 = v45;
  v63.length = CFArrayGetCount(v17);
  v63.location = 0;
  CFArrayApplyFunction(v17, v63, apply_block_1_1, v19);

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __PCSIdentitySetCreateExternalFormWithName_block_invoke_3;
    v44[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
    v44[4] = v17;
    v44[5] = a2;
    CFDictionaryApplyFunction(Mutable, apply_block_2_2, v44);
  }

  v64.length = CFArrayGetCount(v16);
  v64.location = 0;
  CFArraySortValues(v16, v64, PCSIdentityCompareServiceNumber, 0);
  Count = CFArrayGetCount(v17);
  v21 = malloc_type_calloc(Count, 0x18uLL, 0x10800404ACF7207uLL);
  v22 = v54;
  v54[8] = v21;
  if (Count >= 1)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v22[8];
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v24);
      __PCSFillCurrentsKey(ValueAtIndex, v25 + v23);
      ++v24;
      v22 = v54;
      *(v54 + 14) = v24;
      v23 += 24;
    }

    while (Count != v24);
  }

  v27 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v54[10] = v27;
  if (!v27)
  {
    _PCSErrorOOM(a6);
    goto LABEL_37;
  }

  *v27 = 5;
  if (a5)
  {
    *v54[10] |= 2u;
    if (CFArrayGetCount(a5) == 1)
    {
      v65.location = 0;
      v65.length = 1;
      if (CFArrayContainsValue(a5, v65, kPCSServiceFDE))
      {
        *v54[10] |= 8u;
      }
    }
  }

  v43 = 0;
  v28 = length_PCSKeySet((v54 + 4));
  v29 = CFDataCreateMutable(0, v28);
  v30 = v29;
  if (!v29)
  {
    goto LABEL_35;
  }

  CFDataSetLength(v29, v28);
  MutableBytePtr = CFDataGetMutableBytePtr(v30);
  v32 = encode_PCSKeySet(&MutableBytePtr[v28 - 1], v28, (v54 + 4), &v43);
  *(v50 + 6) = v32;
  if (v32)
  {
    CFRelease(v30);
    v33 = *(v50 + 6);
    if (v33)
    {
      goto LABEL_36;
    }

    v30 = 0;
  }

  else if (v28 != v43)
  {
    goto LABEL_61;
  }

  v34 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
  v54[9] = v34;
  if (!v34)
  {
LABEL_60:
    v14 = 0;
    goto LABEL_45;
  }

  v35 = malloc_type_malloc(0x20uLL, 0xA53ADA32uLL);
  *(v54[9] + 8) = v35;
  v36 = v54[9];
  if (!v36[1])
  {
    _PCSErrorOOM(a6);
    goto LABEL_60;
  }

  *v36 = 32;
  ccsha256_di();
  CFDataGetLength(v30);
  CFDataGetBytePtr(v30);
  v37 = *(v54[9] + 8);
  ccdigest();
  if (v30)
  {
    CFRelease(v30);
  }

  v43 = 0;
  v38 = length_PCSKeySet((v54 + 4));
  v39 = CFDataCreateMutable(0, v38);
  v14 = v39;
  if (!v39)
  {
LABEL_35:
    v33 = 12;
    *(v50 + 6) = 12;
    goto LABEL_36;
  }

  CFDataSetLength(v39, v38);
  v40 = CFDataGetMutableBytePtr(v14);
  v41 = encode_PCSKeySet(&v40[v38 - 1], v38, (v54 + 4), &v43);
  *(v50 + 6) = v41;
  if (v41)
  {
    CFRelease(v14);
    v33 = *(v50 + 6);
    if (!v33)
    {
LABEL_37:
      v14 = 0;
LABEL_44:
      v30 = 0;
      goto LABEL_45;
    }

LABEL_36:
    _PCSError(a6, 7, @"PCSKeySet encode error: %d", v33);
    goto LABEL_37;
  }

  if (v38 == v43)
  {
    CFRetain(v14);
    v30 = v14;
LABEL_45:
    CFRelease(Mutable);
    if (v16)
    {
      CFRelease(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_53;
  }

LABEL_61:
  result = asn1_abort();
  __break(1u);
  return result;
}

void sub_1B22C2DE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void __PCSIdentitySetCreateExternalFormWithName_block_invoke(uint64_t a1, int a2, void *value)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1 && _PCSIdentityIsManatee(value))
  {
    goto LABEL_13;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  ServiceName = PCSIdentityGetServiceName(value);
  if (!ServiceName)
  {
    v9 = PCSLogGetOSLog(*(a1 + 40));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = value;
      _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "Identity have unknown service: %{public}@", &v11, 0xCu);
    }

    goto LABEL_12;
  }

  v6 = ServiceName;
  v7 = *(a1 + 32);
  v14.length = CFArrayGetCount(v7);
  v14.location = 0;
  if (CFArrayContainsValue(v7, v14, v6))
  {
LABEL_12:
    CFArrayAppendValue(*(a1 + 48), value);
    goto LABEL_13;
  }

  v8 = PCSLogGetOSLog(*(a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = value;
    _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "Identity not selected for migration: %{public}@", &v11, 0xCu);
  }

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
}

void __PCSIdentitySetCreateExternalFormWithName_block_invoke_40(uint64_t a1, const void *a2)
{
  memset(v8, 0, sizeof(v8));
  if (__PCSIdentitySetGetPrivateKey(a2, v8, *(a1 + 48)))
  {
    *(*(*(a1 + 32) + 8) + 24) = add_PCSPrivateKeys((*(*(a1 + 40) + 8) + 40));
    free_PCSPrivateKey(v8);
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v4 = PCSIdentityCopyServiceNumber(a2);
      v5 = *(a1 + 56);
      if (PCSCurrentPersonaMatchesDSIDFromSet(v5) && (*(*(v5 + 16) + 32))(v5, a2, 0))
      {
        CFArrayAppendValue(*(a1 + 64), a2);
        v6 = (a1 + 72);
      }

      else
      {
        v7 = *(a1 + 72);
        v6 = (a1 + 72);
        if (CFDictionaryGetValue(v7, v4))
        {
LABEL_8:
          CFRelease(v4);
          return;
        }
      }

      CFDictionarySetValue(*v6, v4, a2);
      goto LABEL_8;
    }
  }
}

void __PCSIdentitySetCreateExternalFormWithName_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = PCSIdentityCopyServiceNumber(a2);
  CFDictionaryRemoveValue(*(a1 + 32), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __PCSIdentitySetCreateExternalFormWithName_block_invoke_3(uint64_t a1, int a2, void *value)
{
  CFArrayAppendValue(*(a1 + 32), value);
  v5 = *(a1 + 40);
  result = PCSCurrentPersonaMatchesDSIDFromSet(v5);
  if (result)
  {
    v7 = *(*(v5 + 16) + 56);

    return v7(v5, value, 0);
  }

  return result;
}

uint64_t PCSIdentityCompareServiceNumber(uint64_t a1, uint64_t a2)
{
  ServiceID = PCSIdentityGetServiceID(a1);
  v4 = PCSIdentityGetServiceID(a2);
  if (ServiceID >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (ServiceID > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t PCSIdentitySetCreateFromExternalForm(const __CFDictionary *a1, const __CFData *a2, _DWORD *a3, const void **a4)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kPCSSetupForceValidateKey[0]);
    v11 = Value && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFBooleanGetTypeID()) && CFBooleanGetValue(v9) != 0;
    v12 = CFDictionaryGetValue(a1, kPCSSetupDontImportManatee[0]);
    v15 = v12 && (v13 = v12, v14 = CFGetTypeID(v12), v14 == CFBooleanGetTypeID()) && CFBooleanGetValue(v13) != 0;
  }

  else
  {
    v15 = 0;
    v11 = 0;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  if (!a2)
  {
    _PCSError(a4, 126, @"%s: data missing", "PCSIdentitySetRef PCSIdentitySetCreateFromExternalForm(CFDictionaryRef, CFDataRef, uint32_t *, CFErrorRef *)");
LABEL_70:
    free_PCSKeySet(&v55);
    v31 = 0;
    goto LABEL_66;
  }

  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v18 = decode_PCSKeySet(BytePtr, Length, &v55, 0);
  if (v18)
  {
    _PCSError(a4, 8, @"PCSKeySet decode error: %d", v18);
    goto LABEL_70;
  }

  if (a3 && v58)
  {
    *a3 = *v58;
  }

  Mutable = PCSIdentitySetCreateMutable(a4);
  if (!Mutable)
  {
    goto LABEL_70;
  }

  v20 = Mutable;
  v21 = *(&v57 + 1);
  if (*(&v57 + 1))
  {
    if (**(&v57 + 1) != 32)
    {
      v54 = **(&v57 + 1);
      v28 = @"checksum wrong length %d";
      goto LABEL_38;
    }

    *(&v57 + 1) = 0;
    v59 = 0;
    v22 = length_PCSKeySet(&v55);
    v23 = CFDataCreateMutable(0, v22);
    if (!v23)
    {
      v27 = 12;
      goto LABEL_23;
    }

    v24 = v23;
    CFDataSetLength(v23, v22);
    MutableBytePtr = CFDataGetMutableBytePtr(v24);
    v26 = encode_PCSKeySet(&MutableBytePtr[v22 - 1], v22, &v55, &v59);
    if (v26)
    {
      v27 = v26;
      CFRelease(v24);
LABEL_23:
      *(&v57 + 1) = v21;
      v54 = v27;
      v28 = @"PCSKeySet encode error: %d";
      v29 = a4;
      v30 = 7;
LABEL_24:
      _PCSError(v29, v30, v28, v54);
      goto LABEL_25;
    }

    if (v22 != v59)
    {
      v53 = asn1_abort();
      return __PCSIdentitySetGetTypeID_block_invoke(v53);
    }

    *(&v57 + 1) = v21;
    ccsha256_di();
    CFDataGetLength(v24);
    CFDataGetBytePtr(v24);
    ccdigest();
    CFRelease(v24);
    v32 = *(v21 + 8);
    v33 = *v32;
    v34 = v32[1];
    v36 = v32[2];
    v35 = v32[3];
    if (buf != v33 || *(&buf + 1) != v34 || v61 != v36 || v62 != v35)
    {
      v28 = @"checksum wrong";
LABEL_38:
      v29 = a4;
      v30 = 9;
      goto LABEL_24;
    }
  }

  if (DWORD2(v55))
  {
    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x1E69E9C10];
    do
    {
      LOBYTE(v59) = 0;
      if (!v11)
      {
        goto LABEL_46;
      }

      if (!_PCSValidateKey((v56 + v40), &v59, 0, 0, a4))
      {
        goto LABEL_25;
      }

      if (v59 == 1)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v41;
          _os_log_impl(&dword_1B229C000, v42, OS_LOG_TYPE_DEFAULT, "skipping key since its broken: %u", &buf, 8u);
        }
      }

      else
      {
LABEL_46:
        v43 = PCSIdentityCreateWithPrivateKeyV1((v56 + v40), 1, a4);
        if (!v43)
        {
          goto LABEL_25;
        }

        v44 = v43;
        if (v15 && _PCSIdentityIsManatee(v43))
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v44;
            _os_log_impl(&dword_1B229C000, v42, OS_LOG_TYPE_DEFAULT, "skipping import of manatee identity %@", &buf, 0xCu);
          }
        }

        else
        {
          PCSIdentitySetAddIdentity(v20, v44);
        }

        CFRelease(v44);
      }

      ++v41;
      v40 += 24;
    }

    while (v41 < DWORD2(v55));
  }

  if (!DWORD2(v56))
  {
LABEL_64:
    CFRetain(v20);
    v31 = v20;
    goto LABEL_65;
  }

  v45 = 0;
  v46 = 0;
  v47 = *MEMORY[0x1E695E498];
  while (1)
  {
    v48 = CFDataCreateWithBytesNoCopy(0, *(v57 + v45 + 16), *(v57 + v45 + 8), v47);
    if (!v48)
    {
      break;
    }

    v49 = v48;
    if (!PCSCurrentPersonaMatchesDSIDFromSet(v20))
    {
      v50 = v49;
LABEL_62:
      CFRelease(v50);
      goto LABEL_63;
    }

    v50 = (*(v20[2] + 16))(v20, v49);
    CFRelease(v49);
    if (v50)
    {
      if (PCSCurrentPersonaMatchesDSIDFromSet(v20))
      {
        (*(v20[2] + 56))(v20, v50, 0);
      }

      goto LABEL_62;
    }

LABEL_63:
    ++v46;
    v45 += 24;
    if (v46 >= DWORD2(v56))
    {
      goto LABEL_64;
    }
  }

  _PCSErrorOOM(a4);
LABEL_25:
  v31 = 0;
LABEL_65:
  free_PCSKeySet(&v55);
  CFRelease(v20);
LABEL_66:
  v51 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t __PCSIdentitySetGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFNumberRef IdentityCopyServiceNumber(uint64_t a1, int a2)
{
  ServiceID = PCSIdentityGetServiceID(a1);
  if (!ServiceID)
  {
    return 0;
  }

  valuePtr = ServiceID | a2;
  return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
}

id _PCSIdentitySetGetAltDSIDorPCSAccountsModel(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = v3;
      v2 = [PCSAccountsModel altDSIDForDSID:v3];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

CFTypeRef PCSIdentitySetCreateKeychain(const __CFDictionary *a1, const void *a2, const void **a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _PCSError(a3, 47, @"Options parameter missing");
    goto LABEL_20;
  }

  PCSIdentitySetGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    _PCSErrorOOM(a3);
    goto LABEL_20;
  }

  v7 = Instance;
  _PCSIdentitySetInitialize(Instance);
  v7[2] = &PCSIdentitySetKeychain;
  Value = CFDictionaryGetValue(a1, kPCSSetupDSID[0]);
  if (Value && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFStringGetTypeID()))
  {
    v11 = CFDictionaryGetValue(a1, kPCSSetupAltDSID[0]);
    v12 = v11;
    if (!v11 || (v13 = CFGetTypeID(v11), v13 == CFStringGetTypeID()))
    {
      if (kPCSSetupDSIDAny[0] && CFEqual(v9, kPCSSetupDSIDAny[0]))
      {
        v7[5] = 0;
LABEL_13:
        if (a2)
        {
          CFRetain(a2);
        }

        v7[4] = a2;
        v14 = CFRetain(v7);
        goto LABEL_16;
      }

      CFRetain(v9);
      v7[5] = v9;
      if (v12)
      {
        CFRetain(v12);
      }

      v7[6] = v12;
      if (PCSCurrentPersonaMatchesDSIDFromSet(v7))
      {
        goto LABEL_13;
      }

      if (a3)
      {
        v15 = MEMORY[0x1E696ABC0];
        v16 = kPCSErrorDomain;
        v20 = *MEMORY[0x1E696A578];
        v21[0] = @"Current persona does not match chosen dsid";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        *a3 = [v15 errorWithDomain:v16 code:152 userInfo:v17];
      }

      CFRelease(v7);
LABEL_20:
      v14 = 0;
      goto LABEL_21;
    }

    _PCSError(a3, 47, @"altDSID not a string");
  }

  else
  {
    _PCSError(a3, 47, @"DSID not a string");
  }

  v14 = 0;
LABEL_16:
  CFRelease(v7);
LABEL_21:
  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

__CFDictionary *PCSCopyPIIClearedOptions(CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    _PCSHideKeyValue(MutableCopy, kPCSSetupAuthToken[0]);
    _PCSHideKeyValue(v2, kPCSSetupDSID[0]);
    _PCSHideKeyValue(v2, kPCSSetupAltDSID[0]);
    _PCSHideKeyValue(v2, kPCSSetupPassword[0]);
    _PCSHideKeyValue(v2, kPCSSetupRawPassword[0]);
    _PCSHideKeyValue(v2, kPCSSetupRecoveryToken[0]);
    _PCSHideKeyValue(v2, kPCSSetupVerifierIterationCount[0]);
    _PCSHideKeyValue(v2, kPCSSetupVerifierSalt[0]);
    _PCSHideKeyValue(v2, @"kMnemonicUseAfterStoreHSMForRTStoreHSM");
    _PCSHideKeyValue(v2, @"kPRecoveryUseAfterStoreHSMForRTStoreHSM");
    _PCSHideKeyValue(v2, kPCSSetupUsername[0]);
    _PCSHideKeyValue(v2, kPCSSetupHSMContent[0]);
    _PCSHideKeyValue(v2, kPCSSetupHSMMetaData[0]);
  }

  return v2;
}

void _PCSHideKeyValue(__CFDictionary *a1, const void *a2)
{
  if (CFDictionaryContainsKey(a1, a2))
  {

    CFDictionarySetValue(a1, a2, @"<<VALUE>>");
  }
}

CFTypeRef PCSIdentitySetCreate(const __CFDictionary *a1, const void *a2, const void **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kPCSSetupLogContext[0]);
    v7 = PCSCopyPIIClearedOptions(a1);
    v8 = PCSLogGetOSLog(Value);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = a2;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "PCSIdentitySetCreate: %{public}@ %{public}@", &v11, 0x16u);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  result = PCSIdentitySetCreateKeychain(a1, a2, a3);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void _PCSIdentitySetSetService(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 32) = 0;
    CFRelease(v4);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 32) = cf;
}

const void *PCSIdentitySetGetCurrentCreationTime(uint64_t a1, uint64_t a2, const void **a3)
{
  result = _PCSIdentitySetCopyCurrentIdentityInternal(a1, a2, a3);
  if (result)
  {
    v5 = result;
    CreationTime = PCSIdentityGetCreationTime(result, a3);
    CFRelease(v5);
    return CreationTime;
  }

  return result;
}

const void *MemoryCopyByKeyID(uint64_t a1, const void *a2)
{
  if (!PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v5;
}

uint64_t MemoryRemoveIdentity(uint64_t a1, const void *a2)
{
  result = PCSCurrentPersonaMatchesDSIDFromSet(a1);
  if (result)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      result = CFDictionaryGetValue(*(a1 + 56), a2);
      if (!result)
      {
        return result;
      }

      v5 = result;
      if (((*(*(a1 + 16) + 32))(a1, result, 0) & 1) == 0)
      {
        v6 = *(a1 + 64);
        KeyID = PCSIdentityGetKeyID(v5);
        CFDictionaryRemoveValue(v6, KeyID);
        CFDictionaryRemoveValue(*(a1 + 56), a2);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t MemoryUnsetCurrentIdentity(uint64_t a1, void *key)
{
  NumberByName = PCSServiceItemGetNumberByName(key);
  CFDictionaryRemoveValue(*(a1 + 72), NumberByName);
  return 1;
}

CFArrayRef MemoryCopyOrderedIdentities(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) != 0 && (Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0])) != 0)
  {
    v5 = MemoryCopyCurrentIdentity(a1, a2, 0);
    v6 = v5;
    if (v5 && (v7 = [v5 identity], _PCSIdentityValidate(v7, v20 + 24, 0)) && (v20[3] & 1) == 0)
    {
      CFArrayAppendValue(Mutable, [v6 identity]);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 56);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __MemoryCopyOrderedIdentities_block_invoke;
    v14[3] = &unk_1E7B19230;
    v17 = a2;
    v10 = v6;
    v15 = v10;
    v16 = &v19;
    v18 = Mutable;
    CFDictionaryApplyFunction(v9, apply_block_2_2, v14);
    v11.length = CFArrayGetCount(Mutable) - v8;
    if (v11.length >= 2)
    {
      v11.location = v8;
      CFArraySortValues(Mutable, v11, _PCSIdentityComparePublicKey, 0);
    }

    Copy = CFArrayCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    Copy = 0;
  }

  _Block_object_dispose(&v19, 8);
  return Copy;
}