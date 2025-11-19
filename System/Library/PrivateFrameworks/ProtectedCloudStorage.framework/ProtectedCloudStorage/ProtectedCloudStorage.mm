__CFString *PCSServiceItemGetCKKSViewByName(const void *a1)
{
  ViewHintByName = PCSServiceItemGetViewHintByName(a1);
  v2 = ViewHintByName;
  if (ViewHintByName && CFStringHasPrefix(ViewHintByName, @"PCS-"))
  {
    return @"ProtectedCloudStorage";
  }

  return v2;
}

const void *PCSServiceItemGetViewHintByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 48);
  }

  return key;
}

void sub_1B229D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PCSServiceItemsInit_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  PCSServiceItemsInit_localServiceItems = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = CFURLCreateWithFileSystemPath(v0, @"/System/Library/Preferences/ProtectedCloudStorage/Identities", kCFURLPOSIXPathStyle, 1u);
  v9 = 0;
  url = 0;
  v2 = MEMORY[0x1B27444E0](v0, v1, 2, 0);
  do
  {
    while (1)
    {
      v3 = MEMORY[0x1B27444F0](v2, &url, 0);
      if (v3 != 1)
      {
        break;
      }

      v4 = CFURLCopyPathExtension(url);
      if (CFEqual(v4, @"plist"))
      {
        v5 = CFReadStreamCreateWithFile(v0, url);
        if (v5)
        {
          v6 = v5;
          if (CFReadStreamOpen(v5))
          {
            v7 = CFPropertyListCreateWithStream(v0, v6, 0, 0, &v9, 0);
            if (v7)
            {
              v8 = v7;
              __PCSServiceItemsInit_block_invoke_2(v7, v7);
              CFRelease(v8);
            }
          }

          CFRelease(v6);
        }
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  while (v3 != 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

void __PCSServiceItemsInit_block_invoke_2(int a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"ServiceName");
  cf = CFDictionaryGetValue(theDict, @"OldName");
  number = CFDictionaryGetValue(theDict, @"ServiceNumber");
  v4 = CFDictionaryGetValue(theDict, @"ViewHint");
  v5 = CFDictionaryGetValue(theDict, @"KCItemClass");
  v61 = CFDictionaryGetValue(theDict, @"KeyDescription");
  v6 = CFDictionaryGetValue(theDict, @"Classic7");
  v7 = MEMORY[0x1E695E4D0];
  if (v6)
  {
    v59 = CFEqual(v6, *MEMORY[0x1E695E4D0]) != 0;
  }

  else
  {
    v59 = 0;
  }

  v8 = CFDictionaryGetValue(theDict, @"RollIdentity");
  if (v8)
  {
    v60 = CFEqual(v8, *v7) != 0;
  }

  else
  {
    v60 = 0;
  }

  v9 = CFDictionaryGetValue(theDict, @"Manatee");
  if (v9)
  {
    v58 = CFEqual(v9, *v7) != 0;
  }

  else
  {
    v58 = 0;
  }

  v10 = CFDictionaryGetValue(theDict, @"Authorship");
  if (v10)
  {
    v57 = CFEqual(v10, *v7) != 0;
  }

  else
  {
    v57 = 0;
  }

  v11 = CFDictionaryGetValue(theDict, @"Escrow");
  if (v11)
  {
    v12 = CFEqual(v11, *v7) != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = CFDictionaryGetValue(theDict, @"AllowKeyExport");
  if (v13)
  {
    v14 = CFEqual(v13, *v7) != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(theDict, @"AnonymousSharing");
  if (v15)
  {
    v16 = CFEqual(v15, *v7) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(theDict, @"ManateeSharing");
  if (v17)
  {
    v63 = CFEqual(v17, *v7) != 0;
  }

  else
  {
    v63 = 0;
  }

  v55 = CFDictionaryGetValue(theDict, @"RollInterval");
  v18 = CFDictionaryGetValue(theDict, @"AccessGroup");
  v19 = *MEMORY[0x1E695E480];
  PCSServiceItemGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v21 = Instance;
  if (!Instance)
  {
    goto LABEL_79;
  }

  v54 = v14;
  *(Instance + 32) = 0u;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0x3B538000000000;
  *(Instance + 72) = 256;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0;
  *(Instance + 88) = 0;
  *(Instance + 74) = 0;
  *(Instance + 82) = 0;
  if (Value)
  {
    v22 = v12;
    v23 = Value;
    v24 = v4;
    v25 = v5;
    v26 = CFGetTypeID(v23);
    if (v26 == CFStringGetTypeID())
    {
      Copy = CFStringCreateCopy(v19, v23);
    }

    else
    {
      Copy = 0;
    }

    v5 = v25;
    v4 = v24;
    v12 = v22;
  }

  else
  {
    Copy = 0;
  }

  *(v21 + 16) = Copy;
  if (number)
  {
    v28 = v12;
    v29 = v5;
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    *(v21 + 24) = valuePtr;
    v30 = CFGetTypeID(number);
    if (v30 == CFNumberGetTypeID())
    {
      v64 = 0;
      CFNumberGetValue(number, kCFNumberCFIndexType, &v64);
      valuePtr = v64;
      v31 = CFNumberCreate(v19, kCFNumberCFIndexType, &valuePtr);
    }

    else
    {
      v31 = 0;
    }

    v5 = v29;
    v12 = v28;
  }

  else
  {
    v31 = 0;
    *(v21 + 24) = 0;
  }

  *(v21 + 32) = v31;
  if (cf && (v32 = CFGetTypeID(cf), v32 == CFStringGetTypeID()))
  {
    v33 = CFStringCreateCopy(v19, cf);
  }

  else
  {
    v33 = 0;
  }

  *(v21 + 40) = v33;
  if (v4 && (v34 = v4, v35 = CFGetTypeID(v4), v35 == CFStringGetTypeID()))
  {
    v36 = CFStringCreateCopy(v19, v34);
  }

  else
  {
    v36 = 0;
  }

  *(v21 + 48) = v36;
  if (!v5 || (v37 = CFGetTypeID(v5), v37 != CFStringGetTypeID()) || (v38 = CFStringCreateCopy(v19, v5)) == 0)
  {
    v40 = *MEMORY[0x1E697ABE0];
    goto LABEL_53;
  }

  v39 = v38;
  v40 = *MEMORY[0x1E697ABE0];
  if (!CFEqual(v38, *MEMORY[0x1E697ABE0]) && !CFEqual(v39, *MEMORY[0x1E697AC20]))
  {
    CFRelease(v39);
LABEL_53:
    v39 = CFStringCreateCopy(v19, v40);
  }

  *(v21 + 56) = v39;
  *(v21 + 72) = v59;
  *(v21 + 77) = v12;
  *(v21 + 78) = v54;
  *(v21 + 79) = v16;
  if (v55)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v55, kCFNumberSInt32Type, &valuePtr);
    v41 = valuePtr;
  }

  else
  {
    v41 = 0;
  }

  v42 = v60;
  if (v60)
  {
    v43 = 3888000;
  }

  else
  {
    v43 = -99;
  }

  v44 = v41 <= 0;
  if (v41 > 0)
  {
    v42 = 1;
  }

  *(v21 + 73) = v42;
  v45 = 60 * v41;
  if (v44)
  {
    v45 = v43;
  }

  *(v21 + 28) = v45;
  *(v21 + 74) = v58;
  *(v21 + 75) = v63;
  *(v21 + 76) = v58 || v57;
  if (v61 && (v46 = CFGetTypeID(v61), v46 == CFStringGetTypeID()))
  {
    v47 = CFStringCreateCopy(v19, v61);
  }

  else
  {
    v47 = 0;
  }

  *(v21 + 64) = v47;
  if (v58)
  {
    v48 = 4;
  }

  else
  {
    v48 = 0;
  }

  if (v63)
  {
    v48 |= 8u;
  }

  *(v21 + 80) = v48;
  if (v18 && (v49 = CFGetTypeID(v18), v49 == CFStringGetTypeID()))
  {
    v50 = CFStringCreateCopy(v19, v18);
  }

  else
  {
    v50 = 0;
  }

  *(v21 + 88) = v50;
LABEL_79:
  v51 = *(v21 + 16);
  if (v51)
  {
    if (CFEqual(v51, @"Raw") && *(v21 + 32))
    {
      v52 = *(v21 + 16);
      goto LABEL_86;
    }

    v52 = *(v21 + 16);
    if (v52 && *(v21 + 32) && *(v21 + 48))
    {
LABEL_86:
      v53 = CFStringCreateCopy(v19, v52);
      CFDictionaryAddValue(PCSServiceItemsInit_localServiceItems, v53, v21);
      CFRelease(v21);
      v21 = v53;
      if (!v53)
      {
        return;
      }
    }
  }

  CFRelease(v21);
}

uint64_t PCSServiceItemGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSServiceItemGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSServiceItemGetTypeID_sPCSServiceItemGetTypeIDSingleton;
  if (PCSServiceItemGetTypeID_sPCSServiceItemGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSServiceItemGetTypeID_sPCSServiceItemGetTypeIDOnce, block);
  }

  return PCSServiceItemGetTypeID_sPCSServiceItemGetTypeIDSingleton;
}

uint64_t __PCSServiceItemGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t PCSServiceItemTypeIsManatee(void *key)
{
  if (!key)
  {
    goto LABEL_8;
  }

  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, key);
  v2 = v7[3];
  if (v2)
  {
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PCSServiceItemGetByName_block_invoke;
    v5[3] = &unk_1E7B198E0;
    v5[4] = &v6;
    v5[5] = key;
    PCSServiceItemsIterate(v5);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!CFEqual(*(v2 + 16), @"Raw"))
  {
    v3 = *(v2 + 74);
    return v3 & 1;
  }

LABEL_8:
  v3 = 0;
  return v3 & 1;
}

void sub_1B229E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef __PCSCreateExportPEM(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v6 = _PCSCreateBase64(BytePtr, Length, 1);
  v7 = CFStringCreateWithFormat(0, 0, @"-----BEGIN %@-----\n%@-----END %@-----", a1, v6, a1);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

CFStringRef _PCSCreateBase64(uint64_t a1, unint64_t a2, int a3)
{
  if (a3)
  {
    v6 = ((4 * a2 / 3 + 67) >> 6) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = malloc_type_malloc(v6 + 4 * a2 / 3 + 5, 0xE9EB0192uLL);
  v8 = 0;
  if (a2)
  {
    v9 = (a1 + 1);
    v10 = 1;
    do
    {
      v11 = *(v9 - 1) << 8;
      if (v10 < a2)
      {
        v11 |= *v9;
      }

      v12 = (v11 << 8);
      if (v10 + 1 < a2)
      {
        v12 = v12 | v9[1];
      }

      v13 = v10 + 2;
      v14 = &v7[v8];
      *v14 = _PCSCreateBase64_base64_chars[v12 >> 18];
      v14[1] = _PCSCreateBase64_base64_chars[(v12 >> 12) & 0x3F];
      if (v10 + 2 <= a2 + 1)
      {
        v15 = _PCSCreateBase64_base64_chars[(v12 >> 6) & 0x3F];
      }

      else
      {
        v15 = 61;
      }

      v7[v8 + 2] = v15;
      if (v13 <= a2)
      {
        v16 = _PCSCreateBase64_base64_chars[v12 & 0x3F];
      }

      else
      {
        v16 = 61;
      }

      v7[v8 + 3] = v16;
      v17 = v8 + 4;
      v18 = v13 & 0xF;
      if (v18 || !a3)
      {
        v8 += 4;
      }

      else
      {
        v8 += 5;
        v7[v17] = 10;
      }

      v9 += 3;
      v19 = v10 + 2;
      v10 += 3;
    }

    while (v19 < a2);
    if (v18 && a3)
    {
      v7[v8++] = 10;
    }
  }

  v7[v8] = 0;
  v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v7, 0x600u);
  free(v7);
  return v20;
}

void PCSIdentitySetEnumeratePublicKeys(uint64_t a1, void *a2)
{
  v3 = a2;
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    (*(*(a1 + 16) + 96))(a1, v3);
  }
}

uint64_t PCSCurrentPersonaMatchesDSIDFromSet(uint64_t a1)
{
  v2 = _PCSIdentitySetCopyPersonaIdentifier(a1);
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = [v3 currentPersona];

  v5 = [v4 userPersonaUniqueString];
  v6 = v5;
  if (!v2 || !v5 || ([v2 isEqualToString:v5] & 1) == 0)
  {
    DSID = _PCSIdentitySetGetDSID(a1);
    if (!PCSCurrentPersonaMatchesDSID(DSID))
    {
      v8 = 0;
      goto LABEL_8;
    }

    _PCSIdentitySetSetPersonaIdentifier(a1, v6);
  }

  v8 = 1;
LABEL_8:

  return v8;
}

void KeychainEnumeratePublicKeys(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E695E4D0];
  v22 = *MEMORY[0x1E697B268];
  v23 = *MEMORY[0x1E697B310];
  v21 = *MEMORY[0x1E697B260];
  v20 = *MEMORY[0x1E697AE70];
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(v3, v5, v6, v7, v8, v9, v10, v11, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B018]);
  v13 = MutableForCFTypesWith;
  v14 = *(a1 + 40);
  if (v14)
  {
    CFDictionarySetValue(MutableForCFTypesWith, *MEMORY[0x1E697AE80], v14);
  }

  if (PCSUseSyncKeychain == 1)
  {
    CFDictionarySetValue(v13, *MEMORY[0x1E697AEB0], v4);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __KeychainEnumeratePublicKeys_block_invoke;
  v24[3] = &unk_1E7B192D0;
  v26 = v13;
  v15 = v3;
  v25 = v15;
  v16 = MEMORY[0x1B2745320](v24);
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 == CFStringGetTypeID())
    {
      IndexByName = PCSServiceItemGetIndexByName(*(a1 + 32));
      (v16)[2](v16, IndexByName);
      v16[2](v16, IndexByName | 0x10000);
      v16[2](v16, IndexByName | 0x20000);
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v16[2](v16, 0);
  if (v13)
  {
LABEL_10:
    CFRelease(v13);
  }

LABEL_11:
}

__CFDictionary *CFDictionaryCreateMutableForCFTypesWith(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      CFDictionarySetValue(Mutable, v11, *v14);
      v12 = v14 + 1;
      v14 += 2;
      v11 = *v12;
    }

    while (*v12);
  }

  return Mutable;
}

const __CFNumber *PCSServiceItemGetIndexByName(const __CFNumber *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    key = *(v2 + 32);
    if (key)
    {
      LODWORD(v3[0]) = 0;
      CFNumberGetValue(key, kCFNumberSInt32Type, v3);
      return LODWORD(v3[0]);
    }
  }

  return key;
}

void sub_1B229E7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __KeychainEnumeratePublicKeys_block_invoke(uint64_t a1, int a2)
{
  valuePtr = a2;
  cf = 0;
  v3 = MEMORY[0x1E697AEF8];
  if (a2)
  {
    v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*(a1 + 40), *v3, v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  _PCSKeychainForwardTable(*(a1 + 40), &cf);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v5;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      v7 = cf;
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __KeychainEnumeratePublicKeys_block_invoke_2;
      context[3] = &unk_1E7B192A8;
      v10 = *(a1 + 32);
      v13.length = CFArrayGetCount(v7);
      v13.location = 0;
      CFArrayApplyFunction(v7, v13, apply_block_1_1, context);
    }

    v8 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v8);
    }
  }

  CFDictionaryRemoveValue(*(a1 + 40), *v3);
}

uint64_t PCSMeasureRelativeNanoTime()
{
  v0 = mach_absolute_time();
  v1 = PCSMeasureRelativeNanoTime_factor;
  if (!PCSMeasureRelativeNanoTime_factor)
  {
    info = 0;
    mach_timebase_info(&info);
    v1 = info.numer / info.denom;
    PCSMeasureRelativeNanoTime_factor = v1;
  }

  return v1 * v0;
}

const void *__KeychainEnumeratePublicKeys_block_invoke_2(uint64_t a1, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, *MEMORY[0x1E697AC30]);
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 == result)
    {
      v5 = *(*(a1 + 32) + 16);

      return v5();
    }
  }

  return result;
}

void PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync(const void *a1, void *a2, const void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1 && a3)
  {
    if (PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_once != -1)
    {
      PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_cold_1();
    }

    CFRetain(a1);
    CFRetain(a3);
    v9 = PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_2;
    block[3] = &unk_1E7B18F20;
    v15 = a1;
    v16 = a3;
    v13 = v7;
    v14 = v8;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v9, v10);
  }

  else
  {
    v17 = 0;
    _PCSError(&v17, 27, @"identities and data required");
    (*(v8 + 2))(v8, 0, v17);
    v11 = v17;
    if (v17)
    {
      v17 = 0;
      CFRelease(v11);
    }
  }
}

uint64_t _PCSIdentitySetCopyPersonaIdentifier(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PCSIdentitySetCopyPersonaIdentifier_block_invoke;
  v4[3] = &unk_1E7B191A0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __KeychainCopyCurrentIdentity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __KeychainCopyCurrentIdentity_block_invoke_2;
  block[3] = &unk_1E7B19258;
  v14 = v5;
  v15 = v6;
  v8 = *(a1 + 72);
  v17 = *(a1 + 56);
  v18 = v8;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v7, block);
}

intptr_t __KeychainCopyCurrentIdentity_block_invoke_2(intptr_t result)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = [*(result + 32) persistentRef];
    if (!v2 || (v3 = *(v1 + 40), v2, v3))
    {
      v4 = *(v1 + 40);
      if (v4)
      {
        *(*(*(v1 + 64) + 8) + 24) = v4;
      }

      v5 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 80);
        v7 = *(v1 + 40);
        *buf = 138543618;
        v18 = v6;
        v19 = 2114;
        v20 = v7;
        _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get CKKS current service %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v8 = [*(v1 + 32) persistentRef];

    if (v8)
    {
      v9 = [*(v1 + 32) persistentRef];
      SHA1 = PCSIdentityCreateFromPersistentReferenceAndGetSHA1(v9, *(*(v1 + 88) + 40), 0);

      if (SHA1)
      {
        if (_PCSIdentityHavePCSCKKSAttributes(SHA1))
        {
          v11 = [PCSCurrentIdentity alloc];
          v12 = [*(v1 + 32) currentItemPointerModificationTime];
          v13 = [(PCSCurrentIdentity *)v11 initWithIdentity:SHA1 currentItemPointerModificationTime:v12];
          v14 = *(*(v1 + 72) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;
        }

        else
        {
          _PCSError((*(*(v1 + 64) + 8) + 24), 106, @"Identity missing CKKS attributes: %@", SHA1);
        }

        CFRelease(SHA1);
      }
    }

    result = dispatch_semaphore_signal(*(v1 + 48));
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef KeychainCopyIdentity(uint64_t a1, uint64_t a2, CFErrorRef *a3, int a4, int a5, int a6, int a7, int a8)
{
  v51 = 0;
  v11 = *MEMORY[0x1E697B018];
  v12 = *MEMORY[0x1E697AE70];
  v13 = *MEMORY[0x1E697AC30];
  v14 = *MEMORY[0x1E695E4D0];
  v49 = *MEMORY[0x1E695E4D0];
  v50 = *MEMORY[0x1E697B310];
  v47 = *MEMORY[0x1E697B268];
  v48 = *MEMORY[0x1E697B318];
  v46 = *MEMORY[0x1E697B260];
  v15 = OUTLINED_FUNCTION_2_1(a1, a2, a3, a4, a5, a6, a7, a8, *MEMORY[0x1E697AFF8], v41, v42, v43, v44, v45);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = *(a1 + 40);
  if (v17)
  {
    CFDictionarySetValue(v15, *MEMORY[0x1E697AE80], v17);
  }

  OUTLINED_FUNCTION_0_4(&PCSUseSyncKeychain);
  if (v18)
  {
    CFDictionarySetValue(v16, *MEMORY[0x1E697AEB0], v14);
  }

  v19 = PCSMeasureRelativeNanoTime();
  ++qword_1ED6F2630;
  v20 = _PCSKeychainForwardTable(v16, &v51);
  qword_1ED6F2638 += PCSMeasureRelativeNanoTime() - v19;
  if (v20)
  {
    PCSSecError(v20, a3, @"Failed to find identity %@ in keychain: %d", a2, v20);
  }

  else if (v51)
  {
    v21 = CFGetTypeID(v51);
    if (v21 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v51);
      if (Count >= 1)
      {
        v23 = Count;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = *MEMORY[0x1E697B3C0];
        v28 = *MEMORY[0x1E697AEA8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v51, v26);
          Value = CFDictionaryGetValue(ValueAtIndex, v27);
          if (Value)
          {
            v31 = CFGetTypeID(Value);
            if (v31 == CFDataGetTypeID())
            {
              v32 = CFDictionaryGetValue(ValueAtIndex, v28);
              v33 = IsViewHintPreferred(v32);
              if (v24)
              {
                v34 = v24;
              }

              else
              {
                v34 = ValueAtIndex;
              }

              if (v33)
              {
                v25 = ValueAtIndex;
              }

              else
              {
                v24 = v34;
              }
            }
          }

          ++v26;
        }

        while (v23 != v26);
        if (v25 || (v25 = v24) != 0)
        {
          v35 = PCSIdentityCreateWithKeychainAttributes(v25);
          UpdateCKKSIdentity(v35, v25);
          if (v35 && ((v36 = *(a1 + 32)) == 0 || (IndexByName = PCSServiceItemGetIndexByName(v36), IndexByName == PCSIdentityGetServiceID(v35))))
          {
            v38 = CFRetain(v35);
          }

          else
          {
            v38 = 0;
          }

          goto LABEL_31;
        }
      }
    }
  }

  v38 = 0;
  v35 = 0;
LABEL_31:
  CFRelease(v16);
  v39 = v51;
  if (v51)
  {
    v51 = 0;
    CFRelease(v39);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v38;
}

uint64_t PCSIdentityGetServiceID(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

void PCSKeyDestroy(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    free(*(a1 + 40));
    *(a1 + 40) = 0;
    v3 = (a1 + 48);
LABEL_6:
    v2 = *v3;
    goto LABEL_7;
  }

  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v4 = **v2;
    cc_clear();
    goto LABEL_6;
  }

LABEL_7:
  free(v2);
  *v3 = 0;
LABEL_8:
  v5 = *(a1 + 16);
  if (v5)
  {
    free_PCSPublicKeyInfo(v5);
    free(*(a1 + 16));
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 24) = 0;

    CFRelease(v6);
  }
}

void __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_2(uint64_t a1)
{
  v16 = 0;
  v2 = PCSIdentitySetCopyService(*(a1 + 48));
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = CreateWithExportedInternal(*(a1 + 56), *(a1 + 48), 0, 0, 0, 0, v3, &v16);
  if (!v4)
  {
    if ([v3 count])
    {
      v6 = v2 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *(a1 + 32);
      if (_os_feature_enabled_impl())
      {
        v8 = [v7 objectForKeyedSubscript:kPCSFPAllowFetch];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 BOOLValue];

          if (v9)
          {
            v10 = atomic_load(initialSyncComplete);
            if ((v10 & 1) == 0)
            {
              v12[0] = MEMORY[0x1E69E9820];
              v12[1] = 3221225472;
              v12[2] = __PCSObjectCreateFromExportedWithIdentitiesAndOptionsAsync_block_invoke_3;
              v12[3] = &unk_1E7B18EF8;
              v13 = *(a1 + 40);
              v14 = v16;
              v15 = *(a1 + 48);
              _PCSCKKSOutOfBandFetchIdentities(v3, v2, 0, v12);

              goto LABEL_18;
            }
          }

          goto LABEL_14;
        }
      }
    }

