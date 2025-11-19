uint64_t AMFDRCopyDeviceKeys(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!a2)
  {
    result = 1;
    AMFDRCopyDeviceKeys_error = 1;
    return result;
  }

  if (!a3)
  {
    v6 = 0x27D00E000;
    result = 1;
LABEL_10:
    *(v6 + 3296) = result;
    return result;
  }

  if (*MEMORY[0x277CDC060] != a1)
  {
    v6 = 0x27D00E000uLL;
    result = 9;
    goto LABEL_10;
  }

  if (AMFDRCopyDeviceKeys_onceToken != -1)
  {
    AMFDRCopyDeviceKeys_cold_1();
  }

  *a2 = AMSupportSafeRetain();
  *a3 = AMSupportSafeRetain();
  return AMFDRCopyDeviceKeys_error;
}

void __AMFDRCopyDeviceKeys_block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  connect[0] = 0;
  v0 = IOServiceMatching("IOAESAccelerator");
  if (!v0)
  {
    goto LABEL_35;
  }

  v1 = v0;
  CFRetain(v0);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1);
  if (!MatchingService)
  {
    CFRelease(v1);
    goto LABEL_35;
  }

  v3 = MatchingService;
  IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, connect);
  CFRelease(v1);
  IOObjectRelease(v3);
  v4 = connect[0];
  if (!connect[0])
  {
LABEL_35:
    AMFDRCopyDeviceKeys_error = 6;
    goto LABEL_20;
  }

  v5 = CryptoBufferAllocate();
  if (v5)
  {
    v6 = v5;
    *v5 = kAMDDeviceKeySeed;
    v5[1] = unk_2225414B0;
    v5[2] = xmmword_2225414C0;
    v5[3] = unk_2225414D0;
    v7 = CryptoBufferAllocate();
    if (v7)
    {
      v8 = v7;
      *&connect[20] = 0;
      *&connect[7] = 0;
      *&connect[5] = 0;
      memset(&connect[11], 0, 32);
      outputStructCnt[0] = 88;
      *connect = v6;
      *&connect[2] = v7;
      connect[4] = 64;
      *&connect[9] = 0x8000000000;
      connect[19] = 2105;
      v9 = IOConnectCallStructMethod(v4, 1u, connect, 0x58uLL, connect, outputStructCnt);
      switch(v9)
      {
        case -536870212:
        case -536870211:
        case -536870210:
        case -536870209:
        case -536870208:
        case -536870207:
        case -536870206:
        case -536870205:
        case -536870204:
        case -536870203:
        case -536870202:
        case -536870201:
        case -536870200:
        case -536870199:
        case -536870198:
        case -536870197:
        case -536870196:
        case -536870195:
        case -536870194:
        case -536870193:
        case -536870192:
        case -536870191:
        case -536870190:
        case -536870189:
        case -536870188:
          goto LABEL_17;
        default:
          if (v9)
          {
LABEL_17:
            AMSupportLogInternal();
            v17 = 6;
            goto LABEL_18;
          }

          AMSupportLogInternal();
          memset(connect, 170, 2132);
          if (!ccrng() || (strcpy(outputStructCnt, "pseudo_ccrng_allocate"), key_deterministic = ccrsa_generate_key_deterministic(), AMSupportLogInternal(), key_deterministic))
          {
            v20 = 0;
            v17 = 6;
            goto LABEL_29;
          }

          v11 = ccrsa_export_priv_size();
          v12 = malloc_type_malloc(v11, 0x32DBDD2FuLL);
          v13 = ccrsa_ctx_public();
          v14 = MEMORY[0x223DB8D50](v13);
          v15 = malloc_type_malloc(v14, 0x198A2AD3uLL);
          v16 = v15;
          if (v12 && v15)
          {
            if (ccrsa_export_priv())
            {
              goto LABEL_37;
            }

            ccrsa_ctx_public();
            if (ccrsa_export_pub())
            {
              goto LABEL_37;
            }

            if (AMSupportDigestSha1())
            {
              AMSupportLogInternal();
            }

            else
            {
              AMSupportLogDumpMemory();
            }

            if (AMSupportRsaCreatePemFromData())
            {
LABEL_37:
              v20 = 0;
              v17 = 6;
            }

            else
            {
              v19 = *MEMORY[0x277CBECE8];
              AMFDRCopyDeviceKeys_privKey = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
              if (AMFDRCopyDeviceKeys_privKey && (AMSupportLogInternal(), (AMFDRCopyDeviceKeys_pubKey = CFDataCreate(v19, v16, v14)) != 0))
              {
                AMSupportLogInternal();
                v17 = 0;
                v20 = 1;
              }

              else
              {
                v20 = 0;
                v17 = 2;
              }
            }

            goto LABEL_26;
          }

          v20 = 0;
          v17 = 2;
          if (v12)
          {
LABEL_26:
            free(v12);
          }

          if (v16)
          {
            free(v16);
          }

LABEL_29:
          if ((v20 & 1) == 0)
          {
            if (AMFDRCopyDeviceKeys_pubKey)
            {
              CFRelease(AMFDRCopyDeviceKeys_pubKey);
              AMFDRCopyDeviceKeys_pubKey = 0;
            }

            if (AMFDRCopyDeviceKeys_privKey)
            {
              CFRelease(AMFDRCopyDeviceKeys_privKey);
              AMFDRCopyDeviceKeys_privKey = 0;
            }
          }

LABEL_18:
          AMFDRCopyDeviceKeys_error = v17;
          IOServiceClose(v4);
          free(v8);
          break;
      }
    }

    else
    {
      AMFDRCopyDeviceKeys_error = 2;
      IOServiceClose(v4);
    }

    free(v6);
  }

  else
  {
    AMFDRCopyDeviceKeys_error = 2;
    IOServiceClose(v4);
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
}

void *CryptoBufferAllocate()
{
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, 0x40uLL, 0xCC1B18E3uLL))
  {
    v0 = memptr;
    *memptr = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
  }

  return memptr;
}

void *_AMFDRDeviceRefKeyCreateInternal(const __CFAllocator *a1, CFDataRef theData)
{
  v25 = 0;
  v23 = 0;
  length = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 1;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (aks_ref_key_create_with_blob())
    {
      AMSupportLogInternal();
      v4 = 0;
      v10 = 0;
      v5 = 0;
      goto LABEL_48;
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_13;
  }

  v6 = MGCopyAnswer();
  v5 = v6;
  if (!v6)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_8();
LABEL_44:
    v4 = 0;
    goto LABEL_47;
  }

  v7 = CFGetTypeID(v6);
  if (v7 != CFBooleanGetTypeID())
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_1();
    goto LABEL_44;
  }

  if (CFBooleanGetValue(v5))
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v9 = aks_params_create(0);
  v4 = v9;
  v19 = v9;
  if (!v9)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_7();
    goto LABEL_47;
  }

  if (aks_params_set_number(v9, 9, &v18) || aks_params_get_der(v4, &v21, &v20) || aks_ref_key_create(0xFFFFFFFFLL, 13, v8, v21, v20, &v23))
  {
    goto LABEL_46;
  }

LABEL_13:
  if (!v23)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_6();
LABEL_47:
    v10 = 0;
    goto LABEL_48;
  }

  if (aks_sik_attest(v23, v21, v20, &v25, &length))
  {
LABEL_46:
    AMSupportLogInternal();
    goto LABEL_47;
  }

  if (!v25)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_5();
    goto LABEL_47;
  }

  if (!length)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_4();
    goto LABEL_47;
  }

  v10 = CFDataCreate(a1, v25, length);
  if (!v10)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_3();
LABEL_48:
    v12 = 0;
    goto LABEL_49;
  }

  public_key = aks_ref_key_get_public_key(v23, &v22);
  if (!public_key || !v22)
  {
    goto LABEL_48;
  }

  v12 = CFDataCreate(*MEMORY[0x277CBECE8], public_key, v22);
  if (v12)
  {
    pthread_once(&_AMFDRDeviceRefKeyClassInitializeOnce, _AMFDRDeviceRefKeyClassInitialize);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v14 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      v15 = CFRetain(v10);
      v16 = v23;
      v14[2] = v15;
      v14[3] = v16;
      v23 = 0;
      v14[4] = v12;
      v12 = 0;
      if (!v4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_2();
  }

LABEL_49:
  if (v23)
  {
    aks_ref_key_free(&v23);
  }

  v14 = 0;
  if (v4)
  {
LABEL_23:
    aks_params_free(&v19);
  }

LABEL_24:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v25)
  {
    free(v25);
    v25 = 0;
  }

  if (v21)
  {
    free(v21);
  }

  return v14;
}

void *AMFDRDeviceRefKeyCreateWithData(const __CFAllocator *a1, const __CFData *a2)
{
  if (a2)
  {

    return _AMFDRDeviceRefKeyCreateInternal(a1, a2);
  }

  else
  {
    AMSupportLogInternal();
    return 0;
  }
}

uint64_t AMFDRDeviceRefKeySign(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v20 = v5;
  v21 = v5;
  v18 = 0;
  v19 = 0;
  if (!a1)
  {
    AMFDRDeviceRefKeySign_cold_10();
LABEL_21:
    v13 = 1;
    goto LABEL_13;
  }

  if (!a2)
  {
    AMFDRDeviceRefKeySign_cold_9();
    goto LABEL_21;
  }

  if (!a3)
  {
    AMFDRDeviceRefKeySign_cold_8();
    goto LABEL_21;
  }

  if (!a4)
  {
    AMFDRDeviceRefKeySign_cold_7();
    goto LABEL_21;
  }

  if (!a5)
  {
    AMFDRDeviceRefKeySign_cold_6();
    goto LABEL_21;
  }

  ccsha256_di();
  ccdigest();
  if (aks_ref_key_sign(*(a1 + 24), 0, 0, v20, 32, &v19, &v18, v9, v16, 0, v18, v19, v20[0], v20[1], v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27))
  {
    AMSupportLogInternal();
  }

  else if (v19)
  {
    if (v18)
    {
      v10 = ccder_decode_tl();
      if (v10)
      {
        v11 = v10;
        if (size)
        {
          v12 = malloc_type_malloc(size, 0xC355CAAuLL);
          *a4 = v12;
          if (v12)
          {
            memcpy(v12, v11, size);
            v13 = 0;
            *a5 = size;
            goto LABEL_13;
          }

          AMFDRDeviceRefKeySign_cold_1();
        }

        else
        {
          AMFDRDeviceRefKeySign_cold_2();
        }
      }

      else
      {
        AMFDRDeviceRefKeySign_cold_3();
      }
    }

    else
    {
      AMFDRDeviceRefKeySign_cold_4();
    }
  }

  else
  {
    AMFDRDeviceRefKeySign_cold_5();
  }

  v13 = 6;
LABEL_13:
  if (v19)
  {
    free(v19);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

CFTypeRef AMFDRDeviceRefKeyCopyAttestation(uint64_t a1)
{
  if (!a1)
  {
    AMFDRDeviceRefKeyCopyAttestation_cold_2();
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    AMFDRDeviceRefKeyCopyAttestation_cold_1();
    return 0;
  }

  return CFRetain(v1);
}

uint64_t AMFDRDeviceRefKeyGetPublicKey(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  AMFDRDeviceRefKeyGetPublicKey_cold_1();
  return 0;
}

CFDataRef AMFDRDeviceRefKeyCopyKeyBlob(uint64_t a1)
{
  length = 0;
  if (!a1)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_4();
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_3();
    return 0;
  }

  blob = aks_ref_key_get_blob(v1, &length);
  if (!blob)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_2();
    return 0;
  }

  result = CFDataCreate(*MEMORY[0x277CBECE8], blob, length);
  if (!result)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_1();
    return 0;
  }

  return result;
}

uint64_t _AMFDRDeviceRefKeyClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMFDRDeviceRefKeyTypeID = result;
  return result;
}

