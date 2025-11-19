void sub_1E5342DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    v18 = a1;
    operator delete(__p);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

const __CFDictionary *ParseUpdaterDebugArgs(const __CFDictionary *result, UpdaterDebugArgs *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = CFDictionaryGetValue(result, @"Options");
    if (result)
    {
      v3 = result;
      v13[0] = 0xAAAAAAAAAAAAAAAALL;
      v13[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v13, result);
      Bool = ctu::cf::map_adapter::getBool(v13, @"RestoreInternal");
      value = 0;
      if (!CFDictionaryGetValueIfPresent(v3, @"DebugArgs", &value) || (v5 = CFGetTypeID(value), v5 != CFStringGetTypeID()))
      {
LABEL_16:
        result = MEMORY[0x1E69265E0](v13);
        goto LABEL_17;
      }

      memset(__dst, 170, sizeof(__dst));
      memset(__b, 170, sizeof(__b));
      CFStringGetCString(value, __b, 1024, 0x8000100u);
      v6 = strlen(__b);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        if ((v6 | 7) == 0x17)
        {
          v9 = 25;
        }

        else
        {
          v9 = (v6 | 7) + 1;
        }

        v8 = operator new(v9);
        __dst[1] = v7;
        __dst[2] = (v9 | 0x8000000000000000);
        __dst[0] = v8;
      }

      else
      {
        HIBYTE(__dst[2]) = v6;
        v8 = __dst;
        if (!v6)
        {
LABEL_14:
          *(v7 + v8) = 0;
          ParseDebugArgs(__dst, a2, Bool);
          if (SHIBYTE(__dst[2]) < 0)
          {
            operator delete(__dst[0]);
          }

          goto LABEL_16;
        }
      }

      memcpy(v8, __b, v7);
      goto LABEL_14;
    }
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5342F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    MEMORY[0x1E69265E0](&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E69265E0](&a17);
  _Unwind_Resume(a1);
}

uint64_t UpdaterDebugArgs::print(UpdaterDebugArgs *this)
{
  ACFULogging::getLogInstance(this);
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 8);
  v5 = *(this + 9);
  v6 = *(this + 24);
  if (v6 == 1)
  {
    std::to_string(&v17, *(this + 2));
  }

  v7 = ACFULogging::handleMessage();
  if (v6 && SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v7);
  v15 = *(this + 36);
  v16 = *(this + 37);
  v13 = *(this + 34);
  v14 = *(this + 35);
  v11 = *(this + 32);
  v12 = *(this + 33);
  v8 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v8);
  if (*(this + 63) < 0)
  {
    v9 = *(this + 5);
  }

  *(this + 65);
  *(this + 65);
  *(this + 64);
  *(this + 64);
  return ACFULogging::handleMessage();
}

void sub_1E534316C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    if (a23 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

DIR *BBUpdaterCommon::BBUReadDirectory(const char *a1, uint64_t *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v9 = 25;
          }

          else
          {
            v9 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v9);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v9 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            goto LABEL_15;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
LABEL_15:
        v8[d_namlen] = 0;
        v10 = operator new(0x28uLL);
        v11 = v10;
        *v10 = 0;
        *(v10 + 1) = 0;
        v12 = __dst[23];
        if ((__dst[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external((v10 + 16), *__dst, *&__dst[8]);
        }

        else
        {
          *(v10 + 1) = *__dst;
          *(v10 + 4) = *&__dst[16];
        }

        v13 = *a2;
        *v11 = *a2;
        v11[1] = a2;
        *(v13 + 8) = v11;
        *a2 = v11;
        ++a2[2];
        if (v12 < 0)
        {
          operator delete(*__dst);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_1E5343304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void *___ZN15BBUpdaterCommon15BBUMGCopyAnswerEPK10__CFString_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer = result;
  }

  return result;
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v8 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v8 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_8;
    }
  }

  v9 = v8(@"RestoreOSBuild", 0);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 == CFBooleanGetTypeID())
  {
    BBUpdaterCommon::inRestoreOS(void)::restoreOS = CFBooleanGetValue(v10) != 0;
  }

  else
  {
    CFRelease(v10);
    v10 = 0;
  }

LABEL_9:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "BBUCommon", &str_9_6, "inRestoreOS: %d\n", a6, a7, a8, BBUpdaterCommon::inRestoreOS(void)::restoreOS);
  }

LABEL_13:
  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_1E53434D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke_2()
{
  BBUpdaterCommon::inRestoreOS(void)::recoveryOS = os_variant_is_recovery();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "BBUCommon", &str_9_6, "InRecoveryOS: %d\n", v0, v1, v2, BBUpdaterCommon::inRestoreOS(void)::recoveryOS);
  }
}

void ___ZN15BBUpdaterCommon7getECIDEv_block_invoke()
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return;
    }

LABEL_3:
    v1 = v0(@"UniqueChipID", 0);
    if (!v1)
    {
      return;
    }

    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 != CFNumberGetTypeID())
    {
      goto LABEL_9;
    }

    CFNumberGetValue(v2, kCFNumberSInt64Type, &BBUpdaterCommon::getECID(void)::ecid);
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
LABEL_7:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(25, 0, "BBUCommon", &str_9_6, "ECID: 0x%llx\n", v4, v5, v6, BBUpdaterCommon::getECID(void)::ecid);
        }
      }
    }

LABEL_9:
    CFRelease(v2);
    return;
  }

  dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
  v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_3;
  }
}

void sub_1E53436F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN15BBUpdaterCommon14getEUICCChipIDEv_block_invoke()
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v0 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      return;
    }
  }

  v1 = v0(@"EUICCChipID", 0);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v2, kCFNumberSInt64Type, &BBUpdaterCommon::getEUICCChipID(void)::euiccChipID);
    }

    CFRelease(v2);
  }
}

void sub_1E53437C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

ctu::cf *BBUpdaterCommon::BBUReadNVRAM@<X0>(const void *a1@<X1>, ctu::cf **a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED9497B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9497B0))
  {
    _MergedGlobals_9 = 0;
    __cxa_atexit(ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef, &_MergedGlobals_9, &dword_1E5234000);
    __cxa_guard_release(&qword_1ED9497B0);
  }

  if (qword_1ED9497B8 == -1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_4;
    }

LABEL_15:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v4 = &unk_1ED949000;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  dispatch_once(&qword_1ED9497B8, &__block_literal_global_31);
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v4 = &unk_1ED949000;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(__p, v4[245], a1);
    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      LOBYTE(v8) = __p[0];
    }

    _BBULog(25, 0, "BBUCommon", &str_9_6, "NVRAM: %s\n", v5, v6, v7, v8);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_11:
  result = v4[245];
  *a2 = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_1E5343960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN15BBUpdaterCommon12BBUReadNVRAMEv_block_invoke()
{
  mainPort = -1431655766;
  v0 = IOMasterPort(*MEMORY[0x1E69E99F8], &mainPort);
  if (v0)
  {
    v4 = v0;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUCommon", &str_9_6, "Condition <<%s>> failed %s %s/%d\n", v1, v2, v3, "KERN_SUCCESS == kr");
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
    {
LABEL_6:
      if (gBBULogVerbosity < 0)
      {
        return;
      }

      v8 = "Could not get master port %d\n";
      v23 = v4;
      goto LABEL_8;
    }

    return;
  }

  v9 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
  if (v9)
  {
    v13 = v9;
    properties = 0;
    v25 = &_MergedGlobals_9;
    v17 = IORegistryEntryCreateCFProperties(v9, &properties, *MEMORY[0x1E695E480], 0);
    v18 = *v25;
    if (properties)
    {
      *v25 = properties;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v25 = 0;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    CFRelease(v18);
LABEL_22:
    if (v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = _MergedGlobals_9 == 0;
    }

    if (!v19)
    {
      goto LABEL_33;
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUCommon", &str_9_6, "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "KERN_SUCCESS == kr && nvramInfo");
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) != 0)
      {
LABEL_31:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(25, 0, "BBUCommon", &str_9_6, "Could not load NVRAM? %d\n", v20, v21, v22, v17);
        }
      }
    }

LABEL_33:
    IOObjectRelease(v13);
    return;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUCommon", &str_9_6, "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "nvramRef");
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v8 = "Could not find NVRAM via IOKit\n";
LABEL_8:
    _BBULog(25, 0, "BBUCommon", &str_9_6, v8, v5, v6, v7, v23);
  }
}

void sub_1E5343CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(va);
  _Unwind_Resume(a1);
}

BOOL BBUpdaterCommon::isNVRAMKeyPresent(BBUpdaterCommon *this, const __CFString *a2)
{
  theDict = 0xAAAAAAAAAAAAAAAALL;
  BBUpdaterCommon::BBUReadNVRAM(a2, &theDict);
  v4 = theDict;
  if (theDict)
  {
    v5 = CFDictionaryContainsKey(theDict, this) != 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_3;
    }

LABEL_14:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v5 = 0;
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(__p, this, v3);
    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    _BBULog(25, 0, "BBUCommon", &str_9_6, "NVRAM '%s' exists? %s\n", v6, v7, v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_10:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sub_1E5343E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUCreateCFError(CFErrorRef *a1, uint64_t a2, unsigned int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return 0;
      }
    }

    if (gBBULogVerbosity <= 5)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = ctu::cf::convert_copy();
    if (v16)
    {
      v17 = *MEMORY[0x1E695E620];
      if (*MEMORY[0x1E695E620])
      {
        CFRetain(v17);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (a4)
      {
        v18 = *MEMORY[0x1E695E670];
        if (*MEMORY[0x1E695E670])
        {
          CFRetain(v18);
        }

        CFRetain(a4);
        if (v18)
        {
          CFDictionaryAddValue(Mutable, v18, a4);
        }

        CFRelease(a4);
        if (v18)
        {
          CFRelease(v18);
        }
      }

      *a1 = CFErrorCreate(v11, @"BBUpdater", a3, Mutable);
      goto LABEL_25;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_23:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUCommon", &str_9_6, "check failed: %s, %d, assertion: %s\n", v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUCommon.cpp");
        }
      }
    }

LABEL_25:
    CFRelease(Mutable);
    return v16;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return 0;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
LABEL_19:
    _BBULog(1, 6, "BBUCommon", &str_9_6, "check failed: %s, %d, assertion: %s\n", a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUCommon.cpp");
  }

  return 0;
}

void sub_1E53441D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va3);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_1E5344228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

const char *BBUpdaterCommon::redactedString(const char *this, const char *a2)
{
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = this;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    this = v2;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_3;
    }
  }

  v3 = this;
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  this = v3;
LABEL_3:
  if (((BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1) == 0)
  {
    return "<< SNUM >>";
  }

  return this;
}

uint64_t BBUICE16Communication::freeTransportSync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 80);
  if (!v8)
  {
    return 1;
  }

  if (v8 == a2)
  {
    v10 = *(a1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN21BBUICE16Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
    block[4] = a1;
    v11 = a2;
    v12 = a1;
    dispatch_sync(v10, block);
    v9 = TelephonyUtilTransportFree();
    v13 = *(v12 + 72);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZN21BBUICE16Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_8_1;
    v19 = v9;
    v18[4] = v12;
    v18[5] = v11;
    dispatch_sync(v13, v18);
    return v9;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v9 = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return v9;
    }
  }

  else
  {
    v15 = a1;
    v16 = a2;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a1 = v15;
    LOBYTE(a2) = v16;
    v9 = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return v9;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v17 = *(a1 + 80);
    _BBULog(2, 0, "BBUICE16Communication", "", "call with %p different from fTransportCreated(%p)\n", a6, a7, a8, a2);
    return 0;
  }

  return v9;
}

uint64_t ___ZN21BBUICE16Communication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  *(v8 + 60) = 0;
  if (*(result + 48) == 1)
  {
    *(v8 + 80) = 0;
    return result;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v9;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(2, 0, "BBUICE16Communication", "", "fail to free transport: %p\n", a6, a7, a8, *(result + 40));
  }

  return result;
}

uint64_t BBUICE16Communication::createTransport(uint64_t a1, uint64_t a2, int a3)
{
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v6;
  v39 = v6;
  v36 = v6;
  v37 = v6;
  v35 = v6;
  TelephonyBasebandPCITransportInitParameters();
  if (*(a1 + 80))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
      {
LABEL_4:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(2, 0, "BBUICE16Communication", "", "Need to free transport before creating again", v7, v8, v9, v26);
        }
      }
    }

    (*(*a1 + 40))(a1, *(a1 + 80));
    *(a1 + 80) = 0;
  }

  v10 = *(a1 + 72);
  LODWORD(v37) = v37 | 1;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke;
  v34[3] = &__block_descriptor_tmp_11_1;
  v34[4] = a2;
  *(&v35 + 1) = v10;
  *&v36 = v34;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating transport:%p stage:%d interface:%d %f ms\n", v7, v8, v9, a2);
  }

LABEL_11:
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v11 = 7;
      goto LABEL_21;
    }

    if (a3 != 8 && a3 != 16)
    {
LABEL_45:
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
        {
          goto LABEL_49;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(2, 0, "BBUICE16Communication", "", "Unsupported stage: %d\n", v7, v8, v9, a3);
      }

LABEL_49:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/ICE/BBUICE16Communication.cpp", 0x6Eu, "Assertion failure(false && Unsupported BBU stage.)", v23, v24, v25, v26);
    }

LABEL_19:
    v11 = 8;
LABEL_21:
    LODWORD(v35) = v11;
    v12 = 10000;
    goto LABEL_22;
  }

  if (a3 == 1)
  {
    goto LABEL_19;
  }

  if (a3 != 2)
  {
    goto LABEL_45;
  }

  v11 = 6;
  LODWORD(v35) = 6;
  v12 = 5000;
LABEL_22:
  DWORD2(v36) = v12;
  *(a1 + 88) = v11;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "Creating with timeout set to %u ms\n", v7, v8, v9, SBYTE8(v36));
  }

LABEL_26:
  v13 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2;
  block[3] = &__block_descriptor_tmp_19_0;
  block[6] = a1;
  block[7] = a2;
  v30 = v37;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v28 = v35;
  v29 = v36;
  block[4] = &v41;
  block[5] = &v45;
  dispatch_sync(v13, block);
  v17 = v46;
  if (v35 != 8 || *(v46 + 6))
  {
    goto LABEL_36;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
LABEL_30:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(2, 0, "BBUICE16Communication", "", " Initializing KTL options struct, opening ARI channel\n", v14, v15, v16, v26);
      }
    }
  }

  IceAriGetContext();
  v18 = KTLInitOptions();
  v19 = v42;
  *(v42 + 24) = v18;
  if (v18)
  {
    IceAriGetContext();
    LOBYTE(v18) = KTLOpenChannel();
    v19 = v42;
  }

  *(v19 + 24) = v18;
  IceAriSetContextValid(1);
  v17 = v46;
  if ((v42[3] & 1) == 0)
  {
    *(v46 + 6) = 11;
  }

LABEL_36:
  v20 = *(v17 + 6);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  return v20;
}

void sub_1E5344AE8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "transport %p, status: %d\n", a6, a7, a8, v9);
  }

LABEL_5:
  if (a2 != 1)
  {
    return;
  }

  v10 = *MEMORY[0x1E695E480];
  Controller = TelephonyBasebandCreateController();
  v12 = TelephonyBasebandResetModem();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v12;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v12 = v17;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0)
    {
LABEL_8:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v16 = "failure";
        if (v12)
        {
          v16 = "success";
        }

        _BBULog(2, 0, "BBUICE16Communication", "", "Resetting modem: %s\n", v13, v14, v15, v16);
      }
    }
  }

  if (Controller)
  {
    CFRelease(Controller);
  }
}

void sub_1E5344CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN21BBUICE16Communication15createTransportEP26TelephonyUtilTransport_tag8BBUStagedbN16BBUCommunication17BasebandInterfaceE_block_invoke_2(void *a1)
{
  v2 = a1[6];
  *(v2 + 80) = a1[7];
  *(*(a1[4] + 8) + 24) = TelephonyBasebandPCITransportCreate();
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v9 = "success";
    }

    else
    {
      v9 = "failure";
    }

    _BBULog(2, 0, "BBUICE16Communication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v6, v7, v8, v9);
  }

LABEL_8:
  if (*(*(a1[4] + 8) + 24))
  {
    if (!*(v2 + 80))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Communication/ICE/BBUICE16Communication.cpp", 0x80u, "Assertion failure(nullptr != fTransportCreated && Telephony util transport error.)", v12, v13, v14, v15);
    }

    v10 = 0;
  }

  else
  {
    BBUICE16Communication::freeTransportSync(v2, a1[7], v3, v4, v5, v6, v7, v8);
    v10 = 3;
  }

  *(*(a1[5] + 8) + 24) = v10;
}

