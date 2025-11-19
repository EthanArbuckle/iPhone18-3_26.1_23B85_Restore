void _MGClearInProcessCache()
{
  os_unfair_lock_lock(&unk_1ED446D88);
  v10 = -1;
  v0 = sub_1B01A32F0(&v10);
  v1 = v10;
  if (v10 >= 1)
  {
    v2 = 0;
    v3 = (v0 + 154);
    do
    {
      v4 = *v3;
      if (v4 != -1 && *(&qword_1ED4471E0[690] + v4) == 1)
      {
        v5 = *(v3 + 1);
        v6 = v5 > 0xB;
        v7 = (1 << v5) & 0x8E0;
        if (v6 || v7 == 0)
        {
          v9 = qword_1ED4471E0[v4];
          if (v9)
          {
            CFRelease(v9);
            qword_1ED4471E0[*v3] = 0;
            v1 = v10;
          }
        }
      }

      ++v2;
      v3 += 80;
    }

    while (v2 < v1);
  }

  bzero(qword_1ED4471E0, 0x1842uLL);
  os_unfair_lock_unlock(&unk_1ED446D88);
}

uint64_t _MGRebuildCache()
{
  sub_1B01D9BD0();
  if ((_MGCacheValid() & 1) == 0)
  {
    v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v0)
    {
      v6 = v0 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v6, 592, @"Waiting for IOKit to quiesce", v1, v2, v3, v4, v5, v15[0]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Waiting for IOKit to quiesce", buf, 2u);
    }

    if (sub_1B01C5104())
    {
      _MGWriteCache();
    }

    else
    {
      v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v7)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v13, 596, @"No cache generated", v8, v9, v10, v11, v12, v15[0]);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No cache generated", v15, 2u);
      }
    }
  }

  return _MGCacheValid();
}

