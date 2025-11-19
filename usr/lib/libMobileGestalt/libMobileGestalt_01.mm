const void *sub_1B01A17DC(const void *a1, int a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = _CFCopySystemVersionPlatformDictionary();
  }

  else
  {
    v5 = _CFCopySystemVersionDictionary();
  }

  v6 = v5;
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, a1);
    v8 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    else if (a2)
    {
      v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      if (v16)
      {
        v22 = v16 + 1;
      }

      else
      {
        v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      }

      _MGLog(v22, 302, @"Could not lookup %@ from system version dictionary", v17, v18, v19, v20, v21, a1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = a1;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not lookup %@ from system version dictionary", buf, 0xCu);
      }
    }

    CFRelease(v6);
  }

  else
  {
    if (a2)
    {
      v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      v15 = v9 ? v9 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      _MGLog(v15, 307, @"Could not load the system version dictionary", v10, v11, v12, v13, v14, v25);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not load the system version dictionary", buf, 2u);
      }
    }

    v8 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

const void *sub_1B01A1980(const __CFDictionary *a1, const void *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    else if (a3)
    {
      v15 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      if (v15)
      {
        v21 = v15 + 1;
      }

      else
      {
        v21 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      }

      _MGLog(v21, 334, @"Could not lookup %@ from dictionary", v16, v17, v18, v19, v20, a2);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = a2;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not lookup %@ from dictionary", buf, 0xCu);
      }
    }

    CFRelease(a1);
  }

  else
  {
    if (a3)
    {
      v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
      v14 = v8 ? v8 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
      _MGLog(v14, 339, @"No dictionary provided", v9, v10, v11, v12, v13, v24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No dictionary provided", buf, 2u);
      }
    }

    v7 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B01A1B38(const __CFArray *a1, uint64_t a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v9.location = 0;
    v9.length = Count;
    CFArrayGetValues(a1, v9, v5);
    if (Count >= 1)
    {
      v6 = v5;
      do
      {
        v7 = *v6++;
        (*(a2 + 16))(a2, v7);
        --Count;
      }

      while (Count);
    }

    free(v5);
  }
}

const __CFData *sub_1B01A1BE8(CFDataRef theData)
{
  v1 = theData;
  if (theData)
  {
    Length = CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(v1);
    if (Length < 2)
    {
      return 0;
    }

    v4 = BytePtr;
    v5 = 0;
    while (!BytePtr[Length - 1 + v5])
    {
      --v5;
      if (!(Length + v5))
      {
        return 0;
      }
    }

    v6 = Length + v5;
    if (!(Length + v5))
    {
      return 0;
    }

    if (v6 >= 1)
    {
      v7 = 0;
      v8 = MEMORY[0x1E69E9830];
      do
      {
        v9 = v4[v7];
        if (!(v9 < 0 ? __maskrune(v4[v7], 0x40000uLL) : *(v8 + 4 * v9 + 60) & 0x40000))
        {
          return 0;
        }
      }

      while (v6 != ++v7);
    }

    if (v5)
    {
      v11 = CFStringCreateWithCString(0, v4, 0x8000100u);
      v12 = v11;
      if (v5 == -1)
      {
        v13 = CFStringCreateWithFormat(0, 0, @"%@\\0", v11);
      }

      else
      {
        v13 = CFStringCreateWithFormat(0, 0, @"%@ (%llux\\0)", v11, -v5);
      }
    }

    else
    {
      v12 = CFStringCreateWithBytes(0, v4, Length, 0x8000100u, 0);
      v13 = CFStringCreateWithFormat(0, 0, @"%@", v12);
    }

    v1 = v13;
    CFRelease(v12);
  }

  return v1;
}

uint64_t sub_1B01A1D48(char *a1, const void *a2, _BYTE *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (!access(a1, 4))
  {
    v7 = sub_1B0191C2C(a1, 1);
    if (v7)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(v7, a2);
      if (Value)
      {
        v10 = Value;
        v11 = CFGetTypeID(Value);
        if (v11 == CFBooleanGetTypeID())
        {
          v12 = CFBooleanGetValue(v10) == 0;
LABEL_11:
          v6 = !v12;
          if (a3)
          {
            *a3 = 1;
          }

          goto LABEL_22;
        }

        if (v11 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
          v12 = valuePtr == 0;
          goto LABEL_11;
        }

        v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
        if (v13)
        {
          v19 = v13 + 1;
        }

        else
        {
          v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
        }

        _MGLog(v19, 767, @"illegal type for %@ in %s", v14, v15, v16, v17, v18, a2);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          valuePtr = 138412546;
          v23 = a2;
          v24 = 2080;
          v25 = a1;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "illegal type for %@ in %s", &valuePtr, 0x16u);
        }
      }

      v6 = 0;
LABEL_22:
      CFRelease(v8);
      goto LABEL_23;
    }
  }

  v6 = 0;
LABEL_23:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B01A1EF0()
{
  v18 = *MEMORY[0x1E69E9840];
  *host_info_out = 0;
  host_info_outCnt = 2;
  v0 = MEMORY[0x1B27212C0]();
  v1 = host_info(v0, 12, host_info_out, &host_info_outCnt);
  if (v1)
  {
    v2 = v1;
    v3 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v4)
    {
      v3 = v4 + 1;
    }

    v5 = mach_error_string(v2);
    _MGLog(v3, 936, @"host_info failed: %s", v6, v7, v8, v9, v10, v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = mach_error_string(v2);
      *buf = 136315138;
      v17 = v11;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "host_info failed: %s", buf, 0xCu);
    }
  }

  result = *host_info_out;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01A1FFC(const char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = NXGetArchInfoFromName(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B01A1EF0();
    *&fat_archs.cputype = *&v3->cputype;
    *&fat_archs.offset = 0;
    fat_archs.align = 0;
    result = NXFindBestFatArch(v4, SHIDWORD(v4), &fat_archs, 1u) != 0;
  }

  else
  {
    v6 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v6)
    {
      v12 = v6 + 1;
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    }

    _MGLog(v12, 1039, @"arch %s unknown", v7, v8, v9, v10, v11, a1);
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v13)
    {
      fat_archs.cputype = 136315138;
      *&fat_archs.cpusubtype = a1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "arch %s unknown", &fat_archs, 0xCu);
      result = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01A2114(const __CFString *a1)
{
  v2 = MGGetStringAnswer(@"k7QIBwZJJOVw+Sej/8h8VA");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFStringCompare(v2, a1, 0) == kCFCompareEqualTo;
  CFRelease(v3);
  return v4;
}

BOOL sub_1B01A2170(const char *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = access(a1, 0);
  if (v2 && *__error() != 2)
  {
    v3 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c";
    v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/utility.c", 47);
    if (v4)
    {
      v3 = v4 + 1;
    }

    v13 = *__error();
    _MGLog(v3, 1071, @"access(2) %s: %{errno}d", v5, v6, v7, v8, v9, a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *__error();
      *buf = 136315394;
      v15 = a1;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "access(2) %s: %{errno}d", buf, 0x12u);
    }
  }

  result = v2 == 0;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1B01A2290(int a1)
{
  if ((a1 - 1) > 7)
  {
    v1 = @"Invalid Key";
  }

  else
  {
    v1 = off_1E7A92570[a1 - 1];
  }

  CFRetain(v1);
  return v1;
}

__CFString *sub_1B01A22DC(int a1)
{
  v1 = @"MGS_SIM_NULL_STATUS";
  if (a1 == 2)
  {
    v1 = @"MGS_SIM_TRAY_STATUS";
  }

  if (a1 == 1)
  {
    v2 = @"MGS_SIM_STATUS";
  }

  else
  {
    v2 = v1;
  }

  CFRetain(v2);
  return v2;
}

CFDataRef sub_1B01A232C()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0193ED4("IODeviceTree:/chosen", @"display-scale", 0, 0, 1);
  v1 = sub_1B0193ED4("IODeviceTree:/chosen", @"display-rotation", 0, 0xFFFFFFFFLL, 1);
  if (v1 == -1)
  {
    v2 = -1.0;
  }

  else
  {
    v2 = ((360 - v1) % 360) * 0.0174532925;
  }

  if (sub_1B0193D14() != 4 && sub_1B0193D14() != 8 && sub_1B0193D14() != 10)
  {
    *bytes = 0;
    v17 = 0;
    MainDisplay = IOMobileFramebufferGetMainDisplay();
    if (MainDisplay)
    {
      v6 = MainDisplay;
      v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
      if (v7)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
      }

      _MGLog(v13, 64, @"IOMobileFramebufferGetMainDisplay failed: %d\n", v8, v9, v10, v11, v12, v6);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = v6;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOMobileFramebufferGetMainDisplay failed: %d\n", buf, 8u);
      }
    }
  }

  memset(bytes, 255, sizeof(bytes));
  LODWORD(v17) = -1;
  *(&v17 + 1) = v0;
  v18 = v2;
  v19 = -1;
  result = CFDataCreate(0, bytes, 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01A2E34()
{
  v13 = *MEMORY[0x1E69E9840];
  MainDisplay = IOMobileFramebufferGetMainDisplay();
  if (MainDisplay)
  {
    v1 = MainDisplay;
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MGIOMFBSupport.c";
    }

    _MGLog(v8, 286, @"IOMobileFramebufferGetMainDisplay failed: %d\n", v3, v4, v5, v6, v7, v1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v1;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOMobileFramebufferGetMainDisplay failed: %d\n", buf, 8u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1B01A2FFC()
{
  if (qword_1ED446D80 != -1)
  {
    sub_1B01930B4();
  }

  return qword_1ED446D78;
}

uint64_t sub_1B01A3034()
{
  if (qword_1ED446D38 != -1)
  {
    sub_1B01973E4();
  }

  if (dword_1ED446CAC == -1)
  {
    v0 = 0;
  }

  else
  {
    v0 = BYTE4(qword_1B01F9458[4 * dword_1ED446CAC + 2]);
  }

  return v0 & 1;
}

const void *sub_1B01A3090()
{
  v0 = sub_1B0196D4C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"SoftwareBehavior");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_1B01A30E8()
{
  if (qword_1EB6D0168 != -1)
  {
    sub_1B01F0284();
  }

  return qword_1EB6D0160;
}

char *sub_1B01A3120()
{
  result = sub_1B0193940("hw.target");
  qword_1EB6D0160 = result;
  return result;
}

uint64_t sub_1B01A3148()
{
  if (qword_1EB6D0188 != -1)
  {
    sub_1B01F0298();
  }

  return qword_1EB6D0158;
}

char *sub_1B01A3180()
{
  result = sub_1B0193940("hw.osenvironment");
  qword_1EB6D0158 = result;
  return result;
}

uint64_t sub_1B01A31A8()
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 8;
  v5 = 0;
  if (sysctlbyname("hw.memsize_physical", &v5, &v4, 0, 0) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v1 = __error();
      v2 = strerror(*v1);
      *buf = 136315138;
      v7 = v2;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "sysctlbyname: %s", buf, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = v5;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01A3280()
{
  v1 = 8;
  v2 = 0;
  if (sysctlbyname("hw.cpusubfamily", &v2, &v1, 0, 0) != -1)
  {
    return v2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1B01F02AC();
  }

  return 0;
}

uint64_t sub_1B01A3304()
{
  v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v0)
  {
    v6 = v0 + 1;
  }

  else
  {
    v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v6, 189, @"called dummy function!", v1, v2, v3, v4, v5, v8[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "called dummy function!", v8, 2u);
  }

  return 0;
}

uint64_t _MGWriteCacheOnHelper()
{
  v1 = *(off_1EB6CFEC0 + 44);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(44, 2);
  }

  return v1();
}

uint64_t _MGWriteRebuildCacheSentinel()
{
  v1 = *(off_1EB6CFEC0 + 48);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(48, 2);
  }

  return v1();
}

const void *_MGCopyAnswerWithMode(const char **a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    valuePtr = a2;
    v7 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v6, @"QueryMode", v7);
      v9 = sub_1B0191100(a1, 0);
      CFRelease(v6);
      CFRelease(v8);
    }

    else
    {
      sub_1B01F034C(v6);
      return 0;
    }
  }

  else
  {
    sub_1B01F03CC(&v12);
    return v12;
  }

  return v9;
}

void sub_1B01A3520(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01A3598;
  v3[3] = &unk_1E7A92898;
  v3[4] = *(a1 + 32);
  v3[5] = a3;
  sub_1B01A1B38(a2, v3);
}

CFStringRef sub_1B01A35AC()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0191100(@"PxEDp0oOasJ92F/V7YBa8A", 0);
  v1 = sub_1B0193624();
  if (v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    if (CFDataGetLength(v0) > 16)
    {
      BytePtr = CFDataGetBytePtr(v0);
      v11 = CFStringCreateWithBytes(0, BytePtr, 17, 0x600u, 0);
      v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v21)
      {
        v27 = v21 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v27, 8701, @"Copy ScreenSerialNumber: cfScreenSN %@", v22, v23, v24, v25, v26, v11);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v11;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Copy ScreenSerialNumber: cfScreenSN %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v13)
      {
        v12 = v13 + 1;
      }

      Length = CFDataGetLength(v0);
      _MGLog(v12, 8697, @"RawPanelSerialNumber Invalid Length: %ld", v15, v16, v17, v18, v19, Length);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v31 = CFDataGetLength(v0);
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "RawPanelSerialNumber Invalid Length: %ld", buf, 0xCu);
      }

      sub_1B0191658(7);
      v11 = 0;
    }

    goto LABEL_23;
  }

  v3 = v1;
  v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v4)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v10, 8704, @"Failed Copy ScreenSerialNumber: cfScreenSN %@, error %d", v5, v6, v7, v8, v9, 0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = 0;
    v32 = 1024;
    v33 = v3;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed Copy ScreenSerialNumber: cfScreenSN %@, error %d", buf, 0x12u);
  }

  v11 = 0;
  if (v0)
  {
LABEL_23:
    CFRelease(v0);
  }

  v28 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1B01A384C()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4 || sub_1B0193D14() == 1 || sub_1B0193D14() == 3 || sub_1B0193D14() == 2 || sub_1B0193D14() == 7 || sub_1B0193D14() == 11)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B01A3954()
{
  TypeID = CFBooleanGetTypeID();

  return sub_1B019697C("copyWifiCallingSecondaryDeviceCapability", &unk_1F2637280, TypeID);
}

CFDataRef sub_1B01A3990()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (v0 = sub_1B01BD358("fillmore")) == 0)
  {
    v1 = sub_1B01A79C0();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = v0;
  }

  if (CFDataGetLength(v1) == 6)
  {
    v15 = 0;
    *buffer = 0;
    *bytes = -257;
    Mutable = CFDataCreateMutable(0, 0);
    v16.location = 0;
    v16.length = 3;
    CFDataGetBytes(v1, v16, buffer);
    CFDataAppendBytes(Mutable, buffer, 3);
    v15 = 0;
    *buffer = 0;
    CFDataAppendBytes(Mutable, bytes, 2);
    v17.location = 3;
    v17.length = 3;
    CFDataGetBytes(v1, v17, buffer);
    CFDataAppendBytes(Mutable, buffer, 3);
    Copy = CFDataCreateCopy(0, Mutable);
    CFRelease(v1);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return Copy;
  }

  else if (CFDataGetLength(v1) != 8)
  {
    v4 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v5)
    {
      v4 = v5 + 1;
    }

    Length = CFDataGetLength(v1);
    _MGLog(v4, 1599, @"TMAC address has unexpected length %zu", v7, v8, v9, v10, v11, Length);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B01F05D0(v1);
    }
  }

  return v1;
}

__CFString *sub_1B01A3BEC()
{
  v0 = sub_1B01C58C4("IODeviceTree:", @"wlan", 0, @"wifi-module-sn", 0);
  if (!v0)
  {
    v1 = sub_1B019BAC0(1, "AppleBCMWLANBusInterfacePCIe", @"wifi-module-sn");
    if (v1)
    {
      v0 = v1;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v0))
      {
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
        BytePtr = CFDataGetBytePtr(v0);
        Length = CFDataGetLength(v0);
        if (Length >= 1)
        {
          v6 = Length;
          do
          {
            v7 = *BytePtr++;
            CFStringAppendFormat(Mutable, 0, @"%02X", v7);
            --v6;
          }

          while (v6);
        }

LABEL_21:
        CFRelease(v0);
        return Mutable;
      }

      v15 = CFStringGetTypeID();
      if (v15 != CFGetTypeID(v0))
      {
        v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v16)
        {
          v22 = v16 + 1;
        }

        else
        {
          v22 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v22, 6207, @"Unsupported type.", v17, v18, v19, v20, v21, v24);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported type.", v25, 2u);
        }

        Mutable = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v8)
      {
        v14 = v8 + 1;
      }

      else
      {
        v14 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v14, 6193, @"Failed to retrieve data AppleBCMWLANBusInterfacePCIe:wifi-module-sn", v9, v10, v11, v12, v13, v24);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to retrieve data AppleBCMWLANBusInterfacePCIe:wifi-module-sn", buf, 2u);
      }

      return 0;
    }
  }

  return v0;
}

