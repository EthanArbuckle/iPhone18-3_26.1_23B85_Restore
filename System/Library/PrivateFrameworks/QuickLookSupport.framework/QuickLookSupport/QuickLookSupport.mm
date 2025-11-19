id QLPreviewCopyEmbeddedIWorkData(void *a1, void *a2, void *a3, void *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v40 = a2;
  v44 = a3;
  v42 = a4;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy_;
  v62 = __Block_byref_object_dispose_;
  v63 = 0;
  v39 = [(__CFString *)v7 path];
  v57 = 0;
  v8 = *MEMORY[0x277CBE868];
  v56 = 0;
  LOBYTE(a4) = [(__CFString *)v7 getResourceValue:&v57 forKey:v8 error:&v56];
  v43 = v57;
  v41 = v56;
  if ((a4 & 1) == 0)
  {
    v23 = generationLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      QLPreviewCopyEmbeddedIWorkData_cold_1();
    }

    v24 = v7 == 0;
    goto LABEL_25;
  }

  if (!v7)
  {
    v24 = 1;
LABEL_25:
    v22 = 1;
    goto LABEL_26;
  }

  if (![v43 BOOLValue])
  {
    v24 = 0;
    goto LABEL_25;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v42;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v9)
  {
    v11 = *v53;
    v12 = *MEMORY[0x277CCA050];
    *&v10 = 138412290;
    v37 = v10;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v53 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = [(__CFString *)v7 URLByAppendingPathComponent:*(*(&v52 + 1) + 8 * v13), v37];
      v15 = objc_alloc(MEMORY[0x277CBEA90]);
      v51 = 0;
      v16 = [v15 initWithContentsOfURL:v14 options:1 error:&v51];
      v17 = v51;
      v18 = v59[5];
      v59[5] = v16;

      if (v59[5])
      {
        v33 = generationLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2615AE000, v33, OS_LOG_TYPE_INFO, "Returning thumbnail or preview found inside iWork bundle", buf, 2u);
        }

        v22 = 0;
        goto LABEL_44;
      }

      v19 = [(__CFString *)v17 domain];
      if (![v19 isEqualToString:v12])
      {
        break;
      }

      v20 = [(__CFString *)v17 code]== 4;

      if (!v20)
      {
        goto LABEL_14;
      }

LABEL_17:

      if (v9 == ++v13)
      {
        v9 = [obj countByEnumeratingWithState:&v52 objects:v69 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_19;
      }
    }

LABEL_14:
    v21 = generationLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = v37;
      v65 = v17;
      _os_log_error_impl(&dword_2615AE000, v21, OS_LOG_TYPE_ERROR, "Couldn't read thumbnail or preview inside iWork bundle: %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_19:
  v22 = 1;
LABEL_44:

  v24 = 0;
LABEL_26:
  if (!v59[5])
  {
    v25 = generationLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2615AE000, v25, OS_LOG_TYPE_INFO, "No iWork thumbnail or preview found inside bundle", buf, 2u);
    }
  }

  if (!v22)
  {
    goto LABEL_40;
  }

  if ([QLUTIManager contentTypeIsIWorkType:v44])
  {
    if (v24)
    {
      if (!v40)
      {
        v31 = 0;
LABEL_46:
        v34 = generationLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = @"archive data";
          if (!v24)
          {
            v36 = v7;
          }

          *buf = 138412546;
          v65 = v36;
          v66 = 2112;
          v67 = v31;
          _os_log_error_impl(&dword_2615AE000, v34, OS_LOG_TYPE_ERROR, "Hit error trying to read %@: %@", buf, 0x16u);
        }

        goto LABEL_48;
      }

      v49 = 0;
      v26 = &v49;
      v27 = [[QLZipArchive alloc] initWithData:v40 error:&v49];
    }

    else
    {
      v28 = generationLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = [v39 lastPathComponent];
        QLPreviewCopyEmbeddedIWorkData_cold_2(v29, v68, v28);
      }

      v50 = 0;
      v26 = &v50;
      v27 = [[QLZipArchive alloc] initWithURL:v7 error:&v50];
    }

    v30 = v27;
    v31 = *v26;
    if (v30)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __QLPreviewCopyEmbeddedIWorkData_block_invoke;
      v45[3] = &unk_279ADB2A8;
      v46 = v42;
      v48 = &v58;
      v47 = v7;
      [(QLZipArchive *)v30 enumerateEntriesWithHandler:v45];

LABEL_40:
      v32 = v59[5];
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_48:
  v32 = 0;
LABEL_49:

  _Block_object_dispose(&v58, 8);

  return v32;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id generationLog()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 112);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 112);
  }

  return v1;
}

void __QLPreviewCopyEmbeddedIWorkData_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v7)
  {
    v10 = [v7 url];
    v11 = [v10 relativePath];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = *(a1 + 32);
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v24 = v9;
      v25 = v7;
      v15 = *v28;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v11 rangeOfString:*(*(&v27 + 1) + 8 * i) options:12];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = v17;
            if (!v17 || [v11 characterAtIndex:v17 - 1]== 47 && (v18 == 1 || [v11 rangeOfString:@"/" options:0 range:0, v18 - 1]== 0x7FFFFFFFFFFFFFFFLL))
            {
              v26 = v8;
              v7 = v25;
              v20 = [v25 readDataWithError:&v26];
              v19 = v26;

              v21 = *(*(a1 + 48) + 8);
              v22 = *(v21 + 40);
              *(v21 + 40) = v20;

              v9 = v24;
              if (!*(*(*(a1 + 48) + 8) + 40))
              {
                v23 = generationLog();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  __QLPreviewCopyEmbeddedIWorkData_block_invoke_cold_1(a1, v19, v23);
                }
              }

              *a4 = 1;
              goto LABEL_23;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v19 = v8;
      v9 = v24;
      v7 = v25;
    }

    else
    {
      v19 = v8;
    }

LABEL_23:

    v8 = v19;
  }

  else
  {
    v11 = generationLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __QLPreviewCopyEmbeddedIWorkData_block_invoke_cold_2(v8, v11);
    }
  }

  objc_autoreleasePoolPop(v9);
}

id QLFrameworkBundle()
{
  if (QLFrameworkBundle_onceToken != -1)
  {
    QLFrameworkBundle_cold_1();
  }

  v1 = QLFrameworkBundle_QLBundle;

  return v1;
}

void __QLFrameworkBundle_block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/" isDirectory:1];
  v1 = [v4 URLByAppendingPathComponent:@"System/Library/Frameworks/QuickLook.framework" isDirectory:1];
  v2 = [v0 bundleWithURL:v1];
  v3 = QLFrameworkBundle_QLBundle;
  QLFrameworkBundle_QLBundle = v2;
}

uint64_t QLGuessEncodingForTextFileFromData(void *a1)
{
  v1 = a1;
  if ([v1 length] <= 0x400)
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 subdataWithRange:{0, 1024}];
  }

  v3 = v2;
  v4 = 134217984;
  ucsdet_open();
  [v3 bytes];
  [v3 length];
  ucsdet_setText();
  if (ucsdet_detect() && (Name = ucsdet_getName()) != 0 && (v7 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], Name, 0x8000100u, *MEMORY[0x277CBED00])) != 0)
  {
    v8 = v7;
    v9 = CFStringConvertIANACharSetNameToEncoding(v7);
    CFRelease(v8);
    ucsdet_close();
    if (v9 == 2561)
    {
      v10 = 1056;
    }

    else
    {
      v10 = v9;
    }

    if (v9 == -1)
    {
      v4 = 134217984;
    }

    else
    {
      v4 = v10;
    }
  }

  else
  {
    ucsdet_close();
  }

  return v4;
}

uint64_t QLGuessEncodingForTextFileAtURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v1 path];
    v20 = 0;
    v4 = [v2 attributesOfItemAtPath:v3 error:&v20];
    v5 = v20;
    v6 = [v4 mutableCopy];

    if (v6)
    {
      v7 = [v6 objectForKey:@"NSFileExtendedAttributes"];
      if (v7)
      {
        v8 = v7;
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = [v8 objectForKey:@"com.apple.TextEncoding"];
        v11 = [v9 initWithData:v10 encoding:4];

        v12 = [v11 rangeOfString:@";" options:4];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_9:
          goto LABEL_10;
        }

        v18 = [v11 substringFromIndex:v12 + 1];
        v13 = [v18 integerValue];

        if (v13 != -1)
        {
          v15 = v5;
LABEL_15:

          goto LABEL_16;
        }
      }

LABEL_10:
      v19 = v5;
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v1 options:1 maxLength:1024 error:&v19];
      v15 = v19;

      if (!v14)
      {
        v16 = generationLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          QLGuessEncodingForTextFileAtURL_cold_2();
        }
      }

      v13 = QLGuessEncodingForTextFileFromData(v14);

      goto LABEL_15;
    }

    v8 = generationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      QLGuessEncodingForTextFileAtURL_cold_1();
    }

    goto LABEL_9;
  }

  v13 = 134217984;
LABEL_16:

  return v13;
}

uint64_t QLCheckIsPlatformWithExtensionAuditToken(_OWORD *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  *v11.val = *a1;
  *&v11.val[4] = v1;
  v2 = SecTaskCreateWithAuditToken(0, &v11);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CodeSignStatus = SecTaskGetCodeSignStatus(v2);
  if ((CodeSignStatus & 0x2010) != 0)
  {
    v5 = ((CodeSignStatus & 0x10000001) != 0) & (CodeSignStatus >> 26);
  }

  else
  {
    v5 = 0;
  }

  v6 = generationLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11.val[0] = 67109376;
    v11.val[1] = v5;
    LOWORD(v11.val[2]) = 1024;
    *(&v11.val[2] + 2) = CodeSignStatus;
    _os_log_impl(&dword_2615AE000, v6, OS_LOG_TYPE_INFO, "Code signature is first party: %d (flags : %x)", &v11, 0xEu);
  }

  v7 = SecTaskCopySigningIdentifier(v3, 0);
  if (v7)
  {
    v8 = v7;
    v9 = generationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11.val[0] = 138412290;
      *&v11.val[1] = v8;
      _os_log_impl(&dword_2615AE000, v9, OS_LOG_TYPE_INFO, "Code signature identifier %@", &v11, 0xCu);
    }

    CFRelease(v8);
  }

  CFRelease(v3);
  return v5;
}

const void *_QLDictionaryValueForKey(const __CFDictionary *a1, const void *a2, CFTypeID a3, uint64_t a4)
{
  if (!a1)
  {
    return a4;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a4;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != a3)
  {
    v9 = CFCopyTypeIDDescription(v8);
    v10 = CFCopyTypeIDDescription(a3);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return a4;
  }

  return v7;
}

