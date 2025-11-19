uint64_t MISAppApprovalState(const __CFString *a1, const __CFDictionary *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = 1;
  v27 = 0;
  if (sub_1B9D97C44(a2, @"HonorBlocklist", &v28))
  {
    v4 = sub_1B9D98960();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v4, OS_LOG_TYPE_ERROR, "MISAppAprovalState failed to check kMISValidationOptionHonorBlocklist option.", buf, 2u);
    }

    v28 = 1;
  }

  v26 = sub_1B9D97C44(a2, @"ReportIndeterminateSoon", &v27);
  if (v26)
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "MISAppAprovalState failed to check kMISAppApprovalStateReportIndeterminateSoon option.", buf, 2u);
    }

    v27 = 0;
  }

  v6 = sub_1B9D97D10(a1, a2, &v26);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B9D981AC(v6);
    v9 = v8;
    if (!v8)
    {
      v13 = 1;
LABEL_33:
      CFRelease(v7);
      goto LABEL_34;
    }

    v10 = sub_1B9D98218(v8);
    if (!v10)
    {
      v11 = sub_1B9D98960();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v30 = v26;
        _os_log_impl(&dword_1B9D96000, v11, OS_LOG_TYPE_DEFAULT, "Could not extract cdhash: 0x%x", buf, 8u);
      }

      v13 = 1;
      goto LABEL_32;
    }

    v11 = v10;
    v12 = objc_opt_new();
    v13 = sub_1B9D98258(v11, v28);
    if (v13)
    {
      goto LABEL_13;
    }

    v15 = sub_1B9D98A70(v9, &v26);
    if (!v15)
    {
      v22 = sub_1B9D98960();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v30 = v26;
        _os_log_impl(&dword_1B9D96000, v22, OS_LOG_TYPE_DEFAULT, "Could not extract signer: 0x%x", buf, 8u);
      }

      v13 = 1;
LABEL_13:
      v14 = v11;
LABEL_31:
      CFRelease(v14);

LABEL_32:
      goto LABEL_33;
    }

    v16 = v15;
    v17 = sub_1B9D98B60(v9, &v26);
    if (v26)
    {
      v18 = sub_1B9D98960();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

LABEL_27:
        v13 = 1;
LABEL_28:
        if (v17)
        {
          CFRelease(v17);
        }

        CFRelease(v11);
        v14 = v16;
        goto LABEL_31;
      }

      *buf = 67109120;
      v30 = v26;
      v19 = "Could not extract signing time: 0x%x";
LABEL_25:
      _os_log_impl(&dword_1B9D96000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 8u);
      goto LABEL_26;
    }

    v23 = sub_1B9D98BF4(v16, v17, &v26);
    if (v23 == 2)
    {
      if (objc_msgSend_existsIndeterminatesWithProfileUUID_withCDHash_(v12, v24, 0, v11))
      {
        goto LABEL_27;
      }

      if (v27)
      {
        if (objc_msgSend_existsIndeterminatesSoonWithProfileUUID_withCDHash_(v12, v25, 0, v11))
        {
          v13 = 5;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_28;
      }
    }

    else if (!v23)
    {
      v18 = sub_1B9D98960();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 67109120;
      v30 = v26;
      v19 = "Could not validate certificate: 0x%x";
      goto LABEL_25;
    }

    v13 = 0;
    goto LABEL_28;
  }

  v9 = sub_1B9D98960();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = v26;
    _os_log_impl(&dword_1B9D96000, v9, OS_LOG_TYPE_DEFAULT, "Could not copy signature: 0x%x", buf, 8u);
  }

  v13 = 1;
LABEL_34:

  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

const __CFDictionary *sub_1B9D97C44(const __CFDictionary *a1, const void *a2, Boolean *a3)
{
  BOOLean = 0;
  TypeID = CFBooleanGetTypeID();
  v7 = sub_1B9D97CB4(a1, a2, TypeID, &BOOLean);
  if (!v7 && BOOLean)
  {
    *a3 = CFBooleanGetValue(BOOLean);
  }

  return v7;
}

const __CFDictionary *sub_1B9D97CB4(const __CFDictionary *result, const void *a2, uint64_t a3, const __CFDictionary **a4)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v6 = result;
      if (CFGetTypeID(result) == a3)
      {
        result = 0;
        *a4 = v6;
      }

      else
      {
        return 49174;
      }
    }
  }

  return result;
}

CFTypeRef sub_1B9D97D10(CFStringRef filePath, uint64_t a2, int *a3)
{
  v4 = a2;
  v21 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v17 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  TypeID = CFNumberGetTypeID();
  Value = CFDictionaryGetValue(v4, @"UniversalFileOffset");
  if (Value)
  {
    v8 = Value;
    if (CFGetTypeID(Value) != TypeID)
    {
      v17 = 49174;
      v12 = sub_1B9D98960();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 67109120;
      LODWORD(v20) = 49174;
      v13 = "error processing kMISValidationOptionUniversalFileOffset (invalid type?), error 0x%x";
      goto LABEL_15;
    }

    CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr);
    if (valuePtr < 0)
    {
      v17 = 49174;
      v12 = sub_1B9D98960();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      v20 = valuePtr;
      v13 = "invalid kMISValidationOptionUniversalFileOffset %lld";
      v14 = v12;
      v15 = 12;
      goto LABEL_16;
    }
  }

  v9 = CFDataGetTypeID();
  v10 = CFDictionaryGetValue(v4, @"DetachedSignature");
  v4 = v10;
  if (v10 && CFGetTypeID(v10) != v9)
  {
    v17 = 49174;
    v12 = sub_1B9D98960();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 67109120;
    LODWORD(v20) = 49174;
    v13 = "error processing kMISValidationOptionDetachedSignature (invalid type?), error 0x%x";
LABEL_15:
    v14 = v12;
    v15 = 8;
LABEL_16:
    _os_log_error_impl(&dword_1B9D96000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_18;
  }

  v17 = 0;
  a2 = valuePtr;
LABEL_8:
  result = sub_1B9D97F74(filePath, a2, v4, &v17);
  if (result)
  {
    goto LABEL_19;
  }

  v12 = sub_1B9D98960();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v20) = v17;
    _os_log_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_DEFAULT, "Could not copy code signature (error 0x%x).", buf, 8u);
  }

LABEL_18:

  result = 0;
LABEL_19:
  if (a3)
  {
    *a3 = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B9D97F74(CFStringRef filePath, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  valuePtr = a2;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
    LODWORD(v11) = -402620406;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (a2)
  {
    values[0] = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
    v10 = CFDictionaryCreate(v7, MEMORY[0x1E697B030], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values[0]);
    v11 = SecStaticCodeCreateWithPathAndAttributes(v9, 0, v10, &cf);
    if (v10)
    {
      CFRelease(v10);
    }

    if (!v11)
    {
LABEL_6:
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = SecStaticCodeCreateWithPathAndAttributes(v8, 0, 0, &cf);
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v12 = sub_1B9D98960();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(values[0]) = 67109120;
    HIDWORD(values[0]) = v11;
    _os_log_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_DEFAULT, "Failure creating static code: %d", values, 8u);
  }

  LODWORD(v11) = sub_1B9DCB79C(v11);
  if (a3)
  {
LABEL_14:
    v13 = SecCodeSetDetachedSignature();
    if (v13)
    {
      v14 = v13;
      LODWORD(v11) = sub_1B9DCB79C(v13);
      if (cf)
      {
        v15 = sub_1B9D98960();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(values[0]) = 67109120;
          HIDWORD(values[0]) = v14;
          _os_log_impl(&dword_1B9D96000, v15, OS_LOG_TYPE_DEFAULT, "Failure setting detached signature: %d", values, 8u);
        }

        CFRelease(cf);
        cf = 0;
      }
    }
  }

LABEL_19:
  CFRelease(v9);
  if (a4)
  {
LABEL_20:
    *a4 = v11;
  }

LABEL_21:
  result = cf;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef sub_1B9D981AC(const __SecCode *a1)
{
  information = 0;
  v2 = objc_autoreleasePoolPush();
  LODWORD(a1) = SecCodeCopySigningInformation(a1, 0x23u, &information);
  objc_autoreleasePoolPop(v2);
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = information;
  }

  return v3;
}

const void *sub_1B9D98218(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B098]);
  v2 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v2;
}

uint64_t sub_1B9D98258(const __CFData *a1, int a2)
{
  if (a2 && (MISQueryBlacklistForCdHash(a1, 0x1A, 1, 0) & 1) != 0)
  {
    return 4;
  }

  v4 = objc_opt_new();
  if (objc_msgSend_isCDHashBanned_(v4, v5, a1))
  {
    v6 = sub_1B9D98960();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B9D96000, v6, OS_LOG_TYPE_DEFAULT, "CDHash is banned", v8, 2u);
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MISQueryBlacklistForCdHash(const __CFData *a1, const char *a2, int a3, _DWORD *a4)
{
  v4 = a2;
  v62 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", a2, @"denylist.map");
  Length = CFStringGetLength(v6);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v9 = MEMORY[0x1BFAE6D90](0, MaximumSizeForEncoding + 1, 1753344584, 0);
  v58 = v6;
  if (!v9)
  {
    v15 = sub_1B9D98960();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v16 = "Could not allocate buffer for denylist path (this should not happen.";
LABEL_13:
    v17 = v15;
    v18 = 2;
    goto LABEL_14;
  }

  if (!CFStringGetCString(v6, v9, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    v15 = sub_1B9D98960();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v16 = "Denylist path conversion failed (this should not happen.)";
    goto LABEL_13;
  }

  v10 = open(v9, 0);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    v12 = lseek(v10, 0, 2);
    if (v12 <= 23)
    {
      v13 = sub_1B9D98960();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = 24;
        _os_log_error_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_ERROR, "Denylist is too short (%lld bytes) for header (%lu bytes)", buf, 0x16u);
      }

      if (v12 < 1)
      {
        goto LABEL_37;
      }

      v14 = 0;
      goto LABEL_35;
    }

    v22 = mmap(0, v12, 1, 2, v11, 0);
    if (v22 == -1)
    {
      v30 = sub_1B9D98960();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v54 = *__error();
        *buf = 67109120;
        *&buf[4] = v54;
        _os_log_error_impl(&dword_1B9D96000, v30, OS_LOG_TYPE_ERROR, "Could not map denylist, error %{errno}d", buf, 8u);
      }

      v14 = -1;
      goto LABEL_35;
    }

    v14 = v22;
    if (*v22 == 1134124660)
    {
      v23 = v22[2];
      if (v12 >= v23)
      {
        v33 = v4;
        v34 = v12;
        v35 = v22 + v12;
        v36 = v22 + v23;
        v37 = v22[3];
        v38 = &v36[32 * v37];
        v39 = &v38[4 * v37];
        v40 = v39 - v35;
        if (v39 <= v35)
        {
LABEL_42:
          CFAllocatorDeallocate(0, v9);
          v44 = v38;
          v45 = v36;
          goto LABEL_43;
        }

        v41 = sub_1B9D98960();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_1B9D96000, v41, OS_LOG_TYPE_ERROR, "Denylist is %td bytes short for entry count", buf, 0xCu);
        }

        v4 = v33;
        v12 = v34;
        goto LABEL_35;
      }

      v24 = sub_1B9D98960();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        if ((v14 + 1) >= 2)
        {
          munmap(v14, v12);
        }

LABEL_37:
        close(v11);
        goto LABEL_38;
      }

      v25 = *(v14 + 8);
      *buf = 67109376;
      *&buf[4] = v25;
      *&buf[8] = 2048;
      *&buf[10] = v12;
      v26 = "Denylist entries offset %u is past denylist size %lld";
      v27 = v24;
      v28 = 18;
    }

    else
    {
      v31 = sub_1B9D98960();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v32 = *v14;
      *buf = 67109120;
      *&buf[4] = v32;
      v26 = "Wrong denylist magic (0x08%x)";
      v27 = v31;
      v28 = 8;
    }

    _os_log_error_impl(&dword_1B9D96000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    goto LABEL_35;
  }

  v19 = *__error();
  v20 = sub_1B9D98960();
  v21 = v20;
  if (v19 != 2)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v29 = *__error();
    *buf = 67109120;
    *&buf[4] = v29;
    v16 = "Could not open denylist, error %{errno}d";
    v17 = v21;
    v18 = 8;
LABEL_14:
    _os_log_error_impl(&dword_1B9D96000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_38;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_DEBUG, "Denylist does not exist.", buf, 2u);
  }

LABEL_38:
  v42 = sub_1B9D98960();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1B9D96000, v42, OS_LOG_TYPE_DEBUG, "Using empty denylist.", buf, 2u);
  }

  v33 = v4;
  v43 = mmap(0, 0x18uLL, 3, 4098, -1, 0);
  if (v43 == -1)
  {
    v55 = sub_1B9D98960();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v55, OS_LOG_TYPE_ERROR, "Failed to mmap fallback denylist header. Giving up.", buf, 2u);
    }

    abort();
  }

  v14 = v43;
  v43[2] = 0;
  *v43 = xmmword_1B9DDBBD8;
  v34 = 24;
  mprotect(v43, 0x18uLL, 1);
  v38 = 0;
  v36 = 0;
  v44 = 0;
  v45 = 0;
  v11 = -1;
  if (v9)
  {
    goto LABEL_42;
  }

LABEL_43:
  memset(buf, 0, sizeof(buf));
  v60 = 0;
  v61 = v33;
  v46 = CFDataGetLength(a1);
  if (v46 >= 28)
  {
    v47.length = 28;
  }

  else
  {
    v47.length = v46;
  }

  v47.location = 0;
  CFDataGetBytes(a1, v47, buf);
  v48 = bsearch_b(buf, v45, *(v14 + 12), 0x20uLL, &unk_1F37D91D8);
  if (v48)
  {
    v49 = v58;
    if (!v44 || (v50 = v48, a3) && MISBlacklistOverriddenByUser(a1, v33))
    {
      v51 = 0;
    }

    else
    {
      if (a4)
      {
        *a4 = *&v44[(v50 - v45) >> 3];
      }

      v51 = 1;
    }
  }

  else
  {
    v51 = 0;
    v49 = v58;
  }

  if ((v14 + 1) >= 2)
  {
    munmap(v14, v34);
    if (v11 < 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if ((v11 & 0x80000000) == 0)
  {
LABEL_57:
    close(v11);
  }

LABEL_58:

  v52 = *MEMORY[0x1E69E9840];
  return v51;
}

id sub_1B9D98960()
{
  if (qword_1EDCF09D0 != -1)
  {
    dispatch_once(&qword_1EDCF09D0, &unk_1F37DA508);
  }

  if (qword_1EDCF09D8)
  {
    v1 = qword_1EDCF09D8;
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  return v1;
}

__CFString *sub_1B9D989C4(const __CFData *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v2 = *MEMORY[0x1E695E480];
  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(v2, 2 * Length);
  BytePtr = CFDataGetBytePtr(a1);
  v6 = CFDataGetLength(a1);
  if (v6 >= 1)
  {
    v7 = v6;
    do
    {
      v8 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v8);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

const __CFArray *sub_1B9D98A70(void *a1, int *a2)
{
  v3 = -402620415;
  v4 = a1;
  if (CFDictionaryContainsKey(v4, *MEMORY[0x1E697B070]) != 1)
  {
    Copy = 0;
    v3 = -402620388;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v4, *MEMORY[0x1E697B040]);
  Copy = Value;
  if (!Value)
  {
    v3 = -402620396;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = CFGetTypeID(Value);
  if (v7 == CFArrayGetTypeID() && CFArrayGetCount(Copy) >= 1)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], Copy);
    v3 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Copy = 0;
  if (a2)
  {
LABEL_10:
    *a2 = v3;
  }

LABEL_11:

  return Copy;
}

const void *sub_1B9D98B60(void *a1, int *a2)
{
  v3 = a1;
  if (CFDictionaryContainsKey(v3, *MEMORY[0x1E697B070]) != 1)
  {
    v5 = 0;
    v6 = -402620388;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a2 = v6;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v3, *MEMORY[0x1E697B088]);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6 = 0;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

uint64_t sub_1B9D98BF4(const __CFArray *a1, uint64_t a2, int *a3)
{
  if (qword_1EBBE4098 != -1)
  {
    dispatch_once(&qword_1EBBE4098, &unk_1F37DA548);
  }

  v6 = qword_1EBBE4090;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B9DCFFD8;
  aBlock[3] = &unk_1E7ED8908;
  aBlock[4] = a1;
  aBlock[5] = a2;
  v8 = _Block_copy(aBlock);
  if (!ValueAtIndex)
  {
    v19 = sub_1B9D98960();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_ERROR, "There is no leaf cert (this should not happen).", v31, 2u);
    }

    v18 = 0;
    v9 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v9 = SecCertificateCopyData(ValueAtIndex);
  v11 = sub_1B9D98EE4(v9);
  if (!v11 || !v6)
  {
    v20 = sub_1B9D98960();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1B9D96000, v20, OS_LOG_TYPE_ERROR, "Failure creating profile cache key. This shouldn't happen.", v31, 2u);
    }

    v18 = 0;
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v12 = objc_msgSend_objectForKey_(v6, v10, v11);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_intValue(v12, v13, v14);
    if (v16)
    {
      v17 = 0;
      v18 = v16;
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v22 = sub_1B9D98960();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1B9D96000, v22, OS_LOG_TYPE_ERROR, "Found in cert cache, but cert type is CertTypeError (this should not happen).", v31, 2u);
    }
  }

  v23 = SecPolicyCreateiPhoneApplicationSigning();
  if (!v8[2](v8, v23))
  {
    v18 = 1;
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, 1);
    goto LABEL_30;
  }

  v25 = SecPolicyCreateiPhoneVPNApplicationSigning();
  if (!v8[2](v8, v25))
  {
    v18 = 3;
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v26, 3);
    goto LABEL_30;
  }

  v27 = SecPolicyCreateiPhoneProfileApplicationSigning();
  if (!v8[2](v8, v27))
  {
    v18 = 2;
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v28, 2);
    v29 = LABEL_30:;
    objc_msgSend_setObject_forKey_(v6, v30, v29, v11);

    v17 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = 0;
