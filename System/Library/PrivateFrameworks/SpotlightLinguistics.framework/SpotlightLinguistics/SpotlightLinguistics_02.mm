uint64_t __SILexiconCacheEnumerateAnyAnnotationsInString_block_invoke(uint64_t a1)
{
  MetaFlags = LXEntryGetMetaFlags();
  result = LXEntryGetCategoryFlags();
  if ((MetaFlags & 0x3800000) != 0 || (result & 0x1F500) != 0 || (result & 0x40000) != 0 || *(a1 + 64) && ((MetaFlags & 0x20000000) != 0 || (MetaFlags & 0x200061) == 0))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    result = (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

CFIndex SILexiconCacheEnumerateAnnotationsInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString)
{
  result = 0;
  v16[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (theString)
    {
      result = CFStringGetLength(theString);
      v16[0] = result;
      if (result)
      {
        LanguageID = SILanguagesGetLanguageID(a2);
        v8 = atomic_load(&sLexiconsLoaded[LanguageID]);
        if ((v8 & 1) != 0 && sLexicons[LanguageID])
        {
          v9 = v16[0];
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v16[0], 0x8000100u);
          v11 = MEMORY[0x28223BE20]();
          v13 = v16 - v12;
          bzero(v16 - v12, v11 + 1);
          v17.location = 0;
          v17.length = v9;
          CFStringGetBytes(theString, v17, 0x8000100u, 0x2Du, 0, v13, MaximumSizeForEncoding, v16);
          v14 = v16[0];
          v13[v16[0]] = 0;
          result = SILexiconCacheEnumerateAnnotations(a1, a2, v13, v14);
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SILexiconCacheEnumerateAnnotations(uint64_t a1, const __CFLocale *a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a4)
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    v6 = atomic_load(&sLexiconsLoaded[LanguageID]);
    if ((v6 & 1) != 0 && sLexicons[LanguageID])
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2000000000;
      v13 = 0;
      RootCursor = LXLexiconCreateRootCursor();
      if (RootCursor)
      {
        v8 = LXCursorCreateByAdvancingWithUTF8();
        if (v8)
        {
          LXCursorEnumerateEntries();
          CFRelease(v8);
        }

        CFRelease(RootCursor);
      }

      v4 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void sub_26B7C6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SILexiconCacheEnumerateAnnotations_block_invoke(uint64_t a1)
{
  MetaFlags = LXEntryGetMetaFlags();
  result = LXEntryGetCategoryFlags();
  if ((MetaFlags & 0x3800000) != 0 || (result & 0x1F500) != 0 || (result & 0x40000) != 0 || (MetaFlags & 0x20000000) != 0 || (MetaFlags & 0x200061) == 0)
  {
    result = (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t SILexiconCacheGetTokenIDInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v6 = 0;
  if (!a1 || !a2 || !Length)
  {
    return v6;
  }

  LanguageID = SILanguagesGetLanguageID(a2);
  if ((LanguageID - 59) < 0xFFFFFFC7)
  {
    return 0;
  }

  v8 = LanguageID;
  v9 = atomic_load(&sLexiconsLoaded[LanguageID]);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(&sLexiconLock);
  if (sDynamicLexicons[v8])
  {
    v6 = LXLexiconAdd();
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&sLexiconLock);
  return v6;
}

uint64_t SILexiconCacheGetTokenType(uint64_t a1, const __CFLocale *a2, const char *a3, uint64_t a4)
{
  result = 0;
  if (a3 && a1 && a2 && a4)
  {
    LODWORD(result) = SILocalizationGetTokenType(*(a1 + 8), a2, a3, a4, 0);
    if (result == 5)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t SILexiconCacheGetTokenTypeInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  result = 0;
  if (a1 && a2 && Length)
  {
    if (SILanguagesGetLanguageID(a2) - 59 >= 0xFFFFFFC7)
    {
      LODWORD(result) = SILocalizationGetTokenTypeInString(*(a1 + 8), a2, theString, 0);
      if (result == 5)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SILexiconCacheGetTokenID(uint64_t a1, const __CFLocale *a2, const char *a3, uint64_t a4)
{
  result = 0;
  if (a3 && a1 && a2 && a4)
  {
    if (SILanguagesGetLanguageID(a2) - 59 >= 0xFFFFFFC7)
    {
      LODWORD(result) = SILocalizationGetTokenType(*(a1 + 8), a2, a3, a4, 0);
      if (result == 5)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_log_t ___ZL6loggerv_block_invoke()
{
  v0 = _nlpLoggingSubsystem();
  result = os_log_create(v0, "SpotlightLexiconCache");
  logger(void)::log = result;
  return result;
}

dispatch_queue_t ___ZL15getLexiconQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.SI.Lexicon", 0);
  getLexiconQueue(void)::gLexQueue = result;
  return result;
}

dispatch_queue_t ___ZL15getRefreshQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.SI.Lexicon.refresh", 0);
  getRefreshQueue(void)::gRefQueue = result;
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

const __CFDictionary *SIGeoIndexCreateMutableWithOptions(const __CFURL *a1, const __CFDictionary *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (CFURLResourceIsReachable(a1, 0))
    {
      v4 = *MEMORY[0x277CBF168];
      v23[0] = *MEMORY[0x277CBF168];
      v5 = *MEMORY[0x277CBECE8];
      v6 = CFArrayCreate(*MEMORY[0x277CBECE8], v23, 1, MEMORY[0x277CBF128]);
      if (v6)
      {
        v7 = v6;
        v8 = CFURLCopyResourcePropertiesForKeys(a1, v6, 0);
        v9 = v8;
        if (!v8)
        {
          CFRelease(v7);
          goto LABEL_11;
        }

        Value = CFDictionaryGetValue(v8, v4);
        v11 = *MEMORY[0x277CBED28];
        CFRelease(v9);
        CFRelease(v7);
        if (Value == v11)
        {
          v12 = a2 ? CFDictionaryCreateMutableCopy(v5, 0, a2) : CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v15 = v12;
          CFDictionarySetValue(v12, kSIDataMapOptionEnablePayloads, v11);
          MutableWithOptions = SIDataMapCreateMutableWithOptions(a1, @"geobase", v15);
          CFRelease(v15);
          if (MutableWithOptions)
          {
            if (a2)
            {
              MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, a2);
            }

            else
            {
              MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            }

            v18 = MutableCopy;
            v19 = SIDataMapCreateMutableWithOptions(a1, @"expbase", MutableCopy);
            CFRelease(v18);
            if (v19)
            {
              v20 = SIGeneralTrieCreateMutableWithOptions(128, 1);
              if (v20)
              {
                v21 = SIGeneralTrieCreateMutableWithOptions(128, 2);
                if (v21)
                {
                  v22 = malloc_type_malloc(0x50uLL, 0x1060040527F56E5uLL);
                  if (v22)
                  {
                    v9 = v22;
                    *(v22 + 1) = CFRetain(a1);
                    *(v9 + 2) = 0;
                    *(v9 + 3) = MutableWithOptions;
                    *(v9 + 4) = 0;
                    *(v9 + 5) = v19;
                    *(v9 + 6) = 0;
                    *(v9 + 7) = v20;
                    *(v9 + 8) = 0;
                    *(v9 + 9) = v21;
                    atomic_fetch_add(v9, 1u);
                    goto LABEL_11;
                  }
                }
              }

              else
              {
                v21 = 0;
              }

              SIDataMapRelease(MutableWithOptions);
              SIDataMapRelease(v19);
              if (v20)
              {
                SIGeneralTrieRelease(v20);
              }

              if (v21)
              {
                SIGeneralTrieRelease(v21);
              }
            }

            else
            {
              SIDataMapRelease(MutableWithOptions);
            }
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      SIGeoIndexCreateMutableWithOptions_cold_1();
    }
  }

  v9 = 0;
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

atomic_uint *SIGeoIndexRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

const __CFDictionary *SIGeoIndexCreateWithOptions(const __CFURL *a1, const __CFDictionary *a2)
{
  values[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!CFURLResourceIsReachable(a1, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      SIGeoIndexCreateMutableWithOptions_cold_1();
    }

    goto LABEL_14;
  }

  v4 = *MEMORY[0x277CBF168];
  values[0] = *MEMORY[0x277CBF168];
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 1, MEMORY[0x277CBF128]);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = CFURLCopyResourcePropertiesForKeys(a1, v6, 0);
  v9 = v8;
  if (!v8)
  {
    CFRelease(v7);
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v8, v4);
  v11 = *MEMORY[0x277CBED28];
  CFRelease(v9);
  CFRelease(v7);
  if (Value != v11)
  {
    goto LABEL_14;
  }

  v12 = CFStringCreateWithFormat(v5, 0, @"%@/%@.plist", a1, @"config");
  if (v12)
  {
    v13 = v12;
    v14 = CFURLCreateWithString(v5, v12, 0);
    if (v14)
    {
      v15 = v14;
      values[0] = 0;
      DictionaryWithContentsOfURL = createDictionaryWithContentsOfURL(v14, values);
      if (DictionaryWithContentsOfURL)
      {
        v17 = DictionaryWithContentsOfURL;
        v18 = CFDictionaryGetValue(DictionaryWithContentsOfURL, @"_SIGeoIndexVersion");
        if (v18)
        {
          valuePtr = 0;
          CFNumberGetValue(v18, kCFNumberCFIndexType, &valuePtr);
          v19 = valuePtr;
          CFRelease(v17);
          CFRelease(v15);
          CFRelease(v13);
          if (v19 != 5)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }

        CFRelease(v17);
      }

      CFRelease(v15);
    }

    CFRelease(v13);
  }

LABEL_20:
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v23 = MutableCopy;
  CFDictionarySetValue(MutableCopy, kSIDataMapOptionEnablePayloads, v11);
  v24 = SIDataMapCreateWithOptions(a1, @"geobase", v23);
  CFRelease(v23);
  if (v24)
  {
    if (a2)
    {
      Mutable = CFDictionaryCreateMutableCopy(v5, 0, a2);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v26 = Mutable;
    v27 = SIDataMapCreateWithOptions(a1, @"expbase", Mutable);
    CFRelease(v26);
    if (v27)
    {
      v28 = CFStringCreateWithFormat(v5, 0, @"%@/%@", a1, @"geostringbase");
      if (v28)
      {
        v29 = v28;
        v30 = CFURLCreateWithString(v5, v28, 0);
        if (v30)
        {
          v31 = v30;
          v32 = SIGeneralTrieCreateFromFileURL(v30);
          CFRelease(v31);
          CFRelease(v29);
          if (v32)
          {
            v33 = CFStringCreateWithFormat(v5, 0, @"%@/%@", a1, @"expstringbase");
            if (v33)
            {
              v34 = v33;
              v35 = CFURLCreateWithString(v5, v33, 0);
              if (v35)
              {
                v36 = v35;
                v37 = SIGeneralTrieCreateFromFileURL(v35);
                CFRelease(v36);
              }

              else
              {
                v37 = 0;
              }

              CFRelease(v34);
            }

            else
            {
              v37 = 0;
            }

            v38 = malloc_type_malloc(0x50uLL, 0x1060040527F56E5uLL);
            if (v38)
            {
              v9 = v38;
              *(v38 + 1) = CFRetain(a1);
              *(v9 + 2) = v24;
              *(v9 + 7) = 0;
              *(v9 + 8) = v37;
              *(v9 + 9) = 0;
              *(v9 + 3) = 0;
              *(v9 + 4) = v27;
              *(v9 + 5) = 0;
              *(v9 + 6) = v32;
              atomic_fetch_add(v9, 1u);
              goto LABEL_15;
            }

            goto LABEL_38;
          }

LABEL_37:
          v37 = 0;
LABEL_38:
          SIDataMapRelease(v24);
          SIDataMapRelease(v27);
          if (v32)
          {
            SIGeneralTrieRelease(v32);
          }

          if (v37)
          {
            SIGeneralTrieRelease(v37);
          }

          goto LABEL_14;
        }

        CFRelease(v29);
      }

      v32 = 0;
      goto LABEL_37;
    }

    SIDataMapRelease(v24);
  }

LABEL_14:
  v9 = 0;
LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

CFStringRef SIGeoIndexAddEntry(CFStringRef result, int a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = result;
    if (result->length)
    {
      result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%f:%f:%f:%f:%f:%f:%d:", *a4, a4[1], a4[2], a4[3], a4[4], a4[5], a3);
      if (result)
      {
        v6 = result;
        v7 = 0;
        if (!SIDataMapAddStringKeyWithPayload(v4->length, result, a2, &v7))
        {
          v7 = 0;
        }

        CFRelease(v6);
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SIGeoIndexAddStringKeyForID(void *a1, const __CFLocale *a2, const __CFSet *a3, const __CFSet *a4, uint64_t a5, double a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || !a1[3] || !a1[7] || !a1[5])
  {
    goto LABEL_9;
  }

  v7 = 0;
  if (a2 && a3 && a1[9])
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    if (LanguageID < 2)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }

    v15 = LanguageID;
    v35 = 0;
    v16 = MEMORY[0x277CBECE8];
    if (a4)
    {
      Count = CFSetGetCount(a4);
      if (Count)
      {
        v18 = Count;
        MEMORY[0x28223BE20]();
        v20 = (v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v20, v19);
        CFSetGetValues(a4, v20);
        v21 = *v16;
        Mutable = CFStringCreateMutable(*v16, 0);
        if (v18 >= 1)
        {
          do
          {
            v23 = *v20++;
            CFStringAppend(Mutable, v23);
            CFStringAppend(Mutable, @"::");
            --v18;
          }

          while (v18);
        }

        if (SIDataMapAddStringKey(a1[5], Mutable, &v35))
        {
          v24 = CFStringCreateWithFormat(v21, 0, @"%d:%d", a5, v15);
          if (v24)
          {
            v25 = v24;
            if (!SIGeneralTrieContainsStringKey(a1[9], v24, 0, 0))
            {
              SIGeneralTrieAddStringKey(a1[9], v25, v35);
            }

            CFRelease(v25);
          }
        }

        CFRelease(Mutable);
        v16 = MEMORY[0x277CBECE8];
      }
    }

    v26 = CFSetGetCount(a3);
    v34[1] = v34;
    MEMORY[0x28223BE20]();
    v28 = (v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v28, v27);
    CFSetGetValues(a3, v28);
    if (v26 < 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v29 = *v16;
      do
      {
        v30 = *v28;
        v31 = CFGetTypeID(*v28);
        if (v31 == CFStringGetTypeID())
        {
          v32 = CFStringCreateWithFormat(v29, 0, @"%@::%d:%d", v30, v15, a5);
          if (v32)
          {
            v33 = v32;
            if (!SIGeneralTrieContainsStringKey(a1[7], v32, 0, 0))
            {
              SIGeneralTrieAddStringKeyWithScore(a1[7], v33, 2, 0, 0, a6);
              CFRelease(v33);
              v7 = 1;
            }
          }
        }

        ++v28;
        --v26;
      }

      while (v26);
    }
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t SIGeoIndexContainsStringKey(uint64_t a1, const __CFString *a2)
{
  result = 0;
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 48);
    if (v5 || (v5 = *(a1 + 56)) != 0)
    {
      bzero(buffer, 0x400uLL);
      v12.length = CFStringGetLength(a2);
      usedBufLen = 0;
      v12.location = 0;
      CFStringGetBytes(a2, v12, 0x8000100u, 0x2Du, 0, buffer, 1024, &usedBufLen);
      result = SIGeneralTrieCreateCursorWithBytes(v5, buffer, usedBufLen);
      if (result)
      {
        v6 = result;
        SIGeneralTrieTraverseFromCursor(result, -1, &v9, nameSearchCallback);
        SIGeneralTrieCursorDispose(v6);
        result = v9;
      }
    }

    else
    {
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *nameSearchCallback(_BYTE *result, const unsigned __int8 *a2, unsigned int a3, unsigned int a4, double a5, BOOL *a6)
{
  if (*a2 == 58)
  {
    *result = 1;
    *a6 = 1;
  }

  return result;
}

unint64_t SIGeoIndexContainsStringKeyForLocale(uint64_t a1, const __CFLocale *a2, const __CFString *a3)
{
  result = 0;
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (a1 && a2 && a3)
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    v7 = *(a1 + 48);
    if (v7 || (v7 = *(a1 + 56)) != 0)
    {
      bzero(buffer, 0x400uLL);
      v15.length = CFStringGetLength(a3);
      usedBufLen = 0;
      v15.location = 0;
      CFStringGetBytes(a3, v15, 0x8000100u, 0x2Du, 0, buffer, 1024, &usedBufLen);
      v8 = snprintf(0, 0, "::%d", LanguageID);
      snprintf(&buffer[usedBufLen], v8 + 1, "::%d", LanguageID);
      usedBufLen += v8;
      result = SIGeneralTrieCreateCursorWithBytes(v7, buffer, usedBufLen);
      if (result)
      {
        v9 = result;
        SIGeneralTrieTraverseFromCursor(result, -1, &v12, nameSearchCallback);
        SIGeneralTrieCursorDispose(v9);
        result = v12;
      }
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIGeoIndexEnumerateGeoIDForString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, uint64_t a4)
{
  result = 0;
  if (a1)
  {
    if (theString)
    {
      result = CFStringGetLength(theString);
      if (result)
      {
        LanguageID = SILanguagesGetLanguageID(a2);
        if (LanguageID < 2)
        {
          return 0;
        }

        else
        {
          v10 = *(a1 + 48);
          if (!v10)
          {
            v10 = *(a1 + 56);
          }

          result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@::%d:", theString, LanguageID);
          if (result)
          {
            v11 = result;
            v12[0] = CFStringGetLength(result);
            v12[1] = a4;
            SIGeneralTrieSearchString(v10, v11, -1, v12, geoIDLookupCallback);
            CFRelease(v11);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t geoIDLookupCallback(void *a1, uint64_t a2)
{
  result = SITrieCompletionGetPayload(a2);
  if (result == 2)
  {
    result = SITrieCompletionGetLength(a2);
    if (*a1 < result)
    {
      Completion = SITrieCompletionGetCompletion(a2);
      atoi((Completion + *a1));
      v6.n128_f64[0] = SITrieCompletionGetScore(a2);
      v7 = *(a1[1] + 16);

      return v7(v6);
    }
  }

  return result;
}

uint64_t SIGeoIndexEnumerateGeoEntriesForString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, uint64_t a4)
{
  v4 = 0;
  if (a1 && theString)
  {
    if (!CFStringGetLength(theString))
    {
      return 0;
    }

    LanguageID = SILanguagesGetLanguageID(a2);
    if (LanguageID < 2)
    {
      return 0;
    }

    v10 = *(a1 + 48);
    if (!v10)
    {
      v10 = *(a1 + 56);
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@::%d:", theString, LanguageID);
    if (!v11 || v10 == 0)
    {
      return 0;
    }

    else
    {
      v14 = v11;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      v20 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __SIGeoIndexEnumerateGeoEntriesForString_block_invoke;
      v16[3] = &unk_279D03080;
      v16[5] = &v17;
      v16[6] = a1;
      v16[4] = a4;
      v15[0] = CFStringGetLength(v11);
      v15[1] = v16;
      SIGeneralTrieSearchString(v10, v14, -1, v15, geoIDLookupCallback);
      v4 = *(v18 + 24);
      CFRelease(v14);
      _Block_object_dispose(&v17, 8);
    }
  }

  return v4;
}

uint64_t __SIGeoIndexEnumerateGeoEntriesForString_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  memset(v8, 0, sizeof(v8));
  result = SIGeoIndexLookupEntry(*(a1 + 48), a2, v8);
  if (result)
  {
    result = *(a1 + 32);
    if (result)
    {
      result = (*(result + 16))(result, v8, a3, a4);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t SIGeoIndexLookupEntry(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    bzero(v19, 0x400uLL);
    v18 = 0;
    if (a1[6])
    {
      v7 = 1;
    }

    else
    {
      v7 = a1[7] != 0;
    }

    v8 = a1[2];
    if (!v8)
    {
      v8 = a1[3];
    }

    if (!v8)
    {
      v7 = 0;
    }

    if (v7)
    {
      KeyWithPayload = SIDataMapGetKeyWithPayload(v8, a2, v19, 1024, &v18 + 1, &v18);
      v3 = KeyWithPayload;
      if (a3)
      {
        if (KeyWithPayload)
        {
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *(a3 + 48) = 0u;
          v10 = v18;
          *a3 = a2;
          *(a3 + 4) = v10;
          v11 = HIDWORD(v18);
          if (HIDWORD(v18))
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            do
            {
              if (v19[v12] == 58 && v13 <= 6)
              {
                if (v13 <= 2)
                {
                  if (v13)
                  {
                    if (v13 == 1)
                    {
                      *(a3 + 24) = atof(&v19[v14]);
                      v14 = v12 + 1;
                      v13 = 2;
                    }

                    else
                    {
                      *(a3 + 32) = atof(&v19[v14]);
                      v14 = v12 + 1;
                      v13 = 3;
                    }
                  }

                  else
                  {
                    *(a3 + 16) = atof(&v19[v14]);
                    v14 = v12 + 1;
                    v13 = 1;
                  }
                }

                else if (v13 > 4)
                {
                  if (v13 == 5)
                  {
                    *(a3 + 56) = atof(&v19[v14]);
                    v14 = v12 + 1;
                    v13 = 6;
                  }

                  else if (v13 == 6)
                  {
                    *(a3 + 8) = atoi(&v19[v14]);
                    v14 = v12;
                    v13 = 7;
                  }
                }

                else if (v13 == 3)
                {
                  *(a3 + 40) = atof(&v19[v14]);
                  v14 = v12 + 1;
                  v13 = 4;
                }

                else
                {
                  *(a3 + 48) = atof(&v19[v14]);
                  v14 = v12 + 1;
                  v13 = 5;
                }
              }

              ++v12;
            }

            while (v11 != v12);
          }
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t SIGeoIndexEnumerateGeoExpansionsForID(void *a1, const __CFLocale *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a3)
    {
      LanguageID = SILanguagesGetLanguageID(a2);
      if (LanguageID >= 2)
      {
        v8 = a1[8];
        if (!v8)
        {
          v8 = a1[9];
        }

        v9 = a1[4];
        if (!v9)
        {
          v9 = a1[5];
        }

        if (a4)
        {
          if (v8)
          {
            if (v9)
            {
              v10 = *MEMORY[0x277CBECE8];
              v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d:%d", a3, LanguageID);
              if (v11)
              {
                v12 = v11;
                v27 = 0;
                v26 = 0;
                if (SIGeneralTrieContainsStringKey(v8, v11, &v26, 0))
                {
                  bzero(v28, 0x400uLL);
                  v25 = 0;
                  if (SIDataMapGetKey(v9, v26, v28, 1024, &v25))
                  {
                    v13 = CFStringCreateWithCString(v10, v28, 0x8000100u);
                    if (v13)
                    {
                      v14 = v13;
                      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v10, v13, @"::");
                      if (ArrayBySeparatingStrings)
                      {
                        v16 = ArrayBySeparatingStrings;
                        Count = CFArrayGetCount(ArrayBySeparatingStrings);
                        v24[1] = v24;
                        MEMORY[0x28223BE20]();
                        v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
                        bzero(v19, v18);
                        v30.location = 0;
                        v30.length = Count;
                        CFArrayGetValues(v16, v30, v19);
                        if (Count >= 1)
                        {
                          for (i = 0; i < Count; ++i)
                          {
                            v21 = *&v19[8 * i];
                            if (CFStringGetLength(v21))
                            {
                              (*(a4 + 16))(a4, v21, &v27);
                              if (v27)
                              {
                                break;
                              }
                            }
                          }
                        }

                        CFRelease(v16);
                      }

                      CFRelease(v14);
                    }
                  }
                }

                CFRelease(v12);
              }
            }
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t SIGeoIndexGetCount(uint64_t a1)
{
  if (a1 && ((v2 = *(a1 + 16)) != 0 || (v2 = *(a1 + 24)) != 0))
  {
    return SIDataMapGetCount(v2);
  }

  else
  {
    return 0;
  }
}

void SIGeoIndexWrite(uint64_t a1, const __CFDictionary *a2)
{
  if (a1 && *(a1 + 24) && *(a1 + 56) && *(a1 + 40) && *(a1 + 72))
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SIDataMapWrite(*(a1 + 40), 0);
    SIDataMapRelease(*(a1 + 40));
    *(a1 + 40) = 0;
    *(a1 + 32) = SIDataMapCreateWithOptions(*(a1 + 8), @"expbase", Mutable);
    CFDictionarySetValue(Mutable, kSIDataMapOptionEnablePayloads, *MEMORY[0x277CBED28]);
    SIDataMapWrite(*(a1 + 24), 0);
    SIDataMapRelease(*(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 16) = SIDataMapCreateWithOptions(*(a1 + 8), @"geobase", Mutable);
    CFRelease(Mutable);
    v6 = CFStringCreateWithFormat(v4, 0, @"%@/%@", *(a1 + 8), @"geostringbase");
    if (v6)
    {
      v7 = v6;
      v8 = CFURLCreateWithString(v4, v6, 0);
      if (v8)
      {
        v9 = v8;
        SIGeneralTrieWriteToFileURL(*(a1 + 56), v8);
        SIGeneralTrieRelease(*(a1 + 56));
        *(a1 + 56) = 0;
        *(a1 + 48) = SIGeneralTrieCreateFromFileURL(v9);
        CFRelease(v9);
      }

      CFRelease(v7);
    }

    v10 = CFStringCreateWithFormat(v4, 0, @"%@/%@", *(a1 + 8), @"expstringbase");
    if (v10)
    {
      v11 = v10;
      v12 = CFURLCreateWithString(v4, v10, 0);
      if (v12)
      {
        v13 = v12;
        SIGeneralTrieWriteToFileURL(*(a1 + 72), v12);
        SIGeneralTrieRelease(*(a1 + 72));
        *(a1 + 72) = 0;
        *(a1 + 64) = SIGeneralTrieCreateFromFileURL(v13);
        CFRelease(v13);
      }

      CFRelease(v11);
    }

    if (a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, a2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v15 = MutableCopy;
    if (MutableCopy)
    {
      valuePtr = 5;
      v16 = CFNumberCreate(v4, kCFNumberCFIndexType, &valuePtr);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v15, @"_SIGeoIndexVersion", v16);
        CFRelease(v17);
      }

      v18 = CFStringCreateWithFormat(v4, 0, @"%@/%@.plist", *(a1 + 8), @"config");
      if (v18)
      {
        v19 = v18;
        v20 = CFURLCreateWithString(v4, v18, 0);
        if (v20)
        {
          v21 = v20;
          cf = 0;
          writeContentsOfDictionaryToURL(v15, v20, kCFPropertyListXMLFormat_v1_0, &cf);
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v21);
        }

        CFRelease(v19);
      }

      CFRelease(v15);
    }
  }
}

void SIGeoIndexRelease(void *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      SIGeoIndexRelease_cold_1();
    }

    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      SIDataMapRelease(v3);
    }

    v4 = a1[3];
    if (v4)
    {
      SIDataMapRelease(v4);
    }

    v5 = a1[6];
    if (v5)
    {
      SIGeneralTrieRelease(v5);
    }

    v6 = a1[7];
    if (v6)
    {
      SIGeneralTrieRelease(v6);
    }

    v7 = a1[4];
    if (v7)
    {
      SIDataMapRelease(v7);
    }

    v8 = a1[5];
    if (v8)
    {
      SIDataMapRelease(v8);
    }

    v9 = a1[8];
    if (v9)
    {
      SIGeneralTrieRelease(v9);
    }

    v10 = a1[9];
    if (v10)
    {
      SIGeneralTrieRelease(v10);
    }

    free(a1);
  }
}

void *fd_create_protected(int a1, const char *a2, int a3, unsigned __int8 a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (fd_create_protected_once != -1)
  {
    fd_create_protected_cold_1();
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  v8[1] = 0;
  *(v8 + 1) = 0u;
  v8[4] = 1;
  *(v8 + 10) = -1;
  *(v8 + 11) = a1;
  v9 = (a3 & 3) != 0;
  *(v8 + 12) = a3 | (v9 << 29);
  v10 = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  v11 = v10 & 0xFFF0 | (4 * v9);
  *(v8 + 28) = v11;
  v12 = strdup(a2);
  *(v8 + 52) = 0;
  *(v8 + 17) = 0;
  v8[9] = v12;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  *(v8 + 28) = v11 & 0xF00F | (16 * a4);
  v22 = 0;
  v13 = _fd_acquire_fd(v8, &v22);
  if (v13 == -1)
  {
    v14 = *__error();
    bzero(v34, 0x400uLL);
    v15 = faccurate_realpath(a1, v34);
    if ((a3 & 0x200) != 0)
    {
      v16 = 17;
    }

    else
    {
      v16 = 2;
    }

    if (v14 == v16)
    {
      if (gSILogLevels[0] < 5)
      {
LABEL_15:
        fd_release(v8);
        v8 = 0;
        *__error() = v14;
        goto LABEL_16;
      }

      v17 = *__error();
      v18 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v24 = v15;
        v25 = 2080;
        *v26 = a2;
        *&v26[8] = 1024;
        *&v26[10] = a3;
        v27 = 1024;
        *v28 = a1;
        *&v28[4] = 1024;
        *&v28[6] = v14;
        _os_log_impl(&dword_26B7AA000, v18, OS_LOG_TYPE_DEFAULT, "fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x28u);
      }
    }

    else
    {
      v17 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v24 = "fd_create_protected";
        v25 = 1024;
        *v26 = 207;
        *&v26[4] = 2080;
        *&v26[6] = v15;
        v27 = 2080;
        *v28 = a2;
        *&v28[8] = 1024;
        v29 = a3;
        v30 = 1024;
        v31 = a1;
        v32 = 1024;
        v33 = v14;
        _os_log_error_impl(&dword_26B7AA000, v19, OS_LOG_TYPE_ERROR, "%s:%d: fd_open failed, path:%s, name:%s, flags:0x%x, parent_fd:%d, errno:%d", buf, 0x38u);
      }
    }

    *__error() = v17;
    goto LABEL_15;
  }

  *(v8 + 12) &= 0xFFFFF9FF;
  _fd_release_fd(v8, v13, 0, v22);
LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

int *__fd_create_protected_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v8.rlim_cur = 0;
  v8.rlim_max = 0;
  if (getrlimit(8, &v8))
  {
    rlim_cur = 1024;
  }

  else
  {
    rlim_cur = v8.rlim_cur;
  }

  gOpenLimit = rlim_cur;
  v1 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
  g_fd_list = v1;
  v2 = rlim_cur / 4;
  if (rlim_cur >= 512)
  {
    v2 = 128;
  }

  v1[2] = v2;
  v3 = *__error();
  v4 = _SILogForLogForCategory(0);
  v5 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 67109120;
    v10 = gOpenLimit;
    _os_log_impl(&dword_26B7AA000, v4, v5, "fd limit %d", buf, 8u);
  }

  result = __error();
  *result = v3;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void fd_release(atomic_uint *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1 + 8, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1 != -50529037)
    {
      fd_release_cold_1();
    }

    v3 = 0;
    pthread_mutex_lock(&g_fd_lock);
    v2 = _fd_remove_locked(a1, &v3);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      guarded_close_np();
    }

    *a1 = 0;
    free(*(a1 + 9));
    if (*(a1 + 10))
    {
      fd_release();
    }

    free(a1);
  }
}

void *fd_create_read_only(int a1, const char *a2)
{
  if (a1 == -1)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v4 = -50529037;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0x100000001;
  *(v4 + 10) = a1;
  *(v4 + 44) = 0xFFFFFFFFLL;
  v5 = *(v4 + 28);
  *(v4 + 30) &= 0xFC00u;
  *(v4 + 28) = v5 & 0xFFF0;
  v6 = strdup(a2);
  *(v4 + 52) = 0;
  v4[9] = v6;
  v4[10] = 0;
  *(v4 + 17) = 1;
  v4[11] = 0;
  v4[12] = 0;
  return v4;
}

atomic_uint *fd_dup(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pthread_mutex_lock(&g_fd_lock);
    v4 = *(a1 + 80);
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 8, 1u, memory_order_relaxed);
    }

    else
    {
      pthread_mutex_unlock(&g_fd_lock);
      bzero(v13, 0x400uLL);
      v5 = fd_name(a1, v13, 0x400uLL);
      if (!v5 || (v6 = *(a1 + 44), v6 == -1))
      {
        v4 = 0;
      }

      else
      {
        v7 = *(a1 + 48);
        if (a2)
        {
          v4 = fd_create_protected(*(a1 + 44), v13, *(a1 + 48), *(a1 + 56) >> 4);
        }

        else
        {
          v8 = v5;
          v4 = malloc_type_calloc(1uLL, 0x68uLL, 0x10300409CE040BCuLL);
          *v4 = -50529037;
          v4[8] = 1;
          v9 = v4[14] & 0xFFFB | (4 * ((*(a1 + 56) >> 2) & 1));
          *(v4 + 28) = v9;
          v4[11] = v6;
          v4[12] = v7;
          *(v4 + 9) = strdup(v8);
          *(v4 + 28) = *(a1 + 56) & 0xFF0 | v9 & 0xF00F;
          v4[10] = -1;
        }
      }

      pthread_mutex_lock(&g_fd_lock);
      v10 = *(a1 + 80);
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 8, 1u, memory_order_relaxed);
        pthread_mutex_unlock(&g_fd_lock);
        fd_release(v4);
        v4 = v10;
        goto LABEL_14;
      }

      if (v4)
      {
        atomic_fetch_add_explicit(v4 + 8, 1u, memory_order_relaxed);
      }

      *(a1 + 80) = v4;
    }

    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t fd_retain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add_explicit((result + 32), 1u, memory_order_relaxed);
  }

  return result;
}

char *fd_name(uint64_t a1, char *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -50529037)
  {
    fd_name_cold_1();
  }

  os_unfair_lock_lock(&g_name_lock);
  if (strlcpy(a2, *(a1 + 72), a3) > a3)
  {
    a2 = 0;
  }

  os_unfair_lock_unlock(&g_name_lock);
  return a2;
}

uint64_t fd_parent_fd(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 44);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t fd_flags(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t close_inactive_fds_if_necessary(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = _fd_close_inactive(*(a2 + 44), 0, 1, 1);
    if (!result)
    {
      result = _fd_close_inactive(-1, 0, 1, 1);
      if (!result)
      {
        result = _fd_close_inactive(*(a2 + 44), 0, 1, 0);
        if (!result)
        {

          return _fd_close_inactive(-1, 0, 1, 0);
        }
      }
    }
  }

  return result;
}

_DWORD *fd_create_sibling_protected(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x68uLL, 0x10300409CE040BCuLL);
  *v8 = -50529037;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 1;
  v8[10] = -1;
  v8[11] = *(a1 + 44);
  v8[12] = a3 | (((a3 & 3) != 0) << 29);
  LOWORD(a3) = *(v8 + 28);
  *(v8 + 30) &= 0xFC00u;
  *(v8 + 28) = a3 & 0xFFF0;
  *(v8 + 9) = strdup(a2);
  *(v8 + 52) = 0;
  *(v8 + 11) = 0;
  *(v8 + 12) = 0;
  *(v8 + 10) = 0;
  *(v8 + 28) = a3 & 0xF000 | (16 * a4);
  v13 = 0;
  v9 = _fd_acquire_fd(v8, &v13);
  if (v9 == -1)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      fd_create_sibling_protected_cold_1(v8 + 9, v8 + 11);
    }

    *__error() = v10;
    fd_release(v8);
    return 0;
  }

  v8[12] &= 0xFFFFF9FF;
  _fd_release_fd(v8, v9, 0, v13);
  return v8;
}

_DWORD *fd_create_sibling_with_suffix_protected(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  asprintf(&v9, "%s%s", *(a1 + 72), a2);
  sibling_protected = fd_create_sibling_protected(a1, v9, a3, a4);
  free(v9);
  return sibling_protected;
}

_DWORD *fd_create_sibling_with_prefix_protected(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  asprintf(&v9, "%s%s", a2, *(a1 + 72));
  sibling_protected = fd_create_sibling_protected(a1, v9, a3, a4);
  free(v9);
  return sibling_protected;
}

uint64_t fd_truncate(uint64_t a1, off_t a2)
{
  v11 = 0;
  v4 = _fd_acquire_fd(a1, &v11);
  if (v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = _fd_ftruncate_guarded(v4, &v11, a2);
  v7 = *__error();
  if (v6 == -1 || a2 == 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFFFD | v9;
  _fd_release_fd(a1, v5, 0, v11);
  if (v6 == -1)
  {
    *__error() = v7;
  }

  return v6;
}

uint64_t fd_truncate_and_make_readonly(uint64_t a1, off_t a2)
{
  v3 = fd_truncate(a1, a2);
  if (!v3)
  {
    fd_make_readonly(a1);
    fd_chmod(a1, 0x100u);
  }

  return v3;
}

uint64_t fd_make_readonly(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    if (*result != -50529037)
    {
      fd_make_readonly_cold_1();
    }

    *(result + 48) = 0;
    pthread_mutex_lock(&g_fd_lock);
    if (*(v1 + 36) || *(v1 + 40) == -1)
    {
      return pthread_mutex_unlock(&g_fd_lock);
    }

    else
    {
      v2 = _fd_remove_locked(v1, &v3);
      result = pthread_mutex_unlock(&g_fd_lock);
      if (v2 != -1)
      {
        return guarded_close_np();
      }
    }
  }

  return result;
}

uint64_t fd_chmod(uint64_t a1, mode_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = fchmodat(*(a1 + 44), *(a1 + 72), a2, 2048);
    v5 = g_prot_error_callback;
    if (result != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = __error();
    if (((*(v5 + 16))(v5, v7, *v8, 19) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t fd_zero_truncate(uint64_t a1)
{
  v7 = 0;
  v2 = _fd_acquire_fd(a1, &v7);
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if ((*(a1 + 48) & 3) == 0)
  {
    _fd_release_fd(a1, v2, 0, v7);
    v5 = 1;
LABEL_6:
    *__error() = v5;
    return 0xFFFFFFFFLL;
  }

  v4 = _fd_ftruncate_guarded(v2, &v7, 0);
  v5 = *__error();
  *(a1 + 56) &= ~2u;
  _fd_release_fd(a1, v3, 0, v7);
  if (v4 == -1)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t _fd_acquire_fd(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    v10 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_26B7AA000, v9, v10, "open error NULL obj", buf, 2u);
    }

    *__error() = v8;
    v6 = __error();
    v7 = 2;
    goto LABEL_10;
  }

  if (*a1 != -50529037)
  {
    _fd_acquire_fd_cold_1();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 52) == 1)
  {
    pthread_mutex_unlock(&g_fd_lock);
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _fd_acquire_fd_cold_3(v5);
    }

    *__error() = v4;
    v6 = __error();
    v7 = 22;
LABEL_10:
    *v6 = v7;
LABEL_11:
    updated = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  if (*(a1 + 40) == -1)
  {
    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    updated = _fd_update_locked(a1, 0, a2);
    pthread_mutex_unlock(&g_fd_lock);
    if (updated != -1)
    {
      goto LABEL_12;
    }
  }

  bzero(buf, 0x400uLL);
  v14 = (*(a1 + 56) >> 4);
  v15 = fd_name(a1, buf, 0x400uLL);
  v20 = _fd_open(*(a1 + 44), v15, *(a1 + 48), *(a1 + 56) & 1, v14, v16, v17, v18, v19);
  if (v20 == -1)
  {
    goto LABEL_11;
  }

  v21 = v20;
  __buf = 0;
  arc4random_buf(&__buf, 8uLL);
  v24 = *(a1 + 48);
  v22 = change_fdguard_np();
  __error();
  if (v22 && gSILogLevels[0] >= 5)
  {
    _fd_acquire_fd_cold_2();
  }

  pthread_mutex_lock(&g_fd_lock);
  if (*(a1 + 40) == -1)
  {
    *(a1 + 8) = __buf;
    *(a1 + 40) = v21;
    updated = _fd_update_locked(a1, 1, a2);
    v23 = *(g_fd_list + 4) > *(g_fd_list + 8);
    pthread_mutex_unlock(&g_fd_lock);
  }

  else
  {
    updated = _fd_update_locked(a1, 0, a2);
    pthread_mutex_unlock(&g_fd_lock);
    guarded_close_np();
    v23 = 0;
  }

  close_inactive_fds_if_necessary(v23, a1);
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return updated;
}

BOOL fd_validfs(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = _fd_acquire_fd(a1, &v7);
  if (v2 == -1)
  {
    result = 0;
  }

  else
  {
    v3 = v2;
    bzero(&v8, 0x878uLL);
    v4 = fstatfs(v3, &v8);
    _fd_release_fd(a1, v3, 0, v7);
    result = v4 == 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fd_stat(uint64_t a1, stat *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = fstatat(*(a1 + 44), *(a1 + 72), a2, 2048);
    v5 = g_prot_error_callback;
    if (result != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = __error();
    if (((*(v5 + 16))(v5, v7, *v8, 8) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

off_t fd_lseek(_DWORD *a1, off_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v6 = _fd_acquire_fd(a1, &v18);
  if (v6 == -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v7 = lseek(v6, a2, a3);
    if (v7 != -1 || !g_prot_error_callback)
    {
      break;
    }

    v8 = *__error();
    v9 = g_prot_error_callback;
    v10 = a1[10];
    v11 = __error();
    if (((*(v9 + 16))(v9, v10, *v11, 9) & 1) == 0)
    {
      *__error() = v8;
      _fd_release_fd(a1, v6, 0, v18);
      goto LABEL_7;
    }
  }

  _fd_release_fd(a1, v6, 0, v18);
  if (v7 == -1)
  {
LABEL_7:
    bzero(v33, 0x400uLL);
    v12 = *__error();
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = fd_realpath(a1, v33);
      if (!v17)
      {
        v17 = fd_name(a1, v33, 0x400uLL);
        if (!v17)
        {
          v17 = "";
        }
      }

      *buf = 136316674;
      v20 = "fd_lseek";
      v21 = 1024;
      v22 = 631;
      v23 = 1024;
      v24 = v6;
      v25 = 2080;
      v26 = v17;
      v27 = 2048;
      v28 = a2;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = v12;
      _os_log_error_impl(&dword_26B7AA000, v14, OS_LOG_TYPE_ERROR, "%s:%d: lseek(%d %s, o:%lx, w:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    v7 = -1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

_BYTE *fd_realpath(_DWORD *a1, _BYTE *a2)
{
  v8 = 0;
  v4 = _fd_acquire_fd(a1, &v8);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = faccurate_realpath(v4, a2);
  _fd_release_fd(a1, v5, 0, v8);
  return v6;
}

ssize_t fd_pread(_DWORD *a1, void *a2, size_t a3, off_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v8 = _fd_acquire_fd(a1, &v17);
  v9 = v8;
  if (v8 == -1 || (v10 = prot_pread(v8, a2, a3, a4), _fd_release_fd(a1, v9, 0, v17), v10 == -1))
  {
    bzero(v32, 0x400uLL);
    v11 = *__error();
    v12 = *__error();
    v13 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = fd_realpath(a1, v32);
      if (!v16)
      {
        v16 = fd_name(a1, v32, 0x400uLL);
        if (!v16)
        {
          v16 = "";
        }
      }

      *buf = 136316674;
      v19 = "fd_pread";
      v20 = 1024;
      v21 = 650;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v16;
      v26 = 2048;
      v27 = a4;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v11;
      _os_log_error_impl(&dword_26B7AA000, v13, OS_LOG_TYPE_ERROR, "%s:%d: pread(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v12;
    *__error() = v11;
    v10 = -1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t fd_pwrite(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *__error() = 2;
LABEL_11:
    v11 = -1;
    goto LABEL_12;
  }

  if (*(a1 + 96))
  {
    fd_pwrite_cold_1();
  }

  v18 = 0;
  v8 = _fd_acquire_fd(a1, &v18);
  v9 = v8;
  if (v8 == -1)
  {
    v12 = *__error();
LABEL_9:
    bzero(v33, 0x400uLL);
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = fd_realpath(a1, v33);
      if (!v17)
      {
        v17 = fd_name(a1, v33, 0x400uLL);
        if (!v17)
        {
          v17 = "";
        }
      }

      *buf = 136316674;
      v20 = "fd_pwrite";
      v21 = 1024;
      v22 = 680;
      v23 = 1024;
      v24 = v9;
      v25 = 2080;
      v26 = v17;
      v27 = 2048;
      v28 = a4;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = v12;
      _os_log_error_impl(&dword_26B7AA000, v14, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%d %s, o:%lx, s:%d) err:%d", buf, 0x38u);
    }

    *__error() = v13;
    *__error() = v12;
    goto LABEL_11;
  }

  v10 = prot_pwrite_guarded(v8, &v18, a2, a3, a4);
  if (v10 == -1)
  {
    v12 = *__error();
    _fd_release_fd(a1, v9, 0, v18);
    goto LABEL_9;
  }

  v11 = v10;
  _fd_release_fd(a1, v9, 0, v18);
LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t fd_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *__error() = 2;
LABEL_8:
    v8 = -1;
    goto LABEL_9;
  }

  if (*(a1 + 96))
  {
    fd_write_cold_1();
  }

  v16 = 0;
  v6 = _fd_acquire_fd(a1, &v16);
  v7 = v6;
  if (v6 == -1 || (v8 = prot_write_guarded(v6, &v16, a2, a3), v9 = *__error(), _fd_release_fd(a1, v7, 0, v16), *__error() = v9, v8 == -1))
  {
    bzero(v29, 0x400uLL);
    v10 = *__error();
    v11 = *__error();
    v12 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = fd_realpath(a1, v29);
      if (!v15)
      {
        v15 = fd_name(a1, v29, 0x400uLL);
        if (!v15)
        {
          v15 = "";
        }
      }

      *buf = 136316418;
      v18 = "fd_write";
      v19 = 1024;
      v20 = 709;
      v21 = 1024;
      v22 = v7;
      v23 = 2080;
      v24 = v15;
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = v10;
      _os_log_error_impl(&dword_26B7AA000, v12, OS_LOG_TYPE_ERROR, "%s:%d: write(%d %s, s:%d) err:%d", buf, 0x2Eu);
    }

    *__error() = v11;
    *__error() = v10;
    goto LABEL_8;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t fd_sync(uint64_t a1, int a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    fd_system_status_stall_if_busy();
  }

  v15 = 0;
  v5 = _fd_acquire_fd(a1, &v15);
  v6 = 0xFFFFFFFFLL;
  if (v5 != -1)
  {
    v7 = v5;
    bzero(v17, 0x400uLL);
    v14 = -1;
    v8 = *(a1 + 56);
    if ((v8 & 0xE) == 6 && (*(a1 + 56) = v8 & 0xFFF3, bzero(&v16, 0x878uLL), fstatfs(*(a1 + 44), &v16) != -1) && *v16.f_fstypename ^ 0x73667061 | v16.f_fstypename[4])
    {
      v9 = fd_name(a1, v17, 0x400uLL);
      if (v9)
      {
        if (fd_setDir(*(a1 + 44), &v14))
        {
          v13 = 1;
          if (fsctl(v9, 0x80006817uLL, &v13, 0) != -1)
          {
            *(a1 + 56) |= 0xCu;
          }
        }
      }

      if (a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      if (a2)
      {
LABEL_12:
        v10 = (*(a1 + 56) & 8) == 0;
        goto LABEL_15;
      }
    }

    v10 = 0;
LABEL_15:
    v6 = prot_fsync(v7, v10);
    if (v6 != -1 && (*(a1 + 56) & 8) != 0)
    {
      v16.f_bsize = 0;
      fsctl(v9, 0x80006817uLL, &v16, 0);
      *(a1 + 56) &= 0xFFF5u;
    }

    if (v14 != -1)
    {
      md_resetdir(v14);
    }

    _fd_release_fd(a1, v7, 0, v15);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _fd_cancel_pending_unlink(uint64_t result)
{
  if (result)
  {
    if ((*(result + 60) & 0x100) != 0)
    {
      *(result + 60) &= ~0x100u;
    }
  }

  return result;
}

uint64_t _fd_unlink_with_origin(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v14 = 0;
    if (fd_setDir(*(a1 + 44), &v14))
    {
      bzero(v16, 0x400uLL);
      v4 = fd_name(a1, v16, 0x400uLL);
      if (v4)
      {
        v5 = v4;
        v6 = *__error();
        v7 = _SILogForLogForCategory(6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = v5;
          _os_log_impl(&dword_26B7AA000, v7, OS_LOG_TYPE_DEFAULT, "Unlink %s", buf, 0xCu);
        }

        *__error() = v6;
        os_unfair_lock_lock(&map_guard_lock);
        v8 = *(a1 + 60);
        if (!v8)
        {
          *(a1 + 60) = v8 & 0xFC00 | 0x200;
          *(a1 + 64) = a2;
          os_unfair_lock_unlock(&map_guard_lock);
          if ((*(a1 + 48) & 3) != 0)
          {
            *buf = 0;
            v10 = _fd_acquire_fd(a1, buf);
            if (v10 != -1)
            {
              v11 = v10;
              _fd_ftruncate_guarded(v10, buf, 0);
              _fd_release_fd(a1, v11, 0, *buf);
            }
          }

          v9 = unlink(v5);
          goto LABEL_14;
        }

        *(a1 + 60) = v8 | 0x100;
        *(a1 + 64) = a2;
        os_unfair_lock_unlock(&map_guard_lock);
      }

      v9 = 0xFFFFFFFFLL;
LABEL_14:
      md_resetdir(v14);
      goto LABEL_15;
    }
  }

  v9 = 0xFFFFFFFFLL;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t fd_mmap(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    return -1;
  }

  v8 = 0;
  if (*(a1 + 44) == -1)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = _fd_acquire_fd(a1, &v8);
  }

  if (v2 == -1)
  {
    return -1;
  }

  do
  {
    v3 = __mmap();
    if (v3 != -1)
    {
      break;
    }

    v4 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v5 = *(a1 + 40);
    v6 = __error();
  }

  while (((*(v4 + 16))(v4, v5, *v6, 10) & 1) != 0);
  if (*(a1 + 44) != -1)
  {
    _fd_release_fd(a1, v2, (*(a1 + 56) & 2) == 0, v8);
  }

  return v3;
}

_DWORD *_fd_release_fd(_DWORD *result, int a2, int a3, uint64_t a4)
{
  if (result && a2 != -1)
  {
    v5 = result;
    v11 = 0;
    if (*result != -50529037)
    {
      _fd_release_fd_cold_1();
    }

    pthread_mutex_lock(&g_fd_lock);
    v8 = *(v5 + 52);
    if ((v8 & 1) == 0)
    {
      if (*(v5 + 40) != a2)
      {
        _fd_release_fd_cold_2();
      }

      if (*(v5 + 8) != a4)
      {
        _fd_release_fd_cold_3();
      }
    }

    v9 = *(v5 + 36);
    if (!v9)
    {
      _fd_release_fd_cold_4();
    }

    v10 = v9 - 1;
    *(v5 + 36) = v10;
    if (v10 || !a3 || (v8 & 1) != 0 || *(v5 + 68) || _fd_remove_locked(v5, &v11) == -1)
    {
      return pthread_mutex_unlock(&g_fd_lock);
    }

    else
    {
      *(v5 + 56) &= ~8u;
      pthread_mutex_unlock(&g_fd_lock);
      return guarded_close_np();
    }
  }

  return result;
}

uint64_t fd_guarded_mmap(uint64_t a1)
{
  v2 = fd_mmap(a1);
  if (v2 != -1)
  {
    os_unfair_lock_lock(&map_guard_lock);
    ++*(a1 + 60);
    os_unfair_lock_unlock(&map_guard_lock);
  }

  return v2;
}

uint64_t fd_guarded_munmap(uint64_t a1, void *a2, size_t a3)
{
  os_unfair_lock_lock(&map_guard_lock);
  v6 = *(a1 + 60);
  if (!v6)
  {
    os_unfair_lock_unlock(&map_guard_lock);
    si_analytics_log_0(v8, v9, v10, v11, v12, v13, v14, v15, a1);
    return 0;
  }

  *(a1 + 60) = v6 & 0xFF00 | (v6 - 1);
  if (v6 == 1)
  {
    *(a1 + 60) = v6 & 0xFF00;
    v7 = (v6 & 0x100) == 0;
  }

  else
  {
    v7 = 1;
  }

  os_unfair_lock_unlock(&map_guard_lock);
  v17 = 0;
  do
  {
    v16 = v17;
    if (a2 != -1)
    {
      v16 = munmap(a2, a3);
    }

    if (v16 != -1)
    {
      break;
    }

    v18 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v19 = *(a1 + 40);
    v20 = __error();
    v21 = (*(v18 + 16))(v18, v19, *v20, 11);
    v17 = 0xFFFFFFFFLL;
  }

  while ((v21 & 1) != 0);
  if (v7)
  {
    return v16;
  }

  return _fd_unlink_with_origin(a1, 890);
}

void si_analytics_log_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[0] = 0;
  v9[1] = &a9;
  vasprintf(v9, "Overrelease of fd_obj %p", &a9);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    si_analytics_log_cold_1(v9);
  }

  free(v9[0]);
}

uint64_t fd_read_advise(_DWORD *a1, uint64_t a2)
{
  v11 = 0;
  v4 = _fd_acquire_fd(a1, &v11);
  do
  {
    v5 = fcntl(v4, 44, a2);
    v6 = g_prot_error_callback;
    if (v5 != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v8 = a1[10];
    v9 = __error();
  }

  while (((*(v6 + 16))(v6, v8, *v9, 12) & 1) != 0);
  _fd_release_fd(a1, v4, 0, v11);
  return v5;
}

uint64_t fd_hold_assertion(uint64_t a1, uint64_t a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v6 = _fd_acquire_fd(a1, &v17);
  v16[0] = 0;
  v16[1] = (a3 * 1000000000.0);
  v7 = fcntl(v6, 108, v16);
  bzero(v19, 0x400uLL);
  fd_name(a1, v19, 0x400uLL);
  if ((v7 & 0x80000000) != 0)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      fd_hold_assertion_cold_2();
    }

    *__error() = v12;
  }

  else if (a2)
  {
    bzero(__s, 0x402uLL);
    __sprintf_chk(__s, 0, 0x402uLL, "%s$", v19);
    v8 = strlen(__s);
    v9 = fd_write(a2, __s, v8);
    if (v9 != strlen(__s))
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        fd_hold_assertion_cold_1();
      }

      *__error() = v10;
      v7 = 0xFFFFFFFFLL;
    }
  }

  if (a1)
  {
    *(a1 + 88) = CFAbsoluteTimeGetCurrent() + a3;
  }

  _fd_release_fd(a1, v6, 0, v17);
  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t fd_drop_assertion(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&g_fd_lock);
  if (a1)
  {
    v2 = *(a1 + 40);
    pthread_mutex_unlock(&g_fd_lock);
    if (v2 != -1)
    {
      v9 = 0;
      v3 = _fd_acquire_fd(a1, &v9);
      v4 = fcntl(v3, 109, 0);
      if ((v4 & 0x80000000) != 0)
      {
        bzero(v10, 0x400uLL);
        v5 = *__error();
        v6 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          fd_drop_assertion_cold_1(a1, v10);
        }

        *__error() = v5;
      }

      *(a1 + 88) = 0;
      _fd_release_fd(a1, v3, 0, v9);
      goto LABEL_12;
    }
  }

  else
  {
    pthread_mutex_unlock(&g_fd_lock);
  }

  if (dword_2804230F8 >= 5)
  {
    fd_drop_assertion_cold_2();
  }

  v4 = 0;
LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t fd_transfer_assertion(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 88);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = v4 - CFAbsoluteTimeGetCurrent();
  if (v5 <= 0.0)
  {
    return 0;
  }

  v10 = 0;
  v6 = _fd_acquire_fd(a2, &v10);
  v9[0] = 0;
  v9[1] = (v5 * 1000000000.0);
  v7 = fcntl(v6, 108, v9);
  if (!v7)
  {
    if (a1)
    {
      *(a1 + 88) = 0;
    }

    if (a2)
    {
      *(a2 + 88) = v4;
    }
  }

  _fd_release_fd(a2, v6, 0, v10);
  return v7;
}

uint64_t fd_update_assertion(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = *(a1 + 88);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = v4 - CFAbsoluteTimeGetCurrent();
  if (v5 <= 0.0)
  {
    return 0;
  }

  v7[0] = 0;
  v7[1] = (v5 * 1000000000.0);
  result = fcntl(a2, 108, v7);
  if (a1)
  {
    if (result)
    {
      *(a1 + 88) = 0;
    }
  }

  return result;
}

uint64_t fd_no_cache(uint64_t a1, int a2)
{
  v8 = 0;
  result = _fd_acquire_fd(a1, &v8);
  if (result != -1)
  {
    v5 = result;
    v6 = *(a1 + 56) & 0xFFFE;
    if (a2)
    {
      ++v6;
    }

    *(a1 + 56) = v6;
    v7 = fcntl(result, 48, a2 != 0);
    fcntl(v5, 76, *(a1 + 56) & 1);
    _fd_release_fd(a1, v5, 0, v8);
    return v7;
  }

  return result;
}

uint64_t fd_get_no_cache(uint64_t result)
{
  if (result)
  {
    return *(result + 56) & 1;
  }

  return result;
}

uint64_t fd_zero_fill_on_sync(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 56) = *(a1 + 56) & 0xFFFB | (4 * (a2 != 0));
  }

  return 0;
}

uint64_t fd_rename(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *v17 = 0;
    v4 = _fd_acquire_fd(a1, v17);
    if (v4 != -1)
    {
      v5 = v4;
      bzero(v26, 0x400uLL);
      v6 = fd_name(a1, v26, 0x400uLL);
      if (v6 && renameat(*(a1 + 44), v6, *(a1 + 44), a2) != -1)
      {
        v7 = strdup(a2);
        os_unfair_lock_lock(&g_name_lock);
        v8 = *(a1 + 72);
        *(a1 + 72) = v7;
        os_unfair_lock_unlock(&g_name_lock);
        free(v8);
        _fd_release_fd(a1, v5, 0, *v17);
        pthread_mutex_lock(&g_fd_lock);
        v9 = *(a1 + 80);
        if (v9)
        {
          *(a1 + 80) = 0;
          pthread_mutex_unlock(&g_fd_lock);
          fd_release(v9);
        }

        else
        {
          pthread_mutex_unlock(&g_fd_lock);
        }

        result = 0;
        goto LABEL_11;
      }

      _fd_release_fd(a1, v5, 0, *v17);
    }
  }

  else
  {
    *__error() = 22;
  }

  bzero(v26, 0x400uLL);
  v10 = *__error();
  v11 = *__error();
  v12 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = fd_realpath(a1, v26);
    *v17 = 136316162;
    *&v17[4] = "fd_rename";
    v16 = "";
    v18 = 1024;
    if (v15)
    {
      v16 = v15;
    }

    v19 = 1098;
    v20 = 2080;
    v21 = v16;
    v22 = 2080;
    v23 = a2;
    v24 = 1024;
    v25 = v10;
    _os_log_error_impl(&dword_26B7AA000, v12, OS_LOG_TYPE_ERROR, "%s:%d: rename(%s, %s) err:%d", v17, 0x2Cu);
  }

  *__error() = v11;
  *__error() = v10;
  result = 0xFFFFFFFFLL;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fd_reparent(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 44) == a2)
  {
    goto LABEL_2;
  }

  *v15 = 0;
  v5 = _fd_acquire_fd(a1, v15);
  if (v5 != -1)
  {
    v6 = v5;
    bzero(v22, 0x400uLL);
    v7 = fd_name(a1, v22, 0x400uLL);
    if (v7 && renameat(*(a1 + 44), v7, a2, v7) != -1)
    {
      *(a1 + 44) = a2;
      _fd_release_fd(a1, v6, 0, *v15);
      pthread_mutex_lock(&g_fd_lock);
      v8 = *(a1 + 80);
      if (v8)
      {
        *(a1 + 80) = 0;
        pthread_mutex_unlock(&g_fd_lock);
        fd_release(v8);
      }

      else
      {
        pthread_mutex_unlock(&g_fd_lock);
      }

LABEL_2:
      result = 0;
      goto LABEL_11;
    }

    _fd_release_fd(a1, v6, 0, *v15);
  }

  bzero(v22, 0x400uLL);
  v9 = *__error();
  v10 = *__error();
  v11 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = fd_realpath(a1, v22);
    *v15 = 136315906;
    *&v15[4] = "fd_reparent";
    v14 = "";
    v16 = 1024;
    if (v13)
    {
      v14 = v13;
    }

    v17 = 1148;
    v18 = 2080;
    v19 = v14;
    v20 = 1024;
    v21 = v9;
    _os_log_error_impl(&dword_26B7AA000, v11, OS_LOG_TYPE_ERROR, "%s:%d: reparent(%s) err:%d", v15, 0x22u);
  }

  *__error() = v10;
  *__error() = v9;
  result = 0xFFFFFFFFLL;
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fd_rename_over_and_release(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v17 = 0;
    v4 = _fd_acquire_fd(a2, &v17);
    if (v4 != -1)
    {
      v5 = v4;
      bzero(v26, 0x400uLL);
      v6 = fd_name(a1, v26, 0x400uLL);
      bzero(buf, 0x400uLL);
      v7 = fd_name(a2, buf, 0x400uLL);
      if (renameat(*(a2 + 44), v7, *(a1 + 44), v6) != -1)
      {
        os_unfair_lock_lock(&g_name_lock);
        v8 = *(a1 + 72);
        *(a1 + 72) = *(a2 + 72);
        *(a2 + 72) = v8;
        os_unfair_lock_unlock(&g_name_lock);
        _fd_release_fd(a2, v5, 0, v17);
        fd_release(a1);
        pthread_mutex_lock(&g_fd_lock);
        v9 = *(a2 + 80);
        if (v9)
        {
          *(a2 + 80) = 0;
          pthread_mutex_unlock(&g_fd_lock);
          fd_release(v9);
        }

        else
        {
          pthread_mutex_unlock(&g_fd_lock);
        }

        result = 0;
        goto LABEL_12;
      }

      _fd_release_fd(a2, v5, 0, v17);
      fd_release(a1);
    }
  }

  else
  {
    *__error() = 22;
  }

  bzero(v26, 0x400uLL);
  v10 = *__error();
  v11 = *__error();
  v12 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = fd_realpath(a2, v26);
    *buf = 136315906;
    v19 = "fd_rename_over_and_release";
    v16 = "";
    v20 = 1024;
    if (v15)
    {
      v16 = v15;
    }

    v21 = 1204;
    v22 = 2080;
    v23 = v16;
    v24 = 1024;
    v25 = v10;
    _os_log_error_impl(&dword_26B7AA000, v12, OS_LOG_TYPE_ERROR, "%s:%d: rename_over(%s) err:%d", buf, 0x22u);
  }

  *__error() = v11;
  *__error() = v10;
  result = 0xFFFFFFFFLL;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fd_protection_class(uint64_t result)
{
  if (result)
  {
    return (*(result + 56) >> 4);
  }

  return result;
}

_DWORD *fd_name_ptr(_DWORD *a1)
{
  v1 = a1;
  if (a1)
  {
    if (*a1 != -50529037)
    {
      fd_name_ptr_cold_1();
    }

    os_unfair_lock_lock(&g_name_lock);
    v1 = *(v1 + 9);
    os_unfair_lock_unlock(&g_name_lock);
  }

  return v1;
}

uint64_t _fd_remove_locked(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (v4)
  {
    if (!v2)
    {
      _fd_remove_locked_cold_4();
    }

    v5 = g_fd_list;
    v6 = *(g_fd_list + 16);
    if (v6 == a1)
    {
      *(g_fd_list + 16) = v4;
      v6 = v4;
    }

    *(v2 + 24) = v4;
    *(*(a1 + 24) + 16) = v2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v7 = *v5;
    v8 = *v5 - 1;
    *v5 = v8;
    if (v6 == a1)
    {
      if (v8)
      {
        _fd_remove_locked_cold_3();
      }

      *(v5 + 16) = 0;
      if (v3 != -1)
      {
        --*(v5 + 4);
      }
    }

    else
    {
      if (!v8)
      {
        _fd_remove_locked_cold_2();
      }

      if (v3 != -1)
      {
        --*(v5 + 4);
        if (v7 <= 0)
        {
          _fd_remove_locked_cold_1();
        }
      }
    }
  }

  else if (v2)
  {
    _fd_remove_locked_cold_5();
  }

  *(a1 + 40) = -1;
  *(a1 + 8) = 0;
  return v3;
}

uint64_t fd_dump()
{
  v58 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&g_fd_lock);
  if (*(g_fd_list + 16))
  {
    v0 = *__error();
    v1 = _SILogForLogForCategory(0);
    v2 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v1, (gSILogLevels[0] < 3)))
    {
      v3 = *g_fd_list;
      v4 = *(g_fd_list + 4);
      v5 = *(g_fd_list + 8);
      *buf = 67109632;
      v53 = v3;
      v54 = 1024;
      v55 = v4;
      v56 = 1024;
      v57 = v5;
      _os_log_impl(&dword_26B7AA000, v1, v2, "*warn* item count: %d, fd count: %d, soft limit: %d", buf, 0x14u);
    }

    *__error() = v0;
    v6 = *(g_fd_list + 16);
    v7 = *(v6 + 16);
    do
    {
      bzero(buf, 0x400uLL);
      if (*v6 != -50529037)
      {
        fd_dump_cold_1();
      }

      v8 = *(v6 + 40);
      if (v8 == -1)
      {
        bzero(v44, 0x400uLL);
      }

      else
      {
        v9 = faccurate_realpath(v8, buf);
        v10 = *__error();
        v11 = _SILogForLogForCategory(0);
        v12 = gSILogLevels[0] < 3;
        if (os_log_type_enabled(v11, (gSILogLevels[0] < 3)))
        {
          v14 = *(v6 + 40);
          v13 = *(v6 + 44);
          v15 = *(v6 + 36);
          *v44 = 136315906;
          v45 = v9;
          v46 = 1024;
          v47 = v13;
          v48 = 1024;
          v49 = v14;
          v50 = 1024;
          v51 = v15;
          _os_log_impl(&dword_26B7AA000, v11, v12, "*warn* path:%s, dir:%d, fd:%d, oc:%d", v44, 0x1Eu);
        }

        *__error() = v10;
        bzero(v44, 0x400uLL);
        if (v9)
        {
          v16 = *__error();
          v17 = _SILogForLogForCategory(0);
          v18 = gSILogLevels[0] < 3;
          if (os_log_type_enabled(v17, (gSILogLevels[0] < 3)))
          {
            v19 = fd_name(v6, v44, 0x400uLL);
            v21 = *(v6 + 40);
            v20 = *(v6 + 44);
            v22 = *(v6 + 36);
            *v36 = 136315906;
            v37 = v19;
            v38 = 1024;
            *v39 = v20;
            *&v39[4] = 1024;
            *&v39[6] = v21;
            *v40 = 1024;
            *&v40[2] = v22;
            v23 = v17;
            v24 = v18;
            v25 = "*warn* name: %s dir:%d, fd:%d, oc:%d";
            v26 = 30;
LABEL_15:
            _os_log_impl(&dword_26B7AA000, v23, v24, v25, v36, v26);
            goto LABEL_16;
          }

          goto LABEL_16;
        }
      }

      v27 = faccurate_realpath(*(v6 + 44), buf);
      v16 = *__error();
      v28 = _SILogForLogForCategory(0);
      v29 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v28, (gSILogLevels[0] < 3)))
      {
        v30 = fd_name(v6, v44, 0x400uLL);
        v32 = *(v6 + 40);
        v31 = *(v6 + 44);
        v33 = *(v6 + 36);
        *v36 = 136316162;
        v37 = v27;
        v38 = 2080;
        *v39 = v30;
        *&v39[8] = 1024;
        *v40 = v31;
        *&v40[4] = 1024;
        v41 = v32;
        v42 = 1024;
        v43 = v33;
        v23 = v28;
        v24 = v29;
        v25 = "*warn* path: %s//%s, dir:%d, fd:%d, oc:%d";
        v26 = 40;
        goto LABEL_15;
      }

LABEL_16:
      *__error() = v16;
      v6 = *(v6 + 24);
    }

    while (v6 != v7);
  }

  result = pthread_mutex_unlock(&g_fd_lock);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fd_mark_purgable(_DWORD *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = a2;
  v3 = _fd_acquire_fd(a1, &v13);
  if (v3 == -1)
  {
LABEL_7:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = ffsctl(v3, 0xC0084A44uLL, &v14, 0);
  if (v5 == -1)
  {
    v7 = *__error();
    bzero(v25, 0x400uLL);
    v8 = faccurate_realpath(a1[11], v25);
    v9 = *__error();
    v10 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v16 = "fd_mark_purgable";
      v17 = 1024;
      v18 = 1763;
      v19 = 2080;
      v20 = v8;
      v21 = 2048;
      v22 = v14;
      v23 = 1024;
      v24 = v7;
      _os_log_error_impl(&dword_26B7AA000, v10, OS_LOG_TYPE_ERROR, "%s:%d: mark purgable failed, path:%s flags:0x%ld errno:%d", buf, 0x2Cu);
    }

    *__error() = v9;
    _fd_release_fd(a1, v4, 0, v13);
    *__error() = v7;
    goto LABEL_7;
  }

  v6 = v5;
  _fd_release_fd(a1, v4, 0, v13);
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

_DWORD *fd_invalidate(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    if (*result != -50529037)
    {
      fd_invalidate_cold_1();
    }

    pthread_mutex_lock(&g_fd_lock);
    *(v1 + 52) = 1;
    if (!*(v1 + 36) || _fd_remove_locked(v1, &v2) == -1)
    {

      return pthread_mutex_unlock(&g_fd_lock);
    }

    else
    {
      *(v1 + 56) &= ~8u;
      pthread_mutex_unlock(&g_fd_lock);
      return guarded_close_np();
    }
  }

  return result;
}

uint64_t fd_close_inactive(uint64_t result, const char *a2)
{
  if (g_fd_list)
  {
    v3 = result == -1 && a2 == 0;
    return _fd_close_inactive(result, a2, 0, v3);
  }

  return result;
}

uint64_t _fd_close_inactive(int a1, const char *a2, char a3, int a4)
{
  v35 = a1;
  v37 = *MEMORY[0x277D85DE8];
  if (gOpenLimit <= 2047)
  {
    v7 = (gOpenLimit + (gOpenLimit >> 31)) >> 1;
  }

  else
  {
    v7 = 1024;
  }

  MEMORY[0x28223BE20]();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  MEMORY[0x28223BE20]();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  pthread_mutex_lock(&g_fd_lock);
  v12 = &sCacheLock;
  v13 = g_fd_list;
  v14 = *(g_fd_list + 16);
  if (!v14 || ((v15 = *(v14 + 16), !a2) ? (v16 = 0) : (v16 = strlen(a2), v12 = &sCacheLock), (v17 = *(g_fd_list + 4), v17 < *(g_fd_list + 8)) && (a3 & 1) != 0))
  {
    pthread_mutex_unlock(&g_fd_lock);
    v18 = 0;
    goto LABEL_38;
  }

  v33 = a2;
  v34 = a4;
  v18 = 0;
  v19 = 1;
  v20 = v35;
  while (1)
  {
    v21 = *(v15 + 40);
    if (v21 != -1 && !*(v15 + 36) && v17 && !*(v15 + 68) && (!v34 || (*(v15 + 56) & 2) == 0))
    {
      if (v20 != -1)
      {
        if (*(v15 + 44) != v20)
        {
          goto LABEL_14;
        }

        if (v16)
        {
          v32 = v16;
          v22 = v12;
          bzero(v36, 0x400uLL);
          v23 = fd_name(v15, v36, 0x400uLL);
          if (!v23)
          {
            v12 = v22;
            v13 = v22[340];
LABEL_33:
            v20 = v35;
            v16 = v32;
            goto LABEL_14;
          }

          v24 = strncmp(v33, v23, v32);
          v12 = v22;
          v13 = v22[340];
          if (v24)
          {
            goto LABEL_33;
          }

          v21 = *(v15 + 40);
          v20 = v35;
          v16 = v32;
        }
      }

      v25 = *(v15 + 56);
      *&v11[8 * v18] = *(v15 + 8);
      *&v9[4 * v18] = v21;
      *(v15 + 8) = 0;
      *(v15 + 40) = -1;
      *(v15 + 56) = v25 & 0xFFF5;
      v26 = v13[1];
      v13[1] = v26 - 1;
      if (v26 <= 0)
      {
        _fd_close_inactive_cold_1();
      }

      if (++v18 >= v7)
      {
        goto LABEL_35;
      }
    }

LABEL_14:
    if (v19 - 1 >= *v13)
    {
      _fd_close_inactive_cold_2();
    }

    if (v15 == v14)
    {
      break;
    }

    v15 = *(v15 + 16);
    v17 = v13[1];
    ++v19;
    if (v17 < v13[2] && (a3 & 1) != 0)
    {
      goto LABEL_35;
    }
  }

  if (v19 != *v13)
  {
    _fd_close_inactive_cold_3();
  }

LABEL_35:
  pthread_mutex_unlock(&g_fd_lock);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v28 = *&v9[4 * i];
      guarded_close_np();
      v11 += 8;
    }
  }

LABEL_38:
  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

void fd_assert_not_unlinked(uint64_t a1)
{
  os_unfair_lock_lock(&map_guard_lock);
  if (a1)
  {
    v2 = *(a1 + 60);
    os_unfair_lock_unlock(&map_guard_lock);
    if ((v2 & 0x200) != 0)
    {
      fd_assert_not_unlinked_cold_1(a1);
    }
  }

  else
  {

    os_unfair_lock_unlock(&map_guard_lock);
  }
}

_DWORD *fd_warmup(_DWORD *a1)
{
  v4 = 0;
  result = _fd_acquire_fd(a1, &v4);
  if (result != -1)
  {
    a1[17] = 1;
    v3 = v4;

    return _fd_release_fd(a1, result, 0, v3);
  }

  return result;
}

uint64_t fd_cooldown(uint64_t result)
{
  if (result)
  {
    *(result + 68) = 0;
  }

  return result;
}

uint64_t fd_copyfile(uint64_t a1, uint64_t a2, int a3)
{
  v24 = 0;
  if (!a1)
  {
    v12 = __error();
    v13 = 2;
LABEL_8:
    *v12 = v13;
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v12 = __error();
    v13 = 22;
    goto LABEL_8;
  }

  v6 = *(a1 + 44);
  v7 = *(a1 + 72);
  v8 = *(a2 + 44);
  v9 = *(a2 + 72);
  if (a3)
  {
    v10 = copyFile(v6, v7, v8, v9, &v24);
    v11 = v10 ^ 1u;
    if ((v10 & 1) == 0)
    {
      return v11;
    }
  }

  else
  {
    v11 = copyFileNoClone(v6, v7, v8, v9, &v24) ^ 1;
    if (v11)
    {
      return v11;
    }
  }

  if (*(a2 + 40) != -1)
  {
    __buf = 0;
    pthread_mutex_lock(&g_fd_lock);
    v15 = _fd_remove_locked(a2, &__buf);
    pthread_mutex_unlock(&g_fd_lock);
    if (v15 != -1)
    {
      guarded_close_np();
      v20 = _fd_open(*(a2 + 44), *(a2 + 72), *(a2 + 48), *(a2 + 56) & 1, (*(a2 + 56) >> 4), v16, v17, v18, v19);
      arc4random_buf(&__buf, 8uLL);
      v22 = *(a2 + 48);
      v21 = change_fdguard_np();
      __error();
      if (v21 && gSILogLevels[0] >= 5)
      {
        fd_copyfile_cold_1();
      }

      if (v20 != -1)
      {
        pthread_mutex_lock(&g_fd_lock);
        if (*(a2 + 40) == -1)
        {
          *(a2 + 40) = v20;
          *(a2 + 8) = __buf;
          fd_update_assertion(a2, v20);
          _fd_update_locked(a2, 1, &__buf);
        }

        pthread_mutex_unlock(&g_fd_lock);
        guarded_close_np();
      }
    }
  }

  return v11;
}

uint64_t _fd_open(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9)
{
  v28 = *MEMORY[0x277D85DE8];
  a9.n128_u64[0] = 136315394;
  while (1)
  {
    v14 = a5 ? si_openat_protected(a1, a2, a3, 384, a5) : _safe_open_at(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0x180u);
    v15 = v14;
    if (a4)
    {
      if (v14 != -1)
      {
        break;
      }
    }

    if (v14 != -1 || !g_prot_error_callback)
    {
      goto LABEL_16;
    }

    v16 = *__error();
    if (gSILogLevels[0] >= 5)
    {
      v23 = *__error();
      v19 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *__error();
        *buf = 136315394;
        v25 = a2;
        v26 = 1024;
        v27 = v20;
        _os_log_impl(&dword_26B7AA000, v19, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", buf, 0x12u);
      }

      *__error() = v23;
    }

    v17 = g_prot_error_callback;
    v18 = __error();
    if (((*(v17 + 16))(v17, a1, *v18, 15) & 1) == 0)
    {
      *__error() = v16;
      goto LABEL_16;
    }
  }

  fcntl(v14, 48, 1);
  fcntl(v15, 76, 1);
LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t _fd_update_locked(uint64_t a1, int a2, void *a3)
{
  result = *(a1 + 40);
  if (result == -1)
  {
    _fd_update_locked_cold_6();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    if (!v5)
    {
      _fd_update_locked_cold_2();
    }

    v7 = g_fd_list;
    v8 = *(g_fd_list + 16);
    if (!v8)
    {
      _fd_update_locked_cold_1();
    }

    if (v8 != a1)
    {
      *(v5 + 24) = v6;
      *(*(a1 + 24) + 16) = v5;
      v9 = *(v8 + 16);
      *(a1 + 16) = v9;
      *(a1 + 24) = v8;
      *(v9 + 24) = a1;
      *(v8 + 16) = a1;
    }

    if (a2)
    {
LABEL_8:
      ++*(v7 + 4);
    }
  }

  else
  {
    if (v5)
    {
      _fd_update_locked_cold_3();
    }

    v7 = g_fd_list;
    v10 = *(g_fd_list + 16);
    v11 = *g_fd_list;
    if (v10)
    {
      if (!v11)
      {
        _fd_update_locked_cold_4();
      }

      v12 = *(v10 + 16);
      *(a1 + 16) = v12;
      *(a1 + 24) = v10;
      *(v12 + 24) = a1;
      *(v10 + 16) = a1;
      v13 = v11 + 1;
    }

    else
    {
      if (v11)
      {
        _fd_update_locked_cold_5();
      }

      *(a1 + 16) = a1;
      *(a1 + 24) = a1;
      v13 = 1;
    }

    *v7 = v13;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  *(v7 + 16) = a1;
  ++*(a1 + 36);
  *a3 = *(a1 + 8);
  return result;
}

uint64_t _safe_open_at(uint64_t a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, __n128 a9, unsigned __int16 a10)
{
  v61 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x200) != 0)
  {
    bzero(&v57, 0x400uLL);
    if (faccurate_realpath(a1, &v57))
    {
      if (v57 && v57 != 47)
      {
        v13 = a10;
        goto LABEL_3;
      }

      v26 = *__error();
      v27 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v54 = 136316162;
        *v55 = "_safe_open_at";
        *&v55[8] = 1024;
        LODWORD(v56[0]) = 1421;
        WORD2(v56[0]) = 2080;
        *(v56 + 6) = &v57;
        HIWORD(v56[1]) = 2080;
        v56[2] = a2;
        LOWORD(v56[3]) = 2048;
        *(&v56[3] + 2) = a3;
        _os_log_error_impl(&dword_26B7AA000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Invalid parent path, currentPath:%s, path:%s, flags:0x%lx\n", &v54, 0x30u);
      }

      v28 = 22;
    }

    else
    {
      v28 = *__error();
      v26 = *__error();
      v29 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v54 = 136316418;
        *v55 = "_safe_open_at";
        *&v55[8] = 1024;
        LODWORD(v56[0]) = 1417;
        WORD2(v56[0]) = 1024;
        *(v56 + 6) = a1;
        WORD1(v56[1]) = 2080;
        *(&v56[1] + 4) = a2;
        WORD2(v56[2]) = 2048;
        *(&v56[2] + 6) = a3;
        HIWORD(v56[3]) = 1024;
        LODWORD(v56[4]) = v28;
        _os_log_error_impl(&dword_26B7AA000, v29, OS_LOG_TYPE_ERROR, "%s:%d: faccurate_realpath() failed, parent_fd:%d, path:%s, flags:0x%lx, errno:%d\n", &v54, 0x32u);
      }
    }

    *__error() = v26;
    *__error() = v28;
LABEL_38:
    result = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v13 = 0;
LABEL_3:
  a9.n128_u64[0] = 136315394;
  v51 = a9;
  while (1)
  {
    result = openat(a1, a2, a3);
    if (result != -1)
    {
      break;
    }

    v15 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels[0] >= 5)
    {
      LODWORD(v52) = *__error();
      v17 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *__error();
        v57 = v51.n128_u32[0];
        v58 = a2;
        v59 = 1024;
        v60 = v18;
        _os_log_impl(&dword_26B7AA000, v17, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", &v57, 0x12u);
      }

      *__error() = v52;
      v15 = g_prot_error_callback;
    }

    v16 = __error();
    if (((*(v15 + 16))(v15, a1, *v16, 13) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (result != -1)
  {
    goto LABEL_39;
  }

LABEL_17:
  LODWORD(v52) = *__error();
  if ((v52 - 23) > 1)
  {
    goto LABEL_36;
  }

  v19 = *__error();
  v20 = _SILogForLogForCategory(0);
  v21 = gSILogLevels[0] < 3;
  if (os_log_type_enabled(v20, (gSILogLevels[0] < 3)))
  {
    v57 = 67109120;
    LODWORD(v58) = v52;
    _os_log_impl(&dword_26B7AA000, v20, v21, "*warn* too many open files, err: %d, closing inactive and trying again", &v57, 8u);
  }

  *__error() = v19;
  _fd_close_inactive(-1, 0, 0, 0);
  while (1)
  {
    result = openat(a1, a2, a3, v13);
    if (result != -1)
    {
      break;
    }

    v22 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    if (gSILogLevels[0] >= 5)
    {
      v50 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *__error();
        v57 = v51.n128_u32[0];
        v58 = a2;
        v59 = 1024;
        v60 = v25;
        _os_log_impl(&dword_26B7AA000, v24, OS_LOG_TYPE_DEFAULT, "~~~~########### file error %s %d", &v57, 0x12u);
      }

      *__error() = v50;
      v22 = g_prot_error_callback;
    }

    v23 = __error();
    if (((*(v22 + 16))(v22, a1, *v23, 14) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (result == -1)
  {
LABEL_36:
    if (v52 == 23)
    {
      _safe_open_at_cold_1();
    }

    if (v52 == 24)
    {
      v31 = *MEMORY[0x277CBECE8];
      Mutable = CFBagCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF130]);
      bzero(&v57, 0x400uLL);
      if (gOpenLimit < 1)
      {
        v34 = 0;
        v33 = 0;
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = faccurate_realpath(v35, &v57);
          if (v36)
          {
            if (*v36)
            {
              v37 = CFStringCreateWithCString(v31, v36, 0x8000100u);
              CFBagAddValue(Mutable, v37);
              CFRelease(v37);
            }

            else
            {
              CFBagAddValue(Mutable, &stru_287C3FA80);
              v34 = (v34 + 1);
            }

            ++v33;
          }

          ++v35;
        }

        while (v35 < gOpenLimit);
      }

      v51.n128_u64[0] = v34;
      v38 = MEMORY[0x26D6803F0](Mutable);
      MEMORY[0x28223BE20]();
      v40 = &v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v40, v39);
      CFBagGetValues(Mutable, v40);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 0x40000000;
      v53[2] = ___safe_open_at_block_invoke;
      v53[3] = &__block_descriptor_tmp_26_0;
      v53[4] = Mutable;
      qsort_b(v40, v38, 8uLL, v53);
      pthread_mutex_lock(&g_fd_lock);
      if (v33 >= 1)
      {
        v42 = 0;
        v43 = 0;
        *&v41 = 67109634;
        v52 = v41;
        do
        {
          if (*&v40[8 * v42] != v43)
          {
            v44 = *__error();
            v45 = _SILogForLogForCategory(0);
            v46 = gSILogLevels[0] < 3;
            if (os_log_type_enabled(v45, (gSILogLevels[0] < 3)))
            {
              v47 = MEMORY[0x26D680400](Mutable, *&v40[8 * v42]);
              v48 = *&v40[8 * v42];
              v54 = v52;
              *v55 = v42;
              *&v55[4] = 1024;
              *&v55[6] = v47;
              LOWORD(v56[0]) = 2112;
              *(v56 + 2) = v48;
              _os_log_impl(&dword_26B7AA000, v45, v46, "*warn* [%d] (%d) - %@", &v54, 0x18u);
            }

            *__error() = v44;
            v43 = *&v40[8 * v42];
          }

          ++v42;
        }

        while (v33 != v42);
      }

      pthread_mutex_unlock(&g_fd_lock);
      CFRelease(Mutable);
      __message_assert_1("%s:%u: failed assertion '%s' %s Too many open files %d (%d) (%d)", "fd_obj.c", 1530, "false", "", 24, v33, v51.n128_u32[0]);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    goto LABEL_38;
  }

LABEL_39:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

CFComparisonResult ___safe_open_at_block_invoke(uint64_t a1, const __CFString **a2, const __CFString **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = MEMORY[0x26D680400](*(a1 + 32), *a2);
  v7 = MEMORY[0x26D680400](*(a1 + 32), v5);
  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 <= v7)
  {
    return CFStringCompare(v4, v5, 0);
  }

  return 1;
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

_DWORD *SQueueCreate(int a1)
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040023F4036uLL);
  *result = ((a1 + 4127) & 0xFFFFF000) - 32;
  return result;
}

void SQueueDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = v2[1];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(*(a1 + 16));

    free(a1);
  }
}

uint64_t SQueuePeekData(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2 && (v3 = *(v2 + 24)) != 0)
  {
    if (a2)
    {
      *a2 = v3;
    }

    return *(a1 + 40);
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t SQueueDropData(void *a1, unint64_t a2)
{
  v3 = a1[3];
  if (!v3)
  {
    SQueueDropData_cold_3();
  }

  v5 = v3[3];
  while (1)
  {
    if (a2 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = a2;
    }

    v3[3] = v5 - v6;
    a1[1] -= v6;
    v7 = a1[5];
    a1[5] = v7 + v6;
    if (!v3[3] && v3 != a1[4])
    {
      v8 = v3[1];
      a1[3] = v8;
      a1[5] = 0;
      if (v8)
      {
        *v8 = 0;
        a1[5] = a1[3] + 32;
      }

      if (a1[2])
      {
        free(v3);
        --gSlabs;
      }

      else
      {
        a1[2] = v3;
      }
    }

    v3 = a1[3];
    a2 -= v6;
    if (!a2)
    {
      break;
    }

    v5 = v3[3];
    if (!v5)
    {
      v9 = v7 + v6;
      v11 = a1[1];
      if (!v11)
      {
        goto LABEL_23;
      }

LABEL_21:
      v10 = 0;
LABEL_22:
      if (v10 <= v11)
      {
LABEL_23:
        if (a2)
        {
          SQueueDropData_cold_1();
        }

        return v9;
      }

LABEL_26:
      SQueueDropData_cold_2();
    }
  }

  v9 = v7 + v6;
  if (v3)
  {
    v10 = v3[3];
    v11 = a1[1];
    if (v10)
    {
      goto LABEL_22;
    }

    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (a1[1])
  {
    goto LABEL_26;
  }

  return v9;
}

BOOL SQueueIsSlabAfter(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (v2 + 32 > a2 || v2 + 32 + *(v2 + 16) < a2)
  {
    v2 = *(v2 + 8);
    if (!v2)
    {
      return 0;
    }
  }

  return *(v2 + 8) != 0;
}

unint64_t SQueueAvailableDataAfterOffset(uint64_t a1, unint64_t a2, unint64_t *a3, _BYTE *a4)
{
  v4 = *(a1 + 24);
  if (!a2 || !v4)
  {
    if (!v4)
    {
LABEL_19:
      result = 0;
      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  while (1)
  {
    v5 = v4 + 32;
    if (v4 + 32 <= a2 && v5 + *(v4 + 16) >= a2)
    {
      break;
    }

    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  if (v4 == *(a1 + 24))
  {
LABEL_8:
    v5 = *(a1 + 40);
  }

  if (a2)
  {
    result = a2;
  }

  else
  {
    result = v5;
  }

  v7 = *(v4 + 24);
  if (v5 + v7 > result)
  {
    v8 = v7 + v5 - result;
    goto LABEL_20;
  }

  v9 = *(v4 + 8);
  if (!v9)
  {
    goto LABEL_19;
  }

  v8 = *(v9 + 24);
  v10 = v9 + 32;
  if (v8)
  {
    result = v10;
  }

  else
  {
    result = 0;
  }

LABEL_20:
  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    if (v4)
    {
      LOBYTE(v4) = *(v4 + 8) != 0;
    }

    *a4 = v4;
  }

  return result;
}

BOOL SQueueCouldPush(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && !*(v3 + 24))
  {
    return 1;
  }

  if (v2)
  {
    return (v2 - *(a1 + 48) + *(v2 + 16) + 32) >= a2;
  }

  return 0;
}

void *SQueueOpenPushData(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && !*(v4 + 24))
  {
    result = (v4 + 32);
    goto LABEL_12;
  }

  if (!v3)
  {
    NewSlab = squeue_getNewSlab(a1, a2);
    NewSlab[3] = 0;
    *NewSlab = 0;
    NewSlab[1] = 0;
    *(a1 + 24) = NewSlab;
    *(a1 + 32) = NewSlab;
    result = NewSlab + 4;
LABEL_12:
    *(a1 + 40) = result;
    goto LABEL_13;
  }

  result = *(a1 + 48);
  if ((v3 - result + *(v3 + 16) + 32) >= a2)
  {
    return result;
  }

  v7 = squeue_getNewSlab(a1, a2);
  *(*(a1 + 32) + 8) = v7;
  v7[3] = 0;
  *v7 = *(a1 + 32);
  v7[1] = 0;
  *(a1 + 32) = v7;
  result = v7 + 4;
LABEL_13:
  *(a1 + 48) = result;
  return result;
}

_DWORD *squeue_getNewSlab(unsigned int *a1, unint64_t a2)
{
  result = *(a1 + 2);
  if (result && result[4] >= a2)
  {
    *(a1 + 2) = 0;
  }

  else
  {
    v4 = *a1;
    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    result = malloc_type_malloc(v5 + 32, 0x1020040CD42B41CuLL);
    result[4] = v5;
    ++gSlabs;
  }

  return result;
}

void *SQueueClosePushData(void *result, uint64_t a2)
{
  result[6] += a2;
  *(result[4] + 24) += a2;
  result[1] += a2;
  return result;
}

void *SQueuePushData(void *a1, unint64_t a2, const void *a3)
{
  v6 = SQueueOpenPushData(a1, a2);
  v7 = v6;
  if (a3)
  {
    memcpy(v6, a3, a2);
  }

  a1[6] += a2;
  *(a1[4] + 24) += a2;
  a1[1] += a2;
  return v7;
}

double SQueueEmpty(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v4 = v2[1];
      if (a1[2])
      {
        free(v2);
        --gSlabs;
      }

      else
      {
        a1[2] = v2;
      }

      v2 = v4;
    }

    while (v4);
  }

  a1[1] = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

void *SQueueDropBefore(void *a1, unint64_t a2)
{
  result = a1[3];
  if ((result + 4) <= a2)
  {
    if (result + *(result + 4) + 32 >= a2)
    {
      v9 = a1[5];
      v8 = a1 + 5;
      result[3] -= a2 - v9;
      *(v8 - 4) -= a2 - v9;
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (result)
  {
    do
    {
LABEL_5:
      if ((result + 4) <= a2 && result + *(result + 4) + 32 >= a2)
      {
        break;
      }

      v5 = result[1];
      v6 = a1[2];
      a1[1] -= result[3];
      if (v6)
      {
        free(result);
        --gSlabs;
      }

      else
      {
        a1[2] = result;
      }

      result = v5;
    }

    while (v5);
  }

  *result = 0;
  a1[3] = result;
  v7 = a2 - result - 32;
  result[3] -= v7;
  a1[1] -= v7;
  v8 = a1 + 5;
LABEL_13:
  *v8 = a2;
  return result;
}

void *SQueuePopBack(void *a1, unint64_t a2)
{
  result = a1[4];
  if (result)
  {
    do
    {
      if ((result + 4) <= a2 && result + *(result + 4) + 32 >= a2)
      {
        break;
      }

      v5 = *result;
      v6 = a1[2];
      a1[1] -= result[3];
      if (v6)
      {
        free(result);
        --gSlabs;
      }

      else
      {
        a1[2] = result;
      }

      result = v5;
    }

    while (v5);
  }

  result[1] = 0;
  a1[4] = result;
  a1[1] -= result[3];
  v7 = a2 - result - 32;
  result[3] = v7;
  if (result == a1[3])
  {
    v7 = a2 - a1[5];
    result[3] = v7;
  }

  a1[1] += v7;
  a1[6] = a2;
  return result;
}

uint64_t fd_setDir(uint64_t a1, int *a2)
{
  *a2 = -1;
  memset(&v5, 0, sizeof(v5));
  if (!fstat(a1, &v5))
  {
    *a2 = open(".", 4);
    if (!MEMORY[0x26D6817B0](a1))
    {
      return 1;
    }

    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
      result = 0;
      *a2 = -1;
      return result;
    }
  }

  return 0;
}

uint64_t sync_invalidate_fd(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = a2 & ~*MEMORY[0x277D85F88];
  v5 = a2 - v4;
  v6 = mmap(0, a2 - v4 + a3, 1, 1025, a1, v4);
  v7 = sync_invalidate_mapping(v6, v5 + a3);
  munmap(v6, v5 + a3);
  return v7;
}

uint64_t sync_invalidate_mapping(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 == -1)
  {
    *__error() = 22;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = *__error();
      v12 = 134218240;
      v13 = -1;
      v14 = 1024;
      v15 = v9;
      v8 = MEMORY[0x277D86220];
LABEL_16:
      _os_log_impl(&dword_26B7AA000, v8, OS_LOG_TYPE_INFO, "fd_msync(%p) err %d", &v12, 0x12u);
    }
  }

  else if (a2 >= 1)
  {
    v3 = &a1[a2];
    v4 = 0x20000;
    v5 = a1;
LABEL_4:
    if (&v5[v4] > v3)
    {
      v4 = v3 - v5;
    }

    do
    {
      fd_system_status_stall_if_busy();
      v6 = msync(v5, v4, 16);
      v7 = *__error();
      madvise(v5, v4, 4);
      if (v6 != -1)
      {
        v5 += v4;
        if (v5 < v3)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }
    }

    while (g_prot_error_callback && ((*(g_prot_error_callback + 16))() & 1) != 0);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    v12 = 134218240;
    v13 = a1;
    v14 = 1024;
    v15 = v7;
    v8 = MEMORY[0x277D86220];
    goto LABEL_16;
  }

LABEL_17:
  v6 = 0xFFFFFFFFLL;
LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t fd_msync(void *a1, size_t a2, int a3, int a4)
{
  if (a4)
  {
    fd_system_status_stall_if_busy();
  }

  return msync(a1, a2, a3);
}

uint64_t ci_preallocate(int a1, uint64_t a2)
{
  if (gDisablePreallocate == 1)
  {
    *__error() = 45;
    return 0xFFFFFFFFLL;
  }

  v3 = a2;
  v7[0] = 0x300000002;
  v7[1] = 0;
  v7[2] = a2;
  v7[3] = 0;
  result = fcntl(a1, 42, v7);
  if (result == -1)
  {
    if (*__error() == 45)
    {
      return 0xFFFFFFFFLL;
    }

    while (v3 >= 419430401)
    {
      v5 = xmmword_26B7FEDD0;
      v6 = unk_26B7FEDE0;
      result = fcntl(a1, 42, &v5);
      v3 -= 419430400;
      if (result == -1)
      {
        return result;
      }
    }

    v5 = 0x300000004uLL;
    v6 = v3;
    return fcntl(a1, 42, &v5);
  }

  return result;
}

uint64_t prot_error_check()
{
  result = g_prot_error_callback;
  if (g_prot_error_callback)
  {
    return (*(g_prot_error_callback + 16))();
  }

  return result;
}

uint64_t prot_fsync(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    while (1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v4 = fcntl(a1, 85);
      if (v4 != -1)
      {
        v5 = v4;
        goto LABEL_17;
      }

      if (*__error() == 25 || *__error() == 45)
      {
        *__error() = 0;
        v5 = fcntl(a1, 51);
      }

      else
      {
        v5 = 0xFFFFFFFFLL;
      }

      if (v5 != -1)
      {
        break;
      }

      v6 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v7 = __error();
      if (((*(v6 + 16))(v6, a1, *v7, 2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v5 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_13:
    while (1)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v5 = fsync(a1);
      if (v5 != -1)
      {
        break;
      }

      v8 = g_prot_error_callback;
      if (!g_prot_error_callback)
      {
        break;
      }

      v9 = __error();
      if (((*(v8 + 16))(v8, a1, *v9, 3) & 1) == 0)
      {
        v5 = 0xFFFFFFFFLL;
        break;
      }
    }
  }

LABEL_17:
  v10 = *__error();
  v11 = CFAbsoluteTimeGetCurrent();
  bzero(v24, 0x400uLL);
  v12 = *__error();
  v13 = _SILogForLogForCategory(0);
  v14 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v11 - Current;
    v16 = faccurate_realpath(a1, v24);
    v17 = "";
    if (v16)
    {
      v17 = v16;
    }

    v20 = 134218242;
    v21 = v15;
    v22 = 2080;
    v23 = v17;
    _os_log_impl(&dword_26B7AA000, v13, v14, "fsync time %f - %s\n", &v20, 0x16u);
  }

  *__error() = v12;
  *__error() = v10;
  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

ssize_t prot_pread(uint64_t __fd, void *__buf, size_t __nbyte, off_t a4)
{
  do
  {
    v8 = pread(__fd, __buf, __nbyte, a4);
    if (v8 != -1)
    {
      break;
    }

    v9 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v10 = __error();
  }

  while (((*(v9 + 16))(v9, __fd, *v10, 4) & 1) != 0);
  return v8;
}

uint64_t prot_pwrite(uint64_t __fd, char *__buf, size_t __nbyte, off_t a4)
{
  v8 = 0;
  do
  {
    while (1)
    {
      v9 = pwrite(__fd, __buf, __nbyte, a4);
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 += v9;
      v12 = __nbyte > v9;
      __nbyte -= v9;
      if (!v12)
      {
        return v8;
      }

      __buf += v9;
      a4 += v9;
    }

    v10 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v11 = __error();
  }

  while (((*(v10 + 16))(v10, __fd, *v11, 5) & 1) != 0);
  return -1;
}

uint64_t prot_pwrite_guarded(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = 0;
  do
  {
    while (1)
    {
      v10 = guarded_pwrite_np();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 += v10;
      v13 = a4 > v10;
      a4 -= v10;
      if (!v13)
      {
        return v9;
      }

      a3 += v10;
      a5 += v10;
    }

    v11 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v12 = __error();
  }

  while (((*(v11 + 16))(v11, a1, *v12, 5) & 1) != 0);
  return -1;
}

uint64_t prot_write(uint64_t __fd, char *__buf, size_t __nbyte)
{
  v6 = 0;
  do
  {
    while (1)
    {
      v7 = write(__fd, __buf, __nbyte);
      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      v6 += v7;
      v10 = __nbyte > v7;
      __nbyte -= v7;
      if (!v10)
      {
        return v6;
      }

      __buf += v7;
    }

    v8 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v9 = __error();
  }

  while (((*(v8 + 16))(v8, __fd, *v9, 6) & 1) != 0);
  return -1;
}

uint64_t prot_write_guarded(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  do
  {
    while (1)
    {
      v8 = guarded_write_np();
      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 += v8;
      v11 = a4 > v8;
      a4 -= v8;
      if (!v11)
      {
        return v7;
      }

      a3 += v8;
    }

    v9 = g_prot_error_callback;
    if (!g_prot_error_callback)
    {
      break;
    }

    v10 = __error();
  }

  while (((*(v9 + 16))(v9, a1, *v10, 6) & 1) != 0);
  return -1;
}

void *fd_set_error_callback(void *aBlock)
{
  result = g_prot_error_callback;
  if (g_prot_error_callback != aBlock)
  {
    if (g_prot_error_callback)
    {
      _Block_release(g_prot_error_callback);
    }

    result = _Block_copy(aBlock);
    g_prot_error_callback = result;
  }

  return result;
}

uint64_t si_openat_protected(uint64_t a1, const char *a2, int a3, uint64_t a4, int a5)
{
  v13 = 0;
  if ((fd_setDir(a1, &v13) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = open_dprotected_np(a2, a3, a5, 0, a4);
  v10 = *__error();
  v11 = v13;
  MEMORY[0x26D6817B0](v13);
  if ((v11 & 0x80000000) == 0)
  {
    close(v11);
  }

  if (v9 == -1 && v10)
  {
    *__error() = v10;
    return 0xFFFFFFFFLL;
  }

  return v9;
}

uint64_t _fd_ftruncate(uint64_t a1, off_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((gDisablePreallocate & 1) != 0 || (v4 = lseek(a1, 0, 2), v5 = a2 - v4, a2 <= v4) || v5 <= *MEMORY[0x277D85FA0] || (ci_preallocate(a1, v5), prot_pwrite(a1, "", 1uLL, a2 - 1) != 1))
  {
    while (1)
    {
      result = ftruncate(a1, a2);
      if (result != -1)
      {
        break;
      }

      if (*__error() == 22)
      {
        result = ftruncate(a1, a2);
        if (result != -1)
        {
          break;
        }
      }

      v7 = *__error();
      v8 = g_prot_error_callback;
      if (g_prot_error_callback)
      {
        v9 = __error();
        if ((*(v8 + 16))(v8, a1, *v9, 7))
        {
          continue;
        }
      }

      bzero(v20, 0x400uLL);
      v10 = faccurate_realpath(a1, v20);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = "";
        v13[0] = 67109890;
        if (v10)
        {
          v12 = v10;
        }

        v13[1] = a1;
        v14 = 2080;
        v15 = v12;
        v16 = 2048;
        v17 = a2;
        v18 = 1024;
        v19 = v7;
        _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ftruncate(%d %s, %lld) error:%d", v13, 0x22u);
      }

      *__error() = v7;
      result = 0xFFFFFFFFLL;
      break;
    }
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _fd_ftruncate_guarded(uint64_t a1, uint64_t a2, off_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((gDisablePreallocate & 1) != 0 || (v6 = lseek(a1, 0, 2), v7 = a3 - v6, a3 <= v6) || v7 <= *MEMORY[0x277D85FA0] || (ci_preallocate(a1, v7), prot_pwrite_guarded(a1, a2, "", 1uLL, a3 - 1) != 1))
  {
    while (1)
    {
      result = ftruncate(a1, a3);
      if (result != -1)
      {
        break;
      }

      if (*__error() == 22)
      {
        result = ftruncate(a1, a3);
        if (result != -1)
        {
          break;
        }
      }

      v9 = *__error();
      v10 = g_prot_error_callback;
      if (g_prot_error_callback)
      {
        v11 = __error();
        if ((*(v10 + 16))(v10, a1, *v11, 7))
        {
          continue;
        }
      }

      bzero(v22, 0x400uLL);
      v12 = faccurate_realpath(a1, v22);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = "";
        v15[0] = 67109890;
        if (v12)
        {
          v14 = v12;
        }

        v15[1] = a1;
        v16 = 2080;
        v17 = v14;
        v18 = 2048;
        v19 = a3;
        v20 = 1024;
        v21 = v9;
        _os_log_error_impl(&dword_26B7AA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ftruncate(%d %s, %lld) error:%d", v15, 0x22u);
      }

      *__error() = v9;
      result = 0xFFFFFFFFLL;
      break;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void fd_system_status_stall_if_busy()
{
  if (_gSystemStatusBool == 1)
  {
    pthread_mutex_lock(&_gSystemStatusLock);
    if (_gSystemStatusBool == 1)
    {
      do
      {
        pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
      }

      while ((_gSystemStatusBool & 1) != 0);
    }

    pthread_mutex_unlock(&_gSystemStatusLock);
  }
}

void fd_system_status_set_busy(char a1)
{
  pthread_mutex_lock(&_gSystemStatusLock);
  _gSystemStatusBool = a1;
  __dmb(0xBu);
  pthread_cond_broadcast(&_gSystemStatusCond);
  pthread_mutex_unlock(&_gSystemStatusLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    fd_system_status_set_busy_cold_1(a1);
  }
}

uint64_t rename_prefix(int a1, const char *a2, const char *a3, const char *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x400uLL);
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a3, a4);
  snprintf(v11, 0x400uLL, "%s%s", a2, a4);
  result = renameatx_np(a1, v11, a1, __str, 0x10u);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cleanup_prefix(int a1, const char *a2, const char *a3, const char *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s%s", a3, a4);
  x_unlinkat(a1, __str, 2048);
  snprintf(__str, 0x400uLL, "%s%s", a2, a4);
  result = x_unlinkat(a1, __str, 2048);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 SITokenInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      result = *(*(a2 + 24) + 16 * a3);
      v4 = (a1 + 40 * a3);
      *v4 = result;
      v4[1].n128_u64[0] = 0;
      v4[1].n128_u64[1] = 0;
      v4[2].n128_u8[0] = 0;
    }
  }

  return result;
}

uint64_t SITextTokenizerEnumerateTokensInString(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    return 0;
  }

  v9 = Length;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 1;
  if (getTaggerQueue(void)::onceTaggerQueueToken != -1)
  {
    SITextTokenizerEnumerateTokensInString_cold_1();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = __SITextTokenizerEnumerateTokensInString_block_invoke;
  v12[3] = &unk_279D03138;
  v12[6] = v9;
  v12[7] = theString;
  v12[8] = a1;
  v12[9] = a3;
  v12[4] = a4;
  v12[5] = &v13;
  dispatch_sync(getTaggerQueue(void)::gTaggerQueue, v12);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __SITextTokenizerEnumerateTokensInString_block_invoke(void *a1)
{
  if (getTagger(void)::onceTaggerQueueToken != -1)
  {
    __SITextTokenizerEnumerateTokensInString_block_invoke_cold_1();
  }

  v3 = a1[6];
  v2 = a1[7];
  NLTaggerSetString();
  if (a1[8])
  {
    NLTaggerSetLocaleForRange();
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v18[3] = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v17[3] = a1[9];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3802000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v16 = xmmword_26B7FEE00;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3802000000;
  v14[3] = __Block_byref_object_copy_;
  v14[5] = 0;
  v14[6] = 0;
  v14[4] = __Block_byref_object_dispose_;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3802000000;
  v13[3] = __Block_byref_object_copy_;
  v13[5] = 0;
  v13[6] = 0;
  v13[4] = __Block_byref_object_dispose_;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 0;
  v6 = a1[7];
  v5 = a1[5];
  v4 = a1[4];
  NLTaggerEnumerateTokens();
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
}

void sub_26B7CE834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 208), 8);
  _Block_object_dispose((v40 - 152), 8);
  _Block_object_dispose((v40 - 96), 8);
  _Block_object_dispose((v40 - 64), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __SITextTokenizerEnumerateTokensInString_block_invoke_1(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v39[0] = a3;
  v3 = a2;
  v74 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = &v70;
  v72 = 0x2000000000;
  v73 = 0;
  v39[1] = v45;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  v40 = a2;
  do
  {
    if (v6 == -1 || (v7 = *(v5 + 48) + v6, v7 < *v3))
    {
      *(v5 + 40) = *v3;
      v7 = *(*(*(a1 + 40) + 8) + 48) + *(*(*(a1 + 40) + 8) + 40);
    }

    v41 = v39;
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = v7 - v8;
    if (v9 >= *(*(*(a1 + 56) + 8) + 24))
    {
      v10 = *(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      v10 = v9;
    }

    v11 = *(a1 + 112) - v8 + *(a1 + 120);
    v42 = v10;
    if (2 * v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2 * v10;
    }

    MEMORY[0x28223BE20]();
    v14 = &v39[-2 * v13];
    bzero(v14, v15);
    v16 = *(a1 + 56);
    v17 = *(*(v16 + 8) + 24);
    MEMORY[0x28223BE20]();
    v19 = &v39[-2 * v18];
    bzero(v19, v20);
    v21 = *(*(v16 + 8) + 24);
    MEMORY[0x28223BE20]();
    v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v23, v22);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v12, 0x8000100u);
    v25 = MEMORY[0x28223BE20]();
    v26 = v39 - ((v25 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v26, v25 + 1);
    MEMORY[0x28223BE20]();
    v28 = v39 - ((v27 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v28, v27 + 2);
    v75.location = v8;
    v75.length = v12;
    CFStringGetCharacters(*(a1 + 128), v75, v28);
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2000000000;
    v69[3] = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2000000000;
    v68[3] = v14;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2000000000;
    v67[3] = v19;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2000000000;
    v66[3] = v23;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2000000000;
    v65[3] = v26;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2000000000;
    v64[3] = v28;
    *(v71 + 24) = 0;
    v43 = MEMORY[0x277D85DD0];
    v44 = 0x40000000;
    v45[0] = __SITextTokenizerEnumerateTokensInString_block_invoke_2;
    v45[1] = &unk_279D030E8;
    v30 = *(a1 + 128);
    v29 = *(a1 + 136);
    v46 = *(a1 + 64);
    v58 = v30;
    v59 = v8;
    v31 = *(a1 + 32);
    v47 = *(a1 + 40);
    v48 = v67;
    v49 = v69;
    v50 = v66;
    v51 = *(a1 + 80);
    v52 = v65;
    v53 = v68;
    v54 = v64;
    v60 = v42;
    v61 = MaximumSizeForEncoding;
    v45[2] = v31;
    v45[3] = &v70;
    v55 = *(a1 + 88);
    v3 = v40;
    v32 = *v40;
    v63 = *(v40 + 2);
    v62 = v32;
    v33 = *(a1 + 48);
    v56 = *(a1 + 104);
    v57 = v33;
    NLTaggerEnumerateTokens();
    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v66, 8);
    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v68, 8);
    _Block_object_dispose(v69, 8);
    v34 = *(*(a1 + 48) + 8);
    v35 = *(v34 + 24);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    v36 = *(v5 + 48) + v6;
    v37 = *(*(*(a1 + 96) + 8) + 24);
    if (v35 >= v36)
    {
      break;
    }

    if (*(*(*(a1 + 96) + 8) + 24))
    {
      goto LABEL_17;
    }
  }

  while (*(*(*(a1 + 88) + 8) + 24) && (v71[3] & 1) != 0);
  if ((*(*(*(a1 + 96) + 8) + 24) & 1) != 0 || !*(*(*(a1 + 88) + 8) + 24))
  {
LABEL_17:
    *v39[0] = 0;
    v34 = *(*(a1 + 48) + 8);
    v35 = *(v34 + 24);
    v36 = *(*(*(a1 + 40) + 8) + 48) + *(*(*(a1 + 40) + 8) + 40);
  }

  if (v35 < v36 && (*(*(*(a1 + 96) + 8) + 24) & 1) == 0 && *(*(*(a1 + 88) + 8) + 24) && (v71[3] & 1) == 0)
  {
    *(v34 + 24) = v36;
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  *(*(*(a1 + 40) + 8) + 40) = xmmword_26B7FEE00;
  _Block_object_dispose(&v70, 8);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_26B7CED70(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 + 256), 8);
  _Block_object_dispose((v1 + 288), 8);
  _Block_object_dispose((v1 + 320), 8);
  _Block_object_dispose((v2 - 240), 8);
  _Block_object_dispose((v2 - 208), 8);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t ___ZL14getTaggerQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.SITextTokenizer.Tokenize", 0);
  getTaggerQueue(void)::gTaggerQueue = result;
  return result;
}

void ___ZL9getTaggerv_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277D003A8];
  v0 = CFArrayCreate(*MEMORY[0x277CBECE8], v3, 1, MEMORY[0x277CBF128]);
  if (v0)
  {
    v1 = v0;
    getTagger(void)::gTagger = NLTaggerCreate();
    CFRelease(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t SIGetResourceRootURLsForLocaleOfType(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (getAssetResourceManager_assetsAvailableOnceToken != -1)
    {
      SIGetResourceRootURLsForLocaleOfType_cold_1();
    }

    if (getAssetResourceManager_gResourceManager)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2000000000;
      v11 = 0;
      v5 = *(getAssetResourceManager_gResourceManager + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __SIAssetManagerGetResourceRootURLsForLocaleOfType_block_invoke;
      block[3] = &unk_279D031F0;
      block[5] = a1;
      block[6] = a2;
      block[4] = &v8;
      dispatch_sync(v5, block);
      v2 = v9[3];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t SIGetResourceURLsForLocaleOfType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    if (getAssetResourceManager_assetsAvailableOnceToken != -1)
    {
      SIGetResourceRootURLsForLocaleOfType_cold_1();
    }

    if (getAssetResourceManager_gResourceManager)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 0;
      v9 = *(getAssetResourceManager_gResourceManager + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __SIAssetManagerGetResourceURLsForLocaleOfType_block_invoke;
      block[3] = &unk_279D032E8;
      block[4] = &v12;
      block[5] = a1;
      block[6] = a2;
      block[7] = a3;
      block[8] = a4;
      dispatch_sync(v9, block);
      v4 = v13[3];
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void __SIAssetManagerGetResourceRootURLsForLocaleOfType_block_invoke(uint64_t a1)
{
  Value = CFLocaleGetValue(*(a1 + 40), *MEMORY[0x277CBEED0]);
  v3 = CFLocaleCopyNormalizedLocaleIdentifier(*(a1 + 40), 0);
  if (v3)
  {
    v4 = v3;
    if (getAssetResourceRoots_resourceRootsOnceToken != -1)
    {
      __SIAssetManagerGetResourceRootURLsForLocaleOfType_block_invoke_cold_1();
    }

    v5 = getAssetResourceRoots_gAssetResourceRoots;
    v6 = gHasUpdatedAssetResources;
    if (!CFDictionaryContainsKey(getAssetResourceRoots_gAssetResourceRoots, v4))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v5, v4, Mutable);
      CFRelease(Mutable);
    }

    v8 = CFDictionaryGetValue(v5, v4);
    if (!CFDictionaryContainsKey(v8, *(a1 + 48)))
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      CFDictionarySetValue(v8, *(a1 + 48), *(*(*(a1 + 32) + 8) + 24));
      CFRelease(*(*(*(a1 + 32) + 8) + 24));
      v6 = 0;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v8, *(a1 + 48));
    if ((v6 & 1) == 0)
    {
      CFArrayRemoveAllValues(*(*(*(a1 + 32) + 8) + 24));
      v9 = *MEMORY[0x277CBECE8];
      v10 = CFLocaleCreate(*MEMORY[0x277CBECE8], Value);
      if (v10)
      {
        v11 = v10;
        v16 = *(a1 + 32);
        v17 = *(a1 + 48);
        LDEnumerateAssetDataItems();
        CFRelease(v11);
      }

      if (!CFStringsAreEqual(Value, v4))
      {
        v12 = CFLocaleCreate(v9, v4);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 32);
          v15 = *(a1 + 48);
          LDEnumerateAssetDataItems();
          CFRelease(v13);
        }
      }

      gHasUpdatedAssetResources = 1;
    }

    CFRelease(v4);
  }
}

void __SIAssetManagerGetResourceRootURLsForLocaleOfType_block_invoke_2(uint64_t a1, const __CFURL *a2, int a3, uint64_t a4, const __CFString *a5)
{
  if (CFStringsAreEqual(a5, *(a1 + 40)))
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x277CBECE8], a2);
    if (PathComponent)
    {
      v9 = PathComponent;
      v10 = *(*(*(a1 + 32) + 8) + 24);
      v13.length = CFArrayGetCount(v10);
      v13.location = 0;
      if (!CFArrayContainsValue(v10, v13, v9))
      {
        v11 = *(*(*(a1 + 32) + 8) + 24);
        if (a3)
        {
          CFArrayAppendValue(v11, v9);
        }

        else
        {
          CFArrayInsertValueAtIndex(v11, 0, v9);
        }
      }

      CFRelease(v9);
    }
  }
}

void __SIAssetManagerGetResourceRootURLsForLocaleOfType_block_invoke_3(uint64_t a1, const __CFURL *a2, int a3, uint64_t a4, const __CFString *a5)
{
  if (CFStringsAreEqual(a5, *(a1 + 40)))
  {
    PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x277CBECE8], a2);
    if (PathComponent)
    {
      v9 = PathComponent;
      v10 = *(*(*(a1 + 32) + 8) + 24);
      v13.length = CFArrayGetCount(v10);
      v13.location = 0;
      if (!CFArrayContainsValue(v10, v13, v9))
      {
        v11 = *(*(*(a1 + 32) + 8) + 24);
        if (a3)
        {
          CFArrayAppendValue(v11, v9);
        }

        else
        {
          CFArrayInsertValueAtIndex(v11, 0, v9);
        }
      }

      CFRelease(v9);
    }
  }
}

CFMutableDictionaryRef __getAssetResourceRoots_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  getAssetResourceRoots_gAssetResourceRoots = result;
  return result;
}

_DWORD *__getAssetResourceManager_block_invoke()
{
  result = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  v1 = result;
  if (result)
  {
    *result = 0;
    result[1] = 0;
    v2 = dispatch_queue_create("com.apple.SpotlightLinguistics.Resources", 0);
    *(v1 + 8) = v2;
    notify_register_dispatch("com.apple.MobileAsset.LinguisticData.ma.new-asset-installed", v1, v2, &__block_literal_global_12);
    result = notify_register_dispatch("com.apple.MobileAsset.LinguisticData.ma.cached-metadata-updated", (v1 + 4), *(v1 + 8), &__block_literal_global_15_0);
  }

  getAssetResourceManager_gResourceManager = v1;
  return result;
}

void __SIAssetManagerGetResourceURLsForLocaleOfType_block_invoke(uint64_t a1)
{
  Value = CFLocaleGetValue(*(a1 + 40), *MEMORY[0x277CBEED0]);
  v3 = CFLocaleCopyNormalizedLocaleIdentifier(*(a1 + 40), 0);
  if (v3)
  {
    v4 = v3;
    if (getAssetResourcePaths_resourcePathsOnceToken != -1)
    {
      __SIAssetManagerGetResourceURLsForLocaleOfType_block_invoke_cold_1();
    }

    v5 = getAssetResourcePaths_gAssetResourcePaths;
    v6 = gHasUpdatedAssetResources;
    if (!CFDictionaryContainsKey(getAssetResourcePaths_gAssetResourcePaths, v4))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(v5, v4, Mutable);
      CFRelease(Mutable);
    }

    v8 = CFDictionaryGetValue(v5, v4);
    if (!CFDictionaryContainsKey(v8, *(a1 + 48)))
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      CFDictionarySetValue(v8, *(a1 + 48), *(*(*(a1 + 32) + 8) + 24));
      CFRelease(*(*(*(a1 + 32) + 8) + 24));
      v6 = 0;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(v8, *(a1 + 48));
    if ((v6 & 1) == 0)
    {
      CFArrayRemoveAllValues(*(*(*(a1 + 32) + 8) + 24));
      v9 = CFStringsAreEqual(Value, v4);
      v10 = *MEMORY[0x277CBECE8];
      if (!v9)
      {
        v11 = CFLocaleCreate(*MEMORY[0x277CBECE8], v4);
        if (v11)
        {
          v12 = v11;
          v19 = *(a1 + 48);
          v20 = *(a1 + 64);
          v18 = *(a1 + 32);
          LDEnumerateAssetDataItems();
          CFRelease(v12);
        }
      }

      v13 = CFLocaleCreate(v10, Value);
      if (v13)
      {
        v14 = v13;
        v16 = *(a1 + 48);
        v17 = *(a1 + 64);
        v15 = *(a1 + 32);
        LDEnumerateAssetDataItems();
        CFRelease(v14);
      }
    }

    CFRelease(v4);
  }
}

void __SIAssetManagerGetResourceURLsForLocaleOfType_block_invoke_2(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{
  if (CFStringsAreEqual(a5, *(a1 + 40)))
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (PathComponent)
    {
      v8 = PathComponent;
      v9 = *(a1 + 48);
      if (!v9 || CFStringHasPrefix(PathComponent, v9))
      {
        v10 = *(a1 + 56);
        if (!v10 || CFStringHasSuffix(v8, v10))
        {
          v11 = *(*(*(a1 + 32) + 8) + 24);
          v13.length = CFArrayGetCount(v11);
          v13.location = 0;
          if (!CFArrayContainsValue(v11, v13, a2))
          {
            CFArrayInsertValueAtIndex(*(*(*(a1 + 32) + 8) + 24), 0, a2);
          }
        }
      }

      CFRelease(v8);
    }
  }
}

void __SIAssetManagerGetResourceURLsForLocaleOfType_block_invoke_3(uint64_t a1, const __CFURL *a2, uint64_t a3, uint64_t a4, const __CFString *a5)
{
  if (CFStringsAreEqual(a5, *(a1 + 40)))
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    if (PathComponent)
    {
      v8 = PathComponent;
      v9 = *(a1 + 48);
      if (!v9 || CFStringHasPrefix(PathComponent, v9))
      {
        v10 = *(a1 + 56);
        if (!v10 || CFStringHasSuffix(v8, v10))
        {
          v11 = *(*(*(a1 + 32) + 8) + 24);
          v13.length = CFArrayGetCount(v11);
          v13.location = 0;
          if (!CFArrayContainsValue(v11, v13, a2))
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), a2);
          }
        }
      }

      CFRelease(v8);
    }
  }
}

CFMutableDictionaryRef __getAssetResourcePaths_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  getAssetResourcePaths_gAssetResourcePaths = result;
  return result;
}

unsigned int *SILocalizationCreateWithOptions(const __CFDictionary *a1)
{
  v2 = malloc_type_malloc(8uLL, 0x100004090D0E795uLL);
  if (v2)
  {
    Value = *MEMORY[0x277CBED10];
    if (a1)
    {
      v4 = @"forceLoad";
      if (CFDictionaryContainsKey(a1, @"forceLoad") || (v4 = @"forTesting", CFDictionaryContainsKey(a1, @"forTesting")))
      {
        Value = CFDictionaryGetValue(a1, v4);
      }
    }

    *(v2 + 4) = Value == *MEMORY[0x277CBED28];
    atomic_store(0, v2);
    atomic_fetch_add(v2, 1u);
  }

  return v2;
}

atomic_uint *SILocalizationRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

void SILocalizationLoad(uint64_t a1, const __CFLocale *a2, uint64_t a3)
{
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  if (SILocalizationLoad::onceToken != -1)
  {
    SILocalizationLoad_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    LanguageID = 0u;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  LanguageID = SILanguagesGetLanguageID(a2);
LABEL_6:
  v7 = atomic_load(&sLocalizationLoaded[LanguageID]);
  if ((v7 & 1) == 0)
  {
    v10 = LanguageID;
    atomic_store(1u, &sLocalizationLoaded[LanguageID]);
    if (LanguageID >= 2 && LanguageID < 59)
    {
      if (getMainBundle(void)::onceToken != -1)
      {
        SILocalizationLoad_cold_2();
      }

      if (!getMainBundle(void)::gMainBundle)
      {
        if (getFallbackBundle(void)::onceToken != -1)
        {
          SILocalizationLoad_cold_3();
        }

        if (!getFallbackBundle(void)::gFallbackBundle)
        {
          goto LABEL_85;
        }
      }

      LODWORD(userInfoKeys[0]) = -1;
      v41 = -1;
      LODWORD(userInfoValues) = -1;
      v40 = 0;
      MEMORY[0x26D680710](a2);
      if (!CFBundleGetLocalizationInfoForLocalization())
      {
        goto LABEL_85;
      }

      v11 = CFBundleCopyLocalizationForLocalizationInfo();
      if (!v11)
      {
        v20 = 0;
        goto LABEL_49;
      }

      v12 = v11;
      if (getMainBundle(void)::onceToken != -1)
      {
        SILocalizationLoad_cold_4();
      }

      if (getMainBundle(void)::gMainBundle)
      {
        v13 = CFBundleCopyLocalizedStringTableForLocalization();
        if (v13)
        {
          v14 = v13;
          if (CFDictionaryGetCount(v13))
          {
            goto LABEL_33;
          }

          CFRelease(v14);
        }
      }

      if (getFallbackBundle(void)::onceToken != -1)
      {
        SILocalizationLoad_cold_5();
      }

      if (getFallbackBundle(void)::gFallbackBundle)
      {
        v15 = CFBundleCopyLocalizedStringTableForLocalization();
        v14 = v15;
        if (!v15 || CFDictionaryGetCount(v15))
        {
LABEL_33:
          v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-filters", v12);
          if (v16)
          {
            v17 = v16;
            if (getMainBundle(void)::onceToken != -1)
            {
              SILocalizationLoad_cold_4();
            }

            if (!getMainBundle(void)::gMainBundle || (v18 = CFBundleCopyResourceURLForLocalization(getMainBundle(void)::gMainBundle, v17, @"dat", 0, v12)) == 0 || (v19 = v18, v20 = SIGeneralTrieCreateFromFileURL(v18), CFRelease(v19), !v20))
            {
              if (getFallbackBundle(void)::onceToken != -1)
              {
                SILocalizationLoad_cold_5();
              }

              if (getFallbackBundle(void)::gFallbackBundle && (v21 = CFBundleCopyResourceURLForLocalization(getFallbackBundle(void)::gFallbackBundle, v17, @"dat", 0, v12)) != 0)
              {
                v22 = v21;
                v20 = SIGeneralTrieCreateFromFileURL(v21);
                CFRelease(v22);
              }

              else
              {
                v20 = 0;
              }
            }

            CFRelease(v17);
          }

          else
          {
            v20 = 0;
          }

          CFRelease(v12);
          if (v14)
          {
            goto LABEL_79;
          }

LABEL_49:
          v23 = CFBundleCopyLocalizationForLocalizationInfo();
          if (!v23)
          {
LABEL_83:
            if (v20)
            {
              SIGeneralTrieRelease(v20);
            }

LABEL_85:
            v33 = *MEMORY[0x277CBECE8];
            v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SILocalization: could not load locale (%@)", a2);
            userInfoKeys[0] = *MEMORY[0x277CBEE30];
            userInfoValues = v34;
            v35 = CFErrorCreateWithUserInfoKeysAndValues(v33, @"SpotlightLinguisticsErrorDomain", 1, userInfoKeys, &userInfoValues, 1);
            (*(a3 + 16))(a3, v35);
            CFRelease(v34);
            CFRelease(v35);
LABEL_86:
            v36 = *MEMORY[0x277D85DE8];
            return;
          }

          v24 = v23;
          if (getMainBundle(void)::onceToken != -1)
          {
            SILocalizationLoad_cold_4();
          }

          if (getMainBundle(void)::gMainBundle)
          {
            v25 = CFBundleCopyLocalizedStringTableForLocalization();
            if (v25)
            {
              v14 = v25;
              if (CFDictionaryGetCount(v25))
              {
                goto LABEL_63;
              }

              CFRelease(v14);
            }
          }

          if (getFallbackBundle(void)::onceToken != -1)
          {
            SILocalizationLoad_cold_5();
          }

          if (getFallbackBundle(void)::gFallbackBundle)
          {
            v26 = CFBundleCopyLocalizedStringTableForLocalization();
            v14 = v26;
            if (!v26 || CFDictionaryGetCount(v26))
            {
LABEL_63:
              if (!v20)
              {
                v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@-filters", v24);
                if (v27)
                {
                  v28 = v27;
                  if (getMainBundle(void)::onceToken != -1)
                  {
                    SILocalizationLoad_cold_4();
                  }

                  if (!getMainBundle(void)::gMainBundle || (v29 = CFBundleCopyResourceURLForLocalization(getMainBundle(void)::gMainBundle, v28, @"dat", 0, v24)) == 0 || (v30 = v29, v20 = SIGeneralTrieCreateFromFileURL(v29), CFRelease(v30), !v20))
                  {
                    if (getFallbackBundle(void)::onceToken != -1)
                    {
                      SILocalizationLoad_cold_5();
                    }

                    if (getFallbackBundle(void)::gFallbackBundle && (v31 = CFBundleCopyResourceURLForLocalization(getFallbackBundle(void)::gFallbackBundle, v28, @"dat", 0, v24)) != 0)
                    {
                      v32 = v31;
                      v20 = SIGeneralTrieCreateFromFileURL(v31);
                      CFRelease(v32);
                    }

                    else
                    {
                      v20 = 0;
                    }
                  }

                  CFRelease(v28);
                }

                else
                {
                  v20 = 0;
                }
              }

              CFRelease(v24);
              if (v14)
              {
LABEL_79:
                if (v20)
                {
                  sLocalizationFilters[v10] = v20;
                }

                if (*(a1 + 4))
                {
                  update(a2, v14);
                  CFRelease(v14);
                  (*(a3 + 16))(a3, 0);
                }

                else
                {
                  v37 = dispatch_group_create();
                  dispatch_group_enter(v37);
                  CFRetain(a2);
                  if (getLocalizationQueue(void)::onceLocQueueToken != -1)
                  {
                    SILocalizationLoad_cold_12();
                  }

                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 0x40000000;
                  block[2] = __SILocalizationLoad_block_invoke_2;
                  block[3] = &__block_descriptor_tmp_14;
                  block[4] = a2;
                  block[5] = v14;
                  block[6] = v37;
                  dispatch_async(getLocalizationQueue(void)::gLocQueue, block);
                  if (getRefreshQueue(void)::onceRefQueueToken != -1)
                  {
                    SILocalizationLoad_cold_13();
                  }

                  v38[0] = MEMORY[0x277D85DD0];
                  v38[1] = 0x40000000;
                  v38[2] = __SILocalizationLoad_block_invoke_3;
                  v38[3] = &unk_279D03370;
                  v38[4] = a3;
                  v38[5] = v37;
                  dispatch_group_notify(v37, getRefreshQueue(void)::gRefQueue, v38);
                }

                goto LABEL_86;
              }

              goto LABEL_83;
            }

            CFRelease(v14);
          }

          v14 = 0;
          goto LABEL_63;
        }

        CFRelease(v14);
      }

      v14 = 0;
      goto LABEL_33;
    }
  }

  v8 = *(a3 + 16);
  v9 = *MEMORY[0x277D85DE8];

  v8(a3, 0);
}

void __SILocalizationLoad_block_invoke()
{
  OptionsDictionary = SIGeneralTrieCreateOptionsDictionary(2, 64, 0, 0, 0);
  sDynamicCache = SIGeneralTrieCreateMutableWithDictionary(OptionsDictionary);
  if (OptionsDictionary)
  {

    CFRelease(OptionsDictionary);
  }
}

void update(const __CFLocale *a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      LanguageID = SILanguagesGetLanguageID(a1);
      alloc = *MEMORY[0x277CBECE8];
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      v5 = 0;
      v16 = v2;
      do
      {
        v6 = gSuggestionsAcceptRejectLists[v5];
        if (CFStringHasPrefix(v6, @"REJECT"))
        {
          v7 = 0;
          v8 = 1;
        }

        else if (CFStringHasPrefix(v6, @"ACCEPT"))
        {
          v7 = 0;
          v8 = 3;
        }

        else if (CFStringHasPrefix(v6, @"FILLER"))
        {
          v7 = 0;
          v8 = 2;
        }

        else
        {
          if (!CFStringHasPrefix(v6, @"STOPWORDS"))
          {
            break;
          }

          v8 = 5;
          v7 = 1;
        }

        Value = CFDictionaryGetValue(v2, v6);
        if (Value)
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, Value, @" | ");
          if (ArrayBySeparatingStrings)
          {
            v11 = ArrayBySeparatingStrings;
            Count = CFArrayGetCount(ArrayBySeparatingStrings);
            if (Count >= 1)
            {
              v13 = Count;
              for (i = 0; i != v13; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
                if (CFStringGetLength(ValueAtIndex))
                {
                  v19.length = CFStringGetLength(Mutable);
                  v19.location = 0;
                  CFStringReplace(Mutable, v19, &stru_287C3FA80);
                  CFStringAppendFormat(Mutable, 0, @"%d:%@", LanguageID, ValueAtIndex);
                  if (v7)
                  {
                    v20.length = CFStringGetLength(Mutable);
                    v20.location = 0;
                    CFStringFindAndReplace(Mutable, @"’", @"'", v20, 0);
                  }

                  CFStringNormalize(Mutable, kCFStringNormalizationFormD);
                  addTerm(v8, Mutable);
                  CFStringNormalize(Mutable, kCFStringNormalizationFormC);
                  addTerm(v8, Mutable);
                }
              }
            }

            CFRelease(v11);
            v2 = v16;
          }
        }

        ++v5;
      }

      while (v5 != 16);

      CFRelease(Mutable);
    }
  }
}