uint64_t _QLSDictionaryBooleanValueForKey(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    return a3;
  }

  return CFBooleanGetValue(v5);
}

void _QLSDictionarySetBooleanValueForKey(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

uint64_t _QLDictionaryIntValueForKey(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v3;
}

void _QLDictionarySetIntValueForKey(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, int a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a2, a3, v6);
    CFRelease(v7);
  }
}

double _QLDictionaryCGFloatValueForKey(const __CFDictionary *a1, const void *a2, double a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberCGFloatType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v3;
}

void _QLDictionarySetCGFloatValueForKey(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, double a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(a1, kCFNumberCGFloatType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a2, a3, v6);
    CFRelease(v7);
  }
}

float _QLDictionaryFloatValueForKey(const __CFDictionary *a1, const void *a2, float a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v3;
}

void _QLDictionarySetFloatValueForKey(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, float a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(a1, kCFNumberFloatType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a2, a3, v6);
    CFRelease(v7);
  }
}

uint64_t _QLDictionarySInt32ValueForKey(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
        return valuePtr;
      }
    }
  }

  return v3;
}

void _QLDictionarySetSInt32ValueForKey(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, int a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a2, a3, v6);
    CFRelease(v7);
  }
}

const __CFDictionary *_QLSDictionaryGetPointValueForKey(const __CFDictionary *result, const void *a2, CGPoint *a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFDictionaryGetTypeID())
      {
        return CGPointMakeWithDictionaryRepresentation(v4, a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void _QLSDictionarySetPointValueForKey(__CFDictionary *a1, const void *a2, double a3, double a4)
{
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(*&a3);
  if (DictionaryRepresentation)
  {
    v7 = DictionaryRepresentation;
    CFDictionarySetValue(a1, a2, DictionaryRepresentation);

    CFRelease(v7);
  }
}

const __CFDictionary *_QLSDictionaryGetSizeValueForKey(const __CFDictionary *result, const void *a2, CGSize *a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFDictionaryGetTypeID())
      {
        return CGSizeMakeWithDictionaryRepresentation(v4, a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void _QLSDictionarySetSizeValueForKey(__CFDictionary *a1, const void *a2, double a3, double a4)
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&a3);
  if (DictionaryRepresentation)
  {
    v7 = DictionaryRepresentation;
    CFDictionarySetValue(a1, a2, DictionaryRepresentation);

    CFRelease(v7);
  }
}

const __CFDictionary *_QLSDictionaryGetRectValueForKey(const __CFDictionary *result, const void *a2, CGRect *a3)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v4 = result;
      v5 = CFGetTypeID(result);
      if (v5 == CFDictionaryGetTypeID())
      {
        return CGRectMakeWithDictionaryRepresentation(v4, a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void _QLSDictionarySetRectValueForKey(__CFDictionary *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&a3);
  if (DictionaryRepresentation)
  {
    v9 = DictionaryRepresentation;
    CFDictionarySetValue(a1, a2, DictionaryRepresentation);

    CFRelease(v9);
  }
}

void _QLDictionarySetValueForKeyIfExists(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (value)
  {
    CFDictionarySetValue(theDict, key, value);
  }
}

uint64_t _QLSAppPreferencesBooleanValueForKey(const __CFString *a1, unsigned int a2)
{
  keyExistsAndHasValidFormat = 0;
  v4 = *MEMORY[0x277CBF028];
  result = CFPreferencesGetAppBooleanValue(a1, *MEMORY[0x277CBF028], &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    v6 = CFPreferencesGetAppIntegerValue(a1, v4, &keyExistsAndHasValidFormat) != 0;
    if (keyExistsAndHasValidFormat)
    {
      return v6;
    }

    else
    {
      return a2;
    }
  }

  return result;
}

uint64_t _QLSAppPreferencesIntValueForKey(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = CFPreferencesCopyAppValue(a1, *MEMORY[0x277CBF028]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetIntValue(v4);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

uint64_t _QLSAppPreferencesCFIndexValueForKey(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = CFPreferencesCopyAppValue(a1, *MEMORY[0x277CBF028]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberCFIndexType, &valuePtr);
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetIntValue(v4);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

uint64_t _QLSGlobalQuickLookPreferencesBooleanValueForKey(const __CFString *a1, uint64_t Value)
{
  v3 = CFPreferencesCopyValue(a1, @"com.apple.quicklook", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v4);
    }

    CFRelease(v4);
  }

  return Value;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id extensionLog()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 136);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 136);
  }

  return v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2615B1938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _log()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 128);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 128);
  }

  return v1;
}

CGColorSpaceRef QLDrawGrayLinearGradient(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  components[4] = *MEMORY[0x277D85DE8];
  result = CGColorSpaceCreateDeviceGray();
  if (result)
  {
    v30 = result;
    components[0] = a8;
    components[1] = a9;
    components[2] = a12;
    components[3] = a13;
    v31 = CGGradientCreateWithColorComponents(result, components, 0, 2uLL);
    CFRelease(v30);
    if (v31)
    {
      CGContextSaveGState(a1);
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      CGContextClipToRect(a1, v35);
      v33.x = a6;
      v33.y = a7;
      v34.x = a10;
      v34.y = a11;
      CGContextDrawLinearGradient(a1, v31, v33, v34, 0);
      CGContextRestoreGState(a1);
      CFRelease(v31);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t QLDrawLinearGradient(CGColor *a1, void *a2, CGContext *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  values[2] = *MEMORY[0x277D85DE8];
  ColorSpace = CGColorGetColorSpace(a1);
  values[0] = a1;
  values[1] = a2;
  v23 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
  v24 = CGGradientCreateWithColors(ColorSpace, v23, 0);
  CFRelease(v23);
  if (!v24)
  {
    return 0;
  }

  CGContextSaveGState(a3);
  v29.origin.x = a4;
  v29.origin.y = a5;
  v29.size.width = a6;
  v29.size.height = a7;
  CGContextClipToRect(a3, v29);
  v27.x = a8;
  v27.y = a9;
  v28.x = a10;
  v28.y = a11;
  CGContextDrawLinearGradient(a3, v24, v27, v28, 0);
  CGContextRestoreGState(a3);
  CFRelease(v24);
  return 1;
}

float64x2_t QLFillOrExceedAtLeastOneDimensionOfSizeInSize(unsigned int a1, float64x2_t result, float64_t a3, double a4, float64_t a5)
{
  v5 = result.f64[0];
  result.f64[1] = a3;
  if (a3 != 0.0 && result.f64[0] != 0.0 && a5 != 0.0 && a4 != 0.0)
  {
    result.f64[0] = a4;
    result.f64[1] = a5;
    if (a5 < a3 && a4 < v5)
    {
      v6 = a3 / a5;
      v7 = v5 / a4;
      if (v6 > v7)
      {
        v6 = v7;
      }

      v8 = vmulq_n_f64(result, v6);
      v9 = vdupq_n_s64(0x412E848000000000uLL);
      v10 = vdivq_f64(vrndaq_f64(vmulq_f64(v8, v9)), v9);
      v11 = vdup_n_s32(a1);
      v12.i64[0] = v11.u32[0];
      v12.i64[1] = v11.u32[1];
      v13 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v12, 0x3FuLL)), vrndpq_f64(v10), v10);
      __asm { FMOV            V1.2D, #1.0 }

      return vbslq_s8(vcgtq_f64(_Q1, v13), _Q1, v13);
    }
  }

  return result;
}

double QLAdaptSizeInSizeWithRounding(int a1, double (*a2)(double), double a3, double a4, double a5, double a6)
{
  v6 = a3;
  if (a4 != 0.0 && a3 != 0.0 && a6 != 0.0 && a5 != 0.0)
  {
    if (a1 || a6 > a4 || a5 > a3)
    {
      if (a4 / a6 <= a3 / a5)
      {
        v8 = round(a5 * (a4 / a6) * 1000000.0);
        v6 = v8 / 1000000.0;
        if (a2)
        {
          v6 = a2(v8 / 1000000.0);
        }
      }

      else
      {
        v7 = round(a6 * (a3 / a5) * 1000000.0);
        if (a2)
        {
          a2(v7 / 1000000.0);
        }
      }

      if (v6 < 1.0)
      {
        return 1.0;
      }
    }

    else
    {
      return a5;
    }
  }

  return v6;
}

double QLAdaptSizeInSize(int a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v6 = CGFloor;
  }

  else
  {
    v6 = 0;
  }

  return QLAdaptSizeInSizeWithRounding(a1, v6, a3, a4, a5, a6);
}

double QLAdaptSizeOutSizeWithRounding(int a1, double (*a2)(double), double a3, double a4, double a5, double a6)
{
  v6 = a3;
  if (a4 != 0.0 && a3 != 0.0 && a6 != 0.0 && a5 != 0.0)
  {
    if (a1 || a6 < a4 || a5 < a3)
    {
      if (a4 / a6 >= a3 / a5)
      {
        v8 = round(a5 * (a4 / a6) * 1000000.0);
        v6 = v8 / 1000000.0;
        if (a2)
        {
          v6 = a2(v8 / 1000000.0);
        }
      }

      else
      {
        v7 = round(a6 * (a3 / a5) * 1000000.0);
        if (a2)
        {
          a2(v7 / 1000000.0);
        }
      }

      if (v6 < 1.0)
      {
        return 1.0;
      }
    }

    else
    {
      return a5;
    }
  }

  return v6;
}

double QLAdaptSizeOutSize(int a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v6 = CGFloor;
  }

  else
  {
    v6 = 0;
  }

  return QLAdaptSizeOutSizeWithRounding(a1, v6, a3, a4, a5, a6);
}

CGFloat QLAdaptSizeToRectWithRounding2(int a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __QLAdaptSizeToRectWithRounding2_block_invoke;
  v31[3] = &__block_descriptor_40_e8_d16__0d8l;
  v31[4] = a3;
  v17 = MEMORY[0x2667062A0](v31);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __QLAdaptSizeToRectWithRounding2_block_invoke_2;
  v30[3] = &__block_descriptor_40_e8_d16__0d8l;
  v30[4] = a2;
  v18 = MEMORY[0x2667062A0](v30);
  if (a8 <= 0.0 || a9 <= 0.0)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    Width = CGRectGetWidth(v36);
    v26 = v18[2](v18, Width * 0.5);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    Height = CGRectGetHeight(v37);
  }

  else
  {
    v32.origin.x = a4;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    v19 = CGRectGetWidth(v32) / a8;
    v33.origin.x = a4;
    v33.origin.y = a5;
    v33.size.width = a6;
    v33.size.height = a7;
    v20 = CGRectGetHeight(v33) / a9;
    if ((a1 == 0) == v19 < v20)
    {
      v19 = v20;
    }

    v21 = v17[2](v17, a8 * v19);
    if (v21 >= 1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = v17[2](v17, a9 * v19);
    if (v23 >= 1.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1.0;
    }

    v34.origin.x = a4;
    v34.origin.y = a5;
    v34.size.width = a6;
    v34.size.height = a7;
    v25 = CGRectGetWidth(v34);
    v26 = v18[2](v18, (v25 - v22) * 0.5);
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    Height = CGRectGetHeight(v35) - v24;
  }

  v18[2](v18, Height * 0.5);

  return a4 + v26;
}