void _AMFDRDeviceRefKeyClassFinalize(void *a1)
{
  if (!a1)
  {
    _AMFDRDeviceRefKeyClassFinalize_cold_1();
  }

  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  if (a1[3])
  {
    aks_ref_key_free(a1 + 3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
}

__CFString *_AMFDRDeviceRefKeyCopyFormattingDescription(uint64_t a1)
{
  v2 = 0;
  if (!a1)
  {
    _AMFDRDeviceRefKeyCopyFormattingDescription_cold_2();
  }

  _AMFDRDeviceRefKeyCopyFormattingDescription_cold_1(a1, &v2, &v3);
  return v3;
}

CFDataRef AMFDRCryptoCreateCsr(uint64_t a1, const __CFString *a2)
{
  PemFromData = a1;
  v20 = 0;
  cf = 0;
  theData = 0;
  if (!a1)
  {
    AMFDRCryptoCreateCsr_cold_8();
    goto LABEL_25;
  }

  if (AMFDRCryptoGetCryptoVersion(a1, 2u, &v20))
  {
    AMFDRCryptoCreateCsr_cold_1();
    goto LABEL_24;
  }

  if ((v20 & 0x10000) != 0)
  {
    v13 = *(PemFromData + 17);
    if (*v13 >= 0x29uLL && (v14 = v13[5]) != 0)
    {
      v12 = v14(PemFromData, *(PemFromData + 18));
      cf = v12;
      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      cf = 0;
    }

    AMFDRCryptoCreateCsr_cold_2();
LABEL_24:
    PemFromData = 0;
    goto LABEL_25;
  }

  PrivateKey = AMFDRCryptoGetPrivateKey(PemFromData);
  theData = PrivateKey;
  if (PrivateKey)
  {
    v5 = PrivateKey;
    v6 = CFGetTypeID(PrivateKey);
    if (v6 == CFDataGetTypeID())
    {
      goto LABEL_10;
    }
  }

  v7 = *(PemFromData + 17);
  if (*v7 < 0x51uLL || (v8 = v7[10]) == 0 || v8(PemFromData, &cf, &theData, *(PemFromData + 18)))
  {
    AMSupportLogInternal();
    goto LABEL_24;
  }

  v5 = theData;
  if (!theData)
  {
LABEL_33:
    AMFDRCryptoCreateCsr_cold_7();
    goto LABEL_24;
  }

LABEL_10:
  v9 = CFGetTypeID(v5);
  if (v9 != CFDataGetTypeID())
  {
    goto LABEL_33;
  }

  v10 = cf;
  if (!cf)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (AMSupportRsaCreatePublicKeyFromPrivateKeyPEMBuffer())
    {
      AMFDRCryptoCreateCsr_cold_3();
      goto LABEL_24;
    }

    v10 = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
    cf = v10;
    if (!v10)
    {
      goto LABEL_34;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
LABEL_34:
    AMFDRCryptoCreateCsr_cold_6();
    goto LABEL_24;
  }

  v12 = cf;
LABEL_19:
  SignedCsr = AMFDRCryptoCreateSignedCsr(PemFromData, v20, a2, v12, AMFDRCryptoCreateCsrSignature, PemFromData);
  if (!SignedCsr)
  {
    AMFDRCryptoCreateCsr_cold_5();
    goto LABEL_24;
  }

  v16 = SignedCsr;
  PemFromData = AMFDRCryptoCreatePemFromData(SignedCsr, 1);
  if (!PemFromData)
  {
    AMFDRCryptoCreateCsr_cold_4();
  }

  CFRelease(v16);
LABEL_25:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return PemFromData;
}

uint64_t AMFDRCryptoCreateDataSignature(int a1, uint64_t a2, uint64_t a3, void **a4, void *a5, CFTypeRef cf)
{
  v23 = 0;
  v24 = 0;
  if (!cf || (v12 = CFGetTypeID(cf), v12 != AMFDRGetTypeID()))
  {
    AMFDRCryptoCreateDataSignature_cold_8();
    goto LABEL_34;
  }

  if (!a2 || !a3)
  {
    AMFDRCryptoCreateDataSignature_cold_7();
    goto LABEL_34;
  }

  if (!a4 || !a5)
  {
    AMFDRCryptoCreateDataSignature_cold_6();
    goto LABEL_34;
  }

  v13 = 103;
  if (a1 != 66050 && a1 != 66562)
  {
    PrivateKey = AMFDRCryptoGetPrivateKey(cf);
    if (!PrivateKey || (v15 = PrivateKey, v16 = CFGetTypeID(PrivateKey), v16 != CFDataGetTypeID()))
    {
      AMFDRCryptoCreateDataSignature_cold_5();
      goto LABEL_34;
    }

    CFDataGetBytePtr(v15);
    CFDataGetLength(v15);
    PrivateKeyFromPEMBuffer = AMSupportRsaCreatePrivateKeyFromPEMBuffer();
    if (PrivateKeyFromPEMBuffer)
    {
      v18 = PrivateKeyFromPEMBuffer;
      AMSupportLogInternal();
      goto LABEL_27;
    }

    v13 = 0;
  }

  v18 = 105;
  if (a1 > 66049)
  {
    if (a1 == 66050 || a1 == 66562)
    {
      v19 = *(cf + 17);
      if (*v19 < 0x39uLL || (v20 = v19[7]) == 0 || v20(cf, a2, a3, &v24, &v23, *(cf + 18)))
      {
        AMSupportLogInternal();
        v18 = v13;
      }

      else
      {
        v18 = v13;
        if (v24)
        {
          v21 = v23;
          if (v23)
          {
            *a4 = v24;
            v24 = 0;
            v18 = 100;
            *a5 = v21;
            return v18;
          }

          AMFDRCryptoCreateDataSignature_cold_1();
        }

        else
        {
          AMFDRCryptoCreateDataSignature_cold_2();
        }
      }
    }
  }

  else if (a1 == 257 || a1 == 513 || a1 == 1025)
  {
    AMFDRCryptoCreateDataSignature_cold_4();
LABEL_34:
    v18 = 103;
  }

LABEL_27:
  if (v24)
  {
    free(v24);
    v24 = 0;
  }

  return v18;
}

uint64_t AMFDRCryptoCreateLocalSignedDataSignature(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || !a3)
  {
    AMFDRCryptoCreateLocalSignedDataSignature_cold_6();
    return 103;
  }

  if (!a4 || !a5)
  {
    AMFDRCryptoCreateLocalSignedDataSignature_cold_5();
    return 103;
  }

  if ((a1 & 3) != 1 && (a1 & 3) != 2)
  {
    return 105;
  }

  DataFromPem = AMSupportRsaCreateDataFromPem();
  if (!DataFromPem)
  {
    AMFDRCryptoCreateLocalSignedDataSignature_cold_4();
    return 103;
  }

  v6 = DataFromPem;
  AMSupportLogInternal();
  return v6;
}

uint64_t AMFDRCreateEcDsaSignature(int a1)
{
  if (a1 == 66562)
  {
    SignatureSha384 = AMSupportEcDsaCreateSignatureSha384();
  }

  else
  {
    if (a1 != 66050)
    {
      return 6;
    }

    SignatureSha384 = AMSupportEcDsaCreateSignatureSha256();
  }

  if (SignatureSha384)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t AMFDRCryptoCreateLocalSignedCertificateData(char a1, void *a2, _DWORD *a3)
{
  if (a2)
  {
    if (a3)
    {
      if ((a1 & 3) == 1)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIEKTCCAxGgAwIBAgIJAIpZXkx8FEc8MA0GCSqGSIb3DQEBBQUAMIGbMQswCQYD\nVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJQ3VwZXJ0aW5v\nMRMwEQYDVQQKDApBcHBsZSBJbmMuMQ8wDQYDVQQLDAZDb3JlT1MxFTATBgNVBAMM\nDEZEUi1MT0NBTC1WMTEmMCQGCSqGSIb3DQEJARYXZmRyLWRldkBncm91cC5hcHBs\nZS5jb20wHhcNMjIwNTA5MTUyOTQxWhcNMzIwNTA2MTUyOTQxWjCBmzELMAkGA1UE\nBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExEjAQBgNVBAcMCUN1cGVydGlubzET\nMBEGA1UECgwKQXBwbGUgSW5jLjEPMA0GA1UECwwGQ29yZU9TMRUwEwYDVQQDDAxG\nRFItTE9DQUwtVjExJjAkBgkqhkiG9w0BCQEWF2Zkci1kZXZAZ3JvdXAuYXBwbGUu\nY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqDSCzDVLKL1ti0A5\n6ddmfyNhDRWpSTQM1eWgkOXeOrmXGuUF0l183cNLHmCDLCQF/gN2ZDOlH/mGv4DU\nKsVWZ4MV0fmoBUddlXlMH3lYT+4ZvWlH0bp5OX5UmVKxfvKMBl5jKkmANEZYmHu7\nVFiy3/7S4ca064Lfq1lNefMc0OM9oxulXlAICBwiwxiJKoPOa3/fgdx61lzMnWRa\nU72XCh8jZdDBJDd5wFgPVGYJMFCbAlgKrEvLPT0Ih9TiWZO97YlnvTeO2PrJtztb\nc3coQKfq9fOkLL9CyUrMUY4q7IJGBI1z4pB+UBS/ZgJ3/cBNvdhW5is2JVx113hl\nIskfCQIDAQABo24wbDAdBgNVHQ4EFgQU0QoF+nE1hlJxSQU0TutWjH2N2dUwCQYD\nVR0TBAIwADALBgNVHQ8EBAMCBeAwGgYJKoZIhvdjZAYQBA0MC3Blcm1pc3Npb25z\nMBcGCSqGSIb3Y2QGEQQKDAhjbGllbnRpZDANBgkqhkiG9w0BAQUFAAOCAQEAFjVa\nsSNfZOzLK10c16i06IRkqLx7xRo7ycnbSazwgNLxsGYNqzueBKI634nX4/MkFzgn\nsIz3rayMogDSgcZmrMe63JmvKJwOWYNFQDs2fTCFNyHBU3lQRL67dddJ8vKKUgPF\n4zLSbg80sYVkMAxpAjdIxDoXAGZX9ss8l4Z7QtbNHEUZoihXz5dWhjTUHfsNZsG4\nMxCIO9wniOpG5C/bUquZXq+Q75j4P4fC/KEfC70G/LVXzCTii+vEE6WTz8XhG2Ek\noZt6eUiXbC8LjA4Iss8POlr9oTj1y9zsZwdUN7E6/crQhtc68El3XcGWTvveMWIw\n/Ry4bOUy5w0BVWlJEA==\n-----END CERTIFICATE-----";
        v6 = 1505;
      }

      else
      {
        if ((a1 & 3) != 2)
        {
          return 9;
        }

        v5 = "-----BEGIN CERTIFICATE-----\nMIIDzDCCAbSgAwIBAgIGAflWiCu0MA0GCSqGSIb3DQEBCwUAMEcxEzARBgNVBAgM\nCkNhbGlmb3JuaWExEzARBgNVBAoMCkFwcGxlIEluYy4xGzAZBgNVBAMMEkZEUi1D\nQTEtUk9PVC1MT0NBTDAeFw0yMjA0MjEwODQ0MTFaFw0zMjA0MTgwODQ0MTFaMEgx\nCzAJBgNVBAYTAlVTMRMwEQYDVQQKDApBcHBsZSBJbmMuMRAwDgYDVQQLDAdEZXZp\nY2VzMRIwEAYDVQQDDAlGRFItTE9DQUwwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNC\nAATstM3jcCQWuq9Bg83QA8IlrIKWDtWxssWc1c4hdDg/wsmD6Xb+xb45NCRgFnBW\nSS1+dvn52D3WUU5HVS412NMxo4GHMIGEMFoGCiqGSIb3Y2QGAQ8ETDFK/4T6iZRQ\nQzBBFgRPQkpQMTn/hKKdplQMMAoWBERHU1SgAgUA/4absdJkDDAKFgRjbGlkoAIF\nAP+Gy7nmdAwwChYEaW5zdKACBQAwEAYJKoZIhvdjZAYQBAMMASowFAYJKoZIhvdj\nZAYRBAcMBUxvY2FsMA0GCSqGSIb3DQEBCwUAA4ICAQBvsxDEZweOcEo10OpMUpx2\nNZTy4BvSNqKOlv1nHTLqESHYTfik/L3mqTeOoWe20UkMY/e3vKwJWbgavzw7WOxb\n65bQ+ixU5VQUZzy1XlaQkIW49Tqid1WViSNNlqEXJLTj8lsplpuy5iT/WndNWczq\nopM3SkdS5YgjAqP4r8qoOAK7pSoMvLd6LTijbp9pTKDTseoXoJsVgPA/LNbW0FvR\nQxJyVVYkFnN1jtZB2ge5tqpuEuXwyCa/1bC9H8WE49uHyABIzfRaLEs7JbYvIaDH\nrgcoErGtyADmR/OvhMXryBz+USUG8bZtD/VoCsoIhoJFSVOBNDZXD59arISbjl8q\n8lbmCloZmocbUPMRinXDbpwMcAfQhv2sV/J6T5+TFAeRdSORhnwnle+56sedvugJ\ne8QOz85eTifA/KIuSTh+uKkrod3chBgHrh0PvJafOhcmYqhRbqV4guMXi53UrTLi\nVP68jydKSP2+gLinzYw/J0G/fE88SoWNBcihGjgNrfn8MIAZpVVEQ34PLozWKiXq\nhZ1VOA54XfeKlNp9Fxuuif0ZNPZ4q7ztbeR3aALN8lVkh/AfmpHNi6oN6LBu0zJw\nZ9AX2sUNOH0DOOMdojFblTdyuINrt2Tr4ccpHS1htnNR0ro82kZpkJH/zES/oYTA\nh0Sm4iIj1I5P1NFGq/jR8A==\n-----END CERTIFICATE-----";
        v6 = 1379;
      }

      v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
      *a2 = v7;
      if (v7)
      {
        memcpy(v7, v5, v6);
        result = 0;
        *a3 = v6;
        return result;
      }

      AMFDRCryptoCreateLocalSignedCertificateData_cold_1();
    }

    else
    {
      AMFDRCryptoCreateLocalSignedCertificateData_cold_2();
    }
  }

  else
  {
    AMFDRCryptoCreateLocalSignedCertificateData_cold_3();
  }

  return 199;
}

uint64_t AMFDRCryptoCopyAttestation(void *a1)
{
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != AMFDRGetTypeID()))
  {
    AMFDRCryptoCopyAttestation_cold_1();
    return 0;
  }

  v3 = a1[17];
  if (*v3 < 0x31uLL)
  {
    return 0;
  }

  v4 = v3[6];
  if (!v4)
  {
    return 0;
  }

  v5 = a1[18];

  return v4(a1, v5);
}

uint64_t AMFDRCryptoCopyRefKeyPub(void *a1)
{
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != AMFDRGetTypeID()))
  {
    AMFDRCryptoCopyRefKeyPub_cold_1();
    return 0;
  }

  v3 = a1[17];
  if (*v3 < 0x29uLL)
  {
    return 0;
  }

  v4 = v3[5];
  if (!v4)
  {
    return 0;
  }

  v5 = a1[18];

  return v4(a1, v5);
}

BOOL AMFDRDigestMd5(uint64_t a1)
{
  if (a1)
  {
    ccmd5_di();
    ccdigest();
  }

  else
  {
    AMFDRDigestMd5_cold_1();
  }

  return a1 != 0;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return ccdigest();
}

unint64_t _FDREncodeLength(unint64_t result, unsigned int a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2 > 0x7F)
    {
      v3 = 0;
      v6[0] = 0;
      do
      {
        *(v6 + v3++) = a2;
        v4 = a2 > 0xFF;
        a2 >>= 8;
      }

      while (v4);
      LODWORD(v2) = result;
      if ((v3 - 1) <= 6)
      {
        *result = v3 | 0x80;
        v2 = (result + 1);
        do
        {
          *v2++ = *(&v6[-1] + v3-- + 7);
        }

        while (v3);
      }
    }

    else
    {
      *result = a2;
      LODWORD(v2) = result + 1;
    }

    result = (v2 - result);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FDREncoderAddSequenceProperty(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1 || !a2 || !a3 && a4 || !DEREncoderCreate())
  {
    FDREncoderAddSequenceProperty_cold_2();
    return 3;
  }

  if (DEREncoderAddDataNoCopy() || a3 && DEREncoderAddDataNoCopy())
  {
    AMSupportLogInternal();
    goto LABEL_17;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    FDREncoderAddSequenceProperty_cold_1();
LABEL_17:
    v5 = 3;
    AMSupportLogInternal();
    goto LABEL_11;
  }

  v5 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v5;
}