void IceAriSetContextValid(char a1)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (!qword_1ED9441D8)
  {
    v3 = operator new(0x28uLL);
    LOBYTE(v3->__on_zero_shared_weak) = 0;
    v2 = operator new(0x20uLL);
    v2->__vftable = &unk_1F5F01938;
    v2->__shared_owners_ = 0;
    v2->__shared_weak_owners_ = 0;
    v2[1].__vftable = v3;
    v5 = off_1ED9441E0;
    qword_1ED9441D8 = v3;
    off_1ED9441E0 = v2;
    if (!v5)
    {
      goto LABEL_7;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v3 = qword_1ED9441D8;
  v2 = off_1ED9441E0;
  if (off_1ED9441E0)
  {
LABEL_7:
    v4 = 0;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  LOBYTE(v3->__on_zero_shared_weak) = a1;
  if ((v4 & 1) == 0 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1E5344FA0(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t BBUICE16Communication::getBasebandState(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88) - 6;
  if (v8 > 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = dword_1E53941A0[v8];
  }

  *a3 = v9;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  else
  {
    v11 = a3;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    a3 = v11;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      return 0;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "returning state: %d\n", a6, a7, a8, *a3);
  }

  return 0;
}

uint64_t BBUICE16Communication::freeTransport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "BBUICE16Communication", "", "request to free transport: %p\n", a6, a7, a8, a2);
  }

LABEL_5:
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (!qword_1ED9441D8)
  {
    v11 = operator new(0x28uLL);
    LOBYTE(v11->__on_zero_shared_weak) = 0;
    v10 = operator new(0x20uLL);
    v10->__vftable = &unk_1F5F01938;
    v10->__shared_owners_ = 0;
    v10->__shared_weak_owners_ = 0;
    v10[1].__vftable = v11;
    v13 = off_1ED9441E0;
    qword_1ED9441D8 = v11;
    off_1ED9441E0 = v10;
    if (!v13)
    {
      goto LABEL_11;
    }

    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  v11 = qword_1ED9441D8;
  v10 = off_1ED9441E0;
  if (off_1ED9441E0)
  {
LABEL_11:
    v12 = 0;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  on_zero_shared_weak_low = LOBYTE(v11->__on_zero_shared_weak);
  if ((v12 & 1) == 0 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!on_zero_shared_weak_low)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (on_zero_shared_weak_low)
  {
LABEL_15:
    IceAriGetContext();
    KTLCloseChannel();
    IceAriSetContextValid(0);
  }

LABEL_16:
  v15 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1107296256;
  block[2] = ___ZN21BBUICE16Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke;
  block[3] = &__block_descriptor_tmp_23_2;
  block[4] = &v19;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v15, block);
  v16 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v16;
}

void sub_1E534532C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  operator delete(v17);
  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN21BBUICE16Communication13freeTransportEP26TelephonyUtilTransport_tag_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = BBUICE16Communication::freeTransportSync(a1[5], a1[6], a3, a4, a5, a6, a7, a8);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void BBUICE16Communication::~BBUICE16Communication(BBUICE16Communication *this)
{
  *this = &unk_1F5F05120;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F04A78;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  *this = &unk_1F5F05120;
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  *this = &unk_1F5F04A78;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  operator delete(v4);
}

void *BBUICE16Communication::getIPCLogBuffer@<X0>(void *a1@<X8>)
{
  v3 = operator new(0xA0uLL);
  BBULogIOABP::BBULogIOABP(v3);
  *a1 = v3 + *(*v3 - 88);
  result = operator new(0x20uLL);
  *result = &unk_1F5F02860;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

uint64_t __cxx_global_var_init_36()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void *BBUICE18HashData::BBUICE18HashData(void *a1, unsigned int a2, char *__s)
{
  *a1 = &unk_1F5F05170;
  a1[2] = 0;
  a1[1] = a1 + 2;
  v3 = (a1 + 1);
  a1[3] = 0;
  if (a2)
  {
    v5 = a2;
    while (1)
    {
      memset(__p, 170, sizeof(__p));
      v6 = strlen(__s);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        break;
      }

      HIBYTE(__p[2]) = v6;
      v8 = __p;
      if (v6)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7[v8] = 0;
      v10 = operator new(0x30uLL);
      v11 = *(__s + 5);
      *v10 = *(__s + 4);
      v10[1] = v11;
      v10[2] = *(__s + 6);
      v26 = __p;
      v12 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, __p, &std::piecewise_construct, &v26);
      v13 = v12[7];
      v14 = v12[9];
      if (v14 - v13 >= 0x30)
      {
        v19 = v12[8];
        v20 = v19 - v13;
        if ((v19 - v13) > 0x2F)
        {
          v21 = *v10;
          v22 = v10[2];
          v13[1] = v10[1];
          v13[2] = v22;
          *v13 = v21;
          v12[8] = (v13 + 3);
          operator delete(v10);
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v19 != v13)
          {
            memmove(v13, v10, v19 - v13);
            v19 = v12[8];
          }

          memmove(v19, v10 + v20, 48 - v20);
          v12[8] = &v19[48 - v20];
          operator delete(v10);
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if (v13)
        {
          v12[8] = v13;
          operator delete(v13);
          v14 = 0;
          v12[7] = 0;
          v12[8] = 0;
          v12[9] = 0;
        }

        v15 = 2 * v14;
        if (2 * v14 <= 0x30)
        {
          v15 = 48;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        v17 = operator new(v16);
        v12[7] = v17;
        v12[8] = v17;
        v12[9] = v17 + v16;
        v18 = v10[1];
        *v17 = *v10;
        v17[1] = v18;
        v17[2] = v10[2];
        v12[8] = (v17 + 3);
        operator delete(v10);
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }
      }

      operator delete(__p[0]);
LABEL_4:
      __s += 112;
      if (!--v5)
      {
        return a1;
      }
    }

    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __p[1] = v7;
    __p[2] = (v9 | 0x8000000000000000);
    __p[0] = v8;
LABEL_13:
    memcpy(v8, __s, v7);
    goto LABEL_14;
  }

  return a1;
}

void BBUICE18HashData::~BBUICE18HashData(char **this)
{
  *this = &unk_1F5F05170;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 1), this[2]);
}

{
  *this = &unk_1F5F05170;
  std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::destroy((this + 1), this[2]);

  operator delete(this);
}

BOOL BBUICE18HashData::compare(BBUICE18HashData *this, BBUFeedback *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(this + 1);
    v9 = this + 16;
    if (v8 == (this + 16))
    {
      return v7;
    }

LABEL_7:
    while (1)
    {
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v20[16] = v10;
      v21 = v10;
      *v20 = v10;
      std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100](v20, v8 + 2);
      v11 = *&v20[24];
      v12 = (*(*v6 + 40))(v6, v20);
      if (!v12)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_18;
      }

      if (v20[23] >= 0)
      {
        v13 = v20;
      }

      else
      {
        v13 = *v20;
      }

      v7 = BBUHashData::compareHash(this, a2, v11, v12, v13);
      v14 = *&v20[24];
      if (*&v20[24])
      {
        goto LABEL_19;
      }

LABEL_20:
      if ((v20[23] & 0x80000000) != 0)
      {
        operator delete(*v20);
        v16 = *(v8 + 1);
        if (v16)
        {
          do
          {
LABEL_24:
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
          goto LABEL_6;
        }
      }

      else
      {
        v16 = *(v8 + 1);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      do
      {
        v17 = *(v8 + 2);
        v18 = *v17 == v8;
        v8 = v17;
      }

      while (!v18);
LABEL_6:
      v8 = v17;
      if (v17 == v9)
      {
        return v7;
      }
    }

    if (v20[23] >= 0)
    {
      v15 = v20;
    }

    else
    {
      v15 = *v20;
    }

    BBUFeedback::handleComment(a2, "Hash missing in BBFW: %s", v15);
LABEL_18:
    v7 = 0;
    v14 = *&v20[24];
    if (!*&v20[24])
    {
      goto LABEL_20;
    }

LABEL_19:
    *&v21 = v14;
    operator delete(v14);
    goto LABEL_20;
  }

  v5 = **lpsrc;
  v7 = v6 != 0;
  v8 = *(this + 1);
  v9 = this + 16;
  if (v8 != (this + 16))
  {
    goto LABEL_7;
  }

  return v7;
}

void sub_1E5345B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::string const,std::vector<unsigned char>>::~pair(va);
  _Unwind_Resume(a1);
}

void BBUICE18HashData::showHashes(BBUICE18HashData *this, BBUFeedback *a2)
{
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != (this + 16))
  {
    while (1)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v13[16] = v6;
      v14 = v6;
      *v13 = v6;
      std::pair<std::string const,std::vector<unsigned char>>::pair[abi:ne200100](v13, v2 + 2);
      v7 = v13[23] >= 0 ? v13 : *v13;
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      (*(*this + 32))(this);
      ctu::assign();
      v8 = v16 >= 0 ? v15 : v15[0];
      BBUFeedback::handleComment(a2, "\t %s:  %s", v7, v8);
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(v15[0]);
      v9 = *&v13[24];
      if (*&v13[24])
      {
        goto LABEL_12;
      }

LABEL_13:
      if ((v13[23] & 0x80000000) != 0)
      {
        operator delete(*v13);
        v10 = *(v2 + 1);
        if (v10)
        {
          do
          {
LABEL_19:
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
          goto LABEL_3;
        }
      }

      else
      {
        v10 = *(v2 + 1);
        if (v10)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v11 = *(v2 + 2);
        v12 = *v11 == v2;
        v2 = v11;
      }

      while (!v12);
LABEL_3:
      v2 = v11;
      if (v11 == v3)
      {
        return;
      }
    }

    v9 = *&v13[24];
    if (!*&v13[24])
    {
      goto LABEL_13;
    }

LABEL_12:
    *&v14 = v9;
    operator delete(v9);
    goto LABEL_13;
  }
}

void sub_1E5345D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string const,std::vector<unsigned char>>::~pair(&a11);
  _Unwind_Resume(a1);
}

uint64_t BBUICE18HashData::getFileHash(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,BBUZipFile::FileInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,BBUZipFile::FileInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BBUZipFile::FileInfo>>>::find<std::string>(a1 + 8, a2);
  if ((a1 + 16) == v3)
  {
    return 0;
  }

  else
  {
    return v3[7];
  }
}

void BBUELFHeader::BBUELFHeader(BBUELFHeader *this, BBUDataSource *a2, uint64_t a3)
{
  v135[2] = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0xEu, "Assertion failure(fDataSource)", v56, v57, v58, v115);
  }

  v129 = 1179403647;
  v128 = 0;
  v135[0] = 0;
  v135[1] = 0;
  if ((*(*a2 + 16))(a2, v135, 16, &v128, a3))
  {
    v59 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v59, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x20u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy ELF header identity from data source.)", v60, v61, v62, v115);
  }

  if (v128 != 16)
  {
    v63 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v63, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x21u, "Assertion failure(( amountRead == sizeof( e_ident)) && Copied data size mismatch: Failed to copy ELF header identity from data source.)", v64, v65, v66, v115);
  }

  if (LODWORD(v135[0]) != v129)
  {
    v67 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v67, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x23u, "Assertion failure(::memcmp( e_ident, kIdentMagic, sizeof( kIdentMagic)) == 0)", v68, v69, v70, v115);
  }

  if (BYTE4(v135[0]) - 1 >= 2)
  {
    v71 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v71, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x24u, "Assertion failure(( e_ident[EI_CLASS] == kELFClass32 || e_ident[EI_CLASS] == kELFClass64) && ELF header identity (architecture) mismatch.)", v72, v73, v74, v115);
  }

  if (BYTE5(v135[0]) != 1)
  {
    v75 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v75, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x25u, "Assertion failure(( e_ident[EI_DATA] == kELFData2LSB) && ELF header identity (endianness) mismatch.)", v76, v77, v78, v115);
  }

  if (BYTE4(v135[0]) == 1)
  {
    *(this + 2) = 1;
    LODWORD(v130) = 0;
    if ((*(**this + 16))(*this, this + 12, 52, &v130, a3))
    {
      v79 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v79, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x3Au, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy ELF32 header from data source.)", v80, v81, v82, v115);
    }

    if (v130 != 52)
    {
      v87 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v87, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x3Bu, "Assertion failure(( amountRead == sizeof( Header32)) && Copied data size mismatch: Failed to copy ELF32 header from data source.)", v88, v89, v90, v115);
    }

    v8 = *(this + 10);
    if (!v8)
    {
LABEL_47:
      if (*(this + 11))
      {
        v134 = 0;
        *&v132 = 0;
        v130 = 0u;
        v131 = 0u;
        if ((*(**this + 16))(*this, &v130, 40, &v134))
        {
          v103 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v103, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x65u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from section header table.)", v104, v105, v106, v115);
        }

        if (v134 != 40)
        {
          v34 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v34, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x66u, "Assertion failure(( amountRead == sizeof( SectionHeaderTable32)) && Copied data size mismatch: Failed to copy data from section header table.)", v35, v36, v37, v115);
        }
      }

      goto LABEL_55;
    }

    if (*(this + 27) <= 0x1Fu)
    {
      v95 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v95, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x42u, "Assertion failure(( sizeof( ProgramHeaderTable32) <= fHeader32.e_phentsize) && Program header table size exceeds program header table entry size.)", v96, v97, v98, v115);
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
      {
LABEL_14:
        if (gBBULogVerbosity >= 7)
        {
          _BBULog(16, 7, "BBUELFHeader", "", "Program header entries %u\n", v5, v6, v7, *(this + 28));
        }
      }
    }

    v9 = *(this + 28);
    v10 = 32 * v9;
    v11 = operator new[](32 * v9);
    if (v9)
    {
      v12 = v11;
      bzero(v11, v10);
      v13 = 0;
      v14 = 0;
      *(this + 8) = v12;
      while (1)
      {
        LODWORD(v130) = 0;
        if ((*(**this + 16))(*this, *(this + 8) + v13, 32, &v130, v8))
        {
          v47 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v47, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x50u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from program header table.)", v48, v49, v50, v115);
        }

        if (v130 != 32)
        {
          v39 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v39, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x51u, "Assertion failure(amountRead == sizeof( ProgramHeaderTable32) && Copied data size mismatch: Failed to copy data from program header table.)", v40, v41, v42, v115);
        }

        v18 = *(this + 27);
        v19 = *(this + 8);
        if (gBBULogMaskGet(void)::once == -1)
        {
          if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
          {
            goto LABEL_23;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
          {
LABEL_23:
            if (gBBULogVerbosity >= 7)
            {
              v124 = *(v19 + v13 + 20);
              v126 = *(v19 + v13 + 24);
              v121 = *(v19 + v13 + 12);
              v123 = *(v19 + v13 + 16);
              v118 = *(v19 + v13 + 4);
              v120 = *(v19 + v13 + 8);
              v116 = *(v19 + v13);
              _BBULog(16, 7, "BBUELFHeader", "", "\t%u - Type: %u, Offset %u, VAddr %u, PAddr %u FileSize %u, MemSize %u, Flags %u\n", v15, v16, v17, v14);
            }
          }
        }

        v8 = (v8 + v18);
        ++v14;
        v13 += 32;
        if (v14 >= *(this + 28))
        {
          goto LABEL_47;
        }
      }
    }

    *(this + 8) = v11;
    goto LABEL_47;
  }

  *(this + 2) = 2;
  LODWORD(v130) = 0;
  if ((*(**this + 16))(*this, this + 72, 64, &v130, a3))
  {
    v83 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v83, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x73u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy ELF64 header from data source.)", v84, v85, v86, v115);
  }

  if (v130 != 64)
  {
    v91 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v91, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x74u, "Assertion failure(( amountRead == sizeof( Header64)) && Copied data size mismatch: Failed to copy ELF64 header from data source.)", v92, v93, v94, v115);
  }

  v23 = *(this + 13);
  if (!v23)
  {
    goto LABEL_52;
  }

  if (*(this + 63) <= 0x37u)
  {
    v99 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v99, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x7Bu, "Assertion failure(( sizeof( ProgramHeaderTable64) <= fHeader64.e_phentsize) && Program header table size exceeds program header table entry size.)", v100, v101, v102, v115);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
    {
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
    {
LABEL_33:
      if (gBBULogVerbosity >= 7)
      {
        _BBULog(16, 7, "BBUELFHeader", "", "Program header entries %u\n", v20, v21, v22, *(this + 64));
      }
    }
  }

  v24 = *(this + 64);
  v25 = operator new[](56 * v24);
  if (v24)
  {
    v26 = v25;
    bzero(v25, 56 * ((56 * v24 - 56) / 0x38uLL) + 56);
    v27 = 0;
    v28 = 0;
    *(this + 17) = v26;
    while (1)
    {
      LODWORD(v130) = 0;
      if ((*(**this + 16))(*this, *(this + 17) + v27, 56, &v130, v23))
      {
        v51 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v51, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x89u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from program header table.)", v52, v53, v54, v115);
      }

      if (v130 != 56)
      {
        v43 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v43, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x8Au, "Assertion failure(amountRead == sizeof( ProgramHeaderTable64) && Copied data size mismatch: Failed to copy data from program header table.)", v44, v45, v46, v115);
      }

      v32 = *(this + 63);
      v33 = *(this + 17);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if (*(gBBULogMaskGet(void)::sBBULogMask + 2))
        {
LABEL_42:
          if (gBBULogVerbosity >= 7)
          {
            v125 = *(v33 + v27 + 40);
            v127 = *(v33 + v27 + 4);
            v119 = *(v33 + v27 + 8);
            v122 = *(v33 + v27 + 24);
            v117 = *(v33 + v27);
            _BBULog(16, 7, "BBUELFHeader", "", "\t%u - Type: %u, Offset %u, VAddr %u, PAddr %u FileSize %u, MemSize %u, Flags %u\n", v29, v30, v31, v28);
          }
        }
      }

      v23 += v32;
      ++v28;
      v27 += 56;
      if (v28 >= *(this + 64))
      {
        goto LABEL_52;
      }
    }
  }

  *(this + 17) = v25;
LABEL_52:
  if (*(this + 14))
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    if ((*(**this + 16))(*this, &v130, 64, &v134))
    {
      v107 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v107, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x9Eu, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy data from section header table.)", v108, v109, v110, v115);
    }

    if (v134 != 64)
    {
      v111 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v111, 88, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Common/BBUELF.cpp", 0x9Fu, "Assertion failure(( amountRead == sizeof( SectionHeaderTable64)) && Copied data size mismatch: Failed to copy data from section header table.)", v112, v113, v114, v115);
    }
  }

LABEL_55:
  v38 = *MEMORY[0x1E69E9840];
}

unint64_t b64_ntop(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4)
{
  *a3 = 0;
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      result = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_17;
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
          goto LABEL_9;
        }

        goto LABEL_6;
      }
    }
  }

  result = 0;
  if (a2)
  {
LABEL_9:
    if (a2 == 1)
    {
      v11 = 0;
      v12 = result + 4;
      if (result + 4 > a4)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v11 = a1[1];
    v12 = result + 4;
    if (result + 4 <= a4)
    {
LABEL_13:
      v13 = *a1;
      v14 = (v11 >> 4) & 0xFFFFFFCF | (16 * (v13 & 3));
      v15 = Base64[v13 >> 2];
      v16 = &a3[result];
      *v16 = v15;
      v16[1] = Base64[v14];
      v17 = 61;
      if (a2 != 1)
      {
        v17 = Base64[4 * (v11 & 0xF)];
      }

      a3[result | 2] = v17;
      v16[3] = 61;
      result = v12;
      if (v12 >= a4)
      {
        goto LABEL_17;
      }

LABEL_16:
      a3[result] = 0;
      return result;
    }
  }

  else
  {
LABEL_6:
    if (result < a4)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  a3[a4 - 1] = 0;
  *a3 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t BBUICE18Programmer::BBUICE18Programmer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BBUICEProgrammer::BBUICEProgrammer(a1, a2, a3, a4);
  *v5 = &unk_1F5F04688;
  *(v5 + 81) = 0;
  *(v5 + 111) = 0;
  *(v5 + 88) = 0;
  *(v5 + 112) = 0;
  pthread_mutex_init((v5 + 120), 0);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 279) = 3;
  strcpy((a1 + 256), "EBL");
  *(a1 + 280) = xmmword_1E5393C80;
  *(a1 + 308) = 0;
  *(a1 + 300) = 0;
  *(a1 + 296) = 257;
  *a1 = &unk_1F5F051C8;
  *(a1 + 316) = 0;
  *(a1 + 324) = 0;
  *(a1 + 351) = 0;
  *(a1 + 328) = 0;
  *(a1 + 375) = 3;
  *(a1 + 352) = 4997701;
  *(a1 + 376) = xmmword_1E53945D0;
  return a1;
}