uint64_t sub_1B01A3E54()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 6)
  {
    v12 = -338255497;
    v11 = xmmword_1B01FE7DC;
    v10 = 152704997;
    v9 = xmmword_1B01FE7F0;
    result = MGIsDeviceOneOfType(&v11, v0, v1, v2, v3, v4, v5, v6, &v9) ^ 1;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01A4128()
{
  v0 = sub_1B01BB8E8();
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01A41C8()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 7 || sub_1B0193D14() == 4 || sub_1B0193D14() == 3 || sub_1B0193D14() == 2 || sub_1B0193D14() == 1 || sub_1B0193D14() == 11 || sub_1B0193D14() == 8)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01A4320()
{
  if (sub_1B0193D14() != 1)
  {
    return sub_1B019AFD8() >> 33 && (sub_1B019D140(@"H14") || sub_1B019D228(@"t8103", 0));
  }

  return sub_1B019D140(@"H16") && sub_1B019AFD8() >> 33;
}

BOOL sub_1B01A439C()
{
  result = sub_1B01B9780();
  if (result)
  {
    return !sub_1B019CA20();
  }

  return result;
}

BOOL sub_1B01A43C0()
{
  valuePtr = 69;
  v0 = *(off_1EB6CFEC0 + 100);
  if (!v0)
  {
    v0 = sub_1B0193150(100, 2);
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = v0(*MEMORY[0x1E695E480], 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(off_1EB6CFEC0 + 99);
  if (!v4)
  {
    v4 = sub_1B0193150(99, 2);
  }

  v5 = v4(v3);
  if (!v5)
  {
    CFRelease(v3);
    return 0;
  }

  v6 = v5;
  if (!CFArrayGetCount(v5))
  {
    v10 = 0;
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v7 = *(off_1EB6CFEC0 + 98);
  if (!v7)
  {
    v7 = sub_1B0193150(98, 2);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v9 = *(off_1EB6CFEC0 + 103);
  if (!v9)
  {
    v9 = sub_1B0193150(103, 1);
  }

  v10 = v7(ValueAtIndex, *v9);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = CFNumberCreate(v1, kCFNumberSInt32Type, &valuePtr);
  if (!v11)
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v15.length = CFArrayGetCount(v10);
  v15.location = 0;
  v12 = CFArrayContainsValue(v10, v15, v11) != 0;
LABEL_20:
  CFRelease(v3);
  CFRelease(v6);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t sub_1B01A4568()
{
  v1 = *(off_1EB6CFEC0 + 36);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(36, 2);
  }

  return v1();
}

CFTypeRef sub_1B01A45E8()
{
  v0 = *(off_1EB6CFEC0 + 20);
  if (!v0)
  {
    v0 = sub_1B0193150(20, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionGetActiveWirelessTechnology", v0, TypeID);
}

uint64_t sub_1B01A4648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = -1157300313;
  v12 = xmmword_1B01FE200;
  v11 = -2132668294;
  v10 = xmmword_1B01FE214;
  result = MGIsDeviceOneOfType(&v12, a2, a3, a4, a5, a6, a7, a8, &v10);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

const void *sub_1B01A4768()
{
  if (MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {

    return sub_1B0199908("IODeviceTree:/baseband", @"function-bb_ap_time_sync", 0);
  }

  else
  {

    return sub_1B01C583C("IODeviceTree:", @"gps", 0, @"function-gps_time-mark", 0);
  }
}

CFTypeRef sub_1B01A47E8()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    v7 = *(off_1EB6CFEC0 + 65);
    if (!v7)
    {
      v7 = sub_1B0193150(65, 1);
    }

    v6 = *v7;
    if (*v7)
    {
      CFRetain(*v7);
      return v6;
    }

    sub_1B01F0654(&v11);
    return v11;
  }

  LODWORD(v11) = -1;
  if (sub_1B01914DC(@"XQBHOWjPt2P+uNqlLm1P7A", 5, 5, kCFNumberSInt32Type, &v11) && v11 >= 2)
  {
    v0 = *(off_1EB6CFEC0 + 16);
    if (!v0)
    {
      v0 = sub_1B0193150(16, 2);
    }

    TypeID = CFDictionaryGetTypeID();
    v2 = sub_1B0196878("_CTServerConnectionCopyPostponementStatus", v0, TypeID);
    if (v2)
    {
      v3 = v2;
      v4 = *(off_1EB6CFEC0 + 64);
      if (!v4)
      {
        v4 = sub_1B0193150(64, 1);
      }

      Value = CFDictionaryGetValue(v3, *v4);
      v6 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      else
      {
        sub_1B01F074C();
      }

      CFRelease(v3);
      return v6;
    }

    sub_1B01F07B8(&v11);
    return v11;
  }

  v8 = *(off_1EB6CFEC0 + 22);
  if (!v8)
  {
    v8 = sub_1B0193150(22, 2);
  }

  v9 = CFStringGetTypeID();
  v6 = sub_1B0196878("_CTServerConnectionGetSIMStatus", v8, v9);
  if (!v6)
  {
    sub_1B01F06D0(&v11);
    return v11;
  }

  return v6;
}

uint64_t sub_1B01A497C()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"ND6ZSbBBgMgwtMfh+OL5Wg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01A4A30()
{
  v1 = 0.0;
  LODWORD(result) = sub_1B01914DC(@"main-screen-scale", 7, 7, kCFNumberFloat32Type, &v1);
  if (v1 > 1.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01A4AC8()
{
  v197 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 7)
  {
    goto LABEL_16;
  }

  if (sub_1B0193D14() == 4)
  {
    goto LABEL_16;
  }

  v196 = 1789837692;
  v195 = xmmword_1B01FDF08;
  v194 = -1239654590;
  v193 = xmmword_1B01FDF1C;
  v192 = -1579092758;
  v191 = xmmword_1B01FDF30;
  v190 = 48355600;
  v189 = xmmword_1B01FDF44;
  v188 = -679691073;
  v187 = xmmword_1B01FDF58;
  v186 = 1430379884;
  v185 = xmmword_1B01FDF6C;
  if (MGIsDeviceOneOfType(&v195, v0, v1, v2, v3, v4, v5, v6, &v193))
  {
    goto LABEL_16;
  }

  v184 = -1527788847;
  v183 = xmmword_1B01FDB84;
  v182 = 1532898719;
  v181 = xmmword_1B01FDB70;
  v180 = 1275676051;
  v179 = xmmword_1B01FDBAC;
  v178 = 1908474541;
  v177 = xmmword_1B01FDB98;
  if (MGIsDeviceOneOfType(&v183, v7, v8, v9, v10, v11, v12, v13, &v181))
  {
    goto LABEL_16;
  }

  v176 = 1711910369;
  v175 = xmmword_1B01FDE7C;
  v174 = -1282800328;
  v173 = xmmword_1B01FDE90;
  v172 = -2092955395;
  v171 = xmmword_1B01FDE54;
  v170 = 674998600;
  v169 = xmmword_1B01FDE68;
  if (MGIsDeviceOneOfType(&v175, v14, v15, v16, v17, v18, v19, v20, &v173))
  {
    goto LABEL_16;
  }

  v168 = -414334491;
  v167 = xmmword_1B01FE19C;
  v166 = -1509831889;
  v165 = xmmword_1B01FE1B0;
  v164 = 289690957;
  v163 = xmmword_1B01FE174;
  v162 = 586720268;
  v161 = xmmword_1B01FE188;
  if (MGIsDeviceOneOfType(&v167, v21, v22, v23, v24, v25, v26, v27, &v165))
  {
    goto LABEL_16;
  }

  v160 = 470738981;
  v159 = xmmword_1B01FE7A0;
  v158 = 710807826;
  v157 = xmmword_1B01FE78C;
  v156 = 1860682089;
  v155 = xmmword_1B01FE778;
  v154 = -2085056298;
  v153 = xmmword_1B01FE764;
  if (MGIsDeviceOneOfType(&v159, v28, v29, v30, v31, v32, v33, v34, &v157))
  {
    goto LABEL_16;
  }

  if (sub_1B0193D14() == 8)
  {
    goto LABEL_16;
  }

  v152 = -1403227947;
  v151 = xmmword_1B01FE304;
  v150 = 729118884;
  v149 = xmmword_1B01FE2F0;
  v148 = 1046806126;
  v147 = xmmword_1B01FE318;
  v146 = -188760945;
  v145 = xmmword_1B01FE32C;
  if (MGIsDeviceOneOfType(&v151, v35, v36, v37, v38, v39, v40, v41, &v149))
  {
    goto LABEL_16;
  }

  v144 = -1639077591;
  v143 = xmmword_1B01FDE2C;
  v142 = 338555555;
  v141 = xmmword_1B01FDE40;
  v140 = 1032708406;
  v139 = xmmword_1B01FDE04;
  v138 = 729903963;
  v137 = xmmword_1B01FDE18;
  if (MGIsDeviceOneOfType(&v143, v42, v43, v44, v45, v46, v47, v48, &v141))
  {
    goto LABEL_16;
  }

  v136 = 28030256;
  v135 = xmmword_1B01FE2A0;
  v134 = 1214363620;
  v133 = xmmword_1B01FE2B4;
  v132 = -798153473;
  v131 = xmmword_1B01FE2C8;
  v130 = -776721724;
  v129 = xmmword_1B01FE2DC;
  v128 = -489993439;
  v127 = xmmword_1B01FE278;
  v126 = 886875686;
  v125 = xmmword_1B01FE28C;
  if (MGIsDeviceOneOfType(&v135, v49, v50, v51, v52, v53, v54, v55, &v133))
  {
    goto LABEL_16;
  }

  v124 = -350584140;
  v123 = xmmword_1B01FE340;
  v122 = 368778837;
  v121 = xmmword_1B01FE354;
  v120 = -1418383976;
  v119 = xmmword_1B01FE368;
  v118 = -1213485500;
  v117 = xmmword_1B01FE37C;
  if (MGIsDeviceOneOfType(&v123, v56, v57, v58, v59, v60, v61, v62, &v121))
  {
    goto LABEL_16;
  }

  v116 = -199226823;
  v115 = xmmword_1B01FDC24;
  v114 = 1412427398;
  v113 = xmmword_1B01FDC38;
  v112 = -1283070668;
  v111 = xmmword_1B01FDC4C;
  v110 = 160260070;
  v109 = xmmword_1B01FDC60;
  if (MGIsDeviceOneOfType(&v115, v63, v64, v65, v66, v67, v68, v69, &v113))
  {
    goto LABEL_16;
  }

  v108 = 317289457;
  v107 = xmmword_1B01FE1D8;
  v106 = 401945557;
  v105 = xmmword_1B01FE1EC;
  if (MGIsDeviceOneOfType(&v107, v70, v71, v72, v73, v74, v75, v76, &v105) || (v104 = 1602014129, v103 = xmmword_1B01FDECC, v102 = -810116762, v101 = xmmword_1B01FDEE0, v100 = -1195351767, v99 = xmmword_1B01FDEF4, MGIsDeviceOneOfType(&v103, v77, v78, v79, v80, v81, v82, v83, &v101)))
  {
LABEL_16:
    v91 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v98 = -1022451852;
    v97 = xmmword_1B01FE228;
    v96 = 1729782187;
    v95 = xmmword_1B01FE23C;
    v94 = MGIsDeviceOneOfType(&v97, v84, v85, v86, v87, v88, v89, v90, &v95);
    v91 = MEMORY[0x1E695E4C0];
    if (!v94)
    {
      v91 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v91;
  v93 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1B01A5344()
{
  v0 = sub_1B019EB18();
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  return v1;
}

uint64_t sub_1B01A5378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v59 = -526227167;
  v58 = xmmword_1B01FE868;
  v57 = -1509831889;
  v56 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v58, a2, a3, a4, a5, a6, a7, a8, &v56))
  {
    goto LABEL_6;
  }

  v55 = 289690957;
  v54 = xmmword_1B01FE174;
  v53 = 586720268;
  v52 = xmmword_1B01FE188;
  if (MGIsDeviceOneOfType(&v54, v8, v9, v10, v11, v12, v13, v14, &v52))
  {
    goto LABEL_6;
  }

  if (sub_1B0193D14() != 6)
  {
    goto LABEL_6;
  }

  v51 = 368885834;
  v50 = xmmword_1B01FE854;
  v49 = -414334491;
  v48 = xmmword_1B01FE19C;
  if (MGIsDeviceOneOfType(&v50, v15, v16, v17, v18, v19, v20, v21, &v48) || (v47 = -2092955395, v46 = xmmword_1B01FDE54, v45 = 674998600, v44 = xmmword_1B01FDE68, MGIsDeviceOneOfType(&v46, v22, v23, v24, v25, v26, v27, v28, &v44)))
  {
LABEL_6:
    v36 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v43 = 1711910369;
    v42 = xmmword_1B01FDE7C;
    v41 = -1282800328;
    v40 = xmmword_1B01FDE90;
    v39 = MGIsDeviceOneOfType(&v42, v29, v30, v31, v32, v33, v34, v35, &v40);
    v36 = MEMORY[0x1E695E4C0];
    if (!v39)
    {
      v36 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v36;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01A55E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = -1431778695;
  v10 = xmmword_1B01FE46C;
  if (MGIsDeviceOneOfType(&v10, a2, a3, a4, a5, a6, a7, a8, 0))
  {
    result = *MEMORY[0x1E695E4D0];
  }

  else
  {
    result = sub_1B01B6DF0();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1B01A56B0()
{
  v3 = 0;
  if (sub_1B01914DC(@"NJsxTSI2WuD+13rxShXX9w", 5, 5, kCFNumberSInt32Type, &v3) && v3 != 0)
  {
    return CFStringCreateWithFormat(0, 0, @"%d", v3);
  }

  if (MGGetBoolAnswer(@"XkfGVYlrkBQJgaGabHESJQ"))
  {
    return sub_1B01B9A7C(@"TXZxlSojLMQyLqusm9aa/g");
  }

  v2 = sub_1B019E004();
  if (v2 <= 8)
  {
    return *(&off_1E7A92940 + 2 * v2);
  }

  else
  {
    return @"unknown";
  }
}

CFTypeRef sub_1B01A578C()
{
  v49 = *MEMORY[0x1E69E9840];
  cf = 0;
  v46 = 0;
  if (qword_1EB6D01A0 != -1)
  {
    sub_1B01F0834();
  }

  if (off_1EB6D01B0)
  {
    v0 = off_1EB6D01A8 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || off_1EB6D01B8 == 0)
  {
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v2)
    {
      v8 = v2 + 1;
    }

    else
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v8, 7854, @"Unable to dlsym() Savage symbols", v3, v4, v5, v6, v7, v44);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym() Savage symbols", buf, 2u);
    }

    goto LABEL_17;
  }

  v9 = off_1EB6D01B8(0, 0);
  if (v9 == 1)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v13 = *MEMORY[0x1E695E480];
  v14 = MEMORY[0x1E695E9D8];
  v15 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = CFDictionaryCreateMutable(v13, 0, v14, v15);
  v18 = v17;
  if (Mutable)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v20)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v26, 7865, @"Unable to create options and savageOptions", v21, v22, v23, v24, v25, v44);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to create options and savageOptions", buf, 2u);
    }

    sub_1B0191658(8);
    v10 = 0;
    v27 = 0;
    if (!Mutable)
    {
      goto LABEL_54;
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, @"Options", v17);
    v28 = off_1EB6D01A8(Mutable, 0, "Savage", &cf);
    if (v28)
    {
      v27 = v28;
      if (off_1EB6D01B0(v28, @"queryInfo", 0, &v46, &cf))
      {
        v29 = v46 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v30)
        {
          v36 = v30 + 1;
        }

        else
        {
          v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v36, 7879, @"SavageUpdaterExecCmd failed: %@", v31, v32, v33, v34, v35, cf);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = cf;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SavageUpdaterExecCmd failed: %@", buf, 0xCu);
        }

        v10 = 0;
      }

      else
      {
        v10 = CFRetain(v46);
      }
    }

    else
    {
      v37 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v37)
      {
        v43 = v37 + 1;
      }

      else
      {
        v43 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v43, 7873, @"SavageUpdaterCreate failed: %@", v38, v39, v40, v41, v42, cf);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = cf;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SavageUpdaterCreate failed: %@", buf, 0xCu);
      }

      sub_1B0191658(8);
      v10 = 0;
      v27 = 0;
    }
  }

  CFRelease(Mutable);
LABEL_54:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v27)
  {
    CFRelease(v27);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v46)
  {
    CFRetain(v46);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1B01A5BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = *MEMORY[0x1E69E9840];
  v102 = -798153473;
  v101 = xmmword_1B01FE2C8;
  v100 = -776721724;
  v99 = xmmword_1B01FE2DC;
  v98 = -1639077591;
  v97 = xmmword_1B01FDE2C;
  v96 = 338555555;
  v95 = xmmword_1B01FDE40;
  if (MGIsDeviceOneOfType(&v101, a2, a3, a4, a5, a6, a7, a8, &v99))
  {
    goto LABEL_9;
  }

  if (sub_1B0193D14() == 4)
  {
    goto LABEL_9;
  }

  if (sub_1B0193D14() == 6)
  {
    goto LABEL_9;
  }

  if (sub_1B0193D14() == 2)
  {
    goto LABEL_9;
  }

  v94 = 1789837692;
  v93 = xmmword_1B01FDF08;
  v92 = 48355600;
  v91 = xmmword_1B01FDF44;
  v90 = -1239654590;
  v89 = xmmword_1B01FDF1C;
  v88 = -679691073;
  v87 = xmmword_1B01FDF58;
  v86 = -1579092758;
  v85 = xmmword_1B01FDF30;
  v84 = 1430379884;
  v83 = xmmword_1B01FDF6C;
  if (MGIsDeviceOneOfType(&v93, v8, v9, v10, v11, v12, v13, v14, &v91))
  {
    goto LABEL_9;
  }

  v82 = -926344036;
  v81 = xmmword_1B01FE138;
  v80 = -954998212;
  v79 = xmmword_1B01FE14C;
  v78 = 436612651;
  v77 = xmmword_1B01FE160;
  if (MGIsDeviceOneOfType(&v81, v15, v16, v17, v18, v19, v20, v21, &v79))
  {
    goto LABEL_9;
  }

  v76 = 1602014129;
  v75 = xmmword_1B01FDECC;
  v74 = -810116762;
  v73 = xmmword_1B01FDEE0;
  v72 = -1195351767;
  v71 = xmmword_1B01FDEF4;
  v70 = -199226823;
  v69 = xmmword_1B01FDC24;
  v68 = 1412427398;
  v67 = xmmword_1B01FDC38;
  v66 = -1283070668;
  v65 = xmmword_1B01FDC4C;
  v64 = 160260070;
  v63 = xmmword_1B01FDC60;
  if (MGIsDeviceOneOfType(&v75, v22, v23, v24, v25, v26, v27, v28, &v73))
  {
    goto LABEL_9;
  }

  v62 = -38605833;
  v61 = xmmword_1B01FE390;
  v60 = -894965712;
  v59 = xmmword_1B01FE3A4;
  v58 = -2101636455;
  v57 = xmmword_1B01FE3B8;
  v56 = -1955568593;
  v55 = xmmword_1B01FE3CC;
  v54 = 28030256;
  v53 = xmmword_1B01FE2A0;
  v52 = 1214363620;
  v51 = xmmword_1B01FE2B4;
  if (MGIsDeviceOneOfType(&v61, v29, v30, v31, v32, v33, v34, v35, &v59))
  {
LABEL_9:
    v43 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v50 = 1032708406;
    v49 = xmmword_1B01FDE04;
    v48 = 729903963;
    v47 = xmmword_1B01FDE18;
    v46 = MGIsDeviceOneOfType(&v49, v36, v37, v38, v39, v40, v41, v42, &v47);
    v43 = MEMORY[0x1E695E4C0];
    if (!v46)
    {
      v43 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v43;
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01A60B0()
{
  v0 = sub_1B019AFD8();
  v1 = MEMORY[0x1E695E4D0];
  if (v0 <= 0x40000000)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

CFStringRef sub_1B01A6100()
{
  v33 = *MEMORY[0x1E69E9840];
  if (qword_1EB6D0178 != -1)
  {
    sub_1B01F0848();
  }

  if (!off_1EB6D0180)
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v16, 8391, @"dlsym NfRestoreCopyUniqueFDRKey failed", v11, v12, v13, v14, v15, v29);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "dlsym NfRestoreCopyUniqueFDRKey failed";
    v19 = 2;
    goto LABEL_22;
  }

  v30 = 0;
  v0 = off_1EB6D0180(sub_1B01B9C38, &v30, 0);
  if (!v0)
  {
    v20 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v20)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v26, 8387, @"NfRestoreCopyUniqueFDRKey failed %@", v21, v22, v23, v24, v25, v30);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v32 = v30;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "NfRestoreCopyUniqueFDRKey failed %@";
    v19 = 12;
LABEL_22:
    _os_log_impl(&dword_1B0190000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_23:
    v2 = 0;
    goto LABEL_24;
  }

  v1 = v0;
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v0, 0x8000100u);
  if (!v2)
  {
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v9, 8383, @"CFStringCreateWithCString failed", v4, v5, v6, v7, v8, v29);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CFStringCreateWithCString failed", buf, 2u);
    }
  }

  free(v1);
LABEL_24:
  v27 = *MEMORY[0x1E69E9840];
  return v2;
}

CFTypeRef sub_1B01A63C0()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    return 0;
  }

  v12 = -1;
  v0 = sub_1B01914DC(@"XQBHOWjPt2P+uNqlLm1P7A", 5, 5, kCFNumberSInt32Type, &v12);
  result = 0;
  if (v0 && v12 >= 2)
  {
    v2 = *(off_1EB6CFEC0 + 10);
    if (!v2)
    {
      v2 = sub_1B0193150(10, 2);
    }

    TypeID = CFDictionaryGetTypeID();
    result = sub_1B0196878("_CTServerConnectionCopyFirmwareSecurityInfo", v2, TypeID);
    if (!result)
    {
      v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v4)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v10, 4977, @"_CTServerConnectionCopyFirmwareSecurityInfo returned NULL", v5, v6, v7, v8, v9, v11[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCopyFirmwareSecurityInfo returned NULL", v11, 2u);
      }

      return 0;
    }
  }

  return result;
}

CFMutableArrayRef sub_1B01A64F4()
{
  result = CFArrayCreateMutable(0, 0, 0);
  if (result)
  {
    v1 = result;
    if (sub_1B0194994("IODeviceTree:/product", @"nfc-express", 0))
    {
      CFArrayAppendValue(v1, @"nfc-express");
    }

    if (sub_1B0194994("IODeviceTree:/product", @"alisha", 0))
    {
      CFArrayAppendValue(v1, @"alisha");
    }

    if (sub_1B0194994("IODeviceTree:/product", @"find-my", 0))
    {
      CFArrayAppendValue(v1, @"find-my");
    }

    Copy = CFArrayCreateCopy(0, v1);
    CFRelease(v1);
    return Copy;
  }

  return result;
}

CFStringRef sub_1B01A65C8()
{
  v54 = *MEMORY[0x1E69E9840];
  numBytes = 128;
  *connect = 0;
  if (!sub_1B01BCCA0("AppleBiometricServices", &connect[1], connect))
  {
    v13 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v13)
    {
      v19 = v13 + 1;
    }

    else
    {
      v19 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v19, 5572, @"failed to connect to service %s", v14, v15, v16, v17, v18, "AppleBiometricServices");
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315138;
    v53 = "AppleBiometricServices";
    v11 = MEMORY[0x1E69E9C10];
    v12 = "failed to connect to service %s";
    goto LABEL_12;
  }

  v47 = 0;
  v46 = 4;
  v0 = sub_1B01B9D28(connect[0], 27, &v47, &v46);
  if (v0)
  {
    v1 = v0;
    v2 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v2 = v3 + 1;
    }

    v4 = mach_error_string(v1);
    _MGLog(v2, 5582, @"Failed to query Mesa provisioning state: %s", v5, v6, v7, v8, v9, v4);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = mach_error_string(v1);
    *buf = 136315138;
    v53 = v10;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Failed to query Mesa provisioning state: %s";
    goto LABEL_12;
  }

  if (!v47)
  {
    v35 = sub_1B01B9D28(connect[0], 1, 0, 0);
    if (v35)
    {
      v36 = v35;
      v37 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      v38 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v38)
      {
        v37 = v38 + 1;
      }

      v39 = mach_error_string(v36);
      _MGLog(v37, 5589, @"Failed to reset sensor: %s", v40, v41, v42, v43, v44, v39);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v45 = mach_error_string(v36);
      *buf = 136315138;
      v53 = v45;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to reset sensor: %s";
LABEL_12:
      v20 = buf;
LABEL_13:
      _os_log_impl(&dword_1B0190000, v11, OS_LOG_TYPE_DEFAULT, v12, v20, 0xCu);
LABEL_14:
      v21 = 0;
      goto LABEL_15;
    }
  }

  v24 = sub_1B01B9D28(connect[0], 54, buf, &numBytes);
  if (v24)
  {
    v25 = v24;
    v26 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v27 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v27)
    {
      v26 = v27 + 1;
    }

    v28 = mach_error_string(v25);
    _MGLog(v26, 5596, @"Failed to query Mesa module serial number: %s", v29, v30, v31, v32, v33, v28);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v34 = mach_error_string(v25);
    v50 = 136315138;
    v51 = v34;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Failed to query Mesa module serial number: %s";
    v20 = &v50;
    goto LABEL_13;
  }

  v21 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], buf, numBytes, 0x8000100u, 0);
LABEL_15:
  if (connect[0])
  {
    IOServiceClose(connect[0]);
  }

  if (connect[1])
  {
    IOObjectRelease(connect[1]);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_1B01A6980()
{
  v1 = *(off_1EB6CFEC0 + 43);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(43, 2);
  }

  return v1();
}