uint64_t FDREncodeCreateSignedManifest()
{
  if (AMSupportRsaCreateDataFromPem())
  {
    FDREncodeCreateSignedManifest_cold_1();
    return 3;
  }

  else if (Img4EncodeCreateManifest() == 100)
  {
    FDREncodeCreateSignedManifest_cold_2();
    return 10;
  }

  else
  {
    AMSupportLogInternal();
    return 16;
  }
}

uint64_t _FDREncodeAddManifestProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 101;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

  v3 = Img4EncodeItemBegin();
  if (v3 != 100)
  {
    goto LABEL_33;
  }

  v5 = malloc_type_malloc(0x20uLL, 0x59BF3763uLL);
  if (!v5)
  {
    _FDREncodeAddManifestProperties_cold_2();
    v3 = 2;
LABEL_33:
    Img4EncodeItemDestroy();
    return v3;
  }

  v6 = v5;
  for (i = 0; i != 32; i += 4)
  {
    *&v6[i] = arc4random();
  }

  v8 = Img4EncodeItemPropertyData();
  if (v8 != 100)
  {
    goto LABEL_28;
  }

  if (*a3)
  {
    if (*(a3 + 8))
    {
      v8 = Img4EncodeItemPropertyData();
      if (v8 != 100)
      {
        goto LABEL_28;
      }
    }
  }

  if (*(a3 + 16))
  {
    if (*(a3 + 24))
    {
      v8 = Img4EncodeItemPropertyData();
      if (v8 != 100)
      {
        goto LABEL_28;
      }
    }
  }

  v9 = *(a3 + 28) == 0;
  v8 = Img4EncodeItemPropertyBool();
  if (v8 != 100)
  {
    goto LABEL_28;
  }

  v10 = *(a3 + 48);
  if (!v10 || !*v10)
  {
LABEL_26:
    v8 = Img4EncodeItemEnd();
    if (v8 == 100)
    {
      v8 = Img4EncodeItemCopyBuffer();
    }

LABEL_28:
    v3 = v8;
    goto LABEL_29;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(*(v10 + 4) + 4 * v11);
    if (!v12)
    {
      v16 = *(*(v10 + 1) + 4 * v11);
      v17 = *(*(v10 + 2) + 8 * v11);
      v18 = *(*(v10 + 3) + 4 * v11);
      v15 = Img4EncodeItemPropertyData();
      goto LABEL_24;
    }

    if (v12 != 1)
    {
      AMSupportLogInternal();
      goto LABEL_31;
    }

    if (*(*(v10 + 3) + 4 * v11) != 8)
    {
      break;
    }

    v13 = *(*(v10 + 1) + 4 * v11);
    v14 = **(*(v10 + 2) + 8 * v11);
    v15 = Img4EncodeItemPropertyInt64();
LABEL_24:
    v3 = v15;
    if (v15 != 100)
    {
      goto LABEL_29;
    }

    ++v11;
    v10 = *(a3 + 48);
    if (v11 >= *v10)
    {
      goto LABEL_26;
    }
  }

  _FDREncodeAddManifestProperties_cold_1();
LABEL_31:
  v3 = 101;
LABEL_29:
  Img4EncodeItemDestroy();
  free(v6);
  return v3;
}

uint64_t _FDREncodeAddObjectProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 101;
  if (a1 && a2)
  {
    if (a3)
    {
      if (*(a3 + 32))
      {
        v5 = 0;
        v6 = 48;
        while (1)
        {
          v7 = *(a3 + 40);
          v8 = v7 + v6;
          v9 = *(v7 + v6 + 44);
          v10 = Img4EncodeItemBegin();
          if (v10 != 100)
          {
            break;
          }

          v11 = *(v8 + 44);
          v12 = *(v8 - 16);
          v13 = *(v8 - 8);
          v10 = Img4EncodeItemPropertyData();
          if (v10 != 100)
          {
            break;
          }

          v14 = *(v8 + 44);
          v15 = *(v8 - 48);
          v16 = v7 + v6;
          v17 = *(v7 + v6 - 40);
          v10 = Img4EncodeItemPropertyData();
          if (v10 != 100)
          {
            break;
          }

          v18 = *(v8 + 44);
          v19 = *(v16 - 32);
          v20 = *(v16 - 24);
          v10 = Img4EncodeItemPropertyData();
          if (v10 != 100)
          {
            break;
          }

          if (*(v7 + v6))
          {
            v21 = *(v8 + 44);
            v22 = *(v7 + v6 + 8);
            v10 = Img4EncodeItemPropertyData();
            if (v10 != 100)
            {
              break;
            }
          }

          v23 = v7 + v6;
          if (*(v7 + v6 + 16))
          {
            v24 = *(v8 + 44);
            v25 = *(v23 + 24);
            v10 = Img4EncodeItemPropertyData();
            if (v10 != 100)
            {
              break;
            }
          }

          if (*(v23 + 32))
          {
            v26 = *(v8 + 44);
            v27 = *(v7 + v6 + 40);
            v10 = Img4EncodeItemPropertyData();
            if (v10 != 100)
            {
              break;
            }
          }

          v28 = *(v8 + 44);
          v10 = Img4EncodeItemEnd();
          if (v10 != 100)
          {
            break;
          }

          ++v5;
          v6 += 96;
          if (v5 >= *(a3 + 32))
          {
            goto LABEL_20;
          }
        }

        v3 = v10;
        AMSupportLogInternal();
      }

      else
      {
LABEL_20:
        v3 = Img4EncodeItemCopyBuffer();
      }
    }

    else
    {
      _FDREncodeAddObjectProperties_cold_1();
    }
  }

  Img4EncodeItemDestroy();
  return v3;
}

uint64_t FDREncodeCreateSignedData(uint64_t *a1, uint64_t a2, char *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v19 = a1[3];
  v43 = 0;
  v42 = 0;
  v41 = 0;
  *__dst = 0;
  v39 = 0;
  memset(v38, 170, sizeof(v38));
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[17] = v20;
  v37[18] = v20;
  v37[15] = v20;
  v37[16] = v20;
  v37[13] = v20;
  v37[14] = v20;
  v37[11] = v20;
  v37[12] = v20;
  v37[9] = v20;
  v37[10] = v20;
  v37[7] = v20;
  v37[8] = v20;
  v37[5] = v20;
  v37[6] = v20;
  v37[3] = v20;
  v37[4] = v20;
  v37[1] = v20;
  v37[2] = v20;
  v37[0] = v20;
  v36 = v37;
  v21 = malloc_type_calloc(1uLL, 0x30uLL, 0x100004077774924uLL);
  if (!v21)
  {
    AMSupportLogInternal();
    v23 = 2;
    goto LABEL_9;
  }

  if (a4 != 4)
  {
    AMSupportLogInternal();
    v23 = 199;
    goto LABEL_9;
  }

  strncpy(__dst, a3, 4uLL);
  v22 = *a1;
  if (Img4EncodeCreatePayload() != 100)
  {
    goto LABEL_8;
  }

  if (!v52 || !v51)
  {
    goto LABEL_6;
  }

  v23 = _FDREncodeDigestCompute(v52, v51, v21, *a1[2], a1[2]);
  if (!v23)
  {
    v25 = AMFDREncodeProducerIDBegin(&v39);
    if (v25)
    {
      v23 = v25;
      AMSupportLogInternal();
      goto LABEL_9;
    }

    v26 = a1[5];
    if (!v26)
    {
      FDREncodeCreateSignedData_cold_3();
      goto LABEL_38;
    }

    v27 = v26(&v43, &v42, a2);
    if (!v27)
    {
      if (!v43 || !v42)
      {
        FDREncodeCreateSignedData_cold_2();
        goto LABEL_38;
      }

      DataFromPem = AMSupportRsaCreateDataFromPem();
      if (DataFromPem)
      {
        v23 = DataFromPem;
LABEL_33:
        AMSupportLogInternal();
        goto LABEL_9;
      }

      if (AMFDRDecodeIterateCertChainBegin(v38, v46, v45) || (AMFDRDecodeIterateCertChainNext(v38, &v36), v29))
      {
        AMSupportLogInternal();
LABEL_38:
        v23 = 0;
        goto LABEL_9;
      }

      while (v36)
      {
        v30 = AMFDREncodeProducerIDAddDigestFromData(&v39, v19, *(v36 + 18), *(v36 + 38));
        if (v30 || (v30 = AMFDREncodeProducerIDAddDigestFromData(&v39, v19, *(v36 + 32), *(v36 + 66)), v30))
        {
          v23 = v30;
          goto LABEL_33;
        }

        v23 = AMFDREncodeProducerIDAddDigestFromData(&v39, v19, *(v36 + 34), *(v36 + 70));
        if (v23)
        {
          AMSupportLogInternal();
        }

        AMFDRDecodeIterateCertChainNext(v38, &v36);
        if (v31)
        {
          goto LABEL_33;
        }
      }

      v32 = AMFDREncodeProducerIDEnd(&v39);
      if (v32)
      {
        v23 = v32;
        goto LABEL_33;
      }

      v35 = *a1[2];
      AMFDRTagsStringToTag(a3);
      v33 = *(a1 + 2);
      v34 = a1[4];
      if (!FDREncodeCreateSignedManifest())
      {
        if (v50 && v49)
        {
          if (Img4EncodeStitchManifest() != 100)
          {
            goto LABEL_8;
          }

          if (a14 && a15)
          {
            goto LABEL_38;
          }
        }

LABEL_6:
        AMSupportLogInternal();
        v23 = 10;
        goto LABEL_9;
      }

LABEL_8:
      AMSupportLogInternal();
      v23 = 16;
      goto LABEL_9;
    }

    v23 = v27;
    FDREncodeCreateSignedData_cold_1();
  }

LABEL_9:
  if (v52)
  {
    free(v52);
    v52 = 0;
  }

  if (v50)
  {
    free(v50);
  }

  if (v48)
  {
    free(v48);
    v48 = 0;
  }

  if (v46)
  {
    free(v46);
    v46 = 0;
  }

  if (v21)
  {
    free(v21);
  }

  if (v43)
  {
    free(v43);
    v43 = 0;
  }

  if (v39)
  {
    AMFDREncodeProducerIDEnd(&v39);
  }

  return v23;
}

void AMFDREncodeMultiRequestDestroy(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        v3 = *v2;
        DEREncoderDestroy();
        **a1 = 0;
        v2 = *a1;
      }

      if (v2[1])
      {
        v4 = v2[1];
        DEREncoderDestroy();
        (*a1)[1] = 0;
        v2 = *a1;
      }

      if (!v2[2] || (v5 = v2[2], DEREncoderDestroy(), (*a1)[2] = 0, (v2 = *a1) != 0))
      {
        free(v2);
      }

      *a1 = 0;
    }
  }
}

uint64_t AMFDREncodeMultiResponseBegin(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  *a1 = v2;
  if (!v2)
  {
    AMFDREncodeMultiResponseBegin_cold_5();
    return 2;
  }

  **a1 = DEREncoderCreate();
  if (!**a1)
  {
    AMFDREncodeMultiResponseBegin_cold_4();
    return 2;
  }

  *(*a1 + 8) = DEREncoderCreate();
  if (!*(*a1 + 8))
  {
    AMFDREncodeMultiResponseBegin_cold_3();
    return 2;
  }

  *(*a1 + 16) = DEREncoderCreate();
  if (!*(*a1 + 16))
  {
    AMFDREncodeMultiResponseBegin_cold_2();
    return 2;
  }

  v3 = *(*a1 + 8);
  v4 = DEREncoderAddData();
  result = 0;
  if (v4)
  {
    AMFDREncodeMultiResponseBegin_cold_1();
    return 3;
  }

  return result;
}

uint64_t AMFDREncodeMetadataBegin(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2 || (v3 = DEREncoderCreate(), result = 0, (**a1 = v3) == 0))
  {
    AMFDREncodeMetadataBegin_cold_1();
    return 2;
  }

  return result;
}

void AMFDREncodeMetadataDestroy(uint64_t **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (!*v2 || (v3 = *v2, DEREncoderDestroy(), **a1 = 0, (v2 = *a1) != 0))
      {
        free(v2);
      }

      *a1 = 0;
    }
  }
}

uint64_t AMFDREncodeMetaPropertyBegin(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2 || (v3 = DEREncoderCreate(), result = 0, (**a1 = v3) == 0))
  {
    AMFDREncodeMetaPropertyBegin_cold_1();
    return 2;
  }

  return result;
}

