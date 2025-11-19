uint64_t AMSupportCreatePropertyListFromFileURL(const __CFAllocator *a1, void *a2, const __CFURL *a3)
{
  data[1] = *MEMORY[0x29EDCA608];
  error = 0;
  data[0] = 0;
  v3 = 1;
  if (a2 && a3)
  {
    DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL(a1, data, a3);
    if (DataFromMappedFileURL)
    {
      v3 = DataFromMappedFileURL;
    }

    else
    {
      if (!data[0])
      {
        v3 = 14;
        goto LABEL_10;
      }

      v7 = CFPropertyListCreateWithData(a1, data[0], 0, 0, &error);
      if (v7)
      {
        v3 = 0;
        *a2 = v7;
      }

      else
      {
        AMSupportLogInternal(3, "AMSupportCreatePropertyListFromFileURL", "failed to create property list: %@", v8, v9, v10, v11, v12, error);
        v3 = 2;
      }
    }
  }

  if (data[0])
  {
    CFRelease(data[0]);
  }

LABEL_10:
  if (error)
  {
    CFRelease(error);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t AMSupportPlatformCreateDataFromMappedFileURL(const __CFAllocator *a1, void *a2, const __CFURL *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(&context, 0, sizeof(context));
  bzero(&v22, 0x90uLL);
  v6 = AMSupportPlatformOpenFileStreamWithURL(a3, "rb");
  v7 = v6;
  if (v6)
  {
    v8 = fileno(v6);
    fstat(v8, &v22);
    st_size = v22.st_size;
    if (v22.st_size < 0)
    {
LABEL_5:
      v12 = 0;
      v13 = 0;
LABEL_6:
      v14 = 0;
LABEL_7:
      v15 = 2;
      goto LABEL_13;
    }

    if (v22.st_size)
    {
      v10 = fileno(v7);
      v11 = mmap(0, st_size, 1, 16386, v10, 0);
      if ((v11 + 1) < 2)
      {
        goto LABEL_5;
      }

      v12 = v11;
      context.version = 0;
      context.info = st_size;
      context.deallocate = _MappedFileDeallocate;
      v13 = CFAllocatorCreate(a1, &context);
      if (!v13)
      {
        goto LABEL_6;
      }

      v17 = CFDataCreateWithBytesNoCopy(a1, v12, st_size, v13);
      v14 = v17;
      if (!v17)
      {
        goto LABEL_7;
      }

      v16 = CFRetain(v17);
      v15 = 0;
      v12 = 0;
    }

    else
    {
      bytes = 0;
      v16 = CFDataCreate(a1, &bytes, 0);
      v15 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    *a2 = v16;
  }

  else
  {
    st_size = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 4;
  }

LABEL_13:
  AMSupportSafeRelease(v14);
  AMSupportSafeRelease(v13);
  if (v12)
  {
    munmap(v12, st_size);
  }

  if (v7)
  {
    fclose(v7);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v15;
}

FILE *AMSupportPlatformOpenFileStreamWithURL(const __CFURL *a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    result = fopen(buffer, a2);
  }

  else
  {
    AMSupportLogInternal(3, "AMSupportPlatformOpenFileStreamWithURL", "failed to convert url to file system representation", v4, v5, v6, v7, v8, v16);
    AMSupportLogInternal(8, "AMSupportPlatformOpenFileStreamWithURL", "%@", v10, v11, v12, v13, v14, a1);
    result = 0;
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void AMSupportSafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t _MappedFileDeallocate(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    return _MappedFileDeallocate_cold_1();
  }

  return result;
}

uint64_t AMSupportPlatformMakeDirectoryForURL(const __CFURL *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  strcpy(__delim, "/");
  bzero(__str, 0x400uLL);
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v2 = strlen(buffer);
    if (!CFURLHasDirectoryPath(a1))
    {
      if (v2)
      {
        do
        {
          v3 = v2 - 1;
          v4 = buffer[v2 - 1] == 47 || v2 == 1;
          --v2;
        }

        while (!v4);
      }

      else
      {
        v3 = 0;
      }

      buffer[v3] = 0;
    }

    __stringp = buffer;
    result = strsep(&__stringp, __delim);
    if (result)
    {
      v6 = "Could not stat (%s)";
      while (1)
      {
        memset(&v22, 0, sizeof(v22));
        if (*result)
        {
          snprintf(__str, 0x400uLL, "%s%c%s", __str, 47, result);
          if (stat(__str, &v22) == -1)
          {
            if (*__error() != 2)
            {
              goto LABEL_23;
            }

            if (mkdir(__str, 0x1EDu) == -1 && *__error() != 17)
            {
              break;
            }
          }
        }

        result = strsep(&__stringp, __delim);
        if (!result)
        {
          goto LABEL_24;
        }
      }

      v6 = "Could not mkdir (%s)";
LABEL_23:
      v7 = __error();
      v8 = strerror(*v7);
      AMSupportLogInternal(3, "AMSupportPlatformMakeDirectoryForURL", v6, v9, v10, v11, v12, v13, v8);
      AMSupportLogInternal(8, "AMSupportPlatformMakeDirectoryForURL", "%s", v14, v15, v16, v17, v18, __str);
      result = 4;
    }
  }

  else
  {
    result = 3;
  }

LABEL_24:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMSupportPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t AMSupportPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (!cf)
  {
    return 1;
  }

  v10 = CFGetTypeID(cf);
  v11 = CFURLGetTypeID();
  result = 1;
  if (a5 && a3 && v10 == v11)
  {
    v13 = CFURLCreateCopyAppendingPathComponent(a1, cf, a3, a4);
    if (v13)
    {
      v14 = v13;
      result = 0;
      *a5 = v14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t _AMSupportCreateDataFromFileURLInternal(const __CFAllocator *a1, void *a2, CFTypeRef cf, int a4)
{
  cfa[1] = *MEMORY[0x29EDCA608];
  cfa[0] = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v8 = AMSupportCopyPreserveFileURL(a1, cf, cfa, 0);
    if (v8)
    {
      v4 = v8;
      AMSupportLogInternal(3, "_AMSupportCreateDataFromFileURLInternal", "AMSupportCopyPreserveFileURL failed.", v9, v10, v11, v12, v13, cfa[0]);
    }

    else
    {
      if (a4)
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL(a1, a2, cfa[0]);
      }

      else
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromFileURL(a1, a2, cfa[0]);
      }

      v4 = DataFromMappedFileURL;
    }

    if (cfa[0])
    {
      CFRelease(cfa[0]);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AMSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = 1;
  v21 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMSupportPlatformFileURLExists(v7, &v21);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v21)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v21)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AMSupportPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a2)
  {
    bzero(&v8, 0x90uLL);
    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v8);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      result = 3;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportPlatformCreateDataFromFileURL(const __CFAllocator *a1, void *a2, const __CFURL *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = AMSupportPlatformOpenFileStreamWithURL(a3, "rb");
  if (!v5)
  {
    v15 = 4;
    goto LABEL_9;
  }

  v6 = v5;
  bzero(&v20, 0x90uLL);
  v7 = fileno(v6);
  fstat(v7, &v20);
  st_size = v20.st_size;
  if (v20.st_size)
  {
    v9 = *MEMORY[0x29EDB8EE0];
    v10 = MEMORY[0x29C289D10](*MEMORY[0x29EDB8EE0], v20.st_size, 3826552447, 0);
    if (!v10)
    {
      goto LABEL_10;
    }

    if (fread(v10, 1uLL, st_size, v6) != st_size)
    {
      v15 = 4;
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_1_1();
    v13 = CFDataCreateWithBytesNoCopy(v11, v12, st_size, v9);
    if (v13)
    {
      v14 = v13;
      *a2 = CFRetain(v13);
      CFRelease(v14);
      v15 = 0;
    }

    else
    {
LABEL_10:
      v15 = 2;
    }
  }

  else
  {
    bytes = 0;
    v16 = CFDataCreate(a1, &bytes, 0);
    v15 = 0;
    *a2 = v16;
  }

LABEL_8:
  fclose(v6);
LABEL_9:
  v17 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void AMSupportLogInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x2A1C7C4A8]();
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v30 = *MEMORY[0x29EDCA608];
  bzero(__str, 0x1000uLL);
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  v16 = snprintf(__str, 0x1000uLL, "%s: ", v15);
  v17 = *MEMORY[0x29EDB8ED8];
  v18 = CFStringCreateWithCStringNoCopy(*MEMORY[0x29EDB8ED8], v11, 0x8000100u, *MEMORY[0x29EDB8EE8]);
  if (!v18)
  {
    v20 = 0;
    goto LABEL_9;
  }

  v19 = CFStringCreateWithFormatAndArguments(v17, 0, v18, &a9);
  v20 = v19;
  if (!v19)
  {
LABEL_9:
    v27 = 0;
    goto LABEL_12;
  }

  v21 = v16;
  v22 = 4096 - v16;
  Length = CFStringGetLength(v19);
  v24 = Length;
  if (4096 - v16 < Length && (v25 = malloc_type_malloc(v16 + Length + 1, 0x100004077774924uLL)) != 0)
  {
    v26 = v25;
    v22 = v24 + 1;
    memcpy(v25, __str, v16);
    v27 = v26;
  }

  else
  {
    v27 = 0;
    v26 = __str;
  }

  CFStringGetCString(v20, &v26[v21], v22, 0x8000100u);
LABEL_12:
  _logHandler(v14);
  AMSupportSafeRelease(v18);
  AMSupportSafeRelease(v20);
  AMSupportSafeFree(v27);
  v28 = *MEMORY[0x29EDCA608];
}

void AMSupportSafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t AMSupportEcDsaVerifySignature(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = 0;
  ccec_x963_import_pub_size();
  if (!ccec_keysize_is_supported())
  {
    result = 13;
    goto LABEL_14;
  }

  cp = ccec_get_cp();
  v12 = 24 * *cp + 31;
  MEMORY[0x2A1C7C4A8]();
  v14 = &v19[-v13];
  bzero(&v19[-v13], v13);
  *v14 = cp;
  result = 1;
  if (a1 && a5 && a7)
  {
    v16 = MEMORY[0x29C28A450](cp, a2, a1, v14);
    if (v16 == -13)
    {
LABEL_8:
      result = 2;
      goto LABEL_14;
    }

    if (v16)
    {
      goto LABEL_15;
    }

    v17 = ccec_verify();
    if (v17 == -13)
    {
      goto LABEL_8;
    }

    if (v17)
    {
LABEL_15:
      result = 6;
      goto LABEL_14;
    }

    if (v20)
    {
      result = 0;
    }

    else
    {
      result = 6;
    }
  }

LABEL_14:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  return AMSupportEcDsaCreateSignatureWithCp(a1, a2, a3, v6, v5, v4, v3);
}

uint64_t AMSupportDigestInitContext(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *a1;
  if (*a1 == 48)
  {
    v5 = ccsha384_di();
  }

  else if (v4 == 32)
  {
    v5 = ccsha256_di();
  }

  else
  {
    if (v4 != 20)
    {
      return 13;
    }

    v5 = ccsha1_di();
  }

  a1[2] = v5;
  v7 = malloc_type_malloc(*(v5 + 8) + *(v5 + 16) + 12, 0xA8F53777uLL);
  *a2 = v7;
  if (!v7)
  {
    return 2;
  }

  v8 = a1[2];
  ccdigest_init();
  return 0;
}

uint64_t AMSupportDigestUpdate(uint64_t a1)
{
  if (!a1 || !*(a1 + 16))
  {
    return 1;
  }

  ccdigest_update();
  return 0;
}

uint64_t AMSupportDigestFinal(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  (*(v1 + 56))();
  return 0;
}

uint64_t AMSupportDigestReturnHash(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 1;
  }

  v5 = a1[2];
  if (!v5 || *a1 > a4)
  {
    return 1;
  }

  (*(v5 + 56))(v5, a2);
  return 0;
}

uint64_t AMSupportX509DecodeVerifyCertIssuer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = *(a2 + 136);
  if (v8 == *(a1 + 104) && !memcmp(*(a2 + 128), *(a1 + 96), v8))
  {
    memset(v29, 0, sizeof(v29));
    v28 = 0;
    v26 = 0;
    v27 = 0;
    if (DERParseSequenceContent((a1 + 16), DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, v29, 0x20uLL))
    {
      v18 = "decodeAlgId failed";
    }

    else if (DERParseBitString(a1 + 32, &v26, &v28))
    {
      v18 = "DERParseBitString(sig) failed";
    }

    else
    {
      if (!v28)
      {
        v19 = _AMSupportX509DecodeRsaVerifySignatureDataWithOid(*(a2 + 208), *(a2 + 216), v26, v27, *a1, *(a1 + 8), *&v29[0], DWORD2(v29[0]));
        if (!v19)
        {
          AMSupportLogInternal(7, "AMSupportX509DecodeVerifyCertIssuer", "PKI: verify cert was issued and signed by issuer (success)", v20, v21, v22, v23, v24, v25);
          result = 0;
          goto LABEL_5;
        }

        AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "PKI: cert signature validation with issuer pubkey failed amstatus=%d", v20, v21, v22, v23, v24, v19);
        goto LABEL_4;
      }

      v18 = "numUnused != 0";
    }

    AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", v18, v13, v14, v15, v16, v17, v25);
    result = 19;
    goto LABEL_5;
  }

  AMSupportLogInternal(3, "AMSupportX509DecodeVerifyCertIssuer", "PKI: cert was not issued by issuer (subject != issuer)", a4, a5, a6, a7, a8, v25);
LABEL_4:
  result = 18;
LABEL_5:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _AMSupportX509DecodeRsaVerifySignatureDataWithOid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v14 = *MEMORY[0x29EDCA608];
  v11[0] = a7;
  v11[1] = a8;
  if (DEROidCompare(v11, &oidSha1Rsa))
  {
    v12 = 0uLL;
    LODWORD(v13) = 0;
    if (AMSupportDigestSha1(a5) || (result = AMSupportRsaVerifySignatureSha1(), result))
    {
LABEL_8:
      result = 6;
    }
  }

  else
  {
    if (!DEROidCompare(v11, &oidSha256Rsa))
    {
      result = 13;
      goto LABEL_10;
    }

    v12 = 0u;
    v13 = 0u;
    if (AMSupportDigestSha256(a5))
    {
      goto LABEL_8;
    }

    result = AMSupportRsaVerifySignatureSha256();
    if (result)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void OUTLINED_FUNCTION_3(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t OUTLINED_FUNCTION_4()
{
  *v0 = v1;

  return ccrsa_import_priv();
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);

  return verify_pkcs1_sig_0(va2, a2, va, va1);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return ccrsa_import_priv_n();
}

void OUTLINED_FUNCTION_7()
{
  *v1 = v2;
  *v0 = v3;
  *(v4 - 80) = 0;
}

uint64_t AMSupportRsaCreateDataFromPem(uint64_t a1, size_t size, char **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMSupportRsaCreateDataFromPem_cold_5(0, size, a3, a4, a5, a6, a7, a8, v29);
    return 1;
  }

  if (!size)
  {
    AMSupportRsaCreateDataFromPem_cold_4(a1, 0, a3, a4, a5, a6, a7, a8, v29);
    return 1;
  }

  if (!a3)
  {
    AMSupportRsaCreateDataFromPem_cold_3(a1, size, 0, a4, a5, a6, a7, a8, v29);
    return 1;
  }

  if (!a4)
  {
    AMSupportRsaCreateDataFromPem_cold_2(a1, size, a3, 0, a5, a6, a7, a8, v29);
    return 1;
  }

  v12 = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
  if (v12)
  {
    v20 = v12;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = 0;
      while (1)
      {
        v24 = *(a1 + v21);
        if (v24 != 45)
        {
          v25 = v24 == 10 || v24 == 13;
          if (v25 || (v23 & 1) == 0)
          {
            break;
          }
        }

        ++v21;
        v23 = 1;
        if (v21 >= size)
        {
          v26 = v22;
          goto LABEL_17;
        }
      }

      ++v21;
      v26 = v22 + 1;
      v12[v22++] = v24;
    }

    while (v21 < size);
LABEL_17:
    v27 = _base64decode(v12, v26);
    result = 0;
    *a4 = v27;
    *a3 = v20;
  }

  else
  {
    AMSupportRsaCreateDataFromPem_cold_1(0, v13, v14, v15, v16, v17, v18, v19, v29);
    return 2;
  }

  return result;
}