LABEL_14:
    (*(*(a1 + 40) + 16))();
    goto LABEL_15;
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
  CFRelease(v5);
LABEL_15:
  v11 = v16;
  if (v16)
  {
    v16 = 0;
    CFRelease(v11);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 56));
LABEL_18:
}

uint64_t PCSIdentitySetCopyService(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRetain(*(a1 + 32));
  }

  return v1;
}

CFTypeRef CreateWithExportedInternal(uint64_t a1, uint64_t a2, void *a3, int a4, char a5, void *a6, void *a7, const void **a8)
{
  v128 = a6;
  v129 = a7;
  v142 = 0;
  v143[0] = 0;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0;
  v143[1] = 0;
  v144 = 0;
  if (!a1)
  {
    goto LABEL_179;
  }

  v13 = CFGetTypeID(a1);
  if (v13 != CFDataGetTypeID() || CFDataGetLength(a1) < 1)
  {
    a1 = 0;
LABEL_179:
    v63 = 0;
    v61 = 0;
    Mutable = 0;
LABEL_191:
    v118 = 0;
    goto LABEL_151;
  }

  if (*CFDataGetBytePtr(a1) != 255)
  {
    goto LABEL_5;
  }

  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  Empty = __PCSShareProtectionCreateEmpty(a8);
  v152[3] = Empty;
  if (!Empty || CFDataGetLength(a1) < 4 || (BytePtr = CFDataGetBytePtr(a1), *BytePtr != 255))
  {
LABEL_194:
    v22 = 0;
    goto LABEL_195;
  }

  if (!a2)
  {
    Length = CFDataGetLength(a1);
    v120 = CFDataGetBytePtr(a1);
    v121 = CFDataCreate(0, &v120[Length - 2], 2);
    v122 = v152;
    *(v152[3] + 80) = v121;
    v23 = v122[3];
    if (*(v23 + 80))
    {
      v22 = 0;
      goto LABEL_161;
    }

    _PCSErrorOOM(a8);
    goto LABEL_194;
  }

  v22 = PCSIdentitySetCopyIdentities(a2, 0);
  *&context = MEMORY[0x1E69E9820];
  *(&context + 1) = 3221225472;
  *&v134 = __CreateLightObject_block_invoke;
  *(&v134 + 1) = &unk_1E7B19020;
  *&v135 = &v151;
  *(&v135 + 1) = a1;
  *&v136 = BytePtr;
  CFDictionaryApplyFunction(v22, apply_block_2_1, &context);
  v23 = v152[3];
  if (*(v23 + 72))
  {
    *(v23 + 208) = 1;
LABEL_161:
    *(v23 + 204) = 0;
    v118 = CFRetain(v23);
    goto LABEL_162;
  }

  noMatchingIdentity(a2, 0, a8);
LABEL_195:
  v118 = 0;
LABEL_162:
  v123 = v152[3];
  if (v123)
  {
    v152[3] = 0;
    CFRelease(v123);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  _Block_object_dispose(&v151, 8);
  if (v118)
  {
    goto LABEL_167;
  }

LABEL_5:
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _PCSErrorOOM(a8);
LABEL_182:
    a1 = 0;
    goto LABEL_190;
  }

  v15 = CFDataGetBytePtr(a1);
  v16 = CFDataGetLength(a1);
  v17 = decode_PCSShareProtection(v15, v16, &v145, &v142);
  if (v17)
  {
    _PCSErrorASN1(a8, "decode PCSShareProtection", v17);
    goto LABEL_182;
  }

  v18 = __PCSShareProtectionCreateEmpty(0);
  a1 = v18;
  if (!v18)
  {
    goto LABEL_190;
  }

  theArray = Mutable;
  if (*(&v147 + 1))
  {
    if (**(&v147 + 1) == 4)
    {
      v19 = 3;
    }

    else
    {
      if (**(&v147 + 1) != 5)
      {
        goto LABEL_21;
      }

      v19 = 2;
    }
  }

  else
  {
    v19 = 1;
  }

  *(v18 + 51) = v19;
LABEL_21:
  v125 = a5;
  v126 = a3;
  if (DWORD2(v145))
  {
    v24 = 0;
    v25 = 0;
    bytesDeallocator = *MEMORY[0x1E695E498];
    do
    {
      v26 = v146;
      v27 = (v146 + v24);
      v28 = *(v146 + v24 + 48);
      if (v28)
      {
        v29 = *v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = _PCSPublicIdentityCreateWithPCSSPKey((v146 + v24), a8);
      *&context = 0;
      *(&context + 1) = &context;
      v134 = 0x2020000000uLL;
      v151 = 0;
      v152 = &v151;
      v153 = 0x2020000000;
      v154 = 0;
      if (!v30)
      {
        goto LABEL_173;
      }

      v31 = v30;
      CFArrayAppendValue(theArray, v30);
      v32 = ShareEntryCreate(v31, v29);
      PublicID = PCSPublicIdentityGetPublicID(v31);
      CFDictionarySetValue(*(a1 + 40), PublicID, v32);
      if (v32)
      {
        CFRelease(v32);
      }

      if (a2 && !*(a1 + 72))
      {
        if ((*v27 - 7) < 2 || (_PCSPublicIdentityIsDiversified(v31) | ((v29 & 4) >> 2)) == 1)
        {
          v40 = PCSIdentitySetCopyIdentities(a2, 0);
          v41 = v40;
          if (!v40)
          {
            _PCSError(a8, 27, @"diversified keys needs a non empty set");
LABEL_173:
            _Block_object_dispose(&v151, 8);
            _Block_object_dispose(&context, 8);
LABEL_174:
            v63 = 0;
            v61 = 0;
            goto LABEL_175;
          }

          v140[0] = MEMORY[0x1E69E9820];
          v140[1] = 3221225472;
          v140[2] = __CreateWithExportedInternal_block_invoke;
          v140[3] = &unk_1E7B18FF8;
          v140[4] = &context;
          v140[5] = &v151;
          v140[6] = v26 + v24;
          v141 = v29;
          v140[7] = a1;
          v140[8] = PublicID;
          CFDictionaryApplyFunction(v40, apply_block_2_1, v140);
          CFRelease(v41);
        }

        else
        {
          v55 = PCSIdentitySetCopyIdentity(a2, PublicID);
          v152[3] = v55;
          if (v129 && !v55)
          {
            v55 = PCSCacheCopyIdentity(PublicID);
            v152[3] = v55;
          }

          if (v55)
          {
            v56 = CFDataCreateWithBytesNoCopy(0, *(v26 + v24 + 40), *(v26 + v24 + 32), bytesDeallocator);
            v57 = _PCSIdentityCopyUnwappedKey(v152[3], v56, a8);
            *(*(&context + 1) + 24) = v57;
            if (v56)
            {
              CFRelease(v56);
            }
          }

          else if (v129)
          {
            [v129 addObject:PublicID];
          }
        }
      }

      v42 = *(*(&context + 1) + 24);
      if (v42)
      {
        v43 = *(a1 + 204);
        if (v43 != 3 || (v29 & 1) != 0)
        {
          if (v43 == 3)
          {
            *(a1 + 209) = 1;
            *(a1 + 72) = v42;
          }

          else
          {
            *(a1 + 72) = v42;
            generateObjectKey(a1, v42, 0);
          }
        }

        else
        {
          generateOtherKeysFromRWMasterKey(a1, v42, v34, v35, v36, v37, v38, v39);
          CFRelease(*(*(&context + 1) + 24));
        }

        v44 = *(a1 + 176);
        if (v44)
        {
          *(a1 + 176) = 0;
          CFRelease(v44);
        }

        *(a1 + 176) = CFRetain(v152[3]);
        v45 = *(a1 + 184);
        if (v45)
        {
          *(a1 + 184) = 0;
          CFRelease(v45);
        }

        SigningIdentity = _PCSIdentityGetSigningIdentity(v152[3]);
        v47 = SigningIdentity;
        if (SigningIdentity)
        {
          CFRetain(SigningIdentity);
        }

        *(a1 + 184) = v47;
        v48 = *(a1 + 144);
        if (v48)
        {
          *(a1 + 144) = 0;
          CFRelease(v48);
        }

        v49 = PCSIdentityCopyPublicIdentity(v152[3]);
        *(a1 + 144) = v49;
        if (!v49)
        {
          _PCSErrorOOM(a8);
          goto LABEL_173;
        }

        ServiceID = a4;
        if (!a4)
        {
          ServiceID = PCSIdentityGetServiceID(*(a1 + 176));
        }

        *(a1 + 200) = ServiceID;
        ServiceName = PCSIdentityGetServiceName(v152[3]);
        v52 = _PCSIdentitySetCopyCurrentIdentityInternal(a2, ServiceName, 0);
        v53 = v52;
        if (v52)
        {
          if (!CFEqual(v52, v152[3]))
          {
            *(a1 + 211) = 1;
            PCSIdentitySetRepairCurrentIdentity(a2, ServiceName, v53, 0);
          }

          CFRelease(v53);
        }

        if ((v29 & 2) != 0)
        {
          *(a1 + 213) = 1;
        }
      }

      v54 = v152[3];
      if (v54)
      {
        v152[3] = 0;
        CFRelease(v54);
      }

      CFRelease(v31);
      _Block_object_dispose(&v151, 8);
      _Block_object_dispose(&context, 8);
      ++v25;
      v24 += 56;
    }

    while (v25 < DWORD2(v145));
  }

  v58 = *(a1 + 72);
  if (a2 && !v58)
  {
    noMatchingIdentity(a2, a1, a8);
    goto LABEL_174;
  }

  Mutable = theArray;
  if (!v58)
  {
    if (!v149 || (v64 = CFDataCreate(0, *(v149 + 8), *v149), (*(a1 + 80) = v64) != 0))
    {
      if (*(&v147 + 1))
      {
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        context = 0u;
        v65 = decode_PCSObjectSignature(*(*(&v147 + 1) + 24), *(*(&v147 + 1) + 16), &context, 0);
        if (v65)
        {
          _PCSErrorASN1(a8, "decode PCSObjectSignature", v65);
          goto LABEL_174;
        }

        *(a1 + 48) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v66 = v139;
        if (v139)
        {
          v67 = 0;
          v68 = -1;
          do
          {
            if (++v68 >= *v66)
            {
              break;
            }

            v69 = *(v66 + 1);
            if (*(v69 + v67) != 3)
            {
              goto LABEL_174;
            }

            v70 = CFDataCreate(0, *(v69 + v67 + 24), *(v69 + v67 + 16));
            if (!v70)
            {
              goto LABEL_176;
            }

            v71 = v70;
            v72 = PCSPublicIdentityCreateFromKeyData();
            CFRelease(v71);
            if (!v72)
            {
              goto LABEL_177;
            }

            v67 += 32;
            CFArrayAppendValue(*(a1 + 48), v72);
            CFRelease(v72);
            v66 = v139;
          }

          while (v139);
        }

        if (*(&v139 + 1))
        {
          if (copy_PCSAttributes())
          {
LABEL_176:
            _PCSErrorOOM(a8);
LABEL_177:
            free_PCSObjectSignature(&context);
            goto LABEL_174;
          }

          v73 = *(&v139 + 1);
          v74 = **(&v139 + 1);
          if (v74)
          {
            for (i = 0; i < v74; ++i)
            {
              v76 = *(v73 + 8) + 24 * i;
              if (*v76 == 5)
              {
                v151 = 0;
                v152 = 0;
                if (decode_PCSMasterKeyIDs(*(v76 + 16), *(v76 + 8), &v151, 0))
                {
                  goto LABEL_176;
                }

                if (v151)
                {
                  v77 = 0;
                  v78 = 0;
                  do
                  {
                    v79 = CFDataCreate(0, v152[v77 + 1], v152[v77]);
                    CFDictionaryAddValue(*(a1 + 112), v79, v79);
                    if (v79)
                    {
                      CFRelease(v79);
                    }

                    ++v78;
                    v77 += 2;
                  }

                  while (v78 < v151);
                }

                free_PCSMasterKeyIDs(&v151);
                v73 = *(&v139 + 1);
                v74 = **(&v139 + 1);
              }
            }
          }
        }

        free_PCSObjectSignature(&context);
      }

      v63 = 0;
      v61 = 0;
      goto LABEL_129;
    }

    _PCSErrorOOM(a8);
    goto LABEL_190;
  }

  *&context = 0;
  v59 = length_PCSSignedShareProtection(&v145);
  v60 = CFDataCreateMutable(0, v59);
  if (!v60)
  {
LABEL_190:
    v63 = 0;
    v61 = 0;
    goto LABEL_191;
  }

  v61 = v60;
  CFDataSetLength(v60, v59);
  MutableBytePtr = CFDataGetMutableBytePtr(v61);
  if (encode_PCSSignedShareProtection(&MutableBytePtr[v59 - 1], v59, &v145, &context))
  {
    CFRelease(v61);
    goto LABEL_190;
  }

  if (v59 != context)
  {
    asn1_abort();
LABEL_197:
    abort();
  }

  if (v147)
  {
    v63 = CFDataCreateWithBytesNoCopy(0, *(v147 + 8), *v147, *MEMORY[0x1E695E498]);
  }

  else
  {
    v63 = 0;
  }

  KeyIDFromKey = CreateKeyIDFromKey(*(a1 + 72));
  *(a1 + 80) = KeyIDFromKey;
  if (!KeyIDFromKey)
  {
    goto LABEL_175;
  }

  if (v147)
  {
    v81 = PCSFPCopyDecryptedData(a1, 0, 0, v63, a8);
    if (!v81)
    {
      goto LABEL_175;
    }

    v82 = v81;
    v83 = CFDataGetBytePtr(v81);
    v84 = CFDataGetLength(v82);
    v85 = decode_PCSEncryptedKeys(v83, v84, v143, &v142);
    CFRelease(v82);
    if (v85)
    {
      _PCSErrorASN1(a8, "decode PCSEncryptedKeys", v85);
      goto LABEL_175;
    }

    v86 = v144;
    if (v144 && *v144)
    {
      v87 = 0;
      v88 = 0;
      v89 = *MEMORY[0x1E695E498];
      do
      {
        v90 = CFDataCreateWithBytesNoCopy(0, *(*(v86 + 1) + v87 + 24), *(*(v86 + 1) + v87 + 16), v89);
        v91 = PCSIdentityCreateFromData(v90, 0);
        if (v90)
        {
          CFRelease(v90);
        }

        if (!v91)
        {
          goto LABEL_175;
        }

        PCSIdentitySetAddIdentity(*(a1 + 16), v91);
        CFRelease(v91);
        ++v88;
        v86 = v144;
        v87 += 32;
      }

      while (v88 < *v144);
    }

    v92 = v143[0];
    if (v143[0] && *v143[0])
    {
      v93 = 0;
      v94 = 0;
      do
      {
        v95 = CFDataCreate(0, *(*(v92 + 8) + v93 + 8), *(*(v92 + 8) + v93));
        v96 = CreateKeyIDFromKey(v95);
        if (!v96)
        {
          if (v95)
          {
            CFRelease(v95);
          }

          goto LABEL_175;
        }

        v97 = v96;
        CFDictionarySetValue(*(a1 + 112), v96, v95);
        CFRelease(v97);
        if (v95)
        {
          CFRelease(v95);
        }

        ++v94;
        v92 = v143[0];
        v93 += 16;
      }

      while (v94 < *v143[0]);
    }
  }

  if ((*(a1 + 204) & 0xFFFFFFFE) == 2)
  {
    v98 = (*(&v147 + 1) + 16);
  }

  else
  {
    v98 = 0;
  }

  Mutable = theArray;
  if (!ValidateSignature(a1, v61, v63, &v148, v98, theArray, *(&v149 + 1), *(&v146 + 1), v150, v125 ^ 1u, v126, v128, a8))
  {
    goto LABEL_191;
  }

  *(a1 + 208) = 1;
LABEL_129:
  v99 = *(a1 + 128);
  if (!v99)
  {
LABEL_150:
    v110 = CFRetain(a1);
    v118 = v110;
    Mutable = theArray;
    if (*(v110 + 54) != 1192348414)
    {
      CreateWithExportedInternal_cold_1(v110, v111, v112, v113, v114, v115, v116, v117);
    }

    goto LABEL_151;
  }

  v100 = 0;
  v101 = 0;
  while (1)
  {
    v102 = *(a1 + 136);
    if (*(v102 + v100) != 4)
    {
      goto LABEL_144;
    }

    v103 = v102 + v100;
    context = 0u;
    v134 = 0u;
    v151 = 0;
    v104 = decode_PCSObjectChaining(*(v102 + v100 + 16), *(v102 + v100 + 8), &context, &v151);
    if (v104)
    {
      break;
    }

    if (v151 != *(v103 + 8))
    {
      goto LABEL_197;
    }

    if (v134 && *v134)
    {
      v105 = *(a1 + 204) <= 2u ? 72 : 64;
      v106 = *(a1 + v105);
      if (v106)
      {
        v108 = ProcessChainKeys(v106, v134, a8);
        *(a1 + 24) = v108;
        if (!v108)
        {
          goto LABEL_171;
        }
      }
    }

    if (*(&v134 + 1))
    {
      if (**(&v134 + 1))
      {
        v107 = *(a1 + 72);
        if (v107)
        {
          v109 = ProcessChainKeys(v107, *(&v134 + 1), a8);
          *(a1 + 32) = v109;
          if (!v109)
          {
            goto LABEL_171;
          }
        }
      }
    }

    free_PCSObjectChaining(&context);
    v99 = *(a1 + 128);
LABEL_144:
    ++v101;
    v100 += 24;
    if (v101 >= v99)
    {
      goto LABEL_150;
    }
  }

  _PCSErrorASN1(a8, "decode PCSObjectChaining", v104);
LABEL_171:
  free_PCSObjectChaining(&context);
LABEL_175:
  v118 = 0;
  Mutable = theArray;
LABEL_151:
  free_PCSEncryptedKeys(v143);
  free_PCSShareProtection(&v145);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  if (a1)
  {
    CFRelease(a1);
  }

LABEL_167:

  return v118;
}

void sub_1B22A0318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 136), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PCSIdentitySetCopyIdentityWithError(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(*(a1 + 16) + 8);

    return v6(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

BOOL OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3, const __CFNumber *a4)
{

  return addNamedServiceToSet(v4, v5, v6, a4);
}

void *OUTLINED_FUNCTION_0_7(void *result)
{
  *(v1 - 137) = 0;
  v2 = (*result + 15) & 0xFFFFFFFFFFFFFFF0;
  return result;
}

uint64_t IsViewHintPreferred(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, *MEMORY[0x1E697AF08]))
    {
      return 1;
    }

    if (CFEqual(v1, *MEMORY[0x1E697AF18]))
    {
      return 1;
    }

    if (CFEqual(v1, *MEMORY[0x1E697AF28]))
    {
      return 1;
    }

    if (CFEqual(v1, *MEMORY[0x1E697AF00]))
    {
      return 1;
    }

    result = CFEqual(v1, *MEMORY[0x1E697AF20]);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t PCSIdentityCreateFromPersistentReferenceAndGetSHA1(void *a1, void *a2, void *a3)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  cf = 0;
  v27 = 0;
  v7 = *MEMORY[0x1E697B318];
  v33[0] = *MEMORY[0x1E697B310];
  v33[1] = v7;
  v34[0] = MEMORY[0x1E695E118];
  v34[1] = MEMORY[0x1E695E118];
  v33[2] = *MEMORY[0x1E697B3C8];
  v34[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v9 = v8;
  if (a3)
  {
    *a3 = 0;
  }

  v10 = _PCSKeychainForwardTable(v8, &v27);
  if (!v10)
  {
    v13 = v27;
    if (a3)
    {
      *a3 = [v27 objectForKeyedSubscript:*MEMORY[0x1E697AE68]];
    }

    if (v6)
    {
      v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E697AE80]];
      v15 = [v14 isEqualToString:v6];

      if ((v15 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = MEMORY[0x1E69E9C10];
          v19 = "invalid identity: incorrect dsid";
          goto LABEL_22;
        }

LABEL_23:
        v12 = 0;
LABEL_24:

        goto LABEL_25;
      }
    }

    v16 = [v13 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    v17 = [v16 isEqualToString:kPCSAccount[0]];

    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "invalid identity: incorrect acct";
LABEL_22:
        _os_log_impl(&dword_1B229C000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v20 = [v13 objectForKeyedSubscript:*MEMORY[0x1E697AE70]];
    v21 = [v20 isEqualToString:kPCSServiceName[0]];

    if ((v21 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = MEMORY[0x1E69E9C10];
        v19 = "invalid identity: incorrect sdmn";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v22 = [v13 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = PCSIdentityCreateWithKeychainAttributes(v13);
      if (v23)
      {
        v12 = v23;
        _PCSIdentitySetPersistentReference(v23, v5);
        _PCSIdentityCheckPCSAttributes(v12, v13);
LABEL_33:

        goto LABEL_24;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = v5;
        v31 = 2112;
        v32 = cf;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to parse identity item: %@: %@", buf, 0x16u);
      }

      v26 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v26);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "invalid identity: no data", buf, 2u);
    }

    v12 = 0;
    goto LABEL_33;
  }

  v11 = v10;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v5;
    v31 = 1024;
    LODWORD(v32) = v11;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to fetch item: %@: %d", buf, 0x12u);
  }

  v12 = 0;
LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

void *PCSIdentityCreateWithKeychainAttributes(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B3C0]);
  if (!Value)
  {
    return 0;
  }

  v3 = CFGetTypeID(Value);
  if (v3 != CFDataGetTypeID())
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_8();
  v6 = PCSIdentityCreateWithExportedPrivateKey(v4, v5);
  if (v6)
  {
    v7 = CFDictionaryGetValue(a1, *MEMORY[0x1E697AEF8]);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v8, kCFNumberIntType, &valuePtr))
        {
          if ((valuePtr & 0x10000) != 0)
          {
            v10 = MEMORY[0x1E695E4D0];
          }

          else
          {
            v10 = MEMORY[0x1E695E4C0];
          }

          v6[11] = *v10;
        }
      }
    }
  }

  return v6;
}

