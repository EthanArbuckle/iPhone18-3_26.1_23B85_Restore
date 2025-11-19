void sub_1C6586A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id createStringFromSet(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 count])
  {
    v23 = v8;
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, *(*(&v24 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = [v11 componentsJoinedByString:v10];
    v8 = v23;
    v20 = [v18 stringWithFormat:v23, v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

id getAccountsManagerInstance()
{
  if (getAccountsManagerInstance_onceToken != -1)
  {
    getAccountsManagerInstance_cold_1();
  }

  v1 = getAccountsManagerInstance_instance;

  return v1;
}

void __getAccountsManagerInstance_block_invoke()
{
  v0 = +[QPAccountsManager sharedAccountsManager];
  v1 = getAccountsManagerInstance_instance;
  getAccountsManagerInstance_instance = v0;

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  readFromGroundTruthECRForUnitTests = [v2 BOOLForKey:@"SpotlightForSearchToolUnitTestECRCache"];
}

void *getContentsArray()
{
  v0 = getAccountsManagerInstance();
  v1 = [v0 contentsArray];

  return v1;
}

void *getMeCardData()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = getAccountsManagerInstance();
  if (readFromGroundTruthECRForUnitTests == 1)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 valueForKey:@"testID"];

    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 valueForKey:v2];
    v5 = [v4 valueForKey:@"kQPParseResultEcrGroundedOutput"];
    v6 = [v5 valueForKey:@"me"];
    [v0 setMeCard:v6];

    v7 = [v0 meCard];

    if (v7)
    {
      if (accountsLogger_token != -1)
      {
        [QPAccountsManager nameToEmailAddresses];
      }

      v8 = accountsLogger_log;
      if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v0 meCard];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1C6584000, v9, OS_LOG_TYPE_DEFAULT, "[QPNLU] Received token value SELF from ground truth:%@", &v14, 0xCu);
      }
    }
  }

  v11 = [v0 meCard];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __initEntitlements_block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.accounts.allaccounts", &error);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) != 0;
      sPrivateAccountsEntitlement = v5;
      CFRelease(v3);
    }

    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v6 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.contacts", &error);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      sPrivateContactsEntitlement = v9;
      CFRelease(v7);
    }

    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    if ((sPrivateContactsEntitlement & 1) == 0)
    {
      v10 = SecTaskCopyValueForEntitlement(v1, @"com.apple.Contacts.database-allow", &error);
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) != 0;
        sPrivateContactsEntitlement = v13;
        CFRelease(v11);
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }
    }

    CFRelease(v1);
  }
}

void __accountsLogger_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  v1 = os_log_create(v0, "QueryParserAccountsManager");
  v2 = accountsLogger_log;
  accountsLogger_log = v1;
}

void __normalizeRelationLabelString_block_invoke()
{
  v4 = 0;
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(_\\$!<|>!\\$_)" options:0 error:&v4];
  v1 = v4;
  v2 = normalizeRelationLabelString_sRelationLabelsRegex;
  normalizeRelationLabelString_sRelationLabelsRegex = v0;

  if (v1)
  {
    if (accountsLogger_token != -1)
    {
      [QPAccountsManager nameToEmailAddresses];
    }

    v3 = accountsLogger_log;
    if (os_log_type_enabled(accountsLogger_log, OS_LOG_TYPE_ERROR))
    {
      __normalizeRelationLabelString_block_invoke_cold_2(v1, v3);
    }
  }
}

__CFString *QPAnnotationsCopyNormalizedString(const __CFLocale *a1, const __CFString *a2, CFIndex a3, CFIndex length)
{
  MutableCopy = 0;
  v26 = *MEMORY[0x1E69E9840];
  if (a2 && length)
  {
    v25 = 0;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(length, 0x8000100u);
    v10 = MaximumSizeForEncoding + 1;
    MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
    v12 = (&v23 - v11);
    bzero(&v23 - v11, v13);
    v27.location = a3;
    v27.length = length;
    CFStringGetCharacters(a2, v27, v12);
    v24 = 0;
    MEMORY[0x1EEE9AC00](v14);
    v16 = &v23 - v15;
    bzero(&v23 - v15, v10);
    if (CFStringEncodingUnicodeToBytes() || (v17 = v24, v16[v24] = 0, v18 = *MEMORY[0x1E695E480], (v19 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v16, v17, 0x8000100u, 0, *MEMORY[0x1E695E498])) == 0))
    {
      MutableCopy = 0;
    }

    else
    {
      v20 = v19;
      MutableCopy = CFStringCreateMutableCopy(v18, v10, v19);
      CFStringFold(MutableCopy, 0x181uLL, a1);
      CFRelease(v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

uint64_t QPAnnotationsGetPayloadWithTokens(int a1, uint64_t a2, __CFLocale *a3, CFStringRef theString, CFRange *a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v9 = hashTokens(a3, theString, a2, a5, a6, a7);
  [v9 bytes];
  if (SIDataMapLookupKey())
  {
    if (a8)
    {
      *a8 = 1;
    }

    goto LABEL_6;
  }

  if (a8)
  {
LABEL_6:
    *a8 = 0;
  }

  return 0;
}

id hashTokens(const __CFLocale *a1, CFStringRef theString, uint64_t a3, const CFRange *a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v29 = &v29;
  v13 = a6 + MaximumSizeForEncoding + 1;
  MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
  v15 = &v29 - v14;
  bzero(&v29 - v14, v13);
  if (a6 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = a6 + a5;
    p_length = &a4[a5].length;
    do
    {
      v31[0] = 0;
      v20 = QPAnnotationsCopyNormalizedString(a1, theString, *(p_length - 1), *p_length);
      if (v20)
      {
        v21 = v20;
        v33.length = CFStringGetLength(v20);
        v33.location = 0;
        CFStringGetBytes(v21, v33, 0x8000100u, 0x2Du, 0, &v15[v17], v13 - v17, v31);
        CFRelease(v21);
        v22 = v31[0] + v17;
        v15[v22] = v16;
        v17 = v22 + 1;
      }

      p_length += 2;
      ++a5;
      ++v16;
    }

    while (a5 < v18);
  }

  OutputSize = CCDigestGetOutputSize();
  v24 = &v29 - ((MEMORY[0x1EEE9AC00](OutputSize) + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v24, v25);
  CCDigest();
  v26 = [MEMORY[0x1E695DEF0] dataWithBytes:v24 length:v30];
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void *QPDataDetectorCreate()
{
  result = malloc_type_malloc(0x20uLL, 0x102004055CCDE27uLL);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *(result + 6) = 1;
  }

  return result;
}

uint64_t QPDataDetectorLoadResources(const void **a1, CFURLRef anURL)
{
  v2 = 0;
  if (!a1 || !anURL)
  {
    return v2;
  }

  v4 = CFURLGetString(anURL);
  if (CFStringHasSuffix(v4, @"root.cache"))
  {
    if (!*a1)
    {
      cf = 0;
      v5 = DDScannerCreateWithCacheFile();
      *a1 = v5;
      if (cf || !v5)
      {
        if (cf)
        {
          CFRelease(cf);
          v5 = *a1;
        }

        if (v5)
        {
          CFRelease(v5);
        }

        v2 = 0;
        *a1 = 0;
        return v2;
      }

      goto LABEL_16;
    }

    return 1;
  }

  if (CFStringHasSuffix(v4, @"dates.cache"))
  {
    if (a1[1])
    {
      return 1;
    }

    cf = 0;
    v6 = DDScannerCreateWithCacheFile();
    a1[1] = v6;
    if (!cf && v6)
    {
LABEL_16:
      DDScannerSetOptions();
      return 1;
    }

    if (cf)
    {
      CFRelease(cf);
      v6 = a1[1];
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v2 = 0;
    a1[1] = 0;
  }

  else
  {
    if (!CFStringHasSuffix(v4, @"lexicon.cache") || a1[2])
    {
      return 1;
    }

    cf = 0;
    if (dataDetectorLogger_token != -1)
    {
      QPDataDetectorLoadResources_cold_1();
    }

    v8 = dataDetectorLogger_log;
    if (os_log_type_enabled(dataDetectorLogger_log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      _os_log_impl(&dword_1C6584000, v8, OS_LOG_TYPE_DEFAULT, "QueryParserDataDetectors: Creating lexicon scanner", &v11, 2u);
    }

    v9 = DDScannerCreateWithCacheFile();
    a1[2] = v9;
    if (cf || !v9)
    {
      if (cf)
      {
        CFRelease(cf);
        v9 = a1[2];
      }

      if (v9)
      {
        CFRelease(v9);
      }

      v2 = 0;
      a1[2] = 0;
    }

    else
    {
      DDScannerSetOptions();
      v10 = a1[2];
      v2 = 1;
      DDScannerEnableOptionalSource();
    }
  }

  return v2;
}

void QPDataDetectorClearResources(uint64_t a1)
{
  if (a1)
  {
    if (dataDetectorLogger_token != -1)
    {
      QPDataDetectorLoadResources_cold_1();
    }

    v2 = dataDetectorLogger_log;
    if (os_log_type_enabled(dataDetectorLogger_log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C6584000, v2, OS_LOG_TYPE_DEFAULT, "QueryParserDataDetectors: releasing data detectors", v5, 2u);
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 8) = 0;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 16) = 0;
    }
  }
}

uint64_t QPDataDetectorSetDynamicSources(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      MEMORY[0x1EEE9AC00](result);
      if (dataDetectorLogger_token != -1)
      {
        QPDataDetectorLoadResources_cold_1();
      }

      v2 = dataDetectorLogger_log;
      if (os_log_type_enabled(dataDetectorLogger_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6584000, v2, OS_LOG_TYPE_DEFAULT, "QueryParserDataDetectors: setting dynamic sources on lexicon scanner", buf, 2u);
      }

      v3 = *(v1 + 16);
      DDScannerSetClientTables();
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void QPDataDetectorEnumerateResults(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *a1 && a1[1] && a1[2])
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (v41[3])
    {
      if (getDataDetectorsQueue_onceToken != -1)
      {
        QPDataDetectorEnumerateResults_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __QPDataDetectorEnumerateResults_block_invoke;
      block[3] = &unk_1E82665C0;
      block[5] = a1;
      block[6] = a2;
      block[4] = &v40;
      dispatch_sync(getDataDetectorsQueue_dataDetectorsQueue, block);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2000000000;
      v38 = 0;
      v7 = v41[3];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 0x40000000;
      v33 = __QPDataDetectorEnumerateResults_block_invoke_2;
      v34 = &unk_1E82665E8;
      v35 = a3;
      v36 = v37;
      if (v7)
      {
        if (CFArrayGetCount(v7))
        {
          Count = CFArrayGetCount(v7);
          MutableCopy = CFArrayCreateMutableCopy(v6, Count, v7);
          if (MutableCopy)
          {
            v10 = MutableCopy;
            v45.length = CFArrayGetCount(MutableCopy);
            v45.location = 0;
            CFArraySortValues(v10, v45, ResultCompare, 0);
            v11 = MEMORY[0x1E695E9F8];
            v30 = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
            theSet = CFSetCreateMutable(v6, 0, v11);
            v44[0] = 0;
            v12 = CFArrayGetCount(v10);
            if (v12 >= 1)
            {
              v13 = v12;
              v14 = 0;
              v15 = 0;
              v16 = -1;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v10, v15);
                Range = DDResultGetRange();
                v20 = Range;
                v21 = v19;
                if (v16 == -1 || ((v22 = v14 + v16, v23 = Range + v19, v16 >= Range) || v22 < v23) && (v16 < Range ? (v24 = Range < v22) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), v22 > v23 ? (v26 = v16 <= Range) : (v26 = 0), !v26 && (v25 & 1) == 0))
                {
                  Type = DDResultGetType();
                  SubResults = DDResultGetSubResults();
                  if (v20 != v16 || v21 != v14)
                  {
                    CFSetRemoveAllValues(theSet);
                    CFSetRemoveAllValues(v30);
LABEL_34:
                    MatchedString = DDResultGetMatchedString();
                    if (!CFStringHasSuffix(MatchedString, @" "))
                    {
                      v33(v32, ValueAtIndex, v44);
                      if (v44[0])
                      {
                        break;
                      }

                      CFSetAddValue(theSet, Type);
                      if (SubResults)
                      {
                        CFSetAddValue(v30, SubResults);
                      }

                      v14 = v21;
                      v16 = v20;
                    }

                    goto LABEL_39;
                  }

                  if (!CFSetContainsValue(theSet, Type) || !SubResults || !CFSetContainsValue(v30, SubResults))
                  {
                    goto LABEL_34;
                  }
                }

LABEL_39:
                ++v15;
              }

              while (v13 != v15);
            }

            CFRelease(v10);
            CFRelease(theSet);
            CFRelease(v30);
          }
        }
      }

      CFRelease(v41[3]);
      _Block_object_dispose(v37, 8);
    }

    _Block_object_dispose(&v40, 8);
  }
}

void __QPDataDetectorEnumerateResults_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = **(a1 + 40);
  DDScannerScanString();
  v4 = **(a1 + 40);
  v5 = DDScannerCopyResultsWithOptions();
  if (v5)
  {
    v6 = v5;
    v7 = *(*(*(a1 + 32) + 8) + 24);
    v21.length = CFArrayGetCount(v5);
    v21.location = 0;
    CFArrayAppendArray(v7, v6, v21);
    CFRelease(v6);
  }

  v8 = *(a1 + 48);
  v9 = *(*(a1 + 40) + 8);
  DDScannerScanString();
  v10 = *(*(a1 + 40) + 8);
  v11 = DDScannerCopyResultsWithOptions();
  if (v11)
  {
    v12 = v11;
    v13 = *(*(*(a1 + 32) + 8) + 24);
    v22.length = CFArrayGetCount(v11);
    v22.location = 0;
    CFArrayAppendArray(v13, v12, v22);
    CFRelease(v12);
  }

  v14 = *(a1 + 48);
  v15 = *(*(a1 + 40) + 16);
  DDScannerScanString();
  v16 = *(*(a1 + 40) + 16);
  v17 = DDScannerCopyResultsWithOptions();
  if (v17)
  {
    v18 = v17;
    v19 = *(*(*(a1 + 32) + 8) + 24);
    v23.length = CFArrayGetCount(v17);
    v23.location = 0;
    CFArrayAppendArray(v19, v18, v23);

    CFRelease(v18);
  }
}

void __QPDataDetectorEnumerateResults_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  DDResultGetType();
  DDResultGetRange();
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  SubResults = DDResultGetSubResults();
  if (SubResults)
  {
    v5 = SubResults;
    Count = CFArrayGetCount(SubResults);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v27 = v5;
      theDict = Mutable;
      v26 = Count;
      do
      {
        CFArrayGetValueAtIndex(v5, v8);
        Type = DDResultGetType();
        Value = DDResultGetValue();
        CFDictionarySetValue(Mutable, Type, Value);
        if (CFStringHasPrefix(Type, @"NUMBERS"))
        {
          MatchedString = DDResultGetMatchedString();
          CFDictionarySetValue(Mutable, @"SPELLED", MatchedString);
        }

        v12 = DDResultGetSubResults();
        if (v12)
        {
          v13 = v12;
          v14 = CFArrayGetCount(v12);
          if (v14)
          {
            v15 = v14;
            v16 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v15 >= 1)
            {
              for (i = 0; i != v15; ++i)
              {
                CFArrayGetValueAtIndex(v13, i);
                v18 = DDResultGetType();
                v19 = DDResultGetValue();
                CFDictionarySetValue(v16, v18, v19);
                if (CFStringHasPrefix(v18, @"NUMBERS"))
                {
                  v20 = DDResultGetMatchedString();
                  CFDictionarySetValue(v16, @"SPELLED", v20);
                }
              }
            }

            Mutable = theDict;
            CFDictionarySetValue(theDict, Type, v16);
            CFRelease(v16);
            v7 = v26;
            v5 = v27;
          }
        }

        ++v8;
      }

      while (v8 != v7);
    }
  }

  else
  {
    v21 = DDResultGetMatchedString();
    v22 = DDResultGetValue();
    if (v21 && v22)
    {
      CFDictionarySetValue(Mutable, @"Value", v22);
    }
  }

  if (Mutable)
  {
    v23 = *(*(a1 + 40) + 8);
    (*(*(a1 + 32) + 16))();
    CFRelease(Mutable);
  }

  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

void QPDataDetectorRelease(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[6] - 1;
    a1[6] = v2;
    if (!v2)
    {
      v3 = *a1;
      if (*a1)
      {
        CFRelease(v3);
      }

      v4 = *(a1 + 1);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(a1 + 2);
      if (v5)
      {
        CFRelease(v5);
      }

      free(a1);
    }
  }
}

os_log_t __dataDetectorLogger_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "QPDataDetector");
  dataDetectorLogger_log = result;
  return result;
}

dispatch_queue_t __getDataDetectorsQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.QP.DataDetectors", 0);
  getDataDetectorsQueue_dataDetectorsQueue = result;
  return result;
}

uint64_t ResultCompare()
{
  Range = DDResultGetRange();
  v2 = v1;
  v3 = DDResultGetRange();
  if (Range == v3)
  {
    v5 = v2 <= v4;
    if (v2 != v4)
    {
LABEL_14:
      if (v5)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    SubResults = DDResultGetSubResults();
    v7 = DDResultGetSubResults();
    if (SubResults)
    {
      v8 = v7;
      if (v7)
      {
        Count = CFArrayGetCount(SubResults);
        if (Count == CFArrayGetCount(v8))
        {
          return 0;
        }

        v11 = CFArrayGetCount(SubResults);
        v5 = v11 <= CFArrayGetCount(v8);
        goto LABEL_14;
      }
    }

    if (SubResults)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (Range < v3)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void QPDataDetectorsEnumerateDatesInString(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = getParser();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __QPDataDetectorsEnumerateDatesInString_block_invoke;
  v8[3] = &unk_1E8266650;
  v9 = v5;
  v7 = v5;
  [v6 enumerateDatesInString:a1 options:a2 withBlock:v8];
}

id getParser(void)
{
  if (getParser(void)::dateDetectorsParserOnceToken != -1)
  {
    getParser();
  }

  v1 = getParser(void)::sDDParser;

  return v1;
}

void QPDataDetectorsEnumerateEntitiesInString(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = getParser();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __QPDataDetectorsEnumerateEntitiesInString_block_invoke;
  v8[3] = &unk_1E8266678;
  v9 = v5;
  v7 = v5;
  [v6 enumerateEntitiesInString:a1 options:a2 withBlock:v8];
}

void ___ZL9getParserv_block_invoke()
{
  v0 = objc_alloc_init(QPDataDetectorsParser);
  v1 = getParser(void)::sDDParser;
  getParser(void)::sDDParser = v0;
}

void sub_1C65893A4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C6589720(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t QP::getDateComponentsOffsetMap@<X0>(QP *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  Value = CFLocaleGetValue(this, *MEMORY[0x1E695E6D0]);
  if (Value == @"AT")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::ATQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
    goto LABEL_26;
  }

  if (Value == @"CN")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::CNQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
    goto LABEL_26;
  }

  if (Value == @"DE")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::DEQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
    goto LABEL_26;
  }

  if (Value == @"HK")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::HKQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
    goto LABEL_26;
  }

  if (Value == @"IT")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::ITQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
    goto LABEL_26;
  }

  if (Value == @"JP")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::JPQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
    goto LABEL_26;
  }

  if (Value == @"MY")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::MYQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap);
LABEL_26:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (Value == @"NO")
  {
    v5 = QP::NOQPDateComponentsPeriodOffsetMap(Value);
  }

  else if (Value == @"ES")
  {
    v5 = QP::ESQPDateComponentsPeriodOffsetMap(Value);
  }

  else if (Value == @"TW")
  {
    v5 = QP::TWQPDateComponentsPeriodOffsetMap(Value);
  }

  else
  {
    v5 = QP::QPDateComponentsPeriodOffsetMap(Value);
  }

  v8 = *MEMORY[0x1E69E9840];

  return std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, v5);
}

void sub_1C658B478(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::NOQPDateComponentsPeriodOffsetMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::NOQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658B6A4(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::ESQPDateComponentsPeriodOffsetMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::ESQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658B7A8(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::TWQPDateComponentsPeriodOffsetMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::TWQPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658B8AC(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::QPDateComponentsPeriodOffsetMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::QPDateComponentsPeriodOffsetMap(void)::dateComponentsOffsetMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658B9B0(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::getDateComponentsStartMap@<X0>(QP *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  Value = CFLocaleGetValue(this, *MEMORY[0x1E695E6D0]);
  if (Value == @"AT")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::ATQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
    goto LABEL_26;
  }

  if (Value == @"CN")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::CNQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
    goto LABEL_26;
  }

  if (Value == @"DE")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::DEQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
    goto LABEL_26;
  }

  if (Value == @"HK")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::HKQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
    goto LABEL_26;
  }

  if (Value == @"IT")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::ITQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
    goto LABEL_26;
  }

  if (Value == @"JP")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::JPQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
    goto LABEL_26;
  }

  if (Value == @"MY")
  {
    {
      operator new();
    }

    result = std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, QP::MYQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap);
LABEL_26:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (Value == @"NO")
  {
    started = QP::NOQPDateComponentsPeriodStartMap(Value);
  }

  else if (Value == @"ES")
  {
    started = QP::ESQPDateComponentsPeriodStartMap(Value);
  }

  else if (Value == @"TW")
  {
    started = QP::TWQPDateComponentsPeriodStartMap(Value);
  }

  else
  {
    started = QP::QPDateComponentsPeriodStartMap(Value);
  }

  v8 = *MEMORY[0x1E69E9840];

  return std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(a2, started);
}