CFNumberRef sub_1B01A69D0()
{
  result = sub_1B01C57B4("IODeviceTree:/arm-io", @"mesa", 0, @"mesaType", 0);
  if (!result)
  {
    if (MGGetBoolAnswer(@"HV7WDiidgMf7lwAu++Lk5w"))
    {
      valuePtr = 0;
      return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B01A6AA0()
{
  if (sub_1B01959FC(@"LW"))
  {
    return 1;
  }

  return sub_1B01959FC(@"LM");
}

BOOL sub_1B01A6AE8()
{
  if (MGGetBoolAnswer(@"ZEU7pCEskBhjQ4AOMuALDw"))
  {
    return 1;
  }

  if (sub_1B0193D14() == 7)
  {
    return 0;
  }

  return sub_1B01997C0(@"H8");
}

CFNumberRef sub_1B01A6B44()
{
  v2 = 0;
  if (sub_1B01C2CE4(@"edmd", &v2))
  {
    v3 = 1;
    p_valuePtr = &v3;
    return CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
  }

  if (v2)
  {
    valuePtr = 0;
    p_valuePtr = &valuePtr;
    return CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
  }

  return 0;
}

__CFString *sub_1B01A6C00()
{
  if (sub_1B01978E8())
  {
    return @"iOS";
  }

  v1 = *MEMORY[0x1E695E1F0];

  return sub_1B0192B9C(v1, 1);
}

uint64_t sub_1B01A6C78()
{
  if (sub_1B01997C0(@"M9") || sub_1B01997C0(@"M10") || sub_1B01997C0(@"H9") || sub_1B01997C0(@"H10"))
  {
    return 0;
  }

  if (sub_1B01997C0(@"H11") || sub_1B01997C0(@"H12"))
  {
    return 1;
  }

  if (sub_1B019D140(@"H13"))
  {
    return 2;
  }

  return 0;
}

uint64_t sub_1B01A6D5C()
{
  v61 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 1)
  {
    v60 = 414393924;
    v59 = xmmword_1B01FE0C0;
    v58 = 897736383;
    v57 = xmmword_1B01FE0D4;
    v56 = -996295886;
    v55 = xmmword_1B01FDBFC;
    v54 = -453987047;
    v53 = xmmword_1B01FDC10;
    v52 = -337121064;
    v51 = xmmword_1B01FDBD4;
    v50 = 450980336;
    v49 = xmmword_1B01FDBE8;
    v48 = -232427879;
    v47 = xmmword_1B01FDC74;
    v46 = -427474227;
    v45 = xmmword_1B01FDC88;
    v44 = 1477534141;
    v43 = xmmword_1B01FDC9C;
    v42 = -1843102369;
    v41 = xmmword_1B01FDCB0;
    v40 = -820493242;
    v39 = xmmword_1B01FE750;
    v38 = -61007701;
    v37 = xmmword_1B01FE444;
    v36 = -235416490;
    v35 = xmmword_1B01FE458;
    v34 = -121925081;
    v33 = xmmword_1B01FE4D0;
    v32 = 1071957977;
    v31 = xmmword_1B01FE480;
    v30 = 438437663;
    v29 = xmmword_1B01FE494;
    v28 = -382792827;
    v27 = xmmword_1B01FE4A8;
    v26 = 1575123478;
    v25 = xmmword_1B01FE4BC;
    v24 = 123138233;
    v23 = xmmword_1B01FE41C;
    v22 = 681511593;
    v21 = xmmword_1B01FE430;
    v20 = 713503427;
    v19 = xmmword_1B01FDCC4;
    v18 = -1632750650;
    v17 = xmmword_1B01FDCD8;
    v16 = -1431778695;
    v15 = xmmword_1B01FE46C;
    v7 = &v57;
    v8 = &v59;
  }

  else
  {
    if (sub_1B0193D14() != 3)
    {
      result = 0;
      goto LABEL_7;
    }

    v14 = -1527788847;
    v13 = xmmword_1B01FDB84;
    v12 = 1532898719;
    v11 = xmmword_1B01FDB70;
    v7 = &v11;
    v8 = &v13;
  }

  result = MGIsDeviceOneOfType(v8, v0, v1, v2, v3, v4, v5, v6, v7) ^ 1;
LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01A77D8()
{
  v0 = *MEMORY[0x1E695E4C0];
  if (sub_1B0194994("IODeviceTree:/product", @"is-muse", 0))
  {
    if (!sub_1B0193ED4("IODeviceTree:/product", @"chip-role", 0, 1, 1))
    {
      return *MEMORY[0x1E695E4D0];
    }
  }

  else
  {
    v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v1)
    {
      v7 = v1 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v7, 8677, @"muse not set on product node", v2, v3, v4, v5, v6, v9[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "muse not set on product node", v9, 2u);
    }
  }

  return v0;
}

uint64_t sub_1B01A78CC()
{
  v0 = sub_1B0193D14();
  v1 = MEMORY[0x1E695E4D0];
  if (v0 != 1)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01A7900()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"eW5H/Gwg0uqbMqFot70pYg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01A7948()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleJPEGDriver");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  v3 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v3 != 0;
}

CFDataRef sub_1B01A79C0()
{
  v0 = sub_1B01C583C("IODeviceTree", @"fillmore", 0, @"local-mac-address", 0);
  if (v0 || (v0 = sub_1B01C583C("IODeviceTree", @"wlan", 0, @"local-mac-address", 0)) != 0)
  {
    v1 = v0;
    Length = CFDataGetLength(v0);
    CFRelease(v1);
  }

  else
  {
    Length = 8;
  }

  return sub_1B019E100(0x544D6163u, Length);
}

BOOL sub_1B01A7AA0()
{
  v0 = sub_1B0198DB0("IODeviceTree:/chosen", @"development-cert", 0);
  valuePtr = 0;
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  CFNumberGetValue(v0, kCFNumberIntType, &valuePtr);
  CFRelease(v1);
  return valuePtr == 0;
}

__CFString *sub_1B01A7BE0()
{
  if (sub_1B0193D14() == 11)
  {
    return @"Apple Vision Pro";
  }

  return sub_1B0194428();
}

uint64_t sub_1B01A7C50()
{
  if (sub_1B0193D14() == 3)
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

CFNumberRef sub_1B01A7C78()
{
  valuePtr = 0;
  v0 = sub_1B01C5470(@"avd", @"AppleARMIODevice");
  if (v0)
  {
    v1 = v0;
    cf = 0;
    if (CFDictionaryGetValueIfPresent(v0, @"decode-samples-per-second", &cf))
    {
      v2 = CFGetTypeID(cf);
      if (v2 == CFDataGetTypeID())
      {
        v3 = *CFDataGetBytePtr(cf);
        if (v3)
        {
          valuePtr = v3 << 16;
        }
      }
    }

    CFRelease(v1);
  }

  return CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
}

float sub_1B01A7D1C()
{
  valuePtr = 0.0;
  v0 = CFPreferencesCopyAppValue(@"RequiredBatteryLevelForSoftwareUpdate", *MEMORY[0x1E695E8A8]);
  if (!v0)
  {
    return 0.5;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFNumberGetTypeID() || !CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr))
  {
    valuePtr = 0.5;
  }

  CFRelease(v1);
  return valuePtr;
}

CFNumberRef sub_1B01A7DA8()
{
  if (!sub_1B01997C0(@"H6") && !sub_1B01997C0(@"H8") && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H7") && !sub_1B01997C0(@"H9") && sub_1B0193D14() != 4 && sub_1B0193D14() != 6)
  {
    sub_1B01997C0(@"H4");
  }

  valuePtr = 1065353216;
  return CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
}

CFNumberRef sub_1B01A7EBC()
{
  v9 = 0;
  valuePtr = -1;
  v0 = sub_1B0199908("IODeviceTree:/chosen", @"marketing-software-behavior", 0);
  if (!v0)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v9);
  }

  v1 = v0;
  BytePtr = CFDataGetBytePtr(v0);
  if (BytePtr && (v3 = BytePtr, v4 = CFGetTypeID(v1), v4 == CFDataGetTypeID()) && CFDataGetLength(v1) >= 4)
  {
    v5 = v3[3];
    if ((v5 - 1) >= 2)
    {
      v5 = 0;
    }

    valuePtr = v5;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
  }

  v7 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9);
LABEL_11:
  CFRelease(v1);
  return v7;
}

uint64_t sub_1B01A802C()
{
  v125 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 1 && MGGetBoolAnswer(@"BWoQXWXYITrPRpFyc9xTLw"))
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v124 = -1022451852;
    v123 = xmmword_1B01FE228;
    v122 = 1729782187;
    v121 = xmmword_1B01FE23C;
    v120 = -1527788847;
    v119 = xmmword_1B01FDB84;
    v118 = 1532898719;
    v117 = xmmword_1B01FDB70;
    if (MGIsDeviceOneOfType(&v123, v0, v1, v2, v3, v4, v5, v6, &v121))
    {
      goto LABEL_13;
    }

    v116 = -1579092758;
    v115 = xmmword_1B01FDF30;
    v114 = 1430379884;
    v113 = xmmword_1B01FDF6C;
    if (MGIsDeviceOneOfType(&v115, v8, v9, v10, v11, v12, v13, v14, &v113))
    {
      goto LABEL_13;
    }

    v112 = 1032708406;
    v111 = xmmword_1B01FDE04;
    v110 = 729903963;
    v109 = xmmword_1B01FDE18;
    v108 = 1275676051;
    v107 = xmmword_1B01FDBAC;
    v106 = 1908474541;
    v105 = xmmword_1B01FDB98;
    if (MGIsDeviceOneOfType(&v111, v15, v16, v17, v18, v19, v20, v21, &v109))
    {
      goto LABEL_13;
    }

    v104 = 1789837692;
    v103 = xmmword_1B01FDF08;
    v102 = 48355600;
    v101 = xmmword_1B01FDF44;
    v100 = -1239654590;
    v99 = xmmword_1B01FDF1C;
    v98 = -679691073;
    v97 = xmmword_1B01FDF58;
    if (MGIsDeviceOneOfType(&v103, v22, v23, v24, v25, v26, v27, v28, &v101))
    {
      goto LABEL_13;
    }

    v96 = -926344036;
    v95 = xmmword_1B01FE138;
    v94 = -954998212;
    v93 = xmmword_1B01FE14C;
    v92 = 436612651;
    v91 = xmmword_1B01FE160;
    if (MGIsDeviceOneOfType(&v95, v29, v30, v31, v32, v33, v34, v35, &v93))
    {
      goto LABEL_13;
    }

    v90 = 1602014129;
    v89 = xmmword_1B01FDECC;
    v88 = 317289457;
    v87 = xmmword_1B01FE1D8;
    v86 = -199226823;
    v85 = xmmword_1B01FDC24;
    v84 = 1412427398;
    v83 = xmmword_1B01FDC38;
    if (MGIsDeviceOneOfType(&v89, v36, v37, v38, v39, v40, v41, v42, &v87))
    {
      goto LABEL_13;
    }

    if (sub_1B0193D14() != 3)
    {
      goto LABEL_13;
    }

    v82 = 996646949;
    v81 = xmmword_1B01FE250;
    v80 = -563086000;
    v79 = xmmword_1B01FE264;
    if (MGIsDeviceOneOfType(&v81, v43, v44, v45, v46, v47, v48, v49, &v79))
    {
      goto LABEL_13;
    }

    v78 = -810116762;
    v77 = xmmword_1B01FDEE0;
    v76 = 401945557;
    v75 = xmmword_1B01FE1EC;
    v74 = -1283070668;
    v73 = xmmword_1B01FDC4C;
    v72 = 160260070;
    v71 = xmmword_1B01FDC60;
    if (MGIsDeviceOneOfType(&v77, v50, v51, v52, v53, v54, v55, v56, &v75))
    {
LABEL_13:
      v7 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v70 = -1195351767;
      v69 = xmmword_1B01FDEF4;
      v68 = -1639077591;
      v67 = xmmword_1B01FDE2C;
      v66 = MGIsDeviceOneOfType(&v69, v57, v58, v59, v60, v61, v62, v63, &v67);
      v7 = MEMORY[0x1E695E4C0];
      if (!v66)
      {
        v7 = MEMORY[0x1E695E4D0];
      }
    }
  }

  result = *v7;
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01A851C()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  v0 = !sub_1B0194994("IODeviceTree:/product/haptics", @"pre-warm-disabled", 0) || !sub_1B01998E0("IODeviceTree:/product/haptics", @"pre-warm-disabled", 0);
  CFRelease(@"pre-warm-disabled");
  return v0;
}

uint64_t sub_1B01A85FC()
{
  v0 = sub_1B0198DB0("IODeviceTree:/buttons", @"home-button-type", 0);
  if (v0)
  {
    v1 = v0;
    valuePtr = 0;
    Value = CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr);
    v3 = valuePtr;
    CFRelease(v1);
    v4 = v3 != 1 || Value == 0;
    v5 = MEMORY[0x1E695E4D0];
    if (v4)
    {
      v5 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  return *v5;
}

CFStringRef sub_1B01A86AC()
{
  v0 = sub_1B0191100(@"eZS2J+wspyGxqNYZeZ/sbA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

__CFArray *sub_1B01A882C()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = sub_1B0191100(@"HMpTbnbcAb+mQDi8O71h6Q", 0);
  if (!v1)
  {
    v3 = 0;
    if (!Mutable)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v2 = v1;
  CFArrayAppendValue(Mutable, v1);
  v3 = sub_1B01B9F00(Mutable, 3u);
  CFRelease(v2);
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t sub_1B01A894C()
{
  memset(&v3, 0, sizeof(v3));
  v0 = stat("/AppleInternal/Library/PreferenceBundles/Internal Settings.bundle", &v3);
  LOBYTE(v3.st_dev) = 0;
  result = sub_1B01A1D48("/var/mobile/Library/Preferences/com.apple.springboard.plist", @"SBAllowSensitiveUI", &v3);
  if ((v3.st_dev & 1) == 0)
  {
    v2 = v0 == 0;
    LODWORD(result) = sub_1B01A1D48("/System/Library/CoreServices/SBTeaLeafOverrides.plist", @"SBAllowSensitiveUI", &v3);
    if (LOBYTE(v3.st_dev))
    {
      return result;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_1B01A89EC()
{
  v0 = sub_1B01970CC("IODeviceTree:/", @"model-config", 0);
  v1 = *MEMORY[0x1E695E4C0];
  if (v0)
  {
    v2 = v0;
    location = CFStringFind(v0, @"NED=1", 0).location;
    v4 = *MEMORY[0x1E695E4D0];
    if (location != -1)
    {
      v1 = *MEMORY[0x1E695E4D0];
    }

    CFRelease(v2);
  }

  return v1;
}

__CFDictionary *sub_1B01A8A64()
{
  v0 = sub_1B0199908("IODeviceTree:/arm-io/disp0", @"device-dbv-dependent-vsh", 0);
  if (!v0)
  {
    sub_1B01F09C0(&valuePtr);
    return valuePtr;
  }

  v1 = v0;
  if (CFDataGetLength(v0) != 16)
  {
    sub_1B01F085C(v1, &valuePtr);
LABEL_10:
    v3 = valuePtr;
    goto LABEL_5;
  }

  CFDataGetBytePtr(v1);
  CFDataGetLength(v1);
  __memcpy_chk();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    sub_1B01F0944(&valuePtr);
    goto LABEL_10;
  }

  v3 = Mutable;
  LODWORD(valuePtr) = 0;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"SnapToNits", v4);
  CFRelease(v4);
  LODWORD(valuePtr) = 0;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"MaximumNitsToSnap", v5);
  CFRelease(v5);
  LODWORD(valuePtr) = 0;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"ExpandedNitsFailureCount", v6);
  CFRelease(v6);
  LODWORD(valuePtr) = 0;
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(v3, @"ExpandedNits", v7);
  CFRelease(v7);
LABEL_5:
  CFRelease(v1);
  return v3;
}

uint64_t sub_1B01A8C30()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"display-mirroring", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01A8C78()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 7 || sub_1B0193D14() == 4 || sub_1B0193D14() == 3 || sub_1B0193D14() == 2 || sub_1B0193D14() == 1 || sub_1B0193D14() == 11 || sub_1B0193D14() == 8)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef sub_1B01A8E84()
{
  v17 = *MEMORY[0x1E69E9840];
  if (sub_1B01978E8())
  {
    v0 = @"iPad";
  }

  else
  {
    v1 = SCPreferencesCreate(0, @"MobileGestalt", 0);
    if (v1)
    {
      v2 = v1;
      if (SCPreferencesLock(v1, 1u))
      {
        v0 = SCDynamicStoreCopyComputerName(0, 0);
        SCPreferencesUnlock(v2);
      }

      else
      {
        v3 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v4)
        {
          v3 = v4 + 1;
        }

        v5 = SCError();
        v6 = SCErrorString(v5);
        _MGLog(v3, 4773, @"SCPreferencesLock: %s", v7, v8, v9, v10, v11, v6);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v12 = SCError();
          *buf = 136315138;
          v16 = SCErrorString(v12);
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SCPreferencesLock: %s", buf, 0xCu);
        }

        v0 = SCDynamicStoreCopyComputerName(0, 0);
      }

      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v0;
}

void *sub_1B01A8FE0()
{
  v0 = sub_1B0191100(@"qNNddlUK+B/YlooNoymwgA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = _CFCopySupplementalVersionDictionary();
  v3 = sub_1B01A1980(v2, @"ProductVersionExtra", 1);
  if (v3)
  {
    v4 = v3;
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ %@", v1, v3);
    CFRelease(v1);
    v1 = v4;
  }

  else
  {
    v5 = CFRetain(v1);
  }

  CFRelease(v1);
  return v5;
}

uint64_t sub_1B01A90A0()
{
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"housing-color", 0);
  v1 = sub_1B01C0CC8(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_1B01A90F0()
{
  result = sub_1B01C583C("IODeviceTree", @"ipd", 0, @"kblang-calibration", 0);
  if (!result)
  {

    return sub_1B01C583C("IODeviceTree", @"keyboard", 0, @"kblang-calibration", 0);
  }

  return result;
}

uint64_t sub_1B01A917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 368885834;
  v14 = xmmword_1B01FE854;
  v13 = -526227167;
  v12 = xmmword_1B01FE868;
  if ((MGIsDeviceOneOfType(&v14, a2, a3, a4, a5, a6, a7, a8, &v12) & 1) != 0 || sub_1B0193D14() == 3)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v11 = sub_1B0193D14();
    v8 = MEMORY[0x1E695E4C0];
    if (v11 != 4 && sub_1B0193D14() != 2)
    {
      v8 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01A92B8()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

uint64_t sub_1B01A930C()
{
  v1 = *(off_1EB6CFEC0 + 90);
  if (!v1)
  {
    v1 = sub_1B0193150(90, 2);
    v0 = vars8;
  }

  return v1(@"SupportedKeyboards");
}

__CFDictionary *sub_1B01A9424()
{
  v89 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 6 || sub_1B0193D14() == 7 || sub_1B0193D14() == 4)
  {
    Mutable = 0;
    goto LABEL_5;
  }

  v87 = xmmword_1B01FEAC0;
  v88 = xmmword_1B01FEAB0;
  v85 = xmmword_1B01FEAE0;
  v86 = xmmword_1B01FEAD0;
  v83 = xmmword_1B01FEB00;
  v84 = xmmword_1B01FEAF0;
  v81 = xmmword_1B01FEB20;
  v82 = xmmword_1B01FEB10;
  v79 = xmmword_1B01FEB30;
  v80 = xmmword_1B01FECA0;
  v77 = xmmword_1B01FECA0;
  v78 = xmmword_1B01FEB40;
  v75 = xmmword_1B01FEB50;
  v76 = xmmword_1B01FEC00;
  v73 = xmmword_1B01FEB60;
  v74 = xmmword_1B01FEC00;
  v71 = xmmword_1B01FEB70;
  v72 = xmmword_1B01FECA0;
  v69 = xmmword_1B01FEB90;
  v70 = xmmword_1B01FEB80;
  v67 = xmmword_1B01FEBB0;
  v68 = xmmword_1B01FEBA0;
  v65 = xmmword_1B01FEBD0;
  v66 = xmmword_1B01FEBC0;
  v63 = xmmword_1B01FEBE0;
  v64 = xmmword_1B01FEC00;
  v61 = xmmword_1B01FEBF0;
  v62 = xmmword_1B01FECA0;
  v60 = xmmword_1B01FEC00;
  v58 = xmmword_1B01FECA0;
  v59 = xmmword_1B01FEC10;
  v56 = xmmword_1B01FEC30;
  v57 = xmmword_1B01FEC20;
  v54 = xmmword_1B01FEC50;
  v55 = xmmword_1B01FEC40;
  v52 = xmmword_1B01FEC70;
  v53 = xmmword_1B01FEC60;
  v50 = xmmword_1B01FEC90;
  v51 = xmmword_1B01FEC80;
  v49 = xmmword_1B01FECA0;
  v43 = -1;
  valuePtr = 0;
  v3 = MGGetBoolAnswer(@"DeviceSupportsReverseZoom");
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = sub_1B0198DB0("IODeviceTree:/product", @"artwork-device-subtype", 0);
    v7 = sub_1B0198DB0("IODeviceTree:/product", @"artwork-scale-factor", 0);
    if (v6)
    {
      if (CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr))
      {
        if (!v7 || !CFNumberGetValue(v7, kCFNumberSInt32Type, &v43))
        {
LABEL_115:
          CFRelease(v6);
LABEL_116:
          if (!v7)
          {
            goto LABEL_5;
          }

LABEL_117:
          CFRelease(v7);
          goto LABEL_5;
        }

        if (v43 == 2 && valuePtr == 2688)
        {
          valuePtr = 1792;
LABEL_17:
          v8 = 0;
          v9 = 0;
          v10 = &v79;
          v11 = &v78;
          goto LABEL_18;
        }

        if (valuePtr <= 2531)
        {
          if (valuePtr > 2339)
          {
            if (valuePtr <= 2387)
            {
              if (valuePtr != 2340)
              {
                if (valuePtr == 2360)
                {
                  if (v3)
                  {
                    v10 = &v68;
                    v9 = &v67;
                    v8 = &v66;
                    v11 = &v67;
                    goto LABEL_18;
                  }

                  goto LABEL_111;
                }

                goto LABEL_109;
              }
            }

            else
            {
              if (valuePtr == 2388)
              {
                if (v3)
                {
                  v10 = &v71;
                  v9 = &v70;
                  v8 = &v69;
                  v11 = &v70;
                  goto LABEL_18;
                }

                goto LABEL_111;
              }

              if (valuePtr == 2420)
              {
                if (v3)
                {
                  v10 = &v57;
                  v9 = &v56;
                  v8 = &v55;
                  v11 = &v56;
                  goto LABEL_18;
                }

                goto LABEL_111;
              }

              if (valuePtr != 2436)
              {
                goto LABEL_109;
              }
            }

            v8 = 0;
            v9 = 0;
            v10 = &v77;
            v11 = &v76;
            goto LABEL_18;
          }

          if (valuePtr <= 569)
          {
            if (valuePtr == 568)
            {
LABEL_111:
              v40 = CFArrayCreate(v4, 0, 0, MEMORY[0x1E695E9C0]);
              if (v40)
              {
                v41 = v40;
                CFDictionarySetValue(Mutable, @"default", v40);
                CFDictionarySetValue(Mutable, @"zoomed", v41);
              }

              else
              {
                v41 = Mutable;
                Mutable = 0;
              }

              CFRelease(v41);
              goto LABEL_115;
            }

            if (valuePtr == 569)
            {
              v8 = 0;
              v9 = 0;
              v10 = &v88;
              v11 = &v87;
              goto LABEL_18;
            }
          }

          else
          {
            switch(valuePtr)
            {
              case 570:
                v8 = 0;
                v9 = 0;
                v10 = &v86;
                v11 = &v85;
                goto LABEL_18;
              case 1792:
                goto LABEL_17;
              case 2224:
                goto LABEL_111;
            }
          }

          goto LABEL_109;
        }

        if (valuePtr > 2735)
        {
          if (valuePtr > 2777)
          {
            switch(valuePtr)
            {
              case 2778:
                v8 = 0;
                v9 = 0;
                v10 = &v73;
                v11 = &v72;
                goto LABEL_18;
              case 2796:
                v8 = 0;
                v9 = 0;
                v10 = &v63;
                v11 = &v62;
                goto LABEL_18;
              case 2868:
                v8 = 0;
                v9 = 0;
                v10 = &v59;
                v11 = &v58;
                goto LABEL_18;
            }

            goto LABEL_109;
          }

          if (valuePtr == 2736)
          {
            v8 = 0;
            v9 = 0;
            v10 = &v50;
            v11 = &v49;
            goto LABEL_18;
          }

          if (valuePtr == 2752)
          {
            if (v3)
            {
              v8 = &v51;
            }

            else
            {
              v8 = 0;
            }

            if (v3)
            {
              v9 = &v52;
            }

            else
            {
              v9 = 0;
            }

            v10 = &v53;
            v11 = &v54;
LABEL_18:
            v12 = sub_1B01A2E34();
            v13 = v12;
            if (v12)
            {
              if (CFDataGetLength(v12) >= 16)
              {
                BytePtr = CFDataGetBytePtr(v13);
                if (valuePtr == 2732)
                {
                  v15 = BytePtr;
                  if (BytePtr[1] > *BytePtr)
                  {
                    v16 = *(v10 + 1);
                    *(v10 + 1) = *(v10 + 3);
                    *(v10 + 3) = v16;
                    v17 = *(v11 + 1);
                    *(v11 + 1) = *(v11 + 3);
                    *(v11 + 3) = v17;
                    if (v9)
                    {
                      v18 = *(v9 + 1);
                      *(v9 + 1) = *(v9 + 3);
                      *(v9 + 3) = v18;
                    }

                    v19 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
                    v42 = *v15;
                    _MGLog(v19, 2058, @"copyAvailableDisplayZoomSizes: Changed landscape to portrait for %dx%d", v20, v21, v22, v23, v24, v15[1]);
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      v25 = v15[1];
                      v26 = *v15;
                      *buf = 67109376;
                      v46 = v25;
                      v47 = 1024;
                      v48 = v26;
                      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "copyAvailableDisplayZoomSizes: Changed landscape to portrait for %dx%d", buf, 0xEu);
                    }
                  }
                }
              }
            }

            v27 = sub_1B01BA270(v10);
            if (v27)
            {
              v28 = v27;
              v29 = sub_1B01BA270(v11);
              if (v29)
              {
                v30 = v29;
                if (v9)
                {
                  v31 = sub_1B01BA270(v9);
                  if (!v31)
                  {
                    CFRelease(Mutable);
                    v32 = 0;
LABEL_56:
                    Mutable = 0;
                    goto LABEL_72;
                  }
                }

                else
                {
                  v31 = 0;
                }

                if (v8)
                {
                  v32 = sub_1B01BA270(v8);
                  if (!v32)
                  {
                    CFRelease(Mutable);
                    goto LABEL_56;
                  }
                }

                else
                {
                  v32 = 0;
                }

                CFDictionarySetValue(Mutable, @"default", v28);
                CFDictionarySetValue(Mutable, @"zoomed", v30);
                if (v9)
                {
                  CFDictionarySetValue(Mutable, @"dense", v31);
                }

                if (v8)
                {
                  CFDictionarySetValue(Mutable, @"denser", v32);
                }

LABEL_72:
                CFRelease(v30);
                CFRelease(v28);
                if (v31)
                {
                  CFRelease(v31);
                }

                if (!v32)
                {
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

              CFRelease(Mutable);
              Mutable = 0;
              v32 = v28;
            }

            else
            {
              v32 = Mutable;
              Mutable = 0;
            }

LABEL_75:
            CFRelease(v32);
LABEL_76:
            CFRelease(v6);
            if (v13)
            {
              CFRelease(v13);
            }

            goto LABEL_117;
          }
        }

        else
        {
          if (valuePtr <= 2621)
          {
            if (valuePtr == 2532)
            {
              v8 = 0;
              v9 = 0;
              v10 = &v75;
              v11 = &v74;
              goto LABEL_18;
            }

            if (valuePtr == 2556)
            {
              v8 = 0;
              v9 = 0;
              v10 = &v65;
              v11 = &v64;
              goto LABEL_18;
            }

            goto LABEL_109;
          }

          switch(valuePtr)
          {
            case 2622:
              v8 = 0;
              v9 = 0;
              v10 = &v61;
              v11 = &v60;
              goto LABEL_18;
            case 2688:
              v8 = 0;
              v9 = 0;
              v10 = &v81;
              v11 = &v80;
              goto LABEL_18;
            case 2732:
              v8 = 0;
              if (v3)
              {
                v9 = &v82;
              }

              else
              {
                v9 = 0;
              }

              v10 = &v84;
              v11 = &v83;
              goto LABEL_18;
          }
        }

LABEL_109:
        v34 = sub_1B019C840("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c");
        _MGLog(v34, 2034, @"Unsupported artwork-device-subtype %d", v35, v36, v37, v38, v39, valuePtr);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v46 = valuePtr;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported artwork-device-subtype %d", buf, 8u);
        }

        goto LABEL_111;
      }

      CFRelease(Mutable);
      v33 = v6;
    }

    else
    {
      v33 = Mutable;
    }

    CFRelease(v33);
    Mutable = 0;
    goto LABEL_116;
  }

LABEL_5:
  v1 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t sub_1B01A9D2C()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = sub_1B01997C0(@"H4");
  v8 = MEMORY[0x1E695E4C0];
  if (!v0)
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    if (!MGIsDeviceOneOfType(&v13, v1, v2, v3, v4, v5, v6, v7, &v11))
    {
      v8 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef sub_1B01A9E34()
{
  v0 = sub_1B0191100(@"aOq/O8u9f/bpWUnKco+xgA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

CFMutableDictionaryRef sub_1B01AA03C()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v1 = IOServiceNameMatching("compass");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01BA2F8;
  v3[3] = &unk_1E7A92A58;
  v3[4] = Mutable;
  sub_1B01BCF2C(v1, v3);
  return Mutable;
}

BOOL sub_1B01AA11C()
{
  if (sub_1B01C5C0C(@"wlan.nan.enabled"))
  {
    return 1;
  }

  return sub_1B01BE768();
}

uint64_t sub_1B01AA19C()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 6 || sub_1B0193D14() == 2;
  }

  return result;
}

uint64_t sub_1B01AA20C()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 3;
  }

  return result;
}