uint64_t sub_1B01D9BD0()
{
  v32 = *MEMORY[0x1E69E9840];
  if (!unlink("/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist"))
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v16, 615, @"Successfully deleted gestalt cache", v11, v12, v13, v14, v15, v29);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Successfully deleted gestalt cache";
    goto LABEL_12;
  }

  v0 = *__error();
  v1 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
  if (v2)
  {
    v1 = v2 + 1;
  }

  if (v0 == 2)
  {
    _MGLog(v1, 612, @"Cache file did not exist. Rebuilding.", v3, v4, v5, v6, v7, v29);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      _MGClearInProcessCache();
      _MGWriteCache();
      result = _MGCacheValid();
      goto LABEL_14;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Cache file did not exist. Rebuilding.";
LABEL_12:
    _os_log_impl(&dword_1B0190000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    goto LABEL_13;
  }

  v19 = __error();
  v20 = strerror(*v19);
  _MGLog(v1, 609, @"Failed to delete gestalt cache: %s", v21, v22, v23, v24, v25, v20);
  v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v26)
  {
    v27 = __error();
    v28 = strerror(*v27);
    *buf = 136315138;
    v31 = v28;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to delete gestalt cache: %s", buf, 0xCu);
    result = 0;
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

const char **_MGCacheCopyValueForKey(const char **a1)
{
  result = sub_1B0192C7C(a1);
  if (result)
  {

    return sub_1B0191A80(result);
  }

  return result;
}

void sub_1B01D9DDC(FILE *a1, int a2, char *cStr, va_list a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  bzero(buffer, 0x400uLL);
  if (v7)
  {
    v8 = CFStringCreateWithFormatAndArguments(0, 0, v7, a4);
    if (v8)
    {
      v9 = v8;
      if (CFStringGetCString(v8, buffer, 1024, 0x8000100u))
      {
        if (a2)
        {
          v10 = strlen(buffer);
          if (v10)
          {
            v11 = v10;
            for (i = 0; i < v11; ++i)
            {
              v13 = buffer[i];
              if ((v13 - 92) <= 0x21 && ((1 << (v13 - 92)) & 0x280000001) != 0)
              {
                goto LABEL_14;
              }

              if (v13 == 27)
              {
                v17 = -1;
                if (sscanf(&buffer[i], "\x1B[%dm", &v17) == 1)
                {
                  do
                  {
                    v15 = buffer[i++];
                  }

                  while (v15 != 109);
                  --i;
                  if (v17)
                  {
                    v17 -= 30;
                    fprintf(a1, "\\cf%d ");
                  }

                  else
                  {
                    fwrite("\\cf0 ", 5uLL, 1uLL, a1);
                  }
                }

                continue;
              }

              if (v13 != 10)
              {
                fputc(v13, a1);
              }

              else
              {
LABEL_14:
                fprintf(a1, "\\%c");
              }
            }
          }
        }

        else
        {
          fputs(buffer, a1);
        }
      }

      CFRelease(v7);
    }

    else
    {
      v9 = v7;
    }

    CFRelease(v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

size_t sub_1B01D9FE4(FILE *__stream)
{
  fwrite("{\\rtf1\\ansi\\ansicpg1252\\cocoartf1183\n", 0x25uLL, 1uLL, __stream);
  fwrite("{\\fonttbl\\f0\\fnil\\fcharset0 Menlo-Regular;}\n", 0x2CuLL, 1uLL, __stream);
  fwrite("{\\colortbl;", 0xBuLL, 1uLL, __stream);
  fwrite("\\red194\\green54\\blue33;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red37\\green188\\blue36;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red128\\green128\\blue0;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red73\\green46\\blue225;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red211\\green56\\blue211;", 0x18uLL, 1uLL, __stream);
  fwrite("\\red51\\green187\\blue200;", 0x18uLL, 1uLL, __stream);
  fwrite("}\n", 2uLL, 1uLL, __stream);
  fwrite("\\margl1440\\margr1440\\vieww16420\\viewh18180\\viewkind0\n", 0x35uLL, 1uLL, __stream);

  return fwrite("\\pard\\tx720\\tx1440\\tx2160\\tx2880\\tx3600\\tx4320\\tx5040\\tx5760\\tx6480\\tx7200\\tx7920\\tx8640\\pardirnatural\n\n\\f0\\fs24 ", 0x71uLL, 1uLL, __stream);
}

uint64_t sub_1B01DA130(FILE *a1)
{
  fputc(125, a1);

  return fflush(a1);
}

void sub_1B01DA19C(FILE *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a4 & 4;
  if ((a4 & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4 & 2;
  }

  if ((a4 & 4) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 & 1;
  }

  if (a2)
  {
    v16 = CFGetTypeID(a2);
    if (v16 == CFBooleanGetTypeID())
    {
      goto LABEL_10;
    }

    v22 = CFGetTypeID(a2);
    if (v22 == CFNumberGetTypeID())
    {
      goto LABEL_10;
    }

    v23 = CFGetTypeID(a2);
    if (v23 == CFStringGetTypeID())
    {
      sub_1B01DA170(a1, v10, "%@", v24, v25, v26, v27, v28, a2);
      return;
    }

    v29 = CFGetTypeID(a2);
    if (v29 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(a2);
      Mutable = CFStringCreateMutable(0, 0);
      BytePtr = CFDataGetBytePtr(a2);
      v38 = BytePtr;
      if (Length < 25)
      {
        if (Length < 1)
        {
          goto LABEL_46;
        }

        v99 = v12;
        v66 = BytePtr;
        v67 = Length;
        do
        {
          v68 = *v66++;
          CFStringAppendFormat(Mutable, 0, @"%02x", v68);
          --v67;
        }

        while (v67);
      }

      else
      {
        v99 = v12;
        v39 = 0;
        do
        {
          CFStringAppendFormat(Mutable, 0, @"%02x%02x%02x%02x", v38[v39], v38[v39 + 1], v38[v39 + 2], v38[v39 + 3]);
          v40 = v39 >= 0xC;
          v39 += 4;
        }

        while (!v40);
        CFStringAppend(Mutable, @" ... ");
        v41 = Length - 8;
        do
        {
          CFStringAppendFormat(Mutable, 0, @"%02x%02x%02x%02x", v38[v41], v38[v41 + 1], v38[v41 + 2], v38[v41 + 3]);
          v41 += 4;
        }

        while (v41 < Length);
      }

      v12 = v99;
      if ((a4 & 8) != 0 && Length >= 32)
      {
        v96 = *(v38 + 2);
        v97 = *(v38 + 3);
        sub_1B01DA170(a1, v10, "{ x: %f, y: %f, width: %f, height: %f }", v33, v34, v35, v36, v37, *v38);
        goto LABEL_47;
      }

LABEL_46:
      sub_1B01DA170(a1, v10, "Data[%llu] (%@)", v33, v34, v35, v36, v37, Length);
LABEL_47:
      if (v12)
      {
        if (Length)
        {
          v69 = sub_1B01A1BE8(a2);
          if (v69)
          {
            v75 = v69;
            sub_1B01DA170(a1, v10, " (%@)", v70, v71, v72, v73, v74, v69);
            CFRelease(v75);
          }
        }
      }

      CFRelease(Mutable);
      return;
    }

    v42 = CFGetTypeID(a2);
    if (v42 == CFDictionaryGetTypeID())
    {
      v100 = v12;
      Count = CFDictionaryGetCount(a2);
      v49 = Count;
      if (v11)
      {
        sub_1B01DA170(a1, v10, "Dictionary[%lld]", v44, v45, v46, v47, v48, Count);
      }

      v50 = malloc_type_calloc(v49, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(a2, v50, 0);
      qsort_b(v50, v49, 8uLL, &unk_1F2637500);
      if (v49 >= 1)
      {
        v56 = 0;
        v57 = (a3 + 1);
        v98 = a3 % 6 + 31;
        do
        {
          v58 = v49;
          sub_1B01DA170(a1, v10, "\n", v51, v52, v53, v54, v55, v94);
          if (v57)
          {
            v64 = v57;
            do
            {
              --v64;
              fwrite("   ", 3uLL, 1uLL, a1);
            }

            while (v64);
          }

          if (v100)
          {
            v95 = v50[v56];
            sub_1B01DA170(a1, v10, "\x1B[%dm%@\x1B[0m => ", v59, v60, v61, v62, v63, v98);
          }

          else
          {
            sub_1B01DA170(a1, v10, "%@ => ", v59, v60, v61, v62, v63, v50[v56]);
          }

          v49 = v58;
          Value = CFDictionaryGetValue(a2, v50[v56]);
          sub_1B01DA19C(a1, Value, v57, a4);
          ++v56;
        }

        while (v56 != v58);
      }

      free(v50);
    }

    else
    {
      v76 = CFGetTypeID(a2);
      if (v76 != CFArrayGetTypeID())
      {
LABEL_10:
        sub_1B01DA170(a1, v10, "%@", v17, v18, v19, v20, v21, a2);
        return;
      }

      v101 = v12;
      v77 = CFArrayGetCount(a2);
      v83 = v77;
      if (v11)
      {
        sub_1B01DA170(a1, v10, "Array[%lld]", v78, v79, v80, v81, v82, v77);
      }

      if (v83 >= 1)
      {
        v84 = 0;
        v85 = (a3 + 1);
        v86 = a3 % 6 + 31;
        do
        {
          sub_1B01DA170(a1, v10, "\n", v78, v79, v80, v81, v82, v94);
          if (v85)
          {
            v92 = v85;
            do
            {
              --v92;
              fwrite("   ", 3uLL, 1uLL, a1);
            }

            while (v92);
          }

          if (v101)
          {
            sub_1B01DA170(a1, v10, "\x1B[%dm[%lld]\x1B[0m: ", v87, v88, v89, v90, v91, v86);
          }

          else
          {
            sub_1B01DA170(a1, v10, "[%lld]: ", v87, v88, v89, v90, v91, v84);
          }

          ValueAtIndex = CFArrayGetValueAtIndex(a2, v84);
          sub_1B01DA19C(a1, ValueAtIndex, v85, a4);
          ++v84;
        }

        while (v84 != v83);
      }
    }
  }

  else
  {

    sub_1B01DA170(a1, a4 & 4, "NULL", a4, a5, a6, a7, a8, a9);
  }
}

CFComparisonResult sub_1B01DA760(uint64_t a1, CFTypeRef *a2, const __CFNumber **a3)
{
  TypeID = CFNumberGetTypeID();
  v6 = CFGetTypeID(*a2);
  v7 = *a2;
  v8 = *a3;
  if (TypeID == v6)
  {
    return CFNumberCompare(v7, v8, 0);
  }

  else
  {
    return CFStringCompare(v7, v8, 0);
  }
}

uint64_t sub_1B01DA7C4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, unint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v14 = sub_1B01DF3DC(a2);
  if (!sub_1B01DD624(v14))
  {
    result = 13;
    goto LABEL_14;
  }

  v15 = sub_1B01DD5D8(v14);
  v16 = 24 * *v15 + 31;
  MEMORY[0x1EEE9AC00]();
  v18 = &v23[-v17];
  bzero(&v23[-v17], v17);
  *v18 = v15;
  result = 1;
  if (a1 && a5 && a7)
  {
    v20 = sub_1B01DD954(v15, a2, a1, v18);
    if (v20 == -13)
    {
LABEL_8:
      result = 2;
      goto LABEL_14;
    }

    if (v20)
    {
      goto LABEL_15;
    }

    v21 = sub_1B01DF0D8(v18, a8, a7, a6, a5, &v24);
    if (v21 == -13)
    {
      goto LABEL_8;
    }

    if (v21)
    {
LABEL_15:
      result = 6;
      goto LABEL_14;
    }

    if (v24)
    {
      result = 0;
    }

    else
    {
      result = 6;
    }
  }

LABEL_14:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01DA968(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);

  return sub_1B01DA984(va2, a2, va, va1);
}

uint64_t sub_1B01DA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  bzero(&v18, 0x638uLL);
  v17 = 64;
  v8 = *(a1 + 8);
  v16[0] = *a1;
  v16[1] = v8;
  v14 = 0u;
  v15 = 0u;
  if (sub_1B01E7954(v16, 2u, &unk_1B01FF580, &v14, 0x20uLL))
  {
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v9 = *(&v14 + 1);
  v10 = v14;
  if (*(&v14 + 1))
  {
    v11 = 7;
    while (!*v10)
    {
      ++v10;
      if (!--v9)
      {
        v10 = (v14 + *(&v14 + 1));
        goto LABEL_10;
      }
    }

    v11 = v9 + 7;
    if (v9 + 7 >= 0x208)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 7;
  }

LABEL_10:
  v17 = v11 >> 3;
  result = sub_1B01E4CBC(&v17, *(&v15 + 1), v15, v9, v10);
  if (result)
  {
    goto LABEL_18;
  }

  if (&unk_1B01FF190 && qword_1F25E30A0)
  {
    result = sub_1B01E2610(&v17, a2, *(a3 + 8), *a3, *(a4 + 8), *a4, v19);
    if (result)
    {
      goto LABEL_18;
    }

    sub_1B01DF37C(16, &unk_1B01FF190, v19);
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  LOBYTE(v14) = 0;
  result = sub_1B01E24D0(&v17, a2, *(a3 + 8), *a3, *(a4 + 8), *a4, &v14);
  if (!result && (v14 & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B01DAB2C(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1B01DAB38(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_1B01DAB58(const __CFAllocator *a1, void *a2, CFTypeRef cf, int a4)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v8 = sub_1B01F5498(a1, cf, cfa, 0);
    if (v8)
    {
      v4 = v8;
      sub_1B01DAC6C(3, "_AMSupportCreateDataFromFileURLInternal", "AMSupportCopyPreserveFileURL failed.", v9, v10, v11, v12, v13, cfa[0]);
    }

    else
    {
      if (a4)
      {
        v14 = sub_1B01F58D8(a1, a2, cfa[0]);
      }

      else
      {
        v14 = sub_1B01F56BC(a1, a2, cfa[0]);
      }

      v4 = v14;
    }

    if (cfa[0])
    {
      CFRelease(cfa[0]);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B01DAC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v32 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x1000uLL);
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  v16 = snprintf(__str, 0x1000uLL, "%s: ", v15);
  v17 = *MEMORY[0x1E695E480];
  v18 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v11, 0x8000100u, *MEMORY[0x1E695E498]);
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
    v28 = 0;
    v27 = 0;
    goto LABEL_14;
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

  if (CFStringGetCString(v20, &v26[v21], v22, 0x8000100u))
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

LABEL_14:
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = "failed to format log message";
  }

  off_1EE812408(v14, v29);
  sub_1B01DAB2C(v18);
  sub_1B01DAB2C(v20);
  sub_1B01DAB38(v27);
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B01DAE64(char *__format, ...)
{
  va_start(va, __format);
  v19 = *MEMORY[0x1E69E9840];
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
  result = fprintf(*MEMORY[0x1E69E9848], "%s\n", __str);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

FILE *sub_1B01DAF14(const __CFURL *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    result = fopen(buffer, a2);
  }

  else
  {
    sub_1B01DAC6C(3, "AMSupportPlatformOpenFileStreamWithURL", "failed to convert url to file system representation", v4, v5, v6, v7, v8, v16);
    sub_1B01DAC6C(8, "AMSupportPlatformOpenFileStreamWithURL", "%@", v10, v11, v12, v13, v14, a1);
    result = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01DAFE0(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    return sub_1B01DB008();
  }

  return result;
}

uint64_t sub_1B01DB030(uint64_t result, int8x16_t *a2, uint64_t a3, __int128 *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      v6 = *a2;
      do
      {
        v7 = v5 - 16;
        v8 = *a4++;
        _Q2 = *result;
        v9 = (result + 16);
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v9++;
          v17 = v7 <= 16;
          v7 -= 16;
        }

        while (!v17);
        __asm { AESE            V0.16B, V2.16B }

        v19 = veorq_s8(_Q0, *v9);
        result = v9->i64 - v5;
        *a5++ = v19;
        v17 = a3-- <= 1;
      }

      while (!v17);
      result = 0;
      *a2 = v19;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_1B01DB0B0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_1B01E07C8();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t sub_1B01DB150(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1B01DFC00(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = sub_1B01E6C58(a2);
  if (sub_1B01E1880(v8, v10, v11, 2uLL))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = sub_1B01E07E4(a1, a2, a3, a4, v10);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_1B01DB1F8(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = sub_1B01DB488(a1, a2, &v8, 0);
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v6 = *a1;
    v7 = &(*a1)[v8];
    *a1 = v7;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t sub_1B01DB25C(uint64_t a1, unint64_t *a2, int a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1)
  {
    v5 = v4 >= v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v4 + 1;
  v7 = *v4;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = *v4;
  if (v9 > 0x82)
  {
    if (v9 == 131)
    {
      if ((v3 - v6) < 3)
      {
        goto LABEL_7;
      }

      v10 = v4[1];
      v6 = v4 + 4;
      v7 = v4[3] | (v10 << 16) | (v4[2] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v9 != 132 || (v3 - v6) < 4)
      {
        goto LABEL_7;
      }

      LODWORD(v10) = v4[1];
      v6 = v4 + 5;
      v7 = (v4[1] << 24) | (v4[2] << 16) | v4[4] | (v4[3] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 == 129)
  {
    if ((v3 - v6) < 1)
    {
      goto LABEL_7;
    }

    v6 = v4 + 2;
    v11 = v4[1];
    v7 = v11;
    if (a3)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (v9 != 130 || (v3 - v6) < 2)
  {
    goto LABEL_7;
  }

  v10 = v4[1];
  v6 = v4 + 3;
  v7 = v4[2] | (v10 << 8);
  if (a3)
  {
    goto LABEL_26;
  }

LABEL_6:
  if (v3 - v6 < v7)
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    return result;
  }

  *a2 = v7;
  *a1 = v6;
  return 1;
}

uint64_t sub_1B01DB384(unsigned __int8 **a1, unint64_t a2, void *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  result = sub_1B01DB400(a1, &v8);
  if (result)
  {
    result = sub_1B01DB578(&v8, a2, a3);
    if (result)
    {
      result = sub_1B01DB578(&v8, a2, a4);
      if (result)
      {
        return v8 == v9;
      }
    }
  }

  return result;
}

uint64_t sub_1B01DB410(unsigned __int8 **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v8 = *v2;
  v6 = v2 + 1;
  v7 = v8;
  v9 = v8 & 0x1F;
  if (v9 == 31)
  {
    v9 = 0;
    while (1)
    {
      v5 = 0;
      if (v6 >= v3)
      {
        break;
      }

      v10 = v9;
      if (v9 >> 57)
      {
        break;
      }

      v11 = *v6++;
      v9 = v11 & 0x7F | (v9 << 7);
      if ((v11 & 0x80) == 0)
      {
        if (v10 >> 54)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *a2 = v9 | (v7 >> 5 << 61);
    *a1 = v6;
    return 1;
  }

  return v5;
}

uint64_t sub_1B01DB488(unsigned __int8 **a1, uint64_t a2, unint64_t *a3, int a4)
{
  v10 = 0;
  *a3 = 0;
  v8 = sub_1B01DB410(a1, &v10);
  result = 0;
  if (v8 && v10 == a2)
  {
    if (a4)
    {
      return sub_1B01DB254(a1, a3);
    }

    else
    {
      return sub_1B01DB37C(a1, a3);
    }
  }

  return result;
}

BOOL sub_1B01DB504(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4 && (*v3 & 0x80000000) == 0 && (*v3 || (++v3, v3 == v4) || *v3 < 0))
  {
    *a1 = v3;
    return sub_1B01E1298(a2, a3, v4 - v3, v3) == 0;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return v5;
}

uint64_t sub_1B01DB578(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  result = sub_1B01DB1F8(a1, 2, v6);
  if (result)
  {
    return sub_1B01DB504(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1B01DB5C8(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = 0;
    do
    {
      v4 = *a2++;
      ++v3;
      if (v4)
      {
        result = v3;
      }
    }

    while (v3 < v2);
  }

  return result;
}

void *sub_1B01DB5F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1B01DFC00(a2);

  return sub_1B01E136C(v6, a3, a4);
}

uint64_t sub_1B01DB648(uint64_t result)
{
  if (result)
  {
    sub_1B01E0BEC();
  }

  return result;
}

uint64_t sub_1B01DB664(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  v15 = a1[13];
  v16 = a1[14];
  v17 = a1[15];
  v18 = a1[16];
  v19 = a1[17];
  v21 = a1[18];
  v20 = a1[19];
  v22 = a1[20];
  v23 = a1[21];
  v24 = a1[22];
  v25 = a1[23];
  v26 = a1[24];
  v69 = a1;
  v70 = 0;
  v77 = &unk_1B01FECE8;
  do
  {
    v71 = result;
    v72 = v3;
    v74 = v4;
    v75 = v5;
    v76 = v6;
    v27 = result ^ v7 ^ v12 ^ v17 ^ v22;
    v28 = v3 ^ v8 ^ v13 ^ v18 ^ v23;
    v29 = v4 ^ v9 ^ v14 ^ v19 ^ v24;
    v30 = v5 ^ v10 ^ v15 ^ v21 ^ v25;
    v31 = v6 ^ v11 ^ v16 ^ v20 ^ v26;
    v32 = v31 ^ __ROR8__(v28, 63);
    v33 = v27 ^ __ROR8__(v29, 63);
    v34 = v28 ^ __ROR8__(v30, 63);
    v35 = v29 ^ __ROR8__(v31, 63);
    v36 = v30 ^ __ROR8__(v27, 63);
    v73 = __ROR8__(v72 ^ v33, 63);
    v37 = __ROR8__(v8 ^ v33, 20);
    v38 = __ROR8__(v11 ^ v36, 44);
    v39 = __ROR8__(v24 ^ v34, 3);
    v40 = __ROR8__(v16 ^ v36, 25);
    v41 = __ROR8__(v22 ^ v32, 46);
    v42 = __ROR8__(v74 ^ v34, 2);
    v43 = __ROR8__(v14 ^ v34, 21);
    v44 = __ROR8__(v15 ^ v35, 39);
    v45 = __ROR8__(v20 ^ v36, 56);
    v46 = __ROR8__(v25 ^ v35, 8);
    v47 = __ROR8__(v17 ^ v32, 23);
    v48 = __ROR8__(v76 ^ v36, 37);
    v49 = __ROR8__(v26 ^ v36, 50);
    v50 = __ROR8__(v23 ^ v33, 62);
    v51 = __ROR8__(v10 ^ v35, 9);
    v52 = __ROR8__(v18 ^ v33, 19);
    v53 = __ROR8__(v7 ^ v32, 28);
    v54 = __ROR8__(v75 ^ v35, 36);
    v55 = __ROR8__(v21 ^ v35, 43);
    v56 = __ROR8__(v19 ^ v34, 49);
    v57 = __ROR8__(v13 ^ v33, 54);
    v58 = __ROR8__(v9 ^ v34, 58);
    v59 = __ROR8__(v12 ^ v32, 61);
    v60 = v37 & ~(v71 ^ v32);
    v61 = v71 ^ v32 ^ v43 & ~v37;
    v3 = v37 ^ v55 & ~v43;
    v4 = v43 ^ v49 & ~v55;
    v5 = v55 ^ (v71 ^ v32) & ~v49;
    v6 = v49 ^ v60;
    result = v61 ^ *v77++;
    v62 = v54 & ~v39;
    v63 = v38 & ~v54;
    v7 = v54 ^ v59 & ~v38;
    v8 = v38 ^ v52 & ~v59;
    v9 = v59 ^ v39 & ~v52;
    v10 = v52 ^ v62;
    v11 = v39 ^ v63;
    v64 = v58 & ~v73;
    v12 = v73 ^ v44 & ~v58;
    v13 = v58 ^ v45 & ~v44;
    v14 = v44 ^ v41 & ~v45;
    v15 = v45 ^ v73 & ~v41;
    v16 = v41 ^ v64;
    v65 = v48 & ~v46;
    v66 = v53 & ~v48;
    v17 = v48 ^ v57 & ~v53;
    v18 = v53 ^ v56 & ~v57;
    v19 = v57 ^ v46 & ~v56;
    v21 = v56 ^ v65;
    v20 = v46 ^ v66;
    v67 = v42 & ~v50;
    v68 = v51 & ~v42;
    v22 = v42 ^ v40 & ~v51;
    v23 = v51 ^ v47 & ~v40;
    v24 = v40 ^ v50 & ~v47;
    v25 = v47 ^ v67;
    v26 = v50 ^ v68;
    v70 += 8;
  }

  while (v70 != 192);
  *v69 = result;
  v69[1] = v3;
  v69[2] = v4;
  v69[3] = v5;
  v69[4] = v6;
  v69[5] = v7;
  v69[6] = v8;
  v69[7] = v9;
  v69[8] = v10;
  v69[9] = v11;
  v69[10] = v12;
  v69[11] = v13;
  v69[12] = v14;
  v69[13] = v15;
  v69[14] = v16;
  v69[15] = v17;
  v69[16] = v18;
  v69[17] = v19;
  v69[18] = v21;
  v69[19] = v20;
  v69[20] = v22;
  v69[21] = v23;
  v69[22] = v24;
  v69[23] = v25;
  v69[24] = v26;
  return result;
}

unint64_t sub_1B01DB970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1B01DFC00(a1);
  v7 = sub_1B01E1274(v6, a3) != 0;
  v8 = sub_1B01E6C58(a1);

  return sub_1B01E4E70(v6, v7, a2, a3, v8);
}

unint64_t sub_1B01DB9EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_1B01DFC00(a1);
  if (sub_1B01E1274(v8, a4))
  {
    v9 = a2 & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B01E6C58(a1);

  return sub_1B01E4E70(v8, v9, a3, a4, v10);
}

void *sub_1B01DBA70(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1B01DFC00(a2);

  return sub_1B01E136C(v6, a3, a4);
}

unint64_t sub_1B01DBAC0(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4) >> 64;
    *a2++ = v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = v6 * a4 + __PAIR128__(v7 * a4, v4);
    v4 = (__CFADD__(__CFADD__(v6 * a4, v4), (v6 * a4) >> 64) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v8;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v9 = a1 < 4;
    a1 -= 4;
    if (v9)
    {
      break;
    }

    v11 = *a3;
    v12 = a3[1];
    v10 = a3 + 2;
    v14 = *v10;
    v15 = v10[1];
    a3 = v10 + 2;
    v16 = (v12 * a4) >> 64;
    v17 = __CFADD__(__CFADD__(v11 * a4, v4), (v11 * a4) >> 64);
    v13 = v11 * a4 + __PAIR128__(v12 * a4, v4);
    *a2 = v13;
    v18 = a2 + 2;
    v19 = (v14 * a4) >> 64;
    v20 = v16 + (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4;
    v22 = __CFADD__(v17 | __CFADD__(v12 * a4, *(&v13 + 1)), v14 * a4) | __CFADD__(v16, (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4);
    v17 = __CFADD__(v22, v19);
    v21 = v22 + v19;
    v4 = (v17 | __CFADD__(v15 * a4, v21)) + ((v15 * a4) >> 64);
    *v18 = v20;
    v18[1] = v15 * a4 + v21;
    a2 = v18 + 2;
  }

  return v4;
}

uint64_t sub_1B01DBB6C(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v8 = (*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1B01DBE90(a1, v9);
  sub_1B01DBEFC(a1, v9, a2, a3);
  (*(a1 + 56))(a1, v9, a4);
  result = sub_1B01E5B5C(*(a1 + 8) + *(a1 + 16) + 12, v9);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01DBC50(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v9 = sub_1B01E4F24();
  sub_1B01DBB6C(a1, a2, a3, a4);
  return sub_1B01E6E24(&v9);
}

uint64_t sub_1B01DBCB0(uint64_t a1, const void *a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = (v7 + v6 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  memcpy(v10, a2, v7 + v6 + 12);
  v11 = v10 + v7;
  v12 = v10 + v7 + 8;
  v13 = (v12 + v6);
  v14 = *(v12 + v6);
  *v10 += (8 * v14);
  *(v12 + v6) = v14 + 1;
  *(v12 + v14) = 0x80;
  v15 = *(v12 + v6);
  if (v15 < 0x39)
  {
    if (v15 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v15 <= 0x3F)
    {
      do
      {
        *v13 = v15 + 1;
        *(v12 + v15) = 0;
        v15 = *v13;
      }

      while (v15 < 0x40);
    }

    (*(a1 + 48))(v10 + 1, 1);
    v15 = 0;
    v11 = v10 + *(a1 + 8);
    v12 = (v11 + 8);
    v13 = &v11[*(a1 + 16) + 8];
    *v13 = 0;
  }

  do
  {
    *v13 = v15 + 1;
    *(v12 + v15) = 0;
    v15 = *v13;
  }

  while (v15 < 0x38);
LABEL_9:
  *(v11 + 8) = bswap64(*v10);
  (*(a1 + 48))(v10 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      *(a3 + v16) = bswap32(*(v10 + v17 + 2));
      v17 = v18++;
      v16 += 4;
    }

    while (v17 < *a1 >> 2);
  }

  result = sub_1B01E5B5C(*(a1 + 8) + *(a1 + 16) + 12, v10);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B01DBE90(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return result;
}

unint64_t *sub_1B01DBEFC(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *(v9 + v8))
  {
    *(v9 + v8) = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memcpy(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1B01DC038(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (sub_1B01E03F0(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  v9 = *a2;
  v10 = sub_1B01DFBF4(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  v11 = *a2;
  sub_1B01E69D4(a1, a2);
  sub_1B01DBAB4(a1, a2);
  v12 = *a2;
  sub_1B01DBAB4(a1, a2);
  *(a1 + 16) = v8;
  return v10;
}

uint64_t sub_1B01DC170(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (sub_1B01E03F0(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  v9 = *a2;
  sub_1B01E6C4C(a1, a2);
  v10 = sub_1B01DFBF4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01DBAB4(a1, a2);
  *(a1 + 16) = v8;
  return v10;
}

uint64_t sub_1B01DC254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v7 = a4[4];
  v17[0] = a4[3];
  v17[1] = v17[0];
  v17[2] = 0;
  v16[0] = 0;
  v16[1] = v7;
  v16[2] = v7;
  v15[0] = a4[5];
  v15[1] = v15[0];
  v15[2] = v15[0];
  v8 = sub_1B01E05D4(a1, 3, a3, a4, v17);
  v9 = sub_1B01E05D4(a1, 3, a3, a3, v16) + v8;
  v14[0] = v9 + sub_1B01E05D4(a1, 3, a3, a3, v15);
  v14[1] = v14[0];
  v14[2] = 0;
  LOBYTE(v9) = sub_1B01E05D4(a1, 3, v14, a3, v14);
  v10 = sub_1B01E6C58(a2);
  v11 = sub_1B01E17B4(a1, 3, a3, v14, v10);
  result = sub_1B01E0764(3, !v11 | v9, a3, a3, v14);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B01DC380(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  result = sub_1B01E1270(a2 - 1, a3 + 1, a4 + 1, *a4);
  a3[a2] = result;
  v8 = *a4;
  v9 = (v8 * v8) >> 64;
  v10 = v8 * v8;
  v11 = a3[1];
  v12 = __CFADD__(v9, 2 * v11);
  v13 = v9 + 2 * v11;
  if (v12)
  {
    v14 = (v11 >> 63) + 1;
  }

  else
  {
    v14 = v11 >> 63;
  }

  *a3 = v10;
  a3[1] = v13;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    v16 = 0;
    v17 = &a3[a2 + 1];
    v18 = a3 + 3;
    do
    {
      result = sub_1B01DF5F4(v15, v18, &a4[v16 + 2], a4[v16 + 1]);
      *(v17 + v16 * 8) = result;
      v19 = a4[v16 + 1];
      v20 = (v19 * v19) >> 64;
      v21 = v19 * v19;
      v12 = __CFADD__(v21, v14);
      v22 = v21 + v14;
      if (v12)
      {
        ++v20;
      }

      v23 = *(v18 - 1);
      v24 = v23 >> 63;
      v12 = __CFADD__(v20, 2 * *v18);
      v25 = v20 + 2 * *v18;
      if (v12)
      {
        v26 = (*v18 >> 63) + 1;
      }

      else
      {
        v26 = *v18 >> 63;
      }

      v12 = __CFADD__(v22, 2 * v23);
      v27 = v22 + 2 * v23;
      v29 = v12;
      v12 = __CFADD__(v12, v25);
      v28 = v29 + v25;
      v12 |= __CFADD__(v24, v28);
      v28 += v24;
      if (v12)
      {
        v14 = v26 + 1;
      }

      else
      {
        v14 = v26;
      }

      *(v18 - 1) = v27;
      *v18 = v28;
      ++v16;
      --v15;
      v18 += 2;
    }

    while (v15 != -1);
  }

  return result;
}

uint64_t sub_1B01DC4D8(uint64_t a1, uint64_t a2, uint64_t *a3, int8x16_t *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1B01E1380(9, v13, a4 + 4, 9);
  v14 += a4[4].i64[0] & 0x1FF;
  v8 = sub_1B01E05D4(a1, 8, v13, v13[0].i64, a4->i64);
  v14 += v8;
  v9 = sub_1B01E6C58(a2);
  v10 = sub_1B01E17B4(a1, 9, v15, v13[0].i64, v9);
  result = sub_1B01E0764(9, v10, a3, v13[0].i64, v15);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01DC5E0(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  sub_1B01E6C4C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  v7 = *a2;
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  v8 = *a2;
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  result = sub_1B01E6CF8(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1B01DC86C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *a2;
  v14 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, *a2);
  v11 = (*(a1 + 24))(a1, v9);
  (*(a1 + 24))(a1, v9);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6CF8(a1, a2);
  if (a6)
  {
    sub_1B01E5E0C(a1, a2);
  }

  else
  {
    sub_1B01E6CF8(a1, a2);
  }

  if (sub_1B01E1274(v9, v10) || sub_1B01E1274(v9, v11))
  {
    if (sub_1B01E1274(v9, v10) || !sub_1B01E1274(v9, v11))
    {
      sub_1B01E5E0C(a1, a2);
      sub_1B01E6CF8(a1, a2);
      sub_1B01E5E0C(a1, a2);
      sub_1B01E6CF8(a1, a2);
      sub_1B01E69D4(a1, a2);
      sub_1B01E6C4C(a1, a2);
      sub_1B01E69D4(a1, a2);
      sub_1B01E69D4(a1, a2);
      sub_1B01E6C4C(a1, a2);
      sub_1B01E6CF8(a1, a2);
      sub_1B01E6CF8(a1, a2);
      sub_1B01E6CF8(a1, a2);
      sub_1B01E69D4(a1, a2);
      sub_1B01E69D4(a1, a2);
      sub_1B01E6CF8(a1, a2);
      result = sub_1B01E61EC(a1, a2, &a3[v9], &a3[v9]);
    }

    else
    {
      sub_1B01E4E1C(v9, a3, 1);
      sub_1B01DB63C(a1, a2);
      sub_1B01E136C(v9, &a3[v9], a3);
      result = sub_1B01E5B5C(8 * v9, &a3[2 * v9]);
    }
  }

  else
  {
    result = sub_1B01DC5E0(a1, a2);
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_1B01DCBFC(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (sub_1B01E03F0(a2, a4))
  {
    sub_1B01E136C(v11, a3, a5);
    sub_1B01E136C(v11, &a3[8 * *a2], &a5[8 * *a2]);
    result = sub_1B01E136C(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = sub_1B01DC86C(a1, a2, a3, a4, a5, 0);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_1B01DCCB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v17 = a4 + 8 * *a2;
  v7 = sub_1B01DFC00(a2);
  v18 = *(a1 + 16);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  sub_1B01DD3A8(a1, a2);
  sub_1B01DD3A8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  v8 = sub_1B01DFC00(a2);
  v9 = *a2;
  v10 = &a3[*a2];
  v11 = (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8);
  sub_1B01E136C(v8, v11, v10);
  sub_1B01DBAB4(a1, a2);
  v13 = sub_1B01E1274(v8, v12) == 1 && *v12 == 1;
  v14 = sub_1B01E1274(v8, a3);
  if (sub_1B01E1274(v8, &a3[2 * v9]) | v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  sub_1B01E69D4(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E0764(v8, v15, a3, v11, a3);
  result = sub_1B01E0764(v8, v15, v10, v11, v10);
  *(a1 + 16) = v18;
  return result;
}

uint64_t sub_1B01DD3A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B01DFC00(a2);
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  sub_1B01E69D4(a1, a2);
  v7 = *a2;
  sub_1B01E6C4C(a1, a2);
  v8 = *a2;
  result = sub_1B01E69D4(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1B01DD46C(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (sub_1B01E03F0(a2, a4))
  {
    sub_1B01E136C(v11, a3, a5);
    sub_1B01DB970(a2, &a3[8 * *a2], &a5[8 * *a2]);
    result = sub_1B01E136C(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = sub_1B01DC86C(a1, a2, a3, a4, a5, 1);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_1B01DD528(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * *a2);
  sub_1B01E136C(v8, v10, a5);
  sub_1B01DB970(a2, &v10[8 * *a2], &a5[8 * *a2]);
  sub_1B01E136C(v8, &v10[16 * *a2], &a5[16 * *a2]);
  result = sub_1B01DD460(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

void *sub_1B01DD5D8(uint64_t a1)
{
  if (a1 <= 255)
  {
    if (a1 == 192)
    {
      return sub_1B01DC248();
    }

    if (a1 == 224)
    {
      return sub_1B01DC4A0();
    }
  }

  else
  {
    switch(a1)
    {
      case 256:
        return sub_1B01DC4B4();
      case 384:
        return sub_1B01DC4C8();
      case 521:
        return sub_1B01DC4CC();
    }
  }

  return 0;
}

uint64_t sub_1B01DD624(uint64_t a1)
{
  v4 = sub_1B01E4F24();
  v2 = 1;
  if (a1 <= 255)
  {
    if (a1 != 192 && a1 != 224)
    {
      goto LABEL_8;
    }
  }

  else if (a1 != 256 && a1 != 384 && a1 != 521)
  {
LABEL_8:
    v2 = 0;
  }

  sub_1B01E6E24(&v4);
  return v2;
}

int8x16_t sub_1B01DD6D0(int8x16_t *a1, int8x16_t *a2)
{
  result = *a1;
  a2[15].i32[0] = 160;
  _Q2 = 0uLL;
  v4 = loc_1B01DD6A0;
  v5 = 10;
  *a2 = result;
  v6 = a2 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v12 = vqtbl1q_s8(_Q1, *qword_1B01DD6C0);
    v13 = veorq_s8(result, v12);
    v12.i8[0] = v4.i8[0];
    v4 = vextq_s8(v4, v4, 1uLL);
    v14 = veorq_s8(v13, v12);
    v15 = veorq_s8(v14, vextq_s8(0, v14, 0xCuLL));
    result = veorq_s8(v15, vextq_s8(0, v15, 8uLL));
    *v6++ = result;
    _CF = v5-- != 0;
  }

  while (v5 != 0 && _CF);
  return result;
}

int8x16_t sub_1B01DD740(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  result = *a1;
  a9.i64[0] = a1[1].i64[0];
  a2[15].i32[0] = 192;
  _Q2 = 0uLL;
  v11 = loc_1B01DD6A0;
  *a2 = result;
  v12 = a2 + 1;
  v13 = 46;
  v12->i64[0] = a9.i64[0];
  v14 = &v12->u64[1];
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v20 = vqtbl1q_s8(_Q1, *qword_1B01DD6C0);
    v21 = veorq_s8(result, v20);
    v20.i8[0] = v11.i8[0];
    v11 = vextq_s8(v11, v11, 1uLL);
    v22 = veorq_s8(v21, v20);
    v23 = veorq_s8(v22, vextq_s8(0, v22, 0xCuLL));
    result = veorq_s8(v23, vextq_s8(0, v23, 8uLL));
    *a9.i8 = veor_s8(veor_s8(*a9.i8, *&vshlq_n_s64(a9, 0x20uLL)), *&vdupq_laneq_s32(result, 3));
    *v14 = result;
    v24 = v14 + 1;
    v24->i64[0] = a9.i64[0];
    v14 = &v24->u64[1];
    _CF = v13 >= 6;
    v13 -= 6;
  }

  while (v13 != 0 && _CF);
  return result;
}

int8x16_t *sub_1B01DD7D0(int8x16_t *result, int8x16_t *a2)
{
  v2 = *result;
  v3 = result[1];
  a2[15].i32[0] = 224;
  _Q2 = 0uLL;
  v5 = loc_1B01DD6A0;
  *a2 = v2;
  v6 = a2 + 1;
  v7 = 52;
  *v6 = v3;
  v8 = v6 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v14 = vqtbl1q_s8(_Q1, *qword_1B01DD6C0);
    v15 = veorq_s8(v2, v14);
    v14.i8[0] = v5.i8[0];
    v5 = vextq_s8(v5, v5, 1uLL);
    v16 = veorq_s8(v15, v14);
    v17 = veorq_s8(v16, vextq_s8(0, v16, 0xCuLL));
    v2 = veorq_s8(v17, vextq_s8(0, v17, 8uLL));
    *v8 = v2;
    v18 = v8 + 1;
    v19 = v7 - 4;
    if (!v19)
    {
      break;
    }

    __asm { AESE            V7.16B, V2.16B }

    v21 = veorq_s8(v3, vqtbl1q_s8(_Q7, *qword_1B01DD6C0));
    v22 = veorq_s8(v21, vextq_s8(0, v21, 0xCuLL));
    v3 = veorq_s8(v22, vextq_s8(0, v22, 8uLL));
    *v18 = v3;
    v8 = v18 + 1;
    _CF = v19 >= 4;
    v7 = v19 - 4;
  }

  while (v7 != 0 && _CF);
  return result;
}

uint64_t sub_1B01DD880(double a1, double a2, double a3, double a4, double a5, double a6, int64x2_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10, int8x16_t *a11)
{
  v13 = a9;
  v15 = a10;
  if (a10 > 32)
  {
    v15 = a10 >> 3;
  }

  switch(v15)
  {
    case 0x10uLL:
      sub_1B01DD6D0(a11, v13);
      break;
    case 0x18uLL:
      sub_1B01DD740(a11, v13, a1, a2, a3, a4, a5, a6, a7);
      break;
    case 0x20uLL:
      sub_1B01DD7D0(a11, v13);
      break;
    default:
      return -1;
  }

  return 0;
}

__n128 sub_1B01DD8F0(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  v11 = sub_1B01DD880(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  v13 = a3;
  if (v11 != -1)
  {
    if (a3 > 32)
    {
      v13 = a3 >> 3;
    }

    v14 = (v13 >> 2) + 4;
    v15 = &a2[1];
    do
    {
      _Q0 = *v15;
      _Q1 = v15[1];
      __asm
      {
        AESIMC          V0.16B, V0.16B
        AESIMC          V1.16B, V1.16B
      }

      *v15 = _Q0;
      v15[1] = _Q1;
      v15 += 2;
      v24 = v14 <= 2;
      v14 -= 2;
    }

    while (!v24);
    _Q0 = *v15;
    __asm { AESIMC          V0.16B, V0.16B }

    *v15 = result;
  }

  return result;
}

uint64_t sub_1B01DD958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v7);
  if ((sub_1B01E0A24(*a2, a4, a2 + 3) & 0x80000000) != 0)
  {
    sub_1B01DB63C(a1, a2);
    sub_1B01E6C4C(a1, a2);
    sub_1B01E69D4(a1, a2);
    sub_1B01E5E0C(a1, a2);
    sub_1B01E5E0C(a1, a2);
    sub_1B01E6CF8(a1, a2);
    v10 = &a2[2 * *a2];
    sub_1B01E5E0C(a1, a2);
    v11 = *a2;
    result = sub_1B01E0240(a1, a2);
    if (!result)
    {
      sub_1B01DBAB4(a1, a2);
      v12 = *a2;
      sub_1B01DBAB4(a1, a2);
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1B01DDAD8(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 *a7, int a8, unsigned __int8 *a9)
{
  *a9 = 0;
  *(a9 + 1) = 0;
  v16 = a2 + 3;
  v17 = *a2;
  v18 = sub_1B01E18B0(*a2, a2 + 3);
  v19 = v18 >= a6;
  if (a8 != 2110636126)
  {
    v19 = v18 == a6;
  }

  if (v19)
  {
    v26 = a3;
    v27 = a5;
    v20 = *(a1 + 16);
    v21 = (*(a1 + 24))(a1, v17);
    v22 = (*(a1 + 24))(a1, v17);
    sub_1B01E5B5C(8 * (*(a1 + 16) - v20), (*a1 + 8 * v20));
    v23 = sub_1B01E18B0(v17, v16);
    if (sub_1B01E1368(v17, v21, a6, a7))
    {
      v24 = -23;
    }

    else
    {
      v29 = sub_1B01E23C4(a1, a2);
      if (v29)
      {
LABEL_9:
        *(a1 + 16) = v20;
        return v29;
      }

      sub_1B01E4E2C(v17, v22);
      if (sub_1B01E1D08(v23, &v22[v17] - v23, a4, v27, v26, a9))
      {
        v24 = -146;
      }

      else
      {
        v24 = a9[8] ^ a9[4] ^ a9[3] ^ a9[13] ^ 0x89 ^ a9[15] ^ a9[10] ^ a9[1] ^ a9[11] ^ a9[14] ^ a9[6] ^ a9[2] ^ a9[9] ^ a9[12] ^ *a9 ^ a9[7] ^ a9[5];
      }
    }

    v29 = v24;
    goto LABEL_9;
  }

  return 4294967273;
}

uint64_t sub_1B01DDD64(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unint64_t a5, uint64_t *a6)
{
  v12 = a2 + 4;
  if (sub_1B01DFC08(&a2[5 * *a2 + 4]) < a5)
  {
    return 4294967289;
  }

  v58 = a3;
  __src = a4;
  v61 = v12;
  v14 = *a2;
  v15 = (a5 + 63) >> 6;
  v60 = *(a1 + 16);
  v16 = 3 * *a2;
  v17 = (*(a1 + 24))(a1, v16);
  v18 = (*(a1 + 24))(a1, v14);
  v62 = sub_1B01E1274(v14, a6) == 0;
  if (a5 + 63 >= 0x40)
  {
    sub_1B01E136C((a5 + 63) >> 6, v18, a4);
  }

  sub_1B01E4E14(v14 - v15, v18 + 8 * v15);
  v18->i64[v15 - 1] &= 0xFFFFFFFFFFFFFFFFLL >> -a5;
  v57 = (a5 + 63) >> 6;
  v64 = v18;
  sub_1B01E1380(v57, v18, v18, v62);
  sub_1B01DC5E0(a1, a2);
  sub_1B01E0764(3 * v14, !v62, v17, a6, v17);
  if (!sub_1B01E1274(v14, v17))
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (sub_1B01DFC08(&v61[5 * *a2]) >= a5)
  {
    v19 = *a2;
    if (sub_1B01E1274(*a2, v17))
    {
      v54 = v16;
      v52 = *(a1 + 16);
      v20 = (*(a1 + 24))(a1, 2 * v19);
      v21 = (*(a1 + 24))(a1, 2 * v19);
      v63 = 2 * v19;
      v22 = (*(a1 + 24))(a1, 2 * v19);
      v23 = *a2;
      v49 = *(a1 + 16);
      __dst = v22;
      (*(a1 + 24))(a1, *a2);
      v56 = v19;
      (*(a1 + 24))(a1, v23);
      (*(a1 + 24))(a1, v23);
      sub_1B01E6C4C(a1, a2);
      sub_1B01E5E0C(a1, a2);
      sub_1B01E5E0C(a1, a2);
      v24 = *a2;
      sub_1B01E6C4C(a1, a2);
      sub_1B01E6C4C(a1, a2);
      sub_1B01E5E0C(a1, a2);
      sub_1B01E5E0C(a1, a2);
      sub_1B01E6CF8(a1, a2);
      v25 = *a2;
      sub_1B01E6C4C(a1, a2);
      sub_1B01E5E0C(a1, a2);
      sub_1B01E5E0C(a1, a2);
      v53 = v17;
      sub_1B01E69D4(a1, a2);
      sub_1B01E6C4C(a1, a2);
      sub_1B01E6CF8(a1, a2);
      sub_1B01E6CF8(a1, a2);
      v26 = a1;
      v27 = a1;
      v28 = v20;
      sub_1B01E6CF8(v26, a2);
      sub_1B01E69D4(v27, a2);
      sub_1B01E6C4C(v27, a2);
      sub_1B01E5E0C(v27, a2);
      sub_1B01E6CF8(v27, a2);
      v29 = v18;
      v30 = *(v18->u64 + (((a5 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
      v55 = v27;
      *(v27 + 16) = v49;
      v31 = (v30 >> (a5 - 1)) & 1;
      v32 = !((v30 >> (a5 - 1)) & 1);
      v33 = &v21[v56];
      v34 = a5 - 2;
      if (v34)
      {
        v35 = v31;
        do
        {
          v36 = v31;
          v31 = (*(v29->i64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1;
          sub_1B01DB9EC(a2, v32, v33, v33);
          sub_1B01DB0B0(v63, v31 ^ v36 | v35 ^ 1, v28, v21);
          sub_1B01DE594(v55, a2);
          sub_1B01DE7E4(v55, a2);
          LOBYTE(v32) = v31 & (v35 ^ 1);
          v29 = v18;
          v35 |= v31;
          --v34;
        }

        while (v34);
        v50 = v35 ^ 1;
      }

      else
      {
        v50 = v32;
      }

      sub_1B01DB9EC(a2, v32, v33, v33);
      sub_1B01DB0B0(v63, v29->i8[0] & 1 ^ v31, v28, v21);
      sub_1B01DE594(v55, a2);
      sub_1B01E136C(v63, __dst, v21);
      v37 = v29->i64[0];
      sub_1B01DB0B0(v63, v29->i8[0] & 1, v28, v21);
      v38 = *a2;
      v39 = v28;
      a1 = v55;
      v40 = v58;
      v48 = *(v55 + 16);
      sub_1B01E6CF8(v55, a2);
      sub_1B01E69D4(v55, a2);
      sub_1B01E69D4(v55, a2);
      v41 = *a2;
      sub_1B01E69D4(v55, a2);
      v42 = *a2;
      sub_1B01E69D4(v55, a2);
      sub_1B01E6C4C(v55, a2);
      sub_1B01E69D4(v55, a2);
      *(v55 + 16) = v48;
      sub_1B01DB0B0(v63, v37 & 1, v39, v21);
      sub_1B01DE7E4(v55, a2);
      sub_1B01E0764(v63, v37 & 1, v39, v21, v39);
      sub_1B01E69D4(v55, a2);
      v43 = *a2;
      sub_1B01E69D4(v55, a2);
      v44 = sub_1B01E6C58(&v61[5 * *a2]);
      sub_1B01E1880(v56, __dst, v44, 1uLL);
      v45 = (sub_1B01DFD24(v57, v64, v56, __dst) & 1) == 0;
      v46 = sub_1B01E03F0(a2, v53);
      sub_1B01E0764(3 * v56, v50 | v46 | v45, v40, v53, v40);
      sub_1B01DB9EC(a2, v45, &v40[*a2], &v40[*a2]);
      v47 = v50 & ~v64->i32[0];
      sub_1B01E4520(v56, v50 & ~v64->i8[0] & 1, &v58[2 * *a2]);
      sub_1B01E4E1C(v56, v39, 1);
      sub_1B01DB63C(v55, a2);
      sub_1B01E0764(v56, v47 & 1, v40, v39, v40);
      sub_1B01E0764(v56, v47 & 1, &v40[*a2], v39, &v40[*a2]);
      *(v55 + 16) = v52;
      sub_1B01DD460(v55, a2);
      sub_1B01E0764(v54, *__src & v62, v40, v53, v40);
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  result = 4294967289;
LABEL_16:
  *(a1 + 16) = v60;
  return result;
}

uint64_t sub_1B01DE594(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  result = sub_1B01E6CF8(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1B01DE7E4(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  result = sub_1B01E6CF8(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1B01DE9A0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4 + *a2) >> 64;
    *a2++ += v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = *a2 + __PAIR128__(v7 * a4, v4);
    v9 = v8 + v6 * a4;
    v4 = (__CFADD__(__CFADD__(v8, v6 * a4), *(&v8 + 1)) | __CFADD__((v6 * a4) >> 64, *(&v9 + 1))) + (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v9;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v10 = a1 < 4;
    a1 -= 4;
    if (v10)
    {
      break;
    }

    v11 = a2[2];
    v12 = a2[3];
    v14 = *a3;
    v15 = a3[1];
    v13 = a3 + 2;
    v16 = *v13;
    v17 = v13[1];
    a3 = v13 + 2;
    v18 = (v15 * a4) >> 64;
    v19 = *a2 + __PAIR128__(v15 * a4, v4);
    v20 = __CFADD__(__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1)), v11);
    v21 = (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1))) + v11;
    v20 |= __CFADD__(v18, v21);
    v21 += v18;
    v23 = v20;
    v20 = __CFADD__(v20, v12);
    v22 = v23 + v12;
    v20 |= __CFADD__(v17 * a4, v22);
    v22 += v17 * a4;
    v24 = v20 + ((v17 * a4) >> 64);
    v25 = v19 + v14 * a4;
    *a2 = v25;
    v26 = a2 + 2;
    v27 = (v16 * a4) >> 64;
    v29 = __CFADD__(__CFADD__(v19, v14 * a4), *(&v19 + 1)) | __CFADD__((v14 * a4) >> 64, *(&v25 + 1));
    v20 = __CFADD__(v29, v21);
    v28 = v29 + v21;
    v31 = v20 | __CFADD__(v16 * a4, v28);
    v20 = __CFADD__(v31, v22);
    v30 = v31 + v22;
    v4 = (v20 | __CFADD__(v27, v30)) + v24;
    *v26 = v16 * a4 + v28;
    v26[1] = v27 + v30;
    a2 = v26 + 2;
  }

  return v4;
}

unsigned int (**sub_1B01DEA84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t)))(void, unint64_t, uint64_t)
{
  v5 = a5;
  v9 = *(a1 + 16);
  if (a5)
  {
    v10 = sub_1B01DFC08(a2);
    sub_1B01F5AB4(v10 - 1, a3 + 16 * *a2, v5);
    v5 = v11;
    sub_1B01E4DE4(a3 + 16 * *a2, v10 - 2, 1);
    v12 = *a2;
    sub_1B01E6C4C(a1, a2);
    v13 = *a2;
    sub_1B01E69D4(a1, a2);
    sub_1B01E69D4(a1, a2);
    v14 = *a2;
    sub_1B01E69D4(a1, a2);
  }

  else
  {
    sub_1B01E4E1C(*a2, (a3 + 16 * *a2), 1);
    sub_1B01DB63C(a1, a2);
    v16 = *a2;
  }

  sub_1B01DB63C(a1, a2);
  v15 = *a2;
  sub_1B01DB63C(a1, a2);
  *(a1 + 16) = v9;
  return v5;
}

uint64_t sub_1B01DEBFC(uint64_t a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, char *a7)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v32 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v12);
  v13 = (*(a1 + 24))(a1, v12);
  v33 = 3 * v12;
  v14 = (*(a1 + 24))(a1, 12 * v12);
  v15 = v14 + 48 * v12;
  v34 = v14;
  v16 = v14 + 72 * v12;
  sub_1B01DD460(a1, a2);
  sub_1B01DD528(a1, a2, v16, a5, a7);
  v17 = *a2;
  sub_1B01E69D4(a1, a2);
  v18 = *a2;
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  v31 = sub_1B01DFBF4(a1, a2);
  if (!v31)
  {
    v19 = *a2;
    sub_1B01DEFC4(a1, a2);
    v20 = *a2;
    sub_1B01DEFC4(a1, a2);
    v21 = *a2;
    sub_1B01DEFC4(a1, a2);
    v22 = *a2;
    sub_1B01DEFC4(a1, a2);
    sub_1B01E4E1C(v12, v13, 1);
    v23 = *a2;
    sub_1B01DB63C(a1, a2);
    sub_1B01E136C(v12, (v34 + 24 * v12 + 16 * *a2), (v34 + 16 * *a2));
    sub_1B01E136C(v12, (v15 + 16 * *a2), (v34 + 16 * *a2));
    sub_1B01E136C(v12, (v16 + 16 * *a2), (v34 + 16 * *a2));
    v24 = sub_1B01E0A20(v12, a4);
    v25 = sub_1B01E0A20(v12, a6);
    v35[1] = 0;
    v35[2] = 0;
    if (v24 <= v25)
    {
      v24 = v25;
    }

    v35[0] = 0;
    sub_1B01E0418(v35, v24, a4, a6);
    sub_1B01E136C(v12, a3, (v34 + 16 * *a2));
    sub_1B01E136C(v12, &a3[8 * *a2], (v34 + 16 * *a2));
    sub_1B01E5B5C(8 * v12, &a3[16 * *a2]);
    for (; v24 != -1; --v24)
    {
      sub_1B01DC5E0(a1, a2);
      v36[0] = 0;
      sub_1B01E04A0(v35, v24, v36);
      if (v36[0])
      {
        v26 = (v34 + 8 * sub_1B01E0588(v36) * v33);
        if (sub_1B01E05A4(v36) == 1)
        {
          sub_1B01DCBFC(a1, a2, a3, a3, v26);
        }

        else
        {
          sub_1B01DD46C(a1, a2, a3, a3, v26);
        }
      }
    }
  }

  *(a1 + 16) = v32;
  v27 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1B01DEFC4(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E69D4(a1, a2);
  v6 = *a2;
  result = sub_1B01E69D4(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1B01DF0D8(unint64_t **a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, BOOL *a6)
{
  v21 = sub_1B01E4F24();
  *a6 = 0;
  v12 = sub_1B01E6D10(376 * **a1);
  v13 = 47 * **a1;
  v19[0] = v12;
  v19[1] = v13;
  v19[2] = 0;
  v19[3] = sub_1B01E6D4C;
  v20 = sub_1B01E6D94;
  if (v12)
  {
    v16 = sub_1B01DF1E0(v19, a1, a2, a3, a4, a5, 0);
    v20(v19);
    if (v16 == -146)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = v16 == 0;
    if (v16)
    {
      v14 = v17;
    }

    else
    {
      v14 = 0;
    }

    *a6 = v18;
  }

  else
  {
    v14 = 4294967283;
  }

  sub_1B01E6E24(&v21);
  return v14;
}

uint64_t sub_1B01DF1E0(uint64_t a1, unint64_t **a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, unsigned __int8 *a6, void *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v20 = 0uLL;
  v13 = **a2;
  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v13);
  v16 = (*(a1 + 24))(a1, v13);
  if (sub_1B01E1E98(v13, v15, v16, a6, &a6[a5]) == &a6[a5])
  {
    result = sub_1B01E54B8(a1, a2, a3, a4, v15, v16, &v20);
    if (a7 && !result)
    {
      *a7 = v20;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v14;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01DF308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = sub_1B01E4F24();
  v4 = v3 != 0;
  sub_1B01E6E24(&v6);
  return v4;
}

uint64_t sub_1B01DF37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1B01E4F24();
  v6 = sub_1B01DF308(a1, a2, a3);
  sub_1B01E6E24(&v8);
  return v6;
}

uint64_t sub_1B01DF3DC(uint64_t a1)
{
  if (a1 <= 64)
  {
    if (a1 == 49)
    {
      return 192;
    }

    if (a1 == 57)
    {
      return 224;
    }
  }

  else
  {
    switch(a1)
    {
      case 65:
        return 256;
      case 97:
        return 384;
      case 133:
        return 521;
    }
  }

  return 0;
}

uint64_t sub_1B01DF43C(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  if (!a3)
  {
    return 4294967289;
  }

  if (a3 == 1)
  {
    v10 = *a4;
    if (!*a4)
    {
      return 4294967136;
    }
  }

  else
  {
    v10 = *a4;
  }

  v12 = v10 - 2;
  if (v12 > 5 || ((0x37u >> v12) & 1) == 0)
  {
    return 4294967289;
  }

  v13 = dword_1B01FEDE8[v12];
  v14 = *(a1 + 16);
  *a5 = a2;
  result = sub_1B01F5B8C(a1, a2, v13, a3, a4, a5 + 2);
  if (!result)
  {
    sub_1B01E4E1C(*a2, &a5[2 * **a5 + 2], 1);
    v15 = (*(a1 + 24))(a1, 3 * *a2);
    result = sub_1B01F5E0C(a1, a2, v15, (a5 + 2));
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_1B01DF540(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v8 = sub_1B01E6D10(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = sub_1B01E6D4C;
  v13 = sub_1B01E6D94;
  if (!v8)
  {
    return 4294967283;
  }

  v10 = sub_1B01DF43C(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

BOOL sub_1B01DF5F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *a3++;
      *v3++ = ~v5;
      --v4;
    }

    while (v4);
  }

  return sub_1B01E0744(0, a1, a2, a2, 1);
}

uint64_t sub_1B01DF630(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = sub_1B01DFC00(a2);
  v8 = sub_1B01E6C58(v6);
  v9 = v7;
  if ((sub_1B01E0A24(v7, a4, v8) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  __s = a3;
  v11 = v7 << 7;
  v12 = a1;
  v39 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v7);
  v14 = (*(v12 + 24))(v12, v9);
  v49 = v13;
  sub_1B01DBAB4(a1, v6);
  v15 = sub_1B01E6C58(v6);
  sub_1B01E136C(v9, v14, v15);
  v16 = (*(v12 + 24))(v12, v9);
  v17 = (*(v12 + 24))(v12, v9);
  v44 = v16;
  sub_1B01E4E1C(v9, v16, 1);
  __n = 8 * v9;
  v45 = v17;
  sub_1B01E5B5C(8 * v9, v17);
  __src = (*(v12 + 24))(v12, v9);
  if (v11)
  {
    v18 = 0;
    v19 = ((v11 | 0x1EuLL) * 0x842108421084211uLL) >> 64;
    v20 = (v19 + (((v11 | 0x1EuLL) - v19) >> 1)) >> 4;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v42 = v20;
    v43 = v6;
    v41 = v14;
    do
    {
      v47 = v18;
      v50 = 0;
      v51 = 0;
      sub_1B01E0BFC(v9, v49, &v51, v14, &v50);
      v21 = 0;
      v22 = 0;
      LOBYTE(v23) = v51;
      v24 = 31;
      v25 = 0x80000000;
      v26 = 0x80000000;
      do
      {
        v27 = v23 & 1;
        v28 = -v27;
        v51 >>= 1 - v27;
        v29 = -((((v51 - v50) ^ v51 | v50 ^ v51) ^ v51) >> 63) & -v27;
        v30 = v51 & ~v29 | v50 & v29;
        v50 ^= v51 ^ v30;
        v31 = v26 & ~v29 | v29 & v22;
        v22 ^= v26 ^ v31;
        v32 = v21 & ~v29 | v29 & v25;
        v25 ^= v21 ^ v32;
        v23 = (v30 - (v50 & -v27)) >> v27;
        v51 = v23;
        v26 = (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1);
        v21 = (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1);
        --v24;
      }

      while (v24);
      v33 = v9;
      v34 = sub_1B01E0CB8(a1, v9, __src, v49, (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1), v14, (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1));
      v35 = sub_1B01E0CB8(a1, v33, v14, v49, v22, v14, v25);
      sub_1B01E136C(v33, v49, __src);
      v36 = -v34 & -v26;
      v37 = (v34 - 1) & v26;
      v6 = v43;
      sub_1B01DFA28(a1, v43, __src, v44, v37 | v36, v45, (v34 - 1) & v21 | -v34 & -v21);
      v14 = v41;
      sub_1B01DFA28(a1, v43, v45, v44, (v35 - 1) & v22 | -v35 & -v22, v45, (v35 - 1) & v25 | -v35 & -v25);
      v9 = v33;
      sub_1B01E136C(v33, v44, __src);
      v18 = v47 + 1;
    }

    while (v47 + 1 != v42);
  }

  if (sub_1B01E1274(v9, v14) == 1 && *v14 == 1)
  {
    sub_1B01DB63C(a1, v6);
    result = 0;
  }

  else
  {
    sub_1B01E5B5C(__n, __s);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
  return result;
}

uint64_t sub_1B01DFA28(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v11 = sub_1B01DFC00(a2);
  v22 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v11 + 1);
  v13 = (*(a1 + 24))(a1, v11);
  sub_1B01DB9EC(a2, a5 < 0, v12->i64, a4);
  sub_1B01DB9EC(a2, a7 < 0, v13, a6);
  v12->i64[v11] = sub_1B01E1270(v11, v12, v12, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  v12->i64[v11] += sub_1B01DF5F4(v11, v12, v13, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v14 = sub_1B01E6C58(a2);
  v12->i64[v11] += sub_1B01DF5F4(v11, v12, v14, (LODWORD(a2[*a2 + 3]) * v12->i32[0]) & 0x7FFFFFFF);
  sub_1B01E1380(v11 + 1, v12, v12, 31);
  sub_1B01E136C(v11, a3, v12);
  v15 = sub_1B01E6C58(a2);
  v16 = sub_1B01E1EEC(v11 + 1, v12, v12->i64, v11, v15);
  result = sub_1B01E0764(v11, v16, a3, a3, v12->i64);
  *(a1 + 16) = v22;
  return result;
}

uint64_t sub_1B01DFC10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result *= -8;
    v4 = (a2 - result);
    v5 = a3 - result;
    v6 = a4 - result;
    v7 = result;
    v8 = result;
    v9 = 0;
    v10 = *(v6 + result);
    do
    {
      v11 = *(v5 + v8) * v10 + v9;
      *(v4 + v8) = v11;
      v9 = *(&v11 + 1);
      v8 += 8;
    }

    while (v8);
    while (1)
    {
      *v4 = v9;
      v7 += 8;
      if (!v7)
      {
        break;
      }

      ++v4;
      v12 = result;
      v9 = 0;
      v13 = *(v6 + v7);
      do
      {
        v14 = *(v5 + v12) * v13 + v9 + *(v4 + v12);
        *(v4 + v12) = v14;
        v9 = *(&v14 + 1);
        v12 += 8;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t sub_1B01DFCBC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  if (a1 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 < a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B01E0A24(v4, a2, a4);
  if (sub_1B01E1274(v6 - v4, (v5 + 8 * v4)))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1B01DFD28(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, uint64_t *a6, void *a7)
{
  v12 = sub_1B01DFC00(a2);
  v25 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  v16 = (*(a1 + 24))(a1, v12);
  v24 = a4;
  result = sub_1B01E07E4(a1, a2, a3, a4, a6);
  v18 = v25;
  if (!result)
  {
    sub_1B01E4E1C(v12, v16, 1);
    v27 = v16;
    sub_1B01DB63C(a1, a2);
    sub_1B01E136C(v12, v15, a7);
    sub_1B01E6C4C(a1, a2);
    sub_1B01E69D4(a1, a2);
    sub_1B01E69D4(a1, a2);
    v19 = a5 - 2;
    if (a5 >= 2)
    {
      while (1)
      {
        sub_1B01E136C(v12, v14, v13);
        --a5;
        v20 = v19;
        if (a5 < 2)
        {
          break;
        }

        do
        {
          sub_1B01E6C4C(a1, a2);
          --v20;
        }

        while (v20);
        v21 = sub_1B01E0A24(v12, v14, v27) & 1;
        sub_1B01E69D4(a1, a2);
        sub_1B01E0764(v12, v21, a3, v14, a3);
        sub_1B01E6C4C(a1, a2);
        sub_1B01E69D4(a1, a2);
        sub_1B01E0764(v12, v21, v13, v14, v13);
        --v19;
      }

      v22 = sub_1B01E0A24(v12, v14, v27) & 1;
      sub_1B01E69D4(a1, a2);
      sub_1B01E0764(v12, v22, a3, v14, a3);
      sub_1B01E6C4C(a1, a2);
      sub_1B01E69D4(a1, a2);
      sub_1B01E0764(v12, v22, v13, v14, v13);
    }

    sub_1B01E6C4C(a1, a2);
    if (sub_1B01E0A24(v12, v14, v24))
    {
      result = 4294967289;
    }

    else
    {
      result = 0;
    }

    v18 = v25;
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t sub_1B01E0028(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = ~*sub_1B01E6C58(a2) & 3;
  v9 = sub_1B01DFC00(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v9);
  v12 = sub_1B01E6C58(a2);
  if (v8)
  {
    sub_1B01E136C(v9, v11, v12);
    v11->i64[0] &= ~1uLL;
    v14 = sub_1B01E4FA8(v9, v11);
    sub_1B01E138C(v9, v11, v11, v14);
    v15 = (*(a1 + 24))(a1, v9);
    sub_1B01E1880(v9, v15, v11, 1uLL);
    sub_1B01E1380(v9, v15, v15, 1);
    v16 = (*(a1 + 24))(a1, v9);
    sub_1B01E4E1C(v9, v16, 1);
    while (!sub_1B01E5C1C(a1, a2, v16))
    {
      sub_1B01E0744(a1, v9, v16, v16, 1);
    }

    result = sub_1B01E07E4(a1, a2, v16, v16, v11->i64);
    if (!result)
    {
      result = sub_1B01DFD28(a1, a2, a3, a4, v14, v15->i64, v16);
    }
  }

  else
  {
    sub_1B01E0744(a1, v9, v11, v12, 1);
    sub_1B01E1380(v9, v11, v11, 2);
    result = sub_1B01E07E4(a1, a2, a3, a4, v11->i64);
    if (!result)
    {
      sub_1B01E6C4C(a1, a2);
      if (sub_1B01E0A24(v9, v11, a4))
      {
        result = 4294967289;
      }

      else
      {
        result = 0;
      }
    }
  }

  *(a1 + 16) = v10;
  return result;
}

BOOL sub_1B01E024C(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  v8 = *a2;
  sub_1B01E6C4C(a1, a2);
  v9 = &a2[2 * *a2];
  sub_1B01E69D4(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E5E0C(a1, a2);
  sub_1B01E6CF8(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E6C4C(a1, a2);
  sub_1B01E69D4(a1, a2);
  sub_1B01E5E0C(a1, a2);
  v10 = *a2;
  sub_1B01E6C4C(a1, a2);
  result = sub_1B01E0A24(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1B01E0418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(result + 8) = a3;
  *(result + 16) = a4;
  v5 = 1;
  do
  {
    v6 = v5;
    *(result + v4) = (8 * ((*(a3 + 8 * ((a2 - 1) >> 6)) >> ((a2 - 1) & 0x3F)) & 1)) | (4 * ((*(a3 + 8 * ((a2 - 2) >> 6)) >> ((a2 - 2) & 0x3F)) & 1)) | (2 * ((*(a3 + 8 * ((a2 - 3) >> 6)) >> ((a2 - 3) & 0x3F)) & 1)) | (*(a3 + 8 * ((a2 - 4) >> 6)) >> ((a2 - 4) & 0x3F)) & 1;
    a3 = a4;
    v4 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t sub_1B01E04A0(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v12 = 0;
  if ((*result & 0x20) != 0)
  {
    v4 = *result & 0x1F ^ 0x1F;
  }

  else
  {
    v4 = *result & 0x1F;
  }

  LOBYTE(v12) = v4;
  if ((*(result + 1) & 0x20) != 0)
  {
    v5 = *(result + 1) & 0x1F ^ 0x1F;
  }

  else
  {
    v5 = *(result + 1) & 0x1F;
  }

  HIBYTE(v12) = v5;
  v11 = *(result + 8);
  v6 = &v11;
  v7 = 1;
  do
  {
    v8 = v7;
    if (a2 < 5)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = (*(*v6 + 8 * ((a2 - 5) >> 6)) >> ((a2 - 5) & 0x3F)) & 1;
    }

    if (*(&v12 + v3) >= byte_1B01FEE00[*(&v12 + (v3 ^ 1))])
    {
      LOBYTE(v9) = v9 | 0x20;
      if ((*(result + v3) & 0x20) != 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = 0;
    *(a3 + 4 * v3) = v10;
    *(result + v3) = v9 ^ (2 * *(result + v3));
    v6 = (&v11 + 8);
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_1B01E05A4(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    if (!result && a1[1] == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B01E05E8()
{
  if (qword_1EB6D0228 != -1)
  {
    sub_1B01E0658();
  }

  return qword_1EB6D0220;
}

os_log_t sub_1B01E0620(os_log_t *a1)
{
  result = os_log_create("com.apple.corecrypto", "default");
  *a1 = result;
  return result;
}

BOOL sub_1B01E068C(_BOOL8 result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = __CFADD__(v5, v7);
      *a2++ = v5 + v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4 + v8;
      v4 = __CFADD__(v4, v8) | __CFADD__(v10, v13);
      v12 = v10 + v13;
      v14 = v4 + v9;
      v4 = __CFADD__(v4, v9) | __CFADD__(v11, v14);
      *a2 = v12;
      a2[1] = v11 + v14;
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = a4 + 2;
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4 + v18;
        v4 = __CFADD__(v4, v18) | __CFADD__(v21, v30);
        v29 = v21 + v30;
        v32 = v4 + v19;
        v4 = __CFADD__(v4, v19) | __CFADD__(v22, v32);
        v31 = v22 + v32;
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4 + v24;
        v4 = __CFADD__(v4, v24) | __CFADD__(v27, v35);
        v34 = v27 + v35;
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4 + v25;
        v4 = __CFADD__(v4, v25) | __CFADD__(v28, v37);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v28 + v37;
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4 + v18;
      v4 = __CFADD__(v4, v18) | __CFADD__(v21, v40);
      v39 = v21 + v40;
      v42 = v4 + v19;
      v4 = __CFADD__(v4, v19) | __CFADD__(v22, v42);
      v41 = v22 + v42;
      v44 = v4 + v24;
      v4 = __CFADD__(v4, v24) | __CFADD__(v27, v44);
      v43 = v27 + v44;
      v45 = v4 + v25;
      v4 = __CFADD__(v4, v25) | __CFADD__(v28, v45);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v28 + v45;
    }

    return v4;
  }

  return result;
}

BOOL sub_1B01E0744(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    return sub_1B01E19E0(a2, a3, a4, a5);
  }

  else
  {
    return a5;
  }
}

uint64_t sub_1B01E0764(uint64_t result, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = qword_1EB6CFEB8 ^ (qword_1EB6CFEB8 << 13) ^ ((qword_1EB6CFEB8 ^ (qword_1EB6CFEB8 << 13)) >> 7);
  v6 = v5 ^ (v5 << 17);
  qword_1EB6CFEB8 = v6;
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * v6)); result; --result)
  {
    v9 = *a4++;
    v8 = v9;
    v10 = *a5++;
    *a3 = v10 ^ v6;
    *a3++ = (v10 ^ v8) & 0x5555555555555555 ^ v10 ^ v6 ^ (v10 ^ v8) & i ^ v6;
  }

  return result;
}

uint64_t sub_1B01E07C8()
{
  v0 = qword_1EB6CFEB8 ^ (qword_1EB6CFEB8 << 13) ^ ((qword_1EB6CFEB8 ^ (qword_1EB6CFEB8 << 13)) >> 7);
  result = v0 ^ (v0 << 17);
  qword_1EB6CFEB8 = result;
  return result;
}

uint64_t sub_1B01E07E4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v10 = sub_1B01DFC00(a2);
  v11 = sub_1B01E0A20(v10, a5);
  if (v11)
  {
    v12 = v11;
    v17 = *(a1 + 16);
    v13 = (*(a1 + 24))(a1, 3 * v10);
    sub_1B01E136C(v10, v13, a4);
    sub_1B01E6C4C(a1, a2);
    sub_1B01E69D4(a1, a2);
    v14 = (*(a5 + (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 - 1)) & 1;
    if ((v12 & 1) == 0)
    {
      v14 = (*(a5 + (((v12 - 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v12 - 2) & 0x3E)) & 1 | (2 * v14);
    }

    sub_1B01E136C(v10, a3, &v13[8 * (v14 - 1) * v10]);
    if ((v12 | 0xFFFFFFFFFFFFFFFELL) + v12)
    {
      v15 = v12 + (v12 | 0xFFFFFFFFFFFFFFFELL) - 1;
      do
      {
        sub_1B01E6C4C(a1, a2);
        sub_1B01E6C4C(a1, a2);
        if ((*(a5 + (((v15 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 - 1)) & 1 | (2 * ((*(a5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1)))
        {
          sub_1B01E69D4(a1, a2);
        }

        v15 -= 2;
      }

      while (v15 != -1);
    }

    *(a1 + 16) = v17;
  }

  else
  {
    sub_1B01E4E1C(v10, a3, 1);
    sub_1B01DB63C(a1, a2);
  }

  return 0;
}

unint64_t sub_1B01E09D4(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = 64;
    do
    {
      v4 = *a2++;
      v2 = (v3 - __clz(v4 | 1)) & -(v4 != 0) | (v4 != 0 ? 0 : v2);
      v3 += 64;
      --a1;
    }

    while (a1);
  }

  return v2;
}

unint64_t *sub_1B01E0A28(unint64_t *result, int8x16_t _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, __n128 _Q4, __n128 _Q5, __n128 _Q6, __n128 _Q7)
{
  _Q0.i64[0] = *result;
  _Q1.n128_u64[0] = result[1];
  _Q2.n128_u64[0] = result[2];
  _Q3.n128_u64[0] = result[3];
  _Q4.n128_u64[0] = result[4];
  _Q5.n128_u64[0] = result[5];
  _Q6.n128_u64[0] = result[6];
  _Q7.n128_u64[0] = result[7];
  *&_Q8 = result[8];
  *&_Q9 = result[9];
  *&_Q10 = result[10];
  *&_Q11 = result[11];
  *&_Q12 = result[12];
  *&_Q13 = result[13];
  *&_Q14 = result[14];
  *&_Q15 = result[15];
  *&_Q16 = result[16];
  *&_Q17 = result[17];
  *&_Q18 = result[18];
  *&_Q19 = result[19];
  *&_Q20 = result[20];
  *&_Q21 = result[21];
  *&_Q22 = result[22];
  *&_Q23 = result[23];
  *&_Q24 = result[24];
  v26 = 0;
  v27 = &qword_1B01FEE20;
  do
  {
    __asm
    {
      EOR3            V25.16B, V0.16B, V5.16B, V10.16B
      EOR3            V26.16B, V1.16B, V6.16B, V11.16B
      EOR3            V27.16B, V2.16B, V7.16B, V12.16B
      EOR3            V28.16B, V3.16B, V8.16B, V13.16B
      EOR3            V29.16B, V4.16B, V9.16B, V14.16B
      EOR3            V25.16B, V25.16B, V15.16B, V20.16B
      EOR3            V26.16B, V26.16B, V16.16B, V21.16B
      EOR3            V27.16B, V27.16B, V17.16B, V22.16B
      EOR3            V28.16B, V28.16B, V18.16B, V23.16B
      EOR3            V29.16B, V29.16B, V19.16B, V24.16B
      RAX1            V30.2D, V25.2D, V27.2D
      RAX1            V31.2D, V26.2D, V28.2D
      RAX1            V27.2D, V27.2D, V29.2D
      RAX1            V28.2D, V28.2D, V25.2D
      RAX1            V29.2D, V29.2D, V26.2D
      XAR             V25.2D, V1.2D, V30.2D, #0x3F ; '?'
      XAR             V1.2D, V6.2D, V30.2D, #0x14
      XAR             V6.2D, V9.2D, V28.2D, #0x2C ; ','
      XAR             V9.2D, V22.2D, V31.2D, #3
      XAR             V22.2D, V14.2D, V28.2D, #0x19
      XAR             V14.2D, V20.2D, V29.2D, #0x2E ; '.'
      XAR             V20.2D, V2.2D, V31.2D, #2
      XAR             V2.2D, V12.2D, V31.2D, #0x15
      XAR             V12.2D, V13.2D, V27.2D, #0x27 ; '''
      XAR             V13.2D, V19.2D, V28.2D, #0x38 ; '8'
      XAR             V19.2D, V23.2D, V27.2D, #8
      XAR             V23.2D, V15.2D, V29.2D, #0x17
      XAR             V15.2D, V4.2D, V28.2D, #0x25 ; '%'
      XAR             V26.2D, V21.2D, V30.2D, #0x3E ; '>'
      XAR             V8.2D, V8.2D, V27.2D, #9
    }

    _Q0 = veorq_s8(_Q0, _Q29);
    __asm
    {
      BCAX            V21.16B, V8.16B, V23.16B, V22.16B
      XAR             V28.2D, V24.2D, V28.2D, #0x32 ; '2'
      BCAX            V24.16B, V26.16B, V8.16B, V20.16B
      XAR             V18.2D, V18.2D, V27.2D, #0x2B ; '+'
      BCAX            V23.16B, V23.16B, V20.16B, V26.16B
      XAR             V11.2D, V11.2D, V30.2D, #0x36 ; '6'
      BCAX            V20.16B, V20.16B, V22.16B, V8.16B
      XAR             V30.2D, V16.2D, V30.2D, #0x13
      BCAX            V22.16B, V22.16B, V26.16B, V23.16B
      XAR             V16.2D, V5.2D, V29.2D, #0x1C
      XAR             V27.2D, V3.2D, V27.2D, #0x24 ; '$'
      BCAX            V3.16B, V18.16B, V0.16B, V28.16B
      XAR             V29.2D, V10.2D, V29.2D, #0x3D ; '='
      BCAX            V4.16B, V28.16B, V1.16B, V0.16B
      XAR             V10.2D, V17.2D, V31.2D, #0x31 ; '1'
      BCAX            V0.16B, V0.16B, V2.16B, V1.16B
      XAR             V7.2D, V7.2D, V31.2D, #0x3A ; ':'
      BCAX            V1.16B, V1.16B, V18.16B, V2.16B
      BCAX            V2.16B, V2.16B, V28.16B, V18.16B
      BCAX            V17.16B, V11.16B, V19.16B, V10.16B
      BCAX            V18.16B, V10.16B, V15.16B, V19.16B
      BCAX            V19.16B, V19.16B, V16.16B, V15.16B
      BCAX            V15.16B, V15.16B, V11.16B, V16.16B
      BCAX            V16.16B, V16.16B, V10.16B, V11.16B
      BCAX            V10.16B, V25.16B, V12.16B, V7.16B
      BCAX            V11.16B, V7.16B, V13.16B, V12.16B
      BCAX            V12.16B, V12.16B, V14.16B, V13.16B
      BCAX            V13.16B, V13.16B, V25.16B, V14.16B
      BCAX            V14.16B, V14.16B, V7.16B, V25.16B
    }

    *&_Q26 = *v27;
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v27;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v26 += 8;
    *_Q0.i8 = veor_s8(*_Q0.i8, *&_Q26);
  }

  while (v26 != 192);
  *result = _Q0.i64[0];
  result[1] = _Q1.n128_u64[0];
  result[2] = _Q2.n128_u64[0];
  result[3] = _Q3.n128_u64[0];
  result[4] = _Q4.n128_u64[0];
  result[5] = _Q5.n128_u64[0];
  result[6] = _Q6.n128_u64[0];
  result[7] = _Q7.n128_u64[0];
  result[8] = _Q8;
  result[9] = _Q9;
  result[10] = _Q10;
  result[11] = _Q11;
  result[12] = _Q12;
  result[13] = _Q13;
  result[14] = _Q14;
  result[15] = _Q15;
  result[16] = _Q16;
  result[17] = _Q17;
  result[18] = _Q18;
  result[19] = _Q19;
  result[20] = _Q20;
  result[21] = _Q21;
  result[22] = _Q22;
  result[23] = _Q23;
  result[24] = _Q24;
  return result;
}

uint64_t sub_1B01E0BFC(uint64_t result, void *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  *a3 = a2[result - 1];
  v5 = a4[result - 1];
  for (*a5 = v5; result != 1; --result)
  {
    v6 = v5 | *a3;
    v7 = __clz(v6 | 1);
    LOBYTE(v6) = v6 != 0 ? ((*a5 | *a3) >> 63) - v7 + 64 : 0;
    *a3 = (a2[result - 2] >> v6) | (*a3 << v7);
    v5 = (a4[result - 2] >> v6) | (*a5 << v7);
    *a5 = v5;
  }

  *a3 = *a3 & 0xFFFFFFFF80000000 | *a2 & 0x7FFFFFFFLL;
  *a5 = *a5 & 0xFFFFFFFF80000000 | *a4 & 0x7FFFFFFFLL;
  return result;
}

unint64_t sub_1B01E0CB8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v18 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, a2 + 1);
  v14 = (*(a1 + 24))(a1, a2 + 1);
  if (a2)
  {
    sub_1B01E136C(a2, v13, a4);
  }

  sub_1B01E4E14(1, v13 + 8 * a2);
  sub_1B01E1A1C(a2 + 1, a5 < 0, v13->i64, v13->i64);
  if (a2)
  {
    sub_1B01E136C(a2, v14, a6);
  }

  sub_1B01E4E14(1, &v14[8 * a2]);
  sub_1B01E1A1C(a2 + 1, a7 < 0, v14, v14);
  sub_1B01E1270(a2 + 1, v13, v13, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  sub_1B01DF5F4(a2 + 1, v13, v14, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v15 = v13->i64[a2] >> 63;
  sub_1B01E1A1C(a2 + 1, v13->i64[a2] < 0, v13->i64, v13->i64);
  sub_1B01E1380(a2 + 1, v13, v13, 31);
  sub_1B01E136C(a2, a3, v13);
  *(a1 + 16) = v18;
  return v15;
}

uint64_t sub_1B01E0E5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t *a8)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v12 = sub_1B01E1274(a6, a8);
  v13 = a2 - v12;
  v46 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12 + 1);
  v15 = (*(a1 + 24))(a1, v12 + 1);
  v53 = a1;
  v16 = (*(a1 + 24))(a1, v12 + 1);
  v14[v12] = 0;
  v52 = v12 - 1;
  v17 = __clz(a8[v12 - 1]);
  sub_1B01E5574(v12, v14, a8, v17, v18);
  v54 = v17;
  if (v12)
  {
    sub_1B01E136C(v12, v15, (a3 + 8 * v13));
  }

  v48 = -(v17 != 0);
  v49 = -v17 & 0x3F;
  sub_1B01E4E14(1, v15 + 8 * v12);
  sub_1B01E5574(v12 + 1, v15, v15, v17, v19);
  v20 = 0;
  v21 = 0;
  v22 = v14[v52];
  v23 = v22 != 0x8000000000000000;
  v24 = -v22;
  v26 = -__PAIR128__(v25, v22) >> 64;
  v27 = 65;
  do
  {
    v28 = ((((__PAIR128__(v26, v24) - __PAIR128__(v22, v21)) >> 64) ^ v26 | v22 ^ v26) ^ v26) >> 63;
    v29 = v28-- != 0;
    v26 = (__PAIR128__(v26, v24) - __PAIR128__(v29 ? 0 : v22, v28 & v21)) >> 64;
    v24 -= v28 & v21;
    v20 = v28 & 1 | (2 * v20);
    *(&v30 + 1) = v22;
    *&v30 = v21;
    v21 = v30 >> 1;
    v22 >>= 1;
    --v27;
  }

  while (v27);
  v51 = v23 ? v20 + 2 : -1;
  v31 = (a3 - 8 * v12 + 8 * a2);
  v32 = a2 - v12;
  do
  {
    v33 = v13;
    v34 = *v31 << v54;
    v15->i64[0] = v34;
    if (v32)
    {
      v15->i64[0] = ((*(v31 - 1) & v48) >> v49) | v34;
    }

    v35 = v15->i64[v12];
    v36 = v15->i64[v52];
    v57 = v14[v52];
    v37 = v35 + ((v35 * v51) >> 64) - ((((v36 - v57) ^ v36 | v57 ^ v36) ^ v36) >> 63) + 2;
    v56 = v37 | -((((((v35 * v51) >> 64) - ((((v36 - v57) ^ v36 | v57 ^ v36) ^ v36) >> 63) + 2) ^ v37 | v37 ^ v35) ^ v37) >> 63);
    v59[0] = 0;
    v59[1] = 0;
    sub_1B01DFC10(1, v59, &v56, &v57);
    v58[0] = v36;
    v58[1] = v35;
    v38 = sub_1B01E17B4(0, 2, v59, v58, v59);
    v56 -= 2 * v38;
    v39 = sub_1B01E0744(0, 2, v59, v59, v57);
    v40 = v56 + v39;
    v16[v12] = sub_1B01E1270(v12, v16, v14, v56 + v39);
    v41 = sub_1B01E17B4(v53, v12 + 1, v15, v15->i64, v16);
    v42 = v41 - sub_1B01E5B70(v12 + 1, v41, v15->i64, v15->i64, v14);
    result = sub_1B01E5B70(v12 + 1, v42, v15->i64, v15->i64, v14);
    if (a5 && v32 < a4)
    {
      *(a5 + 8 * v32) = v40 - (v41 + v42);
    }

    if (v32)
    {
      result = memmove(&v15->u64[1], v15, 8 * v12);
    }

    --v32;
    --v31;
    v13 = v33;
  }

  while (v32 <= v33);
  if (a5 && a4 > v33 + 1)
  {
    result = sub_1B01E5B5C(8 * (a4 - (v33 + 1)), (a5 + 8 * (v33 + 1)));
  }

  if (a7)
  {
    sub_1B01E1380(v12, v15, v15, v54);
    if (v12)
    {
      sub_1B01E136C(v12, a7, v15);
    }

    result = sub_1B01E4E14(a6 - v12, &a7[8 * v12]);
  }

  *(v53 + 16) = v46;
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E1298(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = 8 * a1;
  if (a3 > 8 * a1)
  {
    v5 = 0;
    v6 = a3 - v4;
    v7 = a4;
    do
    {
      v8 = *v7++;
      v5 |= v8;
      --a3;
    }

    while (a3 > v4);
    if (v5)
    {
      return 4294967289;
    }

    a4 += v6;
    a3 = 8 * a1;
  }

  v10 = &a4[a3];
  v11 = a3 - 8;
  if (a3 < 8)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v12 = (v11 >> 3) + 1;
  a3 = v11 - 8 * (v11 >> 3);
  v13 = a2;
  v14 = v12;
  do
  {
    v15 = *(v10 - 1);
    v10 -= 8;
    *v13++ = bswap64(v15);
    --v14;
  }

  while (v14);
  if (a3)
  {
LABEL_13:
    v16 = 0;
    v17 = -a3;
    do
    {
      v16 = v10[v17] | (v16 << 8);
    }

    while (!__CFADD__(v17++, 1));
    a2[v12++] = v16;
  }

LABEL_17:
  if (v12 < a1)
  {
    bzero(&a2[v12], v4 - 8 * v12);
  }

  return 0;
}

uint64_t sub_1B01E1380(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    return sub_1B01E4BA0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B01E138C(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  result = sub_1B01E1380(a1, a2, a3, a4 & 0x3F);
  if (a1)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v10 = a4 >> 6;
      v11 = v8;
      do
      {
        v13 = v10-- != 0;
        v9 |= v13 ? 0 : a2->i64[v11++];
      }

      while (a1 != v11);
      a2->i64[v8++] = v9;
    }

    while (v8 != a1);
  }

  return result;
}

uint64_t sub_1B01E143C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = 4;
  v9 = (*(a1 + 24))(a1, 4);
  v10 = (*(a1 + 24))(a1, 4);
  v11 = (*(a1 + 24))(a1, 4);
  sub_1B01E1AE0(v9, a4, a4);
  sub_1B01E1AE0(v10, v9, a4);
  sub_1B01E1AE0(v10, v10, v10);
  sub_1B01E1AE0(v10, v10, v10);
  sub_1B01E1AE0(v9, v9, v10);
  sub_1B01E1AE0(v10, v9, a4);
  sub_1B01E136C(4, v11, v10);
  do
  {
    sub_1B01E1AE0(v10, v10, v10);
    --v8;
  }

  while (v8);
  sub_1B01E1AE0(v9, v9, v10);
  sub_1B01E1AE0(v10, v9, a4);
  v12 = 8;
  do
  {
    sub_1B01E1AE0(v10, v10, v10);
    --v12;
  }

  while (v12);
  sub_1B01E1AE0(v9, v9, v10);
  sub_1B01E1AE0(v10, v9, a4);
  v13 = 16;
  do
  {
    sub_1B01E1AE0(v10, v10, v10);
    --v13;
  }

  while (v13);
  sub_1B01E1AE0(v9, v9, v10);
  sub_1B01E1AE0(v10, v9, a4);
  sub_1B01E136C(4, v11, v10);
  v14 = 32;
  do
  {
    sub_1B01E1AE0(v11, v11, v11);
    --v14;
  }

  while (v14);
  sub_1B01E1AE0(v11, v11, v10);
  v15 = 32;
  do
  {
    sub_1B01E1AE0(v11, v11, v11);
    --v15;
  }

  while (v15);
  sub_1B01E1AE0(v11, v11, v10);
  sub_1B01E136C(4, v10, v11);
  v16 = 32;
  do
  {
    sub_1B01E1AE0(v11, v11, v11);
    --v16;
  }

  while (v16);
  sub_1B01E1AE0(v11, v11, v9);
  v17 = 96;
  do
  {
    sub_1B01E1AE0(v11, v11, v11);
    --v17;
  }

  while (v17);
  sub_1B01E1AE0(v10, v10, v11);
  sub_1B01E1AE0(v9, v10, a4);
  v20[0] = xmmword_1B01FEEE0;
  v20[1] = *algn_1B01FEEF0;
  sub_1B01E1AE0(v9, v9, v20);
  if (sub_1B01E1274(4, v9) == 1 && *v9 == 1)
  {
    sub_1B01E136C(4, a3, v10);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B01E174C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = xmmword_1B01FEEE0;
  v6[1] = *algn_1B01FEEF0;
  result = sub_1B01E1AE0(a3, a4, v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B01E17C8(_BOOL8 result, void *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = 1;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = v5 >= v7;
      *a2++ = v5 - v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4;
      v4 = __CFSUB__(v8, v10, v4);
      v12 = v8 - (v10 + !v13);
      v14 = v4;
      v4 = __CFSUB__(v9, v11, v4);
      *a2 = v12;
      a2[1] = v9 - (v11 + !v14);
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = (a4 + 2);
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4;
        v4 = __CFSUB__(v18, v21, v4);
        v29 = v18 - (v21 + !v30);
        v32 = v4;
        v4 = __CFSUB__(v19, v22, v4);
        v31 = v19 - (v22 + !v32);
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4;
        v4 = __CFSUB__(v24, v27, v4);
        v34 = v24 - (v27 + !v35);
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4;
        v4 = __CFSUB__(v25, v28, v4);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v25 - (v28 + !v37);
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4;
      v4 = __CFSUB__(v18, v21, v4);
      v39 = v18 - (v21 + !v40);
      v42 = v4;
      v4 = __CFSUB__(v19, v22, v4);
      v41 = v19 - (v22 + !v42);
      v44 = v4;
      v4 = __CFSUB__(v24, v27, v4);
      v43 = v24 - (v27 + !v44);
      v45 = v4;
      v4 = __CFSUB__(v25, v28, v4);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v25 - (v28 + !v45);
    }

    return !v4;
  }

  return result;
}

unint64_t sub_1B01E1880(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  for (; a1; --a1)
  {
    v4 = *a3++;
    v5 = v4 - a4;
    *a2++ = v5;
    a4 = *(&v5 + 1) >> 63;
  }

  return a4;
}

uint64_t sub_1B01E18D0(uint64_t a1, uint64_t *a2, unint64_t a3, char *__s)
{
  if (a3 > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v6 = 8 * a1;
  if ((8 * a1) > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v7 = __s;
  v8 = a3;
  v10 = a3 - v6;
  if (a3 <= v6)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    sub_1B01E5B5C(a3 - v6, __s);
    v7 += v10;
    v8 = v6;
  }

  v11 = sub_1B01E09D4(a1, a2);
  if (v8 < (v11 + 7) >> 3)
  {
    return 4294967289;
  }

  result = v10 + v8 - ((v11 + 7) >> 3);
  v12 = &v7[v8];
  v13 = v8 - 8;
  if (v8 < 8)
  {
    v14 = 0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_16;
  }

  v14 = (v13 >> 3) + 1;
  v8 = v13 - 8 * (v13 >> 3);
  v15 = a2;
  v16 = v14;
  do
  {
    v17 = *v15++;
    *(v12 - 1) = bswap64(v17);
    v12 -= 8;
    --v16;
  }

  while (v16);
  if (v8)
  {
LABEL_16:
    v18 = a2[v14];
    v19 = v12 - 1;
    do
    {
      *v19-- = v18;
      v18 >>= 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

BOOL sub_1B01E19E0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (!a1)
  {
    return a4;
  }

  v5 = *a3;
  v4 = a3 + 1;
  v6 = __CFADD__(v5, a4);
  *a2 = v5 + a4;
  for (i = a2 + 1; --a1; ++i)
  {
    v8 = *v4++;
    v9 = v6;
    v6 = __CFADD__(v6, v8);
    *i = v9 + v8;
  }

  return v6;
}

uint64_t sub_1B01E1A1C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_1B01E07C8();
  v9 = __ROR8__(0x5555555555555555, a2 | (2 * result));
  if (a1)
  {
    v10 = 1;
    do
    {
      v12 = *a4++;
      v11 = v12;
      v13 = v10 + ~v12;
      v10 = __CFADD__(v10, ~v12);
      v14 = v11 ^ v13;
      v15 = v11 ^ result;
      *a3 = v15;
      *a3++ = v14 & v9 ^ v14 & 0x5555555555555555 ^ v15 ^ result;
      --a1;
    }

    while (a1);
  }

  return result;
}

void *sub_1B01E1AE0(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v9 = *a3;
  v10 = a3[1];
  v8 = a3 + 2;
  v11 = *v8;
  v12 = v8[1];
  v13 = v4 * v9;
  v14 = (v5 * v9) >> 64;
  v15 = *v3 * v9;
  v16 = (v6 * v9) >> 64;
  v18 = v9;
  v17 = (__PAIR128__(v5, v4) * v9) >> 64;
  v19 = __CFADD__(__CFADD__((v4 * v9) >> 64, v5 * v9), v14);
  v20 = __CFADD__((v4 * v9) >> 64, v5 * v9) + v14;
  v19 |= __CFADD__(v15, v20);
  v20 += v15;
  v21 = (v7 * v9) >> 64;
  v22 = (v7 * v10) >> 64;
  v24 = v19;
  v19 = __CFADD__(v19, v16);
  v23 = v24 + v16;
  v19 |= __CFADD__(v7 * v9, v23);
  v23 += v7 * v9;
  v26 = v19;
  v19 = __CFADD__(v19, v21);
  v25 = v26 + v21;
  v19 |= __CFADD__(v7 * v10, v25);
  v25 += v7 * v10;
  v27 = v7 * *v8;
  v28 = (v7 * v11) >> 64;
  v30 = v19;
  v19 = __CFADD__(v19, v22);
  v29 = v30 + v22;
  v19 |= __CFADD__(v27, v29);
  v29 += v27;
  v32 = v19;
  v19 = __CFADD__(v19, v28);
  v31 = v32 + v28;
  v19 |= __CFADD__(v7 * v12, v31);
  v31 += v7 * v12;
  v33 = v19 + ((v7 * v12) >> 64);
  v34 = (v4 * v10) >> 64;
  v19 = __CFADD__(v17, v4 * v10);
  v35 = (__PAIR128__(v10, v18) * __PAIR128__(v5, v4)) >> 64;
  v37 = v19;
  v19 = __CFADD__(v19, v20);
  v36 = v37 + v20;
  v19 |= __CFADD__(v34, v36);
  v36 += v34;
  v38 = (v6 * v10) >> 64;
  v40 = v19;
  v19 = __CFADD__(v19, v23);
  v39 = v40 + v23;
  v19 |= __CFADD__(v6 * v10, v39);
  v39 += v6 * v10;
  v42 = v19;
  v19 = __CFADD__(v19, v25);
  v41 = v42 + v25;
  v19 |= __CFADD__(v38, v41);
  v41 += v38;
  v43 = (v6 * v12) >> 64;
  v45 = v19;
  v19 = __CFADD__(v19, v29);
  v44 = v45 + v29;
  v19 |= __CFADD__(v6 * v12, v44);
  v44 += v6 * v12;
  v47 = v19;
  v19 = __CFADD__(v19, v31);
  v46 = v47 + v31;
  v19 |= __CFADD__(v43, v46);
  v46 += v43;
  v48 = v19 + v33;
  v49 = (v5 * v10) >> 64;
  v19 = __CFADD__(v36, v5 * v10);
  v50 = v36 + v5 * v10;
  v52 = v19;
  v19 = __CFADD__(v19, v39);
  v51 = v52 + v39;
  v19 |= __CFADD__(v49, v51);
  v51 += v49;
  v53 = (v6 * v11) >> 64;
  v55 = v19;
  v19 = __CFADD__(v19, v41);
  v54 = v55 + v41;
  v19 |= __CFADD__(v6 * v11, v54);
  v54 += v6 * v11;
  v57 = v19;
  v19 = __CFADD__(v19, v44);
  v56 = v57 + v44;
  v19 |= __CFADD__(v53, v56);
  v56 += v53;
  v58 = v19;
  v59 = (v4 * v11) >> 64;
  v19 = __CFADD__(v50, v4 * v11);
  v60 = v50 + v4 * v11;
  v62 = v19;
  v19 = __CFADD__(v19, v51);
  v61 = v62 + v51;
  v19 |= __CFADD__(v59, v61);
  v61 += v59;
  v63 = (v5 * v12) >> 64;
  v65 = v19;
  v19 = __CFADD__(v19, v54);
  v64 = v65 + v54;
  v19 |= __CFADD__(v5 * v12, v64);
  v64 += v5 * v12;
  v67 = v19;
  v19 = __CFADD__(v19, v56);
  v66 = v67 + v56;
  v19 |= __CFADD__(v63, v66);
  v66 += v63;
  v68 = v19 + v58;
  v69 = (v5 * v11) >> 64;
  v19 = __CFADD__(v61, v5 * v11);
  v70 = v61 + v5 * v11;
  v72 = v19;
  v19 = __CFADD__(v19, v64);
  v71 = v72 + v64;
  v19 |= __CFADD__(v69, v71);
  v71 += v69;
  v73 = v19;
  v74 = (v4 * v12) >> 64;
  v19 = __CFADD__(v70, v4 * v12);
  v75 = v70 + v4 * v12;
  v77 = v19;
  v19 = __CFADD__(v19, v71);
  v76 = v77 + v71;
  v19 |= __CFADD__(v74, v76);
  v76 += v74;
  v79 = v19;
  v19 = __CFADD__(v19, v66);
  v78 = v79 + v66;
  v19 |= __CFADD__(v73, v78);
  v78 += v73;
  v81 = v19;
  v19 = __CFADD__(v19, v46);
  v80 = v81 + v46;
  v19 |= __CFADD__(v68, v80);
  v80 += v68;
  v82 = v19 + v48;
  v83 = 0xFFFFFFFF00000000 * v13;
  v84 = -v13 >> 32;
  v19 = __CFADD__(__CFADD__(v13, -v13), v35);
  v85 = __CFADD__(v13, -v13) + v35;
  v87 = v19;
  v19 = __CFADD__(v19, v60);
  v86 = v87 + v60;
  v89 = v19;
  v19 = __CFADD__(v19, v75);
  v88 = v89 + v75;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v13, v88);
  v88 += 0xFFFFFFFF00000000 * v13;
  v90 = v19 + v84;
  v19 = v85 >= v83;
  v91 = v85 - v83;
  LOBYTE(v89) = v19;
  v19 = __CFSUB__(v86, v84, v19);
  v92 = v86 - (v84 + !v89);
  v93 = __PAIR128__(v90, v88) - !v19;
  v94 = 0xFFFFFFFF00000000 * v91;
  v95 = -v91 >> 32;
  v19 = __CFADD__(__CFADD__(v91, -v91), v92);
  v98 = __PAIR128__(v93, __CFADD__(v91, -v91)) + v92;
  v97 = v98 >> 64;
  v96 = v98;
  v100 = __CFADD__(v19, v93);
  v19 = __CFADD__(v100, v76);
  v99 = v100 + v76;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v91, v99);
  v99 += 0xFFFFFFFF00000000 * v91;
  v101 = v19 + v95;
  v19 = v96 >= v94;
  v102 = v96 - v94;
  LOBYTE(v100) = v19;
  v19 = __CFSUB__(v97, v95, v19);
  v103 = v97 - (v95 + !v100);
  v104 = __PAIR128__(v101, v99) - !v19;
  v105 = 0xFFFFFFFF00000000 * v102;
  v106 = -v102 >> 32;
  v19 = __CFADD__(__CFADD__(v102, -v102), v103);
  v109 = __PAIR128__(v104, __CFADD__(v102, -v102)) + v103;
  v108 = v109 >> 64;
  v107 = v109;
  v111 = __CFADD__(v19, v104);
  v19 = __CFADD__(v111, v78);
  v110 = v111 + v78;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v102, v110);
  v110 += 0xFFFFFFFF00000000 * v102;
  v112 = v19 + v106;
  v19 = v107 >= v105;
  v113 = v107 - v105;
  LOBYTE(v111) = v19;
  v19 = __CFSUB__(v108, v106, v19);
  v114 = v108 - (v106 + !v111);
  v115 = __PAIR128__(v112, v110) - !v19;
  v116 = 0xFFFFFFFF00000000 * v113;
  v117 = -v113 >> 32;
  v19 = __CFADD__(__CFADD__(v113, -v113), v114);
  v120 = __PAIR128__(v115, __CFADD__(v113, -v113)) + v114;
  v119 = v120 >> 64;
  v118 = v120;
  v122 = __CFADD__(v19, v115);
  v19 = __CFADD__(v122, v80);
  v121 = v122 + v80;
  v19 |= __CFADD__(0xFFFFFFFF00000000 * v113, v121);
  v121 += 0xFFFFFFFF00000000 * v113;
  v123 = v19 + v117;
  v19 = v118 >= v116;
  v124 = v118 - v116;
  LOBYTE(v122) = v19;
  v19 = __CFSUB__(v119, v117, v19);
  v125 = v119 - (v117 + !v122);
  v126 = __PAIR128__(v123, v121) - !v19;
  v127 = v126 + (__CFADD__(__CFADD__(*(&v93 + 1), v124), *(&v104 + 1)) | __CFADD__(v125, __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1))) + *(&v115 + 1);
  v128 = v82 + (__CFADD__(__CFADD__(__CFADD__(*(&v93 + 1), v124), *(&v104 + 1)) | __CFADD__(v125, __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1)), *(&v115 + 1)) | __CFADD__(v126, (__CFADD__(__CFADD__(*(&v93 + 1), v124), *(&v104 + 1)) | __CFADD__(v125, __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1))) + *(&v115 + 1))) + *(&v126 + 1);
  v129 = *(&v93 + 1) + v124 - 1;
  v130 = v125 + __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1) - ((*(&v93 + 1) + v124 == 0) - 0x100000000);
  v19 = __CFSUB__(v127, -1, __PAIR128__(v125 + __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1), *(&v93 + 1) + v124) >= __PAIR128__(0xFFFFFFFF00000000, 1));
  v131 = v127 - ((__PAIR128__(v125 + __CFADD__(*(&v93 + 1), v124) + *(&v104 + 1), *(&v93 + 1) + v124) < __PAIR128__(0xFFFFFFFF00000000, 1)) - 1);
  LOBYTE(v122) = v19;
  v19 = __CFSUB__(v128, 0xFFFFFFFFLL, v19);
  v132 = v128 - (!v122 + 0xFFFFFFFFLL);
  v133 = 1 - !v19;
  v134 = 1 - !v19;
  v19 = __CFADD__(__CFADD__(v129, v133 >> 63), v130);
  v135 = __CFADD__(v129, v133 >> 63) + v130;
  v137 = v19 | __CFADD__(v133 & 0xFFFFFFFF00000000, v135);
  v19 = __CFADD__(v137, v131);
  v136 = v137 + v131;
  *a1 = v129 + (v133 >> 63);
  a1[1] = (v133 & 0xFFFFFFFF00000000) + v135;
  result = a1 + 2;
  *result = v133 + v136;
  result[1] = v134 + (v19 | __CFADD__(v133, v136)) + v132;
  return result;
}

uint64_t sub_1B01E1D08(unint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *a6 = 0;
  a6[1] = 0;
  if (a5)
  {
    v9 = *(a5 + 1);
    v10 = a3 + v9 + 10;
  }

  else
  {
    v9 = 0;
    v10 = a3;
  }

  if (v10 + 11 > a1)
  {
    return 4294967273;
  }

  v12 = a2 + 2;
  v13 = a2[1] ^ 1 | *a2;
  if (a1 - v10 != 3)
  {
    v14 = v10 - a1 + 3;
    do
    {
      v15 = *v12++;
      v13 |= ~v15;
    }

    while (!__CFADD__(v14++, 1));
    v12 = &a2[~v10 + a1];
  }

  v17 = (v12 + 1);
  v18 = *v12 | v13;
  if (a5)
  {
    v19 = v12[1] ^ 0x30;
    v20 = v12[2] ^ (v10 - 2);
    v21 = v12[3] ^ 0x30;
    v22 = v12 + 5;
    v23 = v12[4] ^ (v9 + 4);
    v24 = v9 + 2;
    v25 = sub_1B01DF308(v9 + 2, (v12 + 5), a5);
    v26 = &v22[v24];
    v27 = v22[v24] ^ 5;
    v28 = v22[v24 + 1];
    v29 = v22[v24 + 2] ^ 4;
    v17 = &v22[v24 + 4];
    v18 |= v19 | v20 | v21 | v23 | v25 | v27 | v28 | v29 | v26[3] ^ a3;
  }

  sub_1B01E1F54(a6, &unk_1B01FF190, a3, a4, v17);
  return (v18 | sub_1B01DF308(a3, v17, a4));
}

unsigned __int8 *sub_1B01E1E98(unint64_t a1, void *a2, void *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (!a4)
  {
    return 0;
  }

  v6[0] = a4;
  v6[1] = a5;
  if (sub_1B01DB384(v6, a1, a2, a3))
  {
    return v6[0];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B01E1EEC(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = sub_1B01E17B4(0, a4, a2, a3, a5);

  return sub_1B01E1880(v5, v6, v7, v8);
}

uint64_t sub_1B01E1F54(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; i != 16; ++i)
  {
    *(result + i) = *(a5 + i % a3) ^ *(a4 + i % a3) ^ *(a2 + i);
  }

  if (a3 >= 0x11)
  {
    for (j = 16; j != a3; ++j)
    {
      *(result + (j & 0xF)) ^= *(a5 + j) ^ *(a4 + j);
    }
  }

  return result;
}

int32x4_t *sub_1B01E20C0(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    v3 = a3 + 4;
    _Q1 = vrev32q_s8(v5);
    v9 = *result;
    _Q2 = vrev32q_s8(v6);
    _Q17 = result[1];
    _Q3 = vrev32q_s8(v7);
    _Q18 = *result;
    _Q4 = vaddq_s32(vrev32q_s8(v4), xmmword_1B01E1FC0);
    _Q5 = vaddq_s32(_Q1, xmmword_1B01E1FD0);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_1B01E1FE0);
    _Q7 = vaddq_s32(_Q3, xmmword_1B01E1FF0);
    v19 = &xmmword_1B01E2000;
    v20 = 3;
    do
    {
      _Q20 = _Q18;
      v22 = *v19;
      __asm { SHA256SU0       V0.4S, V1.4S }

      v28 = v19[1];
      __asm { SHA256H         Q18, Q19, V4.4S }

      v30 = v19[2];
      __asm { SHA256SU1       V0.4S, V2.4S, V3.4S }

      v32 = v19[3];
      __asm { SHA256H2        Q19, Q20, V4.4S }

      v19 += 4;
      _Q4 = vaddq_s32(_Q0, v22);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V1.4S, V2.4S
        SHA256H         Q18, Q19, V5.4S
        SHA256SU1       V1.4S, V3.4S, V0.4S
        SHA256H2        Q19, Q20, V5.4S
      }

      _Q5 = vaddq_s32(_Q1, v28);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V2.4S, V3.4S
        SHA256H         Q18, Q19, V6.4S
        SHA256SU1       V2.4S, V0.4S, V1.4S
        SHA256H2        Q19, Q20, V6.4S
      }

      _Q6 = vaddq_s32(_Q2, v30);
      --v20;
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V3.4S, V0.4S
        SHA256H         Q18, Q19, V7.4S
        SHA256SU1       V3.4S, V1.4S, V2.4S
        SHA256H2        Q19, Q20, V7.4S
      }

      _Q7 = vaddq_s32(_Q3, v32);
    }

    while (!(_NF ^ _VF | _ZF));
    v44 = a2 <= 1;
    v45 = a2 - 1;
    if (!v44)
    {
      v46 = (v19 - 16);
      do
      {
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V4.4S }

        v49 = v3[1];
        v50 = v3[2];
        __asm { SHA256H2        Q19, Q20, V4.4S }

        v52 = v3[3];
        _Q4 = vaddq_s32(vrev32q_s8(*v3), *v46);
        _Q20 = _Q18;
        v3 += 4;
        __asm { SHA256H         Q18, Q19, V5.4S }

        _Q1 = vrev32q_s8(v49);
        __asm { SHA256H2        Q19, Q20, V5.4S }

        _Q5 = vaddq_s32(_Q1, v46[1]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V6.4S }

        _Q2 = vrev32q_s8(v50);
        __asm { SHA256H2        Q19, Q20, V6.4S }

        _Q6 = vaddq_s32(_Q2, v46[2]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V7.4S }

        _Q3 = vrev32q_s8(v52);
        __asm { SHA256H2        Q19, Q20, V7.4S }

        _Q7 = vaddq_s32(_Q3, v46[3]);
        v9 = vaddq_s32(v9, _Q18);
        _Q17 = vaddq_s32(_Q17, _Q19);
        _Q20 = v9;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[4]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[5]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[6]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[7]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[8]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[9]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[10]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[11]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[12]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[13]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[14]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[15]);
        v44 = v45-- <= 1;
      }

      while (!v44);
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V4.4S
      SHA256H2        Q19, Q20, V4.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V5.4S
      SHA256H2        Q19, Q20, V5.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V6.4S
      SHA256H2        Q19, Q20, V6.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V7.4S
      SHA256H2        Q19, Q20, V7.4S
    }

    *result = vaddq_s32(v9, _Q18);
    result[1] = vaddq_s32(_Q17, _Q19);
  }

  return result;
}

uint64_t sub_1B01E23C4(uint64_t a1, uint64_t *a2)
{
  v4 = a2 + 3;
  v5 = *a2;
  v6 = sub_1B01E0A20(*a2, &a2[2 * *a2 + 4]);
  if (v5)
  {
    v7 = v6 >= 2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || sub_1B01E1274(v5, v4) <= 1 && *v4 < 2)
  {
    return 4294967268;
  }

  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v5);
  v11 = (*(a1 + 24))(a1, v5);
  sub_1B01DB63C(a1, a2);
  v12 = sub_1B01E07E4(a1, a2, v11, v10, &v4[2 * *a2 + 1]);
  sub_1B01DBAB4(a1, a2);
  *(a1 + 16) = v9;
  return v12;
}

uint64_t sub_1B01E24D0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6, _BYTE *a7)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21 = sub_1B01E4F24();
  *a7 = 0;
  v14 = sub_1B01E6D10(88 * *a1);
  v15 = 11 * *a1;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 0;
  v19[3] = sub_1B01E6D4C;
  v20 = sub_1B01E6D94;
  if (v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v16 = sub_1B01DDAD8(v19, a1, a2, a3, a4, a5, a6, 0, v22);
    v20(v19);
    if (v16)
    {
      if (v16 == -146)
      {
        v16 = 0;
      }

      else
      {
        v16 = v16;
      }
    }

    else
    {
      *a7 = 1;
    }
  }

  else
  {
    v16 = 4294967283;
  }

  sub_1B01E6E24(&v21);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1B01E2610(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6, void *a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = sub_1B01E4F24();
  v14 = sub_1B01E6D10(88 * *a1);
  v15 = 11 * *a1;
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 0;
  v19[3] = sub_1B01E6D4C;
  v20 = sub_1B01E6D94;
  if (v14)
  {
    if (a7)
    {
      *a7 = 0;
      a7[1] = 0;
      v22 = 0uLL;
      v16 = sub_1B01DDAD8(v19, a1, a2, a3, a4, a5, a6, 0, &v22);
      *a7 = v22;
    }

    else
    {
      v22 = 0uLL;
      v16 = sub_1B01DDAD8(v19, a1, a2, a3, a4, a5, a6, 0, &v22);
    }

    v20(v19);
  }

  else
  {
    v16 = 4294967283;
  }

  sub_1B01E6E24(&v21);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

unsigned int *sub_1B01E27A4(unsigned int *result, uint64_t a2, const char *a3)
{
  v105 = *MEMORY[0x1E69E9840];
  memset(v104, 0, sizeof(v104));
  memset(v103, 0, sizeof(v103));
  memset(v102, 0, sizeof(v102));
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    do
    {
      v106 = vld4q_s8(a3);
      v8 = vmovl_u8(*v106.val[0].i8);
      v9 = vmovl_high_u8(v106.val[0]);
      _Q16 = vmovl_u8(*v106.val[1].i8);
      _Q17 = vmovl_high_u8(v106.val[1]);
      __asm
      {
        SHLL2           V18.4S, V17.8H, #0x10
        SHLL2           V19.4S, V16.8H, #0x10
      }

      v18 = vmovl_high_u8(v106.val[2]);
      v19 = vmovl_u8(*v106.val[2].i8);
      v20 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v19.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v8.i8), 0x18uLL));
      v21 = vmovl_high_u8(v106.val[3]);
      v106.val[0] = vmovl_u8(*v106.val[3].i8);
      v98 = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q17.i8, 0x10uLL), vshll_n_u16(*v18.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v9.i8), 0x18uLL)), vmovl_u16(*v21.i8));
      v99 = vorrq_s8(vorrq_s8(vorrq_s8(_Q18, vshll_high_n_u16(v18, 8uLL)), vshlq_n_s32(vmovl_high_u16(v9), 0x18uLL)), vmovl_high_u16(v21));
      v96 = vorrq_s8(v20, vmovl_u16(*v106.val[0].i8));
      v97 = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v19, 8uLL)), vshlq_n_s32(vmovl_high_u16(v8), 0x18uLL)), vmovl_high_u16(v106.val[0]));
      v22 = &v98;
      v23 = 64;
      do
      {
        HIDWORD(v24) = v22->i32[0] ^ v22[1].i32[1] ^ v22[-2].i32[2] ^ v22[-2].i32[0];
        LODWORD(v24) = HIDWORD(v24);
        v22[2].i32[0] = v24 >> 31;
        v22 = (v22 + 4);
        --v23;
      }

      while (v23);
      v25 = -5;
      v26 = &v96.i32[2];
      v27 = v7;
      v28 = v6;
      v29 = v5;
      v30 = v4;
      v31 = v3;
      do
      {
        HIDWORD(v32) = v31;
        LODWORD(v32) = v31;
        v33 = (v32 >> 27) + v27 + 1518500249 + (v29 & v30 | v28 & ~v30) + *(v26 - 2);
        HIDWORD(v32) = v30;
        LODWORD(v32) = v30;
        v34 = v32 >> 2;
        v35 = __PAIR64__(v33, __ROR4__(v30, 2));
        v36 = v31 & v35 | v29 & ~v31;
        LODWORD(v35) = v33;
        v37 = v28 + 1518500249 + v36 + *(v26 - 1) + (v35 >> 27);
        HIDWORD(v35) = v31;
        LODWORD(v35) = v31;
        v38 = v35 >> 2;
        v39 = __PAIR64__(v37, __ROR4__(v31, 2));
        v40 = v33 & v39 | v34 & ~v33;
        LODWORD(v39) = v37;
        v41 = v29 + 1518500249 + *v26 + v40 + (v39 >> 27);
        HIDWORD(v39) = v33;
        LODWORD(v39) = v33;
        v27 = v39 >> 2;
        v42 = __PAIR64__(v41, __ROR4__(v33, 2));
        v43 = v37 & v42 | v38 & ~v37;
        LODWORD(v42) = v41;
        v30 = v34 + 1518500249 + v26[1] + v43 + (v42 >> 27);
        HIDWORD(v42) = v37;
        LODWORD(v42) = v37;
        v28 = v42 >> 2;
        HIDWORD(v42) = v30;
        LODWORD(v42) = v30;
        v44 = v42 >> 27;
        v45 = __PAIR64__(v41, __ROR4__(v37, 2));
        v31 = v38 + 1518500249 + v26[2] + (v41 & v45 | v27 & ~v41) + v44;
        LODWORD(v45) = v41;
        v29 = v45 >> 2;
        v25 += 5;
        v26 += 5;
      }

      while (v25 < 0xF);
      --a2;
      v46 = v102;
      for (i = 15; i < 0x23; i += 5)
      {
        HIDWORD(v48) = v31;
        LODWORD(v48) = v31;
        v49 = (v48 >> 27) + 1859775393 + (v29 ^ v30 ^ v28) + v27 + *(v46 - 4);
        HIDWORD(v48) = v30;
        LODWORD(v48) = v30;
        v50 = v48 >> 2;
        HIDWORD(v48) = v49;
        LODWORD(v48) = v49;
        v51 = v48 >> 27;
        v52 = __PAIR64__(v31, __ROR4__(v30, 2));
        v53 = v28 + 1859775393 + (v31 ^ v52 ^ v29) + *(v46 - 3) + v51;
        LODWORD(v52) = v31;
        v54 = v52 >> 2;
        HIDWORD(v52) = v53;
        LODWORD(v52) = v53;
        v55 = v52 >> 27;
        v56 = __PAIR64__(v49, __ROR4__(v31, 2));
        v57 = v29 + 1859775393 + *(v46 - 2) + (v50 ^ v56 ^ v49) + v55;
        LODWORD(v56) = v49;
        v27 = v56 >> 2;
        HIDWORD(v56) = v57;
        LODWORD(v56) = v57;
        v58 = v56 >> 27;
        v59 = __PAIR64__(v53, __ROR4__(v31, 2));
        v30 = v50 + 1859775393 + *(v46 - 1) + (v27 ^ v59 ^ v53) + v58;
        LODWORD(v59) = v53;
        v28 = v59 >> 2;
        HIDWORD(v59) = v30;
        LODWORD(v59) = v30;
        v60 = v59 >> 27;
        v61 = __PAIR64__(v57, __ROR4__(v49, 2));
        v62 = *v46;
        v46 += 5;
        v31 = v54 + 1859775393 + v62 + (v28 ^ v61 ^ v57) + v60;
        LODWORD(v61) = v57;
        v29 = v61 >> 2;
      }

      v63 = v103;
      v64 = 35;
      do
      {
        HIDWORD(v66) = v31;
        LODWORD(v66) = v31;
        v65 = v66 >> 27;
        HIDWORD(v66) = v30;
        LODWORD(v66) = v30;
        v67 = v66 >> 2;
        v68 = v65 + v27 - 1894007588 + (v28 & (v29 | v30) | v29 & v30) + *(v63 - 4);
        HIDWORD(v66) = v68;
        LODWORD(v66) = v68;
        v69 = v66 >> 27;
        v70 = __PAIR64__(v31, __ROR4__(v30, 2));
        v71 = (v31 | v70) & v29 | v31 & __ROR4__(v30, 2);
        LODWORD(v70) = v31;
        v72 = v70 >> 2;
        v73 = v28 - 1894007588 + v71 + *(v63 - 3) + v69;
        HIDWORD(v70) = v73;
        LODWORD(v70) = v73;
        v74 = v29 - 1894007588 + *(v63 - 2) + ((v68 | __ROR4__(v31, 2)) & __ROR4__(v30, 2) | v68 & __ROR4__(v31, 2)) + (v70 >> 27);
        HIDWORD(v70) = v74;
        LODWORD(v70) = v74;
        v30 = v67 - 1894007588 + *(v63 - 1) + ((v73 | __ROR4__(v68, 2)) & __ROR4__(v31, 2) | v73 & __ROR4__(v68, 2)) + (v70 >> 27);
        v75 = __PAIR64__(v68, __ROR4__(v68, 2));
        v76 = (v74 | __ROR4__(v73, 2)) & v75 | v74 & __ROR4__(v73, 2);
        v77 = *v63;
        v63 += 5;
        LODWORD(v75) = v68;
        v27 = v75 >> 2;
        HIDWORD(v75) = v73;
        LODWORD(v75) = v73;
        v28 = v75 >> 2;
        HIDWORD(v75) = v30;
        LODWORD(v75) = v30;
        v31 = v72 - 1894007588 + v77 + v76 + (v75 >> 27);
        v64 += 5;
        HIDWORD(v75) = v74;
        LODWORD(v75) = v74;
        v29 = v75 >> 2;
      }

      while (v64 < 0x37);
      v78 = v104;
      for (j = 55; j < 0x4B; j += 5)
      {
        HIDWORD(v80) = v31;
        LODWORD(v80) = v31;
        v81 = (v80 >> 27) - 899497514 + (v29 ^ v30 ^ v28) + v27 + *(v78 - 4);
        HIDWORD(v80) = v30;
        LODWORD(v80) = v30;
        v82 = v80 >> 2;
        HIDWORD(v80) = v81;
        LODWORD(v80) = v81;
        v83 = v80 >> 27;
        v84 = __PAIR64__(v31, __ROR4__(v30, 2));
        v85 = v28 - 899497514 + (v31 ^ v84 ^ v29) + *(v78 - 3) + v83;
        LODWORD(v84) = v31;
        v86 = v84 >> 2;
        HIDWORD(v84) = v85;
        LODWORD(v84) = v85;
        v87 = v84 >> 27;
        v88 = __PAIR64__(v81, __ROR4__(v31, 2));
        v89 = v29 - 899497514 + *(v78 - 2) + (v82 ^ v88 ^ v81) + v87;
        LODWORD(v88) = v81;
        v27 = v88 >> 2;
        HIDWORD(v88) = v89;
        LODWORD(v88) = v89;
        v90 = v88 >> 27;
        v91 = __PAIR64__(v85, __ROR4__(v31, 2));
        v30 = v82 - 899497514 + *(v78 - 1) + (v27 ^ v91 ^ v85) + v90;
        LODWORD(v91) = v85;
        v28 = v91 >> 2;
        HIDWORD(v91) = v30;
        LODWORD(v91) = v30;
        v92 = v91 >> 27;
        v93 = __PAIR64__(v89, __ROR4__(v81, 2));
        v94 = *v78;
        v78 += 5;
        v31 = v86 - 899497514 + v94 + (v28 ^ v93 ^ v89) + v92;
        LODWORD(v93) = v89;
        v29 = v93 >> 2;
      }

      v3 += v31;
      v4 += v30;
      *result = v3;
      result[1] = v4;
      v5 += v29;
      v6 += v28;
      result[2] = v5;
      result[3] = v6;
      v7 += v27;
      a3 += 64;
      result[4] = v7;
    }

    while (a2);
  }

  v95 = *MEMORY[0x1E69E9840];
  return result;
}

int8x16_t sub_1B01E2D00(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqtbl1q_s8(*a2, *qword_1B01E3340);
  v9 = veorq_s8(a8, a8);
  v10 = veorq_s8(vandq_s8(vextq_s8(*&qword_1B01E3340[2], *&qword_1B01E3340[2], 8uLL), vshrq_n_s32(vdupq_laneq_s32(v8, 3), 0x1FuLL)), vorrq_s8(vextq_s8(v9, vshrq_n_u64(v8, 0x3FuLL), 8uLL), vshlq_n_s64(v8, 1uLL)));
  *a1 = v10;
  a1[8] = veorq_s8(v10, vextq_s8(v10, v10, 8uLL));
  v11 = vmull_high_p64(v10, v10);
  v12 = vmull_p64(v10.u64[0], v10.u64[0]);
  v13 = veorq_s8(v12, veorq_s8(v11, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0])));
  v14 = veorq_s8(vextq_s8(v9, v13, 8uLL), v12);
  v15 = veorq_s8(vextq_s8(v14, v14, 8uLL), vmull_p64(0xC200000000000000, v14.u64[0]));
  v16 = veorq_s8(veorq_s8(vextq_s8(v13, v9, 8uLL), v11), veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0])));
  a1[1] = v16;
  a1[9] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL));
  v13.i64[0] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0];
  v17 = vmull_high_p64(v16, v10);
  v18 = vmull_p64(v16.u64[0], v10.u64[0]);
  v19 = veorq_s8(v18, veorq_s8(v17, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v13.u64[0])));
  v20 = veorq_s8(vextq_s8(v9, v19, 8uLL), v18);
  v21 = veorq_s8(vextq_s8(v20, v20, 8uLL), vmull_p64(0xC200000000000000, v20.u64[0]));
  v22 = veorq_s8(veorq_s8(vextq_s8(v19, v9, 8uLL), v17), veorq_s8(vextq_s8(v21, v21, 8uLL), vmull_p64(0xC200000000000000, v21.u64[0])));
  a1[2] = v22;
  a1[10] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL));
  v19.i64[0] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL)).u64[0];
  v23 = vmull_high_p64(v22, v10);
  v24 = vmull_p64(v22.u64[0], v10.u64[0]);
  v25 = veorq_s8(v24, veorq_s8(v23, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v19.u64[0])));
  v26 = veorq_s8(vextq_s8(v9, v25, 8uLL), v24);
  v27 = veorq_s8(vextq_s8(v26, v26, 8uLL), vmull_p64(0xC200000000000000, v26.u64[0]));
  v28 = veorq_s8(veorq_s8(vextq_s8(v25, v9, 8uLL), v23), veorq_s8(vextq_s8(v27, v27, 8uLL), vmull_p64(0xC200000000000000, v27.u64[0])));
  a1[3] = v28;
  a1[11] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL));
  v25.i64[0] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0];
  v29 = vmull_high_p64(v28, v10);
  v30 = vmull_p64(v28.u64[0], v10.u64[0]);
  v31 = veorq_s8(v30, veorq_s8(v29, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v25.u64[0])));
  v32 = veorq_s8(vextq_s8(v9, v31, 8uLL), v30);
  v33 = veorq_s8(vextq_s8(v32, v32, 8uLL), vmull_p64(0xC200000000000000, v32.u64[0]));
  v34 = veorq_s8(veorq_s8(vextq_s8(v31, v9, 8uLL), v29), veorq_s8(vextq_s8(v33, v33, 8uLL), vmull_p64(0xC200000000000000, v33.u64[0])));
  a1[4] = v34;
  a1[12] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL));
  v31.i64[0] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL)).u64[0];
  v35 = vmull_high_p64(v34, v10);
  v36 = vmull_p64(v34.u64[0], v10.u64[0]);
  v37 = veorq_s8(v36, veorq_s8(v35, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v31.u64[0])));
  v38 = veorq_s8(vextq_s8(v9, v37, 8uLL), v36);
  v39 = veorq_s8(vextq_s8(v38, v38, 8uLL), vmull_p64(0xC200000000000000, v38.u64[0]));
  v40 = veorq_s8(veorq_s8(vextq_s8(v37, v9, 8uLL), v35), veorq_s8(vextq_s8(v39, v39, 8uLL), vmull_p64(0xC200000000000000, v39.u64[0])));
  a1[5] = v40;
  a1[13] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL));
  v37.i64[0] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL)).u64[0];
  v41 = vmull_high_p64(v40, v10);
  v42 = vmull_p64(v40.u64[0], v10.u64[0]);
  v43 = veorq_s8(v42, veorq_s8(v41, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v37.u64[0])));
  v44 = veorq_s8(vextq_s8(v9, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(0xC200000000000000, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v9, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(0xC200000000000000, v45.u64[0])));
  a1[6] = v46;
  a1[14] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL));
  v43.i64[0] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL)).u64[0];
  v47 = vmull_high_p64(v46, v10);
  v48 = vmull_p64(v46.u64[0], v10.u64[0]);
  v49 = veorq_s8(v48, veorq_s8(v47, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v43.u64[0])));
  v50 = veorq_s8(vextq_s8(v9, v49, 8uLL), v48);
  v51 = veorq_s8(vextq_s8(v50, v50, 8uLL), vmull_p64(0xC200000000000000, v50.u64[0]));
  result = veorq_s8(veorq_s8(vextq_s8(v49, v9, 8uLL), v47), veorq_s8(vextq_s8(v51, v51, 8uLL), vmull_p64(0xC200000000000000, v51.u64[0])));
  a1[7] = result;
  a1[15] = veorq_s8(result, vextq_s8(result, result, 8uLL));
  return result;
}

int8x16_t sub_1B01E3000(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = vqtbl1q_s8(*a1, *qword_1B01E3340);
  v10 = veorq_s8(a9, a9);
  v11 = veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0];
  v12 = vmull_high_p64(v9, *a2);
  v13 = vmull_p64(v9.u64[0], a2->i64[0]);
  v14 = veorq_s8(v13, veorq_s8(v12, vmull_p64(veorq_s8(*a2, vextq_s8(*a2, *a2, 8uLL)).u64[0], v11)));
  v15 = veorq_s8(vextq_s8(v10, v14, 8uLL), v13);
  v16 = veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0]));
  result = vqtbl1q_s8(veorq_s8(veorq_s8(vextq_s8(v14, v10, 8uLL), v12), veorq_s8(vextq_s8(v16, v16, 8uLL), vmull_p64(0xC200000000000000, v16.u64[0]))), *qword_1B01E3340);
  *a3 = result;
  return result;
}