const void *PCSIdentityCreateWithExportedPrivateKey(const __CFData *a1, const void **a2)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = decode_PCSPrivateKeyV2(BytePtr, Length, &v27, &v26);
  if (v6)
  {
    _PCSErrorASN1(a2, "decode PCSPrivateKeyV2", v6);
    return 0;
  }

  if (v27 == 2)
  {
    v7 = [PCSManateeShareableIdentity alloc];
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:*(&v27 + 1)];
    v9 = [(PCSManateeShareableIdentity *)v7 initWithData:v8];

    if (v9)
    {
      if (-[PCSManateeShareableIdentity hasEncryptionPrivateKey](v9, "hasEncryptionPrivateKey") && (-[PCSManateeShareableIdentity encryptionPrivateKey](v9, "encryptionPrivateKey"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 hasPrivateKey], v10, v11))
      {
        if ([(PCSManateeShareableIdentity *)v9 hasSigningPrivateKey])
        {
          v12 = [(PCSManateeShareableIdentity *)v9 signingPrivateKey];
          v13 = [v12 hasPrivateKey];

          if (v13)
          {
            v16 = [(PCSManateeShareableIdentity *)v9 encryptionPrivateKey];
            v17 = [v16 privateKey];
            v18 = [(PCSManateeShareableIdentity *)v9 encryptionPrivateKey];
            v19 = [v18 publicKeyInfo];
            v20 = _PCSIdentityCreateFromRawWithPublic(v17, v19, 0, a2);

            if (v20)
            {
              v21 = [(PCSManateeShareableIdentity *)v9 signingPrivateKey];
              v22 = [v21 privateKey];
              v23 = [(PCSManateeShareableIdentity *)v9 signingPrivateKey];
              v24 = [v23 publicKeyInfo];
              v14 = _PCSIdentityCreateFromRawWithPublic(v22, v24, 0, a2);

              if (v14)
              {
                _PCSIdentitySetSigningIdentity(v20, v14);
                v25 = v14;
                v14 = CFRetain(v20);
                CFRelease(v20);
                v20 = v25;
              }

              CFRelease(v20);
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_15;
          }
        }

        _PCSError(a2, 139, @"missing signing key");
      }

      else
      {
        _PCSError(a2, 139, @"missing encryption key");
      }
    }

    else
    {
      _PCSError(a2, 139, @"failed to deserialize PCSManateeShareableIdentity");
    }
  }

  else
  {
    if (v27 == 1)
    {
      v14 = PCSIdentityCreateWithPrivateKeyV1(&v27 + 1, 0, a2);
      goto LABEL_15;
    }

    _PCSError(a2, 8, @"unexpected choice type for PCSPrivateKeyV2: %d", v27, v26);
  }

  v14 = 0;
LABEL_15:
  free_PCSPrivateKeyV2(&v27);
  return v14;
}

void OUTLINED_FUNCTION_8_1()
{

  CFDictionarySetValue(v0, v1, v2);
}

uint64_t _PCSIdentityCreateEmpty(const void **a1)
{
  PCSIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    _PCSErrorOOM(a1);
  }

  return Instance;
}

CFTypeRef PCSIdentityCreateWithPrivateKeyV1(uint64_t *a1, int a2, const void **a3)
{
  Empty = _PCSIdentityCreateEmpty(a3);
  if (!Empty)
  {
    return 0;
  }

  v7 = Empty;
  v8 = PCSKeyCreate(a1, a2, a3);
  v7[2] = v8;
  if (v8)
  {
    v9 = CFRetain(v7);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v7);
  return v9;
}

uint64_t PCSIdentityGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSIdentityGetTypeID_sPCSIdentityGetTypeIDSingleton;
  if (PCSIdentityGetTypeID_sPCSIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSIdentityGetTypeID_sPCSIdentityGetTypeIDOnce, block);
  }

  return PCSIdentityGetTypeID_sPCSIdentityGetTypeIDSingleton;
}

uint64_t PCSKeyCreate(uint64_t *a1, int a2, const void **a3)
{
  v10 = 0;
  if (a2 && !a1[2])
  {
    return 0;
  }

  PCSKeyGetTypeID();
  v5 = OUTLINED_FUNCTION_2();
  v6 = v5;
  if (!v5)
  {
    _PCSErrorOOM(a3);
    return v6;
  }

  *(v5 + 24) = 0;
  *(v5 + 32) = *(v5 + 32) & 0xFA | 1;
  v7 = CopyPrivKeyFromOctetString(a1, 0, &v10);
  *(v6 + 40) = v7;
  *(v6 + 32) = *(v6 + 32) & 0xFD | (2 * v10);
  if (!v7 || a1[2] && (*(v6 + 16) = malloc_type_malloc(0x30uLL, 0x10A0040698877B7uLL), v8 = a1[2], copy_PCSPublicKeyInfo()) || !SetKeyID(v6))
  {
    _PCSErrorOOM(a3);
    CFRelease(v6);
    return 0;
  }

  return v6;
}

uint64_t PCSKeyGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSKeyGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSKeyGetTypeID_sPCSKeyGetTypeIDSingleton;
  if (PCSKeyGetTypeID_sPCSKeyGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSKeyGetTypeID_sPCSKeyGetTypeIDOnce, block);
  }

  return PCSKeyGetTypeID_sPCSKeyGetTypeIDSingleton;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return _CFRuntimeCreateInstance();
}

__CFDictionary *OUTLINED_FUNCTION_2_1@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, void *key, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, a9, v14);
}

void **CopyPrivKeyFromOctetString(uint64_t *a1, int a2, BOOL *a3)
{
  *a3 = 0;
  if (a2 || (v18 = *a1, !ccec_compact_import_priv_size()))
  {
    v6 = *a1;
    v7 = a1[1];
    if (ccec_der_import_priv_keytype())
    {
      *a3 = a2 == 1;
      v8 = 8 * *a1;
      ccec_cp_192();
      MEMORY[0x1B2744A30]();
      MEMORY[0x1B2744A40]();
      MEMORY[0x1B2744A50]();
      ccec_cp_521();
      v9 = ccec_curve_for_length_lookup();
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v11 = OUTLINED_FUNCTION_1_0(v9);
      v12 = v11;
      if (!v11)
      {
        return v12;
      }

      *v11 = v10;
      v13 = *v10;
      v14 = *a1;
      v15 = a1[1];
      if (!ccn_read_uint())
      {
        v16 = *a3;
        v17 = v10;
LABEL_7:
        if (generate_publickey(v17, v16, v12))
        {
          return v12;
        }
      }
    }

    else
    {
      ccec_cp_192();
      MEMORY[0x1B2744A30]();
      MEMORY[0x1B2744A40]();
      MEMORY[0x1B2744A50]();
      ccec_cp_521();
      v22 = ccec_curve_for_length_lookup();
      if (!v22)
      {
        return 0;
      }

      v23 = v22;
      v24 = OUTLINED_FUNCTION_1_0(v22);
      v12 = v24;
      if (!v24)
      {
        return v12;
      }

      *v24 = v23;
      v25 = *a1;
      v26 = a1[1];
      if (!ccec_der_import_priv())
      {
        if (a2 == 1)
        {
          *a3 = 1;
          ccec_compact_transform_key();
        }

        ccDRBGGetRngState();
        if (ccec_pairwise_consistency_check())
        {
          return v12;
        }

        v16 = *a3;
        v17 = v23;
        goto LABEL_7;
      }
    }

LABEL_21:
    free(v12);
    return 0;
  }

  if (!ccec_keysize_is_supported())
  {
    return 0;
  }

  cp = ccec_get_cp();
  v12 = OUTLINED_FUNCTION_1_0(cp);
  if (v12)
  {
    v20 = *a1;
    v21 = a1[1];
    if (!ccec_compact_import_priv())
    {
      *a3 = 1;
      return v12;
    }

    goto LABEL_21;
  }

  return v12;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void *OUTLINED_FUNCTION_1_0(void *a1)
{
  v2 = (32 * *a1) | 0x10;

  return malloc_type_malloc(v2, 0x60040B37CB4BBuLL);
}

BOOL SetKeyID(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    SetKeyID_cold_1();
  }

  v2 = *(a1 + 32);
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = ccec_der_export_diversified_pub_size();
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v10);
    if (!Mutable)
    {
      goto LABEL_17;
    }

    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    CFDataGetMutableBytePtr(Mutable);
    if (!ccec_der_export_diversified_pub())
    {
      v3 = 0;
LABEL_14:
      CFRelease(Mutable);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *v3;
    v5 = cczp_bitlen() + 7;
    if ((v2 & 2) == 0)
    {
      v6 = v5 >> 2;
      Mutable = CFDataCreateMutable(0, 0);
      CFDataSetLength(Mutable, v6 | 1);
      if (Mutable)
      {
        CFDataGetMutableBytePtr(Mutable);
        ccec_export_pub();
        goto LABEL_12;
      }

LABEL_17:
      v3 = 0;
      goto LABEL_15;
    }

    v13 = v5 >> 3;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v13);
    if (!Mutable)
    {
      goto LABEL_17;
    }

    CFDataGetMutableBytePtr(Mutable);
    ccec_compact_export();
LABEL_12:
    ccsha256_di();
    CFDataGetLength(Mutable);
    CFDataGetBytePtr(Mutable);
    ccdigest();
    v3 = CFDataCreateMutable(0, 0);
    CFDataSetLength(v3, 20);
    if (v3)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      *MutableBytePtr = v17;
      *(MutableBytePtr + 4) = v18;
    }

    goto LABEL_14;
  }

LABEL_15:
  *(a1 + 24) = v3;
  result = v3 != 0;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void _PCSIdentityCheckPCSAttributes(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697ADE0]];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697ADD8]];
    if (v5)
    {
      v6 = v5;
      v7 = [v8 objectForKeyedSubscript:*MEMORY[0x1E697ADE8]];

      if (v7)
      {
        *(a1 + 56) = 1;
      }
    }

    else
    {
    }
  }
}

void _PCSIdentitySetPersistentReference(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;
    CFRelease(v4);
  }

  *(a1 + 48) = v3;
}

void UpdateCKKSIdentity(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    v2 = theDict;
    if (theDict)
    {
      if (!CFDictionaryGetValue(theDict, *MEMORY[0x1E697ADE8]))
      {
        UpdateCKKSIdentity_cold_1(a1, v2, v4, v5, v6, v7, v8, v9);
      }
    }
  }
}

CFTypeRef _PCSIdentityGetSigningIdentity(uint64_t a1)
{
  v1 = (a1 + 80);
  if (!*(a1 + 80))
  {
    v3 = (a1 + 16);
    v2 = *(a1 + 16);
    if (v2 && (v4 = *(v2 + 16)) != 0)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    if (PCSServiceItemAllowSyntheticManateeSharing(v5))
    {
      _PCSIdentityGetSigningIdentity_cold_1(v3, v1);
    }
  }

  return *v1;
}

void *PCSIdentityCopyPublicIdentity(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  PCSPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v3 = *(*(a1 + 16) + 16);
  if (!v3)
  {
    v6 = PCSKeyCopyExportedPublicKey(*(a1 + 16));
    if (v6)
    {
      v7 = v6;
      Instance[3] = PCSKeyCreatePublicWithData(v6, 0);
      CFRelease(v7);
      if (Instance[3])
      {
        return Instance;
      }
    }

    else if (!Instance)
    {
      return Instance;
    }

    goto LABEL_4;
  }

  v4 = PCSKeyCreateWithPKI(v3, 0);
  Instance[3] = v4;
  if (!v4)
  {
LABEL_4:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t PCSKeyCreateWithPKI(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 4);
  if (v3 > 8)
  {
    goto LABEL_13;
  }

  v5 = 1 << v3;
  if ((v5 & 0xB) != 0)
  {
    v6 = CFDataCreateWithBytesNoCopy(0, *(a1 + 16), *(a1 + 8), *MEMORY[0x1E695E498]);
    if (v6)
    {
      v7 = v6;
      PublicWithData = PCSKeyCreatePublicWithData(v6, a2);
      CFRelease(v7);
      goto LABEL_11;
    }

LABEL_13:
    _PCSErrorOOM(a2);
    return 0;
  }

  if ((v5 & 0x180) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = ccec_diversified_cp();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  PCSKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_13;
  }

  PublicWithData = Instance;
  *(Instance + 32) = *(Instance + 32) & 0xF8 | 4;
  if (!_PCSKeyAllocateDiversizedKey(v12, Instance))
  {
    goto LABEL_15;
  }

  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(PublicWithData + 40);
  v16 = *(PublicWithData + 48);
  if (ccec_der_import_diversified_pub())
  {
    goto LABEL_15;
  }

  *(PublicWithData + 32) &= ~2u;
  if (!SetKeyID(PublicWithData))
  {
    goto LABEL_15;
  }

LABEL_11:
  *(PublicWithData + 16) = malloc_type_malloc(0x30uLL, 0x10A0040698877B7uLL);
  if (copy_PCSPublicKeyInfo())
  {
LABEL_15:
    _PCSErrorOOM(a2);
    CFRelease(PublicWithData);
    return 0;
  }

  return PublicWithData;
}

uint64_t PCSKeyCreatePublicWithData(const __CFData *a1, const void **a2)
{
  v15 = 0;
  PCSKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (!Instance)
  {
    _PCSErrorOOM(a2);
    return v5;
  }

  *(Instance + 32) &= ~1u;
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  v6 = ccec_diversified_cp();
  if (v6)
  {
    *(v5 + 32) |= 4u;
    if (!_PCSKeyAllocateDiversizedKey(v6, v5))
    {
      goto LABEL_10;
    }

    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    v8 = *(v5 + 40);
    v7 = *(v5 + 48);
    if (ccec_der_import_diversified_pub())
    {
      goto LABEL_10;
    }

    v9 = (v15 >> 1) & 2 | *(v5 + 32) & 0xFD;
  }

  else
  {
    v14 = 0;
    *(v5 + 32) &= ~4u;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v13 = CopyPublicKeyFromData(BytePtr, Length, &v14, a2);
    *(v5 + 40) = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    LOBYTE(v9) = *(v5 + 32) & 0xFD | (2 * v14);
  }

  *(v5 + 32) = v9;
  if (!SetKeyID(v5))
  {
LABEL_10:
    _PCSErrorOOM(a2);
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t PCSIdentityGetServiceName(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    return PCSServiceItemGetNameByIndex(*v2);
  }

  else
  {
    return PCSServiceItemGetNameByIndex(0);
  }
}

uint64_t PCSServiceItemGetNameByIndex(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PCSServiceItemGetByIndex_block_invoke;
  v3[3] = &unk_1E7B19890;
  v4 = a1;
  v3[4] = &v5;
  PCSServiceItemsIterate(v3);
  v1 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_1B22A1BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id KeychainCopyCurrentIdentity(uint64_t a1, __CFString *key, const void **a3)
{
  v57[1] = *MEMORY[0x1E69E9840];
  if (!key || !*(a1 + 40) || (PCSServiceItemTypeIsManatee(key) & 1) == 0 && !_os_feature_enabled_impl() || !CFEqual(kPCSServiceName[0], @"ProtectedCloudStorage"))
  {
    goto LABEL_10;
  }

  if (!PCSSupportsPersonaMultiuser())
  {
    if (!_PCSIsMultiDevice(0))
    {
      goto LABEL_17;
    }

    if (PCSServiceItemTypeIsManatee(key))
    {
      _PCSError(a3, 145, @"No CKKS on multiuser device");
LABEL_35:
      v7 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v7 = KeychainCopyXIdentityWithCount(a1, key, 0, a3);
    goto LABEL_11;
  }

  v6 = pcsLogObjForScope("ckks");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "KeychainCopyCurrentIdentity: ATVSupportsMU enabled", buf, 2u);
  }

LABEL_17:
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    v24 = MEMORY[0x1E696ABC0];
    v25 = kPCSErrorDomain;
    v56 = *MEMORY[0x1E696A578];
    v57[0] = @"dsid does not match current persona's account dsid";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v27 = [v24 errorWithDomain:v25 code:146 userInfo:v26];

    if (a3)
    {
      *a3 = v27;
    }

    goto LABEL_35;
  }

  *buf = 0;
  v51 = buf;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v10 = dispatch_queue_create("KeychainCopyCurrentIdentity", 0);
  v11 = dispatch_semaphore_create(0);
  v12 = off_1ED6F2388;
  AccessGroupByName = PCSServiceItemGetAccessGroupByName(key);
  CKKSViewByName = PCSServiceItemGetCKKSViewByName(key);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __KeychainCopyCurrentIdentity_block_invoke;
  v36[3] = &unk_1E7B19280;
  v15 = v10;
  v37 = v15;
  v39 = v44;
  v42 = key;
  v43 = a1;
  v40 = &v46;
  v41 = buf;
  v16 = v11;
  v38 = v16;
  (v12)(AccessGroupByName, key, CKKSViewByName, 0, v36);
  v17 = dispatch_time(0, 1000000000 * *(&xmmword_1ED6F2368 + 1));
  if (dispatch_semaphore_wait(v16, v17))
  {
    v18 = pcsLogObjForScope("ckks");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(cf) = 0;
      _os_log_impl(&dword_1B229C000, v18, OS_LOG_TYPE_DEFAULT, "Failed to fetch identity from security within timeout", &cf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __KeychainCopyCurrentIdentity_block_invoke_136;
    block[3] = &unk_1E7B18D20;
    block[4] = v44;
    block[5] = &v46;
    dispatch_sync(v15, block);
  }

  v19 = _os_feature_enabled_impl();
  v20 = v47;
  if (!v19)
  {
    goto LABEL_39;
  }

  if (!v47[3] || (PCSServiceItemTypeIsManatee(key) & 1) != 0 || (Domain = CFErrorGetDomain(v47[3]), !CFEqual(Domain, *MEMORY[0x1E697AAE8])) || CFErrorGetCode(v47[3]) != 61)
  {
    cf = 0;
    if (!*(v51 + 5))
    {
      if (PCSServiceItemTypeIsManatee(key))
      {
        v29 = cf;
      }

      else
      {
        IsWalrus = KeychainIsWalrus(a1, 0, &cf);
        v29 = cf;
        if (cf)
        {
          v31 = 1;
        }

        else
        {
          v31 = IsWalrus;
        }

        if ((v31 & 1) == 0)
        {
          v33 = v47[3];
          if (v33)
          {
            v47[3] = 0;
            CFRelease(v33);
          }

          goto LABEL_29;
        }
      }

      if (v29)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          KeychainCopyCurrentIdentity_cold_1(&cf);
        }

        v32 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v32);
        }
      }
    }

    if (!*(v51 + 5) && (CFEqual(key, kPCSServiceMaster) || CFEqual(key, kPCSServiceFDE)))
    {
      v22 = v47[3];
      if (!v22)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v20 = v47;
LABEL_39:
    v28 = v20[3];
    if (v28)
    {
      if (a3)
      {
        *a3 = v28;
      }

      else
      {
        v20[3] = 0;
        CFRelease(v28);
      }
    }

    v23 = *(v51 + 5);
    goto LABEL_45;
  }

  v22 = v47[3];
  if (v22)
  {
LABEL_28:
    v47[3] = 0;
    CFRelease(v22);
  }

LABEL_29:
  v23 = KeychainCopyXIdentityWithCount(a1, key, 0, a3);
LABEL_45:
  v7 = v23;

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(buf, 8);

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1B22A226C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t _PCSIsMultiDevice(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___PCSIsMultiDevice_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_PCSIsMultiDevice_onceToken != -1)
  {
    dispatch_once(&_PCSIsMultiDevice_onceToken, block);
  }

  return _PCSIsMultiDevice_deviceModeIsMultiUser;
}

uint64_t PCSSupportsPersonaMultiuser()
{
  if (gPCSSupportsPersonaMultiuserStatus)
  {
    v0 = gPCSSupportsPersonaMultiuserStatus == 1;
  }

  else
  {
    if (PCSSupportsPersonaMultiuser_onceToken != -1)
    {
      PCSSupportsPersonaMultiuser_cold_1();
    }

    v0 = PCSSupportsPersonaMultiuser_ffPCSSupportsPersonaMultiuserStatus;
  }

  return v0 & 1;
}

__CFString *PCSServiceItemGetAccessGroupByName(__CFString *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    if (*(v2 + 88))
    {
      return *(v2 + 88);
    }

    else
    {
      return kPCSDefaultKeychainGroup[0];
    }
  }

  return key;
}

void sub_1B22A24BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __PCSIdentitySetCopyCurrentIdentityPointerInternal(uint64_t a1, uint64_t a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    if (!a2)
    {
      a2 = *(a1 + 32);
    }

    v6 = (*(*(a1 + 16) + 24))(a1, a2, a3);
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    v6 = 0;
  }

  return v6;
}