CGFloat QLAdjustRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  Width = CGRectGetWidth(*&a1);
  rect = a5;
  v27.origin.x = a5;
  v16 = a8;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  if (Width > CGRectGetWidth(v27))
  {
    return a1;
  }

  v17 = a1;
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  Height = CGRectGetHeight(v28);
  v29.origin.x = rect;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = v16;
  if (Height <= CGRectGetHeight(v29))
  {
    v30.origin.x = rect;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = v16;
    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    if (!CGRectContainsRect(v30, v45))
    {
      v31.origin.x = a1;
      v31.origin.y = a2;
      v31.size.width = a3;
      v31.size.height = a4;
      MinX = CGRectGetMinX(v31);
      v32.origin.x = rect;
      v32.origin.y = a6;
      v32.size.width = a7;
      v32.size.height = v16;
      if (MinX < CGRectGetMinX(v32))
      {
        v33.origin.x = rect;
        v33.origin.y = a6;
        v33.size.width = a7;
        v33.size.height = v16;
        v17 = CGRectGetMinX(v33);
      }

      v34.origin.x = v17;
      v34.origin.y = a2;
      v34.size.width = a3;
      v34.size.height = a4;
      MinY = CGRectGetMinY(v34);
      v35.origin.x = rect;
      v35.origin.y = a6;
      v35.size.width = a7;
      v35.size.height = v16;
      if (MinY < CGRectGetMinY(v35))
      {
        v36.origin.x = rect;
        v36.origin.y = a6;
        v36.size.width = a7;
        v36.size.height = v16;
        a2 = CGRectGetMinY(v36);
      }

      v37.origin.x = v17;
      v37.origin.y = a2;
      v37.size.width = a3;
      v37.size.height = a4;
      MaxX = CGRectGetMaxX(v37);
      v38.origin.x = rect;
      v38.origin.y = a6;
      v38.size.width = a7;
      v38.size.height = v16;
      if (MaxX > CGRectGetMaxX(v38))
      {
        v39.origin.x = rect;
        v39.origin.y = a6;
        v39.size.width = a7;
        v39.size.height = v16;
        v21 = CGRectGetMaxX(v39);
        v40.origin.x = v17;
        v40.origin.y = a2;
        v40.size.width = a3;
        v40.size.height = a4;
        v17 = v21 - CGRectGetWidth(v40);
      }

      v41.origin.x = v17;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      MaxY = CGRectGetMaxY(v41);
      v42.origin.x = rect;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = v16;
      if (MaxY > CGRectGetMaxY(v42))
      {
        v43.origin.x = rect;
        v43.origin.y = a6;
        v43.size.width = a7;
        v43.size.height = v16;
        CGRectGetMaxY(v43);
        v44.origin.x = v17;
        v44.origin.y = a2;
        v44.size.width = a3;
        v44.size.height = a4;
        CGRectGetHeight(v44);
      }
    }
  }

  return v17;
}

void QLDrawDebugRect(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v23 = *MEMORY[0x277D85DE8];
  CGContextSaveGState(a1);
  QLContextSetRGBStrokeColor(a1, a6, a7, a8, 1.0);
  CGContextSetLineWidth(a1, 2.0);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGContextStrokeRect(a1, v24);
  points.x = a2;
  points.y = a3;
  v17 = a2 + a4;
  v18 = a3 + a5;
  v19 = a2;
  v20 = a3 + a5;
  v21 = a2 + a4;
  v22 = a3;
  CGContextStrokeLineSegments(a1, &points, 4uLL);
  CGContextRestoreGState(a1);
}

void QLDrawLockIcon(CGContext *a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7)
{
  v12 = a4 * a7;
  v13 = a5 * a7;
  GenericGray = CGColorCreateGenericGray(0.98, 1.0);
  CGContextSetFillColorWithColor(a1, GenericGray);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = v12;
  v26.size.height = v13;
  CGContextFillRect(a1, v26);
  CFRelease(GenericGray);
  v24 = objc_opt_new();
  [v24 setPointSize:a6];
  [v24 setSymbolWeight:6];
  [v24 setScale:a7];
  v15 = [objc_alloc(MEMORY[0x277D1B168]) initWithSymbolName:@"lock.fill" bundleURL:0];
  v16 = [v15 imageForDescriptor:v24];
  v17 = [v16 CGImage];

  CGImageGetSizeAfterOrientation();
  v19 = v18;
  v21 = v20;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = v12;
  v27.size.height = v13;
  v22 = CGRectGetMidX(v27) - v19 * 0.5;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = v12;
  v28.size.height = v13;
  v23 = CGRectGetMidY(v28) - v21 * 0.5;
  CGContextSetAlpha(a1, 0.36);
  v29.origin.x = v22;
  v29.origin.y = v23;
  v29.size.width = v19;
  v29.size.height = v21;
  CGContextDrawImage(a1, v29, v17);
}

double QLGetCGPDFPageRect(CGPDFPage *a1, CGPDFBox a2)
{
  if (!a1)
  {
    return *MEMORY[0x277CBF3A0];
  }

  BoxRect = CGPDFPageGetBoxRect(a1, a2);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v10 = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectIntersection(v9, v10);
  CGPDFPageGetRotationAngle(a1);
  return *MEMORY[0x277CBF348];
}

double QLGetCGPDFPageProxyRect(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    [v5 rectForBox:a2];
    v8 = v7;
    [v6 rotation];
    if (a3)
    {
      v8 = *MEMORY[0x277CBF348];
    }
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
  }

  return v8;
}

CGFloat QLDrawPDFPage(CGContext *a1, void *a2, CGPDFBox a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = [a2 pageRef];

  return QLDrawCGPDFPage(a1, v13, a3, a4, a5, a6, a7);
}

CGFloat QLDrawCGPDFPage(CGContext *a1, CGPDFPage *a2, CGPDFBox a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  QLContextSetGrayFillColor(a1, 1.0, 1.0);
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  CGContextFillRect(a1, v19);
  QLGetCGPDFDrawRect(a2, a3, a4, a5, a6, a7);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsEmpty(v20))
  {
    return *MEMORY[0x277CBF3A0];
  }

  QLDrawCGPDFPageInRect(a1, a2, a3, x, y, width, height);
  return x;
}

double QLGetPDFPageRect(void *a1, CGPDFBox a2)
{
  v3 = [a1 pageRef];

  return QLGetCGPDFPageRect(v3, a2);
}

void QLGetCGPDFDrawRect(CGPDFPage *a1, CGPDFBox a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  QLGetCGPDFPageRect(a1, a2);
  if (v10 > 0.0)
  {
    QLAdaptSizeToRectWithRounding2(1, CGFloor, CGCeiling, a3, a4, a5, a6, v10, v11);
  }
}

double QLGetThumbnailSizeSatisfyingParameters(int a1, float64x2_t a2, float64_t a3, float64_t a4, float64_t a5, double a6, double a7)
{
  v7 = a3;
  v8 = a2.f64[0];
  v9 = a6 * a7;
  if (a2.f64[0] <= a6 * a7 || a3 <= v9)
  {
    if (a2.f64[0] >= a3)
    {
      a2.f64[0] = a3;
    }

    v11 = floor(v9 / a2.f64[0]);
    v8 = ceil(v8 * v11);
    v7 = ceil(a3 * v11);
  }

  else
  {
    v12 = a5 * a7;
    if (a2.f64[0] >= a4 * a7 || v7 >= v12)
    {
      v14 = QLAdaptSizeInSizeWithRounding(0, 0, a4 * a7, v12, a2.f64[0], v7);
      if (v14 < v9 || v15 < v9)
      {
        return floor(QLAdaptSizeOutSizeWithRounding(1, 0, v9, v9, v14, v15));
      }

      else
      {
        return ceil(v14);
      }
    }
  }

  if (a1)
  {
    a2.f64[0] = a4;
    *&v8 = *&QLFillOrExceedAtLeastOneDimensionOfSizeInSize(1u, a2, a5, v8, v7);
  }

  return v8;
}

CGFloat QLGetPDFDrawingTransformWithThumbnailSize@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D4>, double a5@<D5>, CGFloat a6, CGFloat a7, double a8, double a9)
{
  if (a5 <= a9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a5 - a9;
  }

  if (a4 <= a8)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = (a4 - a8) * 0.5;
  }

  v12 = a4 / a2;
  v13 = a5 / a3;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (v12 >= v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  *a1 = 0uLL;
  v22.origin.x = a6;
  v22.origin.y = a7;
  v22.size.width = a8;
  v22.size.height = a9;
  v15 = CGRectGetMinX(v22) - v11;
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  CGAffineTransformMakeTranslation(a1, v15, MinY - v10);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, v14, v14);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  result = v21.tx;
  *(a1 + 32) = *&v21.tx;
  return result;
}

BOOL QLGetDrawRectAndTransformWithMinimumDimension(uint64_t a1, _OWORD *a2, float64x2_t a3, double a4, double a5, float64_t a6, CGFloat a7, CGFloat a8, float64_t a9, float64_t a10, double a11)
{
  if (a5 <= 0.0)
  {
    if (a1)
    {
      v37 = *(MEMORY[0x277CBF3A0] + 16);
      *a1 = *MEMORY[0x277CBF3A0];
      *(a1 + 16) = v37;
    }

    if (a2)
    {
      v38 = MEMORY[0x277CBF2C0];
      v39 = *(MEMORY[0x277CBF2C0] + 16);
      *a2 = *MEMORY[0x277CBF2C0];
      a2[1] = v39;
      v36 = *(v38 + 32);
      goto LABEL_16;
    }
  }

  else
  {
    a3.f64[0] = a5;
    v25 = QLGetThumbnailSizeSatisfyingParameters(1, a3, a6, a9, a10, a11, 1.0);
    v27 = v25;
    v28 = v26;
    if (v25 >= a9)
    {
      v29 = a9;
    }

    else
    {
      v29 = v25;
    }

    if (v26 >= a10)
    {
      v30 = a10;
    }

    else
    {
      v30 = v26;
    }

    v31 = QLAdaptSizeToRectWithRounding2(1, CGFloor, CGCeiling, a7, a8, a9, a10, v29, v30);
    if (a1)
    {
      *a1 = v31;
      *(a1 + 8) = v32;
      *(a1 + 16) = v33;
      *(a1 + 24) = v34;
    }

    if (a2)
    {
      QLGetPDFDrawingTransformWithThumbnailSize(v41, a5, a6, v27, v28, v31, v32, v33, v34);
      v35 = v41[1];
      *a2 = v41[0];
      a2[1] = v35;
      v36 = v41[2];
LABEL_16:
      a2[2] = v36;
    }
  }

  return a5 > 0.0;
}

