size_t adjustFrameNumber(size_t result, int a2)
{
  if (result && a2 <= 9999999)
  {
    v3 = result;
    v13 = 0;
    result = strlen(result);
    v4 = 0;
    if (result)
    {
      while (1)
      {
        v5 = v3[v4] < 48 || v4 > 7;
        if (v5 || v3[v4] > 0x39u)
        {
          break;
        }

        if (result == ++v4)
        {
          LODWORD(v4) = result;
          if ((result & 0xFFFFFFF8) != 0)
          {
            return result;
          }

          goto LABEL_13;
        }
      }

      if ((v4 & 0xFFFFFFF8) != 0)
      {
        return result;
      }
    }

LABEL_13:
    v6 = a2 - 1;
    if (a2 == 1)
    {
      LOBYTE(v13) = 48;
      v9 = 1;
    }

    else
    {
      v7 = &v13;
      do
      {
        *v7 = v6 % 10 + 48;
        v7 = (v7 + 1);
        v8 = v6 + 9;
        v6 /= 10;
      }

      while (v8 > 0x12);
      result = strlen(&v13);
      v9 = result;
      v10 = result - 1;
      if (result != 1)
      {
        v11 = 0;
        do
        {
          v12 = *(&v13 + v11);
          *(&v13 + v11) = *(&v13 + v10);
          *(&v13 + v10) = v12;
          ++v11;
          --v10;
        }

        while (v11 < v10);
        if (!result)
        {
          goto LABEL_23;
        }
      }
    }

    result = memcpy(v3, &v13, v9);
LABEL_23:
    if (v4 != v9)
    {
      return memset(&v3[v9], 32, v4 - v9);
    }
  }

  return result;
}

void *checkUnconditionally(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  result = GetThreadLocalData();
  if ((*(result + 52) & 1) == 0)
  {
    *(GetThreadLocalData() + 52) = 1;
    if (envMeasurementMode == 1)
    {
      fprintf(__stderrp, "%s,%llu\n", a4, a1);
    }

    else
    {
      if (a5(a1, a6))
      {
        generateCulledBacktrace(a4, 0, 0, 0, a6, -1, a1, 0, 1, 1);
      }

      if (envPrintStats == 1 && __ROR8__(0xD288CE703AFB7E91 * totalInstances[a6], 4) <= 0x68DB8BAC710CBuLL)
      {
        printStatistics();
      }
    }

    result = GetThreadLocalData();
    *(result + 52) = 0;
  }

  return result;
}

BOOL checkMainThread(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, unsigned int (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v12 = pthread_main_np();
  if (v12 == 1)
  {
    checkUnconditionally(a1, v10, v11, a4, a5, a6);
  }

  return v12 == 1;
}

uint64_t (**initialize_trampolines(uint64_t (**result)(void), int a2))(void)
{
  if (result)
  {
    if (a2 == 1)
    {
      initialize_trampolines_with_two_callbacks(result);
      return (&dword_0 + 1);
    }

    if (!a2)
    {
      initialize_trampolines_with_one_callback(*result);
      return (&dword_0 + 1);
    }

    return 0;
  }

  return result;
}

CFURLRef copyMainBundleExecutableDirectory()
{
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    return 0;
  }

  v1 = CFBundleCopyExecutableURL(MainBundle);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v1);
  CFRelease(v2);
  return PathComponent;
}

__CFBundle *copyMainBundleDirectory()
{
  result = CFBundleGetMainBundle();
  if (result)
  {

    return CFBundleCopyBundleURL(result);
  }

  return result;
}