uint64_t _FDREncodeCreateDataFromOid(char *a1, void *a2, _DWORD *a3)
{
  __lasts = a1;
  v6 = malloc_type_malloc(0x100uLL, 0x234C02C2uLL);
  if (!v6)
  {
    _FDREncodeCreateDataFromOid_cold_3();
    return 2;
  }

  v7 = v6;
  v8 = strlen(a1);
  v9 = malloc_type_malloc(v8 + 1, 0xB814BFBuLL);
  if (!v9)
  {
    _FDREncodeCreateDataFromOid_cold_2();
    v23 = 2;
    goto LABEL_24;
  }

  v10 = strlen(a1);
  memcpy(v9, a1, v10 + 1);
  v11 = strtok_r(v9, ".", &__lasts);
  if (!v11)
  {
    v14 = 0;
LABEL_20:
    v23 = 0;
    *a2 = v7;
    *a3 = v14;
    goto LABEL_21;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    *__error() = 0;
    v15 = strtoul(v12, 0, 10);
    if (*__error() || HIDWORD(v15))
    {
      v23 = 3;
      AMSupportLogInternal();
      goto LABEL_24;
    }

    if (!v13)
    {
      v7[v14] = v15;
      goto LABEL_17;
    }

    if (v13 != 1)
    {
      break;
    }

    v7[v14] = v15 + 40 * v7[v14];
    ++v14;
LABEL_17:
    ++v13;
    v12 = strtok_r(0, ".", &__lasts);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v14;
  while (1)
  {
    v20 = v16;
    for (i = v19; v20; --v20)
    {
      v7[i] = v7[i - 1];
      --i;
    }

    v7[v14] = v15 & 0x7F | v17;
    if ((++v18 + v14) >= 0x100)
    {
      break;
    }

    ++v16;
    ++v19;
    v17 = 0x80;
    v22 = v15 >= 0x80;
    v15 >>= 7;
    if (!v22)
    {
      v14 += v18;
      goto LABEL_17;
    }
  }

  _FDREncodeCreateDataFromOid_cold_1();
  v23 = 3;
LABEL_24:
  free(v7);
  if (v9)
  {
LABEL_21:
    free(v9);
  }

  return v23;
}

uint64_t AMFDREncodeCertificateRequestCreateUnsginedData(uint64_t **a1, const void *a2, unsigned int a3, char *a4, char *a5, void *a6, _DWORD *a7)
{
  v7 = 0;
  v34 = 2;
  v33 = 0;
  v32 = 0;
  v30 = 1;
  if (a1 && a2 && a3 && a4 && a6)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (!a7)
    {
      goto LABEL_58;
    }

    v14 = DEREncoderCreate();
    if (!v14)
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_18();
      v7 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_73;
    }

    v13 = DEREncoderCreate();
    if (!v13)
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_17();
      v7 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_73;
    }

    v12 = DEREncoderCreate();
    if (!v12)
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_16();
      v7 = 0;
      v11 = 0;
      goto LABEL_73;
    }

    v11 = DEREncoderCreate();
    if (!v11)
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_15();
      v7 = 0;
      goto LABEL_73;
    }

    v7 = DEREncoderCreate();
    if (!v7)
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_14();
      goto LABEL_73;
    }

    if (DEREncoderAddDataNoCopy())
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_1();
      goto LABEL_56;
    }

    v17 = **a1;
    if (DEREncoderAddSequenceFromEncoder())
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_2();
      goto LABEL_56;
    }

    v18 = _FDREncodeCreateDataFromOid(a4, &v33, &v32);
    v19 = v33;
    if (v18)
    {
      goto LABEL_75;
    }

    if (DEREncoderAddData())
    {
      goto LABEL_74;
    }

    if (v19)
    {
      free(v19);
      v33 = 0;
    }

    if (a5)
    {
      v20 = _FDREncodeCreateDataFromOid(a5, &v33, &v32);
      v19 = v33;
      if (v20)
      {
        goto LABEL_75;
      }

      if (DEREncoderAddData())
      {
        goto LABEL_74;
      }

      if (v19)
      {
        free(v19);
        v33 = 0;
      }
    }

    else if (DEREncoderAddDataNoCopy())
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_3();
      goto LABEL_56;
    }

    if (DEREncoderAddSequenceFromEncoder())
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_4();
    }

    else if (AMFDREncodeAddBitString(v12, a2, a3))
    {
      AMFDREncodeCertificateRequestCreateUnsginedData_cold_5();
    }

    else
    {
      if (!DEREncoderAddSequenceFromEncoder())
      {
        DEREncoderDestroy();
        v13 = DEREncoderCreate();
        if (v13)
        {
          v21 = _FDREncodeCreateDataFromOid("1.2.840.113549.1.9.14", &v33, &v32);
          v19 = v33;
          if (v21)
          {
            goto LABEL_75;
          }

          if (!DEREncoderAddData())
          {
            if (v19)
            {
              free(v19);
              v33 = 0;
            }

            v22 = (*a1)[1];
            v36 = 0;
            v35 = 0;
            if (!v22)
            {
              goto LABEL_55;
            }

            EncodedBuffer = DEREncoderCreateEncodedBuffer();
            if (!EncodedBuffer)
            {
              EncodedBuffer = DEREncoderAddData();
            }

            if (v35)
            {
              free(v35);
            }

            if (EncodedBuffer)
            {
LABEL_55:
              AMFDREncodeCertificateRequestCreateUnsginedData_cold_12();
            }

            else if (DEREncoderAddSetFromEncoder())
            {
              AMFDREncodeCertificateRequestCreateUnsginedData_cold_7();
            }

            else if (DEREncoderAddSequenceFromEncoder())
            {
              AMFDREncodeCertificateRequestCreateUnsginedData_cold_8();
            }

            else if (DEREncoderAddDataFromEncoder())
            {
              AMFDREncodeCertificateRequestCreateUnsginedData_cold_9();
            }

            else
            {
              v24 = (*a1)[2];
              if (DEREncoderAddSequenceFromEncoder())
              {
                AMFDREncodeCertificateRequestCreateUnsginedData_cold_10();
              }

              else
              {
                v25 = (*a1)[2];
                if (!DEREncoderCreateEncodedBuffer())
                {
                  v26 = 0;
                  *a6 = 0;
                  *a7 = 0;
LABEL_43:
                  DEREncoderDestroy();
                  goto LABEL_44;
                }

                AMFDREncodeCertificateRequestCreateUnsginedData_cold_11();
              }
            }

            goto LABEL_56;
          }

LABEL_74:
          AMSupportLogInternal();
LABEL_75:
          if (v19)
          {
            free(v19);
            v33 = 0;
          }

          goto LABEL_56;
        }

        AMFDREncodeCertificateRequestCreateUnsginedData_cold_13();
LABEL_73:
        v28 = 2;
        goto LABEL_57;
      }

      AMFDREncodeCertificateRequestCreateUnsginedData_cold_6();
    }

LABEL_56:
    v28 = 3;
LABEL_57:
    v30 = v28;
    goto LABEL_58;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_58:
  v26 = v30;
  if (v14)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v13)
  {
    DEREncoderDestroy();
  }

  if (v12)
  {
    DEREncoderDestroy();
  }

  if (v11)
  {
    DEREncoderDestroy();
  }

  if (v7)
  {
    DEREncoderDestroy();
  }

  return v26;
}

uint64_t AMFDREncodeCertificateRequestEnd(uint64_t **a1, const void *a2, unsigned int a3, char *a4, char *a5, char a6, void *a7, _DWORD *a8)
{
  v9 = 0;
  v26 = 0;
  v25 = 0;
  v10 = 1;
  if (!a1 || !a2 || !a3 || !a4 || !a7)
  {
    v16 = 0;
    goto LABEL_43;
  }

  v16 = 0;
  if (!a8)
  {
    goto LABEL_43;
  }

  v16 = DEREncoderCreate();
  if (!v16)
  {
    AMFDREncodeCertificateRequestEnd_cold_7();
    v9 = 0;
LABEL_33:
    v10 = 2;
    goto LABEL_43;
  }

  v9 = DEREncoderCreate();
  if (!v9)
  {
    AMFDREncodeCertificateRequestEnd_cold_6();
    goto LABEL_33;
  }

  v18 = _FDREncodeCreateDataFromOid(a4, &v26, &v25);
  v19 = v26;
  if (v18)
  {
    goto LABEL_40;
  }

  if (DEREncoderAddData())
  {
    goto LABEL_39;
  }

  if (v19)
  {
    free(v19);
    v26 = 0;
  }

  if (a5)
  {
    v20 = _FDREncodeCreateDataFromOid(a5, &v26, &v25);
    v19 = v26;
    if (v20)
    {
      goto LABEL_40;
    }

    if (!DEREncoderAddData())
    {
      if (v19)
      {
        free(v19);
        v26 = 0;
      }

LABEL_18:
      v21 = (*a1)[2];
      if (DEREncoderAddSequenceFromEncoder())
      {
        AMFDREncodeCertificateRequestEnd_cold_2();
      }

      else if (AMFDREncodeAddBitString((*a1)[2], a2, a3))
      {
        AMFDREncodeCertificateRequestEnd_cold_3();
      }

      else
      {
        v22 = (*a1)[2];
        if (DEREncoderAddSequenceFromEncoder())
        {
          AMFDREncodeCertificateRequestEnd_cold_4();
        }

        else
        {
          if (!DEREncoderCreateEncodedBuffer())
          {
            v10 = 0;
            *a7 = 0;
            *a8 = 0;
LABEL_23:
            DEREncoderDestroy();
            goto LABEL_24;
          }

          AMFDREncodeCertificateRequestEnd_cold_5();
        }
      }

      goto LABEL_42;
    }

LABEL_39:
    AMSupportLogInternal();
LABEL_40:
    if (v19)
    {
      free(v19);
      v26 = 0;
    }

    goto LABEL_42;
  }

  if ((a6 & 1) != 0 || !DEREncoderAddDataNoCopy())
  {
    goto LABEL_18;
  }

  AMFDREncodeCertificateRequestEnd_cold_1();
LABEL_42:
  v10 = 3;
LABEL_43:
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v9)
  {
    DEREncoderDestroy();
  }

  AMFDREncodeMultiRequestDestroy(a1);
  return v10;
}

uint64_t AMFDREncodeCreatePayloadAndDigest(uint64_t *a1, const char *a2, int a3, uint64_t a4, uint64_t a5, void **a6, unsigned int *a7, void *a8, _DWORD *a9)
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  *__dst = 0;
  v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x100004077774924uLL);
  if (v15)
  {
    if (a3 == 4)
    {
      strncpy(__dst, a2, 4uLL);
      v16 = *a1;
      if (Img4EncodeCreatePayload() == 100)
      {
        if (v22 && v21 && !_FDREncodeDigestCompute(v22, v21, v15, *a1[2], a1[2]))
        {
          if (a6 && a7)
          {
            *a6 = v22;
            *a7 = v21;
            v22 = 0;
          }

          v17 = 0;
          if (a8 && a9)
          {
            v17 = 0;
            *a8 = v15;
            *a9 = *a1[2];
            v15 = 0;
          }
        }

        else
        {
          AMSupportLogInternal();
          v17 = 10;
        }
      }

      else
      {
        AMSupportLogInternal();
        v17 = 16;
      }
    }

    else
    {
      AMSupportLogInternal();
      v17 = 199;
    }
  }

  else
  {
    AMSupportLogInternal();
    v17 = 2;
  }

  if (v22)
  {
    free(v22);
  }

  if (v15)
  {
    free(v15);
  }

  return v17;
}

uint64_t AMFDREncodeRepairConfigurationBegin(void *a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:
    AMSupportLogInternal();
    return v3;
  }

  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2)
  {
    v3 = 2;
    goto LABEL_8;
  }

  v3 = 0;
  **a1 = DEREncoderCreate();
  if (!**a1)
  {
    v3 = 2;
    goto LABEL_8;
  }

  return v3;
}

uint64_t AMFDREncodeRepairConfigurationAddSequence(uint64_t **a1, uint64_t **a2)
{
  if ((_AMFDREncodeIsRepairConfigurationContextValid(a1) & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSequence_cold_1();
    return 1;
  }

  v4 = **a1;
  if ((_AMFDREncodeIsRepairConfigurationContextValid(a2) & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSequence_cold_2();
    return 1;
  }

  if (a1 == a2)
  {
    v7 = DEREncoderCreate();
    if (!v7)
    {
      AMFDREncodeRepairConfigurationAddSequence_cold_4();
      return 2;
    }

    v8 = v7;
    if (DEREncoderAddSequenceFromEncoder())
    {
      DEREncoderDestroy();
LABEL_17:
      AMFDREncodeRepairConfigurationAddSequence_cold_3();
      return 3;
    }

    **a2 = v8;
    if (v4)
    {
      DEREncoderDestroy();
    }

    return 0;
  }

  else
  {
    v5 = **a2;
    result = DEREncoderAddSequenceFromEncoder();
    if (result)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t _AMFDREncodeIsRepairConfigurationContextValid(void *a1)
{
  if (a1 && *a1 && **a1)
  {
    return 1;
  }

  _AMFDREncodeIsRepairConfigurationContextValid_cold_1();
  return 0;
}

uint64_t AMFDREncodeRepairConfigurationAddSequenceWithKey(uint64_t **a1)
{
  if ((_AMFDREncodeIsRepairConfigurationContextValid(a1) & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_1();
    return 1;
  }

  v2 = **a1;
  v3 = DEREncoderCreate();
  if (!v3)
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_4();
    return 2;
  }

  v4 = v3;
  if (DEREncoderAddDataNoCopy())
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_2();
    return 3;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_3();
    return 3;
  }

  **a1 = v4;
  if (v2)
  {
    DEREncoderDestroy();
  }

  return 0;
}

uint64_t AMFDREncodeRepairConfigurationAddSetWithKey(uint64_t **a1)
{
  if ((_AMFDREncodeIsRepairConfigurationContextValid(a1) & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_1();
    return 1;
  }

  v2 = **a1;
  v3 = DEREncoderCreate();
  if (!v3)
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_4();
    return 2;
  }

  v4 = v3;
  if (DEREncoderAddDataNoCopy())
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_2();
    return 3;
  }

  if (DEREncoderAddSetFromEncoder())
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_3();
    return 3;
  }

  **a1 = v4;
  if (v2)
  {
    DEREncoderDestroy();
  }

  return 0;
}

uint64_t AMFDREncodeRepairConfigurationAddData(uint64_t **a1, int a2, unsigned int *a3, int a4)
{
  if ((_AMFDREncodeIsRepairConfigurationContextValid(a1) & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddData_cold_1();
    return 1;
  }

  if (!a4)
  {
    AMFDREncodeRepairConfigurationAddData_cold_3();
    return 1;
  }

  if (!a3)
  {
    AMFDREncodeRepairConfigurationAddData_cold_2();
    return 1;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v14 = **a1;
      goto LABEL_15;
    }

    if (a2 == 3)
    {
      v9 = *a3;
      v10 = **a1;
      v11 = DEREncoderAddUInt32();
      goto LABEL_16;
    }

LABEL_11:
    AMSupportLogInternal();
    return 1;
  }

  if (!a2)
  {
    v13 = **a1;
    goto LABEL_15;
  }

  if (a2 != 1)
  {
    goto LABEL_11;
  }

  v8 = **a1;
LABEL_15:
  v11 = DEREncoderAddData();
LABEL_16:
  if (!v11)
  {
    return 0;
  }

  v12 = 3;
  AMSupportLogInternal();
  return v12;
}

uint64_t AMFDREncodeRepairConfigurationEnd(uint64_t **a1, void *a2, _DWORD *a3)
{
  if (!_AMFDREncodeIsRepairConfigurationContextValid(a1))
  {
    v7 = 1;
LABEL_15:
    AMSupportLogInternal();
    return v7;
  }

  if (!a2)
  {
    v7 = 1;
    goto LABEL_15;
  }

  if (!a3)
  {
    v7 = 1;
    goto LABEL_15;
  }

  v6 = **a1;
  if (DEREncoderCreateEncodedBuffer())
  {
    v7 = 3;
    goto LABEL_15;
  }

  if (!*a2)
  {
    v7 = 199;
    goto LABEL_15;
  }

  if (!*a3)
  {
    v7 = 199;
    goto LABEL_15;
  }

  return 0;
}

uint64_t AMFDREncodeMultiCombinedDataPayloadBegin(void *a1)
{
  if (!a1)
  {
    v3 = 199;
LABEL_9:
    AMSupportLogInternal();
    return v3;
  }

  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2)
  {
    v3 = 2;
    goto LABEL_9;
  }

  v3 = 0;
  **a1 = DEREncoderCreate();
  if (!**a1)
  {
    v3 = 2;
    goto LABEL_9;
  }

  return v3;
}

