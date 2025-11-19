char *resetDyldInsertLibraries(const char *a1)
{
  result = getenv("DYLD_INSERT_LIBRARIES");
  if (result)
  {
    v3 = result;
    strlen(result);
    v4 = __chkstk_darwin();
    v5 = &v16 - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4 + 1);
    v6 = *v3;
    if (!*v3)
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }

    v7 = v5;
    do
    {
      v8 = 0;
      for (i = v6; i; i = v3[++v8])
      {
        if (i == 58)
        {
          break;
        }
      }

      if (v8)
      {
        v10 = v8;
        while (v3[v10] != 47)
        {
          if (!--v10)
          {
            goto LABEL_11;
          }
        }

        v11 = &v3[v10];
        v6 = 47;
      }

      else
      {
LABEL_11:
        v11 = v3;
      }

      v12 = v6 == 47;
      v13 = v6 == 47;
      if (v12)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      if (&v3[v8] != v14 && strncmp(v14, a1, v3 - v11 - v13 + v8))
      {
        if (v7 != v5)
        {
          *v7++ = 58;
        }

        v7 = stpncpy(v7, v3, v8);
        i = v3[v8];
      }

      if (i == 58)
      {
        v15 = v3 + 1;
      }

      else
      {
        v15 = v3;
      }

      v3 = &v15[v8];
      v6 = v15[v8];
    }

    while (v6);
    if (v7 > v5)
    {
      *v7 = 0;
      return setenv("DYLD_INSERT_LIBRARIES", v5, 1);
    }

    else
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }
  }

  return result;
}

uint64_t trampoline_c(uint64_t a1)
{
  v1 = &data + 32 * ((a1 - first_trampoline + (a1 - first_trampoline < 0 ? 7uLL : 0)) >> 3);
  registered_callback(v1);
  return *v1;
}

uint64_t (*initialize_trampolines(uint64_t (*result)(void)))(void)
{
  registered_callback = result;
  first_trampoline = __trampolines;
  return result;
}

uint64_t add_trampoline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = trampolines_used++;
  v4 = (&data + 32 * v3);
  *v4 = a1;
  v4[1] = a3;
  v4[2] = a2;
  v4[3] = 0;
  return first_trampoline + 8 * v3;
}

_WORD *__main_thread_checker_suppression_begin()
{
  result = GetThreadLocalData();
  v1 = *result;
  if (v1 == 0xFFFF)
  {
    __main_thread_checker_suppression_begin_cold_1();
  }

  *result = v1 + 1;
  return result;
}

void *GetThreadLocalData()
{
  v0 = pthread_getspecific(ThreadLocalDataKey);
  if (!v0)
  {
    v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040098FAF8FuLL);
    pthread_setspecific(ThreadLocalDataKey, v0);
  }

  return v0;
}

_WORD *__main_thread_checker_suppression_end()
{
  result = GetThreadLocalData();
  if (!*result)
  {
    __main_thread_checker_suppression_end_cold_1();
  }

  --*result;
  return result;
}