double QLGetDrawRectFromPageRectWithMinimumDimension(float64x2_t a1, double a2, double a3, float64_t a4, CGFloat a5, CGFloat a6, float64_t a7, float64_t a8, double a9)
{
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v19[0] = *MEMORY[0x277CBF3A0];
  v19[1] = v17;
  QLGetDrawRectAndTransformWithMinimumDimension(v19, 0, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return *v19;
}

double QLGetPDFDrawRectWithMinimumDimension(CGPDFPage *a1, CGPDFBox a2, CGFloat a3, CGFloat a4, float64_t a5, float64_t a6, double a7)
{
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v18[0] = *MEMORY[0x277CBF3A0];
  v18[1] = v12;
  v13.f64[0] = QLGetCGPDFPageRect(a1, a2);
  QLGetDrawRectAndTransformWithMinimumDimension(v18, 0, v13, v14, v15, v16, a3, a4, a5, a6, a7);
  return *v18;
}

void QLGetDrawingTransformForCGPDFPage(CGPDFPage *a1@<X0>, CGPDFBox a2@<W1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v7;
  *(a3 + 32) = *(v6 + 32);
  BoxRect = CGPDFPageGetBoxRect(a1, a2);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  RotationAngle = CGPDFPageGetRotationAngle(a1);
  if (a2)
  {
    v30 = CGPDFPageGetBoxRect(a1, kCGPDFMediaBox);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectIntersection(v20, v30);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  if (RotationAngle > 89)
  {
    if (RotationAngle == 270)
    {
LABEL_12:
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      MaxY = CGRectGetMaxY(v24);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MinX = CGRectGetMinX(v25);
      v15 = xmmword_2615C7990;
      v16 = xmmword_2615C79A0;
      MaxX = -MinX;
      goto LABEL_13;
    }

    if (RotationAngle == 180)
    {
LABEL_14:
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      MaxY = CGRectGetMaxX(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      MaxX = CGRectGetMaxY(v27);
      v18 = 0xBFF0000000000000;
LABEL_16:
      *a3 = v18;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = v18;
      goto LABEL_17;
    }

    if (RotationAngle != 90)
    {
LABEL_15:
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      MaxY = -CGRectGetMinX(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      MaxX = -CGRectGetMinY(v29);
      v18 = 0x3FF0000000000000;
      goto LABEL_16;
    }
  }

  else if (RotationAngle != -270)
  {
    if (RotationAngle != -180)
    {
      if (RotationAngle != -90)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = -CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v15 = xmmword_2615C79B0;
  v16 = xmmword_2615C79C0;
LABEL_13:
  *a3 = v15;
  *(a3 + 16) = v16;
LABEL_17:
  *(a3 + 32) = MaxY;
  *(a3 + 40) = MaxX;
}

CGAffineTransform *QLGetCGPDFDrawingTransform@<X0>(CGAffineTransform *result@<X0>, CGPDFBox a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (result)
  {
    v12 = result;
    v51.origin.x = QLGetCGPDFPageRect(result, a2);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    v17 = CGRectGetWidth(v51);
    v45 = y;
    v46 = x;
    v52.origin.x = x;
    v52.origin.y = y;
    v44 = width;
    v52.size.width = width;
    v52.size.height = height;
    v18 = CGRectGetHeight(v52);
    v19 = 0.0;
    if (v17 == 0.0)
    {
      v21 = a7;
    }

    else
    {
      v20 = v18;
      v21 = a7;
      if (v18 != 0.0)
      {
        v53.origin.x = a4;
        v53.origin.y = a5;
        v53.size.width = a6;
        v53.size.height = a7;
        v22 = CGRectGetWidth(v53) / v17;
        v54.origin.x = a4;
        v54.origin.y = a5;
        v54.size.width = a6;
        v54.size.height = a7;
        v23 = CGRectGetHeight(v54) / v20;
        if (v22 >= v23)
        {
          v19 = ceil(v17 * v23) / v17;
        }

        else
        {
          v19 = ceil(v20 * v22) / v20;
        }
      }
    }

    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    v55.origin.x = a4;
    v55.origin.y = a5;
    v55.size.width = a6;
    v55.size.height = v21;
    MinX = CGRectGetMinX(v55);
    v56.origin.x = a4;
    v56.origin.y = a5;
    v56.size.width = a6;
    v56.size.height = v21;
    MinY = CGRectGetMinY(v56);
    CGAffineTransformMakeTranslation(a3, MinX, MinY);
    v29 = *(a3 + 16);
    *&v49.a = *a3;
    *&v49.c = v29;
    *&v49.tx = *(a3 + 32);
    CGAffineTransformScale(&v50, &v49, v19, v19);
    v30 = *&v50.c;
    *a3 = *&v50.a;
    *(a3 + 16) = v30;
    *(a3 + 32) = *&v50.tx;
    v31 = v46;
    *&v30 = v45;
    v32 = v44;
    v33 = height;
    v34 = -CGRectGetMinX(*(&v30 - 8));
    v57.origin.x = v46;
    v57.origin.y = v45;
    v57.size.width = v44;
    v57.size.height = height;
    v35 = CGRectGetMinY(v57);
    v36 = *(a3 + 16);
    *&v49.a = *a3;
    *&v49.c = v36;
    *&v49.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v50, &v49, v34, -v35);
    v37 = *&v50.c;
    *a3 = *&v50.a;
    *(a3 + 16) = v37;
    *(a3 + 32) = *&v50.tx;
    memset(&v50, 0, sizeof(v50));
    v38 = v46;
    *&v37 = v45;
    v39 = v44;
    v40 = height;
    CGPDFPageGetDrawingTransform(&v50, v12, a2, *(&v37 - 8), 0, 1);
    t1 = v50;
    v41 = *(a3 + 16);
    *&t2.a = *a3;
    *&t2.c = v41;
    *&t2.tx = *(a3 + 32);
    result = CGAffineTransformConcat(&v49, &t1, &t2);
    v42 = *&v49.c;
    *a3 = *&v49.a;
    *(a3 + 16) = v42;
    v26 = *&v49.tx;
  }

  else
  {
    v24 = MEMORY[0x277CBF2C0];
    v25 = *(MEMORY[0x277CBF2C0] + 16);
    *a3 = *MEMORY[0x277CBF2C0];
    *(a3 + 16) = v25;
    v26 = *(v24 + 32);
  }

  *(a3 + 32) = v26;
  return result;
}

CGAffineTransform *QLGetPDFDrawingTransform@<X0>(CGAffineTransform *result@<X0>, CGPDFBox a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  if (result)
  {
    v42.origin.x = QLGetCGPDFPageRect([(CGAffineTransform *)result pageRef], a2);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    v15 = CGRectGetWidth(v42);
    v38 = y;
    v39 = x;
    v43.origin.x = x;
    v43.origin.y = y;
    v37 = width;
    v43.size.width = width;
    v43.size.height = height;
    v16 = CGRectGetHeight(v43);
    v17 = 0.0;
    if (v15 == 0.0)
    {
      v19 = a7;
    }

    else
    {
      v18 = v16;
      v19 = a7;
      if (v16 != 0.0)
      {
        v44.origin.x = a4;
        v44.origin.y = a5;
        v44.size.width = a6;
        v44.size.height = a7;
        v20 = CGRectGetWidth(v44) / v15;
        v45.origin.x = a4;
        v45.origin.y = a5;
        v45.size.width = a6;
        v45.size.height = a7;
        v21 = CGRectGetHeight(v45) / v18;
        if (v20 >= v21)
        {
          v17 = ceil(v15 * v21) / v15;
        }

        else
        {
          v17 = ceil(v18 * v20) / v18;
        }
      }
    }

    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    v46.origin.x = a4;
    v46.origin.y = a5;
    v46.size.width = a6;
    v46.size.height = v19;
    MinX = CGRectGetMinX(v46);
    v47.origin.x = a4;
    v47.origin.y = a5;
    v47.size.width = a6;
    v47.size.height = v19;
    MinY = CGRectGetMinY(v47);
    CGAffineTransformMakeTranslation(a3, MinX, MinY);
    v27 = *(a3 + 16);
    *&v40.a = *a3;
    *&v40.c = v27;
    *&v40.tx = *(a3 + 32);
    CGAffineTransformScale(&v41, &v40, v17, v17);
    v28 = *&v41.c;
    *a3 = *&v41.a;
    *(a3 + 16) = v28;
    *(a3 + 32) = *&v41.tx;
    v29 = v39;
    *&v28 = v38;
    v30 = v37;
    v31 = height;
    v32 = -CGRectGetMinX(*(&v28 - 8));
    v48.origin.x = v39;
    v48.origin.y = v38;
    v48.size.width = v37;
    v48.size.height = height;
    v33 = CGRectGetMinY(v48);
    v34 = *(a3 + 16);
    *&v40.a = *a3;
    *&v40.c = v34;
    *&v40.tx = *(a3 + 32);
    result = CGAffineTransformTranslate(&v41, &v40, v32, -v33);
    v35 = *&v41.c;
    *a3 = *&v41.a;
    *(a3 + 16) = v35;
    v24 = *&v41.tx;
  }

  else
  {
    v22 = MEMORY[0x277CBF2C0];
    v23 = *(MEMORY[0x277CBF2C0] + 16);
    *a3 = *MEMORY[0x277CBF2C0];
    *(a3 + 16) = v23;
    v24 = *(v22 + 32);
  }

  *(a3 + 32) = v24;
  return result;
}

void QLDrawCGPDFPageInRect(CGContext *a1, CGAffineTransform *a2, CGPDFBox a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  CGContextSaveGState(a1);
  v16.origin.x = a4;
  v16.origin.y = a5;
  v16.size.width = a6;
  v16.size.height = a7;
  CGContextClipToRect(a1, v16);
  memset(&v15, 0, sizeof(v15));
  QLGetCGPDFDrawingTransform(a2, a3, &v15, a4, a5, a6, a7);
  v14 = v15;
  CGContextConcatCTM(a1, &v14);
  CGContextDrawPDFPageWithAnnotations();
  CGContextRestoreGState(a1);
}

void QLDrawPDFPageInRectWithTransform(CGContext *a1, CGPDFPage *a2, CGPDFBox a3, _OWORD *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGContextSaveGState(a1);
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  CGContextClipToRect(a1, v18);
  v16 = a4[1];
  *&v17.a = *a4;
  *&v17.c = v16;
  *&v17.tx = a4[2];
  CGContextConcatCTM(a1, &v17);
  QLGetDrawingTransformForCGPDFPage(a2, a3, &v17);
  CGContextConcatCTM(a1, &v17);
  CGContextSetAllowsAntialiasing(a1, 1);
  CGContextSetShouldAntialias(a1, 1);
  CGContextSetTextGreekingThreshold();
  CGContextSetLineWidthThreshold();
  CGContextSetInterpolationQuality(a1, kCGInterpolationHigh);
  CGContextDrawPDFPageWithAnnotations();
  CGContextRestoreGState(a1);
}

void QLDrawPDFPageInRect(CGContext *a1, CGAffineTransform *a2, CGPDFBox a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  QLGetCGPDFDrawingTransform(a2, a3, &v15, a4, a5, a6, a7);
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  QLDrawPDFPageInRectWithTransform(a1, a2, a3, v14, a4, a5, a6, a7);
}

CGFloat QLDrawPDFPageWithMinimumDimension(CGContext *a1, CGPDFPage *a2, CGPDFBox a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  QLContextSetGrayFillColor(a1, 1.0, 1.0);
  v29.origin.x = a4;
  v29.origin.y = a5;
  v29.size.width = a6;
  v29.size.height = a7;
  CGContextFillRect(a1, v29);
  v16 = MEMORY[0x277CBF3A0];
  v17 = *(MEMORY[0x277CBF3A0] + 16);
  v28.origin = *MEMORY[0x277CBF3A0];
  v28.size = v17;
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  v25 = *MEMORY[0x277CBF2C0];
  v26 = v18;
  v27 = *(MEMORY[0x277CBF2C0] + 32);
  v19.f64[0] = QLGetCGPDFPageRect(a2, a3);
  QLGetDrawRectAndTransformWithMinimumDimension(&v28, &v25, v19, v20, v21, v22, a4, a5, a6, a7, a8);
  if (!CGRectIsEmpty(v28))
  {
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    QLDrawPDFPageInRectWithTransform(a1, a2, a3, v24, v28.origin.x, v28.origin.y, v28.size.width, v28.size.height);
    v16 = &v28;
  }

  return v16->origin.x;
}

id QLPlistDataForFile(void *a1, uint64_t a2, _BYTE *a3, char a4)
{
  v7 = a1;
  v8 = [MEMORY[0x277CE1CB8] typeWithIdentifier:a2];
  v9 = *MEMORY[0x277CE1E38];
  if (![v8 conformsToType:*MEMORY[0x277CE1E38]])
  {
    v14 = 0;
    *a3 = 0;
    goto LABEL_21;
  }

  if (a3)
  {
    *a3 = 1;
  }

  if ((a4 & 1) == 0 && ![v8 isEqual:v9])
  {
    v14 = 0;
    goto LABEL_21;
  }

  v21 = 0;
  v10 = *MEMORY[0x277CBE838];
  v20 = 0;
  v11 = [v7 getResourceValue:&v21 forKey:v10 error:&v20];
  v12 = v21;
  v13 = v20;
  if ((v11 & 1) == 0)
  {
    v15 = generationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      QLPlistDataForFile_cold_1();
    }

    v14 = 0;
    v16 = v13;
    goto LABEL_19;
  }

  if ([v12 unsignedLongLongValue] <= 0x500000)
  {
    v19 = v13;
    v15 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7 options:0 error:&v19];
    v16 = v19;

    if (v15)
    {
      v14 = QLPlistDataForData(v15, v8, a3, a4);
    }

    else
    {
      v17 = generationLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        QLPlistDataForFile_cold_2();
      }

      v14 = 0;
    }

LABEL_19:

    v13 = v16;
    goto LABEL_20;
  }

  v14 = 0;
LABEL_20:

LABEL_21:

  return v14;
}

id QLPlistDataForData(void *a1, void *a2, _BYTE *a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = *MEMORY[0x277CE1E38];
  if (![v8 conformsToType:*MEMORY[0x277CE1E38]])
  {
    if (a3)
    {
      v10 = 0;
      *a3 = 0;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    *a3 = 1;
  }

  if (a4)
  {
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = [v8 isEqual:v9];
    v10 = 0;
    if (!v7 || (v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v7 length] > 0x500000)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_20;
  }

  v15 = 0;
  v12 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:&v15 error:0];
  if (v12)
  {
    if (v15 == 200)
    {
      v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:0 error:0];
    }

    else
    {
      v13 = v7;
    }

    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

void sub_2615B59A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id QLSLogHandle()
{
  v0 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v0 = _qlsLogHandle;
  }

  return v0;
}

void sub_2615B7874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t QLUTIManagerTypeIsInternallyClaimedType(uint64_t a1)
{
  v2 = +[QLUTIManager internallyClaimedTypes];
  v3 = [v2 containsObject:a1];

  return v3;
}

void sub_2615B7C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _QLMachDispatchIncomingMessageAndReplyIfNecessary(uint64_t a1, uint64_t (*a2)(uint64_t, vm_address_t), int a3, int a4, _DWORD *a5)
{
  v9 = MEMORY[0x277D85F48];
  v10 = *MEMORY[0x277D85F48];
  if (a5)
  {
    *a5 = 0;
  }

  address = 0;
  v11 = a3 + 68;
  if ((a4 & 0x20000) == 0)
  {
    v11 = a3;
  }

  v12 = -*MEMORY[0x277D85FA0] & (v11 + *MEMORY[0x277D85FA0] - 1);
  v13 = vm_allocate(v10, &address, v12, 335544321);
  if (!v13)
  {
    v14 = a2(a1, address);
    if (a5)
    {
      *a5 = v14;
    }

    v15 = address;
    if ((*address & 0x80000000) == 0 && *(address + 32) == -305)
    {
      *(address + 8) = 0;
    }

    if (v15->msgh_remote_port)
    {
      v16 = voucher_mach_msg_set(v15);
      if ((*address & 0x1F) == 0x12)
      {
        v17 = 1;
      }

      else
      {
        v17 = 17;
      }

      v13 = mach_msg(address, v17 | a4 & 0xFFFFFFFC, *(address + 4), 0, 0, 0, 0);
      v18 = _log_0();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        if (v19)
        {
          _QLMachDispatchIncomingMessageAndReplyIfNecessary_cold_1(v18);
        }

        voucher_mach_msg_clear(address);
      }

      else
      {
        if (v19)
        {
          _QLMachDispatchIncomingMessageAndReplyIfNecessary_cold_2(v18);
        }
      }

      v15 = address;
      if ((v13 - 268435459) <= 1)
      {
        v20 = *(address + 12);
        if (v20 - 1 <= 0xFFFFFFFD && ((*address >> 8) & 0x1Fu) - 17 <= 1)
        {
          mach_port_deallocate(*v9, v20);
        }

        mach_msg_destroy(v15);
        v15 = address;
      }
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x2667064A0](v10, v15, v12);
  }

  return v13;
}

id _log_0()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 144);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 144);
  }

  return v1;
}