uint64_t AMFDREncodeSubCCDigestsBegin(void *a1)
{
  if (!a1)
  {
    v3 = 199;
LABEL_8:
    AMSupportLogInternal();
    return v3;
  }

  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2)
  {
    v3 = 2;
    goto LABEL_8;
  }

  v3 = 0;
  **a1 = DEREncoderCreate();
  if (!**a1)
  {
    v3 = 2;
    goto LABEL_8;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t result)
{
  **v1 = result;
  v2 = **v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return DEREncoderCreateEncodedBuffer();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return DEREncoderAddDataNoCopy();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return DEREncoderCreate();
}

uint64_t OUTLINED_FUNCTION_12()
{
  v2 = **v0;

  return DEREncoderAddSequenceFromEncoder();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return DEREncoderAddDataNoCopy();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return AMSupportLogInternal();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return DEREncoderAddDataNoCopy();
}

uint64_t OUTLINED_FUNCTION_24(uint64_t result)
{
  *(*v1 + 8) = result;
  v2 = *(*v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29()
{
  v2 = **v0;

  return DEREncoderAddSetFromEncoder();
}

uint64_t AMFDRErrorPushInternal(uint64_t a1, CFIndex a2, const __CFNumber *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, void *value, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, CFStringRef format, char a17)
{
  v22 = a3;
  valuePtr = a3;
  v25 = *MEMORY[0x277CBECE8];
  v26 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, &a17);
  if (v26)
  {
    AMSupportLogInternal();
  }

  if (!a1)
  {
    v28 = 0;
    v22 = 0;
    if (!v26)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  code = a2;
  Mutable = CFDictionaryCreateMutable(v25, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = Mutable;
  if (!Mutable)
  {
    v22 = 0;
    a1 = 0;
    if (!v26)
    {
      goto LABEL_39;
    }

LABEL_38:
    CFRelease(v26);
    goto LABEL_39;
  }

  if (v26)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE30], v26);
  }

  if (v22)
  {
    v22 = CFNumberCreate(v25, kCFNumberSInt64Type, &valuePtr);
    if (v22)
    {
      AMSupportLogInternal();
      CFDictionaryAddValue(v28, @"AMFDRTrustError", v22);
    }
  }

  if (a4)
  {
    CFDictionarySetValue(v28, @"MissingDataInstances", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(v28, @"MissingMultiManifests", a5);
  }

  if (a6)
  {
    CFDictionarySetValue(v28, @"DigestMismatchedDataInstances", a6);
  }

  if (a7)
  {
    CFDictionarySetValue(v28, @"UnverifiedCombinedManifests", a7);
  }

  if (a8)
  {
    CFDictionarySetValue(v28, @"UnverifiedDataInstances", a8);
  }

  if (value)
  {
    CFDictionarySetValue(v28, @"MultiRequestErrors", value);
  }

  if (a10)
  {
    CFDictionarySetValue(v28, @"MissingMinimalManifests", a10);
  }

  if (a11)
  {
    CFDictionarySetValue(v28, @"UnverifiedMinimalManifests", a11);
  }

  if (a12)
  {
    CFDictionarySetValue(v28, @"MissingMinimalSealingInstances", a12);
  }

  if (a13)
  {
    CFDictionarySetValue(v28, @"MissingSubCCDataInstances", a13);
  }

  if (a14)
  {
    CFDictionarySetValue(v28, @"MismatchedProperties", a14);
  }

  if (*a1)
  {
    CFDictionaryAddValue(v28, *MEMORY[0x277CBEE78], *a1);
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }

  *a1 = CFErrorCreate(v25, @"AMFDRError", code, v28);
  a1 = 1;
  if (v26)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return a1;
}

uint64_t _AMFDRClassInitialize()
{
  _AMFDRTypeID = _CFRuntimeRegisterClass();

  return AMFDRCryptoInit();
}

void *AMFDRCreateWithImplementation(const __CFAllocator *a1, CFDictionaryRef theDict, void *a3, uint64_t a4)
{
  if (!theDict)
  {
    AMFDRCreateWithImplementation_cold_2();
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  if (!MutableCopy)
  {
    AMFDRCreateWithImplementation_cold_1();
    return 0;
  }

  v9 = MutableCopy;
  pthread_once(&_AMFDRClassInitializeOnce, _AMFDRClassInitialize);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = AMFDRLocalStore;
    AMFDRPlatformSetImplementation(Instance, a3, a4);
    if (!CFDictionaryGetValue(theDict, @"DSURL"))
    {
      CFDictionarySetValue(v9, @"DSURL", @"https://skl.apple.com");
    }

    if (!CFDictionaryGetValue(theDict, @"CAURL"))
    {
      CFDictionarySetValue(v9, @"CAURL", @"https://gg.apple.com");
    }

    if (!CFDictionaryGetValue(theDict, @"SealingURL"))
    {
      CFDictionarySetValue(v9, @"SealingURL", @"https://ig.apple.com");
    }

    if (AMFDRSetOptions(v11, v9))
    {
      AMFDRCryptoGetPrivateKey(v11);
      AMFDRCryptoGetCert(v11);
      if (v11[9] || (v12 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v11[9] = v12) != 0))
      {
        if (v11[13] || (v13 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v11[13] = v13) != 0))
        {
          if (v11[14] || (v14 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v11[14] = v14) != 0))
          {
            if (v11[16])
            {
              goto LABEL_20;
            }

            Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v11[16] = Mutable;
            if (Mutable)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    else
    {
      CFRelease(v11);
      v11 = 0;
    }
  }

  AMSupportLogInternal();
LABEL_20:
  CFRelease(v9);
  return v11;
}

uint64_t AMFDRSetOptions(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    AMFDRSetOptions_cold_3();
    return 0;
  }

  if (!cf)
  {
    AMFDRSetOptions_cold_2();
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 16) = cf;
  CFRetain(cf);
  Value = CFDictionaryGetValue(*(a1 + 16), @"DataStore");
  if (!Value)
  {
    return 1;
  }

  v6 = Value;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v6))
  {
    return 1;
  }

  if (CFStringCompare(v6, @"Remote", 1uLL) == kCFCompareEqualTo)
  {
    v10 = &AMFDRHTTPStore;
LABEL_17:
    *(a1 + 48) = v10;
    return 1;
  }

  if (CFStringCompare(v6, @"Local", 1uLL) == kCFCompareEqualTo)
  {
    v10 = AMFDRLocalStore;
    goto LABEL_17;
  }

  v8 = 1;
  if (CFStringCompare(v6, @"Memory", 1uLL) == kCFCompareEqualTo)
  {
    *(a1 + 48) = &AMFDRMemoryStore;
    if (CFDictionaryGetValue(cf, @"MemoryStoreURL"))
    {
      AMFDRLoadMemoryStoreFromFile(a1);
    }

    if (!*(a1 + 80))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a1 + 80) = Mutable;
      if (!Mutable)
      {
        AMFDRSetOptions_cold_1();
        return 0;
      }
    }

    return 1;
  }

  return v8;
}

void *AMFDRCreateTypeWithOptions(CFAllocatorRef allocator, const void *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v6 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"DataStore", a2);
      v7 = AMFDRCreateWithImplementation(allocator, v6, 0, 0);
    }

    else
    {
      AMFDRCreateTypeWithOptions_cold_1();
      v7 = 0;
    }
  }

  else
  {
    AMFDRCreateTypeWithOptions_cold_2();
    v7 = 0;
  }

  AMSupportSafeRelease();
  return v7;
}

uint64_t AMFDRSetOption(CFDictionaryRef *cf, const void *a2, const __CFString *a3)
{
  if (cf)
  {
    if (cf[2])
    {
      if (a2)
      {
        v6 = CFGetAllocator(cf);
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, cf[2]);
        v8 = MutableCopy;
        if (MutableCopy)
        {
          if (a3)
          {
            if (CFEqual(a2, @"Permissions"))
            {
              Value = CFDictionaryGetValue(cf[2], @"Permissions");
              if (Value)
              {
                if (CFStringCompare(a3, Value, 0))
                {
                  v10 = cf[4];
                  if (v10)
                  {
                    CFRelease(v10);
                    cf[4] = 0;
                  }
                }
              }
            }

            CFDictionarySetValue(v8, a2, a3);
          }

          else
          {
            CFDictionaryRemoveValue(MutableCopy, a2);
          }

          if (AMFDRSetOptions(cf, v8))
          {
            if (CFEqual(a2, @"PrivateKey"))
            {
              v11 = &kAMFDRPlatformImplementationStation;
              if (cf[17] == &kAMFDRPlatformImplementationStation)
              {
                if (off_2835AD490[0])
                {
                  v12 = cf[18];
                  if (v12)
                  {
                    (off_2835AD490[0])(v12);
                    cf[18] = 0;
                    v11 = cf[17];
                  }
                }

                v13 = *(v11 + 2);
                if (v13)
                {
                  v14 = v13(0);
                }

                else
                {
                  v14 = 0;
                }

                cf[18] = v14;
                AMFDRCryptoGetPrivateKey(cf);
              }

              else
              {
                AMFDRSetOption_cold_2();
              }
            }

            else if (CFEqual(a2, @"Certificate"))
            {
              v15 = cf[4];
              if (v15)
              {
                CFRelease(v15);
                cf[4] = 0;
              }

              AMFDRCryptoGetCert(cf);
            }
          }

          else
          {
            AMFDRSetOption_cold_1();
          }
        }

        else
        {
          AMFDRSetOption_cold_3();
        }
      }

      else
      {
        AMFDRSetOption_cold_4();
      }
    }

    else
    {
      AMFDRSetOption_cold_5();
    }
  }

  else
  {
    AMFDRSetOption_cold_6();
  }

  return AMSupportSafeRelease();
}

uint64_t AMFDRLoadMemoryStoreFromFile(uint64_t a1)
{
  v1 = a1;
  theDict = 0;
  if (!a1)
  {
    AMFDRLoadMemoryStoreFromFile_cold_3();
    goto LABEL_15;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    AMFDRLoadMemoryStoreFromFile_cold_2();
LABEL_19:
    v1 = 0;
    goto LABEL_15;
  }

  if (!CFDictionaryGetValue(v2, @"MemoryStoreURL"))
  {
    AMFDRLoadMemoryStoreFromFile_cold_1();
    goto LABEL_19;
  }

  v3 = *MEMORY[0x277CBECE8];
  URLFromString = AMSupportCreateURLFromString();
  v5 = URLFromString;
  if (!URLFromString)
  {
    goto LABEL_20;
  }

  v9 = 0;
  if (MEMORY[0x223DB7EB0](URLFromString, &v9))
  {
    v6 = 0;
  }

  else
  {
    v6 = v9 == 1;
  }

  if (v6)
  {
    if (MEMORY[0x223DB7E10](v3, &theDict, v5))
    {
      v7 = 1;
    }

    else
    {
      v7 = theDict == 0;
    }

    if (!v7)
    {
      v1 = AMFDRSetMemoryStore(v1, theDict);
      goto LABEL_15;
    }

LABEL_20:
    AMSupportLogInternal();
    v1 = 0;
    goto LABEL_15;
  }

  AMSupportLogInternal();
  v1 = 1;
LABEL_15:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v1;
}

void AMFDRSetAssemblyIdentifierToVerify(uint64_t a1, void *key, const __CFString *a3)
{
  if (a1)
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      if (key)
      {
        CFDictionaryRemoveValue(v4, key);
        if (a3)
        {
          v7 = CFGetTypeID(a3);
          if (v7 == CFStringGetTypeID() && CFStringGetLength(a3) >= 1)
          {
            v8 = *(a1 + 104);

            CFDictionarySetValue(v8, key, a3);
          }
        }
      }

      else
      {
        AMFDRSetAssemblyIdentifierToVerify_cold_1();
      }
    }

    else
    {
      AMFDRSetAssemblyIdentifierToVerify_cold_2();
    }
  }

  else
  {
    AMFDRSetAssemblyIdentifierToVerify_cold_3();
  }
}

const void *AMFDRGetAssemblyIDToVerify(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    AMFDRGetAssemblyIDToVerify_cold_3();
    return 0;
  }

  v2 = *(a1 + 104);
  if (!v2)
  {
    AMFDRGetAssemblyIDToVerify_cold_2();
    return 0;
  }

  if (!a2)
  {
    AMFDRGetAssemblyIDToVerify_cold_1();
    return 0;
  }

  return CFDictionaryGetValue(v2, a2);
}

void AMFDRSetSubCCDigestsToVerify(uint64_t a1, void *key, const void *a3)
{
  if (a1)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      if (key)
      {
        CFDictionaryRemoveValue(v4, key);
        if (a3)
        {
          v7 = CFGetTypeID(a3);
          if (v7 == CFArrayGetTypeID() && CFArrayGetCount(a3) >= 1)
          {
            v8 = *(a1 + 128);

            CFDictionarySetValue(v8, key, a3);
          }
        }
      }

      else
      {
        AMFDRSetSubCCDigestsToVerify_cold_1();
      }
    }

    else
    {
      AMFDRSetSubCCDigestsToVerify_cold_2();
    }
  }

  else
  {
    AMFDRSetSubCCDigestsToVerify_cold_3();
  }
}

const void *AMFDRGetSubCCDigestsToVerify(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    AMFDRGetSubCCDigestsToVerify_cold_3();
    return 0;
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    AMFDRGetSubCCDigestsToVerify_cold_2();
    return 0;
  }

  if (!a2)
  {
    AMFDRGetSubCCDigestsToVerify_cold_1();
    return 0;
  }

  return CFDictionaryGetValue(v2, a2);
}

uint64_t AMFDRGetOptions(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  AMFDRGetOptions_cold_1();
  return 0;
}

uint64_t AMFDRGetInfo(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  AMFDRGetInfo_cold_1();
  return 0;
}

uint64_t AMFDRGetCert(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  AMFDRGetCert_cold_1();
  return 0;
}