uint64_t __ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED__(objc_class *a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x1000uLL, 0x2140D0CFuLL);
  v5 = getpid();
  v39 = 0;
  pthread_threadid_np(0, &v39);
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v6 = pthread_self();
  pthread_getname_np(v6, &v42, 0x80uLL);
  if (!v42)
  {
    v46 = xmmword_42DE8;
    v47 = unk_42DF8;
    v48 = xmmword_42E08;
    v49 = unk_42E18;
    v42 = *"(none)";
    v43 = unk_42DB8;
    v44 = xmmword_42DC8;
    v45 = unk_42DD8;
  }

  current_queue = dispatch_get_current_queue();
  label = dispatch_queue_get_label(current_queue);
  qos_class = dispatch_queue_get_qos_class(current_queue, 0);
  Name = class_getName(a1);
  v11 = sel_getName(a2);
  v38 = Name;
  v12 = snprintf(v4, 0xFFFuLL, "Main Thread Checker: UI API called on a background thread: [%s %s]\n", Name, v11);
  v14 = v12 == -1 || v12 > 4095;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (4095 - v12);
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  v17 = &v4[v16];
  if (v15 < 1)
  {
    LODWORD(v19) = v15;
  }

  else
  {
    v18 = snprintf(v17, v15, "PID: %d, TID: %llu, Thread name: %s, Queue name: %s, QoS: %d\n", v5, v39, &v42, label, qos_class);
    LODWORD(v19) = 0;
    if (v18 != -1 && v15 >= v18)
    {
      v17 += v18;
      v19 = (v15 - v18);
      if (v19 >= 1)
      {
        v20 = snprintf(v17, v19, "Backtrace:\n");
        v22 = v20 == -1 || v19 < v20;
        if (v22)
        {
          LODWORD(v19) = 0;
        }

        else
        {
          LODWORD(v19) = v19 - v20;
        }

        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v20;
        }

        v17 += v23;
      }
    }
  }

  memset(v41, 0, 512);
  v24 = backtrace(v41, 128);
  v25 = backtrace_symbols(v41, v24);
  v26 = v25;
  if (v24 >= 1)
  {
    v27 = v24;
    v28 = v41;
    v29 = v25;
    do
    {
      v30 = *v28;
      if (dyld_image_header_containing_address() != MyOwnMachHeader && v19 >= 1)
      {
        v32 = snprintf(v17, v19, "%s\n", *v29);
        v34 = v32 == -1 || v19 < v32;
        if (v34)
        {
          LODWORD(v19) = 0;
        }

        else
        {
          LODWORD(v19) = v19 - v32;
        }

        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32;
        }

        v17 += v35;
      }

      ++v29;
      ++v28;
      --v27;
    }

    while (v27);
  }

  free(v26);
  if (envLogReportsToStdErr)
  {
    fwrite("=================================================================\n", 0x42uLL, 1uLL, __stderrp);
    fputs(v4, __stderrp);
  }

  if (envLogReportsToOsLog == 1)
  {
    if (__ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED___onceToken != -1)
    {
      __ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED___cold_1();
    }

    v36 = __ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED___log;
    if (os_log_type_enabled(__ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED___log, OS_LOG_TYPE_ERROR))
    {
      __ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED___cold_2(v4, v36);
    }
  }

  free(v4);
  result = snprintf(__str, 0x200uLL, "[%s %s]", v38, v11);
  if (envCallLLDBBreakpointSymbol == 1)
  {
    result = indirect__main_thread_checker_on_report(__str);
  }

  if (report_callback)
  {
    result = report_callback(__str);
  }

  if (envCrashOnReport == 1)
  {
    abort();
  }

  return result;
}