uint64_t AMSupportRsaCreatePemFromData(unsigned __int8 *a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, size_t a6, void *a7, uint64_t a8)
{
  if (!a1)
  {
    AMSupportRsaCreatePemFromData_cold_13(0, a2, a3, a4, a5, a6, a7, a8, v63);
LABEL_33:
    v41 = 0;
    v22 = 0;
    v61 = 1;
    goto LABEL_24;
  }

  if (!a2)
  {
    AMSupportRsaCreatePemFromData_cold_12(a1, 0, a3, a4, a5, a6, a7, a8, v63);
    goto LABEL_33;
  }

  if (!a3)
  {
    AMSupportRsaCreatePemFromData_cold_11(a1, a2, 0, a4, a5, a6, a7, a8, v63);
    goto LABEL_33;
  }

  v9 = a4;
  if (!a4)
  {
    AMSupportRsaCreatePemFromData_cold_10(a1, a2, a3, 0, a5, a6, a7, a8, v63);
    goto LABEL_33;
  }

  if (!a5)
  {
    AMSupportRsaCreatePemFromData_cold_9(a1, a2, a3, a4, 0, a6, a7, a8, v63);
    goto LABEL_33;
  }

  if (!a6)
  {
    AMSupportRsaCreatePemFromData_cold_8(a1, a2, a3, a4, a5, 0, a7, a8, v63);
    goto LABEL_33;
  }

  if (!a7)
  {
    AMSupportRsaCreatePemFromData_cold_7(a1, a2, a3, a4, a5, a6, 0, a8, v63);
    goto LABEL_33;
  }

  if (!a8)
  {
    AMSupportRsaCreatePemFromData_cold_6(a1, a2, a3, a4, a5, a6, a7, 0, v63);
    goto LABEL_33;
  }

  v14 = _base64encode(a1, a2);
  v22 = v14;
  if (!v14)
  {
    AMSupportRsaCreatePemFromData_cold_5(0, v15, v16, v17, v18, v19, v20, v21, v63);
LABEL_36:
    v41 = 0;
    goto LABEL_39;
  }

  v23 = strlen(v14);
  if (!v23)
  {
    AMSupportRsaCreatePemFromData_cold_4(0, v24, v25, v26, v27, v28, v29, v30, v63);
    goto LABEL_36;
  }

  v31 = v23;
  if ((v23 & 0x3F) != 0)
  {
    v32 = a6 + v9 + v23 + (v23 >> 6) + 1;
  }

  else
  {
    v32 = a6 + v9 + v23 + (v23 >> 6);
  }

  v33 = malloc_type_calloc(1uLL, v32, 0x100004077774924uLL);
  v41 = v33;
  if (v33)
  {
    v64 = a8;
    memcpy(v33, a3, v9);
    v42 = 0;
    do
    {
      if (v31 - v42 >= 0x40)
      {
        v43 = 64;
      }

      else
      {
        v43 = v31 - v42;
      }

      v44 = memcpy(&v41[v9], &v22[v42], v43);
      v42 += v43;
      v52 = v43 + v9;
      v9 += v43 + 1;
      v41[v52] = 10;
    }

    while (v42 < v31);
    if (v42 != v31)
    {
      AMSupportRsaCreatePemFromData_cold_1(v44, v45, v46, v47, v48, v49, v50, v51, v63);
LABEL_39:
      v61 = 99;
      goto LABEL_24;
    }

    v53 = memcpy(&v41[v9], a5, a6);
    if (v9 + a6 != v32)
    {
      AMSupportRsaCreatePemFromData_cold_2(v53, v54, v55, v56, v57, v58, v59, v60, v63);
      goto LABEL_39;
    }

    v61 = 0;
    *a7 = v41;
    *v64 = v32;
    v41 = 0;
  }

  else
  {
    AMSupportRsaCreatePemFromData_cold_3(0, v34, v35, v36, v37, v38, v39, v40, v63);
    v61 = 2;
  }

LABEL_24:
  free(v41);
  free(v22);
  return v61;
}

CFTypeRef AMSupportSafeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void AMSupportCFDictionarySetInteger64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, v8);
  if (!v5)
  {
    AMSupportCFDictionarySetInteger64_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
  v7 = *MEMORY[0x29EDCA608];
}

void AMSupportCFDictionarySetInteger32(__CFDictionary *a1, const void *a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  if (!v5)
  {
    AMSupportCFDictionarySetInteger32_cold_1();
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
  v7 = *MEMORY[0x29EDCA608];
}

void AMSupportCFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

uint64_t AMSupportCFStringToUInt32(const __CFString *a1, _DWORD *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  memset(v5, 0, sizeof(v5));
  result = CFStringGetCString(a1, v5, 32, 0x600u);
  if (result)
  {
    *__error() = 0;
    *a2 = strtol(v5, 0, 0);
    result = *__error() == 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

CFURLRef AMSupportCreateURLFromString(const __CFAllocator *a1, const __CFString *cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    AMSupportLogInternal(3, "AMSupportCreateURLFromString", "%s: theString is NULL", a4, a5, a6, a7, a8, "AMSupportCreateURLFromString");
    return 0;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFURLGetTypeID())
  {
    AMSupportLogInternal(4, "AMSupportCreateURLFromString", "%s: CFURLRef passed, retaining copy", v11, v12, v13, v14, v15, "AMSupportCreateURLFromString");

    return CFRetain(cf);
  }

  v17 = CFGetTypeID(cf);
  if (v17 != CFStringGetTypeID())
  {
    AMSupportLogInternal(3, "AMSupportCreateURLFromString", "%s: invalid string", v18, v19, v20, v21, v22, "AMSupportCreateURLFromString");
    return 0;
  }

  if (CFStringFind(cf, @"://", 0).location == -1)
  {

    return CFURLCreateWithFileSystemPath(a1, cf, kCFURLPOSIXPathStyle, 0);
  }

  else
  {

    return CFURLCreateWithString(a1, cf, 0);
  }
}

CFArrayRef AMSupportCFArrayCreateWithObjects(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v31 = *MEMORY[0x29EDCA608];
  v14 = &a9;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *values = 0u;
  v16 = 0u;
  while (1)
  {
    v10 = v14++;
    v11 = *v10;
    if (!v11)
    {
      break;
    }

    values[v9++] = v11;
    if (v9 == 32)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = CFArrayCreate(a1, values, v9, MEMORY[0x29EDB9000]);
LABEL_6:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportHexAsciiToNumeric(unsigned int a1, _BYTE *a2)
{
  v3 = a1 - 48;
  if (a1 - 48 >= 0xA)
  {
    if ((a1 & 0x80000000) != 0)
    {
      result = __maskrune(a1, 0x100uLL);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x100;
      if (!result)
      {
        return result;
      }
    }

    v6 = __toupper(a1);
    if ((v6 - 71) < 0xFFFFFFFA)
    {
      return 0;
    }

    v3 = v6 - 55;
  }

  if (a2)
  {
    *a2 = v3;
  }

  return 1;
}

uint64_t AMSupportCopyBytesFromAsciiEncodedHex(_BYTE *a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    AMSupportCopyBytesFromAsciiEncodedHex_cold_6(0, a2, a3, a4, a5, a6, a7, a8, v27);
LABEL_27:
    v24 = 1;
    goto LABEL_21;
  }

  if (!a2)
  {
    AMSupportCopyBytesFromAsciiEncodedHex_cold_5(a1, 0, a3, a4, a5, a6, a7, a8, v27);
    goto LABEL_27;
  }

  if (!a3)
  {
    AMSupportCopyBytesFromAsciiEncodedHex_cold_4(a1, a2, 0, a4, a5, a6, a7, a8, v27);
    goto LABEL_27;
  }

  if (!a4)
  {
    AMSupportCopyBytesFromAsciiEncodedHex_cold_3(a1, a2, a3, 0, a5, a6, a7, a8, v27);
    goto LABEL_27;
  }

  v12 = malloc_type_malloc(a2 >> 1, 0x100004077774924uLL);
  if (v12)
  {
    v20 = v12;
    if (a2 == 1 || *a1 != 48)
    {
      LODWORD(v21) = 0;
    }

    else
    {
      LODWORD(v21) = 2 * (((a1[1] - 88) & 0xDF) == 0);
    }

    v28 = 0;
    v21 = v21;
    if (v21 >= a2)
    {
LABEL_22:
      AMSupportCopyBytesFromAsciiEncodedHex_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      v24 = 3;
LABEL_20:
      free(v20);
    }

    else
    {
      v22 = 0;
      v23 = v21 + 2;
      do
      {
        v12 = a1[v21];
        if (!a1[v21])
        {
          break;
        }

        if (AMSupportHexAsciiToNumeric(v12, &v28 + 1))
        {
          if (a1[v23 - 1])
          {
            v12 = AMSupportHexAsciiToNumeric(a1[v23 - 1], &v28);
            if (v12)
            {
              continue;
            }
          }
        }

        v24 = 99;
        goto LABEL_20;
        *(v20 + v22++) = v28 | (16 * HIBYTE(v28));
        v21 = v23;
        v23 += 2;
      }

      while (v21 < a2);
      if (!v22)
      {
        goto LABEL_22;
      }

      v24 = 0;
      *a3 = v20;
      *a4 = v22;
    }
  }

  else
  {
    AMSupportCopyBytesFromAsciiEncodedHex_cold_2(0, v13, v14, v15, v16, v17, v18, v19, v27);
    v24 = 2;
  }

LABEL_21:
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

CFStringRef AMSupportCopyHexStringFromData(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[1] = *MEMORY[0x29EDCA608];
  cStr = 0;
  if (!a2)
  {
    AMSupportCopyHexStringFromData_cold_6(a1, 0, a3, a4, a5, a6, a7, a8, v46);
    v43 = 0;
    goto LABEL_11;
  }

  v48[0] = 0;
  TypeID = CFDataGetTypeID();
  v11 = CFGetTypeID(a2);
  if (TypeID == v11)
  {
    BytePtr = CFDataGetBytePtr(a2);
    if (BytePtr)
    {
      v27 = BytePtr;
      Length = CFDataGetLength(a2);
      if (Length)
      {
        v36 = AMSupportCommonCopyHexStringFromData(v27, Length, &cStr, v48, v32, v33, v34, v35);
        if (v36)
        {
          AMSupportLogInternal(3, "AMSupportCopyHexStringFromData", "AMSupportCommonCopyHexStringFromData failed %d", v38, v39, v40, v41, v42, v36);
        }

        else if (cStr)
        {
          if (v48[0])
          {
            v43 = CFStringCreateWithCString(a1, cStr, 0x8000100u);
            goto LABEL_9;
          }

          AMSupportCopyHexStringFromData_cold_2(v36, cStr, v37, v38, v39, v40, v41, v42);
        }

        else
        {
          AMSupportCopyHexStringFromData_cold_3(v36, 0, v37, v38, v39, v40, v41, v42);
        }
      }

      else
      {
        AMSupportCopyHexStringFromData_cold_4(0, v29, v30, v31, v32, v33, v34, v35, v46);
      }
    }

    else
    {
      AMSupportCopyHexStringFromData_cold_5(0, v20, v21, v22, v23, v24, v25, v26, v46);
    }
  }

  else
  {
    AMSupportCopyHexStringFromData_cold_1(v11, v12, v13, v14, v15, v16, v17, v18, v46);
  }

  v43 = 0;
LABEL_9:
  if (cStr)
  {
    free(cStr);
  }

LABEL_11:
  v44 = *MEMORY[0x29EDCA608];
  return v43;
}

CFStringRef AMSupportCopyHexStringFromUInt32(const __CFAllocator *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cStr[1] = *MEMORY[0x29EDCA608];
  v19 = 0;
  cStr[0] = 0;
  v9 = AMSupportCommonCopyHexStringFromUInt32(a2, cStr, &v19, a4, a5, a6, a7, a8);
  if (v9)
  {
    AMSupportLogInternal(3, "AMSupportCopyHexStringFromUInt32", "AMSupportCommonCopyHexStringFromUInt32 failed (%d)", v11, v12, v13, v14, v15, v9);
LABEL_9:
    v16 = 0;
    goto LABEL_5;
  }

  if (!cStr[0])
  {
    AMSupportCopyHexStringFromUInt32_cold_2(v9, 0, v10, v11, v12, v13, v14, v15);
    goto LABEL_9;
  }

  if (!v19)
  {
    AMSupportCopyHexStringFromUInt32_cold_1(v9, cStr[0], v10, v11, v12, v13, v14, v15);
    goto LABEL_9;
  }

  v16 = CFStringCreateWithCString(a1, cStr[0], 0x8000100u);
LABEL_5:
  free(cStr[0]);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

CFStringRef AMSupportCopyHexStringFromUInt64(const __CFAllocator *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cStr[1] = *MEMORY[0x29EDCA608];
  v19 = 0;
  cStr[0] = 0;
  v9 = AMSupportCommonCopyHexStringFromUInt64(a2, cStr, &v19, a4, a5, a6, a7, a8);
  if (v9)
  {
    AMSupportLogInternal(3, "AMSupportCopyHexStringFromUInt64", "AMSupportCommonCopyHexStringFromUInt64 failed (%d)", v11, v12, v13, v14, v15, v9);
LABEL_9:
    v16 = 0;
    goto LABEL_5;
  }

  if (!cStr[0])
  {
    AMSupportCopyHexStringFromUInt64_cold_2(v9, 0, v10, v11, v12, v13, v14, v15);
    goto LABEL_9;
  }

  if (!v19)
  {
    AMSupportCopyHexStringFromUInt64_cold_1(v9, cStr[0], v10, v11, v12, v13, v14, v15);
    goto LABEL_9;
  }

  v16 = CFStringCreateWithCString(a1, cStr[0], 0x8000100u);
LABEL_5:
  free(cStr[0]);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t AMSupportCreateCStringFromCFString(const __CFString *a1, char **a2, CFIndex *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMSupportCreateCStringFromCFString_cold_5(0, a2, a3, a4, a5, a6, a7, a8, v29);
    return 1;
  }

  if (!a2)
  {
    AMSupportCreateCStringFromCFString_cold_4(a1, 0, a3, a4, a5, a6, a7, a8, v29);
    return 1;
  }

  if (!a3)
  {
    AMSupportCreateCStringFromCFString_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v29);
    return 1;
  }

  v11 = CFStringGetLength(a1) + 1;
  v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (v12)
  {
    v20 = v12;
    if (CFStringGetCString(a1, v12, v11, 0x8000100u))
    {
      result = 0;
      *a2 = v20;
      *a3 = v11;
    }

    else
    {
      AMSupportCreateCStringFromCFString_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
      return 3;
    }
  }

  else
  {
    AMSupportCreateCStringFromCFString_cold_2(0, v13, v14, v15, v16, v17, v18, v19, v29);
    return 2;
  }

  return result;
}

__CFSet *AMSupportCreateSetFromCFIndexArray(char *a1, CFIndex capacity)
{
  v2 = capacity;
  v4 = *MEMORY[0x29EDB8ED8];
  v5 = capacity;
  Mutable = CFSetCreateMutable(*MEMORY[0x29EDB8ED8], capacity, MEMORY[0x29EDB9030]);
  if (Mutable)
  {
    if (v2)
    {
      while (1)
      {
        v14 = CFNumberCreate(v4, kCFNumberLongType, a1);
        if (!v14)
        {
          break;
        }

        v20 = v14;
        CFSetAddValue(Mutable, v14);
        CFRelease(v20);
        a1 += 8;
        if (!--v5)
        {
          goto LABEL_5;
        }
      }

      AMSupportLogInternal(3, "AMSupportCreateSetFromCFIndexArray", "AMSupportCreateSetFromCFIndexArray input contains invalid number.", v15, v16, v17, v18, v19, v22);
    }

    else
    {
LABEL_5:
      CFRetain(Mutable);
    }

    CFRelease(Mutable);
  }

  else
  {
    AMSupportCreateSetFromCFIndexArray_cold_1(0, v6, v7, v8, v9, v10, v11, v12, v22);
  }

  return Mutable;
}

uint64_t AMSupportBase64Encode(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theData)
  {
    AMSupportBase64Encode_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v38);
    return 1;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    AMSupportLogInternal(3, "AMSupportBase64Encode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theData);
    return 1;
  }

  if (!a3)
  {
    AMSupportBase64Encode_cold_1(Length, v12, v13, v14, v15, v16, v17, v18, v38);
    return 1;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v20 = CFDataGetLength(theData);
  v21 = _base64encode(BytePtr, v20);
  if (v21)
  {
    v27 = v21;
    v28 = strlen(v21);
    if (v28)
    {
      v34 = CFStringCreateWithBytes(a1, v27, v28, 0x8000100u, 0);
      if (v34)
      {
        v35 = v34;
        *a3 = CFRetain(v34);
        free(v27);
        CFRelease(v35);
        return 0;
      }

      v37 = "encodedValue == NULL: '%@'";
    }

    else
    {
      v37 = "encodedLength == 0: '%@'";
    }

    AMSupportLogInternal(3, "AMSupportBase64Encode", v37, v29, v30, v31, v32, v33, theData);
    free(v27);
  }

  else
  {
    AMSupportLogInternal(3, "AMSupportBase64Encode", "encodedBuffer == NULL: '%@'", v22, v23, v24, v25, v26, theData);
  }

  return 99;
}

uint64_t AMSupportBase64Decode(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    AMSupportBase64Decode_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v47);
    return 1;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    AMSupportLogInternal(3, "AMSupportBase64Decode", "value length == 0: '%@'", v14, v15, v16, v17, v18, theString);
    return 1;
  }

  if (!a3)
  {
    AMSupportBase64Decode_cold_1(Length, v12, v13, v14, v15, v16, v17, v18, v47);
    return 1;
  }

  v19 = (CFStringGetLength(theString) + 1);
  v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
  if (!v20)
  {
    AMSupportLogInternal(3, "AMSupportBase64Decode", "failed to allocate buffer", v21, v22, v23, v24, v25, theString);
    return 2;
  }

  v26 = v20;
  if (!CFStringGetCString(theString, v20, v19, 0x8000100u))
  {
    AMSupportLogInternal(3, "AMSupportBase64Decode", "failed to convert value to c-string", v27, v28, v29, v30, v31, theString);
LABEL_18:
    v45 = 2;
    goto LABEL_19;
  }

  v32 = _base64decode(v26, v19);
  if (v32 <= 0)
  {
    v48 = theString;
    v45 = 3;
    AMSupportLogInternal(3, "AMSupportBase64Decode", "_base64decode of value '%@' failed with error code %d.", v33, v34, v35, v36, v37, v48);
LABEL_19:
    free(v26);
    return v45;
  }

  v38 = CFDataCreate(a1, v26, v32);
  if (!v38)
  {
    AMSupportLogInternal(3, "AMSupportBase64Decode", "decodedData is NULL", v39, v40, v41, v42, v43, theString);
    goto LABEL_18;
  }

  v44 = v38;
  *a3 = CFRetain(v38);
  free(v26);
  CFRelease(v44);
  return 0;
}

CFDataRef AMSupportCreateRandomNumber(int a1)
{
  v1 = a1;
  v2 = malloc_type_calloc(1uLL, a1, 0x30E55DA3uLL);
  if (v2)
  {
    v10 = v2;
    arc4random_buf(v2, v1);
    result = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], v10, v1, *MEMORY[0x29EDB8ED8]);
    if (result)
    {
      return result;
    }

    free(v10);
  }

  else
  {
    AMSupportCreateRandomNumber_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v12);
  }

  return 0;
}