void AMFDRIncrementStat(CFMutableDictionaryRef *a1, void *key)
{
  valuePtr = 0;
  if (!a1)
  {
    AMFDRIncrementStat_cold_5();
    return;
  }

  v3 = a1[9];
  if (!v3)
  {
    AMFDRIncrementStat_cold_4();
    return;
  }

  if (!key)
  {
    AMFDRIncrementStat_cold_3();
    return;
  }

  Value = CFDictionaryGetValue(v3, key);
  if (Value)
  {
    if (!CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
    {
      AMFDRIncrementStat_cold_1();
      return;
    }

    v6 = valuePtr + 1;
  }

  else
  {
    v6 = 1;
  }

  valuePtr = v6;
  v7 = CFGetAllocator(a1);
  v8 = CFNumberCreate(v7, kCFNumberLongType, &valuePtr);
  if (v8)
  {
    v9 = v8;
    CFDictionarySetValue(a1[9], key, v8);
    CFRelease(v9);
  }

  else
  {
    AMFDRIncrementStat_cold_2();
  }
}

void AMFDRSetStat(CFMutableDictionaryRef *cf, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (cf)
  {
    if (cf[9])
    {
      if (a2)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberLongType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(cf[9], a2, v6);
          CFRelease(v7);
        }

        else
        {
          AMFDRSetStat_cold_1();
        }
      }

      else
      {
        AMFDRSetStat_cold_2();
      }
    }

    else
    {
      AMFDRSetStat_cold_3();
    }
  }

  else
  {
    AMFDRSetStat_cold_4();
  }
}

void AMFDRCopyStatString(CFMutableDictionaryRef *cf, const void *a2, const __CFString *a3)
{
  if (cf)
  {
    if (cf[9])
    {
      if (a2)
      {
        if (a3)
        {
          v6 = CFGetAllocator(cf);
          Copy = CFStringCreateCopy(v6, a3);
          if (Copy)
          {
            v8 = Copy;
            CFDictionarySetValue(cf[9], a2, Copy);

            CFRelease(v8);
          }

          else
          {
            AMFDRCopyStatString_cold_1();
          }
        }

        else
        {
          AMFDRCopyStatString_cold_2();
        }
      }

      else
      {
        AMFDRCopyStatString_cold_3();
      }
    }

    else
    {
      AMFDRCopyStatString_cold_4();
    }
  }

  else
  {
    AMFDRCopyStatString_cold_5();
  }
}

uint64_t AMFDRGetMemoryStore(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  AMFDRGetMemoryStore_cold_1();
  return 0;
}

uint64_t AMFDRFlushMemoryStoreToFile(uint64_t a1)
{
  if (!a1)
  {
    AMFDRFlushMemoryStoreToFile_cold_5();
LABEL_16:
    Value = 0;
    goto LABEL_8;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    AMFDRFlushMemoryStoreToFile_cold_4();
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v2, @"MemoryStoreURL");
  if (!Value)
  {
    AMFDRFlushMemoryStoreToFile_cold_3();
    goto LABEL_8;
  }

  if (!*(a1 + 80))
  {
    AMFDRFlushMemoryStoreToFile_cold_2();
    goto LABEL_16;
  }

  v4 = *MEMORY[0x277CBECE8];
  if (!AMSupportCreateURLFromString())
  {
    AMFDRFlushMemoryStoreToFile_cold_1();
    goto LABEL_16;
  }

  if (AMSupportWriteDictionarytoFileURL())
  {
    AMSupportLogInternal();
    goto LABEL_16;
  }

  AMSupportLogInternal();
  Value = 1;
LABEL_8:
  AMSupportSafeRelease();
  return Value;
}

uint64_t AMFDRSetMemoryStore(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      CFDictionaryGetCount(v4);
      AMSupportLogInternal();
      v5 = *(a1 + 80);
      if (v5)
      {
        CFRelease(v5);
      }

      *(a1 + 80) = 0;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
    *(a1 + 80) = MutableCopy;
    if (MutableCopy)
    {
      return 1;
    }
  }

  AMFDRSetMemoryStore_cold_1();
  return 0;
}

uint64_t AMFDRClearMemoryStore(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      CFDictionaryGetCount(v2);
      AMSupportLogInternal();
      v3 = *(a1 + 80);
      if (v3)
      {
        CFRelease(v3);
      }

      *(a1 + 80) = 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 80) = Mutable;
    if (Mutable)
    {
      return 1;
    }
  }

  AMFDRClearMemoryStore_cold_1();
  return 0;
}

uint64_t AMFDRSetCopyMGOverrideCallback(uint64_t a1, uint64_t a2)
{
  if (AMFDREntitlementIsEntitled(@"com.apple.libFDR.AllowIdentifierOverride"))
  {
    if (a1)
    {
      *(a1 + 88) = a2;
      return 1;
    }

    AMFDRSetCopyMGOverrideCallback_cold_2();
  }

  else
  {
    AMFDRSetCopyMGOverrideCallback_cold_1();
  }

  return 0;
}

uint64_t AMFDRCopyClientId(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 136), *v1 >= 0x59uLL) && (v2 = v1[11]) != 0)
  {
    return v2(a1, *(a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t AMFDRCopyCertifyClientId(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"CertifyClientId");
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      return v4;
    }
  }

  v5 = a1[17];
  if (*v5 < 0x59uLL)
  {
    return 0;
  }

  v6 = v5[11];
  if (!v6)
  {
    return 0;
  }

  v7 = a1[18];

  return v6(a1, v7);
}

CFStringRef AMFDRCopyCertifyClientIdSik(void *a1)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = a1[2];
  if (v2 && (Value = CFDictionaryGetValue(v2, @"CertifySikPub")) != 0)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 != CFDataGetTypeID())
    {
      goto LABEL_14;
    }

    v6 = CFGetAllocator(a1);
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    SikPubDigestIfNecessary = AMFDRDataCreateSikPubDigestIfNecessary(v6, BytePtr, Length);
    if (!SikPubDigestIfNecessary)
    {
      goto LABEL_14;
    }

    v10 = CFGetAllocator(a1);
    v11 = AMFDRCreateInstanceString(v10, SikPubDigestIfNecessary);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
  }

  else
  {
    SikPub = AMFDRCryptoGetSikPub(a1);
    if (!SikPub)
    {
LABEL_14:
      AMSupportLogInternal();
      v17 = 0;
      goto LABEL_13;
    }

    v12 = SikPub;
  }

  v14 = AMFDRCopyCertifyClientId(a1);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = CFGetAllocator(a1);
  v16 = CFStringCreateWithFormat(v15, 0, @"sik-%@-%@", v14, v12);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
LABEL_13:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v17;
}

uint64_t AMFDRGetTrustError(__CFError *a1)
{
  valuePtr = 0;
  if (a1)
  {
    v1 = CFErrorCopyUserInfo(a1);
    if (v1)
    {
      v2 = v1;
      v3 = *MEMORY[0x277CBEE78];
      do
      {
        Value = CFDictionaryGetValue(v2, @"AMFDRTrustError");
        v5 = CFDictionaryGetValue(v2, v3);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        CFRelease(v2);
        v2 = CFErrorCopyUserInfo(v6);
      }

      while (v2);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  return valuePtr;
}

uint64_t AMFDRCopyUnderlyingDictionary(__CFError *a1, const void *a2)
{
  if (a1)
  {
    v3 = CFErrorCopyUserInfo(a1);
    if (v3)
    {
      v4 = v3;
      v5 = *MEMORY[0x277CBEE78];
      do
      {
        CFDictionaryGetValue(v4, a2);
        Value = CFDictionaryGetValue(v4, v5);
        CFRelease(v4);
        if (!Value)
        {
          break;
        }

        v4 = CFErrorCopyUserInfo(Value);
      }

      while (v4);
    }
  }

  return AMSupportSafeRetain();
}

const __CFArray *AMFDRNonEmptyArrayValueExists(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFArrayGetTypeID())
        {
          return (CFArrayGetCount(v4) > 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL AMFDRSetSsoCreateServiceTicketCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
  }

  else
  {
    AMFDRSetSsoCreateServiceTicketCallback_cold_1();
  }

  return a1 != 0;
}

BOOL AMFDROptionsGetBooleanValue(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFBooleanGetTypeID())
      {
        return CFBooleanGetValue(v6) != 0;
      }
    }
  }

  return a3;
}

uint64_t _CFDictionaryAddDictionary(__CFDictionary *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    _CFDictionaryAddDictionary_cold_2();
    return 0;
  }

  if (!a1)
  {
    _CFDictionaryAddDictionary_cold_1();
    return 0;
  }

  Count = CFDictionaryGetCount(theDict);
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(theDict, v5, v6);
  if (Count >= 1)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = *v8++;
      CFDictionarySetValue(a1, v9, v11);
      --Count;
    }

    while (Count);
    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    free(v5);
  }

  if (v6)
  {
    free(v6);
  }

  return 1;
}

uint64_t AMFDRRegisterModuleChallengeCallback(void *a1, CFStringRef theString2, const __CFString *a3)
{
  if (theString2)
  {
    if (a3)
    {
      v6 = a1[12];
      if (v6)
      {
        while (CFStringCompare(*v6, theString2, 0))
        {
          v6 = *(v6 + 16);
          if (!v6)
          {
            goto LABEL_6;
          }
        }

        *(v6 + 8) = a3;
        AMSupportLogInternal();
        return 1;
      }

LABEL_6:
      v7 = malloc_type_malloc(0x18uLL, 0xE00403260BBE2uLL);
      if (v7)
      {
        v8 = v7;
        v9 = CFGetAllocator(a1);
        Copy = CFStringCreateCopy(v9, theString2);
        *v8 = Copy;
        if (Copy)
        {
          v11 = a1[12];
          v8[1] = a3;
          v8[2] = v11;
          a1[12] = v8;
          return 1;
        }

        AMFDRRegisterModuleChallengeCallback_cold_1(v8);
      }

      else
      {
        AMFDRRegisterModuleChallengeCallback_cold_2();
      }
    }

    else
    {
      AMFDRRegisterModuleChallengeCallback_cold_3();
    }
  }

  else
  {
    AMFDRRegisterModuleChallengeCallback_cold_4();
  }

  return 0;
}

__CFString *AMFDRCreateRecoveryPermissions(__CFString *a1, const __CFString *a2, const __CFString *a3, CFArrayRef theArray, const __CFArray *a5, uint64_t a6)
{
  if (!a1)
  {
    AMFDRCreateRecoveryPermissions_cold_14(a6);
    return 0;
  }

  if (!a2)
  {
    AMFDRCreateRecoveryPermissions_cold_13(a6);
    return 0;
  }

  if (!a3)
  {
    AMFDRCreateRecoveryPermissions_cold_12(a6);
    return 0;
  }

  if (!theArray)
  {
    AMFDRCreateRecoveryPermissions_cold_11(a6);
    return 0;
  }

  if (!a5)
  {
    AMFDRCreateRecoveryPermissions_cold_10(a6);
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v12 = CFArrayGetCount(a5);
  v13 = CFArrayGetCount(theArray);
  if (Count != v12)
  {
    AMFDRCreateRecoveryPermissions_cold_1(a5, a6, v13);
    return 0;
  }

  if (v13 >= 1)
  {
    v14 = 0;
    PermissionsString = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (!ValueAtIndex)
      {
        AMFDRCreateRecoveryPermissions_cold_9(a6);
        goto LABEL_27;
      }

      v17 = ValueAtIndex;
      v18 = CFGetTypeID(ValueAtIndex);
      if (v18 != CFStringGetTypeID())
      {
        AMFDRCreateRecoveryPermissions_cold_2(a6, v17, v19, v20, v21, v22, v23, v24);
        goto LABEL_27;
      }

      v25 = CFArrayGetValueAtIndex(a5, v14);
      if (!v25)
      {
        AMFDRCreateRecoveryPermissions_cold_8(a6);
        goto LABEL_27;
      }

      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 != CFStringGetTypeID())
      {
        AMFDRCreateRecoveryPermissions_cold_3(a6, v26, v28, v29, v30, v31, v32, v33);
        goto LABEL_27;
      }

      if (PermissionsString)
      {
        if ((AMFDRDataAppendPermissionsString(a1, 0, v17, v26, PermissionsString) & 1) == 0)
        {
          AMFDRCreateRecoveryPermissions_cold_4();
          goto LABEL_28;
        }
      }

      else
      {
        PermissionsString = AMFDRDataCreatePermissionsString(a1, 0, v17, v26);
        if (!PermissionsString)
        {
          AMFDRCreateRecoveryPermissions_cold_7();
          return PermissionsString;
        }
      }

      if (++v14 >= CFArrayGetCount(theArray))
      {
        goto LABEL_20;
      }
    }
  }

  PermissionsString = 0;
LABEL_20:
  if ((AMFDRDataAppendPermissionsString(a1, 0, a2, a3, PermissionsString) & 1) == 0)
  {
    AMFDRCreateRecoveryPermissions_cold_4();
LABEL_27:
    if (!PermissionsString)
    {
      return PermissionsString;
    }

LABEL_28:
    CFRelease(PermissionsString);
    return 0;
  }

  if ((AMFDRDataAppendPermissionsString(a1, 5u, a2, a3, PermissionsString) & 1) == 0)
  {
    AMFDRCreateRecoveryPermissions_cold_6();
    goto LABEL_27;
  }

  return PermissionsString;
}

unint64_t AMFDRSetDigest(CFTypeRef cf, uint64_t a2, uint64_t a3, const void *a4)
{
  v4 = cf;
  if (!cf)
  {
    AMFDRSetDigest_cold_5();
    return v4;
  }

  if (!a2)
  {
    AMFDRSetDigest_cold_4();
    return 0;
  }

  if (!a3)
  {
    AMFDRSetDigest_cold_3();
    return 0;
  }

  v8 = CFGetAllocator(cf);
  FullKey = AMFDRDataLocalCreateFullKey(v8, a2, a3);
  if (!FullKey)
  {
    AMFDRSetDigest_cold_2();
    return 0;
  }

  v10 = FullKey;
  v11 = *(v4 + 112);
  v4 = v11 != 0;
  if (v11)
  {
    if (a4)
    {
      CFDictionarySetValue(v11, v10, a4);
    }

    else
    {
      CFDictionaryRemoveValue(v11, v10);
    }
  }

  else
  {
    AMFDRSetDigest_cold_1();
  }

  CFRelease(v10);
  return v4;
}