BOOL sub_1B01AA280()
{
  if (sub_1B0198CA8())
  {
    v0 = sub_1B01B0D88();
    if (v0)
    {
      v1 = v0;
      v2 = CFGetTypeID(v0);
      if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) >= 6)
      {
        BytePtr = CFDataGetBytePtr(v1);
        if (*BytePtr)
        {
          v4 = 1;
        }

        else
        {
          v14 = 0;
          v15 = BytePtr + 1;
          do
          {
            v16 = v14;
            if (v14 == 5)
            {
              break;
            }

            v17 = v15[v14++];
          }

          while (!v15[v16]);
          v4 = v16 < 5;
        }
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v1);
      return v4;
    }

    return 0;
  }

  if (MGGetBoolAnswer(@"kjKnJNt7HY90iN6rpbSeFQ"))
  {
    return 0;
  }

  v5 = *(off_1EB6CFEC0 + 97);
  if (!v5)
  {
    v5 = sub_1B0193150(97, 2);
  }

  if (v5 == sub_1B01A3304)
  {
    v8 = *MEMORY[0x1E696CD60];
    v9 = IOServiceMatching("IOPlatformExpertDevice");
    MatchingService = IOServiceGetMatchingService(v8, v9);
    if (MatchingService)
    {
      v11 = MatchingService;
      v4 = 1;
      v12 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", @"no-sdio-devices", *MEMORY[0x1E695E480], 1u);
      if (v12)
      {
        v13 = v12;
        *buffer = 0;
        v19.location = 0;
        v19.length = 4;
        CFDataGetBytes(v12, v19, buffer);
        v4 = *buffer == 0;
        CFRelease(v13);
      }

      IOObjectRelease(v11);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v6 = *(off_1EB6CFEC0 + 97);
    if (!v6)
    {
      v6 = sub_1B0193150(97, 2);
    }

    return v6() != 0;
  }

  return v4;
}

uint64_t sub_1B01AA450()
{
  if (MGGetBoolAnswer(@"sigsyX/a/CpMjoZnrgwIgg"))
  {
    return 1;
  }

  if (sub_1B0193D14() == 7)
  {
    return 0;
  }

  if (!sub_1B01997C0(@"H9"))
  {
    v1 = MGGetStringAnswer(@"5pYKlGnYYBzGvAlIU8RjEQ");
    if (v1)
    {
      v2 = v1;
      v0 = CFEqual(v1, @"s8001") != 0;
      CFRelease(v2);
      return v0;
    }

    return 0;
  }

  return 1;
}

CFStringRef sub_1B01AA4DC()
{
  v0 = sub_1B0191100(@"HzddeW2/HtdBNAc5tsFtDg", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01AA650()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = sub_1B01995B4();
  if (v1)
  {
    v2 = v1;
    if (!CFEqual(v1, @"AppleTV") && !CFEqual(v2, @"Watch") && (sub_1B01997C0(@"H8") || sub_1B01997C0(@"H9") || sub_1B01997C0(@"H10")))
    {
      v0 = *MEMORY[0x1E695E4D0];
    }

    CFRelease(v2);
  }

  return v0;
}

__CFString *sub_1B01AA7A8()
{
  v0 = sub_1B01C0B84(0x434C4347u);
  if (v0)
  {
    return CFStringCreateWithFormat(0, 0, @"%d", v0);
  }

  if (MGGetBoolAnswer(@"XkfGVYlrkBQJgaGabHESJQ"))
  {

    return sub_1B01B9A7C(@"8/tysfSvORoyVg9IE901oQ");
  }

  else
  {
    v2 = sub_1B01BA6FC();
    if (v2 <= 8)
    {
      return *(&off_1E7A92940 + 2 * v2);
    }

    else
    {
      return @"unknown";
    }
  }
}

void *sub_1B01AA84C()
{
  v0 = sub_1B019BAC0(1, "centauri", @"ChipRevision");
  if (!v0)
  {
    v1 = sub_1B01C594C(":/arm-io/wlan", @"AppleOLYHAL", 0, @"ModuleInfo", 0);
    if (v1)
    {
      v2 = v1;
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v1, @" ");
      if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
      {
LABEL_7:
        v0 = 0;
      }

      else
      {
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v4);
          if (CFStringFind(ValueAtIndex, @"chip=", 0).location != -1)
          {
            break;
          }

          if (++v4 >= CFArrayGetCount(ArrayBySeparatingStrings))
          {
            goto LABEL_7;
          }
        }

        Length = CFStringGetLength(@"chip=");
        v8.length = CFStringGetLength(ValueAtIndex) - Length - 2;
        v8.location = Length + 1;
        v0 = CFStringCreateWithSubstring(0, ValueAtIndex, v8);
      }

      CFRelease(ArrayBySeparatingStrings);
      CFRelease(v2);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

BOOL sub_1B01AA9B8()
{
  if (sub_1B0193D14() != 3 || sub_1B019AFD8() >> 31 < 3)
  {
    return 0;
  }

  return sub_1B019D140(@"H13");
}

BOOL sub_1B01AAA0C()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

CFDataRef sub_1B01AAA68()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B0199908("IODeviceTree:/chosen", @"mac-address-bluetooth0", 0)) == 0 && (result = sub_1B01BD358("bluetooth")) == 0)
  {

    return sub_1B01C0E4C(0x424D6163u);
  }

  return result;
}

__CFString *sub_1B01AAB14()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    v4 = @"NoTelephonyCapabilty";
    goto LABEL_12;
  }

  v0 = sub_1B0191100(@"vaiFeAcMTIDXMSxTr8JwCw", 0);
  if (!v0)
  {
    sub_1B01F0A3C(&v13);
    v4 = v13;
    goto LABEL_12;
  }

  v1 = v0;
  v2 = *(off_1EB6CFEC0 + 68);
  if (!v2)
  {
    v2 = sub_1B0193150(68, 1);
  }

  if (!CFEqual(v1, *v2))
  {
    v3 = *(off_1EB6CFEC0 + 65);
    if (!v3)
    {
      v3 = sub_1B0193150(65, 1);
    }

    if (!CFEqual(v1, *v3))
    {
      v6 = *(off_1EB6CFEC0 + 67);
      if (!v6)
      {
        v6 = sub_1B0193150(67, 1);
      }

      if (CFEqual(v1, *v6))
      {
        goto LABEL_16;
      }

      v7 = *(off_1EB6CFEC0 + 66);
      if (!v7)
      {
        v7 = sub_1B0193150(66, 1);
      }

      if (!CFEqual(v1, *v7))
      {
        v8 = *(off_1EB6CFEC0 + 69);
        if (!v8)
        {
          v8 = sub_1B0193150(69, 1);
        }

        if (CFEqual(v1, *v8))
        {
          v4 = @"BBRejectedTicket";
          goto LABEL_10;
        }

        v9 = *(off_1EB6CFEC0 + 74);
        if (!v9)
        {
          v9 = sub_1B0193150(74, 1);
        }

        if (CFEqual(v1, *v9))
        {
          goto LABEL_9;
        }

        v10 = *(off_1EB6CFEC0 + 73);
        if (!v10)
        {
          v10 = sub_1B0193150(73, 1);
        }

        if (CFEqual(v1, *v10))
        {
LABEL_16:
          v4 = @"BBNotReady";
          goto LABEL_10;
        }

        v11 = *(off_1EB6CFEC0 + 71);
        if (!v11)
        {
          v11 = sub_1B0193150(71, 1);
        }

        if (!CFEqual(v1, *v11))
        {
          v12 = *(off_1EB6CFEC0 + 72);
          if (!v12)
          {
            v12 = sub_1B0193150(72, 1);
          }

          if (CFEqual(v1, *v12))
          {
            v4 = @"SIMNotInserted";
          }

          else
          {
            v4 = @"Other-CheckLogs";
          }

          goto LABEL_10;
        }
      }

      v4 = @"BBError";
      goto LABEL_10;
    }
  }

LABEL_9:
  v4 = @"BBInfoAvailable";
LABEL_10:
  CFRelease(v1);
LABEL_12:
  CFRetain(v4);
  return v4;
}

CFStringRef sub_1B01AAD70()
{
  v0 = sub_1B0191100(@"IAJzgzhEVk3SMNuEhChs2w", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

BOOL sub_1B01AAECC()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

CFArrayRef sub_1B01AAF10()
{
  v121 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() != 1)
  {
    if (sub_1B0193D14() != 3)
    {
LABEL_28:
      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
      sub_1B019C1E4(v35, @"rear-cam-offset-from-center");
      result = sub_1B019C538(v35, 0, v28, v29, v30, v31, v32, v33);
      goto LABEL_29;
    }

    v80 = -1283070668;
    v79 = xmmword_1B01FDC4C;
    v78 = -199226823;
    v77 = xmmword_1B01FDC24;
    v76 = 1412427398;
    v75 = xmmword_1B01FDC38;
    v74 = 160260070;
    v73 = xmmword_1B01FDC60;
    v72 = 317289457;
    v71 = xmmword_1B01FE1D8;
    v70 = 401945557;
    v69 = xmmword_1B01FE1EC;
    v7 = MGIsDeviceOneOfType(&v79, v17, v18, v19, v20, v21, v22, v23, &v77);
    if (v7)
    {
      v24 = 0x147AE0000000;
    }

    else
    {
      v68 = 1532898719;
      v67 = xmmword_1B01FDB70;
      v66 = -1527788847;
      v65 = xmmword_1B01FDB84;
      v7 = MGIsDeviceOneOfType(&v67, v8, v9, v10, v11, v12, v13, v14, &v65);
      if (v7)
      {
        v24 = 0x17AE20000000;
      }

      else
      {
        v64 = -563086000;
        v63 = xmmword_1B01FE264;
        v62 = 996646949;
        v61 = xmmword_1B01FE250;
        v7 = MGIsDeviceOneOfType(&v63, v8, v9, v10, v11, v12, v13, v14, &v61);
        if (v7)
        {
          v16 = 0x405CC3D700000000;
          goto LABEL_27;
        }

        v60 = 1908474541;
        v59 = xmmword_1B01FDB98;
        v58 = 1275676051;
        v57 = xmmword_1B01FDBAC;
        v7 = MGIsDeviceOneOfType(&v59, v8, v9, v10, v11, v12, v13, v14, &v57);
        if (v7 || (v56 = -1022451852, v55 = xmmword_1B01FE228, v54 = 1729782187, v53 = xmmword_1B01FE23C, v7 = MGIsDeviceOneOfType(&v55, v8, v9, v10, v11, v12, v13, v14, &v53), v7))
        {
          v16 = 0x4061A6B860000000;
          goto LABEL_27;
        }

        v52 = 2030516999;
        v51 = xmmword_1B01FE6B0;
        v50 = -1276010597;
        v49 = xmmword_1B01FE6C4;
        v48 = -762483149;
        v47 = xmmword_1B01FE6D8;
        v46 = -1926937532;
        v45 = xmmword_1B01FE6EC;
        v7 = MGIsDeviceOneOfType(&v51, v8, v9, v10, v11, v12, v13, v14, &v49);
        if (!v7)
        {
          v44 = -1902732724;
          v43 = xmmword_1B01FE700;
          v42 = -342357580;
          v41 = xmmword_1B01FE714;
          v40 = 300442574;
          v39 = xmmword_1B01FE728;
          v38 = -1294188889;
          v37 = xmmword_1B01FE73C;
          v7 = MGIsDeviceOneOfType(&v43, v8, v9, v10, v11, v12, v13, v14, &v41);
          if (!v7)
          {
            goto LABEL_28;
          }

          v16 = 0x405FE8B440000000;
          goto LABEL_27;
        }

        v24 = 0xC7EFA0000000;
      }
    }

    v16 = v24 & 0xFFFFFFFFFFFFLL | 0x405B000000000000;
    goto LABEL_27;
  }

  v120 = -1403227947;
  v119 = xmmword_1B01FE304;
  v118 = 729118884;
  v117 = xmmword_1B01FE2F0;
  v7 = MGIsDeviceOneOfType(&v119, v0, v1, v2, v3, v4, v5, v6, &v117);
  if (v7)
  {
    v15 = 0xF5C600000000;
LABEL_4:
    v16 = v15 & 0xFFFFFFFFFFFFLL | 0x4051000000000000;
    goto LABEL_27;
  }

  v116 = 1046806126;
  v115 = xmmword_1B01FE318;
  v114 = -188760945;
  v113 = xmmword_1B01FE32C;
  v7 = MGIsDeviceOneOfType(&v115, v8, v9, v10, v11, v12, v13, v14, &v113);
  if (v7)
  {
    v16 = 0x404B4820A0000000;
    goto LABEL_27;
  }

  v112 = -489993439;
  v111 = xmmword_1B01FE278;
  v110 = 886875686;
  v109 = xmmword_1B01FE28C;
  v7 = MGIsDeviceOneOfType(&v111, v8, v9, v10, v11, v12, v13, v14, &v109);
  if (v7)
  {
    v25 = 0x191680000000;
LABEL_15:
    v16 = v25 & 0xFFFFFFFFFFFFLL | 0x404F000000000000;
    goto LABEL_27;
  }

  v108 = -350584140;
  v107 = xmmword_1B01FE340;
  v106 = -1418383976;
  v105 = xmmword_1B01FE368;
  v7 = MGIsDeviceOneOfType(&v107, v8, v9, v10, v11, v12, v13, v14, &v105);
  if (v7)
  {
    goto LABEL_19;
  }

  v104 = 368778837;
  v103 = xmmword_1B01FE354;
  v102 = -1213485500;
  v101 = xmmword_1B01FE37C;
  v7 = MGIsDeviceOneOfType(&v103, v8, v9, v10, v11, v12, v13, v14, &v101);
  if (v7)
  {
    goto LABEL_24;
  }

  v100 = 414393924;
  v99 = xmmword_1B01FE0C0;
  v98 = 897736383;
  v97 = xmmword_1B01FE0D4;
  v7 = MGIsDeviceOneOfType(&v99, v8, v9, v10, v11, v12, v13, v14, &v97);
  if (v7)
  {
LABEL_19:
    v26 = 0x7D0B60000000;
LABEL_20:
    v16 = v26 & 0xFFFFFFFFFFFFLL | 0x404D000000000000;
    goto LABEL_27;
  }

  v96 = -996295886;
  v95 = xmmword_1B01FDBFC;
  v94 = -453987047;
  v93 = xmmword_1B01FDC10;
  v7 = MGIsDeviceOneOfType(&v95, v8, v9, v10, v11, v12, v13, v14, &v93);
  if (v7)
  {
LABEL_24:
    v15 = 0x28D0E0000000;
    goto LABEL_4;
  }

  v92 = -337121064;
  v91 = xmmword_1B01FDBD4;
  v90 = 450980336;
  v89 = xmmword_1B01FDBE8;
  v7 = MGIsDeviceOneOfType(&v91, v8, v9, v10, v11, v12, v13, v14, &v89);
  if (v7)
  {
    v16 = 0x404E1484E0000000;
  }

  else
  {
    v88 = -1843102369;
    v87 = xmmword_1B01FDCB0;
    v7 = MGIsDeviceOneOfType(&v87, v8, v9, v10, v11, v12, v13, v14, 0);
    if (v7)
    {
      v25 = 0x49BA0000000;
      goto LABEL_15;
    }

    v86 = -427474227;
    v85 = xmmword_1B01FDC88;
    v84 = 1477534141;
    v83 = xmmword_1B01FDC9C;
    v7 = MGIsDeviceOneOfType(&v85, v8, v9, v10, v11, v12, v13, v14, &v83);
    if (!v7)
    {
      v82 = -232427879;
      v81 = xmmword_1B01FDC74;
      v7 = MGIsDeviceOneOfType(&v81, v8, v9, v10, v11, v12, v13, v14, 0);
      if (!v7)
      {
        goto LABEL_28;
      }

      v26 = 0xFB0200000000;
      goto LABEL_20;
    }

    v16 = 0x4050BC3960000000;
  }

LABEL_27:
  result = sub_1B019C648(v7, v8, v9, v10, v11, v12, v13, v14, v16);
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_29:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01AB7D0()
{
  v0 = sub_1B019C9DC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"Restore") != 0;
  CFRelease(v1);
  return v2;
}

CFStringRef sub_1B01AB820()
{
  if (sub_1B0193D14() == 4)
  {

    return sub_1B0191100(@"+VIu65zA5EW4ztayJXvOUg", 0);
  }

  else
  {
    v1 = sub_1B0192F20("IODeviceTree:/product", @"product-name", 0);
    if (!v1)
    {
      return 0;
    }

    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID() && CFDataGetLength(v2) >= 1)
    {
      BytePtr = CFDataGetBytePtr(v2);
      v5 = CFStringCreateWithCString(0, BytePtr, 0x8000100u);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
    return v5;
  }
}

CFTypeRef sub_1B01AB8F0()
{
  v0 = *(off_1EB6CFEC0 + 15);
  if (!v0)
  {
    v0 = sub_1B0193150(15, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyMobileSubscriberNetworkCode", v0, TypeID);
}

uint64_t sub_1B01AB968()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 3;
  }

  return result;
}

uint64_t sub_1B01AB994()
{
  v4 = -1;
  v0 = sub_1B01914DC(@"UDftNoVOBIs9cSeia57q1A", 5, 5, kCFNumberSInt32Type, &v4);
  v1 = v4;
  if (!v0)
  {
    v1 = -1;
  }

  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

CFNumberRef sub_1B01AB9F4()
{
  result = sub_1B0198DB0("IODeviceTree:/product", @"builtin-mics", 0);
  if (!result)
  {
    valuePtr = 0;
    return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  return result;
}

BOOL sub_1B01ABA54()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

uint64_t sub_1B01ABAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = -38605833;
  v14 = xmmword_1B01FE390;
  v13 = -894965712;
  v12 = xmmword_1B01FE3A4;
  if ((MGIsDeviceOneOfType(&v14, a2, a3, a4, a5, a6, a7, a8, &v12) & 1) != 0 || sub_1B0193D14() == 6 || sub_1B0193D14() == 4)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v11 = sub_1B0193D14();
    v8 = MEMORY[0x1E695E4C0];
    if (v11 != 3 && sub_1B0193D14() != 11)
    {
      v8 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01ABC80()
{
  v1 = *(off_1EB6CFEC0 + 37);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(37, 2);
  }

  return v1();
}

uint64_t sub_1B01ABD08()
{
  v0 = MEMORY[0x1E695E4C0];
  v4 = -1;
  v1 = sub_1B01914DC(@"+97cHA72jHlHqQnIkgGBYg", 5, 5, kCFNumberSInt32Type, &v4);
  if (v1 && v4 == 2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = v0;
  }

  return *v2;
}

uint64_t sub_1B01ABDA8()
{
  if (MGGetBoolAnswer(@"yRZv0s7Dpj8ZBk0S+0+nMA"))
  {
    return sub_1B01959FC(@"CH") ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B01ABDE4()
{
  v49 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 7)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 4)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 3)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 2)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 6)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 11)
  {
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 8)
  {
    goto LABEL_10;
  }

  v48 = 28030256;
  v47 = xmmword_1B01FE2A0;
  v46 = 1214363620;
  v45 = xmmword_1B01FE2B4;
  v44 = -798153473;
  v43 = xmmword_1B01FE2C8;
  v42 = -776721724;
  v41 = xmmword_1B01FE2DC;
  v40 = -489993439;
  v39 = xmmword_1B01FE278;
  v38 = 886875686;
  v37 = xmmword_1B01FE28C;
  if (MGIsDeviceOneOfType(&v47, v0, v1, v2, v3, v4, v5, v6, &v45))
  {
    goto LABEL_10;
  }

  v36 = -1403227947;
  v35 = xmmword_1B01FE304;
  v34 = 729118884;
  v33 = xmmword_1B01FE2F0;
  v32 = 1046806126;
  v31 = xmmword_1B01FE318;
  v30 = -188760945;
  v29 = xmmword_1B01FE32C;
  if (MGIsDeviceOneOfType(&v35, v7, v8, v9, v10, v11, v12, v13, &v33))
  {
LABEL_10:
    v21 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v28 = -350584140;
    v27 = xmmword_1B01FE340;
    v26 = 368778837;
    v25 = xmmword_1B01FE354;
    v24 = MGIsDeviceOneOfType(&v27, v14, v15, v16, v17, v18, v19, v20, &v25);
    v21 = MEMORY[0x1E695E4C0];
    if (!v24)
    {
      v21 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v21;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B01AC0A0()
{
  v0 = *(off_1EB6CFEC0 + 8);
  if (!v0)
  {
    v0 = sub_1B0193150(8, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareManifestStatus", v0, TypeID);
}

CFDataRef sub_1B01AC128()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B019B054(@"ringer-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

const void *sub_1B01AC194()
{
  v0 = sub_1B01C59D4(0, @"AppleLisaHIDEventDriver", 0, @"HIDEventServiceProperties", 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v1, @"RotateToWakeSupported");
      v4 = Value;
      if (!Value)
      {
LABEL_7:
        CFRelease(v1);
        goto LABEL_9;
      }

      v5 = CFGetTypeID(Value);
      if (v5 == CFBooleanGetTypeID())
      {
        CFRetain(v4);
        goto LABEL_7;
      }
    }

    v4 = 0;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_9:
  if (v4)
  {
    return v4;
  }

  else
  {
    return *MEMORY[0x1E695E4C0];
  }
}

uint64_t sub_1B01AC258()
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (qword_1EB6D00C0 != -1)
  {
    sub_1B01F0AC0();
  }

  if (off_1EB6D00D0)
  {
    v0 = off_1EB6D00C8 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v1)
    {
      v7 = v1 + 1;
    }

    else
    {
      v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v7, 5384, @"Unable to dlsym AMFDRCreateWithOptions and AMFDRSealingMapVerifySealing", v2, v3, v4, v5, v6, v39);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Unable to dlsym AMFDRCreateWithOptions and AMFDRSealingMapVerifySealing";
    goto LABEL_27;
  }

  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v23 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v23)
    {
      v29 = v23 + 1;
    }

    else
    {
      v29 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v29, 5366, @"CFDictionaryCreateMutable failed", v24, v25, v26, v27, v28, v39);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "CFDictionaryCreateMutable failed";
LABEL_27:
    _os_log_impl(&dword_1B0190000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
LABEL_28:
    v15 = 0;
    goto LABEL_36;
  }

  v12 = Mutable;
  CFDictionarySetValue(Mutable, @"DataStore", @"Local");
  v13 = off_1EB6D00D0(v10, v12);
  if (v13)
  {
    v14 = v13;
    v15 = off_1EB6D00C8(v13, &cf);
    if ((v15 & 1) == 0)
    {
      v16 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v22 = v16 ? v16 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v22, 5379, @"AMFDRSealingMapVerifySealing failed: %@", v17, v18, v19, v20, v21, cf);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = cf;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AMFDRSealingMapVerifySealing failed: %@", buf, 0xCu);
      }
    }

    CFRelease(v14);
  }

  else
  {
    v30 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v30)
    {
      v36 = v30 + 1;
    }

    else
    {
      v36 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v36, 5374, @"AMFDRCreateWithOptions failed", v31, v32, v33, v34, v35, v39);
    v15 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AMFDRCreateWithOptions failed", buf, 2u);
      v15 = 0;
    }
  }

  CFRelease(v12);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_36:
  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_1B01AC578()
{
  v0 = sub_1B01BB924();
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01AC5C4()
{
  v1 = *(off_1EB6CFEC0 + 32);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(32, 2);
  }

  return v1();
}