uint64_t _QLMachGetMachPortCount()
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v0 = MEMORY[0x277D85F48];
  v1 = MEMORY[0x266705FE0](*MEMORY[0x277D85F48], &v12, &v10 + 4, &v11, &v10);
  if (v1)
  {
    v2 = v1;
    v3 = _log_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _QLMachGetMachPortCount_cold_1(v2);
    }

LABEL_11:

    return HIDWORD(v10);
  }

  v4 = MEMORY[0x2667064A0](*v0, v12, 4 * HIDWORD(v10));
  if (v4)
  {
    v5 = v4;
    v6 = _log_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _QLMachGetMachPortCount_cold_2(v5);
    }
  }

  v7 = MEMORY[0x2667064A0](*v0, v11, 4 * v10);
  if (v7)
  {
    v8 = v7;
    v3 = _log_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _QLMachGetMachPortCount_cold_3(v8);
    }

    goto LABEL_11;
  }

  return HIDWORD(v10);
}

uint64_t _QLMachRequestNoSenderNotification(mach_port_name_t name, mach_port_t notify, int *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0;
  *port_info_out = 0u;
  v16 = 0u;
  previous = 0;
  port_info_outCnt = 10;
  v6 = MEMORY[0x277D85F48];
  v7 = mach_port_request_notification(*MEMORY[0x277D85F48], name, 70, 2u, notify, 0x15u, &previous);
  if (v7)
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (previous)
  {
    mach_port_deallocate(*v6, previous);
  }

  if (a3)
  {
    if (!mach_port_get_attributes(*v6, name, 2, port_info_out, &port_info_outCnt))
    {
      v8 = v16 + port_info_out[1];
      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
LABEL_9:
    *a3 = v8;
  }

LABEL_10:
  v9 = _log_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = mach_error_string(v7);
    if (a3)
    {
      v12 = *a3;
    }

    else
    {
      v12 = -1;
    }

    *buf = 67110146;
    v19 = name;
    v20 = 1024;
    v21 = notify;
    v22 = 2080;
    v23 = v11;
    v24 = 1024;
    v25 = previous;
    v26 = 1024;
    v27 = v12;
    _os_log_debug_impl(&dword_2615AE000, v9, OS_LOG_TYPE_DEBUG, "No sender notification request on %i for %i (%s) - old port: %i - seqno: %i", buf, 0x24u);
  }

  return v7;
}