BOOL AMFDRCreateDataSignature(CFTypeRef cf, int a2, uint64_t a3, uint64_t a4, void **a5, void *a6)
{
  DataSignature = AMFDRCryptoCreateDataSignature(a2, a3, a4, a5, a6, cf);
  if (DataSignature != 100)
  {
    AMFDRCreateDataSignature_cold_1();
  }

  return DataSignature == 100;
}

void *AMFDRGetSikOverride(void *cf, uint64_t a2, uint64_t a3)
{
  Value = cf;
  if (!cf)
  {
    return Value;
  }

  if ((*(cf[17] + 8) & 2) != 0)
  {
    return 0;
  }

  if (!a2 || !a3)
  {
    AMFDRGetSikOverride_cold_2();
    return 0;
  }

  v6 = CFGetAllocator(cf);
  FullKey = AMFDRDataLocalCreateFullKey(v6, a2, a3);
  if (!FullKey)
  {
    AMFDRGetSikOverride_cold_1();
    return 0;
  }

  v8 = FullKey;
  v9 = Value[15];
  if (v9)
  {
    Value = CFDictionaryGetValue(v9, v8);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v8);
  return Value;
}

void AMFDRSetRestorePeriodOptions(CFTypeRef a1)
{
  v1 = _restorePeriodOptions;
  if (_restorePeriodOptions != a1)
  {
    if (a1)
    {
      a1 = CFRetain(a1);
    }

    _restorePeriodOptions = a1;
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t AMFDRSetRestorePeriodSsoCallback(uint64_t result, uint64_t a2)
{
  _restorePeriodSsoCallback = result;
  _restorePeriodSsoContext = a2;
  return result;
}

uint64_t AMFDREnableRestorePeriodSsoCallback(uint64_t a1)
{
  if (a1)
  {
    v1 = _restorePeriodSsoCallback == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  if (!v1)
  {
    v3 = _restorePeriodSsoContext;
    *(a1 + 56) = _restorePeriodSsoCallback;
    *(a1 + 64) = v3;
  }

  return v2;
}

uint64_t AMFDRAddMinimalManifestPropertyItemsToVerify(uint64_t a1, CFTypeRef cf)
{
  v2 = a1;
  if (!a1)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_8();
    v11 = 0;
    goto LABEL_39;
  }

  if (!*(a1 + 16))
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_7();
    goto LABEL_49;
  }

  if (!cf || (v4 = CFGetTypeID(cf), v4 != CFDictionaryGetTypeID()) || CFDictionaryGetCount(cf) <= 0)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_6();
LABEL_49:
    v11 = 0;
LABEL_43:
    v2 = 0;
    goto LABEL_39;
  }

  Value = CFDictionaryGetValue(*(v2 + 16), @"MinimalManifestPropertyCheck");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
  {
    v8 = CFGetAllocator(v2);
    MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v6);
  }

  else
  {
    v10 = CFGetAllocator(v2);
    MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v11 = MutableCopy;
  if (!MutableCopy)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_5();
    goto LABEL_43;
  }

  Count = CFDictionaryGetCount(cf);
  v13 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v14 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v15 = v14;
  if (!v13 || !v14)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_4();
    goto LABEL_43;
  }

  CFDictionaryGetKeysAndValues(cf, v13, v14);
  if (Count >= 1)
  {
    v16 = 0;
    v36 = Count;
    v37 = v11;
    do
    {
      v17 = v13[v16];
      if (!v17 || (v18 = CFGetTypeID(v17), v18 != CFStringGetTypeID()) || (v19 = v15[v16]) == 0 || (v20 = CFGetTypeID(v19), v20 != CFArrayGetTypeID()))
      {
        AMFDRAddMinimalManifestPropertyItemsToVerify_cold_3();
        goto LABEL_43;
      }

      v21 = v15[v16];
      if (CFDictionaryContainsKey(v11, v13[v16]))
      {
        v22 = CFDictionaryGetValue(v11, v13[v16]);
        if (!v22 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFArrayGetTypeID()))
        {
          AMFDRAddMinimalManifestPropertyItemsToVerify_cold_2();
          goto LABEL_43;
        }

        v25 = CFGetAllocator(v2);
        v26 = CFArrayCreateMutableCopy(v25, 0, v23);
        if (!v26)
        {
          AMFDRAddMinimalManifestPropertyItemsToVerify_cold_1();
          goto LABEL_43;
        }

        v27 = v26;
        if (CFArrayGetCount(v21) >= 1)
        {
          v28 = v15;
          v29 = v2;
          v30 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, v30);
            if (ValueAtIndex)
            {
              v32 = ValueAtIndex;
              v33 = CFGetTypeID(ValueAtIndex);
              if (v33 == CFStringGetTypeID())
              {
                v38.length = CFArrayGetCount(v23);
                v38.location = 0;
                if (!CFArrayContainsValue(v23, v38, v32))
                {
                  CFArrayAppendValue(v27, v32);
                }
              }
            }

            ++v30;
          }

          while (v30 < CFArrayGetCount(v21));
          v2 = v29;
          v15 = v28;
          Count = v36;
          v11 = v37;
        }
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        v34 = v27;
      }

      else
      {
        v34 = v21;
      }

      CFDictionarySetValue(v11, v13[v16], v34);
      if (v27)
      {
        CFRelease(v27);
      }

      ++v16;
    }

    while (v16 != Count);
  }

  AMFDRSetOption(v2, @"MinimalManifestPropertyCheck", v11);
  v2 = 1;
LABEL_39:
  AMSupportSafeFree();
  AMSupportSafeFree();
  if (v11)
  {
    CFRelease(v11);
  }

  return v2;
}

uint64_t AMFDRMigrateCredentials(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    AMFDRMigrateCredentials_cold_4(a3);
    return 0;
  }

  if (!a2)
  {
    AMFDRMigrateCredentials_cold_3(a3);
    return 0;
  }

  v5 = a2[2];
  if (!v5)
  {
    AMFDRMigrateCredentials_cold_2(a3);
    return 0;
  }

  if (*(a1 + 136) != a2[17])
  {
    AMFDRMigrateCredentials_cold_1(a3);
    return 0;
  }

  Value = CFDictionaryGetValue(v5, @"Permissions");
  if (Value)
  {
    AMFDRSetOption(a1, @"Permissions", Value);
  }

  v7 = a2[4];
  if (v7)
  {
    AMFDRSetOption(a1, @"Certificate", v7);
  }

  v8 = *(*(a1 + 136) + 24);
  if (v8 && *(a1 + 144))
  {
    v8();
    *(a1 + 144) = 0;
  }

  v9 = a2[18];
  v10 = *(a2[17] + 16);
  if (v10)
  {
    v9 = v10(v9);
  }

  *(a1 + 144) = v9;
  return 1;
}

CFTypeRef AMFDRCreateCopyWithOptionsOverride(uint64_t a1, const __CFDictionary *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    AMFDRCreateCopyWithOptionsOverride_cold_3();
    v23 = 0;
    goto LABEL_42;
  }

  v4 = CFGetAllocator(a1);
  v5 = AMFDRCreateWithImplementation(v4, *(a1 + 16), 0, 0);
  v6 = v5[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 24);
  v5[3] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = v5[4];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 32);
  v5[4] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  *(v5 + 20) = *(a1 + 40);
  *(v5 + 7) = *(a1 + 56);
  v10 = v5[9];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 72);
  v5[9] = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = v5[10];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 80);
  v5[10] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v5[11] = *(a1 + 88);
  v14 = *(a1 + 96);
  if (!v14)
  {
LABEL_21:
    v15 = v5[13];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(a1 + 104);
    v5[13] = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v17 = v5[14];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 112);
    v5[14] = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = v5[15];
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = *(a1 + 120);
    v5[15] = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    v21 = v5[16];
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = *(a1 + 128);
    v5[16] = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    if (AMFDRPlatformSetImplementation(v5, *(a1 + 136), *(a1 + 144)))
    {
      if (a2)
      {
        v26[0] = v5;
        CFDictionaryApplyFunction(a2, _AMFDRSetCFDictionaryOptionCallback, v26);
      }

      v23 = CFRetain(v5);
    }

    else
    {
      AMFDRCreateCopyWithOptionsOverride_cold_2();
      v23 = 0;
    }

LABEL_41:
    CFRelease(v5);
    goto LABEL_42;
  }

  while (AMFDRRegisterModuleChallengeCallback(v5, *v14, *(v14 + 8)))
  {
    v14 = *(v14 + 16);
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v23 = 0;
  if (!AMFDRCreateCopyWithOptionsOverride_cold_1(v14, v5))
  {
    goto LABEL_41;
  }

LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

double _AMFDRFinalize(void *a1)
{
  if (!a1)
  {
    _AMFDRFinalize_cold_1();
  }

  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }

  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
    a1[16] = 0;
  }

  v12 = *(a1[17] + 24);
  if (v12 && a1[18])
  {
    v12();
    a1[18] = 0;
  }

  while (1)
  {
    v13 = a1[12];
    if (!v13)
    {
      break;
    }

    a1[12] = *(v13 + 16);
    if (*v13)
    {
      CFRelease(*v13);
    }

    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    free(v13);
  }

  v3[16] = 0;
  result = 0.0;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  return result;
}

CFStringRef _AMFDRCopyFormattingDescription(uint64_t a1)
{
  if (!a1)
  {
    _AMFDRCopyFormattingDescription_cold_1();
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"optionsDict=%@", *(a1 + 16));
}

uint64_t OUTLINED_FUNCTION_1_1@<X0>(uint64_t a1@<X0>, const __CFString *a2@<X8>, void *value, uint64_t a4, void *a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9, char a10)
{

  return AMFDRErrorPushInternal(a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v10, a2, a10);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10, void *a11, uint64_t a12, __int128 a13, uint64_t a14, const __CFString *a15, char a16)
{

  return AMFDRErrorPushInternal(a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a14, a15, a16);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, const __CFString *a16, char a17)
{

  return AMFDRErrorPushInternal(a1, a2, 0, 0, 0, 0, 0, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

__SecTask *AMFDREntitlementIsEntitled(const __CFString *a1)
{
  error = 0;
  v2 = SecTaskCreateFromSelf(0);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = SecTaskCopyValueForEntitlement(v2, a1, &error);
  v5 = v4;
  if (error)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6 || (v7 = CFGetTypeID(v4), v7 != CFBooleanGetTypeID()))
  {
    AMSupportLogInternal();
    CFRelease(v3);
    v8 = 0;
    v3 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = CFBooleanGetValue(v5) != 0;
    CFRelease(v3);
  }

  CFRelease(v5);
  v3 = v8;
LABEL_10:
  if (error)
  {
    CFRelease(error);
  }

  return v3;
}

CFTypeRef AMFDRPlatformCopyDefaultClientIdByInterface(const void *a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v16[0] = "en0";
  v16[1] = "en1";
  v16[2] = "en2";
  v16[3] = "en3";
  if (!a1)
  {
    AMFDRPlatformCopyDefaultClientIdByInterface_cold_2();
LABEL_22:
    v12 = 0;
    goto LABEL_18;
  }

  for (i = 0; i != 4; ++i)
  {
    v3 = strlen(v16[i]);
    v4 = _CopyClientIdForAdapter(a1, v16[i], v3);
    if (v4)
    {
      v12 = v4;
      AMSupportLogInternal();
      goto LABEL_18;
    }
  }

  v5 = if_nameindex();
  if (!v5)
  {
    AMFDRPlatformCopyDefaultClientIdByInterface_cold_1();
    goto LABEL_22;
  }

  v6 = v5;
  if_name = v5->if_name;
  if (if_name)
  {
    p_if_name = &v5[1].if_name;
    do
    {
      if (*if_name == 108 && if_name[1] == 111 && if_name[2] == 48)
      {
        AMSupportLogInternal();
      }

      else
      {
        v10 = strlen(if_name);
        v11 = _CopyClientIdForAdapter(a1, if_name, v10);
        if (v11)
        {
          v12 = v11;
          v15 = *(p_if_name - 2);
          AMSupportLogInternal();
          goto LABEL_17;
        }
      }

      v9 = *p_if_name;
      p_if_name += 2;
      if_name = v9;
    }

    while (v9);
  }

  AMSupportLogInternal();
  v12 = 0;
LABEL_17:
  MEMORY[0x223DB8F10](v6);
LABEL_18:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t AMFDRPlatformCopyDefaultClientIdByECID()
{
  v0 = AMFDRSealingMapCallMGCopyAnswer(@"UniqueChipID", 0);
  if (!v0)
  {
    AMFDRPlatformCopyDefaultClientIdByECID_cold_3();
    return 0;
  }

  v1 = v0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = AMFDRCreateInstanceString(*MEMORY[0x277CBECE8], v0);
  if (!v3)
  {
    AMFDRPlatformCopyDefaultClientIdByECID_cold_2(v1);
    return 0;
  }

  v4 = v3;
  v5 = AMFDRSealingMapCallMGCopyAnswer(@"ChipID", 0);
  if (v5)
  {
    v6 = AMFDRCreateInstanceString(v2, v5);
    v7 = v6;
    if (v6)
    {
      v8 = CFStringCreateWithFormat(v2, 0, @"%@-%@", v6, v4);
      if (v8)
      {
        v9 = AMSupportSafeRetain();
      }

      else
      {
        AMSupportLogInternal();
        v9 = 0;
      }

      goto LABEL_7;
    }

    AMSupportLogInternal();
    v9 = 0;
  }

  else
  {
    AMFDRPlatformCopyDefaultClientIdByECID_cold_1();
    v9 = 0;
    v7 = 0;
  }

  v8 = 0;
LABEL_7:
  CFRelease(v4);
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

CFURLRef AMFDRPlatformCopyDefaultDataStoragePath()
{
  if (MEMORY[0x282221230])
  {
    v0 = malloc_type_calloc(1uLL, 0x400uLL, 0x6647E971uLL);
    if (!v0 || lookupPathForPersistentData() || (v1 = strlen(v0), (v2 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v0, v1, 0)) == 0))
    {
LABEL_11:
      AMSupportLogInternal();
      v2 = 0;
    }
  }

  else
  {
    v3 = MGCopyAnswer();
    v4 = *MEMORY[0x277CBECE8];
    v5 = @"/System/Library/Caches/com.apple.factorydata";
    if (v3 && CFBooleanGetValue(v3) == 1)
    {
      v5 = @"/mnt1/System/Library/Caches/com.apple.factorydata";
    }

    v2 = CFURLCreateWithFileSystemPath(v4, v5, kCFURLPOSIXPathStyle, 1u);
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  AMSupportSafeFree();
  AMSupportSafeRelease();
  return v2;
}

void *AMFDRDataUtilitiesCreateStringWithBytesNoCopy(const __CFAllocator *a1, const __CFData *a2, const UInt8 *a3, unsigned int a4, CFStringEncoding a5, Boolean a6)
{
  v12 = objc_autoreleasePoolPush();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (isStringInitWithBytesNoCopyAvailable_onceToken != -1)
  {
    AMFDRDataUtilitiesCreateStringWithBytesNoCopy_cold_1();
  }

  if (isStringInitWithBytesNoCopyAvailable_available)
  {
    if (a3 && a4)
    {
      if (!a2 || CFDataGetBytePtr(a2) > a3 || (BytePtr = CFDataGetBytePtr(a2), &a3[a4] > &BytePtr[CFDataGetLength(a2)]) || a5 == -1)
      {
        AMSupportLogInternal();
        goto LABEL_18;
      }

      v14 = CFRetain(a2);
      v23[3] = v14;
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = CFStringConvertEncodingToNSStringEncoding(a5);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __AMFDRDataUtilitiesCreateStringWithBytesNoCopy_block_invoke;
      v21[3] = &unk_2784AEBB8;
      v21[4] = &v22;
      v17 = [v15 initWithBytesNoCopy:a3 length:a4 encoding:v16 deallocator:v21];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] string];
    }

    if (v17)
    {
      v18 = CFRetain(v17);
      goto LABEL_15;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_16;
  }

  AMSupportLogInternal();
  v18 = CFStringCreateWithBytes(a1, a3, a4, a5, a6);
LABEL_15:
  v19 = v18;
LABEL_16:
  _Block_object_dispose(&v22, 8);
  objc_autoreleasePoolPop(v12);
  return v19;
}

void sub_2224C1B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef AMFDRDataUtilitiesCreateDataWithBytesNoCopy(const __CFData *a1, unint64_t a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (a2 && a3)
  {
    if (!a1 || CFDataGetBytePtr(a1) > a2 || (BytePtr = CFDataGetBytePtr(a1), a2 + a3 > &BytePtr[CFDataGetLength(a1)]))
    {
      AMSupportLogInternal();
      goto LABEL_11;
    }

    v8 = CFRetain(a1);
    v15[3] = v8;
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __AMFDRDataUtilitiesCreateDataWithBytesNoCopy_block_invoke;
    v13[3] = &unk_2784AEBB8;
    v13[4] = &v14;
    v10 = [v9 initWithBytesNoCopy:a2 length:a3 deallocator:v13];
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] data];
  }

  if (!v10)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = CFRetain(v10);
LABEL_12:
  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v6);
  return v11;
}