uint64_t sub_1B01AC650()
{
  v0 = sub_1B0199908("IODeviceTree:/product", @"cover-glass", 0);
  if (v0)
  {
    v1 = v0;
    if (CFDataGetLength(v0) == 8)
    {
      BytePtr = CFDataGetBytePtr(v1);
      if (BytePtr)
      {
        v3 = *(BytePtr + 1);
        if (v3 < 3)
        {
LABEL_27:
          CFRelease(v1);
          return v3;
        }

        v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v4)
        {
          v10 = v4 + 1;
        }

        else
        {
          v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v10, 5658, @"Invlid glass type", v5, v6, v7, v8, v9, v36);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:
          v3 = 0;
          goto LABEL_27;
        }

        v36 = 0;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Invlid glass type";
        v13 = &v36;
      }

      else
      {
        v28 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
        if (v28)
        {
          v34 = v28 + 1;
        }

        else
        {
          v34 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
        }

        _MGLog(v34, 5651, @"CFDataGetBytePtr", v29, v30, v31, v32, v33, v36);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *v37 = 0;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "CFDataGetBytePtr";
        v13 = v37;
      }
    }

    else
    {
      v21 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v21)
      {
        v27 = v21 + 1;
      }

      else
      {
        v27 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v27, 5645, @"I/O Invalid data returned", v22, v23, v24, v25, v26, v36);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v38 = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "I/O Invalid data returned";
      v13 = &v38;
    }

    _os_log_impl(&dword_1B0190000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
    goto LABEL_26;
  }

  v14 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v14)
  {
    v20 = v14 + 1;
  }

  else
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v20, 5640, @"copyDataFromDeviceTree failed", v15, v16, v17, v18, v19, v36);
  v3 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "copyDataFromDeviceTree failed", buf, 2u);
    return 0;
  }

  return v3;
}

CFDataRef sub_1B01AC874()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BA870(v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01AC8BC()
{
  result = MGGetBoolAnswer(@"nv4RoLkNoPT0/rsO8Yaiew");
  if (result)
  {
    return !MGGetBoolAnswer(@"2pxKjejpRGpWvUE+3yp5mQ");
  }

  return result;
}

CFStringRef sub_1B01AC8F8()
{
  v1 = 0u;
  v2 = 0u;
  if (sub_1B01BA870(&v1))
  {
    return CFStringCreateWithFormat(0, 0, @"{ x: %f, y: %f, width: %f, height: %f }", v1, v2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01AC964()
{
  v0 = sub_1B01A30E8();
  result = 0;
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);
    if ((v2 - 3) >= 0)
    {
      v3 = &v1[v2 - 3];
      if (*v3 == 68 && v3[1] == 69 && v3[2] == 86 && (strstr(v1, "SIM") || strstr(v1, "sim")))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1B01ACA0C()
{
  if (MGGetBoolAnswer(@"j8/Omm6s1lsmTDFsXjsBfA"))
  {
    return 1;
  }

  return sub_1B01C5724("IODeviceTree:/arm-io", @"disp0", 0, @"always-on-device-flipbook", 0);
}

uint64_t sub_1B01ACA6C()
{
  if (sub_1B0193D14() == 6 || sub_1B01997C0(@"H6") || sub_1B01997C0(@"H5"))
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v2 = sub_1B01997C0(@"H4");
    v0 = MEMORY[0x1E695E4C0];
    if (!v2)
    {
      v0 = MEMORY[0x1E695E4D0];
    }
  }

  return *v0;
}

BOOL sub_1B01ACAF8()
{
  v0 = *(off_1EB6CFEC0 + 1);
  if (!v0)
  {
    v0 = sub_1B0193150(1, 2);
  }

  v1 = v0();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  v4 = *(off_1EB6CFEC0 + 70);
  if (!v4)
  {
    v4 = sub_1B0193150(70, 1);
  }

  v7.location = 0;
  v7.length = Count;
  v5 = CFArrayContainsValue(v2, v7, *v4) != 0;
  CFRelease(v2);
  return v5;
}

CFTypeRef sub_1B01ACB9C()
{
  v0 = *(off_1EB6CFEC0 + 13);
  if (!v0)
  {
    v0 = sub_1B0193150(13, 2);
  }

  TypeID = CFStringGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyLastKnownMobileSubscriberCountryCode", v0, TypeID);
}

BOOL sub_1B01ACCF8()
{
  if (sub_1B0193D14() != 3 || !sub_1B01A1B04())
  {
    return 0;
  }

  return sub_1B019D140(@"H13");
}

CFStringRef sub_1B01ACD6C()
{
  v0 = sub_1B0191100(@"lU5WxNTusw4lrrBSEBiZeQ", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01ACEC8()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4 || sub_1B0193D14() == 1 || sub_1B0193D14() == 3 || sub_1B0193D14() == 2 || sub_1B0193D14() == 7 || sub_1B0193D14() == 11)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01AD08C()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = sub_1B0199908("IODeviceTree:/buttons", @"button-names", 0);
  if (v1)
  {
    v2 = v1;
    Length = CFDataGetLength(v1);
    BytePtr = CFDataGetBytePtr(v2);
    if (Length >= 1)
    {
      v5 = BytePtr;
      v6 = &BytePtr[Length];
      while (strncmp(v5, "app", Length))
      {
        v7 = strnlen(v5, Length);
        v5 += v7 + 1;
        Length -= v7 + 1;
        if (v5 >= v6)
        {
          goto LABEL_8;
        }
      }

      v0 = *MEMORY[0x1E695E4D0];
    }

LABEL_8:
    CFRelease(v2);
  }

  return v0;
}

uint64_t sub_1B01AD15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 1602014129;
  v35 = xmmword_1B01FDECC;
  v34 = -810116762;
  v33 = xmmword_1B01FDEE0;
  v32 = -1195351767;
  v31 = xmmword_1B01FDEF4;
  v30 = -199226823;
  v29 = xmmword_1B01FDC24;
  v28 = 1412427398;
  v27 = xmmword_1B01FDC38;
  v26 = -1283070668;
  v25 = xmmword_1B01FDC4C;
  v24 = 160260070;
  v23 = xmmword_1B01FDC60;
  if (MGIsDeviceOneOfType(&v35, a2, a3, a4, a5, a6, a7, a8, &v33) || sub_1B0193D14() == 6)
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v22 = -926344036;
    v21 = xmmword_1B01FE138;
    v20 = -954998212;
    v19 = xmmword_1B01FE14C;
    v16 = MGIsDeviceOneOfType(&v21, v8, v9, v10, v11, v12, v13, v14, &v19);
    v15 = MEMORY[0x1E695E4C0];
    if (!v16)
    {
      v15 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v15;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01AD36C()
{
  if (sub_1B0194994("IODeviceTree:/product", @"supports-meteor", 0))
  {
    return 1;
  }

  return MGGetBoolAnswer(@"noqTy5fUbyK03UHxWigBBQ");
}

BOOL sub_1B01AD3D0()
{
  if (sub_1B0193D14() != 3)
  {
    return 0;
  }

  return sub_1B01BD064(1, "AWCSMahiDeviceInfo");
}

uint64_t sub_1B01AD4A8()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"ND6ZSbBBgMgwtMfh+OL5Wg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFArray *sub_1B01AD548()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_47;
  }

  v2 = sub_1B0199908("IODeviceTree:/product", @"strict-wake-vendor-id", 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 == CFDataGetTypeID())
    {
      v5 = CFDataGetLength(v3) >> 2;
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      WORD2(valuePtr) = 0;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "Unexpected type at kIODeviceTreePlane :/product strict-wake-vendor-id";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    WORD2(valuePtr) = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "kIODeviceTreePlane :/product strict-wake-vendor-id not found";
LABEL_9:
    _os_log_impl(&dword_1B0190000, v6, OS_LOG_TYPE_DEFAULT, v7, &valuePtr + 4, 2u);
  }

  LODWORD(v5) = 0;
LABEL_11:
  v8 = sub_1B0199908("IODeviceTree:/product", @"strict-wake-product-id", 0);
  v9 = v8;
  if (!v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      WORD2(valuePtr) = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "kIODeviceTreePlane :/product strict-wake-product-id not found";
LABEL_18:
      _os_log_impl(&dword_1B0190000, v12, OS_LOG_TYPE_DEFAULT, v13, &valuePtr + 4, 2u);
    }

LABEL_19:
    LODWORD(v11) = 0;
    goto LABEL_20;
  }

  v10 = CFGetTypeID(v8);
  if (v10 != CFDataGetTypeID())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      WORD2(valuePtr) = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "Unexpected type at kIODeviceTreePlane :/product strict-wake-product-id";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = CFDataGetLength(v9) >> 2;
LABEL_20:
  if (v5 == v11)
  {
    if (v5 >= 1)
    {
      v14 = 0;
      v15 = 4 * v5;
      v16 = MEMORY[0x1E69E9C10];
      do
      {
        *buffer = 0;
        v30.location = v14;
        v30.length = 4;
        CFDataGetBytes(v9, v30, &buffer[4]);
        v31.location = v14;
        v31.length = 4;
        CFDataGetBytes(v3, v31, buffer);
        valuePtr = *buffer;
        v17 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v17)
        {
          v18 = v17;
          v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
          if (v19)
          {
            CFDictionaryAddValue(v18, @"productID", v19);
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_1B0190000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create product CF Number", v24, 2u);
          }

          v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          if (v20)
          {
            CFDictionaryAddValue(v18, @"vendorID", v20);
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_1B0190000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create vendor CF Number", v24, 2u);
          }

          CFArrayAppendValue(Mutable, v18);
          CFRelease(v18);
          if (v20)
          {
            CFRelease(v20);
          }

          if (v19)
          {
            CFRelease(v19);
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_1B0190000, v16, OS_LOG_TYPE_DEFAULT, "Failed to create the pair dictionary", v24, 2u);
          }

          CFArrayAppendValue(Mutable, 0);
        }

        v14 += 4;
      }

      while (v15 != v14);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    HIDWORD(valuePtr) = 67109376;
    v26 = v5;
    v27 = 1024;
    v28 = v11;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Array length mismatch! Vendor length %d vs Product length %d", &valuePtr + 4, 0xEu);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_47:
  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFNumberRef sub_1B01AD9A8()
{
  v4 = 1;
  v0 = sub_1B0198DB0("IODeviceTree:/product", @"activation-protocol-version", 0);
  if (v0)
  {
    v1 = v0;
    valuePtr = 1;
    if (CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr) && valuePtr == 2)
    {
      v4 = 2;
    }

    CFRelease(v1);
  }

  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v4);
}

uint64_t sub_1B01ADA38()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 7 || sub_1B0193D14() == 4 || sub_1B0193D14() == 3 || sub_1B0193D14() == 2 || sub_1B0193D14() == 1 || sub_1B0193D14() == 11 || sub_1B0193D14() == 8)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01ADB44()
{
  if (!sub_1B01959FC(@"KH"))
  {
    return 1;
  }

  return MEMORY[0x1EEE71F10]("FindMy", "ArcticPlum");
}

uint64_t sub_1B01ADC40()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 2;
  }

  return result;
}

