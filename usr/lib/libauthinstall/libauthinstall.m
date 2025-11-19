uint64_t AMAuthInstallCreate(const __CFAllocator *a1)
{
  v2 = pthread_once(&_AMAuthInstallClassInitializeOnce, _AMAuthInstallClassInitialize);
  v36 = OUTLINED_FUNCTION_1_0(v2, v3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v36 || (cf = CFURLCreateWithString(a1, @"https://gs.apple.com:443/", 0)) == 0)
  {
    cf = 0;
    goto LABEL_20;
  }

  v39 = CFURLCreateWithString(a1, @"http://vega-dr.apple.com:8080/vegads/fuser", 0);
  if (!v39)
  {
LABEL_20:
    v39 = 0;
    goto LABEL_21;
  }

  v4 = CFURLCreateWithString(a1, @"http://treecko-dr.apple.com:8080/TREECKO/controller", 0);
  v38 = v4;
  if (!v4)
  {
LABEL_21:
    v38 = 0;
    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_1_0(v4, v5, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v37 = v6;
  if (!v6)
  {
LABEL_22:
    v37 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v8 = OUTLINED_FUNCTION_1_0(v6, v7, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v8;
  if (!v8)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_1_0(v8, v9, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = v11;
  if (!v11)
  {
LABEL_24:
    v31 = 0;
    v16 = 0;
LABEL_25:
    v19 = 0;
LABEL_26:
    v22 = 0;
LABEL_27:
    v25 = 0;
LABEL_28:
    v28 = 0;
LABEL_29:
    v29 = 0;
    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_1_0(v11, v12, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v16 = v14;
  if (!v14)
  {
    v31 = 0;
    goto LABEL_25;
  }

  v17 = OUTLINED_FUNCTION_1_0(v14, v15, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v19 = v17;
  if (!v17)
  {
    v31 = 0;
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_1_0(v17, v18, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v23 = OUTLINED_FUNCTION_1_0(v20, v21, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v25 = v23;
  if (!v23)
  {
    v31 = 0;
    goto LABEL_28;
  }

  v26 = OUTLINED_FUNCTION_1_0(v23, v24, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v28 = v26;
  if (!v26)
  {
    v31 = 0;
    goto LABEL_29;
  }

  v29 = OUTLINED_FUNCTION_1_0(v26, v27, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v29)
  {
    Instance = _CFRuntimeCreateInstance();
    v31 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x208uLL);
      *(v31 + 520) = 0;
      *(v31 + 57) = 257;
      *(v31 + 72) = CFRetain(cf);
      *(v31 + 80) = 3;
      *(v31 + 352) = CFRetain(v36);
      *(v31 + 376) = CFRetain(v37);
      *(v31 + 384) = CFRetain(v10);
      *(v31 + 416) = CFRetain(v13);
      *(v31 + 160) = CFRetain(v39);
      *(v31 + 296) = CFRetain(v38);
      *(v31 + 88) = @"ApImg4Ticket";
      *(v31 + 200) = CFRetain(v16);
      *(v31 + 208) = CFRetain(v19);
      *(v31 + 216) = CFRetain(v22);
      v32 = calloc(1uLL, 0x30uLL);
      *(v31 + 128) = v32;
      if (v32)
      {
        v33 = CFRetain(v25);
        v34 = *(v31 + 128);
        *v34 = v33;
        *(v34 + 40) = 0;
        *(v34 + 24) = 0u;
        *(v34 + 8) = 0u;
        *(v31 + 496) = 0;
        *(v31 + 504) = 0;
        *(v31 + 440) = _AMAuthInstallNoopUpdaterAddTags;
        *(v31 + 448) = _AMAuthInstallNoopUpdaterWriteManifests;
        *(v31 + 456) = CFRetain(v28);
        *(v31 + 464) = CFRetain(v29);
        *(v31 + 488) = 0;
        *(v31 + 512) = 0;
        *(v31 + 360) = AMAuthInstallLockCreate();
      }

      else
      {
        _AMAuthInstallFinalize(v31);
      }
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_18:
  SafeRelease(v36);
  SafeRelease(cf);
  SafeRelease(v39);
  SafeRelease(v38);
  SafeRelease(v37);
  SafeRelease(v10);
  SafeRelease(v13);
  SafeRelease(0);
  SafeRelease(v16);
  SafeRelease(v19);
  SafeRelease(v22);
  SafeRelease(v25);
  SafeRelease(v28);
  SafeRelease(v29);
  return v31;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return AMSupportCreateErrorInternal();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return AMSupportCreateErrorInternal();
}

CFMutableDictionaryRef OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, const CFDictionaryKeyCallBacks *a3, const CFDictionaryValueCallBacks *a4)
{

  return CFDictionaryCreateMutable(v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return AMAuthInstallBasebandRembrandtLocalProvisionDevice();
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, v2, v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(a1, a2, a3, v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, v6, v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureSystemSoftware, v3, v4);
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFTypeRef a11)
{
  a11 = 0;

  return AMAuthInstallMonetCreateReversedMEIDFromString(v11, a1, &a11);
}

uint64_t OUTLINED_FUNCTION_1_17(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFURLRef url, UInt8 buffer)
{

  return CFURLGetFileSystemRepresentation(url, 1u, &buffer, 1024);
}

void OUTLINED_FUNCTION_1_18()
{
  if (*v1 < 0)
  {
    v2 = *v0;
  }
}

uint64_t AMAuthInstallLockCreate()
{
  pthread_once(&_AMAuthInstallLockClassInitializeOnce, _AMAuthInstallLockClassInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

void SafeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

__CFDictionary *AMAuthInstallUpdaterCopyResponse(const void *a1, const __CFString *key, const __CFURL *a3)
{
  v21 = 0;
  value = 0;
  if (!a1 || !key || !a3)
  {
    goto LABEL_26;
  }

  v6 = AMAuthInstallUpdater(a1, key, a3);
  if (!v6)
  {
LABEL_27:
    Mutable = 0;
    goto LABEL_31;
  }

  v7 = v6;
  if (!v6[5])
  {
LABEL_26:
    OUTLINED_FUNCTION_6();
    AMSupportCreateErrorInternal();
    goto LABEL_27;
  }

  v8 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v8, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    Count = CFArrayGetCount(v7[5]);
    if (Count < 1)
    {
      goto LABEL_31;
    }

    v10 = 0;
    v11 = *MEMORY[0x29EDB8ED8];
    theDict = Mutable;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7[5], v10);
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 != CFStringGetTypeID())
      {
        OUTLINED_FUNCTION_6();
        goto LABEL_30;
      }

      v14 = _AMAuthInstallUpdaterCopyResponseURL(a3, key, ValueAtIndex, v7[6]);
      if (!v14)
      {
        goto LABEL_31;
      }

      v15 = v14;
      CFGetAllocator(a1);
      AMSupportCreateDataFromFileURL();
      v16 = value;
      if (value)
      {
        goto LABEL_16;
      }

      cf = 0;
      MEMORY[0x29C28AE50](v11, v15, @"plist", &cf);
      if (!cf)
      {
        CFRelease(v15);
        Mutable = theDict;
        goto LABEL_31;
      }

      MEMORY[0x29C28AE80](v11, &v21);
      if (cf)
      {
        CFRelease(cf);
      }

      v16 = value;
      Mutable = theDict;
      if (value)
      {
LABEL_16:
        CFDictionarySetValue(Mutable, ValueAtIndex, v16);
      }

      else if (v21)
      {
        CFDictionarySetValue(theDict, ValueAtIndex, v21);
      }

      AMSupportLogInternal();
      CFRelease(v15);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (v21)
      {
        CFRelease(v21);
        v21 = 0;
      }

      ++v10;
    }

    while (Count != v10);
    if (CFDictionaryGetCount(Mutable))
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_6();
    AMSupportCreateErrorInternal();
    CFRelease(Mutable);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6();
LABEL_30:
  AMSupportCreateErrorInternal();
LABEL_31:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return Mutable;
}

uint64_t AMAuthInstallUpdaterCryptex1CopyTicket(const void *a1, const __CFURL *a2, void *a3)
{
  v4 = AMAuthInstallUpdaterCopyResponse(a1, @"Cryptex1", a2);
  if (v4)
  {
    CFDictionaryGetValue(v4, @"Cryptex1,Ticket");
    v10 = AMSupportSafeRetain();
    if (!v10)
    {
      AMSupportCreateErrorInternal();
    }
  }

  else
  {
    v10 = 0;
  }

  if (a3 && *a3)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterCryptex1CopyTicket", "failed: %@", v5, v6, v7, v8, v9, *a3);
  }

  AMSupportSafeRelease();
  return v10;
}

void *AMAuthInstallUpdater(uint64_t a1, const __CFString *key, const __CFURL *a3)
{
  cf = 0;
  if (a1)
  {
    if (key)
    {
      Value = CFDictionaryGetValue(*(a1 + 456), key);
      if (!Value)
      {
        CFGetAllocator(a1);
        AMAuthInstallUpdaterCreate();
        Value = v7;
        if (v7)
        {
          _AMAuthInstallUpdaterInitLocalSigning(v7, key);
          *(a1 + 440) = AMAuthInstallUpdaterAddTags;
          *(a1 + 448) = AMAuthInstallUpdaterWriteManifests;
          CFDictionarySetValue(*(a1 + 456), key, Value);
          CFRelease(Value);
          if (a3)
          {
            if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &cf))
            {
              AMSupportCreateErrorInternal();
            }

            else
            {
              v9 = CFGetAllocator(a1);
              ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v9, cf, @"%@.%@", v10, v11, v12, v13, v14, @"Updaters");
              if (ValueForKeyWithFormat)
              {
                v16 = ValueForKeyWithFormat;
                v17 = CFDictionaryGetValue(ValueForKeyWithFormat, @"RequestTags");
                if (v17)
                {
                  Value[2] = CFRetain(v17);
                }

                v18 = CFDictionaryGetValue(v16, @"ResponseTags");
                if (v18)
                {
                  Value[5] = CFRetain(v18);
                }

                v19 = CFDictionaryGetValue(v16, @"BuildIdentityTags");
                if (v19)
                {
                  Value[4] = CFRetain(v19);
                }

                v20 = CFDictionaryGetValue(v16, @"LoopInstance");
                if (v20)
                {
                  Value[6] = CFRetain(v20);
                }
              }
            }
          }
        }

        else
        {
          AMAuthInstallUpdater_cold_1();
        }
      }
    }

    else
    {
      AMSupportCreateErrorInternal();
      Value = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  return Value;
}

double AMAuthInstallUpdaterCreate()
{
  pthread_once(&_AMAuthInstallUpdaterClassInitializeOnce, _AMAuthInstallUpdaterClassInitialize);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 80) = 0;
    result = 0.0;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
  }

  return result;
}

uint64_t _AMAuthInstallUpdaterInitLocalSigning(uint64_t a1, CFStringRef theString1)
{
  if (theString1)
  {
    v4 = &off_2A1EE8380;
    v5 = 3;
    while (1)
    {
      v6 = *(v4 - 1);
      if (!v6)
      {
        break;
      }

      result = CFStringCompare(theString1, v6, 0);
      if (!result)
      {
        *(a1 + 64) = 0;
        *(a1 + 72) = *v4;
        *(a1 + 80) = @"LocalSigningID";
        return result;
      }

      v4 += 3;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  result = _AMAuthInstallUpdaterInitLocalSigning_cold_1();
LABEL_6:
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t AMAuthInstallBundleCopyReceiptCreateIfNecessary(uint64_t a1, const __CFURL *a2, CFPropertyListRef *a3)
{
  v42 = 0;
  propertyList = 0;
  v41 = 0;
  AMAuthInstallLockLock(*(a1 + 360));
  Mutable = 0;
  v7 = 1;
  if (!a3 || !a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (*(a1 + 128))
  {
    v11 = MEMORY[0x29EDB8EF8];
    v12 = CFURLGetString(a2);
    location = CFStringFind(v12, @"RecoveryOS", 0).location;
    v14 = MEMORY[0x29EDB8F00];
    if (location == -1)
    {
      v14 = v11;
    }

    v15 = *v14;
    if (*(*(a1 + 128) + 8))
    {
      Value = CFBooleanGetValue(v15);
      v17 = *(a1 + 128);
      v18 = *(v17 + 8);
      if (Value)
      {
        v19 = CFDictionaryGetValue(*(v17 + 8), @"RecoveryOS");
        if (!v19)
        {
          goto LABEL_14;
        }

        v18 = v19;
      }

      v20 = CFDictionaryGetValue(v18, @"Manifest");
      if (v18 && v20 && CFDictionaryGetCount(v20) >= 1)
      {
        v21 = CFGetAllocator(a1);
        DeepCopy = CFPropertyListCreateDeepCopy(v21, v18, 2uLL);
        Mutable = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        *a3 = DeepCopy;
        v7 = 2 * (DeepCopy == 0);
        goto LABEL_17;
      }
    }

LABEL_14:
    v23 = CFGetAllocator(a1);
    v24 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v23, a2, @"amai/receipt.plist", 0, &v42);
    if (v24)
    {
      v7 = v24;
LABEL_16:
      Mutable = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_17;
    }

    v26 = AMAuthInstallPlatformFileURLExists(v42, &v41);
    if (v26)
    {
      v7 = v26;
      LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v26);
      AMAuthInstallLog(3, "AMAuthInstallBundleCopyReceiptCreateIfNecessary", "AMAuthInstallPlatformFileURLExists failed: %@", v36, v37, v38, v39, v40, LocalizedStatusString);
      goto LABEL_16;
    }

    v27 = v41;
    v28 = CFGetAllocator(a1);
    if (v27)
    {
      AMAuthInstallSupportCreateDictionaryFromFileURL(v28, &propertyList, v42);
    }

    Mutable = CFDictionaryCreateMutable(v28, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v29 = CFGetAllocator(a1);
      v8 = CFArrayCreateMutable(v29, 0, MEMORY[0x29EDB9000]);
      if (v8)
      {
        v30 = CFGetAllocator(a1);
        v9 = CFArrayCreateMutable(v30, 0, MEMORY[0x29EDB9000]);
        if (v9)
        {
          v31 = CFGetAllocator(a1);
          v10 = CFDictionaryCreateMutable(v31, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (v10)
          {
            CFDictionarySetValue(Mutable, @"Personalized", v8);
            CFDictionarySetValue(Mutable, @"Linked", v9);
            CFDictionarySetValue(Mutable, @"Manifest", v10);
            v32 = CFGetAllocator(a1);
            *a3 = CFPropertyListCreateDeepCopy(v32, Mutable, 2uLL);
            v33 = CFBooleanGetValue(v15);
            v34 = *(*(a1 + 128) + 8);
            if (v33)
            {
              if (v34)
              {
                CFDictionaryReplaceValue(v34, @"RecoveryOS", Mutable);
              }

              v7 = 0;
            }

            else
            {
              if (v34)
              {
                CFRelease(v34);
                *(*(a1 + 128) + 8) = 0;
              }

              v7 = 0;
              *(*(a1 + 128) + 8) = CFRetain(Mutable);
            }

            goto LABEL_17;
          }

LABEL_35:
          v7 = 2;
          goto LABEL_17;
        }

LABEL_34:
        v10 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    goto LABEL_34;
  }

LABEL_17:
  AMAuthInstallLockUnlock(*(a1 + 360));
  SafeRelease(v42);
  SafeRelease(0);
  SafeRelease(Mutable);
  SafeRelease(v8);
  SafeRelease(v9);
  SafeRelease(propertyList);
  SafeRelease(v10);
  SafeRelease(0);
  SafeRelease(0);
  return v7;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
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

uint64_t AMAuthInstallPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = 1;
  if (a1 && a2)
  {
    bzero(&v7, 0x90uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v7);
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

const __CFDictionary *AMAuthInstallSupportGetValueForKeyWithFormat(const __CFAllocator *a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a3)
  {
    return 0;
  }

  v11 = CFStringCreateWithFormatAndArguments(a1, 0, a3, &a9);
  if (!v11)
  {
    return 0;
  }

  v17 = v11;
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(a1, a2, v11, v12, v13, v14, v15, v16);
  CFRelease(v17);
  return ValueForKeyPathInDict;
}

const __CFDictionary *AMAuthInstallSupportGetValueForKeyPathInDict(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Value = a2;
  if (!a2)
  {
    AMAuthInstallSupportGetValueForKeyPathInDict_cold_4(a1, 0, theString, a4, a5, a6, a7, a8, v30);
    return Value;
  }

  if (!theString)
  {
    AMAuthInstallSupportGetValueForKeyPathInDict_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!ArrayBySeparatingStrings)
  {
    AMAuthInstallSupportGetValueForKeyPathInDict_cold_2(0, v10, v11, v12, v13, v14, v15, v16, v30);
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

    AMAuthInstallSupportGetValueForKeyPathInDict_cold_1(0, v22, v23, v24, v25, v26, v27, v28, v30);
    Value = 0;
  }

LABEL_9:
  CFRelease(v17);
  return Value;
}

uint64_t _AMAuthInstallUpdaterCopyResponseURL(const __CFURL *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a1)
  {
    _AMAuthInstallUpdaterCopyResponseURL_cold_4();
    return 0;
  }

  if (!a2)
  {
    _AMAuthInstallUpdaterCopyResponseURL_cold_3();
    return 0;
  }

  if (!a3)
  {
    _AMAuthInstallUpdaterCopyResponseURL_cold_2();
    return 0;
  }

  ManifestPath = AMAuthInstallBundleGetManifestPath();
  v9 = CFStringCreateWithFormat(0, 0, @"%@%c%@", ManifestPath, 47, a2);
  if (!v9)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  v10 = v9;
  v11 = CFURLCreateCopyAppendingPathComponent(0, a1, v9, 1u);
  if (!v11)
  {
    AMSupportCreateErrorInternal();
    v14 = v10;
LABEL_18:
    CFRelease(v14);
    return 0;
  }

  v12 = v11;
  if (MEMORY[0x29C28AF20]())
  {
    AMSupportCreateErrorInternal();
    v13 = 0;
    goto LABEL_16;
  }

  if (a4)
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@", a3, a4);
    if (!v13)
    {
      _AMAuthInstallUpdaterCopyResponseURL_cold_1();
      goto LABEL_16;
    }
  }

  else
  {
    v13 = CFRetain(a3);
  }

  if (AMSupportCopyURLWithAppendedComponent())
  {
    AMSupportCreateErrorInternal();
  }

LABEL_16:
  CFRelease(v10);
  CFRelease(v12);
  if (v13)
  {
    v14 = v13;
    goto LABEL_18;
  }

  return 0;
}

void _AMAuthInstallFinalize(uint64_t a1)
{
  if (!a1)
  {
    _AMAuthInstallFinalize_cold_1();
  }

  if (!*(a1 + 520))
  {
    *(a1 + 520) = 1;
    AMAuthInstallApFinalize(a1);
    AMAuthInstallBasebandFinalize(a1);
    AMAuthInstallBundleFinalize(a1);
    SafeRelease(*(a1 + 120));
    SafeRelease(*(a1 + 376));
    SafeRelease(*(a1 + 384));
    SafeRelease(*(a1 + 416));
    SafeRelease(*(a1 + 336));
    SafeRelease(*(a1 + 96));
    SafeRelease(*(a1 + 72));
    SafeRelease(*(a1 + 88));
    SafeRelease(*(a1 + 64));
    SafeRelease(*(a1 + 352));
    SafeRelease(*(a1 + 296));
    SafeRelease(*(a1 + 312));
    SafeRelease(*(a1 + 320));
    SafeRelease(*(a1 + 424));
    SafeRelease(*(a1 + 456));
    SafeRelease(*(a1 + 464));
    SafeRelease(*(a1 + 472));
    SafeRelease(*(a1 + 480));
    SafeRelease(*(a1 + 496));
    SafeRelease(*(a1 + 40));
    SafeRelease(*(a1 + 512));
    SafeRelease(*(a1 + 360));
    SafeRelease(*(a1 + 488));

    bzero((a1 + 16), 0x208uLL);
  }
}

void AMAuthInstallApFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    SafeRelease(*(v2 + 24));
    SafeRelease(*(*(a1 + 16) + 32));
    SafeRelease(*(*(a1 + 16) + 48));
    SafeRelease(*(*(a1 + 16) + 56));
    SafeRelease(*(*(a1 + 16) + 104));
    SafeRelease(*(*(a1 + 16) + 120));
    SafeRelease(*(*(a1 + 16) + 136));
    SafeRelease(*(*(a1 + 16) + 144));
    SafeRelease(*(*(a1 + 16) + 152));
    SafeRelease(*(*(a1 + 16) + 176));
    SafeRelease(*(*(a1 + 16) + 184));
    SafeRelease(*(*(a1 + 16) + 192));
    SafeRelease(*(*(a1 + 16) + 200));
    SafeRelease(*(*(a1 + 16) + 208));
    SafeRelease(*(*(a1 + 16) + 64));
    SafeRelease(*(*(a1 + 16) + 72));
    SafeFree(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  SafeRelease(*(a1 + 24));
  SafeRelease(*(a1 + 528));
  *(a1 + 24) = 0;
  *(a1 + 528) = 0;
}

void AMAuthInstallBasebandFinalize(uint64_t a1)
{
  if (*(a1 + 176))
  {
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v2, v3, v4, v5, v6, v7, v8, v9, v24);
    AMAuthInstallLog(3, "AMAuthInstallBasebandFinalize", "* unacknowledged fusing program *", v10, v11, v12, v13, v14, v25);
    OUTLINED_FUNCTION_20();
    AMAuthInstallLog(v15, v16, v17, v18, v19, v20, v21, v22, v26);
  }

  _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
  AMAuthInstallBasebandLocalSetSigningParameters(a1, 0, 0, 0, 0, 0);
  SafeRelease(*(a1 + 160));
  SafeRelease(*(a1 + 168));
  SafeRelease(*(a1 + 176));
  SafeRelease(*(a1 + 192));
  SafeRelease(*(a1 + 200));
  SafeRelease(*(a1 + 208));
  SafeRelease(*(a1 + 216));
  SafeRelease(*(a1 + 136));
  SafeRelease(*(a1 + 240));
  SafeRelease(*(a1 + 264));
  SafeRelease(*(a1 + 248));
  SafeRelease(*(a1 + 232));
  SafeRelease(*(a1 + 272));
  v23 = *(a1 + 280);

  SafeRelease(v23);
}

void _AMAuthInstallBasebandParametersFinalize(CFTypeRef *a1)
{
  if (a1)
  {
    SafeRelease(a1[2]);
    SafeRelease(a1[3]);
    SafeRelease(a1[4]);
    SafeRelease(a1[5]);
    SafeRelease(a1[8]);
    SafeRelease(a1[9]);
    SafeRelease(a1[13]);
    SafeRelease(a1[14]);
    SafeRelease(a1[15]);
    SafeRelease(a1[16]);
    SafeRelease(a1[17]);
    SafeRelease(a1[18]);
    SafeRelease(a1[19]);
    SafeRelease(a1[21]);

    free(a1);
  }
}

uint64_t AMAuthInstallBasebandLocalSetSigningParameters(void *cf, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6)
{
  if (cf)
  {
    if (a2 && a3 && a4 || (v12 = 1, !a2) && !a3 && !a4 && !a5 && !a6)
    {
      v13 = *(cf + 46);
      if (v13)
      {
        AMAuthInstallReleaseRsaKeyData(*v13);
        SafeRelease(*(*(cf + 46) + 8));
        SafeRelease(*(*(cf + 46) + 16));
        SafeRelease(*(*(cf + 46) + 24));
        SafeRelease(*(*(cf + 46) + 32));
        free(*(cf + 46));
        *(cf + 46) = 0;
      }

      if (a2)
      {
        CFGetAllocator(cf);
        v14 = AMAuthInstallBasebandRembrandtLocalProvisionDevice();
        if (v14)
        {
          v12 = v14;
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(cf, v14);
          AMAuthInstallLog(3, "AMAuthInstallBasebandLocalSetSigningParameters", "bad local signing key: %@", v16, v17, v18, v19, v20, LocalizedStatusString);
        }

        else
        {
          v21 = calloc(1uLL, 0x28uLL);
          *(cf + 46) = v21;
          if (v21)
          {
            **(cf + 46) = CFRetain(0);
            *(*(cf + 46) + 8) = CFRetain(a3);
            *(*(cf + 46) + 16) = CFRetain(a4);
            *(*(cf + 46) + 32) = CFRetain(a6);
            v12 = 0;
            *(*(cf + 46) + 24) = SafeRetain(a5);
          }

          else
          {
            v12 = 2;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  SafeRelease(0);
  SafeRelease(0);
  return v12;
}

void AMAuthInstallBundleFinalize(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    SafeRelease(*v1);
    SafeRelease(*(*(a1 + 128) + 8));
    SafeRelease(*(*(a1 + 128) + 16));
    SafeRelease(*(*(a1 + 128) + 24));
    SafeRelease(*(*(a1 + 128) + 32));
    SafeRelease(*(*(a1 + 128) + 40));
    SafeFree(*(a1 + 128));
    *(a1 + 128) = 0;
  }
}

void SafeFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double _AMAuthInstallUpdaterFinalize(uint64_t a1)
{
  if (!a1)
  {
    _AMAuthInstallUpdaterFinalize_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 48) = 0;
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *v4 = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t AMAuthInstallUpdaterCryptex1MobileAssetSetInfo(void *a1, const __CFURL *a2, void *a3, uint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, void *value, char a10, void *a11)
{
  v51 = *MEMORY[0x29EDCA608];
  theDict = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_6();
LABEL_34:
    v36 = 99;
    goto LABEL_22;
  }

  v19 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_5();
    goto LABEL_34;
  }

  AMAuthInstallApCopyParameters(a1, &theDict);
  if (!theDict)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_4();
    goto LABEL_34;
  }

  v21 = CFDictionaryGetValue(theDict, @"ApChipID");
  if (!v21)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_3();
    goto LABEL_34;
  }

  CFDictionarySetValue(Mutable, @"ApChipId", v21);
  v22 = CFDictionaryGetValue(theDict, @"ECID");
  if (!v22)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_2();
    goto LABEL_34;
  }

  CFDictionarySetValue(Mutable, @"ApECID", v22);
  v23 = CFDictionaryGetValue(theDict, @"ApProductionMode");
  if (!v23)
  {
    AMAuthInstallUpdaterCryptex1MobileAssetSetInfo_cold_1();
    goto LABEL_34;
  }

  CFDictionarySetValue(Mutable, @"ApProductionMode", v23);
  v24 = CFDictionaryGetValue(theDict, @"ApX86");
  if (v24)
  {
    CFDictionarySetValue(Mutable, @"IsX86", v24);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, @"Nonce", a6);
  }

  if (a7)
  {
    CFDictionarySetValue(Mutable, @"LiveNonce", a7);
  }

  if (a8)
  {
    CFDictionarySetValue(Mutable, @"ExclaveNonce", a8);
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"ExclaveLiveNonce", value);
  }

  AMSupportCFDictionarySetBoolean();
  *in = 0u;
  memset(v50, 0, sizeof(v50));
  v47 = 37;
  if (sysctlbyname("kern.bootsessionuuid", in, &v47, 0, 0))
  {
    v25 = *__error();
    strerror(v25);
    AMAuthInstallLog(4, "_AMAuthInstallCryptex1CopyBootSessionUUID", "failed to obtain kern.bootsessionuuid: %d (%s)", v26, v27, v28, v29, v30, v25);
  }

  else
  {
    memset(uu, 0, sizeof(uu));
    if (uuid_parse(in, uu))
    {
      AMAuthInstallLog(4, "_AMAuthInstallCryptex1CopyBootSessionUUID", "failed to parse kern.bootsessionuuid", v31, v32, v33, v34, v35, v45);
    }

    else
    {
      v44 = CFDataCreate(*MEMORY[0x29EDB8ED8], uu, 16);
      if (v44)
      {
        CFDictionarySetValue(Mutable, @"BootUUID", v44);
      }
    }
  }

  v36 = AMAuthInstallUpdaterSetInfo(a1, @"Cryptex1", Mutable, a2, a3, a4, a5, 0, 0, a11);
LABEL_22:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (a11 && *a11)
  {
    AMAuthInstallLog(3, "AMAuthInstallUpdaterCryptex1MobileAssetSetInfo", "failed: %@", v37, v38, v39, v40, v41, *a11);
  }

  v42 = *MEMORY[0x29EDCA608];
  return v36;
}

__CFDictionary *AMAuthInstallUpdaterCryptex1GetTags(uint64_t a1, void (*a2)(uint64_t, const char *), uint64_t a3, uint64_t *a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 28, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_5();
    v14 = 0;
    goto LABEL_7;
  }

  v9 = _AMAuthInstallCryptex1CopyManifestProperties();
  if (!v9)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_4();
    v14 = 0;
    goto LABEL_7;
  }

  v10 = _AMAuthInstallCryptex1CopyObjectTags();
  if (!v10)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_3();
LABEL_16:
    v14 = 0;
    goto LABEL_7;
  }

  v23.length = CFArrayGetCount(v9);
  v23.location = 0;
  CFArrayAppendArray(Mutable, v9, v23);
  v24.length = CFArrayGetCount(v10);
  v24.location = 0;
  CFArrayAppendArray(Mutable, v10, v24);
  v11 = CFArrayCreateMutable(v7, 1, MEMORY[0x29EDB9000]);
  v12 = v11;
  if (!v11)
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_2();
    goto LABEL_16;
  }

  CFArrayAppendValue(v11, @"Cryptex1,Ticket");
  v13 = CFDictionaryCreateMutable(v7, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = v13;
  if (v13)
  {
    CFDictionaryAddValue(v13, @"BuildIdentityTags", Mutable);
    CFDictionaryAddValue(v14, @"ResponseTags", v12);
  }

  else
  {
    AMAuthInstallUpdaterCryptex1GetTags_cold_1();
  }

LABEL_7:
  if (a4 && *a4)
  {
    v22 = *a4;
    _AMAuthInstallCryptex1Log(a2, a3, v15, v16, v17, v18, v19, v20, "AMAuthInstallUpdaterCryptex1GetTags");
    return 0;
  }

  else
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
  }

  return v14;
}

CFMutableDictionaryRef AMAuthInstallUpdaterCryptex1CopyFirmware()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1CopyFirmware_cold_1();
  }

  return Mutable;
}

const void *_AMAuthInstallCryptex1GetDeviceInfoValue(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value || (v5 = Value, CFGetTypeID(Value) != a3))
  {
    _AMAuthInstallCryptex1GetDeviceInfoValue_cold_1();
    return 0;
  }

  return v5;
}

uint64_t _AMAuthInstallCryptex1RequestSetNonce(__CFDictionary *a1, const void *a2, CFDictionaryRef theDict, void *key)
{
  v13 = *MEMORY[0x29EDCA608];
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    AMSupportLogInternal();
    memset(__buf, 0, sizeof(__buf));
    arc4random_buf(__buf, 0x30uLL);
    v9 = CFDataCreate(*MEMORY[0x29EDB8ED8], __buf, 48);
    if (v9)
    {
      CFDictionarySetValue(a1, a2, v9);
      AMSupportSafeRelease();
      goto LABEL_6;
    }

    _AMAuthInstallCryptex1RequestSetNonce_cold_2();
LABEL_10:
    result = 0;
    goto LABEL_7;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDataGetTypeID())
  {
    _AMAuthInstallCryptex1RequestSetNonce_cold_1();
    goto LABEL_10;
  }

  CFDictionarySetValue(a1, a2, v7);
LABEL_6:
  result = 1;
LABEL_7:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return AMSupportCreateErrorInternal();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{

  return _AMAuthInstallCryptex1RequestSetNonce(v4, a2, v5, a4);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return AMSupportCreateErrorInternal();
}

const void *OUTLINED_FUNCTION_7(uint64_t a1, const void *a2, uint64_t a3)
{

  return _AMAuthInstallCryptex1GetDeviceInfoValue(v3, a2, a3);
}

uint64_t AMAuthInstallBasebandSetVendorData(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 136) = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v5 = CFRetain(cf);
  result = 0;
  *(a1 + 136) = v5;
  return result;
}