int8x16_t sub_1B01E3080(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, uint64_t a4)
{
  v5 = veorq_s8(v4, v4);
  v6 = vqtbl1q_s8(*a1, *qword_1B01E3340);
  v7 = a4 < 128;
  for (i = a4 - 128; !v7; i -= 128)
  {
    v9 = vqtbl1q_s8(a3[7], *qword_1B01E3340);
    v10 = vmull_p64(a2->i64[0], v9.u64[0]);
    v11 = vmull_high_p64(*a2, v9);
    v12 = vmull_p64(a2[8].u64[0], veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0]);
    v13 = vqtbl1q_s8(a3[6], *qword_1B01E3340);
    v14 = a2[1];
    v15 = veorq_s8(v10, vmull_p64(v14.u64[0], v13.u64[0]));
    v16 = veorq_s8(v11, vmull_high_p64(v14, v13));
    v17 = veorq_s8(v12, vmull_p64(a2[9].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0]));
    v18 = vqtbl1q_s8(a3[5], *qword_1B01E3340);
    v19 = a2[2];
    v20 = veorq_s8(v15, vmull_p64(v19.u64[0], v18.u64[0]));
    v21 = veorq_s8(v16, vmull_high_p64(v19, v18));
    v22 = veorq_s8(v17, vmull_p64(a2[10].u64[0], veorq_s8(v18, vextq_s8(v18, v18, 8uLL)).u64[0]));
    v23 = vqtbl1q_s8(a3[4], *qword_1B01E3340);
    v24 = a2[3];
    v25 = veorq_s8(v20, vmull_p64(v24.u64[0], v23.u64[0]));
    v26 = veorq_s8(v21, vmull_high_p64(v24, v23));
    v27 = veorq_s8(v22, vmull_p64(a2[11].u64[0], veorq_s8(v23, vextq_s8(v23, v23, 8uLL)).u64[0]));
    v28 = vqtbl1q_s8(a3[3], *qword_1B01E3340);
    v29 = a2[4];
    v30 = veorq_s8(v25, vmull_p64(v29.u64[0], v28.u64[0]));
    v31 = veorq_s8(v26, vmull_high_p64(v29, v28));
    v32 = veorq_s8(v27, vmull_p64(a2[12].u64[0], veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0]));
    v33 = vqtbl1q_s8(a3[2], *qword_1B01E3340);
    v34 = a2[5];
    v35 = veorq_s8(v30, vmull_p64(v34.u64[0], v33.u64[0]));
    v36 = veorq_s8(v31, vmull_high_p64(v34, v33));
    v37 = veorq_s8(v32, vmull_p64(a2[13].u64[0], veorq_s8(v33, vextq_s8(v33, v33, 8uLL)).u64[0]));
    v38 = vqtbl1q_s8(a3[1], *qword_1B01E3340);
    v39 = a2[6];
    v40 = veorq_s8(v35, vmull_p64(v39.u64[0], v38.u64[0]));
    v41 = veorq_s8(v36, vmull_high_p64(v39, v38));
    v42 = veorq_s8(v37, vmull_p64(a2[14].u64[0], veorq_s8(v38, vextq_s8(v38, v38, 8uLL)).u64[0]));
    v43 = a2[7];
    v44 = veorq_s8(vqtbl1q_s8(*a3, *qword_1B01E3340), v6);
    v45 = veorq_s8(v40, vmull_p64(v43.u64[0], v44.u64[0]));
    v46 = veorq_s8(v41, vmull_high_p64(v43, v44));
    v47 = veorq_s8(v46, veorq_s8(v45, veorq_s8(v42, vmull_p64(a2[15].u64[0], veorq_s8(v44, vextq_s8(v44, v44, 8uLL)).u64[0]))));
    v48 = veorq_s8(v45, vextq_s8(v5, v47, 8uLL));
    v49 = veorq_s8(vmull_p64(0xC200000000000000, v48.u64[0]), vextq_s8(v48, v48, 8uLL));
    v6 = veorq_s8(veorq_s8(v46, vextq_s8(v47, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v49.u64[0]), vextq_s8(v49, v49, 8uLL)));
    a3 += 8;
    v7 = i < 128;
  }

  v7 = i < -112;
  v50 = i + 112;
  if (!v7)
  {
    v52 = *a3;
    v51 = a3 + 1;
    v53 = veorq_s8(v6, vqtbl1q_s8(v52, *qword_1B01E3340));
    v54 = (a2 + v50);
    v55 = *(a2 + v50);
    v56 = vmull_p64(v53.u64[0], v55.u64[0]);
    v57 = vmull_high_p64(v53, v55);
    v58 = vmull_p64(veorq_s8(v53, vextq_s8(v53, v53, 8uLL)).u64[0], *(a2[8].u64 + v50));
    v7 = v50 < 16;
    for (j = v50 - 16; !v7; j -= 16)
    {
      --v54;
      v60 = *v51++;
      v61 = vqtbl1q_s8(v60, *qword_1B01E3340);
      v56 = veorq_s8(v56, vmull_p64(v61.u64[0], v54->i64[0]));
      v57 = veorq_s8(v57, vmull_high_p64(v61, *v54));
      v58 = veorq_s8(v58, vmull_p64(veorq_s8(v61, vextq_s8(v61, v61, 8uLL)).u64[0], v54[8].u64[0]));
      v7 = j < 16;
    }

    v62 = veorq_s8(v57, veorq_s8(v56, v58));
    v63 = veorq_s8(v56, vextq_s8(v5, v62, 8uLL));
    v64 = veorq_s8(vmull_p64(0xC200000000000000, v63.u64[0]), vextq_s8(v63, v63, 8uLL));
    v6 = veorq_s8(veorq_s8(v57, vextq_s8(v62, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v64.u64[0]), vextq_s8(v64, v64, 8uLL)));
  }

  result = vqtbl1q_s8(v6, *qword_1B01E3340);
  *a1 = result;
  return result;
}