uint64_t sub_1B01ADD3C()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 6)
  {
    result = MGGetBoolAnswer(@"magnetometer");
    if (result)
    {
      v12 = -1742178852;
      v11 = xmmword_1B01FE818;
      v10 = 2146530832;
      v9 = xmmword_1B01FE804;
      result = MGIsDeviceOneOfType(&v11, v1, v2, v3, v4, v5, v6, v7, &v9) ^ 1;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01ADE38()
{
  v0 = 1;
  if (!sub_1B01BD064(1, "aop-smart-cover"))
  {
    v0 = 0;
    if (sub_1B0194994("IODeviceTree:/buttons", @"function-button_halleffect", 0))
    {
      v1 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v7, 8406, @"HallEffectSensorCability true using function-button_halleffect", v2, v3, v4, v5, v6, v9[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "HallEffectSensorCability true using function-button_halleffect", v9, 2u);
      }

      return 1;
    }
  }

  return v0;
}

uint64_t sub_1B01ADF38()
{
  v13 = *MEMORY[0x1E69E9840];
  result = sub_1B0193D14();
  if (result != 1)
  {
    if (sub_1B0193D14() == 6)
    {
      result = sub_1B019D140(@"M11");
      if (result)
      {
        v12 = 1530338216;
        v11 = xmmword_1B01FE0E8;
        v10 = 406601745;
        v9 = xmmword_1B01FE0FC;
        result = MGIsDeviceOneOfType(&v11, v1, v2, v3, v4, v5, v6, v7, &v9) ^ 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01AE064()
{
  v43 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 1 || sub_1B0193D14() == 2 || sub_1B0193D14() == 3)
  {
    v42 = -350584140;
    v41 = xmmword_1B01FE340;
    v40 = 368778837;
    v39 = xmmword_1B01FE354;
    v38 = -1418383976;
    v37 = xmmword_1B01FE368;
    v36 = -1213485500;
    v35 = xmmword_1B01FE37C;
    if (MGIsDeviceOneOfType(&v41, v0, v1, v2, v3, v4, v5, v6, &v39) || (v34 = 897736383, v33 = xmmword_1B01FE0D4, v32 = -453987047, v31 = xmmword_1B01FDC10, v30 = 450980336, v29 = xmmword_1B01FDBE8, MGIsDeviceOneOfType(&v33, v7, v8, v9, v10, v11, v12, v13, &v31)))
    {
      v21 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v28 = 414393924;
      v27 = xmmword_1B01FE0C0;
      v26 = -996295886;
      v25 = xmmword_1B01FDBFC;
      v22 = MGIsDeviceOneOfType(&v27, v14, v15, v16, v17, v18, v19, v20, &v25);
      v21 = MEMORY[0x1E695E4D0];
      if (!v22)
      {
        v21 = MEMORY[0x1E695E4C0];
      }
    }
  }

  else
  {
    v21 = MEMORY[0x1E695E4C0];
  }

  result = *v21;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B01AE2C4()
{
  TypeID = CFBooleanGetTypeID();

  return sub_1B019697C("copyWiFiCallingCapability", &unk_1F2637300, TypeID);
}

__CFString *sub_1B01AE300()
{
  valuePtr = 0;
  v0 = sub_1B0191100(@"TF31PAB6aO8KAbPyNKSxKA", 0);
  if (!v0)
  {
    return @"0000000000000000";
  }

  v1 = v0;
  CFNumberGetValue(v0, kCFNumberLongLongType, &valuePtr);
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%qu", valuePtr);
  CFRelease(v1);
  return v2;
}

uint64_t sub_1B01AE3C8()
{
  v1 = *(off_1EB6CFEC0 + 45);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(45, 2);
  }

  return v1();
}

const char *sub_1B01AE430()
{
  result = sub_1B01970CC("IODeviceTree:/product", @"thinning-product-type", 0);
  if (!result)
  {

    return sub_1B019A220();
  }

  return result;
}

uint64_t sub_1B01AE478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = -337121064;
  v14 = xmmword_1B01FDBD4;
  v13 = 450980336;
  v12 = xmmword_1B01FDBE8;
  v8 = MGIsDeviceOneOfType(&v14, a2, a3, a4, a5, a6, a7, a8, &v12);
  v9 = MEMORY[0x1E695E4D0];
  if (!v8)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  v10 = *MEMORY[0x1E69E9840];
  return *v9;
}

CFStringRef sub_1B01AE580()
{
  v0 = sub_1B0191100(@"jSDzacs4RYWnWxn142UBLQ", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

CFDataRef sub_1B01AE71C()
{
  result = sub_1B0199908("IODeviceTree:/chosen", @"mac-address-ethernet0", 0);
  if (!result)
  {
    result = sub_1B01BD358("ethernet");
    if (!result)
    {

      return sub_1B01C0E4C(0x454D6163u);
    }
  }

  return result;
}

CFNumberRef sub_1B01AE8F4()
{
  if (sub_1B019D228(@"r/++Z94rbTcHrTtZ/rCU4w", 115))
  {
    goto LABEL_2;
  }

  if (sub_1B01997C0(@"M10"))
  {
LABEL_4:
    v0 = 42;
    goto LABEL_8;
  }

  if (sub_1B01997C0(@"H9") || sub_1B01997C0(@"H10"))
  {
    goto LABEL_7;
  }

  if (sub_1B01997C0(@"H1"))
  {
    goto LABEL_10;
  }

  if (sub_1B01997C0(@"M8"))
  {
    goto LABEL_4;
  }

  if (sub_1B01997C0(@"H2"))
  {
    goto LABEL_10;
  }

  if (sub_1B01997C0(@"M9"))
  {
    goto LABEL_4;
  }

  if (sub_1B01997C0(@"H3"))
  {
    goto LABEL_10;
  }

  if (sub_1B019D228(@"aIJva0DAnD6KdrSpPF11xQ", 115))
  {
LABEL_2:
    v0 = 50;
    goto LABEL_8;
  }

  if (sub_1B01997C0(@"H4"))
  {
    goto LABEL_10;
  }

  if (sub_1B01997C0(@"H11"))
  {
    goto LABEL_7;
  }

  if (sub_1B01997C0(@"H5"))
  {
LABEL_10:
    v0 = 41;
    goto LABEL_8;
  }

  if (sub_1B019D228(@"3Hj0jFscGt094g65Fag7eQ", 116))
  {
    goto LABEL_7;
  }

  if (sub_1B01997C0(@"H6"))
  {
    goto LABEL_4;
  }

  if (sub_1B019D228(@"NKo9tzEYqtHAfQYMFsc66Q", 115))
  {
LABEL_7:
    v0 = 51;
    goto LABEL_8;
  }

  if (sub_1B019D228(@"zDBaE8nqtDP8hY4pOa6iMw", 116))
  {
    v0 = 50;
  }

  else
  {
    v0 = 52;
  }

LABEL_8:
  valuePtr = v0;
  return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
}

uint64_t sub_1B01AEA8C()
{
  v0 = sub_1B0194994("IODeviceTree:/product/camera", @"post-effects", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01AEB74()
{
  v0 = sub_1B0193ED4("IODeviceTree:/product", @"multiuser-sessions", 0, 0, 1);
  v1 = MEMORY[0x1E695E4C0];
  if (v0)
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  return *v1;
}

uint64_t sub_1B01AEBF4()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4 || sub_1B0193D14() == 1 || sub_1B0193D14() == 3 || sub_1B0193D14() == 2 || sub_1B0193D14() == 7 || sub_1B0193D14() == 11)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -526227167;
    v11 = xmmword_1B01FE868;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef sub_1B01AEDC4()
{
  v0 = *(off_1EB6CFEC0 + 9);
  if (!v0)
  {
    v0 = sub_1B0193150(9, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwarePreflightInfo", v0, TypeID);
}

CFStringRef sub_1B01AEE4C()
{
  v0 = sub_1B0191100(@"8QNz35Yxm0KqxP1JiE0HIw", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

const void *sub_1B01AEFC0()
{
  v0 = sub_1B0191100(@"qOwiNS0eFEq9oi3MNsgxWg", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"Nonce");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_1B01AF02C()
{
  if (sub_1B01997C0(@"H6") || sub_1B01997C0(@"H8") || sub_1B0193D14() == 6 || sub_1B0193D14() == 7 || sub_1B01997C0(@"H5") || sub_1B01997C0(@"H7"))
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v2 = sub_1B01997C0(@"H4");
    v0 = MEMORY[0x1E695E4C0];
    if (!v2)
    {
      v0 = MEMORY[0x1E695E4D0];
    }
  }

  return *v0;
}

uint64_t sub_1B01AF0DC()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 1)
  {
    result = MGGetBoolAnswer(@"8S7ydMJ4DlCUF38/hI/fJA");
    if (result)
    {
      v12 = -232427879;
      v11 = xmmword_1B01FDC74;
      v10 = -427474227;
      v9 = xmmword_1B01FDC88;
      result = MGIsDeviceOneOfType(&v11, v1, v2, v3, v4, v5, v6, v7, &v9) ^ 1;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01AF2E0()
{
  v140 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 1)
  {
    v139 = -232427879;
    v138 = xmmword_1B01FDC74;
    v137 = -427474227;
    v136 = xmmword_1B01FDC88;
    v135 = 1477534141;
    v134 = xmmword_1B01FDC9C;
    v133 = -1843102369;
    v132 = xmmword_1B01FDCB0;
    v131 = -820493242;
    v130 = xmmword_1B01FE750;
    v129 = -61007701;
    v128 = xmmword_1B01FE444;
    v127 = -235416490;
    v126 = xmmword_1B01FE458;
    v125 = -121925081;
    v124 = xmmword_1B01FE4D0;
    v123 = 1071957977;
    v122 = xmmword_1B01FE480;
    v121 = 438437663;
    v120 = xmmword_1B01FE494;
    v119 = -382792827;
    v118 = xmmword_1B01FE4A8;
    v117 = 1575123478;
    v116 = xmmword_1B01FE4BC;
    v115 = 123138233;
    v114 = xmmword_1B01FE41C;
    v113 = 681511593;
    v112 = xmmword_1B01FE430;
    v111 = 713503427;
    v110 = xmmword_1B01FDCC4;
    v109 = -1632750650;
    v108 = xmmword_1B01FDCD8;
    v107 = -1431778695;
    v106 = xmmword_1B01FE46C;
    v7 = &v136;
    v8 = &v138;
LABEL_5:
    result = MGIsDeviceOneOfType(v8, v0, v1, v2, v3, v4, v5, v6, v7) ^ 1;
    goto LABEL_10;
  }

  if (sub_1B0193D14() == 3)
  {
    v105 = -1022451852;
    v104 = xmmword_1B01FE228;
    v103 = 1729782187;
    v102 = xmmword_1B01FE23C;
    v101 = 996646949;
    v100 = xmmword_1B01FE250;
    v99 = -563086000;
    v98 = xmmword_1B01FE264;
    v97 = 317289457;
    v96 = xmmword_1B01FE1D8;
    v95 = 401945557;
    v94 = xmmword_1B01FE1EC;
    v93 = -1157300313;
    v92 = xmmword_1B01FE200;
    v91 = -2132668294;
    v90 = xmmword_1B01FE214;
    v89 = 2030516999;
    v88 = xmmword_1B01FE6B0;
    v87 = -1276010597;
    v86 = xmmword_1B01FE6C4;
    v85 = -762483149;
    v84 = xmmword_1B01FE6D8;
    v83 = -1926937532;
    v82 = xmmword_1B01FE6EC;
    v81 = -1902732724;
    v80 = xmmword_1B01FE700;
    v79 = -342357580;
    v78 = xmmword_1B01FE714;
    v77 = 300442574;
    v76 = xmmword_1B01FE728;
    v75 = -1294188889;
    v74 = xmmword_1B01FE73C;
    v73 = 1126727276;
    v72 = xmmword_1B01FDCEC;
    v71 = 300130091;
    v70 = xmmword_1B01FDD00;
    v69 = 343814884;
    v68 = xmmword_1B01FDD14;
    v67 = -1675932945;
    v66 = xmmword_1B01FDD28;
    v65 = 1278131292;
    v64 = xmmword_1B01FE598;
    v63 = -1841712216;
    v62 = xmmword_1B01FE5AC;
    v61 = 659506830;
    v60 = xmmword_1B01FE5E8;
    v59 = 213746202;
    v58 = xmmword_1B01FE5FC;
    v57 = 372777383;
    v56 = xmmword_1B01FE520;
    v55 = -858079590;
    v54 = xmmword_1B01FE534;
    v53 = -212523443;
    v52 = xmmword_1B01FE548;
    v51 = 646100384;
    v50 = xmmword_1B01FE55C;
    v49 = 345196535;
    v48 = xmmword_1B01FE660;
    v47 = 440949464;
    v46 = xmmword_1B01FE674;
    v45 = -545612308;
    v44 = xmmword_1B01FDD3C;
    v43 = 1178062702;
    v42 = xmmword_1B01FDD50;
    v41 = -695298128;
    v40 = xmmword_1B01FDD64;
    v39 = 804488105;
    v38 = xmmword_1B01FDD78;
    v37 = 1614584579;
    v36 = xmmword_1B01FDD8C;
    v35 = 324288768;
    v34 = xmmword_1B01FDDA0;
    v33 = 460218192;
    v32 = xmmword_1B01FDDB4;
    v31 = 2144905009;
    v30 = xmmword_1B01FDDC8;
    v29 = 127894440;
    v28 = xmmword_1B01FDDDC;
    v27 = 1070997468;
    v26 = xmmword_1B01FDDF0;
    v25 = 688565114;
    v24 = xmmword_1B01FE688;
    v23 = -493418906;
    v22 = xmmword_1B01FE69C;
    v7 = &v102;
    v8 = &v104;
    goto LABEL_5;
  }

  result = 0;
  if (sub_1B0193D14() == 6 && sub_1B019D140(@"M11"))
  {
    v21 = 1530338216;
    v20 = xmmword_1B01FE0E8;
    v19 = 406601745;
    v18 = xmmword_1B01FE0FC;
    if (!MGIsDeviceOneOfType(&v20, v10, v11, v12, v13, v14, v15, v16, &v18))
    {
      result = 1;
    }
  }

LABEL_10:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sub_1B01AFC14()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"volume-up-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

CFStringRef sub_1B01AFC68()
{
  v0 = sub_1B0191100(@"5Y72WwdS5NYHdc00gEZ/DQ", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01AFE64()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"location-reminders", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

BOOL sub_1B01AFEB8()
{
  result = sub_1B019D140(@"H15");
  if (result)
  {
    return !sub_1B019D228(@"t8120", 0);
  }

  return result;
}

uint64_t sub_1B01AFF08()
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v0 = 0;
  if (sub_1B0198CA8())
  {
    goto LABEL_17;
  }

  v1 = IOServiceMatching("AppleOLYHAL");
  CFRetain(v1);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = sub_1B01BABB8;
  v15[3] = &unk_1E7A92C10;
  v15[4] = &v16;
  v15[5] = &v20;
  sub_1B01BCF2C(v1, v15);
  if ((v17[3] & 1) == 0)
  {
    CFRetain(v1);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = sub_1B01BAC38;
    v14[3] = &unk_1E7A92C38;
    v14[4] = &v16;
    v14[5] = &v20;
    sub_1B01BD998(v1, 5, v14, 0);
  }

  if (!v21[3])
  {
    v2 = *(v17 + 24);
    v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v3)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    if (v2 == 1)
    {
      _MGLog(v9, 3859, @"failed to fetch wifi vendor (no vendor-id)", v4, v5, v6, v7, v8, v13[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "failed to fetch wifi vendor (no vendor-id)";
LABEL_13:
        _os_log_impl(&dword_1B0190000, v10, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
      }
    }

    else
    {
      _MGLog(v9, 3861, @"failed to fetch wifi vendor (no AppleOLYHAL node)", v4, v5, v6, v7, v8, v13[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        v10 = MEMORY[0x1E69E9C10];
        v11 = "failed to fetch wifi vendor (no AppleOLYHAL node)";
        goto LABEL_13;
      }
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v0 = v21[3];
LABEL_17:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v0;
}

uint64_t sub_1B01B0144()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"eW5H/Gwg0uqbMqFot70pYg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B018C()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 2 || sub_1B0193D14() == 3 || sub_1B0193D14() == 6;
  }

  return result;
}

CFTypeRef sub_1B01B01D8()
{
  v0 = sub_1B019BAC0(1, "als", @"prox-calibration");
  if (!v0)
  {
LABEL_4:
    v1 = sub_1B019BAC0(1, "multi-touch", @"prox-calibration");
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID())
  {
    CFRelease(v1);
    goto LABEL_4;
  }

LABEL_5:
  v3 = CFGetTypeID(v1);
  if (v3 == CFDataGetTypeID())
  {
    return v1;
  }

  CFRelease(v1);
LABEL_8:

  return sub_1B019BAC0(1, "prox", @"prox-calibration");
}

uint64_t sub_1B01B0350()
{
  v1 = *(off_1EB6CFEC0 + 50);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(50, 2);
  }

  return v1();
}

uint64_t sub_1B01B03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v59 = -414334491;
  v58 = xmmword_1B01FE19C;
  v57 = -1509831889;
  v56 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v58, a2, a3, a4, a5, a6, a7, a8, &v56))
  {
    goto LABEL_6;
  }

  v55 = 289690957;
  v54 = xmmword_1B01FE174;
  v53 = 586720268;
  v52 = xmmword_1B01FE188;
  if (MGIsDeviceOneOfType(&v54, v8, v9, v10, v11, v12, v13, v14, &v52))
  {
    goto LABEL_6;
  }

  if (sub_1B0193D14() != 6)
  {
    goto LABEL_6;
  }

  v51 = 368885834;
  v50 = xmmword_1B01FE854;
  v49 = -526227167;
  v48 = xmmword_1B01FE868;
  if (MGIsDeviceOneOfType(&v50, v15, v16, v17, v18, v19, v20, v21, &v48) || (v47 = -2092955395, v46 = xmmword_1B01FDE54, v45 = 674998600, v44 = xmmword_1B01FDE68, MGIsDeviceOneOfType(&v46, v22, v23, v24, v25, v26, v27, v28, &v44)))
  {
LABEL_6:
    v36 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v43 = 1711910369;
    v42 = xmmword_1B01FDE7C;
    v41 = -1282800328;
    v40 = xmmword_1B01FDE90;
    v39 = MGIsDeviceOneOfType(&v42, v29, v30, v31, v32, v33, v34, v35, &v40);
    v36 = MEMORY[0x1E695E4C0];
    if (!v39)
    {
      v36 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v36;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef sub_1B01B0644()
{
  v0 = sub_1B0191100(@"91LyMcx4z1w3SGVeqteMnA", 0);
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) > 11)
    {
      BytePtr = CFDataGetBytePtr(v1);
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, BytePtr + 4);
LABEL_11:
      CFRelease(v1);
      return v4;
    }
  }

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v11, 5133, @"failed to fetch region sku", v6, v7, v8, v9, v10, v13[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "failed to fetch region sku", v13, 2u);
  }

  v4 = 0;
  result = 0;
  if (v1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1B01B074C()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"gme55xrmjlSlBkahnZq36A", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

float sub_1B01B07AC()
{
  if (sub_1B0193D14() == 3 && !MGGetBoolAnswer(@"lSpe1QHIya0aeNrjLTtaJA"))
  {
    return 0.42;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_1B01B07FC()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"61xs1bQ+9eTk8tlRvG9UKw", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B01B0844()
{
  if (sub_1B0193D14() != 3)
  {
    return 0;
  }

  return sub_1B019AE8C(@"baseband", 0);
}

CFStringRef sub_1B01B08A8()
{
  v0 = sub_1B0191100(@"TqrlqJOZiAuRx8Qu3SVr+Q", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01B0A04()
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v16, 0, 512);
  if (statfs("/private/var", &v16) == -1)
  {
    v1 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v2)
    {
      v1 = v2 + 1;
    }

    v3 = __error();
    strerror(*v3);
    _MGLog(v1, 3794, @"Could not statfs %s: %s", v4, v5, v6, v7, v8, "/private/var");
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315394;
      v13 = "/private/var";
      v14 = 2080;
      v15 = v10;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not statfs %s: %s", buf, 0x16u);
    }

    sub_1B0191658(6);
    result = 0;
  }

  else
  {
    result = LOBYTE(v16.f_flags) >> 7;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef sub_1B01B0C40()
{
  v6 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4)
  {
    valuePtr = 1;
    v5 = 1839812531;
    v4 = xmmword_1B01FE1C4;
    if ((MGIsDeviceOfType(&v4) & 1) == 0)
    {
      valuePtr = 2;
    }

    result = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v1 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v2 = *MEMORY[0x1E69E9840];

    return sub_1B0191100(@"SNfDJgQFV2Xj7+WnozcJPw", 0);
  }

  return result;
}

CFDataRef sub_1B01B0D88()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B0199908("IODeviceTree:/chosen", @"mac-address-wifi0", 0)) == 0 && (result = sub_1B01BD358("sdio")) == 0 && (result = sub_1B01BD358("wlan")) == 0 && (result = sub_1B01BD358("marconi-wifi")) == 0 && ((sub_1B0198CA8() & 1) != 0 || (result = sub_1B01BD36C()) == 0))
  {

    return sub_1B01C0E4C(0x574D6163u);
  }

  return result;
}

BOOL sub_1B01B0E98()
{
  v0 = sub_1B01AAA68();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFDataGetTypeID() && CFDataGetLength(v1) >= 6)
  {
    BytePtr = CFDataGetBytePtr(v1);
    if (*BytePtr)
    {
      v4 = 1;
    }

    else
    {
      v6 = 0;
      v7 = BytePtr + 1;
      do
      {
        v8 = v6;
        if (v6 == 5)
        {
          break;
        }

        v9 = v7[v6++];
      }

      while (!v7[v8]);
      v4 = v8 < 5;
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

uint64_t sub_1B01B0F6C()
{
  if (sub_1B0193D14() == 4)
  {
    v0 = sub_1B01998E0("IODeviceTree:/product", @"builtin-remote", 0);
    v1 = MEMORY[0x1E695E4C0];
    if (!v0)
    {
      v1 = MEMORY[0x1E695E4D0];
    }
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01B0FF0()
{
  v0 = sub_1B019D140(@"H6");
  v1 = MEMORY[0x1E695E4D0];
  if (!v0 && sub_1B0193D14() != 11)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01B105C()
{
  if (MGGetBoolAnswer(@"j8/Omm6s1lsmTDFsXjsBfA"))
  {
    return 1;
  }

  return sub_1B01C5724("IODeviceTree:/arm-io", @"disp0", 0, @"always-on-device", 0);
}

BOOL sub_1B01B10BC()
{
  if (MGGetBoolAnswer(@"TTZrMo1OOEUELa7asaQ7xg"))
  {
    return 1;
  }

  return MGGetBoolAnswer(@"7W2eNk/f6uewC8N58mlRrQ");
}

BOOL sub_1B01B1104()
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v14 = 4;
  if (sysctlbyname("hw.cpu64bit_capable", &v15, &v14, 0, 0) == -1)
  {
    v1 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v2)
    {
      v1 = v2 + 1;
    }

    v3 = __error();
    v4 = strerror(*v3);
    _MGLog(v1, 1396, @"sysctlbyname: %s", v5, v6, v7, v8, v9, v4);
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 136315138;
      v17 = v12;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "sysctlbyname: %s", buf, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = v15 != 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01B12BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = -38605833;
  v14 = xmmword_1B01FE390;
  v13 = -894965712;
  v12 = xmmword_1B01FE3A4;
  if ((MGIsDeviceOneOfType(&v14, a2, a3, a4, a5, a6, a7, a8, &v12) & 1) != 0 || sub_1B0193D14() == 4 || sub_1B0193D14() == 6 || sub_1B0193D14() == 3)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v11 = sub_1B0193D14();
    v8 = MEMORY[0x1E695E4C0];
    if (v11 != 2 && sub_1B0193D14() != 11)
    {
      v8 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sub_1B01B13B4()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B0199908("IODeviceTree:/arm-io/isp", @"pearl-calibration-data", 0)) == 0)
  {

    return sub_1B019E354(0x5072434Cu);
  }

  return result;
}

uint64_t sub_1B01B1414()
{
  if (MGGetBoolAnswer(@"yRZv0s7Dpj8ZBk0S+0+nMA"))
  {
    return sub_1B01959FC(@"CH") ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B01B1450()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"eW5H/Gwg0uqbMqFot70pYg", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B1498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = -414334491;
  v36 = xmmword_1B01FE19C;
  v35 = -1509831889;
  v34 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v36, a2, a3, a4, a5, a6, a7, a8, &v34) || (v33 = 289690957, v32 = xmmword_1B01FE174, v31 = 586720268, v30 = xmmword_1B01FE188, MGIsDeviceOneOfType(&v32, v8, v9, v10, v11, v12, v13, v14, &v30)) || sub_1B0193D14() != 6)
  {
    v23 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v29 = 368885834;
    v28 = xmmword_1B01FE854;
    v27 = -526227167;
    v26 = xmmword_1B01FE868;
    v22 = MGIsDeviceOneOfType(&v28, v15, v16, v17, v18, v19, v20, v21, &v26);
    v23 = MEMORY[0x1E695E4C0];
    if (!v22)
    {
      v23 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v23;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef sub_1B01B15F4()
{
  v9 = 0;
  valuePtr = -1;
  v0 = sub_1B0199908("IODeviceTree:/chosen", @"marketing-software-behavior", 0);
  if (!v0)
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v9);
  }

  v1 = v0;
  BytePtr = CFDataGetBytePtr(v0);
  if (BytePtr && (v3 = BytePtr, v4 = CFGetTypeID(v1), v4 == CFDataGetTypeID()) && CFDataGetLength(v1) >= 4)
  {
    v5 = v3[2];
    if ((v5 - 1) >= 2)
    {
      v5 = 0;
    }

    valuePtr = v5;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695E480];
  }

  v7 = CFNumberCreate(v6, kCFNumberSInt32Type, &v9);
LABEL_11:
  CFRelease(v1);
  return v7;
}

uint64_t sub_1B01B17B4()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"wOVK1nhmiAawowdbIwgyaQ", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 > 59)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

__CFArray *sub_1B01B17FC()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = sub_1B0191100(@"r5pA2qLgR86BQKwgMjPWzg", 0);
  if (!v1)
  {
    v3 = 0;
    if (!Mutable)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v2 = v1;
  CFArrayAppendValue(Mutable, v1);
  v3 = sub_1B01B9F00(Mutable, 4u);
  CFRelease(v2);
  if (Mutable)
  {
LABEL_3:
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t sub_1B01B18FC()
{
  v0 = sub_1B019AE8C(@"rose", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

uint64_t sub_1B01B193C()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4 || sub_1B0193D14() == 2 || sub_1B0193D14() == 3 || sub_1B0193D14() == 1 || sub_1B0193D14() == 7 || sub_1B0193D14() == 11)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -414334491;
    v11 = xmmword_1B01FE19C;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4D0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4C0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01B1B24()
{
  v1 = *(off_1EB6CFEC0 + 26);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(26, 2);
  }

  return v1();
}

uint64_t sub_1B01B1BB0()
{
  v0 = sub_1B01C583C("IODeviceTree:/arm-io", @"multi-touch", 0, @"force-supported", 0);
  if (!v0)
  {
    return *MEMORY[0x1E695E4C0];
  }

  v1 = *MEMORY[0x1E695E4D0];
  CFRelease(v0);
  return v1;
}

__CFString *sub_1B01B1C78()
{
  v0 = sub_1B0191100(@"nFRqKto/RuQAV1P+0/qkBA", 0);

  return sub_1B01949CC(v0);
}

CFDataRef sub_1B01B1CE8()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"camera-button-location", 1, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

const void *sub_1B01B1D3C()
{
  v0 = sub_1B01978E8();
  v1 = *MEMORY[0x1E695E208];
  if (v0)
  {
    v2 = @"iOSSupportVersion";
  }

  else
  {
    v2 = *MEMORY[0x1E695E208];
  }

  return sub_1B0192B9C(v2, 1);
}

CFStringRef sub_1B01B1DF0()
{
  v0 = NXGetLocalArchInfo();
  if (v0 && (name = v0->name) != 0)
  {

    return CFStringCreateWithCString(0, name, 0x8000100u);
  }

  else
  {
    v3 = sub_1B01A1EF0();
    return CFStringCreateWithFormat(0, 0, @"%d-%d", v3, HIDWORD(v3));
  }
}

uint64_t sub_1B01B1EB8()
{
  if (sub_1B0193D14() == 3 || sub_1B0193D14() == 4)
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v2 = sub_1B0193D14();
    v3 = MEMORY[0x1E695E4C0];
    v0 = MEMORY[0x1E695E4C0];
    if (v2 != 2)
    {
      v4 = sub_1B0193D14();
      v0 = MEMORY[0x1E695E4D0];
      if (v4 != 1 && sub_1B0193D14() != 6)
      {
        v0 = v3;
      }
    }
  }

  return *v0;
}

const void *sub_1B01B1F34()
{
  v0 = _CFCopySupplementalVersionDictionary();

  return sub_1B01A1980(v0, @"ProductVersionExtra", 1);
}

uint64_t sub_1B01B1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 1244490093;
  v14 = xmmword_1B01FDEA4;
  v13 = 1377801277;
  v12 = xmmword_1B01FDEB8;
  v8 = MGIsDeviceOneOfType(&v14, a2, a3, a4, a5, a6, a7, a8, &v12);
  v9 = MEMORY[0x1E695E4D0];
  if (!v8)
  {
    v9 = MEMORY[0x1E695E4C0];
  }

  v10 = *MEMORY[0x1E69E9840];
  return *v9;
}

uint64_t sub_1B01B2070()
{
  v0 = sub_1B0194994("IODeviceTree:/product/camera", @"flash", 0);
  v1 = MEMORY[0x1E695E4D0];
  if (!v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

BOOL sub_1B01B211C()
{
  result = MGGetBoolAnswer(@"BWoQXWXYITrPRpFyc9xTLw");
  if (result)
  {
    return sub_1B0193D14() == 3 || sub_1B0193D14() == 4 || sub_1B0193D14() == 1;
  }

  return result;
}

CFArrayRef sub_1B01B216C()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E7A92C58;
  v2[1] = *off_1E7A92C68;
  v3 = @"KP";
  result = CFArrayCreate(0, v2, 5, 0);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef sub_1B01B225C()
{
  valuePtr = 0;
  result = sub_1B0198DB0("IODeviceTree:/product/camera", @"front-max-burst-length", 0);
  if (!result)
  {
    if (MGGetBoolAnswer(@"plaYa8bKJaAF5Erc5nvZ+g") || MGGetBoolAnswer(@"Ty5/C8UDfdjcdR853kulmA"))
    {
      valuePtr = 999;
    }

    return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  return result;
}

const void *sub_1B01B231C()
{
  v0 = _CFCopySupplementalVersionDictionary();

  return sub_1B01A1980(v0, @"ProductBuildVersion", 1);
}

uint64_t sub_1B01B2368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v59 = 1602014129;
  v58 = xmmword_1B01FDECC;
  v57 = -810116762;
  v56 = xmmword_1B01FDEE0;
  v55 = -1195351767;
  v54 = xmmword_1B01FDEF4;
  v53 = 1789837692;
  v52 = xmmword_1B01FDF08;
  v51 = -1239654590;
  v50 = xmmword_1B01FDF1C;
  v49 = -1579092758;
  v48 = xmmword_1B01FDF30;
  v47 = 48355600;
  v46 = xmmword_1B01FDF44;
  v45 = -679691073;
  v44 = xmmword_1B01FDF58;
  v43 = 1430379884;
  v42 = xmmword_1B01FDF6C;
  if (MGIsDeviceOneOfType(&v58, a2, a3, a4, a5, a6, a7, a8, &v56))
  {
    goto LABEL_7;
  }

  if (sub_1B0193D14() == 6)
  {
    goto LABEL_7;
  }

  if (sub_1B0193D14() == 4)
  {
    goto LABEL_7;
  }

  if (sub_1B0193D14() == 7)
  {
    goto LABEL_7;
  }

  if (sub_1B0193D14() == 8)
  {
    goto LABEL_7;
  }

  v41 = -38605833;
  v40 = xmmword_1B01FE390;
  v39 = -894965712;
  v38 = xmmword_1B01FE3A4;
  v37 = -2101636455;
  v36 = xmmword_1B01FE3B8;
  v35 = -1955568593;
  v34 = xmmword_1B01FE3CC;
  v33 = 28030256;
  v32 = xmmword_1B01FE2A0;
  v31 = 1214363620;
  v30 = xmmword_1B01FE2B4;
  if (MGIsDeviceOneOfType(&v40, v8, v9, v10, v11, v12, v13, v14, &v38))
  {
LABEL_7:
    v22 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v29 = -926344036;
    v28 = xmmword_1B01FE138;
    v27 = -954998212;
    v26 = xmmword_1B01FE14C;
    v25 = MGIsDeviceOneOfType(&v28, v15, v16, v17, v18, v19, v20, v21, &v26);
    v22 = MEMORY[0x1E695E4C0];
    if (!v25)
    {
      v22 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v22;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01B26A4()
{
  v24 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4 && (v23 = 1839812531, v22 = xmmword_1B01FE1C4, v21 = -435113336, v20 = xmmword_1B01FE4E4, !MGIsDeviceOneOfType(&v22, v0, v1, v2, v3, v4, v5, v6, &v20)))
  {
    result = 1;
  }

  else
  {
    result = sub_1B0193D14();
    if (result != 1)
    {
      if (sub_1B0193D14() == 3)
      {
        v19 = 401945557;
        v18 = xmmword_1B01FE1EC;
        v17 = 317289457;
        v16 = xmmword_1B01FE1D8;
        result = MGIsDeviceOneOfType(&v18, v8, v9, v10, v11, v12, v13, v14, &v16) ^ 1;
      }

      else
      {
        result = 0;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableArrayRef sub_1B01B28F8()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  macho_for_each_runnable_arch_name();
  return Mutable;
}

const void *sub_1B01B29F4()
{
  v0 = sub_1B01A2FFC();
  v1 = v0;
  if (v0)
  {
    CFRetain(v0);
  }

  return v1;
}

CFStringRef sub_1B01B2A98()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = sub_1B0191100(@"eNgz35a7iZnVeEMwsBQZew", 0);
  v1 = v0;
  valuePtr = 0;
  if (v0)
  {
    CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr);
    v2 = valuePtr;
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%X", v2);
  v5 = sub_1B0191100(@"Nmhz54v5ZLqj2I4NPFIFqQ", 0);
  Mutable = CFStringCreateMutable(v3, 0);
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    if (Length >= 1)
    {
      v9 = Length;
      do
      {
        v10 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v10);
        --v9;
      }

      while (v9);
    }
  }

  MEMORY[0x1EEE9AC00]();
  v17[0] = 0x3030303030303030;
  v11 = CFStringGetLength(Mutable);
  v12 = CFStringGetLength(v4);
  if (v1 && v5)
  {
    v13 = CFStringCreateWithFormat(v3, 0, @"%*.*s%@-%*.*s%@", (8 - v12) & ~((8 - v12) >> 63), (8 - v12) & ~((8 - v12) >> 63), v17, v4, (8 - v11) & ~((8 - v11) >> 63), (8 - v11) & ~((8 - v11) >> 63), v17, Mutable);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (!v1)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v1);
  v14 = v13;
LABEL_13:
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1B01B2D30()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 6)
  {
    v12 = -1092155788;
    v11 = xmmword_1B01FDF80;
    v10 = 763775061;
    v9 = xmmword_1B01FDF94;
    result = MGIsDeviceOneOfType(&v11, v0, v1, v2, v3, v4, v5, v6, &v9);
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *sub_1B01B3058()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (i = 0; i != 8; ++i)
  {
    v3 = off_1E7A92CA0[i];
    v4 = sub_1B01970CC("IODeviceTree:/options", v3, 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFNumberFormatterCreate(v0, 0, kCFNumberFormatterNoStyle);
      NumberFromString = CFNumberFormatterCreateNumberFromString(v0, v6, v5, 0, 1uLL);
      if (NumberFromString)
      {
        v8 = NumberFromString;
        CFDictionarySetValue(Mutable, v3, NumberFromString);
        CFRelease(v8);
      }

      CFRelease(v6);
      CFRelease(v5);
    }
  }

  return Mutable;
}

uint64_t sub_1B01B3174()
{
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"housing-color", 0);
  v1 = sub_1B01C0E14(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFDataRef sub_1B01B31C4()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ") || (result = sub_1B019BAC0(1, "aqc-a", @"extlom-mac-address")) == 0)
  {

    return sub_1B01C0E4C(0x454D6132u);
  }

  return result;
}

uint64_t sub_1B01B3290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 368885834;
  v14 = xmmword_1B01FE854;
  v13 = -526227167;
  v12 = xmmword_1B01FE868;
  if (MGIsDeviceOneOfType(&v14, a2, a3, a4, a5, a6, a7, a8, &v12))
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v9 = sub_1B0193D14();
    v8 = MEMORY[0x1E695E4C0];
    if (v9 == 6)
    {
      v8 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v8;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sub_1B01B33E0()
{
  if (MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ"))
  {

    return sub_1B01C0E4C(0x424D6332u);
  }

  else
  {

    return sub_1B0199908("IODeviceTree:/product", @"mac-address-bluetooth1", 0);
  }
}

BOOL sub_1B01B349C()
{
  v0 = MEMORY[0x1E695E9D8];
  v1 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = Mutable;
  LODWORD(v9) = 65280;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  CFDictionarySetValue(Mutable, @"PrimaryUsagePage", v3);
  CFRelease(v3);
  LODWORD(v9) = 4;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  CFDictionarySetValue(Mutable, @"PrimaryUsage", v4);
  CFRelease(v4);
  v9 = @"IOPropertyMatch";
  v5 = CFDictionaryCreate(0, &v9, &values, 1, v0, v1);
  CFRelease(values);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v5);
  v7 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v7 != 0;
}

uint64_t sub_1B01B35F4()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    if (sub_1B0193D14() == 6)
    {

      return MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg");
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01B365C()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 4 || sub_1B0193D14() == 2 || sub_1B0193D14() == 3 || sub_1B0193D14() == 1 || sub_1B0193D14() == 7 || sub_1B0193D14() == 11)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 368885834;
    v13 = xmmword_1B01FE854;
    v12 = -414334491;
    v11 = xmmword_1B01FE19C;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01B38FC()
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1B01997C0(@"H6") || sub_1B0193D14() == 4 || sub_1B0193D14() == 6 || sub_1B0193D14() == 2 || sub_1B0193D14() == 7 || sub_1B01997C0(@"H8") || sub_1B01997C0(@"H7") || sub_1B01997C0(@"H9"))
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v14 = 414393924;
    v13 = xmmword_1B01FE0C0;
    v12 = 897736383;
    v11 = xmmword_1B01FE0D4;
    v10 = MGIsDeviceOneOfType(&v13, v0, v1, v2, v3, v4, v5, v6, &v11);
    v7 = MEMORY[0x1E695E4C0];
    if (!v10)
    {
      v7 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01B3A24()
{
  if (sub_1B0193D14() == 11)
  {
    return 1;
  }

  result = sub_1B0193D14();
  if (result != 1)
  {
    if (sub_1B0193D14() == 2 || sub_1B0193D14() == 3)
    {
      return 1;
    }

    return sub_1B0193D14() == 4;
  }

  return result;
}

CFTypeRef sub_1B01B3BB4()
{
  TypeID = CFBooleanGetTypeID();

  return sub_1B019697C("copyDeviceSupportsTethering", &unk_1F2637320, TypeID);
}

CFStringRef sub_1B01B3BF0()
{
  v0 = sub_1B0191100(@"5MXFoiW2zgxfIbaaTb/wvA", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

const __CFNumber *sub_1B01B3D4C()
{
  valuePtr = 0;
  v0 = sub_1B0191100(@"NVRAMDictionary", 0);
  if (!v0)
  {
    sub_1B01F0B50(&v16);
    return v16;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"IsServicePart");
  v3 = Value;
  if (!Value)
  {
    goto LABEL_18;
  }

  v4 = CFGetTypeID(Value);
  if (v4 != CFDataGetTypeID())
  {
    if (v4 == CFStringGetTypeID())
    {
      v9 = 0;
      goto LABEL_8;
    }

    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
      v13 = MEMORY[0x1E695E4D0];
      if (valuePtr != 1)
      {
        v13 = MEMORY[0x1E695E4C0];
      }

      v3 = *v13;
    }

    else
    {
      v3 = 0;
    }

LABEL_18:
    v12 = v1;
    goto LABEL_19;
  }

  v5 = *MEMORY[0x1E695E480];
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v3);
  v8 = CFStringCreateWithBytes(v5, BytePtr, Length, 0x8000100u, 0);
  if (!v8)
  {
    sub_1B01F0AD4(&v16);
    v3 = v16;
    goto LABEL_18;
  }

  v9 = v8;
  CFStringGetTypeID();
  v3 = v9;
LABEL_8:
  v10 = CFStringCompare(v3, @"true", 0);
  v11 = MEMORY[0x1E695E4D0];
  if (v10 && CFStringCompare(v3, @"1", 0))
  {
    v11 = MEMORY[0x1E695E4C0];
  }

  v3 = *v11;
  CFRelease(v1);
  if (v9)
  {
    v12 = v9;
LABEL_19:
    CFRelease(v12);
  }

  return v3;
}

uint64_t sub_1B01B3EEC()
{
  if (MGGetBoolAnswer(@"mtHZd1H8XJ2DMVtNVUSkag") && (sub_1B01959FC(@"CH") & 1) != 0)
  {
    v0 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  return *v0;
}

uint64_t sub_1B01B3F4C()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 6)
  {
    result = sub_1B019D140(@"M11");
    if (result)
    {
      v12 = 1530338216;
      v11 = xmmword_1B01FE0E8;
      v10 = 406601745;
      v9 = xmmword_1B01FE0FC;
      result = MGIsDeviceOneOfType(&v11, v1, v2, v3, v4, v5, v6, v7, &v9) ^ 1;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1B01B4048()
{
  v0 = sub_1B019B914(0, "IOPlatformExpertDevice", @"IOPlatformSerialNumber");
  if (v0)
  {
    v1 = v0;
    if (CFStringGetLength(v0))
    {
      goto LABEL_14;
    }

    CFRelease(v1);
  }

  if (!MGGetBoolAnswer(@"8DHlxr5ECKhTSL3HmlZQGQ"))
  {
    v1 = 0;
    goto LABEL_14;
  }

  v2 = sub_1B019E354(0x53724E6Du);
  v3 = sub_1B0197110(v2, @"SrNm");
  if (v3)
  {
    v4 = v3;
    if (CFStringGetLength(v3) < 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = CFRetain(v4);
    }

    CFRelease(v4);
    if (v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0;
    if (v2)
    {
LABEL_13:
      CFRelease(v2);
    }
  }

LABEL_14:
  if (v1)
  {
    return v1;
  }

  else
  {
    return &stru_1F2640028;
  }
}

__CFString *sub_1B01B4164()
{
  v0 = sub_1B019823C();

  return sub_1B01949CC(v0);
}

uint64_t sub_1B01B425C()
{
  v0 = *MEMORY[0x1E695E4C0];
  if (sub_1B0193D14() == 3 && !sub_1B01997C0(@"H4") && !sub_1B01997C0(@"H5") && !sub_1B01997C0(@"H6") && sub_1B019AA7C() > 0x773593FFFLL)
  {
    return *MEMORY[0x1E695E4D0];
  }

  return v0;
}

const void *sub_1B01B44BC()
{
  v0 = sub_1B01BEA3C();
  v1 = v0;
  if (v0 && (v2 = CFGetTypeID(v0), v2 == CFDataGetTypeID()) && CFDataGetLength(v1) > 23)
  {
    if (*CFDataGetBytePtr(v1) != 1396926055)
    {
      v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v3)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v9, 4644, @"syscfg data appears to be uninitialized", v4, v5, v6, v7, v8, v18[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "syscfg data appears to be uninitialized", v18, 2u);
      }

LABEL_16:
      CFRelease(v1);
      return 0;
    }
  }

  else
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v16, 4637, @"invalid syscfg data", v11, v12, v13, v14, v15, v18[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "invalid syscfg data", buf, 2u);
    }

    if (v1)
    {
      goto LABEL_16;
    }
  }

  return v1;
}

CFStringRef sub_1B01B465C()
{
  result = sub_1B019B914(0, "AppleHapticsSupportArcEEPROM", @"ArcSerialNumber");
  if (!result)
  {
    result = sub_1B019B914(0, "AppleAD5860", @"arc-sn");
    if (!result)
    {

      return sub_1B01970CC("IODeviceTree:/product", @"arc-module-serial-num", 0);
    }
  }

  return result;
}

BOOL sub_1B01B4760()
{
  v0 = sub_1B019C9DC();
  v7 = sub_1B019CB70(v0, @"Desense", v1, v2, v3, v4, v5, v6, 0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v7;
}

uint64_t sub_1B01B47C8()
{
  v0 = sub_1B019C9DC();
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = !CFEqual(v0, @"NonUI") && !CFEqual(v1, @"VendorNonUI") && !CFEqual(v1, @"Darwin") && !CFEqual(v1, @"Darwin Internal") && CFStringHasPrefix(v1, @"Darwin") == 0;
  CFRelease(v1);
  return v2;
}

BOOL sub_1B01B4870()
{
  if (MGGetBoolAnswer(@"cBy4BcYs5YWtFHbBpt4C6A"))
  {
    return 1;
  }

  if (sub_1B01BD320(1, "vibrator", @"name"))
  {
    return 1;
  }

  if (sub_1B01BD320(1, "audio-actuator*", @"name"))
  {
    return 1;
  }

  result = sub_1B01BD320(1, "maggie-arc", @"name");
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B01B4930()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 2;
  }

  return result;
}

__CFArray *sub_1B01B4990()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = sub_1B0193D14();
  if (v2 <= 5)
  {
    if ((v2 - 1) < 2)
    {
      v3 = 1;
      goto LABEL_16;
    }

    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v3 = 3;
LABEL_16:
        *v16 = v3;
        v7 = CFNumberCreate(v0, kCFNumberIntType, v16);
        CFArrayAppendValue(Mutable, v7);
        CFRelease(v7);
        return Mutable;
      }

      goto LABEL_18;
    }

LABEL_13:
    *v16 = 1;
    v6 = CFNumberCreate(v0, kCFNumberIntType, v16);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
    v3 = 2;
    goto LABEL_16;
  }

  if (v2 > 8)
  {
    if (v2 != 9)
    {
      if (v2 == 11)
      {
        *v16 = 1;
        v4 = CFNumberCreate(v0, kCFNumberIntType, v16);
        CFArrayAppendValue(Mutable, v4);
        CFRelease(v4);
        *v16 = 2;
        v5 = CFNumberCreate(v0, kCFNumberIntType, v16);
        CFArrayAppendValue(Mutable, v5);
        CFRelease(v5);
        v3 = 7;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v2 == 6)
  {
    v3 = 4;
    goto LABEL_16;
  }

  if (v2 == 7)
  {
    v3 = 5;
    goto LABEL_16;
  }

LABEL_18:
  v9 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v9)
  {
    v15 = v9 + 1;
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v15, 3137, @"Could not determine DTProductType", v10, v11, v12, v13, v14, v16[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not determine DTProductType", v16, 2u);
  }

  return Mutable;
}

BOOL sub_1B01B4BB8()
{
  v0 = sub_1B0193D14();
  if (_CFMZEnabled())
  {
    return 0;
  }

  v2 = sub_1B0193D14();
  result = 1;
  if (v2 != 1 && v0 != 3)
  {
    return sub_1B0193D14() == 2 || sub_1B0193D14() == 6 || sub_1B0193D14() == 11;
  }

  return result;
}

uint64_t sub_1B01B4C34()
{
  v104 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (qword_1EB6D01E0 != -1)
  {
    sub_1B01F0BCC();
  }

  if (off_1EB6D01C0)
  {
    v0 = off_1EB6D01C8 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || off_1EB6D01D0 == 0 || off_1EB6D01D8 == 0)
  {
    if (!off_1EB6D01C0)
    {
      v3 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v9 = v3 ? v3 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v9, 5488, @"Unable to dlsym AMFDRCreateTypeWithOptions", v4, v5, v6, v7, v8, v98);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym AMFDRCreateTypeWithOptions", buf, 2u);
      }
    }

    if (!off_1EB6D01C8)
    {
      v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v16 = v10 ? v10 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v16, 5491, @"Unable to dlsym AMFDRDataApTicketPopulate", v11, v12, v13, v14, v15, v98);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym AMFDRDataApTicketPopulate", buf, 2u);
      }
    }

    if (!off_1EB6D01D0)
    {
      v17 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      v23 = v17 ? v17 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      _MGLog(v23, 5494, @"Unable to dlsym AMFDRDataApTicketCopyObjectProperty", v18, v19, v20, v21, v22, v98);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to dlsym AMFDRDataApTicketCopyObjectProperty", buf, 2u);
      }
    }

    if (off_1EB6D01D8)
    {
      goto LABEL_56;
    }

    v24 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    v30 = v24 ? v24 + 1 : "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    _MGLog(v30, 5497, @"Unable to dlsym AMFDRDataTrustObjectIsFactorySigned", v25, v26, v27, v28, v29, v98);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v31 = MEMORY[0x1E69E9C10];
    v32 = "Unable to dlsym AMFDRDataTrustObjectIsFactorySigned";
    goto LABEL_55;
  }

  v33 = off_1EB6D01C0(*MEMORY[0x1E695E480], @"Local", 0);
  if (!v33)
  {
    v49 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v49)
    {
      v55 = v49 + 1;
    }

    else
    {
      v55 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v55, 5432, @"Failed to create local FDR reference", v50, v51, v52, v53, v54, v98);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 0;
    v31 = MEMORY[0x1E69E9C10];
    v32 = "Failed to create local FDR reference";
LABEL_55:
    _os_log_impl(&dword_1B0190000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
LABEL_56:
    v48 = 0;
    goto LABEL_81;
  }

  v34 = v33;
  if ((off_1EB6D01C8() & 1) == 0)
  {
    v56 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
    if (v56)
    {
      v62 = v56 + 1;
    }

    else
    {
      v62 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
    }

    _MGLog(v62, 5437, @"Unable to populate AP Ticket", v57, v58, v59, v60, v61, v98);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v63 = MEMORY[0x1E69E9C10];
    v64 = "Unable to populate AP Ticket";
    goto LABEL_62;
  }

  v35 = off_1EB6D01D0(v34, 1296125520, 1701866617);
  if (v35)
  {
    v36 = v35;
    v100 = 0;
    BytePtr = CFDataGetBytePtr(v35);
    Length = CFDataGetLength(v36);
    if ((Length - 5) >= 4)
    {
      v48 = 0;
    }

    else
    {
      v39 = &v100;
      do
      {
        *v39 = BytePtr[Length - 1];
        v39 = (v39 + 1);
        --Length;
      }

      while (Length);
      v40 = v100;
      v41 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v41)
      {
        v47 = v41 + 1;
      }

      else
      {
        v47 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v47, 5461, @"Signing server epoch value is 0x%llx", v42, v43, v44, v45, v46, v40);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v103 = v40;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Signing server epoch value is 0x%llx", buf, 0xCu);
      }

      v48 = (v40 & 0xC000000000) == 0;
    }

LABEL_79:
    CFRelease(v36);
    goto LABEL_80;
  }

  v65 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v65)
  {
    v71 = v65 + 1;
  }

  else
  {
    v71 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v71, 5471, @"No Signing server epoch property found in apticket, fall back to use restoreOS trustobject digest property", v66, v67, v68, v69, v70, v98);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No Signing server epoch property found in apticket, fall back to use restoreOS trustobject digest property", buf, 2u);
  }

  v72 = off_1EB6D01D0(v34, 1919317089, 1145525076);
  if (v72)
  {
    v36 = v72;
    v48 = off_1EB6D01D8(v34, v72, &cf);
    if (cf)
    {
      v73 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v73)
      {
        v79 = v73 + 1;
      }

      else
      {
        v79 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v79, 5482, @"Failed to judge if trustObject is factory signed: %@", v74, v75, v76, v77, v78, cf);
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      v81 = cf;
      if (v80)
      {
        *buf = 138412290;
        v103 = cf;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to judge if trustObject is factory signed: %@", buf, 0xCu);
        v81 = cf;
      }

      if (v81)
      {
        CFRelease(v81);
        cf = 0;
      }
    }

    goto LABEL_79;
  }

  v91 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v91)
  {
    v97 = v91 + 1;
  }

  else
  {
    v97 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v97, 5476, @"Unable to extract restoreOS FDR trustObject digest", v92, v93, v94, v95, v96, v99);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v63 = MEMORY[0x1E69E9C10];
    v64 = "Unable to extract restoreOS FDR trustObject digest";
LABEL_62:
    _os_log_impl(&dword_1B0190000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 2u);
  }

LABEL_63:
  v48 = 0;
LABEL_80:
  CFRelease(v34);
LABEL_81:
  v82 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v82)
  {
    v88 = v82 + 1;
  }

  else
  {
    v88 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v88, 5507, @"IsFactorySignedRestore = %d", v83, v84, v85, v86, v87, v48);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v103) = v48;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IsFactorySignedRestore = %d", buf, 8u);
  }

  v89 = *MEMORY[0x1E69E9840];
  return v48;
}