void sub_1E5346DF4(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  BBUProgrammer::~BBUProgrammer(v1);
  _Unwind_Resume(a1);
}

void BBUICE18Programmer::~BBUICE18Programmer(void **this)
{
  *this = &unk_1F5F051C8;
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
    if ((*(this + 351) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 351) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[41]);
  v2 = this;

LABEL_5:
  BBUICE16Programmer::~BBUICE16Programmer(v2);
}

{
  *this = &unk_1F5F051C8;
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
    if ((*(this + 351) & 0x80000000) == 0)
    {
LABEL_3:
      BBUICE16Programmer::~BBUICE16Programmer(this);

      goto LABEL_5;
    }
  }

  else if ((*(this + 351) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[41]);
  BBUICE16Programmer::~BBUICE16Programmer(this);

LABEL_5:
  operator delete(v2);
}

uint64_t BBUICE18Programmer::saveMRCData(BBUFeedback **this, unsigned __int8 *a2, CFIndex length)
{
  v4 = CFDataCreateWithBytesNoCopy(0, a2, length, *MEMORY[0x1E695E498]);
  if (v4)
  {
    v8 = v4;
    v9 = operator new(0x18uLL);
    v9[4] = 0;
    *v9 = &unk_1F5F04B00;
    *(v9 + 1) = v8;
    CFRetain(v8);
    BBUICE16UpdateSource::getMRCFilePath(__p);
    v10 = (*(*v9 + 48))(v9, __p, 1);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    CFRelease(v8);
    (*(*v9 + 8))(v9);
    return v10;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_7:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
      }
    }
  }

  BBUFeedback::handleComment(this[1], "Failed creating CFDataRef");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v12 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(__p);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
    v12 = off_1ED944120;
  }

  v15[0] = v12;
  v15[1] = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed creating CFDataRef");
  BBUError::addError(v12, __p, 19);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v15);
  return 19;
}

void BBUICE18Programmer::MRCResultString(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        a2[23] = 18;
        strcpy(a2, "FastbootTuningFail");
        return;
      }

      goto LABEL_8;
    }

    a2[23] = 17;
    strcpy(a2, "InitialTuningFail");
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        a2[23] = 16;
        strcpy(a2, "FastbootTuningOK");
        return;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "unknown");
      return;
    }

    a2[23] = 15;
    strcpy(a2, "InitialTuningOK");
  }
}

uint64_t BBUICE18Programmer::mrcTrainInit(BBUFeedback **this)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  if (KTLPSIFormatEnhancedCommand())
  {
    BBUFeedback::handleComment(this[1], "Sending PSI enhanced command 'Start MRC Training' in mrcTrainInit ");
    v5 = this[2];
    v6 = *(this + 95);
    if (KTLPSISendEnhancedCommand())
    {
      BBUFeedback::handleComment(this[1], "Waiting for PSI command response");
      v10 = this[2];
      v11 = *(this + 96);
      if (KTLPSIReadMrcResponse())
      {
        BBUFeedback::handleComment(this[1], "psiResp.responseCode = %d", LOWORD(__b[1]));
        BBUFeedback::handleComment(this[1], "psiResp.param = %d", __b[0]);
        v15 = this[1];
        v16 = __b[2];
        (*(*this + 38))(__p, this, __b[2]);
        if (v32 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        BBUFeedback::handleComment(v15, "psiResp.result = 0x%X (%s)", v16, v17);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (LOWORD(__b[1]) == 5)
        {
          if ((__b[0] - 2049) > 0xFFFFFBFE)
          {
            if (!__b[2])
            {
              v24 = (*(*this + 35))(this, &__b[3]);
              if (!v24)
              {
                BBUFeedback::handleComment(this[1], "saved MRC data");
                v24 = 0;
                goto LABEL_14;
              }

              if (gBBULogMaskGet(void)::once == -1)
              {
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
                {
LABEL_79:
                  if (gBBULogVerbosity >= 6)
                  {
                    _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
                  }
                }
              }

              BBUFeedback::handleComment(this[1], "Failed saving MRC data");
              pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
              v30 = off_1ED944120;
              if (!off_1ED944120)
              {
                BBUError::create_default_global(__p);
                std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
                std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
                v30 = off_1ED944120;
              }

              v33 = v30;
              v34 = *(&off_1ED944120 + 1);
              if (*(&off_1ED944120 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
              std::string::basic_string[abi:ne200100]<0>(__p, "MRC data not accepted");
              BBUError::addError(v30, __p, v24);
              if (v32 < 0)
              {
                operator delete(__p[0]);
              }

              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v33);
              goto LABEL_14;
            }

            if (gBBULogMaskGet(void)::once == -1)
            {
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
                goto LABEL_67;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
              {
LABEL_67:
                if (gBBULogVerbosity >= 6)
                {
                  _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
                }
              }
            }

            BBUFeedback::handleComment(this[1], "Data Not accepted");
            pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            v29 = off_1ED944120;
            if (!off_1ED944120)
            {
              BBUError::create_default_global(__p);
              std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
              v29 = off_1ED944120;
            }

            v33 = v29;
            v34 = *(&off_1ED944120 + 1);
            if (*(&off_1ED944120 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            std::string::basic_string[abi:ne200100]<0>(__p, "MRC data not accepted");
LABEL_74:
            BBUError::addError(v29, __p, 12);
            if (v32 < 0)
            {
              operator delete(__p[0]);
            }

            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v33);
            v24 = 12;
            goto LABEL_14;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_58:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
              }
            }
          }

          BBUFeedback::handleComment(this[1], "Invalid MRC Data Length received from BB");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v29 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(__p);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
            v29 = off_1ED944120;
          }

          v33 = v29;
          v34 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          std::string::basic_string[abi:ne200100]<0>(__p, "Invalid MRC Data Length received from BB");
          goto LABEL_74;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_49:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
            }
          }
        }

        BBUFeedback::handleComment(this[1], "MRC training RspId invalid");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v29 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(__p);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
          v29 = off_1ED944120;
        }

        v33 = v29;
        v34 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "MRC training RspId invalid");
        goto LABEL_74;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_37:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
          }
        }
      }

      BBUFeedback::handleComment(this[1], "Failed reading PSI command response");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v28 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(__p);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
        v28 = off_1ED944120;
      }

      v33 = v28;
      v34 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      std::string::basic_string[abi:ne200100]<0>(__p, "Failed reading PSI command response");
LABEL_44:
      BBUError::addError(v28, __p, 3);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v33);
      v24 = 3;
      goto LABEL_14;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_28:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
        }
      }
    }

    BBUFeedback::handleComment(this[1], "Failed sending MRC training start in mrcTrainInit");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v28 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(__p);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
      v28 = off_1ED944120;
    }

    v33 = v28;
    v34 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    std::string::basic_string[abi:ne200100]<0>(__p, "Failed sending MRC training start in mrcTrainInit");
    goto LABEL_44;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_17:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v2, v3, v4, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
      }
    }
  }

  BBUFeedback::handleComment(this[1], "Failed creating MRC training start command");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v27 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(__p);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
    v27 = off_1ED944120;
  }

  v33 = v27;
  v34 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed creating MRC training start command");
  BBUError::addError(v27, __p, 19);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v33);
  v24 = 19;
LABEL_14:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t BBUICE18Programmer::readMRCData(BBUFeedback **this, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  BBUICE16UpdateSource::getMRCFileName(__p);
  if (v23 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __dst[1] = v10;
    v25 = v12 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_12;
  }

  HIBYTE(v25) = v9;
  v11 = __dst;
  if (v9)
  {
LABEL_12:
    memmove(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  v26 = __dst;
  v13 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 24), __dst, &std::piecewise_construct, &v26)[5];
  if (v13)
  {
    v14 = **v13;
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = 0;
  if (SHIBYTE(v25) < 0)
  {
LABEL_15:
    operator delete(__dst[0]);
  }

LABEL_16:
  if (v23 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_24:
    BBUFeedback::handleComment(this[1], "Can't find mrcImage");
    return 1;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_18:
  v16 = v15[2];
  if ((*(*v16 + 32))(v16))
  {
    if ((*(*v16 + 32))(v16) > a3)
    {
      v17 = this[1];
      v18 = (*(*v16 + 32))(v16);
      BBUFeedback::handleComment(v17, "Buffer too small (%zu) for file (%u)", a3, v18);
      return 104;
    }

    v20 = (*(*v16 + 32))(v16);
    (*(*v16 + 24))(v16, a2, v20, 0);
  }

  v21 = (*(*v16 + 32))(v16);
  result = 0;
  *a4 = v21;
  return result;
}

void sub_1E53481C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  _Unwind_Resume(exception_object);
}

uint64_t BBUICE18Programmer::handleHashResponseSha384(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  BBUFeedback::handleComment(*(a1 + 8), "handleHashResponse length = %u", a3);
  if (a2 && a3)
  {
    v10 = KTLParsePSIICEHashResponseSha384();
    BBUFeedback::handleComment(*(a1 + 8), "Failed parsing hash response");
    v11 = 12;
    v12 = v25;
    if (v10)
    {
      v22 = a4;
      BBUFeedback::handleComment(*(a1 + 8), "Received hash response, %d entries", *(v25 + 1));
      v13 = operator new(0x20uLL);
      BBUICE18HashData::BBUICE18HashData(v13, *(v25 + 1), v25 + 8);
      v14 = v25;
      if (*(v25 + 1))
      {
        v15 = 0;
        v16 = 8;
        do
        {
          v17 = strlen(&v14[v16]);
          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v18 = v17;
          if (v17 >= 0x17)
          {
            if ((v17 | 7) == 0x17)
            {
              v20 = 25;
            }

            else
            {
              v20 = (v17 | 7) + 1;
            }

            p_dst = operator new(v20);
            *(&__dst + 1) = v18;
            v24 = v20 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v24) = v17;
            p_dst = &__dst;
            if (!v17)
            {
              goto LABEL_18;
            }
          }

          memmove(p_dst, &v14[v16], v18);
LABEL_18:
          *(p_dst + v18) = 0;
          std::vector<std::string>::push_back[abi:ne200100](a1 + 232, &__dst);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(__dst);
          }

          ++v15;
          v14 = v25;
          v16 += 112;
        }

        while (v15 < *(v25 + 1));
      }

      if (v22 && a5)
      {
        (*(*v13 + 24))(v13, *(a1 + 8));
        v11 = 12;
        if (((*(*v13 + 16))(v13, *(a1 + 8), a5) & 1) == 0)
        {
          BBUFeedback::handleComment(*(a1 + 8), "root manifest hash data mismatches baseband hash response");
          v11 = 33;
        }
      }

      else
      {
        v11 = 12;
      }

      (*(*v13 + 8))(v13);
      v12 = v25;
    }

    if (v12)
    {
      free(v12);
    }
  }

  else
  {
    BBUFeedback::handleComment(*(a1 + 8), "Bad arguments:  packet = %p\n", a2);
    return 2;
  }

  return v11;
}

uint64_t BBUICE18Programmer::doesMRCDataExist(BBUFeedback **this)
{
  BBUICE16UpdateSource::getMRCFileName(__p);
  if (v12 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v14 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_12;
  }

  HIBYTE(v14) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_12:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  v15 = __dst;
  v7 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((this + 24), __dst, &std::piecewise_construct, &v15)[5];
  if (v7)
  {
    v8 = **v7;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v9 = 0;
  if (SHIBYTE(v14) < 0)
  {
LABEL_15:
    operator delete(__dst[0]);
  }

LABEL_16:
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_23:
    BBUFeedback::handleComment(this[1], "No MRC image in programmer list");
    return 0;
  }

  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((*(*v9[2] + 32))(v9[2]) - 1 < 0x800)
  {
    return 1;
  }

  BBUFeedback::handleComment(this[1], "MRC data size %lu invalid, ignoring existing data");
  return 0;
}

void sub_1E53486CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  _Unwind_Resume(exception_object);
}

uint64_t BBUICE18Programmer::mrcFastboot(BBUICE18Programmer *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v74 = *MEMORY[0x1E69E9840];
  memset(v73, 170, sizeof(v73));
  v59 = 0;
  v58 = 0;
  v5 = (*(*v1 + 272))(v1, &v73[517], 2048, &v59);
  if (!v5)
  {
    if (v59 < 0x801)
    {
      if (KTLPSIFormatEnhancedCommandMrcData())
      {
        BBUFeedback::handleComment(*(v1 + 8), "Sending PSI enhanced command 'Start MRC Training'");
        v9 = *(v1 + 16);
        v10 = *(v1 + 380);
        v11 = KTLPSISendMrcTrainingCommand();
        if (gBBULogMaskGet(void)::once != -1)
        {
          v50 = v11;
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v11 = v50;
        }

        v15 = *gBBULogMaskGet(void)::sBBULogMask;
        if ((v11 & 1) == 0)
        {
          if ((v15 & 2) != 0 && gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
          }

          BBUFeedback::handleComment(*(v1 + 8), "Failed sending MRC training start in mrcFastboot, bytesSent = %u", v58);
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v51 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(__p);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
            v51 = off_1ED944120;
          }

          block = v51;
          v68 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          std::string::basic_string[abi:ne200100]<0>(__p, "Failed sending MRC training start in Fastboot");
          goto LABEL_101;
        }

        if ((v15 & 0x200) != 0 && gBBULogVerbosity >= 1)
        {
          _BBULog(9, 1, "BBUProgrammer", "", "Waiting for PSI command response\n", v12, v13, v14, v53);
        }

        v16 = *(v1 + 16);
        v17 = *(v1 + 384);
        if (KTLPSIReadMrcResponse())
        {
          BBUFeedback::handleComment(*(v1 + 8), "psiResp.responseCode = %d", LOWORD(v73[1]));
          BBUFeedback::handleComment(*(v1 + 8), "psiResp.param = %d", v73[0]);
          v21 = *(v1 + 8);
          v22 = v73[2];
          (*(*v1 + 304))(__p, v1, v73[2]);
          if (SHIBYTE(v61) >= 0)
          {
            v23 = __p;
          }

          else
          {
            v23 = __p[0];
          }

          BBUFeedback::handleComment(v21, "psiResp.result = 0x%X (%s)", v22, v23);
          if (SHIBYTE(v61) < 0)
          {
            operator delete(__p[0]);
          }

          if (LOWORD(v73[1]) == 5)
          {
            v27 = *(v1 + 8);
            if (!v73[2])
            {
              BBUFeedback::handleComment(v27, "Saving new training data");
              v5 = (*(*v1 + 280))(v1, &v73[3], v73[0]);
              v34 = *(v1 + 8);
              if (v5)
              {
                BBUFeedback::handleComment(v34, "failed saving data");
              }

              else
              {
                BBUFeedback::handleComment(v34, "Saved data");
              }

              goto LABEL_48;
            }

            if (v73[2] == 1)
            {
              BBUFeedback::handleComment(v27, "Data accepted");
              BBUICE16UpdateSource::getMRCFilePath(__p);
              if (bbufs::chownToWireless(__p, -1, v28, v29, v30, v31, v32, v33))
              {
                v5 = 0;
              }

              else
              {
                v5 = 35;
              }

              if (SHIBYTE(v61) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_48;
            }

            BBUFeedback::handleComment(v27, "Error: Data Not accepted, also, BB didn't send new data");
            pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            v35 = off_1ED944120;
            if (!off_1ED944120)
            {
              v36 = operator new(0x38uLL);
              v37 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
              v38 = dispatch_queue_create("BBUError", v37);
              *v36 = 0;
              v36[1] = 0;
              v36[2] = v38;
              if (v38)
              {
                v39 = v38;
                dispatch_retain(v38);
                v36[3] = 0;
                dispatch_release(v39);
              }

              else
              {
                v36[3] = 0;
              }

              v36[4] = 0;
              v36[5] = 0;
              v36[6] = 0;
              std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(__p, v36);
              v40 = *__p;
              __p[0] = 0;
              __p[1] = 0;
              v41 = *(&off_1ED944120 + 1);
              off_1ED944120 = v40;
              if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v41->__on_zero_shared)(v41);
                std::__shared_weak_count::__release_weak(v41);
              }

              v42 = __p[1];
              if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v42->__on_zero_shared)(v42);
                std::__shared_weak_count::__release_weak(v42);
              }

              v35 = off_1ED944120;
            }

            v43 = *(&off_1ED944120 + 1);
            v56 = v35;
            v57 = *(&off_1ED944120 + 1);
            if (*(&off_1ED944120 + 1))
            {
              atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
            v54 = operator new(0x38uLL);
            v55 = xmmword_1E53945E0;
            strcpy(v54, "Error: Data Not accepted, also, BB didn't send new data");
            __p[0] = MEMORY[0x1E69E9820];
            __p[1] = 0x40000000;
            v61 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
            v62 = &__block_descriptor_tmp_8;
            v63 = v35;
            v64 = &v54;
            v65 = 12;
            v66 = __p;
            block = MEMORY[0x1E69E9820];
            v68 = 0x40000000;
            v69 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
            v70 = &__block_descriptor_tmp_13_0;
            v71 = v35;
            v72 = &v66;
            v44 = *(v35 + 16);
            if (*(v35 + 24))
            {
              dispatch_async_and_wait(v44, &block);
              if ((SHIBYTE(v55) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }
            }

            else
            {
              dispatch_sync(v44, &block);
              if ((SHIBYTE(v55) & 0x80000000) == 0)
              {
LABEL_43:
                if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v43->__on_zero_shared)(v43);
                  std::__shared_weak_count::__release_weak(v43);
                }

                (*(*v1 + 280))(v1, &v73[3], 0);
LABEL_47:
                v5 = 12;
                goto LABEL_48;
              }
            }

            operator delete(v54);
            goto LABEL_43;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
              goto LABEL_106;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
            {
LABEL_106:
              if (gBBULogVerbosity >= 6)
              {
                _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
              }
            }
          }

          BBUFeedback::handleComment(*(v1 + 8), "MRC training RspId invalid");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v52 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(__p);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
            v52 = off_1ED944120;
          }

          block = v52;
          v68 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          std::string::basic_string[abi:ne200100]<0>(__p, "MRC training RspId invalid");
          BBUError::addError(v52, __p, 12);
          if (SHIBYTE(v61) < 0)
          {
            operator delete(__p[0]);
          }

          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
          goto LABEL_47;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
          {
LABEL_94:
            if (gBBULogVerbosity >= 6)
            {
              _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
            }
          }
        }

        BBUFeedback::handleComment(*(v1 + 8), "Failed reading MRC training response");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v51 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(__p);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
          v51 = off_1ED944120;
        }

        block = v51;
        v68 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(__p, "Failed reading MRC training response");