int64x2_t *sub_1B01E3360(int64x2_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    i8 = &xmmword_1B01FEF00;
    v4 = *result;
    v5 = result[1];
    v6 = result[2];
    v7 = result[3];
    do
    {
      _Q24 = v4;
      _Q25 = v5;
      _Q0 = vrev64q_s8(*a3);
      _Q1 = vrev64q_s8(a3[1]);
      _Q2 = vrev64q_s8(a3[2]);
      _Q3 = vrev64q_s8(a3[3]);
      _Q4 = vrev64q_s8(a3[4]);
      v15 = *i8;
      _Q5 = vrev64q_s8(a3[5]);
      v17 = i8[1];
      _Q6 = vrev64q_s8(a3[6]);
      v19 = i8[2];
      _Q7 = vrev64q_s8(a3[7]);
      v21 = i8[3];
      v22 = i8[4];
      v23 = i8[5];
      v24 = i8[6];
      v25 = i8[7];
      a3 += 8;
      v26 = (i8 + 8);
      _Q29 = vextq_s8(v6, v7, 8uLL);
      _Q28 = vextq_s8(v5, v6, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v30 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v37 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v40 = vaddq_s64(v5, v37);
      _Q29 = vextq_s8(v40, v6, 8uLL);
      _Q28 = vextq_s8(v4, v40, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v44 = v26[1];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v47 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v50 = vaddq_s64(v4, v47);
      _Q29 = vextq_s8(v50, v40, 8uLL);
      _Q28 = vextq_s8(_Q27, v50, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v54 = v26[2];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v57 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v60 = vaddq_s64(_Q27, v57);
      _Q29 = vextq_s8(v60, v50, 8uLL);
      _Q28 = vextq_s8(_Q26, v60, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v64 = v26[3];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v67 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v70 = vaddq_s64(_Q26, v67);
      _Q29 = vextq_s8(v70, v60, 8uLL);
      _Q28 = vextq_s8(_Q25, v70, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v74 = v26[4];
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v77 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v80 = vaddq_s64(_Q25, v77);
      _Q29 = vextq_s8(v80, v70, 8uLL);
      _Q28 = vextq_s8(_Q24, v80, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v84 = v26[5];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v87 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v90 = vaddq_s64(_Q24, v87);
      _Q29 = vextq_s8(v90, v80, 8uLL);
      _Q28 = vextq_s8(_Q27, v90, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v94 = v26[6];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v97 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v100 = vaddq_s64(_Q27, v97);
      _Q29 = vextq_s8(v100, v90, 8uLL);
      _Q28 = vextq_s8(_Q26, v100, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v104 = v26[7];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v107 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v110 = vaddq_s64(_Q26, v107);
      v26 += 8;
      _Q29 = vextq_s8(v110, v100, 8uLL);
      _Q28 = vextq_s8(_Q25, v110, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v114 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v117 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v120 = vaddq_s64(_Q25, v117);
      _Q29 = vextq_s8(v120, v110, 8uLL);
      _Q28 = vextq_s8(_Q24, v120, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v124 = v26[1];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v127 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v130 = vaddq_s64(_Q24, v127);
      _Q29 = vextq_s8(v130, v120, 8uLL);
      _Q28 = vextq_s8(_Q27, v130, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v134 = v26[2];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v137 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v140 = vaddq_s64(_Q27, v137);
      _Q29 = vextq_s8(v140, v130, 8uLL);
      _Q28 = vextq_s8(_Q26, v140, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v144 = v26[3];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v147 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v150 = vaddq_s64(_Q26, v147);
      _Q29 = vextq_s8(v150, v140, 8uLL);
      _Q28 = vextq_s8(_Q25, v150, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v154 = v26[4];
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v157 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v160 = vaddq_s64(_Q25, v157);
      _Q29 = vextq_s8(v160, v150, 8uLL);
      _Q28 = vextq_s8(_Q24, v160, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v164 = v26[5];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v167 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v170 = vaddq_s64(_Q24, v167);
      _Q29 = vextq_s8(v170, v160, 8uLL);
      _Q28 = vextq_s8(_Q27, v170, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v174 = v26[6];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v177 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v180 = vaddq_s64(_Q27, v177);
      _Q29 = vextq_s8(v180, v170, 8uLL);
      _Q28 = vextq_s8(_Q26, v180, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v184 = v26[7];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v187 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v190 = vaddq_s64(_Q26, v187);
      v26 += 8;
      _Q29 = vextq_s8(v190, v180, 8uLL);
      _Q28 = vextq_s8(_Q25, v190, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      v194 = *v26;
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v197 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v200 = vaddq_s64(_Q25, v197);
      _Q29 = vextq_s8(v200, v190, 8uLL);
      _Q28 = vextq_s8(_Q24, v200, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      v204 = v26[1];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v207 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v210 = vaddq_s64(_Q24, v207);
      _Q29 = vextq_s8(v210, v200, 8uLL);
      _Q28 = vextq_s8(_Q27, v210, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      v214 = v26[2];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v217 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v220 = vaddq_s64(_Q27, v217);
      _Q29 = vextq_s8(v220, v210, 8uLL);
      _Q28 = vextq_s8(_Q26, v220, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      v224 = v26[3];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v227 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v230 = vaddq_s64(_Q26, v227);
      _Q29 = vextq_s8(v230, v220, 8uLL);
      _Q28 = vextq_s8(_Q25, v230, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      v234 = v26[4];
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v237 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v240 = vaddq_s64(_Q25, v237);
      _Q29 = vextq_s8(v240, v230, 8uLL);
      _Q28 = vextq_s8(_Q24, v240, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      v244 = v26[5];
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v247 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v250 = vaddq_s64(_Q24, v247);
      _Q29 = vextq_s8(v250, v240, 8uLL);
      _Q28 = vextq_s8(_Q27, v250, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      v254 = v26[6];
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v257 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v260 = vaddq_s64(_Q27, v257);
      _Q29 = vextq_s8(v260, v250, 8uLL);
      _Q28 = vextq_s8(_Q26, v260, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      v264 = v26[7];
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v267 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v270 = vaddq_s64(_Q26, v267);
      v26 += 8;
      _Q29 = vextq_s8(v270, v260, 8uLL);
      _Q28 = vextq_s8(_Q25, v270, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v276 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v279 = vaddq_s64(_Q25, v276);
      v280 = vaddq_s64(_Q0, *v26);
      _Q29 = vextq_s8(v279, v270, 8uLL);
      _Q28 = vextq_s8(_Q24, v279, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v286 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v289 = vaddq_s64(_Q24, v286);
      v290 = vaddq_s64(_Q1, v26[1]);
      _Q29 = vextq_s8(v289, v279, 8uLL);
      _Q28 = vextq_s8(_Q27, v289, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v296 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v299 = vaddq_s64(_Q27, v296);
      v300 = vaddq_s64(_Q2, v26[2]);
      _Q29 = vextq_s8(v299, v289, 8uLL);
      _Q28 = vextq_s8(_Q26, v299, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v306 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v309 = vaddq_s64(_Q26, v306);
      v310 = vaddq_s64(_Q3, v26[3]);
      _Q29 = vextq_s8(v309, v299, 8uLL);
      _Q28 = vextq_s8(_Q25, v309, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v316 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v319 = vaddq_s64(_Q25, v316);
      v320 = vaddq_s64(_Q4, v26[4]);
      _Q29 = vextq_s8(v319, v309, 8uLL);
      _Q28 = vextq_s8(_Q24, v319, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v326 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v329 = vaddq_s64(_Q24, v326);
      v330 = vaddq_s64(_Q5, v26[5]);
      _Q29 = vextq_s8(v329, v319, 8uLL);
      _Q28 = vextq_s8(_Q27, v329, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v336 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v339 = vaddq_s64(_Q27, v336);
      v340 = vaddq_s64(_Q6, v26[6]);
      _Q29 = vextq_s8(v339, v329, 8uLL);
      _Q28 = vextq_s8(_Q26, v339, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v346 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v349 = vaddq_s64(_Q26, v346);
      v350 = vaddq_s64(_Q7, v26[7]);
      _Q29 = vextq_s8(v349, v339, 8uLL);
      _Q28 = vextq_s8(_Q25, v349, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v355 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v355, v349, 8uLL);
      _Q28 = vextq_s8(_Q24, v355, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v360 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v360, v355, 8uLL);
      _Q28 = vextq_s8(_Q27, v360, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v365 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v365, v360, 8uLL);
      _Q28 = vextq_s8(_Q26, v365, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v370 = vaddq_s64(_Q26, _Q30);
      _Q29 = vextq_s8(v370, v365, 8uLL);
      _Q28 = vextq_s8(_Q25, v370, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v375 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v375, v370, 8uLL);
      _Q28 = vextq_s8(_Q24, v375, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v380 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v380, v375, 8uLL);
      _Q28 = vextq_s8(_Q27, v380, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v385 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v385, v380, 8uLL);
      _Q28 = vextq_s8(_Q26, v385, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v4 = vaddq_s64(v4, _Q24);
      v5 = vaddq_s64(v5, _Q25);
      v6 = vaddq_s64(v6, vaddq_s64(_Q26, _Q30));
      v7 = vaddq_s64(v7, v385);
      v390 = a2-- <= 1;
      i8 = v26[-32].i8;
    }

    while (!v390);
    *result = v4;
    result[1] = v5;
    result[2] = v6;
    result[3] = v7;
  }

  return result;
}

uint64_t sub_1B01E3C00(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = 4;
  v9 = (*(a1 + 24))(a1, 4);
  v10 = (*(a1 + 24))(a1, 4);
  v11 = (*(a1 + 24))(a1, 4);
  sub_1B01E69E0(v11, a4, a4);
  sub_1B01E69E0(v10, v11, a4);
  sub_1B01E69E0(v10, v10, v10);
  sub_1B01E69E0(v10, v10, v10);
  sub_1B01E69E0(v9, v10, a4);
  sub_1B01E69E0(v10, v9, v11);
  do
  {
    sub_1B01E69E0(v10, v10, v10);
    --v8;
  }

  while (v8);
  sub_1B01E69E0(v9, v9, v10);
  sub_1B01E69E0(v10, v9, v11);
  v12 = 8;
  do
  {
    sub_1B01E69E0(v10, v10, v10);
    --v12;
  }

  while (v12);
  sub_1B01E69E0(v9, v9, v10);
  sub_1B01E69E0(v10, v9, v11);
  v13 = 16;
  do
  {
    sub_1B01E69E0(v10, v10, v10);
    --v13;
  }

  while (v13);
  sub_1B01E69E0(v9, v9, v10);
  sub_1B01E69E0(v10, v9, v11);
  sub_1B01E136C(4, v11, v10);
  v14 = 32;
  do
  {
    sub_1B01E69E0(v11, v11, v11);
    --v14;
  }

  while (v14);
  sub_1B01E69E0(v11, v11, a4);
  v15 = 128;
  do
  {
    sub_1B01E69E0(v11, v11, v11);
    --v15;
  }

  while (v15);
  sub_1B01E69E0(v11, v11, v10);
  v16 = 32;
  do
  {
    sub_1B01E69E0(v11, v11, v11);
    --v16;
  }

  while (v16);
  sub_1B01E69E0(v11, v11, v10);
  v17 = 32;
  do
  {
    sub_1B01E69E0(v11, v11, v11);
    --v17;
  }

  while (v17);
  sub_1B01E69E0(v10, v11, v9);
  sub_1B01E69E0(v9, v10, a4);
  v20[0] = xmmword_1B01FF1B8;
  v20[1] = *algn_1B01FF1C8;
  sub_1B01E69E0(v9, v9, v20);
  if (sub_1B01E1274(4, v9) == 1 && *v9 == 1)
  {
    sub_1B01E136C(4, a3, v10);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *sub_1B01E3EEC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = xmmword_1B01FF1B8;
  v6[1] = *algn_1B01FF1C8;
  result = sub_1B01E69E0(a3, a4, v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *sub_1B01E3F54(unsigned int *result, uint64_t a2, const char *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  memset(v82, 0, sizeof(v82));
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    v8 = result[5];
    v9 = result[6];
    v10 = result[7];
    do
    {
      v84 = vld4q_s8(a3);
      v11 = vmovl_u8(*v84.val[0].i8);
      v12 = vmovl_high_u8(v84.val[0]);
      _Q16 = vmovl_high_u8(v84.val[1]);
      _Q17 = vmovl_u8(*v84.val[1].i8);
      v15 = vshll_n_s16(*_Q17.i8, 0x10uLL);
      __asm
      {
        SHLL2           V19.4S, V16.8H, #0x10
        SHLL2           V17.4S, V17.8H, #0x10
      }

      v21 = vmovl_u8(*v84.val[2].i8);
      v22 = vmovl_high_u8(v84.val[2]);
      v23 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v22.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v12.i8), 0x18uLL));
      v24 = vmovl_u8(*v84.val[3].i8);
      v84.val[0] = vmovl_high_u8(v84.val[3]);
      v80 = vorrq_s8(v23, vmovl_u16(*v84.val[0].i8));
      v81 = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v22, 8uLL)), vshlq_n_s32(vmovl_high_u16(v12), 0x18uLL)), vmovl_high_u16(v84.val[0]));
      v78 = vorrq_s8(vorrq_s8(vorrq_s8(v15, vshll_n_u16(*v21.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v11.i8), 0x18uLL)), vmovl_u16(*v24.i8));
      v79 = vorrq_s8(vorrq_s8(vorrq_s8(_Q17, vshll_high_n_u16(v21, 8uLL)), vshlq_n_s32(vmovl_high_u16(v11), 0x18uLL)), vmovl_high_u16(v24));
      --a2;
      v25 = v78.i32[0];
      v26 = v82;
      v27 = 48;
      do
      {
        HIDWORD(v28) = *(v26 - 2);
        LODWORD(v28) = HIDWORD(v28);
        v29 = (v28 >> 17) ^ __ROR4__(HIDWORD(v28), 19) ^ (HIDWORD(v28) >> 10);
        HIDWORD(v28) = *(v26 - 15);
        LODWORD(v28) = HIDWORD(v28);
        *v26 = v29 + *(v26 - 7) + v25 + ((v28 >> 7) ^ __ROR4__(HIDWORD(v28), 18) ^ (HIDWORD(v28) >> 3));
        ++v26;
        v25 = HIDWORD(v28);
        --v27;
      }

      while (v27);
      v30 = &dword_1B01FF1F0;
      v31 = -8;
      v32 = &v79;
      v33 = v10;
      v34 = v9;
      v35 = v8;
      v36 = v7;
      v37 = v6;
      v38 = v5;
      v39 = v4;
      v40 = v3;
      do
      {
        HIDWORD(v41) = v36;
        LODWORD(v41) = v36;
        v42 = (v41 >> 6) ^ __ROR4__(v36, 11);
        v44 = __PAIR64__(v40, __ROR4__(v36, 25));
        v43 = v42 ^ v44;
        LODWORD(v44) = v40;
        v45 = v33 + (v35 & v36 | v34 & ~v36) + *(v30 - 4) + v32[-1].i32[0] + v43;
        v46 = v45 + v37;
        v47 = ((v39 | v40) & v38 | v39 & v40) + ((v44 >> 2) ^ __ROR4__(v40, 13) ^ __ROR4__(v40, 22)) + v45;
        HIDWORD(v44) = v46;
        LODWORD(v44) = v46;
        v48 = (v44 >> 6) ^ __ROR4__(v46, 11);
        v49 = __PAIR64__(v47, __ROR4__(v46, 25));
        v50 = *(v30 - 3) + v34 + v32[-1].i32[1] + (v36 & v46 | v35 & ~v46) + (v48 ^ v49);
        LODWORD(v49) = v47;
        v51 = v50 + v38;
        v52 = ((v49 >> 2) ^ __ROR4__(v47, 13) ^ __ROR4__(v47, 22)) + ((v47 | v40) & v39 | v47 & v40) + v50;
        HIDWORD(v49) = v51;
        LODWORD(v49) = v51;
        v53 = (v49 >> 6) ^ __ROR4__(v51, 11);
        v55 = __PAIR64__(v52, __ROR4__(v51, 25));
        v54 = v53 ^ v55;
        LODWORD(v55) = v52;
        v56 = *(v30 - 2) + v35 + v32[-1].i32[2] + (v46 & v51 | v36 & ~v51) + v54;
        v57 = v56 + v39;
        v58 = ((v55 >> 2) ^ __ROR4__(v52, 13) ^ __ROR4__(v52, 22)) + ((v52 | v47) & v40 | v52 & v47) + v56;
        HIDWORD(v55) = v57;
        LODWORD(v55) = v57;
        v59 = (v55 >> 6) ^ __ROR4__(v57, 11);
        v60 = __PAIR64__(v58, __ROR4__(v57, 25));
        v61 = *(v30 - 1) + v36 + v32[-1].i32[3] + (v51 & v57 | v46 & ~v57) + (v59 ^ v60);
        LODWORD(v60) = v58;
        v62 = v61 + v40;
        v63 = ((v60 >> 2) ^ __ROR4__(v58, 13) ^ __ROR4__(v58, 22)) + ((v58 | v52) & v47 | v58 & v52) + v61;
        HIDWORD(v60) = v62;
        LODWORD(v60) = v62;
        v64 = (v60 >> 6) ^ __ROR4__(v62, 11);
        v66 = __PAIR64__(v63, __ROR4__(v62, 25));
        v65 = v64 ^ v66;
        LODWORD(v66) = v63;
        v67 = *v30 + v32->i32[0] + v46 + (v57 & v62 | v51 & ~v62) + v65;
        v33 = v67 + v47;
        v37 = ((v66 >> 2) ^ __ROR4__(v63, 13) ^ __ROR4__(v63, 22)) + ((v63 | v58) & v52 | v63 & v58) + v67;
        HIDWORD(v66) = v33;
        LODWORD(v66) = v33;
        v68 = (v66 >> 6) ^ __ROR4__(v33, 11);
        v69 = __PAIR64__(v37, __ROR4__(v33, 25));
        v70 = v51 + v30[1] + v32->i32[1] + (v62 & v33 | v57 & ~v33) + (v68 ^ v69);
        LODWORD(v69) = v37;
        v34 = v70 + v52;
        v38 = ((v69 >> 2) ^ __ROR4__(v37, 13) ^ __ROR4__(v37, 22)) + ((v37 | v63) & v58 | v37 & v63) + v70;
        HIDWORD(v69) = v34;
        LODWORD(v69) = v34;
        v71 = (v69 >> 6) ^ __ROR4__(v34, 11);
        v72 = __PAIR64__(v38, __ROR4__(v34, 25));
        v73 = v32->i32[2] + v30[2] + v57 + (v33 & v34 | v62 & ~v34) + (v71 ^ v72);
        LODWORD(v72) = v38;
        v35 = v73 + v58;
        v39 = ((v72 >> 2) ^ __ROR4__(v38, 13) ^ __ROR4__(v38, 22)) + ((v38 | v37) & v63 | v38 & v37) + v73;
        HIDWORD(v72) = v35;
        LODWORD(v72) = v35;
        v74 = (v72 >> 6) ^ __ROR4__(v35, 11);
        v75 = __PAIR64__(v39, __ROR4__(v35, 25));
        v76 = v32->i32[3] + v30[3] + v62 + (v34 & v35 | v33 & ~v35) + (v74 ^ v75);
        LODWORD(v75) = v39;
        v36 = v76 + v63;
        v40 = ((v75 >> 2) ^ __ROR4__(v39, 13) ^ __ROR4__(v39, 22)) + ((v39 | v38) & v37 | v39 & v38) + v76;
        v31 += 8;
        v32 += 2;
        v30 += 8;
      }

      while (v31 < 0x38);
      v3 += v40;
      v4 += v39;
      *result = v3;
      result[1] = v4;
      v5 += v38;
      v6 += v37;
      result[2] = v5;
      result[3] = v6;
      v7 += v36;
      v8 += v35;
      result[4] = v7;
      result[5] = v8;
      v9 += v34;
      v10 += v33;
      a3 += 64;
      result[6] = v9;
      result[7] = v10;
    }

    while (a2);
  }

  v77 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E4424(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_1B01DFC00(a2);
  v9 = v8;
  if (v8)
  {
    v10 = a2[*a2 + 3];
    v11 = a4;
    v12 = v8;
    do
    {
      v13 = sub_1B01E6C58(a2);
      *v11 = sub_1B01DF5F4(v9, v11, v13, *v11 * v10);
      ++v11;
      --v12;
    }

    while (v12);
  }

  v14 = sub_1B01E05D4(a1, v9, &a4[v9], &a4[v9], a4);
  v15 = sub_1B01E6C58(a2);
  v16 = sub_1B01E17B4(a1, v9, a4, &a4[v9], v15) ^ v14;

  return sub_1B01E0764(v9, v16, a3, &a4[v9], a4);
}

uint64_t sub_1B01E4520(uint64_t a1, char a2, uint64_t *a3)
{
  result = sub_1B01E07C8();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v8 = *a3;
    v9 = *a3 ^ result;
    *a3 = v9;
    *a3++ = v9 ^ v8 & 0x5555555555555555 ^ v8 & i ^ result;
  }

  return result;
}

void sub_1B01E4594(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  bzero(v43, 0x280uLL);
  for (; a2; --a2)
  {
    v6 = 0;
    v7 = a1[1];
    v46 = *a1;
    v47 = v7;
    v8 = a1[3];
    v48 = a1[2];
    v49 = v8;
    do
    {
      v43[v6] = bswap64(*(a3 + v6 * 8));
      ++v6;
    }

    while (v6 != 16);
    v9 = v43[0];
    v10 = &v45;
    v11 = 64;
    do
    {
      v12 = *(v10 - 15);
      *v10 = (__ROR8__(*(v10 - 2), 19) ^ __ROR8__(*(v10 - 2), 61) ^ (*(v10 - 2) >> 6)) + *(v10 - 7) + v9 + (__ROR8__(v12, 1) ^ __ROR8__(v12, 8) ^ (v12 >> 7));
      ++v10;
      v9 = v12;
      --v11;
    }

    while (v11);
    v14 = *(&v49 + 1);
    v13 = v49;
    v16 = *(&v48 + 1);
    v15 = v48;
    v18 = *(&v46 + 1);
    v17 = v46;
    v19 = &xmmword_1B01FEF20;
    v20 = -8;
    v21 = &v44;
    v23 = *(&v47 + 1);
    v22 = v47;
    do
    {
      v24 = (__ROR8__(v15, 14) ^ __ROR8__(v15, 18) ^ __ROR8__(v15, 41)) + v14 + *(v19 - 4) + *(v21 - 4) + (v16 & v15 | v13 & ~v15);
      v25 = v23 + v24;
      v26 = v24 + (__ROR8__(v17, 28) ^ __ROR8__(v17, 34) ^ __ROR8__(v17, 39)) + ((v18 | v17) & v22 | v18 & v17);
      v27 = (v15 & v25 | v16 & ~v25) + v13 + *(v19 - 3) + *(v21 - 3) + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v28 = v27 + v22;
      v29 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + ((v26 | v17) & v18 | v26 & v17) + v27;
      v30 = *(v19 - 2) + v16 + *(v21 - 2) + (v25 & v28 | v15 & ~v28) + (__ROR8__(v28, 14) ^ __ROR8__(v28, 18) ^ __ROR8__(v28, 41));
      v31 = v30 + v18;
      v32 = (__ROR8__(v29, 28) ^ __ROR8__(v29, 34) ^ __ROR8__(v29, 39)) + ((v29 | v26) & v17 | v29 & v26) + v30;
      v33 = *(v19 - 1) + v15 + *(v21 - 1) + (v28 & v31 | v25 & ~v31) + (__ROR8__(v31, 14) ^ __ROR8__(v31, 18) ^ __ROR8__(v31, 41));
      v34 = v33 + v17;
      v35 = (__ROR8__(v32, 28) ^ __ROR8__(v32, 34) ^ __ROR8__(v32, 39)) + ((v32 | v29) & v26 | v32 & v29) + v33;
      v36 = *v19 + *v21 + v25 + (v31 & v34 | v28 & ~v34) + (__ROR8__(v34, 14) ^ __ROR8__(v34, 18) ^ __ROR8__(v34, 41));
      v14 = v36 + v26;
      v23 = (__ROR8__(v35, 28) ^ __ROR8__(v35, 34) ^ __ROR8__(v35, 39)) + ((v35 | v32) & v29 | v35 & v32) + v36;
      v37 = *(v19 + 1) + v21[1] + v28 + (v34 & v14 | v31 & ~v14) + (__ROR8__(v14, 14) ^ __ROR8__(v14, 18) ^ __ROR8__(v14, 41));
      v13 = v37 + v29;
      v22 = (__ROR8__(v23, 28) ^ __ROR8__(v23, 34) ^ __ROR8__(v23, 39)) + ((v23 | v35) & v32 | v23 & v35) + v37;
      v38 = *(v19 + 2) + v21[2] + v31 + (v14 & v13 | v34 & ~v13) + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v16 = v38 + v32;
      v18 = (__ROR8__(v22, 28) ^ __ROR8__(v22, 34) ^ __ROR8__(v22, 39)) + ((v22 | v23) & v35 | v22 & v23) + v38;
      v39 = *(v19 + 3) + v21[3] + v34 + (v13 & v16 | v14 & ~v16) + (__ROR8__(v16, 14) ^ __ROR8__(v16, 18) ^ __ROR8__(v16, 41));
      v40 = (__ROR8__(v18, 28) ^ __ROR8__(v18, 34) ^ __ROR8__(v18, 39)) + ((v18 | v22) & v23 | v18 & v22);
      v15 = v39 + v35;
      v17 = v40 + v39;
      v20 += 8;
      v21 += 8;
      v19 += 4;
    }

    while (v20 < 0x48);
    v41 = 0;
    *&v49 = v13;
    *(&v49 + 1) = v14;
    *&v48 = v15;
    *(&v48 + 1) = v16;
    *&v46 = v40 + v39;
    *(&v46 + 1) = v18;
    *&v47 = v22;
    *(&v47 + 1) = v23;
    do
    {
      a1[v41] = vaddq_s64(*(&v46 + v41 * 16), a1[v41]);
      ++v41;
    }

    while (v41 != 4);
    a3 += 128;
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B01E49B4(uint64_t a1, const void *a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = v7 + 8 + v6;
  v10 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v11, v10);
  memcpy(v11, a2, v9 + 4);
  v12 = v11 + v7 + 8;
  v13 = *&v12[v6];
  *v11 += (8 * v13);
  *&v12[v6] = v13 + 1;
  v12[v13] = 0x80;
  v14 = *&v12[v6];
  if (v6 - 16 < v14)
  {
    while (v6 > v14)
    {
      *&v12[v6] = v14 + 1;
      v12[v14] = 0;
      v14 = *&v12[v6];
    }

    (*(a1 + 48))(v11 + 1, 1);
    LODWORD(v14) = 0;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(v11 + v7 + v6 + 8) = 0;
  }

  v15 = v11 + v7 + 8;
  v16 = (v15 + v6);
  if (v6 - 8 > v14)
  {
    v17 = v14;
    do
    {
      *v16 = v14 + 1;
      *(v15 + v17) = 0;
      v17 = *v16;
      LODWORD(v14) = *v16;
    }

    while (v6 - 8 > v17);
  }

  *(v16 - 1) = bswap64(*v11);
  (*(a1 + 48))(v11 + 1, 1);
  if (*a1 >= 8uLL)
  {
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      *(a3 + v18) = bswap64(v11[v19 + 1]);
      v19 = v20++;
      v18 += 8;
    }

    while (v19 < *a1 >> 3);
  }

  result = sub_1B01E5B5C(*(a1 + 8) + *(a1 + 16) + 12, v11);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E4BA0(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = a3->i64[0];
    v5 = 64 - a4;
    v6 = vdupq_n_s64(64 - a4);
    v7 = vdupq_n_s64(-a4);
    v8 = result == 4;
    v9 = result < 4;
    result -= 4;
    if (!v9)
    {
      if (v8)
      {
        v13 = a3[1];
        *a2 = veorq_s8(vshlq_u64(*a3, v7), vshlq_u64(vextq_s8(*a3, v13, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v13, v7), vshlq_u64(vextq_s8(v13, v13, 8uLL).u64[0], v6));
        return result;
      }

      do
      {
        v10 = *a3;
        v11 = a3[1];
        a3 += 2;
        v4 = a3->i64[0];
        v12.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
        v12.i64[1] = a3->i64[0];
        *a2 = veorq_s8(vshlq_u64(v10, v7), vshlq_u64(vextq_s8(v10, v11, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v11, v7), vshlq_u64(v12, v6));
        a2 += 2;
        v9 = result <= 4;
        result -= 4;
      }

      while (!v9);
    }

    v14 = result + 4;
    v15 = &a3->u64[1];
    v16 = v14 == 2;
    v9 = v14 < 2;
    result = v14 - 2;
    if (!v9)
    {
      if (v16)
      {
        v19 = *v15 >> a4;
        a2->i64[0] = (v4 >> a4) | (*v15 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = v19;
        return result;
      }

      do
      {
        v17 = *v15;
        v18 = v15[1];
        v15 += 2;
        a2->i64[0] = (v4 >> a4) | (v17 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = (v17 >> a4) | (v18 << v5) & (((64 - a4) >> 6) - 1);
        ++a2;
        v4 = v18;
        v9 = result <= 2;
        result -= 2;
      }

      while (!v9);
    }

    a2->i64[0] = v4 >> a4;
  }

  return result;
}

uint64_t sub_1B01E4CBC(uint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int8 *a5)
{
  v10 = sub_1B01E6D10(40 * *a1 + 24);
  v11 = *a1;
  v12 = 5 * *a1 + 3;
  v15[0] = v10;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = sub_1B01E6D4C;
  v16 = sub_1B01E6D94;
  if (!v10)
  {
    return 4294967283;
  }

  if (sub_1B01E1298(v11, a1 + 3, a4, a5) || sub_1B01E1298(v11, &a1[2 * *a1 + 4], a2, a3))
  {
    v13 = 4294967273;
    sub_1B01E6D94(v15);
  }

  else
  {
    v13 = sub_1B01E65E8(v15, a1, v11, 0);
    v16(v15);
  }

  return v13;
}

uint64_t sub_1B01E4DE4(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 1 << a2;
  v4 = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  if (a3)
  {
    v5 = *(result + v4) | v3;
  }

  else
  {
    v5 = *(result + v4) & ~v3;
  }

  *(result + v4) = v5;
  return result;
}

uint64_t sub_1B01E4E2C(uint64_t result, unint64_t *a2)
{
  for (i = &a2[result - 1]; a2 < i; --i)
  {
    v3 = bswap64(*a2);
    *a2++ = bswap64(*i);
    *i = v3;
  }

  if (result)
  {
    *a2 = bswap64(*a2);
  }

  return result;
}

unint64_t sub_1B01E4E70(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B01E07C8();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * v10));
  if (a1)
  {
    v12 = 0;
    do
    {
      v14 = *a4++;
      v13 = v14;
      v15 = *a5++;
      v16 = __PAIR128__(v12, v12) - v13;
      v17 = v16 + v15;
      if (__CFADD__(v16, v15))
      {
        v18 = *(&v16 + 1) + 1;
      }

      else
      {
        v18 = (__PAIR128__(v12, v12) - v13) >> 64;
      }

      v12 = v18 >> 63;
      v19 = v13 ^ v17;
      v20 = v13 ^ v10;
      *a3 = v20;
      *a3++ = v19 & v11 ^ v19 & 0x5555555555555555 ^ v20 ^ v10;
      --a1;
    }

    while (a1);
    v21 = v18 >> 63;
  }

  else
  {
    v21 = 0;
  }

  return v21 & a2;
}

BOOL sub_1B01E4F24()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) != 0;
    __asm { MSR             DIT, #1 }
  }

  else
  {
    v0 = 0;
  }

  if ((MEMORY[0xFFFFFC010] & 0x200000000000) != 0)
  {
    sub_1B01E4FA0();
  }

  else
  {
    __dsb(0xFu);
    __isb(0xFu);
  }

  return v0;
}

uint64_t sub_1B01E4F84(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

unint64_t sub_1B01E4FA8(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = (v2 << 6) - 64;
    do
    {
      result = (__clz(__rbit64(*(a2 - 8 + 8 * v2) | 0x8000000000000000)) + v3) & -(*(a2 - 8 + 8 * v2) != 0) | (*(a2 - 8 + 8 * v2) != 0 ? 0 : result);
      v3 -= 64;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B01E5004(uint64_t a1, unint64_t **a2, unint64_t a3, unsigned __int8 *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v15 = *a2;
  v17 = (*a2 + 4);
  v16 = **a2;
  if (a3 <= 0xF)
  {
    sub_1B01E54D4(a3);
  }

  if (!sub_1B01F5B1C(v15, a5) && !sub_1B01F5B1C(v15, a6))
  {
    v36 = a8;
    v39 = *(a1 + 16);
    v43 = (*(a1 + 24))(a1, v16);
    v38 = (*(a1 + 24))(a1, v16);
    v42 = (*(a1 + 24))(a1, v16);
    v40 = (*(a1 + 24))(a1, v16);
    v37 = (*(a1 + 24))(a1, 3 * v16);
    v41 = (*(a1 + 24))(a1, 3 * v16);
    v20 = sub_1B01DBED8(a2);
    v34 = (*(a1 + 24))(a1, v16);
    memset(v34, 170, v20);
    __s = (*(a1 + 24))(a1, v16);
    v35 = v20;
    memset(__s, 255, v20);
    v21 = sub_1B01DFC08(v17 + 40 * *v15);
    v22 = v21;
    if ((v21 + 7) >> 3 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = (v21 + 7) >> 3;
    }

    v24 = sub_1B01E1368(v16, v43, v23, a4);
    if ((v24 & 0x80000000) == 0)
    {
      if (v22 < 8 * a3)
      {
        sub_1B01E1380(v16, v43, v43, -v22 & 7);
      }

      v25 = sub_1B01E6C58(v17 + 40 * v16);
      if (!sub_1B01E17B4(a1, v16, v38, v43->i64, v25))
      {
        sub_1B01E136C(v16, v43, v38);
      }

      if (sub_1B01DFBF4(a1, v17 + 40 * v16) || (sub_1B01E69D4(a1, v17 + 40 * v16), sub_1B01E69D4(a1, v17 + 40 * v16), v26 = a2 + 2, sub_1B01E1274(v16, &a2[2 * *v15 + 2]) != 1) || v26[2 * *v15] != 1)
      {
LABEL_36:
        v18 = 4294967289;
LABEL_38:
        v28 = v39;
LABEL_35:
        *(a1 + 16) = v28;
        return v18;
      }

      v24 = sub_1B01DEBF0(a1, v15);
      if (!v24)
      {
        v24 = sub_1B01DEBF0(a1, v15);
        if (!v24)
        {
          if (sub_1B01E03EC(a1, v15, v41))
          {
            v27 = *v15;
            if (sub_1B01E0A24(*v15, v17 + 16 * *v15 + 8 * *v15, v26))
            {
              v18 = sub_1B01DEBFC(a1, v15, v37, v42, v37, v40, v41);
              v28 = v39;
              if (v18)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v29 = v17 + 40 * v27;
              v30 = *(a1 + 16);
              (*(a1 + 24))(a1, 3 * v27);
              sub_1B01DFC08(v29);
              if (sub_1B01DE588(a1, v15) || (sub_1B01DFC08(v29), sub_1B01DE588(a1, v15)))
              {
                v18 = 0xFFFFFFFFLL;
              }

              else
              {
                sub_1B01DD460(a1, v15);
                v18 = 0;
              }

              v28 = v39;
              *(a1 + 16) = v30;
              if (v18)
              {
                goto LABEL_35;
              }
            }

            if (sub_1B01DC170(a1, v15, v37, v37))
            {
              v18 = 4294967289;
            }

            else
            {
              v44 = v17 + 40 * v16;
              v31 = sub_1B01E6C58(v44);
              if ((sub_1B01E0A24(v16, v37, v31) & 0x80000000) == 0)
              {
                v32 = sub_1B01E6C58(v44);
                sub_1B01E17B4(a1, v16, v37, v37, v32);
              }

              if (sub_1B01E0A24(v16, v37, a5))
              {
                v18 = 4294967150;
              }

              else
              {
                v18 = 0;
              }

              sub_1B01E18D0(v16, a5, v35, v34);
              sub_1B01E18D0(v16, v37, v35, __s);
              sub_1B01E1F54(v36, &unk_1B01FF180, v35, v34, __s);
            }

            goto LABEL_35;
          }

          goto LABEL_36;
        }
      }
    }

    v18 = v24;
    goto LABEL_38;
  }

  return 4294967289;
}

void sub_1B01E54D4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = sub_1B01E05E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_fault_impl(&dword_1B0190000, v2, OS_LOG_TYPE_FAULT, "Digest should be at least 128 bits long: argument digest_len = %lu", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

double sub_1B01E5574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64x2_t a5)
{
  v5 = a2 + 8 * a1;
  v6 = vdupq_n_s64(a4);
  v7 = vdupq_n_s64(a4 - 64);
  v8 = (a3 + 8 * a1 - 8);
  v9 = a1 == 4;
  v10 = a1 < 4;
  v11 = a1 - 4;
  if (!v10)
  {
    if (v9)
    {
      v16.i64[0] = 0;
      v16.i64[1] = *(v8 - 3);
      a5 = veorq_s8(vshlq_u64(v16, v7), vshlq_u64(*(v8 - 3), v6));
      v17 = veorq_s8(vshlq_u64(*(v8 - 1), v7), vshlq_u64(*(v8 - 1), v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = v17;
      return *a5.i64;
    }

    do
    {
      v12 = *(v8 - 3);
      v13 = *(v8 - 1);
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v8 -= 4;
      a5 = veorq_s8(vshlq_u64(v14, v7), vshlq_u64(v12, v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = veorq_s8(vshlq_u64(v15, v7), vshlq_u64(v13, v6));
      v5 -= 32;
      v10 = v11 <= 4;
      v11 -= 4;
    }

    while (!v10);
  }

  v18 = v11 & 3;
  if (!v18)
  {
    return *a5.i64;
  }

  if (v18 == 3)
  {
    v19 = *(v8 - 1);
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    v19.i64[0] = 0;
    v19.i64[1] = *(v8 - 1);
  }

  a5 = veorq_s8(vshlq_u64(*(v8 - 1), v6), vshlq_u64(v19, v7));
  v8 -= 2;
  *(v5 - 16) = a5;
  v5 -= 16;
LABEL_13:
  if (v18)
  {
    a5.i64[0] = *v8;
    a5.i64[0] = vshlq_u64(a5, v6).u64[0];
    *(v5 - 8) = a5.i64[0];
  }

  return *a5.i64;
}

void *sub_1B01E5660(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v3 += 2;
  v8 = *v3;
  v9 = v3[1];
  v11 = *a3;
  v12 = a3[1];
  v10 = a3 + 2;
  v13 = *v10;
  v14 = v10[1];
  v10 += 2;
  v15 = *v10;
  v16 = v10[1];
  v17 = v5 * v11 + ((v4 * v11) >> 64);
  v18 = v17 + v4 * v12;
  v19 = __CFADD__(__CFADD__(v17, v4 * v12), *(&v17 + 1)) | __CFADD__((v4 * v12) >> 64, *(&v18 + 1));
  v20 = (v6 * v11) >> 64;
  v21 = *(&v18 + 1) + v6 * v11;
  v22 = __CFADD__(__CFADD__(*(&v18 + 1), v6 * v11), v19);
  v23 = __CFADD__(*(&v18 + 1), v6 * v11) + v19;
  v22 |= __CFADD__(v20, v23);
  v23 += v20;
  v24 = v22;
  v25 = (v5 * v12) >> 64;
  v22 = __CFADD__(v21, v5 * v12);
  v26 = v21 + v5 * v12;
  v28 = v22;
  v22 = __CFADD__(v22, v23);
  v27 = v28 + v23;
  v22 |= __CFADD__(v25, v27);
  v27 += v25;
  v29 = v22 + v24;
  v30 = (v4 * v13) >> 64;
  v22 = __CFADD__(v26, v4 * v13);
  v31 = v26 + v4 * v13;
  v33 = v22;
  v22 = __CFADD__(v22, v27);
  v32 = v33 + v27;
  v22 |= __CFADD__(v30, v32);
  v32 += v30;
  v34 = v22 + v29;
  v35 = (v7 * v11) >> 64;
  v22 = __CFADD__(v32, v7 * v11);
  v36 = v32 + v7 * v11;
  v38 = v22;
  v22 = __CFADD__(v22, v34);
  v37 = v38 + v34;
  v22 |= __CFADD__(v35, v37);
  v37 += v35;
  v39 = v22;
  v40 = (v6 * v12) >> 64;
  v22 = __CFADD__(v36, v6 * v12);
  v41 = v36 + v6 * v12;
  v43 = v22;
  v22 = __CFADD__(v22, v37);
  v42 = v43 + v37;
  v22 |= __CFADD__(v40, v42);
  v42 += v40;
  v44 = v22 + v39;
  v45 = (v5 * v13) >> 64;
  v22 = __CFADD__(v41, v5 * v13);
  v46 = v41 + v5 * v13;
  v48 = v22;
  v22 = __CFADD__(v22, v42);
  v47 = v48 + v42;
  v22 |= __CFADD__(v45, v47);
  v47 += v45;
  v49 = v22 + v44;
  v50 = (v4 * v14) >> 64;
  v22 = __CFADD__(v46, v4 * v14);
  v51 = v46 + v4 * v14;
  v53 = v22;
  v22 = __CFADD__(v22, v47);
  v52 = v53 + v47;
  v22 |= __CFADD__(v50, v52);
  v52 += v50;
  v54 = v22 + v49;
  v55 = (*v3 * v11) >> 64;
  v22 = __CFADD__(v52, *v3 * v11);
  v56 = v52 + *v3 * v11;
  v58 = v22;
  v22 = __CFADD__(v22, v54);
  v57 = v58 + v54;
  v22 |= __CFADD__(v55, v57);
  v57 += v55;
  v59 = v22;
  v60 = (v7 * v12) >> 64;
  v22 = __CFADD__(v56, v7 * v12);
  v61 = v56 + v7 * v12;
  v63 = v22;
  v22 = __CFADD__(v22, v57);
  v62 = v63 + v57;
  v22 |= __CFADD__(v60, v62);
  v62 += v60;
  v64 = v22 + v59;
  v65 = (v6 * v13) >> 64;
  v22 = __CFADD__(v61, v6 * v13);
  v66 = v61 + v6 * v13;
  v68 = v22;
  v22 = __CFADD__(v22, v62);
  v67 = v68 + v62;
  v22 |= __CFADD__(v65, v67);
  v67 += v65;
  v69 = v22 + v64;
  v70 = (v5 * v14) >> 64;
  v22 = __CFADD__(v66, v5 * v14);
  v71 = v66 + v5 * v14;
  v73 = v22;
  v22 = __CFADD__(v22, v67);
  v72 = v73 + v67;
  v22 |= __CFADD__(v70, v72);
  v72 += v70;
  v74 = v22 + v69;
  v75 = (v4 * v15) >> 64;
  v22 = __CFADD__(v71, v4 * v15);
  v76 = v71 + v4 * v15;
  v78 = v22;
  v22 = __CFADD__(v22, v72);
  v77 = v78 + v72;
  v22 |= __CFADD__(v75, v77);
  v77 += v75;
  v79 = v22 + v74;
  v80 = (v9 * v11) >> 64;
  v22 = __CFADD__(v77, v9 * v11);
  v81 = v77 + v9 * v11;
  v83 = v22;
  v22 = __CFADD__(v22, v79);
  v82 = v83 + v79;
  v22 |= __CFADD__(v80, v82);
  v82 += v80;
  v84 = v22;
  v85 = (*v3 * v12) >> 64;
  v22 = __CFADD__(v81, *v3 * v12);
  v86 = v81 + *v3 * v12;
  v88 = v22;
  v22 = __CFADD__(v22, v82);
  v87 = v88 + v82;
  v22 |= __CFADD__(v85, v87);
  v87 += v85;
  v89 = v22 + v84;
  v90 = (v7 * v13) >> 64;
  v22 = __CFADD__(v86, v7 * v13);
  v91 = v86 + v7 * v13;
  v93 = v22;
  v22 = __CFADD__(v22, v87);
  v92 = v93 + v87;
  v22 |= __CFADD__(v90, v92);
  v92 += v90;
  v94 = v22 + v89;
  v95 = (v6 * v14) >> 64;
  v22 = __CFADD__(v91, v6 * v14);
  v96 = v91 + v6 * v14;
  v98 = v22;
  v22 = __CFADD__(v22, v92);
  v97 = v98 + v92;
  v22 |= __CFADD__(v95, v97);
  v97 += v95;
  v99 = v22 + v94;
  v100 = (v5 * v15) >> 64;
  v22 = __CFADD__(v96, v5 * v15);
  v101 = v96 + v5 * v15;
  v103 = v22;
  v22 = __CFADD__(v22, v97);
  v102 = v103 + v97;
  v22 |= __CFADD__(v100, v102);
  v102 += v100;
  v104 = v22 + v99;
  v105 = (v4 * v16) >> 64;
  v22 = __CFADD__(v101, v4 * v16);
  v106 = v101 + v4 * v16;
  v108 = v22;
  v22 = __CFADD__(v22, v102);
  v107 = v108 + v102;
  v22 |= __CFADD__(v105, v107);
  v107 += v105;
  v109 = 0x100000001 * v4 * v11;
  v110 = HIDWORD(v109);
  v111 = HIDWORD(v109) + __CFADD__(v4 * v11, (v4 * v11) << 32) + v18;
  v112 = __PAIR128__(v51, __CFADD__(__CFADD__(v4 * v11, (v4 * v11) << 32), v18) | __CFADD__(HIDWORD(v109), __CFADD__(v4 * v11, (v4 * v11) << 32) + v18)) + v31;
  v113 = __CFADD__(__CFADD__(__CFADD__(__CFADD__(v4 * v11, (v4 * v11) << 32), v18) | __CFADD__(HIDWORD(v109), __CFADD__(v4 * v11, (v4 * v11) << 32) + v18), v31), v51);
  v114 = __PAIR128__(v106, v113) + v76;
  v116 = __CFADD__(__CFADD__(v113, v76), v106);
  v115 = v109 + v116 + v107;
  v117 = (__CFADD__(v116, v107) | __CFADD__(v109, v116 + v107)) + v22 + v104;
  v22 = v111 >= (v4 * v11) << 32;
  v120 = __PAIR128__(v112, v111) - __PAIR128__(v109, (v4 * v11) << 32);
  v119 = v120 >> 64;
  v118 = v120;
  v121 = !__CFSUB__(v112, v109, v22);
  v22 = v119 >= v110;
  v124 = __PAIR128__(*(&v112 + 1), v119) - __PAIR128__(v121, v110);
  v123 = v124 >> 64;
  v122 = v124;
  v126 = __CFSUB__(*(&v112 + 1), v121, v22);
  v125 = v114 - !v126;
  v128 = v114 >= !v126;
  v127 = *(&v114 + 1) - !v128;
  v129 = __PAIR128__(v117, v115) - (*(&v114 + 1) < !v128);
  v130 = v129 + v9 * v12;
  v131 = v130 + v8 * v13;
  v132 = v131 + v7 * v14;
  v133 = v132 + v6 * v15;
  v134 = v133 + v5 * v16;
  v135 = 0x100000001 * v118;
  v136 = (0x100000001 * v118) >> 32;
  v22 = __CFADD__(__CFADD__(v118, v118 << 32), v122);
  v137 = __CFADD__(v118, v118 << 32) + v122;
  v22 |= __CFADD__(v136, v137);
  v137 += v136;
  v138 = v22 + v123;
  v139 = __CFADD__(v22, v123);
  v140 = __PAIR128__(v127, v139) + v125;
  v142 = __CFADD__(__CFADD__(v139, v125), v127);
  v141 = v142 + v134;
  v143 = v135 + __CFADD__(v142, v134) + *(&v134 + 1);
  v144 = (__CFADD__(__CFADD__(v142, v134), *(&v134 + 1)) | __CFADD__(v135, __CFADD__(v142, v134) + *(&v134 + 1))) + (__CFADD__(__CFADD__(v133, v5 * v16), *(&v133 + 1)) | __CFADD__((v5 * v16) >> 64, *(&v134 + 1))) + (__CFADD__(__CFADD__(v132, v6 * v15), *(&v132 + 1)) | __CFADD__((v6 * v15) >> 64, *(&v133 + 1))) + (__CFADD__(__CFADD__(v131, v7 * v14), *(&v131 + 1)) | __CFADD__((v7 * v14) >> 64, *(&v132 + 1))) + (__CFADD__(__CFADD__(v130, v8 * v13), *(&v130 + 1)) | __CFADD__((v8 * v13) >> 64, *(&v131 + 1))) + (__CFADD__(__CFADD__(v129, v9 * v12), *(&v129 + 1)) | __CFADD__((v9 * v12) >> 64, *(&v130 + 1)));
  v22 = v137 >= v135 << 32;
  v145 = v137 - (v135 << 32);
  LOBYTE(v142) = v22;
  v22 = __CFSUB__(v138, v135, v22);
  v146 = v138 - (v135 + !v142);
  v147 = !v22;
  v22 = v146 >= v136;
  v150 = __PAIR128__(v140, v146) - __PAIR128__(v147, v136);
  v149 = v150 >> 64;
  v148 = v150;
  v152 = __CFSUB__(v140, v147, v22);
  v151 = *(&v140 + 1) - !v152;
  v154 = *(&v140 + 1) >= !v152;
  v22 = v141 >= !v154;
  v153 = v141 - !v154;
  v155 = __PAIR128__(v144, v143) - !v22;
  v156 = v155 + v9 * v13;
  v157 = v156 + v8 * v14;
  v158 = v157 + v7 * v15;
  v159 = v158 + v6 * v16;
  v160 = 0x100000001 * v145;
  v161 = (0x100000001 * v145) >> 32;
  v22 = __CFADD__(__CFADD__(v145, v145 << 32), v148);
  v162 = __CFADD__(v145, v145 << 32) + v148;
  v22 |= __CFADD__(v161, v162);
  v162 += v161;
  v163 = v22 + v149;
  v164 = __CFADD__(v22, v149);
  v165 = __PAIR128__(v153, v164) + v151;
  v167 = __CFADD__(__CFADD__(v164, v151), v153);
  v166 = v167 + v159;
  v168 = v160 + __CFADD__(v167, v159) + *(&v159 + 1);
  v169 = (__CFADD__(__CFADD__(v167, v159), *(&v159 + 1)) | __CFADD__(v160, __CFADD__(v167, v159) + *(&v159 + 1))) + (__CFADD__(__CFADD__(v158, v6 * v16), *(&v158 + 1)) | __CFADD__((v6 * v16) >> 64, *(&v159 + 1))) + (__CFADD__(__CFADD__(v157, v7 * v15), *(&v157 + 1)) | __CFADD__((v7 * v15) >> 64, *(&v158 + 1))) + (__CFADD__(__CFADD__(v156, v8 * v14), *(&v156 + 1)) | __CFADD__((v8 * v14) >> 64, *(&v157 + 1))) + (__CFADD__(__CFADD__(v155, v9 * v13), *(&v155 + 1)) | __CFADD__((v9 * v13) >> 64, *(&v156 + 1)));
  v22 = v162 >= v160 << 32;
  v170 = v162 - (v160 << 32);
  LOBYTE(v167) = v22;
  v22 = __CFSUB__(v163, v160, v22);
  v171 = v163 - (v160 + !v167);
  v172 = !v22;
  v22 = v171 >= v161;
  v175 = __PAIR128__(v165, v171) - __PAIR128__(v172, v161);
  v174 = v175 >> 64;
  v173 = v175;
  v177 = __CFSUB__(v165, v172, v22);
  v176 = *(&v165 + 1) - !v177;
  v179 = *(&v165 + 1) >= !v177;
  v22 = v166 >= !v179;
  v178 = v166 - !v179;
  v180 = __PAIR128__(v169, v168) - !v22;
  v181 = v180 + v9 * v14;
  v182 = v181 + v8 * v15;
  v183 = v182 + v7 * v16;
  v184 = 0x100000001 * v170;
  v185 = (0x100000001 * v170) >> 32;
  v22 = __CFADD__(__CFADD__(v170, v170 << 32), v173);
  v186 = __CFADD__(v170, v170 << 32) + v173;
  v22 |= __CFADD__(v185, v186);
  v186 += v185;
  v187 = v22 + v174;
  v188 = __CFADD__(v22, v174);
  v189 = __PAIR128__(v178, v188) + v176;
  v191 = __CFADD__(__CFADD__(v188, v176), v178);
  v190 = v191 + v183;
  v192 = v184 + __CFADD__(v191, v183) + *(&v183 + 1);
  v193 = (__CFADD__(__CFADD__(v191, v183), *(&v183 + 1)) | __CFADD__(v184, __CFADD__(v191, v183) + *(&v183 + 1))) + (__CFADD__(__CFADD__(v182, v7 * v16), *(&v182 + 1)) | __CFADD__((v7 * v16) >> 64, *(&v183 + 1))) + (__CFADD__(__CFADD__(v181, v8 * v15), *(&v181 + 1)) | __CFADD__((v8 * v15) >> 64, *(&v182 + 1))) + (__CFADD__(__CFADD__(v180, v9 * v14), *(&v180 + 1)) | __CFADD__((v9 * v14) >> 64, *(&v181 + 1)));
  v22 = v186 >= v184 << 32;
  v194 = v186 - (v184 << 32);
  LOBYTE(v191) = v22;
  v22 = __CFSUB__(v187, v184, v22);
  v195 = v187 - (v184 + !v191);
  v196 = !v22;
  v22 = v195 >= v185;
  v199 = __PAIR128__(v189, v195) - __PAIR128__(v196, v185);
  v198 = v199 >> 64;
  v197 = v199;
  v201 = __CFSUB__(v189, v196, v22);
  v200 = *(&v189 + 1) - !v201;
  v203 = *(&v189 + 1) >= !v201;
  v22 = v190 >= !v203;
  v202 = v190 - !v203;
  v204 = __PAIR128__(v193, v192) - !v22;
  v205 = v204 + v9 * v15;
  v206 = v205 + v8 * v16;
  v207 = 0x100000001 * v194;
  v208 = (0x100000001 * v194) >> 32;
  v22 = __CFADD__(__CFADD__(v194, v194 << 32), v197);
  v209 = __CFADD__(v194, v194 << 32) + v197;
  v22 |= __CFADD__(v208, v209);
  v209 += v208;
  v210 = v22 + v198;
  v211 = __CFADD__(v22, v198);
  v212 = __PAIR128__(v202, v211) + v200;
  v214 = __CFADD__(__CFADD__(v211, v200), v202);
  v213 = v214 + v206;
  v215 = v207 + __CFADD__(v214, v206) + *(&v206 + 1);
  v216 = (__CFADD__(__CFADD__(v214, v206), *(&v206 + 1)) | __CFADD__(v207, __CFADD__(v214, v206) + *(&v206 + 1))) + (__CFADD__(__CFADD__(v205, v8 * v16), *(&v205 + 1)) | __CFADD__((v8 * v16) >> 64, *(&v206 + 1))) + (__CFADD__(__CFADD__(v204, v9 * v15), *(&v204 + 1)) | __CFADD__((v9 * v15) >> 64, *(&v205 + 1)));
  v22 = v209 >= v207 << 32;
  v217 = v209 - (v207 << 32);
  LOBYTE(v214) = v22;
  v22 = __CFSUB__(v210, v207, v22);
  v218 = v210 - (v207 + !v214);
  v219 = !v22;
  v22 = v218 >= v208;
  v222 = __PAIR128__(v212, v218) - __PAIR128__(v219, v208);
  v221 = v222 >> 64;
  v220 = v222;
  v224 = __CFSUB__(v212, v219, v22);
  v223 = *(&v212 + 1) - !v224;
  v226 = *(&v212 + 1) >= !v224;
  v22 = v213 >= !v226;
  v225 = v213 - !v226;
  v227 = __PAIR128__(v216, v215) - !v22;
  v228 = v227 + v9 * v16;
  v229 = 0x100000001 * v217;
  v230 = (0x100000001 * v217) >> 32;
  v22 = __CFADD__(__CFADD__(v217, v217 << 32), v220);
  v231 = __CFADD__(v217, v217 << 32) + v220;
  v22 |= __CFADD__(v230, v231);
  v231 += v230;
  v232 = v22 + v221;
  v233 = __CFADD__(v22, v221);
  v234 = __PAIR128__(v225, v233) + v223;
  v236 = __CFADD__(__CFADD__(v233, v223), v225);
  v235 = v236 + v228;
  v237 = v229 + __CFADD__(v236, v228) + *(&v228 + 1);
  v238 = (__CFADD__(__CFADD__(v236, v228), *(&v228 + 1)) | __CFADD__(v229, __CFADD__(v236, v228) + *(&v228 + 1))) + (__CFADD__(__CFADD__(v227, v9 * v16), *(&v227 + 1)) | __CFADD__((v9 * v16) >> 64, *(&v228 + 1)));
  v22 = v231 >= v229 << 32;
  v239 = v231 - (v229 << 32);
  LOBYTE(v236) = v22;
  v22 = __CFSUB__(v232, v229, v22);
  v240 = v232 - (v229 + !v236);
  v241 = !v22;
  v22 = v240 >= v230;
  v244 = __PAIR128__(v234, v240) - __PAIR128__(v241, v230);
  v243 = v244 >> 64;
  v242 = v244;
  v246 = __CFSUB__(v234, v241, v22);
  v245 = *(&v234 + 1) - !v246;
  v248 = *(&v234 + 1) >= !v246;
  v22 = v235 >= !v248;
  v247 = v235 - !v248;
  v249 = __PAIR128__(v238, v237) - !v22;
  v22 = v239 >= 0xFFFFFFFF;
  v250 = v239 - 0xFFFFFFFF;
  v252 = v22;
  v22 = __CFSUB__(v242, 0xFFFFFFFF00000000, v22);
  v251 = v242 - (!v252 - 0x100000000);
  v254 = v22;
  v22 = __CFSUB__(v243, -2, v22);
  v253 = v243 - (!v254 - 2);
  v256 = v22;
  v22 = __CFSUB__(v245, -1, v22);
  v255 = v245 - (!v256 - 1);
  v258 = v22;
  v22 = __CFSUB__(v247, -1, v22);
  v257 = v247 - (!v258 - 1);
  v259 = v249 - (!v22 - 1);
  v260 = *(&v249 + 1) - !__CFSUB__(v249, -1, v22);
  v22 = __CFADD__(__CFADD__(v250, (v260 & 0xFFFFFFFF00000000) >> 32), v251);
  v261 = __CFADD__(v250, (v260 & 0xFFFFFFFF00000000) >> 32) + v251;
  v263 = v22 | __CFADD__(v260 & 0xFFFFFFFF00000000, v261);
  v22 = __CFADD__(v263, v253);
  v262 = v263 + v253;
  v265 = v22 | __CFADD__(v260 & 0xFFFFFFFFFFFFFFFELL, v262);
  v22 = __CFADD__(v265, v255);
  v264 = v265 + v255;
  v267 = v22 | __CFADD__(v260, v264);
  v22 = __CFADD__(v267, v257);
  v266 = v267 + v257;
  *a1 = v250 + ((v260 & 0xFFFFFFFF00000000) >> 32);
  a1[1] = (v260 & 0xFFFFFFFF00000000) + v261;
  v268 = a1 + 2;
  *v268 = (v260 & 0xFFFFFFFFFFFFFFFELL) + v262;
  v268[1] = v260 + v264;
  result = v268 + 2;
  *result = v260 + v266;
  result[1] = v260 + (v22 | __CFADD__(v260, v266)) + v259;
  return result;
}

uint64_t sub_1B01E5B70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B01E07C8();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * v10));
  v12 = 0;
  if (a1)
  {
    v13 = 0;
    do
    {
      v15 = *a4++;
      v14 = v15;
      v17 = *a5++;
      v16 = v17;
      v18 = __CFADD__(v12, v14);
      v19 = v12 + v14;
      if (v18)
      {
        v13 = 1;
      }

      v18 = __CFADD__(v19, v16);
      v20 = v19 + v16;
      if (v18)
      {
        v12 = v13 + 1;
      }

      else
      {
        v12 = v13;
      }

      v21 = v14 ^ v20;
      v22 = v14 ^ v10;
      *a3 = v22;
      *a3++ = v21 & v11 ^ v21 & 0x5555555555555555 ^ v22 ^ v10;
      v13 = 0;
      --a1;
    }

    while (a1);
  }

  return v12 & a2;
}

uint64_t sub_1B01E5C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B01DFC00(a2);
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, v6);
  v9 = sub_1B01E6C58(a2);
  sub_1B01E136C(v6, v8, v9);
  v8->i64[0] &= ~1uLL;
  v10 = (*(a1 + 24))(a1, v6);
  sub_1B01E1380(v6, v10, v8, 1);
  v11 = (*(a1 + 24))(a1, v6);
  LODWORD(a3) = -(sub_1B01E07E4(a1, a2, v11, a3, v10->i64) != 0);
  sub_1B01DBAB4(a1, a2);
  v12 = (*v11 | sub_1B01E1274(v6, v11)) != 1;
  *(a1 + 16) = v7;
  return !v12 ? a3 : -1;
}

uint64_t sub_1B01E5D44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = sub_1B01DFC00(a2);
  v12 = (*(a1 + 24))(a1, v11);
  LOBYTE(a5) = sub_1B01E05D4(a1, v11, a3, a4, a5);
  v13 = sub_1B01E6C58(a2);
  v14 = sub_1B01E17B4(a1, v11, v12, a3, v13);
  result = sub_1B01E0764(v11, !v14 | a5, a3, v12, a3);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_1B01E5E44(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, 6);
  v9 = (*(a1 + 24))(a1, 6);
  v10 = (*(a1 + 24))(a1, 6);
  sub_1B01E5660(v10, a4, a4);
  sub_1B01E5660(v9, v10, a4);
  sub_1B01E5660(v9, v9, v9);
  sub_1B01E5660(v9, v9, v9);
  sub_1B01E5660(v8, v9, a4);
  sub_1B01E5660(v9, v8, v10);
  v11 = 4;
  do
  {
    sub_1B01E5660(v9, v9, v9);
    --v11;
  }

  while (v11);
  sub_1B01E5660(v8, v8, v9);
  sub_1B01E5660(v9, v8, v10);
  v12 = 8;
  do
  {
    sub_1B01E5660(v9, v9, v9);
    --v12;
  }

  while (v12);
  sub_1B01E5660(v8, v8, v9);
  sub_1B01E5660(v9, v8, v10);
  v13 = 16;
  do
  {
    sub_1B01E5660(v9, v9, v9);
    --v13;
  }

  while (v13);
  sub_1B01E5660(v8, v8, v9);
  sub_1B01E5660(v9, v8, a4);
  sub_1B01E5660(v10, v9, a4);
  v14 = 32;
  do
  {
    sub_1B01E5660(v10, v10, v10);
    --v14;
  }

  while (v14);
  sub_1B01E5660(v9, v10, v9);
  v15 = 64;
  do
  {
    sub_1B01E5660(v10, v10, v10);
    --v15;
  }

  while (v15);
  sub_1B01E5660(v10, v10, v8);
  sub_1B01E5660(v8, v9, a4);
  v16 = 64;
  do
  {
    sub_1B01E5660(v8, v8, v8);
    --v16;
  }

  while (v16);
  sub_1B01E5660(v9, v8, v9);
  sub_1B01E5660(v8, v9, a4);
  v17 = 128;
  do
  {
    sub_1B01E5660(v8, v8, v8);
    --v17;
  }

  while (v17);
  sub_1B01E5660(v8, v8, v9);
  v18 = 128;
  do
  {
    sub_1B01E5660(v8, v8, v8);
    --v18;
  }

  while (v18);
  sub_1B01E5660(v9, v8, v10);
  sub_1B01E5660(v8, v9, a4);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 1;
  sub_1B01E5660(v8, v8, &v21);
  if (sub_1B01E1274(6, v8) == 1 && *v8 == 1)
  {
    sub_1B01E136C(6, a3, v9);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B01E6180(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 1;
  result = sub_1B01E5660(a3, a4, &v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E61EC(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t *a4)
{
  v7 = sub_1B01DFC00(a2);
  v8 = *a4;
  v9 = sub_1B01E6C58(a2);
  v10 = sub_1B01E5B70(v7, v8 & 1, a3->i64, a4, v9);
  result = sub_1B01E1380(v7, a3, a3, 1);
  a3->i64[v7 - 1] |= v10 << 63;
  return result;
}

uint64_t sub_1B01E627C(uint64_t a1, void *a2)
{
  v4 = sub_1B01E6C58(a2);
  v5 = sub_1B01DFC00(a2);
  if ((*v4 & 1) == 0 || sub_1B01E1274(v5, v4) == 1 && *v4 < 3)
  {
    return 4294967289;
  }

  a2[2] = off_1F26375F0;
  v7 = sub_1B01DFC00(a2);
  v8 = sub_1B01E6C58(a2);
  a2[1] = sub_1B01E09D4(v7, v8);
  v9 = (2 - ((3 * *v4) ^ 2) * *v4) * ((3 * *v4) ^ 2);
  v10 = (2 - (2 - v9 * *v4) * v9 * *v4) * (2 - v9 * *v4) * v9;
  a2[*a2 + 3] = (v10 * *v4 - 2) * v10;
  v11 = sub_1B01DFC00(a2);
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 2 * v11);
  memset(&v13[v11], 255, 8 * v11);
  v14 = sub_1B01E6C58(a2);
  sub_1B01DF5F8(v11, v13, v14);
  v15 = &a2[*a2 + 3];
  v16 = sub_1B01E6C58(a2);
  sub_1B01E0E5C(a1, 2 * v11, v13, 0, 0, v11, (v15 + 8), v16);
  result = 0;
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_1B01E63F0(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = sub_1B01DFC00(a2);
  v11 = v10;
  v22 = (a4 - 1) / v10;
  if (v22 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (a4 - 1) / v10;
  }

  v20 = a4;
  v21 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 2 * v10);
  v23 = a5;
  sub_1B01E136C(v11, v13, a5);
  v19 = v12;
  v14 = v12 - 1;
  if (v14)
  {
    v15 = 0;
    v16 = &v23[8 * v11];
    do
    {
      ++v15;
      sub_1B01E136C(v11, &v13[8 * v11], v16);
      sub_1B01E4424(a1, a2, v13, v13);
      v16 += 8 * v11;
    }

    while (v15 < v14);
  }

  if (v20 != v19 * v11)
  {
    sub_1B01E136C(v20 - v19 * v11, &v13[8 * v11], &v23[8 * v19 * v11]);
  }

  sub_1B01E4E14(v11 - (v20 - v19 * v11), &v13[8 * v11 + 8 * (v20 - v19 * v11)]);
  sub_1B01E4424(a1, a2, a3, v13);
  v17 = 0;
  do
  {
    sub_1B01E0E48(a1, v11, v13, a3, &a2[*a2 + 4]);
    result = sub_1B01E4424(a1, a2, a3, v13);
    ++v17;
  }

  while (v22 > v17);
  *(a1 + 16) = v21;
  return result;
}

uint64_t sub_1B01E657C(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v8 = 2 * sub_1B01DFC00(a2);

  return sub_1B01E63F0(a1, a2, a3, v8, a4);
}

uint64_t sub_1B01E65E8(uint64_t a1, uint64_t *a2, uint64_t a3, void *__src)
{
  *a2 = a3;
  if (__src)
  {
    sub_1B01E136C(a3, a2 + 3, __src);
  }

  result = sub_1B01E627C(a1, a2);
  a2[2] = off_1F26378B0;
  return result;
}

uint64_t sub_1B01E663C(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_1B01DFC00(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 2 * v8);
  sub_1B01E0E48(a1, v8, v10, a4, &a2[*a2 + 4]);
  result = sub_1B01E4424(a1, a2, a3, v10);
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_1B01E66D8(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = sub_1B01DFC00(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 2 * v8);
  if (v8)
  {
    sub_1B01E136C(v8, v10, a4);
  }

  sub_1B01E4E14(v8, &v10[8 * v8]);
  result = sub_1B01E4424(a1, a2, a3, v10);
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_1B01E6774(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  v11 = sub_1B01DFC00(a2);
  v12 = (*(a1 + 24))(a1, 2 * v11);
  sub_1B01E0E48(a1, v11, v12, a4, a5);
  result = sub_1B01E4424(a1, a2, a3, v12);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_1B01E6810(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = sub_1B01DFC00(a2);
  v10 = (*(a1 + 24))(a1, 2 * v9);
  sub_1B01DC380(a1, v9, v10, a4);
  result = sub_1B01E4424(a1, a2, a3, v10);
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1B01E68A4(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = 2 * sub_1B01DFC00(a2);
  v10 = (*(a1 + 24))(a1, v9);
  sub_1B01E136C(v9, v10, a4);
  result = sub_1B01E4424(a1, a2, a3, v10);
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_1B01E6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  v10 = sub_1B01DFC00(a2);
  v11 = (*(a1 + 24))(a1, 2 * v10);
  v12 = sub_1B01DFC00(a2);
  sub_1B01E0E48(a1, v12, v11, a4, a5);
  result = sub_1B01E65DC(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

_OWORD *sub_1B01E69E0(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v9 = *a3;
  v10 = a3[1];
  v8 = a3 + 2;
  v11 = *v8;
  v12 = v8[1];
  v13 = v4 * v9;
  v14 = (v5 * v9) >> 64;
  v15 = *v3 * v9;
  v16 = (v6 * v9) >> 64;
  v18 = v9;
  v17 = (__PAIR128__(v5, v4) * v9) >> 64;
  v19 = __CFADD__(__CFADD__((v4 * v9) >> 64, v5 * v9), v14);
  v20 = __CFADD__((v4 * v9) >> 64, v5 * v9) + v14;
  v19 |= __CFADD__(v15, v20);
  v20 += v15;
  v21 = (v7 * v9) >> 64;
  v22 = (v7 * v10) >> 64;
  v24 = v19;
  v19 = __CFADD__(v19, v16);
  v23 = v24 + v16;
  v19 |= __CFADD__(v7 * v9, v23);
  v23 += v7 * v9;
  v26 = v19;
  v19 = __CFADD__(v19, v21);
  v25 = v26 + v21;
  v19 |= __CFADD__(v7 * v10, v25);
  v25 += v7 * v10;
  v27 = v7 * *v8;
  v28 = (v7 * v11) >> 64;
  v30 = v19;
  v19 = __CFADD__(v19, v22);
  v29 = v30 + v22;
  v19 |= __CFADD__(v27, v29);
  v29 += v27;
  v32 = v19;
  v19 = __CFADD__(v19, v28);
  v31 = v32 + v28;
  v19 |= __CFADD__(v7 * v12, v31);
  v31 += v7 * v12;
  v33 = v19 + ((v7 * v12) >> 64);
  v34 = (v4 * v10) >> 64;
  v19 = __CFADD__(v17, v4 * v10);
  v35 = (__PAIR128__(v10, v18) * __PAIR128__(v5, v4)) >> 64;
  v37 = v19;
  v19 = __CFADD__(v19, v20);
  v36 = v37 + v20;
  v19 |= __CFADD__(v34, v36);
  v36 += v34;
  v38 = (v6 * v10) >> 64;
  v40 = v19;
  v19 = __CFADD__(v19, v23);
  v39 = v40 + v23;
  v19 |= __CFADD__(v6 * v10, v39);
  v39 += v6 * v10;
  v42 = v19;
  v19 = __CFADD__(v19, v25);
  v41 = v42 + v25;
  v19 |= __CFADD__(v38, v41);
  v41 += v38;
  v43 = (v6 * v12) >> 64;
  v45 = v19;
  v19 = __CFADD__(v19, v29);
  v44 = v45 + v29;
  v19 |= __CFADD__(v6 * v12, v44);
  v44 += v6 * v12;
  v47 = v19;
  v19 = __CFADD__(v19, v31);
  v46 = v47 + v31;
  v19 |= __CFADD__(v43, v46);
  v46 += v43;
  v48 = v19 + v33;
  v49 = (v5 * v10) >> 64;
  v19 = __CFADD__(v36, v5 * v10);
  v50 = v36 + v5 * v10;
  v52 = v19;
  v19 = __CFADD__(v19, v39);
  v51 = v52 + v39;
  v19 |= __CFADD__(v49, v51);
  v51 += v49;
  v53 = (v6 * v11) >> 64;
  v55 = v19;
  v19 = __CFADD__(v19, v41);
  v54 = v55 + v41;
  v19 |= __CFADD__(v6 * v11, v54);
  v54 += v6 * v11;
  v57 = v19;
  v19 = __CFADD__(v19, v44);
  v56 = v57 + v44;
  v19 |= __CFADD__(v53, v56);
  v56 += v53;
  v58 = v19;
  v59 = (v4 * v11) >> 64;
  v19 = __CFADD__(v50, v4 * v11);
  v60 = v50 + v4 * v11;
  v62 = v19;
  v19 = __CFADD__(v19, v51);
  v61 = v62 + v51;
  v19 |= __CFADD__(v59, v61);
  v61 += v59;
  v63 = (v5 * v12) >> 64;
  v65 = v19;
  v19 = __CFADD__(v19, v54);
  v64 = v65 + v54;
  v19 |= __CFADD__(v5 * v12, v64);
  v64 += v5 * v12;
  v67 = v19;
  v19 = __CFADD__(v19, v56);
  v66 = v67 + v56;
  v19 |= __CFADD__(v63, v66);
  v66 += v63;
  v68 = v19 + v58;
  v69 = (v5 * v11) >> 64;
  v19 = __CFADD__(v61, v5 * v11);
  v70 = v61 + v5 * v11;
  v72 = v19;
  v19 = __CFADD__(v19, v64);
  v71 = v72 + v64;
  v19 |= __CFADD__(v69, v71);
  v71 += v69;
  v73 = v19;
  v74 = (v4 * v12) >> 64;
  v19 = __CFADD__(v70, v4 * v12);
  v75 = v70 + v4 * v12;
  v77 = v19;
  v19 = __CFADD__(v19, v71);
  v76 = v77 + v71;
  v19 |= __CFADD__(v74, v76);
  v76 += v74;
  v79 = v19;
  v19 = __CFADD__(v19, v66);
  v78 = v79 + v66;
  v19 |= __CFADD__(v73, v78);
  v78 += v73;
  v81 = v19;
  v19 = __CFADD__(v19, v46);
  v80 = v81 + v46;
  v19 |= __CFADD__(v68, v80);
  v80 += v68;
  v82 = v19 + v48;
  v19 = __CFADD__(v35, v13 << 32);
  v83 = v35 + (v13 << 32);
  v85 = v19;
  v19 = __CFADD__(v19, v60);
  v84 = v85 + v60;
  v19 |= __CFADD__(HIDWORD(v13), v84);
  v84 += HIDWORD(v13);
  v87 = v19;
  v19 = __CFADD__(v19, v75);
  v86 = v87 + v75;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v13, v86);
  v86 += 0xFFFFFFFF00000001 * v13;
  v88 = v19 + ((v13 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v84, v83 << 32);
  v89 = v84 + (v83 << 32);
  v91 = v19;
  v19 = __CFADD__(v19, v86);
  v90 = v91 + v86;
  v19 |= __CFADD__(HIDWORD(v83), v90);
  v90 += HIDWORD(v83);
  v93 = v19;
  v19 = __CFADD__(v19, v76);
  v92 = v93 + v76;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v83, v92);
  v92 += 0xFFFFFFFF00000001 * v83;
  v94 = v19 + ((v83 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v90, v89 << 32);
  v95 = v90 + (v89 << 32);
  v97 = v19;
  v19 = __CFADD__(v19, v92);
  v96 = v97 + v92;
  v19 |= __CFADD__(HIDWORD(v89), v96);
  v96 += HIDWORD(v89);
  v99 = v19;
  v19 = __CFADD__(v19, v78);
  v98 = v99 + v78;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v89, v98);
  v98 += 0xFFFFFFFF00000001 * v89;
  v100 = v19 + ((v89 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v96, v95 << 32);
  v101 = v96 + (v95 << 32);
  v103 = v19;
  v19 = __CFADD__(v19, v98);
  v102 = v103 + v98;
  v19 |= __CFADD__(HIDWORD(v95), v102);
  v102 += HIDWORD(v95);
  v105 = v19;
  v19 = __CFADD__(v19, v80);
  v104 = v105 + v80;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v95, v104);
  v104 += 0xFFFFFFFF00000001 * v95;
  v106 = v19 + ((v95 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v88, v101);
  v107 = v88 + v101;
  v109 = v19;
  v19 = __CFADD__(v19, v94);
  v108 = v109 + v94;
  v19 |= __CFADD__(v102, v108);
  v108 += v102;
  v111 = v19;
  v19 = __CFADD__(v19, v100);
  v110 = v111 + v100;
  v19 |= __CFADD__(v104, v110);
  v110 += v104;
  v113 = v19;
  v19 = __CFADD__(v19, v106);
  v112 = v113 + v106;
  v19 |= __CFADD__(v82, v112);
  v112 += v82;
  v114 = v19;
  v19 = __CFADD__(v107++, 1);
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v108, 0xFFFFFFFFLL, v19);
  v115 = v108 - (!v113 + 0xFFFFFFFFLL);
  LOBYTE(v113) = v19;
  v19 = v110 >= !v19;
  v116 = v110 - !v113;
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v112, 0xFFFFFFFF00000001, v19);
  v117 = v114 - !v19;
  v118 = v114 - !v19;
  v19 = __CFADD__(__CFADD__(v107, v117), v115);
  v119 = __CFADD__(v107, v117) + v115;
  *a1 = v107 + v117;
  a1[1] = v118 + v119;
  result = a1 + 2;
  *result = __PAIR128__(v117 & 0xFFFFFFFF00000001, v19 | __CFADD__(v118, v119)) + __PAIR128__(v112 - (!v113 - 0xFFFFFFFF), v116);
  return result;
}

uint64_t sub_1B01E6BB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = sub_1B01DFC00(a2);
  v9 = (*(a1 + 24))(a1, 2 * v8);
  sub_1B01DC380(a1, v8, v9, a4);
  result = sub_1B01E65DC(a1, a2);
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_1B01E6C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = sub_1B01DFC00(a2);
  v12 = sub_1B01E17B4(a1, v11, a3, a4, a5);
  v13 = sub_1B01E6C58(a2);
  result = sub_1B01E5B70(v11, v12, a3, a3, v13);
  *(a1 + 16) = v10;
  return result;
}

void *sub_1B01E6D10(size_t a1)
{
  v2 = malloc(a1);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

uint64_t sub_1B01E6D4C(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + 8 * v2;
  v5 = v2 + a2;
  a1[2] = v5;
  sub_1B01DB648(v5 > v3);
  return v4;
}

void sub_1B01E6D94(uint64_t a1)
{
  sub_1B01DB648(*(a1 + 16) > *(a1 + 8));
  sub_1B01E5B5C(8 * *(a1 + 8), *a1);
  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B01E6DE8(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      v5 = *a2++;
      v4 = v5;
      v6 = *a3++;
      v7 = v4 >= v6;
      if (v4 > v6)
      {
        result = 1;
      }

      if (!v7)
      {
        result = -1;
      }
    }

    while (v3-- > 1);
  }

  return result;
}

uint64_t sub_1B01E6E34(uint64_t result, unint64_t *a2, unint64_t *a3)
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

uint64_t sub_1B01E7024(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
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
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
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
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
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
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
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

uint64_t sub_1B01E71E4(uint64_t result, unint64_t *a2, _BYTE *a3)
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

uint64_t sub_1B01E72A4(unsigned __int8 **a1, BOOL *a2)
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

uint64_t sub_1B01E72E0(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t sub_1B01E7320(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1B01E73A4(a1, v5);
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

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E73A4(uint64_t result, unint64_t *a2)
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

uint64_t sub_1B01E7424(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x1E69E9840];
  memset(v9, 170, 24);
  result = sub_1B01E6E34(a1, v9, 0);
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
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *sub_1B01E74E0(unint64_t *result, unint64_t *a2)
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

uint64_t sub_1B01E750C(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
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
  result = sub_1B01E6E34(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x1E69E9840];
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

uint64_t sub_1B01E75CC(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x1E69E9840];
  memset(v13, 170, 24);
  result = sub_1B01E6E34(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = sub_1B01E7698(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E7698(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
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
      result = sub_1B01E750C(&v36, v35);
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
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B01E7954(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return sub_1B01E75CC(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

BOOL sub_1B01E7974(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

uint64_t sub_1B01E79E0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v67 = 0;
  memset(v66, 170, sizeof(v66));
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v8;
  v65 = v8;
  v62 = v8;
  v63 = v8;
  v60 = v8;
  v61 = v8;
  v58 = v8;
  v59 = v8;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  v52 = v8;
  v53 = v8;
  v50 = v8;
  v51 = v8;
  v48 = v8;
  v49 = v8;
  v46[18] = v8;
  v47 = v8;
  v46[16] = v8;
  v46[17] = v8;
  v46[14] = v8;
  v46[15] = v8;
  v46[12] = v8;
  v46[13] = v8;
  v46[10] = v8;
  v46[11] = v8;
  v46[8] = v8;
  v46[9] = v8;
  v46[6] = v8;
  v46[7] = v8;
  v46[4] = v8;
  v46[5] = v8;
  v46[2] = v8;
  v46[3] = v8;
  v46[0] = v8;
  v46[1] = v8;
  v45 = v46;
  if (!a8)
  {
    sub_1B01E94F4(3, "%s: context must be non NULL", "_AMFDRDecodeVerifyChain");
    return 6;
  }

  if (!a1 || !a2)
  {
    sub_1B01E94F4(3, "%s: chain_blob must be non NULL and chain_blob_length must be non 0");
    goto LABEL_9;
  }

  if (!a5 || !a6)
  {
    sub_1B01E94F4(3, "%s: outImg4Blob must be non NULL and outImg4BlobLength must be non 0");
LABEL_9:
    *a8 |= 1uLL;
    return 6;
  }

  if (!a2)
  {
    sub_1B01EC348(a8);
    return 3;
  }

  v66[1] = a2;
  v66[2] = 0;
  v66[0] = a1;
  sub_1B01EC17C(v66, *(a8 + 2016), &v45);
  v17 = v16;
  if (v16 || !v45)
  {
    v18 = "%s: _AMFDRDecodeIterateCertChainNext failed (first call)";
LABEL_16:
    v12 = 3;
    sub_1B01E94F4(3, v18, "_AMFDRDecodeVerifyChain");
    v19 = *a8 | v17;
    goto LABEL_17;
  }

  if (!*(a8 + 1944) || !*(a8 + 1952))
  {
    sub_1B01E94F4(4, "%s: Skipping trust root check (trustobject unset)", "_AMFDRDecodeVerifyChain");
    v20 = *a8 | 0x200100;
LABEL_21:
    *a8 = v20;
    goto LABEL_22;
  }

  if ((*(a8 + 2017) & 1) == 0)
  {
    v30 = sub_1B01F5EE0(a8 + 1768);
    if (v30)
    {
      v17 = v30;
      v18 = "%s: AMFDRDecodeIterateTrustObjectTrustedBegin failed";
      goto LABEL_16;
    }

    for (i = 0; ; ++i)
    {
      v43 = 0uLL;
      *&v44[0] = 0;
      v38 = sub_1B01E750C((a8 + 1832), &v43);
      if (v38)
      {
        if (v38 == 1)
        {
LABEL_64:
          sub_1B01E94F4(7, "%s: end of trusted root sequence found root_cert=%d");
          goto LABEL_65;
        }

        sub_1B01E94F4(7, "%s: AMFDRDecodeIterateTrustObjectTrustedNext failed", "_AMFDRDecodeVerifyChain");
        v29 = *a8 | 0x400000;
        goto LABEL_30;
      }

      if (*(&v43 + 1))
      {
        v39 = LODWORD(v44[0]) == 0;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        goto LABEL_64;
      }

      sub_1B01E94F4(7, "%s: PKI: verify cert was issued by trusted root %d", "_AMFDRDecodeVerifyChain", i);
      v40 = sub_1B01F6550();
      if (v40)
      {
        v35 = v40;
        sub_1B01E94F4(7, "%s: PKI: decoding trusted root %d failed with error 0x%016llX");
        goto LABEL_72;
      }

      v41 = sub_1B01EA448(v45, &v47, a8 + 1768, 0, 0);
      if (v41 != 0x20000000000)
      {
        break;
      }
    }

    v35 = v41;
    if (v41)
    {
      sub_1B01E94F4(7, "%s: PKI: verify cert was issued by trusted root %d failed with error 0x%016llX");
      goto LABEL_72;
    }

    sub_1B01E94F4(7, "%s: PKI: verify cert was issued by trusted root %d (success)");
LABEL_22:
    v21 = v45;
    v45 = &v47;
    sub_1B01EC17C(v66, *(a8 + 2016), &v45);
    if (!v22)
    {
      v24 = 1;
      while (v45)
      {
        sub_1B01E94F4(7, "%s: PKI: verify cert %d was issued by cert %d", "_AMFDRDecodeVerifyChain", v24, v24 - 1);
        v25 = sub_1B01EA448(v45, v21, a8 + 1768, *(a8 + 2016), a8);
        if (v25)
        {
          sub_1B01E94F4(7, "%s: PKI: verify cert %d was issued by cert %d failed with error 0x%016llX", "_AMFDRDecodeVerifyChain", v24, v24 - 1, v25);
          v29 = *a8 | 0x40000000000;
          goto LABEL_30;
        }

        sub_1B01E94F4(7, "%s: PKI: verify cert %d was issued by %d (success)", "_AMFDRDecodeVerifyChain", v24, v24 - 1);
        ++v24;
        v26 = v45;
        v45 = v21;
        sub_1B01EC17C(v66, *(a8 + 2016), &v45);
        v21 = v26;
        if (v27)
        {
          v12 = 3;
          v28 = v27;
          sub_1B01E94F4(3, "%s: _AMFDRDecodeIterateCertChainNext failed (%d)", "_AMFDRDecodeVerifyChain", v24);
          v19 = *a8 | v28;
          goto LABEL_17;
        }
      }

      *a3 = *(v21 + 208);
      *a4 = *(v21 + 216);
      *a5 = *(v21 + 288);
      *a6 = *(v21 + 296);
      v42 = *(v21 + 240);
      *(a8 + 312) = *(v21 + 224);
      *(a8 + 328) = v42;
      sub_1B01E94F4(7, "%s: PKI: check payload hash with signature (success)", "_AMFDRDecodeVerifyChain");
      return 0;
    }

    v23 = v22;
    v12 = 3;
    sub_1B01E94F4(3, "%s: _AMFDRDecodeIterateCertChainNext failed (second call)", "_AMFDRDecodeVerifyChain");
    v19 = *a8 | v23;
LABEL_17:
    *a8 = v19;
    return v12;
  }

  memset(v44, 0, sizeof(v44));
  v43 = 0u;
  v31 = sub_1B01F5FCC(a8 + 1768);
  if (v31 == 0x40000000000000)
  {
    sub_1B01E94F4(4, "%s: trustobject does not contain trusted key", "_AMFDRDecodeVerifyChain");
  }

  else if (v31)
  {
    *a8 |= v31;
    sub_1B01E94F4(3, "%s: failed to begin decoding trusted key");
    return 3;
  }

  v32 = 0;
  while (1)
  {
LABEL_39:
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v33 = sub_1B01E750C((a8 + 1896), &v68);
    if (v33)
    {
      if (v33 == 1)
      {
LABEL_53:
        sub_1B01E94F4(7, "%s: end of trusted key sequence found root_key=%d");
LABEL_65:
        v20 = *a8 | 0x100;
        goto LABEL_21;
      }

      v36 = 0x400000;
LABEL_51:
      *a8 |= v36;
      sub_1B01E94F4(7, "%s: PKI: verify cert was issued by trusted key %d failed with error 0x%016llX");
      return 3;
    }

    if (v69)
    {
      v34 = v70 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_53;
    }

    sub_1B01E94F4(7, "%s: PKI: verify cert was issued by trusted key %d", "_AMFDRDecodeVerifyChain", v32);
    v35 = sub_1B01F644C();
    if (v35)
    {
      break;
    }

    while (!sub_1B01E7974((v45 + 1), (*(&off_1EB6CFEE0 + v35))[3]) || !sub_1B01E7974(v44, (*(&off_1EB6CFEE0 + v35))[2]))
    {
      v35 += 8;
      if (v35 == 24)
      {
        ++v32;
        goto LABEL_39;
      }
    }

    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    v60 = v43;
    v61 = xmmword_1E7A93AB0;
    v62 = v44[0];
    v36 = sub_1B01EA448(v45, &v47, a8 + 1768, *(a8 + 2016), a8);
    if (v36 != 0x20000000000)
    {
      if (!v36)
      {
        sub_1B01E94F4(7, "%s: PKI: verify cert was issued by trusted key %d (success)");
        goto LABEL_22;
      }

      goto LABEL_51;
    }
  }

  sub_1B01E94F4(7, "%s: PKI: decoding trusted key %d failed with error 0x%016llX");
LABEL_72:
  v29 = *a8 | v35;
LABEL_30:
  *a8 = v29;
  return 3;
}

uint64_t sub_1B01E80D4(const void *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    if (a3 && a4)
    {
      if (a5 && a6)
      {
        if (a7 && *(a7 + 40))
        {
          v11 = **(a7 + 32);
          if (v11 == a6)
          {
            if (!sub_1B01E7974(a8 + 312, &xmmword_1E7A93AB0))
            {
              if (sub_1B01E7974(*(a7 + 40), &off_1E7A93A80))
              {
                if (!sub_1B01E7974(a8 + 312, &off_1E7A93A70))
                {
                  goto LABEL_33;
                }

                result = sub_1B01F5324();
              }

              else if (sub_1B01E7974(*(a7 + 40), &off_1E7A93A90))
              {
                if (!sub_1B01E7974(a8 + 312, &off_1E7A93A70))
                {
                  goto LABEL_33;
                }

                result = sub_1B01F53A0();
              }

              else
              {
                if (!sub_1B01E7974(*(a7 + 40), &off_1E7A93AA0))
                {
                  result = 4;
                  if (a8)
                  {
                    goto LABEL_39;
                  }

                  return result;
                }

                if (!sub_1B01E7974(a8 + 312, &off_1E7A93A70))
                {
                  goto LABEL_33;
                }

                result = sub_1B01F541C();
              }

              if (result == 2)
              {
                *a8 |= 0x80000000000000uLL;
                result = 3;
                goto LABEL_39;
              }

              goto LABEL_45;
            }

            if (a7 == off_1F2637930 || a7 == off_1F2637968)
            {
              v16 = xmmword_1E7A93B10;
              if ((*(a8 + 2017) & 1) == 0)
              {
                if (sub_1B01F527C(*(a8 + 664), *(a8 + 672), a8 + 776))
                {
                  goto LABEL_33;
                }

LABEL_31:
                result = sub_1B01EC258(a1, a2);
                if (result == 2)
                {
                  *a8 |= 0x80000000000000uLL;
                  goto LABEL_33;
                }

LABEL_45:
                if (!result)
                {
                  return result;
                }

LABEL_33:
                result = 3;
                if (!a8)
                {
                  return result;
                }

LABEL_39:
                *a8 |= 0x1000000000000uLL;
                return result;
              }

              if (*(a8 + 336))
              {
                v14 = 0;
                v16 = *(a8 + 328);
                while (!sub_1B01E7974(&v16, (*(&off_1EB6CFEE0 + v14))[2]))
                {
                  v14 += 8;
                  if (v14 == 24)
                  {
                    goto LABEL_28;
                  }
                }

                v15 = *(&off_1EB6CFEE0 + v14);
                if (!*(v15 + 8))
                {
LABEL_28:
                  sub_1B01EC398();
                  goto LABEL_38;
                }

                if (sub_1B01EBCE0(*(a8 + 664), *(a8 + 672), a8 + 776, *(v15 + 8)))
                {
                  goto LABEL_33;
                }

                goto LABEL_31;
              }

              sub_1B01EC3D0();
            }

            else
            {
              sub_1B01EC408();
            }
          }

          else
          {
            sub_1B01E94F4(3, "%s: digestLength is %zu, expecting %zu", "_AMFDRDecodeVerifySignature", a6, v11);
          }
        }

        else
        {
          sub_1B01EC440();
        }
      }

      else
      {
        sub_1B01EC478();
      }
    }

    else
    {
      sub_1B01EC4B0();
    }
  }

  else
  {
    sub_1B01EC4E8();
  }

LABEL_38:
  result = 6;
  if (a8)
  {
    goto LABEL_39;
  }

  return result;
}