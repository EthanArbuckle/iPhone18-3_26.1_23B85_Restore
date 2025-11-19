uint64_t AMSupportEcDsaCreateSignatureSha256(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        *&v7 = OUTLINED_FUNCTION_1();
        v14[0] = v7;
        v14[1] = v7;
        result = AMSupportDigestSha256(v8);
        if (!result)
        {
          v12 = MEMORY[0x29C28A410](result, v9, v10, v11);
          result = OUTLINED_FUNCTION_0(v12, v14, 32);
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportEcDsaCreateSignatureWithCp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v12 = (((cczp_bitlen() + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 9;
  v20[0] = v12;
  v13 = *a1;
  MEMORY[0x2A1C7C4A8]();
  v15 = (v20 - v14);
  bzero(v20 - v14, v14);
  result = 1;
  if (a2 && a4 && a6)
  {
    *v15 = a1;
    if (!ccec_der_import_priv())
    {
      v17 = malloc_type_calloc(1uLL, v12, 0xDA952C18uLL);
      if (v17)
      {
        v18 = v17;
        ccDRBGGetRngState();
        result = ccec_sign();
        if (!result)
        {
          *a6 = v18;
          *a7 = v20[0];
          goto LABEL_8;
        }

        free(v18);
      }
    }

    result = 99;
  }

LABEL_8:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportEcDsaCreateSignatureSha384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        *&v7 = OUTLINED_FUNCTION_1();
        v16[1] = v7;
        v16[2] = v7;
        v16[0] = v7;
        result = AMSupportDigestSha384(v8);
        if (!result)
        {
          v14 = MEMORY[0x29C28A420](result, v9, v10, v11, v12, v13);
          result = OUTLINED_FUNCTION_0(v14, v16, 48);
        }
      }
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportEcDsaCreateSignatureSha512(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1)
  {
    if (a3)
    {
      if (a5)
      {
        *&v7 = OUTLINED_FUNCTION_1();
        v18[2] = v7;
        v18[3] = v7;
        v18[0] = v7;
        v18[1] = v7;
        result = AMSupportDigestSha512(v8);
        if (!result)
        {
          v16 = MEMORY[0x29C28A420](result, v9, v10, v11, v12, v13, v14, v15);
          result = OUTLINED_FUNCTION_0(v16, v18, 64);
        }
      }
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportDigestMd5(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_0();
  ccdigest();
  return 0;
}

uint64_t AMSupportDigestSha1(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_0();
  ccdigest();
  return 0;
}

uint64_t AMSupportDigestSha256(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!sha256_digest_info)
  {
    sha256_digest_info = ccsha256_di();
  }

  ccdigest();
  return 0;
}

uint64_t AMSupportDigestSha384(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_0();
  ccdigest();
  return 0;
}

uint64_t AMSupportDigestSha512(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_0();
  ccdigest();
  return 0;
}

uint64_t AMSupportDigestCompute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          if (*a5 == a4)
          {
            v8 = a5[2];
            if (v8)
            {
              if (*v8)
              {
                ccdigest();
                return 0;
              }

              else
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AMSupportX509DecodeParseDERLengthFromBuffer(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v14 = 0;
  result = 1;
  if (a1 && a3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18[0] = a1;
    v18[1] = a2;
    if (DERDecodeItemPartialBufferGetLength(v18, &v15, &v14))
    {
      v12 = "failed to decode DER";
    }

    else
    {
      if (v14)
      {
        if (v14 >= ~(v16 - a1))
        {
          AMSupportLogInternal(3, "AMSupportX509DecodeParseDERLengthFromBuffer", "encoded size will overrun DERSize", v6, v7, v8, v9, v10, v13);
          result = 22;
        }

        else
        {
          result = 0;
          *a3 = v16 - a1 + v14;
        }

        goto LABEL_7;
      }

      v12 = "encodedSize is 0";
    }

    AMSupportLogInternal(3, "AMSupportX509DecodeParseDERLengthFromBuffer", v12, v6, v7, v8, v9, v10, v13);
    result = 99;
  }

LABEL_7:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportX509DecodeCertificate(unint64_t *a1, unint64_t a2, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a2 && a3)
  {
    bzero(a1, 0x120uLL);
    a1[32] = a2;
    a1[33] = a3;
    if (DERParseSequence((a1 + 32), DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a1, 0x30uLL) || DERParseSequence(a1, 0xAu, &AMSupportX509DERTBSCertItemSpecs, (a1 + 6), 0xA0uLL) || (v11 = 0u, v12 = 0u, v10 = 0, DERParseSequence((a1 + 18), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v11, 0x20uLL)) || DERParseSequenceContent(&v11, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, (a1 + 28), 0x20uLL) || !DEROidCompare((a1 + 28), &oidRsa) || (v7 = a1[31]) != 0 && (v7 != 2 || (v8 = a1[30], *v8 != 5) || v8[1]) || DERParseBitString(&v12, a1 + 26, &v10) || v10)
    {
      result = 19;
    }

    else
    {
      result = 0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportX509DecodeIterateCertChainBegin(void *a1, uint64_t a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a1 = a2;
      a1[1] = a3;
      a1[2] = 0;
    }
  }

  return result;
}

uint64_t AMSupportX509DecodeIterateCertChainNext(uint64_t a1, unint64_t **a2, _DWORD *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    result = 1;
    if (a2)
    {
      v6 = *a1;
      if (*a1)
      {
        v7 = *(a1 + 8);
        if (v7)
        {
          v13 = 0;
          if (AMSupportX509DecodeParseDERLengthFromBuffer(v6, v7, &v13))
          {
            result = 19;
          }

          else
          {
            v10 = *(a1 + 8);
            if (v10 < v13)
            {
              result = 22;
            }

            else
            {
              result = AMSupportX509DecodeCertificate(*a2, *a1, v10);
              if (!result)
              {
                v11 = *(a1 + 16);
                *(a1 + 16) = v11 + 1;
                *a3 = v11;
                v12 = *(a1 + 8) - v13;
                *a1 += v13;
                *(a1 + 8) = v12;
              }
            }
          }
        }

        else
        {
          result = 0;
          *a2 = 0;
        }
      }
    }
  }

  else
  {
    result = 1;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportRsaCreateSignatureSha1()
{
  OUTLINED_FUNCTION_2();
  v17 = *MEMORY[0x29EDCA608];
  v3 = OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  v4 = MEMORY[0x2A1C7C4A8]();
  OUTLINED_FUNCTION_3(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  if (OUTLINED_FUNCTION_4())
  {
    goto LABEL_8;
  }

  if (AMSupportDigestSha1(v2))
  {
    goto LABEL_8;
  }

  v12 = malloc_type_calloc(1uLL, 8 * v3, 0x359D95E7uLL);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  result = ccrsa_sign_pkcs1v15();
  if (result)
  {
    free(v13);
LABEL_8:
    result = 6;
    goto LABEL_6;
  }

  *v1 = v13;
  *v0 = 8 * v3;
LABEL_6:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportRsaCreateSignatureSha256()
{
  OUTLINED_FUNCTION_2();
  v17 = *MEMORY[0x29EDCA608];
  v3 = OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  v4 = MEMORY[0x2A1C7C4A8]();
  OUTLINED_FUNCTION_3(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  if (OUTLINED_FUNCTION_4())
  {
    goto LABEL_8;
  }

  if (AMSupportDigestSha256(v2))
  {
    goto LABEL_8;
  }

  v12 = malloc_type_calloc(1uLL, 8 * v3, 0x16E553F1uLL);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  result = ccrsa_sign_pkcs1v15();
  if (result)
  {
    free(v13);
LABEL_8:
    result = 6;
    goto LABEL_6;
  }

  *v1 = v13;
  *v0 = 8 * v3;
LABEL_6:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportRsaCreateSignatureSha384()
{
  OUTLINED_FUNCTION_2();
  v17 = *MEMORY[0x29EDCA608];
  v3 = OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  v4 = MEMORY[0x2A1C7C4A8]();
  OUTLINED_FUNCTION_3(v4, v5, v6, v7, v8, v9, v10, v11, v16);
  if (OUTLINED_FUNCTION_4())
  {
    goto LABEL_8;
  }

  if (AMSupportDigestSha384(v2))
  {
    goto LABEL_8;
  }

  v12 = malloc_type_calloc(1uLL, 8 * v3, 0xC77289C0uLL);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  result = ccrsa_sign_pkcs1v15();
  if (result)
  {
    free(v13);
LABEL_8:
    result = 6;
    goto LABEL_6;
  }

  *v1 = v13;
  *v0 = 8 * v3;
LABEL_6:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportRsaVerifySignatureSha1()
{
  OUTLINED_FUNCTION_1_0(*MEMORY[0x29EDCA608]);
  if (v3 == 20)
  {
    v4 = OUTLINED_FUNCTION_5(v1, "\x06\x05+\x0E\x03\x02\x1A", v2);
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      v0 = 2;
    }

    else
    {
      v0 = v5;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t verify_pkcs1_sig_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24[201] = *MEMORY[0x29EDCA608];
  v24[199] = 0;
  v24[200] = 0;
  bzero(v24, 0x638uLL);
  v23 = 64;
  v7 = *(a1 + 8);
  v22[0] = *a1;
  v22[1] = v7;
  memset(v21, 0, sizeof(v21));
  if (DERParseSequence(v22, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v21, 0x20uLL))
  {
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v8 = *(&v21[0] + 1);
  v9 = *&v21[0];
  if (*(&v21[0] + 1))
  {
    v10 = 7;
    while (!*v9)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    v10 = v8 + 7;
    if ((v8 + 7) >= 0x208)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 7;
  }

LABEL_10:
  v23 = v10 >> 3;
  result = ccrsa_make_pub();
  if (result)
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29EDCA4E8] && MEMORY[0x2A1C7C4C8])
  {
    v13 = *a3;
    v12 = a3[1];
    v15 = *a4;
    v14 = a4[1];
    result = ccrsa_verify_pkcs1v15_digest();
    if (result)
    {
      goto LABEL_18;
    }

    cc_cmp_safe();
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  LOBYTE(v21[0]) = 0;
  v17 = *a3;
  v16 = a3[1];
  v19 = *a4;
  v18 = a4[1];
  result = ccrsa_verify_pkcs1v15();
  if (!result && (v21[0] & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportRsaVerifySignatureSha256()
{
  OUTLINED_FUNCTION_1_0(*MEMORY[0x29EDCA608]);
  if (v3 == 32)
  {
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      v0 = 2;
    }

    else
    {
      v0 = v5;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t AMSupportRsaVerifySignatureSha384()
{
  OUTLINED_FUNCTION_1_0(*MEMORY[0x29EDCA608]);
  if (v3 == 48)
  {
    if (v4)
    {
      v5 = v0;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == -13)
    {
      v0 = 2;
    }

    else
    {
      v0 = v5;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t AMSupportRsaCreateKeyFromPEMBuffer(uint64_t a1, size_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[1] = *MEMORY[0x29EDCA608];
  v29 = 0;
  v30[0] = 0;
  v27 = 0;
  v28 = 0;
  if (a3 == a4)
  {
    v9 = AMSupportRsaCreateDataFromPem(a1, a2, &v28, &v27, a5, a6, a7, a8);
    v10 = v28;
    if (v9)
    {
      v8 = v9;
      goto LABEL_17;
    }

    if (!v28)
    {
      v8 = 14;
      goto LABEL_19;
    }

    v11 = v27;
    if (v27 >= 0x19 && !memcmp(v28, &rsa_oid, 0x18uLL))
    {
      v12 = v11 - 24;
      v13 = malloc_type_calloc(1uLL, v12, 0x175AB14AuLL);
      v10 = v28;
      if (!v13)
      {
        v8 = 2;
        goto LABEL_17;
      }

      v8 = v13;
      memcpy(v13, v28 + 24, v12);
      free(v28);
      v27 = v12;
    }

    OUTLINED_FUNCTION_7();
    goto LABEL_19;
  }

  if (a4 && !a3)
  {
    v8 = 6;
    goto LABEL_19;
  }

  v14 = AMSupportRsaCreateDataFromPem(a1, a2, v30, &v29, a5, a6, a7, a8);
  if (v14)
  {
    v8 = v14;
    goto LABEL_19;
  }

  v15 = ccrsa_import_priv_n();
  OUTLINED_FUNCTION_0_1();
  v16 = MEMORY[0x2A1C7C4A8]();
  OUTLINED_FUNCTION_3(v16, v17, v18, v19, v20, v21, v22, v23, v26);
  *v8 = v15;
  if (ccrsa_import_priv())
  {
    v10 = 0;
LABEL_26:
    v8 = 6;
    goto LABEL_17;
  }

  v8 = ccrsa_ctx_public();
  v27 = MEMORY[0x29C28A4F0]();
  v10 = malloc_type_calloc(1uLL, v27, 0x9033753DuLL);
  v28 = v10;
  if (v10)
  {
    if (!ccrsa_export_pub())
    {
      OUTLINED_FUNCTION_7();
      v10 = 0;
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v8 = 2;
LABEL_17:
  if (v10)
  {
    free(v10);
  }

LABEL_19:
  if (v30[0])
  {
    free(v30[0]);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t AMSupportWriteDictionarytoFileURLWithFormat(const __CFAllocator *a1, const void *a2, const __CFURL *a3, CFPropertyListFormat format)
{
  error[1] = *MEMORY[0x29EDCA608];
  error[0] = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Data = CFPropertyListCreateData(a1, a2, format, 0, error);
    if (Data)
    {
      v14 = Data;
      v4 = _AMSupportPlatformWriteDataToFileURLInternal(Data, a3, 0);
      CFRelease(v14);
    }

    else
    {
      v4 = 3;
      AMSupportLogInternal(3, "AMSupportWriteDictionarytoFileURLWithFormat", "failed to create data: %@", v7, v8, v9, v10, v11, error[0]);
    }

    if (error[0])
    {
      CFRelease(error[0]);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AMSupportCFDictionaryGetBoolean(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v16 = "dict is NULL";
LABEL_13:
    AMSupportLogInternal(3, "AMSupportCFDictionaryGetBoolean", v16, a4, a5, a6, a7, a8, v17);
    return a3;
  }

  if (!a2)
  {
    v16 = "key is NULL";
    goto LABEL_13;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    v16 = "dict is not CFDictionary";
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v13 = Value;
  v14 = CFBooleanGetTypeID();
  if (v14 != CFGetTypeID(v13))
  {
    v16 = "dict value is not CFBoolean";
    goto LABEL_13;
  }

  return CFBooleanGetValue(v13);
}

uint64_t AMSupportCopySetValueAtTypedKeypath(CFStringRef theString, const __CFString *a2, uint64_t a3, const __CFDictionary **a4)
{
  v49 = *MEMORY[0x29EDCA608];
  cf = 0;
  v4 = 1;
  if (!theString || !a4 || !*a4)
  {
    goto LABEL_47;
  }

  v8 = *MEMORY[0x29EDB8ED8];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x29EDB8ED8], theString, @":");
  if (!ArrayBySeparatingStrings)
  {
    v4 = 2;
    goto LABEL_47;
  }

  v10 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
  {
    v4 = 2;
    goto LABEL_45;
  }

  if (CFArrayGetCount(v10) >= 4)
  {
    v38 = "Too many delimiters in argument";
    goto LABEL_53;
  }

  if (!a2 && CFArrayGetCount(v10) <= 1)
  {
    v38 = "Too few delimiters in argument";
    goto LABEL_53;
  }

  if (CFArrayGetCount(v10) == 1)
  {
    v16 = v10;
    v17 = 0;
LABEL_13:
    ValueAtIndex = CFArrayGetValueAtIndex(v16, v17);
    v19 = ValueAtIndex;
    goto LABEL_14;
  }

  if (CFArrayGetCount(v10) == 2)
  {
    a2 = CFArrayGetValueAtIndex(v10, 0);
    v16 = v10;
    v17 = 1;
    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetCount(v10);
  if (ValueAtIndex == 3)
  {
    a2 = CFArrayGetValueAtIndex(v10, 0);
    v19 = CFArrayGetValueAtIndex(v10, 2);
    ValueAtIndex = CFArrayGetValueAtIndex(v10, 1);
    a3 = ValueAtIndex;
  }

  else
  {
    a2 = 0;
    v19 = 0;
  }

LABEL_14:
  if (!a3)
  {
    v38 = "No default type, nor one specified in argument";
    goto LABEL_53;
  }

  v20 = OUTLINED_FUNCTION_2_0(ValueAtIndex, @"sint32");
  if (v20 == kCFCompareEqualTo)
  {
    valuePtr = 0;
    if (!AMSupportCFStringToUInt32(v19, &valuePtr))
    {
      v25 = "Failed to convert argument to uint32";
      goto LABEL_33;
    }

    v26 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    cf = v26;
    if (!v26)
    {
      v25 = "tmpResult (Number) is NULL";
      goto LABEL_33;
    }

    URLFromString = v26;
    goto LABEL_44;
  }

  v21 = OUTLINED_FUNCTION_2_0(v20, @"data");
  if (v21 == kCFCompareEqualTo)
  {
    v39 = OUTLINED_FUNCTION_1_1();
    if (!AMSupportCopyDataFromHexString(v39, v40, v41))
    {
      URLFromString = cf;
    }

    v38 = "Failed to parse hex encoded data.";
    goto LABEL_53;
  }

  v22 = OUTLINED_FUNCTION_2_0(v21, @"BOOL");
  if (v22 == kCFCompareEqualTo)
  {
    v27 = OUTLINED_FUNCTION_3_0(0, @"yes");
    if (v27 && OUTLINED_FUNCTION_3_0(v27, @"true") && (v28 = CFStringCompare(v19, @"1", 0)) != kCFCompareEqualTo)
    {
      v29 = OUTLINED_FUNCTION_3_0(v28, @"no");
      if (v29 && OUTLINED_FUNCTION_3_0(v29, @"false") && CFStringCompare(v19, @"0", 0))
      {
        v25 = "Unrecognized Boolean value. (yes/no, true/false, 1/0)";
        goto LABEL_33;
      }

      v42 = MEMORY[0x29EDB8EF8];
    }

    else
    {
      v42 = MEMORY[0x29EDB8F00];
    }

    URLFromString = *v42;
    cf = *v42;
    goto LABEL_44;
  }

  v23 = OUTLINED_FUNCTION_2_0(v22, @"string");
  if (v23 == kCFCompareEqualTo)
  {
    URLFromString = CFRetain(v19);
    cf = URLFromString;
LABEL_44:
    v43 = AMSupportCopySetValueForKeyPathInDict(v8, *a4, a2, URLFromString, v12, v13, v14, v15);
    v4 = 0;
    *a4 = v43;
    goto LABEL_45;
  }

  if (OUTLINED_FUNCTION_2_0(v23, @"url"))
  {
    v25 = "Unrecognized data type.";
LABEL_33:
    AMSupportLogInternal(3, "AMSupportCopySetValueAtTypedKeypath", v25, v24, v12, v13, v14, v15, v46);
    v4 = 99;
    goto LABEL_45;
  }

  v30 = OUTLINED_FUNCTION_1_1();
  URLFromString = AMSupportCreateURLFromString(v30, v31, v32, v33, v34, v35, v36, v37);
  cf = URLFromString;
  if (URLFromString)
  {
    goto LABEL_44;
  }

  v38 = "Failed to parse URL.";
LABEL_53:
  AMSupportLogInternal(3, "AMSupportCopySetValueAtTypedKeypath", v38, URLFromString, v12, v13, v14, v15, v46);
  v4 = 1;
LABEL_45:
  CFRelease(v10);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_47:
  v44 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AMSupportCopyDataFromHexString(const __CFAllocator *a1, const __CFString *a2, CFDataRef *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = 1;
  if (a2)
  {
    if (a3)
    {
      bzero(buffer, 0x200uLL);
      v3 = 3;
      if (CFStringGetCString(a2, buffer, 512, 0x8000100u))
      {
        v9 = AMSupportCopyDataFromAsciiEncodedHex(a1, buffer, 0x200uLL);
        *a3 = v9;
        if (v9)
        {
          v3 = 0;
        }

        else
        {
          v3 = 3;
        }
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

CFTypeRef AMSupportCopySetValueForKeyPathInDict(const __CFAllocator *a1, const __CFDictionary *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v40 = "dict is NULL";
LABEL_27:
    AMSupportLogInternal(3, "AMSupportCopySetValueForKeyPathInDict", v40, a4, a5, a6, a7, a8, v41);
    return 0;
  }

  if (!a3)
  {
    v40 = "keyPath is NULL";
    goto LABEL_27;
  }

  v9 = a4;
  if (!a4)
  {
    AMSupportLogInternal(3, "AMSupportCopySetValueForKeyPathInDict", "value is NULL", 0, a5, a6, a7, a8, v41);
    return v9;
  }

  location = CFStringFind(a3, @".", 0).location;
  if (location == -1)
  {
    Count = CFDictionaryGetCount(a2);
    MutableCopy = CFDictionaryCreateMutableCopy(a1, Count, a2);
    if (MutableCopy)
    {
      v36 = MutableCopy;
      CFDictionarySetValue(MutableCopy, a3, v9);
      v9 = CFRetain(v36);
      v37 = v36;
LABEL_20:
      CFRelease(v37);
      return v9;
    }

    return 0;
  }

  v13 = location;
  v14 = location + 1;
  v42.length = CFStringGetLength(a3) - (location + 1);
  v42.location = v14;
  v15 = CFStringCreateWithSubstring(a1, a3, v42);
  if (!v15)
  {
    v40 = "failed to create key substring";
    goto LABEL_27;
  }

  v16 = v15;
  v43.location = 0;
  v43.length = v13;
  v17 = CFStringCreateWithSubstring(a1, a3, v43);
  if (!v17)
  {
    AMSupportLogInternal(3, "AMSupportCopySetValueForKeyPathInDict", "failed to create current substring", v18, v19, v20, v21, v22, v41);
    CFRelease(v16);
    return 0;
  }

  v23 = v17;
  Value = CFDictionaryGetValue(a2, v17);
  if (Value)
  {
    v25 = Value;
    v26 = CFGetTypeID(Value);
    if (v26 != CFDictionaryGetTypeID())
    {
      AMSupportLogInternal(3, "AMSupportCopySetValueForKeyPathInDict", "item %@ not a dictionary", v27, v28, v29, v30, v31, v23);
      v9 = 0;
      Mutable = 0;
LABEL_10:
      v33 = 0;
      goto LABEL_16;
    }

    Mutable = CFDictionaryCreateMutableCopy(a1, 0, v25);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      v9 = 0;
      goto LABEL_10;
    }
  }

  v33 = AMSupportCopySetValueForKeyPathInDict(a1, Mutable, v16, v9);
  v38 = CFDictionaryCreateMutableCopy(a1, 0, a2);
  v9 = v38;
  if (v38)
  {
    CFDictionarySetValue(v38, v23, v33);
  }

LABEL_16:
  CFRelease(v16);
  CFRelease(v23);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v33)
  {
    v37 = v33;
    goto LABEL_20;
  }

  return v9;
}

CFDataRef AMSupportCopyDataFromAsciiEncodedHex(const __CFAllocator *a1, _BYTE *a2, unint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_20;
  }

  if (a3 >= 2 && *a2 == 48)
  {
    v6 = 2 * (((a2[1] - 88) & 0xDF) == 0);
  }

  else
  {
    v6 = 0;
  }

  v7 = a3 & 1;
  v8 = malloc_type_malloc((v7 + a3 - v6) >> 1, 0x100004077774924uLL);
  if (!v8)
  {
    AMSupportLogInternal(3, "AMSupportCopyDataFromAsciiEncodedHex", "malloc() returned NULL", v9, v10, v11, v12, v13, v23);
    goto LABEL_20;
  }

  v14 = v8;
  v15 = v6;
  v24 = 0;
  if (v6 >= a3)
  {
    goto LABEL_19;
  }

  v16 = 0;
  v17 = v7 == 0;
  do
  {
    if (!a2[v15])
    {
      break;
    }

    if (!AMSupportHexAsciiToNumeric(a2[v15], &v24 + 1))
    {
      goto LABEL_19;
    }

    v18 = v6 + 1;
    if (v17)
    {
      if (!a2[v18] || !AMSupportHexAsciiToNumeric(a2[v18], &v24))
      {
        goto LABEL_19;
      }

      v18 = v6 + 2;
      v19 = v24;
      v20 = 16 * HIBYTE(v24);
    }

    else
    {
      v20 = 0;
      v19 = HIBYTE(v24);
      v24 = HIBYTE(v24);
    }

    v14[v16++] = v20 | v19;
    v15 = v18;
    v17 = 1;
    v6 = v18;
  }

  while (v18 < a3);
  if (!v16 || (result = CFDataCreateWithBytesNoCopy(a1, v14, v16, *MEMORY[0x29EDB8EE0])) == 0)
  {
LABEL_19:
    free(v14);
LABEL_20:
    result = 0;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportGetUInt32(const __CFNumber *a1, _DWORD *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v11 = 1;
    goto LABEL_11;
  }

  valuePtr = 0;
  v16 = 0;
  Type = CFNumberGetType(a1);
  if (Type == kCFNumberSInt64Type)
  {
    if (CFNumberGetValue(a1, kCFNumberSInt64Type, &v16))
    {
      v10 = v16;
      goto LABEL_8;
    }

    v15 = "AMSupportGetUInt32";
    v12 = "%s: failed to convert 64-bit value";
LABEL_10:
    v11 = 3;
    AMSupportLogInternal(3, "AMSupportGetUInt32", v12, v5, v6, v7, v8, v9, v15);
    goto LABEL_11;
  }

  if (Type != kCFNumberSInt32Type)
  {
    LOBYTE(v15) = Type;
    v12 = "Incoming CFNumberRef is of unexpected type %d";
    goto LABEL_10;
  }

  if (!CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr))
  {
    v15 = "AMSupportGetUInt32";
    v12 = "%s: failed to convert 32-bit value";
    goto LABEL_10;
  }

  v10 = valuePtr;
LABEL_8:
  v11 = 0;
  *a2 = v10;
LABEL_11:
  v13 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t AMSupportRemoveFile(const __CFURL *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = 0;
  result = AMSupportPlatformFileURLExists(a1, &v4);
  if (!result)
  {
    if (!v4 || (result = AMSupportPlatformRemoveFile(a1), !result))
    {
      result = 0;
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportWriteDataToFileURL(const __CFAllocator *a1, const __CFData *a2, const __CFURL *cf, int a4)
{
  cfa[1] = *MEMORY[0x29EDCA608];
  cfa[0] = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    v14 = AMSupportRemoveFile(cf);
    if (v14)
    {
LABEL_12:
      v4 = v14;
      goto LABEL_13;
    }

    v13 = 0;
LABEL_8:
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = cf;
    }

    v14 = _AMSupportPlatformWriteDataToFileURLInternal(a2, v15, 0);
    goto LABEL_12;
  }

  v7 = AMSupportCopyPreserveFileURL(a1, cf, cfa, 1);
  if (!v7)
  {
    v13 = cfa[0];
    goto LABEL_8;
  }

  v4 = v7;
  AMSupportLogInternal(3, "AMSupportWriteDataToFileURL", "AMSupportCopyPreserveFileURL failed.", v8, v9, v10, v11, v12, cfa[0]);
LABEL_13:
  if (cfa[0])
  {
    CFRelease(cfa[0]);
  }

LABEL_15:
  v16 = *MEMORY[0x29EDCA608];
  return v4;
}

CFIndex AMSupportApplyDictionaryOverrides(int a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3, const __CFString *a4)
{
  Count = 1;
  if (theDict && a3 && *a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v10 = v9;
    if (v8 && v9)
    {
      CFDictionaryGetKeysAndValues(theDict, v8, v9);
      if (Count < 1)
      {
        Count = 0;
        goto LABEL_17;
      }

      v16 = "invalid overridesKey";
      v17 = v8;
      v18 = v10;
      while (1)
      {
        v19 = *v17;
        if (!*v17)
        {
LABEL_22:
          AMSupportLogInternal(3, "AMSupportApplyDictionaryOverrides", v16, v11, v12, v13, v14, v15, v22);
          Count = 99;
          goto LABEL_17;
        }

        v20 = *v18;
        if (!*v18)
        {
          v16 = "invalid overridesValue";
          goto LABEL_22;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (CFStringFind(*v17, a4, 0).location != -1)
        {
          break;
        }

LABEL_14:
        ++v18;
        ++v17;
        if (!--Count)
        {
          goto LABEL_17;
        }
      }

      v19 = *v17;
      v20 = *v18;
LABEL_13:
      CFDictionarySetValue(*a3, v19, v20);
      goto LABEL_14;
    }

    Count = 2;
    if (v8)
    {
LABEL_17:
      free(v8);
    }

    if (v10)
    {
      free(v10);
    }
  }

  return Count;
}

uint64_t AMSupportCopyFile(const __CFAllocator *a1, const void *a2, const __CFURL *a3)
{
  cf[1] = *MEMORY[0x29EDCA608];
  cf[0] = 0;
  v3 = 1;
  if (!a2 || !a3)
  {
    goto LABEL_8;
  }

  DirectoryForURL = AMSupportPlatformMakeDirectoryForURL(a3);
  if (DirectoryForURL)
  {
    v3 = DirectoryForURL;
    v16 = "AMSupportMakeDirectory failed.";
  }

  else
  {
    DataFromFileURLInternal = _AMSupportCreateDataFromFileURLInternal(a1, cf, a2, 1);
    if (DataFromFileURLInternal)
    {
      v3 = DataFromFileURLInternal;
      v16 = "AMSupportCreateDataFromFileURL failed.";
    }

    else
    {
      v3 = AMSupportWriteDataToFileURL(*MEMORY[0x29EDB8ED8], cf[0], a3, 1);
      if (!v3)
      {
        goto LABEL_6;
      }

      v16 = "AMSupportWriteDataToFileURL failed.";
    }
  }

  AMSupportLogInternal(3, "AMSupportCopyFile", v16, v8, v9, v10, v11, v12, cf[0]);
LABEL_6:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_8:
  v14 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t AMSupportCopyStringReplacingLastComponent(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3, const void *a4, CFTypeRef *a5)
{
  v5 = 1;
  if (a2 && a4 && a5)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, a2, a3);
    if (!ArrayBySeparatingStrings)
    {
      return 3;
    }

    v11 = ArrayBySeparatingStrings;
    MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
    if (!MutableCopy)
    {
      v5 = 3;
      v16 = v11;
LABEL_9:
      CFRelease(v16);
      return v5;
    }

    v13 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    CFArraySetValueAtIndex(v13, Count - 1, a4);
    v15 = CFStringCreateByCombiningStrings(a1, v13, a3);
    v16 = v15;
    if (v15)
    {
      v5 = 0;
      *a5 = CFRetain(v15);
    }

    else
    {
      v5 = 3;
    }

    CFRelease(v11);
    CFRelease(v13);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t AMSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  theDict[1] = *MEMORY[0x29EDCA608];
  theDict[0] = 0;
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_35;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v10)
  {
LABEL_40:
    v4 = 2;
    goto LABEL_35;
  }

  v11 = v10;
  v12 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (!v12)
  {
    free(v11);
    goto LABEL_40;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  if (Count < 1)
  {
    v23 = 0;
    v4 = 0;
    Mutable = 0;
    goto LABEL_31;
  }

  v14 = MEMORY[0x29EDB9020];
  v26 = v13;
  v27 = v11;
  while (1)
  {
    v15 = *v11;
    if (!*a4)
    {
      *a4 = CFDictionaryCreateMutableCopy(a1, 0, a2);
    }

    v16 = CFGetTypeID(*v13);
    if (v16 == CFDictionaryGetTypeID())
    {
      break;
    }

    v20 = theDict[0];
    MutableCopy = *a4;
    if (theDict[0])
    {
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
        v20 = theDict[0];
      }

      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, v20);
      *a4 = MutableCopy;
    }

    if (!MutableCopy)
    {
      Mutable = 0;
LABEL_37:
      v4 = 2;
      goto LABEL_29;
    }

    CFDictionarySetValue(MutableCopy, v15, *v13);
    Mutable = 0;
LABEL_23:
    if (theDict[0])
    {
      CFRelease(theDict[0]);
      theDict[0] = 0;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v13;
    ++v11;
    if (!--Count)
    {
      v4 = 0;
      Mutable = 0;
      goto LABEL_29;
    }
  }

  Value = CFDictionaryGetValue(a2, v15);
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
    v19 = CFGetTypeID(Mutable);
    if (v19 != CFDictionaryGetTypeID())
    {
      v4 = 8;
      goto LABEL_29;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x29EDB9010], v14);
    if (!Mutable)
    {
      goto LABEL_37;
    }
  }

  MergedDictionary = AMSupportCreateMergedDictionary(a1, Mutable, *v13, theDict);
  if (!MergedDictionary)
  {
    CFDictionarySetValue(*a4, v15, theDict[0]);
    goto LABEL_23;
  }

  v4 = MergedDictionary;
LABEL_29:
  v11 = v27;
  v23 = theDict[0];
  v13 = v26;
LABEL_31:
  free(v11);
  free(v13);
  if (v23)
  {
    CFRelease(v23);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_35:
  v24 = *MEMORY[0x29EDCA608];
  return v4;
}

void AMSupportApplyBlockToDictionary(const __CFDictionary *a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    return;
  }

  v5 = Count;
  v6 = OUTLINED_FUNCTION_1_1();
  v8 = malloc_type_malloc(v6, v7);
  v9 = OUTLINED_FUNCTION_1_1();
  v11 = malloc_type_malloc(v9, v10);
  v12 = v11;
  if (v8 && v11)
  {
    CFDictionaryGetKeysAndValues(a1, v8, v11);
    v13 = v5 - 1;
    if (v5 >= 1)
    {
      v14 = v8;
      v15 = v12;
      do
      {
        v17 = *v14++;
        v16 = v17;
        v18 = *v15++;
        v19 = (*(a2 + 16))(a2, v16, v18);
        v21 = v13-- != 0;
      }

      while (v19 && v21);
    }

    goto LABEL_13;
  }

  if (v8)
  {
LABEL_13:
    free(v8);
  }

  if (v12)
  {

    free(v12);
  }
}

uint64_t _AMSupportPlatformWriteDataToFileURLInternal(const __CFData *a1, const __CFURL *a2, int a3)
{
  v5 = AMSupportPlatformOpenFileStreamWithURL(a2, "wb");
  if (!v5)
  {
    return 4;
  }

  v6 = v5;
  if (a3)
  {
    v7 = fileno(v5);
    fcntl(v7, 48, 1);
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v10 = 4 * (fwrite(BytePtr, 1uLL, Length, v6) != Length);
  fclose(v6);
  return v10;
}

void AMSupportCreateCStringFromCFString_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMSupportLogInternal(3, "AMSupportCreateCStringFromCFString", "outStringLength is NULL", a4, a5, a6, a7, a8, v9);

  free(a1);
}

uint64_t AMSupportHttpCreatePostBody(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = 1;
  if (!a2)
  {
    OUTLINED_FUNCTION_1_2();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_2();
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    Mutable = CFStringCreateMutable(v10, 0);
    if (Mutable)
    {
      Count = CFDictionaryGetCount(v13);
      v4 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v16 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      v5 = v16;
      if (v4)
      {
        if (v16)
        {
          CFDictionaryGetKeysAndValues(v13, v4, v16);
          if (Count >= 1)
          {
            v27 = 0;
            while (1)
            {
              v28 = v4[v27];
              if (!v28)
              {
                v47 = "invalid requestDictKeysBuffer array";
                goto LABEL_20;
              }

              if (!v5[v27])
              {
                break;
              }

              CFStringAppend(Mutable, v28);
              CFStringAppend(Mutable, @"=");
              CFStringAppend(Mutable, v5[v27]);
              if (v27 < Count - 1)
              {
                CFStringAppend(Mutable, @"&");
              }

              if (Count == ++v27)
              {
                goto LABEL_13;
              }
            }

            v47 = "invalid requestDictValuesBuffer array";
LABEL_20:
            AMSupportLogInternal(3, "AMSupportHttpCreatePostBody", v47, v22, v23, v24, v25, v26, v49);
            v7 = 0;
            v6 = 0;
            v8 = 14;
            goto LABEL_17;
          }

LABEL_13:
          AMSupportLogInternal(8, "AMSupportHttpCreatePostBody", "postString=%@", v22, v23, v24, v25, v26, Mutable);
          Length = CFStringGetLength(Mutable);
          v6 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
          if (v6)
          {
            if (!CFStringGetCString(Mutable, v6, Length + 1, 0x8000100u))
            {
              v8 = 3;
              AMSupportLogInternal(3, "AMSupportHttpCreatePostBody", "conversion of postString to c-string failed", v35, v36, v37, v38, v39, v50);
              v7 = 0;
              goto LABEL_17;
            }

            v40 = CFDataCreate(v14, v6, Length);
            v7 = v40;
            if (v40)
            {
              v8 = 0;
              *a3 = CFRetain(v40);
              goto LABEL_17;
            }

            AMSupportLogInternal(3, "AMSupportHttpCreatePostBody", "postData allocation failed", v41, v42, v43, v44, v45, v50);
          }

          else
          {
            AMSupportLogInternal(3, "AMSupportHttpCreatePostBody", "tmpStringBuffer allocation failure", v30, v31, v32, v33, v34, v50);
            v7 = 0;
          }

LABEL_30:
          v8 = 2;
          goto LABEL_17;
        }

        v48 = "requestDictValuesBuffer allocation failed";
      }

      else
      {
        v48 = "requestDictKeysBuffer allocation failed";
      }

      AMSupportLogInternal(3, "AMSupportHttpCreatePostBody", v48, v17, v18, v19, v20, v21, v49);
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_30;
  }

LABEL_17:
  AMSupportSafeRelease(Mutable);
  AMSupportSafeRelease(v7);
  AMSupportSafeFree(v4);
  AMSupportSafeFree(v5);
  AMSupportSafeFree(v6);
  return v8;
}

uint64_t AMSupportHttpSetUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFStringRef theString, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value[1] = *MEMORY[0x29EDCA608];
  value[0] = 0;
  v8 = 1;
  if (a2 && a3 && theString)
  {
    v11 = AMSupportHttpUriEscapeString(a1, theString, value, theString, a5, a6, a7, a8);
    if (v11)
    {
      v8 = v11;
      v19 = "AMSupportHttpUriEscapeString failed";
    }

    else
    {
      if (value[0])
      {
        CFDictionarySetValue(a2, a3, value[0]);
        v8 = 0;
        goto LABEL_7;
      }

      v19 = "escapedValue is NULL";
      v8 = 3;
    }

    AMSupportLogInternal(3, "AMSupportHttpSetUriEscapedValue", v19, v12, v13, v14, v15, v16, value[0]);
  }

LABEL_7:
  AMSupportSafeRelease(value[0]);
  v17 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t AMSupportHttpCreatePostRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, CFTypeRef *a4)
{
  Request = 0;
  theData[1] = *MEMORY[0x29EDCA608];
  theData[0] = 0;
  v5 = 1;
  if (a2 && a3)
  {
    v7 = 0;
    if (a4)
    {
      PostBody = AMSupportHttpCreatePostBody(a1, a3, theData);
      if (PostBody)
      {
        v5 = PostBody;
        AMSupportLogInternal(3, "AMSupportHttpCreatePostRequest", "AMSupportHttpCreatePostBody failed", v11, v12, v13, v14, v15, v19);
        Request = 0;
        v7 = 0;
      }

      else if (theData[0])
      {
        Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, *MEMORY[0x29EDB8528]);
        if (Request)
        {
          Length = CFDataGetLength(theData[0]);
          v7 = CFStringCreateWithFormat(a1, 0, @"%lu", Length);
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v7);
          CFHTTPMessageSetBody(Request, theData[0]);
          v5 = 0;
          *a4 = CFRetain(Request);
        }

        else
        {
          v7 = 0;
          v5 = 0;
        }
      }

      else
      {
        Request = 0;
        v7 = 0;
        v5 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  AMSupportSafeRelease(theData[0]);
  AMSupportSafeRelease(Request);
  AMSupportSafeRelease(v7);
  AMSupportSafeRelease(0);
  v17 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t AMSupportHttpSetBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDataRef theData, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theString[1] = *MEMORY[0x29EDCA608];
  theString[0] = 0;
  v8 = 1;
  if (a2 && a3 && theData)
  {
    v12 = AMSupportBase64Encode(a1, theData, theString, theData, a5, a6, a7, a8);
    if (v12)
    {
      v8 = v12;
      v20 = "Base64Encode failed";
    }

    else
    {
      v13 = theString[0];
      if (theString[0])
      {
        v8 = AMSupportHttpSetUriEscapedValue(a1, a2, a3, theString[0], v14, v15, v16, v17);
        goto LABEL_7;
      }

      v20 = "encodedValue is NULL";
      v8 = 3;
    }

    AMSupportLogInternal(3, "AMSupportHttpSetBase64EncodedValue", v20, v13, v14, v15, v16, v17, theString[0]);
  }

LABEL_7:
  AMSupportSafeRelease(theString[0]);
  v18 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t _AMSupportHttpMessageSendSyncNoRetry(__CFHTTPMessage *a1, void *a2, uint64_t a3, CFHTTPMessageRef *a4, void *a5, uint64_t a6)
{
  context = objc_autoreleasePoolPush();
  if (!a1)
  {
    AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncNoRetry", "httpRequest is NULL", v12, v13, v14, v15, v16, v44);
    v35 = 0;
    v36 = 0;
    v17 = 0;
    v42 = 1;
    goto LABEL_22;
  }

  v17 = objc_alloc_init(MEMORY[0x29EDB84F8]);
  v18 = CFHTTPMessageCopyRequestURL(a1);
  v19 = CFHTTPMessageCopyRequestMethod(a1);
  v20 = CFHTTPMessageCopyAllHeaderFields(a1);
  v21 = CFHTTPMessageCopyBody(a1);
  [v17 setURL:v18];
  [v17 setHTTPMethod:v19];
  [v17 setAllHTTPHeaderFields:v20];
  [v17 setHTTPBody:v21];

  if (!v17)
  {
    v42 = 3;
    AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncNoRetry", "request is nil", v22, v23, v24, v25, v26, v44);
    a1 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_22;
  }

  v27 = [a2 objectForKey:@"SocksProxySettings"];
  if (v27)
  {
    a1 = v27;
    v28 = v27;
LABEL_5:
    if (![v17 _CFURLRequest])
    {
      AMSupportLogInternal(4, "_AMSupportHttpMessageSendSyncNoRetry", "CFMutableRequestRef could not be retrieved to set proxy settings", v29, v30, v31, v32, v33, v44);
      v35 = 0;
      v36 = 0;
LABEL_26:
      v42 = 16;
      goto LABEL_22;
    }

    CFURLRequestSetProxySettings();
    goto LABEL_11;
  }

  if (([objc_msgSend(a2 objectForKey:{@"UsePurpleReverseProxy", "BOOLValue"}] & 1) == 0)
  {
    a1 = 0;
    goto LABEL_11;
  }

  a1 = AMSupportHttpCopyProxySettings(0, 0);
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_11:
  v34 = [a2 objectForKey:@"Timeout"];
  if (v34)
  {
    [v34 doubleValue];
    [v17 setTimeoutInterval:?];
  }

  v35 = [[AMSupportOSURLConnectionDelegate alloc] initWithData:a3 Options:a2];
  v36 = [objc_alloc(MEMORY[0x29EDB8500]) initWithRequest:v17 delegate:v35 startImmediately:1];
  v37 = [(AMSupportOSURLConnectionDelegate *)v35 waitForResponseOrError:a6];
  if (!v37)
  {
    goto LABEL_26;
  }

  v38 = v37;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a5)
    {
      *a5 = [v38 statusCode];
    }

    if (a4)
    {
      v39 = [(AMSupportOSURLConnectionDelegate *)v35 data];
      v40 = [v38 statusCode];
      Response = CFHTTPMessageCreateResponse(*MEMORY[0x29EDB8ED8], v40, [MEMORY[0x29EDB84F0] localizedStringForStatusCode:v40], @"HTTP/1.1");
      if (Response)
      {
        CFDictionaryApplyFunction([v38 allHeaderFields], _CFHTTPMessageSetHeader, Response);
        CFHTTPMessageSetBody(Response, v39);
      }

      *a4 = Response;
    }
  }

  v42 = 16 * ([(AMSupportOSURLConnectionDelegate *)v35 error]!= 0);
LABEL_22:

  objc_autoreleasePoolPop(context);
  return v42;
}

uint64_t AMSupportPlatformCopyLocalIPAddressString(const __CFAllocator *a1, CFTypeRef *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  bzero(v31, 0x100uLL);
  if (gethostname(v31, 0x100uLL))
  {
    v11 = __error();
    v12 = strerror(*v11);
    AMSupportLogInternal(3, "AMSupportPlatformCopyLocalIPAddressString", "gethostname() failed: %s", v13, v14, v15, v16, v17, v12);
LABEL_10:
    v7 = 0;
    v8 = 99;
    goto LABEL_6;
  }

  v4 = gethostbyname(v31);
  if (!v4)
  {
    v18 = hstrerror(*MEMORY[0x29EDCA678]);
    AMSupportLogInternal(3, "AMSupportPlatformCopyLocalIPAddressString", "gethostbyname() failed: %s", v19, v20, v21, v22, v23, v18);
    goto LABEL_10;
  }

  v5 = addr2ascii(2, *v4->h_addr_list, 4, 0);
  if (!v5)
  {
    v24 = __error();
    v25 = strerror(*v24);
    AMSupportLogInternal(3, "AMSupportPlatformCopyLocalIPAddressString", "addr2ascii() failed: %s", v26, v27, v28, v29, v30, v25);
    goto LABEL_10;
  }

  v6 = CFStringCreateWithCString(a1, v5, 0x8000100u);
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    *a2 = CFRetain(v6);
  }

  else
  {
    v8 = 3;
  }

LABEL_6:
  AMSupportSafeRelease(v7);
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_3();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1_3(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_3();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_3();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  result = 6;
  if (a1 && a2)
  {
    bzero(v12, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v12);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          result = 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6 || (OUTLINED_FUNCTION_1_3(), result = DERImg4DecodePayloadCompression(v5, v11), !result))
          {
            result = 0;
          }
        }
      }
    }

    else
    {
      v7 = v12[1];
      *a2 = v12[0];
      *(a2 + 16) = v7;
      v8 = v12[3];
      *(a2 + 32) = v12[2];
      *(a2 + 48) = v8;
      v9 = v12[5];
      *(a2 + 64) = v12[4];
      *(a2 + 80) = v9;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERImg4DecodeCertificatePropertiesAndPubKey(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              v21[0] = a1;
              v21[1] = a2;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              result = DERDecodeItem(v21, &v18);
              if (!result)
              {
                if (v18 != 0x2000000000000011)
                {
                  return 2;
                }

                if (!DERParseSequenceContentToObject(&v19, 2u, &DERIM4CItemSpecs, &v16, 0x20uLL, 0))
                {
                  result = DERDecodeItem(&v16, &v18);
                  if (result)
                  {
                    return result;
                  }

                  if (v18 != 0x2000000000000010)
                  {
                    return 2;
                  }

                  if (!DERParseSequenceContentToObject(&v19, 2u, &DERCRTPSequenceItemSpecs, &v14, 0x20uLL, 0))
                  {
                    v12 = *(&v15 + 1);
                    *a3 = v15;
                    *a4 = v12;
                    result = DERDecodeItem(&v17, &v18);
                    if (result)
                    {
                      return result;
                    }

                    if (v18 == 4)
                    {
                      result = 0;
                      v13 = v20;
                      *a5 = v19;
                      *a6 = v13;
                      return result;
                    }

                    return 2;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_3();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v9 = 0;
  v10[0] = 0;
  v10[2] = 0;
  v10[1] = 22;
  v10[3] = 24;
  v11 = a3;
  result = DERParseSequenceToObject(a1, 2u, v10, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v9);
    if (!result)
    {
      if ((v9 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        result = 2;
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

void Img4DecodeCopyPayloadDigest(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v12[7] = *MEMORY[0x29EDCA608];
  if (a1 && a2 && a3 && a4 && *a4 && *(a1 + 136) && *(a1 + 144) && a3 <= 0x30)
  {
    if (*a1 == 1)
    {
      v6 = (a1 + 184);
      v7 = a2;
LABEL_15:
      memcpy(v7, v6, a3);
      goto LABEL_16;
    }

    v10 = OUTLINED_FUNCTION_0_4();
    if (**(a4 + 32) <= 0x30uLL && !v9(*(v8 + 8), *(v8 + 16), v12, v10))
    {
      a3 = **(a4 + 32);
      v6 = v12;
      v7 = a2;
      goto LABEL_15;
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

uint64_t Img4DecodeCopyManifestDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v13[7] = *MEMORY[0x29EDCA608];
  v4 = 6;
  if (a1 && a2 && a3 && a4 && *a4)
  {
    if (*(a1 + 24))
    {
      if (a3 > 0x30)
      {
        v4 = 7;
      }

      else if (*(a1 + 1) == 1)
      {
        OUTLINED_FUNCTION_6_0(a1, (a1 + 328));
        v4 = 0;
      }

      else
      {
        v6 = OUTLINED_FUNCTION_0_4();
        v10 = v9(v8, *(v7 + 32), v13, a3, v6);
        v4 = v10;
        if (!v10)
        {
          OUTLINED_FUNCTION_6_0(v10, v13);
        }
      }
    }

    else
    {
      v4 = 1;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1);
    result = 6;
    if (v1)
    {
      v5 = *(v2 + 8);
      v4 = v2 + 8;
      if (v5)
      {
        result = DERImg4DecodePayloadWithProperties(v4, v7);
        if (!result)
        {
          *v1 = v8 != 0;
        }
      }
    }
  }

  else
  {
    result = 6;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Img4DecodeGetPayloadProperties(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_0(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v8);
      if (!result)
      {
        if (v9)
        {
          result = 0;
          v6 = v10;
          *v1 = v9;
          v1[1] = v6;
          goto LABEL_8;
        }

LABEL_7:
        result = 6;
      }
    }
  }

LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Img4DecodeCopyPayloadPropertiesDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v11[7] = *MEMORY[0x29EDCA608];
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a3 > 0x30)
    {
      result = 7;
    }

    else if (a4)
    {
      if (*a4)
      {
        v7 = OUTLINED_FUNCTION_0_4();
        result = v9(*v8, v8[1], v11, a3, v7);
        if (!result)
        {
          OUTLINED_FUNCTION_6_0(result, v11);
          result = 0;
        }
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void Img4DecodePayloadPropertiesFindItemWithTag(unint64_t *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      if (*a1)
      {
        DERImg4DecodeContentFindItemWithTag(a1, 0x2000000000000010, &v11);
        if (!v5)
        {
          if (v11)
          {
            DERImg4DecodeContentFindItemWithTag(&v11, 22, &v13);
            if (!v6 && !DERImg4DecodeTagCompare(&v13, 0x50415950u))
            {
              DERImg4DecodeContentFindItemWithTag(&v11, 0x2000000000000011, &v12);
              if (!v7 && !DERDecodeSeqContentInit(&v12, v23))
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      v8 = DERDecodeSeqNext(v23, &v20);
                      if (!v8)
                      {
                        break;
                      }

                      if (v8 == 1)
                      {
                        return;
                      }
                    }
                  }

                  while (DERDecodeItem(v21, &v18));
                  DERImg4DecodeContentFindItemWithTag(v19, 22, &v13);
                  if (v9)
                  {
                    break;
                  }

                  if (!DERImg4DecodeTagCompare(&v13, a2) && !DERDecodeSeqContentInit(v19, v22) && !DERDecodeSeqNext(v22, v17) && v17[0] == 22 && !DERDecodeSeqNext(v22, &v14))
                  {
                    if (v15)
                    {
                      v10 = v16;
                      *a3 = v15;
                      a3[1] = v10;
                    }

                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeGetPayloadPropertiesBoolean()
{
  OUTLINED_FUNCTION_0_4();
  _Img4DecodePayloadPropertyExistsWithValue(v0, v1, 1uLL, &v5, 0);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_3_1();
    DERParseBoolean(v3, v4);
  }
}

void Img4DecodeGetPayloadPropertiesInteger()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3_1();
    DERParseInteger(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesInteger64()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_0(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3_1();
    DERParseInteger64(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_0_4();
  _Img4DecodePayloadPropertyExistsWithValue(v6, v7, 4uLL, v10, 0);
  if (!v8)
  {
    v9 = v10[4];
    *a3 = v10[3];
    *a4 = v9;
  }
}

uint64_t Img4DecodeGetObjectPropertyBoolean()
{
  OUTLINED_FUNCTION_0_4();
  v4 = 6;
  if (v0 && v3)
  {
    Img4DecodeGetObjectProperty(v0, v1, v2 | 0xE000000000000000, 1uLL, v9);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_3_1();
      return DERParseBoolean(v6, v7);
    }

    return v5;
  }

  return v4;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t Img4DecodeGetPropertyInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_4(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2_1(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyInteger64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_4(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2_1(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger64(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = OUTLINED_FUNCTION_2_1(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void Img4DecodeCopyManifestTrustedBootPolicyMeasurement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v18[26] = *MEMORY[0x29EDCA608];
  if (a4)
  {
    if (a5)
    {
      if (a5 <= 0x30)
      {
        bzero(v17, 0x100uLL);
        v11[0] = Img4DecodeDigestInit;
        v11[1] = Img4DecodeDigestUpdate;
        v11[2] = Img4DecodeDigestReturnHash;
        *&v14 = &default_manifest_property_exclude;
        *(&v14 + 1) = 156;
        v15 = a3;
        v16 = v11;
        Img4DecodeEvaluateCertificatePropertiesInternal(a1, &v14);
        if (!v8)
        {
          if (a1)
          {
            if (a2)
            {
              v12[0] = &v14;
              v12[1] = a2;
              v12[2] = a1;
              v13 = v18;
              if (!(*v16)(*(v15 + 32), &v13) && !Img4DecodeEvaluateDictionaryProperties(a1 + 7, 0, _Img4DecodeValidateManifestPropertyInterposer, v12))
              {
                v9 = (v16[2])(*(v15 + 32), &v13, 48, v17);
                if (!v9)
                {
                  OUTLINED_FUNCTION_6_0(v9, v17);
                }
              }
            }
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeEvaluateCertificateChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1 && a2 && a3 && a4 && a7 && a6)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      v9(a1);
      return 3;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateTrustWithCallbacks(unsigned int a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void, uint64_t), uint64_t a7)
{
  memset(v15, 0, sizeof(v15));
  result = 6;
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 24))
      {
        a6(*(a2 + 264), *(a2 + 272), a2 + 376);
        result = a4(*(a2 + 296), *(a2 + 304), *(a2 + 280), *(a2 + 288), a2 + 376, 20, a2 + 312, a2 + 320, a7);
        if (!result)
        {
          result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
          if (!result)
          {
            result = DERImg4DecodeFindProperty((a2 + 40), a1 | 0xE000000000000000, 0x2000000000000011uLL, v15);
            if (!result)
            {
              *(a2 + 72) = *(&v15[1] + 8);
              result = a5(a2, a7);
              if (!result)
              {
                if (*(a2 + 136) && *(a2 + 144))
                {
                  a6(*(a2 + 8), *(a2 + 16), a2 + 184);
                  *a2 = 1;
                }

                result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, a3, a7);
                if (!result)
                {
                  result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, a3, a7);
                  if (!result)
                  {
                    a6(*(a2 + 24), *(a2 + 32), a2 + 328);
                    result = 0;
                    *(a2 + 1) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeVerifyChainIM4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v25[10] = *MEMORY[0x29EDCA608];
  bzero(v20, 0x1C8uLL);
  result = 6;
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    if (Img4DecodeInitManifestCommon(a3, a4, 1, v20, 1229796419) || (*a9)(v21, v22, v25, **(a9 + 32), a9) || (*(a9 + 16))(a1, a2, v23, v24, v25, **(a9 + 32), a9, a10))
    {
      result = 0xFFFFFFFFLL;
    }

    else if (DERImg4DecodeCertificatePropertiesAndPubKey(v21, v22, a7, a8, a5, a6))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verify_signature_ml_dsa_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[325] = *MEMORY[0x29EDCA608];
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (!v11 || ((v12 = *v11, a2 == 2592) ? (v13 = v12 == a6) : (v13 = 0), !v13))
                    {
                      result = 0xFFFFFFFFLL;
                      goto LABEL_21;
                    }

                    if (!MEMORY[0x2A1C7C4B0])
                    {
                      goto LABEL_23;
                    }

                    ccmldsa87();
                    bzero(v15, 0xA28uLL);
                    if (!MEMORY[0x2A1C7C4B8])
                    {
                      goto LABEL_23;
                    }

                    result = ccmldsa_import_pubkey();
                    if (!result)
                    {
                      if (MEMORY[0x2A1C7C4C0])
                      {
                        result = ccmldsa_verify();
                        goto LABEL_21;
                      }

LABEL_23:
                      result = 4;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verify_signature_hybrid_scheme3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a7 && a5 && a3 && a1 && a2 && a4 && a6)
  {
    if (hybrid_scheme3_pubkey_cast(a1, a2) && hybrid_scheme3_signature_cast(a3, a4))
    {
      OUTLINED_FUNCTION_0_5();
      result = verify_signature_rsa4096_fixed(v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        OUTLINED_FUNCTION_0_5();

        return verify_signature_ml_dsa_87(v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3_no_pqc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7 || !a5 || !a3 || !a1 || !a2 || !a4 || !a6 || !hybrid_scheme3_pubkey_cast(a1, a2) || !hybrid_scheme3_signature_cast(a3, a4))
  {
    return 6;
  }

  OUTLINED_FUNCTION_0_5();

  return verify_signature_rsa4096_fixed(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Img4DecodeDigestInit(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  if (!v2 || !*v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a2;
  ccdigest_init();
  return 0;
}

uint64_t Img4DecodeDigestUpdate(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !**(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  ccdigest_update();
  return 0;
}

uint64_t Img4DecodeDigestReturnHash(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = **(a1 + 16);
  if (!v4 || *v4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v4 + 56))(v4, *a2, a4);
  return 0;
}

uint64_t Img4DecodeDigestFinal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = **(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v2 + 56))(v2, *a2);
  return 0;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x2A1C594D8](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v3 = MEMORY[0x2A1C596A0](url, component, rangeIncludingSeparators);
  result.length = v4;
  result.location = v3;
  return result;
}