uint64_t _QLMachGetMinimumSequenceNumber(mach_port_name_t name, _DWORD *a2)
{
  v8 = 0;
  *port_info_out = 0u;
  v7 = 0u;
  port_info_outCnt = 10;
  result = mach_port_get_attributes(*MEMORY[0x277D85F48], name, 2, port_info_out, &port_info_outCnt);
  v4 = v7 + port_info_out[1];
  if (result)
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id QLScaledImageFromImageURL(const __CFURL *a1, int a2, _BYTE *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = CGImageSourceCreateWithURL(a1, 0);
  if (v15)
  {
    v16 = v15;
    v17 = QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSourceAndContentType(v15, a5, a6, a7, a8, 0, a2, a3, a4, 1);
    if (v17)
    {
      v18 = v17;
      v19 = [QLPlatformImage imageWithCGImage:v17 scale:1 orientation:a8];
      CGImageRelease(v18);
    }

    else
    {
      v19 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

CGImageSource *QLScaledPlatformImageFromImageSourceWithOptions(CGImageSource *a1, char a2, double a3, double a4)
{
  v4 = a1;
  v32[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v27 = 0.0;
    valuePtr = 0.0;
    v26 = 1;
    v31 = *MEMORY[0x277CD3648];
    v8 = MEMORY[0x277CBEC38];
    v32[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v10 = CGImageSourceCopyPropertiesAtIndex(v4, 0, v9);
    if (v10)
    {
      v11 = v10;
      Value = CFDictionaryGetValue(v10, *MEMORY[0x277CD3450]);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberCGFloatType, &valuePtr);
      }

      v13 = CFDictionaryGetValue(v11, *MEMORY[0x277CD3448]);
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberCGFloatType, &v27);
      }

      v14 = CFDictionaryGetValue(v11, *MEMORY[0x277CD3410]);
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberIntType, &v26);
      }

      CFRelease(v11);
      v15 = v27;
      v16 = valuePtr;
    }

    else
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    v17 = v16 < a3 && v15 < a3;
    v18 = v16 * v15;
    if (v17 || v18 < a3 * a3)
    {
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
      if (a2)
      {
        v29 = *MEMORY[0x277CD3620];
        v30 = v8;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      }

      else
      {
        v21 = 0;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, PrimaryImageIndex, v21);
      v4 = [QLPlatformImage imageWithCGImage:ImageAtIndex scale:v26 orientation:a4];
      if (ImageAtIndex)
      {
        CFRelease(ImageAtIndex);
      }
    }

    else
    {
      v24 = QLThumbnailingImageIOCreateAndDecodeThumbnailWithImageSource(v4, 0, 0, 3, 1, a3 * a4, a3 * a4);
      if (v24)
      {
        v25 = v24;
        v4 = [QLPlatformImage imageWithCGImage:v24 scale:1 orientation:a4];
        CGImageRelease(v25);
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

unint64_t _QLThumbnailComputeBaselineFromData(uint64_t a1, unint64_t a2, unint64_t a3, vImagePixelCount a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a4 != 64 && a4 != 32 || a3 != 8 && a3 != 16)
  {
    v16 = _log_1();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      return 0;
    }

    LODWORD(buf.data) = 134218240;
    *(&buf.data + 4) = a3;
    WORD2(buf.height) = 2048;
    *(&buf.height + 6) = a4;
    v17 = "image format not supported for baseline alignment (bpc = %zu, bpp = %zu)";
    v18 = v16;
    v19 = 22;
LABEL_14:
    _os_log_impl(&dword_2615AE000, v18, OS_LOG_TYPE_INFO, v17, &buf, v19);
    goto LABEL_15;
  }

  v14 = a6 & 0x1F;
  if (v14 > 7)
  {
LABEL_22:
    v16 = _log_1();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    LODWORD(buf.data) = 67109120;
    HIDWORD(buf.data) = v14;
    v17 = "image format not supported for baseline alignment (alpha info %d)";
    v18 = v16;
    v19 = 8;
    goto LABEL_14;
  }

  if (((1 << v14) & 0xE) == 0)
  {
    if (((1 << v14) & 0x61) != 0)
    {
      return 0;
    }

    if (v14 == 7)
    {
      if (a2)
      {
        return a2 - 1;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_22;
  }

  if (!a7)
  {
    v16 = _log_1();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    LOWORD(buf.data) = 0;
    v17 = "no bitmap data => can't compute baseline alignment";
    goto LABEL_30;
  }

  v20 = a4 / a3;
  v21 = a1 * (a4 / a3);
  v22 = 4 * v21;
  if ((a6 & 0x100) != 0)
  {
    v24 = 4 * v21;
    v23 = malloc_type_malloc(4 * v21, 0x678D930CuLL);
    v22 = v24;
  }

  else
  {
    v23 = 0;
  }

  if (a2 < 2)
  {
LABEL_26:
    if (v23)
    {
      free(v23);
    }

    v16 = _log_1();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    LOWORD(buf.data) = 0;
    v17 = "more than the half of the image is transparent => cancel baseline computation";
LABEL_30:
    v18 = v16;
    v19 = 2;
    goto LABEL_14;
  }

  v25 = 0;
  v26 = (a7 + (a2 - 1) * a5);
  v27 = a4 >> 3;
  v28 = v20 - 1;
  v29 = a2 >> 1;
  v39 = v27 * a1;
  v37 = v20 * a1;
  v38 = 2 * v27 * a1;
  v30 = &v23[4 * v20 * a1];
  v31 = -a5;
  v35 = v22;
  v36 = v29;
  while ((a6 & 0x100) == 0)
  {
    if (v39 >= 1)
    {
      v32 = v26;
      while (v32[v28] <= 0xB0u)
      {
        v32 += v27;
        if (v32 >= &v26[v39])
        {
          goto LABEL_43;
        }
      }

      return v25;
    }

LABEL_43:
    v26 += v31;
    if (++v25 == v29)
    {
      goto LABEL_26;
    }
  }

  v33 = v23;
  bzero(v23, v22);
  buf.data = v26;
  buf.height = 1;
  buf.width = v37;
  buf.rowBytes = v39;
  dest.data = v33;
  dest.height = 1;
  dest.width = v37;
  dest.rowBytes = v38;
  vImageConvert_Planar16FtoPlanarF(&buf, &dest, 0);
  v23 = v33;
  v29 = v36;
  if (v37 < 1)
  {
LABEL_42:
    v22 = v35;
    goto LABEL_43;
  }

  v34 = v33;
  while ((v34[v28] * 255.0) < 177.0)
  {
    v34 += v20;
    if (v34 >= v30)
    {
      goto LABEL_42;
    }
  }

  free(v33);
  return v25;
}

BOOL QLSThumbnailSizeIsSufficientForLowQuality(double a1, double a2, double a3)
{
  v3 = a3 <= 32.0;
  v4 = a2 * 0.5;
  if (a1 / a3 > 0.5)
  {
    v3 = 1;
  }

  return v4 < a1 && v3;
}

id _log_1()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 120);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 120);
  }

  return v1;
}

void _QLIconFlavorResetFlavorMap()
{
  v30[23] = *MEMORY[0x277D85DE8];
  valuePtr = 265;
  v0 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 6;
  v24 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 3;
  v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 520;
  v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 268;
  v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 522;
  v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 1;
  v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 5;
  v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 0;
  v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 4;
  v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = 11;
  v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v22 = [*MEMORY[0x277CE1E20] identifier];
  v29[0] = v22;
  v30[0] = v0;
  v20 = [*MEMORY[0x277CE1E38] identifier];
  v29[1] = v20;
  v30[1] = v0;
  v17 = [*MEMORY[0x277CE1E50] identifier];
  v29[2] = v17;
  v30[2] = v0;
  v16 = [*MEMORY[0x277CE1E58] identifier];
  v29[3] = v16;
  v29[4] = @"org.oasis-open.opendocument.text";
  v30[3] = v0;
  v30[4] = v0;
  v29[5] = @"com.microsoft.word.doc";
  v29[6] = @"org.openxmlformats.wordprocessingml.document";
  v30[5] = v0;
  v30[6] = v0;
  v2 = [*MEMORY[0x277CE1D08] identifier];
  v29[7] = v2;
  v30[7] = v24;
  v3 = [*MEMORY[0x277CE1E00] identifier];
  v29[8] = v3;
  v29[9] = @"com.apple.finder.pictclipping";
  v30[8] = v23;
  v30[9] = v21;
  v29[10] = @"com.adobe.encapsulated-postscript";
  v29[11] = @"com.adobe.illustrator.ai-image";
  v19 = v1;
  v30[10] = v1;
  v30[11] = v1;
  v29[12] = @"com.apple.finder.textclipping";
  v29[13] = @"public.font";
  v30[12] = v18;
  v30[13] = v14;
  v4 = [*MEMORY[0x277CE1DB0] identifier];
  v29[14] = v4;
  v30[14] = v15;
  v5 = [*MEMORY[0x277CE1CF0] identifier];
  v29[15] = v5;
  v30[15] = v25;
  v6 = [*MEMORY[0x277CE1DA8] identifier];
  v29[16] = v6;
  v30[16] = v25;
  v7 = [*MEMORY[0x277CE1EB8] identifier];
  v29[17] = v7;
  v29[18] = @"com.apple.addressbook.person";
  v30[17] = v27;
  v30[18] = v27;
  v29[19] = @"public.calendar-event";
  v29[20] = @"com.apple.ical.bookmark";
  v30[19] = v26;
  v30[20] = v26;
  v8 = [*MEMORY[0x277CE1E30] identifier];
  v29[21] = v8;
  v29[22] = @"com.apple.iwork.keynote.key";
  v30[21] = v14;
  v30[22] = v14;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:23];

  v10 = [v9 mutableCopy];
  v11 = _flavorMapping;
  _flavorMapping = v10;

  v12 = dispatch_queue_create("com.apple.quicklook.iconFlavorMapping", 0);
  v13 = _flavorMappingLock;
  _flavorMappingLock = v12;
}

uint64_t QLIconFlavorDefaultFlavorForType(void *a1)
{
  v1 = a1;
  if (QLIconFlavorDefaultFlavorForType_once != -1)
  {
    QLIconFlavorDefaultFlavorForType_cold_1();
  }

  v2 = [QLUTIManager findAndStoreValueInTypeKeyedDictionary:_flavorMapping forType:v1 withDescription:@"icon flavor" withQueue:_flavorMappingLock validationBlock:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 257;
  }

  return v4;
}

double QLThumbnailingImageIOGetSizeFromImageProperties(const __CFDictionary *a1)
{
  v1 = *MEMORY[0x277CBF3A8];
  if (a1)
  {
    v15 = 0.0;
    valuePtr = 0.0;
    v3 = *MEMORY[0x277CD3450];
    TypeID = CFNumberGetTypeID();
    v5 = _QLDictionaryValueForKey(a1, v3, TypeID, 0);
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberCGFloatType, &valuePtr);
    }

    v6 = *MEMORY[0x277CD3448];
    v7 = CFNumberGetTypeID();
    v8 = _QLDictionaryValueForKey(a1, v6, v7, 0);
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberCGFloatType, &v15);
      v9 = valuePtr;
      if (valuePtr != 0.0)
      {
        v10 = v15;
        if (v15 != 0.0)
        {
          v11 = _QLDictionaryIntValueForKey(a1, *MEMORY[0x277CD3410], 0xFFFFFFFFLL);
          if (v11 == -1)
          {
            v12 = *MEMORY[0x277CD3490];
            v13 = CFDictionaryGetTypeID();
            if (!_QLDictionaryValueForKey(a1, v12, v13, 0))
            {
              return v9;
            }

            v11 = _QLDictionaryIntValueForKey(a1, *MEMORY[0x277CD34B8], 0xFFFFFFFFLL);
          }

          if ((v11 - 5) >= 4)
          {
            return v9;
          }

          else
          {
            return v10;
          }
        }
      }
    }
  }

  return v1;
}