CFMutableDictionaryRef MemoryCopyIdentities()
{
  OUTLINED_FUNCTION_3_1();
  v0 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDictionaryCreateMutable(v0, v1, v2, v3);
  if (Mutable)
  {
    OUTLINED_FUNCTION_1_1();
    v5 = OUTLINED_FUNCTION_12();
    if ((MemoryEnumerateIdentities(v5, v6, v7) & 1) == 0)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t MemoryEnumerateIdentities(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = PCSCurrentPersonaMatchesDSIDFromSet(a1);
  if (v6)
  {
    Value = *(a1 + 32);
    if (a2)
    {
      v8 = CFGetTypeID(a2);
      if (v8 == CFDictionaryGetTypeID() && !Value)
      {
        Value = CFDictionaryGetValue(a2, kPCSSetupService[0]);
      }
    }

    v9 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MemoryEnumerateIdentities_block_invoke;
    v11[3] = &unk_1E7B191E8;
    v13 = Value;
    v12 = v5;
    CFDictionaryApplyFunction(v9, apply_block_2_2, v11);
  }

  return v6;
}

CFStringRef _PCSCreateHexString(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc_type_calloc(1uLL, (2 * a2) | 1, 0x9B5E9940uLL);
  v5 = v4;
  v6 = v4;
  if (v2)
  {
    v7 = v4;
    do
    {
      *v7 = a0123456789abcd[*a1 >> 4];
      v8 = *a1++;
      v6 = v7 + 2;
      v7[1] = a0123456789abcd[v8 & 0xF];
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  *v6 = 0;
  v9 = *MEMORY[0x1E695E480];
  v10 = *MEMORY[0x1E695E488];

  return CFStringCreateWithCStringNoCopy(v9, v5, 0x8000100u, v10);
}

void PCSIdentityDestroy(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[4] = 0;
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[2] = 0;
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[3] = 0;
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[8] = 0;
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[9] = 0;
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[6] = 0;
    CFRelease(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    a1[10] = 0;

    CFRelease(v8);
  }
}

uint64_t PCSIdentitySetCopyIdentities(uint64_t a1, uint64_t a2)
{
  if (!PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 80);

  return v4(a1, a2);
}

CFStringRef PCSShareProtectionCopyDescription(uint64_t a1)
{
  v2 = PCSIdentitySetCopyIdentities(*(a1 + 16), 0);
  v3 = *(a1 + 80);
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(*(a1 + 80));
    v6 = _PCSCreateHexString(BytePtr, Length);
  }

  else
  {
    v6 = @"<no-masterkey>";
  }

  v7 = CFDictionaryGetCount(v2) != 0;
  v8 = _PCSYESNO(v7);
  v9 = CFDictionaryGetCount(*(a1 + 40)) != 0;
  v10 = _PCSYESNO(v9);
  v11 = _PCSYESNO(*(a1 + 208));
  v12 = _PCSYESNO(*(a1 + 204) == 3);
  v13 = _PCSYESNO(*(a1 + 204) == 0);
  v14 = _PCSYESNO((*(a1 + 209) & 1) == 0);
  v15 = CFStringCreateWithFormat(0, 0, @"<PCSShareProtection@%p: [ MasterKey ID: %@ PCSKey: %@ PCSPublic: %@ validated: %@ version2: %@ light: %@ readwrite: %@] >", a1, v6, v8, v10, v11, v12, v13, v14);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v15;
}

const void *PCSIdentityCreateFromData(const __CFData *a1, const void **a2)
{
  Empty = _PCSIdentityCreateEmpty(a2);
  v5 = Empty;
  if (Empty && !_PCSIdentityAddFromExternalForm(Empty, 0, a1, a2))
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

BOOL _PCSIdentityAddFromExternalForm(uint64_t a1, int a2, CFDataRef theData, const void **a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    abort();
  }

  v40 = 0;
  *cStr = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = decode_PCSKeySet(BytePtr, Length, cStr, &v40);
  if (v10)
  {
    _PCSError(a4, 8, @"failed to decode PCSKeySet: %d", v10);
    goto LABEL_65;
  }

  if (!VerifyChecksum(cStr, a4))
  {
    goto LABEL_65;
  }

  if (v44)
  {
    *(a1 + 40) = *v44;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    *(a1 + 24) = 0;
    CFRelease(v11);
  }

  v12 = CFStringCreateWithCString(0, cStr[0], 0x8000100u);
  *(a1 + 24) = v12;
  if (!v12)
  {
    free_PCSKeySet(cStr);
    _PCSErrorOOM(a4);
    goto LABEL_14;
  }

  if (!*(a1 + 16) && !DWORD2(v42) && LODWORD(cStr[1]) == 1)
  {
    *(a1 + 16) = PCSKeyCreate(v42, 0, a4);
    free_PCSKeySet(cStr);
    v13 = *(a1 + 16) != 0;
    goto LABEL_52;
  }

  if (!*(a1 + 72))
  {
    *(a1 + 72) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (!*(a1 + 64))
  {
    *(a1 + 64) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
LABEL_65:
    v13 = 0;
    goto LABEL_51;
  }

  if (!LODWORD(cStr[1]))
  {
LABEL_34:
    if (*(a1 + 16))
    {
      goto LABEL_35;
    }

    v34 = DWORD2(v42);
    if (!DWORD2(v42))
    {
      goto LABEL_35;
    }

    v35 = (v43 + 16);
    while (*(v35 - 4) != 1)
    {
      v35 += 3;
      if (!--v34)
      {
        goto LABEL_35;
      }
    }

    v36 = CFDataCreate(0, *v35, *(v35 - 1));
    Value = CFDictionaryGetValue(Mutable, v36);
    if (Value)
    {
      *(a1 + 16) = CFRetain(Value[2]);
      CFDictionaryRemoveValue(Mutable, v36);
      CFRelease(v36);
LABEL_35:
      CFDictionaryApplyFunction(Mutable, AddKeysApplier, *(a1 + 72));
      v25 = DWORD2(v42);
      if (DWORD2(v42))
      {
        v26 = 0;
        v27 = 0;
        v28 = *MEMORY[0x1E695E498];
        do
        {
          v29 = v43 + v26;
          if (*(v43 + v26) != 1)
          {
            v30 = CFDataCreateWithBytesNoCopy(0, *(v29 + 16), *(v29 + 8), v28);
            *bytes = 0;
            v46 = bytes;
            v47 = 0x2020000000;
            v48 = CFDictionaryGetValue(Mutable, v30);
            if (*(v46 + 3) || (context[0] = MEMORY[0x1E69E9820], context[1] = 3221225472, context[2] = ___PCSIdentityAddFromExternalForm_block_invoke, context[3] = &unk_1E7B18C08, context[4] = bytes, context[5] = v29, CFDictionaryApplyFunction(Mutable, apply_block_2_0, context), *(v46 + 3)))
            {
              if (v30)
              {
                CFRelease(v30);
              }

              v31 = CFNumberCreate(0, kCFNumberSInt32Type, v29);
              if (v31)
              {
                CFDictionarySetValue(*(a1 + 64), v31, *(v46 + 3));
                CFRelease(v31);
              }
            }

            else if (v30)
            {
              CFRelease(v30);
            }

            _Block_object_dispose(bytes, 8);
            v25 = DWORD2(v42);
          }

          ++v27;
          v26 += 24;
        }

        while (v27 < v25);
      }

      v13 = 1;
      goto LABEL_50;
    }

    free_PCSKeySet(cStr);
    CFRelease(v36);
    CFRelease(Mutable);
    _PCSError(a4, 11, @"Master key is missing");
LABEL_14:
    v13 = 0;
    goto LABEL_52;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v39 = 0;
    if (!a2)
    {
      break;
    }

    if (!_PCSValidateKey((v42 + v15), &v39, 0, 0, a4))
    {
      goto LABEL_63;
    }

    if ((v39 & 1) == 0)
    {
      break;
    }

LABEL_33:
    ++v16;
    v15 += 24;
    if (v16 >= LODWORD(cStr[1]))
    {
      goto LABEL_34;
    }
  }

  v17 = v42;
  Empty = _PCSIdentityCreateEmpty(a4);
  if (!Empty)
  {
    goto LABEL_63;
  }

  v19 = PCSKeyCreate((v17 + v15), 1, a4);
  Empty[2] = v19;
  if (!v19)
  {
    goto LABEL_62;
  }

  CFDictionarySetValue(Mutable, *(v19 + 24), Empty);
  v20 = *(Empty[2] + 16);
  if (!v20)
  {
LABEL_32:
    CFRelease(Empty);
    goto LABEL_33;
  }

  ccsha256_di();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  ccdigest();
  v23 = CFDataCreate(0, bytes, 20);
  v24 = v23;
  if (v23)
  {
    if (!CFEqual(v23, *(Empty[2] + 24)))
    {
      CFDictionarySetValue(Mutable, v24, Empty);
    }

    CFRelease(v24);
    goto LABEL_32;
  }

  _PCSErrorOOM(a4);
LABEL_62:
  CFRelease(Empty);
LABEL_63:
  v13 = 0;
LABEL_50:
  CFRelease(Mutable);
LABEL_51:
  free_PCSKeySet(cStr);
LABEL_52:
  v32 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t VerifyChecksum(uint64_t a1, const void **a2)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_22;
  }

  if (*v2 != 32)
  {
    v25 = *v2;
    v11 = @"checksum wrong length %d";
    goto LABEL_21;
  }

  *(a1 + 40) = 0;
  v26[0] = 0;
  v5 = length_PCSKeySet(a1);
  Mutable = CFDataCreateMutable(0, v5);
  if (!Mutable)
  {
    v10 = 12;
    goto LABEL_7;
  }

  v7 = Mutable;
  CFDataSetLength(Mutable, v5);
  MutableBytePtr = CFDataGetMutableBytePtr(v7);
  v9 = encode_PCSKeySet(&MutableBytePtr[v5 - 1], v5, a1, v26);
  if (v9)
  {
    v10 = v9;
    CFRelease(v7);
LABEL_7:
    *(a1 + 40) = v2;
    v25 = v10;
    v11 = @"PCSKeySet encode error: %d";
    v12 = a2;
    v13 = 7;
LABEL_8:
    _PCSError(v12, v13, v11, v25);
    result = 0;
LABEL_23:
    v23 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v5 == v26[0])
  {
    *(a1 + 40) = v2;
    ccsha256_di();
    CFDataGetLength(v7);
    CFDataGetBytePtr(v7);
    ccdigest();
    CFRelease(v7);
    v15 = v2[1];
    v16 = *v15;
    v17 = v15[1];
    v19 = v15[2];
    v18 = v15[3];
    if (v26[0] != v16 || v26[1] != v17 || v26[2] != v19 || v26[3] != v18)
    {
      v11 = @"checksum wrong";
LABEL_21:
      v12 = a2;
      v13 = 9;
      goto LABEL_8;
    }

LABEL_22:
    result = 1;
    goto LABEL_23;
  }

  v24 = asn1_abort();
  return MemoryAddIdentity(v24);
}

uint64_t MemoryAddIdentity(uint64_t a1, const void *a2, const void **a3)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v6 = *(a1 + 88);
    if (v6 == 1)
    {
      _PCSError(a3, 107, @"Memory set readonly");
    }

    else
    {
      v8 = *(a1 + 56);
      PublicKey = PCSIdentityGetPublicKey(a2);
      CFDictionarySetValue(v8, PublicKey, a2);
      v10 = *(a1 + 64);
      KeyID = PCSIdentityGetKeyID(a2);
      CFDictionarySetValue(v10, KeyID, a2);
      v12 = PCSIdentityCopyServiceNumber(a2);
      if (v12)
      {
        v13 = v12;
        if (!CFDictionaryGetValue(*(a1 + 72), v12))
        {
          if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
          {
            (*(*(a1 + 16) + 56))(a1, a2, 0);
          }
        }

        CFRelease(v13);
      }
    }

    return v6 ^ 1u;
  }

  else
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

CFNumberRef PCSIdentityCopyServiceNumber(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v1 = *(v1 + 16);
    if (v1)
    {
      LODWORD(v1) = *v1;
    }
  }

  valuePtr = v1;
  return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
}

CFDataRef PCSFPCreateUniqueID(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v2 = PCSIdentitySetCopyIdentities(*(a1 + 16), 0);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v25[3] = Mutable;
  CFArrayAppendValue(Mutable, *(a1 + 72));
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __PCSFPCreateUniqueID_block_invoke;
  context[3] = &unk_1E7B18C68;
  context[4] = &v24;
  CFDictionaryApplyFunction(v2, apply_block_2_1, context);
  v4 = *(a1 + 40);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PCSFPCreateUniqueID_block_invoke_2;
  v22[3] = &unk_1E7B18C68;
  v22[4] = &v24;
  CFDictionaryApplyFunction(v4, apply_block_2_1, v22);
  v5 = *(a1 + 112);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __PCSFPCreateUniqueID_block_invoke_3;
  v21[3] = &unk_1E7B18C68;
  v21[4] = &v24;
  CFDictionaryApplyFunction(v5, apply_block_2_1, v21);
  if (v2)
  {
    CFRelease(v2);
  }

  v6 = v25[3];
  v29.length = CFArrayGetCount(v6);
  v29.location = 0;
  CFArraySortValues(v6, v29, ArraySortCompare, 0);
  v7 = ccsha256_di();
  v8 = (((*(v7 + 8) + *(v7 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  ccdigest_init();
  Count = CFArrayGetCount(v25[3]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v25[3], i);
      v14 = CFGetTypeID(ValueAtIndex);
      if (v14 == CFStringGetTypeID())
      {
        v15 = PCSCFStringToCString(ValueAtIndex);
        strlen(v15);
        ccdigest_update();
        free(v15);
      }

      else
      {
        CFDataGetLength(ValueAtIndex);
        CFDataGetBytePtr(ValueAtIndex);
        ccdigest_update();
      }
    }
  }

  CFRelease(v25[3]);
  v16 = *v7;
  MEMORY[0x1EEE9AC00](v17);
  (*(v7 + 56))(v7, v10, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = CFDataCreate(0, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  _Block_object_dispose(&v24, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __MemoryEnumerateIdentities_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 == CFStringGetTypeID())
    {
      result = PCSIdentityGetServiceName(a3);
      v8 = *(a1 + 40);
      if (result && v8)
      {
        result = CFEqual(result, v8);
        if (!result)
        {
          return result;
        }
      }

      else if (result != v8)
      {
        return result;
      }
    }
  }

  v9 = *(*(a1 + 32) + 16);

  return v9();
}

void __MemoryCopyIdentities_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 32);
  PublicKey = PCSIdentityGetPublicKey(a2);

  CFDictionarySetValue(v3, PublicKey, a2);
}

CFStringRef PCSIdentityGetPublicKey(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        *v1 = _PCSCreateBase64(*(v3 + 16), *(v3 + 8), 0);
      }

      else
      {
        PCSIdentityGetPublicKey_cold_1(v2, v1);
      }
    }
  }

  return *v1;
}

uint64_t _PCSMakeDigest(uint64_t a1, const __CFData *a2, const __CFData *a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v10 = (((*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - v11;
  ccdigest_init();
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  ccdigest_update();
  if (a3)
  {
    CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    ccdigest_update();
  }

  v27 = bswap32(*(a4 + 4));
  ccdigest_update();
  v27 = bswap32(*a4);
  ccdigest_update();
  v13 = *(a4 + 80);
  if (v13)
  {
    v27 = bswap32(*v13);
  }

  else
  {
    v27 = 0;
  }

  ccdigest_update();
  v27 = bswap32(*(a4 + 8));
  ccdigest_update();
  v14 = *(a4 + 24);
  v15 = *(a4 + 32);
  ccdigest_update();
  v16 = *(a4 + 104);
  if (v16)
  {
    v17 = length_PCSAttributes(v16);
    v18 = malloc_type_malloc(v17, 0x38B93A90uLL);
    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = v18;
    if (encode_PCSAttributes(v18 + v17 - 1, v17, *(a4 + 104), &v26))
    {
      goto LABEL_17;
    }

    if (v26 != v17)
    {
      goto LABEL_18;
    }

    ccdigest_update();
    free(v19);
  }

  v20 = *(a4 + 96);
  if (v20)
  {
    v21 = length_PCSSPKeyList(v20);
    v22 = malloc_type_malloc(v21, 0xF1A1055AuLL);
    if (!v22)
    {
      goto LABEL_18;
    }

    v19 = v22;
    if (!encode_PCSSPKeyList(v22 + v21 - 1, v21, *(a4 + 96), &v26))
    {
      if (v26 == v21)
      {
        ccdigest_update();
        free(v19);
        goto LABEL_16;
      }

LABEL_18:
      abort();
    }

LABEL_17:
    free(v19);
    goto LABEL_18;
  }

LABEL_16:
  result = (*(a1 + 56))(a1, v12, a5);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

CFComparisonResult ArraySortCompare(const __CFString *a1, const __CFString *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    v5 = CFGetTypeID(a2);
    if (v5 == CFStringGetTypeID())
    {

      return CFStringCompare(a1, a2, 0);
    }

    return 1;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDataGetTypeID())
  {
    PCSAbort("unknown type in array", v8, v9, v10, v11, v12, v13, v14, v25);
  }

  v15 = CFGetTypeID(a2);
  if (v15 != CFDataGetTypeID())
  {
    return -1;
  }

  Length = CFDataGetLength(a1);
  v17 = CFDataGetLength(a2);
  v18 = v17;
  if (Length >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = Length;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v21 = CFDataGetBytePtr(a2);
  v22 = memcmp(BytePtr, v21, v19);
  if (v22 > 0 || !v22 && Length > v18)
  {
    return 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = Length >= v18;
  }

  v24 = !v23;
  return v24 << 63 >> 63;
}

char *PCSCFStringToCString(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return strdup(CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xD870FBD7uLL);
    if (v6 && !CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(v6);
      return 0;
    }

    return v6;
  }
}

void PCSPublicIdentityDestroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 24) = 0;
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    *(a1 + 16) = 0;

    CFRelease(v3);
  }
}

__CFString *_PCSYESNO(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

uint64_t PCSIdentityCompare(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != PCSIdentityGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != PCSIdentityGetTypeID())
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v6 = *(a1[2] + 24);
  v7 = *(a2[2] + 24);

  return CFEqual(v6, v7);
}

void *__PCSShareProtectionCreateEmpty(const void **a1)
{
  PCSShareProtectionGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 216) = 1192348414;
    v4 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDictionaryCreateMutable(v4, v5, v6, v7);
    v3[14] = Mutable;
    if (!Mutable || (v9 = PCSIdentitySetCreateMutable(a1), (v3[2] = v9) == 0) || (v10 = OUTLINED_FUNCTION_0_1(), v14 = CFDictionaryCreateMutable(v10, v11, v12, v13), (v3[5] = v14) == 0))
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

CFTypeRef PCSFPCopyObject(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == PCSShareProtectionGetTypeID() && (Empty = __PCSShareProtectionCreateEmpty(0)) != 0)
    {
      v4 = Empty;
      v5 = Empty[2];
      if (v5)
      {
        v4[2] = 0;
        CFRelease(v5);
      }

      v6 = PCSIdentitySetCopySet(*(v1 + 2), 0);
      v4[2] = v6;
      if (!v6)
      {
        goto LABEL_52;
      }

      v7 = *(v1 + 3);
      if (v7)
      {
        v8 = PCSIdentitySetCopySet(v7, 0);
        v4[3] = v8;
        if (!v8)
        {
          goto LABEL_52;
        }
      }

      v9 = *(v1 + 4);
      if (v9)
      {
        v10 = PCSIdentitySetCopySet(v9, 0);
        v4[4] = v10;
        if (!v10)
        {
          goto LABEL_52;
        }
      }

      v11 = v4[5];
      if (v11)
      {
        v4[5] = 0;
        CFRelease(v11);
      }

      v12 = *(v1 + 5);
      v13 = OUTLINED_FUNCTION_0_1();
      MutableCopy = CFDictionaryCreateMutableCopy(v13, v14, v15);
      v4[5] = MutableCopy;
      if (!MutableCopy)
      {
        goto LABEL_52;
      }

      if (*(v1 + 6))
      {
        v17 = OUTLINED_FUNCTION_0_1();
        v20 = CFArrayCreateMutableCopy(v17, v18, v19);
        v4[6] = v20;
        if (!v20)
        {
          goto LABEL_52;
        }
      }

      if (*(v1 + 7))
      {
        v21 = OUTLINED_FUNCTION_0_1();
        v24 = CFDictionaryCreateMutableCopy(v21, v22, v23);
        v4[7] = v24;
        if (!v24)
        {
          goto LABEL_52;
        }
      }

      if (*(v1 + 8))
      {
        v25 = OUTLINED_FUNCTION_0_1();
        v28 = CFDataCreateMutableCopy(v25, v26, v27);
      }

      else
      {
        v28 = 0;
      }

      v4[8] = v28;
      if (*(v1 + 9))
      {
        v29 = OUTLINED_FUNCTION_0_1();
        v32 = CFDataCreateMutableCopy(v29, v30, v31);
      }

      else
      {
        v32 = 0;
      }

      v4[9] = v32;
      v33 = *(v1 + 10);
      if (v33)
      {
        CFRetain(*(v1 + 10));
      }

      v4[10] = v33;
      v34 = *(v1 + 11);
      if (v34)
      {
        CFRetain(*(v1 + 11));
      }

      v4[11] = v34;
      v35 = *(v1 + 12);
      if (v35)
      {
        CFRetain(*(v1 + 12));
      }

      v4[12] = v35;
      v36 = *(v1 + 13);
      if (v36)
      {
        CFRetain(*(v1 + 13));
      }

      v4[13] = v36;
      v37 = v4[14];
      if (v37)
      {
        v4[14] = 0;
        CFRelease(v37);
        v38 = *(v1 + 14);
        v39 = OUTLINED_FUNCTION_0_1();
        v42 = CFDictionaryCreateMutableCopy(v39, v40, v41);
        v4[14] = v42;
        if (!v42)
        {
          goto LABEL_52;
        }
      }

      v4[15] = *(v1 + 15);
      if (!copy_PCSAttributes())
      {
        v43 = *(v1 + 18);
        if (v43)
        {
          CFRetain(*(v1 + 18));
        }

        v4[18] = v43;
        v44 = *(v1 + 19);
        if (v44)
        {
          CFRetain(*(v1 + 19));
        }

        v4[19] = v44;
        v45 = *(v1 + 20);
        if (v45)
        {
          CFRetain(*(v1 + 20));
        }

        v4[20] = v45;
        v46 = *(v1 + 21);
        if (v46)
        {
          CFRetain(*(v1 + 21));
        }

        v4[21] = v46;
        v47 = *(v1 + 22);
        if (v47)
        {
          CFRetain(*(v1 + 22));
        }

        v4[22] = v47;
        v48 = *(v1 + 22);
        if (v48)
        {
          SigningIdentity = _PCSIdentityGetSigningIdentity(v48);
          v50 = SigningIdentity;
          if (SigningIdentity)
          {
            CFRetain(SigningIdentity);
          }
        }

        else
        {
          v50 = 0;
        }

        v4[23] = v50;
        *(v4 + 51) = *(v1 + 51);
        *(v4 + 52) = *(v1 + 52);
        *(v4 + 106) = *(v1 + 106);
        *(v4 + 214) = *(v1 + 214);
        v1 = CFRetain(v4);
      }

      else
      {
LABEL_52:
        v1 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void PCSServiceItemsIterate(void *a1)
{
  v1 = a1;
  if (PCSServiceItemsInit_once != -1)
  {
    PCSServiceItemsCount_cold_1();
  }

  v2 = PCSServiceItemsInit_localServiceItems;
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __PCSServiceItemsIterate_block_invoke;
  context[3] = &unk_1E7B18F68;
  v5 = v1;
  v3 = v1;
  CFDictionaryApplyFunction(v2, apply_block_2_4, context);
}

uint64_t PCSShareProtectionGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSShareProtectionGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSShareProtectionGetTypeID_sPCSShareProtectionGetTypeIDSingleton;
  if (PCSShareProtectionGetTypeID_sPCSShareProtectionGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSShareProtectionGetTypeID_sPCSShareProtectionGetTypeIDOnce, block);
  }

  return PCSShareProtectionGetTypeID_sPCSShareProtectionGetTypeIDSingleton;
}

CFTypeRef PCSIdentitySetCreateMutable(const void **a1)
{
  PCSIdentitySetGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = Instance;
    _PCSIdentitySetInitialize(Instance);
    v3[2] = &PCSIdentitySetMemory;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3[7] = Mutable;
    if (Mutable && (v5 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v3[8] = v5) != 0) && (v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (v3[9] = v6) != 0))
    {
      *(v3 + 88) = 0;
      v7 = CFRetain(v3);
    }

    else
    {
      _PCSErrorOOM(a1);
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    _PCSErrorOOM(a1);
    return 0;
  }

  return v7;
}

uint64_t PCSIdentitySetGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSIdentitySetGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSIdentitySetGetTypeID_sPCSIdentitySetGetTypeIDSingleton;
  if (PCSIdentitySetGetTypeID_sPCSIdentitySetGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSIdentitySetGetTypeID_sPCSIdentitySetGetTypeIDOnce, block);
  }

  return PCSIdentitySetGetTypeID_sPCSIdentitySetGetTypeIDSingleton;
}