void __library_initializer()
{
  v0 = getenv("MTC_MAX_HIT_COUNT");
  if (v0)
  {
    dword_4800C = atoi(v0);
  }

  v1 = getenv("MTC_IGNORE_DUPS_BY_THREAD_PC");
  if (v1)
  {
    _MergedGlobals = atoi(v1) == 1;
  }

  v2 = getenv("MTC_CHECK_CATRANSACTION");
  if (v2)
  {
    byte_48009 = atoi(v2) == 1;
  }

  v3 = getenv("MTC_IGNORE_INLINE_CALLS");
  if (v3)
  {
    byte_4800A = atoi(v3) == 1;
  }

  v4 = getenv("MTC_IGNORE_RETAIN_RELEASE");
  if (v4)
  {
    envIgnoreRetainRelease = atoi(v4) == 1;
  }

  v5 = getenv("MTC_IGNORE_DEALLOC");
  if (v5)
  {
    envIgnoreDealloc = atoi(v5) == 1;
  }

  v6 = getenv("MTC_IGNORE_THREADSAFE_METHODS");
  if (v6)
  {
    envIgnoreNSObjectThreadSafeMethods = atoi(v6) == 1;
  }

  v7 = getenv("MTC_VERBOSE");
  if (v7)
  {
    envVerbose = atoi(v7) == 1;
  }

  v8 = getenv("MTC_MEASURE_PERFORMANCE");
  if (v8)
  {
    envMeasurePerformance = atoi(v8) == 1;
  }

  v9 = getenv("MTC_PRINT_SELECTOR_STATS");
  if (v9)
  {
    envPrintSelectorStats = atoi(v9) == 1;
  }

  v10 = getenv("MTC_DONT_SWIZZLE");
  if (v10)
  {
    envDontSwizzleAnything = atoi(v10) == 1;
  }

  v11 = getenv("MTC_LOG_REPORTS_TO_STDERR");
  if (v11)
  {
    envLogReportsToStdErr = atoi(v11) == 1;
  }

  v12 = getenv("MTC_LOG_REPORTS_TO_OS_LOG");
  if (v12)
  {
    envLogReportsToOsLog = atoi(v12) == 1;
  }

  v13 = getenv("MTC_CRASH_ON_REPORT");
  if (v13)
  {
    envCrashOnReport = atoi(v13) == 1;
  }

  v14 = getenv("MTC_RESET_INSERT_LIBRARIES");
  if (v14)
  {
    envRemoveDylibFromDyldInsertLibraries = atoi(v14) == 1;
  }

  v15 = getenv("MTC_CALL_BREAKPOINT_SYMBOL");
  if (v15)
  {
    envCallLLDBBreakpointSymbol = atoi(v15) == 1;
  }

  v16 = getenv("MTC_SUPPRESS_SYSTEM_REPORTS");
  if (v16)
  {
    byte_4800B = atoi(v16) == 1;
  }

  v17 = getenv("MTC_APPKIT_SUPPRESSIONS");
  if (v17)
  {
    envAppKitSuppressions = atoi(v17) == 1;
  }

  if (envRemoveDylibFromDyldInsertLibraries == 1)
  {
    resetDyldInsertLibraries("libMainThreadChecker.dylib");
  }

  if (envDontSwizzleAnything)
  {
    return;
  }

  v18 = pthread_key_create(&ThreadLocalDataKey, &_free);
  if (v18)
  {
    fprintf(__stderrp, "libMainThreadChecker.dylib: pthread_key_create failed: %d\n", v18);
  }

  v19 = getenv("MTC_SUPPRESSION_FILE");
  if (v19)
  {
    v20 = v19;
    v21 = *v19;
    if (*v19)
    {
      v22 = fopen(v19, "re");
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        if (v21 == 47)
        {
          goto LABEL_78;
        }

        MainBundle = CFBundleGetMainBundle();
        if (!MainBundle || (v30 = CFBundleCopyExecutableURL(MainBundle)) == 0 || (v31 = v30, PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v30), CFRelease(v31), !PathComponent) || (v23 = OpenSuppressionFileAtDirectory(PathComponent), CFRelease(PathComponent), !v23))
        {
          v33 = CFBundleGetMainBundle();
          if (!v33 || (v34 = CFBundleCopyBundleURL(v33)) == 0 || (v35 = v34, v23 = OpenSuppressionFileAtDirectory(v34), CFRelease(v35), !v23))
          {
LABEL_78:
            v36 = __stderrp;
            v37 = __error();
            fprintf(v36, "Cannot open suppression file '%s', error %d.\n", v20, *v37);
            goto LABEL_79;
          }
        }
      }

      while (fgets(__s, 512, v23))
      {
        __s[strcspn(__s, "\n")] = 0;
        if (*__s == 1935764579 && *&__s[4] == 14963)
        {
          if (!userSuppressedClasses)
          {
            userSuppressedClasses = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
          }

          v26 = CFStringCreateWithCString(0, &__s[6], 0x8000100u);
          v27 = userSuppressedClasses;
        }

        else
        {
          if (*__s != 0x2D3A646F6874656DLL)
          {
            if (*__s == 0x726F7463656C6573 && LOBYTE(v49[0]) == 58)
            {
              if (!userSuppressedSelectors)
              {
                userSuppressedSelectors = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
              }

              v28 = CFStringCreateWithCString(0, v49 + 1, 0x8000100u);
              CFSetAddValue(userSuppressedSelectors, v28);
              CFRelease(v28);
            }

            else
            {
              fprintf(__stderrp, "Invalid format for suppression entry '%s', skipping.\n", __s);
            }

            continue;
          }

          if (!userSuppressedMethods)
          {
            userSuppressedMethods = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
          }

          v26 = CFStringCreateWithCString(0, &__s[7], 0x8000100u);
          v27 = userSuppressedMethods;
        }

        CFSetAddValue(v27, v26);
        CFRelease(v26);
      }

      fclose(v23);
    }
  }