void sub_1C658BF08(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::NOQPDateComponentsPeriodStartMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::NOQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658C134(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::ESQPDateComponentsPeriodStartMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::ESQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658C238(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::TWQPDateComponentsPeriodStartMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::TWQPDateComponentsPeriodStartMap(void)::dateComponentsStartMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658C33C(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::QPDateComponentsPeriodStartMap(QP *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = QP::QPDateComponentsPeriodStartMap(void)::dateComponentsStartMap;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658C440(_Unwind_Exception *a1)
{
  MEMORY[0x1C695B850](v1, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

uint64_t QP::getOffsetForDateComponentsPeriod(unsigned __int16 a1, QP *this)
{
  v6 = a1;
  QP::getDateComponentsOffsetMap(this, v5);
  if (std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::find<QP::QPDateComponentsPeriod>(v5, &v6))
  {
    v2 = std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::find<QP::QPDateComponentsPeriod>(v5, &v6);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v3 = *(v2 + 5);
  }

  else
  {
    v3 = 1;
  }

  std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::~__hash_table(v5);
  return v3;
}

uint64_t QP::getStartForDateComponentsPeriod(unsigned __int16 a1, QP *this)
{
  v6 = a1;
  QP::getDateComponentsStartMap(this, v5);
  if (std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::find<QP::QPDateComponentsPeriod>(v5, &v6))
  {
    v2 = std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::find<QP::QPDateComponentsPeriod>(v5, &v6);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v3 = *(v2 + 5);
  }

  else
  {
    v3 = 1;
  }

  std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::~__hash_table(v5);
  return v3;
}

uint64_t QP::updateDateComponentsWithRelativeDateOffset(uint64_t result, uint64_t a2, const __CFDate *a3, QP::DateComponents *this, int a5, int a6, char a7, uint64_t a8)
{
  if (result)
  {
    if (a2)
    {
      v14 = result;
      result = QP::DateComponents::isEmpty(this);
      if ((result & 1) == 0)
      {
        AbsoluteTime = QP::DateComponents::getAbsoluteTime(this, v14, a3);
        at = AbsoluteTime;
        v34 = 0;
        v35 = 0;
        v16 = *this;
        v17 = *(this + 3);
        v32 = *(this + 2);
        v33 = 0;
        v18 = *(this + 4);
        v30 = *(this + 3);
        v31 = v16;
        v19 = *(this + 8);
        v29 = *(this + 36);
        v20 = *(this + 12);
        v26 = *(this + 11);
        v27 = *(this + 5);
        v28 = *(this + 13);
        if (QP::DateComponents::isTime(this))
        {
          result = CFCalendarAddComponents(v14, &at, 0, "d", a8);
          if ((vmaxv_u16(vmovn_s32(vcgezq_s32(*(this + 36)))) & 1) == 0 && (*(this + 8) & 0x80000000) != 0)
          {
            if (a6)
            {
LABEL_8:
              result = CFCalendarDecomposeAbsoluteTime(v14, at, "dMy", &v34 + 4, &v35, &v35 + 4);
              v17 = HIDWORD(v34);
              v18 = v35;
              v21 = HIDWORD(v35);
LABEL_9:
              v22 = v26;
LABEL_31:
              *this = v31;
              *(this + 2) = v32;
              *(this + 3) = v17;
              *(this + 4) = v18;
              *(this + 5) = v21;
              *(this + 3) = v30;
              *(this + 8) = v19;
              *(this + 36) = v29;
              *(this + 11) = v22;
              *(this + 12) = v20;
              *(this + 13) = v28;
              return result;
            }

LABEL_29:
            v22 = v26;
            v21 = v27;
            goto LABEL_31;
          }

          result = CFCalendarDecomposeAbsoluteTime(v14, at, "EwY", &v34, &v33, &v35 + 4);
          v19 = v34;
          if (!a6)
          {
            goto LABEL_29;
          }

LABEL_30:
          v22 = v33;
          v20 = HIDWORD(v35);
          v21 = v27;
          goto LABEL_31;
        }

        v23 = *(this + 9);
        if ((*(this + 11) & 0x80000000) != 0 && (*(this + 10) & 0x80000000) != 0)
        {
          if (v23 < 0)
          {
            if ((*(this + 12) & 0x80000000) != 0 && ((*(this + 8) & 0x80000000) != 0 || (*(this + 3) & 0x80000000) == 0))
            {
              if (a5 == 99)
              {
                CFCalendarAddComponents(v14, &at, 0, "M", a8);
              }

              else
              {
                if (a5 == 94)
                {
                  CFCalendarAddComponents(v14, &at, 0, "d", a8);
                  goto LABEL_8;
                }

                if ((a5 - 91) > 2)
                {
                  CFCalendarAddComponents(v14, &at, 0, "y", a8);
                }

                else
                {
                  CFCalendarAddComponents(v14, &at, 0, "d", a8);
                }
              }

              result = CFCalendarDecomposeAbsoluteTime(v14, at, "dMy", &v34 + 4, &v35, &v35 + 4);
              if (*(this + 3) >= 0)
              {
                v17 = HIDWORD(v34);
              }

              if (*(this + 4) >= 0)
              {
                v18 = v35;
              }

              v21 = v27;
              if (a6)
              {
                v21 = HIDWORD(v35);
              }

              goto LABEL_9;
            }

            goto LABEL_23;
          }
        }

        else if (v23 < 0)
        {
LABEL_23:
          CFCalendarAddComponents(v14, &at, 0, "w", a8);
          result = CFCalendarDecomposeAbsoluteTime(v14, at, "EwY", &v34, &v33, &v35 + 4);
          if (*(this + 8) >= 0)
          {
            v19 = v34;
          }

LABEL_25:
          v25 = a7 ^ 1;
          if (!a8)
          {
            v25 = 0;
          }

          if ((v25 & 1) == 0 && !a6)
          {
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        length = CFCalendarGetRangeOfUnit(v14, 0x400uLL, 8uLL, AbsoluteTime).length;
        CFCalendarAddComponents(v14, &at, 0, "F", (length - *(this + 9)) * a8);
        result = CFCalendarDecomposeAbsoluteTime(v14, at, "EwY", &v34, &v33, &v35 + 4);
        goto LABEL_25;
      }
    }
  }

  return result;
}

uint64_t QP::DateComponents::isEmpty(QP::DateComponents *this)
{
  if (!QP::DateComponents::hasDate(this) && (*(this + 2) & 0x80000000) != 0 && (*(this + 1) & 0x80000000) != 0 && (*this & 0x80000000) != 0)
  {
    return *(this + 7) >> 31;
  }

  else
  {
    return 0;
  }
}

CFAbsoluteTime QP::DateComponents::getAbsoluteTime(QP::DateComponents *this, __CFCalendar *a2, const __CFDate *a3)
{
  at[0] = 0.0;
  CurrentTime = getCurrentTime(a2, a3);
  v64 = -1;
  v65 = -1;
  v62 = -1;
  v63 = -1;
  v60 = -1;
  v61 = -1;
  v59 = -1;
  v57 = -1;
  v58 = -1;
  CFCalendarDecomposeAbsoluteTime(a2, CurrentTime, "yMdwEFHms", &v63, &v64, &v65, &v61, &v62, &v60, &v59, &v58, &v57);
  v55 = 0;
  v6 = *(this + 7);
  if ((v6 & 0x80000000) != 0)
  {
    v8 = 0;
    LOBYTE(v7) = 1;
  }

  else if (v6 > 8)
  {
    LOBYTE(v7) = 0;
    v8 = 1;
  }

  else
  {
    v7 = 0x10Au >> v6;
    v8 = 0xF5u >> v6;
  }

  if (QP::DateComponents::isTime(this))
  {
    v9 = *(this + 2);
    v10 = v9 & ~(v9 >> 31);
    if ((*(this + 7) & 0x80000000) == 0)
    {
      v28 = v9 == 12;
      v11 = v7 & (v9 == 12);
      v12 = !v28;
      if (v11 | v8 & v12)
      {
        v10 += 12;
      }
    }

    CFCalendarComposeAbsoluteTime(a2, at, "dMyHms", v65, v64, v63, v10, *(this + 1) & ~(*(this + 1) >> 31), *this & ~(*this >> 31));
    return at[0];
  }

  v13 = *(this + 11);
  if ((v13 & 0x80000000) != 0)
  {
    if ((*(this + 10) & 0x80000000) != 0 && (*(this + 9) & 0x80000000) != 0 && (*(this + 12) & 0x80000000) != 0)
    {
      v32 = *(this + 8);
      v33 = *(this + 3);
      if ((v32 & 0x80000000) != 0 || (v33 & 0x80000000) == 0)
      {
        if (v33 < 0)
        {
          v38 = 1;
        }

        else
        {
          v38 = v33;
        }

        v54 = v38;
        LODWORD(v38) = *(this + 4);
        if (v38 < 0)
        {
          v38 = 1;
        }

        else
        {
          v38 = v38;
        }

        v53 = v38;
        if (*(this + 5) >= 0)
        {
          v39 = *(this + 5);
        }

        else
        {
          v39 = v63;
        }

        v41 = *(this + 1);
        v40 = *(this + 2);
        v42 = v40 & ~(v40 >> 31);
        v43 = *this;
        if ((*(this + 7) & 0x80000000) == 0)
        {
          v28 = v40 == 12;
          v44 = v7 & (v40 == 12);
          v45 = !v28;
          if (v44 | v8 & v45)
          {
            v42 += 12;
          }
        }

        v46 = MEMORY[0x1C695AA30](a2);
        if (CFStringsAreEqual(v46, *MEMORY[0x1E695E6B8]) || CFStringsAreEqual(v46, *MEMORY[0x1E695E4D8]))
        {
          v39 = v63;
        }

        CFCalendarComposeAbsoluteTime(a2, at, "dMyHms", v54, v53, v39, v42, v41 & ~(v41 >> 31), v43 & ~(v43 >> 31));
        if ((*(this + 2) & 0x80000000) == 0 && !v42 && v41 <= 0 && v43 <= 0)
        {
          CFCalendarAddComponents(a2, at, 0, "d", 1, v49, v52);
        }
      }

      else
      {
        v34 = *(this + 2);
        v35 = v34 & ~(v34 >> 31);
        if ((*(this + 7) & 0x80000000) == 0)
        {
          v28 = v34 == 12;
          v36 = v7 & (v34 == 12);
          v37 = !v28;
          if (v36 | v8 & v37)
          {
            v35 += 12;
          }
        }

        CFCalendarComposeAbsoluteTime(a2, at, "EwYHms", v32, v61, v63, v35, *(this + 1) & ~(*(this + 1) >> 31), *this & ~(*this >> 31));
      }

      return at[0];
    }

    v13 = 0;
  }

  v15 = *(this + 7);
  v14 = *(this + 8);
  v16 = v14 & ~(v14 >> 31);
  v17 = *(this + 9);
  v56 = v13;
  v18 = *(this + 12);
  if (v18 < 0)
  {
    v18 = v63;
  }

  v19 = *(this + 2);
  v20 = v19 & ~(v19 >> 31);
  v21 = *(this + 1) & ~(*(this + 1) >> 31);
  v22 = *this & ~(*this >> 31);
  if ((v15 & 0x80000000) == 0)
  {
    v28 = v19 == 12;
    v23 = v7 & (v19 == 12);
    v24 = !v28;
    if (v23 | v8 & v24)
    {
      v20 += 12;
    }
  }

  v25 = v18;
  if (v13 || v17 < 1 || v14 < 1)
  {
    if (v14 < 1)
    {
      CFCalendarComposeAbsoluteTime(a2, at, "wY", v13, v18, v50);
    }

    else
    {
      CFCalendarComposeAbsoluteTime(a2, at, "EwY", v14 & ~(v14 >> 31), v13, v18);
    }

    CFCalendarAddComponents(a2, at, 0, "Hms", v20, v21, v22);
    CFCalendarDecomposeAbsoluteTime(a2, at[0], "H", &v55);
    if (v20)
    {
      v28 = v20 == 24;
    }

    else
    {
      v28 = 1;
    }

    v29 = v55;
    if (v28)
    {
      v29 = v20;
    }

    v55 = v29;
    if (v29 <= v20)
    {
      if (v29 >= v20)
      {
        return at[0];
      }

      v30 = 1;
    }

    else
    {
      v30 = 0xFFFFFFFFLL;
    }

    CFCalendarAddComponents(a2, at, 0, "H", v30, v48, v51);
    return at[0];
  }

  if (v17 == 0x7FFFFFFF)
  {
    CFCalendarComposeAbsoluteTime(a2, at, "My", v64 + 1, v18);
    CFCalendarDecomposeAbsoluteTime(a2, at[0], "E", &v55);
    v26 = v55;
    if (v55 < v16)
    {
      CFCalendarAddComponents(a2, at, 0, "w", 0xFFFFFFFFLL);
      v26 = v55;
    }

    CFCalendarAddComponents(a2, at, 0, "E", -v26);
    CFCalendarAddComponents(a2, at, 0, "E", v16, v47);
  }

  else
  {
    v27 = v17 & ~(v17 >> 31);
    CFCalendarComposeAbsoluteTime(a2, at, "My", v64, v18);
    CFCalendarDecomposeAbsoluteTime(a2, at[0], "w", &v56);
    CFCalendarComposeAbsoluteTime(a2, at, "wY", v56, v25);
    CFCalendarAddComponents(a2, at, 0, "FE", v27, v16 - 1);
  }

  CFCalendarAddComponents(a2, at, 0, "Hms", v20, v21, v22);
  return at[0];
}

void QP::updateDateComponentsWithUnitOffset(__CFCalendar *a1, uint64_t a2, const __CFDate *a3, QP::DateComponents *this, int a5, uint64_t a6)
{
  if (!a1 || !a2 || (QP::DateComponents::isEmpty(this) & 1) != 0)
  {
    return;
  }

  AbsoluteTime = QP::DateComponents::getAbsoluteTime(this, a1, a3);
  v12 = *(this + 2);
  at = AbsoluteTime;
  v13 = *(this + 1);
  v14 = *this;
  v15 = 1;
  if (v12 < 0 && v13 < 0 && v14 < 0)
  {
    v15 = *(this + 7) >= 0;
  }

  if (a5 == 6 || !v15)
  {
    if ((*(this + 8) & 0x80000000) == 0)
    {
      CFCalendarAddComponents(a1, &at, 0, "E", a6);
      goto LABEL_41;
    }

    if ((*(this + 11) & 0x80000000) == 0)
    {
      CFCalendarAddComponents(a1, &at, 0, "w", a6);
      goto LABEL_41;
    }

    if ((*(this + 3) & 0x80000000) == 0)
    {
      CFCalendarAddComponents(a1, &at, 0, "d", a6);
      goto LABEL_41;
    }

    if ((*(this + 4) & 0x80000000) == 0)
    {
      CFCalendarAddComponents(a1, &at, 0, "M", a6);
      goto LABEL_41;
    }

    if ((*(this + 5) & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    v16 = "y";
    goto LABEL_40;
  }

  if ((v14 & 0x80000000) == 0 && (a5 - 31) <= 0x2F && ((1 << (a5 - 31)) & 0x801001000001) != 0)
  {
    CFCalendarAddComponents(a1, &at, 0, "s", a6);
    goto LABEL_41;
  }

  if ((v13 & 0x80000000) == 0 && (a5 - 32) <= 0x2F && ((1 << (a5 - 32)) & 0x801000000001) != 0)
  {
    CFCalendarAddComponents(a1, &at, 0, "m", a6);
    goto LABEL_41;
  }

  if ((v12 & 0x80000000) == 0)
  {
    if ((a5 - 33) <= 0x2F && ((1 << (a5 - 33)) & 0x801000000001) != 0 || (a5 - 45) < 0xFFFFFFFD)
    {
      CFCalendarAddComponents(a1, &at, 0, "H", a6);
    }

    goto LABEL_41;
  }

  if (v13 < 0)
  {
    v16 = "s";
  }

  else
  {
    v16 = "m";
  }

  if ((a5 - 45) <= 0xFFFFFFFC && (v13 & v14) >= 0)
  {
LABEL_40:
    CFCalendarAddComponents(a1, &at, 0, v16, a6);
  }

LABEL_41:
  if ((*this & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "s", this);
  }

  if ((*(this + 1) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "m", this + 4);
  }

  if ((*(this + 2) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "H", this + 8);
    *(this + 7) = -1;
  }

  if ((*(this + 8) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "E", this + 32);
  }

  if ((*(this + 3) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "d", this + 12);
  }

  if ((*(this + 4) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "M", this + 16);
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "y", this + 20);
  }

  if ((*(this + 11) & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "w", this + 44);
  }

  v18 = *(this + 12);
  v17 = this + 48;
  if ((v18 & 0x80000000) == 0)
  {
    CFCalendarDecomposeAbsoluteTime(a1, at, "Y", v17);
  }
}

uint64_t QP::updateDateComponentsWithHoliday(QP::HolidayReference **a1, __CFString *a2, const __CFString *a3, const __CFString *a4, __CFCalendar *a5, int a6, int a7, __CFString *a8, uint64_t a9)
{
  v9 = 0;
  if (a5)
  {
    if (a3)
    {
      if (a2)
      {
        v13 = *a1;
        if (v13)
        {
          if (QP::HolidayReference::containsHoliday(v13, a2))
          {
            v18 = QP::HolidayReference::copyValuesForYear(*a1, a2, a3, a4, a7);
            v48 = v18;
            if (v18)
            {
              v19 = v18;
              if (!CFDictionaryContainsKey(v18, @"Year"))
              {
                v9 = 0;
LABEL_44:
                CFRelease(v19);
                return v9;
              }

              valuePtr = 0;
              v46 = 0;
              v45 = 0;
              v44 = a7;
              at = 0.0;
              Value = CFDictionaryGetValue(v19, @"Day");
              if (Value)
              {
                CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
              }

              v21 = CFDictionaryGetValue(v19, @"Month");
              if (v21)
              {
                CFNumberGetValue(v21, kCFNumberIntType, &v46);
              }

              v22 = CFDictionaryGetValue(v19, @"Weekday");
              if (v22)
              {
                CFNumberGetValue(v22, kCFNumberIntType, &v45 + 4);
              }

              v23 = CFDictionaryGetValue(v19, @"WeekOfYear");
              if (v23)
              {
                CFNumberGetValue(v23, kCFNumberIntType, &v45);
              }

              v24 = CFDictionaryGetValue(v19, @"Year");
              if (v24)
              {
                CFNumberGetValue(v24, kCFNumberIntType, &v44);
              }

              v25 = *MEMORY[0x1E695E480];
              v26 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], @"gregorian");
              v27 = v26;
              v42[1] = v26;
              if (HIDWORD(v45) && v45)
              {
                CFCalendarComposeAbsoluteTime(v26, &at, "EwY", HIDWORD(v45), v45, v44);
                v28 = MEMORY[0x1C695AA30](a5);
                if (CFStringsAreEqual(v28, @"gregorian") && (v29 = MEMORY[0x1C695AA20](v27), v29 == MEMORY[0x1C695AA20](a5)))
                {
                  CFCalendarDecomposeAbsoluteTime(v27, at, "EwY", &v45 + 4, &v45, &v44);
                }

                else
                {
                  CFCalendarDecomposeAbsoluteTime(a5, at, "EwY", &v45 + 4, &v45, &v44);
                }

                v32 = &v45;
                v33 = HIDWORD(v45);
                v34 = 20;
                v35 = 48;
                v36 = 44;
                v37 = 32;
              }

              else
              {
                v9 = 0;
                if (!valuePtr || !v46)
                {
LABEL_42:
                  if (v27)
                  {
                    CFRelease(v27);
                  }

                  goto LABEL_44;
                }

                CFCalendarComposeAbsoluteTime(v26, &at, "dMy", valuePtr, v46, v44);
                v30 = MEMORY[0x1C695AA30](a5);
                if (CFStringsAreEqual(v30, @"gregorian") && (v31 = MEMORY[0x1C695AA20](v27), v31 == MEMORY[0x1C695AA20](a5)))
                {
                  CFCalendarDecomposeAbsoluteTime(v27, at, "dMy", &valuePtr, &v46, &v44);
                }

                else
                {
                  CFCalendarDecomposeAbsoluteTime(a5, at, "dMy", &valuePtr, &v46, &v44);
                }

                v32 = &v46;
                v33 = valuePtr;
                v34 = 32;
                v35 = 20;
                v36 = 16;
                v37 = 12;
              }

              *(a9 + v37) = v33;
              *(a9 + v36) = *v32;
              *(a9 + v35) = v44;
              *(a9 + v34) = -1;
              if (a8)
              {
                if (CFDictionaryContainsKey(v19, @"Calendar"))
                {
                  v38 = CFDictionaryGetValue(v19, @"Calendar");
                  MutableCopy = CFStringCreateMutableCopy(v25, 0, v38);
                  v42[0] = MutableCopy;
                  CFStringLowercase(MutableCopy, 0);
                  v40 = CFStringCreateWithFormat(v25, 0, @"holiday-%@-%@-%@", a2, MutableCopy, a4);
                  CFStringAppend(a8, v40);
                  if (v40)
                  {
                    CFRelease(v40);
                  }

                  if (MutableCopy)
                  {
                    CFRelease(MutableCopy);
                  }
                }

                else
                {
                  v42[0] = CFStringCreateWithFormat(v25, 0, @"holiday-%@-gregorian-%@", a2, a4);
                  CFStringAppend(a8, v42[0]);
                  nlp::CFScopedPtr<__CFString const*>::reset(v42, 0);
                }
              }

              v9 = 1;
              goto LABEL_42;
            }
          }

          return 0;
        }
      }
    }
  }

  return v9;
}

void sub_1C658D6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  nlp::CFScopedPtr<__CFCalendar *>::reset(va1, 0);
  nlp::CFScopedPtr<__CFDictionary const*>::reset((v6 - 72), 0);
  _Unwind_Resume(a1);
}

uint64_t QP::updateDateComponentsWithHolidayDisplayKey(uint64_t a1, const __CFString *a2, __CFCalendar *a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @"-");
  v19[2] = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) != 4)
  {
    updated = 0;
    if (!ArrayBySeparatingStrings)
    {
      return updated;
    }

LABEL_11:
    CFRelease(ArrayBySeparatingStrings);
    return updated;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
  v12 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 2);
  v13 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
  v15 = *a1;
  v16 = *(a1 + 8);
  v19[0] = v15;
  v19[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  updated = QP::updateDateComponentsWithHoliday(v19, ValueAtIndex, v12, v13, a3, v14, a5, 0, a6);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (ArrayBySeparatingStrings)
  {
    goto LABEL_11;
  }

  return updated;
}

void sub_1C658D894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  nlp::CFScopedPtr<__CFArray const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

CFStringRef QP::copyDisplayKeyForPeriodDate(uint64_t a1, unsigned int *a2)
{
  v3 = a2[3];
  if ((v3 & 0x80000000) != 0 && (v3 = a2[5], (v3 & 0x80000000) != 0) && (v3 = a2[11], (v3 & 0x80000000) != 0))
  {
    v3 = 1;
  }

  else
  {
    if (v3 == 3)
    {
      v4 = *(a1 + 28) - 1;
      if (v4 < 7)
      {
        v5 = off_1E82666D0;
        return v5[v4];
      }

      return 0;
    }

    if (v3 == 2)
    {
      v4 = *(a1 + 28) - 1;
      if (v4 < 7)
      {
        v5 = off_1E8266698;
        return v5[v4];
      }

      return 0;
    }
  }

  result = 0;
  v7 = *(a1 + 28);
  if (v7 <= 3)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_AFTERNOON", v3);
      }

      if (v7 != 3)
      {
        return result;
      }
    }

    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_MORNING", v3);
  }

  if (v7 > 5)
  {
    if (v7 == 6)
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_EVENING", v3);
    }

    else if (v7 == 7)
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_NIGHT", v3);
    }
  }

  else
  {
    if (v7 != 4)
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_AFTERNOON", v3);
    }

    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_NOON", v3);
  }

  return result;
}

__CFString *QP::copyDisplayKeyForOrdinalDate(QP *this, const QP::DateComponents *a2, const QP::DateComponents *a3)
{
  v5 = *(a2 + 3);
  if ((v5 & 0x80000000) != 0)
  {
    v5 = *(a2 + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v5 = *(a2 + 5);
      if ((v5 & 0x80000000) != 0)
      {
        v6 = *(a2 + 11);
        if (v6 < 0)
        {
          v5 = 1;
        }

        else
        {
          v5 = v6;
        }
      }
    }
  }

  v7 = *(this + 9);
  if (v7 < 0)
  {
    if (!QP::DateComponents::isTime(this) && ((*(this + 2) & *(this + 1) & *this & *(this + 7)) < 0 != v10 || (*(a2 + 3) & 0x80000000) != 0))
    {
      if (v5 == 2)
      {
        return @"FORMATTED:EVERY_TWO_DATE";
      }

      else if (v5 == 3)
      {
        return @"FORMATTED:EVERY_THREE_DATE";
      }

      else
      {
        return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:VAL_%d-N_EVERY_DATE", v5);
      }
    }

    else if ((v5 - 1) >= 3)
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:VAL_%d-N_EVERY_TIME", v5);
    }

    else
    {
      return off_1E8266708[(v5 - 1)];
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];
    switch(v7)
    {
      case 3:
        return CFStringCreateWithFormat(v8, 0, @"FORMATTED:3_%d_ORDINAL_WEEKDAY", *(this + 8));
      case 2:
        return CFStringCreateWithFormat(v8, 0, @"FORMATTED:2_%d_ORDINAL_WEEKDAY", *(this + 8));
      case 1:
        return CFStringCreateWithFormat(v8, 0, @"FORMATTED:1_%d_ORDINAL_WEEKDAY", *(this + 8));
      default:
        return CFStringCreateWithFormat(v8, 0, @"FORMATTED:VAL_%d-N_%d_ORDINAL_WEEKDAY", *(this + 9), *(this + 8));
    }
  }
}

uint64_t QP::DateConverter::loadDateReferenceResourceURL(QP::DateConverter *this, CFURLRef url)
{
  if (url)
  {
    v2 = CFURLCopyPathExtension(url);
    if (CFStringsAreEqual(v2, @"mdplist"))
    {
      operator new();
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  return 0;
}

void sub_1C658DC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1C695B850](v2, 0x1070C40D30B4D84);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

void QP::DateConverter::clearResources(QP::DateConverter *this)
{
  v2 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

BOOL QP::DateConverter::isValid(QP::DateConverter *this, QP::DatePeriod *a2)
{
  v4 = *this;
  if (*(*this + 23) == 1)
  {
    v5 = *(a2 + 3);
    if (v5 < 91)
    {
      if (v5 > 54)
      {
        return 0;
      }

      if ((v5 - 1) <= 1)
      {
        v7 = *(a2 + 11);
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        QP::getCurrentDateComponents(*(v4 + 88), *(v4 + 80), &v10);
        if ((v7 & 0x80000000) == 0 && v7 > SDWORD1(v11))
        {
          return 0;
        }
      }
    }

    else if (v5 < 0x69)
    {
      return 0;
    }
  }

  else if (*(v4 + 24) == 1)
  {
    v6 = *(a2 + 3);
    if (v6 < 19)
    {
      if ((v6 - 1) <= 1)
      {
        v8 = *(a2 + 11);
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        QP::getCurrentDateComponents(*(v4 + 88), *(v4 + 80), &v10);
        if ((v8 & 0x80000000) == 0 && v8 < SDWORD1(v11))
        {
          return 0;
        }
      }
    }

    else if (v6 < 0x37)
    {
      return 0;
    }
  }

  return *(*this + 25) != 1 || (*(a2 + 3) - 105) >= 0x10;
}

__CFCalendar *QP::getCurrentDateComponents@<X0>(__CFCalendar *this@<X0>, __CFCalendar *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v5;
  *a3 = v5;
  if (this)
  {
    v6 = this;
    CurrentTime = getCurrentTime(this, a2);
    return CFCalendarDecomposeAbsoluteTime(v6, CurrentTime, "dEMywYHms", a3 + 12, a3 + 32, a3 + 16, a3 + 20, a3 + 44, a3 + 48, a3 + 8, a3 + 4, a3);
  }

  return this;
}

void QP::DateConverter::datePeriodForValues(CFStringRef theString@<X1>, const __CFDictionary *a2@<X2>, void *a3@<X8>)
{
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a2)
    {
      if (Length && !CFStringHasPrefix(theString, @"Formatted"))
      {
        operator new();
      }
    }
  }

  *a3 = 0;
}