uint64_t PCSShareProtectionDestroy(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFDataGetLength(*(a1 + 72));
    CFDataGetMutableBytePtr(v2);
    cc_clear();
    v3 = *(a1 + 72);
    if (v3)
    {
      *(a1 + 72) = 0;
      CFRelease(v3);
    }
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 80) = 0;
    CFRelease(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    *(a1 + 112) = 0;
    CFRelease(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    *(a1 + 88) = 0;
    CFRelease(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 96) = 0;
    CFRelease(v7);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    *(a1 + 104) = 0;
    CFRelease(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFDataGetLength(*(a1 + 64));
    CFDataGetMutableBytePtr(v9);
    cc_clear();
    v10 = *(a1 + 64);
    if (v10)
    {
      *(a1 + 64) = 0;
      CFRelease(v10);
    }
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    *(a1 + 16) = 0;
    CFRelease(v11);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    *(a1 + 40) = 0;
    CFRelease(v12);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    *(a1 + 48) = 0;
    CFRelease(v13);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    *(a1 + 56) = 0;
    CFRelease(v14);
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    *(a1 + 176) = 0;
    CFRelease(v15);
  }

  v16 = *(a1 + 184);
  if (v16)
  {
    *(a1 + 184) = 0;
    CFRelease(v16);
  }

  v17 = *(a1 + 144);
  if (v17)
  {
    *(a1 + 144) = 0;
    CFRelease(v17);
  }

  v18 = *(a1 + 152);
  if (v18)
  {
    *(a1 + 152) = 0;
    CFRelease(v18);
  }

  v19 = *(a1 + 160);
  if (v19)
  {
    *(a1 + 160) = 0;
    CFRelease(v19);
  }

  v20 = *(a1 + 168);
  if (v20)
  {
    *(a1 + 168) = 0;
    CFRelease(v20);
  }

  v21 = *(a1 + 24);
  if (v21)
  {
    *(a1 + 24) = 0;
    CFRelease(v21);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    *(a1 + 32) = 0;
    CFRelease(v22);
  }

  v23 = *(a1 + 192);
  if (v23)
  {
    *(a1 + 192) = 0;
    CFRelease(v23);
  }

  result = free_PCSAttributes(a1 + 128);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

void _PCSIdentitySetInitialize(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x40uLL, "PCSIdentitySet.%p", a1);
  v2 = dispatch_queue_create(__str, 0);
  v3 = a1[3];
  a1[3] = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void PCSIdentitySetDestroy(void *a1)
{
  v2 = a1[3];
  a1[3] = 0;

  v3 = a1[4];
  if (v3)
  {
    a1[4] = 0;
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[5] = 0;
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[6] = 0;
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[9] = 0;
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[7] = 0;
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {
    a1[8] = 0;
    CFRelease(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[10] = 0;

    CFRelease(v9);
  }
}

uint64_t PCSIdentitySetCopySet(uint64_t a1, const void **a2)
{
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    v4 = *(*(a1 + 16) + 168);

    return v4(a1, a2);
  }

  else
  {
    _PCSError(a2, 152, @"Current persona does not match chosen dsid");
    return 0;
  }
}

uint64_t PCSIdentitySetAddIdentity(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    cf = 0;
    v4 = (*(*(a1 + 16) + 40))(a1, a2, &cf);
    if ((v4 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = cf;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSIdentitySetAddIdentity failed with: %@", buf, 0xCu);
    }

    v5 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

CFTypeRef MemoryCopySet(CFDictionaryRef *a1, const void **a2)
{
  PCSIdentitySetGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    _PCSIdentitySetInitialize(Instance);
    v5[2] = &PCSIdentitySetMemory;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1[7]);
    v5[7] = MutableCopy;
    if (MutableCopy && (v7 = CFDictionaryCreateMutableCopy(0, 0, a1[8]), (v5[8] = v7) != 0) && (v8 = CFDictionaryCreateMutableCopy(0, 0, a1[9]), (v5[9] = v8) != 0))
    {
      *(v5 + 88) = 0;
      v9 = CFRetain(v5);
    }

    else
    {
      _PCSErrorOOM(a2);
      v9 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    _PCSErrorOOM(a2);
    return 0;
  }

  return v9;
}

uint64_t PCSServiceItemAllowSyntheticManateeSharing(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PCSServiceItemGetByIndex_block_invoke;
  v4[3] = &unk_1E7B19890;
  v5 = a1;
  v4[4] = &v6;
  PCSServiceItemsIterate(v4);
  v1 = v7[3];
  _Block_object_dispose(&v6, 8);
  if (v1 && *(v1 + 74) == 1)
  {
    v2 = *(v1 + 75) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1B22A4CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PCSIdentityGetPublicKey_cold_1(uint64_t a1, CFStringRef *a2)
{
  v3 = _PCSKeyCopyExportedPublicKey(a1);
  if (v3)
  {
    v4 = v3;
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v4);
    *a2 = _PCSCreateBase64(BytePtr, Length, 0);

    CFRelease(v4);
  }
}

void ShareEntryDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }
}

__CFData *_PCSKeyCopyExportedPublicKey(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 48);
    v11 = ccec_der_export_diversified_pub_size();
    v12 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDataCreateMutable(v12, v13);
    CFDataSetLength(Mutable, v11);
    if (!Mutable)
    {
      return Mutable;
    }

    v16 = a1 + 40;
    v14 = *(a1 + 40);
    v15 = *(v16 + 8);
    CFDataGetMutableBytePtr(Mutable);
    if (ccec_der_export_diversified_pub())
    {
      return Mutable;
    }

    CFRelease(Mutable);
    return 0;
  }

  v4 = *v2;
  v5 = cczp_bitlen() + 7;
  if ((v3 & 2) != 0)
  {
    v17 = v5 >> 3;
    v18 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDataCreateMutable(v18, v19);
    CFDataSetLength(Mutable, v17);
    if (Mutable)
    {
      CFDataGetMutableBytePtr(Mutable);
      ccec_compact_export();
    }
  }

  else
  {
    v6 = v5 >> 2;
    v7 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDataCreateMutable(v7, v8);
    CFDataSetLength(Mutable, v6 | 1);
    CFDataGetMutableBytePtr(Mutable);
    ccec_export_pub();
  }

  return Mutable;
}

CFNumberRef MemorySetCurrentIdentity(uint64_t a1, const void *a2, const void **a3)
{
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }

  if (*(a1 + 88) == 1)
  {
    _PCSError(a3, 107, @"Memory set readonly");
    return 0;
  }

  result = PCSIdentityCopyServiceNumber(a2);
  if (result)
  {
    v7 = result;
    CFDictionarySetValue(*(a1 + 72), result, a2);
    v8 = *(a1 + 56);
    PublicKey = PCSIdentityGetPublicKey(a2);
    CFDictionarySetValue(v8, PublicKey, a2);
    v10 = *(a1 + 64);
    KeyID = PCSIdentityGetKeyID(a2);
    CFDictionarySetValue(v10, KeyID, a2);
    CFRelease(v7);
    return 1;
  }

  return result;
}

const void **_PCSPublicIdentityCreateWithPCSSPKey(unsigned int *a1, const void **a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = PCSKeyCreateWithPCSSPKey(a1, a2);
  if (!v3)
  {
    return 0;
  }

  _PCSPublicIdentityCreateWithKey(v3, a2);
  OUTLINED_FUNCTION_11();
  return a2;
}

BOOL PCSIdentityIsFullManatee(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  ManateeFlags = _PCSIdentityGetManateeFlags(a1, v3);
  if (ManateeFlags)
  {
    free_PCSManateeFlags(v3);
  }

  return ManateeFlags;
}

CFTypeRef PCSKeyCreateWithPCSSPKey(unsigned int *a1, const void **a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1 > 8)
  {
    goto LABEL_20;
  }

  if (((1 << v3) & 0xB) == 0)
  {
    if (((1 << v3) & 0x180) != 0)
    {
      v5 = *(a1 + 2);
      v6 = *(a1 + 3);
      if (ccec_diversified_cp())
      {
        PCSKeyGetTypeID();
        v7 = OUTLINED_FUNCTION_2();
        v2 = v7;
        if (*a1 == 8)
        {
          v8 = 6;
        }

        else
        {
          v8 = 4;
        }

        *(v7 + 32) = v8 | *(v7 + 32) & 0xF8;
        v9 = OUTLINED_FUNCTION_8();
        if (!_PCSKeyAllocateDiversizedKey(v9, v10) || (v11 = *(a1 + 2), v12 = *(a1 + 3), v14 = v2[5], v13 = v2[6], ccec_der_import_diversified_pub()))
        {
          v15 = 0;
LABEL_18:
          CFRelease(v2);
          return v15;
        }

LABEL_17:
        v15 = CFRetain(v2);
        goto LABEL_18;
      }

      return 0;
    }

    if (v3 == 2)
    {
      memset(v20, 0, sizeof(v20));
      v19 = 0;
      v17 = decode_PCSPrivateKey(*(a1 + 3), *(a1 + 2), v20, &v19);
      if (v17)
      {
        _PCSErrorASN1(v2, "decode PCSPrivateKey", v17);
      }

      else
      {
        v2 = PCSKeyCreate(v20, 0, v2);
        free_PCSPrivateKey(v20);
        if (v2)
        {
          goto LABEL_17;
        }
      }

      return 0;
    }

LABEL_20:
    _PCSError(a2, 72, @"unsupported keytype: %d", *a1);
    return 0;
  }

  v16 = CFDataCreateWithBytesNoCopy(0, *(a1 + 3), *(a1 + 2), *MEMORY[0x1E695E498]);
  v15 = v16;
  if (v16)
  {
    PCSKeyCreatePublicWithData(v16, v2);
    OUTLINED_FUNCTION_11();
    if (v2)
    {
      goto LABEL_17;
    }

    return 0;
  }

  return v15;
}

BOOL _PCSIdentityGetManateeFlags(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  for (i = (*(v4 + 1) + 16); *(i - 4) != 3; i += 3)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  v10 = 0;
  v8 = *(i - 1);
  return v8 && decode_PCSManateeFlags(*i, v8, a2, &v10) == 0;
}

BOOL _PCSIdentityIsManatee(uint64_t a1)
{
  result = 1;
  if (!PCSIdentityIsFullManatee(a1))
  {
    v2 = *(a1 + 16);
    if (v2 && (v3 = *(v2 + 16)) != 0)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    NameByIndex = PCSServiceItemGetNameByIndex(v4);
    if (!NameByIndex || (PCSServiceItemTypeIsManatee(NameByIndex) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL PCSCurrentPersonaMatchesDSID(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (PCSSupportsPersonaMultiuser())
  {
    if (v1)
    {
      v2 = objc_autoreleasePoolPush();
      v3 = +[PCSAccountsModel accountForCurrentPersona];
      if (!v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSCurrentPersonaMatchesDSID: account is nil", buf, 2u);
        }

        v13 = 1;
        goto LABEL_33;
      }

      v4 = +[PCSAccountsModel defaultAccountsModel];
      v5 = [v4 store];

      if (!v5)
      {
        v5 = [MEMORY[0x1E6959A48] defaultStore];
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = [v5 aa_appleAccounts];
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v7)
      {
        v25 = v2;
        v8 = *v27;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v27 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v26 + 1) + 8 * i);
            v11 = [v10 aa_personID];
            v12 = [v1 isEqualToString:v11];

            if (v12)
            {
              v7 = v10;
              goto LABEL_19;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

LABEL_19:
        v2 = v25;
      }

      v14 = [v3 aa_personID];
      v15 = [v14 isEqualToString:v1];

      if (v15)
      {
        v13 = 1;
LABEL_32:

LABEL_33:
        objc_autoreleasePoolPop(v2);
        goto LABEL_34;
      }

      v16 = [MEMORY[0x1E69DF078] currentPersona];
      v17 = [v7 personaIdentifier];
      v18 = [v16 generateAndRestorePersonaContextWithPersonaUniqueString:v17];

      v13 = v18 == 0;
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v19)
        {
          *buf = 138412290;
          v31 = v18;
          v20 = MEMORY[0x1E69E9C10];
          v21 = "generateAndRestorePersonaContextWithPersonaUniqueString failed with: %@";
          v22 = 12;
LABEL_30:
          _os_log_impl(&dword_1B229C000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
        }
      }

      else if (v19)
      {
        *buf = 0;
        v20 = MEMORY[0x1E69E9C10];
        v21 = "generateAndRestorePersonaContextWithPersonaUniqueString succeeded!";
        v22 = 2;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSCurrentPersonaMatchesDSID: dsid is nil", buf, 2u);
    }
  }

  v13 = 1;
LABEL_34:

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t ccec_diversified_cp()
{
  ccder_decode_constructed_tl();
  result = ccder_decode_tl();
  if (result)
  {
    result = ccder_decode_tl();
    if (result)
    {
      if (ccec_x963_import_pub_size())
      {
        return ccec_get_cp();
      }

      result = ccec_compact_import_pub_size();
      if (result)
      {
        return ccec_get_cp();
      }
    }
  }

  return result;
}

void *CopyPublicKeyFromData(uint64_t a1, uint64_t a2, BOOL *a3, const void **a4)
{
  v8 = ccec_x963_import_pub_size();
  v9 = v8;
  if (v8 || (v9 = ccec_compact_import_pub_size()) != 0)
  {
    if (!ccec_keysize_is_supported())
    {
      _PCSError(a4, 32, @"Key size %zd unsupported", v9);
      return 0;
    }

    cp = ccec_get_cp();
    v9 = malloc_type_calloc(1uLL, 24 * *cp + 16, 0x60040B37CB4BBuLL);
    if (v9)
    {
      if (v8)
      {
        if (MEMORY[0x1B2744B60](cp, a2, a1, v9))
        {
          _PCSError(a4, 33, @"Failed to import public key");
LABEL_15:
          free(v9);
          return 0;
        }
      }

      else if (ccec_compact_import_pub())
      {
        _PCSError(a4, 33, @"Failed to import compact public key");
        goto LABEL_15;
      }

      if (a3)
      {
        *a3 = v8 == 0;
      }
    }

    else
    {
      _PCSErrorOOM(a4);
    }
  }

  return v9;
}

void _PCSIdentitySetSetPersonaIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___PCSIdentitySetSetPersonaIdentifier_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void OUTLINED_FUNCTION_11()
{

  CFRelease(v0);
}

CFTypeRef _PCSPublicIdentityCreateWithKey(const void *a1, const void **a2)
{
  if (a1)
  {
    PCSPublicIdentityGetTypeID();
    v4 = OUTLINED_FUNCTION_4();
    if (v4)
    {
      v5 = v4;
      v4[2] = 0;
      v4[4] = 0;
      v4[5] = 0;
      v4[3] = CFRetain(a1);
      v6 = CFRetain(v5);
      CFRelease(v5);
      return v6;
    }

    _PCSErrorOOM(a2);
  }

  return 0;
}

uint64_t PCSPublicIdentityGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PCSPublicIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &PCSPublicIdentityGetTypeID_sPCSPublicIdentityGetTypeIDSingleton;
  if (PCSPublicIdentityGetTypeID_sPCSPublicIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSPublicIdentityGetTypeID_sPCSPublicIdentityGetTypeIDOnce, block);
  }

  return PCSPublicIdentityGetTypeID_sPCSPublicIdentityGetTypeIDSingleton;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return _CFRuntimeCreateInstance();
}

CFNumberRef OUTLINED_FUNCTION_4_1()
{
  *(v0 - 52) += 0x10000;

  return CFNumberCreate(0, kCFNumberIntType, (v0 - 52));
}

uint64_t *OUTLINED_FUNCTION_4_3@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t ValidateSignature(uint64_t a1, const __CFData *a2, const __CFData *a3, void *a4, uint64_t *a5, const __CFArray *a6, const UInt8 *a7, unsigned int *a8, unsigned int *a9, char a10, void *a11, void *a12, const void **a13)
{
  v163 = a6;
  v166 = a2;
  v167 = a3;
  v169 = a9;
  v174 = a13;
  v193 = *MEMORY[0x1E69E9840];
  v18 = a12;
  v19 = a1;
  v22 = *(a1 + 176);
  v21 = (a1 + 176);
  ServiceID = v22;
  v164 = v21;
  if (!v22)
  {
    v26 = 0;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v27 = a7 == 0;
    v185 = 0u;
    v28 = v19;
    if (a5)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

  v23 = a8;
  v24 = a4;
  IsManatee = _PCSIdentityIsManatee(ServiceID);
  v26 = _PCSIdentityRequireManateeSigning(*v21);
  ServiceID = *v21;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v27 = a7 == 0;
  v191 = 0u;
  v28 = v19;
  if (!ServiceID || a7 || !IsManatee)
  {
    a4 = v24;
    a8 = v23;
    if (a5)
    {
      goto LABEL_9;
    }

LABEL_46:
    v30 = v169;
    if (!v27)
    {
      _PCSError(v174, 16, @"Author signature exists, but no self signature");
      goto LABEL_55;
    }

    if (v26)
    {
      if (!ServiceID)
      {
LABEL_50:
        _PCSError(v174, 16, @"Author signature or server signature required for service: %d", ServiceID);
        goto LABEL_55;
      }

LABEL_49:
      ServiceID = PCSIdentityGetServiceID(ServiceID);
      goto LABEL_50;
    }

    v172 = 0;
    v29 = 0;
LABEL_159:
    v175 = 0;
    v176 = 0;
    if (makeHmac(v28, v166, v167, a5, &v175))
    {
      if (*a4 == v175)
      {
        v145 = a4[1];
        v146 = v176;
        v147 = cc_cmp_safe();
        free(v146);
        if (!v147)
        {
          v78 = 0;
          v79 = 1;
          if (!v29)
          {
            goto LABEL_172;
          }

          goto LABEL_163;
        }

        _PCSError(v174, 38, @"HMAC doesn't match");
      }

      else
      {
        free(v176);
      }
    }

    v78 = 0;
    v79 = 0;
    if (!v29)
    {
      goto LABEL_172;
    }

    goto LABEL_163;
  }

  v27 = 1;
  *(v19 + 212) = 1;
  a4 = v24;
  a8 = v23;
  if (!a5)
  {
    if (!v26)
    {
      v172 = 0;
      v29 = 0;
      v30 = v169;
      goto LABEL_159;
    }

    goto LABEL_49;
  }

LABEL_9:
  LODWORD(v165) = v27;
  v184 = 0;
  v31 = decode_PCSObjectSignature(a5[1], *a5, &v185, &v184);
  if (v31)
  {
    _PCSErrorASN1(v174, "decode PCSObjectSignature", v31);
    goto LABEL_55;
  }

  if (*a5 != v184)
  {
    _PCSError(v174, 16, @"Signature of wrong length");
    goto LABEL_55;
  }

  if (*(&v191 + 1) && copy_PCSAttributes())
  {
    _PCSErrorOOM(v174);
    goto LABEL_55;
  }

  v32 = _PCSSignAlgToDI(WORD4(v188), v174);
  if (!v32)
  {
LABEL_55:
    free_PCSObjectSignature(&v185);
    v79 = 0;
    goto LABEL_181;
  }

  v159 = a4;
  v160 = a7;
  v158 = a5;
  v33 = *v32;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v170 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v34;
  _PCSMakeDigest(v34, v166, v167, &v185, v170);
  v30 = v169;
  if ((*(v28 + 209) & 1) == 0)
  {
    ObjectKey = getObjectKey(v28);
    if (!ObjectKey)
    {
      _PCSError(v174, 48, @"No verification key");
      goto LABEL_170;
    }

    if ((*(v28 + 204) - 4) <= 0xFFFFFFFD)
    {
      ValidateSignature_cold_1(ObjectKey, v44, v45, v46, v47, v48, v49, v50);
    }

    if (!_PCSVerifyHash(ObjectKey, WORD4(v188), *v171, v170, &v187 + 8, v174))
    {
      v78 = 0;
      v172 = 0;
      v165 = 0;
      goto LABEL_155;
    }
  }

  v114 = (BYTE4(v185) & 3) == 0;
  *(v28 + 214) = (BYTE4(v185) & 3) != 0;
  v51 = v165;
  if (v114)
  {
    v51 = 0;
  }

  v161 = &v156;
  if (v51 != 1)
  {
    v172 = 0;
    if (!a8)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  if (!v30 || (_PCSIdentitySupportsServerSigning(*v164) & 1) == 0)
  {
    ValidateSignature_cold_3(v164, v174);
LABEL_170:
    v172 = 0;
    goto LABEL_171;
  }

  v156 = a8;
  Count = v18;
  v173 = [MEMORY[0x1E695DF90] dictionary];
  v172 = malloc_type_calloc(*v30, 0x28uLL, 0x1080040EC46ECBEuLL);
  v52 = *v30;
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    v157 = *MEMORY[0x1E695E480];
    v55 = v172;
    do
    {
      v56 = *(v30 + 1);
      if (*(v56 + v53) == 12)
      {
        v58 = *(v56 + v53 + 8);
        v57 = *(v56 + v53 + 16);
        *&v178 = 0;
        if (!decode_PCSSignature(v57, v58, v55, &v178))
        {
          v59 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v55[1] length:*v55];
          v60 = v28;
          v61 = v59;
          v62 = v60;
          Mutable = *(v60 + 192);
          if (Mutable || (Mutable = CFArrayCreateMutable(v157, 0, MEMORY[0x1E695E9C0]), (*(v62 + 192) = Mutable) != 0))
          {
            CFArrayAppendValue(Mutable, v61);
          }

          v64 = [MEMORY[0x1E696AD98] numberWithInt:v54];
          [v173 setObject:v64 forKeyedSubscript:v61];

          v28 = v62;
        }

        v52 = *v30;
      }

      ++v54;
      v55 += 5;
      v53 += 24;
    }

    while (v54 < v52);
  }

  v162 = v28;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v65 = [v173 allKeys];
  v66 = [v65 countByEnumeratingWithState:&v180 objects:v192 count:16];
  v18 = Count;
  if (!v66)
  {
    goto LABEL_42;
  }

  v67 = v66;
  v68 = *v181;
LABEL_35:
  v69 = 0;
  while (1)
  {
    if (*v181 != v68)
    {
      objc_enumerationMutation(v65);
    }

    v70 = *(*(&v180 + 1) + 8 * v69);
    v71 = [v173 objectForKey:v70];
    if ([TrustEvaluator validatePublicKey:v70 trustRefs:v18])
    {
      PublicWithData = PCSKeyCreatePublicWithData(v70, 0);
      v73 = WORD4(v188);
      v74 = *v171;
      v75 = [v71 intValue];
      v76 = v74;
      v18 = Count;
      if (_PCSVerifyHash(PublicWithData, v73, v76, v170, &v172[5 * v75], v174))
      {
        break;
      }
    }

    if (v67 == ++v69)
    {
      v67 = [v65 countByEnumeratingWithState:&v180 objects:v192 count:16];
      if (!v67)
      {
LABEL_42:

        v77 = *v164;
        if (*v164)
        {
          v77 = PCSIdentityGetServiceID(v77);
        }

        _PCSError(v174, 161, @"Unable to find a valid server signature for service: %d", v77);

        v30 = v169;
        goto LABEL_171;
      }

      goto LABEL_35;
    }
  }

  v30 = v169;
  v28 = v162;
  a8 = v156;
  if (v156)
  {
LABEL_57:
    v80 = *a8;
    if (v80)
    {
      v81 = 0;
      for (i = 0; i < v80; ++i)
      {
        v83 = *(a8 + 1);
        if (*(v83 + v81) == 9)
        {
          v85 = *(v83 + v81 + 8);
          v84 = *(v83 + v81 + 16);
          v178 = 0u;
          v179 = 0u;
          v177 = 0;
          v86 = decode_PCSSPKey(v84, v85, &v178, &v177);
          if (v86)
          {
            _PCSErrorASN1(v174, "decode PCSSPKey", v86);
            goto LABEL_171;
          }

          v87 = _PCSPublicIdentityCreateWithPCSSPKey(&v178, v174);
          v88 = v87;
          *(v28 + 160) = v87;
          if (v87)
          {
            CFRetain(v87);
          }

          *(v28 + 168) = v88;
          free_PCSSPKey(&v178);
          v80 = *a8;
        }

        v81 += 24;
      }
    }
  }

LABEL_65:
  v173 = a11;
  v89 = v160;
  v90 = v163;
  if (v165)
  {
    goto LABEL_97;
  }

  v91 = v173;
  if (v173 && (*(v28 + 214) & 1) != 0)
  {
    *&v178 = 0;
    Key = _PCSPublicIdentityGetKey(v173);
    if (_PCSVerifyHash(Key, WORD4(v188), *v171, v170, v89, &v178))
    {
      v93 = CFRetain(v91);
      goto LABEL_79;
    }

    v94 = v178;
    if (v178)
    {
      *&v178 = 0;
      CFRelease(v94);
    }
  }

  if (*(v28 + 204) != 2)
  {
    Count = CFArrayGetCount(v90);
    if (Count < 1)
    {
LABEL_95:
      if (!*(v28 + 152))
      {
        _PCSError(v174, 54, @"Couldn't find validation identity.");
        if (!*(v28 + 152))
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      v98 = 0;
      while (!*(v28 + 152))
      {
        v99 = a8;
        ValueAtIndex = CFArrayGetValueAtIndex(v90, v98);
        *&v178 = 0;
        v101 = _PCSPublicIdentityGetKey(ValueAtIndex);
        v102 = _PCSKeyCopyExportedPublicKey(v101);
        v103 = v102;
        if (v102)
        {
          if (CFDataGetLength(v102) == *v89)
          {
            BytePtr = CFDataGetBytePtr(v103);
            if (!memcmp(BytePtr, *(v89 + 8), *v89) && (*(v28 + 214) != 1 || _PCSVerifyHash(v101, WORD4(v188), *v171, v170, v89, &v178)))
            {
              *(v28 + 152) = CFRetain(ValueAtIndex);
            }
          }
        }

        v105 = v178;
        if (v178)
        {
          *&v178 = 0;
          CFRelease(v105);
        }

        if (v103)
        {
          CFRelease(v103);
        }

        ++v98;
        a8 = v99;
        if (Count == v98)
        {
          goto LABEL_95;
        }
      }
    }

    goto LABEL_97;
  }

  v95 = v164;
  v96 = *v164;
  if (!*v164)
  {
    ValidateSignature_cold_2(0, v36, v37, v38, v39, v40, v41, v42);
  }

  if (*(v28 + 214) == 1)
  {
    v97 = _PCSIdentityGetKey(v96);
    if (!_PCSVerifyHash(v97, WORD4(v188), *v171, v170, v89, v174))
    {
LABEL_80:
      v30 = v169;
      goto LABEL_171;
    }

    v96 = *v95;
  }

  v93 = PCSIdentityCopyPublicIdentity(v96);
LABEL_79:
  *(v28 + 152) = v93;
  if (!v93)
  {
    goto LABEL_80;
  }

LABEL_97:
  if (v173)
  {
    *(v28 + 168) = CFRetain(v173);
  }

  *(v28 + 120) = v185;
  v30 = v169;
  if (v191 && *v191)
  {
    v106 = _PCSCreateBase64(*(*(v191 + 8) + 24), *(*(v191 + 8) + 16), 0);
    if (!v106)
    {
      _PCSErrorOOM(v174);
      goto LABEL_171;
    }

    v107 = v106;
    v108 = PCSIdentitySetCopyIdentity(*(v28 + 16), v106);
    CFRelease(v107);
    if (!v108)
    {
LABEL_171:
      v79 = 0;
      v78 = 0;
      goto LABEL_172;
    }

    PCSIdentitySetSetCurrentIdentity(*(v28 + 16), v108);
    CFRelease(v108);
  }

  v29 = 0;
  if (!a8 || !a10)
  {
    goto LABEL_158;
  }

  v109 = *a8;
  if (!v109)
  {
    v29 = 0;
LABEL_158:
    a5 = v158;
    a4 = v159;
    goto LABEL_159;
  }

  Count = v18;
  v110 = 0;
  v29 = 0;
  v111 = 0;
  v173 = 0;
  v164 = *MEMORY[0x1E695E498];
  v162 = v28;
  while (1)
  {
    v112 = *(a8 + 1) + 24 * v110;
    v113 = *v112;
    v114 = *v112 == 11 || v113 == 8;
    if (!v114)
    {
      goto LABEL_149;
    }

    if (!v30)
    {
      v165 = v29;
      _PCSError(v174, 140, @"require pppcs signature, but no unsigned attributes are present");
LABEL_196:
      v78 = 0;
      goto LABEL_153;
    }

    if ((v111 & 1) == 0)
    {
      break;
    }

    v111 = 1;
LABEL_149:
    if (++v110 >= v109)
    {

      v18 = Count;
      goto LABEL_158;
    }
  }

  Length = *(v112 + 8);
  v115 = *(v112 + 16);
  if (v173)
  {
LABEL_134:
    v165 = v29;
    if (v113 == 11)
    {
      v78 = CFDataCreateWithBytesNoCopy(0, v115, Length, v164);
      if (!v78)
      {
        goto LABEL_153;
      }

      v133 = CFDataCreate(0, "PCSSignatureKeyIDEncryption", 27);
      v134 = PCSFPCopyDecryptedData(v28, 0, v133, v78, v174);
      if (v133)
      {
        CFRelease(v133);
      }

      CFRelease(v78);
      if (!v134)
      {
        goto LABEL_196;
      }

      v115 = CFDataGetBytePtr(v134);
      Length = CFDataGetLength(v134);
    }

    else
    {
      v134 = 0;
    }

    v178 = 0u;
    v179 = 0u;
    v177 = 0;
    v135 = decode_PCSSPKey(v115, Length, &v178, &v177);
    if (v134)
    {
      CFRelease(v134);
    }

    if (v135)
    {
      _PCSErrorASN1(v174, "decode PCSSPKey", v135);
      goto LABEL_196;
    }

    v78 = _PCSPublicIdentityCreateWithPCSSPKey(&v178, v174);
    free_PCSSPKey(&v178);
    if (!v78)
    {
      goto LABEL_196;
    }

    v136 = a8;
    v137 = _PCSPublicIdentityGetKey(v78);
    v138 = _PCSKeyCopyExportedPublicKey(v137);
    if (!v138)
    {
      goto LABEL_153;
    }

    v139 = v138;
    v140 = [v173 objectForKey:v138];
    if (!v140)
    {
      _PCSError(v174, 140, @"did not find pppcs signature for key: %@", v139);
LABEL_152:

LABEL_153:
      v18 = Count;
      goto LABEL_154;
    }

    v141 = v140;
    v142 = WORD4(v188);
    v143 = *v171;
    v144 = [v140 intValue];
    if (!_PCSVerifyHash(v137, v142, v143, v170, v165 + 40 * v144, v174))
    {

      goto LABEL_152;
    }

    CFRelease(v78);

    a8 = v136;
    v109 = *v136;
    v111 = 1;
    v28 = v162;
    v29 = v165;
    goto LABEL_149;
  }

  LODWORD(v163) = *v112;
  v29 = malloc_type_calloc(*v30, 0x28uLL, 0x1080040EC46ECBEuLL);
  v173 = [MEMORY[0x1E695DF90] dictionary];
  v117 = *v30;
  if (!v117)
  {
LABEL_133:
    v113 = v163;
    goto LABEL_134;
  }

  v157 = Length;
  v160 = v115;
  v118 = v29;
  v119 = a8;
  v120 = 0;
  v121 = 0;
  v165 = v118;
  v122 = v118;
  while (1)
  {
    v123 = *(v169 + 1) + v120;
    v124 = *(v123 + 8);
    v125 = *(v123 + 16);
    if (*v123 == 7)
    {
      v129 = 0;
      goto LABEL_127;
    }

    if (*v123 == 10)
    {
      break;
    }

LABEL_131:
    ++v121;
    v122 += 5;
    v120 += 24;
    if (v121 >= v117)
    {
      v30 = v169;
      v28 = v162;
      a8 = v119;
      v29 = v165;
      v115 = v160;
      Length = v157;
      goto LABEL_133;
    }
  }

  v126 = CFDataCreateWithBytesNoCopy(0, *(v123 + 16), v124, v164);
  if (!v126)
  {
    goto LABEL_184;
  }

  v127 = v126;
  v128 = CFDataCreate(0, "PCSSignatureEncryption", 22);
  v129 = PCSFPCopyDecryptedData(v162, 0, v128, v127, v174);
  if (v128)
  {
    CFRelease(v128);
  }

  CFRelease(v127);
  if (!v129)
  {
    goto LABEL_184;
  }

  v125 = CFDataGetBytePtr(v129);
  v124 = CFDataGetLength(v129);
LABEL_127:
  *&v178 = 0;
  v130 = decode_PCSSignature(v125, v124, v122, &v178);
  if (v129)
  {
    CFRelease(v129);
  }

  if (!v130)
  {
    v131 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v122[1] length:*v122];
    v132 = [MEMORY[0x1E696AD98] numberWithInt:v121];
    [v173 setObject:v132 forKeyedSubscript:v131];

    v117 = *v169;
    goto LABEL_131;
  }

  _PCSErrorASN1(v174, "decode PCSSignature", v130);
LABEL_184:
  v78 = 0;
  v18 = Count;
  v30 = v169;
LABEL_154:

LABEL_155:
  v79 = 0;
  v29 = v165;
  if (v165)
  {
LABEL_163:
    v148 = *v30;
    if (v148)
    {
      v149 = 0;
      v150 = v29;
      do
      {
        if (*(v150 + 24))
        {
          free_PCSSignature(v150);
          v148 = *v30;
        }

        v150 += 40;
        ++v149;
      }

      while (v149 < v148);
    }

    free(v29);
  }

LABEL_172:
  if (v172)
  {
    v151 = *v30;
    if (v151)
    {
      v152 = 0;
      v153 = v172;
      do
      {
        if (v153[3])
        {
          free_PCSSignature(v153);
          v151 = *v30;
        }

        v153 += 5;
        ++v152;
      }

      while (v152 < v151);
    }

    free(v172);
  }

  free_PCSObjectSignature(&v185);
  if (v78)
  {
    CFRelease(v78);
  }

LABEL_181:

  v154 = *MEMORY[0x1E69E9840];
  return v79;
}

uint64_t ShareEntryCreate(const void *a1, int a2)
{
  ShareEntryGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFRetain(a1);
    *(Instance + 24) = a2;
  }

  return Instance;
}