uint64_t AMAuthInstallBasebandSetVinylData(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8)
{
  if (!a1)
  {
    return 1;
  }

  v9 = *(a1 + 48);
  if (!v9)
  {
    return 1;
  }

  SafeRelease(*(v9 + 120));
  v17 = CFRetain(a2);
  v18 = *(a1 + 48);
  *(v18 + 120) = v17;
  SafeRelease(*(v18 + 128));
  v19 = CFRetain(a3);
  v20 = *(a1 + 48);
  *(v20 + 128) = v19;
  SafeRelease(*(v20 + 136));
  v21 = CFRetain(a4);
  v22 = *(a1 + 48);
  *(v22 + 136) = v21;
  SafeRelease(*(v22 + 144));
  v23 = CFRetain(a5);
  v24 = *(a1 + 48);
  *(v24 + 144) = v23;
  SafeRelease(*(v24 + 152));
  v25 = CFRetain(a6);
  v26 = *(a1 + 48);
  *(v26 + 152) = v25;
  SafeRelease(*(v26 + 160));
  v27 = CFRetain(a7);
  v28 = *(a1 + 48);
  *(v28 + 160) = v27;
  SafeRelease(*(v28 + 168));
  v29 = CFRetain(a8);
  result = 0;
  *(*(a1 + 48) + 168) = v29;
  return result;
}

__CFString *AMAuthInstallGetLocalizedStatusString(CFDictionaryRef *cf, int a2)
{
  valuePtr = a2;
  if (a2 > 98)
  {
    if (a2 <= 3500)
    {
      switch(a2)
      {
        case 99:
          return @"Generic";
        case 3194:
          return @"Declined to authorize this image on this device for this user.";
        case 3500:
          return @"The signing server returned an internal error";
      }
    }

    else if (a2 > 3503)
    {
      if (a2 == 3504)
      {
        return @"The signing server could not find the resource requested";
      }

      if (a2 == 3507)
      {
        return @"You must authorize with a proxy server before making this request";
      }
    }

    else
    {
      if (a2 == 3501)
      {
        return @"You must authorize with the signing server before making this request";
      }

      if (a2 == 3503)
      {
        return @"You are not authorized to make this request. Please check your device or credentials";
      }
    }

LABEL_42:
    Value = &stru_2A1EE9D10;
    if (cf)
    {
      if ((a2 - 3100) <= 0x383)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          Value = CFDictionaryGetValue(cf[44], v6);
          CFRelease(v7);
          if (!Value)
          {
            AMAuthInstallLog(7, "AMAuthInstallGetLocalizedStatusString", "no cached text for tss error code %d", v8, v9, v10, v11, v12, valuePtr);
          }
        }
      }
    }
  }

  else
  {
    Value = @"No error";
    switch(a2)
    {
      case 0:
        return Value;
      case 1:
        Value = @"Bad parameter";
        break;
      case 2:
        Value = @"Allocation error";
        break;
      case 3:
        Value = @"Conversion error";
        break;
      case 4:
        Value = @"File error";
        break;
      case 5:
        Value = @"Hash error";
        break;
      case 6:
        Value = @"Crypto error";
        break;
      case 7:
        Value = @"Bad build identity";
        break;
      case 8:
        Value = @"Entry not found";
        break;
      case 9:
        Value = @"Invalid img3 object";
        break;
      case 10:
        Value = @"Invalid bbfw object";
        break;
      case 11:
        Value = @"Server not reachable";
        break;
      case 12:
        Value = @"Server timed out";
        break;
      case 13:
        Value = @"Unimplemented";
        break;
      case 14:
        Value = @"Internal error";
        break;
      case 15:
        Value = @"Invalid bbfw file";
        break;
      case 16:
        Value = @"Network error";
        break;
      case 17:
        Value = @"Bad response";
        break;
      case 18:
        Value = @"Fusing failed";
        break;
      case 19:
        Value = @"Baseband provisioning failed";
        break;
      case 20:
        Value = @"AppleConnect not found";
        break;
      case 21:
        Value = @"AppleConnect user canceled";
        break;
      case 22:
        Value = @"AppleConnect bad credentials";
        break;
      default:
        goto LABEL_42;
    }
  }

  return Value;
}

uint64_t AMAuthInstallSetDebugFlags(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 344) = a2;
  return result;
}

void AMAuthInstallApplyRequestEntries(const __CFString *a1, const __CFDictionary *a2, void *a3)
{
  if (CFStringCompare(a1, @"@ApImg4Ticket", 0) == kCFCompareEqualTo)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v7 = _AMAuthInstallApplyApRequestEntries;
LABEL_7:

      CFDictionaryApplyFunction(a2, v7, a3);
      return;
    }
  }

  if (CFStringCompare(a1, @"@BBTicket", 0) == kCFCompareEqualTo)
  {
    v8 = CFDictionaryGetTypeID();
    if (v8 == CFGetTypeID(a2))
    {
      v7 = _AMAuthInstallApplyBbRequestEntries;
      goto LABEL_7;
    }
  }

  if (CFStringHasPrefix(a1, @"Ap"))
  {
    v9 = @"ApRequestEntries";
  }

  else
  {
    if (!CFStringHasPrefix(a1, @"Bb"))
    {
      if (CFStringHasPrefix(a1, @"FDR"))
      {

        AMAuthInstallSetFDRRequestEntry(a3, a1, a2);
      }

      return;
    }

    v9 = @"BbRequestEntries";
  }

  AMAuthInstallSetRequestEntry(a3, v9, a1, a2);
}

uint64_t AMAuthInstallSetFDRRequestEntry(const void *a1, const void *a2, const void *a3)
{
  v6 = AMAuthInstallSetRequestEntry(a1, @"ApRequestEntries", a2, a3);
  if (v6)
  {
    v12 = v6;
    v14 = "failed to set FDR entry in Ap request";
LABEL_6:
    AMAuthInstallLog(3, "AMAuthInstallSetFDRRequestEntry", v14, v7, v8, v9, v10, v11, v15);
    return v12;
  }

  v12 = AMAuthInstallSetRequestEntry(a1, @"BbRequestEntries", a2, a3);
  if (v12)
  {
    v14 = "failed to set FDR entry in Bb request";
    goto LABEL_6;
  }

  return v12;
}

uint64_t AMAuthInstallSetSOCKSProxyInformation(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a3)
    {
      if (a1)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (Mutable)
        {
          v19 = Mutable;
          CFDictionarySetValue(Mutable, @"SOCKSProxy", a2);
          CFDictionarySetValue(v19, @"SOCKSPort", a3);
          AMAuthInstallSetSOCKSProxyDict(a1, v19, v20, v21, v22, v23, v24, v25);
          CFRelease(v19);
          return 0;
        }

        AMAuthInstallSetSOCKSProxyInformation_cold_1(0, v12, v13, v14, v15, v16, v17, v18, v27);
      }

      else
      {
        AMAuthInstallSetSOCKSProxyInformation_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v27);
      }
    }

    else
    {
      AMAuthInstallSetSOCKSProxyInformation_cold_3(a1, a2, 0, a4, a5, a6, a7, a8, v27);
    }
  }

  else
  {
    AMAuthInstallSetSOCKSProxyInformation_cold_4(a1, 0, a3, a4, a5, a6, a7, a8, v27);
  }

  return 99;
}

uint64_t AMAuthInstallSetSOCKSProxyDict(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    AMAuthInstallSetSOCKSProxyDict_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v13);
    return 99;
  }

  if (!a1)
  {
    AMAuthInstallSetSOCKSProxyDict_cold_1(0, cf, a3, a4, a5, a6, a7, a8, v13);
    return 99;
  }

  v10 = *(a1 + 488);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = CFRetain(cf);
  result = 0;
  *(a1 + 488) = v11;
  return result;
}

uint64_t AMAuthInstallCreateRecoveryOSBuildIdentityAssetList(CFArrayRef *a1)
{
  values[14] = *MEMORY[0x29EDCA608];
  values[0] = @"RecoveryOSOS";
  values[1] = @"RecoveryOSKernelCache";
  values[2] = @"RecoveryOSDeviceTree";
  values[3] = @"RecoveryOSiBEC";
  values[4] = @"RecoveryOSAppleLogo";
  values[5] = @"RecoveryOSStaticTrustCache";
  values[6] = @"RecoveryOSiBootData";
  values[7] = @"RecoveryOSDiags";
  values[8] = @"RecoveryOSAp,SystemVolumeCanonicalMetadata";
  values[9] = @"RecoveryOSSystemVolume";
  values[10] = @"RecoveryOSBaseSystemVolume";
  values[11] = @"RecoveryOSAp,BaseSystemTrustCache";
  values[12] = @"RecoveryOSAVISP1,RTKitOS";
  values[13] = @"RecoveryOSWireless1,RTKitOS";
  v2 = CFArrayCreate(*MEMORY[0x29EDB8ED8], values, 14, MEMORY[0x29EDB9000]);
  *a1 = v2;
  if (v2)
  {
    result = 0;
  }

  else
  {
    result = 99;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallSetFusingRootCA(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a1)
    {
      SafeRelease(*(a1 + 192));
      *(a1 + 192) = CFRetain(a2);
      AMAuthInstallLog(6, "AMAuthInstallSetFusingRootCA", "RootCA has been set!", v10, v11, v12, v13, v14, v16);
      return 0;
    }

    AMAuthInstallSetFusingRootCA_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v16);
  }

  else
  {
    AMAuthInstallSetFusingRootCA_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v16);
  }

  return 99;
}

void AMAuthInstallClearTrustedSSLCACerts(uint64_t a1)
{
  if (a1)
  {
    SafeRelease(*(a1 + 512));
    *(a1 + 512) = 0;
  }
}

uint64_t _AMAuthInstallClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallTypeID = result;
  return result;
}

CFStringRef _AMAuthInstallCopyFormattingDescription(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    _AMAuthInstallCopyFormattingDescription_cold_1();
  }

  v4 = AMAuthInstallApCopyDescription(a1);
  v5 = AMAuthInstallBasebandCopyDescription(a1);
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 72);
  if (*(a1 + 64))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    v8 = @"default";
  }

  if (*(a1 + 56))
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (*(a1 + 104))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  PlatformInfoString = AMAuthInstallPlatformGetPlatformInfoString();
  v13 = CFStringCreateWithFormat(v6, a2, @"<AMAuthInstall %p>{ap=%@, bp=%@, UserAuth=%@, iTunes=%@, server=%@, locale=%@, version=%@, platform=%@}", a1, v4, v5, v10, v9, v7, v8, LibraryVersionString, PlatformInfoString);
  SafeRelease(v4);
  SafeRelease(v5);
  return v13;
}

uint64_t AMAuthInstallApIsImg4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallApIsImg4_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    AMAuthInstallApIsImg4_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  return *(v8 + 112);
}

uint64_t AMAuthInstallApSetFusings(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  if (!a1)
  {
    return 1;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    free(v12);
  }

  v13 = calloc(1uLL, 0xD8uLL);
  *(a1 + 16) = v13;
  if (!v13)
  {
    return 2;
  }

  v14 = v13;
  result = 0;
  *v14 = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  *(v14 + 20) = a6;
  return result;
}

__CFString *AMAuthInstallApCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 64);
  CFStringAppend(Mutable, @"(");
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = "YES";
    if (*(a1 + 57))
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(v4 + 20))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(v4 + 97))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v4 + 88))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    if (*(v4 + 98))
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    if (*(v4 + 112))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (*(v4 + 136))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    if (!*(v4 + 144))
    {
      v5 = "NO";
    }

    CFStringAppendFormat(Mutable, 0, @"personalize=%s %@ ecid=0x%llx, chipid=0x%x, boardid=0x%x, secDom=%d, isProduction=%s, EPRO=%s, isSecure=%s, ESEC=%s, img4=%s, demotionPolicy=%@, managedBaaCert=%s, slowRollBaaCert=%s, dpoc=%@", v6, *(v4 + 120), *v4, *(v4 + 8), *(v4 + 12), *(v4 + 16), v7, v8, v9, v10, v11, *(v4 + 104), v12, v5, *(v4 + 208));
    v13 = *(a1 + 16);
    if (*(v13 + 24))
    {
      v14 = CFGetAllocator(a1);
      v15 = _CopyHexStringFromData(v14, *(*(a1 + 16) + 24));
      CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v15);
      CFRelease(v15);
      v13 = *(a1 + 16);
    }

    if (*(v13 + 48))
    {
      v16 = CFGetAllocator(a1);
      v17 = _CopyHexStringFromData(v16, *(*(a1 + 16) + 48));
      CFStringAppendFormat(Mutable, 0, @", sepNonce=0x%@", v17);
      CFRelease(v17);
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

uint64_t AMAuthInstallEnableManagedRequest(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestManagedBaaCertificate(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    AMAuthInstallEnableManagedRequest_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }
}

uint64_t AMAuthInstallEnableAlternateUpdateRequest(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    AMAuthInstallEnableAlternateUpdateRequest_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }
}

uint64_t AMAuthInstallApEnableLocalPolicyHactivation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    result = 0;
    *(a1 + 505) = 1;
  }

  else
  {
    AMAuthInstallApEnableLocalPolicyHactivation_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }

  return result;
}

uint64_t AMAuthInstallApEnableGlobalSigning(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      SafeRelease(*(a1 + 40));
      v10 = CFRetain(a2);
      result = 0;
      *(a1 + 40) = v10;
      return result;
    }

    AMAuthInstallApEnableGlobalSigning_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  }

  else
  {
    AMAuthInstallApEnableGlobalSigning_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v12);
  }

  return 1;
}

uint64_t AMAuthInstallApCreateDigest(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (a3 == 1 || a3 == 384 || a3 == 256))
  {

    return MEMORY[0x2A1C6F550]();
  }

  else
  {
    AMSupportCreateErrorInternal();
    return 0;
  }
}

const void *AMAuthInstallApCreateHashFromURL(const __CFAllocator *a1, const __CFData *a2)
{
  Value = a2;
  theDict = 0;
  if (a2)
  {
    ImageType = AMAuthInstallApGetImageType(a1, a2);
    if (ImageType == 2)
    {
      if (!AMAuthInstallApImg4CreateMeasurementsFromURL(a1, Value, 1, &theDict))
      {
LABEL_4:
        Value = CFDictionaryGetValue(theDict, @"Digest");
        SafeRetain(Value);
        goto LABEL_5;
      }
    }

    else
    {
      if (ImageType != 1)
      {
LABEL_9:
        Value = 0;
        goto LABEL_5;
      }

      if (!AMAuthInstallApImg3CreateMeasurementsFromURL(a1, Value, &theDict, 0))
      {
        goto LABEL_4;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallApCreateHashFromURL", "%s: could not create measurements: %d", v5, v6, v7, v8, v9, "AMAuthInstallApCreateHashFromURL");
    goto LABEL_9;
  }

LABEL_5:
  SafeRelease(theDict);
  return Value;
}

uint64_t AMAuthInstallApAddTag(uint64_t a1, CFStringRef theString1, uint64_t a3)
{
  if (!a1)
  {
    AMAuthInstallApAddTag_cold_3();
    return 0;
  }

  if (!theString1)
  {
    AMAuthInstallApAddTag_cold_2();
    return 0;
  }

  if (!a3)
  {
    AMAuthInstallApAddTag_cold_1();
    return 0;
  }

  if (CFStringCompare(theString1, @"ApChipID", 0))
  {
    if (CFStringCompare(theString1, @"ApBoardID", 0))
    {
      AMSupportCreateErrorInternal();
      return 0;
    }

    v7 = *(*(a1 + 16) + 12);
  }

  else
  {
    v6 = *(*(a1 + 16) + 8);
  }

  AMSupportCFDictionarySetInteger32();
  return 1;
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

CFTypeRef _AMAuthInstallApFtabCopyFtabFromFile(uint64_t a1, uint64_t a2, const UInt8 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  if (!a2)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_5(a1, 0, a3, a4, a5, a6, a7, a8, v45);
LABEL_15:
    v43 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_4(a1, a2, 0, a4, a5, a6, a7, a8, v45);
    goto LABEL_15;
  }

  v9 = AMAuthInstallPlatformCreateDataFromMappedFileURL(a1, &theData, a2);
  if (v9)
  {
    AMAuthInstallLog(3, "_AMAuthInstallApFtabCopyFtabFromFile", "AMAuthInstallPlatformCreateDataFromMappedFileURL returned %d", v11, v12, v13, v14, v15, v9);
    goto LABEL_15;
  }

  if (!theData)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_3(v9, v10, 0, v11, v12, v13, v14, v15);
    goto LABEL_15;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, theData);
  v24 = MutableCopy;
  if (!MutableCopy)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_2(0, v17, v18, v19, v20, v21, v22, v23);
    goto LABEL_15;
  }

  Length = CFDataGetLength(MutableCopy);
  BytePtr = CFDataGetBytePtr(v24);
  IsValid = AMAuthInstallApFtabIsValid(v24, 0, v27, v28, v29, v30, v31, v32);
  if (!IsValid)
  {
    _AMAuthInstallApFtabCopyFtabFromFile_cold_1(IsValid, v34, v35, v36, v37, v38, v39, v40);
    goto LABEL_15;
  }

  v41 = &BytePtr[16 * (*(BytePtr + 10) - 1)];
  v42 = (*(v41 + 14) + *(v41 + 13));
  if (Length > v42)
  {
    v47.location = (v42 + 1);
    v47.length = Length + ~v42;
    CFDataDeleteBytes(v24, v47);
  }

  *(BytePtr + 2) = 0;
  v43 = CFRetain(v24);
  *a3 = BytePtr;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v43;
}

uint64_t image3SHA1Generate(const void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  return CC_SHA1_Final(a3, &v7);
}