const __CFDictionary *AMSupportGetValueForKeyPathInDict(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Value = a2;
  if (!a2)
  {
    AMSupportGetValueForKeyPathInDict_cold_4(a1, 0, theString, a4, a5, a6, a7, a8, v30);
    return Value;
  }

  if (!theString)
  {
    AMSupportGetValueForKeyPathInDict_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    AMSupportGetValueForKeyPathInDict_cold_2(0, v10, v11, v12, v13, v14, v15, v16, v30);
    return 0;
  }

  v17 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count >= 1)
  {
    v19 = Count;
    v20 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
      if (!ValueAtIndex)
      {
        break;
      }

      Value = CFDictionaryGetValue(Value, ValueAtIndex);
      if (Value)
      {
        if (v19 != ++v20)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    AMSupportGetValueForKeyPathInDict_cold_1(0, v22, v23, v24, v25, v26, v27, v28, v30);
    Value = 0;
  }

LABEL_9:
  CFRelease(v17);
  return Value;
}

CFStringRef AMSupportCreatePathForPeerExecutable(const __CFAllocator *a1, char a2, const __CFString *a3)
{
  v59 = *MEMORY[0x29EDCA608];
  v54 = a2;
  v5 = CFStringCreateWithFormat(a1, 0, @"%@/%@");
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x29EDB9000]);
  bzero(buf, 0x400uLL);
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    AMSupportLogInternal(3, "AMSupportCreatePathForPeerExecutable", "_NSGetExecutablePath failed to get path of current executable", v7, v8, v9, v10, v11, v54);
  }

  else
  {
    v12 = strlen(buf);
    v13 = CFURLCreateFromFileSystemRepresentation(a1, buf, v12, 0);
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(a1, v13);
    v15 = CFURLCreateCopyAppendingPathComponent(a1, PathComponent, a3, 0);
    CFArrayAppendValue(Mutable, v15);
    if (v13)
    {
      CFRelease(v13);
    }

    if (PathComponent)
    {
      CFRelease(PathComponent);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  memset(&v55, 0, sizeof(v55));
  if (!dladdr(AMSupportCreatePathForPeerExecutable, &v55))
  {
    AMSupportLogInternal(3, "AMSupportCreatePathForPeerExecutable", "dladdr failed to get info about running framework", v16, v17, v18, v19, v20, v54);
    goto LABEL_36;
  }

  v21 = strlen(v55.dli_fname);
  v22 = CFURLCreateFromFileSystemRepresentation(a1, v55.dli_fname, v21, 0);
  v28 = v22;
  if (!v5 || !v22)
  {
    AMSupportLogInternal(7, "_create_peer_executable_for_ancestors", "NULL parameter passed to _create_peer_executable_for_ancestors()", v23, v24, v25, v26, v27, v54);
    v36 = 0;
    goto LABEL_32;
  }

  v29 = CFURLCreateFilePathURL(a1, v22, 0);
  v30 = 0;
  v31 = v29;
  while (1)
  {
    v32 = v31;
    if (v30)
    {
      CFRelease(v30);
    }

    v33 = CFURLCreateCopyAppendingPathComponent(a1, v31, v5, 0);
    v57 = 0;
    AMSupportPlatformFileURLExists(v33, &v57);
    if (v57)
    {
      break;
    }

    if (v33)
    {
      CFRelease(v33);
    }

    v31 = CFURLCreateCopyDeletingLastPathComponent(a1, v31);
    length = CFURLGetByteRangeForComponent(v31, kCFURLComponentPath, 0).length;
    v35 = CFURLGetByteRangeForComponent(v32, kCFURLComponentPath, 0).length;
    v30 = v32;
    if (length >= v35)
    {
      v33 = v29;
      goto LABEL_23;
    }
  }

  v32 = 0;
LABEL_23:
  v36 = CFURLCreateFilePathURL(a1, v33, 0);
  AMSupportLogInternal(7, "_create_peer_executable_for_ancestors", "Searched for %@ relative to %@ and its ancestors, found %@", v37, v38, v39, v40, v41, v5);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (!v36)
  {
LABEL_32:
    v42 = 1;
    if (!v28)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  CFArrayAppendValue(Mutable, v36);
  v42 = 0;
  if (v28)
  {
LABEL_33:
    CFRelease(v28);
  }

LABEL_34:
  if ((v42 & 1) == 0)
  {
    CFRelease(v36);
  }

LABEL_36:
  v43 = CFURLCreateWithFileSystemPath(a1, v5, kCFURLPOSIXPathStyle, 0);
  CFArrayAppendValue(Mutable, v43);
  if (CFArrayGetCount(Mutable) < 1)
  {
LABEL_40:
    v51 = 0;
    if (!v5)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v44 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v44);
    v57 = 0;
    AMSupportPlatformFileURLExists(ValueAtIndex, &v57);
    if (v57)
    {
      break;
    }

    AMSupportLogInternal(7, "AMSupportCreatePathForPeerExecutable", "(No copy of executable located at %@)", v46, v47, v48, v49, v50, ValueAtIndex);
    if (++v44 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_40;
    }
  }

  AMSupportLogInternal(7, "AMSupportCreatePathForPeerExecutable", "Found executable at %@", v46, v47, v48, v49, v50, ValueAtIndex);
  v51 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
  if (v5)
  {
LABEL_41:
    CFRelease(v5);
  }

LABEL_42:
  if (v43)
  {
    CFRelease(v43);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v52 = *MEMORY[0x29EDCA608];
  return v51;
}

CFIndex *AMSupportCreateDigest(const __CFURL *a1, unsigned int a2, CFIndex *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf[1] = *MEMORY[0x29EDCA608];
  v37 = 0;
  cf[0] = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal(a4, @"AMSupportErrorDomain", 1, 0, @"%s: srcURL is NULL", a6, a7, a8, "AMSupportCreateDigest");
    Copy = 0;
LABEL_8:
    v16 = 0;
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  Copy = a3;
  if (!a3)
  {
    AMSupportCreateErrorInternal(a4, @"AMSupportErrorDomain", 1, 0, @"%s: digestInfo is NULL", a6, a7, a8, "AMSupportCreateDigest");
    goto LABEL_8;
  }

  Mutable = CFDataCreateMutable(0, *a3);
  v16 = Mutable;
  if (!Mutable)
  {
    AMSupportCreateErrorInternal(a4, @"AMSupportErrorDomain", 2, 0, @"%s: failed to allocate digest", v13, v14, v15, "AMSupportCreateDigest");
    goto LABEL_10;
  }

  CFDataSetLength(Mutable, *Copy);
  inited = AMSupportDigestInitContext(Copy, &v37);
  if (inited)
  {
    AMSupportCreateErrorInternal(a4, @"AMSupportErrorDomain", inited, 0, @"%s: failed to init digest", v18, v19, v20, "AMSupportCreateDigest");
LABEL_10:
    Copy = 0;
    goto LABEL_11;
  }

  v24 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v21 = v24;
  if (!v24)
  {
    v31 = @"%s: failed to allocate params";
    v32 = a4;
    v30 = 2;
    goto LABEL_26;
  }

  v28 = v37;
  *v24 = Copy;
  v24[1] = v28;
  if (!AMSupportReadChunks(a1, "rb", a2, _digestChunks, v24, cf, v26, v27))
  {
    v33 = cf[0];
    v31 = @"%s: failed to read file in chunks";
    v32 = a4;
    v30 = 4;
    goto LABEL_28;
  }

  CFDataGetMutableBytePtr(v16);
  v29 = AMSupportDigestFinal(Copy);
  if (v29)
  {
    v30 = v29;
    v31 = @"%s: failed to finalize digest";
    v32 = a4;
LABEL_26:
    v33 = 0;
LABEL_28:
    AMSupportCreateErrorInternal(v32, @"AMSupportErrorDomain", v30, v33, v31, v25, v26, v27, "AMSupportCreateDigest");
    Copy = 0;
    goto LABEL_12;
  }

  if (!CFDataGetLength(v16))
  {
    v31 = @"%s: failed to create digest";
    v32 = a4;
    v30 = 3;
    goto LABEL_26;
  }

  Copy = CFDataCreateCopy(0, v16);
  if (!Copy)
  {
    AMSupportCreateErrorInternal(a4, @"AMSupportErrorDomain", 2, 0, @"%s: failed to copy digest", v34, v35, v36, "AMSupportCreateDigest");
  }

LABEL_12:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v21)
  {
    free(v21);
  }

  if (v37)
  {
    free(v37);
  }

  v22 = *MEMORY[0x29EDCA608];
  return Copy;
}

uint64_t AMSupportReadChunks(const __CFURL *a1, const char *a2, unsigned int a3, unsigned int (*a4)(void *, size_t, uint64_t, CFTypeRef *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf[1] = *MEMORY[0x29EDCA608];
  cf[0] = 0;
  if (!a1)
  {
    v26 = @"%s: srcURL is NULL";
LABEL_17:
    AMSupportCreateErrorInternal(a6, @"AMSupportErrorDomain", 1, 0, v26, a6, a7, a8, "AMSupportReadChunks");
LABEL_18:
    v27 = 0;
    goto LABEL_19;
  }

  if (!a2)
  {
    v26 = @"%s: flags is NULL";
    goto LABEL_17;
  }

  if (!a4)
  {
    v26 = @"%s: callback is NULL";
    goto LABEL_17;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0x100000;
  }

  v12 = AMSupportPlatformOpenFileStreamWithURL(a1, a2);
  if (!v12)
  {
    AMSupportCreateErrorInternal(a6, @"AMSupportErrorDomain", 4, 0, @"%s: failed to open file %@", v13, v14, v15, "AMSupportReadChunks");
    goto LABEL_18;
  }

  v16 = v12;
  v17 = malloc_type_malloc(v11, 0x8F8D9DAEuLL);
  if (v17)
  {
    v21 = v17;
    while (feof(v16) != -1)
    {
      v22 = fread(v21, 1uLL, v11, v16);
      if (!v22)
      {
        break;
      }

      if (!a4(v21, v22, a5, cf))
      {
        AMSupportCreateErrorInternal(a6, @"AMSupportErrorDomain", 4, cf[0], @"%s: callback failed", v23, v24, v25, "AMSupportReadChunks");
LABEL_23:
        v27 = 0;
        goto LABEL_26;
      }
    }

    if (ferror(v16))
    {
      AMSupportCreateErrorInternal(a6, @"AMSupportErrorDomain", 4, 0, @"%s: failed to read from file %d", v30, v31, v32, "AMSupportReadChunks");
      goto LABEL_23;
    }

    v27 = 1;
LABEL_26:
    free(v21);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    AMSupportCreateErrorInternal(a6, @"AMSupportErrorDomain", 2, 0, @"%s: failed to allocate chunk buffer", v18, v19, v20, "AMSupportReadChunks");
    v27 = 0;
  }

  fclose(v16);
LABEL_19:
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

CFComparisonResult OUTLINED_FUNCTION_2_0(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

CFComparisonResult OUTLINED_FUNCTION_3_0(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

uint64_t AMSupportHttpUriEscapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    AMSupportHttpUriEscapeString_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v23);
LABEL_10:
    MutableCopy = 0;
    v21 = 1;
    goto LABEL_7;
  }

  if (!a3)
  {
    AMSupportHttpUriEscapeString_cold_2(a1, theString, 0, a4, a5, a6, a7, a8, v23);
    goto LABEL_10;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v17 = off_29EE96868;
    v18 = 33;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      v24.length = CFStringGetLength(MutableCopy);
      v24.location = 0;
      CFStringFindAndReplace(MutableCopy, v19, v20, v24, 0);
      v17 += 2;
      --v18;
    }

    while (v18);
    v21 = 0;
    *a3 = CFRetain(MutableCopy);
  }

  else
  {
    AMSupportHttpUriEscapeString_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v23);
    v21 = 3;
  }

LABEL_7:
  AMSupportSafeRelease(MutableCopy);
  return v21;
}

uint64_t AMSupportHttpUriUnescapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    AMSupportHttpUriUnescapeString_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v24);
LABEL_11:
    MutableCopy = 0;
    v22 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    AMSupportHttpUriUnescapeString_cold_2(a1, theString, 0, a4, a5, a6, a7, a8, v24);
    goto LABEL_11;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v17 = -33;
    v18 = &off_29EE96A68;
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v25.length = CFStringGetLength(MutableCopy);
      v25.location = 0;
      CFStringFindAndReplace(MutableCopy, v19, v20, v25, 0);
      v18 -= 2;
    }

    while (!__CFADD__(v17++, 1));
    v22 = 0;
    *a3 = CFRetain(MutableCopy);
  }

  else
  {
    AMSupportHttpUriUnescapeString_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v24);
    v22 = 3;
  }

LABEL_8:
  AMSupportSafeRelease(MutableCopy);
  return v22;
}

uint64_t AMSupportHttpCreateDataFromURL(const __CFAllocator *a1, CFURLRef url, void *a3, CFTypeRef *a4)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20[0] = 0;
  cf = 0;
  v4 = 1;
  if (!url || !a4)
  {
    goto LABEL_17;
  }

  Request = CFHTTPMessageCreateRequest(a1, @"GET", url, *MEMORY[0x29EDB8528]);
  if (Request)
  {
    Mutable = CFDataCreateMutable(a1, 0);
    if (Mutable)
    {
      v15 = AMSupportHttpMessageSendSyncWithOptions(Request, a3, Mutable, &v19, v20, &cf);
      if (v15)
      {
        v4 = v15;
      }

      else if (v20[0] == 200)
      {
        v4 = 0;
        *a4 = CFRetain(Mutable);
      }

      else
      {
        AMSupportLogInternal(3, "AMSupportHttpCreateDataFromURL", "httpStatus is %ld", v8, v9, v10, v11, v12, v20[0]);
        v4 = 14;
      }

      goto LABEL_9;
    }
  }

  else
  {
    Mutable = 0;
  }

  v4 = 2;
LABEL_9:
  if (cf)
  {
    AMSupportLogInternal(3, "AMSupportHttpCreateDataFromURL", "command failed with error: %@", v8, v9, v10, v11, v12, cf);
  }

  if (Request)
  {
    CFRelease(Request);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_17:
  if (v19)
  {
    CFRelease(v19);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t AMSupportHttpCopyProxySettings(uint64_t a1, const void *a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v3 = dispatch_semaphore_create(0);
  v11 = v3;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  if (!MEMORY[0x2A1C7B508] || !MEMORY[0x2A1C7B518] || !MEMORY[0x2A1C7B510] || !MEMORY[0x2A1C7B520])
  {
    AMSupportHttpCopyProxySettings_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    v17 = 0;
    goto LABEL_15;
  }

  v17 = RPRegisterForAvailability();
  if (!v17)
  {
    v20 = "failed to register for reverse proxy availability";
LABEL_14:
    AMSupportLogInternal(3, "AMSupportHttpCopyProxySettings", v20, v12, v13, v14, v15, v16, v38);
LABEL_15:
    Mutable = 0;
    goto LABEL_16;
  }

  RPRegistrationResume();
  v18 = dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  RPRegistrationInvalidate();
  if ((v40[3] & 1) == 0)
  {
    v21 = " after 5 seconds";
    if (!v18)
    {
      v21 = "";
    }

    v38 = v21;
    v20 = "No proxy available%s";
    goto LABEL_14;
  }

  if (a2)
  {
    Mutable = CFRetain(a2);
    if (CFDictionaryContainsKey(a2, @"TestReachability"))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
LABEL_19:
    CFDictionaryAddValue(Mutable, @"TestReachability", *MEMORY[0x29EDB8EF8]);
LABEL_20:
    v30 = RPCopyProxyDictionaryWithOptions();
    v22 = v30;
    if (v30)
    {
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings", "proxyInfo = %@", v31, v32, v33, v34, v35, v30);
    }

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  AMSupportHttpCopyProxySettings_cold_1(0, v23, v24, v25, v26, v27, v28, v29);
LABEL_16:
  v22 = 0;
  if (v11)
  {
LABEL_23:
    dispatch_release(v11);
  }

LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  _Block_object_dispose(&v39, 8);
  v36 = *MEMORY[0x29EDCA608];
  return v22;
}

intptr_t __AMSupportHttpCopyProxySettings_block_invoke(intptr_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  switch(a2)
  {
    case 3:
      v9 = "AMSupportHttpCopyProxySettings: RPNotificationAborted";
      break;
    case 2:
      v9 = "AMSupportHttpCopyProxySettings: RPNotificationProxyUnavailable";
      break;
    case 1:
      AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", "Proxy available", a4, a5, a6, a7, a8, v11);
      *(*(*(v8 + 32) + 8) + 24) = 1;
      v9 = "AMSupportHttpCopyProxySettings: RPNotificationProxyAvailable";
      break;
    default:
      return result;
  }

  AMSupportLogInternal(6, "AMSupportHttpCopyProxySettings_block_invoke", v9, a4, a5, a6, a7, a8, v11);
  v10 = *(v8 + 40);

  return dispatch_semaphore_signal(v10);
}

uint64_t AMSupportHttpMessageSendSyncWithOptions(__CFHTTPMessage *a1, void *a2, uint64_t a3, CFHTTPMessageRef *a4, uint64_t *a5, CFTypeRef *a6)
{
  v48 = *MEMORY[0x29EDCA608];
  if (!a2 || ![a2 objectForKey:@"ValidResponses"] && !objc_msgSend(a2, "objectForKey:", @"MaxAttempts"))
  {
    v39 = *MEMORY[0x29EDCA608];

    return _AMSupportHttpMessageSendSyncNoRetry(a1, a2, a3, a4, a5, a6);
  }

  v42 = objc_autoreleasePoolPush();
  v43 = 0;
  v46 = 1;
  valuePtr = 1;
  v44 = -1;
  cf = 0;
  v12 = [a2 objectForKey:@"ValidResponses"];
  if (v12)
  {
    TypeID = CFSetGetTypeID();
    v14 = CFGetTypeID(v12);
    if (TypeID != v14)
    {
      AMSupportHttpMessageSendSyncWithOptions_cold_1(v14, v15, v16, v17, v18, v19, v20, v21, v40);
      v33 = 16;
      v36 = v42;
      goto LABEL_33;
    }
  }

  v41 = a4;
  v22 = 1;
  while (1)
  {
    v23 = [a2 objectForKey:@"Backoff"];
    if (!v23 || !CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 1;
    }

    v24 = [a2 objectForKey:@"MaxAttempts"];
    if (!v24 || !CFNumberGetValue(v24, kCFNumberSInt32Type, &v46))
    {
      v46 = 1;
    }

    v25 = _AMSupportHttpMessageSendSyncNoRetry(a1, a2, a3, &cf, &v44, &v43);
    v33 = v25;
    v34 = v25 != 0;
    if (v25)
    {
      AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncRetry", "HTTP request failed (status=%d)", v28, v29, v30, v31, v32, v25);
    }

    if (v43)
    {
      AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncRetry", "URL connection error occurred: %@", v28, v29, v30, v31, v32, v43);
      v34 = 1;
    }

    if (cf)
    {
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
      AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncRetry", "HTTP request failed, httpResponseHeader is NULL", v28, v29, v30, v31, v32, v40);
      v34 = 1;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (![v12 member:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithLong:", v44)}])
    {
      AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncRetry", "HTTP server returned unexpected HTTP response code %ld", v28, v29, v30, v31, v32, v44);
      goto LABEL_25;
    }

LABEL_22:
    if (!v34)
    {
      break;
    }

LABEL_25:
    if (v22 < v46)
    {
      v35 = valuePtr * v22;
      AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncRetry", "-------------------- Attempt %d of %d failed, sleeping for %d seconds --------------------", v28, v29, v30, v31, v32, v22);
      sleep(v35);
      v44 = -1;
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v43)
      {
        CFRelease(v43);
        v43 = 0;
      }
    }

    if (++v22 > v46)
    {
      AMSupportLogInternal(3, "_AMSupportHttpMessageSendSyncRetry", "!!!!!!!!!!!!!!!!!!!!!!!!!! Retries exhausted on attempt %d !!!!!!!!!!!!!!!!!!!!!!!!!!", v28, v29, v30, v31, v32, v46);
LABEL_32:
      v36 = v42;
      goto LABEL_33;
    }
  }

  if (!cf)
  {
    AMSupportHttpMessageSendSyncWithOptions_cold_2(0, v26, v27, v28, v29, v30, v31, v32);
    goto LABEL_32;
  }

  v36 = v42;
  if (v41)
  {
    *v41 = CFRetain(cf);
  }

  if (a5 && v44)
  {
    *a5 = v44;
  }

LABEL_33:
  if (a6 && v43)
  {
    *a6 = CFRetain(v43);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v43)
  {
    CFRelease(v43);
  }

  objc_autoreleasePoolPop(v36);
  v37 = *MEMORY[0x29EDCA608];
  return v33;
}

uint64_t AMSupportHttpURLSessionSendSync(void *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, uint64_t *a5)
{
  v87 = *MEMORY[0x29EDCA608];
  v7 = objc_autoreleasePoolPush();
  context = v7;
  v62 = 1;
  valuePtr = 1;
  if (!a1)
  {
    AMSupportHttpURLSessionSendSync_cold_3(v7, v8, v9, v10, v11, v12, v13, v14, v56);
LABEL_62:
    v43 = 2;
    goto LABEL_58;
  }

  if (!a2)
  {
    AMSupportHttpURLSessionSendSync_cold_2(v7, v8, v9, v10, v11, v12, v13, v14, v56);
    goto LABEL_62;
  }

  v15 = [a1 options];
  Value = CFDictionaryGetValue(v15, @"ValidResponses");
  if (Value)
  {
    TypeID = CFSetGetTypeID();
    v18 = CFGetTypeID(Value);
    if (TypeID != v18)
    {
      AMSupportHttpURLSessionSendSync_cold_1(v18, v19, v20, v21, v22, v23, v24, v25, v56);
      v43 = 16;
      goto LABEL_58;
    }
  }

  v61 = a2;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  do
  {
    if (v27)
    {
      CFRelease(v27);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    v29 = CFDictionaryGetValue(v15, @"Backoff");
    if (!v29 || !CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr))
    {
      valuePtr = 1;
    }

    v30 = CFDictionaryGetValue(v15, @"MaxAttempts");
    if (!v30 || !CFNumberGetValue(v30, kCFNumberSInt32Type, &v62))
    {
      v62 = 1;
    }

    v81 = 0;
    v82 = &v81;
    v83 = 0x3052000000;
    v84 = __Block_byref_object_copy_;
    v85 = __Block_byref_object_dispose_;
    v86 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x3052000000;
    v78 = __Block_byref_object_copy_;
    v79 = __Block_byref_object_dispose_;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3052000000;
    v72 = __Block_byref_object_copy_;
    v73 = __Block_byref_object_dispose_;
    v74 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v31 = dispatch_semaphore_create(0);
    v37 = v31;
    if (!v31)
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "Failed to create semaphore", v32, v33, v34, v35, v36, v56);
      v27 = 0;
      v26 = 0;
      v43 = 2;
LABEL_21:
      v44 = -1;
      goto LABEL_24;
    }

    v64[0] = MEMORY[0x29EDCA5F8];
    v64[1] = 3221225472;
    v64[2] = ___AMSupportHttpURLSessionSendSyncNoRetry_block_invoke;
    v64[3] = &unk_29EE96B00;
    v64[6] = &v75;
    v64[7] = &v69;
    v64[8] = &v65;
    v64[4] = v31;
    v64[5] = &v81;
    [a1 sendRequest:v61 completion:v64];
    dispatch_semaphore_wait(v37, 0xFFFFFFFFFFFFFFFFLL);
    if (v70[5])
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "HTTP request failed with error %@", v38, v39, v40, v41, v42, v70[5]);
      v27 = 0;
      v26 = 0;
      if ([a1 sslEvalFailed])
      {
        v43 = 23;
      }

      else
      {
        v43 = 16;
      }

      goto LABEL_21;
    }

    v45 = v82[5];
    if (!v45)
    {
      AMSupportLogInternal(3, "_AMSupportHttpURLSessionSendSyncNoRetry", "HTTP request provided no response data", v38, v39, v40, v41, v42, v56);
      v27 = 0;
      v26 = 0;
      v43 = 16;
      goto LABEL_21;
    }

    v27 = v45;
    v26 = v76[5];
    v43 = 0;
    v44 = *(v66 + 6);
LABEL_24:

    if (v37)
    {
      dispatch_release(v37);
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v81, 8);
    if (v43)
    {
      if (v43 == 23)
      {
        AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "SSL trust evaluation failed", v46, v47, v48, v49, v50, v56);
        goto LABEL_54;
      }

      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP request failed (status=%d)", v46, v47, v48, v49, v50, v43);
      v51 = 1;
      if (!v27)
      {
LABEL_29:
        AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP request failed, httpResponseData is NULL", v46, v47, v48, v49, v50, v56);
        v51 = 1;
        if (!Value)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v51 = 0;
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    if (!Value)
    {
      goto LABEL_34;
    }

LABEL_33:
    if (![Value member:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithLong:", v44)}])
    {
      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "HTTP server returned unexpected HTTP response code %ld", v46, v47, v48, v49, v50, v44);
      goto LABEL_37;
    }

LABEL_34:
    if (!v51)
    {
      if (a3 && v27)
      {
        *a3 = CFRetain(v27);
      }

      if (a4 && v26)
      {
        *a4 = CFRetain(v26);
      }

      if (a5 && v44)
      {
        *a5 = v44;
      }

      goto LABEL_54;
    }

LABEL_37:
    v52 = v62;
    if (v28 < v62)
    {
      v53 = valuePtr * v28;
      AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "-------------------- Attempt %d of %d failed, sleeping for %d seconds --------------------", v46, v47, v48, v49, v50, v28);
      sleep(v53);
      v52 = v62;
    }

    ++v28;
  }

  while (v28 <= v52);
  if (v52 >= 2)
  {
    AMSupportLogInternal(3, "AMSupportHttpURLSessionSendSync", "!!!!!!!!!!!!!!!!!!!!!!!!!! Retries exhausted on attempt %d !!!!!!!!!!!!!!!!!!!!!!!!!!", v46, v47, v48, v49, v50, v52);
  }

LABEL_54:
  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_58:
  objc_autoreleasePoolPop(context);
  v54 = *MEMORY[0x29EDCA608];
  return v43;
}

void sub_2983D4AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t AMSupportHttpURLSessionCreateWithOptions(uint64_t a1)
{
  v2 = [AMSupportOSURLSession alloc];

  return [(AMSupportOSURLSession *)v2 initWithOptions:a1];
}

uint64_t AMSupportHttpSendSync(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = [[AMSupportOSURLSession alloc] initWithOptions:a2];
  v12 = AMSupportHttpURLSessionSendSync(v11, a1, a3, a4, a5);
  [(AMSupportOSURLSession *)v11 invalidateAndCancel];
  AMSupportSafeRelease(v11);
  objc_autoreleasePoolPop(v10);
  return v12;
}

uint64_t (*AMSupportLogSetHandler(uint64_t (*result)(int level)))(int level)
{
  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = _DefaultLogHandler;
  }

  _logHandler = v1;
  return result;
}

uint64_t AMSupportDebugWriteObject(const __CFAllocator *a1, const void *a2, CFTypeRef cf, uint64_t a4)
{
  error[1] = *MEMORY[0x29EDCA608];
  cfa = 0;
  error[0] = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDataGetTypeID())
  {
    v11 = CFGetTypeID(cf);
    if (v11 == CFDictionaryGetTypeID() || (v12 = CFGetTypeID(cf), v12 == CFArrayGetTypeID()))
    {
      Data = CFPropertyListCreateData(a1, cf, kCFPropertyListXMLFormat_v1_0, 0, error);
      if (!Data)
      {
        v25 = 3;
        AMSupportLogInternal(3, "AMSupportDebugWriteObject", "failed to create debugData: %@", v18, v19, v20, v21, v22, error[0]);
        goto LABEL_18;
      }

      v10 = ".plist";
      goto LABEL_9;
    }

    AMSupportLogInternal(3, "AMSupportDebugWriteObject", "can't prepare data for output to file", v13, v14, v15, v16, v17, v38);
    AMSupportLogInternal(8, "AMSupportDebugWriteObject", "%@", v31, v32, v33, v34, v35, cf);
LABEL_17:
    Data = 0;
    v25 = 1;
    goto LABEL_18;
  }

  Data = CFRetain(cf);
  if (!Data)
  {
    v25 = 0;
    goto LABEL_18;
  }

  v10 = "";
LABEL_9:
  v23 = CFStringCreateWithFormat(a1, 0, @"%@%s", a4, v10);
  if (v23)
  {
    v24 = v23;
    v25 = AMSupportCopyURLWithAppendedComponent(a1, a2, v23, 0, &cfa);
    CFRelease(v24);
    if (!v25)
    {
      v25 = AMSupportWriteDataToFileURL(a1, Data, cfa, 0);
      AMSupportLogInternal(8, "AMSupportDebugWriteObject", "debug object written: %@", v26, v27, v28, v29, v30, cfa);
    }
  }

  else
  {
    v25 = 2;
  }

LABEL_18:
  AMSupportSafeRelease(Data);
  AMSupportSafeRelease(cfa);
  AMSupportSafeRelease(error[0]);
  v36 = *MEMORY[0x29EDCA608];
  return v25;
}