LABEL_101:
        BBUError::addError(v51, __p, 3);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p[0]);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
        v5 = 3;
        goto LABEL_48;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
        {
LABEL_75:
          if (gBBULogVerbosity >= 6)
          {
            _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
          }
        }
      }

      BBUFeedback::handleComment(*(v1 + 8), "Failed formatting MRC training command");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v49 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(__p);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
        v49 = off_1ED944120;
      }

      block = v49;
      v68 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      std::string::basic_string[abi:ne200100]<0>(__p, "Failed formatting MRC training command");
      BBUError::addError(v49, __p, 19);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
      v5 = 19;
      goto LABEL_48;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_64:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v2, v3, v4, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
        }
      }
    }

    BBUFeedback::handleComment(*(v1 + 8), "MRC data too large");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v48 = off_1ED944120;
    if (!off_1ED944120)
    {
      BBUError::create_default_global(__p);
      std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
      v48 = off_1ED944120;
    }

    block = v48;
    v68 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    std::string::basic_string[abi:ne200100]<0>(__p, "MRC data too large");
    BBUError::addError(v48, __p, 104);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
    v5 = 104;
    goto LABEL_48;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_53:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUProgrammer", "", "check failed: %s, %d, assertion: %s\n", v2, v3, v4, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp");
      }
    }
  }

  BBUFeedback::handleComment(*(v1 + 8), "Failed reading MRC data from file");
  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v47 = off_1ED944120;
  if (!off_1ED944120)
  {
    BBUError::create_default_global(__p);
    std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, __p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](__p);
    v47 = off_1ED944120;
  }

  block = v47;
  v68 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  std::string::basic_string[abi:ne200100]<0>(__p, "Failed reading MRC data from file");
  BBUError::addError(v47, __p, v5);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
LABEL_48:
  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t BBUICE18Programmer::program(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v75 = -1431655766;
  pthread_mutex_lock((a1 + 120));
  *(a1 + 320) = a11;
  v16 = *(a1 + 184);
  if (BBUProgrammer::addItemsFromList(a1, a6))
  {
    BBUFeedback::handleComment(*(a1 + 8), "Error: loading programmer items!");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v17 = off_1ED944120;
    if (!off_1ED944120)
    {
      v18 = operator new(0x38uLL);
      v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v20 = dispatch_queue_create("BBUError", v19);
      *v18 = 0;
      v18[1] = 0;
      v18[2] = v20;
      if (v20)
      {
        v21 = v20;
        dispatch_retain(v20);
        v18[3] = 0;
        dispatch_release(v21);
      }

      else
      {
        v18[3] = 0;
      }

      v18[4] = 0;
      v18[5] = 0;
      v18[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v76, v18);
      v32 = *&v76.__r_.__value_.__l.__data_;
      *&v76.__r_.__value_.__l.__data_ = 0uLL;
      v33 = *(&off_1ED944120 + 1);
      off_1ED944120 = v32;
      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }

      size = v76.__r_.__value_.__l.__size_;
      if (v76.__r_.__value_.__l.__size_ && !atomic_fetch_add((v76.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      v17 = off_1ED944120;
    }

    v35 = *(&off_1ED944120 + 1);
    v73 = v17;
    v74 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x28uLL);
    v72 = xmmword_1E5390C30;
    strcpy(__p, "Error: loading programmer items!");
    v76.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v76.__r_.__value_.__l.__size_ = 0x40000000;
    v76.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v77 = &__block_descriptor_tmp_8;
    v78 = v17;
    p_p = &__p;
    v80 = 66;
    v81 = &v76;
    block = MEMORY[0x1E69E9820];
    v83 = 0x40000000;
    v84 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v85 = &__block_descriptor_tmp_13_0;
    v86 = v17;
    v87 = &v81;
    v36 = *(v17 + 16);
    if (*(v17 + 24))
    {
      dispatch_async_and_wait(v36, &block);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      dispatch_sync(v36, &block);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
LABEL_26:
        if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }

        v37 = 66;
        goto LABEL_82;
      }
    }

    operator delete(__p);
    goto LABEL_26;
  }

  if (BBUICE16Programmer::addItemsToHashmap(a1))
  {
    BBUFeedback::handleComment(*(a1 + 8), "Error: Generating Hashmap of items!");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v22 = off_1ED944120;
    if (!off_1ED944120)
    {
      v23 = operator new(0x38uLL);
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v25 = dispatch_queue_create("BBUError", v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      if (v25)
      {
        v26 = v25;
        dispatch_retain(v25);
        v23[3] = 0;
        dispatch_release(v26);
      }

      else
      {
        v23[3] = 0;
      }

      v23[4] = 0;
      v23[5] = 0;
      v23[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v76, v23);
      v40 = *&v76.__r_.__value_.__l.__data_;
      *&v76.__r_.__value_.__l.__data_ = 0uLL;
      v41 = *(&off_1ED944120 + 1);
      off_1ED944120 = v40;
      if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v41->__on_zero_shared)(v41);
        std::__shared_weak_count::__release_weak(v41);
      }

      v42 = v76.__r_.__value_.__l.__size_;
      if (v76.__r_.__value_.__l.__size_ && !atomic_fetch_add((v76.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v42->__on_zero_shared)(v42);
        std::__shared_weak_count::__release_weak(v42);
      }

      v22 = off_1ED944120;
    }

    v43 = *(&off_1ED944120 + 1);
    v73 = v22;
    v74 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x28uLL);
    v72 = xmmword_1E538EBC0;
    strcpy(__p, "Error: Generating Hashmap of items!");
    v76.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v76.__r_.__value_.__l.__size_ = 0x40000000;
    v76.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v77 = &__block_descriptor_tmp_8;
    v78 = v22;
    p_p = &__p;
    v80 = 1;
    v81 = &v76;
    block = MEMORY[0x1E69E9820];
    v83 = 0x40000000;
    v84 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v85 = &__block_descriptor_tmp_13_0;
    v86 = v22;
    v87 = &v81;
    v44 = *(v22 + 16);
    if (*(v22 + 24))
    {
      dispatch_async_and_wait(v44, &block);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      dispatch_sync(v44, &block);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
LABEL_59:
        if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v37 = 1;
        goto LABEL_82;
      }
    }

    operator delete(__p);
    goto LABEL_59;
  }

  if (a11 == 2)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Booted for coredump, not programming firmware");
    pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    v27 = off_1ED944120;
    if (!off_1ED944120)
    {
      v28 = operator new(0x38uLL);
      v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v30 = dispatch_queue_create("BBUError", v29);
      *v28 = 0;
      v28[1] = 0;
      v28[2] = v30;
      if (v30)
      {
        v31 = v30;
        dispatch_retain(v30);
        v28[3] = 0;
        dispatch_release(v31);
      }

      else
      {
        v28[3] = 0;
      }

      v28[4] = 0;
      v28[5] = 0;
      v28[6] = 0;
      std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v76, v28);
      v45 = *&v76.__r_.__value_.__l.__data_;
      *&v76.__r_.__value_.__l.__data_ = 0uLL;
      v46 = *(&off_1ED944120 + 1);
      off_1ED944120 = v45;
      if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v46->__on_zero_shared)(v46);
        std::__shared_weak_count::__release_weak(v46);
      }

      v47 = v76.__r_.__value_.__l.__size_;
      if (v76.__r_.__value_.__l.__size_ && !atomic_fetch_add((v76.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
      }

      v27 = off_1ED944120;
    }

    v48 = *(&off_1ED944120 + 1);
    v73 = v27;
    v74 = *(&off_1ED944120 + 1);
    if (*(&off_1ED944120 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
    __p = operator new(0x30uLL);
    v72 = xmmword_1E5393C90;
    strcpy(__p, "Booted for coredump, not programming firmware");
    v76.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E9820];
    v76.__r_.__value_.__l.__size_ = 0x40000000;
    v76.__r_.__value_.__r.__words[2] = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
    v77 = &__block_descriptor_tmp_8;
    v78 = v27;
    p_p = &__p;
    v80 = 28;
    v81 = &v76;
    block = MEMORY[0x1E69E9820];
    v83 = 0x40000000;
    v84 = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v85 = &__block_descriptor_tmp_13_0;
    v86 = v27;
    v87 = &v81;
    v49 = *(v27 + 16);
    if (*(v27 + 24))
    {
      dispatch_async_and_wait(v49, &block);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
LABEL_78:
        if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v48->__on_zero_shared)(v48);
          std::__shared_weak_count::__release_weak(v48);
        }

        goto LABEL_81;
      }
    }

    else
    {
      dispatch_sync(v49, &block);
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }
    }

    operator delete(__p);
    goto LABEL_78;
  }

  if (a4)
  {
    v37 = (*(*a1 + 224))(a1, a2, v16, a5, 1, a10);
    goto LABEL_82;
  }

  v37 = BBUICE16Programmer::readPSIRunningMode(a1, &v75);
  if (!v37)
  {
    v37 = (*(*a1 + 296))(a1);
    if (v37)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed training, failing program");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v38 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(&v76);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v76);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v76);
        v38 = off_1ED944120;
      }

      __p = v38;
      *&v72 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v39 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed training");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(", failing program", v39, &v76);
LABEL_41:
      BBUError::addError(v38, &v76, v37);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(block);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
      goto LABEL_82;
    }

    switch(v75)
    {
      case 462:
        BBUFeedback::handleComment(*(a1 + 8), "Running secure mode");
        v37 = (*(*a1 + 176))(a1, a2, v16, 0, 0, a10);
        if (v37)
        {
          BBUFeedback::handleComment(*(a1 + 8), "Failed executing secure mode, failing program\n");
          pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v38 = off_1ED944120;
          if (!off_1ED944120)
          {
            BBUError::create_default_global(&v76);
            std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v76);
            std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v76);
            v38 = off_1ED944120;
          }

          __p = v38;
          *&v72 = *(&off_1ED944120 + 1);
          if (*(&off_1ED944120 + 1))
          {
            atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
          v55 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed executing secure mode");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(", failing program\n", v55, &v76);
          goto LABEL_41;
        }

        v75 = 56577;
        break;
      case 56577:
        break;
      case 52480:
        BBUFeedback::handleComment(*(a1 + 8), "Coredump detected, not programming firmware");
LABEL_81:
        v37 = 28;
        goto LABEL_82;
      default:
        BBUFeedback::handleComment(*(a1 + 8), "PSI is not running enhanced mode, unsupported firmware\n");
        pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        v56 = off_1ED944120;
        if (!off_1ED944120)
        {
          BBUError::create_default_global(&v76);
          std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v76);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v76);
          v56 = off_1ED944120;
        }

        block = v56;
        v83 = *(&off_1ED944120 + 1);
        if (*(&off_1ED944120 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
        std::string::basic_string[abi:ne200100]<0>(&v76, "PSI is not running enhanced mode, unsupported firmware\n");
        BBUError::addError(v56, &v76, 9);
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&block);
        v37 = 9;
        goto LABEL_82;
    }

    v57 = (a1 + 352);
    if (!std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::find<std::string>((a1 + 192), a1 + 352))
    {
      v61 = *(a1 + 8);
      v62 = "EBL (%s) not found in item list!";
      if ((*(a1 + 375) & 0x80000000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    v76.__r_.__value_.__r.__words[0] = a1 + 352;
    v58 = std::__hash_table<std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BBUProgrammer::Item *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BBUProgrammer::Item *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 192, a1 + 352, &std::piecewise_construct, &v76)[5];
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 0x217u, "Assertion failure(eblItem && Error: loading EBL item!)", v67, v68, v69, v70);
    }

    if (*(v60 + 6))
    {
      v61 = *(a1 + 8);
      v62 = "EBL (%s) exists, but is of invalid type!";
      if ((*(a1 + 375) & 0x80000000) == 0)
      {
LABEL_114:
        BBUFeedback::handleComment(v61, v62, v57);
        v37 = 15;
        goto LABEL_82;
      }

LABEL_113:
      v57 = *v57;
      goto LABEL_114;
    }

    v37 = BBUICE16Programmer::sendEBL(a1, *(v60 + 2));
    if (v37)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed sending EBL!");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v38 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(&v76);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v76);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v76);
        v38 = off_1ED944120;
      }

      __p = v38;
      *&v72 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v63 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed sending EBL");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("!", v63, &v76);
      goto LABEL_41;
    }

    pthread_mutex_unlock((a1 + 120));
    v37 = (*(*a1 + 144))(a1);
    if (v37)
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed image download!");
      pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v64 = off_1ED944120;
      if (!off_1ED944120)
      {
        BBUError::create_default_global(&v76);
        std::shared_ptr<BBUError>::operator=[abi:ne200100](&off_1ED944120, &v76);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v76);
        v64 = off_1ED944120;
      }

      __p = v64;
      *&v72 = *(&off_1ED944120 + 1);
      if (*(&off_1ED944120 + 1))
      {
        atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
      v65 = std::string::basic_string[abi:ne200100]<0>(&block, "Failed image download");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("!", v65, &v76);
      BBUError::addError(v64, &v76, v37);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(block);
      }

      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&__p);
    }

    pthread_mutex_lock((a1 + 120));
  }

LABEL_82:
  if (a6)
  {
    if (a6[2])
    {
      v50 = a6[1];
      v51 = *(*a6 + 8);
      v52 = *v50;
      *(v52 + 8) = v51;
      *v51 = v52;
      a6[2] = 0;
      if (v50 != a6)
      {
        do
        {
          v53 = v50[1];
          operator delete(v50);
          v50 = v53;
        }

        while (v53 != a6);
      }
    }

    operator delete(a6);
  }

  pthread_mutex_unlock((a1 + 120));
  return v37;
}

void sub_1E534A48C(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  pthread_mutex_unlock((v1 + 120));
  _Unwind_Resume(a1);
}