uint64_t image3PKISignHash(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

int8x16_t image3SHA1Partial(const void *a1, CC_LONG a2, int8x16_t *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  result = vrev32q_s8(*&v7.h0);
  *a3 = result;
  a3[1].i32[0] = bswap32(v7.h4);
  return result;
}

uint64_t AMAuthInstallApImg3CreatePersonalizedData(const void *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, CFTypeRef *a5)
{
  memset(length, 0, sizeof(length));
  v10 = AMAuthInstallSupportCopyAllocator();
  BytePtr = CFDataGetBytePtr(a2);
  LODWORD(a2) = CFDataGetLength(a2);
  v12 = CFDataGetBytePtr(a4);
  v13 = CFDataGetBytePtr(a3);
  v14 = CFDataGetLength(a3);
  if (tss_stitch_img3(BytePtr, a2, v12, v13, v14, &length[1], length, v15))
  {
    v16 = 0;
    v17 = 9;
  }

  else
  {
    v18 = CFGetAllocator(a1);
    v19 = CFDataCreateWithBytesNoCopy(v18, *&length[1], length[0], v10);
    v16 = v19;
    if (v19)
    {
      v17 = 0;
      *a5 = CFRetain(v19);
    }

    else
    {
      free(*&length[1]);
      v17 = 2;
    }
  }

  SafeRelease(v16);
  SafeRelease(v10);
  return v17;
}

uint64_t AMAuthInstallApImg3PersonalizeImg3WithEntryNameAndOptions(void *a1, const __CFURL *a2, const __CFURL *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6, char a7)
{
  *v14 = 0;
  if (a1)
  {
    v8 = 0;
    v9 = 1;
    if (a3 && a2 && a1[2])
    {
      v11 = AMAuthInstallApImg3CopyPersonalizedData(a1, a2, a4, a5, a6, v14, a7 & 1);
      if (v11)
      {
        v9 = v11;
        v8 = *v14;
      }

      else
      {
        v13 = CFGetAllocator(a1);
        v8 = *v14;
        v9 = AMAuthInstallSupportWriteDataToFileURL(v13, *v14, a3, 1);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  SafeRelease(v8);
  return v9;
}

uint64_t AMAuthInstallApImg3CopyBuildString(const __CFAllocator *a1, const void *a2, CFStringRef *a3)
{
  theData = 0;
  v27 = 0;
  __s = 0;
  DataFromFileURL = AMAuthInstallSupportCreateDataFromFileURL(a1, &theData, a2);
  if (DataFromFileURL)
  {
    v22 = DataFromFileURL;
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (image3InstantiateFromBuffer(&v27, BytePtr, Length, 0))
  {
    v22 = 9;
    v24 = "%s: invalid image 3 object";
    goto LABEL_19;
  }

  if (image3GetTagString(v27, 1447383635, &__s, 0))
  {
    v22 = 9;
    v24 = "%s: failed to get tag";
    goto LABEL_19;
  }

  v18 = __s;
  if (!strchr(__s, 126))
  {
    v19 = strlen(v18);
    if (v19 + 1 < 2)
    {
      v22 = 99;
      v24 = "$s: failed to get tag buffer length";
    }

    else
    {
      v20 = realloc(v18, v19 + 2);
      __s = v20;
      if (v20)
      {
        *&v20[strlen(v20)] = 126;
        v18 = __s;
        goto LABEL_8;
      }

      v22 = 2;
      v24 = "$s: failed to realloc tag buffer";
    }

LABEL_19:
    AMAuthInstallLog(3, "AMAuthInstallApImg3CopyBuildString", v24, v13, v14, v15, v16, v17, "AMAuthInstallApImg3CopyBuildString");
    goto LABEL_20;
  }

LABEL_8:
  v21 = CFStringCreateWithCString(a1, v18, 0x8000100u);
  *a3 = v21;
  if (v21)
  {
    v22 = 0;
    goto LABEL_10;
  }

  v22 = 2;
LABEL_20:
  AMAuthInstallLog(8, "AMAuthInstallApImg3CopyBuildString", "%s: %@", v6, v7, v8, v9, v10, "AMAuthInstallApImg3CopyBuildString");
LABEL_10:
  if (v27)
  {
    image3Discard(&v27);
  }

  SafeRelease(theData);
  SafeFree(__s);
  return v22;
}

CFStringRef AMAuthInstallApImg4GetTypeForEntryName(CFStringRef theString1)
{
  v2 = off_29EE99A48;
  v3 = 218;
  while (CFStringCompare(theString1, *(v2 - 1), 0))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = *v2;
LABEL_6:
  if (v4)
  {
    return v4;
  }

  else
  {
    return theString1;
  }
}

CFStringRef AMAuthInstallApImg4GetEntryNameForType(CFStringRef theString1)
{
  v2 = off_29EE99A48;
  v3 = 218;
  while (CFStringCompare(theString1, *v2, 0))
  {
    v2 += 2;
    if (!--v3)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = CFRetain(*(v2 - 1));
LABEL_6:
  if (!result)
  {
    return theString1;
  }

  return result;
}

CFStringRef AMAuthInstallApImg4CopyPayloadType(const __CFAllocator *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = 0;
  if (!cf)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_6(a1, 0, a3, a4, a5, a6, a7, a8, v53);
    return 0;
  }

  v10 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  if (v10 != TypeID)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_1(TypeID, v12, v13, v14, v15, v16, v17, v18, v53);
    return 0;
  }

  v57 = 0;
  v58 = 0;
  memset(numBytes, 0, sizeof(numBytes));
  Length = CFDataGetLength(cf);
  BytePtr = CFDataGetBytePtr(cf);
  v20 = DERDecoderInitialize(&Length + 4, BytePtr, &Length, Length);
  if (v20)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  DataWithTag = DERDecoderGetDataWithTag(&Length + 4, 0, 0x10u, 1, &numBytes[1], numBytes, &v55);
  if (DataWithTag)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_3(DataWithTag, v29, v30, v31, v32, v33, v34, v35);
    return 0;
  }

  v36 = DERDecoderInitialize(&Length + 4, *&numBytes[1], numBytes, numBytes[0]);
  if (v36)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_4(v36, v37, v38, v39, v40, v41, v42, v43);
    return 0;
  }

  v55 = 1;
  v44 = DERDecoderGetDataWithTag(&Length + 4, 0, 0x16u, 0, &numBytes[1], numBytes, &v55);
  if (v44)
  {
    AMAuthInstallApImg4CopyPayloadType_cold_5(v44, v45, v46, v47, v48, v49, v50, v51);
    return 0;
  }

  return CFStringCreateWithBytes(a1, *&numBytes[1], numBytes[0], 0x8000100u, 0);
}

uint64_t AMAuthInstallApImg4CopyPayloadVersionProperty(const __CFAllocator *a1, const void *a2, int a3, uint64_t *a4)
{
  v51 = *MEMORY[0x29EDCA608];
  Length = 0;
  theData = 0;
  v38 = 0;
  BytePtr = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v36 = 0;
  MutableBytePtr = 0;
  v35 = 0;
  if (!a2 || !a4)
  {
    v16 = 0;
    v14 = 0;
    v31 = 0;
    v32 = 0;
    v23 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v7 = AMAuthInstallApImg4CopyPayload(a1, a2, &theData);
  if (v7)
  {
    v23 = v7;
    v16 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = DERImg4DecodePayload(&BytePtr, &v42);
  if (v8)
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to decode img4 payload, error:%d", v9, v10, v11, v12, v13, v8);
    v16 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  v14 = AMSupportCopyDataFromAsciiEncodedHex();
  if (!v14)
  {
    v16 = 0;
    v23 = 3;
    goto LABEL_10;
  }

  MutableCopy = CFDataCreateMutableCopy(a1, 0, v14);
  v16 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_19;
  }

  v17 = 1952607602;
  MutableBytePtr = CFDataGetMutableBytePtr(MutableCopy);
  v38 = CFDataGetLength(v16);
  if (a3 == 1)
  {
    v17 = 1952607603;
    goto LABEL_12;
  }

  if (a3 == 2)
  {
LABEL_12:
    Img4DecodeGetPayloadVersionPropertyString(&MutableBytePtr, v17 | 0xE000000000000000, &v36, &v35);
    if (!v30)
    {
      v24 = AMSupportCopyDataFromAsciiEncodedHex();
      if (v24)
      {
        v23 = 0;
        goto LABEL_15;
      }

LABEL_19:
      v23 = 2;
      goto LABEL_10;
    }

    AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "failed to parse version property: %d, error:%d", v25, v26, v27, v28, v29, v17);
LABEL_24:
    v23 = 23;
    goto LABEL_10;
  }

  AMAuthInstallLog(3, "AMAuthInstallApImg4CopyPayloadVersionProperty", "unsupported property type: %d\n", v18, v19, v20, v21, v22, a3);
  v23 = 1;
LABEL_10:
  v24 = 0;
LABEL_15:
  *a4 = v24;
  v31 = v16;
  v32 = v14;
LABEL_16:
  SafeRelease(v31);
  SafeRelease(v32);
  SafeRelease(theData);
  v33 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t _AMAuthInstallApImg4StitchToURL(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4, uint64_t (*a5)(FILE *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  v53 = 0;
  *&__nitems[1] = 0;
  __nitems[0] = 0;
  if (!a1)
  {
    _AMAuthInstallApImg4StitchToURL_cold_7(0, theData, a3, a4, a5, a6, a7, a8, v51);
    v44 = 1;
    goto LABEL_19;
  }

  v8 = a3;
  if (!a3)
  {
    _AMAuthInstallApImg4StitchToURL_cold_6(a1, theData, a3, a4, a5, a6, a7, a8, v51);
LABEL_31:
    v44 = 4;
    goto LABEL_19;
  }

  v12 = a1;
  if (!theData)
  {
    v22 = Img4EncodeIMG4Tag(&v54);
    if (!v22)
    {
      v30 = 0;
      goto LABEL_9;
    }

LABEL_28:
    _AMAuthInstallApImg4StitchToURL_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_35;
  }

  Length = CFDataGetLength(theData);
  v14 = Img4EncodeManifestHeader(Length, &v55[1], v55);
  if (v14)
  {
    _AMAuthInstallApImg4StitchToURL_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_35;
  }

  v22 = Img4EncodeIMG4Tag(&v54);
  if (v22)
  {
    goto LABEL_28;
  }

  LODWORD(v22) = CFDataGetLength(theData);
  v30 = v55[0];
LABEL_9:
  v31 = Img4EncodeImg4Header(v22 + v8 + v30 + v53, &__nitems[1], __nitems);
  if (!v31)
  {
    v39 = AMAuthInstallPlatformOpenFileStreamWithURL();
    if (v39)
    {
      v40 = v39;
      v41 = fwrite(*&__nitems[1], 1uLL, __nitems[0], v39);
      if (v41 == __nitems[0])
      {
        v42 = fwrite(v54, 1uLL, v53, v40);
        if (v42 == v53)
        {
          v43 = a5(v40, a4);
          v44 = v43;
          if (!theData || v43)
          {
            goto LABEL_18;
          }

          v45 = fwrite(*&v55[1], 1uLL, v55[0], v40);
          if (v45 == v55[0])
          {
            BytePtr = CFDataGetBytePtr(theData);
            v47 = CFDataGetLength(theData);
            v48 = fwrite(BytePtr, 1uLL, v47, v40);
            if (v48 == CFDataGetLength(theData))
            {
              v44 = 0;
LABEL_18:
              fclose(v40);
              goto LABEL_19;
            }

            v50 = "failed to stitch manifest to file: %s";
          }

          else
          {
            v50 = "failed to stitch manifest header to file: %s";
          }
        }

        else
        {
          v50 = "failed to write img4 string to dst file: %s";
        }
      }

      else
      {
        v50 = "failed to write header to dst file: %s";
      }

      _AMAuthInstallApImg4StitchToURL_cold_4(v50);
      v44 = 4;
      goto LABEL_18;
    }

    _AMAuthInstallApImg4StitchToURL_cold_5(v12);
    goto LABEL_31;
  }

  _AMAuthInstallApImg4StitchToURL_cold_2(v31, v32, v33, v34, v35, v36, v37, v38);
LABEL_35:
  v44 = 14;
LABEL_19:
  if (*&v55[1])
  {
    free(*&v55[1]);
  }

  if (v54)
  {
    free(v54);
  }

  if (*&__nitems[1])
  {
    free(*&__nitems[1]);
  }

  return v44;
}

uint64_t _WriteCFDataIntoFile(FILE *a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return 4 * (fwrite(BytePtr, 1uLL, Length, a1) != Length);
}

uint64_t _WriteStreamIntoFile(FILE *a1, FILE *a2)
{
  v11 = malloc(0x100000uLL);
  if (v11)
  {
    while (1)
    {
      v12 = fread(v11, 1uLL, 0x100000uLL, a2);
      if (!v12)
      {
        break;
      }

      if (fwrite(v11, 1uLL, v12, a1) != v12)
      {
        _WriteStreamIntoFile_cold_1();
        v13 = 4;
        goto LABEL_6;
      }
    }

    v13 = 4 * (ferror(a2) != 0);
  }

  else
  {
    _WriteStreamIntoFile_cold_2(0, v4, v5, v6, v7, v8, v9, v10, v15);
    v13 = 2;
  }

LABEL_6:
  free(v11);
  return v13;
}

uint64_t AMAuthInstallApImg4StitchRestoreInfoWithAMAI(const __CFString *a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = 0;
  *v45 = 0;
  *v46 = 0;
  v6 = 1;
  if (a2)
  {
    Mutable = 0;
    if (a3)
    {
      v12 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (a1)
      {
        v13 = &off_29EE9A7F0;
        v14 = 4;
        do
        {
          v15 = *(v13 - 2);
          if (!v15)
          {
            AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_3();
          }

          if (CFStringCompare(v15, a1, 0) == kCFCompareEqualTo)
          {
            v16 = *v13;
            if (!**v13)
            {
              AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_2();
            }

            v17 = v16[1];
            if (!v17)
            {
              AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_1();
            }

            v18 = (v17)(a5, a3);
            if (v18)
            {
              v19 = v18;
              CFDictionarySetValue(Mutable, *v16, v18);
              CFRelease(v19);
            }
          }

          v13 += 3;
          --v14;
        }

        while (v14);
      }

      if (Mutable)
      {
        if (a4)
        {
          CFDictionaryApplyFunction(a4, _merge_dictionary, Mutable);
        }

        if (a1)
        {
          v5 = CFStringCreateWithFormat(v12, 0, @"%@-TBM", a1);
          if (v5)
          {
            Value = CFDictionaryGetValue(a3, v5);
            if (Value)
            {
              v21 = Value;
              v22 = CFDictionaryGetValue(Value, @"ucon");
              v23 = CFDictionaryGetValue(v21, @"ucer");
              if (v22)
              {
                CFDictionaryAddValue(Mutable, @"ucon", v22);
              }

              if (v23)
              {
                CFDictionaryAddValue(Mutable, @"ucer", v23);
              }
            }
          }
        }

        else
        {
          v5 = 0;
        }

        if (CFDictionaryGetCount(Mutable))
        {
          DataFromMappedFileURL = AMAuthInstallSupportCreateDataFromMappedFileURL(0, v46, a2);
          if (DataFromMappedFileURL)
          {
            v6 = DataFromMappedFileURL;
            AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to read data from %@", v25, v26, v27, v28, v29, a2);
          }

          else
          {
            v30 = AMAuthInstallApImg4EncodeRestoreInfo(*v46, Mutable, v45);
            if (v30)
            {
              v6 = v30;
              AMAuthInstallApImg4StitchRestoreInfoWithAMAI_cold_4(v30, v31, v32, v33, v34, v35, v36, v37);
            }

            else
            {
              v6 = AMAuthInstallSupportWriteDataToFileURL(0, *v45, a2, 1);
              if (v6)
              {
                AMAuthInstallLog(3, "AMAuthInstallApImg4StitchRestoreInfoWithAMAI", "failed to write stitched data to %@", v38, v39, v40, v41, v42, a2);
              }
            }
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v5 = 0;
        v6 = 2;
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  SafeRelease(Mutable);
  SafeRelease(*v46);
  SafeRelease(*v45);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallApImg4EncodeRestoreInfo(const __CFData *a1, CFDictionaryRef theDict, CFDataRef *a3)
{
  v45[0] = 0;
  v45[1] = 0;
  v44 = 0;
  v43 = 0;
  v41 = 0;
  bytes = 0;
  v39 = 0;
  length = 0;
  v37 = 0;
  v38 = 0;
  if (!a1 || !theDict || (Count = CFDictionaryGetCount(theDict), !a3) || Count < 1)
  {
    Mutable = 0;
    if (!a3)
    {
      v30 = 3;
      v18 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    goto LABEL_31;
  }

  v44 = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  if (DERDecoderInitialize(v45, BytePtr, &v44, v44))
  {
    v29 = "DERDecoderInitialize top level failed";
    goto LABEL_30;
  }

  if (DERDecoderGetDataWithTag(v45, 0, 0x10u, 1, &bytes, &length + 1, &v43))
  {
    v29 = "could not find im4p top level sequence";
    goto LABEL_30;
  }

  if (DERDecoderInitialize(v45, bytes, &length + 1, HIDWORD(length)))
  {
    v29 = "DERDecoderInitialize sequence failed";
    goto LABEL_30;
  }

  v43 = 3;
  EncodingWithTag = DERDecoderGetEncodingWithTag(v45, 2u, 1u, 1, &v41, &length, &v43);
  if (EncodingWithTag)
  {
    if (!AMAuthInstallApImg4EncodeRestoreDict(theDict, &v37))
    {
      Mutable = 0;
      goto LABEL_13;
    }

    v29 = "AMAuthInstallApImg4EncodeRestoreDict failed";
LABEL_30:
    AMAuthInstallApImg4EncodeRestoreInfo_cold_1(v29, v8, v9, v10, v11, v12, v13, v14);
    Mutable = 0;
    v18 = 0;
    goto LABEL_31;
  }

  HIDWORD(length) -= length;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v38 = Mutable;
  if (!AMAuthInstallApImg4DecodeRestoreInfo(a1, &v38))
  {
    AMSupportCreateMergedDictionary();
    v30 = 0;
    AMAuthInstallLog(3, "AMAuthInstallApImg4EncodeRestoreInfo", "failed to create merged restore Info dictionary", v31, v32, v33, v34, v35, v36);
LABEL_32:
    v18 = 0;
    goto LABEL_18;
  }

  v21 = AMAuthInstallApImg4EncodeRestoreDict(theDict, &v37);
  if (v21)
  {
    v30 = v21;
    AMAuthInstallApImg4EncodeRestoreInfo_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
    goto LABEL_32;
  }

LABEL_13:
  v17 = CFDataCreateMutable(0, 0);
  v18 = v17;
  if (!v17 || (CFDataAppendBytes(v17, bytes, HIDWORD(length)), CFDataAppendBytes(v18, v37, HIDWORD(v39)), !DEREncoderCreate()))
  {
    if (!EncodingWithTag)
    {
      v30 = 2;
      goto LABEL_18;
    }

LABEL_31:
    *a3 = 0;
    v30 = 3;
    goto LABEL_18;
  }

  CFDataGetBytePtr(v18);
  CFDataGetLength(v18);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_31;
  }

  v19 = CFDataCreate(0, 0, v39);
  *a3 = v19;
  v30 = 2 * (v19 == 0);
LABEL_18:
  SafeRelease(Mutable);
  SafeFree(v37);
  SafeFree(0);
  SafeRelease(v18);
  DEREncoderDestroy();
  return v30;
}

CFDataRef AMAuthInstallApImg4CreateStitchTicket(const __CFAllocator *a1, const __CFData *a2, const __CFData *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    a3 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_23;
  }

  if (CFStringGetCString(@"IMG4", buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    v6 = DEREncoderAddData();
    if (v6)
    {
      AMAuthInstallApImg4CreateStitchTicket_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      goto LABEL_23;
    }
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_23:
    a3 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  Mutable = CFDataCreateMutable(a1, 0);
  v15 = Mutable;
  if (!Mutable)
  {
    a3 = 0;
    goto LABEL_17;
  }

  CFDataAppendBytes(Mutable, 0, 0);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  CFDataAppendBytes(v15, BytePtr, Length);
  if (a3)
  {
    if (!DEREncoderCreate() || (CFDataGetBytePtr(a3), CFDataGetLength(a3), DEREncoderAddData()) || DEREncoderCreateEncodedBuffer())
    {
      a3 = 0;
    }

    else
    {
      v18 = CFDataCreate(a1, 0, 0);
      a3 = v18;
      if (v18)
      {
        v19 = CFDataGetBytePtr(v18);
        v20 = CFDataGetLength(a3);
        CFDataAppendBytes(v15, v19, v20);
        goto LABEL_13;
      }
    }

LABEL_17:
    SafeRelease(0);
    v21 = 0;
    goto LABEL_18;
  }

LABEL_13:
  if (!DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CFDataGetBytePtr(v15);
  CFDataGetLength(v15);
  if (DEREncoderAddDataNoCopy())
  {
    goto LABEL_17;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_17;
  }

  v21 = CFDataCreateWithBytesNoCopy(a1, 0, 0, *MEMORY[0x29EDB8EE0]);
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_18:
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeFree(0);
  SafeFree(0);
  SafeRelease(v15);
  SafeRelease(a3);
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

BOOL AMAuthInstallApImg4SupportsLocalSigning(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (*(v1 + 92))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallApImg4GetTagAsInteger(CFStringRef theString)
{
  v4 = 0;
  if (!theString)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i == CFStringGetLength(theString))
    {
      break;
    }

    *(&v4 + i) = CFStringGetCharacterAtIndex(theString, i);
  }

  return bswap32(v4);
}

uint64_t AMAuthInstallApImg4AddInteger32Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ string", v11, v12, v13, v14, v15, a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s: invalid datatype", v16, v17, v18, v19, v20, "AMAuthInstallApImg4AddInteger32Property");
    if (CString)
    {
      v34 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v34 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddInteger32Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt32())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger32Property", "failed to add %@ value", v21, v22, v23, v24, v25, a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v26 = DEREncoderAddPrivateFromEncoder();
  if (v26)
  {
    AMAuthInstallApImg4AddInteger32Property_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_17;
  }

  v34 = 0;
LABEL_11:
  DEREncoderDestroy();
  v35 = *MEMORY[0x29EDCA608];
  return v34;
}

uint64_t AMAuthInstallApImg4AddInteger64Property(uint64_t a1, const __CFString *a2, const __CFNumber *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = *MEMORY[0x29EDCA608];
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_17;
  }

  CString = CFStringGetCString(a2, buffer, 256, 0x8000100u);
  if (CString)
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ string", v11, v12, v13, v14, v15, a2);
      goto LABEL_17;
    }
  }

  if (!CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr))
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s: invalid datatype", v16, v17, v18, v19, v20, "AMAuthInstallApImg4AddInteger64Property");
    if (CString)
    {
      v34 = 1;
      goto LABEL_11;
    }

LABEL_17:
    v34 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddInteger64Property");
    goto LABEL_11;
  }

  if (DEREncoderAddUInt64())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddInteger64Property", "failed to add %@ value", v21, v22, v23, v24, v25, a2);
    goto LABEL_17;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v26 = DEREncoderAddPrivateFromEncoder();
  if (v26)
  {
    AMAuthInstallApImg4AddInteger64Property_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_17;
  }

  v34 = 0;
LABEL_11:
  DEREncoderDestroy();
  v35 = *MEMORY[0x29EDCA608];
  return v34;
}

uint64_t AMAuthInstallApImg4AddBooleanProperty(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !DEREncoderCreate())
  {
    goto LABEL_13;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "failed to add %@ string", v9, v10, v11, v12, v13, a2);
      goto LABEL_13;
    }
  }

  v14 = DEREncoderAddData();
  if (v14)
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
LABEL_13:
    v30 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddBooleanProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddBooleanProperty");
    goto LABEL_9;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v22 = DEREncoderAddPrivateFromEncoder();
  if (v22)
  {
    AMAuthInstallApImg4AddBooleanProperty_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_13;
  }

  v30 = 0;
LABEL_9:
  DEREncoderDestroy();
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

uint64_t AMAuthInstallApImg4AddDataProperty(uint64_t a1, const __CFString *a2, const __CFData *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ string", v10, v11, v12, v13, v14, a2);
      goto LABEL_14;
    }
  }

  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "failed to add %@ data", v15, v16, v17, v18, v19, a2);
LABEL_14:
    v28 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDataProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddDataProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a2);
  v20 = DEREncoderAddPrivateFromEncoder();
  if (v20)
  {
    AMAuthInstallApImg4AddDataProperty_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_14;
  }

  v28 = 0;
LABEL_10:
  DEREncoderDestroy();
  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t AMAuthInstallApImg4AddDictionaryProperty(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2 || !a3 || !DEREncoderCreate())
  {
    goto LABEL_14;
  }

  if (CFStringGetCString(a3, buffer, 256, 0x8000100u))
  {
    strlen(buffer);
    if (DEREncoderAddData())
    {
      AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "failed to add %@ string", v9, v10, v11, v12, v13, a3);
      goto LABEL_14;
    }
  }

  v14 = DEREncoderAddSetFromEncoder();
  if (v14)
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
LABEL_14:
    v30 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4AddDictionaryProperty", "%s failed to create DER file", a4, a5, a6, a7, a8, "AMAuthInstallApImg4AddDictionaryProperty");
    goto LABEL_10;
  }

  AMAuthInstallApImg4GetTagAsInteger(a3);
  v22 = DEREncoderAddPrivateFromEncoder();
  if (v22)
  {
    AMAuthInstallApImg4AddDictionaryProperty_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_14;
  }

  v30 = 0;
LABEL_10:
  DEREncoderDestroy();
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

BOOL _DERItemEqualsCString(uint64_t a1, char *__s)
{
  v2 = *a1;
  if (*a1 && (v5 = strlen(__s), *(a1 + 8) == v5))
  {
    return strncmp(v2, __s, v5) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t AMAuthInstallApImg4ValidImage(void *a1)
{
  v1 = a1;
  v18 = 0;
  if (!a1)
  {
    AMSupportCreateErrorInternal();
LABEL_14:
    v15 = 0;
    goto LABEL_17;
  }

  v2 = AMAuthInstallPlatformOpenFileStreamWithURL();
  if (!v2)
  {
    v16 = __error();
    strerror(*v16);
    AMSupportCreateErrorInternal();
    v1 = 0;
    goto LABEL_14;
  }

  v3 = v2;
  v4 = malloc(0x20uLL);
  v1 = v4;
  if (v4)
  {
    v5 = fread(v4, 1uLL, 0x20uLL, v3);
    v11 = v5;
    if (v5 != 32)
    {
      AMAuthInstallLog(4, "AMAuthInstallApImg4ValidImage", "Read %ld bytes out of expected %ld", v6, v7, v8, v9, v10, v5);
    }

    v12 = Img4DecodeParseLengthFromBufferWithTag(v1, v11, 0x494D3450u, &v18);
    v13 = Img4DecodeParseLengthFromBufferWithTag(v1, v11, 0x494D4734u, &v18);
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
  }

  else
  {
    AMSupportCreateErrorInternal();
    v15 = 0;
  }

  fclose(v3);
LABEL_17:
  SafeFree(v1);
  return v15;
}

uint64_t AMAuthInstallApImg4FindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  *v8 = 0uLL;
  v5 = DERDecodeSeqContentInit(a1, v8);
  if (v5)
  {
    v6 = v5;
    AMAuthInstallApImg4FindItemWithTag_cold_1();
  }

  else
  {
    v11 = *v8;
    v9 = 0;
    v10 = 0uLL;
    while (1)
    {
      v6 = DERDecodeSeqNext(&v11, &v9);
      if (v6)
      {
        break;
      }

      if (v9 == a2)
      {
        *a3 = v10;
        return v6;
      }
    }
  }

  return v6;
}

CFTypeRef _AMAuthInstallApImg4CopySEPNonceSlotID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 56)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

CFTypeRef _AMAuthInstallApImg4CopyApNonceSlotID(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return AMAuthInstallApImg4ReCreatePayloadWithProperties();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v11 = a2 & 0xFFFFFFFFFFFFLL | 0xE000000000000000;

  return AMAuthInstallApImg4DecodePayloadProperty(va1, v11, va);
}