uint64_t AMSupportCreateErrorInternal(uint64_t result, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v13 = result;
    v14 = *MEMORY[0x29EDB8ED8];
    result = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (result)
    {
      v15 = result;
      v16 = CFStringCreateWithFormatAndArguments(v14, 0, a5, &a9);
      if (v16)
      {
        v17 = v16;
        CFDictionaryAddValue(v15, *MEMORY[0x29EDB8F38], v16);
        CFRelease(v17);
      }

      if (a4)
      {
        CFDictionaryAddValue(v15, *MEMORY[0x29EDB8F68], a4);
      }

      *v13 = CFErrorCreate(v14, a2, a3, v15);
      CFRelease(v15);
      result = 1;
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void AMSupportLogDumpMemory(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v24 = *MEMORY[0x29EDCA608];
  memset(v23, 0, sizeof(v23));
  AMSupportLogInternal(a1, a2, "[%s: %u bytes]", a4, a5, a6, a7, a8, a3);
  if (v8 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = v8 + 1;
    do
    {
      v19 = *v9++;
      v20 = snprintf(v23 + v17, 64 - v17, "%02x ", v19);
      if (++v16 > 0xF || v18 == 2)
      {
        AMSupportLogInternal(a1, "", "%s", v11, v12, v13, v14, v15, v23);
        v17 = 0;
        v16 = 0;
      }

      else
      {
        v17 += v20;
      }

      --v18;
    }

    while (v18 > 1);
  }

  AMSupportLogInternal(a1, "", "-----------------------------------------------", v11, v12, v13, v14, v15, v22);
  v21 = *MEMORY[0x29EDCA608];
}

uint64_t AMSupportLogFormat(char *__format, ...)
{
  va_start(va, __format);
  v19 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *__str = 0u;
  v4 = 0u;
  vsnprintf(__str, 0x100uLL, __format, va);
  result = fprintf(*MEMORY[0x29EDCA610], "%s\n", __str);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportPlatformCreateSoftLink(const __CFURL *a1, const __CFURL *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  bzero(v18, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024) && CFURLGetFileSystemRepresentation(a1, 1u, v18, 1024))
  {
    result = symlink(buffer, v18);
    if (result)
    {
      v5 = __error();
      v6 = strerror(*v5);
      AMSupportLogInternal(3, "AMSupportPlatformCreateSoftLink", "failed to create link: %s", v7, v8, v9, v10, v11, v6);
      AMSupportLogInternal(8, "AMSupportPlatformCreateSoftLink", "source path: %s; dest path: %s", v12, v13, v14, v15, v16, buffer);
      result = 4;
    }
  }

  else
  {
    result = 3;
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportPlatformRemoveDirectory(const __CFURL *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v18 = 0;
    v2 = &v18;
    v3 = _AMSupportPlatformRemoveDirectoryRecursion(buffer, &v18);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      if (!rmdir(buffer))
      {
        v4 = 0;
        goto LABEL_8;
      }

      v4 = 4;
      v2 = __error();
    }

    v5 = strerror(*v2);
    AMSupportLogInternal(3, "AMSupportPlatformRemoveDirectory", "failed to remove directory: %s", v6, v7, v8, v9, v10, v5);
    AMSupportLogInternal(8, "AMSupportPlatformRemoveDirectory", "url=%@, path=%s", v11, v12, v13, v14, v15, a1);
  }

  else
  {
    v4 = 3;
  }

LABEL_8:
  v16 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t _AMSupportPlatformRemoveDirectoryRecursion(const char *a1, int *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = opendir(a1);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  for (i = readdir(v4); i; i = readdir(v5))
  {
    d_name = i->d_name;
    if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
    {
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s%c%s", a1, 47, d_name);
      memset(&v10, 0, sizeof(v10));
      if (!lstat(__str, &v10))
      {
        if ((v10.st_mode & 0x4000) != 0)
        {
          if (_AMSupportPlatformRemoveDirectoryRecursion(__str, a2))
          {
            goto LABEL_16;
          }

          if (rmdir(__str))
          {
            goto LABEL_15;
          }
        }

        else if (unlink(__str))
        {
          goto LABEL_15;
        }
      }
    }
  }

  result = closedir(v5);
  if (result)
  {
LABEL_15:
    *a2 = *__error();
LABEL_16:
    result = 4;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportPlatformRemoveFile(const __CFURL *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    result = remove(buffer, v2);
    if (result)
    {
      v4 = __error();
      v5 = strerror(*v4);
      AMSupportLogInternal(3, "AMSupportPlatformRemoveFile", "failed to file: %s", v6, v7, v8, v9, v10, v5);
      AMSupportLogInternal(8, "AMSupportPlatformRemoveFile", "url=%@, path=%s", v11, v12, v13, v14, v15, a1);
      result = 4;
    }
  }

  else
  {
    result = 3;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportPlatformCopyURLToNewTempDirectory(const __CFAllocator *a1, const char *a2, CFURLRef *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  bzero(v18, 0x400uLL);
  bzero(__str, 0x400uLL);
  result = 1;
  if (a2 && a3)
  {
    _AMSupportPlatformTempDirCString(v18);
    v7 = snprintf(__str, 0x400uLL, "%s/%s", v18, a2);
    if (mkdtemp(__str))
    {
      v8 = CFURLCreateFromFileSystemRepresentation(a1, __str, v7, 1u);
      if (v8)
      {
        v9 = v8;
        result = 0;
        *a3 = v9;
      }

      else
      {
        unlink(__str);
        result = 2;
      }
    }

    else
    {
      v10 = __error();
      strerror(*v10);
      AMSupportLogInternal(3, "AMSupportPlatformCopyURLToNewTempDirectory", "failed to create %s: %s", v11, v12, v13, v14, v15, __str);
      result = 4;
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _AMSupportPlatformTempDirCString(char *a1)
{
  v2 = getenv("TMPDIR");
  if (!v2 || (v3 = strlcpy(a1, v2, 0x400uLL), v3 - 1024 < 0xFFFFFFFFFFFFFC01) || (v4 = v3, access(a1, 7)))
  {
    v5 = confstr(65537, a1, 0x400uLL);
    if (v5 - 1024 < 0xFFFFFFFFFFFFFC01)
    {
LABEL_7:
      strcpy(a1, "/tmp/");
      return 5;
    }

    v4 = v5;
  }

  if (access(a1, 7))
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t AMSupportPlatformCopyURLWithAppendedExtension(const __CFAllocator *a1, const __CFURL *a2, const __CFString *a3, CFURLRef *a4)
{
  v5 = CFURLCreateCopyAppendingPathExtension(a1, a2, a3);
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  result = 0;
  *a4 = v6;
  return result;
}

__CFString *_AMSupportPlatformConstantsInitialize()
{
  v7 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  v0 = _AMSupportPlatformTempDirCString(buffer);
  _tempDirURL = CFURLCreateFromFileSystemRepresentation(0, buffer, v0, 1u);
  if (!_tempDirURL)
  {
    _AMSupportPlatformConstantsInitialize_cold_1();
  }

  *buffer = 0u;
  v5 = 0u;
  memset(v6, 0, 32);
  v3 = 32;
  result = sysctlbyname("kern.osversion", buffer, &v3, 0, 0);
  if (result || (v3 = 32, sysctlbyname("hw.product", v6, &v3, 0, 0)) && (result = sysctlbyname("hw.machine", v6, &v3, 0, 0), result) || (result = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"mac/%s/%s", buffer, v6)) == 0)
  {
    if (_platformInfoStr)
    {
      goto LABEL_7;
    }

    result = @"???";
  }

  _platformInfoStr = result;
LABEL_7:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportX509ChainEvaluateTrust(__SecTrust *a1, CFArrayRef theArray, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85[1] = *MEMORY[0x29EDCA608];
  v84 = 0;
  v85[0] = 0;
  *__s1 = 0u;
  v83 = 0u;
  memset(v81, 0, sizeof(v81));
  *__s2 = 0u;
  v80 = 0u;
  memset(v78, 0, sizeof(v78));
  if (!a1)
  {
    AMSupportX509ChainEvaluateTrust_cold_3(0, theArray, a3, a4, a5, a6, a7, a8, v74);
LABEL_37:
    v42 = 4294967292;
    goto LABEL_13;
  }

  if (!theArray)
  {
    AMSupportX509ChainEvaluateTrust_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v74);
    goto LABEL_37;
  }

  if (!a3)
  {
    AMSupportX509ChainEvaluateTrust_cold_1(a1, theArray, 0, a4, a5, a6, a7, a8, v74);
    goto LABEL_37;
  }

  if (CFArrayGetCount(theArray) <= 0)
  {
    AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "trustedRootArray must be non NULL and have at least one element", v11, v12, v13, v14, v15, v74);
    v42 = 4294966387;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Number of trusted roots: %d", v17, v18, v19, v20, v21, Count);
  CertificateCount = SecTrustGetCertificateCount(a1);
  if (CertificateCount <= 0)
  {
    v75 = 0;
    v40 = "Array index of root server cert out of range. (%d)";
    v41 = 7;
LABEL_11:
    AMSupportLogInternal(v41, "AMSupportX509ChainEvaluateTrust", v40, v23, v24, v25, v26, v27, v75);
    *a3 = 6;
LABEL_12:
    v42 = 4294967246;
    goto LABEL_13;
  }

  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Number of server certificates: %d", v23, v24, v25, v26, v27, CertificateCount);
  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Checking server certificate %d of %d", v28, v29, v30, v31, v32, 0);
  CertificateAtIndex = SecTrustGetCertificateAtIndex(a1, 0);
  v39 = _SecCertificateCopyAMSupportCert(CertificateAtIndex, v78, v85, v34, v35, v36, v37, v38);
  if (v39)
  {
    v75 = v39;
    v40 = "PKI: decoding top-level server cert failed with error 0x%08X";
LABEL_8:
    v41 = 3;
    goto LABEL_11;
  }

  AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "First server cert length %d", v23, v24, v25, v26, v27, __s2[1]);
  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_27:
    AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "Root cert not signed by any trusted roots.", v45, v46, v47, v48, v49, v76);
    v42 = 0;
    *a3 = 3;
  }

  else
  {
    v50 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v50);
      if (_SecCertificateCopyAMSupportCert(ValueAtIndex, v81, &v84, v52, v53, v54, v55, v56))
      {
        AMSupportLogInternal(3, "AMSupportX509ChainEvaluateTrust", "PKI: decoding trusted root %d failed with error 0x%08X", v57, v58, v59, v60, v61, v50);
        goto LABEL_12;
      }

      AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "Trusted root #%d has length %d", v57, v58, v59, v60, v61, v50);
      v67 = __s1[1];
      if (__s1[1] == __s2[1] && !memcmp(__s1[0], __s2[0], __s1[1]))
      {
        AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: Root cert is identical to trusted root. (success)", v62, v63, v64, v65, v66, v76);
        goto LABEL_33;
      }

      v68 = AMSupportX509DecodeVerifyCertIssuer(v78, v81, v67, v62, v63, v64, v65, v66);
      if (v68 != 18)
      {
        break;
      }

      if (v84)
      {
        CFRelease(v84);
      }

      v84 = 0;
      if (++v50 >= CFArrayGetCount(theArray))
      {
        goto LABEL_27;
      }
    }

    if (v68)
    {
      v75 = v50;
      v40 = "PKI: verify cert was issued by trusted root %d failed with error 0x%08X";
      goto LABEL_8;
    }

    AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: verify cert was issued by trusted root %d (success)", v23, v24, v25, v26, v27, v50);
LABEL_33:
    AMSupportLogInternal(7, "AMSupportX509ChainEvaluateTrust", "PKI: Chain validation complete. (success)", v69, v70, v71, v72, v73, v77);
    v42 = 0;
    *a3 = 1;
  }

LABEL_13:
  if (v85[0])
  {
    CFRelease(v85[0]);
    v85[0] = 0;
  }

  if (v84)
  {
    CFRelease(v84);
  }

  v43 = *MEMORY[0x29EDCA608];
  return v42;
}

uint64_t _SecCertificateCopyAMSupportCert(__SecCertificate *a1, unint64_t *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    _SecCertificateCopyAMSupportCert_cold_4(a1, a2, 0, a4, a5, a6, a7, a8, v34);
    return 99;
  }

  if (!a2)
  {
    _SecCertificateCopyAMSupportCert_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v34);
    return 99;
  }

  if (!a1)
  {
    _SecCertificateCopyAMSupportCert_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v34);
    return 99;
  }

  v10 = SecCertificateCopyData(a1);
  if (!v10)
  {
    _SecCertificateCopyAMSupportCert_cold_1(0, v11, v12, v13, v14, v15, v16, v17, v34);
    return 99;
  }

  v18 = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v18);
  if (BytePtr && Length)
  {
    v26 = AMSupportX509DecodeCertificate(a2, BytePtr, Length);
    v32 = v26;
    if (v26)
    {
      AMSupportLogInternal(7, "_SecCertificateCopyAMSupportCert", "PKI: decoding cert failed with error 0x%08X", v27, v28, v29, v30, v31, v26);
    }

    else
    {
      *a3 = CFRetain(v18);
    }
  }

  else
  {
    AMSupportLogInternal(3, "_SecCertificateCopyAMSupportCert", "chain_blob must be non NULL and chain_blob_length must be non 0", v21, v22, v23, v24, v25, v34);
    v32 = 99;
  }

  CFRelease(v18);
  return v32;
}