LABEL_79:
  Current = CFAbsoluteTimeGetCurrent();
  indirect__main_thread_checker_on_report = dlsym(0xFFFFFFFFFFFFFFFDLL, "__main_thread_checker_on_report");
  Class = objc_getClass("NSResponder");
  v40 = objc_getClass("UIResponder");
  v41 = v40;
  if (Class)
  {
    v42 = DefinedIn(Class, "AppKit");
    if (!v41)
    {
      goto LABEL_85;
    }

LABEL_83:
    v45 = 0;
    v46 = 0;
    v47 = 0;
    if (DefinedIn(v41, "UIKitCore"))
    {
      v45 = v41;
      v43 = 1;
LABEL_87:
      XXKitImage = dyld_image_header_containing_address();
      CoreFoundationImage = dyld_image_header_containing_address();
      objc_getClass("WKWebView");
      WebKitImage = dyld_image_header_containing_address();
      qword_1480D8 = XXKitImage;
      unk_1480E0 = CoreFoundationImage;
      qword_1480E8 = WebKitImage;
      qword_1480B8 = objc_getClass("CATransaction");
      qword_1480C0 = objc_getClass("NSGraphicsContext");
      qword_1480C8 = sel_registerName("currentState");
      qword_1480D0 = sel_registerName("currentContext");
      MyOwnMachHeader = dyld_image_header_containing_address();
      initialize_trampolines(checker_c);
      ma_GrowCapacity(0x400u);
      SwizzleClasses(XXKitImage, &v45, v43);
      if (WebKitImage)
      {
        *__s = objc_getClass("WKWebView");
        v49[0] = objc_getClass("WKWebsiteDataStore");
        v49[1] = objc_getClass("WKUserScript");
        v49[2] = objc_getClass("WKUserContentController");
        v49[3] = objc_getClass("WKScriptMessage");
        v49[4] = objc_getClass("WKProcessPool");
        v49[5] = objc_getClass("WKProcessGroup");
        v49[6] = objc_getClass("WKContentExtensionStore");
        SwizzleClasses(WebKitImage, __s, 8uLL);
      }

      free(qword_1480F8);
      free(qword_148100);
      free(qword_148108);
      if (envVerbose == 1)
      {
        fprintf(__stderrp, "Swizzled %zu methods in %zu classes.\n", totalSwizzledMethods, totalSwizzledClasses);
      }

      if (envPrintSelectorStats == 1)
      {
        atexit_b(&__block_literal_global_37);
      }

      v44 = CFAbsoluteTimeGetCurrent();
      if (envMeasurePerformance == 1)
      {
        fprintf(__stderrp, "Startup took %.3f seconds.\n", v44 - Current);
      }

      return;
    }

    goto LABEL_85;
  }

  v42 = 0;
  if (v40)
  {
    goto LABEL_83;
  }

LABEL_85:
  if (v42)
  {
    v45 = Class;
    v46 = objc_getClass("NSCell");
    v47 = objc_getClass("NSTextInputContext");
    _MergedGlobals_127[0] = envAppKitSuppressions;
    v43 = 3;
    goto LABEL_87;
  }

  if (envVerbose == 1)
  {
    fwrite("AppKit/UIKit not present in the process.\n", 0x29uLL, 1uLL, __stderrp);
  }
}