void OUTLINED_FUNCTION_10(uint64_t a1, const void *a2)
{
  v5 = *v3;

  CFDictionarySetValue(v2, a2, v5);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{
  result = 0;
  *(*(v1 + 16) + 48) = a1;
  return result;
}

CFDataRef OUTLINED_FUNCTION_13(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  v5 = *v3;

  return CFDataCreateWithBytesNoCopy(0, a2, a3, v5);
}

CFComparisonResult OUTLINED_FUNCTION_14(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

CFComparisonResult OUTLINED_FUNCTION_15(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t AMAuthInstallApImg4LocalCreateManifestBody(void *a1, CFTypeRef a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    v170 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", a4, a5, a6, a7, a8, "AMAuthInstallApImg4LocalCreateManifestBody");
    if (!a3)
    {
      v18 = 0;
      goto LABEL_68;
    }

    v18 = 0;
LABEL_85:
    SafeRelease(*a3);
    v170 = 3;
    goto LABEL_68;
  }

  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request", 2);
  v16 = DEREncoderCreate();
  if (!v16)
  {
    v18 = 0;
    goto LABEL_84;
  }

  v17 = CFGetAllocator(a1);
  v18 = CFNumberCreate(v17, kCFNumberIntType, (a1[2] + 84));
  if (!v18)
  {
    goto LABEL_84;
  }

  if (AMAuthInstallApImg4AddInteger32Property(v16, @"CEPO", v18, v11, v12, v13, v14, v15))
  {
    goto LABEL_84;
  }

  Value = CFDictionaryGetValue(a2, @"ApChipID");
  if (Value)
  {
    v20 = Value;
    v21 = CFGetTypeID(Value);
    if (v21 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v16, @"CHIP", v20, v22, v23, v24, v25, v26))
      {
        goto LABEL_84;
      }
    }
  }

  v27 = CFDictionaryGetValue(a2, @"ApBoardID");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFNumberGetTypeID())
    {
      if (AMAuthInstallApImg4AddInteger32Property(v16, @"BORD", v28, v30, v31, v32, v33, v34))
      {
        goto LABEL_84;
      }
    }
  }

  v35 = CFDictionaryGetValue(a2, @"ApECID");
  if (v35 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFNumberGetTypeID()))
  {
    v43 = AMAuthInstallApImg4AddInteger64Property(v16, @"ECID", v36, v38, v39, v40, v41, v42);
    if (v43)
    {
      AMAuthInstallApImg4LocalCreateManifestBody_cold_1(v43, v44, v45, v46, v47, v48, v49, v50, v173);
      goto LABEL_84;
    }

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  v52 = CFDictionaryGetValue(a2, @"ApSecurityDomain");
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFNumberGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddInteger32Property(v16, @"SDOM", v53, v55, v56, v57, v58, v59);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v61 = CFDictionaryGetValue(a2, @"ApProductionMode");
  v69 = 0;
  if (v61)
  {
    v67 = v61;
    v68 = CFGetTypeID(v61);
    if (v68 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v67))
      {
        v69 = 1;
      }
    }
  }

  v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"CPRO", v69, v62, v63, v64, v65, v66);
  if (v60)
  {
    goto LABEL_69;
  }

  v70 = CFDictionaryGetValue(a2, @"ApSecurityMode");
  v78 = 0;
  if (v70)
  {
    v76 = v70;
    v77 = CFGetTypeID(v70);
    if (v77 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v76))
      {
        v78 = 1;
      }
    }
  }

  v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"CSEC", v78, v71, v72, v73, v74, v75);
  if (v60)
  {
    goto LABEL_69;
  }

  v79 = CFDictionaryGetValue(a2, @"ApLocalNonceHash");
  if (v79)
  {
    v80 = v79;
    v81 = CFGetTypeID(v79);
    if (v81 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"LNCH", v80, v82, v83, v84, v85, v86);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v87 = CFDictionaryGetValue(a2, @"ApNonce");
  if (v87)
  {
    v88 = v87;
    v89 = CFGetTypeID(v87);
    if (v89 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"BNCH", v88, v90, v91, v92, v93, v94);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v95 = CFDictionaryGetValue(a2, @"SepNonce");
  if (v95)
  {
    v96 = v95;
    v97 = CFGetTypeID(v95);
    if (v97 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"snon", v96, v98, v99, v100, v101, v102);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v103 = CFDictionaryGetValue(a2, @"ApAllowMixAndMatch");
  if (v103)
  {
    v104 = v103;
    v105 = CFGetTypeID(v103);
    if (v105 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v104))
      {
        v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"AMNM", 1, v106, v107, v108, v109, v110);
        if (v60)
        {
          goto LABEL_69;
        }
      }
    }
  }

  v111 = CFDictionaryGetValue(a2, @"Ap,NextStageIM4MHash");
  if (v111)
  {
    v112 = v111;
    v113 = CFGetTypeID(v111);
    if (v113 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"nsih", v112, v114, v115, v116, v117, v118);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v119 = CFDictionaryGetValue(a2, @"Ap,RecoveryOSPolicyNonceHash");
  if (v119)
  {
    v120 = v119;
    v121 = CFGetTypeID(v119);
    if (v121 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"ronh", v120, v122, v123, v124, v125, v126);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v127 = CFDictionaryGetValue(a2, @"Ap,VolumeUUID");
  if (v127)
  {
    v128 = v127;
    v129 = CFGetTypeID(v127);
    if (v129 == CFDataGetTypeID())
    {
      v60 = AMAuthInstallApImg4AddDataProperty(v16, @"vuid", v128, v130, v131, v132, v133, v134);
      if (v60)
      {
        goto LABEL_69;
      }
    }
  }

  v135 = CFDictionaryGetValue(a2, @"Ap,LocalBoot");
  if (v135)
  {
    v136 = v135;
    v137 = CFGetTypeID(v135);
    if (v137 == CFBooleanGetTypeID())
    {
      v138 = CFBooleanGetValue(v136);
      v60 = AMAuthInstallApImg4AddBooleanProperty(v16, @"lobo", v138, v139, v140, v141, v142, v143);
      if (v60)
      {
LABEL_69:
        v170 = v60;
        goto LABEL_79;
      }
    }
  }

  v144 = DEREncoderCreate();
  if (!v144)
  {
    goto LABEL_74;
  }

  v145 = AMAuthInstallApImg4AddDictionaryProperty(v16, v144, @"MANP", v11, v12, v13, v14, v15);
  if (v145)
  {
    v170 = v145;
    goto LABEL_79;
  }

  v146 = CFGetAllocator(a1);
  v152 = AMAuthInstallApImg4LocalAddImages(v146, a2, v144, v147, v148, v149, v150, v151);
  if (v152)
  {
    v170 = v152;
    v172 = "failed to add img objects to the manifest body";
LABEL_78:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", v172, v153, v154, v155, v156, v157, v173);
    goto LABEL_79;
  }

  v158 = DEREncoderCreate();
  if (!v158)
  {
LABEL_74:
    v170 = 2;
    goto LABEL_79;
  }

  v159 = AMAuthInstallApImg4AddDictionaryProperty(v144, v158, @"MANB", v11, v12, v13, v14, v15);
  if (v159)
  {
    v170 = v159;
    v172 = "failed to create the signed section";
    goto LABEL_78;
  }

  if (!DEREncoderCreate())
  {
    goto LABEL_74;
  }

  v160 = DEREncoderAddSetFromEncoder();
  if (v160)
  {
    v170 = v160;
LABEL_79:
    if (v51)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
LABEL_84:
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateManifestBody", "%s DER operation failed", v11, v12, v13, v14, v15, "AMAuthInstallApImg4LocalCreateManifestBody");
    goto LABEL_85;
  }

  v161 = CFGetAllocator(a1);
  v162 = CFDataCreate(v161, 0, 0);
  *a3 = v162;
  if (v162)
  {
    v170 = 0;
  }

  else
  {
    AMAuthInstallApImg4LocalCreateManifestBody_cold_2(0, v163, v164, v165, v166, v167, v168, v169);
    v170 = 2;
  }

LABEL_68:
  SafeFree(0);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v18);
  return v170;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedTag(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&length[65] = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v8 = a1;
  CString = CFStringGetCString(a1, &length[1], 256, 0x8000100u);
  if (!CString)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_3(CString, v10, v11, v12, v13, v14, v15, v16);
    goto LABEL_9;
  }

  if (!DEREncoderCreate())
  {
LABEL_9:
    SafeRelease(0);
    v30 = 0;
    goto LABEL_7;
  }

  strlen(&length[1]);
  if (DEREncoderAddData())
  {
    AMAuthInstallLog(3, "AMAuthInstallApImg4LocalCreateEncodedTag", "failed to add %@ string", v17, v18, v19, v20, v21, v8);
    goto LABEL_9;
  }

  EncodedBuffer = DEREncoderCreateEncodedBuffer();
  if (EncodedBuffer)
  {
    AMAuthInstallApImg4LocalCreateEncodedTag_cold_1(EncodedBuffer, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_9;
  }

  v30 = CFDataCreate(0, 0, 0);
LABEL_7:
  SafeFree(0);
  DEREncoderDestroy();
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedVersion()
{
  bytes = 0;
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  v0 = DEREncoderAddUInt32();
  if (v0)
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_1(v0, v1, v2, v3, v4, v5, v6, v7, 0);
LABEL_8:
    SafeRelease(0);
    v16 = 0;
    goto LABEL_5;
  }

  EncodedBuffer = DEREncoderCreateEncodedBuffer();
  if (EncodedBuffer)
  {
    AMAuthInstallApImg4LocalCreateEncodedVersion_cold_2(EncodedBuffer, v9, v10, v11, v12, v13, v14, v15);
    goto LABEL_8;
  }

  v16 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(bytes);
  DEREncoderDestroy();
  return v16;
}

CFDataRef AMAuthInstallApImg4LocalCreateEncodedData(const __CFData *a1)
{
  if (!DEREncoderCreate())
  {
    goto LABEL_8;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  v2 = DEREncoderAddData();
  if (v2)
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
LABEL_8:
    SafeRelease(0);
    v18 = 0;
    goto LABEL_5;
  }

  EncodedBuffer = DEREncoderCreateEncodedBuffer();
  if (EncodedBuffer)
  {
    AMAuthInstallApImg4LocalCreateEncodedData_cold_2(EncodedBuffer, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_8;
  }

  v18 = CFDataCreate(0, 0, 0);
LABEL_5:
  SafeFree(0);
  DEREncoderDestroy();
  return v18;
}

uint64_t _AMAuthInstallApImg4LocalCreateSignedManifest(void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CFTypeRef *a6, uint64_t a7, uint64_t a8)
{
  LODWORD(length) = 0;
  v111 = 0;
  theData = 0;
  v110 = 0;
  if (!a1 || !a2 || !a6)
  {
    v59 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", a4, a5, a6, a7, a8, "_AMAuthInstallApImg4LocalCreateSignedManifest");
    v69 = 0;
    v43 = 0;
    v32 = 0;
    Mutable = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v10 = a7;
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    v32 = 0;
LABEL_48:
    v43 = 0;
    goto LABEL_38;
  }

  EncodedTag = AMAuthInstallApImg4LocalCreateEncodedTag(@"IM4M", v16, v17, v18, v19, v20, v21, v22);
  v32 = EncodedTag;
  if (!EncodedTag)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_9(0, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_48;
  }

  BytePtr = CFDataGetBytePtr(EncodedTag);
  v34 = CFDataGetLength(v32);
  CFDataAppendBytes(Mutable, BytePtr, v34);
  EncodedVersion = AMAuthInstallApImg4LocalCreateEncodedVersion();
  v43 = EncodedVersion;
  if (!EncodedVersion)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_8(0, v36, v37, v38, v39, v40, v41, v42);
    goto LABEL_38;
  }

  cf = a5;
  v44 = CFDataGetBytePtr(EncodedVersion);
  v45 = CFDataGetLength(v43);
  CFDataAppendBytes(Mutable, v44, v45);
  if (a3)
  {
    v51 = CFRetain(a3);
    theData = v51;
    v59 = 99;
    if (v51)
    {
      goto LABEL_9;
    }

LABEL_19:
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_7(v51, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_38;
  }

  ManifestBody = AMAuthInstallApImg4LocalCreateManifestBody(a1, a2, &theData, v46, v47, v48, v49, v50);
  if (ManifestBody)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_1(ManifestBody, v52, v53, v54, v55, v56, v57, v58);
    goto LABEL_38;
  }

  v59 = 0;
  v51 = theData;
  if (!theData)
  {
    goto LABEL_19;
  }

LABEL_9:
  v60 = CFDataGetBytePtr(v51);
  v61 = CFDataGetLength(theData);
  CFDataAppendBytes(Mutable, v60, v61);
  if (!v10)
  {
    if (!AMAuthInstallApImg4LocalRegisterKeys(a1, v62, v63, v64, v65, v66, v67, v68))
    {
      if (a4)
      {
        v81 = CFRetain(a4);
        v111 = v81;
        if (v81)
        {
          EncodedData = AMAuthInstallApImg4LocalCreateEncodedData(v81);
          v69 = EncodedData;
          if (EncodedData)
          {
            v92 = CFDataGetBytePtr(EncodedData);
            v93 = CFDataGetLength(v69);
            CFDataAppendBytes(Mutable, v92, v93);
            if (cf)
            {
              v94 = CFRetain(cf);
              v110 = v94;
              if (v94)
              {
LABEL_26:
                v102 = CFDataGetBytePtr(v94);
                v103 = CFDataGetLength(v110);
                CFDataAppendBytes(Mutable, v102, v103);
                v59 = 0;
                goto LABEL_11;
              }
            }

            else
            {
              EncodedCertificateChain = AMAuthInstallApImg4LocalCreateEncodedCertificateChain(a1, &v110);
              if (EncodedCertificateChain)
              {
                _AMAuthInstallApImg4LocalCreateSignedManifest_cold_2(EncodedCertificateChain, v95, v96, v97, v98, v99, v100, v101);
                goto LABEL_39;
              }

              v94 = v110;
              if (v110)
              {
                goto LABEL_26;
              }
            }

            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_4(v94, v95, v96, v97, v98, v99, v100, v101);
          }

          else
          {
            _AMAuthInstallApImg4LocalCreateSignedManifest_cold_5(0, v85, v86, v87, v88, v89, v90, v91);
          }

LABEL_39:
          AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "%s failed to create DER file", v18, v19, v20, v21, v22, "_AMAuthInstallApImg4LocalCreateSignedManifest");
LABEL_40:
          SafeRelease(*a6);
          *a6 = 0;
          v59 = 3;
          goto LABEL_16;
        }

        goto LABEL_36;
      }

      v104 = *(a1[2] + 128);
      if (v104 != 384)
      {
        if (v104 == 256)
        {
          v106 = a1[49];
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallBasebandRembrandtLocalProvisionDevice())
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v104 != 1)
          {
            AMAuthInstallLog(3, "_AMAuthInstallApImg4LocalCreateSignedManifest", "Unsupported digest type: %d", v18, v19, v20, v21, v22, *(a1[2] + 128));
            goto LABEL_38;
          }

          v105 = a1[49];
          CFDataGetBytePtr(theData);
          CFDataGetLength(theData);
          if (AMAuthInstallBasebandRembrandtLocalProvisionDevice())
          {
            goto LABEL_38;
          }
        }

        goto LABEL_35;
      }

      v107 = a1[49];
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      if (!AMAuthInstallBasebandRembrandtLocalProvisionDevice())
      {
LABEL_35:
        v81 = v111;
LABEL_36:
        _AMAuthInstallApImg4LocalCreateSignedManifest_cold_6(v81, v82, v83, v18, v19, v20, v21, v22);
      }
    }

LABEL_38:
    v69 = 0;
    goto LABEL_39;
  }

  v69 = 0;
LABEL_11:
  if (!DEREncoderCreate())
  {
    goto LABEL_39;
  }

  CFDataGetBytePtr(Mutable);
  CFDataGetLength(Mutable);
  if (DEREncoderAddData() || DEREncoderCreateEncodedBuffer())
  {
    goto LABEL_39;
  }

  v70 = CFGetAllocator(a1);
  v71 = CFDataCreate(v70, 0, length);
  *a6 = v71;
  if (!v71)
  {
    _AMAuthInstallApImg4LocalCreateSignedManifest_cold_3(0, v72, v73, v74, v75, v76, v77, v78);
    v59 = 2;
  }

LABEL_16:
  SafeRelease(Mutable);
  SafeRelease(v32);
  SafeRelease(v43);
  SafeRelease(theData);
  SafeRelease(v111);
  SafeRelease(v69);
  SafeRelease(v110);
  SafeFree(0);
  DEREncoderDestroy();
  return v59;
}

uint64_t AMAuthInstallBasebandApplyTssOverrides(const void *a1, __CFDictionary *a2, CFTypeRef cf, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  data = 0;
  v60 = a2;
  error = 0;
  if (!a1)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_8(0, a2, cf, a4, a5, a6, a7, a8, v57);
LABEL_16:
    v17 = 0;
    v19 = 0;
    v18 = 1;
    goto LABEL_12;
  }

  if (!a2)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_7(a1, 0, cf, a4, a5, a6, a7, a8, v57);
    goto LABEL_16;
  }

  if (!cf)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_6(a1, a2, 0, a4, a5, a6, a7, a8, v57);
    goto LABEL_16;
  }

  v9 = BbfwReaderOpen(cf);
  v17 = v9;
  if (!v9)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_5(0, v10, v11, v12, v13, v14, v15, v16, v57);
    v19 = 0;
    v18 = 4;
    goto LABEL_12;
  }

  if (BbfwReaderFindAndCopyFileData(v9, @"Options.plist", &data))
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_12;
  }

  v20 = CFGetAllocator(a1);
  v21 = CFPropertyListCreateWithData(v20, data, 0, 0, &error);
  v19 = v21;
  if (!v21)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_4(&error, v22, v23, v24, v25, v26, v27, v28);
LABEL_20:
    v18 = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v21, @"TssOverrides");
  if (!Value)
  {
    AMAuthInstallBasebandApplyTssOverrides_cold_3(0, v30, v31, v32, v33, v34, v35, v36);
    goto LABEL_20;
  }

  v37 = Value;
  v38 = CFGetAllocator(a1);
  v39 = AMAuthInstallSupportApplyDictionaryOverrides(v38, v37, &v60, @"Bb");
  if (v39)
  {
    v18 = v39;
    AMAuthInstallBasebandApplyTssOverrides_cold_1(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    v47 = CFGetAllocator(a1);
    v48 = AMAuthInstallSupportApplyDictionaryOverrides(v47, v37, &v60, @"FDR");
    v18 = v48;
    if (v48)
    {
      AMAuthInstallBasebandApplyTssOverrides_cold_2(v48, v49, v50, v51, v52, v53, v54, v55);
    }
  }

LABEL_12:
  SafeRelease(v19);
  SafeRelease(data);
  SafeRelease(error);
  BbfwReaderClose(v17);
  return v18;
}

CFComparisonResult AMAuthInstallBasebandGetTagForKeyHashName(uint64_t a1, CFStringRef theString2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    AMAuthInstallBasebandGetTagForKeyHashName_cold_3(0, theString2, a3, a4, a5, a6, a7, a8, v14);
    return 1;
  }

  if (!theString2)
  {
    AMAuthInstallBasebandGetTagForKeyHashName_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v14);
    return 1;
  }

  if (!a3)
  {
    AMAuthInstallBasebandGetTagForKeyHashName_cold_1(a1, theString2, 0, a4, a5, a6, a7, a8, v14);
    return 1;
  }

  if (CFStringCompare(@"BbProvisioningManifestKeyHash", theString2, 0))
  {
    result = CFStringCompare(@"BbActivationManifestKeyHash", theString2, 0);
    if (result)
    {
      result = CFStringCompare(@"BbCalibrationManifestKeyHash", theString2, 0);
      if (result)
      {
        result = CFStringCompare(@"BbFactoryActivationManifestKeyHash", theString2, 0);
        if (result)
        {
          result = CFStringCompare(@"BbFDRSecurityKeyHash", theString2, 0);
          if (result)
          {
            return 8;
          }

          v13 = kAMAuthInstallTagBbFDRSecurityKeyHash;
        }

        else
        {
          v13 = kAMAuthInstallTagBbFactoryActivationKeyHash;
        }
      }

      else
      {
        v13 = kAMAuthInstallTagBbCalibrationKeyHash;
      }
    }

    else
    {
      v13 = kAMAuthInstallTagBbActivationKeyHash;
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12 && *(v12 + 4) != 80)
    {
      result = kCFCompareEqualTo;
      v13 = kAMAuthInstallTagBbProvisioningKeyHash;
    }

    else
    {
      result = kCFCompareEqualTo;
      v13 = kAMAuthInstallTagBbSKeyId;
    }
  }

  *a3 = *v13;
  return result;
}

uint64_t _AddFirmware(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  if (v5)
  {
    AMAuthInstallGetLocalizedStatusString(0, v5);
    AMAuthInstallLog(3, "_AddFirmware", "failed to extract bbfw item %@: %@; continuing anyway", v11, v12, v13, v14, v15, a2);
  }

  else if (value)
  {
    CFDictionarySetValue(v4, a2, value);
  }

  else
  {
    AMAuthInstallLog(4, "_AddFirmware", "failed to add %@; ignoring it", v6, v7, v8, v9, v10, a2);
  }

  SafeRelease(value);
  return 1;
}

uint64_t AMAuthInstallBasebandCopyCustomFirmware(const void *a1, const __CFString *a2)
{
  cf = 0;
  v24 = 0;
  v3 = CFGetAllocator(a1);
  v11 = CFURLCreateWithFileSystemPath(v3, a2, kCFURLPOSIXPathStyle, 0);
  if (v11)
  {
    v12 = *MEMORY[0x29EDB8ED8];
    v13 = AMAuthInstallSupportCopyURLToNewTempDirectory();
    if (v13)
    {
      v22 = v13;
      AMAuthInstallBasebandCopyCustomFirmware_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    else
    {
      AMAuthInstallBasebandCopyCustomFirmware_cold_5(v13, v14, v15, v16, v17, v18, v19, v20);
      v22 = 14;
    }
  }

  else
  {
    AMAuthInstallBasebandCopyCustomFirmware_cold_6(0, v4, v5, v6, v7, v8, v9, v10, cf);
    v22 = 2;
  }

  SafeRelease(v24);
  SafeRelease(cf);
  SafeRelease(v11);
  return v22;
}

uint64_t _AMAuthInstallBasebandCheckSnum(int a1, const __CFData *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a1 > 2044128)
  {
    if (a1 <= 5898464)
    {
      if (a1 <= 2814176)
      {
        if (a1 == 2044129)
        {
          if (!AMAuthInstallBasebandMAV25IsSnumValid(a2))
          {
            goto LABEL_6;
          }

          return 0;
        }

        v14 = 2089185;
        goto LABEL_32;
      }

      if (a1 == 2814177)
      {
        goto LABEL_33;
      }

      if (a1 == 4587745)
      {
        if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
        {
          goto LABEL_6;
        }

        return 0;
      }

      if (a1 != 5243105)
      {
        goto LABEL_44;
      }

      if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (a1 > 8343776)
      {
        if (a1 == 8343777 || a1 == 9572577)
        {
          goto LABEL_33;
        }

        v14 = 9781473;
        goto LABEL_32;
      }

      if (a1 == 5898465)
      {
        if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
        {
          goto LABEL_6;
        }

        return 0;
      }

      if (a1 != 7278817 && a1 != 7282913)
      {
        goto LABEL_44;
      }

      if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a1 > 241888)
  {
    if (a1 <= 1327328)
    {
      if (a1 != 241889 && a1 != 520417)
      {
        v14 = 938209;
        goto LABEL_32;
      }

LABEL_33:
      if (!AMAuthInstallBasebandJ2IsSnumValid(a2))
      {
        goto LABEL_6;
      }

      return 0;
    }

    if (a1 == 1327329 || a1 == 1515745)
    {
      goto LABEL_33;
    }

    v14 = 1700065;
LABEL_32:
    if (a1 != v14)
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  if ((a1 - 80) > 0x18)
  {
    goto LABEL_44;
  }

  if (((1 << (a1 - 80)) & 0x1A14000) == 0)
  {
    if (a1 == 80)
    {
      if (!AMAuthInstallBasebandICE3IsSnumValid(a2))
      {
        goto LABEL_6;
      }

      return 0;
    }

LABEL_44:
    AMAuthInstallLog(3, "_AMAuthInstallBasebandCheckSnum", "unrecognized chipid: 0x%08X", a4, a5, a6, a7, a8, a1);
    return 1;
  }

  if (AMAuthInstallBasebandICE3IsSnumValid(a2))
  {
    return 0;
  }

LABEL_6:
  AMAuthInstallLog(3, "_AMAuthInstallBasebandCheckSnum", "bad snum: %@", v9, v10, v11, v12, v13, v8);
  return 1;
}

uint64_t AMAuthInstallBasebandSetParametersWithUpdaterOutput(unint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v511 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_45(0, cf, a3, a4, a5, a6, a7, a8, v501);
LABEL_135:
    v19 = 0;
    goto LABEL_176;
  }

  if (!cf)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_44(a1, 0, a3, a4, a5, a6, a7, a8, v501);
    goto LABEL_135;
  }

  v10 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  if (v10 != TypeID)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_1(TypeID, v12, v13, v14, v15, v16, v17, v18, v501);
    goto LABEL_135;
  }

  AMAuthInstallLog(7, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "baseband updater output: %@", v14, v15, v16, v17, v18, cf);
  v19 = *(a1 + 48);
  v20 = calloc(1uLL, 0xB0uLL);
  if (!v20)
  {
    *(a1 + 48) = 0;
    v463 = 2;
    goto LABEL_177;
  }

  v20[9] = 0u;
  v20[10] = 0u;
  v20[7] = 0u;
  v20[8] = 0u;
  v20[5] = 0u;
  v20[6] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  *v20 = 0u;
  *(a1 + 48) = v20;
  Value = CFDictionaryGetValue(cf, @"ManifestInfo");
  if (Value)
  {
    v27 = Value;
    v508 = 0;
    *valuePtr = 0;
    v28 = CFDictionaryGetValue(Value, @"SKeyStatus");
    v29 = CFDictionaryGetValue(v27, @"CKeyStatus");
    if (!*(a1 + 216))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_12(v29, v30, v31, v32, v33, v34, v35, v36, v502);
      v463 = 14;
      goto LABEL_177;
    }

    v37 = v29;
    if (v28)
    {
      v38 = CFGetTypeID(v28);
      v39 = CFNumberGetTypeID();
      if (v38 != v39)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_2(v39, v40, v41, v42, v43, v44, v45, v46, v502);
        goto LABEL_176;
      }

      v47 = CFNumberGetValue(v28, kCFNumberSInt32Type, valuePtr);
      if (!v47)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_3(v47, v48, v49, v50, v51, v52, v53, v54);
        goto LABEL_167;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "provisioning key status=%d", v50, v51, v52, v53, v54, valuePtr[0]);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "provisioning key status not found", v32, v33, v34, v35, v36, v502);
    }

    if (v37)
    {
      v60 = CFGetTypeID(v37);
      v61 = CFNumberGetTypeID();
      if (v60 != v61)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_4(v61, v62, v63, v64, v65, v66, v67, v68);
        goto LABEL_176;
      }

      v69 = CFNumberGetValue(v37, kCFNumberSInt32Type, &v508);
      if (!v69)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_5(v69, v70, v71, v72, v73, v74, v75, v76);
        goto LABEL_167;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "calibration key status=%d", v72, v73, v74, v75, v76, v508);
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "calibration key status not found", v55, v56, v57, v58, v59, v503);
    }

    v77 = CFDictionaryGetValue(v27, @"SKeyHash");
    v83 = v77;
    if (v77)
    {
      v466 = CFGetTypeID(v77);
      v467 = CFDataGetTypeID();
      if (v466 != v467)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_6(v467, v468, v469, v470, v471, v472, v473, v474);
        goto LABEL_176;
      }

      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "Provisioning Key Hash found, setting to %@", v470, v471, v472, v473, v474, v83);
      v475 = AMAuthInstallBasebandSetKeyHashRootManifest(a1);
      if (v475)
      {
        v463 = v475;
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_7(v475, v476, v477, v478, v479, v480, v481, v482);
        goto LABEL_177;
      }
    }

    else
    {
      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "manifestProvisioningKeyHash not found in ManifestInfo", v78, v79, v80, v81, v82, v505);
    }

    v84 = CFDictionaryGetValue(v27, @"CKeyHash");
    if (!v84)
    {
      AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "manifestCalibrationKeyHash not found in ManifestInfo", v85, v86, v87, v88, v89, v506);
LABEL_22:
      v90 = CFDictionaryGetValue(v27, @"ProvisioningManifestSupported");
      if (v90)
      {
        v91 = v90;
        v92 = CFGetTypeID(v90);
        v93 = CFBooleanGetTypeID();
        if (v92 != v93)
        {
          AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_10(v93, v94, v95, v96, v97, v98, v99, v100);
          goto LABEL_176;
        }

        *(*(a1 + 48) + 80) = v91;
      }

      v101 = CFDictionaryGetValue(v27, @"ProvisioningManifestExists");
      if (v101)
      {
        v102 = v101;
        v103 = CFGetTypeID(v101);
        v104 = CFBooleanGetTypeID();
        if (v103 != v104)
        {
          AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_11(v104, v105, v106, v107, v108, v109, v110, v111);
          goto LABEL_176;
        }

        *(*(a1 + 48) + 88) = v102;
      }

      goto LABEL_28;
    }

    v483 = v84;
    v484 = CFGetTypeID(v84);
    v485 = CFDataGetTypeID();
    if (v484 != v485)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_8(v485, v486, v487, v488, v489, v490, v491, v492);
      goto LABEL_176;
    }

    AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "Calibration Key Hash found, setting to %@", v488, v489, v490, v491, v492, v483);
    v493 = AMAuthInstallBasebandSetKeyHashRootManifest(a1);
    if (!v493)
    {
      goto LABEL_22;
    }

    v463 = v493;
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_9(v493, v494, v495, v496, v497, v498, v499, v500);
LABEL_177:
    _AMAuthInstallBasebandParametersFinalize(*(a1 + 48));
    *(a1 + 48) = 0;
    goto LABEL_125;
  }

  AMAuthInstallLog(6, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "manifest dict not found", v22, v23, v24, v25, v26, v502);
LABEL_28:
  v112 = CFDictionaryGetValue(cf, @"VendorID");
  if (v112)
  {
    v113 = v112;
    v114 = CFGetTypeID(v112);
    v115 = CFNumberGetTypeID();
    if (v114 != v115)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_13(v115, v116, v117, v118, v119, v120, v121, v122);
      goto LABEL_176;
    }

    UInt32 = AMAuthInstallSupportGetUInt32(v113, *(a1 + 48));
    if (UInt32)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_14(UInt32, v124, v125, v126, v127, v128, v129, v130);