void sub_1C658E154(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::DateConverter::updatePeriodForCalendar(QP::ParserConfiguration **this, const __CFString *a2, CFDictionaryRef theDict, QP::DatePeriod *a4)
{
  updated = 0;
  v47 = *MEMORY[0x1E69E9840];
  if (a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CalendarSystem");
    if (!Value)
    {
      goto LABEL_51;
    }

    v10 = Value;
    v11 = *(*this + 14);
    v12 = MEMORY[0x1C695AA30](*(*this + 11));
    if (!CFStringHasPrefix(v10, @"generic") && CFStringFind(v10, v12, 0).location == -1)
    {
      goto LABEL_51;
    }

    HasPrefix = CFStringHasPrefix(a2, @"Ambiguous");
    HasSuffix = CFStringHasSuffix(a2, @"Time");
    v15 = @"Ambiguoustime";
    if (!HasSuffix)
    {
      v15 = @"Ambiguousdate";
    }

    v16 = @"Date";
    if (HasSuffix)
    {
      v16 = @"Time";
    }

    if (HasPrefix)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v46 = 0;
    updated = CFLocaleGetValue(v11, *MEMORY[0x1E695E6F0]);
    v18 = CFLocaleGetValue(v11, *MEMORY[0x1E695E6D0]);
    ScriptCode = getScriptCode(v11);
    if (!QP::ParserConfiguration::regionValidForLanguage(*this, updated, ScriptCode, v18))
    {
      v18 = QP::ParserConfiguration::canonicalRegionForLanguage(*this, updated, ScriptCode, v18);
    }

    v20 = !updated || ScriptCode == 0;
    v21 = !v20;
    if (!v21 || v18 == 0)
    {
      if (v21)
      {
        v23 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_%@_%@_%@", v17, v10, updated, ScriptCode);
      }

      else if (updated && v18)
      {
        v23 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_%@_%@_%@", v17, v10, updated, v18);
      }

      else
      {
        if (!updated)
        {
          goto LABEL_61;
        }

        v23 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_%@_%@", v17, v10, updated);
      }
    }

    else
    {
      v23 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@_%@_%@_%@_%@", v17, v10, updated, ScriptCode, v18);
    }

    v24 = v23;
    v46 = v23;
    if (v23)
    {
      v25 = CFDictionaryGetValue(theDict, v23);
      if (!v25)
      {
        goto LABEL_52;
      }

      v45 = -1;
      *&v26 = -1;
      *(&v26 + 1) = -1;
      v43 = v26;
      v44 = v26;
      v42 = v26;
      v27 = *this;
      v28 = this[1];
      v41[0] = v27;
      v41[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      updated = QP::updateDateComponentsWithValues(v41, &v42, v25, 0);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (updated)
      {
        Count = CFDictionaryGetCount(v25);
        MEMORY[0x1EEE9AC00](Count);
        v31 = (v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v31, v30);
        CFDictionaryGetKeysAndValues(v25, v31, 0);
        if (Count < 1)
        {
          LOBYTE(v32) = 0;
        }

        else
        {
          v40[1] = v40;
          LOBYTE(v32) = 0;
          do
          {
            v33 = *v31;
            if (CFStringCompare(*v31, @"hh", 0) == kCFCompareEqualTo || CFStringCompare(v33, @"HH", 0) == kCFCompareEqualTo)
            {
              LOBYTE(v32) = 1;
            }

            ++v31;
            --Count;
          }

          while (Count);
          if (HasPrefix != 0 && v32)
          {
            v34 = HIDWORD(v43);
            v32 = v43 >= 0 || SDWORD2(v42) > 11;
            if (!v32)
            {
              v34 = 1;
            }

            HIDWORD(v43) = v34;
          }
        }

        v36 = v43;
        *(a4 + 24) = v42;
        *(a4 + 40) = v36;
        *(a4 + 56) = v44;
        *(a4 + 9) = v45;
        *&v37 = -1;
        *(&v37 + 1) = -1;
        *(a4 + 5) = v37;
        *(a4 + 6) = v37;
        *(a4 + 7) = v37;
        *(a4 + 16) = -1;
        QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
        *(a4 + 3) = 2;
        *(a4 + 8) = v32;
      }

      else
      {
LABEL_52:
        updated = 0;
      }

      CFRelease(v24);
    }

    else
    {
LABEL_51:
      updated = 0;
    }
  }

LABEL_61:
  v38 = *MEMORY[0x1E69E9840];
  return updated;
}

void sub_1C658E5D0(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  nlp::CFScopedPtr<__CFString const*>::reset((v2 - 96), 0);
  _Unwind_Resume(a1);
}

uint64_t QP::DateConverter::updatePeriodForFormattedDate(std::__shared_weak_count **this, const __CFString *a2, CFDictionaryRef theDict, QP::DatePeriod *a4)
{
  if (!theDict)
  {
    return 0;
  }

  v5 = *this;
  v6 = (*this)[4].__vftable;
  if (!v6)
  {
    return 0;
  }

  shared_weak_owners = v5[4].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    return 0;
  }

  shared_owners = v5[3].__shared_owners_;
  v12 = @"FormattedDate";
  if (!CFDictionaryContainsKey(theDict, @"FormattedDate"))
  {
    v12 = @"FormattedRecurringDate";
    if (!CFDictionaryContainsKey(theDict, @"FormattedRecurringDate"))
    {
      v12 = @"FormattedTime";
      if (!CFDictionaryContainsKey(theDict, @"FormattedTime"))
      {
        return 0;
      }
    }
  }

  Value = CFDictionaryGetValue(theDict, v12);
  if (!Value)
  {
    return 0;
  }

  v50 = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  v48 = v14;
  v49 = v14;
  v47 = v14;
  v43 = v14;
  v44 = v14;
  v45 = v14;
  v46 = -1;
  v39 = v14;
  v40 = v14;
  v41 = v14;
  v42 = -1;
  v15 = this[1];
  v38[0] = *this;
  v38[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updated = QP::updateDateComponentsWithValues(v38, &v47, Value, 0);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (updated)
  {
    QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
    *(a4 + 3) = 2;
    v17 = BYTE3((*this)[1].__vftable);
    v18 = BYTE2((*this)[1].__vftable);
    CurrentTime = getCurrentTime(v6, shared_owners);
    AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v47, v6, shared_owners);
    if (CFStringHasPrefix(a2, @"This"))
    {
      if (v17 && AbsoluteTime > CurrentTime)
      {
        v21 = *(a4 + 3);
        v22 = v6;
        v23 = shared_weak_owners;
        v24 = shared_owners;
        v25 = 0xFFFFFFFFLL;
      }

      else
      {
        v21 = *(a4 + 3);
        if (v18 && AbsoluteTime < CurrentTime)
        {
          v22 = v6;
          v23 = shared_weak_owners;
          v24 = shared_owners;
          v25 = 1;
        }

        else
        {
          v22 = v6;
          v23 = shared_weak_owners;
          v24 = shared_owners;
          v25 = 0;
        }
      }

      QP::updateDateComponentsWithRelativeDateOffset(v22, v23, v24, &v47, v21, 1, 0, v25);
      v27 = 17;
    }

    else if (CFStringHasPrefix(a2, @"Last"))
    {
      QP::updateDateComponentsWithRelativeDateOffset(v6, shared_weak_owners, shared_owners, &v47, *(a4 + 3), 1, 0, 0xFFFFFFFFLL);
      if (QP::DateComponents::getAbsoluteTime(&v47, v6, shared_owners) > CurrentTime)
      {
        QP::updateDateComponentsWithRelativeDateOffset(v6, shared_weak_owners, shared_owners, &v47, *(a4 + 3), 1, 0, 0xFFFFFFFFLL);
      }

      v27 = 29;
    }

    else
    {
      if (!CFStringHasPrefix(a2, @"Next"))
      {
        if (CFStringHasPrefix(a2, @"Every"))
        {
          if (CFStringHasPrefix(a2, @"EveryNum"))
          {
            v35 = QP::intValueForNumberInValues((*this)[4].__shared_weak_owners_, theDict, v33);
          }

          else if (CFStringHasPrefix(a2, @"EveryTwo"))
          {
            v35 = 2;
          }

          else
          {
            v35 = 1;
          }

          if ((HIDWORD(v48) & 0x80000000) != 0)
          {
            if ((v47 & 0x80000000) != 0)
            {
              if ((DWORD1(v47) & 0x80000000) != 0)
              {
                if ((DWORD2(v47) & 0x80000000) != 0)
                {
                  if ((v49 & 0x80000000) != 0)
                  {
                    if ((HIDWORD(v47) & 0x80000000) != 0 && (v48 & 0x80000000) != 0)
                    {
                      if ((DWORD1(v48) & 0x80000000) == 0)
                      {
                        DWORD1(v40) = v35;
                      }
                    }

                    else
                    {
                      DWORD1(v40) = v35;
                    }
                  }

                  else
                  {
                    HIDWORD(v41) = v35;
                  }
                }

                else
                {
                  DWORD2(v39) = v35;
                }
              }

              else
              {
                DWORD1(v39) = v35;
              }
            }

            else
            {
              LODWORD(v39) = v35;
            }
          }

          else
          {
            HIDWORD(v39) = v35;
          }

          v37 = QP::copyDisplayKeyForOrdinalDate(&v47, &v39, v34);
          QP::DatePeriod::setDisplayKey(a4, v37);
          if (v35 <= 1)
          {
            v36 = 103;
          }

          else
          {
            v36 = 118;
          }

          *(a4 + 3) = v36;
          nlp::CFScopedPtr<__CFString const*>::reset(&v37, 0);
        }

        goto LABEL_29;
      }

      QP::updateDateComponentsWithRelativeDateOffset(v6, shared_weak_owners, shared_owners, &v47, *(a4 + 3), 1, 0, 1);
      if (QP::DateComponents::getAbsoluteTime(&v47, v6, shared_owners) < CurrentTime)
      {
        QP::updateDateComponentsWithRelativeDateOffset(v6, shared_weak_owners, shared_owners, &v47, *(a4 + 3), 1, 0, 1);
      }

      v27 = 65;
    }

    *(a4 + 3) = v27;
LABEL_29:
    v28 = v48;
    *(a4 + 24) = v47;
    *(a4 + 40) = v28;
    *(a4 + 56) = v49;
    *(a4 + 9) = v50;
    v29 = v44;
    *(a4 + 5) = v43;
    *(a4 + 6) = v29;
    *(a4 + 7) = v45;
    *(a4 + 16) = v46;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *(a4 + 23) = v42;
    *(a4 + 168) = v32;
    *(a4 + 152) = v31;
    *(a4 + 136) = v30;
  }

  return updated;
}

void sub_1C658EAB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::DateConverter::updatePeriodForPeriodTime(std::__shared_weak_count **this, const __CFString *a2, CFDictionaryRef theDict, QP::DatePeriod *a4)
{
  v4 = theDict;
  if (theDict)
  {
    v6 = *this;
    v7 = (*this)[4].__vftable;
    if (v7)
    {
      shared_weak_owners = v6[4].__shared_weak_owners_;
      if (shared_weak_owners)
      {
        shared_owners = v6[3].__shared_owners_;
        v12 = @"FormattedPeriod";
        if (CFDictionaryContainsKey(theDict, @"FormattedPeriod") || (v12 = @"FormattedRecurringPeriod", CFDictionaryContainsKey(v4, @"FormattedRecurringPeriod")))
        {
          Value = CFDictionaryGetValue(v4, v12);
          if (Value)
          {
            v41 = -1;
            *&v14 = -1;
            *(&v14 + 1) = -1;
            v39 = v14;
            v40 = v14;
            v38 = v14;
            v34 = v14;
            v35 = v14;
            v36 = v14;
            v37 = -1;
            v15 = this[1];
            v33[0] = *this;
            v33[1] = v15;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            updated = QP::updateDateComponentsWithValues(v33, &v38, Value, 0);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }

            if (updated)
            {
              QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
              *(a4 + 3) = 3;
              v17 = BYTE3((*this)[1].__vftable);
              v18 = BYTE2((*this)[1].__vftable);
              CurrentTime = getCurrentTime(v7, shared_owners);
              AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v38, v7, shared_owners);
              if (!CFStringHasPrefix(a2, @"This"))
              {
                if (!CFStringHasPrefix(a2, @"Last"))
                {
                  if (CFStringHasPrefix(a2, @"Next"))
                  {
                    v4 = 1;
                    QP::updateDateComponentsWithRelativeUnitOffset(v7, shared_weak_owners, shared_owners, &v38, *(a4 + 3), 1, 0);
                    *(a4 + 3) = 66;
                    goto LABEL_27;
                  }

                  if (CFStringHasPrefix(a2, @"Every"))
                  {
                    if (CFStringHasPrefix(a2, @"EveryNum"))
                    {
                      v29 = QP::intValueForNumberInValues((*this)[4].__shared_weak_owners_, v4, v28);
                    }

                    else if (CFStringHasPrefix(a2, @"EveryTwo"))
                    {
                      v29 = 2;
                    }

                    else
                    {
                      v29 = 1;
                    }

                    HIDWORD(v34) = v29;
                    v30 = QP::copyDisplayKeyForPeriodDate(&v38, &v34);
                    v32 = v30;
                    if (v29 <= 1)
                    {
                      v31 = 104;
                    }

                    else
                    {
                      v31 = 119;
                    }

                    *(a4 + 3) = v31;
                    QP::DatePeriod::setDisplayKey(a4, v30);
                    v4 = v30 != 0;
                    nlp::CFScopedPtr<__CFString const*>::reset(&v32, 0);
                    goto LABEL_27;
                  }

LABEL_26:
                  v4 = 1;
LABEL_27:
                  v24 = v39;
                  *(a4 + 24) = v38;
                  *(a4 + 40) = v24;
                  *(a4 + 56) = v40;
                  *&v25 = -1;
                  *(&v25 + 1) = -1;
                  *(a4 + 5) = v25;
                  *(a4 + 6) = v25;
                  *(a4 + 7) = v25;
                  v26 = v35;
                  *(a4 + 168) = v36;
                  v27 = v34;
                  *(a4 + 152) = v26;
                  *(a4 + 9) = v41;
                  *(a4 + 16) = -1;
                  *(a4 + 23) = v37;
                  *(a4 + 136) = v27;
                  return v4;
                }

                QP::updateDateComponentsWithRelativeUnitOffset(v7, shared_weak_owners, shared_owners, &v38, *(a4 + 3), 0xFFFFFFFFLL, 0);
                v23 = 30;
LABEL_25:
                *(a4 + 3) = v23;
                goto LABEL_26;
              }

              if (v17 && AbsoluteTime > CurrentTime)
              {
                v21 = 0xFFFFFFFFLL;
              }

              else
              {
                if (!v18 || AbsoluteTime >= CurrentTime)
                {
                  goto LABEL_24;
                }

                v21 = 1;
              }

              QP::updateDateComponentsWithRelativeUnitOffset(v7, shared_weak_owners, shared_owners, &v38, *(a4 + 3), v21, 0);
LABEL_24:
              v23 = 18;
              goto LABEL_25;
            }
          }
        }
      }
    }

    return 0;
  }

  return v4;
}

void sub_1C658EE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::DateConverter::updatePeriodForHolidayCompoundDate(std::__shared_weak_count **this, CFDictionaryRef theDict, QP::DatePeriod *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (theDict && CFDictionaryContainsKey(theDict, @"HolidayDate") && (*this)[4].__shared_weak_owners_ && (*this)[3].__shared_weak_owners_)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    v32 = v6;
    v33 = v6;
    v34 = v6;
    v35[0] = v6;
    v35[1] = v6;
    v35[2] = v6;
    v35[3] = v6;
    v35[4] = v6;
    v35[5] = v6;
    v35[6] = v6;
    v36 = -1;
    Count = CFDictionaryGetCount(theDict);
    v23[1] = v23;
    MEMORY[0x1EEE9AC00](Count);
    v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v9, v8);
    CFDictionaryGetKeysAndValues(theDict, v9, 0);
    if (Count >= 1)
    {
      do
      {
        v10 = *v9;
        if (!CFStringHasPrefix(*v9, @"HolidayDate"))
        {
          if (CFStringHasPrefix(v10, @"Relative"))
          {
            QP::DateConverter::updatePeriodForRelativeDate(this, v10, &v29);
          }

          else if (CFStringHasSuffix(v10, @"Date"))
          {
            Value = CFDictionaryGetValue(theDict, v10);
            if (Value && (QP::DateConverter::updatePeriodForValueDate(this, v10, Value, &v29) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v28 = -1;
            *&v12 = -1;
            *(&v12 + 1) = -1;
            v26 = v12;
            v27 = v12;
            v25 = v12;
            v13 = this[1];
            v24[0] = *this;
            v24[1] = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            updated = QP::updateDateComponentsWithValues(v24, &v25, theDict, 0);
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if ((updated & 1) == 0)
            {
LABEL_31:
              v16 = 0;
              goto LABEL_47;
            }

            v32 = v25;
            v33 = v26;
            v34 = v27;
            *&v35[0] = v28;
            *&v15 = -1;
            *(&v15 + 1) = -1;
            *(v35 + 8) = v15;
            *(&v35[1] + 8) = v15;
            *(&v35[2] + 8) = v15;
            *(&v35[3] + 1) = -1;
            HIDWORD(v30) = 1;
          }
        }

        ++v9;
        --Count;
      }

      while (Count);
    }

    if ((HIDWORD(v30) - 6) >= 0xD)
    {
      if ((HIDWORD(v30) - 19) >= 0xC)
      {
        if ((HIDWORD(v30) - 55) >= 0xC)
        {
          if ((HIDWORD(v30) - 78) >= 0xB)
          {
            if ((HIDWORD(v30) - 67) >= 0xB)
            {
              if ((HIDWORD(v30) - 31) >= 0xB)
              {
                if ((HIDWORD(v30) - 42) >= 0xB)
                {
                  if ((HIDWORD(v30) - 91) >= 0xE)
                  {
                    v19 = HIDWORD(v30);
                  }

                  else
                  {
                    v19 = 102;
                  }
                }

                else
                {
                  v19 = 51;
                }
              }

              else
              {
                v19 = 40;
              }
            }

            else
            {
              v19 = 76;
            }
          }

          else
          {
            v19 = 87;
          }
        }

        else
        {
          v19 = 64;
        }
      }

      else
      {
        v19 = 28;
      }
    }

    else
    {
      v19 = 16;
    }

    v20 = DWORD1(v33);
    *(a3 + 3) = -1;
    *(a3 + 4) = -1;
    *(a3 + 10) = -1;
    *(a3 + 11) = v20;
    *&v21 = -1;
    *(&v21 + 1) = -1;
    *(a3 + 3) = v21;
    *(a3 + 4) = v21;
    v22 = CFDictionaryGetValue(theDict, @"HolidayDate");
    v16 = QP::DateConverter::updatePeriodForHolidayDate(this, v22, a3);
    if (v16)
    {
      if (v19 == 1 || v19 == 89 || v19 == 53)
      {
        QP::DatePeriod::setDisplayKey(a3, @"FORMATTED");
      }

      *(a3 + 3) = v19;
    }

LABEL_47:
    if (v29)
    {
      CFRelease(v29);
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1C658F208(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong QP::DateConverter::updatePeriodForHolidayRelativeDate(atomic_ullong **this, const __CFString *a2, CFDictionaryRef theDict, QP::DatePeriod *a4)
{
  result = 0;
  if (a2)
  {
    if (theDict)
    {
      result = CFDictionaryContainsKey(theDict, @"HolidayDate");
      if (result)
      {
        v9 = *this;
        if (!(*this)[14])
        {
          return 0;
        }

        result = v9[11];
        if (result)
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          v15 = 0u;
          QP::getCurrentDateComponents(result, v9[10], &v15);
          if (CFStringHasSuffix(a2, @"ThisDate"))
          {
            v10 = 16;
            v11 = -1;
LABEL_8:
            v12 = DWORD1(v16);
            goto LABEL_19;
          }

          if (CFStringHasSuffix(a2, @"LastLastDate"))
          {
            v12 = DWORD1(v16) - 2;
            v10 = 40;
          }

          else if (CFStringHasSuffix(a2, @"LastDate"))
          {
            v12 = DWORD1(v16) - 1;
            v10 = 28;
          }

          else if (CFStringHasSuffix(a2, @"NextNextDate"))
          {
            v12 = DWORD1(v16) + 2;
            v10 = 87;
          }

          else if (CFStringHasSuffix(a2, @"NextDate"))
          {
            v12 = DWORD1(v16) + 1;
            v10 = 64;
          }

          else
          {
            if (CFStringHasSuffix(a2, @"EveryDate"))
            {
              v10 = 102;
              v11 = 1;
              goto LABEL_8;
            }

            v10 = 1;
            v12 = -1;
          }

          v11 = -1;
LABEL_19:
          *(a4 + 3) = -1;
          *(a4 + 4) = -1;
          *(a4 + 10) = -1;
          *(a4 + 11) = v12;
          *&v13 = -1;
          *(&v13 + 1) = -1;
          *(a4 + 3) = v13;
          *(a4 + 4) = v13;
          *(a4 + 17) = -1;
          *(a4 + 18) = -1;
          *(a4 + 38) = -1;
          *(a4 + 39) = v11;
          *(a4 + 10) = v13;
          *(a4 + 11) = v13;
          Value = CFDictionaryGetValue(theDict, @"HolidayDate");
          result = QP::DateConverter::updatePeriodForHolidayDate(this, Value, a4);
          if (result)
          {
            *(a4 + 3) = v10;
          }
        }
      }
    }
  }

  return result;
}

uint64_t QP::DateConverter::updatePeriodForHolidayDate(atomic_ullong **this, CFDictionaryRef theDict, QP::DatePeriod *a3)
{
  if (!theDict)
  {
    return 0;
  }

  if (!(*this)[14])
  {
    return 0;
  }

  v4 = (*this)[12];
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"Identifier");
  v8 = CFDictionaryGetValue(theDict, @"CalendarSystem");
  if (!(v8 | Value))
  {
    return 0;
  }

  v9 = v8;
  v10 = *(a3 + 40);
  v45 = *(a3 + 24);
  v46 = v10;
  v47 = *(a3 + 56);
  v48 = *(a3 + 9);
  v11 = *(a3 + 6);
  v41 = *(a3 + 5);
  v12 = *(a3 + 7);
  v42 = v11;
  v43 = v12;
  v44 = *(a3 + 16);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  QP::getCurrentDateComponents(v4, (*this)[10], &v37);
  AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v37, v4, (*this)[10]);
  v14 = DWORD1(v46);
  isEmpty = QP::DateComponents::isEmpty(&v45);
  if (SDWORD1(v46) < 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = isEmpty;
  }

  v32 = DWORD1(v38);
  if (v16)
  {
    v17 = DWORD1(v38);
  }

  else
  {
    v17 = v14;
  }

  v18 = *(*this + 28);
  v33 = *(*this + 26);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, &stru_1F45E9EA0);
  v21 = this[3];
  v36[0] = this[2];
  v36[1] = v21;
  v36[2] = MutableCopy;
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  updated = QP::updateDateComponentsWithHoliday(v36, Value, v9, (*this)[16], (*this)[12], v19, v17, MutableCopy, &v45);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (!updated)
  {
    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  if (v18)
  {
    if (QP::DateComponents::getAbsoluteTime(&v45, (*this)[12], (*this)[10]) <= AbsoluteTime)
    {
      goto LABEL_33;
    }

    v49.length = CFStringGetLength(MutableCopy);
    v49.location = 0;
    CFStringDelete(MutableCopy, v49);
    v24 = this[3];
    v35[0] = this[2];
    v35[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
    }

    v25 = QP::updateDateComponentsWithHoliday(v35, Value, v9, (*this)[16], (*this)[12], v23, v32 - 1, MutableCopy, &v45);
  }

  else
  {
    if (!v33 || QP::DateComponents::getAbsoluteTime(&v45, (*this)[12], (*this)[10]) >= AbsoluteTime)
    {
      goto LABEL_33;
    }

    v50.length = CFStringGetLength(MutableCopy);
    v50.location = 0;
    CFStringDelete(MutableCopy, v50);
    v24 = this[3];
    v34[0] = this[2];
    v34[1] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
    }

    v25 = QP::updateDateComponentsWithHoliday(v34, Value, v9, (*this)[16], (*this)[12], v28, v32 + 1, MutableCopy, &v45);
  }

  v26 = v25;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    if ((v26 & 1) == 0)
    {
LABEL_31:
      v26 = 0;
      goto LABEL_34;
    }
  }

  else if (!v25)
  {
    goto LABEL_34;
  }

LABEL_33:
  QP::DatePeriod::setDisplayKey(a3, MutableCopy);
  v29 = v46;
  *(a3 + 24) = v45;
  *(a3 + 40) = v29;
  *(a3 + 56) = v47;
  v30 = v42;
  v31 = v43;
  *(a3 + 5) = v41;
  *(a3 + 6) = v30;
  v26 = 1;
  *(a3 + 3) = 1;
  *(a3 + 9) = v48;
  *(a3 + 7) = v31;
  *(a3 + 16) = v44;
LABEL_34:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v26;
}

void sub_1C658F764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::DateConverter::updatePeriodForValueCompoundDate(QP::DateConverter *this, const __CFString *a2, CFDictionaryRef theDict, QP::DatePeriod *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    result = 0;
    goto LABEL_58;
  }

  Count = CFDictionaryGetCount(theDict);
  v29 = &v29;
  MEMORY[0x1EEE9AC00](Count);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  CFDictionaryGetKeysAndValues(theDict, v9, 0);
  if (Count < 1)
  {
    goto LABEL_19;
  }

  v10 = 0;
  do
  {
    v11 = *v9;
    if (!CFStringHasSuffix(*v9, @"Date"))
    {
      v35 = -1;
      *&v12 = -1;
      *(&v12 + 1) = -1;
      v33 = v12;
      v34 = v12;
      v32 = v12;
      v13 = *(this + 1);
      v31[0] = *this;
      v31[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::updateDateComponentsWithValues(v31, &v32, theDict, 0);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v33;
      *(a4 + 24) = v32;
      *(a4 + 40) = v14;
      *(a4 + 56) = v34;
      *(a4 + 9) = v35;
      *&v15 = -1;
      *(&v15 + 1) = -1;
      *(a4 + 5) = v15;
      *(a4 + 6) = v15;
      *(a4 + 7) = v15;
      v11 = v10;
      *(a4 + 16) = -1;
    }

    ++v9;
    v10 = v11;
    --Count;
  }

  while (Count);
  if (v11)
  {
    Value = CFDictionaryGetValue(theDict, v11);
    if (CFStringHasPrefix(v11, @"Relative"))
    {
      result = QP::DateConverter::updatePeriodForRelativeDate(this, v11, a4);
      if (result)
      {
        if (CFStringContainsString(v11, @"Every"))
        {
          if (CFStringContainsString(v11, @"EveryNum"))
          {
            if (QP::intValueForNumberInValues(*(*this + 112), Value, v18) <= 1)
            {
              v20 = 103;
            }

            else
            {
              v20 = 118;
            }
          }

          else if (CFStringContainsString(v11, @"EveryTwo"))
          {
            v20 = 118;
          }

          else if (CFStringContainsString(v11, @"EveryThree"))
          {
            v20 = 118;
          }

          else
          {
            v20 = 103;
          }

          v25 = QP::copyDisplayKeyForOrdinalDate((a4 + 24), (a4 + 136), v19);
          v30 = v25;
          QP::DatePeriod::setDisplayKey(a4, v25);
          *(a4 + 3) = v20;
          if (!v25)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_28:
        QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
LABEL_44:
        result = 1;
      }
    }

    else
    {
      v21 = CFDictionaryGetValue(theDict, v11);
      if (CFStringHasPrefix(v11, @"Every"))
      {
        result = QP::DateConverter::updatePeriodForOrdinalDate(this, v11, v21, a4);
        if (result)
        {
          if (CFStringContainsString(v11, @"EveryNum"))
          {
            if (QP::intValueForNumberInValues(*(*this + 112), v21, v22) <= 1)
            {
              v24 = 103;
            }

            else
            {
              v24 = 118;
            }
          }

          else if (CFStringContainsString(v11, @"EveryTwo"))
          {
            v24 = 118;
          }

          else if (CFStringContainsString(v11, @"EveryThree"))
          {
            v24 = 118;
          }

          else
          {
            v24 = 103;
          }

          v25 = QP::copyDisplayKeyForOrdinalDate((a4 + 24), (a4 + 136), v23);
          v30 = v25;
          QP::DatePeriod::setDisplayKey(a4, v25);
          *(a4 + 3) = v24;
          if (!v25)
          {
            goto LABEL_44;
          }

LABEL_43:
          CFRelease(v25);
          goto LABEL_44;
        }
      }

      else
      {
        result = QP::DateConverter::updatePeriodForValueDate(this, v11, v21, a4);
        if (result)
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
LABEL_19:
    result = 0;
  }

  v26 = *(a4 + 3);
  if ((v26 - 6) >= 0xD)
  {
    if ((v26 - 55) >= 0xC)
    {
      if ((v26 - 19) >= 0xC)
      {
        if ((v26 - 55) >= 0x24)
        {
          if ((v26 - 19) >= 0x24)
          {
            if ((v26 - 91) >= 0xE)
            {
              if ((v26 - 105) > 0xF)
              {
                goto LABEL_58;
              }

              v27 = 118;
            }

            else
            {
              v27 = 103;
            }
          }

          else
          {
            v27 = 54;
          }
        }

        else
        {
          v27 = 90;
        }
      }

      else
      {
        v27 = 29;
      }
    }

    else
    {
      v27 = 65;
    }
  }

  else
  {
    v27 = 17;
  }

  *(a4 + 3) = v27;
LABEL_58:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C658FBE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::DateConverter::updatePeriodForOrdinalDate(std::__shared_weak_count **this, const __CFString *a2, const __CFDictionary *a3, QP::DatePeriod *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *this;
  shared_weak_owners = (*this)[4].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    return 0;
  }

  v7 = v5[3].__shared_weak_owners_;
  if (!v7)
  {
    return 0;
  }

  at[0] = getCurrentTime(v5[3].__shared_weak_owners_, v5[3].__shared_owners_);
  v11 = *(a4 + 40);
  v69 = *(a4 + 24);
  v70 = v11;
  v71 = *(a4 + 56);
  v72 = *(a4 + 9);
  v48 = *(a4 + 35);
  v49 = *(a4 + 36);
  v12 = *(a4 + 38);
  v50 = *(a4 + 37);
  v13 = *(a4 + 39);
  v14 = *(a4 + 10);
  v15 = *(a4 + 45);
  v68 = *(a4 + 44);
  v67 = v14;
  v52 = *(a4 + 23);
  v16 = *(a4 + 6);
  v65 = *(a4 + 5);
  v66 = v16;
  v17 = *(a4 + 28);
  v64 = *(a4 + 116);
  v54 = *(a4 + 31);
  v55 = v17;
  v53 = *(a4 + 32);
  v47 = *(a4 + 34);
  v51 = *(a4 + 33);
  v63 = -1;
  v61 = -1;
  v62 = -1;
  v59 = -1;
  v60 = -1;
  v58 = -1;
  CFCalendarDecomposeAbsoluteTime(v7, at[0], "yMdEwHms", &v63 + 4, &v63, &v62, &v61, &v60, &v59, &v58 + 4, &v58);
  HasSuffix = CFStringHasSuffix(a2, @"EveryNumIsoDayPerMonthDate");
  if (HasSuffix)
  {
    v20 = QP::intValueForNumberInValues(shared_weak_owners, a3, v18);
    goto LABEL_8;
  }

  if (!CFStringHasSuffix(a2, @"EveryLastIsoDayPerMonthDate"))
  {
    if (!CFStringHasPrefix(a2, @"EveryNum"))
    {
      goto LABEL_75;
    }

    v26 = QP::intValueForNumberInValues(shared_weak_owners, a3, v25);
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v26;
      if (CFStringFind(a2, @"Second", 0).location != -1)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_SECOND", v27);
        QP::DatePeriod::setDisplayKey(a4, v56);
        if (v27 <= 1)
        {
          v28 = 91;
        }

        else
        {
          v28 = 106;
        }

        *(a4 + 3) = v28;
        if (QP::DateComponents::isEmpty(&v69))
        {
          *&v69 = v58;
          *(&v69 + 1) = __PAIR64__(v62, v59);
          *&v70 = v63;
        }

        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        v29 = v27;
        v30 = v52;
        v32 = v50;
        v31 = v51;
        v33 = v48;
        v34 = v49;
        goto LABEL_79;
      }

      if (CFStringFind(a2, @"Minute", 0).location != -1)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_MINUTE", v27);
        QP::DatePeriod::setDisplayKey(a4, v56);
        if (v27 <= 1)
        {
          v38 = 92;
        }

        else
        {
          v38 = 107;
        }

        *(a4 + 3) = v38;
        if (QP::DateComponents::isEmpty(&v69))
        {
          *&v69 = v58;
          *(&v69 + 1) = __PAIR64__(v62, v59);
          *&v70 = v63;
        }

        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        v33 = v27;
        v30 = v52;
        v32 = v50;
        v31 = v51;
        goto LABEL_77;
      }

      if (CFStringFind(a2, @"Hour", 0).location != -1)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_HOUR", v27);
        QP::DatePeriod::setDisplayKey(a4, v56);
        if (v27 <= 1)
        {
          v39 = 93;
        }

        else
        {
          v39 = 108;
        }

        *(a4 + 3) = v39;
        if (QP::DateComponents::isEmpty(&v69))
        {
          *&v69 = v58;
          *(&v69 + 1) = __PAIR64__(v62, v59);
          *&v70 = v63;
        }

        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        v34 = v27;
        v30 = v52;
        v32 = v50;
        v31 = v51;
        v33 = v48;
        goto LABEL_78;
      }

      if (CFStringFind(a2, @"Day", 0).location != -1)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_DAY", v27);
        QP::DatePeriod::setDisplayKey(a4, v56);
        if (v27 <= 1)
        {
          v40 = 94;
        }

        else
        {
          v40 = 109;
        }

        *(a4 + 3) = v40;
        if (QP::DateComponents::isEmpty(&v69))
        {
          HIDWORD(v69) = v62;
          *&v70 = v63;
        }

        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        v32 = v27;
        v30 = v52;
        v31 = v51;
        goto LABEL_76;
      }

      if (CFStringFind(a2, @"Weekend", 0).location == -1)
      {
        if (CFStringFind(a2, @"Week", 0).location == -1)
        {
          if (CFStringFind(a2, @"Month", 0).location == -1)
          {
            if (CFStringFind(a2, @"Year", 0).location != -1)
            {
              v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_YEAR", v27);
              QP::DatePeriod::setDisplayKey(a4, v56);
              if (v27 <= 1)
              {
                v46 = 100;
              }

              else
              {
                v46 = 115;
              }

              *(a4 + 3) = v46;
              if (QP::DateComponents::isEmpty(&v69))
              {
                DWORD1(v70) = HIDWORD(v63);
              }

              nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
              v13 = v27;
            }
          }

          else
          {
            v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_MONTH", v27);
            QP::DatePeriod::setDisplayKey(a4, v56);
            if (v27 <= 1)
            {
              v45 = 99;
            }

            else
            {
              v45 = 114;
            }

            *(a4 + 3) = v45;
            if (QP::DateComponents::isEmpty(&v69))
            {
              *&v70 = v63;
            }

            nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
            v12 = v27;
          }

          goto LABEL_75;
        }

        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_WEEK", v27);
        QP::DatePeriod::setDisplayKey(a4, v56);
        if (v27 <= 1)
        {
          v42 = 98;
        }

        else
        {
          v42 = 113;
        }

        *(a4 + 3) = v42;
        if (QP::DateComponents::isEmpty(&v69))
        {
          CFCalendarComposeAbsoluteTime(v7, at, "wY", v60, HIDWORD(v63));
          CFCalendarDecomposeAbsoluteTime(v7, at[0], "yEw", &v63 + 4, &v61, &v60);
          HIDWORD(v71) = v60;
          LODWORD(v72) = HIDWORD(v63);
        }
      }

      else
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_WEEKEND", v27);
        QP::DatePeriod::setDisplayKey(a4, v56);
        if (v27 <= 1)
        {
          v41 = 97;
        }

        else
        {
          v41 = 112;
        }

        *(a4 + 3) = v41;
        if (QP::DateComponents::isEmpty(&v69))
        {
          CFCalendarComposeAbsoluteTime(v7, at, "wY", v60, HIDWORD(v63));
          CFCalendarAddComponents(v7, at, 0, "E", 6);
          CFCalendarDecomposeAbsoluteTime(v7, at[0], "yEw", &v63 + 4, &v61, &v60);
          LODWORD(v71) = v61;
          HIDWORD(v71) = v60;
          LODWORD(v72) = HIDWORD(v63);
          CFCalendarAddComponents(v7, at, 0, "d", 1);
          CFCalendarDecomposeAbsoluteTime(v7, at[0], "yEw", &v63 + 4, &v61, &v60);
          v54 = v60;
          v55 = v61;
          v53 = HIDWORD(v63);
        }
      }

      nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
      v15 = v27;