char *DefinedIn(uint64_t a1, const char *a2)
{
  result = dyld_image_path_containing_address();
  if (result)
  {
    v4 = result;
    v5 = strrchr(result, 47);
    if (v5)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v4;
    }

    return (strcmp(v6, a2) == 0);
  }

  return result;
}

uint64_t checker_c(uint64_t a1, uint64_t a2)
{
  if (envPrintSelectorStats == 1)
  {
    ++*(a1 + 24);
  }

  result = pthread_main_np();
  if (!result)
  {
    return checker_c_cold_1(a2, a1);
  }

  return result;
}

void *ma_GrowCapacity(unsigned int a1)
{
  methodsToSwizzle = a1;
  v1 = 8 * a1;
  qword_1480F8 = malloc_type_realloc(qword_1480F8, v1, 0x2004093837F09uLL);
  qword_148100 = malloc_type_realloc(qword_148100, v1, 0x80040B8603338uLL);
  result = malloc_type_realloc(qword_148108, v1, 0x50040EE9192B6uLL);
  qword_148108 = result;
  return result;
}

void SwizzleClasses(const mach_header_64 *a1, objc_class **a2, unint64_t a3)
{
  v5 = a1;
  v35 = 0;
  size[0] = 0;
  v6 = getsectiondata(a1, "__DATA", "__objc_classlist", size);
  if (v6 || (v6 = getsectiondata(v5, "__DATA_CONST", "__objc_classlist", size)) != 0)
  {
    v7 = v6;
    v35 = size[0] >> 3;
    if (v35)
    {
LABEL_4:
      v8 = 0;
      v9 = a2 + 1;
      v10 = a3 - 1;
      v31 = a2;
      v32 = a3;
      v29 = v7;
      v30 = v5;
      do
      {
        v11 = v7[v8];
        Name = class_getName(v11);
        if (*Name != 95)
        {
          v13 = Name;
          if (dyld_image_header_containing_address() == v5)
          {
            Superclass = v11;
            while (!a3)
            {
LABEL_21:
              Superclass = class_getSuperclass(Superclass);
              if (!Superclass)
              {
                goto LABEL_77;
              }
            }

            if (*a2 && Superclass == *a2)
            {
              goto LABEL_24;
            }

            v16 = 0;
            do
            {
              if (v10 == v16)
              {
                goto LABEL_21;
              }

              v17 = v9[v16++];
              if (v17)
              {
                v18 = Superclass == v17;
              }

              else
              {
                v18 = 0;
              }
            }

            while (!v18);
            if (v16 < a3)
            {
LABEL_24:
              if (envVerbose == 1)
              {
                fprintf(__stderrp, "Swizzling class: %s\n", v13);
              }

              dword_1480F4 = 0;
              cStr = class_getName(v11);
              Class = objc_getClass(cStr);
              v34 = dyld_image_header_containing_address();
              outCount = 0;
              v19 = class_copyMethodList(Class, &outCount);
              if (outCount)
              {
                v20 = 0;
                while (1)
                {
                  v21 = v19[v20];
                  v22 = method_getName(v21);
                  v23 = sel_getName(v22);
                  if (*v23 != 95)
                  {
                    v24 = v23;
                    method_getImplementation(v21);
                    if (dyld_image_header_containing_address() == v34 && (envIgnoreRetainRelease != 1 || strcmp(v24, "retain") && strcmp(v24, "release") && strcmp(v24, "autorelease") && strcmp(v24, "retainCount")) && (envIgnoreDealloc != 1 || strcmp(v24, "dealloc") && strcmp(v24, ".cxx_destruct")))
                    {
                      if (envIgnoreNSObjectThreadSafeMethods != 1)
                      {
                        goto LABEL_46;
                      }

                      if (strcmp(v24, "isEqual:"))
                      {
                        break;
                      }
                    }
                  }

LABEL_30:
                  if (++v20 >= outCount)
                  {
                    goto LABEL_74;
                  }
                }

                v25 = -1;
                v26 = &off_44328;
                while (v25 != 17)
                {
                  v27 = *v26++;
                  ++v25;
                  if (!strcmp(v24, v27))
                  {
                    if (v25 < 0x12)
                    {
                      goto LABEL_30;
                    }

                    break;
                  }
                }

LABEL_46:
                if (strcmp(v24, "postEvent:atStart:") && strcmp(v24, "discardEventsMatchingMask:beforeEvent:") && strcmp(v24, "abortModal") && strcmp(v24, "stopModal") && strcmp(v24, "stopModalWithCode:") && strcmp(v24, "backgroundTimeRemaining") && strcmp(v24, "beginBackgroundTaskWithExpirationHandler:") && strcmp(v24, "beginBackgroundTaskWithName:expirationHandler:") && strcmp(v24, "canOpenURL:") && strcmp(v24, "endBackgroundTask:") && strcmp(v24, "isProtectedDataAvailable") && strcmp(v24, "beginDocument") && strcmp(v24, "getDefaultAudioSessionWithCompletionHandler:") && strcmp(v24, "lockFocus") && strcmp(v24, "lockFocusIfCanDraw") && strcmp(v24, "lockFocusIfCanDrawInContext:") && strcmp(v24, "unlockFocus") && strcmp(v24, "openGLContext") && strcmp(v24, "snapshot") && strcmp(v24, "setApplicationIconBadgeNumber:") && strcmp(v24, "applicationIconBadgeNumber") && strcmp(v24, "performTextOperations:") && strncmp(v24, "webThread", 9uLL) && strncmp(v24, "nsli_", 5uLL) && strncmp(v24, "nsis_", 5uLL))
                {
                  if (IsSuppressed(cStr, v24))
                  {
                    ++userSuppressionsCount;
                  }

                  else
                  {
                    size[0] = v22;
                    size[1] = prepareSwizzler(Class, v21, v22);
                    size[2] = method_getTypeEncoding(v21);
                    ma_Append(size);
                  }
                }

                goto LABEL_30;
              }

LABEL_74:
              if (dword_1480F4)
              {
                class_replaceMethodsBulk();
              }

              free(v19);
              ++totalSwizzledClasses;
              a2 = v31;
              a3 = v32;
              v7 = v29;
              v5 = v30;
            }
          }
        }

LABEL_77:
        ++v8;
      }

      while (v8 < v35);
    }
  }

  else
  {
    v7 = objc_copyClassList(&v35);
    if (v35)
    {
      goto LABEL_4;
    }
  }
}