LABEL_167:
      v463 = 3;
      goto LABEL_177;
    }
  }

  else
  {
    **(a1 + 48) = 2;
  }

  v131 = CFDictionaryGetValue(cf, @"ChipID");
  if (v131)
  {
    v132 = v131;
    v133 = CFGetTypeID(v131);
    v134 = CFNumberGetTypeID();
    if (v133 != v134)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_15(v134, v135, v136, v137, v138, v139, v140, v141);
      goto LABEL_176;
    }

    v142 = AMAuthInstallSupportGetUInt32(v132, (*(a1 + 48) + 4));
    if (v142)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_16(v142, v143, v144, v145, v146, v147, v148, v149);
      goto LABEL_167;
    }
  }

  v150 = CFDictionaryGetValue(cf, @"CertID");
  if (v150 || (v150 = CFDictionaryGetValue(cf, @"GoldCertID")) != 0)
  {
    v151 = v150;
    v152 = CFGetTypeID(v150);
    v153 = CFNumberGetTypeID();
    if (v152 != v153)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_17(v153, v154, v155, v156, v157, v158, v159, v160);
      goto LABEL_176;
    }

    v161 = AMAuthInstallSupportGetUInt32(v151, (*(a1 + 48) + 8));
    if (v161)
    {
      v463 = v161;
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_18(v161, v162, v163, v164, v165, v166, v167, v168);
      goto LABEL_177;
    }
  }

  v169 = CFDictionaryGetValue(cf, @"FusingStatus");
  if (v169)
  {
    v170 = v169;
    v171 = CFGetTypeID(v169);
    v172 = CFNumberGetTypeID();
    if (v171 != v172)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_19(v172, v173, v174, v175, v176, v177, v178, v179);
      goto LABEL_176;
    }

    v180 = AMAuthInstallSupportGetUInt32(v170, (*(a1 + 48) + 96));
    if (v180)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_20(v180, v181, v182, v183, v184, v185, v186, v187);
      goto LABEL_167;
    }
  }

  v188 = CFDictionaryGetValue(cf, @"ChipSerialNo");
  if (v188)
  {
    v189 = v188;
    v190 = CFGetTypeID(v188);
    v191 = CFDataGetTypeID();
    if (v190 != v191)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_21(v191, v192, v193, v194, v195, v196, v197, v198);
      goto LABEL_176;
    }

    if (_AMAuthInstallBasebandCheckSnum(*(*(a1 + 48) + 4), v189, v193, v194, v195, v196, v197, v198))
    {
      AMAuthInstallLog(7, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "invalid snum: %@", v199, v200, v201, v202, v203, v189);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 16));
    *(*(a1 + 48) + 16) = SafeRetain(v189);
    if (!AMAuthInstallBasebandPersonalizationRequired(a1, v204, v205, v206, v207, v208, v209, v210))
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "This baseband is does not require personalization. Personalization disabled, continuing.", v211, v212, v213, v214, v215, v504);
      SafeRelease(*(*(a1 + 48) + 16));
      *(*(a1 + 48) + 16) = 0;
    }
  }

  v216 = CFDictionaryGetValue(cf, @"ProvisioningManifest");
  if (v216)
  {
    v217 = v216;
    v218 = CFGetTypeID(v216);
    v219 = CFDataGetTypeID();
    if (v218 != v219)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_22(v219, v220, v221, v222, v223, v224, v225, v226);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 112));
    *(*(a1 + 48) + 112) = CFRetain(v217);
  }

  v227 = CFDictionaryGetValue(cf, @"Nonce");
  if (v227)
  {
    v228 = v227;
    v229 = CFGetTypeID(v227);
    v230 = CFDataGetTypeID();
    if (v229 != v230)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_23(v230, v231, v232, v233, v234, v235, v236, v237);
      goto LABEL_176;
    }

    if (!CFDataGetLength(v228))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_24(0, v238, v239, v240, v241, v242, v243, v244);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 24));
    *(*(a1 + 48) + 24) = CFRetain(v228);
  }

  v245 = CFDictionaryGetValue(cf, @"provisioning");
  if (v245)
  {
    v246 = v245;
    v247 = CFDictionaryGetValue(v245, @"MEID");
    if (v247)
    {
      v248 = v247;
      v249 = CFGetTypeID(v247);
      v250 = CFStringGetTypeID();
      if (v249 != v250)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_25(v250, v251, v252, v253, v254, v255, v256, v257);
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 32));
      *(*(a1 + 48) + 32) = CFRetain(v248);
    }

    v258 = CFDictionaryGetValue(v246, @"IMEI");
    if (v258)
    {
      v259 = v258;
      v260 = CFGetTypeID(v258);
      v261 = CFStringGetTypeID();
      if (v260 != v261)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_26(v261, v262, v263, v264, v265, v266, v267, v268);
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 40));
      *(*(a1 + 48) + 40) = CFRetain(v259);
    }

    v269 = CFDictionaryGetValue(v246, @"IMEI2");
    if (v269)
    {
      v270 = v269;
      v271 = CFGetTypeID(v269);
      v272 = CFStringGetTypeID();
      if (v271 != v272)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_27(v272, v273, v274, v275, v276, v277, v278, v279);
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 48));
      *(*(a1 + 48) + 48) = CFRetain(v270);
    }

    v280 = CFDictionaryGetValue(v246, @"EID");
    if (v280)
    {
      v281 = v280;
      v282 = CFGetTypeID(v280);
      v283 = CFStringGetTypeID();
      if (v282 != v283)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_28(v283, v284, v285, v286, v287, v288, v289, v290);
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 56));
      *(*(a1 + 48) + 56) = CFRetain(v281);
    }

    v291 = CFDictionaryGetValue(v246, @"EncryptedSessionKey");
    if (v291)
    {
      v292 = v291;
      v293 = CFGetTypeID(v291);
      v294 = CFDataGetTypeID();
      if (v293 != v294)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_29(v294, v295, v296, v297, v298, v299, v300, v301);
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 72));
      *(*(a1 + 48) + 72) = CFRetain(v292);
    }

    v302 = CFDictionaryGetValue(v246, @"CarrierID");
    if (v302)
    {
      v303 = v302;
      v304 = CFGetTypeID(v302);
      v305 = CFStringGetTypeID();
      if (v304 != v305)
      {
        AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_30(v305, v306, v307, v308, v309, v310, v311, v312);
        goto LABEL_176;
      }

      SafeRelease(*(*(a1 + 48) + 104));
      *(*(a1 + 48) + 104) = CFRetain(v303);
    }
  }

  v313 = CFDictionaryGetValue(cf, @"EUICCCSN");
  if (v313)
  {
    v314 = v313;
    v315 = CFGetTypeID(v313);
    v316 = CFDataGetTypeID();
    if (v315 != v316)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_31(v316, v317, v318, v319, v320, v321, v322, v323);
      goto LABEL_176;
    }

    if (!CFDataGetLength(v314))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_32(0, v324, v325, v326, v327, v328, v329, v330);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 120));
    *(*(a1 + 48) + 120) = CFRetain(v314);
  }

  v331 = CFDictionaryGetValue(cf, @"EUICCMainNonce");
  if (v331)
  {
    v332 = v331;
    v333 = CFGetTypeID(v331);
    v334 = CFDataGetTypeID();
    if (v333 != v334)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_33(v334, v335, v336, v337, v338, v339, v340, v341);
      goto LABEL_176;
    }

    if (!CFDataGetLength(v332))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_34(0, v342, v343, v344, v345, v346, v347, v348);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 128));
    *(*(a1 + 48) + 128) = CFRetain(v332);
  }

  v349 = CFDictionaryGetValue(cf, @"EUICCGoldNonce");
  if (v349)
  {
    v350 = v349;
    v351 = CFGetTypeID(v349);
    v352 = CFDataGetTypeID();
    if (v351 != v352)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_35(v352, v353, v354, v355, v356, v357, v358, v359);
      goto LABEL_176;
    }

    if (!CFDataGetLength(v350))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_36(0, v360, v361, v362, v363, v364, v365, v366);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 136));
    *(*(a1 + 48) + 136) = CFRetain(v350);
  }

  v367 = CFDictionaryGetValue(cf, @"EUICCTicketVersion");
  if (v367)
  {
    v368 = v367;
    v369 = CFGetTypeID(v367);
    v370 = CFNumberGetTypeID();
    if (v369 != v370)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_37(v370, v371, v372, v373, v374, v375, v376, v377);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 144));
    *(*(a1 + 48) + 144) = CFRetain(v368);
  }

  v378 = CFDictionaryGetValue(cf, @"EUICCChipID");
  if (v378)
  {
    v379 = v378;
    v380 = CFGetTypeID(v378);
    v381 = CFNumberGetTypeID();
    if (v380 != v381)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_38(v381, v382, v383, v384, v385, v386, v387, v388);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 160));
    *(*(a1 + 48) + 160) = CFRetain(v379);
  }

  v389 = CFDictionaryGetValue(cf, @"EUICCCertIdentifier");
  if (v389)
  {
    v390 = v389;
    v391 = CFGetTypeID(v389);
    v392 = CFDataGetTypeID();
    if (v391 != v392)
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_39(v392, v393, v394, v395, v396, v397, v398, v399);
      goto LABEL_176;
    }

    if (!CFDataGetLength(v390))
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_40(0, v400, v401, v402, v403, v404, v405, v406);
      goto LABEL_176;
    }

    SafeRelease(*(*(a1 + 48) + 152));
    *(*(a1 + 48) + 152) = CFRetain(v390);
  }

  v407 = CFDictionaryGetValue(cf, @"EUICCFirmwareLoaderVersion");
  if (v407)
  {
    v415 = v407;
    v416 = CFGetTypeID(v407);
    v417 = CFDataGetTypeID();
    if (v416 == v417)
    {
      Length = CFDataGetLength(v415);
      if (Length == 3)
      {
        SafeRelease(*(*(a1 + 48) + 168));
        v433 = CFRetain(v415);
        v434 = *(a1 + 48);
        *(v434 + 168) = v433;
        goto LABEL_101;
      }

      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_42(Length, v426, v427, v428, v429, v430, v431, v432);
    }

    else
    {
      AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_41(v417, v418, v419, v420, v421, v422, v423, v424);
    }

LABEL_176:
    v463 = 1;
    goto LABEL_177;
  }

  v434 = *(a1 + 48);
  if (!v434)
  {
    AMAuthInstallBasebandSetParametersWithUpdaterOutput_cold_43(valuePtr, v408, v409, v410, v411, v412, v413, v414);
    goto LABEL_176;
  }

LABEL_101:
  if (v19)
  {
    if (*v19 == *v434)
    {
      v435 = 0;
    }

    else
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "vendorID changed", v410, v411, v412, v413, v414, v504);
      v434 = *(a1 + 48);
      v435 = 1;
    }

    if (*(v19 + 4) != *(v434 + 4))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "chipID changed", v410, v411, v412, v413, v414, v504);
      v434 = *(a1 + 48);
      v435 = 1;
    }

    if (*(v19 + 8) != *(v434 + 8))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "goldCertID changed", v410, v411, v412, v413, v414, v504);
      v434 = *(a1 + 48);
      v435 = 1;
    }

    if (AMAuthInstallSupportCFDataCompare(*(v19 + 16), *(v434 + 16)))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "snum changed", v436, v437, v438, v439, v440, v504);
      v435 = 1;
    }

    if (AMAuthInstallSupportCFDataCompare(*(v19 + 24), *(*(a1 + 48) + 24)))
    {
      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "nonce changed", v441, v442, v443, v444, v445, v504);
      v435 = 1;
    }

    v446 = 0;
    v447 = *(a1 + 48);
    v512.val[0] = *(v19 + 120);
    v512.val[1] = *(v447 + 120);
    v448 = valuePtr;
    vst2q_f64(v448, v512);
    v448 += 4;
    *v448 = *(v19 + 152);
    v510 = *(v447 + 152);
    v449 = v435 == 0;
LABEL_115:
    v450 = &valuePtr[16 * v446 + 8];
    do
    {
      v456 = v446 + 1;
      if (AMAuthInstallSupportCFDataCompare(*(v450 - 1), *v450))
      {
        AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "eUICC Param %d changed", v451, v452, v453, v454, v455, v446);
        v449 = 0;
        if (v446++ != 2)
        {
          goto LABEL_115;
        }

        goto LABEL_124;
      }

      AMAuthInstallLog(4, "_AMAuthInstallBasebandCheckForParameterChange", "eUICC Param %d unchanged", v451, v452, v453, v454, v455, v446);
      v450 += 2;
      ++v446;
    }

    while (v456 != 3);
    if (v449)
    {
      goto LABEL_123;
    }

LABEL_124:
    AMAuthInstallLog(4, "AMAuthInstallBasebandSetParametersWithUpdaterOutput", "bbParameters changed, triggering bbfw re-personalization", v457, v458, v459, v460, v461, v507);
    v463 = 0;
    *(a1 + 224) = 1;
  }

  else
  {
    AMAuthInstallLog(5, "_AMAuthInstallBasebandCheckForParameterChange", "bbParameters is now non-NULL", v410, v411, v412, v413, v414, v504);
LABEL_123:
    v463 = 0;
  }

LABEL_125:
  _AMAuthInstallBasebandParametersFinalize(v19);
  v464 = *MEMORY[0x29EDCA608];
  return v463;
}

uint64_t AMAuthInstallBasebandHandleUpdaterStatus(uint64_t a1, int a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  if (a2)
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  AMAuthInstallLog(7, "AMAuthInstallBasebandHandleUpdaterStatus", "commandAccepted: %s", a4, a5, a6, a7, a8, v11);
  if (!a3)
  {
    v93 = 1;
    v123 = "outputDict is NULL";
    goto LABEL_92;
  }

  AMAuthInstallLog(7, "AMAuthInstallBasebandHandleUpdaterStatus", "outputDict: %@", v12, v13, v14, v15, v16, a3);
  Value = CFDictionaryGetValue(a3, @"provisioning");
  if (Value)
  {
    if (!*(a1 + 48))
    {
      v93 = 1;
      v123 = "amai->bbParameters is NULL";
      goto LABEL_92;
    }

    v18 = Value;
    v19 = CFDictionaryGetValue(Value, @"MEID");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 != CFStringGetTypeID())
      {
        v93 = 1;
        v123 = "mistyped meid";
        goto LABEL_92;
      }

      SafeRelease(*(*(a1 + 48) + 32));
      *(*(a1 + 48) + 32) = CFRetain(v20);
    }

    v22 = CFDictionaryGetValue(v18, @"IMEI");
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 != CFStringGetTypeID())
      {
        v93 = 1;
        v123 = "mistyped imei";
        goto LABEL_92;
      }

      SafeRelease(*(*(a1 + 48) + 40));
      *(*(a1 + 48) + 40) = CFRetain(v23);
    }

    v25 = CFDictionaryGetValue(v18, @"IMEI2");
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 != CFStringGetTypeID())
      {
        v93 = 1;
        v123 = "mistyped imei2";
        goto LABEL_92;
      }

      SafeRelease(*(*(a1 + 48) + 48));
      *(*(a1 + 48) + 48) = CFRetain(v26);
    }

    v28 = CFDictionaryGetValue(v18, @"EID");
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 != CFStringGetTypeID())
      {
        v93 = 1;
        v123 = "mistyped eid";
        goto LABEL_92;
      }

      SafeRelease(*(*(a1 + 48) + 56));
      *(*(a1 + 48) + 56) = CFRetain(v29);
    }

    v31 = CFDictionaryGetValue(v18, @"ICCID");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 != CFStringGetTypeID())
      {
        v93 = 1;
        v123 = "mistyped iccid";
        goto LABEL_92;
      }

      SafeRelease(*(*(a1 + 48) + 64));
      *(*(a1 + 48) + 64) = CFRetain(v32);
    }
  }

  v34 = 0;
  v35 = *(a1 + 304);
  if (v35 <= 3)
  {
    if (v35 != 1)
    {
      if (v35 != 2)
      {
        goto LABEL_43;
      }

      v34 = 0;
      v76 = 3;
      goto LABEL_42;
    }

    v77 = CFDictionaryGetValue(a3, @"done");
    if (!v77 || CFBooleanGetValue(v77) != 1)
    {
      v34 = 0;
      goto LABEL_43;
    }

    if (!*(a1 + 328))
    {
      AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "Provisioning never started by BBUpdater, skipping for BB", v12, v13, v14, v15, v16, v124);
      goto LABEL_41;
    }

    v93 = 19;
    v123 = "Attempt to force provision baseband failed";
LABEL_92:
    AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", v123, v12, v13, v14, v15, v16, v124);
    return v93;
  }

  if ((v35 - 4) < 2)
  {
    valuePtr = 103;
    v36 = CFDictionaryGetValue(a3, @"provisioning");
    if (!v36)
    {
      AMAuthInstallBasebandHandleUpdaterStatus_cold_4(0, v37, v38, v39, v40, v41, v42, v43, v124);
LABEL_31:
      AMAuthInstallLog(3, "_AMAuthInstallBasebandCheckProvisioningStatus", "Baseband provisioning failed. Informing server.", v65, v66, v67, v68, v69, v124);
      AMAuthInstallProvisioningSendAck(a1, 103, v70, v71, v72, v73, v74, v75);
      *(a1 + 304) = 8;
      CFRelease(*(a1 + 312));
      *(a1 + 312) = 0;
      v34 = 19;
      goto LABEL_43;
    }

    v44 = CFDictionaryGetValue(v36, @"Status");
    if (v44)
    {
      v52 = v44;
      v53 = CFGetTypeID(v44);
      TypeID = CFNumberGetTypeID();
      if (v53 == TypeID)
      {
        v62 = CFNumberGetValue(v52, kCFNumberSInt32Type, &valuePtr);
        if (!v62)
        {
          AMAuthInstallBasebandHandleUpdaterStatus_cold_2(v62, v63, v64, v65, v66, v67, v68, v69);
        }
      }

      else
      {
        AMAuthInstallBasebandHandleUpdaterStatus_cold_1(TypeID, v55, v56, v57, v58, v59, v60, v61, v124);
      }
    }

    else
    {
      AMAuthInstallBasebandHandleUpdaterStatus_cold_3(0, v45, v46, v47, v48, v49, v50, v51, v124);
    }

    if (valuePtr)
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v35 == 6)
  {
LABEL_41:
    v34 = 0;
    v76 = 7;
LABEL_42:
    *(a1 + 304) = v76;
  }

LABEL_43:
  if (!*(a1 + 176))
  {
LABEL_56:
    v93 = 0;
    goto LABEL_79;
  }

  v78 = CFDictionaryGetValue(a3, @"attemptedToFuse");
  v81 = !v78 || (v79 = v78, v80 = CFGetTypeID(v78), v80 != CFBooleanGetTypeID()) || CFBooleanGetValue(v79) == 0;
  v82 = CFDictionaryGetValue(a3, @"fuseAttemptSucceeded");
  if (v82 && (v90 = v82, v91 = CFGetTypeID(v82), v82 = CFBooleanGetTypeID(), v91 == v82))
  {
    v82 = CFBooleanGetValue(v90);
    v92 = v82 == 0;
    if (!a2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v92 = 1;
    if (!a2)
    {
LABEL_51:
      if (v81)
      {
        AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "unrelated failure; will reclaim fusing program", v85, v86, v87, v88, v89, v124);
        v93 = 0;
        v94 = 0;
      }

      else
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "fusing attempt failed; will consume program", v85, v86, v87, v88, v89, v124);
        v94 = 1;
        v93 = 18;
      }

      goto LABEL_66;
    }
  }

  if (v81)
  {
    AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "unrelated stage; will hold fusing program", v85, v86, v87, v88, v89, v124);
    goto LABEL_56;
  }

  if (v92)
  {
    AMAuthInstallLog(3, "AMAuthInstallBasebandHandleUpdaterStatus", "unrecognized state; will consume program (commandAccepted=%s, attemptedToFuse=%s, fuseAttemptSucceeded=%s)", v85, v86, v87, v88, v89, "YES");
    v94 = 1;
    v93 = 14;
  }

  else
  {
    v95 = *(a1 + 48);
    if (!v95)
    {
      AMAuthInstallBasebandHandleUpdaterStatus_cold_5(v82, v83, v84, v85, v86, v87, v88, v89);
      v93 = 1;
      goto LABEL_79;
    }

    if (*(v95 + 16))
    {
      v96 = CFGetAllocator(a1);
      v97 = _CopyHexStringFromData(v96, *(*(a1 + 48) + 16));
      AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "fusing attempt succeeded (snum=%@); will consume program", v98, v99, v100, v101, v102, v97);
      SafeRelease(v97);
    }

    else
    {
      AMAuthInstallLog(5, "AMAuthInstallBasebandHandleUpdaterStatus", "fusing attempt succeeded; will consume program", v85, v86, v87, v88, v89, v124);
    }

    v93 = 0;
    v94 = 1;
  }

LABEL_66:
  if (*(a1 + 185))
  {
LABEL_78:
    *(a1 + 176) = 0;
    *(a1 + 184) = 1;
    goto LABEL_79;
  }

  v103 = *(*(a1 + 48) + 4);
  if (v103 <= 1700064)
  {
    if (v103 == 938209 || v103 == 1327329)
    {
      goto LABEL_77;
    }

    v104 = 1515745;
    goto LABEL_76;
  }

  if (v103 > 2089184)
  {
    if (v103 != 2089185)
    {
      v104 = 2814177;
      goto LABEL_76;
    }

LABEL_77:
    CFRelease(*(a1 + 176));
    goto LABEL_78;
  }

  if (v103 == 1700065)
  {
    goto LABEL_77;
  }

  v104 = 2044129;
LABEL_76:
  if (v103 == v104)
  {
    goto LABEL_77;
  }

  v106 = CFGetAllocator(a1);
  v107 = AMAuthInstallFusingProgramAck(v106, *(a1 + 160), *(a1 + 176), v94);
  CFRelease(*(a1 + 176));
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  if (v107)
  {
    AMAuthInstallLog(4, "AMAuthInstallBasebandHandleUpdaterStatus", "*******************************************************", v108, v109, v110, v111, v112, v125);
    AMAuthInstallLog(4, "AMAuthInstallBasebandHandleUpdaterStatus", "*   failed to ack fusing program; continuing anyway   *", v113, v114, v115, v116, v117, v126);
    AMAuthInstallLog(4, "AMAuthInstallBasebandHandleUpdaterStatus", "*******************************************************", v118, v119, v120, v121, v122, v127);
  }

LABEL_79:
  if (!v34)
  {
    return v93;
  }

  return v34;
}

uint64_t AMAuthInstallBasebandGetKeyHash(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(*(a1 + 200), a2);
      result = 0;
      *a3 = Value;
      return result;
    }

    AMAuthInstallBasebandGetKeyHash_cold_1(a1, a2, 0, a4, a5, a6, a7, a8, v11);
  }

  else
  {
    AMAuthInstallBasebandGetKeyHash_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v11);
  }

  return 1;
}

uint64_t AMAuthInstallBasebandSetNonce(uint64_t a1, const __CFData *cf)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 1;
  }

  if (cf)
  {
    if (CFDataGetLength(cf) > 20)
    {
      return 1;
    }

    v3 = *(a1 + 48);
  }

  v6 = *(v3 + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 48) + 24) = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v7 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  if (v7 != TypeID)
  {
    AMAuthInstallBasebandSetNonce_cold_1(TypeID, v9, v10, v11, v12, v13, v14, v15, v24);
    return 1;
  }

  if (!CFDataGetLength(cf))
  {
    AMAuthInstallBasebandSetNonce_cold_2(0, v16, v17, v18, v19, v20, v21, v22, v24);
    return 1;
  }

  v23 = CFRetain(cf);
  result = 0;
  *(*(a1 + 48) + 24) = v23;
  return result;
}

__CFString *AMAuthInstallBasebandCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 256);
  CFStringAppend(Mutable, @"(");
  if (*(a1 + 58))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  CFStringAppendFormat(Mutable, 0, @"personalize=%s", v4);
  if (*(a1 + 48))
  {
    CFStringAppendFormat(Mutable, 0, @", ");
    if (*(*(a1 + 48) + 16))
    {
      v5 = CFGetAllocator(a1);
      v6 = _CopyHexStringFromData(v5, *(*(a1 + 48) + 16));
      if (v6)
      {
        v7 = v6;
        CFStringAppendFormat(Mutable, 0, @"snum=0x%@, ", v6);
        CFRelease(v7);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"chipid=0x%x, certid=0x%x", *(*(a1 + 48) + 4), *(*(a1 + 48) + 8));
    if (*(*(a1 + 48) + 24))
    {
      v8 = CFGetAllocator(a1);
      v9 = _CopyHexStringFromData(v8, *(*(a1 + 48) + 24));
      if (v9)
      {
        v10 = v9;
        CFStringAppendFormat(Mutable, 0, @", nonce=0x%@", v9);
        CFRelease(v10);
      }
    }
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void _AddToArchive(CFStringRef theString, const __CFData *a2, CFErrorRef *a3)
{
  if (!*a3)
  {
    v5 = BbfwWriterAddFile(a3[1], theString, a2);
    if (v5)
    {
      v6 = v5;
      v7 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v9 = Mutable;
        v10 = CFStringCreateWithFormat(v7, 0, @"BbfwWriterAddFile failed to add file: %@. Error code: %d", theString, v6);
        if (v10)
        {
          v11 = v10;
          CFDictionarySetValue(v9, *MEMORY[0x29EDB8F38], v10);
          CFRelease(v11);
        }

        *a3 = CFErrorCreate(v7, @"AuthInstallErrorDomain", v6, v9);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", v12, v13, v14, v15, v16, theString);

        CFRelease(v9);
      }

      else
      {
        *a3 = CFErrorCreate(v7, @"AuthInstallErrorDomain", v6, 0);
        AMAuthInstallLog(3, "_AddToArchive", "failed to archive %@", v17, v18, v19, v20, v21, theString);
      }
    }
  }
}

void OUTLINED_FUNCTION_21(__CFDictionary *a1)
{

  CFDictionarySetValue(a1, v2, v1);
}

uint64_t _AMAuthInstallCopyPsiMeasurementAndVersion(const __CFAllocator *a1, uint64_t a2, unint64_t a3, CFDataRef *a4, CFStringRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    _AMAuthInstallCopyPsiMeasurementAndVersion_cold_2();
  }

  if (!a5)
  {
    _AMAuthInstallCopyPsiMeasurementAndVersion_cold_1();
  }

  v24 = 0uLL;
  v25 = 0;
  if (a3 >= 0x50 && *(a2 + 4) == 1430808940 && (v9 = *(a2 + 12), (v9 + 1) > 1))
  {
    if ((*(a2 + 10) & 1) == 0)
    {
      AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", "missing SN indicator", a4, a5, a6, a7, a8, v21);
      result = 1;
      goto LABEL_8;
    }

    v13 = *(a2 + 20);
    if ((v13 & 0x3F) == 0)
    {
      *bytes = *(a2 + 40) - v13;
      v23 = v13;
      *&v16 = image3SHA1Partial(a2, v13, &v24).u64[0];
      v17 = CFStringCreateWithFormat(a1, 0, @"0x%08x", v16, v9);
      if (v17)
      {
        v18 = v17;
        v19 = CFDataCreate(a1, bytes, 28);
        if (v19)
        {
          v20 = v19;
          result = 0;
          *a5 = v18;
          *a4 = v20;
          goto LABEL_8;
        }

        CFRelease(v18);
      }

      result = 2;
      goto LABEL_8;
    }

    v10 = "GPuK is not properly aligned for partial digest";
  }

  else
  {
    v10 = "PSI Image does not contain recognizable PSI header";
  }

  AMAuthInstallLog(3, "_AMAuthInstallCopyPsiMeasurementAndVersion", v10, a4, a5, a6, a7, a8, v21);
  result = 10;
LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _AMAuthInstallCopyBufferMeasurement(const __CFAllocator *a1, void *data, CC_LONG len, CFDataRef *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  CC_SHA1(data, len, md);
  v6 = CFDataCreate(a1, md, 20);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a4 = v7;
  }

  else
  {
    result = 2;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallBasebandICE3StitchModemStack(uint64_t a1, CFTypeRef cf, uint64_t a3, CFTypeRef *a4)
{
  if (*(*(a1 + 48) + 24))
  {
    *a4 = CFRetain(cf);
  }

  return 0;
}

unint64_t AMAuthInstallBasebandICE3MeasureWorld(const void *a1, CFDataRef theData, __CFDictionary *a3)
{
  v100 = *MEMORY[0x29EDCA608];
  BytePtr = CFDataGetBytePtr(theData);
  result = CFDataGetLength(theData);
  memset(v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  if (!result)
  {
    goto LABEL_43;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  cf = 0;
  value = 0;
  do
  {
    v20 = &BytePtr[v13];
    v21 = *&BytePtr[v13];
    if (v21 <= 15)
    {
      if (v21 == 12)
      {
        v22 = v20[2];
        if (v22 > 4)
        {
LABEL_39:
          AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "UID value of %ld exceeds maximum array bound of %d\n", v8, v9, v10, v11, v12, v22);
LABEL_42:
          result = 10;
          goto LABEL_43;
        }

        v24 = v20[7];
        v25 = &v99[v22];
        *v25 = &BytePtr[v20[9]];
        v25[1] = v24;
      }

      else if (v21 == 15)
      {
        v22 = v20[2];
        if (v22 > 4)
        {
          goto LABEL_39;
        }

        v23 = &v98[v22];
        *v23 = v20 + 131;
        v23[1] = 1536;
      }
    }

    else
    {
      switch(v21)
      {
        case 16:
          v14 = v20[3];
          v15 = &BytePtr[v20[5]];
          break;
        case 19:
          v19 = &BytePtr[v20[7]];
          v18 = v20[5];
          break;
        case 18:
          v16 = &BytePtr[v20[7]];
          v17 = v20[5];
          break;
      }
    }

    v13 += v20[1];
  }

  while (v13 < result);
  v95 = 0;
  if (!v16)
  {
    goto LABEL_20;
  }

  v26 = CFGetAllocator(a1);
  result = _AMAuthInstallCopyPsiMeasurementAndVersion(v26, v16, v17, &cf, &value, v27, v28, v29);
  if (!result)
  {
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI Version: %@", v30, v31, v32, v33, v34, value);
    CFDictionarySetValue(a3, @"RamPSI-Version", value);
    CFRelease(value);
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "RamPSI PartialDigest: %@", v35, v36, v37, v38, v39, cf);
    CFDictionarySetValue(a3, @"RamPSI-PartialDigest", cf);
    CFRelease(cf);
LABEL_20:
    if (v19)
    {
      v40 = CFGetAllocator(a1);
      result = _AMAuthInstallCopyBufferMeasurement(v40, v19, v18, &v95);
      if (!result)
      {
        v46 = v95;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "EBL Digest: %@", v41, v42, v43, v44, v45, v95);
        CFDictionarySetValue(a3, @"EBL-Digest", v46);
        CFRelease(v46);
        goto LABEL_23;
      }

      goto LABEL_43;
    }

LABEL_23:
    if (!v14)
    {
      result = 0;
      goto LABEL_43;
    }

    v47 = v14;
    v48 = v15 + 4;
    while (1)
    {
      v49 = *(v48 - 1);
      v50 = &v99[v49];
      v51 = *v50;
      if (!*v50 || (v52 = &v98[v49], (v53 = *v52) == 0))
      {
        AMAuthInstallLog(3, "AMAuthInstallBasebandICE3MeasureWorld", "one or more elements are missing for TOC with UID = %lx\n", v8, v9, v10, v11, v12, *(v48 - 1));
        goto LABEL_42;
      }

      if (*v48 == 4)
      {
        break;
      }

      if (*v48 == 2)
      {
        v54 = CFGetAllocator(a1);
        result = _AMAuthInstallCopyPsiMeasurementAndVersion(v54, v51, *(v50 + 1), &cf, &value, v55, v56, v57);
        if (result)
        {
          goto LABEL_43;
        }

        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI Version: %@", v58, v59, v60, v61, v62, value);
        CFDictionarySetValue(a3, @"FlashPSI-Version", value);
        CFRelease(value);
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI PartialDigest: %@", v63, v64, v65, v66, v67, cf);
        CFDictionarySetValue(a3, @"FlashPSI-PartialDigest", cf);
        CFRelease(cf);
        v68 = CFGetAllocator(a1);
        result = _AMAuthInstallCopyBufferMeasurement(v68, v53, *(v52 + 1), &v95);
        if (result)
        {
          goto LABEL_43;
        }

        v74 = v95;
        AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "FlashPSI SecPack Digest: %@", v69, v70, v71, v72, v73, v95);
        v75 = a3;
        v76 = @"FlashPSI-SecPackDigest";
LABEL_36:
        CFDictionarySetValue(v75, v76, v74);
        CFRelease(v74);
      }

      result = 0;
      v48 += 36;
      if (!--v47)
      {
        goto LABEL_43;
      }
    }

    v77 = CFGetAllocator(a1);
    v78 = *(v50 + 1);
    result = _AMAuthInstallCopyBufferMeasurement(v77, v51, v78, &v95);
    if (result)
    {
      goto LABEL_43;
    }

    v84 = v95;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack Digest: %@", v79, v80, v81, v82, v83, v95);
    CFDictionarySetValue(a3, @"ModemStack-Digest", v84);
    CFRelease(v84);
    v85 = CFGetAllocator(a1);
    v86 = CFStringCreateWithFormat(v85, 0, @"0x%08lx", v78);
    if (!v86)
    {
      result = 2;
      goto LABEL_43;
    }

    v87 = v86;
    CFDictionarySetValue(a3, @"ModemStack-Length", v86);
    CFRelease(v87);
    v88 = CFGetAllocator(a1);
    result = _AMAuthInstallCopyBufferMeasurement(v88, v53, *(v52 + 1), &v95);
    if (result)
    {
      goto LABEL_43;
    }

    v74 = v95;
    AMAuthInstallLog(6, "AMAuthInstallBasebandICE3MeasureWorld", "Modem Stack SecPack Digest: %@", v89, v90, v91, v92, v93, v95);
    v75 = a3;
    v76 = @"ModemStack-SecPackDigest";
    goto LABEL_36;
  }

LABEL_43:
  v94 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedPsiData(const void *a1, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  v7 = CFGetAllocator(a1);
  MutableCopy = CFDataCreateMutableCopy(v7, 0, a2);
  v9 = MutableCopy;
  if (MutableCopy)
  {
    Length = CFDataGetLength(MutableCopy);
    v11 = CFDataGetLength(a3);
    CFDataSetLength(v9, Length - v11);
    BytePtr = CFDataGetBytePtr(a3);
    v13 = CFDataGetLength(a3);
    CFDataAppendBytes(v9, BytePtr, v13);
    v14 = 0;
    if (a4)
    {
      *a4 = v9;
      v9 = 0;
    }
  }

  else
  {
    v14 = 2;
  }

  SafeRelease(v9);
  return v14;
}

uint64_t AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData(CFTypeRef cf, const __CFData *a2, const __CFData *a3, __CFData **a4)
{
  result = 1;
  if (a2 && a3 && a4)
  {
    v9 = CFGetAllocator(cf);
    MutableCopy = CFDataCreateMutableCopy(v9, 0, a3);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      Length = CFDataGetLength(MutableCopy);
      CFDataAppendBytes(v11, AMAuthInstallBasebandCreatePersonalizedTicketPlusEblData_kPaddingBytes, -Length & 3);
      BytePtr = CFDataGetBytePtr(a2);
      v14 = CFDataGetLength(a2);
      CFDataAppendBytes(v11, BytePtr, v14);
      result = 0;
      *a4 = v11;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  AMAuthInstallLog(6, v9, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, const void *a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(v3, a2, a3, 1);
}

uint64_t OUTLINED_FUNCTION_8_2(const void *a1, uint64_t a2, uint64_t a3)
{

  return AMAuthInstallDebugWriteObject(a1, v3, a3, 1);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return FlsParserReadFromData(v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t (*a4)(uint64_t, CFTypeRef, uint64_t))
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, a4, v4, v5);
}

uint64_t AMAuthInstallBasebandN41SupportsLocalSigning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = *v8;
  v10 = v8[2];
  v11 = v9 == 3 && v10 == 398790697;
  v12 = v11;
  if (v11)
  {
    v13 = "local signing is enabled";
  }

  else
  {
    v15 = v9;
    v13 = "local signing is disabled. vendorID=%d certID=%d";
  }

  AMAuthInstallLog(3, "AMAuthInstallBasebandN41SupportsLocalSigning", v13, a4, a5, a6, a7, a8, v15);
  return v12;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v6, a3, v3, v4, v5);
}