void sub_2224C1CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __isStringInitWithBytesNoCopyAvailable_block_invoke()
{
  result = [MEMORY[0x277CCACA8] instancesRespondToSelector:sel_initWithBytesNoCopy_length_encoding_deallocator_];
  isStringInitWithBytesNoCopyAvailable_available = result;
  return result;
}

uint64_t AMFDRModuleCameraSensorAuthIsValid(const __CFString *a1, __CFString ***a2, uint64_t a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    AMFDRModuleCameraSensorAuthIsValid_cold_2(a3);
    return 0;
  }

  if (!a2)
  {
    AMFDRModuleCameraSensorAuthIsValid_cold_1(a3);
    return 0;
  }

  v7 = &off_2784AEC00;
  v8 = 3;
  while (CFStringCompare(a1, *(v7 - 1), 0))
  {
    v7 += 3;
    if (!--v8)
    {
      AMFDRErrorPushInternal(a3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "AMFDRModuleCameraSensorAuthIsValid", @"cannot find matched camera sensor info: (%@)", a1);
      return 0;
    }
  }

  *a2 = v7;
  return 1;
}

CFStringRef AMFDRDataCreateString(const __CFAllocator *a1, const __CFString *cf, int a3)
{
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    if (!a3)
    {
LABEL_21:

      return CFStringCreateCopy(a1, cf);
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(cf);
      if ((Length - 211) >= 0xFFFFFFFFFFFFFF2ELL)
      {
        v9 = Length;
        v10 = 0;
        do
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(cf, v10);
          if ((CharacterAtIndex - 48) >= 0xA && (CharacterAtIndex & 0xFFFFFFDF) - 65 >= 0x1A)
          {
            v13 = 0;
            while (CharacterAtIndex != asc_22254ACFD[v13])
            {
              if (++v13 == 4)
              {
                goto LABEL_41;
              }
            }
          }

          ++v10;
        }

        while (v10 != v9);
        goto LABEL_21;
      }

      AMSupportLogInternal();
    }

    goto LABEL_41;
  }

  v14 = CFGetTypeID(cf);
  if (v14 != CFDataGetTypeID())
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFBooleanGetTypeID())
    {
      if (*MEMORY[0x277CBED28] == cf)
      {
        v17 = "1";
      }

      else
      {
        v17 = "0";
      }

      return CFStringCreateWithFormat(a1, 0, @"%s", v17);
    }

    v18 = CFGetTypeID(cf);
    if (v18 == CFNumberGetTypeID() && !CFNumberIsFloatType(cf))
    {
      ByteSize = CFNumberGetByteSize(cf);
      if (ByteSize <= 4)
      {
        valuePtr = -1431655766;
        if (CFNumberGetValue(cf, kCFNumberIntType, &valuePtr))
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

      if (ByteSize == 8)
      {
        v21 = 0xAAAAAAAAAAAAAAAALL;
        if (CFNumberGetValue(cf, kCFNumberLongLongType, &v21))
        {
          if (HIDWORD(v21))
          {
            result = AMSupportCopyHexStringFromUInt64();
            goto LABEL_34;
          }

LABEL_33:
          result = AMSupportCopyHexStringFromUInt32();
LABEL_34:
          v20 = 1;
          goto LABEL_35;
        }

LABEL_47:
        result = AMSupportLogInternal();
        v20 = 4;
LABEL_35:
        if (v20 != 4)
        {
          return result;
        }

        return 0;
      }
    }

LABEL_41:
    AMSupportLogInternal();
    return 0;
  }

  return AMSupportCopyHexStringFromData();
}

const __CFString *AMFDRDataCreateSikInstanceString(const __CFAllocator *a1, uint64_t a2)
{
  v3 = AMFDRCreateTypeWithOptions(a1, @"Local", 0);
  if (v3)
  {
    SikInstanceStringInternal = AMFDRDataCreateSikInstanceStringInternal(v3, 0, a2);
  }

  else
  {
    AMFDRDataCreateSikInstanceString_cold_1();
    SikInstanceStringInternal = 0;
  }

  AMSupportSafeRelease();
  return SikInstanceStringInternal;
}

const __CFString *AMFDRDataCreateSikInstanceStringInternal(__CFString *cf, uint64_t a2, uint64_t a3)
{
  v3 = cf;
  if (!cf)
  {
    AMFDRDataCreateSikInstanceStringInternal_cold_4();
    goto LABEL_9;
  }

  if (!a3)
  {
    AMFDRDataCreateSikInstanceStringInternal_cold_3();
LABEL_15:
    v3 = 0;
    goto LABEL_9;
  }

  if (!a2 || (SikPub = AMFDRGetSikOverride(cf, a2, a3)) == 0)
  {
    SikPub = AMFDRCryptoGetSikPub(v3);
    if (!SikPub)
    {
      AMFDRDataCreateSikInstanceStringInternal_cold_2();
      v3 = 0;
      goto LABEL_9;
    }
  }

  v6 = SikPub;
  v7 = CFGetAllocator(v3);
  v8 = CFStringCreateWithFormat(v7, 0, @"sik-%@-%@", a3, v6);
  v9 = v8;
  if (!v8)
  {
    AMFDRDataCreateSikInstanceStringInternal_cold_1();
    goto LABEL_15;
  }

  if (CFStringGetLength(v8) >= 211)
  {
    AMSupportLogInternal();
    goto LABEL_15;
  }

  v3 = v9;
LABEL_9:
  AMSupportSafeRelease();
  return v3;
}

const __CFString *AMFDRDataCreateInstanceString(__CFString *a1, uint64_t a2, const void *a3)
{
  if (a3)
  {
    if (AMFDRDataInstanceUseSikFormat(a1))
    {

      return AMFDRDataCreateSikInstanceStringInternal(a1, a2, a3);
    }

    else
    {

      return CFRetain(a3);
    }
  }

  else
  {
    AMFDRDataCreateInstanceString_cold_1();
    return 0;
  }
}

BOOL AMFDRDataInstanceUseSikFormat(uint64_t a1)
{
  if (!a1)
  {
    return AMFDRSealingMapGetFDRDataVersionForDeviceInternal(0) == 2;
  }

  v2 = *(*(a1 + 136) + 8);
  if ((v2 & 8) != 0)
  {
    v3 = 1;
    if ((v2 & 2) != 0)
    {
      return 0;
    }
  }

  else
  {
    v3 = AMFDRSealingMapGetFDRDataVersionForDeviceInternal(a1) == 2;
    if ((*(*(a1 + 136) + 8) & 2) != 0)
    {
      return 0;
    }
  }

  v4 = AMFDRGetOptions(a1);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"UseSikDataInstance");
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  else
  {
    AMFDRDataInstanceUseSikFormat_cold_1();
  }

  return v3;
}

const __CFString *AMFDRDataCreatePermissionsString(__CFString *cf, unsigned int a2, const __CFString *a3, const __CFString *a4)
{
  v4 = a4;
  if (a4)
  {
    if (cf)
    {
      v8 = CFGetAllocator(cf);
    }

    else
    {
      v8 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFStringCreateMutable(v8, 0);
    if (Mutable)
    {
      v10 = Mutable;
      if (AMFDRDataAppendPermissionsString(cf, a2, a3, v4, Mutable))
      {
        v4 = CFRetain(v10);
      }

      else
      {
        AMFDRDataCreatePermissionsString_cold_1();
        v4 = 0;
      }

      CFRelease(v10);
    }

    else
    {
      AMFDRDataCreatePermissionsString_cold_2();
      return 0;
    }
  }

  else
  {
    AMFDRDataCreatePermissionsString_cold_3();
  }

  return v4;
}

uint64_t AMFDRDataAppendPermissionsString(__CFString *cf, unsigned int a2, const __CFString *a3, const __CFString *a4, __CFString *a5)
{
  if (!a4)
  {
    AMFDRDataAppendPermissionsString_cold_6();
    return 0;
  }

  if (a2 == 10)
  {
    goto LABEL_7;
  }

  if (a2 != 8)
  {
    InstanceString = AMFDRDataCreateInstanceString(cf, a3, a4);
    if (InstanceString)
    {
      v12 = InstanceString;
      if ((AMFDRAppendPermissionsString(a2, a3, InstanceString, a5) & 1) == 0)
      {
        AMSupportLogInternal();
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (!AMFDRSealingMapEntryHasAttributeForClassInternal(cf, a3, @"ChallengeClaim", 0))
  {
LABEL_7:
    SikInstanceStringInternal = AMFDRDataCreateSikInstanceStringInternal(cf, a3, a4);
    if (SikInstanceStringInternal)
    {
      v12 = SikInstanceStringInternal;
      if ((AMFDRAppendPermissionsString(1u, a3, SikInstanceStringInternal, a5) & 1) == 0)
      {
        AMFDRDataAppendPermissionsString_cold_1();
        goto LABEL_21;
      }

      if ((AMFDRAppendPermissionsString(0, a3, a4, a5) & 1) == 0)
      {
        AMFDRDataAppendPermissionsString_cold_2();
LABEL_21:
        v10 = 0;
        goto LABEL_14;
      }

LABEL_13:
      v10 = 1;
LABEL_14:
      CFRelease(v12);
      return v10;
    }

LABEL_17:
    AMFDRDataAppendPermissionsString_cold_3();
    return 0;
  }

  if ((AMFDRAppendPermissionsString(8u, a3, a4, a5) & 1) == 0)
  {
    AMFDRDataAppendPermissionsString_cold_4();
    return 0;
  }

  return 1;
}

const __CFString *AMFDRCreatePermissionsString(const __CFAllocator *a1, unsigned int a2, const __CFString *a3, const __CFString *a4)
{
  if (!a3)
  {
    AMFDRCreatePermissionsString_cold_4();
    return 0;
  }

  v4 = a4;
  if (!a4)
  {
    AMFDRCreatePermissionsString_cold_3();
    return v4;
  }

  Mutable = CFStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    AMFDRCreatePermissionsString_cold_2();
    return 0;
  }

  v8 = Mutable;
  if (AMFDRAppendPermissionsString(a2, a3, v4, Mutable))
  {
    v4 = CFRetain(v8);
  }

  else
  {
    AMFDRCreatePermissionsString_cold_1();
    v4 = 0;
  }

  CFRelease(v8);
  return v4;
}

uint64_t AMFDRAppendPermissionsString(unsigned int a1, CFStringRef theString, const __CFString *a3, __CFString *a4)
{
  if (!theString)
  {
    AMFDRAppendPermissionsString_cold_5();
    return 0;
  }

  if (!a3)
  {
    AMFDRAppendPermissionsString_cold_4();
    return 0;
  }

  if (!a4)
  {
    AMFDRAppendPermissionsString_cold_3();
    return 0;
  }

  if (a1 >= 0xF || ((0x7BFFu >> a1) & 1) == 0)
  {
    AMSupportLogInternal();
    return 0;
  }

  v8 = off_2784AECA0[a1];
  if (!CFStringGetLength(theString))
  {
    AMFDRAppendPermissionsString_cold_2();
    return 0;
  }

  if (!CFStringGetLength(a3))
  {
    AMFDRAppendPermissionsString_cold_1();
    return 0;
  }

  if (a1 == 13)
  {
    Length = CFStringGetLength(a4);
    v12 = @";%@/Mothership";
    v13 = @"%@/Mothership";
  }

  else
  {
    if (a1 != 7 || CFStringCompare(theString, @"*", 0) || CFStringCompare(a3, @"*", 0))
    {
      if (CFStringGetLength(a4))
      {
        v9 = @";%@/%@:%@";
      }

      else
      {
        v9 = @"%@/%@:%@";
      }

      CFStringAppendFormat(a4, 0, v9, v8, theString, a3);
      return 1;
    }

    Length = CFStringGetLength(a4);