LABEL_17:
  v17 = -402620392;
  if (a3)
  {
LABEL_18:
    *a3 = v17;
  }

LABEL_19:

  return v18;
}

CFDataRef sub_1B9D98EE4(const __CFData *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  CC_SHA256_Init(&v6);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  CC_SHA256_Update(&v6, BytePtr, Length);
  CC_SHA256_Final(md, &v6);
  result = CFDataCreate(*MEMORY[0x1E695E480], md, 32);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MISEnumerateInstalledProvisioningProfiles(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -402620415;
  v4 = sub_1B9D99240();
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "MessageType", "CopyAll");
  v6 = xpc_connection_send_message_with_reply_sync(v4, v5);
  if (MEMORY[0x1BFAE82F0]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v6, "Status");
    *(v21 + 6) = uint64;
    if (uint64)
    {
      goto LABEL_10;
    }
  }

  else if (MEMORY[0x1BFAE82F0](v6) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28]);
    v8 = sub_1B9D98960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = string;
      _os_log_error_impl(&dword_1B9D96000, v8, OS_LOG_TYPE_ERROR, "error getting installed profiles: %{public}s\n", buf, 0xCu);
    }

    v9 = v21;
    goto LABEL_9;
  }

  v11 = xpc_dictionary_get_value(v6, "Payload");
  v9 = v21;
  if (!v11)
  {
LABEL_9:
    *(v9 + 6) = -402620403;
    uint64 = 3892346893;
    goto LABEL_10;
  }

  *(v21 + 6) = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B9DCA0C4;
  v15[3] = &unk_1E7ED8740;
  v12 = v4;
  v16 = v12;
  v18 = &v20;
  v19 = a1;
  v17 = v3;
  xpc_array_apply(v11, v15);
  xpc_connection_cancel(v12);
  uint64 = *(v21 + 6);

LABEL_10:
  _Block_object_dispose(&v20, 8);

  v13 = *MEMORY[0x1E69E9840];
  return uint64;
}

void sub_1B9D9921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_xpc_connection_s *sub_1B9D99240()
{
  mach_service = xpc_connection_create_mach_service("com.apple.misagent", 0, 0);
  xpc_connection_set_event_handler(mach_service, &unk_1F37DA4E8);
  xpc_connection_resume(mach_service);

  return mach_service;
}