LABEL_75:
      v30 = v52;
      v32 = v50;
      v31 = v51;
LABEL_76:
      v33 = v48;
LABEL_77:
      v34 = v49;
LABEL_78:
      v29 = v47;
LABEL_79:
      v36 = v54;
      v35 = v55;
      v37 = v53;
      goto LABEL_80;
    }

    return 0;
  }

  v20 = 0xFFFFFFFFLL;
LABEL_8:
  v21 = this[1];
  v57[0] = *this;
  v57[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updated = QP::updateDateComponentsWithValues(v57, &v69, a3, 1);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if ((updated & 1) == 0)
  {
    return 0;
  }

  if (!HasSuffix || (result = 0, v20 <= 5) && (v71 & 0x80000000) == 0)
  {
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:2_%d_ORDINAL_WEEKDAY", v71);
        QP::DatePeriod::setDisplayKey(a4, v56);
        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        LODWORD(v20) = 2;
        goto LABEL_39;
      }

      if (v20 == 3)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:3_%d_ORDINAL_WEEKDAY", v71);
        QP::DatePeriod::setDisplayKey(a4, v56);
        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        LODWORD(v20) = 3;
        goto LABEL_39;
      }
    }

    else
    {
      if (v20 == -1)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:LAST_%d_ORDINAL_WEEKDAY", v71);
        QP::DatePeriod::setDisplayKey(a4, v56);
        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        LODWORD(v20) = 0x7FFFFFFF;
        goto LABEL_39;
      }

      if (v20 == 1)
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:1_%d_ORDINAL_WEEKDAY", v71);
        QP::DatePeriod::setDisplayKey(a4, v56);
        nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
        v24 = 96;
        LODWORD(v20) = 1;
LABEL_36:
        v30 = v52;
        v32 = v50;
        v31 = v51;
        v33 = v48;
        v34 = v49;
        v29 = v47;
        v36 = v54;
        v35 = v55;
        v37 = v53;
LABEL_40:
        *(a4 + 3) = v24;
        DWORD1(v71) = v20;
        v12 = 1;
LABEL_80:
        v43 = v70;
        *(a4 + 24) = v69;
        *(a4 + 40) = v43;
        *(a4 + 56) = v71;
        *(a4 + 9) = v72;
        *(a4 + 35) = v33;
        *(a4 + 36) = v34;
        *(a4 + 37) = v32;
        *(a4 + 38) = v12;
        *(a4 + 39) = v13;
        *(a4 + 10) = v67;
        *(a4 + 44) = v68;
        *(a4 + 45) = v15;
        *(a4 + 23) = v30;
        v44 = v66;
        *(a4 + 5) = v65;
        *(a4 + 6) = v44;
        *(a4 + 28) = v35;
        *(a4 + 116) = v64;
        *(a4 + 31) = v36;
        *(a4 + 32) = v37;
        result = 1;
        *(a4 + 33) = v31;
        *(a4 + 34) = v29;
        return result;
      }
    }

    v56 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FORMATTED:VAL_%d-N_%d_ORDINAL_WEEKDAY", v20, v71);
    QP::DatePeriod::setDisplayKey(a4, v56);
    nlp::CFScopedPtr<__CFString const*>::reset(&v56, 0);
    if (v20 < 2)
    {
      v24 = 96;
      goto LABEL_36;
    }

LABEL_39:
    v30 = v52;
    v32 = v50;
    v31 = v51;
    v33 = v48;
    v34 = v49;
    v29 = v47;
    v36 = v54;
    v35 = v55;
    v37 = v53;
    v24 = 111;
    goto LABEL_40;
  }

  return result;
}