const char *parseUserSuppressionFile(const char *__filename)
{
  if (__filename)
  {
    v1 = __filename;
    v2 = *__filename;
    if (*__filename)
    {
      v3 = fopen(__filename, "r");
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        if (v2 == 47)
        {
          goto LABEL_40;
        }

        v18 = copyMainBundleExecutableDirectory();
        if (!v18 || (v19 = v18, v4 = openSuppressionFileAtDirectory(v18), CFRelease(v19), !v4))
        {
          MainBundle = CFBundleGetMainBundle();
          if (!MainBundle || (v21 = CFBundleCopyBundleURL(MainBundle)) == 0 || (v22 = v21, v4 = openSuppressionFileAtDirectory(v21), CFRelease(v22), !v4))
          {
LABEL_40:
            v16 = __stderrp;
            v17 = __error();
            return fprintf(v16, "Cannot open suppression file '%s', error %d.\n", v1, *v17);
          }
        }
      }

      while (fgets(__s, 512, v4))
      {
        __s[strcspn(__s, "\n")] = 0;
        v6 = *__s == 0x797469726F697270 && *v24 == 0x69737265766E695FLL && *&v24[3] == 0x3A6E6F6973726576;
        v7 = v25;
        if (!v6)
        {
          v8 = 12;
          if (*__s ^ 0x7268745F6E69616DLL | *v24 ^ 0x3A646165)
          {
            v8 = 0;
          }

          v7 = &__s[v8];
        }

        if (!strncmp("framework:", v7, 0xAuLL))
        {
          if (!userSuppressedBinariesFrameworksAndLibraries)
          {
            userSuppressedBinariesFrameworksAndLibraries = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
          }

          v14 = v7 + 10;
        }

        else if (!strncmp("library:", v7, 8uLL))
        {
          if (!userSuppressedBinariesFrameworksAndLibraries)
          {
            userSuppressedBinariesFrameworksAndLibraries = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
          }

          v14 = v7 + 8;
        }

        else
        {
          if (strncmp("binary:", v7, 7uLL))
          {
            if (!userSuppressedMethods)
            {
              userSuppressedMethods = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
            }

            v9 = strncmp("method:", v7, 7uLL);
            v10 = 7;
            if (v9)
            {
              v10 = 0;
            }

            v11 = CFStringCreateWithCString(0, &v7[v10], 0x8000100u);
            if (!v11)
            {
              continue;
            }

            v12 = v11;
            v13 = &userSuppressedMethods;
            goto LABEL_36;
          }

          if (!userSuppressedBinariesFrameworksAndLibraries)
          {
            userSuppressedBinariesFrameworksAndLibraries = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
          }

          v14 = v7 + 7;
        }

        v15 = CFStringCreateWithCString(0, v14, 0x8000100u);
        if (v15)
        {
          v12 = v15;
          v13 = &userSuppressedBinariesFrameworksAndLibraries;
LABEL_36:
          CFSetAddValue(*v13, v12);
          CFRelease(v12);
        }
      }

      return fclose(v4);
    }
  }

  return __filename;
}

FILE *openSuppressionFileAtDirectory(const __CFURL *a1)
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
    v3 = fopen(buffer, "r");
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v2);
  return v3;
}

BOOL suppressionCheck(char *__s, char *a2, int a3)
{
  if (suppressionCheck_onceToken == -1)
  {
    if (!__s)
    {
LABEL_32:
      v11 = 0;
      suppressionCheck_match_os_log = 0;
      return v11;
    }
  }

  else
  {
    suppressionCheck_cold_1();
    if (!__s)
    {
      goto LABEL_32;
    }
  }

  if (!a2)
  {
    goto LABEL_32;
  }

  v6 = strrchr(__s, 47);
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = __s;
  }

  v8 = CFStringCreateWithCStringNoCopy(0, v7, 0x8000100u, kCFAllocatorNull);
  v9 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, kCFAllocatorNull);
  if (strstr(a2, "custom_write") && (suppressionCheck_match_os_log & 1) == 0)
  {
    suppressionCheck_match_os_log = 1;
  }

  if (v8)
  {
    v10 = CFSetContainsValue(suppressionCheck_defaultFrameworksToSuppressAllLogTypes, v8);
    CFRelease(v8);
    if (v10)
    {
      if (!v9)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  if (v9)
  {
    if (CFSetContainsValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v9) || a3 == 6 && CFSetContainsValue(suppressionCheck_defaultMethodsToSuppressIOLogTypes, v9))
    {
LABEL_16:
      CFRelease(v9);
      return 1;
    }

    CFRelease(v9);
  }

  if (suppressionCheck_match_os_log == 1 && strstr(a2, "os_log"))
  {
    suppressionCheck_match_os_log = 0;
    return 1;
  }

  if (userSuppressedBinariesFrameworksAndLibraries)
  {
    v12 = CFStringCreateWithCStringNoCopy(0, v7, 0x8000100u, kCFAllocatorNull);
    if (v12)
    {
      v13 = v12;
      v14 = CFSetContainsValue(userSuppressedBinariesFrameworksAndLibraries, v12);
      CFRelease(v13);
      if (v14)
      {
        return 1;
      }
    }
  }

  if (!userSuppressedMethods)
  {
    return 0;
  }

  v15 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, kCFAllocatorNull);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v11 = CFSetContainsValue(userSuppressedMethods, v15) != 0;
  CFRelease(v16);
  return v11;
}