uint64_t BBUICE18Programmer::finishSecurePSIMode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, _BYTE *a6)
{
  v41 = 0;
  if (a5)
  {
    BBUFeedback::handleComment(*(a1 + 8), "Resuming Secure Mode");
  }

  if (a2)
  {
    v11 = (*(*a2 + 24))(a2);
    if (v11 > a3)
    {
      BBUFeedback::handleComment(*(a1 + 8), "root manifest size larger than protocol specification %u, size = %u bytes", a3, v11);
      return 12;
    }
  }

  else
  {
    v11 = a3;
  }

  v13 = v11;
  if (v11)
  {
    v14 = operator new(v11);
    bzero(v14, v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = operator new(0x30uLL);
  v39 = (v15 + 48);
  v40 = v15 + 48;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  md = v15;
  if (!a2)
  {
    BBUFeedback::handleComment(*(a1 + 8), "No root manifest present");
    bzero(v14, v13);
    v17 = v13 + 1024;
    v35 = a6;
    if (v13 != -1024)
    {
      v16 = 1;
      v12 = 3;
      goto LABEL_18;
    }

LABEL_22:
    v18 = 0;
    v19 = -1022;
    goto LABEL_23;
  }

  LODWORD(__p[0]) = 0;
  v12 = (*(*a2 + 16))(a2, v14, v13, __p, 0);
  v16 = v12 == 0;
  if (v12)
  {
    BBUFeedback::handleComment(*(a1 + 8), "failed copying root manifest to buffer");
  }

  if (LODWORD(__p[0]) != v13)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/ICE/BBUICE18Programmer.cpp", 0x264u, "Assertion failure(copied == rootManifestSize && failed copying root manifest to buffer)", v31, v32, v33, v34);
  }

  v17 = v13 + 1024;
  if (v13 != -1024)
  {
    v35 = a6;
LABEL_18:
    v18 = operator new(v17);
    bzero(v18, v17);
    if (!v16)
    {
      goto LABEL_35;
    }

    v19 = v13 + 2;
LABEL_23:
    *v18 = v13;
    memcpy(v18 + 1, v14, v13);
    CC_SHA384(v14, v13, md);
    BBUFeedback::handleComment(*(a1 + 8), "packetSize = %u; kBufferSize = %u; rootManifestSize = %u", v19, v17, v13);
    v20 = *(a1 + 16);
    v21 = *(a1 + 72);
    v22 = KTLRawSendData();
    v23 = *(a1 + 8);
    if (v22)
    {
      ctu::hex();
      if (v37 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      BBUFeedback::handleComment(v23, "Sent Manifest with length %u Hash %s", v13, v24);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v25 = *(a1 + 16);
      v26 = *(a1 + 380);
      if (KTLRawReceiveData())
      {
        v12 = (*(*a1 + 288))(a1, v18, v41, a2, a4);
        if (v12)
        {
          BBUFeedback::handleComment(*(a1 + 8), "failed handling hash response");
        }

        else
        {
          *v35 = 1;
          LOWORD(__p[0]) = 3777;
          v28 = *(a1 + 16);
          v29 = *(a1 + 72);
          if (KTLRawSendData())
          {
            BBUFeedback::handleComment(*(a1 + 8), "finished secure mode");
            v12 = 0;
          }

          else
          {
            BBUFeedback::handleComment(*(a1 + 8), "failed sending mode end packet");
            v12 = 11;
          }
        }

        goto LABEL_35;
      }

      BBUFeedback::handleComment(*(a1 + 8), "failed reading hash results");
    }

    else
    {
      BBUFeedback::handleComment(v23, "failed sending root manifest data");
    }

    v12 = 3;
LABEL_35:
    operator delete(v18);
    goto LABEL_36;
  }

  if (!v12)
  {
    v35 = a6;
    v17 = 0;
    goto LABEL_22;
  }

LABEL_36:
  if (md)
  {
    v39 = md;
    operator delete(md);
  }

  if (v14)
  {
    operator delete(v14);
  }

  return v12;
}

void sub_1E534AA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21)
{
  operator delete(v22);
  if (__p)
  {
    operator delete(__p);
    if (!v21)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

uint64_t BBUICE18Programmer::handleMRCTrainingSequence(BBUFeedback **this)
{
  result = MEMORY[0x1E6925FA0]();
  if (result)
  {
    v3 = (*(*this + 32))(this);
    v4 = this[1];
    if (v3)
    {
      BBUFeedback::handleComment(v4, "MRC data exists - fastbooting with existing data");
      v5 = *(*this + 31);
      v6 = this;
    }

    else
    {
      BBUFeedback::handleComment(v4, "MRC data doesn't exist or is invalid size - training fresh data");
      v5 = *(*this + 33);
      v6 = this;
    }

    return v5(v6);
  }

  return result;
}

uint64_t BBUICE18Programmer::gatherPersonalizationParameters(BBUICE18Programmer *this, BOOL a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  v39 = 0;
  v38 = 0;
  v6 = *(this + 1);
  if ((a3 & 1) == 0)
  {
    BBUFeedback::handleComment(v6, "Not in restore mode - skipping gathering Personalization parameters...");
    return 0;
  }

  BBUFeedback::handleBeginPhase(v6, "Gathering Personalization parameters...");
  if (!BBUICE16Programmer::readPSIRunningMode(this, &v39))
  {
    v8 = v39;
    if (v39 != 462)
    {
      v9 = *(this + 1);
      v10 = PSIModeDescription();
      BBUFeedback::handleComment(v9, "Unexpected running mode 0x%x (%s), cannot gather personalization params\n", v8, v10);
    }
  }

  v11 = (*(*this + 296))(this);
  if (!v11)
  {
    v11 = (*(*this + 232))(this, &v38);
    if (!v11)
    {
      v14 = v38;
      v15 = operator new(0x10uLL);
      *v15 = &unk_1F5F06660;
      v15[1] = 0;
      v16 = *MEMORY[0x1E695E480];
      v15[1] = CFDataCreate(*MEMORY[0x1E695E480], v14 + 20, 20);
      v17 = BBUICEPersonalizationParameters::ICEChipID::createFromChipID(*(v38 + 1));
      v18 = BBUICEPersonalizationParameters::ICESerialNumber::createFromSerialNumber(v38 + 8, 0x60);
      v19 = v38;
      v20 = operator new(0x10uLL);
      *v20 = &unk_1F5F06780;
      v20[1] = 0;
      v20[1] = CFDataCreate(v16, v19 + 40, 32);
      v21 = *(v38 + 1);
      *(this + 46) = v21 - 2;
      BBUFeedback::handleComment(*(this + 1), "Max root packet size from PSI: %u", v21);
      free(v38);
      v22 = *(a5 + 1);
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      *(a5 + 1) = v15;
      v23 = *(a5 + 2);
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      *(a5 + 2) = v17;
      (*(*a5 + 16))(a5, v18);
      (*(*a5 + 24))(a5, v20);
      if (!v18 || !v17)
      {
        goto LABEL_27;
      }

      v24 = *(this + 1);
      (*(*v18 + 24))(__p, v18);
      if (v37 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
      {
        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
        if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
        {
          goto LABEL_22;
        }
      }

      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
LABEL_22:
      v26 = BBUpdaterCommon::inRestoreOS(void)::restoreOS;
      v27 = BBUpdaterCommon::inRestoreOS(void)::recoveryOS;
      v28 = (*(*v17 + 24))(v17);
      if ((v26 | v27))
      {
        v29 = v25;
      }

      else
      {
        v29 = "<< SNUM >>";
      }

      BBUFeedback::handleComment(v24, "   SNUM: 0x%s / CHIPID: 0x%08x", v29, v28);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_27:
      v30 = *(this + 1);
      (*(*v15 + 24))(__p, v15);
      if (v37 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      BBUFeedback::handleComment(v30, "   NONCE: %s", v31);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v32 = *(this + 1);
      (*(*v20 + 24))(__p, v20);
      if (v37 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      BBUFeedback::handleComment(v32, "   PUBLIC_KEY_HASH: %s", v33);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v34 = *(this + 1);
      v35 = (*(**(a5 + 3) + 24))(*(a5 + 3));
      BBUFeedback::handleComment(v34, "   CertID: %u", v35);
      v12 = 0;
      goto LABEL_8;
    }
  }

  v12 = v11;
LABEL_8:
  (*(**(this + 1) + 16))(*(this + 1), v12);
  return v12;
}

void sub_1E534B0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_37()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance, &dword_1E5234000);
  }

  return result;
}

unint64_t *fopen_mem_func(uint64_t a1, const char *a2, char a3)
{
  result = malloc(0x20uLL);
  if (result)
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    v6 = result;
    v7 = result + 1;
    if (sscanf(a2, "%lx+%lx", &v8, result + 1) == 2)
    {
      result = v6;
      *v6 = v8;
      if ((a3 & 8) != 0)
      {
        v6[2] = 0;
      }

      else
      {
        v6[2] = *v7;
      }

      v6[3] = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t fread_mem_func(int a1, void *a2, void *__dst, size_t a4)
{
  v5 = a2[3];
  if (a2[1] - v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2[1] - v5;
  }

  memcpy(__dst, (*a2 + v5), v6);
  a2[3] += v6;
  return v6;
}

size_t fwrite_mem_func(int a1, void *a2, void *__src, size_t a4)
{
  v5 = a2[3];
  if (a2[1] - v5 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2[1] - v5;
  }

  memcpy((*a2 + v5), __src, v6);
  v7 = a2[2];
  v8 = a2[3] + v6;
  a2[3] = v8;
  if (v8 > v7)
  {
    a2[2] = v8;
  }

  return v6;
}

uint64_t fseek_mem_func(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v4 = 3;
    }

    else
    {
      if (a4 != 2)
      {
        return -1;
      }

      v4 = 2;
    }

    a3 += a2[v4];
  }

  if (a3 > a2[1])
  {
    return 1;
  }

  v6 = a2[2];
  if (a3 > v6)
  {
    v7 = a2;
    v8 = a3;
    bzero((*a2 + v6), a3 - v6);
    a2 = v7;
    a3 = v8;
  }

  result = 0;
  a2[3] = a3;
  return result;
}

unint64_t *(**fill_memory_filefunc(unint64_t *(**result)(uint64_t a1, const char *a2, char a3)))(uint64_t a1, const char *a2, char a3)
{
  *result = fopen_mem_func;
  result[1] = fread_mem_func;
  result[2] = fwrite_mem_func;
  result[3] = ftell_mem_func;
  result[4] = fseek_mem_func;
  result[5] = fclose_mem_func;
  result[6] = ferror_mem_func;
  result[7] = 0;
  return result;
}

void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_1E5234000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v8;
  v40[8] = v8;
  v40[5] = v8;
  v40[6] = v8;
  v40[3] = v8;
  v40[4] = v8;
  v40[1] = v8;
  v40[2] = v8;
  v39 = v8;
  v40[0] = v8;
  *__p = v8;
  v38 = v8;
  v35 = v8;
  v36 = v8;
  v33 = v8;
  v34 = v8;
  v32 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v10;
  do
  {
    if (*(v9 + 32) >= a2)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a2));
  }

  while (v9);
  if (v12 != v10 && *(v12 + 32) <= a2)
  {
    v14 = *(v12 + 40);
    v13 = *(v12 + 48);
    if ((a3 & 0x11) != 0)
    {
LABEL_9:
      v30.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v31 = v14;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v30.tm_mon = v15;
      *&v30.tm_isdst = v15;
      *&v30.tm_sec = v15;
      localtime_r(&v31, &v30);
      v45 = 0u;
      v46 = 0u;
      *__s = 0u;
      v44 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v16 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v16 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v16, &v30);
      v17 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, __s, v17);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "-", 1);
        v18 = v33;
        v19 = &v33 + *(v33 - 24);
        if (*(v19 + 36) == -1)
        {
          std::ios_base::getloc((&v33 + *(v33 - 24)));
          v20 = std::locale::use_facet(&v42, MEMORY[0x1E69E5318]);
          (v20->__vftable[2].~facet_0)(v20, 32);
          std::locale::~locale(&v42);
          v18 = v33;
        }

        *(v19 + 36) = 48;
        *(&v34 + *(v18 - 24) + 8) = 3;
        MEMORY[0x1E69270D0](&v33, (v13 / 1000));
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x1E69270F0](&v33, v14);
  if ((a3 & 4) != 0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_22;
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
    v13 = (v13 / 1000);
  }

  MEMORY[0x1E69270D0](v21, v13);
LABEL_22:
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v23 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v23 = *(&v36 + 1);
    }

    v24 = v36;
    v22 = v23 - v36;
    if ((v23 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v22 = 0;
      a4[23] = 0;
      goto LABEL_36;
    }

    v24 = *(&v34 + 1);
    v22 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_40:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    *(a4 + 1) = v22;
    *(a4 + 2) = v25 | 0x8000000000000000;
    *a4 = v26;
    a4 = v26;
    goto LABEL_35;
  }

  a4[23] = v22;
  if (v22)
  {
LABEL_35:
    memmove(a4, v24, v22);
  }

LABEL_36:
  a4[v22] = 0;
  *&v32 = *MEMORY[0x1E69E54D8];
  v27 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v33 = v27;
  *(&v33 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1E69273B0](v40);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E534BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x1E69E54D8]);
  MEMORY[0x1E69273B0](&a33);
  _Unwind_Resume(a1);
}

void *___Z14gBBULogMaskGetv_block_invoke()
{
  result = operator new(8uLL);
  *result = sLogInternalMask;
  gBBULogMaskGet(void)::sBBULogMask = result;
  return result;
}

uint64_t _BBULogv(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, va_list a6)
{
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_16);
  }

  v12 = qword_1ED9497C8;
  pthread_mutex_lock(qword_1ED9497C8);
  if (qword_1ED9497D8 == -1)
  {
    v13 = 0x1ECFD4000uLL;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    v13 = 0x1ECFD4000;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  if (((*(v13 + 2616) >> a1) & 1) == 0)
  {
    return pthread_mutex_unlock(v12);
  }

LABEL_6:
  vsnprintf(byte_1ED9497F0, 0x400uLL, a5, a6);
  v58.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v58.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v58, 0);
  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56[7] = v14;
  v56[8] = v14;
  v56[5] = v14;
  v56[6] = v14;
  v56[3] = v14;
  v56[4] = v14;
  v56[1] = v14;
  v56[2] = v14;
  v56[0] = v14;
  v54 = v14;
  v55 = v14;
  v52 = v14;
  *__p = v14;
  v50 = v14;
  v51 = v14;
  v49 = v14;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v49);
  v15 = MEMORY[0x1E69270E0](&v49, LODWORD(v58.tv_sec));
  LOBYTE(__dst[0].__locale_) = 46;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, __dst, 1);
  v17 = v16;
  v18 = *v16;
  *(v16 + *(*v16 - 24) + 24) = 3;
  v19 = v16 + *(v18 - 24);
  if (*(v19 + 36) == -1)
  {
    std::ios_base::getloc((v16 + *(v18 - 24)));
    v20 = std::locale::use_facet(__dst, MEMORY[0x1E69E5318]);
    v21 = (v20->__vftable[2].~facet_0)(v20, 32);
    std::locale::~locale(__dst);
    *(v19 + 36) = v21;
  }

  *(v19 + 36) = 48;
  v22 = MEMORY[0x1E69270E0](v17, v58.tv_usec / 0x3E8uLL);
  *(v22 + *(*v22 - 24) + 24) = 1;
  LOBYTE(__dst[0].__locale_) = 91;
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, __dst, 1);
  v24 = MEMORY[0x1E69270E0](v23, a1);
  LOBYTE(__dst[0].__locale_) = 46;
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, __dst, 1);
  v26 = MEMORY[0x1E69270E0](v25, a2);
  LOBYTE(__dst[0].__locale_) = 93;
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, __dst, 1);
  v28 = strlen(a3);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, a3, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "::", 2);
  v31 = strlen(a4);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, a4, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ": ", 2);
  v34 = strlen(byte_1ED9497F0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, byte_1ED9497F0, v34);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v55) & 0x10) != 0)
  {
    v37 = v55;
    if (v55 < *(&v52 + 1))
    {
      *&v55 = *(&v52 + 1);
      v37 = *(&v52 + 1);
    }

    v38 = v52;
    v35 = v37 - v52;
    if ((v37 - v52) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((BYTE8(v55) & 8) == 0)
    {
      v35 = 0;
      HIBYTE(__dst[2].__locale_) = 0;
      v36 = __dst;
      goto LABEL_22;
    }

    v38 = *(&v50 + 1);
    v35 = *(&v51 + 1) - *(&v50 + 1);
    if (*(&v51 + 1) - *(&v50 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_38:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v35 >= 0x17)
  {
    if ((v35 | 7) == 0x17)
    {
      v39 = 25;
    }

    else
    {
      v39 = (v35 | 7) + 1;
    }

    v36 = operator new(v39);
    __dst[1].__locale_ = v35;
    __dst[2].__locale_ = (v39 | 0x8000000000000000);
    __dst[0].__locale_ = v36;
    goto LABEL_21;
  }

  HIBYTE(__dst[2].__locale_) = v35;
  v36 = __dst;
  if (v35)
  {
LABEL_21:
    memmove(v36, v38, v35);
  }

LABEL_22:
  *(v36 + v35) = 0;
  if (qword_1ED9497D8 == -1)
  {
    if (*qword_1ED9497D0)
    {
LABEL_24:
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        locale = __dst;
      }

      else
      {
        locale = __dst[0].__locale_;
      }

      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        locale_high = HIBYTE(__dst[2].__locale_);
      }

      else
      {
        locale_high = __dst[1].__locale_;
      }

      (*(**qword_1ED9497D0 + 24))(*qword_1ED9497D0, locale, locale_high);
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    if (*qword_1ED9497D0)
    {
      goto LABEL_24;
    }
  }

  if ((*(v13 + 2616) >> a1))
  {
    if (gBBULogSinkFunc)
    {
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        v42 = __dst;
      }

      else
      {
        v42 = __dst[0].__locale_;
      }

      gBBULogSinkFunc(gBBULogSinkContext, (1 << a1), v42);
    }

    else
    {
      Stream = _BBULogGetStream(a1);
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        v44 = __dst;
      }

      else
      {
        v44 = __dst[0].__locale_;
      }

      fputs(v44, Stream);
      fflush(Stream);
      v45 = MEMORY[0x1E69E9858];
      if (Stream != *MEMORY[0x1E69E9858])
      {
        if (SHIBYTE(__dst[2].__locale_) >= 0)
        {
          v46 = __dst;
        }

        else
        {
          v46 = __dst[0].__locale_;
        }

        fputs(v46, *MEMORY[0x1E69E9858]);
        fflush(*v45);
      }
    }
  }

  if (SHIBYTE(__dst[2].__locale_) < 0)
  {
    operator delete(__dst[0].__locale_);
  }

  *&v49 = *MEMORY[0x1E69E54E8];
  *(&v49 + *(v49 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v49 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v49 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v50);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v56);
  return pthread_mutex_unlock(v12);
}

void sub_1E534C0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  pthread_mutex_unlock(v16);
  _Unwind_Resume(a1);
}

uint64_t _BBULogGetStream(int a1)
{
  if (a1 > 8)
  {
    if (a1 > 13)
    {
      if (a1 == 14)
      {
        if (qword_1ED9497E8 != -1)
        {
          dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
        }

        v1 = 56;
        goto LABEL_31;
      }

      if (a1 == 17)
      {
        if (qword_1ED9497E8 != -1)
        {
          dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
        }

        v1 = 16;
        goto LABEL_31;
      }
    }

    else if (a1 == 9 || a1 == 13)
    {
      if (qword_1ED9497E8 != -1)
      {
        dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
      }

      v1 = 48;
      goto LABEL_31;
    }

LABEL_28:
    if (qword_1ED9497E8 != -1)
    {
      dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
    }

    v1 = 8;
    goto LABEL_31;
  }

  if ((a1 - 5) < 3)
  {
    if (qword_1ED9497E8 != -1)
    {
      dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
    }

    v1 = 40;
    goto LABEL_31;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1ED9497E8 != -1)
      {
        dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
      }

      v1 = 32;
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (qword_1ED9497E8 != -1)
  {
    dispatch_once(&qword_1ED9497E8, &__block_literal_global_23);
  }

  v1 = 24;
LABEL_31:
  v2 = *(qword_1ED9497E0 + v1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return *MEMORY[0x1E69E9858];
  }
}

uint64_t _BBULogPlain(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_16);
  }

  v11 = qword_1ED9497C8;
  pthread_mutex_lock(qword_1ED9497C8);
  if (qword_1ED9497D8 == -1)
  {
    v12 = 0x1ECFD4000uLL;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    v12 = 0x1ECFD4000;
    if (*qword_1ED9497D0)
    {
      goto LABEL_6;
    }
  }

  if (((*(v12 + 2616) >> a1) & 1) == 0)
  {
    return pthread_mutex_unlock(v11);
  }

LABEL_6:
  v38 = &a9;
  vsnprintf(byte_1ED9497F0, 0x400uLL, a2, &a9);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[7] = v13;
  v36[8] = v13;
  v36[5] = v13;
  v36[6] = v13;
  v36[3] = v13;
  v36[4] = v13;
  v36[1] = v13;
  v36[2] = v13;
  v36[0] = v13;
  v34 = v13;
  v35 = v13;
  v32 = v13;
  *__p = v13;
  v30 = v13;
  v31 = v13;
  v29 = v13;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  if (a1 == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "!!! ", 4);
  }

  v14 = strlen(byte_1ED9497F0);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, byte_1ED9497F0, v14);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v35) & 0x10) != 0)
  {
    v17 = v35;
    if (v35 < *(&v32 + 1))
    {
      *&v35 = *(&v32 + 1);
      v17 = *(&v32 + 1);
    }

    v18 = v32;
    v15 = v17 - v32;
    if ((v17 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      v15 = 0;
      HIBYTE(__dst[2]) = 0;
      v16 = __dst;
      goto LABEL_22;
    }

    v18 = *(&v30 + 1);
    v15 = *(&v31 + 1) - *(&v30 + 1);
    if (*(&v31 + 1) - *(&v30 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_38:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    v16 = operator new(v19);
    __dst[1] = v15;
    __dst[2] = (v19 | 0x8000000000000000);
    __dst[0] = v16;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v15;
  v16 = __dst;
  if (v15)
  {
LABEL_21:
    memmove(v16, v18, v15);
  }

LABEL_22:
  *(v16 + v15) = 0;
  if (qword_1ED9497D8 == -1)
  {
    if (*qword_1ED9497D0)
    {
LABEL_24:
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v20 = __dst;
      }

      else
      {
        v20 = __dst[0];
      }

      if (SHIBYTE(__dst[2]) >= 0)
      {
        v21 = HIBYTE(__dst[2]);
      }

      else
      {
        v21 = __dst[1];
      }

      (*(**qword_1ED9497D0 + 24))(*qword_1ED9497D0, v20, v21);
    }
  }

  else
  {
    dispatch_once(&qword_1ED9497D8, &__block_literal_global_20);
    if (*qword_1ED9497D0)
    {
      goto LABEL_24;
    }
  }

  if ((*(v12 + 2616) >> a1))
  {
    if (gBBULogSinkFunc)
    {
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v22 = __dst;
      }

      else
      {
        v22 = __dst[0];
      }

      gBBULogSinkFunc(gBBULogSinkContext, (1 << a1), v22);
    }

    else
    {
      Stream = _BBULogGetStream(a1);
      if (SHIBYTE(__dst[2]) >= 0)
      {
        v24 = __dst;
      }

      else
      {
        v24 = __dst[0];
      }

      fputs(v24, Stream);
      fflush(Stream);
      v25 = MEMORY[0x1E69E9858];
      if (Stream != *MEMORY[0x1E69E9858])
      {
        if (SHIBYTE(__dst[2]) >= 0)
        {
          v26 = __dst;
        }

        else
        {
          v26 = __dst[0];
        }

        fputs(v26, *MEMORY[0x1E69E9858]);
        fflush(*v25);
      }
    }
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  *&v29 = *MEMORY[0x1E69E54E8];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v29 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v30);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v36);
  return pthread_mutex_unlock(v11);
}