double QLThumbnailingImageIOGetSizeFromImageSourceAtIndex(CGImageSource *a1, size_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CD3648];
  v10[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = CGImageSourceCopyPropertiesAtIndex(a1, a2, v4);
  if (v5)
  {
    v6 = v5;
    v7 = QLThumbnailingImageIOGetSizeFromImageProperties(v5);
    CFRelease(v6);
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
  }

  return v7;
}

CGImageSource *QLThumbnailingImageIOCreateThumbnailFromData(const __CFData *a1, _BYTE *a2, double a3, double a4)
{
  result = CGImageSourceCreateWithData(a1, 0);
  if (result)
  {
    v8 = result;
    v9 = _QLThumbnailingImageIOCreateSimpleThumbnailWithImageSource(result, 0, a2, 0, 0, 0, a3, a4);
    CFRelease(v8);
    return v9;
  }

  return result;
}

CGImage *_QLThumbnailingImageIOCreateSimpleThumbnailWithImageSource(CGImageSource *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8)
{
  v37[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v14 = a7;
    if (a7 < a8)
    {
      a7 = a8;
    }

    v16 = MEMORY[0x277CBEB38];
    v17 = *MEMORY[0x277CD3578];
    v18 = MEMORY[0x277CBEC38];
    v37[0] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:{a7, v17, *MEMORY[0x277CD3660]}];
    v37[1] = v19;
    v36[2] = *MEMORY[0x277CD3658];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    v21 = *MEMORY[0x277CD3570];
    v37[2] = v20;
    v37[3] = MEMORY[0x277CBEC28];
    v22 = *MEMORY[0x277CD3648];
    v36[3] = v21;
    v36[4] = v22;
    v37[4] = v18;
    v36[5] = *MEMORY[0x277CD3620];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a4];
    v24 = *MEMORY[0x277CD3678];
    v37[5] = v23;
    v37[6] = v18;
    v25 = *MEMORY[0x277CD3638];
    v36[6] = v24;
    v36[7] = v25;
    v37[7] = v18;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:8];
    v27 = [v16 dictionaryWithDictionary:v26];

    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a1);
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, PrimaryImageIndex, v27);
    if (ThumbnailAtIndex)
    {
      v30 = ThumbnailAtIndex;
      Width = CGImageGetWidth(ThumbnailAtIndex);
      v32 = a8 <= CGImageGetHeight(v30) || v14 <= Width;
      if (a6)
      {
        v33 = 0;
      }

      else
      {
        v33 = QLThumbnailingImageIOCanEfficientlyThumbnailImageSource(a1) ^ 1;
      }

      if (a2)
      {
        v34 = 1;
      }

      else
      {
        v34 = v32;
      }

      if (v34 & 1) != 0 || (v33)
      {
        if (a3 && v14 > CGImageGetWidth(v30) && a8 > CGImageGetHeight(v30))
        {
          *a3 = 1;
        }

        goto LABEL_19;
      }

      CGImageRelease(v30);
    }

    [(__CFDictionary *)v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD3568]];
    v30 = CGImageSourceCreateThumbnailAtIndex(a1, PrimaryImageIndex, v27);
LABEL_19:

    return v30;
  }

  return 0;
}

unint64_t QLThumbnailingImageIOExpectedMemoryUsageForImageSourceThumbnail(CGImageSource *a1, double a2, double a3, double a4)
{
  v27[1] = *MEMORY[0x277D85DE8];
  Type = CGImageSourceGetType(a1);
  if (!Type)
  {
    return 0;
  }

  v9 = Type;
  v26 = *MEMORY[0x277CD3648];
  v27[0] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v11 = CGImageSourceCopyPropertiesAtIndex(a1, 0, v10);
  v12 = QLThumbnailingImageIOGetSizeFromImageSourceAtIndex(a1, 0);
  v14 = v13;
  v15 = [(__CFDictionary *)v11 objectForKeyedSubscript:*MEMORY[0x277CD2F38]];
  v16 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v9];
  v17 = ([v15 intValue] / 2);
  v18 = (v12 * v14 * v17);
  v19 = a2 * a4;
  v20 = a3 * a4;
  v21 = (v20 * (v19 * v17));
  if ([v16 conformsToType:*MEMORY[0x277CE1DC0]])
  {
    if (v12 * 0.125 < v19 || v14 * 0.125 < v20)
    {
      if (v12 * 0.25 < v19 || v14 * 0.25 < v20)
      {
        if (v14 * 0.5 < v20 || v12 * 0.5 < v19)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 4;
      }
    }

    else
    {
      v23 = 8;
    }

    v18 = 2 * (v18 / (v23 * v23) + v21);
  }

  else if ([v16 conformsToType:*MEMORY[0x277CE1D90]])
  {
    v18 = 4 * v21;
  }

  else if ([v16 conformsToType:*MEMORY[0x277CE1E10]])
  {
    v18 *= 3;
  }

  return v18;
}

uint64_t QLThumbnailingImageIOCanEfficientlyThumbnailImageSource(CGImageSource *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1CB8] typeWithIdentifier:CGImageSourceGetType(a1)];
  v14 = *MEMORY[0x277CD3648];
  v15[0] = MEMORY[0x277CBEC38];
  v3 = 1;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v5 = CGImageSourceCopyPropertiesAtIndex(a1, 0, v4);
  v6 = QLThumbnailingImageIOGetSizeFromImageSourceAtIndex(a1, 0);
  v8 = v7;
  v9 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CD2F38]];
  if ((v6 * v8 * [v9 integerValue] * 0.125) >= 16777217)
  {
    if ([v2 conformsToType:*MEMORY[0x277CE1DC0]])
    {
LABEL_3:
      v3 = 1;
      goto LABEL_6;
    }

    v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*MEMORY[0x277CC20D0]];
    v3 = [v2 conformsToType:v10];
    if ((v3 & 1) == 0)
    {
      v12 = [v2 conformsToType:*MEMORY[0x277CE1D90]];

      if (v12)
      {
        goto LABEL_3;
      }

      v10 = _log_1();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_2615AE000, v10, OS_LOG_TYPE_DEFAULT, "Image is too large, not returning any thumbnail", v13, 2u);
      }
    }
  }

LABEL_6:

  return v3;
}

double QLImageIOCropSizeForSize(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double QLImageIOCropRectForSize(double a1, double a2, double a3)
{
  v3 = a1 < a3;
  result = rint((a1 - a3) * 0.5);
  if (v3)
  {
    return 0.0;
  }

  return result;
}

CGImageRef QLImageIOCreateScaledImageOfMaximumAndMinimumSize(CGImage *a1, CGInterpolationQuality a2, double a3, double a4, double a5)
{
  v9 = a1;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(v9);
  QLDetermineSizeRespectingAspectRatioAndMinimumDimension(Width, Height, a5, a3, a4);
  v13 = v12;
  v15 = v14;
  ColorSpace = CGImageGetColorSpace(v9);
  CGColorSpaceIsWideGamutRGB(ColorSpace);
  v17 = QLTCreateCGContext();
  if (v17)
  {
    v18 = v17;
    v19 = rint((v15 - a4) * 0.5);
    CGContextSetInterpolationQuality(v17, a2);
    v20 = -rint((v13 - a3) * 0.5);
    v21 = -0.0;
    if (v13 < a3)
    {
      v20 = -0.0;
    }

    if (v15 >= a4)
    {
      v21 = -v19;
    }

    v22 = v13;
    v23 = v15;
    CGContextDrawImage(v18, *&v20, v9);
    Image = CGBitmapContextCreateImage(v18);
    v9 = v18;
LABEL_10:
    CFRelease(v9);
    return Image;
  }

  v25 = _log_1();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    QLImageIOCreateScaledImageOfMaximumAndMinimumSize_cold_1(v25);
  }

  Image = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_10;
  }

  return result;
}

void QLDetermineSizeRespectingAspectRatioAndMinimumDimension(double a1, double a2, double a3, double a4, double a5)
{
  v8 = QLAdaptSizeInSize(0, 0, a4, a5, a1, a2);
  v10 = ceil(v9);
  v11 = ceil(v8);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 < a3)
  {
    QLAdaptSizeOutSize(1, 1, a3, a3, a1, a2);
  }
}

CGImageRef QLImageIOCreateCroppedImageRef(CGImage *a1, double a2, double a3)
{
  if (!a1)
  {
    QLImageIOCreateCroppedImageRef_cold_1();
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = Height;
  if (a2 <= Width)
  {
    v9 = a2;
  }

  else
  {
    v9 = Width;
  }

  v10 = rint((Width - a2) * 0.5);
  if (a2 > Width)
  {
    v10 = 0.0;
  }

  v11 = a3 <= v8;
  if (a3 <= v8)
  {
    v12 = a3;
  }

  else
  {
    v12 = Height;
  }

  v13 = rint((v8 - a3) * 0.5);
  if (!v11)
  {
    v13 = 0.0;
  }

  return CGImageCreateWithImageInRect(a1, *(&v9 - 2));
}

CGImageRef QLThumbnailImageIOCreateICNSThumbnailWithImageSource(CGImageSource *a1, double a2, double a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  Count = CGImageSourceGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x277CD3648];
  v12 = 1.79769313e308;
  v13 = MEMORY[0x277CBEC38];
  do
  {
    v24 = v11;
    v25[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v15 = CGImageSourceCopyPropertiesAtIndex(a1, v9, v14);
    if (v15)
    {
      v16 = v15;
      v17 = QLThumbnailingImageIOGetSizeFromImageProperties(v15);
      if (v17 >= a2 && v18 >= a3 && v17 < v12 && v18 < v12)
      {
        if (v17 >= v18)
        {
          v12 = v18;
        }

        else
        {
          v12 = v17;
        }

        if (v10)
        {
          CFRelease(v10);
        }

        v10 = CFRetain(v16);
        v8 = v9;
      }

      CFRelease(v16);
    }

    ++v9;
  }

  while (v7 != v9);
  if (!v10)
  {
    return 0;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, v8, 0);
  CFRelease(v10);
  return ImageAtIndex;
}

CGImageRef QLThumbnailingImageIOCreateCroppedAndScaledThumbnailToSatisfyConstraints(CGImage *a1, CGInterpolationQuality a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(v13);
  QLDetermineSizeRespectingAspectRatioAndMinimumDimension(a3, a4, a5, a6, a7);
  if (v16 >= a6)
  {
    v16 = a6;
  }

  if (v17 >= a7)
  {
    v17 = a7;
  }

  v18 = a3 >= a6;
  if (a4 >= a7)
  {
    v18 = 1;
  }

  if (v16 == Width && v17 == Height)
  {
    goto LABEL_22;
  }

  if (a3 < a5 || a4 < a5)
  {

    return QLImageIOCreateScaledImageOfMaximumAndMinimumSize(v13, a2, a6, a7, a5);
  }

  else
  {
    if (!v18)
    {
      return 0;
    }

    if (v16 >= Width && v17 >= Height)
    {
LABEL_22:
      CFRetain(v13);
      return v13;
    }

    return QLImageIOCreateCroppedImageRef(v13, v16, v17);
  }
}

CGImage *QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSourceAndContentType(CGImageSource *a1, double a2, double a3, double a4, double a5, uint64_t a6, int a7, _BYTE *a8, uint64_t a9, int a10)
{
  if (a4 >= 1.0)
  {
    v18 = a4;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = QLThumbnailingImageIOGetSizeFromImageSourceAtIndex(a1, 0);
  v21 = v19;
  v22 = v20;
  if (v19 < 1.0 || v20 < 1.0)
  {
    v24 = _log_1();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSourceAndContentType_cold_2(v24, v21, v22);
    }
  }

  else
  {
    v25 = v18 * a5;
    v26 = a3 * a5;
    v27 = a2 * a5;
    QLDetermineSizeRespectingAspectRatioAndMinimumDimension(v19, v20, v25, v27, v26);
    if (a7)
    {
      result = _QLThumbnailingImageIOCreateSimpleThumbnailWithImageSource(a1, a7, a8, 1, a9, a10, v27, v26);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v31 = v21 < v27;
      if (v22 >= v26)
      {
        v31 = 0;
      }

      v32 = v21 < v25;
      if (v22 < v25)
      {
        v32 = 1;
      }

      if (v32 || v31)
      {
        v28 = v21;
        v29 = v22;
      }

      v33 = _QLThumbnailingImageIOCreateSimpleThumbnailWithImageSource(a1, 0, a8, 1, a9, a10, v28, v29);
      if (v33)
      {
        v34 = v33;
        v35 = QLThumbnailingImageIOCreateCroppedAndScaledThumbnailToSatisfyConstraints(v33, a9, v21, v22, v25, v27, v26);
        CGImageRelease(v34);
        return v35;
      }
    }

    v24 = _log_1();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSourceAndContentType_cold_1(v24);
    }
  }

  return 0;
}