uint64_t ShareEntryGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ShareEntryGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &ShareEntryGetTypeID_sShareEntryGetTypeIDSingleton;
  if (ShareEntryGetTypeID_sShareEntryGetTypeIDOnce != -1)
  {
    dispatch_once(&ShareEntryGetTypeID_sShareEntryGetTypeIDOnce, block);
  }

  return ShareEntryGetTypeID_sShareEntryGetTypeIDSingleton;
}

uint64_t PCSIdentitySetCopyIdentity(uint64_t a1, uint64_t a2)
{
  if (!PCSCurrentPersonaMatchesDSIDFromSet(a1))
  {
    return 0;
  }

  return PCSIdentitySetCopyIdentityWithError(a1, a2, 0);
}

void PCSPublicIdentityGetPublicID_cold_1(uint64_t a1, CFStringRef *a2)
{
  v3 = PCSKeyCopyExportedPublicKey(a1);
  if (v3)
  {
    v4 = v3;
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v4);
    *a2 = _PCSCreateBase64(BytePtr, Length, 0);

    CFRelease(v4);
  }
}

uint64_t PCSIdentitySetSetCurrentIdentity(uint64_t a1, uint64_t a2)
{
  result = PCSCurrentPersonaMatchesDSIDFromSet(a1);
  if (result)
  {
    v5 = *(*(a1 + 16) + 56);

    return v5(a1, a2, 0);
  }

  return result;
}

CFDataRef PCSKeyCopyExportedPublicKey(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(v2 + 16);

    return CFDataCreate(0, v4, v3);
  }

  else
  {
    v6 = *(a1 + 32);
    if ((v6 & 4) != 0)
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = ccec_der_export_diversified_pub_size();
      v17 = OUTLINED_FUNCTION_0_1();
      Mutable = CFDataCreateMutable(v17, v18);
      CFDataSetLength(Mutable, v16);
      if (Mutable)
      {
        v21 = a1 + 40;
        v19 = *(a1 + 40);
        v20 = *(v21 + 8);
        CFDataGetMutableBytePtr(Mutable);
        if (!ccec_der_export_diversified_pub())
        {
          CFRelease(Mutable);
          return 0;
        }
      }
    }

    else
    {
      v7 = **(a1 + 40);
      v8 = cczp_bitlen() + 7;
      if ((v6 & 2) != 0)
      {
        v22 = v8 >> 3;
        v23 = OUTLINED_FUNCTION_0_1();
        Mutable = CFDataCreateMutable(v23, v24);
        CFDataSetLength(Mutable, v22);
        if (Mutable)
        {
          CFDataGetMutableBytePtr(Mutable);
          v25 = *(a1 + 40);
          ccec_compact_export();
        }
      }

      else
      {
        v9 = v8 >> 2;
        v10 = OUTLINED_FUNCTION_0_1();
        Mutable = CFDataCreateMutable(v10, v11);
        CFDataSetLength(Mutable, v9 | 1);
        if (Mutable)
        {
          v13 = *(a1 + 40);
          CFDataGetMutableBytePtr(Mutable);
          ccec_export_pub();
        }
      }
    }

    return Mutable;
  }
}

CFStringRef PCSPublicIdentityGetPublicID(uint64_t a1)
{
  v1 = (a1 + 16);
  if (!*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        *v1 = _PCSCreateBase64(*(v3 + 16), *(v3 + 8), 0);
      }

      else
      {
        PCSPublicIdentityGetPublicID_cold_1(v2, v1);
      }
    }
  }

  return *v1;
}

BOOL _PCSPublicIdentityIsDiversified(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if ((*(v1 + 32) & 4) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

CFTypeRef PCSObjectCreateFromExportedWithKeyedPCSAndOptions(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    return OUTLINED_FUNCTION_0_2(a3, v7, *(a1 + 168), *(a1 + 200), 0, 0, a7, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_3_0();
  }
}

__CFData *_PCSKeyCopyUnwrappedData(uint64_t a1, const __CFData *a2, const void **a3)
{
  if (*(a1 + 32))
  {
    v7 = PCSMeasureRelativeNanoTime();
    ++qword_1ED6F2650;
    v8 = _CopyECPGPUnwrappedData(a1, a2, a3);
    qword_1ED6F2658 += PCSMeasureRelativeNanoTime() - v7;
    return v8;
  }

  else
  {
    _PCSError(a3, 40, @"Identity not a full identity");
    return 0;
  }
}

__CFData *_PCSIdentityCopyUnwappedKey(uint64_t a1, const __CFData *a2, const void **a3)
{
  result = *(a1 + 16);
  if (result)
  {
    return _PCSKeyCopyUnwrappedData(result, a2, a3);
  }

  return result;
}

__CFData *_CopyECPGPUnwrappedData(uint64_t a1, CFDataRef theData, const void **a3)
{
  v6 = CFDataGetLength(theData);
  length = v6;
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(a1 + 40);
  v9 = OUTLINED_FUNCTION_0_1();
  Mutable = CFDataCreateMutable(v9, v10);
  CFDataSetLength(Mutable, v7);
  if (Mutable)
  {
    CFDataGetMutableBytePtr(Mutable);
    CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(theData);
    v12 = ccec_rfc6637_unwrap_key();
    if (v12)
    {
      _PCSError(a3, 13, @"unwrap failed with %d", v12, BytePtr, length);
    }

    CFRelease(Mutable);
    return 0;
  }

  _PCSErrorOOM(a3);
  return Mutable;
}

CFDataRef generateObjectKey(void *a1, const __CFData *a2, int a3)
{
  v6 = a1[13];
  if (v6)
  {
    a1[13] = 0;
    CFRelease(v6);
  }

  if (a3)
  {
    getObjectKey(a1);
    a1[13] = a1[11];
    a1[11] = 0;
  }

  else
  {
    v7 = a1[11];
    if (v7)
    {
      a1[11] = 0;
      CFRelease(v7);
    }
  }

  result = CFDataCreateCopy(0, a2);
  a1[12] = result;
  return result;
}

const void *_PCSIdentitySetCopyCurrentIdentityInternal(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = __PCSIdentitySetCopyCurrentIdentityPointerInternal(a1, a2, a3);
  v4 = [v3 identity];
  v5 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  return v5;
}

CFTypeRef MemoryCopyIdentity(uint64_t a1, const void *a2, const void **a3)
{
  if ((PCSCurrentPersonaMatchesDSIDFromSet(a1) & 1) == 0)
  {
    _PCSError(a3, 152, @"Current persona does not match chosen dsid");
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 56), a2);
  if (!Value)
  {
    _PCSError(a3, 27, @"service %@ not found", a2);
    return 0;
  }

  v7 = Value;
  v8 = *(a1 + 32);
  if (v8)
  {
    IndexByName = PCSServiceItemGetIndexByName(v8);
    if (IndexByName != PCSIdentityGetServiceID(v7))
    {
      return 0;
    }
  }

  return CFRetain(v7);
}

PCSCurrentIdentity *MemoryCopyCurrentIdentity(uint64_t a1, uint64_t a2, const void **a3)
{
  OUTLINED_FUNCTION_3_1();
  if (PCSCurrentPersonaMatchesDSIDFromSet(v6))
  {
    if (v3 || (v3 = *(v4 + 32)) != 0)
    {
      NumberByName = PCSServiceItemGetNumberByName(v3);
      if (!NumberByName)
      {
        goto LABEL_9;
      }

      Value = CFDictionaryGetValue(*(v4 + 72), NumberByName);
      if (Value)
      {
        NumberByName = [[PCSCurrentIdentity alloc] initWithIdentity:Value currentItemPointerModificationTime:0];
        goto LABEL_9;
      }

      v13 = v3;
      v9 = @"Identity of service type %@ missing in memory keyset";
    }

    else
    {
      v9 = @"service missing";
    }

    v10 = a3;
    v11 = 27;
  }

  else
  {
    v9 = @"Current persona does not match chosen dsid";
    v10 = a3;
    v11 = 152;
  }

  _PCSError(v10, v11, v9, v13);
  NumberByName = 0;
LABEL_9:

  return NumberByName;
}

const void *PCSServiceItemGetNumberByName(const void *key)
{
  if (key)
  {
    v1 = key;
    if (PCSServiceItemsInit_once != -1)
    {
      PCSServiceItemsCount_cold_1();
    }

    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    Value = CFDictionaryGetValue(PCSServiceItemsInit_localServiceItems, v1);
    v2 = v5[3];
    if (v2)
    {
      _Block_object_dispose(&v4, 8);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __PCSServiceItemGetByName_block_invoke;
      v3[3] = &unk_1E7B198E0;
      v3[4] = &v4;
      v3[5] = v1;
      PCSServiceItemsIterate(v3);
      v2 = v5[3];
      _Block_object_dispose(&v4, 8);
      if (!v2)
      {
        return 0;
      }
    }

    return *(v2 + 32);
  }

  return key;
}

void sub_1B22A73A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFData *CreateKeyIDFromKey(const __CFData *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ccsha256_di();
  if (_PCSCreateDerivedKey(a1, 20, &_MergedGlobals, 0x10uLL, &v9, 0))
  {
    v3 = *v2;
    v4 = OUTLINED_FUNCTION_0_1();
    Mutable = CFDataCreateMutable(v4, v5);
    CFDataSetLength(Mutable, v3);
    if (Mutable)
    {
      CFDataGetMutableBytePtr(Mutable);
      cchmac();
    }
  }

  else
  {
    Mutable = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return Mutable;
}

BOOL _PCSCreateDerivedKey(const __CFData *a1, int a2, int a3, unint64_t a4, int a5, const void **a6)
{
  if (a4 >= 0x41)
  {
    _PCSError(a6, 17, @"Derivation to sizes larger than %d not supported (%d requested)", 64, a4);
  }

  else
  {
    ccsha256_di();
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccnistkdf_ctr_hmac();
  }

  return a4 < 0x41;
}

__CFData *PCSFPCopyDecryptedData(uint64_t a1, const void *a2, const __CFData *a3, CFTypeRef cf, const void **a5)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  if (!a1)
  {
    _PCSError(a5, 128, @"DecryptedData sp argument NULL");
    goto LABEL_16;
  }

  if (!cf || (v10 = CFGetTypeID(cf), TypeID = CFDataGetTypeID(), v10 != TypeID))
  {
    _PCSError(a5, 126, @"DecryptedData cryptotext argument not CFData");
    goto LABEL_16;
  }

  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(TypeID, v12, v13, v14, v15, v16, v17, v18);
  }

  Value = *(a1 + 72);
  if (!Value)
  {
    _PCSError(a5, 25, @"can't decrypt object w/o masterkey");
    goto LABEL_16;
  }

  if (!a2)
  {
LABEL_9:
    v20 = PCSFPCopyDecryptedDataWithKey(Value, a3, cf, a5);
    goto LABEL_10;
  }

  if (CFEqual(a2, *(a1 + 80)))
  {
    Value = *(a1 + 72);
    goto LABEL_9;
  }

  if (CFDataGetLength(a2) > 4)
  {
    Value = CFDictionaryGetValue(*(a1 + 112), a2);
    if (Value)
    {
      goto LABEL_9;
    }

    _PCSError(a5, 11, @"Failed to find master key of id %@", a2);
LABEL_16:
    v20 = 0;
    goto LABEL_10;
  }

  v20 = PCSFPCopyDecryptedDataWithKey(*(a1 + 72), a3, cf, a5);
  v26[3] = v20;
  if (!v20)
  {
    Length = CFDataGetLength(a2);
    v23 = *(a1 + 112);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __PCSFPCopyDecryptedData_block_invoke;
    context[3] = &unk_1E7B18AD0;
    context[4] = &v25;
    context[5] = Length;
    context[6] = a2;
    context[7] = a5;
    context[8] = a3;
    context[9] = cf;
    CFDictionaryApplyFunction(v23, apply_block_2, context);
    v20 = v26[3];
  }

LABEL_10:
  _Block_object_dispose(&v25, 8);
  return v20;
}