void ____library_initializer_block_invoke(id a1)
{
  fwrite("Swizzled selector statistics:\n", 0x1EuLL, 1uLL, __stderrp);
  if (totalSwizzledMethods)
  {
    v1 = 0;
    do
    {
      v2 = trampoline_data_from_index(v1);
      v3 = *(v2 + 6);
      if (v3)
      {
        v4 = v2;
        v5 = __stderrp;
        Name = class_getName(*(v2 + 2));
        v7 = sel_getName(*(v4 + 1));
        fprintf(v5, "%u\t[%s %s]\n", v3, Name, v7);
      }

      ++v1;
    }

    while (totalSwizzledMethods > v1);
  }
}

objc_class *__main_thread_add_check_for_selector(objc_class *result, SEL name)
{
  if (result && name)
  {
    v3 = result;
    InstanceMethod = class_getInstanceMethod(result, name);
    ++totalSwizzledMethods;
    Implementation = method_getImplementation(InstanceMethod);
    v6 = add_trampoline(Implementation, v3, name);

    return method_setImplementation(InstanceMethod, v6);
  }

  return result;
}

uint64_t prepareSwizzler(uint64_t a1, Method m, uint64_t a3)
{
  ++totalSwizzledMethods;
  Implementation = method_getImplementation(m);

  return add_trampoline(Implementation, a1, a3);
}