unint64_t _base64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5];
      *v10 = Base64[v9 >> 2];
      v10[1] = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      v10[2] = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      v10[3] = Base64[v7 & 0x3F];
      v5 = result;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v19 = 0;
    v18 = 0;
    do
    {
      *(&v18 + v11) = a1[v11];
      ++v11;
    }

    while (a2 > v11);
    if (result + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v18);
    v13 = (HIBYTE(v18) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3));
    v14 = &a3[result];
    *v14 = Base64[v18 >> 2];
    v15 = v19;
    v14[1] = Base64[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = Base64[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[result | 2] = v16;
    v14[3] = 61;
    result += 4;
  }

LABEL_14:
  if (result >= a4)
  {
LABEL_16:
    a3[a4 - 1] = 0;
    *a3 = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  a3[result] = 0;
LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *_base64encode(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  if (a1 && a2 >= 1)
  {
    v5 = a2 / 3uLL;
    if (a2 != 3 * v5)
    {
      ++v5;
    }

    v6 = (4 * v5) | 1;
    v2 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v2)
    {
      _base64_ntop(a1, a2, v2, v6);
    }
  }

  return v2;
}

uint64_t _base64decode(char *__s, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = a2;
  }

  v4 = __s;
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = __s;
    v4 = __s;
    do
    {
      v8 = *v7;
      if (v8 == 10 || v8 == 13)
      {
        v10 = 0;
        v5 = 0;
      }

      else
      {
        v10 = _base64decode_table[*v7];
        if (v10 == -1)
        {
          v10 = v6;
        }

        else if (v5 > 1)
        {
          if (v5 == 2)
          {
            *v4++ = (16 * v6) | (v10 >> 2) & 0xF;
            v5 = 3;
          }

          else
          {
            v5 = 0;
            *v4++ = v10 | (v6 << 6);
          }
        }

        else if (v5)
        {
          *v4++ = (4 * v6) | (v10 >> 4) & 3;
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      ++v7;
      v6 = v10;
    }

    while (v7 < &__s[v3]);
  }

  *v4 = 0;
  return (v4 - __s);
}

uint64_t AMSupportCommonCopyHexStringFromData(uint64_t a1, uint64_t a2, void *a3, size_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMSupportCommonCopyHexStringFromData_cold_5(0, a2, a3, a4, a5, a6, a7, a8, v26);
    return 1;
  }

  v8 = a2;
  if (!a2)
  {
    AMSupportCommonCopyHexStringFromData_cold_4(a1, 0, a3, a4, a5, a6, a7, a8, v26);
    return 1;
  }

  if (!a3)
  {
    AMSupportCommonCopyHexStringFromData_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v26);
    return 1;
  }

  if (!a4)
  {
    AMSupportCommonCopyHexStringFromData_cold_2(a1, a2, a3, 0, a5, a6, a7, a8, v26);
    return 1;
  }

  v11 = a1;
  v12 = (2 * a2) | 1;
  v13 = malloc_type_calloc(1uLL, v12, 0x100004077774924uLL);
  if (v13)
  {
    v21 = 2 * v8;
    v22 = v13 + 1;
    do
    {
      v23 = *v11++;
      *(v22 - 1) = AMSupportCommonCopyHexStringFromData_kAsciiHexChars[v23 >> 4];
      *v22 = AMSupportCommonCopyHexStringFromData_kAsciiHexChars[v23 & 0xF];
      v22 += 2;
      --v8;
    }

    while (v8);
    v24 = 0;
    v13[v21] = 0;
    *a3 = v13;
    *a4 = v12;
  }

  else
  {
    AMSupportCommonCopyHexStringFromData_cold_1(0, v14, v15, v16, v17, v18, v19, v20, v26);
    return 99;
  }

  return v24;
}

uint64_t AMSupportCommonCopyHexStringFromUInt32(unsigned int a1, void *a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = bswap32(a1);
  result = AMSupportCommonCopyHexStringFromData(&v10, 4, a2, a3, a5, a6, a7, a8);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMSupportCommonCopyHexStringFromUInt64(unint64_t a1, void *a2, size_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v10[0] = bswap64(a1);
  result = AMSupportCommonCopyHexStringFromData(v10, 8, a2, a3, a5, a6, a7, a8);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Img4EncodeItemBegin(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 32);
    if (*v5 || *(v5 + 8))
    {
      return 101;
    }
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040C7713FB7uLL);
    *a1 = v7;
    if (!v7)
    {
      return 102;
    }

    *(*a1 + 8) = malloc_type_calloc(1uLL, 0x400uLL, 0x49C41366uLL);
    v8 = *a1;
    v9 = *(*a1 + 8);
    if (!v9)
    {
      return 102;
    }

    *(v8 + 16) = 1024;
    *(v8 + 24) = v9;
    v4 = *a1;
  }

  *v4 = a2;
  *(*a1 + 32) = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040BEC857D6uLL);
  if (*(*a1 + 32))
  {
    **(*a1 + 32) = malloc_type_calloc(1uLL, 0x400uLL, 0xBA76850CuLL);
    v10 = *(*a1 + 32);
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 2) = 1024;
      v10[2] = v11;
      return 100;
    }
  }

  return 102;
}