__CFData *PCSFPCopyDecryptedDataWithKey(const __CFData *a1, const __CFData *a2, const __CFData *a3, const void **a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = ccaes_gcm_decrypt_mode();
  v9 = (*v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  Length = CFDataGetLength(a3);
  if (!_PCSCreateDerivedKey(a1, 20, &encryptionKeyLabel, 0x10uLL, &v28, 0))
  {
    goto LABEL_41;
  }

  ccgcm_init();
  BytePtr = CFDataGetBytePtr(a3);
  v12 = BytePtr;
  if (Length < 1)
  {
    if (BytePtr)
    {
      goto LABEL_30;
    }

LABEL_41:
    v28 = 0;
    v29 = 0;
    if (!a4)
    {
LABEL_38:
      Mutable = 0;
      goto LABEL_39;
    }

LABEL_36:
    if (!*a4)
    {
      _PCSError(a4, -50, @"Failure with no CFError, made this one up.");
    }

    goto LABEL_38;
  }

  v13 = *BytePtr;
  if (*BytePtr <= 1u)
  {
    if (!*BytePtr)
    {
      if ((_PCSIsInternalRelease() & 1) == 0)
      {
        _PCSError(a4, 43, @"Version 0 encrypted data only support on internal releases");
        goto LABEL_30;
      }

      v26 = a4;
      v27 = a2;
      v14 = 0;
      v13 = 0;
      v15 = 8;
      goto LABEL_18;
    }

    if (v13 != 1)
    {
LABEL_29:
      _PCSError(a4, 43, @"Unsupported crypto data version: %u", *BytePtr);
LABEL_30:
      v19 = 0;
      Mutable = 0;
      goto LABEL_31;
    }

    v26 = a4;
    v27 = a2;
    v14 = 0;
    v13 = 0;
LABEL_13:
    v15 = 12;
    goto LABEL_18;
  }

  if (v13 == 2)
  {
    v26 = a4;
    v27 = a2;
    v14 = 0;
    goto LABEL_13;
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      if (Length > 5)
      {
        v26 = a4;
        v27 = a2;
        v14 = BytePtr[5] + 1;
        v15 = 12;
        v13 = 4;
        goto LABEL_18;
      }

LABEL_46:
      v23 = @"Crypto text too short for header";
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  if (Length <= 3)
  {
    goto LABEL_46;
  }

  v26 = a4;
  v27 = a2;
  v14 = BytePtr[3] + 1;
  v15 = 12;
  v13 = 2;
LABEL_18:
  v16 = v15 + v14 + v13 + 1 + 12;
  if (Length < v16)
  {
    v23 = @"Crypto text too short";
    a4 = v26;
LABEL_47:
    _PCSError(a4, 20, v23);
    goto LABEL_30;
  }

  v17 = CFDataGetLength(a3) - v16;
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v17);
  if (!Mutable)
  {
    v19 = 0;
    goto LABEL_45;
  }

  v19 = malloc_type_malloc(v15, 0x4C574C5DuLL);
  if (!v19)
  {
LABEL_45:
    a4 = v26;
    goto LABEL_31;
  }

  ccgcm_set_iv();
  ccgcm_aad();
  if (v27)
  {
    CFDataGetLength(v27);
    CFDataGetBytePtr(v27);
    ccgcm_aad();
  }

  CFDataGetLength(Mutable);
  CFDataGetMutableBytePtr(Mutable);
  ccgcm_update();
  ccgcm_finalize();
  if (cc_cmp_safe())
  {
    if (*v12 < 3u)
    {
      v24 = *v12;
      v20 = @"Tag doesn't verify: version %d";
    }

    else
    {
      v24 = v12[1];
      v25 = v12[2];
      v20 = @"Tag doesn't verify: keyid: 0x%02x%02x";
    }

    a4 = v26;
    _PCSError(v26, 21, v20, v24, v25);
LABEL_31:
    ccgcm_context_size();
    cc_clear();
    v28 = 0;
    v29 = 0;
    if (v19)
    {
      free(v19);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (!a4)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  ccgcm_context_size();
  cc_clear();
  v28 = 0;
  v29 = 0;
  free(v19);
LABEL_39:
  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

BOOL _PCSIdentityRequireManateeSigning(uint64_t a1)
{
  result = _PCSIdentityIsManatee(a1);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3 && (v4 = *(v3 + 16)) != 0)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    NameByIndex = PCSServiceItemGetNameByIndex(v5);
    result = 1;
    if (NameByIndex)
    {
      v7 = NameByIndex;
      if (CFEqual(NameByIndex, kPCSWalletPaymentServices2) || CFEqual(v7, kPCSCoreIDVServiceMessages))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _PCSSignAlgToDI(unsigned __int16 a1, const void **a2)
{
  if (a1 == 2)
  {

    return ccsha512_di();
  }

  else if (a1 == 1)
  {

    return ccsha256_di();
  }

  else
  {
    _PCSError(a2, 29, @"Unsupported signature type: %d", a1);
    return 0;
  }
}

uint64_t getObjectKey(uint64_t a1)
{
  result = *(a1 + 88);
  if (!result)
  {
    result = *(a1 + 96);
    if (result)
    {
      result = PCSKeyCreateKeyFromRandomData(result, "full master key", 0, 0);
      *(a1 + 88) = result;
      v3 = *(a1 + 96);
      if (v3)
      {
        *(a1 + 96) = 0;
        CFRelease(v3);
        return *(a1 + 88);
      }
    }
  }

  return result;
}

void *_PCSVerifyHash(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  result = _PCSSignAlgToDI(a2, 0);
  if (result)
  {
    if (*result == a3)
    {
      v11 = PCSMeasureRelativeNanoTime();
      ++qword_1ED6F2670;
      v12 = *(a1 + 40);
      v13 = *(a5 + 24);
      v14 = *(a5 + 32);
      v15 = ccec_verify();
      qword_1ED6F2678 += PCSMeasureRelativeNanoTime() - v11;
      _PCSError(a6, 31, @"Verification failed, ret=%d, %svalid", v15, "!");
    }

    return 0;
  }

  return result;
}

BOOL makeHmac(uint64_t a1, const __CFData *a2, const __CFData *a3, uint64_t *a4, size_t *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = ccsha256_di();
  v11 = (((*(v10 + 8) + ((*(v10 + 8) + *(v10 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *MEMORY[0x1EEE9AC00](v10);
  *a5 = v12;
  a5[1] = malloc_type_malloc(v12, 0x9334D02CuLL);
  v13 = _PCSCreateDerivedKey(*(a1 + 72), 20, &hmacLabel, 0x10uLL, &v19, 0);
  if (v13)
  {
    cchmac_init();
    CFDataGetLength(a2);
    CFDataGetBytePtr(a2);
    cchmac_update();
    if (a3)
    {
      CFDataGetLength(a3);
      CFDataGetBytePtr(a3);
      cchmac_update();
    }

    if (a4)
    {
      v14 = *a4;
      v15 = a4[1];
      cchmac_update();
    }

    v16 = a5[1];
    cchmac_final();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

void PCSFPCopyAvailableMasterKeyIDs_cold_2(uint64_t a1, __CFArray **a2)
{
  if (!*(a1 + 80))
  {
    syslog(3, "PCSShareProtection %p have a NULL master key");
LABEL_8:
    v8 = 0;
    goto LABEL_5;
  }

  if (!*(a1 + 112))
  {
    syslog(3, "PCSShareProtection %p have a NULL oldMasterKeys");
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_0_1();
  Mutable = CFArrayCreateMutable(v4, v5, v6);
  v8 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *(a1 + 80));
    v9 = *(a1 + 112);
    OUTLINED_FUNCTION_2_0();
    CFDictionaryApplyFunction(v10, v11, v8);
  }

LABEL_5:
  *a2 = v8;
}

__CFArray *PCSFPCopyAvailableMasterKeyIDs(__CFArray *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (*(result + 54) != 1192348414)
    {
      PCSFPCopyUnwrappedKey_cold_1(result, a2, a3, a4, a5, a6, a7, a8);
    }

    PCSFPCopyAvailableMasterKeyIDs_cold_2(result, &v8);
    return v8;
  }

  return result;
}

CFIndex _PCSError(const void **a1, CFIndex a2, CFStringRef format, ...)
{
  va_start(va, format);
  _PCSErrorVA(0, a1, a2, 0, format, va);
  return a2;
}

CFDataRef PCSFPCopyTruncatedKeyIDFromEncryptedData(const void *a1, const void **a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDataGetTypeID()))
  {
    _PCSError(a2, 35, @"TruncatedKeyID is not data");
    return 0;
  }

  Length = CFDataGetLength(a1);
  if (Length >= 1)
  {
    v6 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    v8 = *BytePtr;
    if ((v8 - 2) >= 2)
    {
      if (v8 != 4)
      {
        _PCSError(a2, 43, @"Unsupported crypto data version: %u", *BytePtr);
        return 0;
      }

      if (v6 > 4)
      {
        v10 = (BytePtr + 1);
        v9 = 4;
LABEL_15:
        result = CFDataCreate(0, v10, v9);
        if (result)
        {
          return result;
        }

        _PCSErrorOOM(a2);
        return 0;
      }
    }

    else if (v6 > 3)
    {
      *bytes = *(BytePtr + 1);
      if (v8 != 3 || BytePtr[3] < 2u)
      {
        v9 = 2;
        goto LABEL_14;
      }

      if (v6 > 5)
      {
        v13 = *(BytePtr + 2);
        v9 = 4;
LABEL_14:
        v10 = bytes;
        goto LABEL_15;
      }
    }

    _PCSError(a2, 20, @"Crypto text too short");
  }

  return 0;
}

CFIndex _PCSErrorVA(uint64_t a1, const void **a2, CFIndex a3, const __CFDictionary *a4, CFStringRef format, va_list arguments)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  if (a3 == 21 || a3 == 73)
  {
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  if (do_error_as_log == 1)
  {
    v13 = PCSLogGetOSLog(a1);
    if (os_log_type_enabled(v13, v12))
    {
      v19[0] = 67109378;
      v19[1] = a3;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1B229C000, v13, v12, "PCSError: %d : %{public}@", v19, 0x12u);
    }
  }

  if (a2)
  {
    if (a4)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a4);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v15 = MutableCopy;
    CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E695E620], v10);
    v16 = *a2;
    if (*a2)
    {
      CFDictionaryAddValue(v15, *MEMORY[0x1E695E670], *a2);
      CFRelease(v16);
    }

    *a2 = CFErrorCreate(0, kPCSErrorDomain, a3, v15);
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v17 = *MEMORY[0x1E69E9840];
  return a3;
}

__CFData *PCSFPCopyUnwrappedKey(uint64_t a1, const void *a2, const __CFData *a3, const void **a4)
{
  v27 = *MEMORY[0x1E69E9840];
  ccaes_ecb_decrypt_mode();
  v8 = ccecb_context_size();
  MEMORY[0x1EEE9AC00](v8);
  Length = CFDataGetLength(a3);
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(Length, v10, v11, v12, v13, v14, v15, v16);
  }

  if (Length <= 23)
  {
    v25 = Length;
    v22 = @"wrapped data too small: %ld";
    goto LABEL_13;
  }

  if ((Length & 7) != 0)
  {
    v25 = Length;
    v22 = @"wrapped data invalid length: %ld";
    goto LABEL_13;
  }

  Value = *(a1 + 72);
  if (!Value)
  {
    _PCSError(a4, 25, @"can't unwrap object w/o masterkey");
    goto LABEL_14;
  }

  if (a2)
  {
    if (CFEqual(a2, *(a1 + 80)))
    {
      Value = *(a1 + 72);
    }

    else
    {
      Value = CFDictionaryGetValue(*(a1 + 112), a2);
      if (!Value)
      {
        _PCSError(a4, 11, @"Failed to find master key of id %@", a2);
        goto LABEL_14;
      }
    }
  }

  if (!_PCSCreateDerivedKey(Value, 20, &wrappingKeyLabel, 0x10uLL, &v26, 0))
  {
LABEL_14:
    Mutable = 0;
    goto LABEL_16;
  }

  ccecb_init();
  v18 = ccwrap_unwrapped_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v18);
  if (Mutable)
  {
    CFDataGetBytePtr(a3);
    CFDataGetMutableBytePtr(Mutable);
    v20 = ccwrap_auth_decrypt();
    if (v20)
    {
      v21 = v20;
      CFRelease(Mutable);
      v25 = v21;
      v22 = @"auth decrypt failed (%d)";
LABEL_13:
      _PCSError(a4, 18, v22, v25);
      goto LABEL_14;
    }

    if (CFDataGetLength(Mutable))
    {
      PCSFPCopyUnwrappedKey_cold_2();
    }
  }

LABEL_16:
  ccecb_context_size();
  cc_clear();
  v23 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t PCSPEMReaderGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __PCSPEMReaderGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = &PCSPEMReaderGetTypeID_sPCSPEMReaderGetTypeIDSingleton;
  if (PCSPEMReaderGetTypeID_sPCSPEMReaderGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSPEMReaderGetTypeID_sPCSPEMReaderGetTypeIDOnce, block);
  }

  return PCSPEMReaderGetTypeID_sPCSPEMReaderGetTypeIDSingleton;
}

uint64_t __PCSPEMReaderGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void PCSPEMReaderDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[5] = 0;
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[6] = 0;
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[7] = 0;
    CFRelease(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[10] = 0;
    CFRelease(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[2] = 0;
    CFRelease(v7);
  }

  v8 = a1[8];
  if (v8)
  {
    a1[8] = 0;

    CFRelease(v8);
  }
}

BOOL PCSPEMReaderCompare(const void *a1, const void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != PCSPEMReaderGetTypeID())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  return v5 == PCSPEMReaderGetTypeID() && a1 == a2;
}

void *PCSPEMReaderCreate(const void *a1)
{
  PCSPEMReaderGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = CFRetain(a1);
  v3 = MEMORY[0x1E695E9D8];
  Instance[3] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  v4 = MEMORY[0x1E695E9E8];
  Instance[6] = CFDictionaryCreateMutable(0, 0, v3, MEMORY[0x1E695E9E8]);
  Instance[7] = CFDictionaryCreateMutable(0, 0, v3, v4);
  Instance[5] = 0;
  Instance[8] = CFDataCreateMutable(0, 0);
  Instance[9] = CFDataCreateMutable(0, 0);
  Instance[10] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  Instance[12] = PEMStateBefore;
  return Instance;
}

uint64_t PEMStateBefore(uint64_t a1)
{
  if (PEMStateBefore_onceToken != -1)
  {
    PEMStateBefore_cold_1();
  }

  Line = getLine(a1);
  if (Line)
  {
    v3 = Line;
    v4 = PEMMarkerBegin;
    v11.length = CFDataGetLength(Line);
    v11.location = 0;
    if (CFDataFind(v3, v4, v11, 2uLL).location != -1)
    {
      v5 = PEMMarkerBeginEnd;
      v12.length = CFDataGetLength(v3);
      v12.location = 11;
      location = CFDataFind(v3, v5, v12, 0).location;
      if ((location + 1) <= 1)
      {
        CFRelease(v3);
        result = 0;
        *(a1 + 96) = PEMStateError;
        return result;
      }

      v8 = location;
      v9 = *(a1 + 40);
      if (v9)
      {
        *(a1 + 40) = 0;
        CFRelease(v9);
      }

      BytePtr = CFDataGetBytePtr(v3);
      *(a1 + 40) = CFStringCreateWithBytes(0, BytePtr + 11, v8 - 11, 0x8000100u, 0);
      *(a1 + 96) = PEMStateSearchHeaders;
    }

    CFRelease(v3);
    return 1;
  }

  else
  {
    result = 0;
    if (*(a1 + 89) == 1)
    {
      *(a1 + 88) = 1;
    }
  }

  return result;
}

uint64_t PCSPEMReaderRun(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  while (1)
  {
    if (*(a1 + 89))
    {
      goto LABEL_7;
    }

    v2 = CFReadStreamRead(*(a1 + 16), v5, 1000);
    if (v2 < 0)
    {
      break;
    }

    if (v2)
    {
      CFDataAppendBytes(*(a1 + 64), v5, v2);
    }

    else
    {
      *(a1 + 89) = 1;
    }

LABEL_7:
      ;
    }

    if (*(a1 + 88) == 1)
    {
      result = 1;
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_11:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef __PEMStateBefore_block_invoke()
{
  v0 = *MEMORY[0x1E695E498];
  PEMMarkerBegin = CFDataCreateWithBytesNoCopy(0, "-----BEGIN ", 11, *MEMORY[0x1E695E498]);
  PEMMarkerBeginEnd = CFDataCreateWithBytesNoCopy(0, "-----", 5, v0);
  PEMMarkerEnd = CFDataCreateWithBytesNoCopy(0, "-----END ", 9, v0);
  PEMMarkerHeader = CFDataCreateWithBytesNoCopy(0, ": ", 2, v0);
  result = CFDataCreateWithBytesNoCopy(0, "\n", 1, v0);
  PEMMarkerNewline = result;
  return result;
}

CFIndex getLine(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    *(a1 + 32) = 0;
    return result;
  }

  if (*(a1 + 89) != 1 || (result = CFDataGetLength(*(a1 + 64))) != 0)
  {
    v3 = *(a1 + 64);
    v4 = PEMMarkerNewline;
    v13.length = CFDataGetLength(v3);
    v13.location = 0;
    location = CFDataFind(v3, v4, v13, 0).location;
    if (location == -1)
    {
      if (*(a1 + 89) != 1)
      {
        return 0;
      }

      Length = CFDataGetLength(*(a1 + 64));
      v7 = 0;
    }

    else
    {
      Length = location;
      v7 = 1;
    }

    BytePtr = CFDataGetBytePtr(*(a1 + 64));
    if (Length)
    {
      v9 = BytePtr[Length - 1];
      v10 = v9 == 13;
      if (v9 == 13)
      {
        --Length;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = CFDataCreate(0, BytePtr, Length);
    v12.length = v10 + Length + v7;
    v12.location = 0;
    CFDataDeleteBytes(*(a1 + 64), v12);
    return v11;
  }

  return result;
}

BOOL PEMStateSearchHeaders(uint64_t a1)
{
  Line = getLine(a1);
  v3 = Line;
  if (Line)
  {
    v4 = PEMMarkerHeader;
    v11.length = CFDataGetLength(Line);
    v11.location = 0;
    v5 = CFDataFind(v3, v4, v11, 0);
    if (v5.location == -1)
    {
      *(a1 + 96) = PEMStateInData;
      *(a1 + 32) = v3;
    }

    else
    {
      BytePtr = CFDataGetBytePtr(v3);
      v7 = CFStringCreateWithBytes(0, BytePtr, v5.location, 0x8000100u, 0);
      Length = CFDataGetLength(v3);
      v9 = CFStringCreateWithBytes(0, &BytePtr[v5.location + v5.length], Length - (v5.location + v5.length), 0x8000100u, 0);
      CFDictionarySetValue(*(a1 + 48), v7, v9);
      CFRelease(v7);
      CFRelease(v9);
      CFRelease(v3);
    }
  }

  return v3 != 0;
}

CFIndex PEMStateInData(uint64_t a1)
{
  result = getLine(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = PEMMarkerEnd;
  v26.length = CFDataGetLength(result);
  v26.location = 0;
  if (CFDataFind(v3, v4, v26, 2uLL).location != -1)
  {
    *(a1 + 96) = PEMStateDone;
    v5 = v3;
    goto LABEL_4;
  }

  Length = CFDataGetLength(v3);
  if ((Length & 3) != 0)
  {
    v7 = v3;
LABEL_7:
    CFRelease(v7);
    return 0;
  }

  v8 = Length;
  v9 = (Length >> 1) + (Length >> 2);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v9);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (v8 < 1)
  {
    goto LABEL_30;
  }

  v12 = MutableBytePtr;
  v13 = 0;
  v14 = 0;
  do
  {
    while (1)
    {
      v25.location = v13;
      v25.length = 4;
      CFDataGetBytes(v3, v25, buffer);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        v17 <<= 6;
        v18 = buffer[v15];
        if (v18 == 61)
        {
          ++v16;
        }

        else
        {
          if (v16 >= 1)
          {
            goto LABEL_34;
          }

          v17 += tokenDecode_base64_chars_inverted[v18];
        }

        ++v15;
      }

      while (v15 != 4);
      if (v16 >= 3)
      {
LABEL_34:
        abort();
      }

      v19 = v17 | (v16 << 24);
      if (v19 == -1)
      {
        PEMStateInData_cold_1(Mutable);
      }

      v20 = HIBYTE(v19);
      if (v20)
      {
        if (v13 + 4 != v8)
        {
          printf("%d %d %d\n", HIBYTE(v19), v14, v8);
          abort();
        }
      }

      *v12 = BYTE2(v17);
      if (v19 >> 25)
      {
        ++v14;
        v13 = 4 * v14;
        ++v12;
        goto LABEL_28;
      }

      v12[1] = BYTE1(v17);
      if (v20)
      {
        break;
      }

      v12[2] = v17;
      v12 += 3;
      ++v14;
      v13 = 4 * v14;
      if (4 * v14 >= v8)
      {
        goto LABEL_30;
      }
    }

    v12 += 2;
    ++v14;
    v13 = 4 * v14;
LABEL_28:
    ;
  }

  while (v13 < v8);
  CFDataSetLength(Mutable, v9 - v20);
LABEL_30:
  CFRelease(v3);
  if (!Mutable)
  {
    return 0;
  }

  if (!CFDataGetLength(Mutable))
  {
    v7 = Mutable;
    goto LABEL_7;
  }

  v21 = *(a1 + 72);
  BytePtr = CFDataGetBytePtr(Mutable);
  v23 = CFDataGetLength(Mutable);
  CFDataAppendBytes(v21, BytePtr, v23);
  v5 = Mutable;
LABEL_4:
  CFRelease(v5);
  return 1;
}

uint64_t PEMStateDone(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 24), *(a1 + 40));
  if (Value || (Value = CFDictionaryGetValue(*(a1 + 24), @"ANY")) != 0)
  {
    v3 = (Value)(a1, *(a1 + 40), *(a1 + 48), *(a1 + 72));
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(*(a1 + 80), v3);
      CFRelease(v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 40) = 0;
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 48) = 0;
    CFRelease(v6);
  }

  *(a1 + 48) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 72) = 0;
    CFRelease(v7);
  }

  *(a1 + 72) = CFDataCreateMutable(0, 0);
  *(a1 + 96) = PEMStateBefore;
  return 1;
}

void PCSTapToRadar(void *a1, char a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCS Triggering TTR: %@: %@", buf, 0x16u);
  }

  v7 = objc_autoreleasePoolPush();
  if (_PCSIsInternalRelease() && !pendingTTREvent)
  {
    if ((a2 & 1) == 0)
    {
      v8 = CFPreferencesCopyAppValue(kPCSNextTTRDate, kPCSPreferenceDomain);
      if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = [MEMORY[0x1E695DF00] date];
        v10 = [v8 compare:v9];

        if (v10 != -1)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v11 = kPCSNextTTRDate;
    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
    CFPreferencesSetAppValue(v11, v12, kPCSPreferenceDomain);
    CFPreferencesAppSynchronize(kPCSPreferenceDomain);
    v13 = *MEMORY[0x1E695EE70];
    v19[0] = *MEMORY[0x1E695EE78];
    v19[1] = v13;
    v20[0] = @"Tap-To-Radar";
    v20[1] = @"Go away";
    v14 = *MEMORY[0x1E695EE58];
    v19[2] = *MEMORY[0x1E695EE60];
    v19[3] = v14;
    v20[2] = v5;
    v20[3] = @"PCS";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
    objc_storeStrong(&pendingTTREvent, a3);
    *buf = 0;
    v16 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 3uLL, buf, v15);
    if (v16)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __PCSTapToRadar_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v16;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

LABEL_14:
  objc_autoreleasePoolPop(v7);

  v17 = *MEMORY[0x1E69E9840];
}

void __PCSTapToRadar_block_invoke(uint64_t a1)
{
  RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x1E695E480], *(a1 + 32), PCSTTRUserNotificationCallback, 0);
  if (RunLoopSource)
  {
    v2 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v2, *MEMORY[0x1E695E8D0]);

    CFRelease(v2);
  }
}

void PCSTTRUserNotificationCallback(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (PCSTTRUserNotificationCallback_onceToken != -1)
    {
      PCSTTRUserNotificationCallback_cold_1();
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v2 = getLSApplicationWorkspaceClass_softClass;
    v14 = getLSApplicationWorkspaceClass_softClass;
    if (!getLSApplicationWorkspaceClass_softClass)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getLSApplicationWorkspaceClass_block_invoke;
      v10[3] = &unk_1E7B18A90;
      v10[4] = &v11;
      __getLSApplicationWorkspaceClass_block_invoke(v10);
      v2 = v12[3];
    }

    v3 = v2;
    _Block_object_dispose(&v11, 8);
    if (v2)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [pendingTTREvent stringByAddingPercentEncodingWithAllowedCharacters:PCSTTRUserNotificationCallback_queryComponent];
      v6 = [v4 stringWithFormat:@"tap-to-radar://new?Reproducibilty=Always&Title=LocalBackup%%20IdentityMissing&ComponentName=ProtectedCloudStorage&ComponentVersion=all&Reproducibility=Not%%20Applicable&ComponentID=574585&Classification=Crash/Hang/Data%%20Loss&Description=%@", v5];

      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      v8 = [v2 defaultWorkspace];
      [v8 openURL:v7 configuration:0 completionHandler:&__block_literal_global_27];

      v9 = pendingTTREvent;
      pendingTTREvent = 0;
    }
  }
}