__CFDictionary *AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo(const void **a1, const void *a2, const void *a3, const void *a4, const __CFUUID *a5)
{
  *&bytes.byte8 = 0;
  theDict = 0;
  *&bytes.byte0 = 0;
  if (!a1)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_9();
LABEL_27:
    v18 = 0;
    goto LABEL_18;
  }

  AMAuthInstallApCopyParameters(a1, &theDict);
  if (!theDict)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_8();
    goto LABEL_27;
  }

  v21 = a4;
  v22 = a5;
  Value = CFDictionaryGetValue(theDict, @"ApBoardID");
  v10 = CFDictionaryGetValue(theDict, @"ApChipID");
  v11 = CFDictionaryGetValue(theDict, @"ECID");
  v12 = CFDictionaryGetValue(theDict, @"ApProductionMode");
  v13 = CFDictionaryGetValue(theDict, @"ApSecurityDomain");
  v14 = CFDictionaryGetValue(theDict, @"ApSecurityMode");
  if (!Value)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_7();
    goto LABEL_27;
  }

  if (!v10)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_6();
    goto LABEL_27;
  }

  if (!v11)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_5();
    goto LABEL_27;
  }

  if (!v12)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_4();
    goto LABEL_27;
  }

  if (!v13)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_3();
    v18 = 0;
    goto LABEL_18;
  }

  v15 = v14;
  if (!v14)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_2();
    goto LABEL_27;
  }

  v16 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v18 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"ApBoardID", Value);
    CFDictionarySetValue(v18, @"ApChipID", v10);
    CFDictionarySetValue(v18, @"ApECID", v11);
    CFDictionarySetValue(v18, @"ApProductionMode", v12);
    CFDictionarySetValue(v18, @"ApSecurityDomain", v13);
    CFDictionarySetValue(v18, @"ApSecurityMode", v15);
    if (a2)
    {
      CFDictionarySetValue(v18, @"Ap,RecoveryOSPolicyNonceHash", a2);
    }

    if (a3)
    {
      CFDictionarySetValue(v18, @"Ap,NextStageIM4MHash", a3);
    }

    if (v21)
    {
      CFDictionarySetValue(v18, @"Ap,NextStageCryptex1IM4MHash", v21);
    }

    if (v22)
    {
      bytes = CFUUIDGetUUIDBytes(v22);
      v19 = CFDataCreate(v16, &bytes.byte0, 16);
      CFDictionarySetValue(v18, @"Ap,VolumeUUID", v19);
    }
  }

  else
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyDeviceInfo_cold_1();
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v18;
}

__CFDictionary *AMAuthInstallUpdaterCryptex1LocalPolicyGetTags()
{
  v0 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyGetTags_cold_3();
LABEL_8:
    v5 = 0;
    goto LABEL_5;
  }

  v2 = CFArrayCreateMutable(v0, 1, MEMORY[0x29EDB9000]);
  v3 = v2;
  if (!v2)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyGetTags_cold_2();
    goto LABEL_8;
  }

  CFArrayAppendValue(v2, @"ApImg4Ticket");
  v4 = CFDictionaryCreateMutable(v0, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = v4;
  if (v4)
  {
    CFDictionaryAddValue(v4, @"BuildIdentityTags", Mutable);
    CFDictionaryAddValue(v5, @"ResponseTags", v3);
  }

  else
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyGetTags_cold_1();
  }

LABEL_5:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

CFMutableDictionaryRef AMAuthInstallUpdaterCryptex1LocalPolicyCopyFirmware()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCopyFirmware_cold_1();
  }

  return Mutable;
}

__CFDictionary *AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest(const __CFDictionary *a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_4();
LABEL_17:
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    Mutable = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  if (!Value)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_3();
    goto LABEL_17;
  }

  v5 = Value;
  v6 = CFArrayCreateMutable(v2, 13, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(v6, @"ApBoardID");
  CFArrayAppendValue(v6, @"ApChipID");
  CFArrayAppendValue(v6, @"ApECID");
  CFArrayAppendValue(v6, @"ApProductionMode");
  CFArrayAppendValue(v6, @"ApSecurityDomain");
  CFArrayAppendValue(v6, @"ApSecurityMode");
  CFArrayAppendValue(v6, @"Ap,RecoveryOSPolicyNonceHash");
  CFArrayAppendValue(v6, @"Ap,NextStageIM4MHash");
  CFArrayAppendValue(v6, @"Ap,NextStageCryptex1IM4MHash");
  CFArrayAppendValue(v6, @"Ap,VolumeUUID");
  if (CFArrayGetCount(v6) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      v9 = CFDictionaryGetValue(v5, ValueAtIndex);
      if (v9)
      {
        CFDictionarySetValue(Mutable, ValueAtIndex, v9);
      }

      ++v7;
    }

    while (v7 < CFArrayGetCount(v6));
  }

  v10 = *MEMORY[0x29EDB8F00];
  CFDictionarySetValue(Mutable, @"@ApImg4Ticket", *MEMORY[0x29EDB8F00]);
  CFDictionarySetValue(Mutable, @"Ap,LocalBoot", v10);
  v11 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v11)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_2();
    goto LABEL_17;
  }

  v12 = AMAuthInstallLocalPolicyCopyPayloadDigestSHA384();
  if (!v12)
  {
    AMAuthInstallUpdaterCryptex1LocalPolicyCreateRequest_cold_1();
    goto LABEL_17;
  }

  CFDictionarySetValue(v11, @"Digest", v12);
  CFDictionarySetValue(v11, @"Trusted", v10);
  CFDictionarySetValue(Mutable, @"Ap,LocalPolicy", v11);
  AMSupportSafeRelease();
  AMSupportSafeRelease();
LABEL_11:
  AMSupportSafeRelease();
  return Mutable;
}

uint64_t AMAuthInstallIsICE19BBGoldCertIDECDSA(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(6, "AMAuthInstallIsICE19BBGoldCertIDECDSA", "GoldCertId: %X\n", a4, a5, a6, a7, a8, a1);
  v9 = a1 == 653523660 || a1 == 1559424078;
  return a1 == -2087094182 || v9;
}

uint64_t AMAuthInstallBasebandRembrandtSupportsServerSigning(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 4) - 94;
  if (v1 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_29855FA67[v1];
  }
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedPSI, v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureEBL, v3, v4);
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureRestorePSI, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasurePSI, v3, v4);
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(1, v5, a3, AMAuthInstallRembrandtMeasureBBCFG, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1, const __CFString *a2)
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v5, a2, AMAuthInstallRembrandtCreateStitchedRestorePSI, v2, v4, v3);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, const __CFString *a2, uint64_t (*a3)(uint64_t, CFTypeRef, uint64_t, void **))
{

  return AMAuthInstallBasebandStitchFirmwareFromBbfw(v6, a2, a3, v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, v6, a3, v3, v4, v5);
}

uint64_t _VinylBBFWReaderCB(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  if (!a1 || !*a1 || !theString || !a3 || !*(a1 + 8))
  {
    _VinylBBFWReaderCB_cold_1(a1, theString, a3, a4, a5, a6, a7, a8, v23);
LABEL_15:
    v21 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 16) && !CFStringHasPrefix(theString, @"vinyl"))
  {
    return 1;
  }

  if (BbfwReaderFindAndCopyFileData(a3, theString, &value))
  {
    AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Failed copying %@ %d", v11, v12, v13, v14, v15, theString);
    goto LABEL_15;
  }

  CFDictionarySetValue(*(a1 + 8), theString, value);
  AMAuthInstallLog(3, "_VinylBBFWReaderCB", "Vinyl copied %@", v16, v17, v18, v19, v20, theString);
  v21 = 1;
LABEL_10:
  SafeRelease(value);
  return v21;
}

uint64_t AMAuthInstallBundleCopyPublishedVariantsArray(const __CFAllocator *a1, const void *a2)
{
  v6 = 0;
  v7 = 0;
  v3 = AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, @"BuildManifest.plist", 0, &v7);
  if (!v3)
  {
    AMAuthInstallSupportCreateDictionaryFromFileURL(a1, &v6, v7);
  }

  v4 = v3;
  SafeRelease(v7);
  SafeRelease(v6);
  return v4;
}

uint64_t _AMAuthInstallIsRecoveryVariant(uint64_t a1, CFStringRef theString1)
{
  v2 = *MEMORY[0x29EDB8EF8];
  if (theString1)
  {
    v3 = *(a1 + 496);
    if (v3)
    {
      if (CFStringCompare(theString1, v3, 0) == kCFCompareEqualTo)
      {
        return *MEMORY[0x29EDB8F00];
      }
    }
  }

  return v2;
}

const __CFDictionary *_GetRelativePathForEntry(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"Info");
  if (result)
  {

    return CFDictionaryGetValue(result, @"Path");
  }

  return result;
}

void _AMAuthInstallBundleNormalizeOverridePaths(const void *a1, const __CFString *a2, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

void _AMAuthInstallBundleNormalizeOverrideURLs(const void *a1, CFURLRef anURL, CFMutableDictionaryRef *a3)
{
  v5 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(*a3, a1, v5);

    CFRelease(v6);
  }
}

uint64_t _AMAuthInstallBundlePopulatePersonalizedBundle(_BYTE *a1, const void *a2, const void *a3, int a4, const __CFDictionary *a5, CFURLRef a6, CFDictionaryRef theDict, const __CFArray *a8, CFArrayRef theArray, CFArrayRef a10, CFBooleanRef BOOLean)
{
  v11 = 0;
  context = 0;
  v363 = 0;
  v360 = 0;
  v361 = 0;
  Code = 1;
  if (!a1 || !a2 || !a3 || !a5)
  {
LABEL_252:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_201;
  }

  v13 = theDict;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!theDict)
  {
    goto LABEL_201;
  }

  v20 = CFDictionaryGetValue(theDict, @"CumulativeResponse");
  if (v20)
  {
    v26 = v20;
    v366[0] = 0;
    if (!a6)
    {
      AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", "replaced NULL response dictionary with cumulative response", v21, v22, v23, v24, v25, v327);
      a6 = v26;
      goto LABEL_14;
    }

    CFGetAllocator(a1);
    MergedDictionary = AMSupportCreateMergedDictionary();
    if (MergedDictionary)
    {
      Code = MergedDictionary;
      AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "could not create merged response dictionary", v28, v29, v30, v31, v32, v327);
      v11 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_201;
    }

    CFDictionarySetValue(v13, @"CumulativeResponse", v366[0]);
    a6 = v366[0];
    SafeRelease(v366[0]);
    v38 = "created merged response dictionary";
    goto LABEL_12;
  }

  if (a1[435])
  {
    CFDictionarySetValue(v13, @"CumulativeResponse", a6);
    v38 = "caching response dictionary on skipped install";
LABEL_12:
    AMAuthInstallLog(7, "_AMAuthInstallBundlePopulatePersonalizedBundle", v38, v33, v34, v35, v36, v37, v327);
  }

LABEL_14:
  if (CFBooleanGetValue(BOOLean))
  {
    v13 = CFDictionaryGetValue(v13, @"RecoveryOS");
    if (!v13)
    {
      v11 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      Code = 8;
      goto LABEL_201;
    }
  }

  v39 = CFDictionaryGetValue(v13, @"Personalized");
  v40 = CFDictionaryGetValue(v13, @"Manifest");
  v41 = CFDictionaryGetValue(v13, @"Linked");
  v42 = CFDictionaryGetValue(v13, @"Alignment");
  v11 = 0;
  Code = 8;
  v345 = v39;
  if (!v39 || !v40)
  {
    goto LABEL_252;
  }

  v352 = v40;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (!v41)
  {
    goto LABEL_201;
  }

  v344 = v42;
  v358 = CFDictionaryGetValue(a5, @"Manifest");
  if (!v358)
  {
    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_17(0, v43, v44, v45, v46, v47, v48, v49);
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    Code = 7;
    goto LABEL_201;
  }

  v343 = v13;
  v359 = a1;
  v15 = 0;
  v348 = v41;
  v349 = a8;
  theDicta = a6;
  v16 = 0;
  if (a8 && a6)
  {
    if (!a1[435])
    {
      Count = CFArrayGetCount(a8);
      if (Count >= 1)
      {
        v102 = Count;
        v16 = 0;
        v15 = 0;
        v103 = 0;
        v104 = *MEMORY[0x29EDB8EF8];
        v105 = *MEMORY[0x29EDB8F00];
        allocator = *MEMORY[0x29EDB8ED8];
        v340 = @"Blob";
        key = @"UniqueBuildID";
        v342 = @"ProductMarketingVersion";
        v351 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a8, v103);
          if (!ValueAtIndex)
          {
            _AMAuthInstallBundlePopulatePersonalizedBundle_cold_16();
          }

          v107 = ValueAtIndex;
          if (CFStringFind(ValueAtIndex, @"RecoveryOS", 0).location == -1)
          {
            v108 = v104;
          }

          else
          {
            v108 = v105;
          }

          v109 = CFBooleanGetValue(v108);
          v110 = CFBooleanGetValue(BOOLean);
          if (v109)
          {
            if (!v110)
            {
              goto LABEL_114;
            }

            SafeRelease(v16);
            v111 = CFGetAllocator(v359);
            v107 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v111, v107);
            v16 = v107;
          }

          else if (v110)
          {
            goto LABEL_114;
          }

          v112 = CFDictionaryGetValue(v358, v107);
          if (v112)
          {
            v118 = v112;
            if (CFStringCompare(v107, @"BasebandFirmware", 0) == kCFCompareEqualTo)
            {
              v132 = *(v359 + 48);
              if (v132 && *(v132 + 160))
              {
                v133 = CFDictionaryGetValue(a5, key);
                if (v133)
                {
                  v134 = v133;
                  v135 = CFGetAllocator(v359);
                  Mutable = CFDictionaryCreateMutable(v135, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  v15 = Mutable;
                  if (!Mutable)
                  {
                    goto LABEL_260;
                  }

                  CFDictionarySetValue(Mutable, key, v134);
                }

                v137 = *(v359 + 16);
                if (*(v137 + 136) || *(v137 + 144))
                {
                  v138 = CFDictionaryGetValue(a5, v342);
                  if (v138)
                  {
                    v139 = v138;
                    if (!v15)
                    {
                      v140 = CFGetAllocator(v359);
                      v15 = CFDictionaryCreateMutable(v140, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                      if (!v15)
                      {
LABEL_260:
                        v11 = 0;
                        v14 = 0;
                        goto LABEL_261;
                      }
                    }

                    CFDictionarySetValue(v15, v342, v139);
                  }
                }
              }

              Code = _AMAuthInstallBundleInstallPersonalizedBasebandFirmware(v359, v118, theDicta, v358, a2, a3, v345, v15);
              a8 = v349;
              if (Code)
              {
LABEL_211:
                AMAuthInstallGetLocalizedStatusString(v359, Code);
                AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install %@ in personalized bundle: %@", v285, v286, v287, v288, v289, v107);
                v11 = 0;
                v14 = 0;
                goto LABEL_201;
              }

              goto LABEL_113;
            }

            v365 = 0;
            v366[0] = 0;
            if (!v107)
            {
              v131 = 0;
              Code = 1;
              goto LABEL_97;
            }

            v119 = CFGetAllocator(v359);
            v329 = @"Personalize";
            ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v119, v118, @"%@.%@", v120, v121, v122, v123, v124, @"Info");
            if (ValueForKeyWithFormat && !CFBooleanGetValue(ValueForKeyWithFormat))
            {
              AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ does not require personalization; skipping it", v126, v127, v128, v129, v130, v107);
              if (CFDictionaryContainsKey(theDicta, v107))
              {
                CFDictionarySetValue(v352, v107, v118);
              }

              v131 = 0;
              Code = 0;
LABEL_97:
              a8 = v349;
LABEL_98:
              SafeRelease(v366[0]);
              SafeRelease(v131);
              SafeRelease(v365);
              SafeRelease(0);
              SafeRelease(0);
              if (Code)
              {
                goto LABEL_211;
              }

LABEL_113:
              v102 = v351;
              goto LABEL_114;
            }

            v141 = CFBooleanGetValue(BOOLean);
            v142 = _AMAuthInstallBundleCopyEntryURLs(v359, v107, v118, a2, a3, 1, v141, &v365, v328, @"Personalize", v330, v331, pathComponent, v333, value, v335, v336, v337, theString, allocator, v340, key, v342, v343, v344, v345, v346, v348);
            if (v142)
            {
              Code = v142;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to copy bundle URLs for %@", v143, v144, v145, v146, v147, v107);
              v131 = 0;
              goto LABEL_97;
            }

            v346 = v15;
            v148 = CFDictionaryGetValue(v365, @"SourceURL");
            v149 = CFDictionaryGetValue(v365, @"DestURL");
            v150 = CFDictionaryGetValue(v365, @"RelativeSrcPath");
            v151 = CFDictionaryGetValue(v365, @"RelativeDestPath");
            v337 = v148;
            if (v148 || v149 || v150 || v151)
            {
              theString = v151;
              if (CFDictionaryContainsKey(v352, v107))
              {
                AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized; skipping it", v152, v153, v154, v155, v156, v107);
                v131 = 0;
                goto LABEL_124;
              }

              v335 = v150;
              v336 = v149;
              DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(v149);
              if (DirectoryForURL)
              {
                Code = DirectoryForURL;
                _AMAuthInstallBundlePopulatePersonalizedBundle_cold_1(v359, DirectoryForURL);
                v131 = 0;
                goto LABEL_125;
              }

              v158 = CFGetAllocator(v359);
              Code = 2;
              DeepCopy = CFPropertyListCreateDeepCopy(v158, v118, 2uLL);
              v131 = DeepCopy;
              if (!DeepCopy)
              {
LABEL_125:
                v15 = v346;
                goto LABEL_97;
              }

              v160 = CFDictionaryGetValue(DeepCopy, @"Info");
              if (v160)
              {
                v166 = v160;
                v172 = CFDictionaryGetValue(v160, @"Path");
                if (v172 && CFDictionaryContainsKey(v352, v172))
                {
                  v329 = v172;
                  AMAuthInstallLog(7, "_AMAuthInstallBundleInstallPersonalizedEntry", "entry %@ has been previously personalized as part of %@; skipping it", v167, v168, v169, v170, v171, v107);
LABEL_124:
                  Code = 0;
                  goto LABEL_125;
                }

                pathComponent = v172;
                value = v131;
                HIDWORD(v333) = _CFDictionaryGetBoolean(v166, @"IsFTAB", 0, v167, v168, v169, v170, v171);
                v173 = CFGetAllocator(v359);
                PrependedFilePath = AMAuthInstallSupportCreatePrependedFilePath(v173, v107, theString, v366);
                if (PrependedFilePath)
                {
                  Code = PrependedFilePath;
                  _AMAuthInstallBundlePopulatePersonalizedBundle_cold_2(PrependedFilePath, v175, v176, v177, v178, v179, v180, v181);
                  v15 = v346;
                  goto LABEL_167;
                }

                CFDictionarySetValue(v166, @"PersonalizedPath", v366[0]);
                v182 = CFDictionaryGetValue(theDicta, v107);
                if (v182)
                {
                  v190 = v182;
                  TypeID = CFDictionaryGetTypeID();
                  if (TypeID == CFGetTypeID(v190))
                  {
                    if (CFDictionaryContainsKey(v190, v340))
                    {
                      Code = AMAuthInstallApImg3PersonalizeWithEntryName(v359, v337, v336, v107, v118, theDicta);
                      v15 = v346;
                      if (Code)
                      {
                        _AMAuthInstallBundlePopulatePersonalizedBundle_cold_3(v359, Code);
LABEL_167:
                        a8 = v349;
                        v131 = value;
                        goto LABEL_98;
                      }

LABEL_149:
                      v131 = value;
                      CFDictionarySetValue(v352, v107, value);
                      _CFArrayRemoveValue(v41, v335);
                      goto LABEL_97;
                    }
                  }
                }

                v192 = v166;
                v15 = v346;
                if (AMAuthInstallApIsImg4(v359, v183, v184, v185, v186, v187, v188, v189) && CFDictionaryGetValue(theDicta, *(v359 + 88)) && HIDWORD(v333))
                {
                  v200 = CFURLCreateCopyAppendingPathComponent(allocator, a3, pathComponent, 0);
                  a8 = v349;
                  v131 = value;
                  if (v200)
                  {
                    v208 = AMAuthInstallApFtabStitchTicketData(v359, v337, v200, theDicta);
                    Code = v208;
                    if (v208)
                    {
                      _AMAuthInstallBundlePopulatePersonalizedBundle_cold_4(v208, v209, v210, v211, v212, v213, v214, v215);
                    }

                    else
                    {
                      CFDictionarySetValue(v352, pathComponent, value);
                      _CFArrayRemoveValue(v41, v335);
                    }
                  }

                  else
                  {
                    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_5(0, v201, v202, v203, v204, v205, v206, v207);
                    Code = 2;
                  }

                  goto LABEL_98;
                }

                a8 = v349;
                if (AMAuthInstallApIsImg4(v359, v193, v194, v195, v196, v197, v198, v199) && CFDictionaryGetValue(theDicta, *(v359 + 88)) && !HIDWORD(v333))
                {
                  v216 = CFDictionaryGetValue(v192, @"Img4PayloadType");
                  v217 = AMAuthInstallApImg4StitchTicketData(v359, v216, v337, v336, theDicta);
                  if (v217)
                  {
                    Code = v217;
                    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_6(v217, v218, v219, v220, v221, v222, v223, v224);
                    goto LABEL_167;
                  }

                  Code = AMAuthInstallApImg4StitchRestoreInfoWithAMAI(v107, v336, theDicta, 0, v359);
                  if (Code)
                  {
                    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "failed to stitch restore info to %@", v225, v226, v227, v228, v229, v336);
                    goto LABEL_167;
                  }

                  goto LABEL_149;
                }

                v364 = 0;
                v230 = AMAuthInstallSupportFileURLExists(v336, &v364);
                if (v230)
                {
                  Code = v230;
                }

                else
                {
                  v131 = value;
                  if (v364)
                  {
LABEL_152:
                    Code = 0;
                    goto LABEL_98;
                  }

                  v231 = AMAuthInstallBundleInstallFile(v359, v336, v337);
                  if (!v231)
                  {
                    CFArrayAppendValue(v41, v335);
                    goto LABEL_152;
                  }

                  Code = v231;
                  _AMAuthInstallBundlePopulatePersonalizedBundle_cold_7(v359, v231);
                }

                v15 = v346;
                v41 = v348;
                goto LABEL_167;
              }

              v329 = v107;
              AMAuthInstallLog(3, "_AMAuthInstallBundleInstallPersonalizedEntry", "%s: no personalized entry for %@", v161, v162, v163, v164, v165, "_AMAuthInstallBundleInstallPersonalizedEntry");
            }

            else
            {
              v131 = 0;
            }

            Code = 8;
            goto LABEL_125;
          }

          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@", v113, v114, v115, v116, v117, v107);
          a8 = v349;
LABEL_114:
          if (v102 == ++v103)
          {
            goto LABEL_24;
          }
        }
      }
    }

    v15 = 0;
    v16 = 0;
  }