void sub_1E534C7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  pthread_mutex_unlock(v16);
  _Unwind_Resume(a1);
}

void BBUFDRLogHandler(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return;
    }
  }

  else
  {
    v8 = a2;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    LOBYTE(a2) = v8;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBULog", "", "Dump: %s\n", a6, a7, a8, a2);
  }
}

void BBURemoteFSPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  *__str = v5;
  v15 = v5;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(23, "%u.%03u: %s: %s", v6, v7, v8, v9, v10, v11, v13.tv_sec);
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t BBULogRegisterDelegates(capabilities::radio *a1, uint64_t a2)
{
  v3 = a1;
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_3:
      if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
LABEL_13:
    v6 = TelephonyUtilDebugRegisterDelegate();
    sDelegate = BBURemoteFSPrintDelegate;
    v4 = capabilities::radio::vendor(v6);
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_4:
  if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
  {
    goto LABEL_13;
  }

  v4 = capabilities::radio::vendor(a1);
  if (v4 != 2)
  {
LABEL_6:
    if (v4 != 1)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBULogging.cpp", 0x2DEu, "Invalid vendor for log delegate registration", v8, v9, v10, v11);
    }

    result = ETLDebugRegisterDelegate();
    if (v3)
    {

      return MEMORY[0x1EEE61F30](a2);
    }

    return result;
  }

LABEL_14:
  result = KTLDebugRegisterDelegate();
  if (v3)
  {

    return KTLDebugSetFlags();
  }

  return result;
}

uint64_t ___ZL8gLockGetv_block_invoke()
{
  v0 = operator new(0x40uLL);
  result = pthread_mutex_init(v0, 0);
  qword_1ED9497C8 = v0;
  return result;
}

void *___ZL13sLogBufferGetv_block_invoke()
{
  result = operator new(0x10uLL);
  *result = 0;
  result[1] = 0;
  qword_1ED9497D0 = result;
  return result;
}

FILE *___ZL14gLogStreamsGetv_block_invoke()
{
  v0 = operator new(0x48uLL);
  v1 = MEMORY[0x1E69E9858];
  v2 = *MEMORY[0x1E69E9858];
  *v0 = *MEMORY[0x1E69E9858];
  v0[1] = v2;
  v0[2] = v2;
  v0[6] = v2;
  v0[7] = v2;
  v0[5] = v2;
  result = fopen("/dev/null", "w");
  v0[8] = result;
  v4 = *MEMORY[0x1E69E9848];
  v0[3] = *v1;
  v0[4] = v4;
  qword_1ED9497E0 = v0;
  return result;
}

void BBULogTelephonyUtilPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  *__str = v5;
  v15 = v5;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x40) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x40) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(6, "%u.%03u: %s: %s", v6, v7, v8, v9, v10, v11, v13.tv_sec);
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
}

void BBULogTelephonyUtilPrintBinaryDelegate(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(6, v5, a3, a4);
}

void BBULogPrintBinaryDelegate(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v50 = *MEMORY[0x1E69E9840];
  __p = 0;
  v47 = 0;
  v48 = 0;
  if (a4 < 0x801)
  {
    v4 = a4;
  }

  else
  {
    HIBYTE(v48) = 9;
    LOBYTE(v47) = 41;
    __p = *"(snipped)";
    v4 = 2048;
  }

  v40 = v4;
  v45.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v45.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v45, 0);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v11 = v40;
  v12 = 1 << a1;
  if ((*gBBULogMaskGet(void)::sBBULogMask & (1 << a1)) == 0 || gBBULogVerbosity < 0 || (_BBULogPlain(a1, "%u.%03u: %s: %u%s\n", v5, v6, v7, v8, v9, v10, v45.tv_sec), v11 = v40, gBBULogMaskGet(void)::once == -1))
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & v12) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v11 = v40;
    if ((*gBBULogMaskGet(void)::sBBULogMask & v12) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0 && v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = a3;
    v16 = v11;
    while (1)
    {
      v17 = 0;
      v43 = v16 - 16;
      v44 = v13;
      if (v16 >= 0x10)
      {
        v16 = 16;
      }

      if (v16 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v16;
      }

      v19 = (54 - 3 * v18);
      v42 = (v18 & 0x10) + v19;
      v20 = v11 - 16 * v13;
      if (v20 >= 0x10)
      {
        v21 = 16;
      }

      else
      {
        v21 = v11 - 16 * v13;
      }

      if (v21 <= 1)
      {
        v21 = 1;
      }

      v41 = v21;
      memset(v49, 0, sizeof(v49));
      v22 = v11 - v14;
      if (v11 - v14 >= 0x10)
      {
        v22 = 16;
      }

      if (v22 <= 1)
      {
        v22 = 1;
      }

      v23 = v15;
      do
      {
        v24 = *v23++;
        v25 = v49 + v17;
        *v25 = a0123456789abcd[v24 >> 4];
        v25[1] = a0123456789abcd[v24 & 0xF];
        v17 += 3;
        v25[2] = 32;
      }

      while (3 * v18 != v17);
      memset(v49 + v17, 32, 3 * (17 - v22));
      if (v20 < 0x10)
      {
        break;
      }

      v29 = v41 & 0x10;
      v30 = v42 + v17 - 3;
      v31 = *&a3[v14];
      v32.i64[0] = 0xE0E0E0E0E0E0E0E0;
      v32.i64[1] = 0xE0E0E0E0E0E0E0E0;
      v33.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
      v33.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
      v34 = vcgtq_u8(v33, vaddq_s8(v31, v32));
      v33.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v33.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      *(&v48 + v19 + v17 + 5) = vbslq_s8(v34, v31, v33);
      if (v41 != v29)
      {
        goto LABEL_33;
      }

      v35 = v42 + v17 - 4;
LABEL_37:
      *(v49 + v30) = 13;
      *(v49 + (((v35 << 32) + 0x200000000) >> 32)) = 10;
      *(v49 + (((v35 << 32) + 0x300000000) >> 32)) = 0;
      _BBULog(a1, 0, "BBULog", "", "%c%04zx  %s", v26, v27, v28, 32);
      v14 += 16;
      v16 = v43;
      v13 = v44 + 1;
      v15 += 16;
      v11 = v40;
      if (v14 >= v40)
      {
        goto LABEL_38;
      }
    }

    v29 = 0;
    v30 = v19 + v17 - 3;
    do
    {
LABEL_33:
      v36 = v15[v29];
      if ((v36 - 32) >= 0x5F)
      {
        LOBYTE(v36) = 46;
      }

      *(v49 + v30++) = v36;
      ++v29;
    }

    while (v18 != v29);
    v35 = v30 - 1;
    goto LABEL_37;
  }

LABEL_38:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1E534D1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBULogETLPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  *__str = v5;
  v15 = v5;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(7, "%u.%03u: %s: %s", v6, v7, v8, v9, v10, v11, v13.tv_sec);
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
}

void BBULogETLPrintBinaryDelegate(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(7, v5, a3, a4);
}

void BBULogKTLPrintBinaryDelegate(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = "misc";
  if (a2 == 1)
  {
    v4 = "recv";
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = "send";
  }

  BBULogPrintBinaryDelegate(8, v5, a3, a4);
}

void *ReverseProxyGetSettings@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3002000000;
  v42[3] = __Block_byref_object_copy__2;
  v42[4] = __Block_byref_object_dispose__2;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_1F5F05418;
  v43[0] = v4;
  std::mutex::lock((v4 + 24));
  v5 = *(v4 + 34);
  if ((v5 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  *(v4 + 34) = v5 | 2;
  std::mutex::unlock((v4 + 24));
  cf = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *a1, *(a1 + 8));
  }

  else
  {
    v40 = *a1;
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v40;
  }

  v43[1] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v44;
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v45;
  }

  v6 = *MEMORY[0x1E695E480];
  v47 = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::cf::convert_copy())
  {
    v7 = CFURLCreateWithString(v6, v47, 0);
    CFRelease(v47);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  operator delete(v46.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    cf = v7;
    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_33:
    operator delete(v44.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_32:
  operator delete(v45.__r_.__value_.__l.__data_);
  cf = v7;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_34:
  operator delete(v40.__r_.__value_.__l.__data_);
LABEL_19:
  v11 = RPRegisterForAvailability();
  if (v11)
  {
    v12 = *(a1 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 8);
    }

    if (!v12 || !cf)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "!url.empty() && urlRef");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "NULL requestURL?\n", v23, v24, v25, v38);
      goto LABEL_56;
    }

    RPRegistrationResume();
    v46.__r_.__value_.__r.__words[0] = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
    v13 = std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v4, &v46);
    RPRegistrationInvalidate();
    if (v13)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "fs == std::future_status::ready");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "PRP timed out %d\n", v17, v18, v19, v13);
      goto LABEL_56;
    }

    std::__assoc_state<BOOL>::move(v4);
    if (atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v26)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v32 = v26;
      (*(*v4 + 16))(v4);
      if (v32)
      {
LABEL_47:
        v30 = RPCopyProxyDictionary();
        v31 = *a2;
        *a2 = v30;
        if (v31)
        {
          CFRelease(v31);
        }

LABEL_55:
        v4 = 0;
LABEL_56:
        CFRelease(v11);
        goto LABEL_57;
      }
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "future.get()");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to get PRP\n", v33, v34, v35, v39);
    goto LABEL_55;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "reg");
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to register for proxy\n", v20, v21, v22, v37);
LABEL_57:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4 && !atomic_fetch_add(v4 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v4 + 16))(v4);
  }

  _Block_object_dispose(v42, 8);
  return std::promise<BOOL>::~promise(v43);
}

void sub_1E534DCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a26);
  _Block_object_dispose(&a27, 8);
  std::promise<BOOL>::~promise((v36 + 40));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v35);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23ReverseProxyGetSettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 2)
  {
    v8 = a2;
    if (a2 == 1)
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Available!\n", a6, a7, a8, v12);
      v10 = *(*(*(a1 + 32) + 8) + 40);
      if (!v10)
      {
        std::__throw_future_error[abi:ne200100](3u);
      }

      std::mutex::lock((v10 + 24));
      if ((*(v10 + 136) & 1) != 0 || (v13.__ptr_ = 0, v11 = *(v10 + 16), std::exception_ptr::~exception_ptr(&v13), v11))
      {
        std::__throw_future_error[abi:ne200100](2u);
      }

      *(v10 + 140) = 1;
      *(v10 + 136) |= 5u;
      std::condition_variable::notify_all((v10 + 88));
      std::mutex::unlock((v10 + 24));
    }

    else
    {
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      _BBULog(25, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Aborted? %d\n", a6, a7, a8, v8);
    }
  }
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

void *std::promise<BOOL>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x1E6926F80](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x1E69E5508] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x1E6926F90](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

uint64_t std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  m = (a1 + 24);
  v14.__m_ = (a1 + 24);
  *&v14.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 24));
  v5 = *(a1 + 136);
  if ((v5 & 8) != 0)
  {
    v6 = 2;
    goto LABEL_26;
  }

  if ((v5 & 4) != 0)
  {
    v6 = 0;
    goto LABEL_26;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < *a2)
  {
    if (*a2 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_8;
    }

    v9 = *a2;
    v10.__d_.__rep_ = v9 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v10.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v11.__d_.__rep_)
      {
        v12 = 0;
        goto LABEL_21;
      }

      if (v11.__d_.__rep_ < 1)
      {
        if (v11.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7.__d_.__rep_ = v10.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_6;
        }
      }

      else if (v11.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_21:
          v7.__d_.__rep_ = v12 + v10.__d_.__rep_;
          goto LABEL_6;
        }