void sub_1B22A9F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSTTRUserNotificationCallback_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = PCSTTRUserNotificationCallback_queryComponent;
  PCSTTRUserNotificationCallback_queryComponent = v0;

  v2 = PCSTTRUserNotificationCallback_queryComponent;
  v3 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = PCSTTRUserNotificationCallback_queryComponent;

  return [v4 removeCharactersInString:@"&"];
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileCoreServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileCoreServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B18AB0;
    v7 = 0;
    MobileCoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MobileCoreServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileCoreServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileCoreServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PCSManateeShareableIdentityReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(PCSManateePrivateKey);
        v14 = 16;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(PCSManateePrivateKey);
        v14 = 8;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !PCSManateePrivateKeyReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFData *PCSFPCopyWrappedKey(uint64_t a1, const __CFData *a2, const void **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  ccaes_ecb_encrypt_mode();
  v6 = ccecb_context_size();
  v7 = MEMORY[0x1EEE9AC00](v6);
  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  if (!_PCSCreateDerivedKey(*(a1 + 72), 20, &wrappingKeyLabel, 0x10uLL, &v21, 0))
  {
    goto LABEL_7;
  }

  ccecb_init();
  CFDataGetLength(a2);
  v15 = ccwrap_wrapped_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v15);
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  CFDataGetMutableBytePtr(Mutable);
  v17 = ccwrap_auth_encrypt();
  if (v17)
  {
    v18 = v17;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    _PCSError(a3, 19, @"wrap failed (%d)", v18);
LABEL_7:
    Mutable = 0;
    goto LABEL_9;
  }

  if (CFDataGetLength(Mutable))
  {
    PCSFPCopyWrappedKey_cold_2();
  }

LABEL_9:
  ccecb_context_size();
  cc_clear();
  v19 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFData *PCSFPCopyEncryptedData(uint64_t a1, const __CFData *a2, const void *a3, const void **a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = ccaes_gcm_encrypt_mode();
  v9 = (*v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  if (!a1)
  {
    _PCSError(a4, 128, @"EncryptedData sp argument NULL");
    goto LABEL_15;
  }

  if (!a3 || (v10 = CFGetTypeID(a3), TypeID = CFDataGetTypeID(), v10 != TypeID))
  {
    _PCSError(a4, 126, @"EncryptedData plaintext argument not CFData");
    goto LABEL_15;
  }

  if (*(a1 + 216) != 1192348414)
  {
    PCSFPCopyUnwrappedKey_cold_1(TypeID, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = *(a1 + 72);
  if (!v19)
  {
    _PCSError(a4, 25, @"can't encrypt object w/o masterkey");
    goto LABEL_15;
  }

  if (!_PCSCreateDerivedKey(v19, 20, &encryptionKeyLabel, 0x10uLL, &v25, 0))
  {
LABEL_15:
    Mutable = 0;
    goto LABEL_10;
  }

  ccgcm_init();
  Length = CFDataGetLength(a3);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, Length + 30);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 3;
  *(MutableBytePtr + 1) = *CFDataGetBytePtr(*(a1 + 80));
  MutableBytePtr[3] = 2;
  *(MutableBytePtr + 2) = *(CFDataGetBytePtr(*(a1 + 80)) + 1);
  _PCSRandomData(0xCuLL, MutableBytePtr + 6);
  ccgcm_set_iv();
  ccgcm_aad();
  if (a2)
  {
    CFDataGetLength(a2);
    CFDataGetBytePtr(a2);
    ccgcm_aad();
  }

  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  ccgcm_update();
  ccgcm_finalize();
LABEL_10:
  ccgcm_context_size();
  cc_clear();
  v23 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __PCSFPCopyDecryptedData_block_invoke(uint64_t result, CFDataRef theData, const __CFData *a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v5 = result;
    result = CFDataGetLength(theData);
    if (result > *(v5 + 40))
    {
      BytePtr = CFDataGetBytePtr(theData);
      v7 = CFDataGetBytePtr(*(v5 + 48));
      result = memcmp(BytePtr, v7, *(v5 + 40));
      if (!result)
      {
        v8 = *(v5 + 56);
        if (v8)
        {
          v9 = *v8;
          if (*v8)
          {
            *v8 = 0;
            CFRelease(v9);
            v8 = *(v5 + 56);
          }
        }

        result = PCSFPCopyDecryptedDataWithKey(a3, *(v5 + 64), *(v5 + 72), v8);
        *(*(*(v5 + 32) + 8) + 24) = result;
      }
    }
  }

  return result;
}

const void *__PCSCopyLogFilePath(uint64_t a1)
{
  v2 = CFCopyHomeDirectoryURLForUser();
  if (!v2)
  {
    StringWithDate = 0;
    v3 = &stru_1F297D620;
    goto LABEL_16;
  }

  v3 = v2;
  if (a1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = CFDateCreate(0, Current);
    if (v5)
    {
      v6 = CFLocaleCopyCurrent();
      v7 = CFDateFormatterCreate(0, v6, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      CFDateFormatterSetFormat(v7, @"yyyyMMddHHmmss");
      StringWithDate = CFDateFormatterCreateStringWithDate(0, v7, v5);
      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(v5);
      if (v7)
      {
        CFRelease(v7);
      }

      if (StringWithDate)
      {
        v9 = CFStringCreateWithFormat(0, 0, @"-%@-%@", StringWithDate, a1);
        CFRelease(StringWithDate);
        if (!v9)
        {
          StringWithDate = 0;
LABEL_16:
          CFRelease(v3);
          return StringWithDate;
        }

        goto LABEL_12;
      }

      v5 = 0;
    }

    else
    {
      StringWithDate = 0;
    }

    v9 = &stru_1F297D620;
    goto LABEL_15;
  }

  v9 = &stru_1F297D620;
LABEL_12:
  v5 = CFURLCreateCopyAppendingPathComponent(0, v3, @"Library/Logs/CrashReporter/DiagnosticLogs", 0);
  if (v5 && (v10 = CFStringCreateWithFormat(0, 0, @"ProtectedCloudStorage%@.log", v9)) != 0)
  {
    v11 = v10;
    StringWithDate = CFURLCreateCopyAppendingPathComponent(0, v5, v10, 0);
    CFRelease(v11);
  }

  else
  {
    StringWithDate = 0;
  }

LABEL_15:
  CFRelease(v9);
  CFRelease(v3);
  v3 = v5;
  if (v5)
  {
    goto LABEL_16;
  }

  return StringWithDate;
}

uint64_t PCSLogContextGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __PCSLogContextGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = &PCSLogContextGetTypeID_sPCSLogContextGetTypeIDSingleton;
  if (PCSLogContextGetTypeID_sPCSLogContextGetTypeIDOnce != -1)
  {
    dispatch_once(&PCSLogContextGetTypeID_sPCSLogContextGetTypeIDOnce, block);
  }

  return PCSLogContextGetTypeID_sPCSLogContextGetTypeIDSingleton;
}

uint64_t __PCSLogContextGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void PCSLogContextDestroy(uint64_t a1)
{
  os_release(*(a1 + 16));
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    close(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 24) = 0;

    CFRelease(v3);
  }
}

uint64_t PCSCreateLogContext(const void *a1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  PCSLogContextGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1 && os_variant_allows_internal_security_policies() && (v5 = __PCSCopyLogFilePath(a1)) != 0)
    {
      v6 = v5;
      if (CFURLGetFileSystemRepresentation(v5, 1u, buffer, 1024))
      {
        v7 = open(buffer, 777, 420);
      }

      else
      {
        v7 = -1;
      }

      CFRelease(v6);
    }

    else
    {
      v7 = -1;
    }

    *(Instance + 32) = v7;
    if (a2)
    {
      a2 = PCSCFStringToCString(a2);
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = "general";
    }

    *(Instance + 16) = os_log_create("com.apple.ProtectedCloudStorage", v8);
    if (a1)
    {
      v9 = CFRetain(a1);
    }

    else
    {
      v9 = 0;
    }

    *(Instance + 24) = v9;
    free(a2);
  }

  v10 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t PCSLogGetOSLog(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return MEMORY[0x1E69E9C10];
  }
}

void PCSMigrationLog(uint64_t a1, CFStringRef format, ...)
{
  va_start(va, format);
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (a1)
  {
    v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 16);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 138543362;
        *&buf.st_mode = v4;
        _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
      }

      if (*(a1 + 32) == -1)
      {
        CFRelease(v4);
      }

      else
      {
        v6 = PCSCFStringToCString(v4);
        CFRelease(v4);
        memset(&buf, 0, sizeof(buf));
        if (!fstat(*(a1 + 32), &buf) && buf.st_size >= 50001)
        {
          ftruncate(*(a1 + 32), 0);
        }

        v7 = time(0);
        v8 = asprintf(&v10, "%ld - %s\n", v7, v6);
        if (v8 != -1)
        {
          write(*(a1 + 32), v10, v8);
        }

        free(v10);
        free(v6);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

const void *pcsLogObjForScope(const char *a1)
{
  pthread_mutex_lock(&loggingMutex);
  v2 = loggingEnabled;
  pthread_mutex_unlock(&loggingMutex);
  if (v2)
  {
    return MEMORY[0x1E69E9C18];
  }

  v4 = MEMORY[0x1E695E480];
  if (a1)
  {
    a1 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a1, 0x600u);
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = pcsLogObjForCFScope_scopeMap;
  if (!pcsLogObjForCFScope_scopeMap)
  {
    Mutable = CFDictionaryCreateMutable(*v4, 0, MEMORY[0x1E695E528], 0);
    pcsLogObjForCFScope_scopeMap = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v5);
  if (!Value)
  {
    CFRetain(v5);
    Length = CFStringGetLength(v5);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    if (!CFStringGetCString(v5, v9, MaximumSizeForEncoding, 0x8000100u))
    {
      *v9 = 0;
    }

    CFRelease(v5);
    v10 = pcsLogObjForCFScope_scopeMap;
    v11 = os_log_create("com.apple.ProtectedCloudStorage", v9);
    CFDictionaryAddValue(v10, v5, v11);
    free(v9);
    Value = CFDictionaryGetValue(pcsLogObjForCFScope_scopeMap, v5);
  }

  os_unfair_lock_unlock(&pcsLogObjForCFScope_lock);
  if (a1)
  {
    CFRelease(a1);
  }

  return Value;
}

uint64_t _PCSSecureBackupEnableWithInfo()
{
  v0 = _PCSSecureBackupSymbols[1];
  if (!v0)
  {
    v0 = MEMORY[0x1E6994D88];
    _PCSSecureBackupSymbols[1] = MEMORY[0x1E6994D88];
  }

  return v0();
}

uint64_t _PCSSecureBackupUpdateMetadataWithInfo()
{
  v0 = _PCSSecureBackupSymbols[4];
  if (!v0)
  {
    v0 = MEMORY[0x1E6994DA0];
    _PCSSecureBackupSymbols[4] = MEMORY[0x1E6994DA0];
  }

  return v0();
}

__CFData *_PCSStingrayCreateRandom(size_t a1, const void **a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, a1);
  if (!Mutable)
  {
    _PCSErrorOOM(a2);
    return Mutable;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (!MutableBytePtr)
  {
    _PCSErrorOOM(a2);
LABEL_6:
    CFRelease(Mutable);
    return 0;
  }

  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a1, MutableBytePtr))
  {
    goto LABEL_6;
  }

  return Mutable;
}

__CFData *_PCSStingrayCopyDecryptedData(const __CFData *a1, const __CFData *a2)
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

uint64_t __PCSAccountHasStingrayIdentities(int a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "__PCSAccountHasStingrayIdentities", buf, 2u);
  }

  v10 = __PCSCreateSecureBackupContext(a1, a3);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ____PCSAccountHasStingrayIdentities_block_invoke;
  v19[3] = &unk_1E7B18B18;
  v21 = &v23;
  v22 = &v27;
  v11 = v8;
  v20 = v11;
  v12 = *_PCSSecureBackupSymbols;
  if (!*_PCSSecureBackupSymbols)
  {
    *_PCSSecureBackupSymbols = MEMORY[0x1E6994D90];
    v12 = *_PCSSecureBackupSymbols;
  }

  v12(v10, v19);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v11);
  if (v10)
  {
    CFRelease(v10);
  }

  v13 = v24[3];
  if (a4)
  {
    *a4 = v13;
  }

  else if (v13)
  {
    v24[3] = 0;
    CFRelease(v13);
  }

  v14 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v28 + 24))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    *buf = 136315138;
    v32 = v15;
    _os_log_impl(&dword_1B229C000, v14, OS_LOG_TYPE_DEFAULT, "PCSHasStingrayIdentities: %s", buf, 0xCu);
  }

  v16 = *(v28 + 24);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

void sub_1B22ABA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFDictionary *__PCSCreateSecureBackupContext(int a1, const __CFDictionary *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (a1 == 1)
  {
    v6 = MEMORY[0x1E6994EB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v6 = MEMORY[0x1E6994EC8];
LABEL_5:
    v7 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(Mutable, *v6, *MEMORY[0x1E695E4D0]);
    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E695E4D0];
LABEL_7:
  CFDictionarySetValue(v5, *MEMORY[0x1E6994E60], v7);
  CFDictionarySetValue(v5, *MEMORY[0x1E6994E90], v7);
  Value = CFDictionaryGetValue(a2, kPCSSetupDSID[0]);
  if (Value)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994DF0], Value);
  }

  v9 = CFDictionaryGetValue(a2, kPCSSetupUsername[0]);
  if (v9)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994DD0], v9);
  }

  v10 = CFDictionaryGetValue(a2, kPCSSetupPassword[0]);
  if (v10)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994E10], v10);
  }

  v11 = CFDictionaryGetValue(a2, kPCSSetupAuthToken[0]);
  if (v11)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994DE0], v11);
  }

  v12 = CFDictionaryGetValue(a2, kPCSSetupEscrowURL[0]);
  if (v12)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994E00], v12);
  }

  v13 = CFDictionaryGetValue(a2, kPCSSetupiCloudEnvironment[0]);
  if (v13)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994E20], v13);
  }

  v14 = CFDictionaryGetValue(a2, kPCSSetupRawPassword[0]);
  if (v14)
  {
    CFDictionarySetValue(v5, *MEMORY[0x1E6994E18], v14);
  }

  v15 = CFDictionaryGetValue(a2, kPCSSetupVerifierProtocol[0]);
  v16 = CFDictionaryGetValue(a2, kPCSSetupVerifierSalt[0]);
  v17 = CFDictionaryGetValue(a2, kPCSSetupVerifierIterationCount[0]);
  v18 = v17;
  if (v15 || v16 || v17)
  {
    if (v15 && v16 && v17)
    {
      v19 = [objc_alloc(MEMORY[0x1E6994D70]) initWithProto:v15 salt:v16 iterations:{objc_msgSend(v17, "intValue")}];
      CFDictionarySetValue(v5, *MEMORY[0x1E6994DC0], v19);
      v20 = pcsLogObjForScope("PCSDBR");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412802;
        v24 = v15;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1B229C000, v20, OS_LOG_TYPE_DEFAULT, "setting IDMS password metadata: %@, %@, %@", &v23, 0x20u);
      }
    }

    else
    {
      v19 = pcsLogObjForScope("PCSDBR");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __PCSCreateSecureBackupContext_cold_1(v19);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __PCSCopyHSMData(int a1, uint64_t a2, const __CFDictionary *a3, const void **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v6 = __PCSCreateSecureBackupContext(a1, a3);
  v7 = dispatch_semaphore_create(0);
  *v29 = MEMORY[0x1E69E9820];
  *&v30 = 3221225472;
  *(&v30 + 1) = ____PCSCopyStingray_block_invoke;
  v31 = &unk_1E7B18B18;
  v33 = &v23;
  v34 = &v19;
  v8 = v7;
  v32 = v8;
  v9 = _PCSSecureBackupSymbols[2];
  if (!v9)
  {
    v9 = MEMORY[0x1E6994D98];
    _PCSSecureBackupSymbols[2] = MEMORY[0x1E6994D98];
  }

  v9(v6, v29);
  CFRelease(v6);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v8);
  v10 = v24[3];
  if (a4)
  {
    *a4 = v10;
  }

  else if (v10)
  {
    v24[3] = 0;
    CFRelease(v10);
  }

  v11 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v12 = *a4;
    }

    else
    {
      v12 = 0;
    }

    *buf = 138543362;
    v28 = v12;
    _os_log_impl(&dword_1B229C000, v11, OS_LOG_TYPE_DEFAULT, "PCSCopyStingray: error: %{public}@", buf, 0xCu);
  }

  v13 = v20[3];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  if (v13)
  {
    __PCSCopyHSMData_cold_1(v13, a4, v29);
    v14 = *v29;
  }

  else
  {
    v14 = 0;
  }

  v15 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v16 = *a4;
    }

    else
    {
      v16 = 0;
    }

    *v29 = 67109378;
    *&v29[4] = v14 != 0;
    LOWORD(v30) = 2114;
    *(&v30 + 2) = v16;
    _os_log_impl(&dword_1B229C000, v15, OS_LOG_TYPE_DEFAULT, "PCSCopyHSMData: %{BOOL}d (error: %{public}@)", v29, 0x12u);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1B22AC1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose(&a13, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSCopyStingrayInfo(int a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "__PCSCopyStingrayInfo", buf, 2u);
  }

  v10 = __PCSCreateSecureBackupContext(a1, a3);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ____PCSCopyStingrayInfo_block_invoke;
  v18[3] = &unk_1E7B18B18;
  v20 = &v26;
  v21 = &v22;
  v11 = v8;
  v19 = v11;
  v12 = *_PCSSecureBackupSymbols;
  if (!*_PCSSecureBackupSymbols)
  {
    *_PCSSecureBackupSymbols = MEMORY[0x1E6994D90];
    v12 = *_PCSSecureBackupSymbols;
  }

  v12(v10, v18);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v11);
  if (v10)
  {
    CFRelease(v10);
  }

  v13 = v27[3];
  if (a4)
  {
    *a4 = v13;
  }

  else if (v13)
  {
    v27[3] = 0;
    CFRelease(v13);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    if (v23[3])
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    *buf = 136315138;
    v31 = v14;
    _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PCSCopyStingrayInfo: %s", buf, 0xCu);
  }

  v15 = v23[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_1B22AC470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSUpdateStingrayMetadata(int a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const void *a5, void *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v10 = __PCSCreateSecureBackupContext(a1, a3);
  CFDictionarySetValue(v10, *MEMORY[0x1E6994EE0], a4);
  CFDictionarySetValue(v10, *MEMORY[0x1E6994F68], a5);
  v11 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ____PCSUpdateStingrayMetadata_block_invoke;
  v20[3] = &unk_1E7B18B40;
  v22 = &v24;
  v23 = &v28;
  v12 = v11;
  v21 = v12;
  v13 = _PCSSecureBackupSymbols[4];
  if (!v13)
  {
    v13 = MEMORY[0x1E6994DA0];
    _PCSSecureBackupSymbols[4] = MEMORY[0x1E6994DA0];
  }

  v13(v10, v20);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v12);
  if (v10)
  {
    CFRelease(v10);
  }

  v14 = v25[3];
  if (a6)
  {
    *a6 = v14;
  }

  else if (v14)
  {
    v25[3] = 0;
    CFRelease(v14);
  }

  v15 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(v29 + 24);
    *buf = 67109120;
    v33 = v16;
    _os_log_impl(&dword_1B229C000, v15, OS_LOG_TYPE_DEFAULT, "__PCSUpdateStingrayMetadata: %{BOOL}d", buf, 8u);
  }

  v17 = *(v29 + 24);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void sub_1B22AC734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __PCSDisableStingrayIdentity(int a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B229C000, v9, OS_LOG_TYPE_DEFAULT, "__PCSDisableStingrayIdentity", buf, 2u);
  }

  v10 = __PCSCreateSecureBackupContext(a1, a3);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ____PCSDisableStingrayIdentity_block_invoke;
  v20[3] = &unk_1E7B18B40;
  v22 = &v24;
  v23 = &v28;
  v11 = v8;
  v21 = v11;
  v12 = _PCSSecureBackupSymbols[3];
  if (!v12)
  {
    v12 = MEMORY[0x1E6994D80];
    _PCSSecureBackupSymbols[3] = MEMORY[0x1E6994D80];
  }

  v12(v10, v20);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v11);
  if (v10)
  {
    CFRelease(v10);
  }

  v13 = PCSLogGetOSLog(a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v29 + 24))
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v15 = v25[3];
    *buf = 136446466;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    _os_log_impl(&dword_1B229C000, v13, OS_LOG_TYPE_DEFAULT, "__PCSDisableStingrayIdentity: %{public}s: %{public}@", buf, 0x16u);
  }

  v16 = v25[3];
  if (a4)
  {
    *a4 = v16;
  }

  else if (v16)
  {
    v25[3] = 0;
    CFRelease(v16);
  }

  v17 = *(v29 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

void sub_1B22ACA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

CFDataRef __PCSCopyGuitarfishTokenData(uint64_t a1, const __CFDictionary *a2, const void **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = __PCSCreateSecureBackupContext(2, a2);
  v6 = dispatch_semaphore_create(0);
  *v32 = MEMORY[0x1E69E9820];
  *&v33 = 3221225472;
  *(&v33 + 1) = ____PCSRecoverGuitarfishTokenRecord_block_invoke;
  v34 = &unk_1E7B18B18;
  v36 = &v26;
  v37 = &v22;
  v7 = v6;
  v35 = v7;
  v8 = _PCSSecureBackupSymbols[2];
  if (!v8)
  {
    v8 = MEMORY[0x1E6994D98];
    _PCSSecureBackupSymbols[2] = MEMORY[0x1E6994D98];
  }

  v8(v5, v32);
  CFRelease(v5);
  __PCS_WAITING_FOR_COM_APPLE_SBD(v7);
  v9 = v27[3];
  if (a3)
  {
    *a3 = v9;
  }

  else if (v9)
  {
    v27[3] = 0;
    CFRelease(v9);
  }

  v10 = PCSLogGetOSLog(a1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v11 = *a3;
    }

    else
    {
      v11 = 0;
    }

    *buf = 138543362;
    v31 = v11;
    _os_log_impl(&dword_1B229C000, v10, OS_LOG_TYPE_DEFAULT, "__PCSRecoverGuitarfishTokenRecord: error: %{public}@", buf, 0xCu);
  }

  v12 = v23[3];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    if (v13 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6994FB0]);
      v15 = Value;
      if (Value)
      {
        v16 = CFGetTypeID(Value);
        if (v16 == CFDataGetTypeID())
        {
          Copy = CFDataCreateCopy(0, v15);
LABEL_17:
          CFRelease(v12);
          goto LABEL_18;
        }
      }

      _PCSError(a3, 44, @"SecureBackup didn't return data key");
    }

    Copy = 0;
    goto LABEL_17;
  }

  Copy = 0;
LABEL_18:
  v18 = PCSLogGetOSLog(a1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v19 = *a3;
    }

    else
    {
      v19 = 0;
    }

    *v32 = 67109378;
    *&v32[4] = Copy != 0;
    LOWORD(v33) = 2114;
    *(&v33 + 2) = v19;
    _os_log_impl(&dword_1B229C000, v18, OS_LOG_TYPE_DEFAULT, "__PCSCopyGuitarfishTokenData: %{BOOL}d (error: %{public}@)", v32, 0x12u);
  }

  v20 = *MEMORY[0x1E69E9840];
  return Copy;
}