LABEL_24:
  v347 = v15;
  if (!theArray)
  {
    v50 = v359;
    goto LABEL_51;
  }

  v50 = v359;
  if (*(v359 + 435) || (v51 = CFArrayGetCount(theArray), v51 < 1))
  {
LABEL_51:
    v368.length = CFArrayGetCount(v349);
    v368.location = 0;
    if (CFArrayContainsValue(v349, v368, @"BasebandFirmware") || *(v50 + 435))
    {
      v11 = 0;
      v14 = 0;
      goto LABEL_54;
    }

    LOBYTE(v366[0]) = 0;
    v254 = CFGetAllocator(v50);
    v14 = AMAuthInstallSupportGetValueForKeyWithFormat(v254, a5, @"%@.%@.%@.%@", v255, v256, v257, v258, v259, @"Manifest");
    if (!v14)
    {
      v11 = 0;
      goto LABEL_54;
    }

    v260 = CFDictionaryGetValue(**(v50 + 128), @"BasebandFirmware");
    if (v260)
    {
      v11 = CFRetain(v260);
    }

    else
    {
      v279 = CFGetAllocator(v50);
      v11 = CFURLCreateCopyAppendingPathComponent(v279, a2, v14, 0);
      if (!v11)
      {
        v14 = 0;
        goto LABEL_266;
      }
    }

    v280 = CFGetAllocator(v50);
    v281 = AMAuthInstallSupportCreatePrependedFilePath(v280, @"BasebandFirmware", v14, &v363);
    if (v281)
    {
      Code = v281;
      goto LABEL_199;
    }

    v282 = CFGetAllocator(v50);
    v283 = CFURLCreateCopyAppendingPathComponent(v282, a3, v363, 0);
    v14 = v283;
    if (v283)
    {
      SoftLink = AMAuthInstallSupportFileURLExists(v283, v366);
      if (SoftLink || !LOBYTE(v366[0]) && ((SoftLink = AMAuthInstallSupportFileURLExists(v11, v366), SoftLink) || LOBYTE(v366[0]) && (SoftLink = AMAuthInstallPlatformCreateSoftLink(v14, v11), SoftLink)))
      {
        Code = SoftLink;
        goto LABEL_200;
      }

LABEL_54:
      if (a10)
      {
        v89 = CFArrayGetCount(a10);
        if (v89 >= 1)
        {
          v90 = v89;
          v91 = 0;
          while (1)
          {
            v92 = CFArrayGetValueAtIndex(a10, v91);
            if (!v92)
            {
              _AMAuthInstallBundlePopulatePersonalizedBundle_cold_11();
            }

            v93 = v92;
            v369.length = CFArrayGetCount(v41);
            v369.location = 0;
            if (!CFArrayContainsValue(v41, v369, v93))
            {
              v365 = 0;
              v366[0] = 0;
              v370.length = CFArrayGetCount(v41);
              v370.location = 0;
              if (CFArrayContainsValue(v41, v370, v93))
              {
                Code = 0;
              }

              else
              {
                v94 = CFGetAllocator(v359);
                v95 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v94, a2, v93, 0, v366);
                if (v95 || (v96 = CFGetAllocator(v359), v95 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v96, a3, v93, 0, &v365), v95) || (v95 = AMAuthInstallPlatformMakeDirectoryForURL(v365), v95))
                {
                  Code = v95;
                }

                else
                {
                  Code = AMAuthInstallBundleInstallFile(v359, v365, v366[0]);
                  if (!Code)
                  {
                    CFArrayAppendValue(v41, v93);
                  }
                }
              }

              SafeRelease(v366[0]);
              SafeRelease(v365);
              if (Code)
              {
                break;
              }
            }

            if (v90 == ++v91)
            {
              goto LABEL_70;
            }
          }

          AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link in personalized bundle: %@", v84, v85, v86, v87, v88, v93);
          goto LABEL_200;
        }
      }

LABEL_70:
      v15 = v347;
      v97 = v359;
      if (theDicta && !*(v359 + 32))
      {
        IsImg4 = AMAuthInstallApIsImg4(v359, v82, v83, v84, v85, v86, v87, v88);
        v99 = IsImg4 ? @"amai/apimg4ticket.der" : @"amai/apticket.der";
        if (IsImg4)
        {
          v100 = *(*(v359 + 16) + 132) ? kAMAuthInstallTagX86Img4Ticket : (v359 + 88);
        }

        else
        {
          v100 = kAMAuthInstallTagApTicket;
        }

        v232 = *v100;
        v371.length = CFArrayGetCount(v345);
        v371.location = 0;
        if (!CFArrayContainsValue(v345, v371, v99))
        {
          v250 = CFDictionaryGetValue(theDicta, v232);
          if (v250)
          {
            v251 = v250;
            v252 = CFGetAllocator(v359);
            v253 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v252, a3, v99, 0, &v360);
            if (v253)
            {
              Code = v253;
              v244 = "failed to create an AP ticket URL";
              goto LABEL_187;
            }

            v261 = CFGetAllocator(v359);
            v262 = AMAuthInstallSupportWriteDataToFileURL(v261, v251, v360, 1);
            if (v262)
            {
              Code = v262;
              AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write the AP ticket", v263, v264, v265, v266, v267, v327);
              AMAuthInstallLog(8, "_AMAuthInstallBundlePopulatePersonalizedBundle", "%@", v268, v269, v270, v271, v272, v360);
              goto LABEL_201;
            }

            CFArrayAppendValue(v345, v99);
          }
        }
      }

      if (!(*(v359 + 448))(v359, a3, theDicta, &v361))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to write updater manifests: %@", v233, v234, v235, v236, v237, v361);
        if (v361)
        {
          Code = CFErrorGetCode(v361);
        }

        else
        {
          Code = 4;
        }

        goto LABEL_201;
      }

      if (v344)
      {
        goto LABEL_173;
      }

      v366[0] = 0;
      v245 = CFGetAllocator(v359);
      v247 = CFDictionaryCreateMutable(v245, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!v247)
      {
        v248 = 0;
        v249 = 0;
        Code = 2;
LABEL_182:
        SafeRelease(v247);
        SafeRelease(v249);
        SafeRelease(v366[0]);
        if (Code)
        {
          LOBYTE(v327) = AMAuthInstallGetLocalizedStatusString(v359, Code);
          v244 = "_AMAuthInstallCreateAlignmentDictionary failed: %@";
          goto LABEL_187;
        }

        CFDictionarySetValue(v343, @"Alignment", v248);
        CFRelease(v248);
        v97 = v359;
LABEL_173:
        if (CFDictionaryGetCount(*v97[16]) >= 1)
        {
          v238 = CFGetAllocator(v97);
          context = CFDictionaryCreateMutable(v238, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (!context)
          {
LABEL_261:
            Code = 2;
            goto LABEL_201;
          }

          CFDictionaryApplyFunction(*v97[16], _AMAuthInstallBundleNormalizeOverrideURLs, &context);
          CFDictionarySetValue(v343, @"Overrides", context);
        }

        Code = AMAuthInstallBundleWriteReceipt(v97, a3, v343, BOOLean);
        if (!Code)
        {
          goto LABEL_201;
        }

        LOBYTE(v327) = AMAuthInstallGetLocalizedStatusString(v97, Code);
        v244 = "failed to write receipt: %@";
LABEL_187:
        AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", v244, v239, v240, v241, v242, v243, v327);
        goto LABEL_201;
      }

      RelativePathForManifestEntry = _CreateRelativePathForManifestEntry(v359, v246, a3, v358, @"iBSS");
      if (RelativePathForManifestEntry)
      {
        v292 = RelativePathForManifestEntry;
        v293 = @"RELEASE";
        if (CFStringFind(RelativePathForManifestEntry, @"RELEASE", 0).location != -1 || (v293 = @"DEVELOPMENT", CFStringFind(v292, @"DEVELOPMENT", 0).location != -1) || (v293 = @"DEBUG", CFStringFind(v292, @"DEBUG", 0).location != -1))
        {
          CFDictionarySetValue(v247, @"DFUFileType", v293);
        }

        SafeRelease(v292);
      }

      v294 = _CreateRelativePathForManifestEntry(v359, v291, a3, v358, @"OS");
      if (v294)
      {
        v296 = v294;
        CFDictionarySetValue(v247, @"OS", v294);
        SafeRelease(v296);
      }

      v297 = _CreateRelativePathForManifestEntry(v359, v295, a3, v358, @"RestoreKernelCache");
      if (v297)
      {
        v249 = v297;
        v299 = CFGetAllocator(v359);
        v300 = AMAuthInstallSupportCreatePrependedFilePath(v299, @"RestoreKernelCache", v249, v366);
        if (v300)
        {
          goto LABEL_267;
        }

        if (v366[0])
        {
          CFDictionarySetValue(v247, @"RestoreKernelCache", v366[0]);
          SafeRelease(v366[0]);
          v366[0] = 0;
        }

        SafeRelease(v249);
      }

      v308 = _CreateRelativePathForManifestEntry(v359, v298, a3, v358, @"KernelCache");
      if (v308)
      {
        v249 = v308;
        v310 = CFGetAllocator(v359);
        v300 = AMAuthInstallSupportCreatePrependedFilePath(v310, @"KernelCache", v249, v366);
        if (v300)
        {
          goto LABEL_267;
        }

        if (v366[0])
        {
          CFDictionarySetValue(v247, @"KernelCache", v366[0]);
          SafeRelease(v366[0]);
          v366[0] = 0;
        }

        SafeRelease(v249);
      }

      v311 = _CreateRelativePathForManifestEntry(v359, v309, a3, v358, @"RestoreRamDisk");
      if (v311)
      {
        v313 = v311;
        CFDictionarySetValue(v247, @"RestoreRamDisk", v311);
        SafeRelease(v313);
      }

      v314 = _CreateRelativePathForManifestEntry(v359, v312, a3, v358, @"OSRamdisk");
      if (v314)
      {
        v316 = v314;
        CFDictionarySetValue(v247, @"OSRamdisk", v314);
        SafeRelease(v316);
      }

      v317 = _CreateRelativePathForManifestEntry(v359, v315, a3, v358, @"RestoreDeviceTree");
      if (v317)
      {
        v249 = v317;
        v319 = CFGetAllocator(v359);
        v300 = AMAuthInstallSupportCreatePrependedFilePath(v319, @"RestoreDeviceTree", v249, v366);
        if (v300)
        {
          goto LABEL_267;
        }

        if (v366[0])
        {
          CFDictionarySetValue(v247, @"RestoreDeviceTree", v366[0]);
          CopyByDeletingLastComponent = _AMAuthInstallBundleComponentCreateCopyByDeletingLastComponent(*MEMORY[0x29EDB8ED8], v249);
          if (CopyByDeletingLastComponent)
          {
            v321 = CopyByDeletingLastComponent;
            CFDictionarySetValue(v247, @"AllFlash", CopyByDeletingLastComponent);
            CFRelease(v321);
          }

          SafeRelease(v366[0]);
          v366[0] = 0;
        }

        SafeRelease(v249);
      }

      v322 = _CreateRelativePathForManifestEntry(v359, v318, a3, v358, @"DeviceTree");
      if (!v322)
      {
LABEL_247:
        v325 = _CreateRelativePathForManifestEntry(v359, v323, a3, v358, @"Diags");
        if (v325)
        {
          v326 = v325;
          CFDictionarySetValue(v247, @"Diags", v325);
          SafeRelease(v326);
        }

        v248 = CFRetain(v247);
        v249 = 0;
        Code = 0;
        goto LABEL_182;
      }

      v249 = v322;
      v324 = CFGetAllocator(v359);
      v300 = AMAuthInstallSupportCreatePrependedFilePath(v324, @"DeviceTree", v249, v366);
      if (!v300)
      {
        if (v366[0])
        {
          CFDictionarySetValue(v247, @"DeviceTree", v366[0]);
          SafeRelease(v366[0]);
          v366[0] = 0;
        }

        SafeRelease(v249);
        goto LABEL_247;
      }

LABEL_267:
      Code = v300;
      _AMAuthInstallBundlePopulatePersonalizedBundle_cold_12(v300, v301, v302, v303, v304, v305, v306, v307);
      v248 = 0;
      goto LABEL_182;
    }

LABEL_266:
    Code = 2;
    goto LABEL_200;
  }

  v52 = v51;
  v53 = 0;
  v54 = *MEMORY[0x29EDB8F00];
  v350 = *MEMORY[0x29EDB8F00];
  v353 = *MEMORY[0x29EDB8EF8];
  while (1)
  {
    v55 = CFArrayGetValueAtIndex(theArray, v53);
    if (!v55)
    {
      _AMAuthInstallBundlePopulatePersonalizedBundle_cold_10();
    }

    v56 = v55;
    v57 = CFStringFind(v55, @"RecoveryOS", 0).location == -1 ? v353 : v350;
    v58 = CFBooleanGetValue(v57);
    v59 = CFBooleanGetValue(BOOLean);
    if (v58)
    {
      break;
    }

    if (!v59)
    {
      goto LABEL_36;
    }

LABEL_45:
    if (v52 == ++v53)
    {
      goto LABEL_51;
    }
  }

  if (!v59)
  {
    goto LABEL_45;
  }

  SafeRelease(v16);
  v60 = CFGetAllocator(v50);
  v16 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v60, v56);
  v56 = v16;
LABEL_36:
  v61 = CFDictionaryGetValue(v358, v56);
  if (!v61)
  {
    AMAuthInstallLog(6, "_AMAuthInstallBundlePopulatePersonalizedBundle", "no entry in manifest found for %@", v62, v63, v64, v65, v66, v56);
    goto LABEL_45;
  }

  v366[0] = 0;
  if (!v56)
  {
    Code = 1;
    goto LABEL_198;
  }

  v67 = v61;
  v68 = CFBooleanGetValue(v57);
  v69 = _AMAuthInstallBundleCopyEntryURLs(v50, v56, v67, a2, a3, 0, v68, v366, v327, v329, v330, v331, pathComponent, v333, value, v335, v336, v337, theString, allocator, v340, key, v342, v343, v344, v345, v347, v348);
  if (v69)
  {
    Code = v69;
    AMAuthInstallLog(3, "_AMAuthInstallBundleInstallLinkedEntry", "failed to copy bundle URLs for %@", v70, v71, v72, v73, v74, v56);
    goto LABEL_198;
  }

  v75 = v16;
  v76 = CFDictionaryGetValue(v366[0], @"SourceURL");
  v77 = CFDictionaryGetValue(v366[0], @"DestURL");
  v78 = CFDictionaryGetValue(v366[0], @"RelativeSrcPath");
  v79 = v78;
  if (!v76 && !v77 && !v78)
  {
    Code = 8;
    goto LABEL_257;
  }

  v367.length = CFArrayGetCount(v348);
  v367.location = 0;
  if (CFArrayContainsValue(v348, v367, v79))
  {
LABEL_43:
    SafeRelease(v366[0]);
    v16 = v75;
    v50 = v359;
    v41 = v348;
    goto LABEL_45;
  }

  v80 = AMAuthInstallPlatformMakeDirectoryForURL(v77);
  if (v80)
  {
    Code = v80;
    _AMAuthInstallBundlePopulatePersonalizedBundle_cold_9(v80);
    goto LABEL_257;
  }

  v81 = AMAuthInstallBundleInstallFile(v359, v77, v76);
  if (!v81)
  {
    CFArrayAppendValue(v348, v79);
    goto LABEL_43;
  }

  Code = v81;
  _AMAuthInstallBundlePopulatePersonalizedBundle_cold_8(v81);
LABEL_257:
  v16 = v75;
LABEL_198:
  SafeRelease(v366[0]);
  AMAuthInstallLog(3, "_AMAuthInstallBundlePopulatePersonalizedBundle", "failed to install link for %@ in personalized bundle", v273, v274, v275, v276, v277, v56);
  v11 = 0;
LABEL_199:
  v14 = 0;
LABEL_200:
  v15 = v347;
LABEL_201:
  SafeRelease(v11);
  SafeRelease(v14);
  SafeRelease(v363);
  SafeRelease(context);
  SafeRelease(v361);
  SafeRelease(v360);
  SafeRelease(v15);
  SafeRelease(v16);
  return Code;
}

CFStringRef AMAuthInstallICreateTranslationOfRecoveryEnteryName(const __CFAllocator *a1, CFStringRef theString)
{
  v4 = CFStringFind(theString, @"RecoveryOS", 0);
  if (v4.location == -1)
  {

    return CFStringCreateCopy(a1, theString);
  }

  else
  {
    Length = CFStringGetLength(theString);
    v6.length = Length - CFStringGetLength(@"RecoveryOS");
    v6.location = v4.length;

    return CFStringCreateWithSubstring(a1, theString, v6);
  }
}

uint64_t AMAuthInstallBundleCreatePersonalizedPathWithKey(const void *a1, CFStringRef theString1, const __CFString *a3, const __CFURL **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  anURL = 0;
  if (!a1 || !a3 || !a4)
  {
    Copy = 0;
    v25 = 0;
    v15 = 0;
    v26 = 1;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (theString1)
  {
    v11 = CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo;
  }

  else
  {
    v11 = 0;
  }

  IsImg4 = AMAuthInstallApIsImg4(a1, theString1, a3, a4, a5, a6, a7, a8);
  v13 = CFGetAllocator(a1);
  if (v11 || !IsImg4)
  {
    Copy = CFStringCreateCopy(v13, a3);
    v26 = 0;
    v25 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  Copy = CFURLCreateWithFileSystemPath(v13, a3, kCFURLPOSIXPathStyle, 0);
  v15 = Copy;
  if (!Copy)
  {
    goto LABEL_19;
  }

  v16 = CFGetAllocator(a1);
  v17 = AMAuthInstallApImg4CopyURLAddingExtension(v16, v15, &anURL);
  if (v17)
  {
    v26 = v17;
    AMAuthInstallBundleCreatePersonalizedPathWithKey_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    Copy = 0;
    v25 = 0;
    goto LABEL_15;
  }

  Copy = anURL;
  if (!anURL)
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  Copy = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  v25 = Copy;
  if (!Copy)
  {
LABEL_20:
    v26 = 2;
    goto LABEL_15;
  }

  Copy = CFRetain(Copy);
  v26 = 0;
LABEL_15:
  *a4 = Copy;
LABEL_16:
  SafeRelease(v15);
  SafeRelease(0);
  SafeRelease(anURL);
  SafeRelease(v25);
  return v26;
}

const __CFString *_AMAuthInstallBundlePersonalizeApplyPreferencesOverrides(void *a1)
{
  if (AMAuthInstallPreferencesGetBooleanValue(0, @"BAAForceEnable", 0))
  {
    AMAuthInstallEnableManagedRequest(a1, 0, v2, v3, v4, v5, v6, v7);
  }

  result = AMAuthInstallPreferencesGetBooleanValue(0, @"AlternateUpdateBAAForceEnable", 0);
  if (result)
  {

    return AMAuthInstallEnableAlternateUpdateRequest(a1, 0, v9, v10, v11, v12, v13, v14);
  }

  return result;
}

uint64_t _AMAuthInstallBundleCreateDebugDirectory(CFTypeRef *a1, const void *a2)
{
  SafeRelease(a1[42]);
  v4 = CFGetAllocator(a1);
  v5 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v4, a2, @"amai/debug", 1u, a1 + 42);
  if (v5)
  {
    v6 = v5;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v5);
    AMAuthInstallLog(3, "_AMAuthInstallBundleCreateDebugDirectory", "failed to create debug directory within bundle: %@", v8, v9, v10, v11, v12, LocalizedStatusString);
    AMAuthInstallLog(8, "_AMAuthInstallBundleCreateDebugDirectory", "bundle: %@", v13, v14, v15, v16, v17, a2);
    return v6;
  }

  else
  {
    v19 = a1[42];

    return AMAuthInstallPlatformMakeDirectoryForURL(v19);
  }
}

uint64_t _AMRAuthInstallBundleModifyFirmwareEntries(uint64_t a1, CFDictionaryRef theDict, const __CFArray *a3, __CFArray *a4)
{
  BOOLean = *MEMORY[0x29EDB8EF8];
  Value = CFDictionaryGetValue(theDict, @"Info");
  if (Value)
  {
    v7 = CFDictionaryGetValue(Value, @"Variant");
    if (v7)
    {
      v8 = *(a1 + 496);
      if (v8)
      {
        v9 = CFStringCompare(v7, v8, 0);
        v10 = *MEMORY[0x29EDB8F00];
        v11 = BOOLean;
        if (v9 == kCFCompareEqualTo)
        {
          v11 = *MEMORY[0x29EDB8F00];
        }

        BOOLean = v11;
      }
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"Manifest");
  if (v12)
  {
    v13 = v12;
    Count = CFDictionaryGetCount(v12);
    v15 = malloc(8 * Count);
    v16 = malloc(8 * Count);
    CFDictionaryGetKeysAndValues(v13, v15, v16);
    if (Count >= 1)
    {
      v88 = a4;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      while (1)
      {
        v20 = v15[v18];
        v21 = v16[v18];
        v22 = CFGetTypeID(v21);
        TypeID = CFDictionaryGetTypeID();
        if (v22 != TypeID)
        {
          _AMRAuthInstallBundleModifyFirmwareEntries_cold_1(TypeID, v24, v25, v26, v27, v28, v29, v30, v87);
          v85 = 99;
          goto LABEL_33;
        }

        v31 = CFDictionaryGetValue(v21, @"Info");
        if (v31)
        {
          v37 = v31;
          v38 = _CFDictionaryGetBoolean(v31, @"IsFirmwarePayload", 0, v32, v33, v34, v35, v36);
          v44 = _CFDictionaryGetBoolean(v37, @"IsSecondaryFirmwarePayload", 0, v39, v40, v41, v42, v43) | v38;
          v50 = _CFDictionaryGetBoolean(v37, @"IsFUDFirmware", 0, v45, v46, v47, v48, v49);
          v56 = v44 | v50 | _CFDictionaryGetBoolean(v37, @"IsLoadedByiBoot", 0, v51, v52, v53, v54, v55);
          v62 = _CFDictionaryGetBoolean(v37, @"IsEarlyAccessFirmware", 0, v57, v58, v59, v60, v61);
          v68 = v62 | _CFDictionaryGetBoolean(v37, @"IsiBootEANFirmware", 0, v63, v64, v65, v66, v67);
          v79 = v56 | v68 | _CFDictionaryGetBoolean(v37, @"IsiBootNonEssentialFirmware", 0, v69, v70, v71, v72, v73);
          v80 = *(a1 + 528);
          if (v80)
          {
            v79 |= _CFDictionaryGetBoolean(v80, v20, 0, v74, v75, v76, v77, v78);
          }

          if (v79)
          {
            SafeRelease(v19);
            if (CFBooleanGetValue(BOOLean))
            {
              v87 = v20;
              Copy = CFStringCreateWithFormat(alloc, 0, @"RecoveryOS%@");
            }

            else
            {
              Copy = CFStringCreateCopy(alloc, v20);
            }

            v19 = Copy;
            v93.length = CFArrayGetCount(a3);
            v93.location = 0;
            if (CFArrayContainsValue(a3, v93, v19))
            {
              if (v17)
              {
                goto LABEL_28;
              }
            }

            else
            {
              CFArrayAppendValue(a3, v19);
              if (v17)
              {
                goto LABEL_28;
              }
            }

            v82 = CFDictionaryGetValue(v37, @"Path");
            if (v82)
            {
              CopyByDeletingLastComponent = _AMAuthInstallBundleComponentCreateCopyByDeletingLastComponent(alloc, v82);
              if (!CopyByDeletingLastComponent)
              {
                v17 = 0;
LABEL_35:
                v85 = 2;
                goto LABEL_33;
              }

              v84 = CopyByDeletingLastComponent;
              v87 = CopyByDeletingLastComponent;
              v17 = CFStringCreateWithFormat(alloc, 0, @"%@/manifest");
              CFRelease(v84);
              if (!v17)
              {
                goto LABEL_35;
              }

              if (v88)
              {
                CFArrayAppendValue(v88, v17);
              }
            }

            else
            {
              v17 = 0;
            }
          }
        }

LABEL_28:
        if (Count == ++v18)
        {
          goto LABEL_32;
        }
      }
    }

    v19 = 0;
    v17 = 0;
LABEL_32:
    v85 = 0;
  }

  else
  {
    v19 = 0;
    v16 = 0;
    v15 = 0;
    v17 = 0;
    v85 = 7;
  }

LABEL_33:
  SafeFree(v15);
  SafeFree(v16);
  SafeRelease(v17);
  SafeRelease(v19);
  return v85;
}

void _CFArrayRemoveValue(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if ((FirstIndexOfValue & 0x8000000000000000) == 0)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

uint64_t AMAuthInstallBundleShouldPersonalizeOSImage(const __CFDictionary *a1, const void *a2, const __CFString *a3)
{
  if (!a1)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_6();
    return 0;
  }

  if (!a2)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_5();
    return 0;
  }

  ManifestEntry = AMAuthInstallBundleGetManifestEntry(a1, @"Manifest", a3, a2);
  if (!ManifestEntry)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_4();
    return 0;
  }

  Value = CFDictionaryGetValue(ManifestEntry, @"OS");
  if (!Value)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_3();
    return 0;
  }

  v5 = CFDictionaryGetValue(Value, @"Info");
  if (!v5)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_2();
    return 0;
  }

  v6 = CFDictionaryGetValue(v5, @"Personalize");
  if (!v6)
  {
    AMAuthInstallBundleShouldPersonalizeOSImage_cold_1();
    return 0;
  }

  v12 = CFBooleanGetValue(v6);
  v13 = "Yes";
  if (!v12)
  {
    v13 = "No";
  }

  AMAuthInstallLog(6, "AMAuthInstallBundleShouldPersonalizeOSImage", "Personalize OS image = %s", v7, v8, v9, v10, v11, v13);
  return v12;
}

const __CFDictionary *AMAuthInstallBundleGetManifestEntry(const __CFDictionary *a1, const __CFString *a2, const __CFString *a3, const void *a4)
{
  ValueForKeyPathInDict = a1;
  *v13 = 0;
  if (!a1)
  {
    AMAuthInstallBundleGetManifestEntry_cold_5();
    goto LABEL_8;
  }

  if (!a2)
  {
    AMAuthInstallBundleGetManifestEntry_cold_4();
LABEL_14:
    ValueForKeyPathInDict = 0;
    goto LABEL_8;
  }

  if (!a3)
  {
    AMAuthInstallBundleGetManifestEntry_cold_3();
    goto LABEL_14;
  }

  if (!a4)
  {
    AMAuthInstallBundleGetManifestEntry_cold_2();
    goto LABEL_14;
  }

  if (AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a4, a3, v13))
  {
    AMAuthInstallBundleGetManifestEntry_cold_1();
    goto LABEL_14;
  }

  v6 = CFGetAllocator(ValueForKeyPathInDict);
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v6, *v13, a2, v7, v8, v9, v10, v11);
  if (!ValueForKeyPathInDict)
  {
    AMSupportCreateErrorInternal();
  }

LABEL_8:
  SafeRelease(*v13);
  return ValueForKeyPathInDict;
}

BOOL _AMAuthInstallBundleShouldPersonalizeOS(void *a1, const void *a2, const __CFString *a3)
{
  cf = 0;
  if (!a1)
  {
    _AMAuthInstallBundleShouldPersonalizeOS_cold_2();
    return 0;
  }

  if (a2)
  {
    v4 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &cf);
    if (!v4)
    {
      CFGetAllocator(a1);
      ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
      v10 = ValueForKeyPathInDict != 0;
      v17 = "No";
      if (ValueForKeyPathInDict)
      {
        v17 = "Yes";
      }

      AMAuthInstallLog(6, "_AMAuthInstallBundleShouldPersonalizeOS", "Personalize OS = %s", v12, v13, v14, v15, v16, v17);
      goto LABEL_9;
    }

    AMAuthInstallLog(3, "_AMAuthInstallBundleShouldPersonalizeOS", "failed to copy build variant %d", v5, v6, v7, v8, v9, v4);
    AMSupportCreateErrorInternal();
  }

  else
  {
    _AMAuthInstallBundleShouldPersonalizeOS_cold_1();
  }

  v10 = 0;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t _AMAuthInstallBundleLocalPolicyCopyGivenOrDefaultNSIH(const void *a1, const void *a2, CFTypeRef cf, CFTypeRef *a4)
{
  if (!a4)
  {
    return 1;
  }

  if (cf)
  {
    v5 = 0;
    *a4 = CFRetain(cf);
  }

  else
  {
    v15 = CFGetAllocator(a1);
    v26 = 0;
    v27 = 0;
    if (a1 && AMAuthInstallApIsImg4(a1, v8, v9, v10, v11, v12, v13, v14))
    {
      v16 = @"amai/apimg4ticket.der";
    }

    else
    {
      v16 = @"amai/apticket.der";
    }

    v17 = AMAuthInstallPlatformCopyURLWithAppendedComponent(v15, a2, v16, 0, &v26);
    if (v17)
    {
      v5 = v17;
      v24 = 0;
    }

    else
    {
      Digest = AMAuthInstallApCreateDigest(v26, 4096, 384);
      v24 = Digest;
      if (Digest)
      {
        v5 = 0;
        *a4 = CFRetain(Digest);
      }

      else
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleLocalPolicyCopyDefaultNSIH", "failed to compute NSIH for %@: %@", v19, v20, v21, v22, v23, v26);
        v5 = 4;
      }
    }

    SafeRelease(v26);
    SafeRelease(v24);
    SafeRelease(v27);
  }

  return v5;
}