uint64_t Img4EncodeItemEnd(uint64_t a1, unsigned int a2)
{
  *&__n[1] = *MEMORY[0x29EDCA608];
  __n[0] = 0;
  __src = 0;
  if (!a1 || *a1 != a2)
  {
    v4 = 101;
    goto LABEL_21;
  }

  if (*(a1 + 8) && *(a1 + 16) && (v3 = *(a1 + 32), *v3) && *(v3 + 8))
  {
    v4 = Img4EncodeDictionary(0, a2, *v3, *(v3 + 16) - *v3, &__src, __n);
    if (v4 == 100)
    {
      v5 = __n[0];
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      v8 = &v7[-*(a1 + 8)];
      if (v6 - v8 > __n[0])
      {
LABEL_14:
        memcpy(v7, __src, v5);
        *a1 = 0;
        v11 = *(a1 + 32);
        *(a1 + 24) += __n[0];
        if (*v11)
        {
          free(*v11);
          v11 = *(a1 + 32);
          *v11 = 0;
        }

        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        v4 = 100;
        goto LABEL_19;
      }

      if (__n[0] <= 0x400)
      {
        v9 = 1024;
      }

      else
      {
        v9 = __n[0];
      }

      v10 = img4encode_realloc(*(a1 + 8), v6, v6 + v9);
      if (v10)
      {
        *(a1 + 8) = v10;
        v7 = &v8[v10];
        *(a1 + 24) = v7;
        *(a1 + 16) += v9;
        v5 = __n[0];
        goto LABEL_14;
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 101;
  }

LABEL_19:
  if (__src)
  {
    free(__src);
  }

LABEL_21:
  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Img4EncodeDictionary(int a1, unsigned int a2, const void *a3, unsigned int a4, void *a5, unsigned int *a6)
{
  v26 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v6 = 101;
  if (!a5 || !a6)
  {
    goto LABEL_22;
  }

  v12 = bswap32(a2);
  if (a1 == 2)
  {
    v25 = v12;
    v13 = DEREncoderCreate(0);
    v14 = v13;
    if (!v13)
    {
      v6 = 102;
      goto LABEL_22;
    }

    v15 = DEREncoderAddData(v13, 0, 0x16u, &v25, 4u, 0);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = DEREncoderAddData(v14, 0, 0x10u, a3, a4, 1);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = DEREncoderCreateEncodedBuffer(v14, &v22, &v24);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = v12;
    v16 = DEREncoderCreate(1);
    if (!v16)
    {
      DEREncoderDestroy(0);
      v6 = 102;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = DEREncoderAddData(v16, 0, 0x16u, &v25, 4u, 0);
    if (v18 || (v18 = DEREncoderAddData(v17, 0, 0x11u, a3, a4, 1), v18) || (v18 = DEREncoderCreateEncodedBuffer(v17, &v22, &v24), v18))
    {
      v6 = v18;
      DEREncoderDestroy(v17);
      if (v6 != 100)
      {
        goto LABEL_22;
      }
    }

    else
    {
      DEREncoderDestroy(v17);
    }

    v14 = 0;
  }

  v15 = Img4EncodeSequence(v22, v24, &v21, &v23);
  if (v15 == 100)
  {
    v15 = Img4EncodePrivate(a2, v21, v23, a5, a6);
  }

LABEL_17:
  v6 = v15;
  if (v14)
  {
    DEREncoderDestroy(v14);
  }

LABEL_22:
  if (v22)
  {
    free(v22);
    v22 = 0;
  }

  if (v21)
  {
    free(v21);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

void *img4encode_realloc(void *a1, size_t a2, size_t size)
{
  v6 = malloc_type_calloc(1uLL, size, 0x28E54690uLL);
  v7 = v6;
  if (a1 && v6)
  {
    if (a2 >= size)
    {
      v8 = size;
    }

    else
    {
      v8 = a2;
    }

    memcpy(v6, a1, v8);
    free(a1);
  }

  return v7;
}

uint64_t Img4EncodeItemPropertyData(_DWORD *a1, int a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = 0;
  v18 = *MEMORY[0x29EDCA608];
  v16 = bswap32(a3);
  v17 = 0;
  v15 = 0;
  v6 = 102;
  if (a1 && a4 && a5)
  {
    if (*a1 == a2)
    {
      v11 = DEREncoderCreate(0);
      v5 = v11;
      if (v11)
      {
        v12 = DEREncoderAddData(v11, 0, 0x16u, &v16, 4u, 0);
        if (!v12)
        {
          v12 = DEREncoderAddData(v5, 0, 4u, a4, a5, 0);
          if (!v12)
          {
            v12 = DEREncoderCreateEncodedBuffer(v5, &v15, &v17);
            if (!v12)
            {
              v12 = Img4EncodeItemProperty(a1, a3, v15, v17);
            }
          }
        }

        v6 = v12;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v5 = 0;
      v6 = 101;
    }
  }

  DEREncoderDestroy(v5);
  if (v15)
  {
    free(v15);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Img4EncodeItemProperty(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4)
{
  __n[1] = *MEMORY[0x29EDCA608];
  v20 = 0;
  __n[0] = 0;
  __src = 0;
  v4 = 101;
  if (a1 && a3)
  {
    v7 = Img4EncodeSequence(a3, a4, &v20, __n + 1);
    if (v7 == 100 && (v7 = Img4EncodePrivate(a2, v20, HIDWORD(__n[0]), &__src, __n), v7 == 100))
    {
      v8 = LODWORD(__n[0]);
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;
      v13 = v11 - v12;
      if (v10 - (v11 - v12) > LODWORD(__n[0]))
      {
LABEL_11:
        memcpy(v11, __src, v8);
        *(*(a1 + 32) + 16) += LODWORD(__n[0]);
        v4 = 100;
        goto LABEL_13;
      }

      if (LODWORD(__n[0]) <= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = LODWORD(__n[0]);
      }

      v15 = img4encode_realloc(v12, v10, v10 + v14);
      if (v15)
      {
        v16 = *(a1 + 32);
        *v16 = v15;
        v11 = &v15[v13];
        *(v16 + 16) = v11;
        *(v16 + 8) += v14;
        v8 = LODWORD(__n[0]);
        goto LABEL_11;
      }

      v4 = 2;
    }

    else
    {
      v4 = v7;
    }
  }

LABEL_13:
  if (v20)
  {
    free(v20);
    v20 = 0;
  }

  if (__src)
  {
    free(__src);
  }

  v17 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t Img4EncodeItemPropertyBool(_DWORD *a1, int a2, unsigned int a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v14[4] = 0;
  *v14 = (a4 << 31 >> 31);
  v13 = bswap32(a3);
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v6 = DEREncoderCreate(0);
      v7 = v6;
      if (v6)
      {
        v8 = DEREncoderAddData(v6, 0, 0x16u, &v13, 4u, 0);
        if (!v8)
        {
          v8 = DEREncoderAddData(v7, 0, 1u, v14, 1u, 0);
          if (!v8)
          {
            v8 = DEREncoderCreateEncodedBuffer(v7, &v12, &v14[1]);
            if (!v8)
            {
              v8 = Img4EncodeItemProperty(a1, a3, v12, *&v14[1]);
            }
          }
        }

        v9 = v8;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v7 = 0;
      v9 = 101;
    }
  }

  else
  {
    v7 = 0;
    v9 = 102;
  }

  DEREncoderDestroy(v7);
  if (v12)
  {
    free(v12);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t Img4EncodeItemPropertyInt32(_DWORD *a1, int a2, unsigned int a3, unsigned int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = bswap32(a3);
  v15 = 0;
  v13 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = DEREncoderCreate(0);
      v8 = v7;
      if (v7)
      {
        v9 = DEREncoderAddData(v7, 0, 0x16u, &v14, 4u, 0);
        if (!v9)
        {
          v9 = DEREncoderAddUInt32(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = DEREncoderCreateEncodedBuffer(v8, &v13, &v15);
            if (!v9)
            {
              v9 = Img4EncodeItemProperty(a1, a3, v13, v15);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  DEREncoderDestroy(v8);
  if (v13)
  {
    free(v13);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t Img4EncodeItemPropertyInt64(_DWORD *a1, int a2, unsigned int a3, unint64_t a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = bswap32(a3);
  v15 = 0;
  v13 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = DEREncoderCreate(0);
      v8 = v7;
      if (v7)
      {
        v9 = DEREncoderAddData(v7, 0, 0x16u, &v14, 4u, 0);
        if (!v9)
        {
          v9 = DEREncoderAddUInt64(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = DEREncoderCreateEncodedBuffer(v8, &v13, &v15);
            if (!v9)
            {
              v9 = Img4EncodeItemProperty(a1, a3, v13, v15);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  DEREncoderDestroy(v8);
  if (v13)
  {
    free(v13);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

void Img4EncodeItemDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    a1[1] = 0;
    v3 = a1[4];
    if (v3)
    {
      if (*v3)
      {
        free(*v3);
        v3 = a1[4];
        *v3 = 0;
      }

      free(v3);
    }

    free(a1);
  }
}

uint64_t Img4EncodeItemCopyBuffer(uint64_t a1, void *a2, unsigned int *a3)
{
  result = 102;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 24) - *(a1 + 8);
    v8 = malloc_type_calloc(1uLL, v7, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, *(a1 + 8), v7);
      *a2 = v9;
      *a3 = v7;
      return 100;
    }

    else
    {
      return 102;
    }
  }

  return result;
}

uint64_t Img4EncodeCreatePayload(const char *a1, const char *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v9 = 101;
  if (!a1 || !a2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  if (a3)
  {
    if (strlen(a1) != 4)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v8 = DEREncoderCreate(0);
    if (v8)
    {
      v12 = DEREncoderCreate(0);
      if (v12)
      {
        v18 = DEREncoderAddData(v8, 0, 0x16u, "IM4P", 4u, 0);
        if (v18 || (v18 = DEREncoderAddData(v8, 0, 0x16u, a1, 4u, 0), v18) || (v19 = strlen(a2), v18 = DEREncoderAddData(v8, 0, 0x16u, a2, v19, 0), v18) || (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a3, a4, 0), v18) || a5 && (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a5, a6, 0), v18) || (v18 = DEREncoderAddDataFromEncoderNoCopy(v8, v12, 0, 0x10u, 1), v18))
        {
          v9 = v18;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v12, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = 2;
  }

LABEL_16:
  DEREncoderDestroy(v8);
  DEREncoderDestroy(v12);
  return v9;
}

uint64_t Img4EncodeCreateManifest(uint64_t a1, uint64_t (*a2)(void **, char *, uint64_t), uint64_t (*a3)(void **, size_t *, uint64_t), uint64_t (*a4)(uint64_t, void *, void, void **, uint64_t *, uint64_t), const void *a5, unsigned int a6, void *a7, unsigned int *a8, uint64_t a9, uint64_t a10)
{
  v10 = 0;
  __n[1] = *MEMORY[0x29EDCA608];
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 1295273289;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v11 = 101;
  if (!a2 || !a3 || !a7)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
  if (!a8)
  {
    goto LABEL_13;
  }

  v20 = DEREncoderCreate(0);
  v10 = v20;
  if (!v20)
  {
    v15 = 0;
LABEL_12:
    v11 = 2;
    goto LABEL_13;
  }

  v21 = DEREncoderAddData(v20, 0, 0x16u, &v36, 4u, 0);
  if (v21)
  {
    goto LABEL_8;
  }

  v21 = DEREncoderAddUInt32(v10, 0, 2u, a1);
  if (v21)
  {
    goto LABEL_8;
  }

  __n[0] = 0;
  v40 = 0;
  __src = 0;
  v24 = a2(&__src, __n + 4, a9);
  if (v24 == 100 && (v24 = a3(&v40, __n, a9), v24 == 100))
  {
    v25 = HIDWORD(__n[0]) + LODWORD(__n[0]);
    if (__CFADD__(HIDWORD(__n[0]), __n[0]))
    {
      v27 = 0;
      v11 = 106;
    }

    else
    {
      v26 = malloc_type_calloc(1uLL, (HIDWORD(__n[0]) + LODWORD(__n[0])), 0x100004077774924uLL);
      v27 = v26;
      if (v26)
      {
        memcpy(v26, __src, HIDWORD(__n[0]));
        memcpy(&v27[HIDWORD(__n[0])], v40, LODWORD(__n[0]));
        v11 = Img4EncodeDictionary(a1, 0x4D414E42u, v27, v25, &v35, &v39 + 1);
      }

      else
      {
        v11 = 102;
      }
    }
  }

  else
  {
    v11 = v24;
    v27 = 0;
  }

  if (__src)
  {
    free(__src);
    __src = 0;
  }

  if (v40)
  {
    free(v40);
    v40 = 0;
  }

  if (v27)
  {
    free(v27);
  }

  if (v11 != 100)
  {
    goto LABEL_9;
  }

  v21 = DEREncoderAddData(v10, 0, 0x11u, v35, HIDWORD(v39), 1);
  if (v21 || (v21 = Img4EncodeCopyFullManifestBytes(v35, HIDWORD(v39), &v33, &v38), v21 != 100) || (v21 = a4(a1, v33, v38, &v32, &v37, a10), v21 != 100) || (v21 = DEREncoderAddData(v10, 0, 4u, v32, v37, 0), v21) || (v21 = DEREncoderAddData(v10, 0, 0x10u, a5, a6, 1), v21) || (v21 = DEREncoderCreateEncodedBuffer(v10, &v34, &v39), v21))
  {
LABEL_8:
    v11 = v21;
LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v28 = DEREncoderCreate(0);
  v15 = v28;
  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = DEREncoderAddData(v28, 0, 0x10u, v34, v39, 1);
  if (v29)
  {
    v11 = v29;
  }

  else
  {
    EncodedBuffer = DEREncoderCreateEncodedBuffer(v15, a7, a8);
    if (EncodedBuffer)
    {
      v11 = EncodedBuffer;
    }

    else
    {
      v11 = 100;
    }
  }

LABEL_13:
  DEREncoderDestroy(v10);
  DEREncoderDestroy(v15);
  if (v35)
  {
    free(v35);
    v35 = 0;
  }

  if (v34)
  {
    free(v34);
    v34 = 0;
  }

  if (v33)
  {
    free(v33);
    v33 = 0;
  }

  if (v32)
  {
    free(v32);
  }

  v22 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t Img4EncodeCopyFullManifestBytes(const void *a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v8 = DEREncoderCreate(0);
  v9 = v8;
  if (v8)
  {
    v10 = DEREncoderAddData(v8, 0, 0x11u, a1, a2, 1);
    if (!v10)
    {
      EncodedBuffer = DEREncoderCreateEncodedBuffer(v9, a3, a4);
      if (EncodedBuffer)
      {
        v10 = EncodedBuffer;
      }

      else
      {
        v10 = 100;
      }
    }
  }

  else
  {
    v10 = 2;
  }

  DEREncoderDestroy(v9);
  return v10;
}

uint64_t Img4EncodeStitch(const void *a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v26 = *MEMORY[0x29EDCA608];
  v25 = 877088073;
  v9 = 101;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = 0;
  if (a7)
  {
    v18 = DEREncoderCreate(0);
    v11 = v18;
    if (v18)
    {
      v19 = DEREncoderAddData(v18, 0, 0x16u, &v25, 4u, 0);
      if (v19 || (v19 = DEREncoderAddDataNoCopy(v11, 0x103u, 0, a1, a2, 0), v19) || a3 && (v19 = DEREncoderAddData(v11, 2u, 0, a3, a4, 1), v19) || a5 && (v19 = DEREncoderAddData(v11, 2u, 1u, a5, a6, 1), v19))
      {
        v9 = v19;
        v8 = 0;
        goto LABEL_10;
      }

      v8 = DEREncoderCreate(0);
      if (v8)
      {
        v22 = DEREncoderAddDataFromEncoderNoCopy(v11, v8, 0, 0x10u, 1);
        if (v22)
        {
          v9 = v22;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v8, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 102;
  }

LABEL_10:
  DEREncoderDestroy(v11);
  DEREncoderDestroy(v8);
  v20 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t Img4EncodeSequence(const void *a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v4 = 0;
  v5 = 101;
  if (a1 && a3 && a4)
  {
    v10 = DEREncoderCreate(0);
    v4 = v10;
    if (v10)
    {
      v11 = DEREncoderAddData(v10, 0, 0x10u, a1, a2, 1);
      if (v11)
      {
        v5 = v11;
      }

      else
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer(v4, a3, a4);
        if (EncodedBuffer)
        {
          v5 = EncodedBuffer;
        }

        else
        {
          v5 = 100;
        }
      }
    }

    else
    {
      v5 = 102;
    }
  }

  DEREncoderDestroy(v4);
  return v5;
}

uint64_t Img4EncodePrivate(unsigned int a1, const void *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  v5 = 0;
  v6 = 101;
  if (a2 && a4 && a5)
  {
    v12 = DEREncoderCreate(0);
    v5 = v12;
    if (v12)
    {
      v13 = DEREncoderAddData(v12, 3u, a1, a2, a3, 1);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer(v5, a4, a5);
        if (EncodedBuffer)
        {
          v6 = EncodedBuffer;
        }

        else
        {
          v6 = 100;
        }
      }
    }

    else
    {
      v6 = 102;
    }
  }

  DEREncoderDestroy(v5);
  return v6;
}

_DWORD *DEREncoderCreate(int a1)
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

void DEREncoderDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = *v2;
        _EncodedDataRelease(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(a1);
  }
}

uint64_t DEREncoderAddData(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = _EncodedDataCreate(a2, a3, a4, a5, a6, 3);

  return _DEREncoderAddEncodedData(a1, v7);
}

uint64_t _DEREncoderAddEncodedData(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v22 = 1;
    if (!a2)
    {
      return v22;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return 2;
  }

  v4 = *(a1 + 2);
  v5 = a2;
  do
  {
    v6 = *(v5 + 20);
    v7 = __CFADD__(v4, v6);
    v8 = v4 + v6;
    if (v7 || (v9 = *(v5 + 24), v4 = v8 + v9, __CFADD__(v8, v9)))
    {
      v22 = 2;
      do
      {
LABEL_30:
        v23 = *v2;
        _EncodedDataRelease(v2);
        v2 = v23;
      }

      while (v23);
      return v22;
    }

    v5 = *v5;
  }

  while (v5);
  v10 = *a1;
  v11 = a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 3);
  v11 = a1;
  while (2)
  {
    v13 = v11;
    v11 = v10;
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = bswap64(*(v2 + 28));
    v15 = bswap64(*(v11 + 28));
    if (v14 != v15 || (v14 = bswap64(*(v2 + 36)), v15 = bswap64(*(v11 + 36)), v14 != v15))
    {
      if (v14 < v15)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1;
      }

LABEL_19:
      if (v16 < 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v17 = *(v2 + 24);
    v18 = *(v11 + 6);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v16 = memcmp(*(v2 + 8), v11[1], v19);
    if (v16)
    {
      goto LABEL_19;
    }

    if (v17 >= v18)
    {
LABEL_20:
      v10 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v2;
  do
  {
    v21 = v20;
    v20 = *v20;
  }

  while (v20);
  *v21 = v11;
  v11 = v13;
LABEL_26:
  v22 = 0;
  *v11 = v2;
  *(a1 + 2) = v4;
  return v22;
}

char *_EncodedDataCreate(unsigned int a1, unsigned int a2, const void *a3, unsigned int a4, int a5, int a6)
{
  v29[1] = *MEMORY[0x29EDCA608];
  if (!a3 && a4 && a6)
  {
    goto LABEL_42;
  }

  v12 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040322F9897uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 1;
    v14 = v12 + 28;
    if (a1 == 259)
    {
      v15 = 0;
    }

    else
    {
      if (a1 > 3)
      {
        goto LABEL_41;
      }

      if (a2 > 0x1E)
      {
        v17 = 0;
        v29[0] = 0;
        do
        {
          *(v29 + v17++) = a2 & 0x7F;
          v18 = a2 > 0x7F;
          a2 >>= 7;
        }

        while (v18);
        v19 = v17 - 1;
        v16 = v13 + 28;
        if ((v17 - 1) <= 0xE)
        {
          v13[28] = (a1 << 6) | (32 * (a5 != 0)) | 0x1F;
          v20 = v13 + 29;
          if (v17 != 1)
          {
            do
            {
              *v20++ = *(v29 + v19--) | 0x80;
            }

            while (v19);
          }

          *v20 = v29[0];
          v16 = v20 + 1;
        }
      }

      else
      {
        v13[28] = (a1 << 6) | (32 * (a5 != 0)) | a2;
        v16 = v13 + 29;
      }

      v21 = v16 - v14;
      if (!v21)
      {
        goto LABEL_41;
      }

      v22 = &v14[v21];
      if (a4 > 0x7F)
      {
        v24 = 0;
        v29[0] = 0;
        v25 = a4;
        do
        {
          *(v29 + v24++) = v25;
          v18 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v18);
        if (16 - v21 <= v24)
        {
          LODWORD(v23) = v14 + v21;
        }

        else
        {
          *v22 = v24 | 0x80;
          v23 = v22 + 1;
          do
          {
            *v23++ = *(&v29[-1] + v24-- + 7);
          }

          while (v24);
        }
      }

      else
      {
        LODWORD(v23) = v14 + v21;
        if (v21 != 16)
        {
          *v22 = a4;
          LODWORD(v23) = v22 + 1;
        }
      }

      v26 = v23 - v22;
      if (v23 == v22)
      {
        goto LABEL_41;
      }

      v14 = &v22[v26];
      v15 = v21 + v26;
    }

    *(v13 + 5) = v15;
    if (a6 <= 1)
    {
      if (!a6)
      {
        *(v13 + 1) = 0;
        *(v13 + 6) = 0;
        *(v13 + 6) = 0;
        goto LABEL_43;
      }

      *(v13 + 1) = a3;
      *(v13 + 6) = 0;
LABEL_16:
      *(v13 + 6) = a4;
      goto LABEL_43;
    }

    if (a6 == 2)
    {
      *(v13 + 1) = a3;
      *(v13 + 6) = v13;
      goto LABEL_16;
    }

    if (v13 + 56 - v14 >= a4)
    {
      *(v13 + 1) = v14;
      *(v13 + 6) = a4;
    }

    else
    {
      v14 = malloc_type_malloc(a4, 0x100004077774924uLL);
      *(v13 + 1) = v14;
      *(v13 + 6) = v13;
      *(v13 + 6) = a4;
      if (!v14)
      {
LABEL_41:
        free(v13);
LABEL_42:
        v13 = 0;
        goto LABEL_43;
      }
    }

    memcpy(v14, a3, a4);
  }

LABEL_43:
  v27 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t DEREncoderAddDataNoCopy(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = _EncodedDataCreate(a2, a3, a4, a5, a6, 1);

  return _DEREncoderAddEncodedData(a1, v7);
}

uint64_t DEREncoderAddUInt32(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v11 = bswap32(a4);
  v12 = 0;
  v13 = v11;
  while (!*(&v11 + v5))
  {
    if (++v5 == 4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v11 + v5) >> 7) - v5 + 4;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = _EncodedDataCreate(a2, a3, &v12 - v7 + 5, v7, 0, 3);
  result = _DEREncoderAddEncodedData(a1, v8);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DEREncoderAddUInt64(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v5 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v11 = bswap64(a4);
  v12 = 0;
  v13 = v11;
  while (!*(&v11 + v5))
  {
    if (++v5 == 8)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v11 + v5) >> 7) - v5 + 8;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = _EncodedDataCreate(a2, a3, &v12 - v7 + 9, v7, 0, 3);
  result = _DEREncoderAddEncodedData(a1, v8);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DEREncoderAddInt32AsData(uint64_t *a1, unsigned int a2, unsigned int a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = a4;
  v5 = _EncodedDataCreate(a2, a3, &v8, 4u, 0, 3);
  result = _DEREncoderAddEncodedData(a1, v5);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DEREncoderAddInt64AsData(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = a4;
  v5 = _EncodedDataCreate(a2, a3, v8, 8u, 0, 3);
  result = _DEREncoderAddEncodedData(a1, v5);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DEREncoderAddIA5String(uint64_t *a1, const void *a2, unsigned int a3)
{
  v4 = _EncodedDataCreate(0, 0x16u, a2, a3, 0, 3);

  return _DEREncoderAddEncodedData(a1, v4);
}

uint64_t DEREncoderAddBoolean(uint64_t *a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = -1;
  v7 = 0;
  if (a2)
  {
    v3 = &v8;
  }

  else
  {
    v3 = &v7;
  }

  v4 = _EncodedDataCreate(0, 1u, v3, 1u, 0, 3);
  result = _DEREncoderAddEncodedData(a1, v4);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DEREncoderCreateEncodedBuffer(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t DEREncoderAddDataFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a1 && a2)
  {
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, a3, a4, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t _DEREncoderAddDataFromEncoderByEncoding(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v13 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v13, &v14);
  if (!v9)
  {
    v9 = 2;
    v10 = _EncodedDataCreate(a3, a4, v13, v14, a5, 2);
    if (v10)
    {
      v13 = 0;
      v9 = _DEREncoderAddEncodedData(a2, v10);
    }
  }

  if (v13)
  {
    free(v13);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t DEREncoderAddDataFromEncoderNoCopy(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a2 + 12))
    {

      return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, a3, a4, a5);
    }

    else
    {
      v8 = _EncodedDataCreate(a3, a4, 0, *(a1 + 8), 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v21 = 0;
        v11 = &v21;
        while (v10)
        {
          v12 = malloc_type_malloc(0x38uLL, 0x1070040322F9897uLL);
          if (!v12)
          {
            v17 = v21;
            if (v21)
            {
              do
              {
                v18 = *v17;
                _EncodedDataRelease(v17);
                v17 = v18;
              }

              while (v18);
            }

            *v9 = 0;
            goto LABEL_22;
          }

          v13 = v10[6];
          v15 = *(v10 + 1);
          v14 = *(v10 + 2);
          *v12 = *v10;
          v12[1] = v15;
          *(v12 + 6) = v13;
          v12[2] = v14;
          *v12 = 0;
          *(v12 + 4) = 1;
          v16 = v10[1];
          if (v10 + 28 > v16 || v16 >= (v10 + 7))
          {
            if (v13)
            {
              ++*(v13 + 16);
            }
          }

          else
          {
            *(v12 + 1) = v12 + v16 - v10;
          }

          *v11 = v12;
          v10 = *v10;
          v11 = v12;
        }

        v19 = v21;
        *v9 = v21;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (*a1)
        {
          do
          {
            v20 = *v9;
            _EncodedDataRelease(v9);
            v9 = v20;
          }

          while (v20);
          return 2;
        }

LABEL_26:

        return _DEREncoderAddEncodedData(a2, v9);
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t DEREncoderAddSequenceFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, 0, 0x10u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddSetFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return _DEREncoderAddDataFromEncoderByEncoding(a1, a2, 0, 0x11u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddPrivateFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  v7 = v6;
  if (!v6)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  *(v6 + 3) = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = _DEREncoderAddDataFromEncoderByEncoding(a1, v6, 0, 0x10u, 1);
  if (!v8)
  {
    if (a2)
    {
      v8 = _DEREncoderAddDataFromEncoderByEncoding(v7, a2, 3u, a3, 1);
      goto LABEL_8;
    }

LABEL_7:
    v8 = 1;
  }

LABEL_8:
  DEREncoderDestroy(v7);
  return v8;
}

void _EncodedDataRelease(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          _EncodedDataRelease(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x29EDCA608];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x29EDCA608];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1 || a4 != 20 || !a3)
  {
    result = 6;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    result = 1;
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  if (*a1 == 1)
  {
    result = 0;
    v7 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v7;
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v9);
    result = 0;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

uint64_t Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a1 || a4 != 20 || !a3)
  {
    result = 6;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
    result = 1;
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    goto LABEL_12;
  }

  if (*(a1 + 1) == 1)
  {
    result = 0;
    v7 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v7;
  }

  else
  {
    v9 = *(a1 + 32);
    a2();
    result = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger64(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
      *a5 = v8;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t _Img4DecodeValidateManifestPropertyInterposer(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

void OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _Img4DecodePayloadPropertyExistsWithValue(a1, a2, 2uLL, &a9, 0);
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, ...)
{
  va_start(va, a1);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_6_0(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void _Img4DecodePayloadPropertyExistsWithValue(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, BOOL *a5)
{
  v20[8] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    bzero(v19, 0xA0uLL);
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v19, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v19))
      {
        if (v20[0])
        {
          DERImg4DecodeContentFindItemWithTag(v20, 0x2000000000000010, &v18);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v18, 0x2000000000000011, &v17);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v17, a2, &v16);
                if (v14)
                {
                  goto LABEL_12;
                }

                *a5 = v16 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v17, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v15 = *MEMORY[0x29EDCA608];
}

void Img4DecodeEvaluateCertificatePropertiesInternal(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t _Img4DecodePerformTrustEvaluationWithCallbacksInternal(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v21 = 0;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  v14 = *(a2 + 32);
  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v15 = *(a3 + 8);
  if (v15 && (v16 = v15(a2, a6)) != 0 && !memcmp((a2 + 328), v16, **(a4 + 32)))
  {
    v17 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v21, &v22, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v21, v22, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v17 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v18 = *(a3 + 16);
    v19 = (a2 + 40);
    v20 = a1 | 0xE000000000000000;
    if (v18)
    {
      result = v18(v19, v20, 0x2000000000000011, v23, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v19, v20, 0x2000000000000011uLL, v23);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v23[1] + 8);
  }

  if (v17)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v24[4] = *MEMORY[0x29EDCA608];
  if (a5 != 4096 && a5 != 3072)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  v24[2] = 0;
  v24[3] = 0;
  v8 = (a5 + 63) >> 6;
  MEMORY[0x2A1C7C4A8]();
  v10 = (v23 - v9);
  bzero(v23 - v9, v9);
  *v10 = v8;
  v11 = *(a1 + 8);
  v24[0] = *a1;
  v24[1] = v11;
  memset(v23, 0, sizeof(v23));
  if (DERParseSequenceToObject(v24, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v23, 0x20uLL, 0x20uLL) || ccrsa_pub_init(v10, *(&v23[0] + 1), *&v23[0]))
  {
    goto LABEL_9;
  }

  if (MEMORY[0x29EDCA4E8] && MEMORY[0x2A1C7C4C8])
  {
    v13 = *a3;
    v12 = a3[1];
    v15 = *a4;
    v14 = a4[1];
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
LABEL_9:
      result = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  LOBYTE(v23[0]) = 0;
  v18 = *a3;
  v17 = a3[1];
  v20 = *a4;
  v19 = a4[1];
  v21 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v21 && (v23[0] & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = 0;
  result = 6;
  if (!a1)
  {
    goto LABEL_26;
  }

  if (!a2)
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  if (!a5)
  {
    goto LABEL_26;
  }

  if (!a6)
  {
    goto LABEL_26;
  }

  if (!a7)
  {
    goto LABEL_26;
  }

  v9 = *(a7 + 32);
  if (!v9)
  {
    goto LABEL_26;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = *v10;
  if (!*v10)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  result = 0xFFFFFFFFLL;
  if (a2 != 516 || *v11 != a6)
  {
    goto LABEL_26;
  }

  if (a1 < 0xFFFFFFFFFFFFFE00)
  {
    MEMORY[0x2A1C7C4A8](0xFFFFFFFFLL);
    bzero(&v16, 0x638uLL);
    v15 = 64;
    result = ccrsa_pub_init(&v15, 0x200uLL, a1);
    if (!result)
    {
      if (!MEMORY[0x29EDCA4E8] || !MEMORY[0x2A1C7C4C8])
      {
        v17 = 0;
        v13 = v11[4];
        LODWORD(result) = ccrsa_verify_pkcs1v15();
        if (result || (v17 & 1) == 0)
        {
          if (result)
          {
            result = result;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }

          goto LABEL_26;
        }

        goto LABEL_22;
      }

      v12 = v11[4];
      result = ccrsa_verify_pkcs1v15_digest();
      if (!result)
      {
        if (cc_cmp_safe())
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_26;
        }

LABEL_22:
        result = 0;
      }
    }

LABEL_26:
    v14 = *MEMORY[0x29EDCA608];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t ccrsa_pub_init(uint64_t result, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 <= *result)
    {
      *result = v5;
      return ccrsa_make_pub();
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
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
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v12[2] = v7;
                    v12[3] = v8;
                    v12[0] = a1;
                    v12[1] = a2;
                    v11[0] = a3;
                    v11[1] = a4;
                    v10[0] = a5;
                    v10[1] = a6;
                    verify_ecdsa_sig(v12, v10, v11);
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

void verify_ecdsa_sig(void *a1, uint64_t *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v22[7] = 0;
  v6 = a1[1];
  ccec_x963_import_pub_size();
  if (!ccec_keysize_is_supported())
  {
    goto LABEL_9;
  }

  cp = ccec_get_cp();
  v8 = *cp;
  if (*cp >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    __break(0x550Cu);
    goto LABEL_12;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || (v10 = __CFADD__(v11, 16), v12 = v11 + 16, v10))
  {
LABEL_12:
    __break(0x5500u);
  }

  v13 = cp;
  v14 = v12 - 1;
  MEMORY[0x2A1C7C4A8]();
  v16 = &v22[-v15];
  bzero(&v22[-v15], v15);
  if (v14 >= 0x10)
  {
    *v16 = v13;
    if (!MEMORY[0x29C28A450](v13, a1[1], *a1, v16))
    {
      v18 = *a2;
      v17 = a2[1];
      v20 = *a3;
      v19 = a3[1];
      ccec_verify();
    }

LABEL_9:
    v21 = *MEMORY[0x29EDCA608];
    return;
  }

  __break(1u);
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!_crack_chain_with_anchor(v29, v30, 3u) && !parse_chain(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&verify_chain_img4_v1_sboot_item, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = parse_extensions(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_signatures(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = 0;
  v10 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v12, 0x20uLL, 0x20uLL))
  {
    goto LABEL_22;
  }

  if (!*(&v13 + 1) || (result = DEROidCompare(&v12, &oidEcPubKey), (result & 1) != 0))
  {
LABEL_16:
    if (DEROidCompare(&v12, *(a3 + 40)) && !(*a3)(*a2, a2[1], v14, **(a3 + 32), a3) && !DERParseBitString((a2 + 4), &v9, &v11) && !v11)
    {
      result = (*(a3 + 16))(*a1, a1[1], v9, v10, v14, **(a3 + 32), a3, 0);
      if (!result)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  if (*(&v13 + 1) != 2 || *v13 != 5)
  {
LABEL_22:
    result = 0xFFFFFFFFLL;
LABEL_21:
    v8 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v13 != -1)
  {
    if (!*(v13 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_v2_with_crack_callback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = parse_chain(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = verify_chain_signatures(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t crack_chain_rsa4k_sha384_x86(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_avp(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa3k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_AWG1(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_PED(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !parse_ec_chain(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = 0;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_ec_chain(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = parse_extensions(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_ec_v2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = parse_ec_chain(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = verify_chain_signatures(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t crack_chain_ecdsa256_sha256(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_qa(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _crack_chain_with_anchor(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t parse_extensions(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}