void sub_1B9D9929C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2 != MEMORY[0x1E69E9E20])
  {
    if (MEMORY[0x1BFAE82F0](v2) == MEMORY[0x1E69E9E98])
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
      v7 = sub_1B9D98960();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136446210;
        v10 = string;
        _os_log_impl(&dword_1B9D96000, v7, OS_LOG_TYPE_DEFAULT, "misagent connection error: %{public}s\n", &v9, 0xCu);
      }
    }

    else
    {
      v4 = MEMORY[0x1BFAE8200](v3);
      v5 = sub_1B9D98960();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136446210;
        v10 = v4;
        _os_log_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_DEFAULT, "received unhandled event from misagent: %{public}s\n", &v9, 0xCu);
      }

      free(v4);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B9D993F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99430()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D994C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99500()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99548()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D995A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D995D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D99618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B9DD2888();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B9D996E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B9DD2888();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B9D997A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D997D8()
{
  if (v0[3])
  {

    sub_1B9D9D534(v0[4], v0[5]);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9D9981C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D9985C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B9DD2878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1B9D99988(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B9DD2878();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1B9D99AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchWarningDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B9D99B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LaunchWarningDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B9D99C44()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99C84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99CDC()
{
  sub_1B9D9D534(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9D99D14()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9D99D6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D99DAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1B9D99E18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99E50()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D99E90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9D99EA0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9D99EE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9D99FB8()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000019, 0x80000001B9DDCAE0, 0, 0, sub_1B9D9BB1C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9A0A0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000025, 0x80000001B9DDCB00, 0, 0, sub_1B9D9BB1C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9A188(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  *(v5 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  swift_bridgeObjectRetain_n();

  sub_1B9DB3518(0xD00000000000002CLL, 0x80000001B9DDCB30, sub_1B9D9BB18, v7, sub_1B9D9A308, v8);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  return v6;
}

uint64_t sub_1B9D9A308(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = (*(*a1 + 192))(0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    swift_beginAccess();
    v9 = *(v3 + 24);
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
  }

  else
  {
    sub_1B9DD2B88();

    MEMORY[0x1BFAE6A10](v2, v4);
    sub_1B9D9B8E4();
    swift_allocError();
    *v11 = 0xD000000000000023;
    *(v11 + 8) = 0x80000001B9DDCFA0;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B9D9A510(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000002CLL, 0x80000001B9DDCB60, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9A650(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000030, 0x80000001B9DDCB90, sub_1B9D9BB18, v7, sub_1B9D9A780, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9A798(void *a1, uint64_t a2, uint64_t a3)
{
  v24[7] = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B9DB3518(0xD00000000000002CLL, 0x80000001B9DDCF40, sub_1B9D9BB18, v8, sub_1B9D9B938, v7);
  if (v3)
  {
  }

  else
  {

    swift_beginAccess();
    v11 = *(v7 + 24);
    if (v11)
    {
      v23 = *(v7 + 16);
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *(v12 + 24) = a3;

      sub_1B9DB3518(0xD000000000000027, 0x80000001B9DDCF70, sub_1B9D9BB18, v12, 0, 0);

      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = v23;
      *(v15 + 24) = v11;

      sub_1B9DB3518(0xD000000000000030, 0x80000001B9DDCB90, sub_1B9D9BB18, v15, sub_1B9D9BB34, v14);

      swift_beginAccess();
      v16 = *(v14 + 16);

      if (v16)
      {

        goto LABEL_3;
      }

      v17 = sub_1B9DD2968();
      v24[0] = 0;
      v18 = [a1 deleteTrustedWithTeamID:v17 error:v24];

      v19 = v24[0];
      if (v18)
      {
        v20 = swift_allocObject();
        *(v20 + 16) = v23;
        *(v20 + 24) = v11;
        v21 = v19;
        sub_1B9DB3518(0xD00000000000002BLL, 0x80000001B9DDCBD0, sub_1B9D9BB18, v20, 0, 0);

        goto LABEL_3;
      }

      v22 = v24[0];

      sub_1B9DD2698();
    }

    else
    {
      sub_1B9D9B9C4();
      swift_allocError();
      *v13 = xmmword_1B9DD4FE0;
      *(v13 + 16) = xmmword_1B9DD4FF0;
      *(v13 + 32) = 1;
    }

    swift_willThrow();
  }

LABEL_3:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9D9ACBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9D9ACFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000041, 0x80000001B9DDCC00, sub_1B9D9BB18, v7, sub_1B9D9AE2C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9D9AE2C()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_1B9D9AE74(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000037, 0x80000001B9DDCC50, sub_1B9D9BB18, v7, sub_1B9D9BAE8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9D9AFA4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000038, 0x80000001B9DDCC90, 0, 0, sub_1B9D9BB1C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9B08C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD0000000000000A2, 0x80000001B9DDCCD0, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B1CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000009CLL, 0x80000001B9DDCD80, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B30C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000008FLL, 0x80000001B9DDCE20, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B44C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000089, 0x80000001B9DDCEB0, sub_1B9D9B58C, v7, sub_1B9D9B590, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B5A8(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    swift_beginAccess();
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1B9D9B78C(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1B9D9B78C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v6;
    *(v2 + 16) = v7;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1B9D9B6CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B9D9B6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B9D9B728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_1B9D9B78C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9D9B898(&qword_1EBBE3198, "Bm");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B9D9B898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B9D9B8E4()
{
  result = qword_1EBBE31A0;
  if (!qword_1EBBE31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31A0);
  }

  return result;
}

uint64_t sub_1B9D9B938(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 192))(0);
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 24);
  *(v2 + 16) = v3;
  *(v2 + 24) = v5;
}

unint64_t sub_1B9D9B9C4()
{
  result = qword_1EBBE31A8;
  if (!qword_1EBBE31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31A8);
  }

  return result;
}

uint64_t sub_1B9D9BA18(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 160))(0);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_1B9D9BB4C(void *a1)
{
  v3 = [a1 teamID];
  v4 = sub_1B9DD2998();
  v6 = v5;

  v7 = sub_1B9D9A650(v4, v6);
  if (v1)
  {
  }

  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v11 = a1;
    sub_1B9DB3518(0xD000000000000073, 0x80000001B9DDD540, sub_1B9D9DC40, v10, 0, 0);
  }

  else
  {
    sub_1B9D9B8E4();
    swift_allocError();
    *v12 = 0xD000000000000048;
    *(v12 + 8) = 0x80000001B9DDD5C0;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1B9D9BC98()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1B9D9BB4C(v1);
}

void sub_1B9D9BE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B9DD2968();
  v14[0] = 0;
  v8 = [a1 getTeamIDForProfileUUID:v7 error:v14];

  v9 = v14[0];
  if (v8)
  {
    if (a5 >> 60 == 15)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_1B9DD2778();
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v8 signature:v10];

    sub_1B9D9BB4C(v12);
  }

  else
  {
    v11 = v9;
    sub_1B9DD2698();

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1B9D9C0B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000042, 0x80000001B9DDCFD0, sub_1B9D9BB18, v7, sub_1B9D9C1E8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    v8 = v6;
  }

  return v6;
}

void sub_1B9D9C1E8(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  v6 = (*(*a1 + 128))(1);
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B9DD2968();

    if (v9 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B9DD2778();
      sub_1B9D9D520(v8, v9);
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v10 signature:v11];

    swift_beginAccess();
    v13 = *(v2 + 16);
    *(v2 + 16) = v12;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B9D9C330(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000092, 0x80000001B9DDD020, sub_1B9D9BB18, v7, sub_1B9D9C464, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    v8 = v6;
  }

  return v6;
}

void sub_1B9D9C464(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  v6 = (*(*a1 + 128))(1);
  v8 = v7;
  if (v5)
  {
    v9 = v6;
    v10 = sub_1B9DD2968();

    if (v8 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B9DD2778();
      sub_1B9D9D520(v9, v8);
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v10 signature:v11];

    swift_beginAccess();
    v13 = *(v2 + 16);
    *(v2 + 16) = v12;
  }

  else
  {
    sub_1B9D9D520(v6, v7);
  }
}

uint64_t sub_1B9D9C5B4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD00000000000002FLL, 0x80000001B9DDD0C0, 0, 0, sub_1B9D9C69C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9D9C69C(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  v6 = (*(*a1 + 128))(1);
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    sub_1B9D9DB7C(v6, v7);
    v10 = sub_1B9DD2968();

    if (v9 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B9DD2778();
      sub_1B9D9D520(v8, v9);
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v10 signature:v11];

    swift_beginAccess();
    v13 = v12;
    MEMORY[0x1BFAE6A70]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B9DD2A98();
    }

    sub_1B9DD2AA8();
    swift_endAccess();
    sub_1B9D9D520(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9D9C84C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000167, 0x80000001B9DDD0F0, 0, 0, sub_1B9D9C934, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9D9C934(uint64_t a1)
{
  v2 = v1;
  v4 = *(*a1 + 192);
  v4(0);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4(1);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(*a1 + 160);
  v8 = v7(2) == 1;
  v9 = v7(3) == 1;
  v10 = objc_allocWithZone(MISTeamIDEntryForUI);
  v11 = sub_1B9DD2968();

  v12 = sub_1B9DD2968();

  v13 = [v10 initWithTeamID:v11 teamName:v12 trusted:v8 hasAuxiliarySignature:v9];

  swift_beginAccess();
  v14 = v13;
  MEMORY[0x1BFAE6A70]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B9DD2A98();
  }

  sub_1B9DD2AA8();
  swift_endAccess();
}

uint64_t sub_1B9D9CB0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000047, 0x80000001B9DDD260, sub_1B9D9BB18, v7, sub_1B9D9CC3C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9D9CC3C(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v4 = v3;
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {

    v6 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = sub_1B9DD2968();
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1B9DBF144(v7, v5);

    v6 = !v8;
  }

  result = swift_beginAccess();
  *(v2 + 16) = v6;
  return result;
}

uint64_t sub_1B9D9CD28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000091, 0x80000001B9DDD2B0, 0, 0, sub_1B9D9D200, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9D9CE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9DD28D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a1 + 192);
  v37 = v9(0);
  v11 = v10;
  v12 = v9(1);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = (*(*a1 + 128))(2);
    v18 = v16;
    v19 = v17;
    if (v11)
    {
      sub_1B9D9DB7C(v16, v17);
      v20 = sub_1B9DD2968();

      if (v19 >> 60 == 15)
      {
        v21 = 0;
      }

      else
      {
        v21 = sub_1B9DD2778();
        sub_1B9D9D520(v18, v19);
      }

      v29 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v20 signature:v21];

      v30 = objc_allocWithZone(MISTrustedProfileEntry);
      v31 = v29;
      v32 = sub_1B9DD2968();

      v33 = [v30 initWithUUID:v32 trustedTeamIDEntry:v31];

      swift_beginAccess();
      v34 = v33;
      MEMORY[0x1BFAE6A70]();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = v18;
        v36 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B9DD2A98();
        v18 = v35;
      }

      sub_1B9DD2AA8();
      swift_endAccess();
      sub_1B9D9D520(v18, v19);
    }

    else
    {
      v37 = v16;
      v22 = sub_1B9DA9D3C();
      v23 = v5;
      (*(v5 + 16))(v8, v22, v4);

      v24 = sub_1B9DD28B8();
      v25 = sub_1B9DD2AC8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38 = v27;
        *v26 = 136446210;
        v28 = sub_1B9D9D588(v14, v15, &v38);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_1B9D96000, v24, v25, "Entry in trusted_team_ids exists without associated profile: %{public}s", v26, 0xCu);
        sub_1B9D9DB30(v27);
        MEMORY[0x1BFAE80B0](v27, -1, -1);
        MEMORY[0x1BFAE80B0](v26, -1, -1);

        sub_1B9D9D520(v37, v19);
      }

      else
      {
        sub_1B9D9D520(v37, v19);
      }

      (*(v23 + 8))(v8, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9D9D22C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD0000000000000EBLL, 0x80000001B9DDD350, 0, 0, sub_1B9D9B5A8, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9D520(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9D9D534(a1, a2);
  }

  return a1;
}

uint64_t sub_1B9D9D534(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B9D9D588(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B9D9D654(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B9D9DBE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1B9D9DB30(v11);
  return v7;
}

unint64_t sub_1B9D9D654(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B9D9D760(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B9DD2BA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B9D9D760(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B9D9D7AC(a1, a2);
  sub_1B9D9D8DC(&unk_1F37D95C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B9D9D7AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B9D9D9C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B9DD2BA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B9DD2A28();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B9D9D9C8(v10, 0);
        result = sub_1B9DD2B68();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B9D9D8DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B9D9DA3C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B9D9D9C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9D9B898(&qword_1EBBE31B0, "6e");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B9D9DA3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9D9B898(&qword_1EBBE31B0, "6e");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B9D9DB30(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B9D9DB7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9D9DB90(a1, a2);
  }

  return a1;
}

uint64_t sub_1B9D9DB90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B9D9DBE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B9D9DC40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = [v4 teamID];
  v6 = sub_1B9DD2998();
  v8 = v7;

  (*(*a1 + 184))(v6, v8, 1);

  v9 = [v4 signature];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B9DD2798();
    v13 = v12;

    v14 = v13;
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        sub_1B9D9D534(v11, v13);
        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      result = sub_1B9D9D534(v11, v14);
      if (!__OFSUB__(v16, v17))
      {
        if (v16 == v17)
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        sub_1B9D9D534(v11, v13);
        if (!BYTE6(v13))
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      result = sub_1B9D9D534(v11, v13);
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        if (HIDWORD(v11) != v11)
        {
          goto LABEL_12;
        }

        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }
    }

    __break(1u);
    return result;
  }

LABEL_12:
  v19 = [v4 signature];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B9DD2798();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  (*(*a1 + 120))(v21, v23, 2);

  return sub_1B9D9D520(v21, v23);
}

uint64_t sub_1B9D9DE94()
{
  v1 = *v0;
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](v1);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9D9DF08()
{
  v1 = *v0;
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](v1);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9D9DF4C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_1B9D9DF88(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_1B9D9DFE0(a1, a2);
  return v4;
}

uint64_t sub_1B9D9DFE0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v51[5] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) != a1)
      {
        goto LABEL_8;
      }

LABEL_15:
      v12 = 1;
LABEL_25:
      sub_1B9D9E728();
      swift_allocError();
      *v23 = v12;
      swift_willThrow();
      sub_1B9D9D534(a1, a2);
      type metadata accessor for LaunchWarningMark();
      swift_deallocPartialClassInstance();
LABEL_26:
      v24 = *MEMORY[0x1E69E9840];
      return v3;
    }

    goto LABEL_61;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (sub_1B9DD2768() != 1)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      LODWORD(v11) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v11 = v11;
        goto LABEL_21;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v9 = __OFSUB__(v13, v14);
  v11 = v13 - v14;
  if (v9)
  {
    __break(1u);
LABEL_20:
    v11 = BYTE6(a2);
  }

LABEL_21:
  v12 = 1;
  if (v11 != 9)
  {
    goto LABEL_25;
  }

  *(v3 + 16) = 1;
  v15 = sub_1B9D9E420(1, 8, a1, a2);
  v51[3] = MEMORY[0x1E6969080];
  v51[4] = MEMORY[0x1E6969078];
  v51[0] = v15;
  v51[1] = v16;
  v17 = sub_1B9D9E7A0(v51, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v20)
    {
      v49[0] = *v17;
      LOWORD(v49[1]) = v19;
      BYTE2(v49[1]) = BYTE2(v19);
      BYTE3(v49[1]) = BYTE3(v19);
      BYTE4(v49[1]) = BYTE4(v19);
      BYTE5(v49[1]) = BYTE5(v19);
      v21 = v49 + BYTE6(v19);
      v22 = v49;
      goto LABEL_46;
    }

LABEL_34:
    v31 = v18;
    v32 = v18 >> 32;
    v30 = v32 - v31;
    if (v32 >= v31)
    {
      v28 = sub_1B9DD2628();
      if (v28)
      {
        v33 = sub_1B9DD2658();
        if (__OFSUB__(v31, v33))
        {
          goto LABEL_68;
        }

        v28 += v31 - v33;
      }

      goto LABEL_38;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v20 != 2)
  {
    memset(v49, 0, 14);
    v22 = v49;
    v21 = v49;
    goto LABEL_46;
  }

  v26 = *(v18 + 16);
  v27 = *(v18 + 24);
  v28 = sub_1B9DD2628();
  if (v28)
  {
    v29 = sub_1B9DD2658();
    v18 = v26 - v29;
    if (__OFSUB__(v26, v29))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v28 += v18;
  }

  v9 = __OFSUB__(v27, v26);
  v30 = v27 - v26;
  if (v9)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  v34 = sub_1B9DD2648();
  if (v34 >= v30)
  {
    v35 = v30;
  }

  else
  {
    v35 = v34;
  }

  v36 = (v35 + v28);
  if (v28)
  {
    v21 = v36;
  }

  else
  {
    v21 = 0;
  }

  v22 = v28;
LABEL_46:
  sub_1B9D9E7E4(v22, v21, v50);
  v37 = v50[0];
  v38 = v50[1];
  sub_1B9D9DB30(v51);
  v39 = v38 >> 62;
  if ((v38 >> 62) > 1)
  {
    if (v39 != 2)
    {
      sub_1B9D9D534(a1, a2);
      *(v3 + 24) = 0;
      goto LABEL_26;
    }

    v40 = *(v37 + 16);
    v41 = sub_1B9DD2628();
    if (v41)
    {
      v42 = v41;
      v43 = sub_1B9DD2658();
      if (__OFSUB__(v40, v43))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v44 = (v40 - v43 + v42);
      sub_1B9DD2648();
      if (v44)
      {
LABEL_58:
        v48 = *v44;
        sub_1B9D9D534(a1, a2);
        sub_1B9D9D534(v37, v38);
        *(v3 + 24) = v48;
        goto LABEL_26;
      }
    }

    else
    {
      sub_1B9DD2648();
    }

    __break(1u);
    goto LABEL_71;
  }

  if (!v39)
  {
    sub_1B9D9D534(a1, a2);
    *(v3 + 24) = v37;
    goto LABEL_26;
  }

  if (v37 > v37 >> 32)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v45 = sub_1B9DD2628();
  if (!v45)
  {
LABEL_71:
    result = sub_1B9DD2648();
    __break(1u);
    goto LABEL_72;
  }

  v46 = v45;
  v47 = sub_1B9DD2658();
  if (__OFSUB__(v37, v47))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v44 = (v37 - v47 + v46);
  result = sub_1B9DD2648();
  if (v44)
  {
    goto LABEL_58;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1B9D9E420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
  }

  else if (v6 > a2)
  {
    if (a2 + 1 >= a1)
    {
      return MEMORY[0x1EEDC4510]();
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return MEMORY[0x1EEDC4510]();
}

uint64_t sub_1B9D9E48C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1B9D9E7A0(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1B9D9EA44(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1B9D9EAFC(v3, v4);
    }

    else
    {
      v6 = sub_1B9D9EB78(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1B9D9DB30(v8);
  return v6;
}

uint64_t sub_1B9D9E548()
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = xmmword_1B9DD50F0;
  v6 = *(v0 + 24);
  v1 = sub_1B9D9E48C(&v6, &v7);
  v3 = v2;
  sub_1B9DD27A8();
  sub_1B9D9D534(v1, v3);
  result = v7;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9D9E5EC()
{
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v4 = v3;
    v5 = result;
    sub_1B9DAB4F0();
    return sub_1B9D9D534(v5, v4);
  }

  return result;
}

uint64_t sub_1B9D9E680(uint64_t a1)
{
  v3 = sub_1B9DAB158();
  if (!v1)
  {
    if (v4 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v5 = v3;
      v6 = v4;
      type metadata accessor for LaunchWarningMark();
      a1 = swift_allocObject();
      sub_1B9D9DFE0(v5, v6);
    }
  }

  return a1;
}

unint64_t sub_1B9D9E728()
{
  result = qword_1EBBE31B8;
  if (!qword_1EBBE31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31B8);
  }

  return result;
}

void *sub_1B9D9E7A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_1B9D9E7E4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B9D9EA44(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B9D9EAFC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B9D9EB78(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1B9D9E87C()
{
  result = qword_1EBBE31C0;
  if (!qword_1EBBE31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningMarkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchWarningMarkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B9D9EA44(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9D9EAFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B9DD2668();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B9DD2618();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B9DD2748();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B9D9EB78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B9DD2668();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B9DD2618();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void __swiftcall MISProfileDBClient.init()(MISProfileDBClient *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id MISProfileDBClient.init()()
{
  v74 = *MEMORY[0x1E69E9840];
  v0 = sub_1B9DD28D8();
  v70 = *(v0 - 8);
  v71 = v0;
  v1 = *(v70 + 64);
  v2 = (MEMORY[0x1EEE9AC00])();
  v68 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v67 - v4;
  v5 = sub_1B9DD26A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v67 - v12;
  v14 = sub_1B9DD2728();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B9DA43D4();
  v21 = objc_msgSend_stringByAppendingPathComponent_(v19, v20, @"mis.db");

  v22 = v21;
  if (!v22)
  {
    __break(1u);
  }

  v23 = v22;
  sub_1B9DD2998();

  (*(v15 + 56))(v13, 1, 1, v14);
  (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v5);
  sub_1B9DD2718();
  v24 = objc_allocWithZone(MISDBManager);
  v25 = sub_1B9DD26C8();
  v26 = [v24 initWithDatabaseURL:v25 asReadOnly:1];

  (*(v15 + 8))(v18, v14);
  v27 = v69;
  *&v69[OBJC_IVAR___MISProfileDBClient_db] = v26;
  v28 = [v26 readSetting_];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1B9DD2998();
    v32 = v31;

    v33 = sub_1B9DD2998();
    v36 = v70;
    v35 = v71;
    if (v30 == v33 && v32 == v34)
    {
    }

    else
    {
      v47 = sub_1B9DD2C18();

      if ((v47 & 1) == 0)
      {
LABEL_12:
        type metadata accessor for MISAgentClient();
        v51.super.isa = MISAgentClient.init()().super.isa;
        v72 = 0;
        if ([(objc_class *)v51.super.isa migrateData:0 error:&v72])
        {
          v52 = v72;
        }

        else
        {
          v53 = v72;
          v54 = sub_1B9DD2698();

          swift_willThrow();
          v55 = sub_1B9DA9E4C();
          v56 = v68;
          (*(v36 + 16))(v68, v55, v35);
          v57 = v54;
          v58 = sub_1B9DD28B8();
          v59 = sub_1B9DD2AC8();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *v60 = 138543362;
            v62 = v54;
            v63 = _swift_stdlib_bridgeErrorToNSError();
            *(v60 + 4) = v63;
            *v61 = v63;
            _os_log_impl(&dword_1B9D96000, v58, v59, "Error migrating user trust: %{public}@", v60, 0xCu);
            sub_1B9DA429C(v61, &qword_1EBBE31D8, "Xa");
            MEMORY[0x1BFAE80B0](v61, -1, -1);
            v64 = v60;
            v56 = v68;
            MEMORY[0x1BFAE80B0](v64, -1, -1);
          }

          else
          {
          }

          (*(v36 + 8))(v56, v35);
        }

        goto LABEL_18;
      }
    }

    v48 = sub_1B9DA357C(v37, v38, v39);
    if ((v48 & 1) == 0 && !sub_1B9DA367C(v48, v49, v50))
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v40 = sub_1B9DA9E4C();
  v42 = v70;
  v41 = v71;
  v43 = v67;
  (*(v70 + 16))(v67, v40, v71);
  v44 = sub_1B9DD28B8();
  v45 = sub_1B9DD2AC8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1B9D96000, v44, v45, "Error fetching schema version", v46, 2u);
    MEMORY[0x1BFAE80B0](v46, -1, -1);
  }

  (*(v42 + 8))(v43, v41);
LABEL_18:
  v73.receiver = v27;
  v73.super_class = MISProfileDBClient;
  result = objc_msgSendSuper2(&v73, sel_init);
  v66 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9D9F338(uint64_t (*a1)(void))
{
  v3 = sub_1B9DD28D8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = *(v1 + OBJC_IVAR___MISProfileDBClient_db);
  v6 = a1();

  return v6;
}

Swift::String_optional __swiftcall MISProfileDBClient.teamID(withProfileUUID:)(Swift::String withProfileUUID)
{
  object = withProfileUUID._object;
  countAndFlagsBits = withProfileUUID._countAndFlagsBits;
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B9DD28D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR___MISProfileDBClient_db);
  v10 = sub_1B9DD2968();
  v35[0] = 0;
  v11 = [v9 getTeamIDForProfileUUID:v10 error:v35];

  v12 = v35[0];
  if (v11)
  {
    v13 = sub_1B9DD2998();
    v15 = v14;
    v16 = v12;
  }

  else
  {
    v17 = v35[0];
    v18 = sub_1B9DD2698();

    swift_willThrow();
    v19 = sub_1B9DA9E4C();
    (*(v5 + 16))(v8, v19, v4);

    v20 = v18;
    v21 = sub_1B9DD28B8();
    v22 = sub_1B9DD2AC8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v21;
      v26 = v25;
      v35[0] = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_1B9D9D588(countAndFlagsBits, object, v35);
      *(v23 + 12) = 2114;
      v27 = v18;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      v29 = v34;
      _os_log_impl(&dword_1B9D96000, v34, v22, "Error getting team ID for profile UUID %{public}s: %{public}@", v23, 0x16u);
      sub_1B9DA429C(v24, &qword_1EBBE31D8, "Xa");
      MEMORY[0x1BFAE80B0](v24, -1, -1);
      sub_1B9D9DB30(v26);
      MEMORY[0x1BFAE80B0](v26, -1, -1);
      MEMORY[0x1BFAE80B0](v23, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    v13 = 0;
    v15 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  v31 = v13;
  v32 = v15;
  result.value._object = v32;
  result.value._countAndFlagsBits = v31;
  return result;
}

BOOL sub_1B9D9F9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = sub_1B9DD28D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(v3 + OBJC_IVAR___MISProfileDBClient_db);
  v10 = a3(a1, a2);

  return v10 != 0;
}

uint64_t sub_1B9D9FCDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = sub_1B9DD28D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(v3 + OBJC_IVAR___MISProfileDBClient_db);
  LOBYTE(a3) = a3(a1, a2);

  return a3 & 1;
}

uint64_t MISProfileDBClient.auxiliarySignature(withTeamID:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B9DD28D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v8 = sub_1B9D9C0B4(a1, a2);

  if (v8)
  {
    v9 = [v8 signature];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1B9DD2798();

      return v11;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall MISProfileDBClient.deviceUDID()()
{
  v1 = [*(v0 + OBJC_IVAR___MISProfileDBClient_db) readSetting_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B9DD2998();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

id sub_1B9DA05DC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B9DD2A68();

  return v5;
}

uint64_t sub_1B9DA0664(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = sub_1B9DD28D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(v3 + OBJC_IVAR___MISProfileDBClient_db);
  v10 = a3(a1, a2);

  return v10;
}

uint64_t MISProfileDBClient.teamIDs(withSigningIdentity:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B9DD28D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v12 = sub_1B9D9B44C(a1, a2);

  if (*(v12 + 16) >= 2uLL)
  {
    v13 = sub_1B9DA9E4C();
    (*(v6 + 16))(v10, v13, v5);

    v14 = sub_1B9DD28B8();
    v15 = sub_1B9DD2AC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_1B9D9D588(a1, a2, v23);
      *(v16 + 12) = 2082;
      v18 = MEMORY[0x1BFAE6AA0](v12, MEMORY[0x1E69E6158]);
      v20 = sub_1B9D9D588(v18, v19, v23);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_1B9D96000, v14, v15, "Signing identity %{public}s has more than one team IDs: %{public}s. This will cause issues with user trust.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAE80B0](v17, -1, -1);
      MEMORY[0x1BFAE80B0](v16, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
  }

  return v12;
}

id sub_1B9DA0DBC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  v10 = sub_1B9DD2A68();

  return v10;
}

uint64_t sub_1B9DA0E88(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t MISProfileDBClient.isCDHashBanned(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B9DD28D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v8 = sub_1B9DB1788(a1, a2);

  return v8 & 1;
}

void sub_1B9DA1294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, int a6, uint64_t a7)
{
  v15 = sub_1B9DD28D8();
  v25 = *(v15 - 8);
  v16 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v26 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B9DCC028();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v18 < 9.22337204e18)
  {
    v23 = a6;
    v24 = a7;
    v19 = v18;
    v20 = sub_1B9DCC054();
    v21 = *(v7 + OBJC_IVAR___MISProfileDBClient_db);
    sub_1B9DB0BC8(v19, v20, a1, a2, a3, a4, a5 & 1);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1B9DA16A0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *, unint64_t))
{
  v6 = a4;
  if (!a3)
  {
    v8 = 0;
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = a1;
    v14 = 0xF000000000000000;
    goto LABEL_6;
  }

  v8 = sub_1B9DD2998();
  v10 = v9;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v6;
  v12 = a1;
  v6 = sub_1B9DD2798();
  v14 = v13;

LABEL_6:
  v16 = a5(v8, v10, v6, v14);
  sub_1B9D9D520(v6, v14);

  return v16 & 1;
}

uint64_t MISProfileDBClient.isRejected(withProfileUUID:withCDHash:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1B9DD28D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1B9DD2968();
  v13 = sub_1B9DBF144(v11, v12);

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v14 = *(v4 + OBJC_IVAR___MISProfileDBClient_db);
    v15 = sub_1B9DB11EC(a1, a2, a3, a4);
  }

  return v15 & 1;
}

id sub_1B9DA1BA8(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  v8 = a1;
  a3();

  sub_1B9DA4254(0, a4, a5);
  v9 = sub_1B9DD2A68();

  return v9;
}

void sub_1B9DA1C2C(void *a1)
{
  v3 = sub_1B9DD2838();
  v129 = *(v3 - 8);
  v130 = v3;
  v4 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v128 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1B9DD2878();
  v6 = *(v132 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v132);
  v118 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v116 - v10;
  v12 = sub_1B9D9B898(&qword_1EBBE3238, &qword_1B9DD5258);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v116 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v116 - v23;
  v25 = sub_1B9DA3FBC(MEMORY[0x1E69E7CC0]);
  UUID = MISProvisioningProfileGetUUID(a1);
  if (!UUID)
  {
    __break(1u);
    goto LABEL_34;
  }

  v125 = v1;
  v117 = v11;
  v127 = v19;
  v131 = v6;
  v134 = v24;
  v19 = UUID;
  v28 = sub_1B9DD2998();
  if (!@"UUID")
  {
LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  v29 = v27;
  v133 = v19;
  v30 = sub_1B9DD2998();
  v32 = v31;
  v139 = MEMORY[0x1E69E6158];
  *&v138 = v28;
  *(&v138 + 1) = v29;
  sub_1B9DA4230(&v138, v137);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v136 = v25;
  sub_1B9DA3BA4(v137, v30, v32, isUniquelyReferenced_nonNull_native);

  v34 = v136;
  Name = MISProvisioningProfileGetName(a1);
  if (!Name)
  {
LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  v36 = Name;
  v37 = sub_1B9DD2998();
  v39 = v38;

  if (!@"Name")
  {
LABEL_36:

    __break(1u);
    goto LABEL_37;
  }

  v124 = v16;
  v40 = sub_1B9DD2998();
  v42 = v41;
  v139 = MEMORY[0x1E69E6158];
  *&v138 = v37;
  *(&v138 + 1) = v39;
  sub_1B9DA4230(&v138, v137);

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v34;
  sub_1B9DA3BA4(v137, v40, v42, v43);

  v44 = v136;
  TeamIdentifier = MISProvisioningProfileGetTeamIdentifier(a1);
  if (!TeamIdentifier)
  {
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v126 = TeamIdentifier;
  v47 = sub_1B9DD2998();
  if (!@"TeamIdentifier")
  {
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  v48 = v46;
  v121 = v39;
  v119 = v29;
  v49 = sub_1B9DD2998();
  v51 = v50;
  v139 = MEMORY[0x1E69E6158];
  *&v138 = v47;
  *(&v138 + 1) = v48;
  sub_1B9DA4230(&v138, v137);
  v120 = v48;

  v52 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v44;
  sub_1B9DA3BA4(v137, v49, v51, v52);

  v53 = v136;
  v135 = a1;
  CreationDate = MISProvisioningProfileGetCreationDate(a1);
  if (!CreationDate)
  {
LABEL_39:

    __break(1u);
LABEL_40:

    __break(1u);
    goto LABEL_41;
  }

  v55 = CreationDate;
  v56 = v134;
  sub_1B9DD2868();

  v57 = v131;
  v58 = v132;
  v59 = *(v131 + 56);
  v59(v56, 0, 1, v132);
  sub_1B9DA436C(v56, v22, &qword_1EBBE3238, &qword_1B9DD5258);
  v60 = *(v57 + 48);
  v61 = v60(v22, 1, v58);
  v123 = v59;
  v122 = v60;
  if (v61 == 1)
  {
    sub_1B9DA429C(v22, &qword_1EBBE3238, &qword_1B9DD5258);
  }

  else
  {
    v62 = v117;
    (*(v57 + 32))(v117, v22, v58);
    if (!@"CreationDate")
    {
LABEL_44:

      __break(1u);
      goto LABEL_45;
    }

    v63 = v58;
    v64 = v57;
    v116 = sub_1B9DD2998();
    v66 = v65;
    v67 = v128;
    sub_1B9DA2830(v128);
    v68 = sub_1B9DD27D8();
    v70 = v69;
    (*(v129 + 8))(v67, v130);
    v139 = MEMORY[0x1E69E6158];
    *&v138 = v68;
    *(&v138 + 1) = v70;
    sub_1B9DA4230(&v138, v137);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v53;
    sub_1B9DA3BA4(v137, v116, v66, v71);

    v58 = v63;
    (*(v64 + 8))(v62, v63);
    v53 = v136;
    v56 = v134;
    v57 = v64;
  }

  v72 = v124;
  ExpirationDate = MISProvisioningProfileGetExpirationDate(v135);
  if (!ExpirationDate)
  {
    goto LABEL_40;
  }

  v74 = ExpirationDate;
  v75 = v127;
  sub_1B9DD2868();

  sub_1B9DA429C(v56, &qword_1EBBE3238, &qword_1B9DD5258);
  v123(v75, 0, 1, v58);
  sub_1B9DA42FC(v75, v56);
  sub_1B9DA436C(v56, v72, &qword_1EBBE3238, &qword_1B9DD5258);
  if (v122(v72, 1, v58) == 1)
  {
    sub_1B9DA429C(v72, &qword_1EBBE3238, &qword_1B9DD5258);
    v76 = v135;
LABEL_17:
    v86 = MISProvisioningProfileProvisionsAllDevices(v76);
    v87 = MEMORY[0x1E69E6370];
    if (!v86)
    {
LABEL_20:
      if (!MISProvisioningProfileIsForLocalProvisioning(v76))
      {
LABEL_23:
        if (MISProfileIsDEREncoded(v76))
        {
          v139 = MEMORY[0x1E69E6158];
          v96 = 5391684;
        }

        else
        {
          v139 = MEMORY[0x1E69E6158];
          v96 = 5000536;
        }

        *&v138 = v96;
        *(&v138 + 1) = 0xE300000000000000;
        sub_1B9DA4230(&v138, v137);
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v53;
        sub_1B9DA3BA4(v137, 0x676E69646F636E45, 0xEE00726F76616C46, v97);
        v98 = v136;
        v99 = v125;
        v100 = v133;
        v101 = [v125 isProfileTrusted_];

        v139 = v87;
        LOBYTE(v138) = v101;
        sub_1B9DA4230(&v138, v137);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v98;
        sub_1B9DA3BA4(v137, 0x7375725472657355, 0xEB00000000646574, v102);
        v103 = v136;
        v104 = v99;
        v105 = v126;
        v106 = [v104 auxiliarySignatureWithTeamID_];

        if (v106)
        {
          v107 = sub_1B9DD2798();
          v109 = v108;
        }

        else
        {
          v107 = 0;
          v109 = 0xF000000000000000;
        }

        v139 = v87;
        LOBYTE(v138) = v109 >> 60 != 15;
        sub_1B9DA4230(&v138, v137);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v103;
        sub_1B9DA3BA4(v137, 0xD000000000000015, 0x80000001B9DDD720, v110);
        v111 = v136;
        if (!MISProvisioningProfileIsAppleInternalProfile(v135))
        {

          sub_1B9D9D520(v107, v109);
          sub_1B9DA429C(v56, &qword_1EBBE3238, &qword_1B9DD5258);
          return;
        }

        if (@"AppleInternalProfile")
        {

          v112 = sub_1B9DD2998();
          v114 = v113;
          v139 = v87;
          LOBYTE(v138) = 1;
          sub_1B9DA4230(&v138, v137);
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v136 = v111;
          sub_1B9DA3BA4(v137, v112, v114, v115);
          sub_1B9D9D520(v107, v109);

          sub_1B9DA429C(v56, &qword_1EBBE3238, &qword_1B9DD5258);
          return;
        }

        goto LABEL_43;
      }

      if (@"LocalProvision")
      {
        v92 = sub_1B9DD2998();
        v94 = v93;
        v139 = v87;
        LOBYTE(v138) = 1;
        sub_1B9DA4230(&v138, v137);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v53;
        sub_1B9DA3BA4(v137, v92, v94, v95);

        v53 = v136;
        goto LABEL_23;
      }

LABEL_42:

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (@"ProvisionsAllDevices")
    {
      v88 = sub_1B9DD2998();
      v90 = v89;
      v139 = v87;
      LOBYTE(v138) = 1;
      sub_1B9DA4230(&v138, v137);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v53;
      sub_1B9DA3BA4(v137, v88, v90, v91);

      v53 = v136;
      goto LABEL_20;
    }

LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

  v77 = v118;
  (*(v57 + 32))(v118, v72, v58);
  v76 = v135;
  if (@"ExpirationDate")
  {
    v78 = sub_1B9DD2998();
    v80 = v79;
    v81 = v128;
    sub_1B9DA2830(v128);
    v82 = sub_1B9DD27D8();
    v84 = v83;
    (*(v129 + 8))(v81, v130);
    v139 = MEMORY[0x1E69E6158];
    *&v138 = v82;
    *(&v138 + 1) = v84;
    sub_1B9DA4230(&v138, v137);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v53;
    sub_1B9DA3BA4(v137, v78, v80, v85);

    (*(v57 + 8))(v77, v58);
    v53 = v136;
    v56 = v134;
    goto LABEL_17;
  }

LABEL_45:

  __break(1u);
}

uint64_t sub_1B9DA2830@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1B9D9B898(&qword_1EBBE3240, qword_1B9DD5260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_1B9DD28A8();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1B9DD2828();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B9DD2808();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B9DD27E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B9DD27F8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x1E6969358], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x1E6969370], v11);
  (*(v7 + 104))(v27, *MEMORY[0x1E6969380], v33);
  sub_1B9DD2898();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_1B9DD2818();
  }

  return result;
}

void MISProfileDBClient.diagnostics()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B9DA3FBC(MEMORY[0x1E69E7CC0]);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = MISProfileEnumerationFlagDefault;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  v32 = sub_1B9DA40EC;
  v33 = v5;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1B9DA30C4;
  v31 = &unk_1F37D98A8;
  v6 = _Block_copy(&aBlock);

  v7 = v0;

  MISEnumerateInstalledProvisioningProfiles(v4, v6);
  _Block_release(v6);
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = sub_1B9D9B898(&qword_1EBBE31E0, &qword_1B9DD5220);
  v31 = v9;
  *&aBlock = v8;
  sub_1B9DA4230(&aBlock, v28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9DA3BA4(v28, 0x73656C69666F7270, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v11 = [v7 onlineAuthEntries];
  sub_1B9DA4254(0, &qword_1EBBE31E8, off_1E7ED4638);
  v12 = sub_1B9DD2A78();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v9;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v31 = v27;
    *&aBlock = v15;
    sub_1B9DA4230(&aBlock, v28);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B9DA3BA4(v28, 0xD000000000000013, 0x80000001B9DDD670, v22);
    v23 = sub_1B9DCC028();
    v31 = MEMORY[0x1E69E63B0];
    *&aBlock = v23;
    sub_1B9DA4230(&aBlock, v28);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B9DA3BA4(v28, 0xD000000000000016, 0x80000001B9DDD690, v24);
    v25 = sub_1B9DCC054();
    v31 = MEMORY[0x1E69E72F0];
    LODWORD(aBlock) = v25;
    sub_1B9DA4230(&aBlock, v28);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B9DA3BA4(v28, 0xD000000000000017, 0x80000001B9DDD6B0, v26);
    sub_1B9DA3120(v2);

    return;
  }

  v13 = sub_1B9DD2BB8();
  v27 = v9;
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFAE6BB0](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 dictionaryDescription];
      v19 = sub_1B9DD2958();

      v31 = sub_1B9D9B898(&qword_1EBBE31F0, &qword_1B9DD5228);
      *&aBlock = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1B9DA346C(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_1B9DA346C((v20 > 1), v21 + 1, 1, v15);
      }

      ++v14;

      *(v15 + 2) = v21 + 1;
      sub_1B9DA4230(&aBlock, &v15[32 * v21 + 32]);
    }

    while (v13 != v14);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1B9DA30C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1B9DA3120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B9D9B898(&qword_1EBBE3210, &qword_1B9DD5230);
    v2 = sub_1B9DD2BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B9D9DBE4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1B9DA4230(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1B9DA4230(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1B9DA4230(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1B9DD2B58();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1B9DA4230(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_1B9DA346C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9D9B898(&qword_1EBBE3218, &qword_1B9DD5238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B9DA357C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v4 = @"UserTrustedUpps.plist";
  v5 = @"/private/var/db/MobileIdentityData";
  v7 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v6, v4);

  LOBYTE(v4) = objc_msgSend_fileExistsAtPath_(v3, v8, v7);
  if (v4)
  {
    return 1;
  }

  v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10);
  v13 = @"UserTrust.db";
  v14 = @"/private/var/db/MobileIdentityData";
  v16 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v15, v13);

  v18 = objc_msgSend_fileExistsAtPath_(v12, v17, v16);
  return v18;
}

uint64_t sub_1B9DA367C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v4 = @"Indeterminates.plist";
  v5 = @"/private/var/db/MobileIdentityData";
  v7 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v6, v4);

  if (objc_msgSend_fileExistsAtPath_(v3, v8, v7))
  {
    v9 = 1;
  }

  else
  {
    v10 = @"AGP.plist";
    v11 = @"/private/var/db/MobileIdentityData";
    v13 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v12, v10);

    if (objc_msgSend_fileExistsAtPath_(v3, v14, v13))
    {
      v9 = 1;
    }

    else
    {
      v15 = @"Rejections.plist";
      v16 = @"/private/var/db/MobileIdentityData";
      v18 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v17, v15);

      if (objc_msgSend_fileExistsAtPath_(v3, v19, v18))
      {
        v9 = 1;
      }

      else
      {
        v20 = @"AuthListBannedUpps.plist";
        v21 = @"/private/var/db/MobileIdentityData";
        v23 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v22, v20);

        if (objc_msgSend_fileExistsAtPath_(v3, v24, v23))
        {
          v9 = 1;
        }

        else
        {
          v25 = @"AuthListBannedCdHashes.plist";
          v26 = @"/private/var/db/MobileIdentityData";
          v28 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v27, v25);

          v9 = objc_msgSend_fileExistsAtPath_(v3, v29, v28);
        }
      }
    }
  }

  return v9;
}

unint64_t sub_1B9DA3874(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B9DD2C98();
  sub_1B9DD29E8();
  v6 = sub_1B9DD2CB8();

  return sub_1B9DA3D60(a1, a2, v6);
}

uint64_t sub_1B9DA38EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
  v36 = a2;
  result = sub_1B9DD2BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B9DA4230(v25, v37);
      }

      else
      {
        sub_1B9D9DBE4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B9DD2C98();
      sub_1B9DD29E8();
      result = sub_1B9DD2CB8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B9DA4230(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1B9DA3BA4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9DA3874(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B9DA3E18();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9DA38EC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B9DA3874(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B9DD2C38();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1B9D9DB30(v23);

    return sub_1B9DA4230(a1, v23);
  }

  else
  {
    sub_1B9DA3CF4(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1B9DA3CF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B9DA4230(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1B9DA3D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B9DD2C18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1B9DA3E18()
{
  v1 = v0;
  sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
  v2 = *v0;
  v3 = sub_1B9DD2BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B9D9DBE4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B9DA4230(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B9DA3FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
    v3 = sub_1B9DD2BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B9DA436C(v4, &v13, &qword_1EBBE3248, &unk_1B9DD5BB0);
      v5 = v13;
      v6 = v14;
      result = sub_1B9DA3874(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B9DA4230(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B9DA40EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1B9D9B898(&qword_1EBBE3228, &qword_1B9DD5248);
  v3 = sub_1B9DD2B08();
  sub_1B9DA1C2C(v3);
  v5 = v4;
  v12 = sub_1B9D9B898(&qword_1EBBE3230, &qword_1B9DD5250);
  *&v11 = v5;
  swift_beginAccess();
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1B9DA346C(0, *(v6 + 2) + 1, 1, v6);
    *(v2 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1B9DA346C((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  sub_1B9DA4230(&v11, &v6[32 * v9 + 32]);
  *(v2 + 16) = v6;
  swift_endAccess();
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1B9DA4218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_1B9DA4230(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B9DA4254(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9DA429C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B9D9B898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9DA42FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3238, &qword_1B9DD5258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DA436C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B9D9B898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for LegacyUserTrustedProfileEntry()
{
  result = qword_1EBBE3688;
  if (!qword_1EBBE3688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9DA442C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B9D9DB90(a3, a4);
  }
}

void sub_1B9DA4478(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B9D9D534(a3, a4);
  }
}

uint64_t sub_1B9DA44C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1B9DA44E0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9DA44EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B9DA4534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B9DA45AC()
{
  sub_1B9DD2888();
  if (v0 <= 0x3F)
  {
    sub_1B9DA4630();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9DA4630()
{
  if (!qword_1EBBE3250)
  {
    v0 = sub_1B9DD2B18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE3250);
    }
  }
}

void sub_1B9DA46B4(int a1)
{
  v23 = a1;
  v1 = sub_1B9DD26A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_1B9DD2728();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B9DD2968();
  v16 = sub_1B9DA4E6C();
  v18 = objc_msgSend_stringByAppendingPathComponent_(v16, v17, v15);

  v19 = v18;
  if (v19)
  {
    sub_1B9DD2998();

    (*(v11 + 56))(v9, 1, 1, v10);
    (*(v2 + 104))(v5, *MEMORY[0x1E6968F70], v1);
    sub_1B9DD2718();
    v20 = sub_1B9DD26C8();
    (*(v11 + 8))(v14, v10);
    v21 = type metadata accessor for LegacyUserTrustDB();
    v24.receiver = v22;
    v24.super_class = v21;
    objc_msgSendSuper2(&v24, sel_initWithDatabaseURL_asReadOnly_, v20, v23 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9DA4BB8()
{
  v1 = v0;
  v2 = sub_1B9DD2728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dbURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = sub_1B9DD29D8();

  sub_1B9DD1A74((v9 + 32));

  v10 = [v1 shmURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  v8(v6, v2);
  v11 = sub_1B9DD29D8();

  sub_1B9DD1A74((v11 + 32));

  v12 = [v1 walURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  v8(v6, v2);
  v13 = sub_1B9DD29D8();

  sub_1B9DD1A74((v13 + 32));
}

id sub_1B9DA4E38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustDB();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9DA4E78(void *a1)
{
  v2 = sub_1B9DD28D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = sub_1B9DD2918();
  result = swift_unknownObjectRelease();
  if (v10 != a1)
  {
    v12 = MEMORY[0x1BFAE82F0](a1);
    if (v12 == sub_1B9DD28E8())
    {
      v22 = sub_1B9DD2908();
      result = xpc_dictionary_get_string(a1, v22);
      if (result)
      {
        v23 = sub_1B9DD2A08();
        v25 = v24;
        v26 = sub_1B9DA9E08();
        (*(v3 + 16))(v9, v26, v2);

        v27 = sub_1B9DD28B8();
        v28 = sub_1B9DD2AC8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v33 = v30;
          *v29 = 136446210;
          v31 = sub_1B9D9D588(v23, v25, &v33);

          *(v29 + 4) = v31;
          _os_log_impl(&dword_1B9D96000, v27, v28, "misagent connection error: %{public}s", v29, 0xCu);
          sub_1B9D9DB30(v30);
          MEMORY[0x1BFAE80B0](v30, -1, -1);
          MEMORY[0x1BFAE80B0](v29, -1, -1);
        }

        else
        {
        }

        return (*(v3 + 8))(v9, v2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      MEMORY[0x1BFAE8200](a1);
      v13 = sub_1B9DD2A08();
      v15 = v14;
      v16 = sub_1B9DA9E08();
      (*(v3 + 16))(v7, v16, v2);

      v17 = sub_1B9DD28B8();
      v18 = sub_1B9DD2AC8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136446210;
        v21 = sub_1B9D9D588(v13, v15, &v33);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_1B9D96000, v17, v18, "Received unhandled event from misagent: %{public}s", v19, 0xCu);
        sub_1B9D9DB30(v20);
        MEMORY[0x1BFAE80B0](v20, -1, -1);
        MEMORY[0x1BFAE80B0](v19, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_1B9DA51EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MISAgentClient.ping()()
{
  v0 = sub_1B9DA5D10();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1B9DA5810(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_1B9D9D520(v7, v13);
  return 1;
}

MISAgentClient __swiftcall MISAgentClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B9DA5998(uint64_t a1, unint64_t a2, xpc_object_t xdict, char *key)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(bytes, 0, 14);
      v9 = xdict;
      v10 = key;
      v8 = 0;
      goto LABEL_9;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      bytes[0] = a1;
      LOWORD(bytes[1]) = a2;
      BYTE2(bytes[1]) = BYTE2(a2);
      BYTE3(bytes[1]) = BYTE3(a2);
      BYTE4(bytes[1]) = BYTE4(a2);
      v8 = BYTE6(a2);
      BYTE5(bytes[1]) = BYTE5(a2);
      v9 = xdict;
      v10 = key;
LABEL_9:
      xpc_dictionary_set_data(v9, v10, bytes, v8);
      goto LABEL_10;
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  sub_1B9DA5B10(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, xdict, key);
LABEL_10:
  result = swift_unknownObjectRelease();
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DA5B10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  result = sub_1B9DD2628();
  v10 = result;
  if (result)
  {
    result = sub_1B9DD2658();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B9DD2648();
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  xpc_dictionary_set_data(a4, a5, v10, v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B9DA5BB8(void *a1)
{
  v2 = MEMORY[0x1BFAE82F0]();
  result = sub_1B9DD28F8();
  if (result != v2)
  {
    if (sub_1B9DD28E8() == v2)
    {
      v10 = sub_1B9DD2908();
      result = xpc_dictionary_get_string(a1, v10);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = sub_1B9DD2A08();
      v7 = v11;
      sub_1B9DD2B88();

      v8 = 0x80000001B9DDD900;
      v9 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = MEMORY[0x1BFAE82F0](a1);
      xpc_type_get_name(v4);
      v5 = sub_1B9DD2A08();
      v7 = v6;
      sub_1B9DD2B88();

      v8 = 0x80000001B9DDD8E0;
      v9 = 0xD000000000000014;
    }

    v13 = v9;
    v14 = v8;
    MEMORY[0x1BFAE6A10](v5, v7);

    sub_1B9DA7600();
    swift_allocError();
    *v12 = v13;
    *(v12 + 8) = v14;
    *(v12 + 16) = 0;
    *(v12 + 20) = 0;
    return swift_willThrow();
  }

  return result;
}

_xpc_connection_s *sub_1B9DA5D10()
{
  result = sub_1B9DD25B0();
  if (result)
  {
    v2 = result;
    v8[4] = sub_1B9DA4E78;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1B9DA51EC;
    v8[3] = &unk_1F37D9A80;
    v3 = _Block_copy(v8);
    xpc_connection_set_event_handler(v2, v3);
    _Block_release(v3);
    xpc_connection_resume(v2);
    type metadata accessor for XPCConnection();
    v4 = sub_1B9DA8518(v2);
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "MessageType", "Ping");
    v6 = (*(*v4 + 88))();
    v7 = xpc_connection_send_message_with_reply_sync(v6, v5);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v7);
    if (v0)
    {
LABEL_5:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v6;
    }

    result = xpc_dictionary_get_string(v7, "Payload");
    if (result)
    {
      v6 = sub_1B9DD2A08();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

_xpc_connection_s *sub_1B9DA5EC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v69 = a5;
  v70 = a1;
  v77 = a3;
  v12 = sub_1B9DD28D8();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v16 = result;
    v75 = sub_1B9DA4E78;
    v76 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = sub_1B9DA51EC;
    v74 = &unk_1F37D9A58;
    v17 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v16, v17);
    _Block_release(v17);
    xpc_connection_resume(v16);
    type metadata accessor for XPCConnection();
    v18 = sub_1B9DA8518(v16);
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v19, "MessageType", "Trust");
    v20 = xpc_dictionary_create(0, 0, 0);
    v68 = a7;
    xpc_dictionary_set_BOOL(v20, "Trust", a7 & 1);
    if (a2)
    {
      v21 = sub_1B9DD29D8();
      xpc_dictionary_set_string(v20, "ProfileID", (v21 + 32));
    }

    v22 = a6;
    if (a4)
    {
      v23 = sub_1B9DD29D8();
      xpc_dictionary_set_string(v20, "TeamID", (v23 + 32));
    }

    v67 = a6 >> 60;
    if (a6 >> 60 != 15)
    {
      swift_unknownObjectRetain();
      v24 = v69;
      sub_1B9D9DB7C(v69, a6);
      sub_1B9DA5998(v24, a6, v20, "AuxiliarySignature");
      sub_1B9D9D520(v24, a6);
    }

    xpc_dictionary_set_value(v19, "Payload", v20);
    v25 = (*(*v18 + 88))();
    v26 = xpc_connection_send_message_with_reply_sync(v25, v19);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v26);
    if (v7)
    {
      goto LABEL_31;
    }

    v63 = v26;
    uint64 = xpc_dictionary_get_uint64(v26, "Status");
    if (uint64)
    {
      aBlock = 0;
      v72 = 0xE000000000000000;
      sub_1B9DD2B88();
      MEMORY[0x1BFAE6A10](0xD000000000000034, 0x80000001B9DDD9D0);
      v66 = uint64;
      countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
      MEMORY[0x1BFAE6A10](countAndFlagsBits);

      MEMORY[0x1BFAE6A10](0xD000000000000010, 0x80000001B9DDDA10);
      if (a2)
      {
        v29 = v70;
      }

      else
      {
        v29 = 7104878;
      }

      v30 = 0xE300000000000000;
      if (a2)
      {
        v31 = a2;
      }

      else
      {
        v31 = 0xE300000000000000;
      }

      v32 = 7104878;

      MEMORY[0x1BFAE6A10](v29, v31);

      MEMORY[0x1BFAE6A10](0x44496D616574202CLL, 0xEB00000000203D20);
      if (a4)
      {
        v33 = v77;
      }

      else
      {
        v33 = 7104878;
      }

      if (a4)
      {
        v34 = a4;
      }

      else
      {
        v34 = 0xE300000000000000;
      }

      MEMORY[0x1BFAE6A10](v33, v34);

      MEMORY[0x1BFAE6A10](0x74616E676973202CLL, 0xEE00203D20657275);
      if (v67 <= 0xE)
      {
        v32 = sub_1B9DAC708(v69, v22);
        v30 = v35;
      }

      MEMORY[0x1BFAE6A10](v32, v30);

      MEMORY[0x1BFAE6A10](0x207473757274202CLL, 0xEA0000000000203DLL);
      if (v68)
      {
        v36 = 1702195828;
      }

      else
      {
        v36 = 0x65736C6166;
      }

      if (v68)
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      MEMORY[0x1BFAE6A10](v36, v37);

      v38 = aBlock;
      v39 = v72;
      sub_1B9DA7600();
      swift_allocError();
      *v40 = v38;
      *(v40 + 8) = v39;
      *(v40 + 16) = v66;
      *(v40 + 20) = 1;
      swift_willThrow();
LABEL_31:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    v41 = sub_1B9DA9E08();
    (*(v65 + 16))(v64, v41, v66);
    v42 = v69;
    sub_1B9D9DB7C(v69, v22);

    v62 = sub_1B9DD28B8();
    v43 = sub_1B9DD2AD8();

    v44 = v42;
    v45 = v62;
    sub_1B9D9D520(v44, v22);
    v61 = v43;
    if (os_log_type_enabled(v45, v43))
    {
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v46 = 136446978;
      if (a2)
      {
        v47 = v70;
      }

      else
      {
        v47 = 7104878;
      }

      if (a2)
      {
        v48 = a2;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      v49 = sub_1B9D9D588(v47, v48, &aBlock);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2082;
      if (a4)
      {
        v50 = v77;
      }

      else
      {
        v50 = 7104878;
      }

      if (a4)
      {
        v51 = a4;
      }

      else
      {
        v51 = 0xE300000000000000;
      }

      v52 = sub_1B9D9D588(v50, v51, &aBlock);

      v53 = 7104878;
      *(v46 + 14) = v52;
      v54 = 0xE300000000000000;
      *(v46 + 22) = 2082;
      if (v67 <= 0xE)
      {
        v53 = sub_1B9DAC708(v69, v22);
        v54 = v55;
      }

      v56 = sub_1B9D9D588(v53, v54, &aBlock);

      *(v46 + 24) = v56;
      *(v46 + 32) = 1024;
      *(v46 + 34) = v68 & 1;
      v57 = v62;
      _os_log_impl(&dword_1B9D96000, v62, v61, "Successfully set trust: profileUUID = %{public}s, teamID = %{public}s, signature = %{public}s, trust = %{BOOL}d", v46, 0x26u);
      v58 = v60;
      swift_arrayDestroy();
      MEMORY[0x1BFAE80B0](v58, -1, -1);
      MEMORY[0x1BFAE80B0](v46, -1, -1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return (*(v65 + 8))(v64, v66);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_xpc_connection_s *sub_1B9DA6664(int a1)
{
  v3 = sub_1B9DD28D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v9 = result;
    v30 = sub_1B9DA4E78;
    v31 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1B9DA51EC;
    v29 = &unk_1F37D9A30;
    v10 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v9, v10);
    _Block_release(v10);
    xpc_connection_resume(v9);
    type metadata accessor for XPCConnection();
    v11 = sub_1B9DA8518(v9);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "MessageType", "Migrate");
    xpc_dictionary_set_int64(v12, "MigrationPhase", a1);
    v13 = (*(*v11 + 88))();
    v14 = xpc_connection_send_message_with_reply_sync(v13, v12);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v14);
    if (v1)
    {
LABEL_5:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    uint64 = xpc_dictionary_get_uint64(v14, "Status");
    if (uint64)
    {
      aBlock = 0;
      v27 = 0xE000000000000000;
      sub_1B9DD2B88();

      aBlock = 0x6F72726520746F47;
      v27 = 0xEA00000000002072;
      countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
      MEMORY[0x1BFAE6A10](countAndFlagsBits);

      MEMORY[0x1BFAE6A10](0xD000000000000022, 0x80000001B9DDD990);
      v17 = aBlock;
      v18 = v27;
      sub_1B9DA7600();
      swift_allocError();
      *v19 = v17;
      *(v19 + 8) = v18;
      *(v19 + 16) = uint64;
      *(v19 + 20) = 1;
      swift_willThrow();
      goto LABEL_5;
    }

    v20 = sub_1B9DA9E08();
    (*(v4 + 16))(v7, v20, v3);
    v21 = sub_1B9DD28B8();
    v22 = sub_1B9DD2AD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = v4;
      v24 = v23;
      *v23 = 0;
      _os_log_impl(&dword_1B9D96000, v21, v22, "misagent successfully migrated data", v23, 2u);
      v25 = v24;
      v4 = v32;
      MEMORY[0x1BFAE80B0](v25, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_xpc_connection_s *sub_1B9DA6A18(int64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1B9DD28D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v12 = result;
    v51 = sub_1B9DA4E78;
    v52 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1B9DA51EC;
    v50 = &unk_1F37D9A08;
    v13 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v12, v13);
    _Block_release(v13);
    xpc_connection_resume(v12);
    type metadata accessor for XPCConnection();
    v14 = sub_1B9DA8518(v12);
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "MessageType", "AddMonotonicTimeOffset");
    v45 = a1;
    xpc_dictionary_set_int64(v15, "Offset", a1);
    v44 = v8;
    if (a3 >> 60 != 15)
    {
      swift_unknownObjectRetain();
      sub_1B9D9DB7C(a2, a3);
      sub_1B9DA5998(a2, a3, v15, "CDHash");
      v16 = sub_1B9D9D520(a2, a3);
    }

    v17 = (*(*v14 + 88))(v16);
    v18 = xpc_connection_send_message_with_reply_sync(v17, v15);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v18);
    if (v3)
    {
      goto LABEL_8;
    }

    v19 = v7;
    uint64 = xpc_dictionary_get_uint64(v18, "Status");
    v21 = uint64;
    if (a3 >> 60 == 15)
    {
      v22 = 0xE500000000000000;
      v43 = 0x296C696E28;
      v23 = v46;
      if (uint64)
      {
LABEL_7:
        aBlock = 0;
        v48 = 0xE000000000000000;
        sub_1B9DD2B88();
        MEMORY[0x1BFAE6A10](0x6F72726520746F47, 0xEA00000000002072);
        countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
        MEMORY[0x1BFAE6A10](countAndFlagsBits);

        MEMORY[0x1BFAE6A10](0xD00000000000002CLL, 0x80000001B9DDD940);
        v53 = v45;
        v25 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v25);

        MEMORY[0x1BFAE6A10](544175136, 0xE400000000000000);
        MEMORY[0x1BFAE6A10](v43, v22);

        v26 = aBlock;
        v27 = v48;
        sub_1B9DA7600();
        swift_allocError();
        *v28 = v26;
        *(v28 + 8) = v27;
        *(v28 + 16) = v21;
        *(v28 + 20) = 1;
        swift_willThrow();
LABEL_8:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v43 = sub_1B9DAC708(a2, a3);
      v22 = v29;
      v23 = v46;
      if (v21)
      {
        goto LABEL_7;
      }
    }

    v30 = sub_1B9DA9E08();
    v31 = v44;
    v32 = *(v44 + 16);
    v41 = v19;
    v32(v23, v30, v19);

    v33 = sub_1B9DD28B8();
    v34 = sub_1B9DD2AD8();

    v42 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v35 = 134218242;
      *(v35 + 4) = v45;
      *(v35 + 12) = 2082;
      v36 = sub_1B9D9D588(v43, v22, &aBlock);

      *(v35 + 14) = v36;
      v37 = v42;
      _os_log_impl(&dword_1B9D96000, v42, v34, "misagent successfully added monotonic time offset %ld to %{public}s", v35, 0x16u);
      v38 = v40;
      sub_1B9D9DB30(v40);
      MEMORY[0x1BFAE80B0](v38, -1, -1);
      MEMORY[0x1BFAE80B0](v35, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v31 + 8))(v46, v41);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v31 + 8))(v23, v41);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

_xpc_connection_s *sub_1B9DA6F74(int64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1B9DD28D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v12 = result;
    v51 = sub_1B9DA4E78;
    v52 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v48 = 1107296256;
    v49 = sub_1B9DA51EC;
    v50 = &unk_1F37D99E0;
    v13 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v12, v13);
    _Block_release(v13);
    xpc_connection_resume(v12);
    type metadata accessor for XPCConnection();
    v14 = sub_1B9DA8518(v12);
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "MessageType", "AddRTCResetCountOffset");
    v45 = a1;
    xpc_dictionary_set_int64(v15, "Offset", a1);
    v44 = v8;
    if (a3 >> 60 != 15)
    {
      swift_unknownObjectRetain();
      sub_1B9D9DB7C(a2, a3);
      sub_1B9DA5998(a2, a3, v15, "CDHash");
      v16 = sub_1B9D9D520(a2, a3);
    }

    v17 = (*(*v14 + 88))(v16);
    v18 = xpc_connection_send_message_with_reply_sync(v17, v15);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v18);
    if (v3)
    {
      goto LABEL_8;
    }

    v19 = v7;
    uint64 = xpc_dictionary_get_uint64(v18, "Status");
    v21 = uint64;
    if (a3 >> 60 == 15)
    {
      v22 = 0xE500000000000000;
      v43 = 0x296C696E28;
      v23 = v46;
      if (uint64)
      {
LABEL_7:
        aBlock = 0;
        v48 = 0xE000000000000000;
        sub_1B9DD2B88();
        MEMORY[0x1BFAE6A10](0x6F72726520746F47, 0xEA00000000002072);
        countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
        MEMORY[0x1BFAE6A10](countAndFlagsBits);

        MEMORY[0x1BFAE6A10](0xD00000000000002DLL, 0x80000001B9DDD8A0);
        v53 = v45;
        v25 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v25);

        MEMORY[0x1BFAE6A10](544175136, 0xE400000000000000);
        MEMORY[0x1BFAE6A10](v43, v22);

        v26 = aBlock;
        v27 = v48;
        sub_1B9DA7600();
        swift_allocError();
        *v28 = v26;
        *(v28 + 8) = v27;
        *(v28 + 16) = v21;
        *(v28 + 20) = 1;
        swift_willThrow();
LABEL_8:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v43 = sub_1B9DAC708(a2, a3);
      v22 = v29;
      v23 = v46;
      if (v21)
      {
        goto LABEL_7;
      }
    }

    v30 = sub_1B9DA9E08();
    v31 = v44;
    v32 = *(v44 + 16);
    v41 = v19;
    v32(v23, v30, v19);

    v33 = sub_1B9DD28B8();
    v34 = sub_1B9DD2AD8();

    v42 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v35 = 134218242;
      *(v35 + 4) = v45;
      *(v35 + 12) = 2082;
      v36 = sub_1B9D9D588(v43, v22, &aBlock);

      *(v35 + 14) = v36;
      v37 = v42;
      _os_log_impl(&dword_1B9D96000, v42, v34, "misagent successfully added RTC reset count offset %ld to %{public}s", v35, 0x16u);
      v38 = v40;
      sub_1B9D9DB30(v40);
      MEMORY[0x1BFAE80B0](v38, -1, -1);
      MEMORY[0x1BFAE80B0](v35, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v31 + 8))(v46, v41);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v31 + 8))(v23, v41);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1B9DA74DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1B9DA74F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B9DA7538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for MISAgentClient()
{
  result = qword_1EBBE3720[0];
  if (!qword_1EBBE3720[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBBE3720);
  }

  return result;
}

uint64_t sub_1B9DA75E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B9DA7600()
{
  result = qword_1EBBE3258;
  if (!qword_1EBBE3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3258);
  }

  return result;
}

uint64_t sub_1B9DA7674(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  v6 = v5 + 16;
  *(v5 + 32) = 0u;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000046, 0x80000001B9DDDA60, sub_1B9D9BB18, v7, sub_1B9DA78B8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    sub_1B9DA442C(v6, *(v5 + 24), *(v5 + 32), *(v5 + 40));
  }

  return v6;
}

uint64_t sub_1B9DA77D0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000026, 0x80000001B9DDDAB0, 0, 0, sub_1B9DA79B8, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9DA78B8(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*a1 + 192))(0);
  v6 = v5;
  (*(*a1 + 128))(1);
  if (v6)
  {
    if (v7 >> 60 != 15)
    {
      v8 = nullsub_1(v4);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      swift_beginAccess();
      v15 = v2[2];
      v16 = v2[3];
      v17 = v2[4];
      v18 = v2[5];
      v2[2] = v8;
      v2[3] = v10;
      v2[4] = v12;
      v2[5] = v14;
      sub_1B9DA4478(v15, v16, v17, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B9DA79B8(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = sub_1B9DD29C8();
    v7 = v6;

    swift_beginAccess();
    v8 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B9D9B78C(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B9D9B78C((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v7;
    *(v2 + 16) = v8;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B9DA7AE0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LegacyUserTrustDB();
  result = objc_msgSendSuper2(&v8, sel_setupSchema);
  if (result)
  {
    v2 = result;
    v3 = [v0 readSetting_];
    if (!v3)
    {
      v4 = sub_1B9DD2968();
      [v0 executeQuery:v4 withBind:0 withResults:0];

      v5 = sub_1B9DD2968();
      [v0 executeQuery:v5 withBind:0 withResults:0];

      v6 = @"databaseSchemaVersion";
      v7 = sub_1B9DD2968();
      [v0 setSetting:v6 toValue:v7];

      v3 = v7;
    }

    return v2;
  }

  return result;
}

uint64_t sub_1B9DA7C58(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1B9DA7C70@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL sub_1B9DA7CEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B9DA7D1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B9DA7D48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B9DA7E34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B9DA7E64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B9DA8400(a1);

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for LaunchWarningDetails()
{
  result = qword_1EBBE3460;
  if (!qword_1EBBE3460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9DA7EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DA7F60@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for LaunchWarningDetails();
  v14 = v13[6];
  v15 = sub_1B9DD2878();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  *(a8 + v13[7]) = a5 & 1;
  *(a8 + v13[8]) = a6;
  v16 = a8 + v13[9];

  return sub_1B9DA802C(a7, v16);
}

uint64_t sub_1B9DA802C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9DA80A0()
{
  result = qword_1EBBE3260;
  if (!qword_1EBBE3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3260);
  }

  return result;
}

unint64_t sub_1B9DA80F8()
{
  result = qword_1EBBE3268;
  if (!qword_1EBBE3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3268);
  }

  return result;
}

unint64_t sub_1B9DA8150()
{
  result = qword_1EBBE3270;
  if (!qword_1EBBE3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3270);
  }

  return result;
}

unint64_t sub_1B9DA81A8()
{
  result = qword_1EBBE3278;
  if (!qword_1EBBE3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3278);
  }

  return result;
}

unint64_t sub_1B9DA8200()
{
  result = qword_1EBBE3280;
  if (!qword_1EBBE3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3280);
  }

  return result;
}

void sub_1B9DA829C()
{
  type metadata accessor for SecCSDigestAlgorithm();
  if (v0 <= 0x3F)
  {
    sub_1B9DD2878();
    if (v1 <= 0x3F)
    {
      sub_1B9DA83A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for SecCSDigestAlgorithm()
{
  if (!qword_1EBBE3180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBBE3180);
    }
  }
}

void sub_1B9DA83A8()
{
  if (!qword_1EBBE3190)
  {
    sub_1B9DD2728();
    v0 = sub_1B9DD2B18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE3190);
    }
  }
}

uint64_t sub_1B9DA8400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B9DA8444()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_1B9DA847C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B9DA8518(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B9DA854C()
{
  swift_beginAccess();
  xpc_connection_cancel(*(v0 + 16));
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

void sub_1B9DA85C0()
{
  v0 = sub_1B9DD2728();
  sub_1B9DA8D8C(v0, qword_1EBBE40A8);
  sub_1B9DA86B4(v0, qword_1EBBE40A8);
  v1 = sub_1B9DD2968();
  v2 = sub_1B9DA4E6C();
  v4 = objc_msgSend_stringByAppendingPathComponent_(v2, v3, v1);

  v5 = v4;
  if (v5)
  {
    sub_1B9DD2998();

    sub_1B9DD26B8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9DA86B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1B9DA86EC(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  if (qword_1EBBE3B30 != -1)
  {
    swift_once();
  }

  v5 = sub_1B9DD2728();
  sub_1B9DA86B4(v5, qword_1EBBE40A8);
  v6 = sub_1B9DD26C8();
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithDatabaseURL_asReadOnly_, v6, a1 & 1);

  return v7;
}

id sub_1B9DA89E4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LaunchWarningDB();
  v1 = objc_msgSendSuper2(&v16, sel_setupSchema);
  if (v1)
  {
    v2 = [v0 readSetting_];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B9DD2998();
      v6 = v5;
    }

    else
    {
      v7 = sub_1B9DD2968();
      [v0 executeQuery:v7 withBind:0 withResults:0];

      v8 = @"databaseSchemaVersion";
      v4 = 49;
      v6 = 0xE100000000000000;
      v9 = sub_1B9DD2968();
      [v0 setSetting:v8 toValue:v9];
    }

    if (v4 == 49 && v6 == 0xE100000000000000)
    {
    }

    else
    {
      v11 = sub_1B9DD2C18();

      if ((v11 & 1) == 0)
      {
        return v1;
      }
    }

    v12 = sub_1B9DD2968();
    [v0 executeQuery:v12 withBind:0 withResults:0];

    v13 = @"databaseSchemaVersion";
    v14 = sub_1B9DD2968();
    [v0 setSetting:v13 toValue:v14];
  }

  return v1;
}

id sub_1B9DA8D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningDB();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_1B9DA8D8C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B9DA8DF0()
{
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](0);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9DA8E5C()
{
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](0);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9DA8E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1B9DD28D8();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v64 - v8;
  v9 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - v13;
  v15 = sub_1B9DD2878();
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - v19;
  v21 = *(*a1 + 160);
  v22 = v21(0);
  v77 = (*(*a1 + 128))(1);
  v24 = v23;
  v69 = v21(2);
  v64 = v21(3);
  v25 = *(*a1 + 144);
  v70 = v20;
  v25(4);
  result = (*(*a1 + 192))(5);
  v28 = v27;
  v74 = v24;
  if (v24 >> 60 == 15)
  {

    v29 = sub_1B9DA9E4C();
    v30 = v73;
    (*(v73 + 16))(v7, v29, v3);
    v31 = sub_1B9DD28B8();
    v32 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B9D96000, v31, v32, "cdhash is nil in database", v33, 2u);
      MEMORY[0x1BFAE80B0](v33, -1, -1);
    }

    (*(v30 + 8))(v7, v3);
    v34 = v77;
    v35 = v74;
    v75 = v77;
    v76 = v74;
    sub_1B9D9DB7C(v77, v74);
    sub_1B9D9B898(&qword_1EBBE3350, &qword_1B9DD59A0);
    v36 = sub_1B9DD29B8();
    v38 = v37;
    v39 = 0x687361686463;
LABEL_11:
    sub_1B9D9B9C4();
    swift_allocError();
    *v50 = v39;
    *(v50 + 8) = 0xE600000000000000;
    *(v50 + 16) = v36;
    *(v50 + 24) = v38;
    *(v50 + 32) = 1;
    swift_willThrow();
    sub_1B9D9D520(v34, v35);
    return (*(v71 + 8))(v70, v72);
  }

  v40 = v73;
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v22))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v41 = v77;
  v35 = v74;
  sub_1B9D9DB90(v77, v74);
  v42 = sub_1B9DA7C58(v69);
  if (v42 == 2)
  {
    sub_1B9D9D520(v41, v35);

    v43 = sub_1B9DA9E4C();
    v44 = v40;
    v45 = v67;
    (*(v40 + 16))(v67, v43, v3);
    v46 = sub_1B9DD28B8();
    v47 = sub_1B9DD2AC8();
    v34 = v41;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v69;
      _os_log_impl(&dword_1B9D96000, v46, v47, "Invalid reason in database: %lld", v48, 0xCu);
      MEMORY[0x1BFAE80B0](v48, -1, -1);
    }

    (*(v44 + 8))(v45, v3);
    v75 = v69;
    v36 = sub_1B9DD2C08();
    v38 = v49;
    v39 = 0x6E6F73616572;
    goto LABEL_11;
  }

  v51 = v42;
  v52 = v22;
  v53 = sub_1B9DD2728();
  (*(*(v53 - 8) + 56))(v14, 1, 1, v53);
  v54 = v66;
  if (v28)
  {
    sub_1B9DD2708();

    sub_1B9DA429C(v14, &qword_1EBBE31C8, &unk_1B9DD5340);
    sub_1B9DA802C(v54, v14);
  }

  v55 = v70;
  v56 = v71;
  v57 = v65;
  v58 = v72;
  (*(v71 + 16))(v65, v70, v72);
  v59 = nullsub_1(v64);
  sub_1B9DA436C(v14, v54, &qword_1EBBE31C8, &unk_1B9DD5340);
  v60 = v51 & 1;
  v61 = v52;
  v62 = v77;
  v63 = v74;
  sub_1B9DA7F60(v61, v77, v74, v57, v60, v59, v54, v68);
  sub_1B9D9D520(v62, v63);
  sub_1B9DA429C(v14, &qword_1EBBE31C8, &unk_1B9DD5340);
  return (*(v56 + 8))(v55, v58);
}

uint64_t sub_1B9DA9590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = _s18LaunchWarningEntryVMa();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1B9DD2B88();
  MEMORY[0x1BFAE6A10](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1BFAE6A10](0xD000000000000035, 0x80000001B9DDDE30);
  MEMORY[0x1BFAE6A10](0xD000000000000035, 0x80000001B9DDDE70);

  sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DA99E4, a1, sub_1B9DA9D00, v5);

  if (v2)
  {
  }

  swift_beginAccess();
  sub_1B9DA436C(v7, a2, &qword_1EBBE3358, &qword_1B9DD5750);
}

uint64_t sub_1B9DA9784(uint64_t a1)
{
  v3 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v16 - v5);
  v7 = type metadata accessor for LaunchWarningDetails();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  result = sub_1B9DA8E9C(a1, v10);
  if (!v1)
  {
    v13 = (*(*a1 + 176))(6);
    result = (*(*a1 + 160))(7);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v14 = result;
      v15 = _s18LaunchWarningEntryVMa();
      sub_1B9DA9A3C(v10, v6 + *(v15 + 20), type metadata accessor for LaunchWarningDetails);
      *v6 = v14;
      *(v6 + *(v15 + 24)) = v13 & 1;
      (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
      swift_beginAccess();
      return sub_1B9DA9C90(v6, v11);
    }
  }

  return result;
}

uint64_t _s18LaunchWarningEntryVMa()
{
  result = qword_1EBBE3470;
  if (!qword_1EBBE3470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9DA99E4(uint64_t a1)
{
  result = *(v1 + 24);
  if ((result & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 152))();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9DA9A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B9DA9AA8()
{
  result = qword_1EBBE3360;
  if (!qword_1EBBE3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningDBError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LaunchWarningDBError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B9DA9C0C()
{
  result = type metadata accessor for LaunchWarningDetails();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9DA9C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DA9D78(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B9DD28D8();
  sub_1B9DA8D8C(v3, a2);
  sub_1B9DA86B4(v3, a2);

  return sub_1B9DD28C8();
}

uint64_t sub_1B9DA9E9C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B9DD28D8();
  sub_1B9DA8D8C(v3, a2);
  sub_1B9DA86B4(v3, a2);
  return sub_1B9DD28C8();
}

uint64_t sub_1B9DA9F44(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B9DD28D8();

  return sub_1B9DA86B4(v3, a2);
}

Swift::String __swiftcall MISError.hexString()()
{
  sub_1B9DAA004();
  v0 = sub_1B9DD2A48();
  MEMORY[0x1BFAE6A10](v0);

  v1 = 30768;
  v2 = 0xE200000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_1B9DAA004()
{
  result = qword_1EBBE3368;
  if (!qword_1EBBE3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3368);
  }

  return result;
}

uint64_t sub_1B9DAA058(uint64_t *a1)
{
  staticCode[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B9DD2728();
  v136 = *(v2 - 8);
  v137 = v2;
  v3 = *(v136 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v127 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v134 = &v127 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v131 = &v127 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v127 - v14;
  v15 = sub_1B9DD28D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v127 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v133 = (&v127 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v132 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v127 - v28;
  staticCode[0] = 0;
  v135 = a1;
  v29 = sub_1B9DD26C8();
  v30 = SecStaticCodeCreateWithPath(v29, 0, staticCode);

  if (v30 || !staticCode[0])
  {
    v36 = sub_1B9DA9F20();
    v37 = v16;
    v38 = *(v16 + 16);
    v134 = v15;
    v38(v20, v36, v15);
    v39 = v136;
    v40 = v137;
    (*(v136 + 16))(v6, v135, v137);
    v41 = sub_1B9DD28B8();
    v42 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v141 = v133;
      *v43 = 67109378;
      *(v43 + 4) = v30;
      *(v43 + 8) = 2082;
      v44 = sub_1B9DD26F8();
      v135 = v37;
      v46 = v45;
      (*(v39 + 8))(v6, v137);
      v47 = sub_1B9D9D588(v44, v46, &v141);

      *(v43 + 10) = v47;
      _os_log_impl(&dword_1B9D96000, v41, v42, "Unable to create code object (%d) for: %{public}s", v43, 0x12u);
      v48 = v133;
      sub_1B9D9DB30(v133);
      MEMORY[0x1BFAE80B0](v48, -1, -1);
      MEMORY[0x1BFAE80B0](v43, -1, -1);

      (v135[1])(v20, v134);
    }

    else
    {

      (*(v39 + 8))(v6, v40);
      (*(v37 + 8))(v20, v134);
    }

    sub_1B9DAAE14();
    swift_allocError();
    *v49 = v30;
    *(v49 + 4) = 0;
    swift_willThrow();
    goto LABEL_42;
  }

  information = 0;
  v128 = staticCode[0];
  v31 = SecCodeCopySigningInformation(v128, 0x21u, &information);
  if (v31 || (v32 = information) == 0)
  {
    v50 = v31;
    v51 = sub_1B9DA9F20();
    v52 = v16;
    v53 = *(v16 + 16);
    v54 = v15;
    v53(v23, v51, v15);
    v55 = v136;
    v56 = v137;
    (*(v136 + 16))(v9, v135, v137);
    v41 = sub_1B9DD28B8();
    v57 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v41, v57))
    {
      v58 = swift_slowAlloc();
      v134 = v54;
      v59 = v58;
      v135 = swift_slowAlloc();
      *&v141 = v135;
      *v59 = 67109378;
      v133 = v41;
      v60 = v50;
      *(v59 + 4) = v50;
      *(v59 + 8) = 2082;
      LODWORD(v132) = v57;
      v61 = sub_1B9DD26F8();
      v63 = v62;
      (*(v55 + 8))(v9, v56);
      v64 = sub_1B9D9D588(v61, v63, &v141);
      v50 = v60;

      *(v59 + 10) = v64;
      v41 = v133;
      _os_log_impl(&dword_1B9D96000, v133, v132, "Unable to create signing info (%d) for: %{public}s", v59, 0x12u);
      v65 = v135;
      sub_1B9D9DB30(v135);
      MEMORY[0x1BFAE80B0](v65, -1, -1);
      MEMORY[0x1BFAE80B0](v59, -1, -1);

      (*(v52 + 8))(v23, v134);
    }

    else
    {

      (*(v55 + 8))(v9, v56);
      (*(v52 + 8))(v23, v54);
    }

    sub_1B9DAAE14();
    swift_allocError();
    *v66 = v50;
    *(v66 + 4) = 0;
    swift_willThrow();
    goto LABEL_41;
  }

  *&v139 = *MEMORY[0x1E697B038];
  v33 = v139;
  v34 = v32;
  sub_1B9D9B898(&qword_1EBBE3378, &qword_1B9DD5840);
  v35 = [(__CFDictionary *)v34 __swift_objectForKeyedSubscript:sub_1B9DD2C28()];
  swift_unknownObjectRelease();
  if (v35)
  {
    sub_1B9DD2B38();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  v67 = v16;
  v68 = v137;
  v69 = v134;
  v141 = v139;
  v142 = v140;
  v70 = v15;
  if (!*(&v140 + 1))
  {
    sub_1B9DAAE68(&v141);
LABEL_22:
    v72 = sub_1B9DA9F20();
    v73 = v133;
    (*(v67 + 16))(v133, v72, v15);
    v74 = v67;
    v75 = v136;
    (*(v136 + 16))(v69, v135, v68);
    v76 = v69;
    v77 = sub_1B9DD28B8();
    v78 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v127 = v34;
      v81 = v80;
      *&v141 = v80;
      *v79 = 136446210;
      v82 = sub_1B9DD26F8();
      v83 = v68;
      v84 = v82;
      v134 = v70;
      v86 = v85;
      (*(v75 + 8))(v76, v83);
      v87 = sub_1B9D9D588(v84, v86, &v141);

      *(v79 + 4) = v87;
      _os_log_impl(&dword_1B9D96000, v77, v78, "Unable to get full cdhash information for: %{public}s", v79, 0xCu);
      sub_1B9D9DB30(v81);
      v88 = v81;
      v34 = v127;
      MEMORY[0x1BFAE80B0](v88, -1, -1);
      MEMORY[0x1BFAE80B0](v79, -1, -1);

      v89 = *(v74 + 8);
      v41 = v74 + 8;
      v89(v133, v134);
    }

    else
    {

      (*(v75 + 8))(v76, v68);
      v90 = *(v74 + 8);
      v41 = v74 + 8;
      v90(v73, v70);
    }

    sub_1B9DAAE14();
    swift_allocError();
    *v91 = 0;
    *(v91 + 4) = 1;
    swift_willThrow();

    goto LABEL_41;
  }

  sub_1B9D9B898(&qword_1EBBE3388, &qword_1B9DD5850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v68 = v137;
    v69 = v134;
    goto LABEL_22;
  }

  v71 = v138;
  if ([(__CFDictionary *)v34 __swift_objectForKeyedSubscript:*MEMORY[0x1E697B048]])
  {
    sub_1B9DD2B38();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  v141 = v139;
  v142 = v140;
  v127 = v34;
  if (!*(&v140 + 1))
  {

    sub_1B9DAAE68(&v141);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_34:
    v95 = sub_1B9DA9F20();
    v96 = v132;
    (*(v67 + 16))(v132, v95, v15);
    v97 = v136;
    v98 = v131;
    v99 = v137;
    (*(v136 + 16))(v131, v135, v137);
    v100 = sub_1B9DD28B8();
    v101 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = v98;
      v135 = v67;
      v104 = v99;
      v105 = v102;
      v106 = swift_slowAlloc();
      *&v141 = v106;
      *v105 = 136446210;
      v107 = sub_1B9DD26F8();
      v108 = v97;
      v110 = v109;
      (*(v108 + 8))(v103, v104);
      v111 = sub_1B9D9D588(v107, v110, &v141);

      *(v105 + 4) = v111;
      _os_log_impl(&dword_1B9D96000, v100, v101, "Unable to get best cdhash digest algorithm: %{public}s", v105, 0xCu);
      sub_1B9D9DB30(v106);
      MEMORY[0x1BFAE80B0](v106, -1, -1);
      MEMORY[0x1BFAE80B0](v105, -1, -1);

      (v135[1])(v132, v70);
LABEL_40:
      sub_1B9DAAE14();
      swift_allocError();
      *v124 = 0;
      *(v124 + 4) = 1;
      swift_willThrow();
      v41 = v127;

LABEL_41:
LABEL_42:

      goto LABEL_43;
    }

LABEL_39:

    (*(v97 + 8))(v98, v99);
    (*(v67 + 8))(v96, v70);
    goto LABEL_40;
  }

  if (!*(v71 + 16) || (v41 = v138, v92 = sub_1B9DAAED0(v138), (v93 & 1) == 0))
  {

    v112 = sub_1B9DA9F20();
    v96 = v130;
    (*(v67 + 16))(v130, v112, v70);
    v97 = v136;
    v98 = v129;
    v99 = v137;
    (*(v136 + 16))(v129, v135, v137);
    v100 = sub_1B9DD28B8();
    v113 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v100, v113))
    {
      v114 = swift_slowAlloc();
      v115 = v98;
      v135 = v67;
      v116 = v99;
      v117 = v114;
      v118 = swift_slowAlloc();
      *&v141 = v118;
      *v117 = 136446210;
      v119 = sub_1B9DD26F8();
      v120 = v97;
      v122 = v121;
      (*(v120 + 8))(v115, v116);
      v123 = sub_1B9D9D588(v119, v122, &v141);

      *(v117 + 4) = v123;
      _os_log_impl(&dword_1B9D96000, v100, v113, "Unable to get best cdhash data: %{public}s", v117, 0xCu);
      sub_1B9D9DB30(v118);
      MEMORY[0x1BFAE80B0](v118, -1, -1);
      MEMORY[0x1BFAE80B0](v117, -1, -1);

      (v135[1])(v130, v70);
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v94 = v92;

  sub_1B9D9DB90(*(*(v71 + 56) + 16 * v94), *(*(v71 + 56) + 16 * v94 + 8));

LABEL_43:
  v125 = *MEMORY[0x1E69E9840];
  return v41;
}

unint64_t sub_1B9DAAE14()
{
  result = qword_1EBBE3370;
  if (!qword_1EBBE3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3370);
  }

  return result;
}

uint64_t sub_1B9DAAE68(uint64_t a1)
{
  v2 = sub_1B9D9B898(&qword_1EBBE3380, &qword_1B9DD5848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B9DAAED0(unsigned int a1)
{
  v3 = MEMORY[0x1BFAE6CA0](*(v1 + 40), a1, 4);

  return sub_1B9DAB0EC(a1, v3);
}

uint64_t initializeBufferWithCopyOfBuffer for CodeSignatureError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CodeSignatureError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodeSignatureError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B9DAAF78(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9DAAF94(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

__n128 sub_1B9DAAFC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B9DAAFD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B9DAB02C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1B9DAB0A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1B9DAB0EC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B9DAB158()
{
  sub_1B9D9B898(&qword_1EBBE3350, &qword_1B9DD59A0);
  result = sub_1B9DD26D8();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B9DAB1CC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1B9DD25F8();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B9DD29D8();
  v13 = getxattr(a1, (v12 + 32), 0, 0, 0, 0);

  if (v13 < 0)
  {
    result = MEMORY[0x1BFAE6950](v14);
    if (result == 93)
    {
      *a4 = xmmword_1B9DD5980;
    }

    else
    {
      v20 = result;
      v21 = sub_1B9DD2928();
      if ((v21 & 0x100000000) != 0)
      {
        sub_1B9DABFD4();
        swift_allocError();
        *v23 = v20;
      }

      else
      {
        LODWORD(v26) = v21;
        sub_1B9DAC540(MEMORY[0x1E69E7CC0]);
        sub_1B9DAC650(&qword_1EBBE33C0, MEMORY[0x1E6967EB8]);
        sub_1B9DD2678();
        sub_1B9DD25E8();
        (*(v25 + 8))(v11, v8);
      }

      return swift_willThrow();
    }
  }

  else
  {
    *&v26 = sub_1B9DAC028(v13);
    *(&v26 + 1) = v15;

    v16 = sub_1B9DAC0C8(&v26, a1, a2, a3, v13);

    if (v16 < 0)
    {
      v18 = MEMORY[0x1BFAE6950](result);
      v19 = sub_1B9DD2928();
      if ((v19 & 0x100000000) != 0)
      {
        sub_1B9DABFD4();
        swift_allocError();
        *v22 = v18;
      }

      else
      {
        v27 = v19;
        sub_1B9DAC540(MEMORY[0x1E69E7CC0]);
        sub_1B9DAC650(&qword_1EBBE33C0, MEMORY[0x1E6967EB8]);
        sub_1B9DD2678();
        sub_1B9DD25E8();
        (*(v25 + 8))(v11, v8);
      }

      swift_willThrow();
      return sub_1B9D9D534(v26, *(&v26 + 1));
    }

    else
    {
      *a4 = v26;
    }
  }

  return result;
}

uint64_t sub_1B9DAB53C(const char *a1, uint64_t a2, unint64_t a3)
{
  value[2] = *MEMORY[0x1E69E9840];
  v7 = sub_1B9DD25F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  v39 = v11;
  if ((a3 >> 62) <= 1)
  {
    if (!v12)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v13 = sub_1B9DD29D8();
      v14 = setxattr(a1, (v13 + 32), value, BYTE6(a3), 0, 0);

      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    v38 = v7;
    if (a2 <= a2 >> 32)
    {
      v37 = v8;
      v26 = sub_1B9DD2628();
      if (v26)
      {
        v27 = sub_1B9DD2658();
        if (__OFSUB__(a2, v27))
        {
          goto LABEL_29;
        }

        v26 += a2 - v27;
      }

      sub_1B9DD2648();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v28 = sub_1B9DD29D8();
        v29 = setxattr(a1, (v28 + 32), v26, HIDWORD(a2) - a2, 0, 0);

        v8 = v37;
        v7 = v38;
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 == 2)
  {
    v37 = a1;
    v38 = v3;
    v16 = v8;
    v17 = v7;
    v18 = *(a2 + 16);
    v19 = sub_1B9DD2628();
    if (v19)
    {
      v20 = sub_1B9DD2658();
      if (__OFSUB__(v18, v20))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v19 += v18 - v20;
    }

    v7 = v17;
    sub_1B9DD2648();
    v22 = *(a2 + 16);
    v21 = *(a2 + 24);
    v23 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      v8 = v16;
      v24 = sub_1B9DD29D8();
      v25 = setxattr(v37, (v24 + 32), v19, v23, 0, 0);

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  memset(value, 0, 14);
  v30 = sub_1B9DD29D8();
  v31 = setxattr(a1, (v30 + 32), value, 0, 0, 0);

  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v32 = MEMORY[0x1BFAE6950](result);
  v33 = sub_1B9DD2928();
  if ((v33 & 0x100000000) != 0)
  {
    sub_1B9DABFD4();
    swift_allocError();
    *v35 = v32;
  }

  else
  {
    LODWORD(value[0]) = v33;
    sub_1B9DAC540(MEMORY[0x1E69E7CC0]);
    sub_1B9DAC650(&qword_1EBBE33C0, MEMORY[0x1E6967EB8]);
    v34 = v39;
    sub_1B9DD2678();
    sub_1B9DD25E8();
    (*(v8 + 1))(v34, v7);
  }

  result = swift_willThrow();
LABEL_24:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DAB95C()
{
  v1 = *v0;
  v2 = sub_1B9DD2998();
  v3 = MEMORY[0x1BFAE6A50](v2);

  return v3;
}

uint64_t sub_1B9DAB998()
{
  v1 = *v0;
  sub_1B9DD2998();
  sub_1B9DD29E8();
}

uint64_t sub_1B9DAB9EC()
{
  v1 = *v0;
  sub_1B9DD2998();
  sub_1B9DD2C98();
  sub_1B9DD29E8();
  v2 = sub_1B9DD2CB8();

  return v2;
}

uint64_t sub_1B9DABA68(uint64_t a1, id *a2)
{
  result = sub_1B9DD2978();
  *a2 = 0;
  return result;
}

uint64_t sub_1B9DABAE0(uint64_t a1, id *a2)
{
  v3 = sub_1B9DD2988();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B9DABB60@<X0>(uint64_t *a1@<X8>)
{
  sub_1B9DD2998();
  v2 = sub_1B9DD2968();

  *a1 = v2;
  return result;
}

uint64_t sub_1B9DABBA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B9DD2998();
  v6 = v5;
  if (v4 == sub_1B9DD2998() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B9DD2C18();
  }

  return v9 & 1;
}

uint64_t sub_1B9DABC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B9DD2968();

  *a2 = v5;
  return result;
}

uint64_t sub_1B9DABC74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B9DD2998();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B9DABCA0(uint64_t a1)
{
  v2 = sub_1B9DAC650(&qword_1EBBE3398, type metadata accessor for FileAttributeKey);
  v3 = sub_1B9DAC650(&qword_1EBBE33B0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B9DABD5C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B9D9EA44(a1, &a1[a2]);
  }

  v3 = sub_1B9DD2668();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B9DD2618();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B9DD2748();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1EDCF0828)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDCF0828);
    }
  }
}

uint64_t sub_1B9DABE78(const char *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1B9DAB53C(a1, v1[2], v1[3]);
}

uint64_t getEnumTagSinglePayload for UtilitiesError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UtilitiesError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1B9DABFD4()
{
  result = qword_1EBBE33B8;
  if (!qword_1EBBE33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE33B8);
  }

  return result;
}

uint64_t sub_1B9DAC028(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1B9DD2668();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1B9DD2638();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B9DD2748();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B9DAC0C8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v24 = sub_1B9DD29D8();
      swift_bridgeObjectRetain_n();
      v11 = getxattr(a2, (v24 + 32), &value, a5, 0, 0);
      swift_bridgeObjectRelease_n();

      goto LABEL_20;
    }

    swift_bridgeObjectRetain_n();
    sub_1B9D9DB90(v8, v7);
    sub_1B9D9D534(v8, v7);
    *&value = v8;
    *(&value + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1B9DD5990;
    sub_1B9D9D534(0, 0xC000000000000000);
    sub_1B9DD2738();
    v14 = *(value + 16);

    result = sub_1B9DD2628();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = result;
    v17 = sub_1B9DD2658();
    v18 = v14 - v17;
    if (!__OFSUB__(v14, v17))
    {
      sub_1B9DD2648();
      v19 = sub_1B9DD29D8();
      v11 = getxattr(a2, (v19 + 32), (v16 + v18), a5, 0, 0);
      swift_bridgeObjectRelease_n();

      v20 = *(&value + 1) | 0x8000000000000000;
      *a1 = value;
LABEL_19:
      a1[1] = v20;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
    swift_bridgeObjectRetain_n();
    sub_1B9D9D534(v8, v7);
    *&value = v8;
    WORD4(value) = v7;
    BYTE10(value) = BYTE2(v7);
    BYTE11(value) = BYTE3(v7);
    BYTE12(value) = BYTE4(v7);
    BYTE13(value) = BYTE5(v7);
    BYTE14(value) = BYTE6(v7);
    v10 = sub_1B9DD29D8();
    v11 = getxattr(a2, (v10 + 32), &value, a5, 0, 0);

    v12 = value;
    v13 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
    swift_bridgeObjectRelease_n();
    *a1 = v12;
    a1[1] = v13;
LABEL_20:
    v33 = *MEMORY[0x1E69E9840];
    return v11;
  }

  v21 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  swift_bridgeObjectRetain_n();
  sub_1B9D9DB90(v8, v7);
  sub_1B9D9D534(v8, v7);
  *a1 = xmmword_1B9DD5990;
  sub_1B9D9D534(0, 0xC000000000000000);
  v22 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v22 < v8)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_1B9DD2628() && __OFSUB__(v8, sub_1B9DD2658()))
    {
LABEL_25:
      __break(1u);
    }

    v25 = sub_1B9DD2668();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_1B9DD2608();

    v21 = v28;
  }

  if (v22 < v8)
  {
    goto LABEL_22;
  }

  result = sub_1B9DD2628();
  if (result)
  {
    v29 = result;
    v30 = sub_1B9DD2658();
    v31 = v8 - v30;
    if (!__OFSUB__(v8, v30))
    {
      sub_1B9DD2648();
      v32 = sub_1B9DD29D8();
      v11 = getxattr(a2, (v32 + 32), (v29 + v31), a5, 0, 0);

      swift_bridgeObjectRelease_n();

      v20 = v21 | 0x4000000000000000;
      *a1 = v8;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B9DAC540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
    v3 = sub_1B9DD2BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B9DAC698(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B9DA3874(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B9DA4230(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B9DAC650(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9DAC698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3248, &unk_1B9DD5BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DAC708(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B9DD27B8();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_1B9D9DB90(a1, a2);
  sub_1B9DD27C8();
  sub_1B9DAC934();
  sub_1B9DD2B28();
  if (v24)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v20 = xmmword_1B9DD5BC0;
    v11 = MEMORY[0x1E69E7558];
    do
    {
      v12 = v23;
      sub_1B9D9B898(&qword_1EBBE33C8, &qword_1B9DD5BD0);
      v13 = swift_allocObject();
      *(v13 + 16) = v20;
      *(v13 + 56) = MEMORY[0x1E69E7508];
      *(v13 + 64) = v11;
      *(v13 + 32) = v12;
      v14 = sub_1B9DD29A8();
      v16 = v15;
      v21 = v9;
      v22 = v10;

      MEMORY[0x1BFAE6A10](v14, v16);

      v9 = v21;
      v10 = v22;
      sub_1B9DD2B28();
    }

    while (v24 != 1);
  }

  (*(v19 + 8))(v7, v4);
  return v9;
}

unint64_t sub_1B9DAC934()
{
  result = qword_1EBBE3390;
  if (!qword_1EBBE3390)
  {
    sub_1B9DD27B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3390);
  }

  return result;
}

uint64_t sub_1B9DAC98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = sub_1B9DD28D8();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B9DD2728();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = sub_1B9DD26C8();
  Unique = _CFBundleCreateUnique();

  if (Unique)
  {
    v17 = CFBundleCopyExecutableURL(Unique);
    if (v17)
    {
      v18 = v17;
      v38 = a2;
      sub_1B9DD26E8();
      v19 = sub_1B9DA9F20();
      v20 = v4;
      v21 = *(v4 + 16);
      v22 = v39;
      v21(v7, v19, v39);
      (*(v40 + 16))(v12, v14, v8);
      v23 = sub_1B9DD28B8();
      v24 = sub_1B9DD2AB8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v37 = v20;
        v26 = v25;
        v41 = swift_slowAlloc();
        v27 = v41;
        *v26 = 136315138;
        v36 = v23;
        v35 = sub_1B9DD26F8();
        v29 = v28;
        (*(v40 + 8))(v12, v8);
        v30 = sub_1B9D9D588(v35, v29, &v41);

        *(v26 + 4) = v30;
        v31 = v36;
        _os_log_impl(&dword_1B9D96000, v36, v24, "Switched to checking executable url: %s", v26, 0xCu);
        sub_1B9D9DB30(v27);
        MEMORY[0x1BFAE80B0](v27, -1, -1);
        MEMORY[0x1BFAE80B0](v26, -1, -1);

        (*(v37 + 8))(v7, v39);
      }

      else
      {

        (*(v40 + 8))(v12, v8);
        (*(v20 + 8))(v7, v22);
      }

      return (*(v40 + 32))(v38, v14, v8);
    }
  }

  v32 = *(v40 + 16);

  return v32(a2, a1, v8);
}

id sub_1B9DACEC4(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = sub_1B9DD28D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B9DA843C())
  {
    v45 = v1;
    v17 = sub_1B9DA9F20();
    (*(v13 + 16))(v16, v17, v12);
    v18 = v6[2].isa;
    v44 = a1;
    v18(v11, a1, v5);
    v1 = v5;
    a1 = v6;
    v6 = sub_1B9DD28B8();
    v19 = sub_1B9DD2AB8();
    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v2;
      v21 = v20;
      v39 = v20;
      v40 = swift_slowAlloc();
      v47 = v40;
      *v21 = 136315138;
      v41 = v1;
      v42 = a1;
      v22 = v1;
      v38 = sub_1B9DD26F8();
      v24 = v23;
      v25 = *(a1 + 8);
      v25(v11, v22);
      v26 = sub_1B9D9D588(v38, v24, &v47);

      v27 = v39;
      *(v39 + 4) = v26;
      v28 = v19;
      v29 = v27;
      _os_log_impl(&dword_1B9D96000, v6, v28, "Checking warning state for bundle: %s", v27, 0xCu);
      v30 = v40;
      sub_1B9D9DB30(v40);
      MEMORY[0x1BFAE80B0](v30, -1, -1);
      v3 = v43;
      MEMORY[0x1BFAE80B0](v29, -1, -1);

      v31 = v25;
      (*(v13 + 8))(v16, v12);
      v32 = v41;
      goto LABEL_7;
    }
  }

  else
  {
    result = [objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v31 = *(a1 + 8);
  v31(v11, v1);
  (*(v13 + 8))(v16, v12);
  v32 = v1;
LABEL_7:
  v34 = v46;
  sub_1B9DAC98C(v44, v46);
  v35 = (*((*MEMORY[0x1E69E7D40] & *v45) + 0x50))(v34);
  if (v3)
  {
    return (v31)(v34, v32);
  }

  v36 = v35;
  v31(v34, v32);
  return v36;
}

id sub_1B9DAD76C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningClientOperations();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B9DAD7A0(uint64_t a1)
{
  v2 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v60 - v4;
  v6 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v60 - v8;
  v9 = _s18LaunchWarningEntryVMa();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B9DD2728();
  v14 = *(v13 - 8);
  isa = v14[8].isa;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B9DD28D8();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B9DA843C())
  {
    v65 = v12;
    v23 = sub_1B9DA9F20();
    (*(v19 + 16))(v22, v23, v18);
    v24 = v14[2].isa;
    v67 = a1;
    v24(v17, a1, v13);
    v12 = v14;
    v14 = sub_1B9DD28B8();
    v25 = sub_1B9DD2AB8();
    v66 = v13;
    v26 = v25;
    v27 = os_log_type_enabled(v14, v25);
    v64 = v5;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v61 = v28;
      v62 = swift_slowAlloc();
      v72 = v62;
      *v28 = 136315138;
      v29 = v12;
      v63 = v12;
      v30 = sub_1B9DD26F8();
      v32 = v31;
      v33 = v29[1].isa;
      v34 = v17;
      v35 = v66;
      v33(v34, v66);
      v36 = sub_1B9D9D588(v30, v32, &v72);

      v37 = v61;
      *(v61 + 1) = v36;
      v38 = v37;
      _os_log_impl(&dword_1B9D96000, v14, v26, "Checking warning state for url: %s", v37, 0xCu);
      v39 = v62;
      sub_1B9D9DB30(v62);
      MEMORY[0x1BFAE80B0](v39, -1, -1);
      MEMORY[0x1BFAE80B0](v38, -1, -1);

      v41 = *(v19 + 8);
      v40 = v19 + 8;
      v41(v22, v18);
      v42 = v63;
      goto LABEL_7;
    }
  }

  else
  {
    if ([objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0])
    {
      return;
    }

    __break(1u);
  }

  v33 = v12[1].isa;
  v43 = v17;
  v35 = v66;
  v33(v43, v66);
  v44 = *(v19 + 8);
  v40 = v19 + 8;
  v44(v22, v18);
  v42 = v12;
LABEL_7:
  type metadata accessor for LaunchWarningMark();
  v45 = v71;
  v46 = sub_1B9D9E680(v67);
  v71 = v45;
  if (v45)
  {
    return;
  }

  v47 = v46;
  if (v46)
  {
    type metadata accessor for LaunchWarningDB();
    v18 = sub_1B9DA86EC(1);
    v40 = v70;
    v48 = v71;
    sub_1B9DA9590(v47, v70);
    v71 = v48;
    if (v48)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (![objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0])
  {
    __break(1u);
LABEL_14:
    v49 = v69;
    if ((*(v68 + 48))(v40, 1, v69) == 1)
    {
      sub_1B9DAEAC0(v40);
      v49 = [objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0];
      if (v49)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v50 = v40;
    v51 = v49;
    v52 = v65;
    sub_1B9DAEB28(v50, v65);
    v54 = v51 + 20;
    v53 = *(v51 + 5);
    v55 = *(v52 + *(v54 + 1));
    v56 = v52 + v53 + *(type metadata accessor for LaunchWarningDetails() + 36);
    v57 = v64;
    sub_1B9DA7EF0(v56, v64);
    v58 = 0;
    if ((v42[6].isa)(v57, 1, v35) != 1)
    {
      v58 = sub_1B9DD26C8();
      v33(v57, v35);
    }

    v59 = [objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:1 withUserOverridden:v55 withKBURL:v58];

    if (!v59)
    {
      __break(1u);
      return;
    }

    sub_1B9DAEB8C(v65);
LABEL_11:
  }
}