LABEL_5:
        v7.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
        std::condition_variable::__do_timed_wait((a1 + 88), &v14, v7);
        std::chrono::steady_clock::now();
        goto LABEL_7;
      }

      v12 = 1000 * v11.__d_.__rep_;
      if (1000 * v11.__d_.__rep_ <= (v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }

LABEL_7:
    std::chrono::steady_clock::now();
LABEL_8:
    v8 = *(a1 + 136);
    if ((v8 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v8 = *(a1 + 136);
LABEL_24:
  v6 = ((v8 >> 2) & 1) == 0;
  if (v14.__owns_)
  {
    m = v14.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v6;
}

void std::__assoc_state<BOOL>::move(uint64_t a1)
{
  __lk.__m_ = (a1 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v2 = *(a1 + 16);
  v6.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v6);
  if (v2)
  {
    std::exception_ptr::exception_ptr(&v5, (a1 + 16));
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_1E534E484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void BBULoader::BBULoader(BBULoader *this, BBUFeedback *a2)
{
  *this = &unk_1F5F05460;
  *(this + 1) = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0xEu, "Assertion failure(fFeedback)", v3, v4, v5, v6);
  }
}

double BBULoader::create(BBULoader *this, BBUFeedback *a2)
{
  LoaderType = capabilities::updater::getLoaderType(this);
  if (LoaderType <= 2)
  {
    if (LoaderType == 2)
    {
      v6 = operator new(0x48uLL);
      *v6 = &unk_1F5F05460;
      v6[1] = this;
      if (!this)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0xEu, "Assertion failure(fFeedback)", v17, v18, v19, v20);
      }

      *v6 = &unk_1F5F05980;
      *(v6 + 1) = constinit_0;
      *(v6 + 2) = unk_1E53949A0;
      result = 2.16086526e-293;
      *(v6 + 3) = xmmword_1E53949B0;
      *(v6 + 16) = 0;
      *(v6 + 68) = 0;
    }

    else if (LoaderType < 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    switch(LoaderType)
    {
      case 3:
        v7 = operator new(0x78uLL);
        *v7 = &unk_1F5F05460;
        *(v7 + 1) = this;
        if (!this)
        {
          v12 = __cxa_allocate_exception(0x210uLL);
          _BBUException::_BBUException(v12, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0xEu, "Assertion failure(fFeedback)", v13, v14, v15, v20);
        }

        *(v7 + 1) = constinit_0;
        *(v7 + 2) = unk_1E53949A0;
        *(v7 + 3) = xmmword_1E53949B0;
        *(v7 + 16) = 0;
        v7[68] = 0;
        *v7 = &unk_1F5F01EE8;
        result = 0.0;
        *(v7 + 69) = 0u;
        *(v7 + 85) = 0u;
        *(v7 + 101) = 0u;
        break;
      case 4:
        v5 = operator new(0x48uLL);
        BBUICE16Loader::BBUICE16Loader(v5, this);
        return result;
      case 5:
LABEL_14:
        v8 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v8, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0x2Au, "Assertion failure(false && Unrecognized radio type.)", v9, v10, v11, v20);
    }
  }

  return result;
}

uint64_t *BBULoader::addProgressBarTimes(uint64_t **this, BBUFeedback *a2)
{
  result = capabilities::updater::getLoaderProgressBarTimesType(this);
  switch(result)
  {
    case 0:
      v5 = (this + 2);
      v8 = this[2];
      if (v8)
      {
        while (1)
        {
          while (1)
          {
            v6 = v8;
            v9 = *(v8 + 8);
            if (v9 < 2)
            {
              break;
            }

            v8 = *v6;
            v5 = v6;
            if (!*v6)
            {
              goto LABEL_19;
            }
          }

          if (v9 == 1)
          {
            goto LABEL_22;
          }

          v8 = v6[1];
          if (!v8)
          {
LABEL_18:
            v5 = v6 + 1;
            goto LABEL_19;
          }
        }
      }

      goto LABEL_13;
    case 1:
      v5 = (this + 2);
      v4 = this[2];
      if (v4)
      {
        while (1)
        {
          while (1)
          {
            v6 = v4;
            v7 = *(v4 + 8);
            if (v7 < 2)
            {
              break;
            }

            v4 = *v6;
            v5 = v6;
            if (!*v6)
            {
              goto LABEL_19;
            }
          }

          if (v7 == 1)
          {
            break;
          }

          v4 = v6[1];
          if (!v4)
          {
            goto LABEL_18;
          }
        }

LABEL_22:
        v6[5] = 0x408F400000000000;
        return result;
      }

LABEL_13:
      v6 = v5;
LABEL_19:
      v10 = operator new(0x30uLL);
      v10[8] = 1;
      *(v10 + 5) = 0;
      *v10 = 0;
      *(v10 + 1) = 0;
      *(v10 + 2) = v6;
      *v5 = v10;
      v11 = *this[1];
      if (v11)
      {
        this[1] = v11;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[2], v10);
      this[3] = (this[3] + 1);
      v6 = v10;
      goto LABEL_22;
    case 2:
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBULoader.cpp", 0x3Eu, "Assertion failure(false && Unrecognized radio type.)", v13, v14, v15, v16);
  }

  return result;
}

BOOL eUICC::Done(const __CFDictionary **a1)
{
  v1 = *a1;
  v8 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  eUICC::Options::Options(v9, &v8);
  v2 = v9[8];
  if (v11 < 0)
  {
    operator delete(__p);
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v1)
  {
LABEL_7:
    CFRelease(v1);
  }

LABEL_8:
  if (v2)
  {
    return 1;
  }

  pthread_mutex_lock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  if (!qword_1ECFD4A28)
  {
    v5 = operator new(4uLL);
    LODWORD(v5->~__shared_weak_count) = 0;
    v4 = operator new(0x20uLL);
    v4->__vftable = &unk_1F5F054C8;
    v4->__shared_owners_ = 0;
    v4->__shared_weak_owners_ = 0;
    v4[1].__vftable = v5;
    v6 = off_1ECFD4A30;
    qword_1ECFD4A28 = v5;
    off_1ECFD4A30 = v4;
    if (!v6)
    {
      goto LABEL_17;
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v5 = qword_1ECFD4A28;
  v4 = off_1ECFD4A30;
  if (off_1ECFD4A30)
  {
LABEL_17:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  result = LODWORD(v5->~__shared_weak_count) > 7;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v7;
    }
  }

  return result;
}

void sub_1E534EB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t eUICC::UpdateOutput(void *a1, const __CFDictionary **a2, CFMutableDictionaryRef *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v5;
  v47 = v5;
  v45 = v5;
  v6 = *a2;
  v44 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v7 = eUICC::Options::Options(&v45, &v44);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = v45;
  v9 = capabilities::radio::maverick(v7);
  if (v9)
  {
    v10 = operator new(0x138uLL);
    *(v10 + 289) = 0;
    *v10 = &unk_1F5F06980;
    *(v10 + 37) = a1;
    *(v10 + 73) = v8;
    v10[304] = 15;
  }

  else if (capabilities::radio::ice(v9))
  {
    v10 = operator new(0x140uLL);
    eUICC::eUICCVinylICEValve::eUICCVinylICEValve(v10, a1, v8, 0);
  }

  else
  {
    v10 = 0;
  }

  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v54[10] = v11;
  v53 = v11;
  *v54 = v11;
  v52[9] = v11;
  v52[10] = v11;
  v52[7] = v11;
  v52[8] = v11;
  v52[5] = v11;
  v52[6] = v11;
  v52[3] = v11;
  v52[4] = v11;
  v52[1] = v11;
  v52[2] = v11;
  v51 = v11;
  v52[0] = v11;
  v49 = v11;
  v50 = v11;
  v48 = v11;
  (*(*v10 + 8))(&v48, v10);
  v18 = eUICC::HowToProceed(&v48, &v45, v12, v13, v14, v15, v16, v17);
  if (!v18)
  {
    v19 = 18;
    goto LABEL_44;
  }

  if (v18 == 3)
  {
    v19 = 0;
    goto LABEL_44;
  }

  v20 = CFDataCreate(0, &v48 + 7, 16);
  v43 = v20;
  CFDictionarySetValue(*a3, @"EUICCCSN", v20);
  if (BYTE7(v49))
  {
LABEL_42:
    v19 = 0;
    if (!v20)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v21 = CFDataCreate(0, &v51 + 8, 8);
  v42 = v21;
  CFDictionarySetValue(*a3, @"EUICCMainNonce", v21);
  v22 = CFDataCreate(0, v52, 8);
  v41 = v22;
  CFDictionarySetValue(*a3, @"EUICCGoldNonce", v22);
  valuePtr = 1;
  v23 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  v39[2] = v23;
  CFDictionarySetValue(*a3, @"EUICCTicketVersion", v23);
  v24 = capabilities::updater::EUICCCertIDSizeBytes(v54[19]);
  v25 = CFDataCreate(0, &v53 + 3, v24);
  v39[1] = v25;
  CFDictionarySetValue(*a3, @"EUICCCertIdentifier", v25);
  v26 = v54[19];
  if (v54[19] < 5uLL)
  {
    if (BBUpdaterCommon::getEUICCChipID(void)::sOnce != -1)
    {
      dispatch_once(&BBUpdaterCommon::getEUICCChipID(void)::sOnce, &__block_literal_global_25);
    }

    v26 = BBUpdaterCommon::getEUICCChipID(void)::euiccChipID;
  }

  v39[0] = v26;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, v39);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 3) & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(25, 0, "eUICC", "", "eUICC ChipID: 0x%llx\n", v27, v28, v29, v39[0]);
  }

LABEL_23:
  v31 = v39[0];
  if (v39[0])
  {
    CFDictionarySetValue(*a3, @"EUICCChipID", v30);
    v32 = CFDataCreate(0, &v53, 3);
    CFDictionarySetValue(*a3, @"EUICCFirmwareLoaderVersion", v32);
    if (v32)
    {
      CFRelease(v32);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICC", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "chipID");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "EUICC but MG has no ChipID?", v33, v34, v35, v38);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v31)
  {
    goto LABEL_42;
  }

  v19 = 18;
  if (v20)
  {
LABEL_43:
    CFRelease(v20);
  }

LABEL_44:
  (*(*v10 + 96))(v10);
  if (SBYTE7(v47) < 0)
  {
    operator delete(__p[0]);
  }

  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1E534F0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Run(void *a1, uint64_t a2, const void **a3)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  if (!qword_1ECFD4A28)
  {
    v7 = operator new(4uLL);
    *v7 = 0;
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F054C8;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v7;
    v8 = off_1ECFD4A30;
    qword_1ECFD4A28 = v7;
    off_1ECFD4A30 = v6;
    if (!v8)
    {
      v14 = v7;
      v15 = v6;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v7 = qword_1ECFD4A28;
  v6 = off_1ECFD4A30;
  v14 = qword_1ECFD4A28;
  v15 = off_1ECFD4A30;
  if (off_1ECFD4A30)
  {
LABEL_8:
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  v9 = *a3;
  cf = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = eUICC::detail::StateMachine::Run(v7, a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v11 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  return v10;
}

void sub_1E534F3A4(_Unwind_Exception *a1)
{
  operator delete(v1);
  pthread_mutex_unlock(&ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_1E534F3D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void eUICC::DumpRecords(void **a1)
{
  v49 = *MEMORY[0x1E69E9840];
  memset(v44, 170, sizeof(v44));
  eUICC::Perso::DumpTransactions(v44);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "dumping %zu records\n", v2, v3, v4, -85 * ((v44[1] - v44[0]) >> 4));
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (ctu::fs::create_directory())
  {
    v11 = v44[0];
    if (v44[1] == v44[0])
    {
      goto LABEL_40;
    }

    v12 = 0;
    v13 = 0;
    do
    {
      memset(__p, 170, sizeof(__p));
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(v48, "%s/Perso-%02d-%s");
      v45 = a1;
      v46 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v47 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v14 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v48, &v45);
      v42 = v13;
      v45 = &v42;
      v46 = boost::io::detail::call_put_head<char,std::char_traits<char>,int const>;
      v47 = boost::io::detail::call_put_last<char,std::char_traits<char>,int const>;
      v15 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v14, &v45);
      v45 = &v11[v12];
      v46 = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string const>;
      v47 = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string const>;
      v16 = boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v15, &v45);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(v16, __p);
      boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::~basic_format(v48);
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v39 = v20;
      _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "%zu -> %s\n", v17, v18, v19, v13);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      v22 = open_dprotected_np(v21, 1793, 4, 0, 420, v39, v40, v41);
      v26 = v22;
      if (v22 < 0)
      {
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        v40 = "";
        v41 = 146;
        _BBULog(25, 0xFFFFFFFFLL, "eUICC", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "destFD >= 0");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        }

        _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "Couldn't allocate FD for transaction record during coredump! fd %d path %s\n", v27, v28, v29, v26);
      }

      else
      {
        write(v22, v11[v12 + 3], v11[v12 + 4] - v11[v12 + 3]);
        close(v26);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v26 < 0)
      {
        break;
      }

      ++v13;
      v11 = v44[0];
      v12 += 6;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v44[1] - v44[0]) >> 4));
  }

  else
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(25, 0xFFFFFFFFLL, "eUICC", "", "Condition <<%s>> failed %s %s/%d\n", v8, v9, v10, "success");
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    if (*(a1 + 23) >= 0)
    {
      LOBYTE(v33) = a1;
    }

    else
    {
      v33 = *a1;
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC", "", "Failed creating directory %s\n", v30, v31, v32, v33);
  }

  v11 = v44[0];
LABEL_40:
  if (v11)
  {
    v34 = v44[1];
    v35 = v11;
    if (v44[1] != v11)
    {
      do
      {
        v36 = *(v34 - 3);
        if (v36)
        {
          *(v34 - 2) = v36;
          operator delete(v36);
        }

        v37 = (v34 - 48);
        if (*(v34 - 25) < 0)
        {
          operator delete(*v37);
        }

        v34 -= 48;
      }

      while (v37 != v11);
      v35 = v44[0];
    }

    v44[1] = v11;
    operator delete(v35);
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void ***std::vector<std::pair<std::string,std::vector<unsigned char>>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_pointer<eUICC::detail::StateMachine *,std::shared_ptr<eUICC::detail::StateMachine>::__shared_ptr_default_delete<eUICC::detail::StateMachine,eUICC::detail::StateMachine>,std::allocator<eUICC::detail::StateMachine>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::detail::StateMachine *,std::shared_ptr<eUICC::detail::StateMachine>::__shared_ptr_default_delete<eUICC::detail::StateMachine,eUICC::detail::StateMachine>,std::allocator<eUICC::detail::StateMachine>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::detail::StateMachine *,std::shared_ptr<eUICC::detail::StateMachine>::__shared_ptr_default_delete<eUICC::detail::StateMachine,eUICC::detail::StateMachine>,std::allocator<eUICC::detail::StateMachine>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E53946C2)
  {
    if (((v2 & 0x80000001E53946C2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E53946C2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E53946C2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BBUScratchFile::createWithFile(const std::__fs::filesystem::path *a1, off_t a2)
{
  size = HIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]);
  v3 = size;
  if ((size & 0x80u) != 0)
  {
    size = a1->__pn_.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    return 2;
  }

  if (v3 < 0)
  {
    v6 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!ctu::fs::file_exists() || ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = a1) : (v8 = a1->__pn_.__r_.__value_.__r.__words[0]), !remove(v8, v7)))
  {
    if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__pn_.__r_.__value_.__r.__words[0];
    }

    v12 = open(v11, 1537, 384);
    if (v12 < 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v9 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v9;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v9 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v9;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v10 = "file not found after creating %s\n";
        goto LABEL_36;
      }

      return v9;
    }

    v13 = v12;
    if (ftruncate(v12, a2))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v9 = 11;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v9 = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_22:
        if (gBBULogVerbosity < 0)
        {
          goto LABEL_26;
        }

        v14 = __error();
        v15 = strerror(*v14);
        v19 = "cannot truncate file %s\n";
        goto LABEL_24;
      }
    }

    else
    {
      v26 = getpwnam("_wireless");
      if (v26)
      {
        if (!fchown(v13, v26->pw_uid, v26->pw_gid))
        {
          v9 = 0;
          goto LABEL_26;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v9 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v9 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_26;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v33 = __error();
          v15 = strerror(*v33);
          v19 = "failed changing file owner:  %s";
LABEL_24:
          v35 = v15;
LABEL_25:
          _BBULog(15, 0, "BBUScratchFile", "", v19, v16, v17, v18, v35);
        }
      }

      else
      {
        _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v27, v28, v29, v30, v31, v32, v34);
        if (gBBULogMaskGet(void)::once == -1)
        {
          v9 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v9 = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_26;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v19 = "failed to get uid and gid information for _wireless\n";
          goto LABEL_25;
        }
      }
    }

LABEL_26:
    if (close(v13))
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v9 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v9;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v9 = 15;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          return v9;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v10 = "could not close file %s\n";
        goto LABEL_36;
      }
    }

    return v9;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v9 = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return v9;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v9 = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return v9;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v10 = "cannot remove existing file %s\n";
LABEL_36:
    v20 = __error();
    v21 = strerror(*v20);
    _BBULog(15, 0, "BBUScratchFile", "", v10, v22, v23, v24, v21);
  }

  return v9;
}

void BBUEURInitializer::~BBUEURInitializer(BBUEURInitializer *this)
{
  *this = &unk_1F5F02D68;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 2));
  }
}

{
  *this = &unk_1F5F02D68;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 2));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t BBUEURInitializer::prepare(uint64_t a1, uint64_t a2, int a3)
{
  StageContext = BBUFeedback::getStageContext(*(a1 + 8));
  if (gBBULogMaskGet(void)::once != -1)
  {
    v26 = StageContext;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    StageContext = v26;
  }

  v6 = (gBBULogVerbosity >= 0) & (*gBBULogMaskGet(void)::sBBULogMask >> 4);
  if (StageContext == 8)
  {
    if (v6)
    {
      v7 = (**a1)(a1);
      _BBULog(4, 0, v7, "", "StageContext is Coredump, skipping prepare\n", v8, v9, v10, v27);
    }

    return 0;
  }

  if (v6)
  {
    v11 = (**a1)(a1);
    v12 = BBUStageAsString(a3);
    _BBULog(4, 0, v11, "", "Preparing at %s with reset requested %u\n", v13, v14, v15, v12);
  }

  if (a3 != 2)
  {
    return 0;
  }

  if (*(a1 + 40) == 1)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) != 0)
      {
LABEL_12:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v16 = (**a1)(a1);
          _BBULog(4, 0, v16, "", "Powering on modem. It is NOOP if BB is already on\n", v17, v18, v19, v27);
        }
      }
    }

    TelephonyBasebandPowerOnModem();
    result = 0;
    *(a1 + 40) = 0;
    return result;
  }

  *(a1 + 40) = 0;
  BBUFeedback::handleComment(*(a1 + 8), "%s: Resetting modem", "prepare");
  if (TelephonyBasebandResetModem())
  {
    return 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 73;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v21 = (**a1)(a1);
    v22 = BBUStageAsString(2);
    _BBULog(4, 0, v21, "", "Fail to prepare at %s with reset %u\n", v23, v24, v25, v22);
    return 73;
  }

  return result;
}

uint64_t BBUEURInitializer::finalize(BBUFeedback **a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if ((a4 & 0xFFFFFFFD) != 1 || (result = (*(*a1 + 30))(a1, a2), !result))
  {
    result = BBUEURInitializer::restoreNVItems(a1, a2, a4);
    if (!result)
    {
      (*(*a1 + 25))(a1);

      return BBUEURInitializer::updateIMEISvn(a1, a2, a5);
    }
  }

  return result;
}

uint64_t BBUEURInitializer::restoreNVItems(BBUFeedback **a1, uint64_t a2, int a3)
{
  (*(*a1 + 23))(a1);
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        BBUFeedback::handleComment(a1[1], "OQC Magic is not supported on MAV basebands");
        return 0;
      }

      return 0;
    }

    BBUFeedback::handleComment(a1[1], "Restoring NV items to FATP defaults");
    if ((ETLMaverickWriteFATPDefaultNVs() & 1) == 0)
    {
      return 3;
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return 0;
      }

      BBUFeedback::handleComment(a1[1], "Restoring NV items to Shipping defaults");
      if (ETLMaverickWriteDefaultNVs())
      {
        return 0;
      }

      return 3;
    }

    BBUFeedback::handleComment(a1[1], "Restoring NV items to Factory defaults");
    if (!ETLMaverickWriteFactoryDefaultNVs())
    {
      return 3;
    }
  }

  return 0;
}

uint64_t BBUEURInitializer::updateIMEISvn(uint64_t a1, uint64_t a2, unsigned int a3)
{
  BBUFeedback::handleComment(*(a1 + 8), "IMEI-SVN Check and Update...");
  if (a3 == -1)
  {
    return 0;
  }

  if (a3 > 0x62)
  {
    return 2;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v6 = (**a1)(a1);
    _BBULog(20, 0, v6, "", "Getting current SVN\n", v7, v8, v9, v35);
  }

LABEL_8:
  if (!ETLMaverickGetIMEISwVersion())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) == 0)
      {
        goto LABEL_15;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v10 = (**a1)(a1);
      _BBULog(20, 0, v10, "", "Trying to set SVN\n", v11, v12, v13, v35);
    }

LABEL_15:
    v14 = ETLMaverickSetIMEISwVersion();
    if (gBBULogMaskGet(void)::once != -1)
    {
      v33 = v14;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v14 = v33;
    }

    v15 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
    if (v14)
    {
      if (v15)
      {
        v16 = (**a1)(a1);
        _BBULog(20, 0, v16, "", "SVN set: %d\n", v17, v18, v19, a3);
      }

      return 0;
    }

    goto LABEL_28;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  if (((gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4)) != 0)
  {
    v20 = (**a1)(a1);
    _BBULog(20, 0, v20, "", "Trying to set new SVN\n", v21, v22, v23, v35);
  }

  v24 = ETLMaverickSetIMEISwVersion();
  if (gBBULogMaskGet(void)::once != -1)
  {
    v34 = v24;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v24 = v34;
  }

  v15 = (gBBULogVerbosity >= 0) & (*(gBBULogMaskGet(void)::sBBULogMask + 2) >> 4);
  if (v24)
  {
    if (v15)
    {
      v25 = (**a1)(a1);
      _BBULog(20, 0, v25, "", "SVN changed from %d to %d\n", v26, v27, v28, 170);
    }

    return 0;
  }

LABEL_28:
  if (v15)
  {
    v29 = (**a1)(a1);
    _BBULog(20, 0, v29, "", "Could not set SVN\n", v30, v31, v32, v35);
  }

  return 3;
}

uint64_t BBUEURInitializer::crashBaseband(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Reset = TelephonyBasebandGetReset();
  if (capabilities::coredump::supportsGPIOSignalling(Reset))
  {
    TelephonyBasebandSetModemCoredumpGPIO();
    usleep(0xF4240u);
    TelephonyBasebandSetModemCoredumpGPIO();
    BBUFeedback::handleComment(*(a1 + 8), "Coredump GPIO signalled");
    TelephonyBasebandGetReset();
  }

  if (a3)
  {
    BBUFeedback::handleComment(*(a1 + 8), "DIAG crash command sent");
    ETLBBSimulateCrash();
  }

  BBUFeedback::handleComment(*(a1 + 8), "resetting modem");
  TelephonyBasebandResetModem();
  return 0;
}