uint64_t QP::DateConverter::updatePeriodForValueDate(std::__shared_weak_count **this, const __CFString *a2, const __CFDictionary *a3, QP::DatePeriod *a4)
{
  v4 = 0;
  if (!a2 || !a3)
  {
    return v4;
  }

  v7 = *this;
  shared_weak_owners = (*this)[4].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    return 0;
  }

  v9 = v7[3].__shared_weak_owners_;
  if (!v9)
  {
    return 0;
  }

  at[0] = getCurrentTime(v7[3].__shared_weak_owners_, v7[3].__shared_owners_);
  v12 = *(a4 + 40);
  v72 = *(a4 + 24);
  v73 = v12;
  v74 = *(a4 + 56);
  v75 = *(a4 + 9);
  v68 = *(a4 + 136);
  v13 = *(a4 + 168);
  v69 = *(a4 + 152);
  v70 = v13;
  v71 = *(a4 + 23);
  v47 = *(a4 + 21);
  v48 = *(a4 + 20);
  v14 = *(a4 + 22);
  v15 = *(a4 + 23);
  v16 = *(a4 + 24);
  v66 = *(a4 + 25);
  v67 = v16;
  v17 = *(a4 + 13);
  v18 = *(a4 + 28);
  v64 = *(a4 + 116);
  v65 = v17;
  v51 = *(a4 + 32);
  v52 = *(a4 + 31);
  v49 = v18;
  v50 = *(a4 + 33);
  v63 = -1;
  v61 = -1;
  v62 = -1;
  v60 = -1;
  v58 = -1;
  v59 = -1;
  CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdEwHms", &v63 + 4, &v63, &v62, &v61, &v60, &v59 + 4, &v59, &v58);
  v20 = QP::intValueForNumberInValues(shared_weak_owners, a3, v19);
  if (CFStringHasPrefix(a2, @"NextNum"))
  {
    if (CFStringHasSuffix(a2, @"RangeDate"))
    {
      if ((v20 & 0x80000000) == 0)
      {
        v21 = v15;
        if (CFStringFind(a2, @"Second", 0).location != -1)
        {
          v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_SECONDS", v20);
          v57 = v22;
          QP::DatePeriod::setDisplayKey(a4, v22);
          *(a4 + 3) = 78;
          *&v73 = v63;
          HIDWORD(v72) = v62;
          LODWORD(v72) = v58;
          *(&v72 + 4) = v59;
          CFCalendarAddComponents(v9, at, 0, "s", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdEwHms", &v63 + 4, &v63, &v62, &v61, &v60, &v59 + 4, &v59, &v58);
          v21 = v62;
          v66 = HIDWORD(v63);
          v67 = v63;
          v24 = v59;
          v23 = HIDWORD(v59);
          v25 = v58;
          if (v22)
          {
            CFRelease(v22);
          }

          goto LABEL_74;
        }

        if (CFStringFind(a2, @"Minute", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_MINUTES", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          *(a4 + 3) = 79;
          *&v73 = v63;
          HIDWORD(v72) = v62;
          LODWORD(v72) = v58;
          *(&v72 + 4) = v59;
          CFCalendarAddComponents(v9, at, 0, "m", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdEwHms", &v63 + 4, &v63, &v62, &v61, &v60, &v59 + 4, &v59, &v58);
LABEL_48:
          v21 = v62;
          v66 = HIDWORD(v63);
          v67 = v63;
          v24 = v59;
          v23 = HIDWORD(v59);
          v25 = v58;
LABEL_73:
          nlp::CFScopedPtr<__CFString const*>::reset(&v57, 0);
          goto LABEL_74;
        }

        if (CFStringFind(a2, @"Hour", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_HOURS", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          *(a4 + 3) = 80;
          *&v73 = v63;
          HIDWORD(v72) = v62;
          LODWORD(v72) = v58;
          *(&v72 + 4) = v59;
          CFCalendarAddComponents(v9, at, 0, "H", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdEwHms", &v63 + 4, &v63, &v62, &v61, &v60, &v59 + 4, &v59, &v58);
          goto LABEL_48;
        }

        if (CFStringFind(a2, @"Day", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_DAYS", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          v23 = v14;
          v24 = v47;
          v25 = v48;
          *(a4 + 3) = 81;
          HIDWORD(v72) = v62;
          *&v73 = v63;
          CFCalendarAddComponents(v9, at, 0, "d", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
          v21 = v62;
          v66 = HIDWORD(v63);
          v67 = v63;
          goto LABEL_73;
        }

        if (CFStringFind(a2, @"Weekend", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_WEEKENDS", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          v23 = v14;
          v24 = v47;
          v25 = v48;
          *(a4 + 3) = 82;
          CFCalendarComposeAbsoluteTime(v9, at, "wY", v60, HIDWORD(v63));
          CFCalendarAddComponents(v9, at, 0, "E", 6);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
          LODWORD(v74) = v61;
          HIDWORD(v74) = v60;
          LODWORD(v75) = HIDWORD(v63);
          CFCalendarComposeAbsoluteTime(v9, at, "wY", v60 + v20, HIDWORD(v63));
          CFCalendarAddComponents(v9, at, 0, "E", 6);
          CFCalendarAddComponents(v9, at, 0, "d", 1);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
LABEL_106:
          v36 = v61;
          v51 = HIDWORD(v63);
          v52 = v60;
          nlp::CFScopedPtr<__CFString const*>::reset(&v57, 0);
          v4 = 1;
          goto LABEL_76;
        }

        if (CFStringFind(a2, @"Week", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_WEEKS", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          v23 = v14;
          v24 = v47;
          v25 = v48;
          *(a4 + 3) = 83;
          HIDWORD(v74) = v60;
          LODWORD(v75) = HIDWORD(v63);
          CFCalendarAddComponents(v9, at, 0, "w", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yw", &v63 + 4, &v60);
          v51 = HIDWORD(v63);
          v52 = v60;
          goto LABEL_73;
        }

        if (CFStringFind(a2, @"Month", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_MONTHS", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          *(a4 + 3) = 84;
          *&v73 = v63;
          CFCalendarAddComponents(v9, at, 0, "M", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
LABEL_121:
          v67 = v63;
LABEL_130:
          v66 = HIDWORD(v63);
          goto LABEL_131;
        }

        if (CFStringFind(a2, @"Year", 0).location != -1)
        {
          v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_NEXT_YEARS", v20);
          QP::DatePeriod::setDisplayKey(a4, v57);
          *(a4 + 3) = 85;
          DWORD1(v73) = HIDWORD(v63);
          CFCalendarAddComponents(v9, at, 0, "y", v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
          goto LABEL_130;
        }

LABEL_132:
        v4 = 1;
        v23 = v14;
        v24 = v47;
        v25 = v48;
        v36 = v49;
        goto LABEL_133;
      }

      return 0;
    }

    v21 = v15;
    if (CFStringHasSuffix(a2, @"Date"))
    {
      if ((v20 & 0x80000000) != 0)
      {
        return 0;
      }

      if (CFStringFind(a2, @"Seconds", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_SECONDS", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        v23 = v14;
        v24 = v47;
        v25 = v48;
        *(a4 + 3) = 67;
        CFCalendarAddComponents(v9, at, 0, "s", v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
LABEL_66:
        *&v73 = v63;
        HIDWORD(v72) = v62;
        LODWORD(v72) = v58;
        *(&v72 + 4) = v59;
        goto LABEL_73;
      }

      if (CFStringFind(a2, @"Minute", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_MINUTES", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        v23 = v14;
        v24 = v47;
        v25 = v48;
        *(a4 + 3) = 68;
        CFCalendarAddComponents(v9, at, 0, "m", v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
        goto LABEL_66;
      }

      if (CFStringFind(a2, @"Hour", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_HOURS", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        v23 = v14;
        v24 = v47;
        v25 = v48;
        *(a4 + 3) = 69;
        CFCalendarAddComponents(v9, at, 0, "H", v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
        goto LABEL_66;
      }

      if (CFStringFind(a2, @"Day", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_DAYS", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        v23 = v14;
        v24 = v47;
        v25 = v48;
        *(a4 + 3) = 70;
        CFCalendarAddComponents(v9, at, 0, "d", v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        goto LABEL_92;
      }

      if (CFStringFind(a2, @"Weekend", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_WEEKENDS", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        v23 = v14;
        v24 = v47;
        v25 = v48;
        *(a4 + 3) = 71;
        CFCalendarComposeAbsoluteTime(v9, at, "wY", v60 + v20, HIDWORD(v63));
        CFCalendarAddComponents(v9, at, 0, "E", 6);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
        LODWORD(v74) = v61;
        HIDWORD(v74) = v60;
        LODWORD(v75) = HIDWORD(v63);
        CFCalendarAddComponents(v9, at, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
        goto LABEL_106;
      }

      if (CFStringFind(a2, @"Week", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_WEEKS", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        *(a4 + 3) = 72;
        CFCalendarAddComponents(v9, at, 0, "w", v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "wyMd", &v60, &v63 + 4, &v63, &v62);
        goto LABEL_112;
      }

      if (CFStringFind(a2, @"Month", 0).location != -1)
      {
        v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_MONTHS", v20);
        QP::DatePeriod::setDisplayKey(a4, v57);
        *(a4 + 3) = 73;
        CFCalendarAddComponents(v9, at, 0, "M", v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        goto LABEL_127;
      }

      if (CFStringFind(a2, @"Year", 0).location == -1)
      {
        goto LABEL_132;
      }

      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_YEARS", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      *(a4 + 3) = 74;
      CFCalendarAddComponents(v9, at, 0, "y", v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
LABEL_149:
      DWORD1(v73) = HIDWORD(v63);
      goto LABEL_131;
    }

    goto LABEL_83;
  }

  if (!CFStringHasPrefix(a2, @"Num"))
  {
    if (!CFStringHasPrefix(a2, @"Compound"))
    {
      if (!CFStringHasPrefix(a2, @"RelativeEnd"))
      {
        goto LABEL_132;
      }

      QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
      *(a4 + 3) = 2;
      v31 = this[1];
      v53[0] = *this;
      v53[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      updated = QP::updateDateComponentsWithValues(v53, &v72, a3, 0);
      v21 = v15;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (updated)
      {
        if (!CFStringHasPrefix(a2, @"RelativeEndIsoMonth"))
        {
          if (CFStringHasPrefix(a2, @"RelativeEndIsoDay"))
          {
            CFCalendarComposeAbsoluteTime(v9, at, "My", v63, HIDWORD(v63));
            CFCalendarAddComponents(v9, at, 0, "M", 1);
            CFCalendarDecomposeAbsoluteTime(v9, at[0], "E", &v61);
            if (v74 >= v61)
            {
              v23 = v14;
              v24 = v47;
              v25 = v48;
              if (v74 > v61)
              {
                RangeOfUnit = CFCalendarGetRangeOfUnit(v9, 0x200uLL, 8uLL, at[0]);
                CFCalendarAddComponents(v9, at, 0, "E", -v61 - (RangeOfUnit.length - v74));
              }
            }

            else
            {
              CFCalendarAddComponents(v9, at, 0, "E", (v74 - v61));
              v23 = v14;
              v24 = v47;
              v25 = v48;
            }

            CFCalendarDecomposeAbsoluteTime(v9, at[0], "wY", &v60, &v63 + 4);
            HIDWORD(v74) = v60;
            LODWORD(v75) = HIDWORD(v63);
            DWORD1(v74) = 0x7FFFFFFF;
            goto LABEL_74;
          }

LABEL_83:
          v4 = 1;
          goto LABEL_84;
        }

        CFCalendarComposeAbsoluteTime(v9, at, "My", v73, HIDWORD(v63));
        v4 = 1;
        CFCalendarAddComponents(v9, at, 0, "M", 1);
        CFCalendarAddComponents(v9, at, 0, "d", 0xFFFFFFFFLL);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "dMy", &v62, &v63, &v63 + 4);
        HIDWORD(v72) = v62;
        *&v73 = v63;
      }

      else
      {
        v4 = 0;
      }

LABEL_84:
      v23 = v14;
      v24 = v47;
      v25 = v48;
      goto LABEL_75;
    }

    if (CFStringFind(a2, @"Day", 0).location == -1)
    {
      if (CFStringFind(a2, @"Month", 0).location == -1)
      {
        goto LABEL_132;
      }

      QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
      *(a4 + 3) = 2;
      v33 = this[1];
      v54[0] = *this;
      v54[1] = v33;
      v34 = v14;
      v24 = v47;
      v25 = v48;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = QP::updateDateComponentsWithValues(v54, &v72, a3, 0);
      v21 = v15;
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      v23 = v34;
      if (v35)
      {
        *&v73 = v63;
        goto LABEL_74;
      }
    }

    else
    {
      QP::DatePeriod::setDisplayKey(a4, @"FORMATTED");
      *(a4 + 3) = 2;
      v28 = this[1];
      v55[0] = *this;
      v55[1] = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = QP::updateDateComponentsWithValues(v55, &v72, a3, 0);
      v23 = v14;
      v24 = v47;
      v25 = v48;
      v30 = v29;
      v21 = v15;
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v30)
      {
        HIDWORD(v72) = v62;
        *&v73 = v63;
        LODWORD(v74) = -1;
LABEL_74:
        v4 = 1;
        goto LABEL_75;
      }
    }

    v4 = 0;
LABEL_75:
    v36 = v49;
LABEL_76:
    v37 = v73;
    *(a4 + 24) = v72;
    *(a4 + 40) = v37;
    *(a4 + 56) = v74;
    v38 = v69;
    *(a4 + 168) = v70;
    *(a4 + 9) = v75;
    *(a4 + 20) = v25;
    *(a4 + 21) = v24;
    *(a4 + 22) = v23;
    *(a4 + 23) = v21;
    v39 = v66;
    *(a4 + 24) = v67;
    *(a4 + 25) = v39;
    v40 = v64;
    *(a4 + 13) = v65;
    *(a4 + 28) = v36;
    *(a4 + 116) = v40;
    *(a4 + 31) = v52;
    *(a4 + 32) = v51;
    *(a4 + 33) = v50;
    *(a4 + 23) = v71;
    *(a4 + 152) = v38;
    *(a4 + 136) = v68;
    return v4;
  }

  HasSuffix = CFStringHasSuffix(a2, @"RangeDate");
  location = CFStringFind(a2, @"Second", 0).location;
  if (!HasSuffix)
  {
    if (location != -1)
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_SECONDS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      v23 = v14;
      v24 = v47;
      v25 = v48;
      *(a4 + 3) = 31;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = v15;
        CFCalendarAddComponents(v9, at, 0, "s", -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
        goto LABEL_72;
      }

LABEL_138:
      nlp::CFScopedPtr<__CFString const*>::reset(&v57, 0);
      return 0;
    }

    if (CFStringFind(a2, @"Minute", 0).location != -1)
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_MINUTES_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      v23 = v14;
      v24 = v47;
      v25 = v48;
      *(a4 + 3) = 32;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = v15;
        CFCalendarAddComponents(v9, at, 0, "m", -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
        goto LABEL_72;
      }

      goto LABEL_138;
    }

    if (CFStringFind(a2, @"Hour", 0).location != -1)
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_HOURS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      v23 = v14;
      v24 = v47;
      v25 = v48;
      *(a4 + 3) = 33;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = v15;
        CFCalendarAddComponents(v9, at, 0, "H", -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
        goto LABEL_72;
      }

      goto LABEL_138;
    }

    if (CFStringFind(a2, @"Day", 0).location != -1)
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_DAYS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      v23 = v14;
      v24 = v47;
      v25 = v48;
      *(a4 + 3) = 34;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = v15;
        CFCalendarAddComponents(v9, at, 0, "d", -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        goto LABEL_92;
      }

      goto LABEL_138;
    }

    if (CFStringFind(a2, @"Weekend", 0).location != -1)
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_WEEKENDS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      v23 = v14;
      v24 = v47;
      v25 = v48;
      *(a4 + 3) = 35;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = v15;
        CFCalendarComposeAbsoluteTime(v9, at, "wY", v60 - v20, HIDWORD(v63));
        CFCalendarAddComponents(v9, at, 0, "E", 6);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
        LODWORD(v74) = v61;
        HIDWORD(v74) = v60;
        LODWORD(v75) = HIDWORD(v63);
        CFCalendarAddComponents(v9, at, 0, "d", 1);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
        goto LABEL_106;
      }

      goto LABEL_138;
    }

    if (CFStringFind(a2, @"Week", 0).location != -1)
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_WEEKS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      *(a4 + 3) = 36;
      if ((v20 & 0x80000000) == 0)
      {
        if (LODWORD((*this)[1].__shared_weak_owners_) == 1 && v74 <= 0)
        {
          CFCalendarAddComponents(v9, at, 0, "dw", 0xFFFFFFFFLL, -v20);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
          HIDWORD(v72) = v62;
          *&v73 = v63;
          CFCalendarAddComponents(v9, at, 0, "d", 2);
          CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
          v15 = v62;
          goto LABEL_121;
        }

        v56 = 0;
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "w", &v56);
        v43 = v56 - v20;
        goto LABEL_113;
      }

      goto LABEL_138;
    }

    v44 = &v73 + 1;
    if (CFStringFind(a2, @"Month", 0).location == -1)
    {
      if (CFStringFind(a2, @"Year", 0).location == -1)
      {
        goto LABEL_132;
      }

      v4 = 0;
      if (SHIDWORD(v63) < v20 || (v20 & 0x80000000) != 0 || HIDWORD(v63) - v20 < HIDWORD(v63) - 1970)
      {
        return v4;
      }

      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_YEARS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      *(a4 + 3) = 38;
      if (LODWORD((*this)[1].__shared_weak_owners_) == 1 && v73 <= 0)
      {
        CFCalendarAddComponents(v9, at, 0, "dy", 4294967293, -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        HIDWORD(v72) = v62;
        *&v73 = v63;
        CFCalendarAddComponents(v9, at, 0, "d", 6);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        v15 = v62;
        v67 = v63;
        v44 = &v66;
      }

      else
      {
        CFCalendarAddComponents(v9, at, 0, "dM", (1 - v62), (1 - v63));
        CFCalendarAddComponents(v9, at, 0, "y", -v20);
        if (v73 >= 2)
        {
          CFCalendarAddComponents(v9, at, 0, "M", (v73 - 1));
        }

        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
      }
    }

    else
    {
      v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_MONTHS_AGO", v20);
      QP::DatePeriod::setDisplayKey(a4, v57);
      *(a4 + 3) = 37;
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_138;
      }

      if (LODWORD((*this)[1].__shared_weak_owners_) == 1)
      {
        CFCalendarAddComponents(v9, at, 0, "dM", 4294967293, -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        HIDWORD(v72) = v62;
        *&v73 = v63;
        CFCalendarAddComponents(v9, at, 0, "d", 6);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        v44 = &v66;
        v45 = &v67;
        v15 = v62;
      }

      else
      {
        CFCalendarAddComponents(v9, at, 0, "dM", (1 - v62), -v20);
        CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
        v45 = &v73;
      }

      *v45 = v63;
    }

    *v44 = HIDWORD(v63);
    goto LABEL_131;
  }

  if (location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_SECONDS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    *(a4 + 3) = 42;
    if ((v20 & 0x80000000) == 0)
    {
      v25 = v58;
      v24 = v59;
      v23 = HIDWORD(v59);
      v21 = v62;
      v66 = HIDWORD(v63);
      v67 = v63;
      CFCalendarAddComponents(v9, at, 0, "s", -v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
LABEL_72:
      LODWORD(v72) = v58;
      *(&v72 + 4) = v59;
      HIDWORD(v72) = v62;
      *&v73 = v63;
      goto LABEL_73;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Minute", 0).location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_MINUTES", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    *(a4 + 3) = 43;
    if ((v20 & 0x80000000) == 0)
    {
      v25 = v58;
      v24 = v59;
      v23 = HIDWORD(v59);
      v21 = v62;
      v66 = HIDWORD(v63);
      v67 = v63;
      CFCalendarAddComponents(v9, at, 0, "m", -v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
      goto LABEL_72;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Hour", 0).location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_HOURS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    *(a4 + 3) = 44;
    if ((v20 & 0x80000000) == 0)
    {
      v25 = v58;
      v24 = v59;
      v23 = HIDWORD(v59);
      v21 = v62;
      v66 = HIDWORD(v63);
      v67 = v63;
      CFCalendarAddComponents(v9, at, 0, "H", -v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMdHms", &v63 + 4, &v63, &v62, &v59 + 4, &v59, &v58);
      goto LABEL_72;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Day", 0).location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_DAYS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    v23 = v14;
    v24 = v47;
    v25 = v48;
    *(a4 + 3) = 45;
    if ((v20 & 0x80000000) == 0)
    {
      v21 = v62;
      v66 = HIDWORD(v63);
      v67 = v63;
      CFCalendarAddComponents(v9, at, 0, "d", -v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
LABEL_92:
      HIDWORD(v72) = v62;
      *&v73 = v63;
      goto LABEL_73;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Weekend", 0).location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_WEEKENDS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    v23 = v14;
    v24 = v47;
    v25 = v48;
    *(a4 + 3) = 46;
    if ((v20 & 0x80000000) == 0)
    {
      CFCalendarComposeAbsoluteTime(v9, at, "wY", v60, HIDWORD(v63));
      CFCalendarAddComponents(v9, at, 0, "E", 6);
      CFCalendarAddComponents(v9, at, 0, "d", 1);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
      v41 = v61;
      v51 = HIDWORD(v63);
      v52 = v60;
      CFCalendarAddComponents(v9, at, 0, "w", -v20);
      CFCalendarAddComponents(v9, at, 0, "E", 6);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
      LODWORD(v74) = v61;
      HIDWORD(v74) = v60;
      LODWORD(v75) = HIDWORD(v63);
      nlp::CFScopedPtr<__CFString const*>::reset(&v57, 0);
      v4 = 1;
      v36 = v41;
LABEL_133:
      v21 = v15;
      goto LABEL_76;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Week", 0).location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_WEEKS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    *(a4 + 3) = 47;
    if ((v20 & 0x80000000) == 0)
    {
      CFCalendarComposeAbsoluteTime(v9, at, "wY", v60, HIDWORD(v63));
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
      v51 = HIDWORD(v63);
      v52 = v60;
      CFCalendarAddComponents(v9, at, 0, "w", -v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yEw", &v63 + 4, &v61, &v60);
LABEL_112:
      v43 = v60;
LABEL_113:
      HIDWORD(v74) = v43;
      LODWORD(v75) = HIDWORD(v63);
LABEL_131:
      nlp::CFScopedPtr<__CFString const*>::reset(&v57, 0);
      goto LABEL_132;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Month", 0).location != -1)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_MONTHS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    *(a4 + 3) = 48;
    if ((v20 & 0x80000000) == 0)
    {
      v66 = HIDWORD(v63);
      v67 = v63;
      CFCalendarAddComponents(v9, at, 0, "dM", (1 - v62), -v20);
      CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
LABEL_127:
      *&v73 = v63;
      goto LABEL_131;
    }

    goto LABEL_138;
  }

  if (CFStringFind(a2, @"Year", 0).location == -1)
  {
    goto LABEL_132;
  }

  v4 = 0;
  if (SHIDWORD(v63) >= v20 && (v20 & 0x80000000) == 0 && HIDWORD(v63) - v20 >= HIDWORD(v63) - 1970)
  {
    v57 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_LAST_YEARS", v20);
    QP::DatePeriod::setDisplayKey(a4, v57);
    *(a4 + 3) = 49;
    v66 = HIDWORD(v63);
    CFCalendarAddComponents(v9, at, 0, "dMy", (1 - v62), (1 - v63), -v20);
    CFCalendarDecomposeAbsoluteTime(v9, at[0], "yMd", &v63 + 4, &v63, &v62);
    goto LABEL_149;
  }

  return v4;
}

void QP::DateConverter::datePeriodForRelativeDate(CFStringRef theString@<X1>, void *a2@<X8>)
{
  if (theString && CFStringGetLength(theString))
  {
    operator new();
  }

  *a2 = 0;
}

void sub_1C6592CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::DateConverter::updatePeriodForRelativeDate(QP::DateConverter *this, const __CFString *a2, QP::DatePeriod *a3)
{
  result = 0;
  if (a2)
  {
    v5 = *this;
    if (*this)
    {
      if (v5[14])
      {
        v6 = v5[12];
        if (v6)
        {
          v10 = a3 + 80;
          v9 = *(a3 + 10);
          v11 = *(a3 + 40);
          *v83 = *(a3 + 24);
          *&v83[16] = v11;
          v84 = *(a3 + 56);
          v85 = *(a3 + 9);
          v81 = v9;
          v61 = *(a3 + 23);
          v82 = *(a3 + 22);
          v55 = *(a3 + 24);
          v56 = *(a3 + 25);
          v69 = *(a3 + 28);
          v59 = *(a3 + 116);
          v60 = *(a3 + 13);
          v67 = *(a3 + 32);
          v68 = *(a3 + 31);
          v58 = *(a3 + 33);
          v54 = *(a3 + 34);
          v70 = *(a3 + 35);
          v65 = *(a3 + 37);
          v66 = *(a3 + 36);
          v63 = *(a3 + 38);
          v62 = *(a3 + 39);
          v79 = *(a3 + 10);
          v64 = *(a3 + 45);
          v80 = *(a3 + 44);
          v57 = *(a3 + 23);
          v78 = -1;
          v77 = -1;
          v75 = -1;
          v76 = -1;
          memset(v74, 255, sizeof(v74));
          v12 = v5[10];
          CurrentTime = getCurrentTime(v6, v12);
          at = CurrentTime;
          CFCalendarDecomposeAbsoluteTime(v6, CurrentTime, "yMdEwHms", &v78 + 4, &v78, &v77, &v76, &v75, &v74[8], &v74[4], v74);
          v14 = *(*this + 27);
          v15 = *(*this + 26);
          if (CFStringHasPrefix(a2, @"RelativeNow"))
          {
            *(a3 + 3) = 6;
            QP::DatePeriod::setDisplayKey(a3, @"NOW");
            *v83 = *v74;
            *&v83[8] = *&v74[8];
            *&v83[12] = v77;
LABEL_7:
            *&v83[16] = v78;
LABEL_8:
            v16 = v54;
LABEL_9:
            v17 = v10 - 56;
            v18 = *&v83[16];
            *v17 = *v83;
            *(v17 + 1) = v18;
            *(v17 + 2) = v84;
            *(v17 + 6) = v85;
            *v10 = v81;
            *(v10 + 2) = v82;
            *(a3 + 23) = v61;
            *(a3 + 24) = v55;
            *(a3 + 25) = v56;
            *(a3 + 13) = v60;
            *(a3 + 28) = v69;
            *(a3 + 116) = v59;
            *(a3 + 31) = v68;
            *(a3 + 32) = v67;
            *(a3 + 33) = v58;
            *(a3 + 34) = v16;
            *(a3 + 35) = v70;
            *(a3 + 36) = v66;
            *(a3 + 37) = v65;
            *(a3 + 38) = v63;
            *(a3 + 39) = v62;
            *(v10 + 24) = v80;
            *(v10 + 5) = v79;
            *(a3 + 45) = v64;
            result = 1;
            *(a3 + 23) = v57;
            return result;
          }

          if (CFStringHasPrefix(a2, @"RelativeEvery"))
          {
            if (CFStringHasPrefix(a2, @"RelativeEveryTwo"))
            {
              v19 = 2;
            }

            else
            {
              if (!CFStringHasPrefix(a2, @"RelativeEveryThree"))
              {
                v53 = 1;
                v21 = 91;
                v22 = 92;
                v23 = 93;
                v24 = 94;
                v51 = 97;
                v52 = 95;
                v49 = 99;
                v50 = 98;
                v25 = 100;
LABEL_21:
                v48 = v25;
                v72 = 0;
                if (CFStringFind(a2, @"Second", 0).location != -1)
                {
                  v26 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_SECOND", v53);
                  v71 = v26;
                  QP::DatePeriod::setDisplayKey(a3, v26);
                  *(a3 + 3) = v21;
                  *&v83[16] = v78;
                  *&v83[12] = v77;
                  *v83 = *v74;
                  *&v83[4] = *&v74[4];
                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  v16 = v53;
                  goto LABEL_9;
                }

                if (CFStringFind(a2, @"Minute", 0).location != -1)
                {
                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_MINUTE", v53);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = v22;
                  *&v83[16] = v78;
                  *&v83[12] = v77;
                  *v83 = *v74;
                  *&v83[4] = *&v74[4];
                  nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
                  v70 = v53;
                  goto LABEL_8;
                }

                if (CFStringFind(a2, @"Hour", 0).location != -1)
                {
                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_HOUR", v53);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = v23;
                  *&v83[16] = v78;
                  *&v83[12] = v77;
                  *v83 = *v74;
                  *&v83[4] = *&v74[4];
                  nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
                  v66 = v53;
                  goto LABEL_8;
                }

                if (CFStringFind(a2, @"Day", 0).location != -1)
                {
                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_DAY", v53);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = v24;
                  *&v83[12] = v77;
                  *&v83[16] = v78;
                  nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
                  v65 = v53;
                  goto LABEL_8;
                }

                if (CFStringFind(a2, @"Weekday", 0).location == -1)
                {
                  if (CFStringFind(a2, @"Weekend", 0).location == -1)
                  {
                    if (CFStringFind(a2, @"Week", 0).location == -1)
                    {
                      if (CFStringFind(a2, @"Month", 0).location == -1)
                      {
                        if (CFStringFind(a2, @"Year", 0).location != -1)
                        {
                          v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_YEAR", v53);
                          QP::DatePeriod::setDisplayKey(a3, v71);
                          *(a3 + 3) = v48;
                          *&v83[20] = HIDWORD(v78);
                          nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
                          v62 = v53;
                        }
                      }

                      else
                      {
                        v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_MONTH", v53);
                        QP::DatePeriod::setDisplayKey(a3, v71);
                        *(a3 + 3) = v49;
                        *&v83[16] = v78;
                        nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
                        v63 = v53;
                      }

                      goto LABEL_8;
                    }

                    v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_WEEK", v53);
                    QP::DatePeriod::setDisplayKey(a3, v71);
                    *(a3 + 3) = v50;
                    HIDWORD(v84) = v75;
                    LODWORD(v85) = HIDWORD(v78);
                    goto LABEL_92;
                  }

                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_WEEKEND", v53);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = v51;
                  CFCalendarComposeAbsoluteTime(v6, &at, "wY", v75, HIDWORD(v78));
                  CFCalendarAddComponents(v6, &at, 0, "E", 6);
                  CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                  LODWORD(v84) = v76;
                  HIDWORD(v84) = v75;
                  LODWORD(v85) = HIDWORD(v78);
                  CFCalendarAddComponents(v6, &at, 0, "d", 1);
                  CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                }

                else
                {
                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_EVERY_WEEKDAY", v53);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = v52;
                  v39 = MEMORY[0x1C695AA20](*(*this + 88));
                  CFCalendarComposeAbsoluteTime(v6, &at, "yEw", HIDWORD(v78), 2, v75);
                  if (v15 && v39 < v76)
                  {
                    CFCalendarAddComponents(v6, &at, 0, "w", 1);
                  }

                  CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                  LODWORD(v84) = v76;
                  HIDWORD(v84) = v75;
                  LODWORD(v85) = HIDWORD(v78);
                  CFCalendarAddComponents(v6, &at, 0, "d", 4);
                  CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                }

                v69 = v76;
                v67 = HIDWORD(v78);
                v68 = v75;
LABEL_92:
                nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
                v64 = v53;
                goto LABEL_8;
              }

              v19 = 3;
            }

            v53 = v19;
            v21 = 106;
            v22 = 107;
            v23 = 108;
            v24 = 109;
            v51 = 112;
            v52 = 110;
            v49 = 114;
            v50 = 113;
            v25 = 115;
            goto LABEL_21;
          }

          if (CFStringHasPrefix(a2, @"RelativeNext"))
          {
            if (CFStringHasPrefix(a2, @"RelativeNextTwo"))
            {
              v20 = 2;
            }

            else
            {
              if (!CFStringHasPrefix(a2, @"RelativeNextThree"))
              {
                v20 = 1;
                v27 = 55;
                v28 = 59;
                v29 = 60;
                v30 = 61;
                v31 = 62;
LABEL_33:
                v72 = 0;
                if (CFStringFind(a2, @"Second", 0).location == -1)
                {
                  if (CFStringFind(a2, @"Minute", 0).location != -1)
                  {
                    v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_MINUTES", v20);
                    QP::DatePeriod::setDisplayKey(a3, v71);
                    *(a3 + 3) = 68;
                    CFCalendarAddComponents(v6, &at, 0, "m", v20);
                    CFCalendarDecomposeAbsoluteTime(v6, at, "yMdHms", &v78 + 4, &v78, &v77, &v74[8], &v74[4], v74);
                    *&v83[20] = HIDWORD(v78);
                    *&v83[12] = __PAIR64__(v78, v77);
                    *&v83[4] = *&v74[4];
                    goto LABEL_39;
                  }

                  if (CFStringFind(a2, @"Hour", 0).location == -1)
                  {
                    if (CFStringFind(a2, @"Day", 0).location == -1)
                    {
                      if (CFStringFind(a2, @"Weekend", 0).location == -1)
                      {
                        if (CFStringFind(a2, @"Week", 0).location == -1)
                        {
                          if (CFStringFind(a2, @"Month", 0).location == -1)
                          {
                            if (CFStringFind(a2, @"Year", 0).location == -1)
                            {
                              goto LABEL_40;
                            }

                            v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_YEARS", v20);
                            QP::DatePeriod::setDisplayKey(a3, v71);
                            *(a3 + 3) = v31;
                            CFCalendarAddComponents(v6, &at, 0, "dMy", (1 - v77), (1 - v78), v20);
                            CFCalendarDecomposeAbsoluteTime(v6, at, "yMd", &v78 + 4, &v78, &v77);
                            *&v83[20] = HIDWORD(v78);
                          }

                          else
                          {
                            v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_MONTHS", v20);
                            QP::DatePeriod::setDisplayKey(a3, v71);
                            *(a3 + 3) = v30;
                            CFCalendarDecomposeAbsoluteTime(v6, at, "yM", &v78 + 4, &v78);
                            *&v83[16] = v78 + v20;
                            *&v83[20] = HIDWORD(v78);
                          }
                        }

                        else
                        {
                          v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_WEEKS", v20);
                          QP::DatePeriod::setDisplayKey(a3, v71);
                          *(a3 + 3) = v29;
                          CFCalendarAddComponents(v6, &at, 0, "w", v20);
                          CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                          HIDWORD(v84) = v75;
                          LODWORD(v85) = HIDWORD(v78);
                        }
                      }

                      else
                      {
                        v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_WEEKENDS", v20);
                        QP::DatePeriod::setDisplayKey(a3, v71);
                        *(a3 + 3) = v28;
                        CFCalendarComposeAbsoluteTime(v6, &at, "wY", v75, HIDWORD(v78));
                        CFCalendarAddComponents(v6, &at, 0, "w", v20);
                        CFCalendarAddComponents(v6, &at, 0, "E", 6);
                        CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                        LODWORD(v84) = v76;
                        HIDWORD(v84) = v75;
                        LODWORD(v85) = HIDWORD(v78);
                        CFCalendarAddComponents(v6, &at, 0, "d", 1);
                        CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
                        v69 = v76;
                        v67 = HIDWORD(v78);
                        v68 = v75;
                      }
                    }

                    else
                    {
                      v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_DAYS", v20);
                      QP::DatePeriod::setDisplayKey(a3, v71);
                      *(a3 + 3) = v27;
                      CFCalendarAddComponents(v6, &at, 0, "d", v20);
                      CFCalendarDecomposeAbsoluteTime(v6, at, "yMdHms", &v78 + 4, &v78, &v77, &v74[8], &v74[4], v74);
                      *&v83[20] = HIDWORD(v78);
                      *&v83[12] = __PAIR64__(v78, v77);
                    }

LABEL_39:
                    nlp::CFScopedPtr<__CFString const*>::reset(&v71, 0);
LABEL_40:
                    nlp::CFScopedPtr<__CFString const*>::reset(&v72, 0);
                    goto LABEL_8;
                  }

                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_HOURS", v20);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = 69;
                  CFCalendarAddComponents(v6, &at, 0, "H", v20);
                  CFCalendarDecomposeAbsoluteTime(v6, at, "yMdHms", &v78 + 4, &v78, &v77, &v74[8], &v74[4], v74);
                }

                else
                {
                  v71 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"VAL_%d-N_SECONDS", v20);
                  QP::DatePeriod::setDisplayKey(a3, v71);
                  *(a3 + 3) = 67;
                  CFCalendarAddComponents(v6, &at, 0, "s", v20);
                  CFCalendarDecomposeAbsoluteTime(v6, at, "yMdHms", &v78 + 4, &v78, &v77, &v74[8], &v74[4], v74);
                }

                *&v83[16] = v78;
                *&v83[12] = v77;
                *v83 = *v74;
                *&v83[4] = *&v74[4];
                goto LABEL_39;
              }

              v20 = 3;
            }

            v27 = 70;
            v28 = 71;
            v29 = 72;
            v30 = 73;
            v31 = 74;
            goto LABEL_33;
          }

          if (CFStringHasPrefix(a2, @"RelativeLast"))
          {
            if (CFStringFind(a2, @"Weekend", 0).location != -1)
            {
              QP::DatePeriod::setDisplayKey(a3, @"LAST_WEEKEND");
              *(a3 + 3) = 23;
              CFCalendarComposeAbsoluteTime(v6, &at, "EwY", 7, v75 - 1, HIDWORD(v78));
              CFCalendarDecomposeAbsoluteTime(v6, at, "EwY", &v76, &v75, &v78 + 4);
              LODWORD(v84) = v76;
              HIDWORD(v84) = v75;
              LODWORD(v85) = HIDWORD(v78);
              CFCalendarAddComponents(v6, &at, 0, "d", 1);
              CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
              v67 = HIDWORD(v78);
              v68 = v75;
              v69 = 1;
              goto LABEL_8;
            }

            if (CFStringFind(a2, @"Week", 0).location != -1)
            {
              QP::DatePeriod::setDisplayKey(a3, @"LAST_WEEK");
              *(a3 + 3) = 24;
              v34 = v75 - 1;
LABEL_49:
              HIDWORD(v84) = v34;
              LODWORD(v85) = HIDWORD(v78);
              goto LABEL_8;
            }

            if (CFStringFind(a2, @"Month", 0).location != -1)
            {
              QP::DatePeriod::setDisplayKey(a3, @"LAST_MONTH");
              *(a3 + 3) = 25;
              v37 = (1 - v77);
              v38 = 0xFFFFFFFFLL;
LABEL_72:
              CFCalendarAddComponents(v6, &at, 0, "dM", v37, v38);
              CFCalendarDecomposeAbsoluteTime(v6, at, "yMd", &v78 + 4, &v78, &v77);
              goto LABEL_7;
            }

            if (CFStringFind(a2, @"Year", 0).location == -1)
            {
              goto LABEL_8;
            }

            QP::DatePeriod::setDisplayKey(a3, @"LAST_YEAR");
            *(a3 + 3) = 26;
            v40 = (1 - v77);
            v41 = (1 - v78);
            v42 = 0xFFFFFFFFLL;
            goto LABEL_86;
          }

          if (CFStringHasPrefix(a2, @"RelativeThis"))
          {
            if (CFStringFind(a2, @"Second", 0).location != -1)
            {
              QP::DatePeriod::setDisplayKey(a3, @"THIS_SECOND");
              *(a3 + 3) = 8;
              v32 = *&v74[8];
              *v83 = *v74;
LABEL_46:
              v33 = v78;
              *&v83[8] = v32;
LABEL_142:
              *&v83[16] = v33;
              goto LABEL_143;
            }

            if (CFStringFind(a2, @"Minute", 0).location != -1)
            {
              QP::DatePeriod::setDisplayKey(a3, @"THIS_MINUTE");
              *(a3 + 3) = 9;
              *&v83[4] = *&v74[4];
              goto LABEL_7;
            }

            if (CFStringFind(a2, @"Hour", 0).location != -1)
            {
              QP::DatePeriod::setDisplayKey(a3, @"THIS_HOUR");
              *(a3 + 3) = 10;
              v32 = *&v74[8];
              goto LABEL_46;
            }

            if (CFStringFind(a2, @"Weekend", 0).location == -1)
            {
              if (CFStringFind(a2, @"Week", 0).location != -1)
              {
                QP::DatePeriod::setDisplayKey(a3, @"THIS_WEEK");
                *(a3 + 3) = 12;
                v34 = v75;
                goto LABEL_49;
              }

              if (CFStringFind(a2, @"Month", 0).location != -1)
              {
                QP::DatePeriod::setDisplayKey(a3, @"THIS_MONTH");
                *(a3 + 3) = 13;
                goto LABEL_7;
              }

              if (CFStringFind(a2, @"Year", 0).location == -1)
              {
                goto LABEL_8;
              }

              QP::DatePeriod::setDisplayKey(a3, @"THIS_YEAR");
              *(a3 + 3) = 14;
LABEL_143:
              *&v83[20] = HIDWORD(v78);
              goto LABEL_8;
            }

            QP::DatePeriod::setDisplayKey(a3, @"THIS_WEEKEND");
            *(a3 + 3) = 11;
            v44 = MEMORY[0x1C695AA20](*(*this + 88));
            v45 = MEMORY[0x1C695AA20](v6);
            CFCalendarComposeAbsoluteTime(v6, &at, "EwY", 7, v75, HIDWORD(v78));
            if (v44 == v45)
            {
              if (v14 && at > CurrentTime)
              {
                v46 = 0xFFFFFFFFLL;
              }

              else
              {
                if (!v15 || at >= CurrentTime)
                {
                  goto LABEL_130;
                }

                v46 = 1;
              }

              CFCalendarAddComponents(v6, &at, 0, "w", at, v46);
            }

LABEL_130:
            CFCalendarDecomposeAbsoluteTime(v6, at, "yEw", &v78 + 4, &v76, &v75);
            LODWORD(v84) = v76;
            HIDWORD(v84) = v75;
            LODWORD(v85) = HIDWORD(v78);
            v69 = 1;
            CFCalendarAddComponents(v6, &at, 0, "d", 1);
            CFCalendarDecomposeAbsoluteTime(v6, at, "wY", &v75, &v78 + 4);
            v67 = HIDWORD(v78);
            v68 = v75;
            goto LABEL_8;
          }

          if (CFStringHasPrefix(a2, @"RelativeEnd"))
          {
            if (!CFStringHasSuffix(a2, @"IsoMonthDate"))
            {
              goto LABEL_8;
            }

            QP::DatePeriod::setDisplayKey(a3, @"FORMATTED");
            *(a3 + 3) = 2;
            AbsoluteTime = QP::DateComponents::getAbsoluteTime(v83, v6, v12);
            if (v15)
            {
              if (at <= AbsoluteTime || (!*&v83[8] || *&v83[8] >= *&v74[8]) && (!v84 || v84 >= v76) && (!*&v83[12] || *&v83[12] >= v77) && (!*&v83[16] || *&v83[16] >= v78))
              {
                goto LABEL_104;
              }

              v36 = 1;
            }

            else
            {
              if (at >= AbsoluteTime && (!*&v83[8] || *&v83[8] < *&v74[8]) && (!v84 || v84 < v76) && (!*&v83[12] || *&v83[12] < v77) && (!*&v83[16] || *&v83[16] < v78))
              {
                goto LABEL_104;
              }

              v36 = 0xFFFFFFFFLL;
            }

            CFCalendarAddComponents(v6, &at, 0, "y", v36);
LABEL_104:
            CFCalendarAddComponents(v6, &at, 0, "dM", -v77, (1 - v78));
            CFCalendarAddComponents(v6, &at, 0, "dM", 0xFFFFFFFFLL, *&v83[16]);
LABEL_140:
            CFCalendarDecomposeAbsoluteTime(v6, at, "yMd", &v78 + 4, &v78, &v77);
            goto LABEL_141;
          }

          if (CFStringHasSuffix(a2, @"TodayDate"))
          {
            QP::DatePeriod::setDisplayKey(a3, @"TODAY");
            *(a3 + 3) = 7;
LABEL_141:
            v33 = v78;
            *&v83[12] = v77;
            goto LABEL_142;
          }

          if (CFStringHasSuffix(a2, @"YesterdayDate"))
          {
            QP::DatePeriod::setDisplayKey(a3, @"YESTERDAY");
            *(a3 + 3) = 19;
            v43 = 0xFFFFFFFFLL;
          }

          else if (CFStringHasSuffix(a2, @"TomorrowDate"))
          {
            QP::DatePeriod::setDisplayKey(a3, @"TOMORROW");
            *(a3 + 3) = 55;
            v43 = 1;
          }

          else if (CFStringHasSuffix(a2, @"TwoDaysDate"))
          {
            QP::DatePeriod::setDisplayKey(a3, @"VAL_2-N_DAYS_AGO");
            *(a3 + 3) = 34;
            v43 = 4294967294;
          }

          else
          {
            if (!CFStringHasSuffix(a2, @"ThreeDaysDate"))
            {
              if (CFStringHasSuffix(a2, @"TwoWeeksDate"))
              {
                QP::DatePeriod::setDisplayKey(a3, @"VAL_2-N_WEEKS_AGO");
                *(a3 + 3) = 36;
                v34 = v75 - 2;
                goto LABEL_49;
              }

              if (CFStringHasSuffix(a2, @"ThreeWeeksDate"))
              {
                QP::DatePeriod::setDisplayKey(a3, @"VAL_3-N_WEEKS_AGO");
                *(a3 + 3) = 36;
                v34 = v75 - 3;
                goto LABEL_49;
              }

              if (CFStringHasSuffix(a2, @"TwoMonthsDate"))
              {
                QP::DatePeriod::setDisplayKey(a3, @"VAL_2-N_MONTHS_AGO");
                *(a3 + 3) = 37;
                v37 = (1 - v77);
                v38 = 4294967294;
                goto LABEL_72;
              }

              if (CFStringHasSuffix(a2, @"ThreeMonthsDate"))
              {
                QP::DatePeriod::setDisplayKey(a3, @"VAL_3-N_MONTHS_AGO");
                *(a3 + 3) = 37;
                v37 = (1 - v77);
                v38 = 4294967293;
                goto LABEL_72;
              }

              if (CFStringHasSuffix(a2, @"TwoYearsDate"))
              {
                QP::DatePeriod::setDisplayKey(a3, @"VAL_2-N_YEARS_AGO");
                *(a3 + 3) = 38;
                v40 = (1 - v77);
                v41 = (1 - v78);
                v42 = 4294967294;
              }

              else
              {
                if (!CFStringHasSuffix(a2, @"ThreeYearsDate"))
                {
                  if (!CFStringHasPrefix(a2, @"RelativeFew"))
                  {
                    goto LABEL_8;
                  }

                  if (CFStringFind(a2, @"Months", 0).location != -1)
                  {
                    QP::DatePeriod::setDisplayKey(a3, @"VAL_6-N_MONTHS_AGO");
                    *(a3 + 3) = 37;
                    v55 = v78 - 1;
                    v56 = HIDWORD(v78);
                    v37 = (1 - v77);
                    v38 = 4294967290;
                    goto LABEL_72;
                  }

                  if (CFStringFind(a2, @"Weeks", 0).location != -1)
                  {
                    v68 = v75 - 1;
                    QP::DatePeriod::setDisplayKey(a3, @"VAL_6-N_WEEKS_AGO");
                    *(a3 + 3) = 36;
                    v34 = v75 - 6;
                    goto LABEL_49;
                  }

                  if (CFStringFind(a2, @"Days", 0).location == -1)
                  {
                    goto LABEL_8;
                  }

                  v61 = v77 - 1;
                  v55 = v78;
                  QP::DatePeriod::setDisplayKey(a3, @"VAL_6-N_DAYS_AGO");
                  *(a3 + 3) = 34;
                  v43 = 4294967290;
                  goto LABEL_139;
                }

                QP::DatePeriod::setDisplayKey(a3, @"VAL_3-N_YEARS_AGO");
                *(a3 + 3) = 38;
                v40 = (1 - v77);
                v41 = (1 - v78);
                v42 = 4294967293;
              }

LABEL_86:
              CFCalendarAddComponents(v6, &at, 0, "dMy", v40, v41, v42);
              CFCalendarDecomposeAbsoluteTime(v6, at, "yMd", &v78 + 4, &v78, &v77);
              goto LABEL_143;
            }

            QP::DatePeriod::setDisplayKey(a3, @"VAL_3-N_DAYS_AGO");
            *(a3 + 3) = 34;
            v43 = 4294967293;
          }

LABEL_139:
          CFCalendarAddComponents(v6, &at, 0, "d", v43, v47);
          goto LABEL_140;
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_1C6594780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, const void *a35)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a34, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a35, 0);
  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFString const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t QP::updateDateComponentsWithValues(uint64_t a1, _DWORD *a2, CFDictionaryRef theDict, int a4)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!theDict || (v62 = *(*a1 + 112)) == 0)
  {
    v27 = 0;
    goto LABEL_132;
  }

  v61 = a2;
  v59 = a1;
  Count = CFDictionaryGetCount(theDict);
  MEMORY[0x1EEE9AC00](Count);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v8, v7);
  CFDictionaryGetKeysAndValues(theDict, v8, 0);
  if (Count >= 1)
  {
    v60 = a4;
    v9 = 1;
    v10 = Count;
    v11 = 1;
    v58 = &v56;
    while (1)
    {
      v12 = *v8;
      if (CFStringHasSuffix(*v8, @"Date") || CFStringHasPrefix(v12, @"NUMBERS"))
      {
        goto LABEL_7;
      }

      if (CFStringHasPrefix(v12, @"SPELLED"))
      {
        if ((v60 & 1) == 0)
        {
          Value = CFDictionaryGetValue(theDict, v12);
          IntFromSpelledNumber = getIntFromSpelledNumber(Value, v62);
          if (IntFromSpelledNumber < 0)
          {
            goto LABEL_89;
          }

          v61[5] = IntFromSpelledNumber;
        }
      }

      else
      {
        HasPrefix = CFStringHasPrefix(v12, @"Num");
        v16 = CFDictionaryGetValue(theDict, v12);
        if (HasPrefix)
        {
          v17 = v16;
          if (CFDictionaryContainsKey(v16, @"NUMBERS"))
          {
            v18 = CFDictionaryGetValue(v17, @"NUMBERS");
            if ((getIntFromSpelledNumber(v18, v62) & 0x80000000) != 0)
            {
              goto LABEL_89;
            }
          }

          else if (CFDictionaryContainsKey(v17, @"DIGITS"))
          {
            v21 = CFDictionaryGetValue(v17, @"DIGITS");
            CFStringGetIntValue(v21);
          }
        }

        else
        {
          v57 = v16;
          if (CFStringHasPrefix(v12, @"d") || CFStringHasPrefix(v12, @"DAY_ORDINAL"))
          {
            v19 = v57;
            IntValue = getIntFromSpelledNumber(v57, v62);
            if (IntValue < 0)
            {
              IntValue = CFStringGetIntValue(v19);
              if (IntValue < 0)
              {
                goto LABEL_92;
              }
            }

            v61[3] = IntValue;
          }

          else if (CFStringHasPrefix(v12, @"E"))
          {
            IntFromNumber = QP::getIntFromNumber(v57, v62, v22);
            if (IntFromNumber < 0)
            {
              goto LABEL_92;
            }

            v61[8] = IntFromNumber;
          }

          else if (CFStringHasPrefix(v12, @"M"))
          {
            v25 = QP::getIntFromNumber(v57, v62, v24);
            if (v25 < 0)
            {
              goto LABEL_92;
            }

            v61[4] = v25;
          }

          else if (CFStringHasPrefix(v12, @"y") || CFStringHasPrefix(v12, @"Y"))
          {
            v26 = CFStringGetIntValue(v57);
            v27 = 0;
            if (!v26 || v26 > 2100)
            {
              goto LABEL_132;
            }

            v61[5] = v26;
            if (CFStringCompare(v12, @"yy", 0) == kCFCompareEqualTo)
            {
              v28 = v61[5];
              if (v28 > 39)
              {
                v29 = v28 + 1900;
              }

              else
              {
                v29 = v28 + 2000;
              }

              v61[5] = v29;
            }
          }

          else if (CFStringHasPrefix(v12, @"F"))
          {
            v30 = CFStringGetIntValue(v57);
            if (!v30)
            {
              goto LABEL_133;
            }

            v61[9] = v30;
          }

          else if (CFStringHasPrefix(v12, @"w"))
          {
            v31 = CFStringGetIntValue(v57);
            if (!v31)
            {
LABEL_133:
              v27 = 0;
              goto LABEL_132;
            }

            v61[11] = v31;
          }

          else if (CFStringHasPrefix(v12, @"W"))
          {
            v32 = CFStringGetIntValue(v57);
            if (!v32)
            {
              goto LABEL_134;
            }

            v61[10] = v32;
          }

          else if (CFStringHasPrefix(v12, @"q") || CFStringHasPrefix(v12, @"Q"))
          {
            v33 = CFStringGetIntValue(v57);
            if (!v33)
            {
              goto LABEL_134;
            }

            v61[6] = v33;
          }

          else
          {
            if (CFStringHasPrefix(v12, @"hh") || CFStringHasPrefix(v12, @"H"))
            {
              v35 = QP::getIntFromNumber(v57, v62, v34);
              if ((v35 & 0x80000000) != 0)
              {
                goto LABEL_134;
              }

              if (v35 < 0xC)
              {
                v38 = v61;
                v61[2] = v35;
                if ((v38[7] & 0x80000000) != 0)
                {
                  v61[7] = 1;
                }

                goto LABEL_7;
              }

              v36 = v61;
              v61[2] = v35 - 12;
              v37 = 2;
LABEL_57:
              v36[7] = v37;
              goto LABEL_7;
            }

            if (CFStringHasPrefix(v12, @"h"))
            {
              v40 = QP::getIntFromNumber(v57, v62, v39);
              if (v40 < 0)
              {
                goto LABEL_134;
              }

              v61[2] = v40;
            }

            else if (CFStringHasPrefix(v12, @"m"))
            {
              v42 = QP::getIntFromNumber(v57, v62, v41);
              if (v42 < 0)
              {
                goto LABEL_134;
              }

              v61[1] = v42;
            }

            else
            {
              if (!CFStringHasPrefix(v12, @"s"))
              {
                if (!CFStringHasPrefix(v12, @"a"))
                {
                  goto LABEL_89;
                }

                if (CFStringHasPrefix(v57, @"am"))
                {
                  v61[7] = 1;
                  goto LABEL_7;
                }

                if (CFStringHasPrefix(v57, @"pm"))
                {
                  v37 = 2;
                }

                else if (CFStringHasPrefix(v57, @"morning"))
                {
                  v37 = 3;
                }

                else if (CFStringHasPrefix(v57, @"noon"))
                {
                  v37 = 4;
                }

                else if (CFStringHasPrefix(v57, @"afternoon"))
                {
                  v37 = 5;
                }

                else if (CFStringHasPrefix(v57, @"evening"))
                {
                  v37 = 6;
                }

                else
                {
                  if (!CFStringHasPrefix(v57, @"night"))
                  {
                    if (CFStringHasPrefix(v57, @"midnight"))
                    {
                      v61[7] = 8;
                    }

                    goto LABEL_7;
                  }

                  v37 = 7;
                }

                v36 = v61;
                goto LABEL_57;
              }

              v44 = QP::getIntFromNumber(v57, v62, v43);
              if (v44 < 0)
              {
LABEL_134:
                v27 = 0;
                goto LABEL_132;
              }

              *v61 = v44;
            }
          }
        }
      }

LABEL_7:
      v11 = v9++ < Count;
      ++v8;
      if (!--v10)
      {
        goto LABEL_89;
      }
    }
  }

  v11 = 0;
LABEL_89:
  v45 = *(*v59 + 64);
  v46 = v61;
  if (v45 == 1)
  {
    v61[13] = v61[7];
  }

  if (v11)
  {
LABEL_92:
    v27 = 0;
    goto LABEL_132;
  }

  if ((v46[8] & 0x80000000) == 0 && (v46[3] & 0x80000000) == 0)
  {
    v46[8] = -1;
  }

  if ((v46[9] & 0x80000000) == 0 || (v46[10] & 0x80000000) == 0 || (v46[11] & 0x80000000) == 0)
  {
    v46[12] = v46[5];
    v46[5] = -1;
  }

  v47 = v46[2];
  if (v47 < 0)
  {
    v49 = v46[7];
    if (v49 < 0)
    {
      goto LABEL_111;
    }

    v27 = 1;
    if (v49 > 4)
    {
      if (v49 <= 6)
      {
        if (v49 == 5)
        {
          if (v45)
          {
            v50 = 5;
            goto LABEL_125;
          }

          v53 = 3;
        }

        else
        {
          if (v45)
          {
            v50 = 6;
            goto LABEL_125;
          }

          v53 = 6;
        }

LABEL_131:
        v46[2] = v53;
        goto LABEL_132;
      }

      if (v49 == 7)
      {
        if (v45)
        {
          v51 = v46;
          StartForDateComponentsPeriod = QP::getStartForDateComponentsPeriod(7u, v62);
          v51[1] = 59;
          v51[2] = StartForDateComponentsPeriod;
          goto LABEL_132;
        }

LABEL_128:
        v53 = 9;
        goto LABEL_131;
      }

      if (v49 != 8)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v49 <= 2)
      {
        if (v49 != 1)
        {
          if (v49 != 2)
          {
            goto LABEL_132;
          }

          v50 = 2;
LABEL_125:
          v46[2] = QP::getStartForDateComponentsPeriod(v50, v62);
          goto LABEL_132;
        }

        goto LABEL_121;
      }

      if (v49 == 3)
      {
LABEL_121:
        if (v45)
        {
          v50 = 1;
          goto LABEL_125;
        }

        goto LABEL_128;
      }
    }

    v50 = 8;
    goto LABEL_125;
  }

  v48 = v46[7];
  if (v48 < 0)
  {
LABEL_111:
    v27 = 1;
    goto LABEL_132;
  }

  v27 = 1;
  if (v47 == 12 && v48 == 1)
  {
    v46[2] = 0;
  }

LABEL_132:
  v54 = *MEMORY[0x1E69E9840];
  return v27;
}

void QP::DatePeriod::setDisplayKey(const void **this, const __CFString *a2)
{
  nlp::CFScopedPtr<__CFString const*>::reset(this, 0);
  if (a2)
  {
    v4 = CFRetain(a2);

    nlp::CFScopedPtr<__CFString const*>::reset(this, v4);
  }
}

uint64_t QP::intValueForNumberInValues(QP *this, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!theDict)
  {
    return 0xFFFFFFFFLL;
  }

  Value = CFDictionaryGetValue(theDict, @"SPELLED");
  if (Value)
  {
    IntFromSpelledNumber = getIntFromSpelledNumber(Value, this);
    if ((IntFromSpelledNumber & 0x80000000) == 0)
    {
      return IntFromSpelledNumber;
    }

    v7 = @"NUMBERS";
    goto LABEL_5;
  }

  v8 = CFDictionaryGetValue(theDict, @"DIGITS");
  if (!v8)
  {
    v8 = CFDictionaryGetValue(theDict, @"NON_YEAR_DIGITS");
    if (!v8)
    {
      v8 = CFDictionaryGetValue(theDict, @"NON_MONTH_DIGITS");
      if (!v8)
      {
        IntFromSpelledNumber = 0xFFFFFFFFLL;
        v7 = @"NON_DAY_DIGITS";
LABEL_5:
        v8 = CFDictionaryGetValue(theDict, v7);
        if (!v8)
        {
          return IntFromSpelledNumber;
        }
      }
    }
  }

  v9 = v8;
  IntFromSpelledNumber = CFStringGetIntValue(v8);
  if (!IntFromSpelledNumber)
  {
    if (CFStringsAreEqual(v9, @"0"))
    {
      return 0;
    }

    else
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
      CFStringNormalize(MutableCopy, kCFStringNormalizationFormKC);
      IntFromSpelledNumber = CFStringGetIntValue(MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }

  return IntFromSpelledNumber;
}

void sub_1C6595250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString *>::reset(va, 0);
  _Unwind_Resume(a1);
}

uint64_t QP::updateDateComponentsWithRelativeUnitOffset(uint64_t result, uint64_t a2, const __CFDate *a3, QP::DateComponents *this, int a5, uint64_t a6, int a7)
{
  if (result)
  {
    if (a2)
    {
      v12 = result;
      result = QP::DateComponents::isEmpty(this);
      if ((result & 1) == 0)
      {
        at = QP::DateComponents::getAbsoluteTime(this, v12, a3);
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v31 = 0;
        v29 = 0;
        v30 = 0;
        v13 = *(this + 1);
        v14 = *(this + 2);
        v15 = *this;
        if ((v14 & 0x80000000) == 0 || (v13 & 0x80000000) == 0 || (v15 & 0x80000000) == 0 || (*(this + 7) & 0x80000000) == 0)
        {
          if (a7)
          {
            if ((v15 & 0x80000000) == 0 || (v13 & v14 & 0x80000000) == 0)
            {
              if (v13 < 0)
              {
                v16 = "H";
              }

              else
              {
                v16 = "m";
              }

              if (v15 < 0)
              {
                CFCalendarAddComponents(v12, &at, 0, v16, a6);
              }

              else
              {
                CFCalendarAddComponents(v12, &at, 0, "s", a6);
              }
            }
          }

          else
          {
            CFCalendarAddComponents(v12, &at, 0, "d", a6);
          }

          CFCalendarDecomposeAbsoluteTime(v12, at, "dEMyHmsa", &v33 + 4, &v33, &v34, &v34 + 4, &v30 + 4, &v30, &v29 + 4, &v29);
          v17 = v34;
          v18 = HIDWORD(v34);
          v19 = HIDWORD(v33);
          if (__PAIR64__(v30, HIDWORD(v29)))
          {
            v20 = v30;
          }

          else
          {
            v20 = -1;
          }

          if (HIDWORD(v29))
          {
            v21 = HIDWORD(v29);
          }

          else
          {
            v21 = -1;
          }

          if (v29)
          {
            v22 = 2;
          }

          else
          {
            v22 = 1;
          }

          v23 = HIDWORD(v30);
          goto LABEL_31;
        }

        if ((*(this + 11) & 0x80000000) == 0)
        {
          if ((*(this + 8) & 0x80000000) == 0)
          {
            CFCalendarAddComponents(v12, &at, 0, "d", a6);
LABEL_45:
            CFCalendarDecomposeAbsoluteTime(v12, at, "EwY", &v33, &v32, &v34 + 4);
            v26 = v32;
            v24 = v33;
            v21 = -1;
            v20 = -1;
            v23 = -1;
            v19 = -1;
            v17 = -1;
            result = HIDWORD(v34);
            v18 = -1;
            v22 = -1;
            goto LABEL_46;
          }

          if ((*(this + 10) & 0x80000000) != 0)
          {
            CFCalendarAddComponents(v12, &at, 0, "w", a6);
            CFCalendarDecomposeAbsoluteTime(v12, at, "wY", &v32, &v34 + 4);
            v26 = v32;
            v21 = -1;
            v20 = -1;
            v23 = -1;
            v19 = -1;
            result = HIDWORD(v34);
            v17 = -1;
            v18 = -1;
            v22 = -1;
            v24 = -1;
LABEL_46:
            v25 = -1;
            goto LABEL_50;
          }

          goto LABEL_42;
        }

        v27 = *(this + 10);
        if (v27 < 0 && (*(this + 9) & 0x80000000) != 0)
        {
          v28 = *(this + 8);
          if ((*(this + 12) & 0x80000000) == 0)
          {
            if (v28 < 0)
            {
              goto LABEL_48;
            }

LABEL_44:
            CFCalendarAddComponents(v12, &at, 0, "w", a6);
            goto LABEL_45;
          }

          if ((v28 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          if ((*(this + 3) & 0x80000000) == 0)
          {
            CFCalendarAddComponents(v12, &at, 0, "d", a6);
            CFCalendarDecomposeAbsoluteTime(v12, at, "dMy", &v33 + 4, &v34, &v34 + 4);
            v19 = HIDWORD(v33);
            v17 = v34;
            v21 = -1;
            v20 = -1;
            v23 = -1;
            v22 = -1;
            v24 = -1;
            v18 = HIDWORD(v34);
            goto LABEL_32;
          }

          if ((*(this + 4) & 0x80000000) == 0)
          {
            if (a5 == 4)
            {
              CFCalendarAddComponents(v12, &at, 0, "y", a6);
            }

            else
            {
              CFCalendarAddComponents(v12, &at, 0, "M", a6);
            }

            CFCalendarDecomposeAbsoluteTime(v12, at, "yM", &v34 + 4, &v34);
            v17 = v34;
            v18 = HIDWORD(v34);
            v21 = -1;
            v20 = -1;
            v23 = -1;
            v19 = -1;
            goto LABEL_62;
          }

          if ((*(this + 5) & 0x80000000) == 0)
          {
            CFCalendarAddComponents(v12, &at, 0, "y", a6);
            CFCalendarDecomposeAbsoluteTime(v12, at, "y", &v34 + 4);
            v21 = -1;
            v20 = -1;
            v18 = HIDWORD(v34);
            v23 = -1;
            v19 = -1;
            v17 = -1;
LABEL_62:
            v22 = -1;
LABEL_31:
            v24 = -1;
LABEL_32:
            v25 = -1;
            v26 = -1;
            result = 0xFFFFFFFFLL;
LABEL_50:
            *this = v21;
            *(this + 1) = v20;
            *(this + 2) = v23;
            *(this + 3) = v19;
            *(this + 4) = v17;
            *(this + 5) = v18;
            *(this + 6) = -1;
            *(this + 7) = v22;
            *(this + 8) = v24;
            *(this + 9) = -1;
            *(this + 10) = v25;
            *(this + 11) = v26;
            *(this + 12) = result;
            *(this + 13) = -1;
            return result;
          }
        }

        else
        {
          if ((*(this + 8) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          if ((v27 & 0x80000000) == 0)
          {
LABEL_42:
            CFCalendarAddComponents(v12, &at, 0, "M", a6);
            CFCalendarDecomposeAbsoluteTime(v12, at, "WMY", &v31, &v34, &v34 + 4);
            v25 = v31;
            v17 = v34;
            result = HIDWORD(v34);
            v21 = -1;
            v20 = -1;
            v23 = -1;
            v19 = -1;
            v18 = -1;
            v22 = -1;
            v24 = -1;
LABEL_49:
            v26 = -1;
            goto LABEL_50;
          }

          if ((*(this + 12) & 0x80000000) == 0)
          {
LABEL_48:
            CFCalendarAddComponents(v12, &at, 0, "Y", a6);
            CFCalendarDecomposeAbsoluteTime(v12, at, "Y", &v34 + 4);
            v21 = -1;
            v20 = -1;
            result = HIDWORD(v34);
            v23 = -1;
            v19 = -1;
            v17 = -1;
            v18 = -1;
            v22 = -1;
            v24 = -1;
            v25 = -1;
            goto LABEL_49;
          }
        }

        v21 = -1;
        v20 = -1;
        v23 = -1;
        v19 = -1;
        v17 = -1;
        v18 = -1;
        goto LABEL_62;
      }
    }
  }

  return result;
}

void QP::DateConverter::mergeDateTime(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  v6 = *a2;
  if ((*(*a2 + 12) - 91) <= 0x1D)
  {
    v7 = *(v6 + 40);
    v21 = *(v6 + 24);
    v22 = v7;
    v23 = *(v6 + 56);
    v24 = *(v6 + 72);
    QP::DateComponents::merge(&v21, (*a3 + 24));
    v8 = *a3;
    v9 = *(*a3 + 96);
    v19[0] = *(*a3 + 80);
    v19[1] = v9;
    v19[2] = *(v8 + 112);
    v20 = *(v8 + 128);
    v10 = *a1;
    v11 = a1[1];
    v18[0] = v10;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::resolveDateComponents(v18, &v21, v19);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    operator new();
  }

  v12 = *(v6 + 40);
  v21 = *(v6 + 24);
  v22 = v12;
  v23 = *(v6 + 56);
  v24 = *(v6 + 72);
  if (*(*a3 + 12) != 3 || (HIDWORD(v22) & 0x80000000) != 0)
  {
    QP::DateComponents::merge(&v21, (*a3 + 24));
  }

  v17 = -1;
  *&v13 = -1;
  *(&v13 + 1) = -1;
  v16[1] = v13;
  v16[2] = v13;
  v16[0] = v13;
  v14 = a1[1];
  v15[0] = *a1;
  v15[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::resolveDateComponents(v15, &v21, v16);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  operator new();
}

void sub_1C6595AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](v10, 0);
  _Unwind_Resume(a1);
}

int *QP::DateComponents::merge(int *result, int *a2)
{
  v2 = *a2;
  v3 = result[1];
  if (*result >= 0)
  {
    v2 = *result;
  }

  *result = v2;
  v4 = a2[1];
  if (v3 >= 0)
  {
    v4 = v3;
  }

  result[1] = v4;
  v5 = a2[2];
  v6 = result[3];
  if (result[2] >= 0)
  {
    v5 = result[2];
  }

  result[2] = v5;
  v7 = a2[3];
  if (v6 >= 0)
  {
    v7 = v6;
  }

  result[3] = v7;
  v8 = a2[4];
  v9 = result[5];
  if (result[4] >= 0)
  {
    v8 = result[4];
  }

  result[4] = v8;
  v10 = a2[5];
  if (v9 >= 0)
  {
    v10 = v9;
  }

  result[5] = v10;
  v11 = a2[6];
  v12 = result[7];
  if (result[6] >= 0)
  {
    v11 = result[6];
  }

  result[6] = v11;
  v13 = a2[7];
  if (v12 >= 0)
  {
    v13 = v12;
  }

  result[7] = v13;
  v14 = a2[13];
  v15 = result[12];
  if (result[13] >= 0)
  {
    v14 = result[13];
  }

  result[13] = v14;
  v16 = a2[8];
  v17 = result[9];
  if (result[8] >= 0)
  {
    v16 = result[8];
  }

  result[8] = v16;
  v18 = a2[9];
  if (v17 >= 0)
  {
    v18 = v17;
  }

  result[9] = v18;
  v19 = a2[10];
  v20 = result[11];
  if (result[10] >= 0)
  {
    v19 = result[10];
  }

  result[10] = v19;
  v21 = a2[11];
  if (v20 >= 0)
  {
    v21 = v20;
  }

  result[11] = v21;
  v22 = a2[12];
  if (v15 >= 0)
  {
    v22 = v15;
  }

  result[12] = v22;
  return result;
}

double QP::resolveDateComponents(void *a1, __int128 *a2, __int128 *a3)
{
  v6 = a2[1];
  v19 = *a2;
  v20 = v6;
  v21 = a2[2];
  v22 = *(a2 + 6);
  v7 = a3[1];
  v15 = *a3;
  v16 = v7;
  v17 = a3[2];
  v18 = *(a3 + 6);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  QP::getCurrentDateComponents(*(*a1 + 88), *(*a1 + 80), v13);
  v8 = a1[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v10 = v20;
  *a2 = v19;
  a2[1] = v10;
  a2[2] = v21;
  *(a2 + 6) = v22;
  v11 = v16;
  *a3 = v15;
  a3[1] = v11;
  result = *&v17;
  a3[2] = v17;
  *(a3 + 6) = v18;
  return result;
}

const void ***std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](const void ***result, const void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    nlp::CFScopedPtr<__CFString const*>::reset(v2, 0);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

const void ***QP::DateConverter::mergeDate@<X0>(void *a1@<X0>, const __CFString ***a2@<X1>, const __CFString ***a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *(*a2 + 3);
  v10 = *(*a2 + 7);
  v61 = *(*a2 + 5);
  v62 = v10;
  v63 = v8[9];
  v64 = 0;
  v60 = v9;
  v11 = *a3;
  v12 = *(*a3 + 3);
  v13 = *(*a3 + 5);
  v58 = *(*a3 + 7);
  v59 = v11[9];
  v56 = v12;
  v57 = v13;
  if (QP::DateComponents::isEmpty(&v60) && (QP::DateComponents::isEmpty(&v56) & 1) != 0 || !QP::DateComponents::isEmpty((*a2 + 17)) || !QP::DateComponents::isEmpty((*a3 + 17)))
  {
    goto LABEL_69;
  }

  v48 = *(*a1 + 112);
  v14 = *(*a1 + 96);
  v15 = *(*a1 + 80);
  CurrentTime = getCurrentTime(v14, v15);
  LODWORD(v50) = -1;
  CFCalendarDecomposeAbsoluteTime(v14, CurrentTime, "y", &v50);
  v18 = (HIDWORD(v60) | v61 | DWORD1(v61) | v62 | HIDWORD(v62) | v63) >= 0;
  if ((SDWORD1(v61) & 0x80000000) == 0)
  {
    v19 = DWORD1(v61);
  }

  else
  {
    v19 = v63;
  }

  if ((SDWORD1(v57) & 0x80000000) == 0)
  {
    v20 = DWORD1(v57);
  }

  else
  {
    v20 = v59;
  }

  if (v20 == -1)
  {
    if (v19 != -1 && (HIDWORD(v60) | v61 | DWORD1(v61) | v62 | HIDWORD(v62) | v63) < 0)
    {
      goto LABEL_25;
    }

    v21 = *a1;
    if (*(*a1 + 24) == 1)
    {
      if (QP::DateComponents::getAbsoluteTime(&v56, v14, v15) < CurrentTime)
      {
        v22 = 1;
LABEL_31:
        v24 = *a3;
        v25 = *(*a3 + 3);
        if ((v25 - 1) <= 0x3F && ((1 << (v25 - 1)) & 0x8000000008008001) != 0 || v25 == 102)
        {
          v26 = a1[3];
          v55[0] = a1[2];
          v55[1] = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            v24 = *a3;
          }

          QP::updateDateComponentsWithHolidayDisplayKey(v55, *v24, v14, v17, v50 + v22, &v56);
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }
        }

        else
        {
          QP::updateDateComponentsWithRelativeDateOffset(v14, v48, v15, &v56, v25, 1, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, v22);
        }

        if ((SDWORD1(v57) & 0x80000000) == 0)
        {
          v20 = DWORD1(v57);
        }

        else
        {
          v20 = v59;
        }

        goto LABEL_42;
      }

      v21 = *a1;
    }

    if (*(v21 + 23) == 1 && QP::DateComponents::getAbsoluteTime(&v56, v14, v15) > CurrentTime)
    {
      v22 = 0xFFFFFFFFLL;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_31;
  }

  if (*(*a1 + 24) == 1)
  {
    if (QP::DateComponents::getAbsoluteTime(&v56, v14, v15) < CurrentTime)
    {
      goto LABEL_25;
    }

LABEL_21:
    if (*(*a2 + 3) == 2 && *(*a3 + 3) == 2 && v19 != -1)
    {
      AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v56, v14, v15);
      if (AbsoluteTime < QP::DateComponents::getAbsoluteTime(&v60, v14, v15) && !v18)
      {
        goto LABEL_25;
      }

      goto LABEL_51;
    }

LABEL_42:
    if (v19 == -1)
    {
      v27 = *a2;
      v28 = *(*a2 + 3);
      if ((v28 - 1) <= 0x3F && ((1 << (v28 - 1)) & 0x8000000008008001) != 0 || v28 == 102)
      {
        v29 = a1[3];
        v54[0] = a1[2];
        v54[1] = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v27 = *a2;
        }

        QP::updateDateComponentsWithHolidayDisplayKey(v54, *v27, v14, v17, v20, &v60);
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }
      }

      else
      {
        v53 = 0;
        v30 = QP::DateComponents::getAbsoluteTime(&v56, v14, v15);
        v53 = CFDateCreate(*MEMORY[0x1E695E480], v30);
        QP::updateDateComponentsWithRelativeUnitOffset(v14, v48, v53, &v60, *(*a2 + 3), 0, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1);
        nlp::CFScopedPtr<__CFDate const*>::reset(&v53, 0);
      }
    }

LABEL_51:
    v31 = QP::DateComponents::getAbsoluteTime(&v56, v14, v15);
    if (v31 < QP::DateComponents::getAbsoluteTime(&v60, v14, v15))
    {
      v33 = *a2;
      v34 = *(*a2 + 3);
      if ((v34 - 1) <= 0x3F && ((1 << (v34 - 1)) & 0x8000000008008001) != 0 || v34 == 102)
      {
        v35 = a1[3];
        v52[0] = a1[2];
        v52[1] = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *a2;
        }

        QP::updateDateComponentsWithHolidayDisplayKey(v52, *v33, v14, v32, v20, &v60);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }
      }

      else
      {
        QP::updateDateComponentsWithRelativeDateOffset(v14, v48, v15, &v60, v34, 1, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, (v20 - v50));
      }

      v36 = QP::DateComponents::getAbsoluteTime(&v56, v14, v15);
      if (v36 < QP::DateComponents::getAbsoluteTime(&v60, v14, v15))
      {
        v38 = *a2;
        v39 = *(*a2 + 3);
        if ((v39 - 1) <= 0x3F && ((1 << (v39 - 1)) & 0x8000000008008001) != 0 || v39 == 102)
        {
          v40 = a1[3];
          v51[0] = a1[2];
          v51[1] = v40;
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            v38 = *a2;
          }

          QP::updateDateComponentsWithHolidayDisplayKey(v51, *v38, v14, v37, v20 - 1, &v60);
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }
        }

        else
        {
          QP::updateDateComponentsWithRelativeDateOffset(v14, v48, v15, &v60, v39, 1, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, 0xFFFFFFFFLL);
        }
      }
    }

LABEL_69:
    v41 = *(*a2 + 8);
    if (v41 == 5)
    {
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v41 != 6)
      {
        goto LABEL_74;
      }

      v42 = 1;
    }

    QP::updateDateComponentsWithRelativeUnitOffset(*(*a1 + 88), *(*a1 + 112), *(*a1 + 80), &v60, *(*a2 + 3), v42, 0);
LABEL_74:
    if (QP::DateComponents::isEmpty(&v56))
    {
      goto LABEL_80;
    }

    v43 = *(*a3 + 8);
    if (v43 == 5)
    {
      v44 = 0xFFFFFFFFLL;
    }

    else
    {
      if (v43 != 6)
      {
        goto LABEL_80;
      }

      v44 = 1;
    }

    QP::updateDateComponentsWithRelativeUnitOffset(*(*a1 + 88), *(*a1 + 112), *(*a1 + 80), &v56, *(*a3 + 3), v44, 0);
LABEL_80:
    if (QP::DateComponents::isEmpty((*a2 + 17)))
    {
      v45 = *a1;
      v46 = a1[1];
      v49[0] = v45;
      v49[1] = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      QP::resolveDateComponents(v49, &v60, &v56);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      operator new();
    }

    operator new();
  }

  if (*(*a1 + 23) != 1 || QP::DateComponents::getAbsoluteTime(&v56, v14, v15) <= CurrentTime)
  {
    goto LABEL_21;
  }

LABEL_25:
  *a4 = 0;
  return std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](&v64, 0);
}

void sub_1C65966E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  nlp::CFScopedPtr<__CFDate const*>::reset(va, 0);
  std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100]((v12 - 120), 0);
  _Unwind_Resume(a1);
}

void QP::DateConverter::merge(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  if (QP::DateComponents::hasDate((*a2 + 24)) || QP::DateComponents::hasDate((v8 + 80)))
  {
    v9 = *a3;
    if (QP::DateComponents::isTime((*a3 + 24)) || QP::DateComponents::isTime((v9 + 80)))
    {
      v10 = *a2;
      v11 = a2[1];
      v28[0] = v10;
      v28[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *a3;
      v13 = a3[1];
      v27[0] = v12;
      v27[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      QP::DateConverter::mergeDateTime(a1, v28, v27, a4);
    }
  }

  v14 = *a2;
  if ((QP::DateComponents::hasDate((*a2 + 24)) || QP::DateComponents::hasDate((v14 + 80))) && ((v15 = *a3, QP::DateComponents::hasDate((*a3 + 24))) || QP::DateComponents::hasDate((v15 + 80))))
  {
    v16 = *a2;
    v17 = a2[1];
    v26[0] = v16;
    v26[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = a3[1];
    v25[0] = *a3;
    v25[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    QP::DateConverter::mergeDate(a1, v26, v25, a4);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v17)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  else
  {
    v19 = *a2;
    if (QP::DateComponents::isTime((*a2 + 24)) || QP::DateComponents::isTime((v19 + 80)))
    {
      v20 = *a3;
      if (QP::DateComponents::isTime((*a3 + 24)) || QP::DateComponents::isTime((v20 + 80)))
      {
        v21 = *a2;
        v22 = a2[1];
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v23 = *a3;
        v24 = a3[1];
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        QP::DateConverter::mergeTime(a4);
      }
    }

    *a4 = 0;
  }
}

void sub_1C6596B64(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t QP::DateConverter::resolveDateComponentsAsRange(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5, uint64_t a6, int a7)
{
  if (a7)
  {
    v12 = a4[1];
    v29 = *a4;
    v30 = v12;
    v31 = a4[2];
    v32 = *(a4 + 6);
    v13 = a5[1];
    v25 = *a5;
    v26 = v13;
    v27 = a5[2];
    v28 = *(a5 + 6);
    v14 = *(*a1 + 112);
    v15 = *(*a1 + 96);
    v16 = *(*a1 + 80);
    if (QP::DateComponents::isEmpty(&v25))
    {
      if (a2 <= 6)
      {
        if (a2 != 5)
        {
          if (a2 == 6)
          {
            v17 = (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8));
            v18 = &v29;
LABEL_14:
            QP::updateDateComponentsWithRelativeUnitOffset(v15, v14, v16, v18, a3, 1, v17 & 1);
            goto LABEL_16;
          }

          goto LABEL_16;
        }

LABEL_10:
        v25 = v29;
        v26 = v30;
        v27 = v31;
        v28 = v32;
        *&v19 = -1;
        *(&v19 + 1) = -1;
        v29 = v19;
        v30 = v19;
        v31 = v19;
        v32 = -1;
        goto LABEL_16;
      }

      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v25 = v29;
          v26 = v30;
          v27 = v31;
          v28 = v32;
          *&v20 = -1;
          *(&v20 + 1) = -1;
          v29 = v20;
          v30 = v20;
          v31 = v20;
          v32 = -1;
          v17 = (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8));
          v18 = &v25;
          goto LABEL_14;
        }

LABEL_16:
        v22 = v30;
        *a4 = v29;
        a4[1] = v22;
        a4[2] = v31;
        *(a4 + 6) = v32;
        v23 = v26;
        *a5 = v25;
        a5[1] = v23;
        a5[2] = v27;
        *(a5 + 6) = v28;
        return 1;
      }
    }

    else
    {
      if (a2 == 8)
      {
        goto LABEL_10;
      }

      if (a2 != 7)
      {
        if (a2 != 5)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    v28 = -1;
    *&v21 = -1;
    *(&v21 + 1) = -1;
    v26 = v21;
    v27 = v21;
    v25 = v21;
    goto LABEL_16;
  }

  return 1;
}

void QP::DateConverter::resolveDate(void *a1@<X0>, const __CFString ***a2@<X1>, int a3@<W2>, BOOL *a4@<X3>, const void ***a5@<X8>)
{
  *a5 = 0;
  v10 = *(*a1 + 80);
  v11 = *(*a1 + 96);
  v74 = *(*a1 + 112);
  CurrentTime = getCurrentTime(v11, v10);
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v13 = *a2;
  v14 = *(*a2 + 3);
  v15 = *(*a2 + 7);
  v92 = *(*a2 + 5);
  v93 = v15;
  v94 = v13[9];
  v91 = v14;
  v16 = *(v13 + 6);
  v87 = *(v13 + 5);
  v88 = v16;
  v89 = *(v13 + 7);
  v90 = v13[16];
  v17 = *(v13 + 19);
  v83 = *(v13 + 17);
  v84 = v17;
  v85 = *(v13 + 21);
  v86 = v13[23];
  AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
  v19 = *(*a2 + 3);
  v20 = **a2;
  if (v20)
  {
    v20 = CFRetain(v20);
  }

  v21 = *(*a2 + 3);
  cf = v20;
  v82 = v20;
  v71 = a4;
  if (v21 < 6)
  {
    v72 = 0;
  }

  else
  {
    v22 = v21 < 0x13 || v21 < 0x1F || (v21 - 55) < 0xC;
    v72 = v22;
  }

  v24 = 1;
  if (((v19 - 28) > 0x3D || ((1 << (v19 - 28)) & 0x2000001002000001) == 0) && v19 != 16)
  {
    v24 = 0;
  }

  if (v21 < 31)
  {
    v69 = 0;
  }

  else
  {
    v25 = v21 < 0x35 || (v21 - 67) < 0x16;
    v69 = v25;
  }

  v26 = 1;
  v27 = __OFSUB__(a3 - 4, 5);
  if ((a3 - 4) >= 5 && (*(*a1 + 29) & 1) == 0)
  {
    v27 = __OFSUB__(v21 - 1, 63);
    if ((v21 - 1) > 0x3F || ((1 << (v21 - 1)) & 0x8000000008008001) == 0)
    {
      v27 = __OFSUB__(v21, 102);
      if (v21 != 102)
      {
        v26 = 0;
      }
    }
  }

  v68 = v26;
  v29 = (HIDWORD(v93) & DWORD2(v93) & DWORD1(v93) & v94) < 0 != v27 && v93 >= 0;
  v70 = v29;
  v30 = HIDWORD(v92);
  if ((DWORD2(v91) & 0x80000000) != 0 && (DWORD1(v91) & 0x80000000) != 0 && (v91 & 0x80000000) != 0 || v21 == 121 || v92 >= 0 || v72 || v69)
  {
    if ((HIDWORD(v92) & 0x80000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  LODWORD(v77) = 0;
  v81 = 0;
  CFCalendarDecomposeAbsoluteTime(v11, AbsoluteTime, "Ha", &v77, &v81);
  if (DWORD2(v91) != -1 && !QP::DateComponents::isTime(&v91))
  {
LABEL_53:
    v31 = v77;
    if (v77 > 6)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (AbsoluteTime >= CurrentTime || *(*a1 + 26) != 1)
  {
    if (AbsoluteTime > CurrentTime && *(*a1 + 27) == 1)
    {
      if (v77 < 13)
      {
        goto LABEL_56;
      }

      v32 = v77 - 12;
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v31 = v77;
  if (v77 <= 11)
  {
LABEL_54:
    v32 = v31 + 12;
LABEL_55:
    DWORD2(v91) = v32;
  }

LABEL_56:
  v33 = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
  CFCalendarDecomposeAbsoluteTime(v11, v33, "H", &v77);
  DWORD2(v91) = v77;
  HIDWORD(v92) = -1;
  AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
  if (!*a5)
  {
    operator new();
  }

  if ((HIDWORD(v92) & 0x80000000) == 0)
  {
LABEL_59:
    v81 = 0;
    if (v30 == 8)
    {
      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      v34 = *a2;
      v35 = *(*a2 + 5);
      v77 = *(*a2 + 3);
      v78 = v35;
      v79 = *(v34 + 7);
      v80 = v34[9];
      *&v77 = -1;
      DWORD2(v77) = -1;
      HIDWORD(v78) = -1;
      if ((QP::DateComponents::isEmpty(&v77) & 1) == 0)
      {
        QP::updateDateComponentsWithRelativeUnitOffset(v11, v74, v10, &v77, v19, 0, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1);
        HIDWORD(v78) = HIDWORD(v92);
        DWORD2(v77) = DWORD2(v91);
        *&v77 = v91;
        v92 = v78;
        v93 = v79;
        v94 = v80;
        v91 = v77;
        AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
      }
    }

    CFCalendarDecomposeAbsoluteTime(v11, AbsoluteTime, "H", &v81);
    DWORD2(v91) = v81;
    HIDWORD(v92) = -1;
    if (!*a5)
    {
      operator new();
    }
  }

LABEL_64:
  if ((HIDWORD(v88) & 0x80000000) == 0)
  {
    LODWORD(v77) = 0;
    v36 = QP::DateComponents::getAbsoluteTime(&v87, v11, v10);
    CFCalendarDecomposeAbsoluteTime(v11, v36, "H", &v77);
    DWORD2(v87) = v77;
    HIDWORD(v88) = -1;
    if (!*a5)
    {
      operator new();
    }
  }

  v81 = 0;
  CFCalendarDecomposeAbsoluteTime(v11, AbsoluteTime, "y", &v81);
  v76 = 0;
  CFCalendarDecomposeAbsoluteTime(v11, CurrentTime, "y", &v76);
  v38 = a3 - 9;
  if ((v24 & 1) != 0 || (v39 = *(*a2 + 3), (v39 - 1) <= 0x3F) && ((1 << (v39 - 1)) & 0x8000000008008001) != 0 || v39 == 102)
  {
    v40 = v81;
    if (v81 == v76)
    {
      if (v38 < 0xFFFAu || v70)
      {
        if (AbsoluteTime > CurrentTime)
        {
          if ((*(*a1 + 27) & 1) == 0)
          {
            v42 = *(*a1 + 8);
            if (v42 <= 0xD && ((1 << v42) & 0x2A01) != 0)
            {
              goto LABEL_80;
            }
          }

          v41 = -1;
LABEL_81:
          v80 = -1;
          *&v43 = -1;
          *(&v43 + 1) = -1;
          v78 = v43;
          v79 = v43;
          v77 = v43;
          v44 = a1[3];
          v75[0] = a1[2];
          v75[1] = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          QP::updateDateComponentsWithHolidayDisplayKey(v75, **a2, v11, v37, v41 + v40, &v91);
          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
          }

          if (QP::DateComponents::isEmpty(&v87) && (QP::DateComponents::isEmpty(&v77) & 1) == 0)
          {
            v87 = v77;
            v88 = v78;
            v89 = v79;
            v90 = v80;
          }

          AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
          goto LABEL_89;
        }

        if (AbsoluteTime < CurrentTime)
        {
          v41 = *(*a1 + 26);
          goto LABEL_81;
        }
      }

LABEL_80:
      v41 = 0;
      goto LABEL_81;
    }
  }

LABEL_89:
  v45 = *a1;
  if (*(*a1 + 8) == 10)
  {
    if (!*a5)
    {
      operator new();
    }

    if (v19 == 4)
    {
      LOWORD(a3) = 0;
    }

    goto LABEL_159;
  }

  if (*(v45 + 27) & 1) == 0 && ((v68 | *(v45 + 26)) & 1) == 0 && (QP::DateComponents::isEmpty(&v87))
  {
LABEL_159:
    v58 = *a5;
    v57 = 1;
    goto LABEL_160;
  }

  if (v72)
  {
    v46 = 0;
    goto LABEL_112;
  }

  if (v38 < 0xFFFAu || v70)
  {
    if (AbsoluteTime <= CurrentTime)
    {
      if (AbsoluteTime < CurrentTime)
      {
        v47 = *(*a1 + 26);
        goto LABEL_109;
      }
    }

    else if ((*(*a1 + 27) & 1) != 0 || (v48 = *(*a1 + 8), v48 > 0xD) || ((1 << v48) & 0x2A01) == 0)
    {
      v47 = -1;
      goto LABEL_109;
    }
  }

  v47 = 0;
LABEL_109:
  if (v69)
  {
    v46 = 0;
  }

  else
  {
    v46 = v47;
  }

LABEL_112:
  if ((HIDWORD(v93) & 0x80000000) != 0)
  {
    if ((DWORD2(v93) & 0x80000000) == 0 || (DWORD1(v93) & 0x80000000) == 0 || (v94 & 0x80000000) == 0 || (HIDWORD(v91) & 0x80000000) != 0 || (v92 & 0x80000000) != 0 || (DWORD1(v92) & 0x80000000) != 0)
    {
      goto LABEL_122;
    }

LABEL_121:
    if (!v46)
    {
      goto LABEL_125;
    }

    goto LABEL_122;
  }

  if ((v94 & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

LABEL_122:
  if (!*a5)
  {
    operator new();
  }

  QP::updateDateComponentsWithRelativeDateOffset(v11, *(*a1 + 112), v10, &v91, *(*a2 + 3), v68, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, v46);
LABEL_125:
  if (QP::DateComponents::isEmpty(&v87))
  {
    goto LABEL_159;
  }

  if (v19 == 4)
  {
    LOWORD(a3) = 0;
  }

  v49 = QP::DateComponents::getAbsoluteTime(&v87, v11, v10);
  if (v72)
  {
    v50 = 0;
    goto LABEL_139;
  }

  if (v38 >= 0xFFFAu && !v70)
  {
    goto LABEL_135;
  }

  if (v49 > CurrentTime)
  {
    v51 = -*(*a1 + 27);
    goto LABEL_136;
  }

  if (v49 < CurrentTime)
  {
    v51 = *(*a1 + 26);
  }

  else
  {
LABEL_135:
    v51 = 0;
  }

LABEL_136:
  if (v69)
  {
    v50 = 0;
  }

  else
  {
    v50 = v51;
  }

LABEL_139:
  QP::updateDateComponentsWithRelativeDateOffset(v11, *(*a1 + 112), v10, &v87, *(*a2 + 3), 1, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, v50);
  if ((QP::DateComponents::isEmpty(&v83) & 1) != 0 || *(*a1 + 29) == 1)
  {
    if ((HIDWORD(v93) & 0x80000000) != 0)
    {
      if ((DWORD2(v93) & 0x80000000) != 0 && (DWORD1(v93) & 0x80000000) != 0 && (v94 & 0x80000000) != 0 && (HIDWORD(v91) & 0x80000000) == 0 && (v92 & 0x80000000) == 0 && (DWORD1(v92) & 0x80000000) == 0)
      {
        goto LABEL_156;
      }
    }

    else if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

    v52 = 0;
    do
    {
      QP::updateDateComponentsWithRelativeUnitOffset(v11, v74, v10, &v91, v19, v52, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1);
      v53 = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
      v54 = v53 < QP::DateComponents::getAbsoluteTime(&v87, v11, v10) || v52 <= -2;
      v52 = (v52 - 1);
    }

    while (!v54);
  }

LABEL_156:
  v55 = QP::DateComponents::getAbsoluteTime(&v91, v11, v10);
  v56 = QP::DateComponents::getAbsoluteTime(&v87, v11, v10);
  v57 = v55 < v56;
  v58 = *a5;
  if (!*a5 && v55 < v56)
  {
    operator new();
  }

LABEL_160:
  if (v58)
  {
    QP::DatePeriod::setDisplayKey(v58, cf);
    v59 = *a5;
    *(v59 + 3) = v19;
    *(v59 + 8) = a3;
    if ((a3 - 1) > 7u)
    {
      v60 = 0;
    }

    else
    {
      v60 = dword_1C663171C[(a3 - 1)];
    }

    *(v59 + 5) = v60;
    v61 = v94;
    v63 = v92;
    v62 = v93;
    *(v59 + 3) = v91;
    *(v59 + 5) = v63;
    *(v59 + 7) = v62;
    v59[9] = v61;
    v64 = v88;
    *(v59 + 5) = v87;
    *(v59 + 6) = v64;
    *(v59 + 7) = v89;
    v59[16] = v90;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v59[23] = v86;
    *(v59 + 21) = v67;
    *(v59 + 19) = v66;
    *(v59 + 17) = v65;
  }

  if (v71)
  {
    *v71 = v57;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1C6597A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  nlp::CFScopedPtr<__CFString const*>::reset(&a30, 0);
  std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](v30, 0);
  _Unwind_Resume(a1);
}

const void ***QP::DateConverter::resolve@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, BOOL *a4@<X3>, const void ***a5@<X8>)
{
  v6 = *(a2 + 8);
  v9[0] = *a2;
  v9[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  QP::DateConverter::resolveDate(a1, v9, a3, a4, &v10);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v10;
  if (v10)
  {
    v10 = 0;
  }

  *a5 = v7;
  return std::unique_ptr<QP::DatePeriod>::reset[abi:ne200100](&v10, 0);
}

void sub_1C6597B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__emplace_unique_key_args<QP::QPDateComponentsPeriod,std::pair<QP::QPDateComponentsPeriod const,int> const&>(a1, a2);
      a2 += 4;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__emplace_unique_key_args<QP::QPDateComponentsPeriod,std::pair<QP::QPDateComponentsPeriod const,int> const&>(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t QP::getIntFromNumber(const __CFString *this, const __CFString *a2, const __CFLocale *a3)
{
  result = getIntFromSpelledNumber(this, a2);
  if ((result & 0x80000000) != 0)
  {

    return CFStringGetIntValue(this);
  }

  return result;
}

void nlp::CFScopedPtr<__CFDate const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFCalendar *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFArray const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void nlp::CFScopedPtr<__CFDictionary const*>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void nlp::CFScopedPtr<__CFString *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t std::unordered_map<QP::QPDateComponentsPeriod,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::__emplace_unique_key_args<QP::QPDateComponentsPeriod,std::pair<QP::QPDateComponentsPeriod const,int> const&>(a1, i + 8);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::__unordered_map_hasher<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::hash<QP::QPDateComponentsPeriod>,std::equal_to<QP::QPDateComponentsPeriod>,true>,std::__unordered_map_equal<QP::QPDateComponentsPeriod,std::__hash_value_type<QP::QPDateComponentsPeriod,int>,std::equal_to<QP::QPDateComponentsPeriod>,std::hash<QP::QPDateComponentsPeriod>,true>,std::allocator<std::__hash_value_type<QP::QPDateComponentsPeriod,int>>>::find<QP::QPDateComponentsPeriod>(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E82664F0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::shared_ptr<QP::HolidayReference>::shared_ptr[abi:ne200100]<QP::HolidayReference,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1C6598554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<QP::HolidayReference>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

QP::HolidayReference **std::unique_ptr<QP::HolidayReference>::~unique_ptr[abi:ne200100](QP::HolidayReference **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    QP::HolidayReference::~HolidayReference(v2);
    MEMORY[0x1C695B850]();
  }

  return a1;
}

void std::__shared_ptr_pointer<QP::HolidayReference *,std::shared_ptr<QP::HolidayReference>::__shared_ptr_default_delete<QP::HolidayReference,QP::HolidayReference>,std::allocator<QP::HolidayReference>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C695B850);
}

QP::HolidayReference *std::__shared_ptr_pointer<QP::HolidayReference *,std::shared_ptr<QP::HolidayReference>::__shared_ptr_default_delete<QP::HolidayReference,QP::HolidayReference>,std::allocator<QP::HolidayReference>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    QP::HolidayReference::~HolidayReference(result);

    JUMPOUT(0x1C695B850);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<QP::HolidayReference *,std::shared_ptr<QP::HolidayReference>::__shared_ptr_default_delete<QP::HolidayReference,QP::HolidayReference>,std::allocator<QP::HolidayReference>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t QP::DateFormatter::DateFormatter(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(*MEMORY[0x1E695E480], 0x333uLL);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset((a1 + 32), ISO8601Formatter);
  QP::DateFormatter::update(a1);
  return a1;
}

void sub_1C659875C(_Unwind_Exception *a1)
{
  nlp::CFScopedPtr<__CFDictionary const*>::reset(v2 + 3, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v3, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v2 + 1, 0);
  nlp::CFScopedPtr<__CFDateFormatter *>::reset(v2, 0);
  v5 = *(v1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void nlp::CFScopedPtr<__CFDateFormatter *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void QP::DateFormatter::update(const void **this)
{
  if (*this)
  {
    v1 = *(*this + 14);
    if (v1)
    {
      v3 = *MEMORY[0x1E695E480];
      v4 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v1, kCFDateFormatterShortStyle, kCFDateFormatterShortStyle);
      nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 6, v4);
      v5 = CFDateFormatterCreate(v3, *(*this + 14), kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);

      nlp::CFScopedPtr<__CFDateFormatter *>::reset(this + 5, v5);
    }
  }
}

CFStringRef QP::DateFormatter::copyWeekdayDisplayForDate(CFDateFormatterRef *a1, uint64_t a2)
{
  v3 = *(*a2 + 24);
  v4 = *(*a2 + 40);
  v5 = *(*a2 + 56);
  v25 = *(*a2 + 72);
  v23[1] = v4;
  v24 = v5;
  v23[0] = v3;
  if ((QP::DateComponents::isEmpty(v23) & 1) != 0 || (v24 & 0x80000000) != 0)
  {
    return 0;
  }

  *&v6 = -1;
  *(&v6 + 1) = -1;
  *v20 = v6;
  v21 = v6;
  v22 = -1;
  v19 = v6;
  LODWORD(v21) = v24;
  AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v19, *(*a1 + 11), *(*a1 + 10));
  v7 = *MEMORY[0x1E695E480];
  v8 = CFDateCreate(*MEMORY[0x1E695E480], AbsoluteTime);
  v17 = v8;
  v9 = *(*a1 + 12);
  if (v9)
  {
    AbsoluteTime = convertAbsoluteTime(*(*a1 + 11), v9, v8, v20[0]);
    v10 = CFDateCreate(v7, AbsoluteTime);
    if (v8)
    {
      CFRelease(v8);
    }

    v17 = v10;
    v8 = v10;
  }

  memset(&__p, 0, sizeof(__p));
  QP::DateComponents::getShortFormatWithOptions(&v19, 0, &__p);
  CFStringFromString = QP::createCFStringFromString(&__p);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, CFStringFromString, 0, *(*a1 + 14));
  StringWithDate = 0;
  v14 = a1[6];
  if (v14 && v8)
  {
    CFDateFormatterSetFormat(v14, DateFormatFromTemplate);
    StringWithDate = CFDateFormatterCreateStringWithDate(v7, a1[6], v8);
  }

  if (DateFormatFromTemplate)
  {
    CFRelease(DateFormatFromTemplate);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v8)
    {
      return StringWithDate;
    }

    goto LABEL_19;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v8)
  {
LABEL_19:
    CFRelease(v8);
  }

  return StringWithDate;
}

void sub_1C6598A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a11, 0);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(&a18, 0);
  _Unwind_Resume(a1);
}

CFStringRef QP::DateFormatter::copyDateDisplayForDate(CFDateFormatterRef *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 24);
  v5 = *(*a2 + 56);
  *v21 = *(*a2 + 40);
  *v22 = v5;
  *&v22[16] = *(v3 + 72);
  v20 = v4;
  if (QP::DateComponents::isEmpty(&v20))
  {
    return 0;
  }

  *&v20 = -1;
  *&v22[12] = -1;
  DWORD2(v20) = -1;
  v21[1] = -1;
  if (QP::DateComponents::isEmpty(&v20))
  {
    return 0;
  }

  AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v20, *(*a1 + 11), *(*a1 + 10));
  v8 = *MEMORY[0x1E695E480];
  v9 = CFDateCreate(*MEMORY[0x1E695E480], AbsoluteTime);
  v18 = v9;
  v10 = *a1;
  v11 = *(*a1 + 12);
  if (v11)
  {
    AbsoluteTime = convertAbsoluteTime(v10[11], v11, v9, v21[0]);
    v12 = CFDateCreate(v8, AbsoluteTime);
    if (v9)
    {
      CFRelease(v9);
    }

    v18 = v12;
    v10 = *a1;
    v9 = v12;
  }

  memset(&__p, 0, sizeof(__p));
  v13 = QP::ParserConfiguration::useEra(v10);
  QP::DateComponents::getShortFormatWithOptions(&v20, v13, &__p);
  CFStringFromString = QP::createCFStringFromString(&__p);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, CFStringFromString, 0, *(*a1 + 14));
  StringWithDate = 0;
  v16 = a1[6];
  if (v16 && v9)
  {
    CFDateFormatterSetFormat(v16, DateFormatFromTemplate);
    StringWithDate = CFDateFormatterCreateStringWithDate(v8, a1[6], v9);
  }

  if (DateFormatFromTemplate)
  {
    CFRelease(DateFormatFromTemplate);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return StringWithDate;
}

void sub_1C6598C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a11, 0);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(&a18, 0);
  _Unwind_Resume(a1);
}

void QP::DateComponents::getShortFormatWithOptions(QP::DateComponents *this@<X0>, char a2@<W1>, std::string *a3@<X8>)
{
  if (QP::DateComponents::isTime(this))
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "hma");
    return;
  }

  if ((*(this + 11) & 0x80000000) != 0 && (*(this + 10) & 0x80000000) != 0 && (*(this + 9) & 0x80000000) != 0 && (*(this + 12) & 0x80000000) != 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x4002000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    __p = 0;
    v19 = 0;
    v20 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZNK2QP14DateComponents25getShortFormatWithOptionsEbPd_block_invoke;
    v11[3] = &unk_1E8266728;
    v11[4] = &v13;
    v12 = a2;
    QP::DateComponents::enumerate(this, v11);
    v7 = v14;
    if ((*(v14 + 63) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    std::string::__init_copy_ctor_external(a3, v14[5], v14[6]);
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x4002000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    __p = 0;
    v19 = 0;
    v20 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___ZNK2QP14DateComponents25getShortFormatWithOptionsEbPd_block_invoke_2;
    v9[3] = &unk_1E8266750;
    v9[4] = &v13;
    v10 = a2;
    QP::DateComponents::enumerate(this, v9);
    v7 = v14;
    if ((*(v14 + 63) & 0x80000000) == 0)
    {
LABEL_10:
      v8 = *(v7 + 5);
      a3->__r_.__value_.__r.__words[2] = v7[7];
      *&a3->__r_.__value_.__l.__data_ = v8;
      goto LABEL_12;
    }

    std::string::__init_copy_ctor_external(a3, v14[5], v14[6]);
  }

LABEL_12:
  _Block_object_dispose(&v13, 8);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }
}

void sub_1C6598F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFStringRef QP::DateFormatter::copyTimeDisplayForDate(CFDateFormatterRef *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 24);
  v5 = *(*a2 + 56);
  v23 = *(*a2 + 40);
  v24 = v5;
  v25 = *(v3 + 72);
  v22 = v4;
  if ((QP::DateComponents::isEmpty(&v22) & 1) != 0 || (DWORD2(v22) & 0x80000000) != 0 && (DWORD1(v22) & 0x80000000) != 0 && (v22 & 0x80000000) != 0 && (HIDWORD(v23) & 0x80000000) != 0)
  {
    return 0;
  }

  *&v8 = -1;
  *(&v8 + 1) = -1;
  *v21 = v8;
  *&v21[12] = v8;
  *v20 = v8;
  v19[0] = v22;
  v19[1] = v22;
  v19[2] = DWORD2(v22);
  *v21 = HIDWORD(v23);
  AbsoluteTime = QP::DateComponents::getAbsoluteTime(v19, *(*a1 + 11), *(*a1 + 10));
  v9 = *MEMORY[0x1E695E480];
  v10 = CFDateCreate(*MEMORY[0x1E695E480], AbsoluteTime);
  v17 = v10;
  v11 = *(*a1 + 12);
  if (v11)
  {
    AbsoluteTime = convertAbsoluteTime(*(*a1 + 11), v11, v10, v20[1]);
    v12 = CFDateCreate(v9, AbsoluteTime);
    if (v10)
    {
      CFRelease(v10);
    }

    v17 = v12;
    v10 = v12;
  }

  memset(&__p, 0, sizeof(__p));
  QP::DateComponents::getShortFormatWithOptions(v19, 0, &__p);
  CFStringFromString = QP::createCFStringFromString(&__p);
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, CFStringFromString, 0, *(*a1 + 14));
  StringWithDate = 0;
  v15 = a1[6];
  if (v15 && v10)
  {
    CFDateFormatterSetFormat(v15, DateFormatFromTemplate);
    StringWithDate = CFDateFormatterCreateStringWithDate(v9, a1[6], v10);
  }

  if (DateFormatFromTemplate)
  {
    CFRelease(DateFormatFromTemplate);
  }

  if (CFStringFromString)
  {
    CFRelease(CFStringFromString);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return StringWithDate;
}

void sub_1C6599108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(&a17, 0);
  _Unwind_Resume(a1);
}

CFStringRef QP::DateFormatter::copyShortDisplayForDate(CFDateFormatterRef *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(*a2 + 24);
  v9 = *(*a2 + 40);
  v10 = *(*a2 + 56);
  v45 = *(*a2 + 72);
  v43 = v9;
  v44 = v10;
  v42 = v8;
  if ((QP::DateComponents::isEmpty(&v42) & 1) == 0)
  {
    if (a3)
    {
      QP::updateDateComponentsWithRelativeDateOffset(*(*a1 + 12), *(*a1 + 14), *(*a1 + 10), &v42, *(*a2 + 12), 1, (*(*a1 + 1) > 0xDuLL) | (0x15FEu >> *(*a1 + 1)) & 1, a4);
    }

    v12 = *(*a2 + 12);
    if (v12 < 91 || v12 == 102)
    {
      v35.__r_.__value_.__r.__words[0] = QP::DateComponents::getAbsoluteTime(&v42, *(*a1 + 11), *(*a1 + 10));
      v16 = *MEMORY[0x1E695E480];
      v17 = CFDateCreate(*MEMORY[0x1E695E480], *&v35.__r_.__value_.__l.__data_);
      *&AbsoluteTime = v17;
      v18 = *a1;
      v19 = *(*a1 + 12);
      if (v19)
      {
        v35.__r_.__value_.__r.__words[0] = convertAbsoluteTime(v18[11], v19, v17, v43);
        v20 = CFDateCreate(v16, *&v35.__r_.__value_.__l.__data_);
        if (v17)
        {
          CFRelease(v17);
        }

        *&AbsoluteTime = v20;
        v18 = *a1;
        v17 = v20;
      }

      __p[0] = 0;
      __p[1] = 0;
      *v39 = 0;
      v21 = QP::ParserConfiguration::useEra(v18);
      QP::DateComponents::getShortFormatWithOptions(&v42, v21, __p);
      CFStringFromString = QP::createCFStringFromString(__p);
      v36 = CFStringFromString;
      DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, CFStringFromString, 0, *(*a1 + 14));
      StringWithDate = 0;
      v24 = a1[6];
      if (v24 && v17)
      {
        CFDateFormatterSetFormat(v24, DateFormatFromTemplate);
        StringWithDate = CFDateFormatterCreateStringWithDate(v16, a1[6], v17);
      }

      if (DateFormatFromTemplate)
      {
        CFRelease(DateFormatFromTemplate);
      }

      if (CFStringFromString)
      {
        CFRelease(CFStringFromString);
      }

      if (SHIBYTE(v39[1]) < 0)
      {
        operator delete(__p[0]);
        if (!v17)
        {
          return StringWithDate;
        }
      }

      else if (!v17)
      {
        return StringWithDate;
      }

      CFRelease(v17);
      return StringWithDate;
    }

    v13 = &v39[1];
    v41 = -1;
    *&v14 = -1;
    *(&v14 + 1) = -1;
    *v39 = v14;
    v40 = v14;
    *__p = v14;
    if ((DWORD2(v42) & 0x80000000) != 0 && (DWORD1(v42) & 0x80000000) != 0 && (v42 & 0x80000000) != 0 && (HIDWORD(v43) & 0x80000000) != 0)
    {
      v15 = v44;
      if (v12 == 96)
      {
        v13 = &v40;
      }

      else
      {
        if ((v44 & 0x80000000) == 0)
        {
          LODWORD(v40) = v44;
        }

        v15 = v43;
        if ((v43 & 0x80000000) != 0)
        {
          v15 = DWORD1(v43);
          if ((DWORD1(v43) & 0x80000000) != 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v13 = v39;
        }
      }
    }

    else
    {
      LODWORD(__p[0]) = v42;
      if (v12 < 0x5D || (HIDWORD(__p[0]) = DWORD1(v42), v12 == 93) || (LODWORD(__p[1]) = DWORD2(v42), v39[3] = HIDWORD(v43), v12 < 0x5F) || (HIDWORD(__p[1]) = HIDWORD(v42), v12 == 95) || (LODWORD(v40) = v44, v12 < 0x64) || (v39[0] = v43, v12 == 100))
      {
LABEL_42:
        AbsoluteTime = QP::DateComponents::getAbsoluteTime(__p, *(*a1 + 11), *(*a1 + 10));
        v25 = *MEMORY[0x1E695E480];
        v26 = CFDateCreate(*MEMORY[0x1E695E480], AbsoluteTime);
        v36 = v26;
        v27 = *a1;
        v28 = *(*a1 + 12);
        if (v28)
        {
          AbsoluteTime = convertAbsoluteTime(v27[11], v28, v26, v39[0]);
          v29 = CFDateCreate(v25, AbsoluteTime);
          if (v26)
          {
            CFRelease(v26);
          }

          v36 = v29;
          v27 = *a1;
          v26 = v29;
        }

        memset(&v35, 0, sizeof(v35));
        v30 = QP::ParserConfiguration::useEra(v27);
        QP::DateComponents::getShortFormatWithOptions(&v42, v30, &v35);
        v31 = QP::createCFStringFromString(&v35);
        v32 = CFDateFormatterCreateDateFormatFromTemplate(0, v31, 0, *(*a1 + 14));
        StringWithDate = 0;
        v33 = a1[6];
        if (v33 && v26)
        {
          CFDateFormatterSetFormat(v33, v32);
          StringWithDate = CFDateFormatterCreateStringWithDate(v25, a1[6], v26);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v31)
        {
          CFRelease(v31);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
          if (!v26)
          {
            return StringWithDate;
          }
        }

        else if (!v26)
        {
          return StringWithDate;
        }

        CFRelease(v26);
        return StringWithDate;
      }

      v15 = DWORD1(v43);
    }

    *v13 = v15;
    goto LABEL_42;
  }

  return 0;
}

void sub_1C659958C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a11, 0);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  nlp::CFScopedPtr<__CFDate const*>::reset(&a18, 0);
  _Unwind_Resume(a1);
}

__CFString *QP::DateFormatter::copyISODisplayForStartDate(uint64_t *a1, uint64_t *a2, int a3, char a4, int a5, uint64_t a6)
{
  if ((a4 & 1) != 0 || (StringWithDate = @"0", a3 != 5) && a3 != 8)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v11 = *a2;
    v12 = *(*a2 + 24);
    v13 = *(*a2 + 56);
    v36 = *(*a2 + 40);
    v37 = v13;
    v38 = *(v11 + 72);
    v35 = v12;
    v14 = *(v11 + 96);
    v31 = *(v11 + 80);
    v32 = v14;
    v33 = *(v11 + 112);
    v34 = *(v11 + 128);
    v15 = *(v11 + 152);
    v29[0] = *(v11 + 136);
    v29[1] = v15;
    v29[2] = *(v11 + 168);
    v30 = *(v11 + 184);
    if (a5)
    {
      QP::updateDateComponentsWithRelativeDateOffset(*(*a1 + 96), *(*a1 + 112), *(*a1 + 80), &v35, *(v11 + 12), 1, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, a6);
    }

    v16 = a1[1];
    v27 = *a1;
    v28 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    QP::DateConverter::resolveDateComponentsAsRange(&v27, a3, *(*a2 + 12), &v35, &v31, v29, a5);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    v23 = v35;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    if (QP::DateComponents::isEmpty(&v35) && (QP::DateComponents::isEmpty(&v31) & 1) == 0)
    {
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
    }

    if (QP::DateComponents::isEmpty(&v23))
    {
      return @"0";
    }

    else
    {
      isEmpty = QP::DateComponents::isEmpty(&v31);
      if (a3 == 6)
      {
        v18 = isEmpty;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        v23 = v31;
        v24 = v32;
        v25 = v33;
        v26 = v34;
        QP::updateDateComponentsWithUnitOffset(*(*a1 + 96), *(*a1 + 112), *(*a1 + 80), &v23, *(*a2 + 12), 1);
      }

      AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v23, *(*a1 + 96), *(*a1 + 80));
      v20 = *MEMORY[0x1E695E480];
      v21 = CFDateCreate(*MEMORY[0x1E695E480], AbsoluteTime);
      if (v21)
      {
        StringWithDate = CFDateFormatterCreateStringWithDate(v20, a1[4], v21);
        CFRelease(v21);
      }

      else
      {
        return 0;
      }
    }
  }

  return StringWithDate;
}

void sub_1C65998AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDate const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFString *QP::DateFormatter::copyISODisplayForEndDate(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 0xFFFE) == 6 && !a4)
  {
    return @"2147483647";
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v12 = *a2;
  v13 = *(*a2 + 24);
  v14 = *(*a2 + 56);
  v36 = *(*a2 + 40);
  v37 = v14;
  v38 = *(v12 + 72);
  v35 = v13;
  v15 = *(v12 + 96);
  v31 = *(v12 + 80);
  v32 = v15;
  v33 = *(v12 + 112);
  v34 = *(v12 + 128);
  v16 = *(v12 + 152);
  v29[0] = *(v12 + 136);
  v29[1] = v16;
  v29[2] = *(v12 + 168);
  v30 = *(v12 + 184);
  if (a5)
  {
    QP::updateDateComponentsWithRelativeDateOffset(*(*a1 + 96), *(*a1 + 112), *(*a1 + 80), &v35, *(v12 + 12), 1, (*(*a1 + 8) > 0xDuLL) | (0x15FEu >> *(*a1 + 8)) & 1, a6);
  }

  v17 = a1[1];
  v27 = *a1;
  v28 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  QP::DateConverter::resolveDateComponentsAsRange(&v27, a3, *(*a2 + 12), &v35, &v31, v29, a5);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  if (QP::DateComponents::isEmpty(&v31) && (QP::DateComponents::isEmpty(&v35) & 1) == 0)
  {
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v26 = v38;
  }

  if (QP::DateComponents::isEmpty(&v23))
  {
    return @"2147483647";
  }

  if ((QP::DateComponents::isEmpty(&v35) & 1) == 0)
  {
    QP::updateDateComponentsWithUnitOffset(*(*a1 + 96), *(*a1 + 112), *(*a1 + 80), &v23, *(*a2 + 12), a7);
  }

  AbsoluteTime = QP::DateComponents::getAbsoluteTime(&v23, *(*a1 + 96), *(*a1 + 80));
  v21 = *MEMORY[0x1E695E480];
  v22 = CFDateCreate(*MEMORY[0x1E695E480], AbsoluteTime);
  if (!v22)
  {
    return 0;
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(v21, a1[4], v22);
  CFRelease(v22);
  return StringWithDate;
}

void sub_1C6599B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFDate const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

__CFString *QP::DateFormatter::copyDisplayForPeriodWithKey(CFDateFormatterRef *a1, uint64_t *a2, const __CFString *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    return 0;
  }

  v134 = 0;
  v135 = 0;
  if (CFStringFind(a3, @"::", 0).location != -1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a3, @"::");
    v133 = ArrayBySeparatingStrings;
    if (CFArrayGetCount(ArrayBySeparatingStrings) == 2)
    {
      CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
      CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
      v132 = 0;
      v130 = 0u;
      v131 = 0u;
      v13 = *a2;
      v14 = *(*a2 + 24);
      v15 = *(*a2 + 56);
      v130 = *(*a2 + 40);
      v131 = v15;
      v132 = *(v13 + 72);
      v129 = v14;
      v16 = *(v13 + 96);
      v127[0] = *(v13 + 80);
      v127[1] = v16;
      v127[2] = *(v13 + 112);
      v128 = *(v13 + 128);
      v17 = *(v13 + 152);
      cf[0] = *(v13 + 136);
      cf[1] = v17;
      cf[2] = *(v13 + 168);
      v126 = *(v13 + 184);
      v18 = a1[1];
      v123 = *a1;
      v124 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *a2;
      }

      QP::DateConverter::resolveDateComponentsAsRange(&v123, a4, *(v13 + 12), &v129, v127, cf, a6);
      if (v124)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v124);
      }

      operator new();
    }

    if (ArrayBySeparatingStrings)
    {
      CFRelease(ArrayBySeparatingStrings);
    }

    goto LABEL_151;
  }

  v20 = a1;
  if (CFStringFind(a3, @":", 0).location != -1)
  {
    v21 = *MEMORY[0x1E695E480];
    v22 = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a3, @":");
    *&v129 = v22;
    if (CFArrayGetCount(v22) != 2)
    {
LABEL_148:
      if (v22)
      {
        CFRelease(v22);
      }

      a1 = v20;
      goto LABEL_151;
    }

    v23 = *a2;
    v24 = *(*a2 + 12) - 94;
    if (v24 > 0x18)
    {
LABEL_98:
      ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
      *&v127[0] = 0;
      v76 = a2[1];
      v112[0] = *a2;
      v112[1] = v76;
      if (v76)
      {
        atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v127[0] = QP::DateFormatter::copyDisplayForPeriodWithKey(v20, v112, ValueAtIndex, a4, a5, a6, a7);
      if (v76)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v76);
      }

      v77 = CFArrayGetValueAtIndex(v22, 1);
      *&cf[0] = 0;
      v78 = a2[1];
      v111[0] = *a2;
      v111[1] = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = QP::DateFormatter::copyDisplayForPeriodWithKey(v20, v111, v77, a4, a5, a6, a7);
      *&cf[0] = v79;
      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if (!*&v127[0] || !v79)
      {
        goto LABEL_147;
      }

      v133 = 0;
      MutableCopy = CFStringCreateMutableCopy(v21, 0, v79);
      v133 = MutableCopy;
      v81 = *&v127[0];
      v140.length = CFStringGetLength(MutableCopy);
      v140.location = 0;
      CFStringFindAndReplace(MutableCopy, @"<date>", v81, v140, 0);
      Copy = CFStringCreateCopy(v21, v133);
      goto LABEL_109;
    }

    if (((1 << v24) & 0x8001) != 0)
    {
      *&v127[0] = 0;
      v61 = a2[1];
      v117[0] = v23;
      v117[1] = v61;
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v127[0] = QP::DateFormatter::copyTimeDisplayForDate(v20, v117);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      v62 = CFArrayGetValueAtIndex(v22, 1);
      *&cf[0] = 0;
      v63 = a2[1];
      v116[0] = *a2;
      v116[1] = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = QP::DateFormatter::copyDisplayForPeriodWithKey(v20, v116, v62, a4, a5, a6, a7);
      *&cf[0] = v64;
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }

      if (!*&v127[0])
      {
        goto LABEL_147;
      }

      v133 = 0;
      v65 = CFStringCreateMutableCopy(v21, 0, v64);
      v133 = v65;
      v66 = *&v127[0];
      v139.length = CFStringGetLength(v65);
      v139.location = 0;
      CFStringFindAndReplace(v65, @"<date>", v66, v139, 0);
      Copy = CFStringCreateCopy(v21, v133);
LABEL_109:
      nlp::CFScopedPtr<__CFString const*>::reset(&v134, Copy);
      nlp::CFScopedPtr<__CFString *>::reset(&v133, 0);
LABEL_147:
      nlp::CFScopedPtr<__CFString const*>::reset(cf, 0);
      nlp::CFScopedPtr<__CFString const*>::reset(v127, 0);
      goto LABEL_148;
    }

    if (((1 << v24) & 0x20004) == 0)
    {
      if (((1 << v24) & 0x1000200) != 0)
      {
        *&v127[0] = 0;
        v25 = a2[1];
        v115[0] = v23;
        v115[1] = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v127[0] = QP::DateFormatter::copyDateDisplayForDate(v20, v115);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        *&cf[0] = 0;
        v26 = a2[1];
        v114[0] = *a2;
        v114[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&cf[0] = QP::DateFormatter::copyTimeDisplayForDate(v20, v114);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        v27 = CFArrayGetValueAtIndex(v22, 1);
        v133 = 0;
        v28 = a2[1];
        v113[0] = *a2;
        v113[1] = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = QP::DateFormatter::copyDisplayForPeriodWithKey(v20, v113, v27, a4, a5, a6, a7);
        v133 = v29;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
        }

        if (!*&v127[0] || !v29)
        {
          if (!*&cf[0])
          {
LABEL_146:
            nlp::CFScopedPtr<__CFString const*>::reset(&v133, 0);
            goto LABEL_147;
          }

          theString = 0;
          v82 = CFStringCreateMutableCopy(v21, 0, v29);
          theString = v82;
          v83 = *&cf[0];
          v141.length = CFStringGetLength(v82);
          v141.location = 0;
          CFStringFindAndReplace(v82, @"<date>", v83, v141, 0);
          v84 = CFStringCreateCopy(v21, theString);
          p_format = &v134;
          goto LABEL_144;
        }

        theString = 0;
        v30 = CFStringCreateMutableCopy(v21, 0, v29);
        theString = v30;
        v31 = *&v127[0];
        v137.length = CFStringGetLength(v30);
        v137.location = 0;
        CFStringFindAndReplace(v30, @"<date>", v31, v137, 0);
        v32 = CFStringCreateCopy(v21, theString);
        nlp::CFScopedPtr<__CFString const*>::reset(&v134, v32);
        if (!*&cf[0])
        {
LABEL_145:
          nlp::CFScopedPtr<__CFString *>::reset(&theString, 0);
          goto LABEL_146;
        }

        TypeID = CFStringGetTypeID();
        if (CFStringHasPrefix(v27, @"VAL_1"))
        {
          format = 0;
          v34 = *v20;
          BundleWithIdentifier = *(*v20 + 25);
          if (BundleWithIdentifier)
          {
            BundleWithIdentifier = CFBundleGetBundleWithIdentifier(BundleWithIdentifier);
            v34 = *v20;
          }

          format = copyLocalizedString(BundleWithIdentifier, @"Dates", @"ORDINAL_WEEKDAY_AT_TIME_S", *(v34 + 18));
          if (!format || !v134 || CFGetTypeID(v134) != TypeID || CFGetTypeID(*&cf[0]) != TypeID)
          {
            goto LABEL_143;
          }
        }

        else
        {
          format = 0;
          v92 = *v20;
          v93 = *(*v20 + 25);
          if (v93)
          {
            v93 = CFBundleGetBundleWithIdentifier(v93);
            v92 = *v20;
          }

          format = copyLocalizedString(v93, @"Dates", @"ORDINAL_WEEKDAY_AT_TIME_P", *(v92 + 18));
          if (!format || !v134 || CFGetTypeID(v134) != TypeID || CFGetTypeID(*&cf[0]) != TypeID)
          {
            goto LABEL_143;
          }
        }

        v94 = CFStringCreateWithFormat(v21, 0, format, v134, *&cf[0]);
        nlp::CFScopedPtr<__CFString const*>::reset(&v134, v94);
LABEL_143:
        p_format = &format;
        v84 = 0;
LABEL_144:
        nlp::CFScopedPtr<__CFString const*>::reset(p_format, v84);
        goto LABEL_145;
      }

      goto LABEL_98;
    }

    v49 = a2[1];
    v120[0] = *a2;
    v120[1] = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = QP::DateFormatter::copyWeekdayDisplayForDate(v20, v120);
    *&v127[0] = v50;
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    v51 = a2[1];
    v119[0] = *a2;
    v119[1] = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v52 = QP::DateFormatter::copyTimeDisplayForDate(v20, v119);
    *&cf[0] = v52;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    v53 = CFArrayGetValueAtIndex(v22, 1);
    v54 = a2[1];
    v118[0] = *a2;
    v118[1] = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v55 = QP::DateFormatter::copyDisplayForPeriodWithKey(v20, v118, v53, a4, a5, a6, a7);
    v133 = v55;
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    v56 = CFStringCreateMutableCopy(v21, 0, v55);
    theString = v56;
    v138.length = CFStringGetLength(v56);
    v138.location = 0;
    CFStringFindAndReplace(v56, @"<date>", v50, v138, 0);
    v57 = CFStringCreateCopy(v21, v56);
    if (v134)
    {
      CFRelease(v134);
    }

    v134 = v57;
    if (!v52)
    {
LABEL_120:
      if (v56)
      {
        CFRelease(v56);
      }

      if (v55)
      {
        CFRelease(v55);
      }

      if (v52)
      {
        CFRelease(v52);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      goto LABEL_148;
    }

    v58 = CFStringGetTypeID();
    if (CFStringHasPrefix(v53, @"VAL_1"))
    {
      format = 0;
      v59 = *v20;
      v60 = *(*v20 + 25);
      if (v60)
      {
        v60 = CFBundleGetBundleWithIdentifier(v60);
        v59 = *v20;
      }

      format = copyLocalizedString(v60, @"Dates", @"ORDINAL_WEEKDAY_AT_TIME_S", *(v59 + 18));
      if (!format || !v134 || CFGetTypeID(v134) != v58 || CFGetTypeID(v52) != v58)
      {
        goto LABEL_119;
      }
    }

    else
    {
      format = 0;
      v86 = *v20;
      v87 = *(*v20 + 25);
      if (v87)
      {
        v87 = CFBundleGetBundleWithIdentifier(v87);
        v86 = *v20;
      }

      format = copyLocalizedString(v87, @"Dates", @"ORDINAL_WEEKDAY_AT_TIME_P", *(v86 + 18));
      if (!format || !v134 || CFGetTypeID(v134) != v58 || CFGetTypeID(v52) != v58)
      {
        goto LABEL_119;
      }
    }

    v88 = CFStringCreateWithFormat(v21, 0, format, v134, v52);
    nlp::CFScopedPtr<__CFString const*>::reset(&v134, v88);
LABEL_119:
    nlp::CFScopedPtr<__CFString const*>::reset(&format, 0);
    goto LABEL_120;
  }

  if (CFStringHasPrefix(a3, @"VAL"))
  {
    v36 = *MEMORY[0x1E695E480];
    v37 = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a3, @"-");
    v38 = v37;
    *&v129 = v37;
    if (v37)
    {
      *&v127[0] = 0;
      if (CFArrayGetCount(v37) == 2)
      {
        v39 = CFArrayGetValueAtIndex(v38, 1);
        v40 = CFRetain(v39);
        nlp::CFScopedPtr<__CFString const*>::reset(v127, v40);
        v41 = CFArrayGetValueAtIndex(v38, 0);
        v136.length = CFStringGetLength(v41) - 4;
        v136.location = 4;
        *&cf[0] = CFStringCreateWithSubstring(v36, v41, v136);
        IntValue = CFStringGetIntValue(*&cf[0]);
        v133 = 0;
        v43 = *a1;
        v44 = *(*a1 + 25);
        if (v44)
        {
          v44 = CFBundleGetBundleWithIdentifier(v44);
          v43 = *a1;
        }

        v45 = copyLocalizedString(v44, @"Dates", *&v127[0], *(v43 + 18));
        v133 = v45;
        if (v45 && IntValue)
        {
          v46 = CFStringCreateWithFormat(v36, 0, v45, IntValue);
          nlp::CFScopedPtr<__CFString const*>::reset(&v134, v46);
        }

        nlp::CFScopedPtr<__CFString const*>::reset(&v133, 0);
        nlp::CFScopedPtr<__CFString const*>::reset(cf, 0);
      }

      if (*&v127[0])
      {
        CFRelease(*&v127[0]);
      }

      CFRelease(v38);
    }

    goto LABEL_151;
  }

  if (!CFStringHasPrefix(a3, @"FORMATTED"))
  {
    if (CFStringHasSuffix(a3, @"ORDINAL_WEEKDAY"))
    {
      v68 = *(*a2 + 56);
      if ((v68 & 0x80000000) == 0)
      {
        *&v129 = 0;
        v69 = *MEMORY[0x1E695E480];
        *&v129 = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a3, @"_");
        v70 = CFArrayGetValueAtIndex(v129, 0);
        v71 = CFStringCreateWithFormat(v69, 0, @"%@_%d_ORDINAL_WEEKDAY", v70, v68);
        *&v127[0] = v71;
        v72 = *a1;
        v73 = *(*a1 + 25);
        if (v73)
        {
          v73 = CFBundleGetBundleWithIdentifier(v73);
          v71 = *&v127[0];
          v72 = *a1;
        }

        v74 = copyLocalizedString(v73, @"Dates", v71, *(v72 + 18));
        nlp::CFScopedPtr<__CFString const*>::reset(&v134, v74);
        nlp::CFScopedPtr<__CFString const*>::reset(v127, 0);
        nlp::CFScopedPtr<__CFArray const*>::reset(&v129, 0);
        goto LABEL_151;
      }

      v90 = *a1;
      v91 = *(*a1 + 25);
      if (v91)
      {
        v91 = CFBundleGetBundleWithIdentifier(v91);
        v90 = *a1;
      }
    }

    else
    {
      if (CFStringHasPrefix(a3, @"holiday"))
      {
        v47 = a2[1];
        v109[0] = *a2;
        v109[1] = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v89 = QP::DateFormatter::copyShortDisplayForDate(a1, v109, a6, a7);
        nlp::CFScopedPtr<__CFString const*>::reset(&v134, v89);
        if (v47)
        {
          goto LABEL_59;
        }

        goto LABEL_151;
      }

      v90 = *a1;
      v91 = *(*a1 + 25);
      if (v91)
      {
        v91 = CFBundleGetBundleWithIdentifier(v91);
        v90 = *a1;
      }
    }

    v106 = copyLocalizedString(v91, @"Dates", a3, *(v90 + 18));
    nlp::CFScopedPtr<__CFString const*>::reset(&v134, v106);
    goto LABEL_151;
  }

  v47 = a2[1];
  v110[0] = *a2;
  v110[1] = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = QP::DateFormatter::copyShortDisplayForDate(a1, v110, a6, a7);
  if (v134)
  {
    CFRelease(v134);
  }

  v134 = v48;
  if (v47)
  {
LABEL_59:
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

LABEL_151:
  *&v129 = 0;
  if (a5)
  {
    goto LABEL_172;
  }

  if (a4 > 6)
  {
    if (a4 == 7)
    {
      v102 = *a1;
      v103 = *(*a1 + 25);
      if (v103)
      {
        v103 = CFBundleGetBundleWithIdentifier(v103);
        v102 = *a1;
      }

      v97 = copyLocalizedString(v103, @"Dates", @"SINCE_DATE", *(v102 + 18));
    }

    else
    {
      if (a4 != 8)
      {
        goto LABEL_172;
      }

      v98 = *a1;
      v99 = *(*a1 + 25);
      if (v99)
      {
        v99 = CFBundleGetBundleWithIdentifier(v99);
        v98 = *a1;
      }

      v97 = copyLocalizedString(v99, @"Dates", @"TO_DATE", *(v98 + 18));
    }
  }

  else if (a4 == 5)
  {
    v100 = *a1;
    v101 = *(*a1 + 25);
    if (v101)
    {
      v101 = CFBundleGetBundleWithIdentifier(v101);
      v100 = *a1;
    }

    v97 = copyLocalizedString(v101, @"Dates", @"BEFORE_DATE", *(v100 + 18));
  }

  else
  {
    if (a4 != 6)
    {
      goto LABEL_172;
    }

    v95 = *a1;
    v96 = *(*a1 + 25);
    if (v96)
    {
      v96 = CFBundleGetBundleWithIdentifier(v96);
      v95 = *a1;
    }

    v97 = copyLocalizedString(v96, @"Dates", @"AFTER_DATE", *(v95 + 18));
  }

  v104 = v97;
  *&v129 = v97;
  if (v97)
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v97, v134);
    if (v135)
    {
      CFRelease(v135);
    }

    goto LABEL_176;
  }

LABEL_172:
  if (v134)
  {
    v19 = CFStringCreateCopy(*MEMORY[0x1E695E480], v134);
    if (v135)
    {
      CFRelease(v135);
    }

    v104 = 0;
LABEL_176:
    v135 = v19;
    if (!v19)
    {
      goto LABEL_180;
    }

    goto LABEL_179;
  }

  v104 = 0;
  v19 = v135;
  if (v135)
  {
LABEL_179:
    v19 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v19);
    v142.length = CFStringGetLength(v19);
    v142.location = 0;
    CFStringFindAndReplace(v19, @" ", @" ", v142, 0);
  }

LABEL_180:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  if (v135)
  {
    CFRelease(v135);
  }

  return v19;
}