void __suppressionCheck_block_invoke(id a1)
{
  suppressionCheck_defaultMethodsToSuppressAllLogTypes = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  suppressionCheck_defaultMethodsToSuppressIOLogTypes = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  suppressionCheck_defaultFrameworksToSuppressAllLogTypes = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  if (suppressionCheck_defaultMethodsToSuppressAllLogTypes)
  {
    v1 = CFStringCreateWithCString(0, "[UIApplication applicationDidEnterBackground]", 0x8000100u);
    if (v1)
    {
      v2 = v1;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v1);
      CFRelease(v2);
    }

    v3 = CFStringCreateWithCString(0, "[FBSSceneSnapshotRequestHandle performRequestForScene:]", 0x8000100u);
    if (v3)
    {
      v4 = v3;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v3);
      CFRelease(v4);
    }

    v5 = CFStringCreateWithCString(0, "[FBSSceneSnapshotAction snapshotRequest:performWithContext:]", 0x8000100u);
    if (v5)
    {
      v6 = v5;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v5);
      CFRelease(v6);
    }

    v7 = CFStringCreateWithCString(0, "[UIScene _performSnapshotsWithActions:]", 0x8000100u);
    if (v7)
    {
      v8 = v7;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v7);
      CFRelease(v8);
    }

    v9 = CFStringCreateWithCString(0, "[UIApplication _performSnapshotsWithAction:forScene:completion:]", 0x8000100u);
    if (v9)
    {
      v10 = v9;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v9);
      CFRelease(v10);
    }

    v11 = CFStringCreateWithCString(0, "printToolAgent", 0x8000100u);
    if (v11)
    {
      v12 = v11;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressAllLogTypes, v11);
      CFRelease(v12);
    }
  }

  if (suppressionCheck_defaultMethodsToSuppressIOLogTypes)
  {
    v13 = CFStringCreateWithCString(0, "NSLog", 0x8000100u);
    if (v13)
    {
      v14 = v13;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressIOLogTypes, v13);
      CFRelease(v14);
    }

    v15 = CFStringCreateWithCString(0, "printf", 0x8000100u);
    if (v15)
    {
      v16 = v15;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressIOLogTypes, v15);
      CFRelease(v16);
    }

    v17 = CFStringCreateWithCString(0, "_os_log_debug_impl", 0x8000100u);
    if (v17)
    {
      v18 = v17;
      CFSetAddValue(suppressionCheck_defaultMethodsToSuppressIOLogTypes, v17);
      CFRelease(v18);
    }
  }

  if (suppressionCheck_defaultFrameworksToSuppressAllLogTypes)
  {
    v19 = CFStringCreateWithCString(0, "libMTLCapture.dylib", 0x8000100u);
    if (v19)
    {
      v20 = v19;
      CFSetAddValue(suppressionCheck_defaultFrameworksToSuppressAllLogTypes, v19);
      CFRelease(v20);
    }

    v21 = CFStringCreateWithCString(0, "GPUToolsCapture", 0x8000100u);
    if (v21)
    {
      v22 = v21;
      CFSetAddValue(suppressionCheck_defaultFrameworksToSuppressAllLogTypes, v21);

      CFRelease(v22);
    }
  }
}

void isDBInWalMode_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Database not tracked\n", "isDBInWalMode");
  }

  __assert_rtn("isDBInWalMode", "SQLiteDatabaseTracking.cpp", 407, "0");
}