FILE *OpenSuppressionFileAtDirectory(const __CFURL *a1)
{
  v1 = CFURLCopyPath(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  bzero(buffer, 0x400uLL);
  if (CFStringGetCString(v2, buffer, 1023, 0x8000100u))
  {
    strlen(buffer);
    __strncat_chk();
    v3 = fopen(buffer, "re");
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v2);
  return v3;
}

BOOL DetectAppKitNSDocumentAsynchronousSaving()
{
  if (_MergedGlobals_127 != 1)
  {
    return 0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v0 = backtrace(v10, 32);
  if (v0)
  {
    v1 = v0;
    v2 = 1;
    v3 = v10;
    v4 = v0;
    v5 = 1;
    while (1)
    {
      v6 = *v3;
      if (dyld_image_header_containing_address() == XXKitImage)
      {
        memset(&v9, 0, sizeof(v9));
        if (dladdr(*v3, &v9))
        {
          dli_sname = v9.dli_sname;
          if (v9.dli_sname)
          {
            if (strstr(v9.dli_sname, "NSDocument writeToURL") || strstr(dli_sname, "NSDocument writeSafelyToURL"))
            {
              break;
            }
          }
        }
      }

      v5 = v2 < v1;
      ++v3;
      ++v2;
      if (!--v4)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t IsSuppressed(char *cStr, const char *a2)
{
  if (userSuppressedClasses)
  {
    v4 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, kCFAllocatorNull);
    v5 = CFSetContainsValue(userSuppressedClasses, v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  if (userSuppressedSelectors)
  {
    v6 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, kCFAllocatorNull);
    v5 |= CFSetContainsValue(userSuppressedSelectors, v6) != 0;
    CFRelease(v6);
  }

  if (userSuppressedMethods)
  {
    v7 = CFStringCreateWithFormat(0, 0, @"[%s %s]", cStr, a2);
    v5 |= CFSetContainsValue(userSuppressedMethods, v7) != 0;
    CFRelease(v7);
  }

  return v5 & 1;
}

void *ma_Append(void *result)
{
  v1 = result;
  v2 = dword_1480F4;
  if (dword_1480F4 == methodsToSwizzle)
  {
    result = ma_GrowCapacity(2 * dword_1480F4);
    v2 = dword_1480F4;
  }

  dword_1480F4 = v2 + 1;
  *(qword_1480F8 + 8 * v2) = *v1;
  *(qword_148100 + 8 * v2) = v1[1];
  *(qword_148108 + 8 * v2) = v1[2];
  return result;
}

void __ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED___cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
}

uint64_t checker_c_cold_1(uint64_t a1, uint64_t a2)
{
  result = GetThreadLocalData();
  if (!*result)
  {
    if (byte_48009 != 1 || (result = [qword_1480B8 qword_1480C8], !result))
    {
      if (byte_4800A == 1)
      {
        result = dyld_image_header_containing_address();
        v5 = 0;
        while (result != *&_MergedGlobals_127[v5 + 40])
        {
          v5 += 8;
          if (v5 == 24)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v6 = dyld_image_path_containing_address();
        if (byte_4800B != 1 || (v9 = v6, result = strncmp("/System/", v6, 8uLL), v6 = v9, result))
        {
          v7 = strrchr(v6, 47);
          if (!v7 || (result = strcmp(v7 + 1, "libMTLInterpose.dylib"), result))
          {
            result = DetectAppKitNSDocumentAsynchronousSaving();
            if ((result & 1) == 0 && (_MergedGlobals_127[0] != 1 || (result = [qword_1480C0 qword_1480D0]) == 0))
            {
              result = GetThreadLocalData();
              if ((*(result + 16) & 1) == 0)
              {
                v8 = *(a2 + 28) + 1;
                *(a2 + 28) = v8;
                if (!dword_4800C || v8 <= dword_4800C)
                {
                  if (_MergedGlobals == 1)
                  {
                    result = GetThreadLocalData();
                    if (*(result + 8) == a1)
                    {
                      return result;
                    }

                    *(GetThreadLocalData() + 1) = a1;
                  }

                  *(GetThreadLocalData() + 16) = 1;
                  __ASSERT_API_MUST_BE_CALLED_FROM_MAIN_THREAD_FAILED__(*(a2 + 16), *(a2 + 8));
                  result = GetThreadLocalData();
                  *(result + 16) = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}