CGImageSourceRef QLThumbnailingImageIOCreateImageSourceFromData(const __CFData *a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *MEMORY[0x277CD3630];
    v14[0] = *MEMORY[0x277CD3668];
    v14[1] = v3;
    v4 = *MEMORY[0x277CBED10];
    v13[0] = a2;
    v13[1] = v4;
    v5 = MEMORY[0x277CBF138];
    v6 = MEMORY[0x277CBF150];
    v7 = v14;
    v8 = v13;
    v9 = 2;
  }

  else
  {
    v7 = MEMORY[0x277CD3630];
    v8 = MEMORY[0x277CBED10];
    v5 = MEMORY[0x277CBF138];
    v6 = MEMORY[0x277CBF150];
    v9 = 1;
  }

  v10 = CFDictionaryCreate(0, v7, v8, v9, v5, v6);
  v11 = CGImageSourceCreateWithData(a1, v10);
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

void QLSInitLogging()
{
  if (QLSInitLogging_once != -1)
  {
    QLSInitLogging_cold_1();
  }
}

uint64_t __QLSInitLogging_block_invoke()
{
  _qlsLogHandle = os_log_create("com.apple.quicklook", "default");

  return MEMORY[0x2821F96F8]();
}

void sub_2615BC578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2615BC94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t QLCreateReservedBitmapContextWithSize(CGColorSpace *a1)
{
  if (a1)
  {
    DeviceRGB = a1;
    CFRetain(a1);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  _QLComputeValuesForCGContextCreationWithSizeAndScale();
  CGColorSpaceRelease(DeviceRGB);
  return 0;
}

CGImageRef QLCreateImageWithBitmapContext(CGContext *a1)
{
  ColorSpace = CGBitmapContextGetColorSpace(a1);
  Data = CGBitmapContextGetData(a1);
  BytesPerRow = CGBitmapContextGetBytesPerRow(a1);
  Height = CGBitmapContextGetHeight(a1);
  v6 = CGDataProviderCreateWithData(0, Data, Height * BytesPerRow, 0);
  Width = CGBitmapContextGetWidth(a1);
  v8 = CGBitmapContextGetHeight(a1);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(a1);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(a1);
  v11 = CGBitmapContextGetBytesPerRow(a1);
  BitmapInfo = CGBitmapContextGetBitmapInfo(a1);
  v13 = CGImageCreate(Width, v8, BitsPerComponent, BitsPerPixel, v11, ColorSpace, BitmapInfo, v6, 0, 0, kCGRenderingIntentDefault);
  CFRelease(v6);
  return v13;
}

CGImageRef QLCreateImageWithMallocedBitmapContextTransferData(CGContext *a1)
{
  ColorSpace = CGBitmapContextGetColorSpace(a1);
  Data = CGBitmapContextGetData(a1);
  BytesPerRow = CGBitmapContextGetBytesPerRow(a1);
  Height = CGBitmapContextGetHeight(a1);
  v6 = CGDataProviderCreateWithData(0, Data, Height * BytesPerRow, _DataFree);
  Width = CGBitmapContextGetWidth(a1);
  v8 = CGBitmapContextGetHeight(a1);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(a1);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(a1);
  v11 = CGBitmapContextGetBytesPerRow(a1);
  BitmapInfo = CGBitmapContextGetBitmapInfo(a1);
  v13 = CGImageCreate(Width, v8, BitsPerComponent, BitsPerPixel, v11, ColorSpace, BitmapInfo, v6, 0, 0, kCGRenderingIntentDefault);
  CFRelease(v6);
  return v13;
}

CGImageRef QLCreateImageWithBlock(void *a1)
{
  v1 = a1;
  v2 = QLCreateReservedBitmapContextWithSize(0);
  if (v2)
  {
    v3 = v2;
    v1[2](v1, v2);
    v4 = QLCreateImageWithMallocedBitmapContextTransferData(v3);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

CGContext *_QLDestroyReservedBitmapContext(CGContext *result, uint64_t (*a2)(CGContext *, size_t))
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = CGBitmapContextGetData(result);
      if (result)
      {
        v3 = result;
        Height = CGBitmapContextGetHeight(v2);
        v5 = CGBitmapContextGetBytesPerRow(v2) * Height;

        return a2(v3, v5);
      }
    }
  }

  return result;
}

CGContextRef QLCreateMallocedGrayscaleContextWithSize(double a1, double a2)
{
  v2 = a1;
  v3 = a2;
  if (a1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || !is_mul_ok(v2, v3))
  {
    return 0;
  }

  v5 = malloc_type_calloc(v2 * v3, 1uLL, 0x7CC6BF11uLL);
  if (!v5)
  {
    v10 = MEMORY[0x277CDAB78];
    v11 = *(MEMORY[0x277CDAB78] + 120);
    if (!v11)
    {
      QLTInitLogging();
      v11 = *(v10 + 120);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      QLCreateMallocedGrayscaleContextWithSize_cold_1(v11);
    }

    return 0;
  }

  v6 = v5;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (!DeviceGray)
  {
    free(v6);
    return 0;
  }

  v8 = DeviceGray;
  v9 = CGBitmapContextCreate(v6, v2, v3, 8uLL, v2, DeviceGray, 0);
  CGColorSpaceRelease(v8);
  if (!v9)
  {
    free(v6);
  }

  return v9;
}

void QLContextSetGrayFillColor(CGContext *a1, CGFloat a2, CGFloat a3)
{
  GenericGrayGamma2_2 = CGColorCreateGenericGrayGamma2_2(a2, a3);
  CGContextSetFillColorWithColor(a1, GenericGrayGamma2_2);

  CFRelease(GenericGrayGamma2_2);
}

void QLContextSetGrayStrokeColor(CGContext *a1, CGFloat a2, CGFloat a3)
{
  GenericGrayGamma2_2 = CGColorCreateGenericGrayGamma2_2(a2, a3);
  CGContextSetStrokeColorWithColor(a1, GenericGrayGamma2_2);

  CFRelease(GenericGrayGamma2_2);
}

void QLContextSetRGBFillColor(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  SRGB = CGColorCreateSRGB(a2, a3, a4, a5);
  CGContextSetFillColorWithColor(a1, SRGB);

  CFRelease(SRGB);
}

void QLContextSetRGBStrokeColor(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  SRGB = CGColorCreateSRGB(a2, a3, a4, a5);
  CGContextSetStrokeColorWithColor(a1, SRGB);

  CFRelease(SRGB);
}

id _log_2()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 160);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 160);
  }

  return v1;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615C24DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = _log_2();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [QLPreviewParts computePreviewInThread];
    }

    objc_end_catch();
    JUMPOUT(0x2615C24C0);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_6(id a1)
{

  return a1;
}

void QLPreviewCopyEmbeddedIWorkData_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2615AE000, log, OS_LOG_TYPE_DEBUG, "Looking inside %@", buf, 0xCu);
}

void __QLPreviewCopyEmbeddedIWorkData_block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_2615AE000, a2, a3, "Error reading archive %@ : %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __QLPreviewCopyEmbeddedIWorkData_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2615AE000, a2, OS_LOG_TYPE_ERROR, "Error reading archive: %@", &v2, 0xCu);
}

void _QLMachDispatchIncomingMessageAndReplyIfNecessary_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "mach_msg_return_t _QLMachDispatchIncomingMessageAndReplyIfNecessary(mach_msg_header_t *, BOOLean_t (*)(mach_msg_header_t *, mach_msg_header_t *), mach_msg_size_t, mach_msg_options_t, BOOLean_t *)";
  _os_log_debug_impl(&dword_2615AE000, log, OS_LOG_TYPE_DEBUG, "_QLMachDispatchIncomingMessageAndReplyIfNecessary: Sent last message with voucher attached. Clearing voucher now. (%s)", &v1, 0xCu);
}

void _QLMachDispatchIncomingMessageAndReplyIfNecessary_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "mach_msg_return_t _QLMachDispatchIncomingMessageAndReplyIfNecessary(mach_msg_header_t *, BOOLean_t (*)(mach_msg_header_t *, mach_msg_header_t *), mach_msg_size_t, mach_msg_options_t, BOOLean_t *)";
  _os_log_debug_impl(&dword_2615AE000, log, OS_LOG_TYPE_DEBUG, "_QLMachDispatchIncomingMessageAndReplyIfNecessary: Sent last message without voucher. (%s)", &v1, 0xCu);
}

void QLThumbnailingImageIOCreateThumbnailOfMinimumSizeWithImageSourceAndContentType_cold_2(os_log_t log, double a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_2615AE000, log, OS_LOG_TYPE_ERROR, "Will not generate thumbnail from image because it has an incorrect size: (%f, %f)", &v3, 0x16u);
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}