CFNumberRef sub_1B01B52D4()
{
  if (!sub_1B01997C0(@"H4") && sub_1B0193D14() != 4)
  {
    sub_1B0193D14();
  }

  valuePtr = 1065353216;
  return CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
}

uint64_t sub_1B01B5328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = -38605833;
  v29 = xmmword_1B01FE390;
  v28 = -894965712;
  v27 = xmmword_1B01FE3A4;
  v26 = -2101636455;
  v25 = xmmword_1B01FE3B8;
  v24 = -1955568593;
  v23 = xmmword_1B01FE3CC;
  if (MGIsDeviceOneOfType(&v29, a2, a3, a4, a5, a6, a7, a8, &v27) || sub_1B0193D14() == 6)
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v22 = -926344036;
    v21 = xmmword_1B01FE138;
    v20 = -954998212;
    v19 = xmmword_1B01FE14C;
    v16 = MGIsDeviceOneOfType(&v21, v8, v9, v10, v11, v12, v13, v14, &v19);
    v15 = MEMORY[0x1E695E4C0];
    if (!v16)
    {
      v15 = MEMORY[0x1E695E4D0];
    }
  }

  result = *v15;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef sub_1B01B54B0()
{
  v0 = sub_1B0191100(@"X7SF9XDG+CBhoPIXA1YlCg", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

BOOL sub_1B01B562C()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M11");
}

uint64_t sub_1B01B5704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = -526227167;
  v37 = xmmword_1B01FE868;
  v36 = -1509831889;
  v35 = xmmword_1B01FE1B0;
  if (MGIsDeviceOneOfType(&v37, a2, a3, a4, a5, a6, a7, a8, &v35) || (v34 = 289690957, v33 = xmmword_1B01FE174, v32 = 586720268, v31 = xmmword_1B01FE188, MGIsDeviceOneOfType(&v33, v8, v9, v10, v11, v12, v13, v14, &v31)))
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  else if (sub_1B0193D14() == 6)
  {
    v30 = 368885834;
    v29 = xmmword_1B01FE854;
    v28 = -414334491;
    v27 = xmmword_1B01FE19C;
    v25 = MGIsDeviceOneOfType(&v29, v18, v19, v20, v21, v22, v23, v24, &v27);
    v15 = MEMORY[0x1E695E4C0];
    if (!v25)
    {
      v15 = MEMORY[0x1E695E4D0];
    }
  }

  else
  {
    v26 = sub_1B0193D14();
    v15 = MEMORY[0x1E695E4D0];
    if (v26 == 7)
    {
      v15 = MEMORY[0x1E695E4C0];
    }
  }

  result = *v15;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sub_1B01B5914()
{
  memset(v1, 0, sizeof(v1));
  if (sub_1B01BAAC0(@"volume-down-button-location", 0, v1))
  {
    return CFDataCreate(0, v1, 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B5998()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v0 = IOBSDNameMatching(*MEMORY[0x1E696CD60], 0, "disk0");
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = sub_1B01BAFB4;
  v3[3] = &unk_1E7A92D28;
  v3[4] = &v4;
  sub_1B01BCF2C(v0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

CFTypeRef sub_1B01B5A68()
{
  if (!sub_1B0198CA8())
  {
    return 0;
  }

  return sub_1B019BAC0(0, "AppleVirtualPlatformARMPE", @"UDID");
}

uint64_t sub_1B01B5B08()
{
  v0 = sub_1B0193D14();
  v1 = MEMORY[0x1E695E4C0];
  if (v0 != 4 && sub_1B0193D14() != 6)
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  return *v1;
}

uint64_t sub_1B01B5B78()
{
  if (os_variant_is_darwinos() && (sub_1B019CA20() || sub_1B01998E0("IODeviceTree:/product", @"analytics-opt-in", 0)))
  {
    v0 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v0 = MEMORY[0x1E695E4C0];
  }

  return *v0;
}

CFTypeRef sub_1B01B5BF0()
{
  v0 = *(off_1EB6CFEC0 + 7);
  if (!v0)
  {
    v0 = sub_1B0193150(7, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareManifestData", v0, TypeID);
}

CFTypeRef sub_1B01B5D94()
{
  v0 = *(off_1EB6CFEC0 + 11);
  if (!v0)
  {
    v0 = sub_1B0193150(11, 2);
  }

  TypeID = CFDictionaryGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyFirmwareUpdateInfo", v0, TypeID);
}

BOOL sub_1B01B5DF4()
{
  if (sub_1B0193D14() != 6)
  {
    return 0;
  }

  return sub_1B019D140(@"M10");
}

BOOL sub_1B01B5E38()
{
  if (sub_1B01C54E4(@"isp", @"camera-front"))
  {
    return 1;
  }

  return sub_1B01998E0("IODeviceTree:/arm-io/isp", @"X9NA3D+PguwY0i0Uffl07Q", 99);
}

uint64_t sub_1B01B5EC4()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E4C0];
  if (sub_1B0193D14() == 6)
  {
    v10 = 368885834;
    v9 = xmmword_1B01FE854;
    if ((MGIsDeviceOfType(&v9) & 1) == 0)
    {
      v8 = -414334491;
      v7 = xmmword_1B01FE19C;
      if ((MGIsDeviceOfType(&v7) & 1) == 0)
      {
        v6 = -526227167;
        v5 = xmmword_1B01FE868;
        if ((MGIsDeviceOfType(&v5) & 1) == 0)
        {
          v4 = -1509831889;
          v3 = xmmword_1B01FE1B0;
          if (!MGIsDeviceOfType(&v3))
          {
            v0 = *MEMORY[0x1E695E4D0];
          }
        }
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

CFStringRef sub_1B01B6038()
{
  v0 = sub_1B0191100(@"yF2IQrYS4yyREV4ZkbLysw", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(v1) < 6)
  {
    goto LABEL_9;
  }

  Length = CFDataGetLength(v1);
  BytePtr = CFDataGetBytePtr(v1);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%02x", *BytePtr);
  if (Length >= 2)
  {
    v6 = Length - 1;
    v7 = (BytePtr + 1);
    do
    {
      v8 = *v7++;
      CFStringAppendFormat(Mutable, 0, @":%02x", v8);
      --v6;
    }

    while (v6);
  }

  if (Mutable)
  {
    Copy = CFStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
  }

  else
  {
LABEL_9:
    Copy = 0;
  }

  CFRelease(v1);
  return Copy;
}

uint64_t sub_1B01B61C4()
{
  v0 = sub_1B0194994("IODeviceTree:/product", @"disable-globe-map", 0);
  if (sub_1B019AFD8() >> 29 < 5 || v0)
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  return *v1;
}

CFNumberRef sub_1B01B62E4()
{
  valuePtr = 0;
  v0 = sub_1B01C59D4(0, @"AppleSPUHIDDriver", 0, @"SupportHDRCompass", 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v1);
      valuePtr = 2 * (Value != 0);
      CFRelease(v1);
      if (Value)
      {
        return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      }
    }

    else
    {
      CFRelease(v1);
    }
  }

  if (MGGetBoolAnswer(@"aCQx2Qq/TChnNAq1rr6Egw"))
  {
    valuePtr = 1;
  }

  return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
}

BOOL sub_1B01B63D4()
{
  if (sub_1B0193D14() != 3 || !sub_1B01A1B04())
  {
    return 0;
  }

  return sub_1B019D140(@"H15");
}

uint64_t sub_1B01B6604()
{
  v1 = 0;
  LODWORD(result) = sub_1B01914DC(@"ErupMbaQrM6KypD4K0kTDQ", 5, 5, kCFNumberSInt32Type, &v1);
  if (v1 >= 196608)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B01B6794()
{
  v0 = sub_1B0193D14();
  v1 = MEMORY[0x1E695E4D0];
  v2 = MEMORY[0x1E695E4D0];
  if (v0 != 3)
  {
    if (sub_1B0193D14() == 6)
    {
      v2 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v3 = sub_1B0193D14();
      v2 = MEMORY[0x1E695E4C0];
      if (v3 != 4 && sub_1B0193D14() != 2)
      {
        v2 = v1;
      }
    }
  }

  return *v2;
}

CFNumberRef sub_1B01B683C()
{
  if (sub_1B0193D14() != 1 && sub_1B0193D14() != 3)
  {
    return 0;
  }

  valuePtr = 1080033280;
  return CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
}

uint64_t sub_1B01B6980()
{
  result = sub_1B0193D14();
  if (result != 1)
  {
    return sub_1B0193D14() == 3;
  }

  return result;
}

CFTypeRef sub_1B01B69AC()
{
  v0 = *(off_1EB6CFEC0 + 5);
  if (!v0)
  {
    v0 = sub_1B0193150(5, 2);
  }

  TypeID = CFArrayGetTypeID();

  return sub_1B0196878("_CTServerConnectionCopyCarrierBundleInfoArray", v0, TypeID);
}

uint64_t sub_1B01B6A58()
{
  v0 = sub_1B0192F20("IODeviceTree:/chosen", @"cover-glass-material", 0);
  v1 = sub_1B01C0CC8(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t sub_1B01B6B0C()
{
  v1 = *(off_1EB6CFEC0 + 39);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1B0193150(39, 2);
  }

  return v1();
}

uint64_t sub_1B01B6BAC()
{
  v18 = *MEMORY[0x1E69E9840];
  if (sub_1B0193D14() == 7)
  {
    v0 = 3;
    goto LABEL_18;
  }

  if (sub_1B0193D14() == 4)
  {
    v17 = 1839812531;
    v16 = xmmword_1B01FE1C4;
    if ((MGIsDeviceOfType(&v16) & 1) == 0)
    {
      v15 = -435113336;
      v14 = xmmword_1B01FE4E4;
      if (MGIsDeviceOfType(&v14))
      {
        v0 = 3;
      }

      else
      {
        v0 = 5;
      }

      goto LABEL_18;
    }

LABEL_14:
    v0 = 1;
    goto LABEL_18;
  }

  if (sub_1B0193D14() == 6)
  {
    if (!sub_1B019D140(@"M9"))
    {
      goto LABEL_14;
    }

    v0 = 2;
    if (!sub_1B01997C0(@"M9"))
    {
      if (sub_1B01997C0(@"M10"))
      {
        v0 = 2;
      }

      else
      {
        v0 = 3;
      }
    }
  }

  else
  {
    v13 = 317289457;
    v12 = xmmword_1B01FE1D8;
    v11 = 401945557;
    v10 = xmmword_1B01FE1EC;
    if (MGIsDeviceOneOfType(&v12, v1, v2, v3, v4, v5, v6, v7, &v10))
    {
      v0 = 3;
    }

    else
    {
      v0 = 4;
    }
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1B01B6DF0()
{
  if (sub_1B01BB97C() || MGGetBoolAnswer(@"OysterCapability"))
  {
    v0 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = sub_1B01A69D0();
    if (v2)
    {
      v3 = v2;
      valuePtr = -1;
      Value = CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
      v5 = valuePtr;
      CFRelease(v3);
      v6 = v5 != 2 || Value == 0;
      v0 = MEMORY[0x1E695E4D0];
      if (v6)
      {
        v0 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      v0 = MEMORY[0x1E695E4C0];
    }
  }

  return *v0;
}

uint64_t sub_1B01B6F0C()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695E4D0];
  v1 = sub_1B0193D14();
  if ((v1 - 1) >= 2)
  {
    v10 = MEMORY[0x1E695E4C0];
    if (v1 == 6)
    {
      v10 = v0;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E4C0];
    v16 = -489993439;
    v15 = xmmword_1B01FE278;
    v14 = 886875686;
    v13 = xmmword_1B01FE28C;
    if (MGIsDeviceOneOfType(&v15, v2, v3, v4, v5, v6, v7, v8, &v13))
    {
      v10 = v9;
    }

    else
    {
      v10 = v0;
    }
  }

  result = *v10;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef sub_1B01B72B8()
{
  values[3] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_1B019C1E4(&v17, @"front-cam-offset-from-center");
  if (HIDWORD(v18))
  {
    valuePtr = 0;
    v0 = CFNumberCreate(0, kCFNumberSInt32Type, &v19);
    v1 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v3 = v2;
    if (v0 && v1 && v2)
    {
      values[0] = v0;
      values[1] = v1;
      values[2] = v2;
      v4 = CFArrayCreate(0, values, 3, MEMORY[0x1E695E9C0]);
    }

    else
    {
      v4 = 0;
      v12 = 0;
      if (!v0)
      {
LABEL_14:
        if (v1)
        {
          CFRelease(v1);
        }

        if (v3)
        {
          CFRelease(v3);
        }

        goto LABEL_18;
      }
    }

    CFRelease(v0);
    v12 = v4;
    goto LABEL_14;
  }

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v11, 8144, @"Unexpected camera_offset scale, malformed data provided", v6, v7, v8, v9, v10, v15);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(values[0]) = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected camera_offset scale, malformed data provided", values, 2u);
  }

  v12 = 0;
LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1B01B7458()
{
  if (MGGetBoolAnswer(@"XFtUsQP3AyqT4CazSb5VCw"))
  {
    return 1;
  }

  return sub_1B01A1D48("/var/mobile/Library/Preferences/com.apple.MobileGestalt.plist", @"EnableStark", 0);
}

CFStringRef sub_1B01B74C4()
{
  v0 = sub_1B0193ED4("IODeviceTree:/product", @"itunes-min-ver", 0, 0xFFFFFFFFLL, 1);
  if (v0 != -1)
  {
    return CFStringCreateWithFormat(0, 0, @"%d.%d.%d", HIWORD(v0), BYTE1(v0), v0);
  }

  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v2)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v8, 4368, @"couldn't get itunes-min-ver\n", v3, v4, v5, v6, v7, v9);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "couldn't get itunes-min-ver\n", buf, 2u);
  }

  return 0;
}

__CFArray *sub_1B01B75C4()
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v1 = sub_1B01AE430();
    v2 = sub_1B01970CC("IODeviceTree:/product", @"compatible-app-variant", 0);
    v3 = sub_1B01970CC("IODeviceTree:/product", @"compatible-device-fallback", 0);
    if (v2 && CFStringCompare(v2, @"0", 0))
    {
      v4 = v2;
      if (v1)
      {
        CFArrayAppendValue(Mutable, v1);
        v4 = v2;
      }
    }

    else
    {
      v4 = v1;
      if (!v1)
      {
        goto LABEL_8;
      }
    }

    CFArrayAppendValue(Mutable, v4);
LABEL_8:
    if (v3 && CFStringCompare(v3, @"0", 0))
    {
      CFArrayAppendValue(Mutable, v3);
    }

    if (v1)
    {
      CFRelease(v1);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    return Mutable;
  }

  v5 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
  if (v5)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
  }

  _MGLog(v11, 5936, @"Failed to create array", v6, v7, v8, v9, v10, v13[0]);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to create array", v13, 2u);
  }

  return Mutable;
}

BOOL sub_1B01B777C()
{
  if (sub_1B0193D14() == 7)
  {
    return 0;
  }

  if (sub_1B019D140(@"M9"))
  {
    return 1;
  }

  return sub_1B019D140(@"H10");
}

uint64_t sub_1B01B77D8()
{
  if (sub_1B0193D14() == 3)
  {
    v0 = sub_1B019D228(@"t8027", 0);
    v1 = MEMORY[0x1E695E4D0];
    if (!v0)
    {
      v1 = MEMORY[0x1E695E4C0];
    }
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  return *v1;
}

CFTypeRef sub_1B01B7830()
{
  if (!MGGetBoolAnswer(@"AJFQheZDyUbvI6RmBMT9Cg"))
  {
    return 0;
  }

  v12 = -1;
  v0 = sub_1B01914DC(@"XQBHOWjPt2P+uNqlLm1P7A", 5, 5, kCFNumberSInt32Type, &v12);
  result = 0;
  if (v0 && v12 >= 2)
  {
    v2 = *(off_1EB6CFEC0 + 16);
    if (!v2)
    {
      v2 = sub_1B0193150(16, 2);
    }

    TypeID = CFDictionaryGetTypeID();
    result = sub_1B0196878("_CTServerConnectionCopyPostponementStatus", v2, TypeID);
    if (!result)
    {
      v4 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c", 47);
      if (v4)
      {
        v10 = v4 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestalt.c";
      }

      _MGLog(v10, 4963, @"_CTServerConnectionCopyPostponementStatus returned NULL", v5, v6, v7, v8, v9, v11[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCopyPostponementStatus returned NULL", v11, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1B01B797C()
{
  if (sub_1B0193D14() == 1 || sub_1B0193D14() == 2 || sub_1B0193D14() == 3 || sub_1B0193D14() == 6)
  {
    v0 = MEMORY[0x1E695E4C0];
    v1 = sub_1B01998E0("IODeviceTree:/product", @"disable-spoken-messages", 0);
    v2 = MEMORY[0x1E695E4D0];
    if (v1)
    {
      v2 = v0;
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  return *v2;
}