void __SILocalizationLoad_block_invoke_2(uint64_t a1)
{
  update(*(a1 + 32), *(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __SILocalizationLoad_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_release(v2);
}

void SILocalizationRefresh(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v17 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    MEMORY[0x28223BE20]();
    v7 = (&block[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, v6);
    v23.location = 0;
    v23.length = Count;
    CFArrayGetValues(theArray, v23, v7);
  }

  else
  {
    Count = 0;
    v7 = &v21;
  }

  v8 = dispatch_group_create();
  v9 = malloc_type_calloc(0x3BuLL, 1uLL, 0x100004077774924uLL);
  v10 = malloc_type_calloc(0x3BuLL, 1uLL, 0x100004077774924uLL);
  if (Count >= 1)
  {
    do
    {
      Locale = *v7;
      v12 = CFGetTypeID(*v7);
      if (v12 != CFLocaleGetTypeID())
      {
        v13 = CFGetTypeID(Locale);
        if (v13 == CFStringGetTypeID())
        {
          LanguageIDForIdentifier = SILanguagesGetLanguageIDForIdentifier(Locale);
          Locale = SILanguagesGetLocale(LanguageIDForIdentifier);
        }

        else
        {
          Locale = 0;
        }
      }

      LanguageID = SILanguagesGetLanguageID(Locale);
      dispatch_group_enter(v8);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = __SILocalizationRefresh_block_invoke;
      v19[3] = &__block_descriptor_tmp_23;
      v20 = LanguageID;
      v19[4] = v9;
      v19[5] = v10;
      v19[6] = v8;
      SILocalizationLoad(a1, Locale, v19);
      ++v7;
      --Count;
    }

    while (Count);
  }

  if (getRefreshQueue(void)::onceRefQueueToken != -1)
  {
    SILocalizationLoad_cold_13();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SILocalizationRefresh_block_invoke_2;
  block[3] = &unk_279D033B8;
  block[4] = v17;
  block[5] = v9;
  block[6] = v10;
  block[7] = v8;
  dispatch_group_notify(v8, getRefreshQueue(void)::gRefQueue, block);
  v16 = *MEMORY[0x277D85DE8];
}

void __SILocalizationRefresh_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  *(*(a1 + 32) + v2) = 1;
  if (a2)
  {
    *(*(a1 + 40) + v2) = 1;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __SILocalizationRefresh_block_invoke_2(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  userInfoKeys[1] = *MEMORY[0x277D85DE8];
  do
  {
    if (*(*(a1 + 40) + v2) == 1)
    {
      v3 |= *(*(a1 + 48) + v2);
    }

    else
    {
      atomic_store(0, &sLocalizationLoaded[v2]);
      sLocalizationFilters[v2] = 0;
    }

    ++v2;
  }

  while (v2 != 59);
  if ((v3 & 1) != 0 && (v4 = *MEMORY[0x277CBECE8], (v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SILocalization: error loading locales")) != 0))
  {
    v6 = v5;
    v7 = *MEMORY[0x277CBEE30];
    userInfoValues = v5;
    userInfoKeys[0] = v7;
    v8 = CFErrorCreateWithUserInfoKeysAndValues(v4, @"SpotlightLinguisticsErrorDomain", 1, userInfoKeys, &userInfoValues, 1);
    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (v8)
  {
    CFRelease(v8);
  }

  free(*(a1 + 40));
  free(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  v9 = *MEMORY[0x277D85DE8];
}

BOOL SILocalizationIsAvailable(uint64_t a1, const __CFLocale *a2)
{
  LanguageID = SILanguagesGetLanguageID(a2);
  if (LanguageID - 59) >= 0xFFFFFFC7 && (v3 = atomic_load(&sLocalizationLoaded[LanguageID]), (v3))
  {
    return sLocalizationFilters[LanguageID] != 0;
  }

  else
  {
    return 0;
  }
}

void SILocalizationRelease(void *a1)
{
  if (a1)
  {
    if (atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
    {
      free(a1);
    }
  }
}

uint64_t SILocalizationGetTokenType(uint64_t a1, const __CFLocale *a2, const char *a3, uint64_t a4, int a5)
{
  result = 0;
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  if (a1 && a2 && a4)
  {
    LanguageID = SILanguagesGetLanguageID(a2);
    v12 = (a4 + snprintf(0, 0, "%d:", LanguageID) + 1);
    MEMORY[0x28223BE20]();
    v14 = &v25[-v13];
    bzero(&v25[-v13], v12 + 1);
    bzero(v14, v12);
    snprintf(v14, v12, "%d:%.*s", LanguageID, a4, a3);
    v15 = strlen(v14);
    v14[v15] = 0;
    os_unfair_lock_lock(&sCacheLock);
    v16 = sDynamicCache;
    if (sDynamicCache)
    {
      v17 = SIGeneralTrieContainsKey(sDynamicCache, v14, v15, &v26, 0);
      os_unfair_lock_unlock(&sCacheLock);
      if (v17)
      {
LABEL_19:
        result = v26;
        goto LABEL_20;
      }
    }

    else
    {
      os_unfair_lock_unlock(&sCacheLock);
    }

    v18 = sLocalizationFilters[LanguageID];
    if (v18 && SIGeneralTrieContainsKey(v18, a3, a4, 0, 0))
    {
      v26 = 6;
    }

    else if (a5)
    {
      if (v16)
      {
        v19 = *MEMORY[0x277CBECE8];
        v20 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v14, v15, 0x8000100u, 0, *MEMORY[0x277CBED00]);
        if (v20)
        {
          v21 = v20;
          MutableCopy = CFStringCreateMutableCopy(v19, 0, v20);
          if (MutableCopy)
          {
            v23 = MutableCopy;
            CFStringLowercase(MutableCopy, a2);
            os_unfair_lock_lock(&sCacheLock);
            if (sDynamicCache)
            {
              SIGeneralTrieContainsStringKey(sDynamicCache, v23, &v26, 0);
            }

            os_unfair_lock_unlock(&sCacheLock);
            CFRelease(v23);
          }

          CFRelease(v21);
        }
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SILocalizationGetTokenTypeInString(uint64_t a1, const __CFLocale *a2, CFStringRef theString, int a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    result = 0;
    v10 = Length;
    v17[0] = Length;
    if (a1 && a2 && Length)
    {
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v12 = MEMORY[0x28223BE20]();
      v14 = v17 - v13;
      bzero(v17 - v13, v12 + 1);
      v18.location = 0;
      v18.length = v10;
      CFStringGetBytes(theString, v18, 0x8000100u, 0x2Du, 0, v14, MaximumSizeForEncoding, v17);
      v15 = v17[0];
      v14[v17[0]] = 0;
      result = SILocalizationGetTokenType(a1, a2, v14, v15, a4);
    }
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

CFBundleRef ___ZL13getMainBundlev_block_invoke()
{
  result = CFBundleGetBundleWithIdentifier(@"com.apple.metadata.SpotlightLinguistics");
  getMainBundle(void)::gMainBundle = result;
  return result;
}

void ___ZL17getFallbackBundlev_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFURLCreateWithString(*MEMORY[0x277CBECE8], @"/System/Library/PrivateFrameworks/SpotlightLinguistics.framework", 0);
  if (v1)
  {
    v2 = v1;
    getFallbackBundle(void)::gFallbackBundle = CFBundleCreate(v0, v1);

    CFRelease(v2);
  }
}

void addTerm(int a1, const __CFString *a2)
{
  if (a2)
  {
    os_unfair_lock_lock(&sCacheLock);
    if (sDynamicCache)
    {
      SIGeneralTrieAddStringKey(sDynamicCache, a2, a1);
    }

    os_unfair_lock_unlock(&sCacheLock);
  }
}

dispatch_queue_t ___ZL20getLocalizationQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.SI.Localization", 0);
  getLocalizationQueue(void)::gLocQueue = result;
  return result;
}

dispatch_queue_t ___ZL15getRefreshQueuev_block_invoke_0()
{
  result = dispatch_queue_create("com.apple.SI.Localization.refresh", 0);
  getRefreshQueue(void)::gRefQueue = result;
  return result;
}

void *SStackCreate(int a1)
{
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *v2 = SQueueCreate(((a1 + 3) & 0xFFFFFFFC) + 8);
  return v2;
}

void SStackDestroy(uint64_t *a1)
{
  SQueueDestroy(*a1);

  free(a1);
}

uint64_t SStackFirst(uint64_t *a1)
{
  v3 = 0;
  v1 = SQueuePeekData(*a1, &v3);
  if (v1)
  {
    return v1 + 4;
  }

  else
  {
    return 0;
  }
}

unsigned int *SStackDropFirst(uint64_t *a1)
{
  v3 = 0;
  result = SQueuePeekData(*a1, &v3);
  if (result)
  {
    return SQueueDropData(*a1, ((*result - 1) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  return result;
}

_DWORD *SStackPushData(uint64_t *a1, size_t a2, const void *a3)
{
  v6 = (a2 + 3) & 0xFFFFFFFC;
  v7 = SQueueOpenPushData(*a1, v6 + 8);
  *v7 = a2 + 4;
  v8 = v7 + 1;
  if (a3)
  {
    memcpy(v7 + 1, a3, a2);
  }

  *(v8 + v6) = 0;
  SQueueClosePushData(*a1, v6 + 4);
  return v8;
}

_DWORD *SStackNextData(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + (((*(a2 - 4) - 4) + 3) & 0x1FFFFFFFCLL));
  if (*v4)
  {
    return v4 + 1;
  }

  v7[1] = v2;
  v7[2] = v3;
  v7[0] = 0;
  v6 = SQueueAvailableDataAfterOffset(*a1, v4, v7, 0);
  if (v6)
  {
    return (v6 + 4);
  }

  else
  {
    return 0;
  }
}

void *SStackPopBack(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = (*(a2 - 4) - 1) & 0xFFFFFFFFFFFFFFFCLL;
    result = SQueuePopBack(*result, a2 + v3);
    *(a2 + v3) = 0;
  }

  return result;
}

void _log_fault_for_malloc_failure()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    _log_fault_for_malloc_failure_cold_1();
  }
}

CFAllocatorRef _MDZoneAllocatorCreate(void *a1)
{
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  context.allocate = zone_allocate;
  context.reallocate = zone_reallocate;
  context.deallocate = zone_deallocate;
  context.preferredSize = zone_preferredSize;
  return CFAllocatorCreate(*MEMORY[0x277CBECE8], &context);
}

void query_zone_init()
{
  if (query_zone_init_onceToken != -1)
  {
    query_zone_init_cold_1();
  }
}

CFAllocatorRef __query_zone_init_block_invoke()
{
  queryZone = malloc_create_zone(0x10000uLL, 0);
  malloc_set_zone_name(queryZone, "SIQueryMallocZone");
  context.version = 0;
  context.info = queryZone;
  memset(&context.retain, 0, 24);
  context.allocate = zone_allocate;
  context.reallocate = zone_reallocate;
  context.deallocate = zone_deallocate;
  context.preferredSize = zone_preferredSize;
  result = CFAllocatorCreate(*MEMORY[0x277CBECE8], &context);
  kCIQueryZoneAllocator = result;
  return result;
}

uint64_t traverseCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    a2 += 28;
    v4 = *(v2 + 20);
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return SIGeneralTrieAddKey(a1, a2, v3, v4);
}

uint64_t SIGeneralTrieAddKey(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a3)
    {
      if (a4 && a2 && !*(v4 + 2092))
      {
        v5 = *(v4 + 2080);
        if (v5)
        {
          return 0;
        }

        else
        {
          v6 = 0;
          v8 = 0;
          if (a3 > 0x3FF)
          {
            return v6 != 0;
          }

          if ((v5 & 8) == 0)
          {
            addLevel(v4, (v4 + 8), a2, a3, 0, a4, &v8);
            v6 = v8;
            if (v8 == 2)
            {
              ++*(v4 + 2076);
              v6 = 2;
            }

            return v6 != 0;
          }

          v7 = *(v4 + 2120);
          MDTrieInsert();
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t SITrieCompletionGetCompletion(uint64_t a1)
{
  if (a1)
  {
    return a1 + 28;
  }

  else
  {
    return 0;
  }
}

uint64_t SITrieCompletionGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t SITrieCompletionGetPayload(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t rankedTraverseCallback(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v3 = a2;
    a2 += 28;
    v5 = *(v3 + 20);
    v4 = *(v3 + 24);
    a3.n128_u64[0] = *(v3 + 4);
  }

  else
  {
    v5 = 0;
    v4 = 0;
    a3.n128_u64[0] = 0;
  }

  return SIGeneralTrieAddKeyWithScore(a1, a2, v4, v5, 0, 0, a3);
}

uint64_t SIGeneralTrieAddKeyWithScore(uint64_t result, uint64_t a2, unsigned int a3, int a4, uint64_t a5, void (*a6)(uint64_t, double, double), __n128 a7)
{
  if (result)
  {
    v7 = result;
    if (!*(result + 2092) && (v8 = *(result + 2080), (v8 & 1) != 0))
    {
      result = 0;
      v12 = 0;
      if (a3 - 1 <= 0x3FE && a4)
      {
        if ((v8 & 8) != 0)
        {
          v10 = *(v7 + 2120);
          MDTrieInsert();
          return 1;
        }

        else
        {
          v11 = 0.0;
          addLevelRanked(v7, v7 + 8, a2, a3, 0, a4, &v11, 0, a7, &v12, a5, a6);
          v9 = v12;
          if (v12 == 2)
          {
            ++*(v7 + 2076);
          }

          return v9 != 0;
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

double SITrieCompletionGetScore(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 0.0;
  }
}

CFDictionaryRef SIGeneralTrieCreateOptionsDictionary(int a1, uint64_t a2, const void *a3, int a4, int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  *v17 = a2;
  v24 = 0;
  *keys = 0u;
  v23 = 0u;
  v21 = 0;
  *values = 0u;
  v20 = 0u;
  v9 = keys;
  v10 = values;
  v11 = MEMORY[0x277CBECE8];
  if (a1)
  {
    v9 = &keys[1];
    v10 = &values[1];
    values[0] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    keys[0] = @"trieOptions";
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    *v10 = CFNumberCreate(*v11, kCFNumberCFIndexType, v17);
    ++v12;
    *v9 = @"containerSize";
  }

  if (a3)
  {
    values[v12] = CFRetain(a3);
    keys[v12++] = @"directoryPath";
  }

  v13 = MEMORY[0x277CBED28];
  if (a4)
  {
    values[v12] = CFRetain(*MEMORY[0x277CBED28]);
    keys[v12++] = @"containerSize";
  }

  if (a5)
  {
    values[v12] = CFRetain(*v13);
    keys[v12++] = @"storePayload";
  }

  else if (!v12)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v14 = CFDictionaryCreate(*v11, keys, values, v12, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  do
  {
    CFRelease(*&v17[2 * v12-- + 2]);
  }

  while (v12);
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

char *SIGeneralTrieCreateMutable()
{
  OptionsDictionary = SIGeneralTrieCreateOptionsDictionary(0, 64, 0, 0, 0);
  MutableWithDictionary = SIGeneralTrieCreateMutableWithDictionary(OptionsDictionary);
  if (OptionsDictionary)
  {
    CFRelease(OptionsDictionary);
  }

  return MutableWithDictionary;
}

char *SIGeneralTrieCreateMutableWithDictionary(const __CFDictionary *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = burstTrieCreate();
  v3 = v2;
  if (a1 && v2)
  {
    Value = CFDictionaryGetValue(a1, @"containerSize");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, v3 + 2100);
    }

    v5 = CFDictionaryGetValue(a1, @"trieOptions");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberSInt32Type, v3 + 2080);
    }

    if ((v3[2080] & 8) != 0)
    {
      v6 = CFDictionaryGetValue(a1, @"directoryPath");
      CFDictionaryGetValue(a1, @"readOnly");
      CFDictionaryGetValue(a1, @"storePayload");
      if (v6)
      {
        bzero(buffer, 0x401uLL);
        usedBufLen = 0;
        memset(&v11, 0, sizeof(v11));
        v15.length = CFStringGetLength(v6);
        v15.location = 0;
        CFStringGetBytes(v6, v15, 0x8000100u, 0x2Du, 0, buffer, 1024, &usedBufLen);
        buffer[usedBufLen] = 0;
        if (!stat(buffer, &v11))
        {
          v7 = open(buffer, 0);
          *(v3 + 529) = v7;
          if ((v7 & 0x80000000) == 0)
          {
            v8 = *MEMORY[0x277CBED28];
            *(v3 + 265) = MDTrieCreate();
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

char *burstTrieCreate(void)
{
  result = malloc_type_calloc(1uLL, 0x850uLL, 0x107004066EBE86CuLL);
  if (result)
  {
    *(result + 2076) = 0u;
    atomic_store(0, result);
    atomic_store(atomic_fetch_add(sSharedIndex, 1u), result + 1);
    *(result + 2092) = 0;
    *(result + 525) = 64;
    *(result + 263) = 0x200000000;
    atomic_fetch_add(result, 1u);
  }

  return result;
}

char *SIGeneralTrieCreateMutableWithOptions(int a1, int a2)
{
  result = burstTrieCreate();
  if (result)
  {
    *(result + 520) = a2;
    *(result + 525) = a1;
  }

  return result;
}

char *SIGeneralTrieCreateFromFileURL(const __CFURL *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_14;
  }

  memset(&v12, 0, sizeof(v12));
  v1 = CFURLCopyPath(a1);
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  bzero(buffer, 0x401uLL);
  usedBufLen = 0;
  v15.length = CFStringGetLength(v2);
  v15.location = 0;
  CFStringGetBytes(v2, v15, 0x8000100u, 0x2Du, 0, buffer, 1024, &usedBufLen);
  buffer[usedBufLen] = 0;
  if (stat(buffer, &v12))
  {
LABEL_13:
    CFRelease(v2);
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v3 = open(buffer, 0);
  v4 = v3;
  if (v3 < 0)
  {
    if (v3 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = mmap(0, v12.st_size, 1, 1, v3, 0);
  v6 = v5;
  if (v5 == -1)
  {
    goto LABEL_11;
  }

  v7 = burstTrieCreateWithBytes(v5, 1);
  if (!v7)
  {
    if (!v6)
    {
LABEL_12:
      close(v4);
      goto LABEL_13;
    }

LABEL_11:
    munmap(v6, v12.st_size);
    goto LABEL_12;
  }

  v8 = v7;
  CFRelease(v2);
  close(v4);
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

char *burstTrieCreateWithBytes(char *result, int a2)
{
  if (result)
  {
    v2 = result;
    if (*result == 12648430 || *result == -900339842)
    {
      result = malloc_type_calloc(1uLL, 0x850uLL, 0x107004066EBE86CuLL);
      v5 = v2[3];
      *(result + 2084) = v2[2];
      *(result + 2092) = v2;
      *(result + 519) = v5;
      v6 = v2[4];
      *(result + 520) = v6;
      if (*v2 == -900339842)
      {
        *(result + 520) = v6 | 1;
      }

      *(result + 525) = v2[5];
      *(result + 526) = a2;
      *(result + 527) = 2;
      atomic_store(0, result);
      atomic_store(atomic_fetch_add(sSharedIndex, 1u), result + 1);
      atomic_fetch_add(result, 1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void SIGeneralTrieRelease(char *a1)
{
  if (a1 && atomic_fetch_add(a1, 0xFFFFFFFF) == 1)
  {
    v2 = (a1 + 2084);
    v3 = *(a1 + 2092);
    if (v3)
    {
      if (*(a1 + 526))
      {
        munmap(v3, *v2);
      }
    }

    else if (a1[2080])
    {
      finishLevel<_RankedTrieLevel *,_RankedListNode *>((a1 + 8));
    }

    else
    {
      finishLevel<_TrieLevel *,_ListNode *>((a1 + 8));
    }

    if ((a1[2080] & 8) != 0 && *(a1 + 265))
    {
      MDTrieSync();
      v4 = *(a1 + 265);
      MDTrieClose();
      free(*(a1 + 265));
    }

    free(a1);
  }
}

char *SIGeneralTrieCreateWithFileDescriptors()
{
  v0 = burstTrieCreate();
  *(v0 + 265) = MDTrieOpenReadOnly();
  *(v0 + 520) = 8;
  return v0;
}

uint64_t SIGeneralTrieGetCount(uint64_t a1)
{
  if (a1 && (*(a1 + 2080) & 8) != 0)
  {
    return MEMORY[0x282186088](*(a1 + 2120));
  }

  else
  {
    return *(a1 + 2076);
  }
}

char *SIGeneralTrieCreateMutableCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 2080);
  if ((v2 & 8) != 0)
  {
    return 0;
  }

  OptionsDictionary = SIGeneralTrieCreateOptionsDictionary(v2, *(a1 + 2100), 0, 0, 0);
  MutableWithDictionary = SIGeneralTrieCreateMutableWithDictionary(OptionsDictionary);
  if (OptionsDictionary)
  {
    CFRelease(OptionsDictionary);
  }

  if (*(a1 + 2080))
  {
    v5 = rankedTraverseCallback;
  }

  else
  {
    v5 = traverseCallback;
  }

  SIGeneralTrieSearch(a1, 0, 0, -1, MutableWithDictionary, v5);
  return MutableWithDictionary;
}

void SIGeneralTrieSearch(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if ((*(a1 + 2080) & 8) != 0)
    {
      v13 = *(a1 + 2120);
      v18 = MEMORY[0x277D85DD0];
      v19 = 0x40000000;
      v20 = __SIGeneralTrieSearch_block_invoke;
      v21 = &__block_descriptor_tmp_8;
      v22 = a6;
      v23 = a5;
      MDTrieEnumerateEntry();
    }

    else
    {
      v9 = a3;
      if (a4 < 0)
      {
        v14 = 3;
        v15 = 0;
        v16 = a5;
        v17 = a6;
        searchWithContext(a1, a2, a3, 0, &v14);
      }

      else
      {
        CursorWithBytes = SIGeneralTrieCreateCursorWithBytes(a1, a2, a3);
        if (CursorWithBytes)
        {
          v12 = CursorWithBytes;
          v14 = a2;
          v15 = v9;
          v16 = a5;
          v17 = a6;
          SIGeneralTrieTraverseFromCursor(CursorWithBytes, a4, &v14, searchCallback);
          free(v12);
        }
      }
    }
  }
}

atomic_uint *SIGeneralTrieRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add(result, 1u);
  }

  return result;
}

uint64_t addLevel(uint64_t result, int *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, _DWORD *a7)
{
  v20 = 0;
  if (a5 < a4)
  {
    v9 = result;
    v10 = a2 + 1;
    v11 = (a3 + a5);
    v12 = *&a2[2 * *v11 + 1];
    if ((v12 & 3) == 2)
    {
      v19 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      result = addListNode(result, &v19, a3, a4, a5 + 1, a6, &v20);
      v14 = v19;
      if (result >= *(v9 + 2100))
      {
        result = burstLevel(v9, v19, 0);
        v14 = result;
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      v18 = v15 | v14;
    }

    else
    {
      if ((v12 & 3) == 1)
      {
        result = addLevel(result, v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (!a7)
        {
          return result;
        }

        goto LABEL_10;
      }

      v16 = ~a5 + a4;
      v17 = malloc_type_calloc(1uLL, v16 + 15, 0x1020040D0C9BDDAuLL);
      result = memcpy((v17 + 14), v11 + 1, v16);
      *(v17 + 14 + v16) = 0;
      *(v17 + 12) = v16;
      *(v17 + 8) = a6;
      *v17 = 0;
      v18 = v17 | 2;
      v20 = 2;
    }

    *&v10[2 * *v11] = v18;
    if (!a7)
    {
      return result;
    }

LABEL_10:
    *a7 = v20;
    return result;
  }

  if (*a2)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v20 = v13;
  *a2 = a6;
  if (a7)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t SIGeneralTrieAddStringKey(uint64_t a1, CFStringRef theString, int a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  result = 0;
  if (a3 && a1 && Length && Length <= 1023)
  {
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = MEMORY[0x28223BE20]();
    v11 = v14 - v10;
    bzero(v14 - v10, v9 + 1);
    v14[0] = 0;
    v15.location = 0;
    v15.length = Length;
    if (CFStringGetBytes(theString, v15, 0x8000100u, 0x2Du, 0, v11, MaximumSizeForEncoding, v14) == Length)
    {
      v12 = v14[0];
      v11[v14[0]] = 0;
      result = SIGeneralTrieAddKey(a1, v11, v12, a3);
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (result)
      {
        SIGeneralTrieAddStringKey_cold_1(v14);
        result = 0;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void addLevelRanked(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, double *a7, uint64_t a8, __n128 a9, _DWORD *a10, uint64_t a11, void (*a12)(uint64_t, double, double))
{
  v14 = a9.n128_f64[0];
  v29 = 0;
  if (a5 >= a4)
  {
    if (*(a2 + 16))
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    v29 = v20;
    *(a2 + 16) = a6;
    if (a12 || (a8 & 1) == 0)
    {
      v21 = *(a2 + 8);
      if (a12)
      {
        v14 = (a12)(a11, v21, v14);
      }

      else
      {
        v14 = v21 + v14;
      }
    }

    *(a2 + 8) = v14;
    *a7 = v14;
  }

  else
  {
    v18 = (a3 + a5);
    v19 = *(a2 + 20 + 8 * *v18);
    if ((v19 & 3) == 2)
    {
      v28 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      v22 = addListNodeRanked(a1, &v28, a3, a4, a5 + 1, a6, a7, a8, a9.n128_f64[0], &v29, a11, a12);
      v23 = v28;
      if (v22 >= *(a1 + 2100))
      {
        v23 = burstLevelRanked(a1, v28, a7, a8, &v29);
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v27 = v24 | v23;
    }

    else
    {
      if ((v19 & 3) == 1)
      {
        addLevelRanked(a1, v19 & 0xFFFFFFFFFFFFFFFCLL, a9);
        goto LABEL_20;
      }

      *a7 = a9.n128_f64[0];
      v25 = ~a5 + a4;
      v26 = malloc_type_calloc(1uLL, v25 + 31, 0x10200404094906EuLL);
      memcpy((v26 + 30), v18 + 1, v25);
      *(v26 + 30 + v25) = 0;
      *(v26 + 28) = v25;
      *(v26 + 24) = a6;
      *(v26 + 8) = v14;
      *(v26 + 16) = v14;
      *v26 = 0;
      v27 = v26 | 2;
      v29 = 2;
    }

    *(a2 + 20 + 8 * *v18) = v27;
  }

LABEL_20:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }

  if (a10)
  {
    *a10 = v29;
  }
}

uint64_t SIGeneralTrieAddStringKeyWithScore(uint64_t a1, CFStringRef theString, int a3, uint64_t a4, void (*a5)(uint64_t, double, double), double a6)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  result = 0;
  if (a3 && a1 && Length && Length <= 1023)
  {
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v15 = MEMORY[0x28223BE20]();
    v17 = v21 - v16;
    bzero(v21 - v16, v15 + 1);
    v21[0] = 0;
    v22.location = 0;
    v22.length = Length;
    if (CFStringGetBytes(theString, v22, 0x8000100u, 0x2Du, 0, v17, MaximumSizeForEncoding, v21) == Length)
    {
      v19 = v21[0];
      v17[v21[0]] = 0;
      v18.n128_f64[0] = a6;
      result = SIGeneralTrieAddKeyWithScore(a1, v17, v19, a3, a4, a5, v18);
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (result)
      {
        SIGeneralTrieAddStringKey_cold_1(v21);
        result = 0;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIGeneralTrieSetKeyWithScore(uint64_t result, uint64_t a2, unsigned int a3, int a4, __n128 a5)
{
  if (result)
  {
    v5 = result;
    if (!*(result + 2092) && (v6 = *(result + 2080), (v6 & 1) != 0))
    {
      result = 0;
      v10 = 0;
      if (a3 - 1 <= 0x3FE && a4)
      {
        if ((v6 & 8) != 0)
        {
          v8 = *(v5 + 2120);
          MDTrieInsert();
          return 1;
        }

        else
        {
          v9 = 0.0;
          addLevelRanked(v5, v5 + 8, a2, a3, 0, a4, &v9, 1, a5, &v10, 0, 0);
          v7 = v10;
          if (v10 == 2)
          {
            ++*(v5 + 2076);
          }

          return v7 != 0;
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

uint64_t SIGeneralTrieSetStringKeyWithScore(uint64_t a1, CFStringRef theString, int a3, double a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
  }

  else
  {
    Length = 0;
  }

  result = 0;
  if (a3 && a1 && Length && Length <= 1023)
  {
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v11 = MEMORY[0x28223BE20]();
    v13 = v17 - v12;
    bzero(v17 - v12, v11 + 1);
    v17[0] = 0;
    v18.location = 0;
    v18.length = Length;
    if (CFStringGetBytes(theString, v18, 0x8000100u, 0x2Du, 0, v13, MaximumSizeForEncoding, v17) == Length)
    {
      v15 = v17[0];
      v13[v17[0]] = 0;
      v14.n128_f64[0] = a4;
      result = SIGeneralTrieSetKeyWithScore(a1, v13, v15, a3, v14);
    }

    else
    {
      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (result)
      {
        SIGeneralTrieAddStringKey_cold_1(v17);
        result = 0;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

int *SITrieCompletionRetain(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    do
    {
      v5 = v2;
      v3 = __atomic_compare_exchange();
      v2 = v5;
    }

    while (!v3);
  }

  return a1;
}

int *trieCompletionRetain(const __CFAllocator *a1, int *a2)
{
  if (a2)
  {
    v3 = *a2;
    do
    {
      v6 = v3;
      v4 = __atomic_compare_exchange();
      v3 = v6;
    }

    while (!v4);
  }

  return a2;
}

void SITrieCompletionRelease(const __CFAllocator *a1)
{
  if (a1)
  {
    trieCompletionRelease(a1, a1);
  }
}

void trieCompletionRelease(const __CFAllocator *a1, int *a2)
{
  if (a2)
  {
    v3 = *a2;
    do
    {
      v6 = v3;
      v4 = __atomic_compare_exchange();
      v3 = v6;
    }

    while (!v4);
    __atomic_load();
    if (!v5)
    {
      free(a2);
    }
  }
}

uint64_t SIGeneralTrieContainsKey(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, void **a5)
{
  if (!a3)
  {
    return 0;
  }

  if ((*(a1 + 2080) & 8) != 0)
  {
    v10[0] = 0;
    v10[1] = 0;
    *&v11 = 0;
    v8 = *(a1 + 2120);
    return MDTrieSearch();
  }

  *v10 = 0u;
  v11 = 0u;
  searchWithContext(a1, a2, a3, 1, v10);
  if (!HIDWORD(v10[0]))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = HIDWORD(v10[0]);
  }

  if (a5)
  {
    *a5 = v10[1];
  }

  return 1;
}

uint64_t searchWithContext(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (a3 <= 0x3FF)
  {
    v9 = result;
    v10 = atomic_load((result + 4));
    v11 = sharedBuffer(v10);
    memcpy(v11, a2, a3);
    *(v11 + a3) = 0;
    v12 = *(v9 + 2092);
    v13 = *(v9 + 2080);
    if (v12)
    {
      v14 = *(v12 + 4) & 0xFFFFFFFC;
      if (v13)
      {
        v15 = v20;
        v20[0] = &unk_287C3EF90;
        v20[1] = containsKey;
        v20[3] = v20;
        searchDiskLevelRanked(v9, v14 + v12, v11, a3, 0, a4, a5, v20);
      }

      else
      {
        v15 = v19;
        v19[0] = &unk_287C3EF90;
        v19[1] = containsKey;
        v19[3] = v19;
        searchDiskLevel(v9, v14 + v12, v11, a3, 0, a4, a5, v19);
      }
    }

    else if (v13)
    {
      v15 = v18;
      v18[0] = &unk_287C3EF90;
      v18[1] = containsKey;
      v18[3] = v18;
      searchLevelRanked(v9 + 8, v11, a3, 0, a4, a5, v18);
    }

    else
    {
      v15 = v17;
      v17[0] = &unk_287C3EF90;
      v17[1] = containsKey;
      v17[3] = v17;
      searchLevel((v9 + 8), v11, a3, 0, a4, a5, v17);
    }

    result = std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26B7D31A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void *,_SITrieCompletion *,BOOL,BOOL *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t SIGeneralTrieContainsStringKey(uint64_t a1, CFStringRef theString, _DWORD *a3, void **a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    result = 0;
    if (a1 && Length && Length <= 1023)
    {
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v11 = MEMORY[0x28223BE20]();
      v13 = v16 - v12;
      bzero(v16 - v12, v11 + 1);
      v16[0] = 0;
      v17.location = 0;
      v17.length = Length;
      if (CFStringGetBytes(theString, v17, 0x8000100u, 0x2Du, 0, v13, MaximumSizeForEncoding, v16) == Length)
      {
        v14 = v16[0];
        v13[v16[0]] = 0;
        result = SIGeneralTrieContainsKey(a1, v13, v14, a3, a4);
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (result)
        {
          SIGeneralTrieAddStringKey_cold_1(v16);
          result = 0;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __SIGeneralTrieSearch_block_invoke(uint64_t a1, const void *a2, unsigned int a3, int a4, uint64_t a5, double a6)
{
  v18[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v13 = v18 - ((v12 + 15) & 0x1FFFFFFF0);
  bzero(v13, v12);
  memcpy(v13, a2, a3);
  v14 = SITrieCompletionCreate(v13, a3, a4, a6);
  v15 = (*(a1 + 32))(*(a1 + 40), v14, a5);
  if (v14)
  {
    v16 = *MEMORY[0x277D85DE8];

    trieCompletionRelease(v15, v14);
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];
  }
}

_DWORD *SITrieCompletionCreate(const unsigned __int8 *a1, unsigned int a2, int a3, double a4)
{
  v8 = a2;
  v9 = malloc_type_malloc(a2 + 29, 0x100004027586B93uLL);
  v10 = v9;
  if (v9)
  {
    v9[6] = a2;
    v11 = v9 + 7;
    v11[v8] = 0;
    memcpy(v11, a1, v8);
    v10[5] = a3;
    *(v10 + 1) = a4;
    __atomic_store();
    v12 = *v10;
    do
    {
      v15 = v12;
      v13 = __atomic_compare_exchange();
      v12 = v15;
    }

    while (!v13);
  }

  return v10;
}

void *SIGeneralTrieCreateCursorWithBytes(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(0x2CuLL, 1uLL, 0x10600407D964A74uLL);
  if (!SIGeneralTrieSetCursorWithBytes(a1, v6, a2, a3, v7, v8, v9, v10) && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

char *SIGeneralTrieTraverseFromCursor(char *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, double))
{
  if (result)
  {
    v7 = result;
    v8 = atomic_load((*(result + 36) + 4));
    result = sharedBuffer(v8);
    v13 = 0;
    v9 = *(v7 + 8);
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = *v7;
        LODWORD(v12) = *(v7 + 4);
        *(&v12 + 4) = *(v7 + 20);
        return traverseFromCompactMapCursor(*(v7 + 36), &v11, result, 0x1000u, 0, &v13, a3, a4);
      }
    }

    else
    {
      v11 = *v7;
      v10 = *(v7 + 3);
      *&v12 = *(v7 + 2);
      *(&v12 + 1) = v10;
      return traverseFromMapCursor(*(v7 + 36), &v11, result, 0, a2, &v13, a3, a4);
    }
  }

  return result;
}

void searchCallback(const void **a1, const unsigned __int8 *a2, unsigned int a3, int a4, double a5, BOOL *a6)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 2);
  v13 = v12 + a3;
  MEMORY[0x28223BE20]();
  v15 = v20 - v14;
  bzero(v20 - v14, v13);
  memcpy(v15, *a1, v12);
  memcpy(&v15[v12], a2, a3);
  v16 = SITrieCompletionCreate(v15, v13, a4, a5);
  v17 = (a1[3])(a1[2], v16, a6);
  if (v16)
  {
    v18 = *MEMORY[0x277D85DE8];

    trieCompletionRelease(v17, v16);
  }

  else
  {
    v19 = *MEMORY[0x277D85DE8];
  }
}

void SIGeneralTrieCursorDispose(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void SIGeneralTrieSearchString(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a1)
    {
      v11 = Length;
      if (Length)
      {
        if (Length <= 1023)
        {
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v13 = MEMORY[0x28223BE20]();
          v15 = v18 - v14;
          bzero(v18 - v14, v13 + 1);
          v18[0] = 0;
          v19.location = 0;
          v19.length = v11;
          if (CFStringGetBytes(theString, v19, 0x8000100u, 0x2Du, 0, v15, MaximumSizeForEncoding, v18) == v11)
          {
            v16 = v18[0];
            v15[v18[0]] = 0;
            SIGeneralTrieSearch(a1, v15, v16, a3, a4, a5);
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            SIGeneralTrieAddStringKey_cold_1(v18);
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t enumerateListNode<_ListNode *>(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, double))
{
  *(a2 + a3) = 0;
  v6 = *(a1 + 8);
  return a6(a5, 0.0);
}

uint64_t traverseFromCompactMapCursor(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void, double))
{
  v9 = a5;
  v13 = result;
  v14 = *a2;
  v15 = *a2 & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      v26 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092);
      if ((*(result + 2080) & 1) == 0)
      {
        if (*(v26 + 32) && (*(a3 + a5) = 0, result = (a8)(a7, a3, a5, *(v26 + 32), a6, 0.0), a6))
        {
          if (v9 >= a4 || (*a6 & 1) != 0)
          {
            return result;
          }
        }

        else if (v9 >= a4)
        {
          return result;
        }

        v34 = 0;
        v35 = a4 - 1;
        while (1)
        {
          *(a3 + v9) = v34;
          v36 = *(v26 + 8 * (v34 >> 6));
          if ((v36 & (1 << v34)) == 0)
          {
            goto LABEL_47;
          }

          if (v34 >= 0x40)
          {
            v37 = 0;
            v38 = v34 >> 6;
            v39 = v26;
            do
            {
              v40 = *v39++;
              v41 = vcnt_s8(v40);
              v41.i16[0] = vaddlv_u8(v41);
              v37 += v41.i32[0];
              --v38;
            }

            while (v38);
          }

          else
          {
            v37 = 0;
          }

          v42 = vcnt_s8((v36 & ((1 << v34) - 1)));
          v42.i16[0] = vaddlv_u8(v42);
          *a2 = *(v26 + 36 + 4 * (v37 + v42.i32[0]));
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          result = traverseFromCompactMapCursor(v13, a2, a3, v35, v9 + 1, a6, a7, a8);
          if (a6)
          {
            if (v34 > 0xFE || (*a6 & 1) != 0)
            {
              return result;
            }
          }

          else
          {
LABEL_47:
            if (v34 > 0xFE)
            {
              return result;
            }
          }

          ++v34;
        }
      }

      if (*(v26 + 48) && (*(a3 + a5) = 0, result = (a8)(a7, a3, a5, *(v26 + 48), a6, *(v26 + 40)), a6))
      {
        if (v9 >= a4 || (*a6 & 1) != 0)
        {
          return result;
        }
      }

      else if (v9 >= a4)
      {
        return result;
      }

      v43 = 0;
      v44 = a4 - 1;
      while (1)
      {
        *(a3 + v9) = v43;
        v45 = *(v26 + 8 * (v43 >> 6));
        if ((v45 & (1 << v43)) == 0)
        {
          goto LABEL_60;
        }

        if (v43 >= 0x40)
        {
          v46 = 0;
          v47 = v43 >> 6;
          v48 = v26;
          do
          {
            v49 = *v48++;
            v50 = vcnt_s8(v49);
            v50.i16[0] = vaddlv_u8(v50);
            v46 += v50.i32[0];
            --v47;
          }

          while (v47);
        }

        else
        {
          v46 = 0;
        }

        v51 = vcnt_s8((v45 & ((1 << v43) - 1)));
        v51.i16[0] = vaddlv_u8(v51);
        v52 = *(v26 + 52 + 4 * (v46 + v51.i32[0]));
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = v52;
        *(a2 + 24) = 0;
        result = traverseFromCompactMapCursor(v13, a2, a3, v44, v9 + 1, a6, a7, a8);
        if (a6)
        {
          if (v43 > 0xFE || (*a6 & 1) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_60:
          if (v43 > 0xFE)
          {
            return result;
          }
        }

        ++v43;
      }
    }

    v16 = *(result + 2080);
    v17 = ((v14 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092));
    if (v16)
    {
      v27 = *v17 - 12;
      if (*v17 != 12)
      {
        v28 = 0;
        v29 = v17 + 3;
        do
        {
          v30 = (v29 + v28);
          v31 = *(v30 + 6);
          v32 = *(a2 + 12);
          if (v31 >= v32)
          {
            v33 = v31 - v32;
            memcpy((a3 + v9), v30 + v32 + 14, v31 - v32);
            *(a3 + v33 + v9) = 0;
            result = (a8)(a7, a3, *(v30 + 6), *(v30 + 2), a6, *v30);
            LODWORD(v31) = *(v30 + 6);
          }

          v28 += v31 + 14;
        }

        while (v28 < v27);
      }
    }

    else
    {
      v18 = *v17 - 4;
      v19 = *(a2 + 8);
      if ((v16 & 4) != 0)
      {
        if (v19 < v18)
        {
          v53 = v17 + 1;
          do
          {
            v54 = (v53 + v19);
            v55 = *(v54 + 2);
            v56 = *(a2 + 12);
            if (v55 >= v56)
            {
              v58 = v55 - v56;
              memcpy((a3 + v9 + *(v54 + 6)), v54 + v56 + 7, v55 - v56);
              *(a3 + v58 + v9 + *(v54 + 6)) = 0;
              result = (a8)(a7, a3, *(v54 + 2), *v54, a6, 0.0);
              if (a6 && (*a6 & 1) != 0)
              {
                return result;
              }

              v57 = *(v54 + 2) + *(a2 + 8);
            }

            else
            {
              v57 = v19 + v55;
            }

            v19 = v57 + 7;
            *(a2 + 8) = v19;
          }

          while (v19 < v18);
        }
      }

      else if (v19 < v18)
      {
        v20 = v17 + 1;
        do
        {
          v21 = (v20 + v19);
          v22 = *(v21 + 2);
          v23 = *(a2 + 12);
          if (v22 >= v23)
          {
            v25 = v22 - v23;
            memcpy((a3 + v9), v21 + v23 + 6, v22 - v23);
            *(a3 + v25 + v9) = 0;
            result = a8(a7, a3, *(v21 + 2), *v21);
            if (a6 && (*a6 & 1) != 0)
            {
              return result;
            }

            v24 = *(v21 + 2) + *(a2 + 8);
          }

          else
          {
            v24 = v19 + v22;
          }

          v19 = v24 + 6;
          *(a2 + 8) = v19;
        }

        while (v19 < v18);
      }
    }
  }

  else if (v15 || v14 == *(*(result + 2092) + 4))
  {

    return traverseFromCompactMapCursorMappedLevel(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t traverseFromCompactMapCursorMappedLevel(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void, void, _BYTE *, double))
{
  v14 = result;
  v15 = (*a2 & 0xFFFFFFFFFFFFFFFCLL) + *(result + 2092);
  v16 = *(v15 + 1024);
  if ((*(result + 2080) & 1) == 0)
  {
    if (v16 && (*(a3 + a5) = 0, result = a8(a7, a3, 0, *(v15 + 1024), a6, 0.0), a6))
    {
      if (a5 >= a4 || (*a6 & 1) != 0)
      {
        return result;
      }
    }

    else if (a5 >= a4)
    {
      return result;
    }

    for (i = 0; ; ++i)
    {
      *(a3 + a5) = i;
      *a2 = *(v15 + 4 * i);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (i)
      {
        v18 = a5 + 1;
      }

      else
      {
        v18 = a5;
      }

      result = traverseFromCompactMapCursor(v14, a2, a3, a4 - (i != 0), v18, a6, a7, a8);
      if (a6)
      {
        if (i > 0xFE || (*a6 & 1) != 0)
        {
          return result;
        }
      }

      else if (i > 0xFE)
      {
        return result;
      }
    }
  }

  if (!v16 || (*(a3 + a5) = 0, result = a8(a7, a3, 0, *(v15 + 1024), a6, *(v15 + 1036)), !a6))
  {
    if (a5 >= a4)
    {
      return result;
    }

LABEL_24:
    for (j = 0; ; ++j)
    {
      *(a3 + a5) = j;
      v20 = *(v15 + 4 * j);
      if (j)
      {
        v21 = a5 + 1;
      }

      else
      {
        v21 = a5;
      }

      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = v20;
      *(a2 + 24) = 0;
      result = traverseFromCompactMapCursor(v14, a2, a3, a4 - (j != 0), v21, a6, a7, a8);
      if (a6)
      {
        if (j > 0xFE || (*a6 & 1) != 0)
        {
          return result;
        }
      }

      else if (j > 0xFE)
      {
        return result;
      }
    }
  }

  if (a5 < a4 && (*a6 & 1) == 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t SIGeneralTrieSetCursorWithBytes(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  *(a2 + 36) = a1;
  v8 = *(a1 + 2092);
  if (!v8)
  {
    *(a2 + 32) = 0;
    *(a2 + 8) = (a1 + 8) | 1;
    *(a2 + 16) = 0;
    return SIGeneralTrieCursorAdvanceWithBytes(a2, a3, a4, a4, a5, a6, a7, a8);
  }

  if (*v8 != -900339842 && (*v8 != 12648430 || v8[7] != 2))
  {
    return 0;
  }

  *(a2 + 32) = 1;
  v9 = v8[1];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = v9;
  *(a2 + 24) = 0;
  return SIGeneralTrieCursorAdvanceWithBytes(a2, a3, a4, a4, a5, a6, a7, a8);
}

uint64_t SIGeneralTrieCursorAdvanceWithBytes(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 32);
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = *result;
        v11 = *(result + 8);
        v12 = *(result + 16);
        v13 = *(result + 20);
        result = advanceCompactMapCursor(*(result + 36), result, a2, a3);
        if (!result)
        {
          *v8 = v10;
          *(v8 + 8) = v11;
          *(v8 + 16) = v12;
          *(v8 + 20) = v13;
          return result;
        }

        return 1;
      }

      return 0;
    }

    else
    {
      v15 = *result;
      v14 = *(result + 8);
      v16 = *(result + 16);
      v17 = *(result + 24);
      result = advanceMapCursor(*(result + 36), result, a2, a3, a5, a6, a7, a8);
      if (result)
      {
        return 1;
      }

      *v8 = v15;
      *(v8 + 8) = v14;
      *(v8 + 16) = v16;
      *(v8 + 24) = v17;
    }
  }

  return result;
}

uint64_t advanceCompactMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = *a2;
  v9 = *a2 & 3;
  if (v9 <= 1)
  {
    if (!v9)
    {
      if (v8 == *(*(a1 + 2092) + 4))
      {
        v10 = advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
        return v10 & 1;
      }

LABEL_23:
      v10 = 0;
      return v10 & 1;
    }

    v20 = advanceCompactMapCursorMappedLevel(a1, a2, a3, a4);
    goto LABEL_68;
  }

  if (v9 != 2)
  {
    v21 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2092);
    if (*(a1 + 2080))
    {
      if (a4)
      {
        v27 = *a3;
        v28 = v27 >> 6;
        v29 = *(v21 + 8 * (v27 >> 6));
        v30 = 1 << v27;
        if (((1 << v27) & v29) != 0)
        {
          if (v27 >= 0x40)
          {
            v31 = 0;
            v57 = v21;
            do
            {
              v58 = *v57++;
              v59 = vcnt_s8(v58);
              v59.i16[0] = vaddlv_u8(v59);
              v31 += v59.i32[0];
              --v28;
            }

            while (v28);
          }

          else
          {
            v31 = 0;
          }

          v60 = vcnt_s8(((v30 - 1) & v29));
          v60.i16[0] = vaddlv_u8(v60);
          v56 = *(v21 + 4 * (v31 + v60.i32[0]) + 52);
          goto LABEL_67;
        }

        goto LABEL_41;
      }

      *(a2 + 16) = *(v21 + 48);
      *(a2 + 20) = *(v21 + 40);
    }

    else
    {
      if (a4)
      {
        v22 = *a3;
        v23 = v22 >> 6;
        v24 = *(v21 + 8 * (v22 >> 6));
        v25 = 1 << v22;
        if (((1 << v22) & v24) != 0)
        {
          if (v22 >= 0x40)
          {
            v26 = 0;
            v52 = v21;
            do
            {
              v53 = *v52++;
              v54 = vcnt_s8(v53);
              v54.i16[0] = vaddlv_u8(v54);
              v26 += v54.i32[0];
              --v23;
            }

            while (v23);
          }

          else
          {
            v26 = 0;
          }

          v55 = vcnt_s8(((v25 - 1) & v24));
          v55.i16[0] = vaddlv_u8(v55);
          v56 = *(v21 + 4 * (v26 + v55.i32[0]) + 36);
LABEL_67:
          updateCompactMapCursorPointer(a1, a2, v56);
          v20 = advanceCompactMapCursor(a1, a2, a3 + 1, a4 - 1);
          goto LABEL_68;
        }

LABEL_41:
        v20 = 0;
LABEL_68:
        v61 = v20 == 0;
LABEL_69:
        v10 = !v61;
        return v10 & 1;
      }

      *(a2 + 16) = *(v21 + 32);
    }

    v20 = 1;
    goto LABEL_68;
  }

  v11 = *(a1 + 2080);
  v12 = ((v8 & 0xFFFFFFFFFFFFFFFCLL) + *(a1 + 2092));
  v13 = *v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13 - 4;
    if (v13 == 4)
    {
      goto LABEL_23;
    }

    if ((v11 & 4) != 0)
    {
      if (a4)
      {
        v44 = *(a2 + 8);
        if (v44 >= v14)
        {
          goto LABEL_23;
        }

        v45 = 0;
        v46 = v12 + 1;
        while (1)
        {
          v47 = v46 + v44;
          v48 = v47[6];
          LODWORD(v49) = v48;
          if (v48 < a4)
          {
            if (v48 <= *(v47 + 2))
            {
              v49 = *(v47 + 2);
            }

            else
            {
              v49 = v47[6];
            }

            v50 = v47[6];
            while (v49 != v50)
            {
              if (v47[(v50 + *(a2 + 12)) + 7] != a3[v45 + v50])
              {
                LODWORD(v49) = v50;
                break;
              }

              if (a4 == ++v50)
              {
                LODWORD(v49) = a4;
                break;
              }
            }
          }

          v45 += v49;
          v51 = *(v47 + 2);
          if (v45 == a4)
          {
            break;
          }

          v10 = 0;
          v44 += v51 + 7;
          *(a2 + 8) = v44;
          if (v44 >= v14)
          {
            return v10 & 1;
          }
        }

        v64 = *(a2 + 12) + a4;
        *(a2 + 16) = 0;
        if (v51 + v48 == v64)
        {
          *(a2 + 16) = *v47;
        }

        goto LABEL_85;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4) | v63[10])
      {
LABEL_76:
        *(a2 + 16) = 0;
        goto LABEL_86;
      }
    }

    else
    {
      if (a4)
      {
        v15 = *(a2 + 8);
        if (v15 >= v14)
        {
          goto LABEL_23;
        }

        v16 = v12 + 1;
        v17 = *(a2 + 12);
        while (1)
        {
          v18 = v16 + v15;
          v19 = *(v18 + 2);
          if (v19 >= v17 && !memcmp(&v18[v17 + 6], a3, a4))
          {
            break;
          }

          v10 = 0;
          v15 += v19 + 6;
          *(a2 + 8) = v15;
          if (v15 >= v14)
          {
            return v10 & 1;
          }
        }

        *(a2 + 16) = 0;
        if (v19 - v17 == a4)
        {
          *(a2 + 16) = *v18;
        }

        v64 = v17 + a4;
LABEL_85:
        *(a2 + 12) = v64;
        goto LABEL_86;
      }

      v63 = v12 + *(a2 + 8);
      if (*(v63 + 4))
      {
        goto LABEL_76;
      }
    }

    *(a2 + 16) = 0;
    *(a2 + 16) = *(v63 + 1);
    goto LABEL_86;
  }

  if (v13 == 4)
  {
    goto LABEL_23;
  }

  v32 = *(a2 + 8);
  v33 = *(a2 + 12);
  v34 = *(a2 + 16);
  v35 = *(a2 + 20);
  v36 = v13 - 12;
  if (v13 == 12)
  {
    v38 = 0;
LABEL_74:
    *(a2 + 8) = v32;
    *(a2 + 12) = v33;
    *(a2 + 16) = v34;
    *(a2 + 20) = v35;
    v61 = v38 == 0;
    goto LABEL_69;
  }

  v37 = 0;
  v38 = 0;
  v39 = *(a2 + 12);
  v40 = v12 + 3;
  v41 = v33 + a4;
  while (1)
  {
    while (1)
    {
      v42 = v40 + v37;
      v43 = *(v42 + 6);
      if (v41 <= v43)
      {
        break;
      }

      v37 += v43 + 14;
      if (v37 >= v36)
      {
        goto LABEL_74;
      }
    }

    v66 = v38;
    v67 = v34;
    v68 = v33;
    v69 = v32;
    v65 = v39;
    if (!memcmp(&v42[v39 + 14], a3, a4))
    {
      break;
    }

    v33 = v68;
    v32 = v69;
    v38 = v66;
    v34 = v67;
LABEL_39:
    v37 += v43 + 14;
    v39 = v65;
    if (v37 >= v36)
    {
      goto LABEL_74;
    }
  }

  if (v41 != v43)
  {
    v34 = v67;
    v33 = v68;
    v32 = v69;
    if (!v66)
    {
      v32 = v37;
      v33 = v68 + a4;
      v34 = 0;
      v35 = 0.0;
    }

    v38 = 1;
    goto LABEL_39;
  }

  *(a2 + 16) = 0;
  *(a2 + 16) = *(v42 + 2);
  *(a2 + 20) = *v42;
  *(a2 + 8) = v37;
  *(a2 + 12) = v41;
LABEL_86:
  v10 = 1;
  return v10 & 1;
}

uint64_t advanceMapCursor(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *(a2 + 8);
  if ((v12 & 3) == 2)
  {
    v15 = advanceMapCursorTrieList(a1, a2, a3, a4, a5, a6, a7, a8) != 0;
  }

  else
  {
    if ((v12 & 3) == 1)
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
      if (*(a1 + 2080))
      {
        if (a4)
        {
          v14 = 20;
          goto LABEL_10;
        }

        *(a2 + 20) = *(v13 + 16);
        *(a2 + 24) = *(v13 + 8);
      }

      else
      {
        if (a4)
        {
          v14 = 4;
LABEL_10:
          updateMapCursorPointer(a1, a2, *(v13 + v14 + 8 * *a3));
          v15 = advanceMapCursor(a1, a2, a3 + 1, (v8 - 1));
          return v15 & 1;
        }

        *(a2 + 20) = *v13;
      }

      v15 = 1;
      return v15 & 1;
    }

    v15 = 0;
  }

  return v15 & 1;
}

void *sharedBuffer(unsigned int a1)
{
  if (a1 >= 0x64)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  v2 = (&sharedBuffer(unsigned int  {_Atomic})::onceBuffersToken + 8 * v1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZL12sharedBufferU7_Atomicj_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  v6 = v1;
  if (*v2 != -1)
  {
    dispatch_once(v2, block);
  }

  v3 = pthread_getspecific(sharedBuffer(unsigned int  {_Atomic})::sKeys[v1]);
  if (!v3)
  {
    v3 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    pthread_setspecific(sharedBuffer(unsigned int  {_Atomic})::sKeys[v1], v3);
  }

  return v3;
}

uint64_t traverseFromMapCursor(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, void, _BYTE *, double))
{
  v11 = a4;
  v14 = *(result + 2080);
  v15 = *(a2 + 8);
  if ((v15 & 3u) <= 1uLL)
  {
    if ((v15 & 3) == 0)
    {
      return result;
    }

    v16 = result;
    v17 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v14 & 1) == 0)
    {
      if (*v17 && (*(a3 + a4) = 0, result = a8(a7, a3, a4, *v17, a6, *(a2 + 24)), a6))
      {
        if (!a5 || (*a6 & 1) != 0)
        {
          return result;
        }
      }

      else if (!a5)
      {
        return result;
      }

      v42 = 0;
      v43 = v17 + 1;
      v44 = a5 - 1;
      while (1)
      {
        *(a3 + v11) = v42;
        updateMapCursorPointer(v16, a2, *&v43[2 * v42]);
        result = traverseFromMapCursor(v16, a2, a3, v11 + 1, v44, a6, a7, a8);
        if (a6)
        {
          if (v42 > 0xFE || (*a6 & 1) != 0)
          {
            return result;
          }
        }

        else if (v42 > 0xFE)
        {
          return result;
        }

        ++v42;
      }
    }

    if (v17[4] && (*(a3 + a4) = 0, result = a8(a7, a3, a4, v17[4], a6, *(a2 + 24)), a6))
    {
      if (!a5 || (*a6 & 1) != 0)
      {
        return result;
      }
    }

    else if (!a5)
    {
      return result;
    }

    v45 = 0;
    v46 = v17 + 5;
    v47 = a5 - 1;
    while (1)
    {
      *(a3 + v11) = v45;
      updateMapCursorPointer(v16, a2, *&v46[2 * v45]);
      result = traverseFromMapCursor(v16, a2, a3, v11 + 1, v47, a6, a7, a8);
      if (a6)
      {
        if (v45 > 0xFE || (*a6 & 1) != 0)
        {
          return result;
        }
      }

      else if (v45 > 0xFE)
      {
        return result;
      }

      ++v45;
    }
  }

  if ((v15 & 3) == 2)
  {
    if (v14)
    {
      v30 = *a2 & 0xFFFFFFFFFFFFFFFCLL;
      if (v30)
      {
        v31 = (v30 + 30);
        v32 = *(a2 + 16);
        do
        {
          v33 = *(v30 + 28);
          if (v33 >= v32)
          {
            v34 = v33 - v32;
            if (a5 < 0 || v34 <= a5)
            {
              if (v32)
              {
                v35 = (v30 + 30);
                v36 = v31;
                v37 = v32;
                while (1)
                {
                  v39 = *v35++;
                  v38 = v39;
                  v40 = *v36++;
                  if (v38 != v40)
                  {
                    break;
                  }

                  if (!--v37)
                  {
                    goto LABEL_39;
                  }
                }
              }

              else
              {
LABEL_39:
                v41 = v34 + v11;
                memcpy((a3 + v11), (v30 + v32 + 30), v34);
                *(a3 + v41) = 0;
                result = a8(a7, a3, v41, *(v30 + 24), a6, *(v30 + 16));
                if (a6 && (*a6 & 1) != 0)
                {
                  return result;
                }
              }
            }
          }

          v30 = *v30;
        }

        while (v30);
      }
    }

    else
    {
      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v19 = *(a2 + 16);
      if (v19 > *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 12))
      {
        traverseFromMapCursor(result, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v18)
      {
        v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        __dst = (a3 + a4);
        while (1)
        {
          v21 = *(v20 + 12);
          if (v20 != v18)
          {
            if (v21 <= v19)
            {
              return result;
            }

            if (v19)
            {
              break;
            }
          }

LABEL_20:
          v28 = v21 - v19;
          if (a5 < 0 || v28 <= a5)
          {
            v29 = v28 + v11;
            memcpy(__dst, (v20 + v19 + 14), v28);
            *(a3 + v29) = 0;
            result = a8(a7, a3, v29, *(v20 + 8), a6, 0.0);
          }

          v20 = *v20;
          if (!v20)
          {
            return result;
          }
        }

        v22 = (v20 + 14);
        v23 = (v18 + 14);
        v24 = v19;
        while (1)
        {
          v26 = *v22++;
          v25 = v26;
          v27 = *v23++;
          if (v25 != v27)
          {
            break;
          }

          if (!--v24)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  return result;
}

char *SIGeneralTrieCursorCreateCopy(char *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(0x2CuLL, 1uLL, 0x10600407D964A74uLL);
    v2 = *(v1 + 8);
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_7:
        *(result + 8) = v2;
        *(result + 36) = *(v1 + 36);
        return result;
      }

      *result = *v1;
      *(result + 2) = *(v1 + 2);
      v3 = 20;
      v4 = 16;
      v5 = 12;
    }

    else
    {
      *result = *v1;
      v3 = 24;
      v4 = 20;
      v5 = 16;
    }

    *&result[v5] = *&v1[v5];
    *&result[v4] = *&v1[v4];
    *&result[v3] = *&v1[v3];
    goto LABEL_7;
  }

  return result;
}

BOOL SIGeneralTrieCursorIsEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 1 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12))
    {
      return *a1 == *a2;
    }

    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

uint64_t SIGeneralTrieCursorGetPayload(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[8];
  if (!v2)
  {
    v3 = a1[5];
    if (v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = a1[4];
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  if (a2)
  {
    *a2 = v3;
  }

  return 1;
}

CFBinaryHeapRef SITrieCursorQueueCreate()
{
  v1.version = 0;
  v1.copyDescription = 0;
  v1.retain = TrieCursorRetain;
  v1.release = TrieCursorRelease;
  v1.compare = TrieCursorCompare;
  return CFBinaryHeapCreate(*MEMORY[0x277CBECE8], 0, &v1, 0);
}

_DWORD *TrieCursorRetain(const __CFAllocator *a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++a2[6];
  }

  return result;
}