void isDBAssociatedWithStmtTracked_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid database handle\n", "isDBAssociatedWithStmtTracked");
  }

  __assert_rtn("isDBAssociatedWithStmtTracked", "SQLiteDatabaseTracking.cpp", 481, "0");
}

void isDBAssociatedWithStmtTracked_cold_2()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid statement\n", "isDBAssociatedWithStmtTracked");
  }

  __assert_rtn("isDBAssociatedWithStmtTracked", "SQLiteDatabaseTracking.cpp", 472, "0");
}

void isDBAssociatedWithStmtInMemory_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Database not tracked\n", "isDBAssociatedWithStmtInMemory");
  }

  __assert_rtn("isDBAssociatedWithStmtInMemory", "SQLiteDatabaseTracking.cpp", 548, "0");
}

void isDBAssociatedWithStmtInMemory_cold_2()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid database handle\n", "isDBAssociatedWithStmtInMemory");
  }

  __assert_rtn("isDBAssociatedWithStmtInMemory", "SQLiteDatabaseTracking.cpp", 539, "0");
}

void isExplicitVacuumStatement_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: statement is NULL\n", "isExplicitVacuumStatement");
  }

  __assert_rtn("isExplicitVacuumStatement", "SQLiteDatabaseTracking.cpp", 579, "0");
}

void isWriteStatement_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Database not tracked\n", "isWriteStatement");
  }

  __assert_rtn("isWriteStatement", "SQLiteDatabaseTracking.cpp", 650, "0");
}

void isWriteStatement_cold_2()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid database handle", "isWriteStatement");
  }

  __assert_rtn("isWriteStatement", "SQLiteDatabaseTracking.cpp", 639, "0");
}

void isWriteStatement_cold_3()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: statement is NULL\n", "isWriteStatement");
  }

  __assert_rtn("isWriteStatement", "SQLiteDatabaseTracking.cpp", 626, "0");
}

void isBulkReadStatement_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Database not tracked\n", "isBulkReadStatement");
  }

  __assert_rtn("isBulkReadStatement", "SQLiteDatabaseTracking.cpp", 711, "0");
}

void isBulkReadStatement_cold_2()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid database handle", "isBulkReadStatement");
  }

  __assert_rtn("isBulkReadStatement", "SQLiteDatabaseTracking.cpp", 700, "0");
}

void isBulkReadStatement_cold_3()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: statement is NULL\n", "isBulkReadStatement");
  }

  __assert_rtn("isBulkReadStatement", "SQLiteDatabaseTracking.cpp", 687, "0");
}

void isBulkWriteStatement_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Database not tracked\n", "isBulkWriteStatement");
  }

  __assert_rtn("isBulkWriteStatement", "SQLiteDatabaseTracking.cpp", 772, "0");
}

void isBulkWriteStatement_cold_2()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid database handle", "isBulkWriteStatement");
  }

  __assert_rtn("isBulkWriteStatement", "SQLiteDatabaseTracking.cpp", 761, "0");
}

void isBulkWriteStatement_cold_3()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: statement is NULL\n", "isBulkWriteStatement");
  }

  __assert_rtn("isBulkWriteStatement", "SQLiteDatabaseTracking.cpp", 748, "0");
}

void isStmtForDBInWalMode_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: statement is NULL\n", "isStmtForDBInWalMode");
  }

  __assert_rtn("isStmtForDBInWalMode", "SQLiteDatabaseTracking.cpp", 805, "0");
}

void checkWalModeFromQuery_cold_1()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Database not tracked\n", "checkWalModeFromQuery");
  }

  __assert_rtn("checkWalModeFromQuery", "SQLiteDatabaseTracking.cpp", 942, "0");
}

void checkWalModeFromQuery_cold_2()
{
  if (envRPACDebug == 1)
  {
    fprintf(__stderrp, "%s: Invalid database handle\n", "checkWalModeFromQuery");
  }

  __assert_rtn("checkWalModeFromQuery", "SQLiteDatabaseTracking.cpp", 934, "0");
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}