uint64_t AMAuthInstallBundleSetPropertiesWithBoardConfig(CFDictionaryRef *a1, uint64_t a2, int a3, const void *a4, unsigned int a5, const void *a6, const __CFString *a7)
{
  v7 = 0;
  theArray = 0;
  v8 = 1;
  if (!a6 || !a7)
  {
    goto LABEL_25;
  }

  v10 = a6;
  v16 = AMAuthInstallBundleCopyPublishedVariantsArray(*MEMORY[0x29EDB8ED8], a6);
  if (v16)
  {
    v8 = v16;
    LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v16);
    AMAuthInstallLog(3, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "failed to find published variants in bundle: %@", v18, v19, v20, v21, v22, LocalizedStatusString);
    AMAuthInstallLog(8, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "bundle: %@", v23, v24, v25, v26, v27, v10);
LABEL_5:
    v7 = 0;
    goto LABEL_25;
  }

  v63 = a1;
  v64 = a2;
  v28 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_24:
    AMAuthInstallLog(3, "AMAuthInstallBundleSetPropertiesWithBoardConfig", "failed to find any usable references to %@ in build manifest", v30, v31, v32, v33, v34, a7);
    v7 = 0;
    v8 = 8;
    goto LABEL_25;
  }

  v35 = Count;
  v61 = a3;
  v62 = a5;
  cf = a4;
  v36 = 0;
  v8 = 8;
  while (1)
  {
    *v65 = 0;
    v66 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v28, v36);
    if (!ValueAtIndex)
    {
      AMAuthInstallBundleSetPropertiesWithBoardConfig_cold_2();
    }

    v38 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, @"Info");
    if (!Value)
    {
      goto LABEL_22;
    }

    v40 = CFDictionaryGetValue(Value, @"DeviceClass");
    if (!v40 || CFStringCompare(a7, v40, 1uLL))
    {
      goto LABEL_22;
    }

    v41 = CFDictionaryGetValue(v38, @"ApBoardID");
    if (!v41 || (v42 = v41, (v43 = CFDictionaryGetValue(v38, @"ApChipID")) == 0))
    {
      v8 = 7;
      goto LABEL_22;
    }

    v44 = v43;
    v45 = CFDictionaryGetValue(v38, @"BbChipID");
    v46 = CFDictionaryGetValue(v38, @"ApSecurityDomain");
    if (_CFStringToUInt32(v42, &v66 + 1))
    {
      if (_CFStringToUInt32(v44, &v66) && (!v45 || _CFStringToUInt32(v45, &v65[1])) && (!v46 || _CFStringToUInt32(v46, v65)))
      {
        break;
      }
    }

    v8 = 3;
LABEL_22:
    if (v35 == ++v36)
    {
      if (v8 != 8)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    _CFDictionarySetInteger64(Mutable, @"ECID", v64);
    _CFDictionarySetInteger32(v7, @"ApChipID", v66);
    _CFDictionarySetInteger32(v7, @"ApBoardID", SHIDWORD(v66));
    if (v46)
    {
      v49 = v65[0];
    }

    else
    {
      v49 = 1;
    }

    _CFDictionarySetInteger32(v7, @"ApSecurityDomain", v49);
    _CFDictionarySetBoolean(v7, @"ApProductionMode", v61);
    v50 = AMAuthInstallApSetParameters(v63, v7);
    if (!v50)
    {
      v57 = cf;
      if (cf)
      {
        if (v45)
        {
          if (AMAuthInstallBasebandSetFusings(v63, v65[1], v62, cf, v53, v54, v55, v56))
          {
            v58 = "baseband apparently doesn't support personalization";
            goto LABEL_37;
          }
        }

        else
        {
          v58 = "no baseband chipid found in identity, but baseband returned snum. Can't preflight baseband personalization.";
LABEL_37:
          AMAuthInstallLog(5, "AMAuthInstallBundleSetPropertiesWithBoardConfig", v58, v57, v53, v54, v55, v56, v59);
        }
      }

      v8 = 0;
      goto LABEL_25;
    }

    v8 = v50;
    AMAuthInstallBundleSetPropertiesWithBoardConfig_cold_1(v50, v51, v62, v52, v53, v54, v55, v56);
  }

  else
  {
    v8 = 2;
  }

LABEL_25:
  SafeRelease(v7);
  SafeRelease(theArray);
  return v8;
}

uint64_t AMAuthInstallBundleSetVariantSpecifiesRestoreBehavior(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 56) = a2;
  return result;
}

__CFString *AMAuthInstallBundleGetApTicketComponentPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && AMAuthInstallApIsImg4(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return @"amai/apimg4ticket.der";
  }

  else
  {
    return @"amai/apticket.der";
  }
}

const __CFString *_AMAuthInstallBundleImageHasBuildString(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringCompare(result, @"iBSS", 0) && CFStringCompare(v1, @"iBEC", 0))
    {
      return (CFStringCompare(v1, @"LLB", 0) == kCFCompareEqualTo);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetDefaultResult(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    result = *MEMORY[0x29EDB8EF8];
    if (*MEMORY[0x29EDB8EF8] != a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (CFStringCompare(a1, &stru_2A1EE9D10, 0) == kCFCompareEqualTo)
    {
LABEL_13:
      v7 = MEMORY[0x29EDB8F00];
      return *v7;
    }
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      if (!valuePtr)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFDataGetTypeID() && !CFDataGetLength(a1))
      {
        goto LABEL_13;
      }
    }
  }

  v7 = MEMORY[0x29EDB8EF8];
  return *v7;
}

void _AMAuthInstallBundleCopyFirmwareData(const void *a1, const void *a2, __CFDictionary *a3)
{
  value = 0;
  if (AMAuthInstallSupportCreateDataFromMappedFileURL(*MEMORY[0x29EDB8ED8], &value, a2))
  {
    AMAuthInstallLog(3, "_AMAuthInstallBundleCopyFirmwareData", "failed to create data for %@", v5, v6, v7, v8, v9, a1);
  }

  else
  {
    CFDictionarySetValue(a3, a1, value);
    SafeRelease(value);
  }
}

CFURLRef AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity(CFDictionaryRef **a1, const __CFURL *a2, uint64_t a3, const __CFString *a4, CFBooleanRef BOOLean)
{
  if (!a1)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_6();
LABEL_24:
    v17 = 0;
    v6 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_5();
    goto LABEL_24;
  }

  v6 = a4;
  if (!a4)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_4();
    v17 = 0;
LABEL_25:
    v15 = 0;
    goto LABEL_17;
  }

  if (!a2)
  {
    AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_3();
    goto LABEL_24;
  }

  if (!CFBooleanGetValue(BOOLean) || CFStringHasPrefix(v6, @"RecoveryOS") || (v15 = CFStringCreateWithFormat(0, 0, @"%@%@", @"RecoveryOS", v6)) == 0)
  {
    CFRetain(v6);
    v15 = v6;
  }

  if (BOOLean)
  {
    CFBooleanGetValue(BOOLean);
  }

  AMAuthInstallLog(6, "AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity", "%s: isRecovery = %d, entry = %@", v10, v11, v12, v13, v14, "AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity");
  Value = CFDictionaryGetValue(*a1[16], v15);
  if (!Value)
  {
    if (CFBooleanGetValue(BOOLean))
    {
      CFRelease(v15);
      v23 = CFGetAllocator(a1);
      v15 = AMAuthInstallICreateTranslationOfRecoveryEnteryName(v23, v6);
    }

    v24 = CFGetAllocator(a1);
    AMAuthInstallSupportGetValueForKeyPathInDict(v24, a3, v15, v25, v26, v27, v28, v29);
    v30 = CFGetAllocator(a1);
    v6 = CFStringCreateWithFormat(v30, 0, @"%@.%@.%@.%@", @"Manifest", v15, @"Info", @"Path");
    if (v6)
    {
      v31 = CFGetAllocator(a1);
      ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v31, a3, v6, v32, v33, v34, v35, v36);
      if (ValueForKeyPathInDict)
      {
        v38 = ValueForKeyPathInDict;
        v39 = CFGetAllocator(a1);
        v17 = CFURLCreateCopyAppendingPathComponent(v39, a2, v38, 0);
        goto LABEL_17;
      }

      AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_1();
    }

    else
    {
      AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity_cold_2();
    }

    v17 = 0;
    goto LABEL_17;
  }

  v17 = Value;
  CFRetain(Value);
  AMAuthInstallLog(8, "AMAuthInstallBundleCreateURLForKeyEntryInBuildIdentity", "using override: %@ = %@", v18, v19, v20, v21, v22, v15);
  v6 = 0;
LABEL_17:
  SafeRelease(v6);
  SafeRelease(v15);
  return v17;
}

uint64_t AMAuthInstallBundleAppendRecoveryOSiBootFirmwareEntriesToAssetArray(const __CFDictionary *a1, const __CFArray *a2)
{
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    v5 = malloc(8 * Count);
    v6 = malloc(8 * Count);
    CFDictionaryGetKeysAndValues(a1, v5, v6);
    if (Count < 1)
    {
LABEL_11:
      v31 = 0;
    }

    else
    {
      v7 = 0;
      alloc = *MEMORY[0x29EDB8ED8];
      while (1)
      {
        v8 = v5[v7];
        v9 = v6[v7];
        v10 = CFGetTypeID(v9);
        TypeID = CFDictionaryGetTypeID();
        if (v10 != TypeID)
        {
          break;
        }

        Value = CFDictionaryGetValue(v9, @"Info");
        if (Value && _CFDictionaryGetBoolean(Value, @"IsLoadedByiBoot", 0, v20, v21, v22, v23, v24))
        {
          v25 = CFStringCreateWithFormat(alloc, 0, @"RecoveryOS%@", v8);
          AMAuthInstallLog(6, "AMAuthInstallBundleAppendRecoveryOSiBootFirmwareEntriesToAssetArray", "Found %@: %@", v26, v27, v28, v29, v30, @"IsLoadedByiBoot");
          v35.length = CFArrayGetCount(a2);
          v35.location = 0;
          if (!CFArrayContainsValue(a2, v35, v25))
          {
            CFArrayAppendValue(a2, v25);
          }

          CFRelease(v25);
        }

        if (Count == ++v7)
        {
          goto LABEL_11;
        }
      }

      AMAuthInstallBundleAppendRecoveryOSiBootFirmwareEntriesToAssetArray_cold_1(TypeID, v12, v13, v14, v15, v16, v17, v18, v33);
      v31 = 99;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v31 = 7;
  }

  SafeFree(v5);
  SafeFree(v6);
  SafeRelease(0);
  return v31;
}

CFStringRef _AMAuthInstallBundleComponentCreateCopyByDeletingLastComponent(const __CFAllocator *a1, CFStringRef theString)
{
  v10 = *MEMORY[0x29EDCA608];
  if (CFStringGetCString(theString, buffer, 256, 0x8000100u))
  {
    v3 = strlen(buffer);
    if (v3)
    {
      do
      {
        v4 = v3 - 1;
        v5 = buffer[v3 - 1] == 47 || v3 == 1;
        --v3;
      }

      while (!v5);
    }

    else
    {
      v4 = 0;
    }

    buffer[v4] = 0;
    result = CFStringCreateWithCString(a1, buffer, 0x8000100u);
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _AMAuthInstallBundlePopulateManifestProperties(void *a1, CFDictionaryRef theDict, __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      if (theDict)
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v89 = 0;
        v73 = 0u;
        v72 = 0u;
        v71 = 0u;
        v70 = 0u;
        v69 = 0u;
        v68 = 0u;
        v67 = 0u;
        v66 = 0u;
        v65 = 0u;
        v64 = 0u;
        v63 = 0u;
        v62 = 0u;
        v61 = 0u;
        v60 = 0u;
        v59 = 0u;
        v58 = 0u;
        v57 = @"UniqueBuildID";
        if (*(v9 + 136) || *(v9 + 144))
        {
          *&v58 = @"ProductMarketingVersion";
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        v13 = &v57;
        *(&v57 + v12) = @"Ap,InternalUseOnlyUnit";
        *(&v57 + v12 + 1) = @"Ap,EngineeringUseOnlyUnit";
        *(&v57 + v12 + 2) = @"Ap,InternalUseOnlySW";
        *(&v57 + v12 + 3) = @"Ap,RestoreSecurityOverrides0";
        *(&v57 + (v12 | 4)) = @"Ap,RestoreSecurityOverrides1";
        *(&v57 + v12 + 5) = @"Ap,RestoreSecurityOverrides2";
        *(&v57 + v12 + 6) = @"Ap,RestoreSecurityOverrides3";
        *(&v57 + v12 + 7) = @"Ap,OSLongVersion";
        *(&v57 + (v12 | 8)) = @"x86,OSLongVersion";
        *(&v57 + v12 + 9) = @"PearlCertificationRootPub";
        *(&v57 + v12 + 10) = @"Ap,OSEnvironment";
        *(&v57 + v12 + 11) = @"AllowNeRDBoot";
        *(&v57 + v12 + 13) = @"Ap,CurrentOSSecurityVersion";
        *(&v57 + v12 + 14) = @"Ap,MinimumOSSecurityVersion";
        *(&v57 + v12 + 15) = @"Ap,EphemeralDataMode";
        *(&v57 + (v12 | 0x10)) = @"Ap,EnableGroundhog";
        *(&v57 + v12 + 17) = @"Ap,TargetType";
        *(&v57 + v12 + 18) = @"Ap,ProductType";
        *(&v57 + v12 + 19) = @"Ap,SoftwareUpdateDeviceID";
        *(&v57 + (v12 | 0x14)) = @"Ap,SDKPlatform";
        *(&v57 + v12 + 21) = @"Ap,Target";
        *(&v57 + v12 + 22) = @"Ap,OSReleaseType";
        *(&v57 + v12 + 23) = @"Ap,UniqueTagList";
        *(&v57 + (v12 | 0x18)) = @"Ap,ProductMarketingVersion";
        v14 = v12 + 25;
        *(&v57 + (v12 | 0xC)) = @"NeRDEpoch";
        do
        {
          v15 = *v13;
          Value = CFDictionaryGetValue(theDict, *v13);
          if (Value)
          {
            CFDictionaryAddValue(a3, v15, Value);
            AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request", v17, v18, v19, v20, v21, v15);
          }

          ++v13;
          --v14;
        }

        while (v14);
        v22 = CFDictionaryGetValue(theDict, @"Info");
        if (_CFDictionaryGetBoolean(v22, @"RequiresUIDMode", 0, v23, v24, v25, v26, v27))
        {
          if (*(a1[2] + 184))
          {
            v28 = *(a1[2] + 184);
          }

          else
          {
            v28 = *MEMORY[0x29EDB8EF8];
          }

          CFDictionarySetValue(a3, @"UID_MODE", v28);
        }

        v29 = CFDictionaryGetValue(v22, @"RequestManifestProperties");
        if (v29)
        {
          v30 = v29;
          v31 = CFGetTypeID(v29);
          if (v31 == CFArrayGetTypeID() && CFArrayGetCount(v30) >= 1)
          {
            v32 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v30, v32);
              v34 = CFDictionaryGetValue(theDict, ValueAtIndex);
              if (v34 || (v34 = CFDictionaryGetValue(v22, ValueAtIndex)) != 0)
              {
                CFDictionaryAddValue(a3, ValueAtIndex, v34);
                AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Copying manifest property %@ into request. (Via BuildManifest)", v35, v36, v37, v38, v39, ValueAtIndex);
              }

              ++v32;
            }

            while (CFArrayGetCount(v30) > v32);
          }
        }

        if (!CFDictionaryContainsKey(theDict, @"NeRDEpoch"))
        {
          goto LABEL_27;
        }

        v45 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v45, 0);
        if (Mutable)
        {
          CFDictionarySetValue(a3, @"PermitNeRDPivot", Mutable);
LABEL_27:
          AMAuthInstallLog(6, "_AMAuthInstallBundlePopulateManifestProperties", "Finished copying manifest entitlements.", v40, v41, v42, v43, v44, v56);
          goto LABEL_28;
        }

        _AMAuthInstallBundlePopulateManifestProperties_cold_1(0, v46, v47, v48, v49, v50, v51, v52, v56);
      }

      else
      {
        _AMAuthInstallBundlePopulateManifestProperties_cold_2(a1, 0, a3, a4, a5, a6, a7, a8, v56);
      }
    }

    else
    {
      _AMAuthInstallBundlePopulateManifestProperties_cold_3(a1, theDict, a3, a4, a5, a6, a7, a8, v56);
    }
  }

  else
  {
    _AMAuthInstallBundlePopulateManifestProperties_cold_4(0, theDict, a3, a4, a5, a6, a7, a8, v56);
  }

LABEL_28:
  v54 = *MEMORY[0x29EDCA608];

  return AMSupportSafeRelease();
}

__CFString *OUTLINED_FUNCTION_19_0(int a1)
{

  return AMAuthInstallGetLocalizedStatusString(v1, a1);
}

CFComparisonResult OUTLINED_FUNCTION_31(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_32(int a1, int a2, int a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, CFStringRef theString1, uint64_t a25, const void *a26)
{

  return AMAuthInstallBundleCopyBuildIdentityForVariant(v26, a26, theString1, a4);
}

uint64_t AMAuthInstallCryptoCreateDigestForDataType(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3, int a4)
{
  switch(a4)
  {
    case 384:
      return AMAuthInstallCryptoCreateDigestForData_SHA384(a1, a2, a3);
    case 256:
      return AMAuthInstallCryptoCreateDigestForData_SHA256(a1, a2, a3);
    case 1:
      return AMAuthInstallCryptoCreateDigestForData(a1, a2, a3);
  }

  return 1;
}

uint64_t AMAuthInstallHttpUriEscapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    AMAuthInstallHttpUriEscapeString_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v23);
LABEL_10:
    MutableCopy = 0;
    v21 = 1;
    goto LABEL_7;
  }

  if (!a3)
  {
    AMAuthInstallHttpUriEscapeString_cold_2(a1, theString, 0, a4, a5, a6, a7, a8, v23);
    goto LABEL_10;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v17 = off_29EE9AC80;
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
    AMAuthInstallHttpUriEscapeString_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v23);
    v21 = 3;
  }

LABEL_7:
  SafeRelease(MutableCopy);
  return v21;
}

uint64_t AMAuthInstallHttpUriUnescapeString(const __CFAllocator *a1, CFStringRef theString, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!theString)
  {
    AMAuthInstallHttpUriUnescapeString_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v24);
LABEL_11:
    MutableCopy = 0;
    v22 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    AMAuthInstallHttpUriUnescapeString_cold_2(a1, theString, 0, a4, a5, a6, a7, a8, v24);
    goto LABEL_11;
  }

  MutableCopy = CFStringCreateMutableCopy(a1, 0, theString);
  if (MutableCopy)
  {
    v17 = -33;
    v18 = &off_29EE9AE80;
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
    AMAuthInstallHttpUriUnescapeString_cold_1(0, v9, v10, v11, v12, v13, v14, v15, v24);
    v22 = 3;
  }

LABEL_8:
  SafeRelease(MutableCopy);
  return v22;
}

CFArrayRef AMAuthInstallHTTPCopyDefaultTrustedSSLCACerts()
{
  v5[1] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDB8ED8];
  v1 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], kAMAuthInstallHTTPTrustedCACert3, 1020, *MEMORY[0x29EDB8EE8]);
  v5[0] = v1;
  if (v1)
  {
    v2 = CFArrayCreate(v0, v5, 1, MEMORY[0x29EDB9000]);
    v1 = v5[0];
  }

  else
  {
    v2 = 0;
  }

  SafeRelease(v1);
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t _AMAuthInstallLockClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMAuthInstallLockTypeID = result;
  return result;
}

uint64_t AMAuthInstallHttpMessageSendSync(const void *a1, const __CFData *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(8, "AMAuthInstallHttpMessageSendSync", "httpRequest=%@", a4, a5, a6, a7, a8, a1);
  v23 = 10002;
  theData = 0;
  v11 = CFGetAllocator(a1);
  v12 = AMAuthInstallHttpMessageSendSyncNew(v11, a1, &theData, &v23, a3, 60.0);
  if (v12)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpMessageSendSync", "AMAuthInstallHttpMessageSendSyncNew() failed: %d", v13, v14, v15, v16, v17, v12);
  }

  else if (a2)
  {
    Length = CFDataGetLength(a2);
    BytePtr = CFDataGetBytePtr(theData);
    v20 = CFDataGetLength(theData);
    v24.location = 0;
    v24.length = Length;
    CFDataReplaceBytes(a2, v24, BytePtr, v20);
  }

  return v23;
}

uint64_t AMAuthInstallHttpMessageSendSyncNew(CFAllocatorRef allocator, int a2, int a3, int a4, CFDictionaryRef theDict, double a6)
{
  valuePtr = a6;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, theDict);
    if (CFDictionaryContainsKey(MutableCopy, *MEMORY[0x29EDC91D8]))
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains proxy information. Will attempt to use a proxy.", v10, v11, v12, v13, v14, v40);
    }

    Mutable = CFDictionaryContainsKey(MutableCopy, *MEMORY[0x29EDC91E8]);
    if (Mutable)
    {
      AMAuthInstallLog(7, "AMAuthInstallHttpMessageSendSyncNew", "Options dictionary contains trusted server CAs. Will authenticate SSL against CAs.", v18, v19, v20, v21, v22, v40);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    MutableCopy = Mutable;
  }

  if (!MutableCopy)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_3(Mutable, v16, v17, v18, v19, v20, v21, v22, v40);
LABEL_13:
    v39 = 2;
    goto LABEL_10;
  }

  v30 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
  if (!v30)
  {
    AMAuthInstallHttpMessageSendSyncNew_cold_2(0, v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_13;
  }

  CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDC91E0], v30);
  AMSupportHttpSendSync();
  AMAuthInstallHttpMessageSendSyncNew_cold_1(0, v32, v33, v34, v35, v36, v37, v38);
  v39 = 16;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v39;
}

uint64_t AMAuthInstallHttpRequestManagedBaaCertificate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, 0, a2, &cf, a5, a6, a7, a8);
  if (!BaaCertificateData)
  {
    v10 = cf;
    if (cf)
    {
      if (*(a1[2] + 136))
      {
        CFRelease(*(a1[2] + 136));
        *(a1[2] + 136) = 0;
        v10 = cf;
      }

      *(a1[2] + 136) = CFRetain(v10);
    }
  }

  return BaaCertificateData;
}

uint64_t AMAuthInstallHttpCreateBaaCertificateData(void *a1, const __CFDictionary *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v109[3] = *MEMORY[0x29EDCA608];
  theData = 0;
  v105 = 0;
  v103 = -1;
  v101 = 0;
  v102 = 0;
  if (!a1)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_11(0, a2, a3, a4, a5, a6, a7, a8, v93);
LABEL_44:
    v28 = 0;
    v19 = 0;
    v18 = 0;
    v30 = 0;
    v29 = 1;
    goto LABEL_40;
  }

  v9 = a1[2];
  if (!v9)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_10(a1, a2, a3, a4, a5, a6, a7, a8, v93);
    goto LABEL_44;
  }

  v10 = *(v9 + 48);
  if (!v10)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_9(a1, a2, a3, a4, a5, a6, a7, a8, v93);
    goto LABEL_44;
  }

  if (!MEMORY[0x2A1C78558])
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "DeviceIdentityCreateClientCertificateRequest is not available", a4, a5, a6, a7, a8, v93);
    v28 = 0;
    v19 = 0;
    v18 = 0;
    v30 = 0;
    v29 = 13;
    goto LABEL_40;
  }

  v14 = *MEMORY[0x29EDC0FD0];
  v108[0] = *MEMORY[0x29EDC0F70];
  v108[1] = v14;
  v109[0] = v10;
  v109[1] = &unk_2A1EFD010;
  v108[2] = *MEMORY[0x29EDC0FB8];
  v15 = *MEMORY[0x29EDC0F80];
  v107[0] = *MEMORY[0x29EDC0FB0];
  v107[1] = v15;
  v16 = *MEMORY[0x29EDC0F90];
  v107[2] = *MEMORY[0x29EDC0FA0];
  v107[3] = v16;
  v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:v107 count:4];
  v109[2] = v17;
  v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v109 forKeys:v108 count:3];

  v100 = 0;
  v19 = DeviceIdentityCreateClientCertificateRequest();
  v20 = 0;
  v28 = v20;
  if (v20)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "Error creating baa request : %@", v23, v24, v25, v26, v27, v20);
    if (a3)
    {
      *a3 = v28;
    }

    v29 = 6;
  }

  else
  {
    v29 = 1;
  }

  if (!v105)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_8(v20, v21, v22, v23, v24, v25, v26, v27);
LABEL_47:
    v30 = 0;
    goto LABEL_40;
  }

  if (!v19)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_7(v20, v21, v22, v23, v24, v25, v26, v27);
    goto LABEL_47;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"userAgentStringOverride");
    if (Value)
    {
      v32 = Value;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 setValue:v32 forHTTPHeaderField:@"User-Agent"];
      }
    }
  }

  if (AMAuthInstallPreferencesCopyStringValue(0, @"BAAOverrideURL"))
  {
    CFGetAllocator(a1);
    URLFromString = AMSupportCreateURLFromString();
  }

  else
  {
    URLFromString = [v19 URL];
  }

  v30 = URLFromString;
  if (!URLFromString)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_6(0, v34, v35, v36, v37, v38, v39, v40);
    goto LABEL_40;
  }

  v41 = [v19 HTTPMethod];
  Request = CFHTTPMessageCreateRequest(0, v41, v30, *MEMORY[0x29EDB8528]);
  if (!Request)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_5(0, v43, v44, v45, v46, v47, v48, v49);
    v30 = 0;
LABEL_59:
    v29 = 2;
    goto LABEL_40;
  }

  v50 = Request;
  v94 = a4;
  v95 = v28;
  v51 = v18;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v30 = [v19 allHTTPHeaderFields];
  v52 = [(__CFURL *)v30 countByEnumeratingWithState:&v96 objects:v106 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v97;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v97 != v54)
        {
          objc_enumerationMutation(v30);
        }

        v56 = *(*(&v96 + 1) + 8 * i);
        v57 = [(__CFURL *)v30 objectForKeyedSubscript:v56];
        CFHTTPMessageSetHeaderFieldValue(v50, v56, v57);
      }

      v53 = [(__CFURL *)v30 countByEnumeratingWithState:&v96 objects:v106 count:16];
    }

    while (v53);
  }

  v58 = [v19 HTTPBody];
  if (v58)
  {
    CFHTTPMessageSetBody(v50, [v19 HTTPBody]);
  }

  v59 = CFGetAllocator(a1);
  v60 = AMAuthInstallHttpMessageSendSyncNew(v59, v50, &theData, &v103, 0, 60.0);
  v18 = v51;
  if (v60)
  {
    v29 = v60;
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallHttpMessageSendSyncNew returned %d", v63, v64, v65, v66, v67, v60);
    v28 = v95;
    goto LABEL_40;
  }

  v28 = v95;
  if (!theData)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_4(0, v61, v62, v63, v64, v65, v66, v67);
LABEL_53:
    v29 = 16;
    goto LABEL_40;
  }

  if (v103 != 200)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "httpStatus is %d", v63, v64, v65, v66, v67, v103);
    goto LABEL_53;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v74 = AMAuthInstallSupportCreateDecodedPEM(BytePtr, Length, &v102, &v101, v70, v71, v72, v73);
  if (v74)
  {
    AMAuthInstallLog(3, "AMAuthInstallHttpCreateBaaCertificateData", "AMAuthInstallSupportCreateDecodedPEM returned %d", v77, v78, v79, v80, v81, v74);
LABEL_57:
    v29 = 6;
    goto LABEL_40;
  }

  if (!v102)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_3(v74, v75, v76, v77, v78, v79, v80, v81);
    goto LABEL_57;
  }

  if (!v101)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_2(v74, v75, v76, v77, v78, v79, v80, v81);
    goto LABEL_57;
  }

  v82 = CFGetAllocator(a1);
  v83 = CFDataCreate(v82, v102, v101);
  if (!v83)
  {
    AMAuthInstallHttpCreateBaaCertificateData_cold_1(0, v84, v85, v86, v87, v88, v89, v90);
    goto LABEL_59;
  }

  v29 = 0;
  if (v94)
  {
    *v94 = v83;
  }

LABEL_40:
  AMSupportSafeFree();

  v91 = *MEMORY[0x29EDCA608];
  return v29;
}

uint64_t AMAuthInstallHttpRequestAlternateUpdateBaaCertificate(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  BaaCertificateData = AMAuthInstallHttpCreateBaaCertificateData(a1, &unk_2A1EFCFE8, a2, &cf, a5, a6, a7, a8);
  v10 = cf;
  if (BaaCertificateData)
  {
    v11 = 1;
  }

  else
  {
    v11 = cf == 0;
  }

  if (!v11)
  {
    if (*(a1[2] + 144))
    {
      CFRelease(*(a1[2] + 144));
      *(a1[2] + 144) = 0;
      v10 = cf;
    }

    *(a1[2] + 144) = CFRetain(v10);
  }

  return BaaCertificateData;
}