uint64_t BBUEURInitializer::getVersion(void *a1, uint64_t a2, BBUEUR16FirmwareVersion **a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Initialization/Eureka/BBUEURInitializer.cpp", 0xA0u, "Assertion failure(transport && Telephony util transport error)", v14, v15, v16, v17);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v21 + 11) = v5;
  v20[14] = v5;
  v21[0] = v5;
  v20[12] = v5;
  v20[13] = v5;
  v20[10] = v5;
  v20[11] = v5;
  v20[8] = v5;
  v20[9] = v5;
  v20[7] = v5;
  v20[5] = v5;
  v20[6] = v5;
  v20[3] = v5;
  v20[4] = v5;
  v20[1] = v5;
  v20[2] = v5;
  v20[0] = v5;
  *a3 = 0;
  (*(*a1 + 200))(a1);
  if (!ETLBBGetVersion())
  {
    result = 3;
    goto LABEL_16;
  }

  v6 = strlen((v20 | 0xB));
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v6 | 7) + 1;
    }

    v8 = operator new(v10);
    __dst[1] = v7;
    v19 = v10 | 0x8000000000000000;
    __dst[0] = v8;
  }

  else
  {
    HIBYTE(v19) = v6;
    v8 = __dst;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  memcpy(v8, (v20 | 0xB), v7);
LABEL_13:
  *(v7 + v8) = 0;
  v11 = BBUFirmwareVersion::createFromVersionString(__dst);
  a1[2] = v11;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
    v11 = a1[2];
  }

  result = 0;
  *a3 = v11;
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5350C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::gatherPersonalizationParameters(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v6;
  v52 = v6;
  v49 = v6;
  v50 = v6;
  v47 = v6;
  v48 = v6;
  *bytes = v6;
  v46 = v6;
  v28 = -1431655766;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickReadPublicKeyHash())
  {
    goto LABEL_11;
  }

  v7 = v28;
  v8 = operator new(0x10uLL);
  *v8 = &unk_1F5F04C88;
  v8[1] = 0;
  v9 = *MEMORY[0x1E695E480];
  v8[1] = CFDataCreate(*MEMORY[0x1E695E480], bytes, v7);
  (*(*a3 + 24))(a3, v8);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = v10;
  v44 = v10;
  v41 = v10;
  v42 = v10;
  v39 = v10;
  v40 = v10;
  *v37 = v10;
  v38 = v10;
  v27 = -1431655766;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickReadNonce())
  {
    goto LABEL_11;
  }

  v11 = operator new(0x10uLL);
  v12 = (v27 + 7) >> 3;
  *v11 = &unk_1F5F04B68;
  v11[1] = 0;
  v11[1] = CFDataCreate(v9, v37, v12);
  v13 = a3[1];
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  a3[1] = v11;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v14;
  v36 = v14;
  v33 = v14;
  v34 = v14;
  v31 = v14;
  v32 = v14;
  v29 = v14;
  v30 = v14;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 200))(a1);
  if (ETLMaverickReadSerialNumberAndChipID())
  {
    v15 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v29, HIDWORD(v26));
    (*(*a3 + 16))(a3, v15);
    v16 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(v26);
    v17 = a3[2];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    a3[2] = v16;
    HIDWORD(v26) = 0;
    (*(*a3 + 32))(a3, &v26 + 4, 0);
    if (HIDWORD(v26) == 3)
    {
      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v18;
      v30 = v18;
      if (ETLMaverickManifestStatusInit())
      {
        v19 = (*(*a1 + 208))(a1, a2, a3, &v29);
        ETLMaverickManifestStatusFree();
      }

      else
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v19 = 19;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v19 = 19;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
          {
            goto LABEL_12;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v22 = (**a1)(a1);
          _BBULog(4, 0, v22, "", "Failed to allocate space for manifest_status\n", v23, v24, v25, v26);
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
LABEL_11:
    v19 = 3;
  }

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t BBUEURInitializer::overridePersonalizationParameters(BBUFeedback **this, BBUPersonalizationParameters *a2, const __CFDictionary *a3)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  BBUFeedback::handleComment(this[1], "Overriding with preflight information:");
  if (CFDictionaryGetValueIfPresent(a3, @"ChipID", &value))
  {
    v6 = CFGetTypeID(value);
    if (v6 == CFNumberGetTypeID())
    {
      v7 = value;
      v8 = operator new(0x10uLL);
      *v8 = &unk_1F5F04BF8;
      v8[1] = v7;
      CFRetain(v7);
      v9 = *(a2 + 2);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(a2 + 2) = v8;
      v10 = this[1];
      v11 = (*(*v8 + 24))(v8);
      v12 = (*(*v8 + 24))(v8);
      BBUFeedback::handleComment(v10, "   ChipID: %u (0x%08x)", v11, v12);
    }
  }

  if (!CFDictionaryGetValueIfPresent(a3, @"ChipSerialNo", &value))
  {
    goto LABEL_12;
  }

  v13 = CFGetTypeID(value);
  if (v13 != CFDataGetTypeID())
  {
    goto LABEL_12;
  }

  v14 = value;
  v15 = operator new(0x10uLL);
  *v15 = &unk_1F5F04B98;
  v15[1] = v14;
  CFRetain(v14);
  (*(*a2 + 16))(a2, v15);
  v16 = this[1];
  (*(*v15 + 24))(__p, v15);
  v17 = v31 >= 0 ? __p : __p[0];
  BBUFeedback::handleComment(v16, "   ChipSerialNo: %s", v17);
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_12:
    if (!CFDictionaryGetValueIfPresent(a3, @"CertHash", &value))
    {
      goto LABEL_20;
    }
  }

  v18 = CFGetTypeID(value);
  if (v18 == CFDataGetTypeID())
  {
    v19 = value;
    v20 = operator new(0x10uLL);
    *v20 = &unk_1F5F04C88;
    v20[1] = v19;
    CFRetain(v19);
    (*(*a2 + 24))(a2, v20);
    v21 = this[1];
    (*(*v20 + 24))(__p, v20);
    v22 = v31 >= 0 ? __p : __p[0];
    BBUFeedback::handleComment(v21, "   CertHash: %s", v22);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_20:
  if (CFDictionaryGetValueIfPresent(a3, @"Nonce", &value))
  {
    v23 = CFGetTypeID(value);
    if (v23 == CFDataGetTypeID())
    {
      v24 = value;
      v25 = operator new(0x10uLL);
      *v25 = &unk_1F5F04B68;
      v25[1] = v24;
      CFRetain(v24);
      v26 = *(a2 + 1);
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      *(a2 + 1) = v25;
      v27 = this[1];
      (*(*v25 + 24))(__p, v25);
      if (v31 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      BBUFeedback::handleComment(v27, "   Nonce: %s", v28);
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return 0;
}

void sub_1E5351538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::gatherProvisioningParameters(BBUFeedback **a1, capabilities::euicc *a2, uint64_t a3)
{
  result = (*(*a1 + 33))(a1);
  if (!result)
  {
    result = (*(*a1 + 31))(a1, a2, a3);
    if (!result)
    {
      result = (*(*a1 + 32))(a1, a2, a3);
      if (!result)
      {
        if (eUICC::getEID(a2, a3, a1[1]) == 126)
        {
          return 126;
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

uint64_t BBUEURInitializer::getProvisioningStatus(BBUFeedback **a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v10;
  v22[1] = v10;
  *a4 = 1;
  v23 = 0;
  if (ETLMaverickManifestStatusInit())
  {
    if ((*(*a1 + 26))(a1, a2, a3, v22))
    {
      v11 = 0;
      HIDWORD(v23) = 4;
      *a5 = 0;
LABEL_22:
      ETLMaverickManifestStatusFree();
      return v11;
    }

    if (!ETLProvisionParseStatus())
    {
      v11 = 3;
      goto LABEL_22;
    }

    v16 = HIDWORD(v23);
    LOBYTE(v23) = HIDWORD(v23) == 1;
    if (SHIDWORD(v23) > 1)
    {
      if (HIDWORD(v23) == 2)
      {
        goto LABEL_17;
      }

      if (HIDWORD(v23) == 3)
      {
        *a5 = 0;
LABEL_19:
        v17 = WORD4(v22[0]);
        if (WORD4(v22[0]))
        {
          v18 = a1[1];
          StateAsString = ETLProvisionGetStateAsString();
          BBUFeedback::handleComment(v18, "Provision manifest status:%u => state %s(%u), mismatched %u", v17, StateAsString, HIDWORD(v23), v23);
        }

        v11 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (!HIDWORD(v23))
      {
LABEL_17:
        *a5 = v16 != 2;
        BBUFeedback::handleComment(a1[1], "mature");
        goto LABEL_19;
      }

      if (HIDWORD(v23) == 1)
      {
        *a4 = 0;
        goto LABEL_17;
      }
    }

    *a5 = 0;
    BBUFeedback::handleComment(a1[1], "bringup");
    goto LABEL_19;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v11 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return v11;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v11 = 19;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return v11;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**a1)(a1);
    _BBULog(4, 0, v12, "", "Failed to allocate space for manifest_status\n", v13, v14, v15, v21);
  }

  return v11;
}

uint64_t BBUEURInitializer::gatherManifestInfo(BBUFeedback **a1, uint64_t a2, void *a3, uint64_t a4)
{
  BBUFeedback::handleComment(a1[1], "Getting manifest information from BB");
  (*(*a1 + 25))(a1);
  if (!ETLMaverickGetManifestStatus())
  {
    BBUFeedback::handleComment(a1[1], "Failed getting manifest status");
    return 3;
  }

  v7 = *(a4 + 8) - 4;
  if (v7 > 0x3C)
  {
    goto LABEL_9;
  }

  if (((1 << (*(a4 + 8) - 4)) & 0x3000004) != 0)
  {
    v8 = 2;
  }

  else
  {
    if (((1 << (*(a4 + 8) - 4)) & 0x801) != 0)
    {
      v8 = 1;
      goto LABEL_12;
    }

    v8 = 0;
    if (v7 != 60)
    {
LABEL_9:
      if (*(a4 + 8))
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }
    }
  }

LABEL_12:
  v10 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(v8);
  v11 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(*(a4 + 8));
  v32 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(*(a4 + 12));
  v33 = BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(*(a4 + 10));
  BBUFeedback::handleComment(a1[1], "Manifest status: \n\t\t\t  provision_status   : %u\n \t\t\t  fatp_cal_status    : %u\n \t\t\t  calibration_status : %u", *(a4 + 8), *(a4 + 10), *(a4 + 12));
  DigestType = capabilities::updater::getDigestType(v12);
  if (DigestType == 2)
  {
    v14 = 48;
  }

  else
  {
    v14 = 0;
  }

  v15 = DigestType - 1;
  if (DigestType == 1)
  {
    v16 = 32;
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    goto LABEL_57;
  }

  v17 = DigestType;
  memset(__p, 170, sizeof(__p));
  ctu::hex(*(a4 + 16), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  skey_hash    [0x%02x]: %s", 0, v18);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v15 > 1)
    {
      goto LABEL_38;
    }
  }

  else if (v15 > 1)
  {
    goto LABEL_38;
  }

  memset(__p, 170, sizeof(__p));
  ctu::hex((*(a4 + 16) + 16), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  skey_hash    [0x%02x]: %s", 16, v19);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v17 != 2)
    {
      goto LABEL_38;
    }
  }

  else if (v17 != 2)
  {
    goto LABEL_38;
  }

  memset(__p, 170, sizeof(__p));
  ctu::hex((*(a4 + 16) + 32), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  skey_hash    [0x%02x]: %s", 32, v20);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_38:
  memset(__p, 170, sizeof(__p));
  ctu::hex(*(a4 + 24), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  ckey_hash    [0x%02x]: %s", 0, v21);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    if (v15 > 1)
    {
      goto LABEL_57;
    }
  }

  else if (v15 > 1)
  {
    goto LABEL_57;
  }

  memset(__p, 170, sizeof(__p));
  ctu::hex((*(a4 + 24) + 16), 0x10);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  BBUFeedback::handleComment(a1[1], "  ckey_hash    [0x%02x]: %s", 16, v22);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v17 != 2)
    {
      goto LABEL_57;
    }

LABEL_52:
    memset(__p, 170, sizeof(__p));
    ctu::hex((*(a4 + 24) + 32), 0x10);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    BBUFeedback::handleComment(a1[1], "  ckey_hash    [0x%02x]: %s", 32, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_57;
  }

  operator delete(__p[0]);
  if (v17 == 2)
  {
    goto LABEL_52;
  }

LABEL_57:
  v24 = a3[6];
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  a3[6] = v10;
  v25 = a3[8];
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  a3[8] = v11;
  v26 = a3[9];
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  a3[9] = v32;
  v27 = a3[10];
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  a3[10] = v33;
  v28 = *(a4 + 8);
  if (v28 <= 0xF && ((1 << v28) & 0x8011) != 0)
  {
    v29 = *(a4 + 16);
    v30 = operator new(0x10uLL);
    *v30 = &unk_1F5F04C58;
    v30[1] = 0;
    v30[1] = CFDataCreate(*MEMORY[0x1E695E480], v29, v16);
    v31 = a3[7];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    result = 0;
    a3[7] = v30;
  }

  else
  {
    BBUFeedback::handleComment(a1[1], "BB has no provisioning manifest");
    return 0;
  }

  return result;
}

void sub_1E5351DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::pingAndCheckForResponse(uint64_t a1)
{
  v17 = 0;
  v2 = TelephonyUtilSystemMachTime();
  do
  {
    (*(*a1 + 192))(a1);
    if ((ETLMaverickGetBasebandInitStatusEx() & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 3;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 3;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
        {
          return result;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v8 = (**a1)(a1);
        _BBULog(4, 0, v8, "", "Fail to read BB Init Status: I/O error\n", v9, v10, v11, v16);
        return 3;
      }

      return result;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
      {
        goto LABEL_2;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v3 = (**a1)(a1);
      _BBULog(4, 0, v3, "", "BB Init status: not ready\n", v4, v5, v6, v16);
    }

LABEL_2:
    usleep(0x186A0u);
  }

  while ((TelephonyUtilSystemMachTime() - v2) <= 0x1388);
  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 40;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 40;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v12 = (**a1)(a1);
    _BBULog(4, 0, v12, "", "Timeout on waiting for BB Init status\n", v13, v14, v15, v16);
    return 40;
  }

  return result;
}

void sub_1E535216C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEURInitializer::fusingCheck(BBUFeedback **a1)
{
  BBUFeedback::handleBeginQuickStep(a1[1], "Fusing check");
  (*(*a1 + 25))(a1);
  FusingStatus = ETLMaverickGetFusingStatus();
  if (FusingStatus)
  {
    capabilities::updater::shouldAllowUnfused(FusingStatus);
  }

  (*(*a1[1] + 24))(a1[1], 24);
  return 24;
}

uint64_t BBUEURInitializer::getIMEI(capabilities::updater *a1, uint64_t a2, std::string **a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((capabilities::updater::supportsDualIMEIProvision(a1) & 1) == 0)
  {
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = -86;
    (*(*a1 + 200))(a1);
    if (!ETLGSMGetIMEI())
    {
      goto LABEL_44;
    }

    if (!ETLGSMIsValidIMEI())
    {
      goto LABEL_64;
    }

    memset(__s, 170, sizeof(__s));
    if (!ETLGSMMakeStringFromIMEI())
    {
      goto LABEL_45;
    }

    v9 = operator new(0x18uLL);
    v10 = strlen(__s);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v10 | 7) + 1;
      }

      v12 = operator new(v15);
      *(&v31 + 1) = v11;
      v32 = v15 | 0x8000000000000000;
      *&v31 = v12;
    }

    else
    {
      HIBYTE(v32) = v10;
      v12 = &v31;
      if (!v10)
      {
LABEL_29:
        *(v12 + v11) = 0;
        if (SHIBYTE(v32) < 0)
        {
          v24 = v31;
          std::string::__init_copy_ctor_external(v9, v31, *(&v31 + 1));
          operator delete(v24);
          v16 = *a3;
          if (!*a3)
          {
LABEL_50:
            *a3 = v9;
            goto LABEL_64;
          }
        }

        else
        {
          *&v9->__r_.__value_.__l.__data_ = v31;
          v9->__r_.__value_.__r.__words[2] = v32;
          v16 = *a3;
          if (!*a3)
          {
            goto LABEL_50;
          }
        }

        if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
        {
          v25 = v16;
          operator delete(v16->__r_.__value_.__l.__data_);
          v16 = v25;
        }

        operator delete(v16);
        goto LABEL_50;
      }
    }

    memcpy(v12, __s, v11);
    goto LABEL_29;
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = -86;
  v36 = -86;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v34 = -86;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 200))(a1);
  if (!ETLMaverickGetIMEI())
  {
    goto LABEL_44;
  }

  v40 = v35;
  v41 = v36;
  if (ETLGSMIsValidIMEI())
  {
    memset(__s, 170, sizeof(__s));
    if (ETLGSMMakeStringFromIMEI())
    {
      v5 = operator new(0x18uLL);
      v6 = strlen(__s);
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        if ((v6 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v6 | 7) + 1;
        }

        v8 = operator new(v13);
        *(&v31 + 1) = v7;
        v32 = v13 | 0x8000000000000000;
        *&v31 = v8;
      }

      else
      {
        HIBYTE(v32) = v6;
        v8 = &v31;
        if (!v6)
        {
LABEL_21:
          *(v8 + v7) = 0;
          if (SHIBYTE(v32) < 0)
          {
            v17 = v31;
            std::string::__init_copy_ctor_external(v5, v31, *(&v31 + 1));
            operator delete(v17);
            v14 = *a3;
            if (!*a3)
            {
LABEL_36:
              *a3 = v5;
              goto LABEL_37;
            }
          }

          else
          {
            *&v5->__r_.__value_.__l.__data_ = v31;
            v5->__r_.__value_.__r.__words[2] = v32;
            v14 = *a3;
            if (!*a3)
            {
              goto LABEL_36;
            }
          }

          if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
          {
            v18 = v14;
            operator delete(v14->__r_.__value_.__l.__data_);
            v14 = v18;
          }

          operator delete(v14);
          goto LABEL_36;
        }
      }

      memcpy(v8, __s, v7);
      goto LABEL_21;
    }

LABEL_45:
    result = 11;
    goto LABEL_65;
  }

LABEL_37:
  (*(*a1 + 200))(a1);
  if (ETLMaverickGetIMEI())
  {
    v37 = v33;
    v38 = v34;
    if (ETLGSMIsValidIMEI())
    {
      memset(__s, 170, sizeof(__s));
      if (ETLGSMMakeStringFromIMEI())
      {
        v19 = operator new(0x18uLL);
        v20 = strlen(__s);
        if (v20 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = v20;
        if (v20 >= 0x17)
        {
          if ((v20 | 7) == 0x17)
          {
            v26 = 25;
          }

          else
          {
            v26 = (v20 | 7) + 1;
          }

          v22 = operator new(v26);
          *(&v31 + 1) = v21;
          v32 = v26 | 0x8000000000000000;
          *&v31 = v22;
        }

        else
        {
          HIBYTE(v32) = v20;
          v22 = &v31;
          if (!v20)
          {
            goto LABEL_56;
          }
        }

        memcpy(v22, __s, v21);
LABEL_56:
        *(v22 + v21) = 0;
        if (SHIBYTE(v32) < 0)
        {
          v27 = v31;
          std::string::__init_copy_ctor_external(v19, v31, *(&v31 + 1));
          operator delete(v27);
        }

        else
        {
          *&v19->__r_.__value_.__l.__data_ = v31;
          v19->__r_.__value_.__r.__words[2] = v32;
        }

        v28 = a3[1];
        if (v28)
        {
          if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
          {
            v29 = a3[1];
            operator delete(v28->__r_.__value_.__l.__data_);
            v28 = v29;
          }

          operator delete(v28);
        }

        a3[1] = v19;
        goto LABEL_64;
      }

      goto LABEL_45;
    }

LABEL_64:
    result = 0;
    goto LABEL_65;
  }

LABEL_44:
  result = 30;
LABEL_65:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}