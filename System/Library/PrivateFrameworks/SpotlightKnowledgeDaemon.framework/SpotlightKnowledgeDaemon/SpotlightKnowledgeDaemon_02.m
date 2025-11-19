void sub_231B8FC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __enumerateKeyphraseInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, double a6)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (a4 == 3)
  {
    v11 = objc_autoreleasePoolPush();
    if (*(a1 + 80) == 1)
    {
      if (a3 < 2)
      {
        goto LABEL_10;
      }

      v12 = *(a1 + 72);
      if (a2 + a3 == v12[5])
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (a3 < 2)
      {
LABEL_10:
        objc_autoreleasePoolPop(v11);
        goto LABEL_11;
      }

      v12 = *(a1 + 72);
    }

    v13 = (v12[3] + 16 * a2);
    v14 = [MEMORY[0x277CCACA8] stringWithCharacters:v12[2] + 2 * *v13 length:v13[2 * a3 - 2] - *v13 + v13[2 * a3 - 1]];
    v15 = [v14 lowercaseStringWithLocale:*(a1 + 32)];
    v16 = [SKGKeyphrase alloc];
    v21[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v18 = [(SKGKeyphrase *)v16 initWithKeyphrase:v14 components:v17 tokenCount:a3 score:a6];

    v19 = *(*(a1 + 56) + 8);
    (*(*(a1 + 40) + 16))();

    goto LABEL_10;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_11:
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || !*(*(*(a1 + 64) + 8) + 24) || (*(*(a1 + 48) + 16))())
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a5 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void *checkValueForKey(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  value = 0;
  if (theDict && a2)
  {
    if (CFDictionaryGetValueIfPresent(theDict, a2, &value))
    {
      return value;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t recordHasKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && (value = 0, v4))
  {
    if (CFDictionaryGetValueIfPresent(v3, v4, &value))
    {
      v6 = value == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *getValueForKey(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  value = 0;
  if (theDict && a2)
  {
    if (CFDictionaryGetValueIfPresent(theDict, a2, &value))
    {
      if (value == *MEMORY[0x277CBEEE8])
      {
        return 0;
      }

      else
      {
        return value;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t createOrGetDb()
{
  result = db_get_datastore();
  if (!result)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v1 = SKGLogInit();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        createOrGetDb_cold_1();
      }
    }

    return db_create_datastore();
  }

  return result;
}

uint64_t MurmurHash3_x86_32(uint64_t a1, int a2)
{
  v2 = -1759636613;
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 3;
  }

  v4 = (a1 + (v3 & 0xFFFFFFFC));
  if ((a2 + 3) >= 7)
  {
    v7 = -(v3 >> 2);
    v8 = -1789642873;
    v9 = 718793509;
    do
    {
      v8 = 5 * v8 + 2071795100;
      v9 = 5 * v9 + 1808688022;
      HIDWORD(v10) = *&v4[4 * v7] * v8;
      LODWORD(v10) = HIDWORD(v10);
      v11 = (v10 >> 21) * v9;
      HIDWORD(v10) = v2;
      LODWORD(v10) = v2;
      v2 = v11 ^ (5 * (v10 >> 19) + 1390208809);
    }

    while (!__CFADD__(v7++, 1));
    v6 = 5 * v8 + 2071795100;
    v5 = 5 * v9 + 1808688022;
  }

  else
  {
    v5 = 1107688271;
    v6 = 1713515327;
  }

  v13 = 0;
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v13 = v4[2] << 16;
    }

    v13 |= v4[1] << 8;
  }

  else if ((a2 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v14) = (v13 ^ *v4) * v6;
  LODWORD(v14) = HIDWORD(v14);
  v15 = (v14 >> 21) * v5;
  HIDWORD(v14) = v2;
  LODWORD(v14) = v2;
  v2 = v15 ^ (5 * (v14 >> 19) + 1390208809);
LABEL_17:
  v16 = -1028477387 * ((-2048144789 * (v2 ^ a2)) ^ ((-2048144789 * (v2 ^ a2)) >> 13));
  return v16 ^ HIWORD(v16);
}

void sub_231B9715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __copy_helper_block_e8_48n13_8_8_t0w12_s16(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v3;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void sub_231B9DCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void createReportLine(uint64_t a1, char *a2)
{
  Calendar = getCalendar();
  v5 = Calendar;
  v6 = *(a1 + 48);
  if (v6 == 0.0)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = getDateString(Calendar, v6);
  }

  v8 = *(a1 + 56);
  v21 = v7;
  if (v8 == 0.0)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = getDateString(v5, v8);
    v7 = v21;
  }

  v10 = *(a1 + 48);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = v11 <= v10 || v11 == 0.0;
    v13 = v11 - v10;
    if (v12)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }
  }

  if (*(a1 + 64))
  {
    v15 = "BG";
  }

  else
  {
    v15 = "PRI";
  }

  v16 = *(a1 + 72) / 36000.0;
  v17 = v7;
  v18 = [(__CFString *)v21 UTF8String];
  v19 = [(__CFString *)v9 UTF8String];
  v20 = 78;
  if (*(a1 + 65))
  {
    v20 = 89;
  }

  sprintf(a2, "%-4s %-20s %-20s %6.1f %5llu %5llu %5llu %5llu %5llu %5llu %8.2f%% %c", v15, v18, v19, v14, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v16 * 100.0, v20);
}

void NewAggregateStats(void *a1@<X0>, double *a2@<X8>)
{
  v5 = [a1 sortedArrayUsingSelector:sel_compare_];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != 0"];
  v4 = [v5 filteredArrayUsingPredicate:v3];

  *a2 = calculateAverage(v5);
  a2[1] = calculateAverage(v4);
  a2[2] = calculatePercentile(v5, 0.05);
  a2[3] = calculatePercentile(v5, 0.25);
  a2[4] = calculatePercentile(v5, 0.5);
  a2[5] = calculatePercentile(v5, 0.75);
  a2[6] = calculatePercentile(v5, 0.9);
  a2[7] = calculatePercentile(v5, 0.95);
  a2[8] = calculatePercentile(v5, 0.99);
}

void PrintAggregateStats(double *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(v7, 0x400uLL);
  v4 = *a1;
  v5 = a2;
  __sprintf_chk(v7, 0, 0x400uLL, "Avg:\t%.2f", v4);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "Avg w/o 0s:\t%.2f", a1[1]);
  v5[2](v5, v7);
  v5[2](v5, "");
  __sprintf_chk(v7, 0, 0x400uLL, "p05:\t%.2f", a1[2]);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "p25:\t%.2f", a1[3]);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "p50:\t%.2f", a1[4]);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "p75:\t%.2f", a1[5]);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "p90:\t%.2f", a1[6]);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "p95:\t%.2f", a1[7]);
  v5[2](v5, v7);
  __sprintf_chk(v7, 0, 0x400uLL, "p99:\t%.2f", a1[8]);
  v5[2](v5, v7);

  v6 = *MEMORY[0x277D85DE8];
}

__CFCalendar *getCalendar()
{
  v0 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBED08], *MEMORY[0x277CBEE80]);
  v1 = CFTimeZoneCopySystem();
  CFCalendarSetTimeZone(v0, v1);
  CFRelease(v1);
  return v0;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *getDateString(__CFCalendar *a1, CFAbsoluteTime a2)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (CFCalendarDecomposeAbsoluteTime(a1, a2, "yMdHms", &v7 + 4, &v7, &v6 + 4, &v6, &v5 + 4, &v5))
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = [v2 initWithFormat:@"%04d-%02d-%02d %02d:%02d:%02d", HIDWORD(v7), v7, HIDWORD(v6), v6, HIDWORD(v5), v5];
  }

  else
  {
    v3 = @"invalid";
  }

  return v3;
}

void sub_231B9F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

double calculateAverage(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v12 + 1) + 8 * i) doubleValue];
          v6 = v6 + v8;
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }

    v9 = v6 / [v2 count];
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

double calculatePercentile(void *a1, double a2)
{
  v3 = a1;
  v4 = 0.0;
  if ([v3 count])
  {
    v5 = (([v3 count] - 1) * a2);
    if ([v3 count] > v5)
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      [v6 doubleValue];
      v4 = v7;
    }
  }

  return v4;
}

__CFString *eventTypeToStr(int a1)
{
  if ((a1 - 1) > 0x36)
  {
    return @"unknown";
  }

  else
  {
    return off_27893E538[(a1 - 1)];
  }
}

uint64_t getDataTypeForParamType(int a1)
{
  if ((a1 - 1) > 0xF)
  {
    return 3;
  }

  else
  {
    return dword_231C22690[a1 - 1];
  }
}

__CFString *paramTypeToStr(int a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"pid";
  }

  else
  {
    return off_27893E6F0[a1 - 1];
  }
}

uint64_t getUInt32FromParam(void *a1, uint64_t a2)
{
  v3 = a1;
  if (getDataTypeForParamType(a2) != 3)
  {
    getUInt32FromParam_cold_1();
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntValue];

  return v6;
}

uint64_t getUInt64FromParam(void *a1, uint64_t a2)
{
  v3 = a1;
  if (getDataTypeForParamType(a2) != 4)
  {
    getUInt64FromParam_cold_1();
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedLongLongValue];

  return v6;
}

id getStringFromParam(void *a1, uint64_t a2)
{
  v3 = a1;
  if (getDataTypeForParamType(a2) != 5)
  {
    getStringFromParam_cold_1();
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  return v5;
}

uint64_t SKGDaemonMain(int a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v20.rlim_cur = 0;
  v20.rlim_max = 0;
  if (getrlimit(8, &v20))
  {
    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SKGDaemonMain_cold_1();
    }
  }

  else
  {
    if (v20.rlim_cur > 0x7FF)
    {
      goto LABEL_9;
    }

    v20.rlim_cur = 2048;
    if (!setrlimit(8, &v20))
    {
      goto LABEL_9;
    }

    v4 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SKGDaemonMain_cold_2();
    }
  }

LABEL_9:
  v5 = objc_autoreleasePoolPush();
  v6 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = getpid();
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_INFO, "Starting %d", buf, 8u);
  }

  if (a1 != 2)
  {
    goto LABEL_17;
  }

  v8 = *(a2 + 8);
  if (*v8 != 45)
  {
    goto LABEL_17;
  }

  if (v8[1] == 117 && !v8[2])
  {
    v13 = +[SKGUpdaterAgent sharedAgent];
    v14 = [v13 start];

    objc_autoreleasePoolPop(v5);
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_21:
    Current = CFRunLoopGetCurrent();
    v16 = CFAbsoluteTimeGetCurrent();
    v17 = CFRunLoopTimerCreate(*MEMORY[0x277CBECE8], v16 + 3.1536e10, 0.0, 0, 0, dummyTimerCallback, 0);
    CFRunLoopAddTimer(Current, v17, *MEMORY[0x277CBF058]);
    while (1)
    {
      CFRunLoopRun();
    }
  }

  if (v8[1] == 120 && !v8[2])
  {
    *buf = 0;
    if (sandbox_init("/usr/share/sandbox/com.apple.spotlightknowledged.importer.sb", 1uLL, buf))
    {
      v19 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        SKGDaemonMain_cold_3(buf, v19);
      }

      sandbox_free_error(*buf);
      __assert_rtn("SKGDaemonMain", "SKGDaemonMain.m", 56, "0");
    }

    _CFPrefsSetDirectModeEnabled();
    _CFPrefsSetReadOnly();
    v18 = +[SKGImporterAgent sharedAgent];
    v10 = [v18 start];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
LABEL_17:
    v9 = +[SKGTaskAgent sharedAgent];
    v10 = [v9 start];

    objc_autoreleasePoolPop(v5);
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

void lookupAddressScore(void *a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [a1 subResults];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = *v23;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 type];
        v12 = [v11 isEqualToString:@"City"];

        if (v12)
        {
          v13 = [v10 value];
          [v4 addComponent:v13];

          v14 = [v10 value];
          [v4 setCity:v14];
        }

        else
        {
          v15 = [v10 type];
          v16 = [v15 isEqualToString:@"State"];

          if (v16)
          {
            v17 = [v10 value];
            [v4 addComponent:v17];

            v14 = [v10 value];
            [v4 setArea:v14];
          }

          else
          {
            v18 = [v10 type];
            v19 = [v18 isEqualToString:@"Country"];

            if (!v19)
            {
              goto LABEL_15;
            }

            v20 = [v10 value];
            [v4 addComponent:v20];

            v14 = [v10 value];
            [v4 setCountry:v14];
          }
        }

LABEL_15:
        lookupAddressScore(v10, v4);
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v7)
      {
LABEL_17:

        break;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_231BA2320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231BA2680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_231BA2C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id normalizedLocationString(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 lowercaseString];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"." withString:&stru_2846CE8D8];

  [v6 length];
  v7 = SIStringCopyIndexableStringForLocale();
  if (!v7)
  {
    v7 = [v6 stringByFoldingWithOptions:385 locale:v3];
  }

  return v7;
}

void sub_231BA3B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

id convertGeoListToLocations(void *a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v57 = a2;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_50;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v55 = v3;
  v4 = [v3 pois];
  v5 = [v4 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_49;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v60;
  v56 = v4;
  do
  {
    v9 = 0;
    do
    {
      if (*v60 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v59 + 1) + 8 * v9);
      if (v10 && [*(*(&v59 + 1) + 8 * v9) hasPrefGeocode] && objc_msgSend(v7, "count") <= 1)
      {
        v58 = v7;
        if (pirCategoryPrefix_onceToken != -1)
        {
          convertGeoListToLocations_cold_1();
        }

        v11 = [pirCategoryPrefix_prefixes objectForKeyedSubscript:v57];
        if (!v11 || ![v10 hasModernPrimaryCategoryId] || (objc_msgSend(v10, "modernPrimaryCategoryId"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hasPrefix:", v11), v12, v13))
        {
          v14 = [SKGLocation alloc];
          [v10 popularityCartoScore];
          v15 = [(SKGEntity *)v14 initWithScore:?];
          [(SKGLocation *)v15 setFromPIR:1];
          v16 = [v10 prefGeocode];
          [v16 lat];
          [(SKGLocation *)v15 setLat:?];

          v17 = [v10 prefGeocode];
          [v17 lng];
          [(SKGLocation *)v15 setLng:?];

          v18 = v11;
          if (v11 && ([&unk_2846E8678 objectForKeyedSubscript:v18], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
          {
            v20 = [&unk_2846E8678 objectForKeyedSubscript:v18];
            v21 = [v20 intValue];
          }

          else
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          [(SKGLocation *)v15 setType:v21];
          v22 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
          [(SKGLocation *)v15 setAddress:v22];

          v23 = [v10 title];
          v24 = [(SKGLocation *)v15 type];
          switch(v24)
          {
            case 2:
              v25 = [(SKGLocation *)v15 address];
              [v25 setCity:v23];
              break;
            case 1:
              v25 = [(SKGLocation *)v15 address];
              [v25 setArea:v23];
              break;
            case 0:
              v25 = [(SKGLocation *)v15 address];
              [v25 setCountry:v23];
              break;
            default:
LABEL_26:
              v26 = [v10 address];
              v27 = [v26 countryCode];

              if (v27)
              {
                v28 = [v10 address];
                v29 = [v28 countryCode];
                v30 = [(SKGLocation *)v15 address];
                [v30 setCountryCode:v29];

                v31 = [v10 address];
                v32 = [v31 countryCode];
                [(SKGLocation *)v15 addExpansion:v32];
              }

              v33 = [v10 address];
              v34 = [v33 administrativeAreaCode];

              if (v34)
              {
                v35 = [v10 address];
                v36 = [v35 administrativeAreaCode];
                [(SKGLocation *)v15 addExpansion:v36];

                v37 = [v10 address];
                v38 = [v37 administrativeAreaCode];
                v39 = [(SKGLocation *)v15 address];
                [v39 setAreaCode:v38];
              }

              v40 = [v10 address];
              v41 = [v40 subAdministrativeArea];

              if (v41)
              {
                v42 = [v10 address];
                v43 = [v42 subAdministrativeArea];
                [(SKGLocation *)v15 addExpansion:v43];
              }

              v44 = [v10 address];
              v45 = [v44 administrativeArea];

              if (v45)
              {
                v46 = [v10 address];
                v47 = [v46 administrativeArea];
                [(SKGLocation *)v15 addExpansion:v47];
              }

              v48 = [v10 address];
              v49 = [v48 locality];

              if (v49)
              {
                v50 = [v10 address];
                v51 = [v50 locality];
                [(SKGLocation *)v15 addExpansion:v51];
              }

              if (v23)
              {
                [(SKGLocation *)v15 addExpansion:v23];
              }

              v4 = v56;
              v7 = v58;
              if (!v58)
              {
                v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v7 addObject:v15];

LABEL_41:
              goto LABEL_42;
          }

          goto LABEL_26;
        }

        v7 = v58;
        goto LABEL_41;
      }

LABEL_42:
      ++v9;
    }

    while (v6 != v9);
    v52 = [v4 countByEnumeratingWithState:&v59 objects:v63 count:16];
    v6 = v52;
  }

  while (v52);
LABEL_49:

  v3 = v55;
LABEL_50:

  v53 = *MEMORY[0x277D85DE8];

  return v7;
}

void lookupDateScore(void *a1, double *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (v3 && a2)
  {
    v5 = [v3 type];
    v6 = [&unk_2846E81F0 containsObject:v5];

    if ((v6 & 1) == 0)
    {
      *a2 = *a2 + 1.0;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v4 subResults];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          lookupDateScore(*(*(&v13 + 1) + 8 * v11++), a2);
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_231BA6794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __pirCategoryPrefix_block_invoke()
{
  v0 = pirCategoryPrefix_prefixes;
  pirCategoryPrefix_prefixes = &unk_2846E8650;
}

void sub_231BA96B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BAB0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BAB688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  objc_destroyWeak(&a50);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 240), 8);
  _Block_object_dispose((v59 - 208), 8);
  _Block_object_dispose((v59 - 176), 8);
  _Block_object_dispose((v59 - 144), 8);
  objc_destroyWeak((v59 - 112));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id queryStringForPeopleUpdates(void *a1, void *a2, void *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 addObject:@"*=*"];
  [v8 addObject:@"_kMDItemUserActivityType!=*"];
  [v8 addObject:@"(_kMDItemIsZombie!=* || _kMDItemIsZombie!=1)"];
  if ([v7 count])
  {
    [v8 addObjectsFromArray:v7];
  }

  v68 = v8;
  v69 = v5;
  v66 = v7;
  if ([v5 count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v82 objects:v89 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v83;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v83 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@", *(*(&v82 + 1) + 8 * i)];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v82 objects:v89 count:16];
      }

      while (v12);
    }

    if ([v9 count] != 1)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [v9 allObjects];
      v18 = v17;
      v19 = @"||";
LABEL_24:
      v27 = [v17 componentsJoinedByString:v19];
      v26 = [v16 stringWithFormat:@"(%@)", v27];

      goto LABEL_25;
    }
  }

  else
  {
    if (![v6 count])
    {
      goto LABEL_26;
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v20 = v6;
    v21 = [v20 countByEnumeratingWithState:&v78 objects:v88 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v79;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v79 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID!=%@", *(*(&v78 + 1) + 8 * j)];
          [v9 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v78 objects:v88 count:16];
      }

      while (v22);
    }

    if ([v9 count] != 1)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [v9 allObjects];
      v18 = v17;
      v19 = @"&&";
      goto LABEL_24;
    }
  }

  v18 = [v9 allObjects];
  v26 = [v18 firstObject];
LABEL_25:

  [v68 addObject:v26];
  v5 = v69;
LABEL_26:
  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v29 = [MEMORY[0x277D657A0] sharedContext];
  v30 = [v29 peopleExcludeBundles];

  v31 = [v30 countByEnumeratingWithState:&v74 objects:v87 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v75;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v75 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v74 + 1) + 8 * k);
        if (([v6 containsObject:v35] & 1) == 0 && (!objc_msgSend(v5, "count") || objc_msgSend(v5, "containsObject:", v35)))
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID!=%@", v35];
          [v28 addObject:v36];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v32);
  }

  if ([v28 count])
  {
    if ([v28 count] == 1)
    {
      v37 = [v28 allObjects];
      v38 = [v37 firstObject];
    }

    else
    {
      v39 = MEMORY[0x277CCACA8];
      v37 = [v28 allObjects];
      v40 = [v37 componentsJoinedByString:@"&&"];
      v38 = [v39 stringWithFormat:@"(%@)", v40];
    }

    [v67 addObject:v38];
  }

  v41 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v42 = [MEMORY[0x277D657A0] sharedContext];
  v43 = [v42 peopleExtractionAttributes];

  v44 = [v43 countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v71;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v71 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", *(*(&v70 + 1) + 8 * m)];
        [v41 addObject:v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v45);
  }

  if ([v41 count])
  {
    if ([v41 count] == 1)
    {
      v49 = [v41 allObjects];
      v50 = [v49 firstObject];
    }

    else
    {
      v51 = MEMORY[0x277CCACA8];
      v49 = [v41 allObjects];
      v52 = [v49 componentsJoinedByString:@"||"];
      v50 = [v51 stringWithFormat:@"(%@)", v52];
    }

    [v67 addObject:v50];
  }

  if ([v67 count] == 1)
  {
    v53 = [v67 firstObject];
  }

  else
  {
    v54 = MEMORY[0x277CCACA8];
    v55 = [v67 componentsJoinedByString:@"&&"];
    v53 = [v54 stringWithFormat:@"(%@)", v55];
  }

  [v65 addObject:v53];

  if ([v65 count] == 1)
  {
    v56 = v68;
    [v68 addObjectsFromArray:v65];
  }

  else
  {
    v57 = MEMORY[0x277CCACA8];
    v58 = [v65 componentsJoinedByString:@"||"];
    v59 = [v57 stringWithFormat:@"(%@)", v58];
    v56 = v68;
    [v68 addObject:v59];
  }

  v60 = MEMORY[0x277CCACA8];
  v61 = [v56 componentsJoinedByString:@"&&"];
  v62 = [v60 stringWithFormat:@"(%@)", v61];

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

void sub_231BADD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BAE0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  objc_destroyWeak((v28 + 72));
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v29 - 168), 8);
  _Block_object_dispose((v29 - 136), 8);
  objc_destroyWeak((v29 - 104));
  _Unwind_Resume(a1);
}

void sub_231BAE644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231BB2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BB2928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BB3338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59)
{
  objc_destroyWeak(&a59);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Block_object_dispose(&STACK[0x398], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  objc_destroyWeak(&STACK[0x3D8]);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231BB6170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v68 + 136));
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose((v69 - 232), 8);
  _Block_object_dispose((v69 - 200), 8);
  objc_destroyWeak((v69 - 168));
  _Unwind_Resume(a1);
}

void sub_231BB74EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_231BB7D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_231BB8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  objc_destroyWeak((v62 + 120));
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose((v63 - 232), 8);
  _Block_object_dispose((v63 - 200), 8);
  objc_destroyWeak((v63 - 168));
  _Unwind_Resume(a1);
}

void sub_231BB9750(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_231BBAE10(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

id queryStringForUpdateFilter(void *a1, __int16 a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ((a2 & 0x10) != 0)
  {
    v10 = [MEMORY[0x277D657A0] sharedContext];
    v11 = [v10 embeddingExcludeBundles];
    v12 = [SKGTextQueryManager queryForEmbeddingsUpdatesExcludeBundles:v11];
    [v4 addObject:v12];

    if ((a2 & 0x20) == 0)
    {
LABEL_3:
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a2 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v13 = [MEMORY[0x277D657A0] sharedContext];
  v14 = [v13 keyphraseExcludeBundles];
  v15 = [SKGTextQueryManager queryForKeyphrasesUpdatesExcludeBundles:v14];
  [v4 addObject:v15];

  if ((a2 & 0x80) == 0)
  {
LABEL_4:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v16 = [MEMORY[0x277D657A0] sharedContext];
  v17 = [v16 suggestedEventsIncludeBundles];
  v18 = [SKGTextQueryManager queryForSuggestedEventsUpdatesIncludeBundles:v17];
  [v4 addObject:v18];

  if ((a2 & 0x100) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277D657A0] sharedContext];
    v6 = [v5 docUnderstandingIncludeBundles];
    v7 = [SKGTextQueryManager queryForDocUnderstandingUpdatesIncludeBundles:v6];
    [v4 addObject:v7];
  }

LABEL_6:
  v8 = [SKGTextQueryManager queryForEligibleItemsWithTaskQueries:v4 excludeBundles:v3];

  return v8;
}

id queryStringForTextContentUpdates(void *a1, void *a2, void *a3, __int16 a4)
{
  v217 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = objc_opt_new();
  if ([v9 count])
  {
    [v10 addObjectsFromArray:v9];
  }

  v166 = v9;
  v167 = v7;
  if ((a4 & 4) != 0)
  {
    [v10 addObject:@"_kMDItemIsEvictedFile!=1"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemOwnerUserID==%d", geteuid()];
    [v10 addObject:v11];

    v12 = MEMORY[0x277CCACA8];
    v13 = [&unk_2846E83A0 componentsJoinedByString:{@", "}];
    v14 = [v12 stringWithFormat:@"FieldMatch(kMDItemContentType, %@)", v13];

    [v10 addObject:v14];
  }

  else
  {
    [v10 addObject:@"_kMDItemUserActivityType!=*"];
    [v10 addObject:@"(_kMDItemIsZombie!=* || _kMDItemIsZombie!=1)"];
  }

  v170 = a4;
  if ([0 count])
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v16 = [0 countByEnumeratingWithState:&v204 objects:v216 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v205;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v205 != v18)
          {
            objc_enumerationMutation(0);
          }

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID=%@", *(*(&v204 + 1) + 8 * i)];
          [v15 addObject:v20];
        }

        v17 = [0 countByEnumeratingWithState:&v204 objects:v216 count:16];
      }

      while (v17);
    }

    if ([v15 count] == 1)
    {
      v21 = [v15 allObjects];
      v22 = [v21 firstObject];
      v23 = v22;
    }

    else
    {
      v30 = MEMORY[0x277CCACA8];
      v21 = [v15 allObjects];
      v22 = [v21 componentsJoinedByString:@"||"];
      v23 = [v30 stringWithFormat:@"(%@)", v22];
    }
  }

  else
  {
    if (![v8 count])
    {
      goto LABEL_29;
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v24 = v8;
    v25 = [v24 countByEnumeratingWithState:&v200 objects:v215 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v201;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v201 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID!=%@", *(*(&v200 + 1) + 8 * j)];
          [v15 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v200 objects:v215 count:16];
      }

      while (v26);
    }

    if ([v15 count] == 1)
    {
      v21 = [v15 allObjects];
      v22 = [v21 firstObject];
      v23 = v22;
    }

    else
    {
      v31 = MEMORY[0x277CCACA8];
      v21 = [v15 allObjects];
      v22 = [v21 componentsJoinedByString:@"&&"];
      v23 = [v31 stringWithFormat:@"(%@)", v22];
    }
  }

  a4 = v170;

  [v10 addObject:v23];
LABEL_29:
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v168 = v32;
  v169 = v10;
  if ((a4 & 0x10) != 0)
  {
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v35 = [MEMORY[0x277D657A0] sharedContext];
    v36 = [v35 embeddingExcludeBundles];

    v37 = [v36 countByEnumeratingWithState:&v196 objects:v214 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v197;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v197 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v196 + 1) + 8 * k);
          if (([v8 containsObject:v41] & 1) == 0 && (!objc_msgSend(0, "count") || objc_msgSend(0, "containsObject:", v41)))
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID!=%@", v41];
            [v34 addObject:v42];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v196 objects:v214 count:16];
      }

      while (v38);
    }

    if ([v34 count])
    {
      if ([v34 count] == 1)
      {
        v43 = [v34 allObjects];
        v44 = [v43 firstObject];
        v45 = v44;
      }

      else
      {
        v46 = MEMORY[0x277CCACA8];
        v43 = [v34 allObjects];
        v44 = [v43 componentsJoinedByString:@"&&"];
        v45 = [v46 stringWithFormat:@"(%@)", v44];
      }

      [v33 addObject:v45];
    }

    v47 = MEMORY[0x277CCACA8];
    v48 = [MEMORY[0x277D657A0] sharedContext];
    v49 = [v48 embeddingVersion];
    v50 = [MEMORY[0x277D657A0] sharedContext];
    v51 = [v47 stringWithFormat:@"(_kMDItemNeedsEmbeddings!=* && ((kMDItemEmbeddingVersion!=*&&_kMDItemMediaEmbeddingVersion!=*) || ((kMDItemEmbeddingVersion=*&&kMDItemEmbeddingVersion!=%ld) || (_kMDItemMediaEmbeddingVersion=*&&_kMDItemMediaEmbeddingVersion!=%ld))))", v49, objc_msgSend(v50, "embeddingModelVersion")];

    [v33 addObject:v51];
    v32 = v168;
    if ([v33 count] == 1)
    {
      v52 = [v33 firstObject];
      v53 = v52;
    }

    else
    {
      v54 = MEMORY[0x277CCACA8];
      v52 = [v33 componentsJoinedByString:@"&&"];
      v53 = [v54 stringWithFormat:@"(%@)", v52];
    }

    [v168 addObject:v53];
    a4 = v170;
    if ((v170 & 0x20) == 0)
    {
LABEL_31:
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_32;
      }

LABEL_89:
      v165 = objc_opt_new();
      v90 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      v91 = [MEMORY[0x277D657A0] sharedContext];
      v92 = [v91 suggestedEventsIncludeBundles];

      v93 = [v92 countByEnumeratingWithState:&v184 objects:v211 count:16];
      if (v93)
      {
        v94 = v93;
        v95 = *v185;
        v96 = 1;
        do
        {
          for (m = 0; m != v94; ++m)
          {
            if (*v185 != v95)
            {
              objc_enumerationMutation(v92);
            }

            v98 = *(*(&v184 + 1) + 8 * m);
            if ((![0 count] || objc_msgSend(0, "containsObject:", v98)) && (!objc_msgSend(v8, "count") || (objc_msgSend(v8, "containsObject:", v98) & 1) == 0))
            {
              v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID==%@", v98];
              [v90 addObject:v99];

              v96 = 0;
            }
          }

          v94 = [v92 countByEnumeratingWithState:&v184 objects:v211 count:16];
        }

        while (v94);

        v32 = v168;
        v10 = v169;
        if (v96)
        {
LABEL_124:

          if ((v170 & 0x100) == 0)
          {
            goto LABEL_162;
          }

LABEL_125:
          v171 = objc_opt_new();
          v124 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v179 = 0u;
          v125 = [MEMORY[0x277D657A0] sharedContext];
          v126 = [v125 docUnderstandingIncludeBundles];

          v127 = [v126 countByEnumeratingWithState:&v176 objects:v209 count:16];
          if (v127)
          {
            v128 = v127;
            v129 = *v177;
            v130 = 1;
            do
            {
              for (n = 0; n != v128; ++n)
              {
                if (*v177 != v129)
                {
                  objc_enumerationMutation(v126);
                }

                v132 = *(*(&v176 + 1) + 8 * n);
                if ((![0 count] || objc_msgSend(0, "containsObject:", v132)) && (!objc_msgSend(v8, "count") || (objc_msgSend(v8, "containsObject:", v132) & 1) == 0))
                {
                  v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID==%@", v132];
                  [v124 addObject:v133];

                  v130 = 0;
                }
              }

              v128 = [v126 countByEnumeratingWithState:&v176 objects:v209 count:16];
            }

            while (v128);

            v32 = v168;
            v134 = v171;
            if (v130)
            {
              goto LABEL_161;
            }

            if ([v124 count])
            {
              if ([v124 count] == 1)
              {
                v135 = [v124 allObjects];
                v136 = [v135 firstObject];
                v137 = v136;
              }

              else
              {
                v138 = MEMORY[0x277CCACA8];
                v135 = [v124 allObjects];
                v136 = [v135 componentsJoinedByString:@"||"];
                v137 = [v138 stringWithFormat:@"(%@)", v136];
              }

              [v171 addObject:v137];
            }

            v126 = objc_opt_new();
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            v175 = 0u;
            v139 = [MEMORY[0x277D657A0] sharedContext];
            v140 = [v139 docUnderstandingExtractionAttributes];

            v141 = [v140 countByEnumeratingWithState:&v172 objects:v208 count:16];
            if (v141)
            {
              v142 = v141;
              v143 = *v173;
              do
              {
                for (ii = 0; ii != v142; ++ii)
                {
                  if (*v173 != v143)
                  {
                    objc_enumerationMutation(v140);
                  }

                  v145 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", *(*(&v172 + 1) + 8 * ii)];
                  [v126 addObject:v145];
                }

                v142 = [v140 countByEnumeratingWithState:&v172 objects:v208 count:16];
              }

              while (v142);
            }

            v32 = v168;
            if ([v126 count])
            {
              if ([v126 count] == 1)
              {
                v146 = [v126 allObjects];
                v147 = [v146 firstObject];
                v148 = v147;
              }

              else
              {
                v149 = MEMORY[0x277CCACA8];
                v146 = [v126 allObjects];
                v147 = [v146 componentsJoinedByString:@"||"];
                v148 = [v149 stringWithFormat:@"(%@)", v147];
              }

              [v171 addObject:v148];
            }

            v150 = MEMORY[0x277CCACA8];
            v151 = [MEMORY[0x277D657A0] sharedContext];
            v152 = [v150 stringWithFormat:@"(_kMDItemNeedsDocumentUnderstanding!=* && (kMDItemDocumentUnderstandingVersion!=* || (kMDItemDocumentUnderstandingVersion=*&&kMDItemDocumentUnderstandingVersion!=%ld)))", objc_msgSend(v151, "documentUnderstandingVersion")];

            v134 = v171;
            [v171 addObject:v152];
            if ([v171 count] == 1)
            {
              v153 = [v171 firstObject];
              v154 = v153;
            }

            else
            {
              v155 = MEMORY[0x277CCACA8];
              v153 = [v171 componentsJoinedByString:@"&&"];
              v154 = [v155 stringWithFormat:@"(%@)", v153];
            }

            [v168 addObject:v154];
          }

          else
          {
            v134 = v171;
          }

LABEL_161:
          v10 = v169;
          goto LABEL_162;
        }

        v100 = [v90 count];
        v101 = 0x277CBE000;
        if (v100)
        {
          if ([v90 count] == 1)
          {
            v102 = [v90 allObjects];
            v103 = [v102 firstObject];
            v104 = v103;
          }

          else
          {
            v105 = MEMORY[0x277CCACA8];
            v102 = [v90 allObjects];
            v103 = [v102 componentsJoinedByString:@"||"];
            v104 = [v105 stringWithFormat:@"(%@)", v103];
          }

          [v165 addObject:v104];
          v101 = 0x277CBE000uLL;
        }

        v106 = *(v101 + 2904);
        v92 = objc_opt_new();
        v180 = 0u;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v107 = [MEMORY[0x277D657A0] sharedContext];
        v108 = [v107 suggestedEventsExtractionAttributes];

        v109 = [v108 countByEnumeratingWithState:&v180 objects:v210 count:16];
        if (v109)
        {
          v110 = v109;
          v111 = *v181;
          do
          {
            for (jj = 0; jj != v110; ++jj)
            {
              if (*v181 != v111)
              {
                objc_enumerationMutation(v108);
              }

              v113 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", *(*(&v180 + 1) + 8 * jj)];
              [v92 addObject:v113];
            }

            v110 = [v108 countByEnumeratingWithState:&v180 objects:v210 count:16];
          }

          while (v110);
        }

        v32 = v168;
        if ([v92 count])
        {
          if ([v92 count] == 1)
          {
            v114 = [v92 allObjects];
            v115 = [v114 firstObject];
            v116 = v115;
          }

          else
          {
            v117 = MEMORY[0x277CCACA8];
            v114 = [v92 allObjects];
            v115 = [v114 componentsJoinedByString:@"||"];
            v116 = [v117 stringWithFormat:@"(%@)", v115];
          }

          [v165 addObject:v116];
        }

        v118 = MEMORY[0x277CCACA8];
        v119 = [MEMORY[0x277D657A0] sharedContext];
        v120 = [v118 stringWithFormat:@"(_kMDItemNeedsSuggestedEvents!=* && (kMDItemSuggestedEventsVersion!=* || (kMDItemSuggestedEventsVersion=*&&kMDItemSuggestedEventsVersion!=%ld)))", objc_msgSend(v119, "suggestedEventsVersion")];

        [v165 addObject:v120];
        if ([v165 count] == 1)
        {
          v121 = [v165 firstObject];
          v122 = v121;
        }

        else
        {
          v123 = MEMORY[0x277CCACA8];
          v121 = [v165 componentsJoinedByString:@"&&"];
          v122 = [v123 stringWithFormat:@"(%@)", v121];
        }

        v10 = v169;

        [v168 addObject:v122];
      }

      goto LABEL_124;
    }
  }

  else if ((a4 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v55 = objc_opt_new();
  v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v57 = [MEMORY[0x277D657A0] sharedContext];
  v58 = [v57 keyphraseExcludeBundles];

  v59 = [v58 countByEnumeratingWithState:&v192 objects:v213 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v193;
    do
    {
      for (kk = 0; kk != v60; ++kk)
      {
        if (*v193 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v192 + 1) + 8 * kk);
        if (([v8 containsObject:v63] & 1) == 0 && (!objc_msgSend(0, "count") || objc_msgSend(0, "containsObject:", v63)))
        {
          v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemBundleID!=%@", v63];
          [v56 addObject:v64];
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v192 objects:v213 count:16];
    }

    while (v60);
  }

  if ([v56 count])
  {
    if ([v56 count] == 1)
    {
      v65 = [v56 allObjects];
      v66 = [v65 firstObject];
      v67 = v66;
    }

    else
    {
      v68 = MEMORY[0x277CCACA8];
      v65 = [v56 allObjects];
      v66 = [v65 componentsJoinedByString:@"&&"];
      v67 = [v68 stringWithFormat:@"(%@)", v66];
    }

    [v55 addObject:v67];
  }

  v164 = v55;
  v69 = objc_opt_new();
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v70 = [MEMORY[0x277D657A0] sharedContext];
  v71 = [v70 keyphraseExtractionAttributes];

  v72 = [v71 countByEnumeratingWithState:&v188 objects:v212 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v189;
    do
    {
      for (mm = 0; mm != v73; ++mm)
      {
        if (*v189 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=*", *(*(&v188 + 1) + 8 * mm)];
        [v69 addObject:v76];
      }

      v73 = [v71 countByEnumeratingWithState:&v188 objects:v212 count:16];
    }

    while (v73);
  }

  v32 = v168;
  if ([v69 count])
  {
    if ([v69 count] == 1)
    {
      v77 = [v69 allObjects];
      v78 = [v77 firstObject];
      v79 = v78;
    }

    else
    {
      v80 = MEMORY[0x277CCACA8];
      v77 = [v69 allObjects];
      v78 = [v77 componentsJoinedByString:@"||"];
      v79 = [v80 stringWithFormat:@"(%@)", v78];
    }

    [v164 addObject:v79];
  }

  if ([v167 count])
  {
    v81 = MEMORY[0x277CCACA8];
    v82 = [v167 componentsJoinedByString:{@", "}];
    v83 = [v81 stringWithFormat:@"(kMDItemTextContentLanguage!=* || (kMDItemTextContentLanguage=*&&FieldMatch(kMDItemTextContentLanguage, %@)))", v82];
  }

  else
  {
    v83 = @"kMDItemTextContentLanguage!=*";
  }

  v84 = MEMORY[0x277CCACA8];
  v85 = [MEMORY[0x277D657A0] sharedContext];
  v86 = [v84 stringWithFormat:@"(_kMDItemNeedsKeyphrases!=* && (kMDItemKeyphraseVersion!=* || (kMDItemKeyphraseVersion=*&&kMDItemKeyphraseVersion!=%ld)) && %@)", objc_msgSend(v85, "keyphraseVersion"), v83];

  [v164 addObject:v86];
  if ([v164 count] == 1)
  {
    v87 = [v164 firstObject];
    v88 = v87;
  }

  else
  {
    v89 = MEMORY[0x277CCACA8];
    v87 = [v164 componentsJoinedByString:@"&&"];
    v88 = [v89 stringWithFormat:@"(%@)", v87];
  }

  [v168 addObject:v88];
  v10 = v169;
  a4 = v170;
  if ((v170 & 0x80) != 0)
  {
    goto LABEL_89;
  }

LABEL_32:
  if ((a4 & 0x100) != 0)
  {
    goto LABEL_125;
  }

LABEL_162:
  if ([v32 count] == 1)
  {
    [v10 addObjectsFromArray:v32];
  }

  else if ([v32 count])
  {
    v156 = MEMORY[0x277CCACA8];
    v157 = [v32 componentsJoinedByString:@"||"];
    v158 = [v156 stringWithFormat:@"(%@)", v157];
    [v10 addObject:v158];
  }

  v159 = MEMORY[0x277CCACA8];
  v160 = [v10 componentsJoinedByString:@"&&"];
  v161 = [v159 stringWithFormat:@"(%@)", v160];

  v162 = *MEMORY[0x277D85DE8];

  return v161;
}

void sub_231BBF4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 80));
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 144), 8);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void enumerateCSItemsForQueryContext(void *a1, void *a2, void *a3)
{
  v12 = a1;
  v11 = a2;
  v5 = a3;
  v6 = dispatch_group_create();
  v22[0] = 0;
  context = objc_autoreleasePoolPush();
  do
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__19;
    v20 = __Block_byref_object_dispose__19;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v11 queryContext:v12];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __enumerateCSItemsForQueryContext_block_invoke;
    v15[3] = &unk_27893ED88;
    v15[4] = &v16;
    [v7 setFoundItemsHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __enumerateCSItemsForQueryContext_block_invoke_2;
    v13[3] = &unk_27893E840;
    v8 = v6;
    v14 = v8;
    [v7 setCompletionHandler:v13];
    dispatch_group_enter(v8);
    [v7 start];
    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if ([v17[5] count])
    {
      v5[2](v5, v17[5], v22);
    }

    v9 = (v22[0] & 1) == 0 && [v7 foundItemCount] == 0;

    _Block_object_dispose(&v16, 8);
  }

  while ((v22[0] & 1) == 0 && !v9);
  objc_autoreleasePoolPop(context);
}

void sub_231BC6BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getParentIdForCalendar(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"-"];
  v3 = v2;
  if (v2 && [v2 count] == 5)
  {
    v4 = [v1 componentsSeparatedByString:@"."];

    if (v4 && [v4 count] == 3)
    {
      v5 = [v4 objectAtIndexedSubscript:0];
    }

    else
    {
      v5 = v1;
    }

    v6 = v5;
    v3 = v4;
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

void OUTLINED_FUNCTION_0_11(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

void sub_231BCF3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_231BD4F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void loadLanguageModels(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v24, 0, 60);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v18;
    v4 = 0x277CBE000uLL;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v18 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(v4 + 2808) localeWithLocaleIdentifier:*(*(&v17 + 1) + 8 * i)];
        [v6 regionCode];
        RegionID = SILanguagesGetRegionID();
        LanguageID = SILanguagesGetLanguageID();
        if (LanguageID - 59 >= 0xFFFFFFC7)
        {
          v9 = LanguageID;
          v10 = v3;
          v11 = (&sLMLock_0 + 4 * LanguageID);
          os_unfair_lock_lock(v11);
          sTimestamps[v9] = CFAbsoluteTimeGetCurrent();
          if ((*(v24 + v9) & 1) == 0 && (!sLanguageModels_0[v9] || RegionID != -1 && sRegions_0[v9] != RegionID))
          {
            v12 = *MEMORY[0x277D657C0];
            v21[0] = *MEMORY[0x277D657B8];
            v21[1] = v12;
            v22[0] = MEMORY[0x277CBEC38];
            v22[1] = v6;
            v13 = *MEMORY[0x277D657B0];
            v21[2] = *MEMORY[0x277D657D0];
            v21[3] = v13;
            v22[2] = MEMORY[0x277CBEC28];
            v22[3] = MEMORY[0x277CBEC28];
            v21[4] = *MEMORY[0x277D657C8];
            v22[4] = MEMORY[0x277CBEC38];
            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
            if (sLanguageModels_0[v9])
            {
              SILanguageModelRelease();
              sLanguageModels_0[v9] = 0;
            }

            sLanguageModels_0[v9] = SILanguageModelCreateWithOptions();
            sRegions_0[v9] = RegionID;

            v4 = 0x277CBE000;
          }

          os_unfair_lock_unlock(v11);
          *(v24 + v9) = 1;
          v3 = v10;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v2);
  }

  purgeLanguageModels();

  v15 = *MEMORY[0x277D85DE8];
}

void purgeLanguageModels()
{
  v0 = 0;
  v1 = &sLMLock_0;
  do
  {
    os_unfair_lock_lock(v1);
    v2 = *&sTimestamps[v0];
    if (v2 > 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (sLanguageModels_0[v0])
      {
        if (Current - v2 > 3.0e11)
        {
          SILanguageModelRelease();
          sLanguageModels_0[v0] = 0;
          sTimestamps[v0] = 0;
          sRegions_0[v0] = -1;
        }
      }
    }

    os_unfair_lock_unlock(v1++);
    ++v0;
  }

  while (v0 != 59);
}

void sub_231BD7638(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t enumerateEntityInfo(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, double *a6, void *a7, void *a8)
{
  v15 = a7;
  v16 = a8;
  if ([a4 length])
  {
    v17 = +[SKGDataDetector sharedDetector];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    if (a6)
    {
      v18 = *a6;
      v19 = a6[3];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __enumerateEntityInfo_block_invoke;
      v28[3] = &unk_27893EF40;
      v30 = &v31;
      v29 = v15;
      v20 = [v17 enumerateLocationsInString:a4 locale:a3 latitude:v28 longitude:v18 entityBlock:v19];

      if ((v20 & 1) == 0)
      {
        v21 = 0;
        goto LABEL_12;
      }

      if (v32[3] == 1)
      {
        v21 = 1;
LABEL_12:
        _Block_object_dispose(&v31, 8);

        goto LABEL_13;
      }
    }

    if (a5)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __enumerateEntityInfo_block_invoke_2;
      v26[3] = &unk_27893EF68;
      v27 = v16;
      v21 = [v17 enumerateDetectedLocationsInString:a4 locale:a3 entityBlock:v15 rangeBlock:v26];
      v22 = &v27;
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __enumerateEntityInfo_block_invoke_3;
      v24[3] = &unk_27893EF68;
      v25 = v16;
      v21 = [v17 enumerateDetectedDataInString:a4 locale:a3 referenceDate:a1 referenceTimezone:a2 entityBlock:v15 rangeBlock:v24];
      v22 = &v25;
    }

    goto LABEL_12;
  }

  v21 = 1;
LABEL_13:

  return v21;
}

void sub_231BD7C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t enumerateAirportCodes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKGDataDetector sharedDetector];
  v5 = [v4 enumerateAirportCodesInStringUsingGeoScanner:a1 entityBlock:v3];

  return v5;
}

uint64_t __enumerateEntityInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __enumerateEntityInfo_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t __enumerateKeyphraseInfo_block_invoke_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCAE60] valueWithRange:{a2, a3}];
  [v7 addObject:v8];

  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    *a5 = 1;
  }

  return result;
}

void __enumerateKeyphraseInfo_block_invoke_2_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, _BYTE *a7)
{
  v16 = objc_autoreleasePoolPush();
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (*(a1 + 32))
  {
    v17 = *(*(a1 + 72) + 8);
    if (*(v17 + 32) != -1)
    {
      if (!a6)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    if (a6)
    {
LABEL_6:
      v18 = *(*(a1 + 72) + 8);
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      (*(*(a1 + 32) + 16))();
      *(*(*(a1 + 72) + 8) + 32) = xmmword_231C220E0;
    }
  }

LABEL_7:
  if (*(a1 + 40) && (v40[3] & 1) == 0 && a4[5])
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(a4[4] + 8 * v22);
      v24 = [MEMORY[0x277CCACA8] stringWithCharacters:a4[2] + 2 * *(a4[3] + v21) length:*(a4[3] + v21 + 8)];
      (*(*(a1 + 40) + 16))();

      ++v22;
      v21 += 16;
    }

    while (v22 < a4[5]);
  }

  if (*(a1 + 48) && (v40[3] & 1) == 0)
  {
    v25 = *(a1 + 88);
    v26 = *(a1 + 96);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __enumerateKeyphraseInfo_block_invoke_3;
    v30[3] = &unk_27893EFB8;
    v38 = *(a1 + 104);
    v36 = a4;
    v27 = *(a1 + 56);
    v28 = *(a1 + 96);
    v31 = v27;
    v37 = v28;
    v32 = *(a1 + 48);
    v34 = &v39;
    v35 = *(a1 + 80);
    v33 = *(a1 + 64);
    *(*(*(a1 + 80) + 8) + 24) = MEMORY[0x2383771F0](v25, v26, a4, v30);
  }

  v29 = *(*(a1 + 80) + 8);
  if (!*(v29 + 24) || (v40[3] & 1) != 0)
  {
    goto LABEL_19;
  }

  if ((*(*(a1 + 64) + 16))(*(a1 + 64), v13, v14, v15))
  {
    v29 = *(*(a1 + 80) + 8);
LABEL_19:
    *(v29 + 24) = 0;
    *a7 = 1;
  }

  _Block_object_dispose(&v39, 8);
  objc_autoreleasePoolPop(v16);
}

void sub_231BD81F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __enumerateKeyphraseInfo_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5, double a6)
{
  if (a4 == 3)
  {
    v11 = objc_autoreleasePoolPush();
    if (*(a1 + 88))
    {
      if (a3 < 2)
      {
        goto LABEL_15;
      }

      v12 = *(a1 + 72);
      if (a2 + a3 == v12[5])
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a3 < 2)
      {
LABEL_15:
        objc_autoreleasePoolPop(v11);
        goto LABEL_16;
      }

      v12 = *(a1 + 72);
    }

    v13 = (v12[3] + 16 * a2);
    v14 = [MEMORY[0x277CCACA8] stringWithCharacters:v12[2] + 2 * *v13 length:v13[2 * a3 - 2] - *v13 + v13[2 * a3 - 1]];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v15 = *(a1 + 32);
    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = *(a1 + 80);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __enumerateKeyphraseInfo_block_invoke_4;
    v23 = &unk_27893EF40;
    v25 = &v26;
    v24 = v15;
    v17 = &v20;
    if ([v14 length])
    {
      v18 = +[SKGDataDetector sharedDetector];
      [v18 enumerateLocationStrings:v14 locale:v16 entityBlock:v17];
    }

    if (!v27[3])
    {
LABEL_13:
      v19 = *(*(a1 + 56) + 8);
      (*(*(a1 + 40) + 16))(a6);
    }

    _Block_object_dispose(&v26, 8);

    goto LABEL_15;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_16:
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || !*(*(*(a1 + 64) + 8) + 24) || (*(*(a1 + 48) + 16))())
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a5 = 1;
  }
}

void sub_231BD8440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BD89C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getNameFormatter()
{
  if (getNameFormatter_onceToken != -1)
  {
    getNameFormatter_cold_1();
  }

  v1 = getNameFormatter_sNameFormatter;

  return v1;
}

void sub_231BD9798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void enumerateParallelContactInfo(const __CFArray *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, const __CFArray *a5, const __CFArray *a6, void *a7)
{
  v56 = a7;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
LABEL_3:
      v14 = CFArrayGetCount(a2);
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v15 = 0;
      if (a4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v14 = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = CFArrayGetCount(a3);
  if (a4)
  {
LABEL_5:
    v16 = CFArrayGetCount(a4);
    goto LABEL_10;
  }

LABEL_9:
  v16 = 0;
LABEL_10:
  v55 = a2;
  if (a5)
  {
    v17 = CFArrayGetCount(a5);
  }

  else
  {
    v17 = 0;
  }

  v54 = a1;
  if (a6)
  {
    v18 = CFArrayGetCount(a6);
  }

  else
  {
    v18 = 0;
  }

  if (v14 <= Count)
  {
    v19 = Count;
  }

  else
  {
    v19 = v14;
  }

  v20 = Count == 0;
  if (!Count)
  {
    v19 = v14;
  }

  if (v15 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v15;
  }

  if (v16 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v16;
  }

  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = v16;
  }

  if (v17 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v17;
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v17;
  }

  if (v18 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v18;
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v18;
  }

  if (Count == v28)
  {
    v20 = 1;
  }

  if (v28)
  {
    v29 = !v20;
  }

  else
  {
    v29 = 1;
  }

  if (!v29 && (!v14 || v14 == v28) && (!v15 || v15 == v28) && (!v16 || v16 == v28) && (!v17 || v17 == v28) && (!v18 || v18 == v28))
  {
    v47 = v28 - 1;
    v48 = a5;
    if (v28 >= 1)
    {
      v30 = 0;
      v46 = a6;
      v50 = a3;
      v51 = a4;
      do
      {
        v53 = 0;
        if (v54 && Count > v30)
        {
          ValueAtIndex = getValueAtIndex();
          if (ValueAtIndex)
          {
            v32 = ValueAtIndex;
            v33 = CFGetTypeID(ValueAtIndex);
            v29 = v33 == CFStringGetTypeID();
            a4 = v51;
            if (v29)
            {
              v34 = v32;
            }

            else
            {
              v34 = 0;
            }

            v53 = v34;
          }

          else
          {
            v53 = 0;
          }

          a3 = v50;
        }

        v52 = 0;
        if (v55 && v14 > v30)
        {
          v35 = getValueAtIndex();
          if (v35)
          {
            v36 = v35;
            v37 = CFGetTypeID(v35);
            v29 = v37 == CFStringGetTypeID();
            a4 = v51;
            if (v29)
            {
              v38 = v36;
            }

            else
            {
              v38 = 0;
            }

            v52 = v38;
          }

          else
          {
            v52 = 0;
          }

          a3 = v50;
        }

        v39 = 0;
        if (a3 && v15 > v30)
        {
          v40 = getValueAtIndex();
          if (v40)
          {
            v41 = v40;
            v42 = CFGetTypeID(v40);
            v29 = v42 == CFStringGetTypeID();
            a4 = v51;
            if (v29)
            {
              v39 = v41;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
          }
        }

        v49 = v39;
        if (a4)
        {
          if (v16 > v30)
          {
            v43 = getValueAtIndex();
            if (v43)
            {
              CFGetTypeID(v43);
              CFStringGetTypeID();
              a4 = v51;
            }
          }
        }

        if (v48)
        {
          if (v17 > v30)
          {
            v44 = getValueAtIndex();
            if (v44)
            {
              CFGetTypeID(v44);
              CFStringGetTypeID();
              a4 = v51;
            }
          }
        }

        if (a6 && v18 > v30)
        {
          v45 = getValueAtIndex();
          if (v45)
          {
            CFGetTypeID(v45);
            CFStringGetTypeID();
            a6 = v46;
          }

          a4 = v51;
        }

        v56[2](v56, v53, v52, v49);
        a3 = v50;
        v29 = v47 == v30++;
      }

      while (!v29);
    }
  }
}

void sub_231BD9F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BDA314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BDA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BDAEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BDB284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BDBA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void enumerateInfoInString(void *a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v49 = a2;
  v45 = v3;
  if (v3 && [v3 length])
  {
    if (enumerateInfoInString_onceToken != -1)
    {
      enumerateInfoInString_cold_1();
    }

    context = objc_autoreleasePoolPush();
    v55 = 0;
    v41 = [MEMORY[0x277D04220] scanString:v3];
    if ([v41 count])
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v41;
      v48 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
      if (v48)
      {
        v46 = *MEMORY[0x277D040C8];
        v47 = *v52;
        v43 = *MEMORY[0x277D04160];
        v42 = *MEMORY[0x277D040E0];
        v38 = &v58;
        v39 = *MEMORY[0x277CBECE8];
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v52 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v5 = *(*(&v51 + 1) + 8 * i);
            [v5 coreResult];
            if (DDResultHasType())
            {
              v6 = [v5 matchedString];
              v7 = [v6 lowercaseString];
              v49[2](v49, @"Email", v7, &v55);
            }

            else
            {
              [v5 coreResult];
              if (DDResultHasType())
              {
                v8 = objc_autoreleasePoolPush();
                v9 = [v5 matchedString];
                if ([enumerateInfoInString_sPhonePattern rangeOfFirstMatchInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_45;
                }

                v10 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v9];
                v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
                if ([v10 isAtEnd])
                {
                  v12 = 0;
                }

                else
                {
                  v30 = 0;
                  do
                  {
                    if (getCharSet_onceToken != -1)
                    {
                      enumerateInfoInString_cold_2();
                    }

                    v50 = v30;
                    v31 = getCharSet_sCharSet;
                    v32 = [v10 scanCharactersFromSet:v31 intoString:&v50];
                    v12 = v50;

                    if (v32)
                    {
                      [v11 appendString:v12];
                    }

                    if (([v10 isAtEnd] & 1) == 0)
                    {
                      [v10 setScanLocation:{objc_msgSend(v10, "scanLocation") + 1}];
                    }

                    v30 = v12;
                  }

                  while (![v10 isAtEnd]);
                }

                v13 = [MEMORY[0x277CBEAF8] currentLocale];
                v14 = [v13 countryCode];

                v61 = 0;
                v62 = &v61;
                v63 = 0x2020000000;
                v15 = getCFPhoneNumberCreateSymbolLoc_ptr;
                v64 = getCFPhoneNumberCreateSymbolLoc_ptr;
                if (!getCFPhoneNumberCreateSymbolLoc_ptr)
                {
                  v56 = MEMORY[0x277D85DD0];
                  v57 = 3221225472;
                  v58 = __getCFPhoneNumberCreateSymbolLoc_block_invoke;
                  v59 = &unk_27893F0D0;
                  v60 = &v61;
                  v16 = CorePhoneNumbersLibrary();
                  v17 = dlsym(v16, "CFPhoneNumberCreate");
                  *(v60[1] + 24) = v17;
                  getCFPhoneNumberCreateSymbolLoc_ptr = *(v60[1] + 24);
                  v15 = v62[3];
                }

                _Block_object_dispose(&v61, 8);
                if (!v15)
                {
LABEL_57:
                  enumerateInfoInString_cold_3();
                  __break(1u);
                }

                v18 = v15(v39, v9, v14);
                if (v18)
                {
                  v61 = 0;
                  v62 = &v61;
                  v63 = 0x2020000000;
                  v19 = getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_ptr;
                  v64 = getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_ptr;
                  if (!getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_ptr)
                  {
                    v56 = MEMORY[0x277D85DD0];
                    v57 = 3221225472;
                    v58 = __getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_block_invoke;
                    v59 = &unk_27893F0D0;
                    v60 = &v61;
                    v20 = CorePhoneNumbersLibrary();
                    v21 = dlsym(v20, "CFPhoneNumberCopyNumberForInternationalAssist");
                    *(v60[1] + 24) = v21;
                    getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_ptr = *(v60[1] + 24);
                    v19 = v62[3];
                  }

                  _Block_object_dispose(&v61, 8);
                  if (!v19)
                  {
                    goto LABEL_57;
                  }

                  v22 = v19(v18, 0);
                  v23 = v22;
                  if (v22)
                  {
                    v24 = [v22 copy];
                    CFRelease(v23);
                  }

                  else
                  {
                    v24 = 0;
                  }

                  CFRelease(v18);
                }

                else
                {
                  v24 = 0;
                }

                if (v24)
                {
                  v49[2](v49, @"Phone", v24, &v55);
                }

                else
                {
LABEL_45:
                  v49[2](v49, @"Phone", v9, &v55);
                }

                objc_autoreleasePoolPop(v8);
              }

              else
              {
                [v5 coreResult];
                if (DDResultHasType())
                {
                  v25 = [v5 matchedString];
                  v49[2](v49, @"Address", v25, &v55);
                }

                else
                {
                  v26 = objc_autoreleasePoolPush();
                  v27 = getNameComponentsFromString(v45);
                  v28 = v27;
                  if (v27)
                  {
                    v29 = getDisplayNameForNameComponents(v27, v45);
                    v49[2](v49, @"DisplayName", v29, &v55);
                    v49[2](v49, @"NameComponents", v28, &v55);
                    v49[2](v49, @"Name", v45, &v55);
                  }

                  objc_autoreleasePoolPop(v26);
                }
              }
            }

            if (v55)
            {
              goto LABEL_50;
            }
          }

          v48 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
        }

        while (v48);
      }

LABEL_50:
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = getNameComponentsFromString(v3);
      v35 = v34;
      if (v34)
      {
        v36 = getDisplayNameForNameComponents(v34, v3);
        v49[2](v49, @"DisplayName", v36, &v55);
        v49[2](v49, @"NameComponents", v35, &v55);
        v49[2](v49, @"Name", v3, &v55);
      }

      objc_autoreleasePoolPop(v33);
    }

    objc_autoreleasePoolPop(context);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_231BDD23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __getNameFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAC08]);
  v1 = getNameFormatter_sNameFormatter;
  getNameFormatter_sNameFormatter = v0;
}

void __enumerateInfoInString_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^\\+[0-9]+?$" options:0 error:0];
  v1 = enumerateInfoInString_sPhonePattern;
  enumerateInfoInString_sPhonePattern = v0;
}

id getNameComponentsFromString(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = getNameFormatter();
  v4 = [v3 personNameComponentsFromString:v1];
  v5 = [v4 familyName];
  if (![v5 length])
  {
    goto LABEL_15;
  }

  v6 = [v4 middleName];
  if (![v6 length])
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v7 = [v4 givenName];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v4 givenName];
    v10 = [v1 rangeOfString:v9];

    v11 = [v4 familyName];
    v12 = [v1 rangeOfString:v11];
    v14 = v13;

    v15 = [v4 middleName];
    v16 = [v1 rangeOfString:v15];
    v18 = v17;

    if (v16 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16 >= v12)
      {
        if (v16 > v12)
        {
          v14 = v18 - v12 + v16;
        }
      }

      else
      {
        v14 = v12 + v14 - v16;
        v12 = v16;
      }

      if (v10 < v12 || v10 > v14 + v12)
      {
        v19 = objc_alloc_init(MEMORY[0x277CCAC00]);
        v20 = [v4 givenName];
        [v19 setGivenName:v20];

        v21 = [v1 substringWithRange:{v12, v14}];
        [v19 setFamilyName:v21];

        v22 = [v4 nickname];
        [v19 setNickname:v22];

        v23 = [v4 namePrefix];
        [v19 setNamePrefix:v23];

        v24 = [v4 nameSuffix];
        [v19 setNameSuffix:v24];

        v6 = [v4 phoneticRepresentation];
        [v19 setPhoneticRepresentation:v6];
        v5 = v4;
        v4 = v19;
        goto LABEL_14;
      }
    }
  }

LABEL_16:

  objc_autoreleasePoolPop(v2);

  return v4;
}

id getDisplayNameForNameComponents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:2 options:0];
  if (!v5 || ([v4 hasPrefix:v5] & 1) == 0 && (objc_msgSend(v4, "hasSuffix:", v5) & 1) == 0)
  {
    v6 = [v3 familyName];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 givenName];

      if (v8)
      {
        v9 = [v3 givenName];
        v10 = [v5 rangeOfString:v9];

        v11 = [v3 givenName];
        v12 = [v4 rangeOfString:v11];

        v13 = [v3 familyName];
        v14 = [v5 rangeOfString:v13];

        v15 = [v3 familyName];
        v16 = [v4 rangeOfString:v15];

        if ((v10 >= v14 || v12 >= v16) && (v14 >= v10 || v16 >= v12))
        {
          v17 = v4;

          v5 = v17;
        }
      }
    }
  }

  return v5;
}

void __getCharSet_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v1 = [v0 mutableCopy];

  [v1 addCharactersInString:@"+"];
  v2 = getCharSet_sCharSet;
  getCharSet_sCharSet = v1;
}

void *__getCFPhoneNumberCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "CFPhoneNumberCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCFPhoneNumberCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CorePhoneNumbersLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CorePhoneNumbersLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CorePhoneNumbersLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27893F0F0;
    v6 = 0;
    CorePhoneNumbersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CorePhoneNumbersLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CorePhoneNumbersLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CorePhoneNumbersLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CorePhoneNumbersLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CorePhoneNumbersLibrary();
  result = dlsym(v2, "CFPhoneNumberCopyNumberForInternationalAssist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCFPhoneNumberCopyNumberForInternationalAssistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id attributeSetForFlags(int a1, int a2, int a3, int a4, int a5)
{
  v42[1] = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0 && (a2 & 1) == 0 && (a3 & 1) == 0 && (a4 & 1) == 0 && !a5)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v10 = objc_alloc_init(MEMORY[0x277CC34B8]);
  if (a1)
  {
    v41 = @"kMDItemEmbeddingVersion";
    v17 = MEMORY[0x277CCABB0];
    v18 = [MEMORY[0x277D657A0] sharedContext];
    v19 = [v17 numberWithInteger:{objc_msgSend(v18, "embeddingVersion")}];
    v42[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v10 addAttributesFromDictionary:v20];

    if (!a2)
    {
LABEL_9:
      if (!a3)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v39 = @"kMDItemKeyphraseVersion";
  v21 = MEMORY[0x277CCABB0];
  v22 = [MEMORY[0x277D657A0] sharedContext];
  v23 = [v21 numberWithInteger:{objc_msgSend(v22, "keyphraseVersion")}];
  v40 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v10 addAttributesFromDictionary:v24];

  if (!a3)
  {
LABEL_10:
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v37 = @"_kMDItemKnowledgeIndexVersion";
  v25 = MEMORY[0x277CCABB0];
  v26 = [MEMORY[0x277D657A0] sharedContext];
  v27 = [v25 numberWithInteger:{objc_msgSend(v26, "knowledgeVersion")}];
  v38 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [v10 addAttributesFromDictionary:v28];

  if (!a4)
  {
LABEL_11:
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  v35 = @"kMDItemSuggestedEventsVersion";
  v29 = MEMORY[0x277CCABB0];
  v30 = [MEMORY[0x277D657A0] sharedContext];
  v31 = [v29 numberWithInteger:{objc_msgSend(v30, "suggestedEventsVersion")}];
  v36 = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  [v10 addAttributesFromDictionary:v32];

  if (a5)
  {
LABEL_12:
    v33 = @"kMDItemDocumentUnderstandingVersion";
    v11 = MEMORY[0x277CCABB0];
    v12 = [MEMORY[0x277D657A0] sharedContext];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "documentUnderstandingVersion")}];
    v34 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v10 addAttributesFromDictionary:v14];
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

id attributeSetForProcessedItem(void *a1)
{
  v330 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  v265 = v2;
  if ([v1 didProcessPeople])
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [MEMORY[0x277D657A0] sharedContext];
    v5 = [v3 numberWithInteger:{objc_msgSend(v4, "knowledgeVersion")}];
    [v265 setObject:v5 forKey:@"_kMDItemKnowledgeIndexVersion"];

    v2 = v265;
  }

  v6 = [v1 textContentLanguage];

  if (v6)
  {
    v7 = [v1 textContentLanguage];
    [v2 setObject:v7 forKey:@"kMDItemTextContentLanguage"];
  }

  v272 = v1;
  if ([v1 didProcessKeyphrases])
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [MEMORY[0x277D657A0] sharedContext];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "keyphraseVersion")}];
    [v265 setObject:v10 forKey:@"kMDItemKeyphraseVersion"];

    v11 = [v1 keyphrases];
    if ([v11 count])
    {
      v12 = [MEMORY[0x277D657A0] sharedContext];
      v268 = [v12 maxKeyphraseCount];

      v270 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v313 = 0u;
      v314 = 0u;
      v315 = 0u;
      v316 = 0u;
      v261 = v11;
      obj = v11;
      v15 = [obj countByEnumeratingWithState:&v313 objects:v329 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v314;
LABEL_9:
        v19 = 0;
        while (1)
        {
          if (*v314 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v313 + 1) + 8 * v19);
          if (![v272 isTranscribedText] || objc_msgSend(v20, "count") > 1 || (objc_msgSend(v20, "score"), v21 >= 0.0))
          {
            v22 = [v20 keyphrase];
            v23 = [v22 lowercaseString];

            [v270 addObject:v23];
            v24 = MEMORY[0x277CCABB0];
            [v20 score];
            v25 = [v24 numberWithDouble:?];
            [v13 addObject:v25];

            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
            [v14 addObject:v26];

            if ([v20 count] == 1)
            {
              ++v17;
            }

            if (v17 >= v268)
            {
              break;
            }
          }

          if (v16 == ++v19)
          {
            v16 = [obj countByEnumeratingWithState:&v313 objects:v329 count:16];
            if (v16)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if ([v270 count])
      {
        [v265 setObject:v270 forKey:@"kMDItemKeyphraseLabels"];
        [v265 setObject:v13 forKey:@"kMDItemKeyphraseConfidences"];
        [v265 setObject:v14 forKey:@"kMDItemKeyphraseCounts"];
      }

      v1 = v272;
      v11 = v261;
    }
  }

  if ([v1 didProcessBreadcrumbs])
  {
    v27 = MEMORY[0x277CCABB0];
    v28 = [MEMORY[0x277D657A0] sharedContext];
    v29 = [v27 numberWithInteger:{objc_msgSend(v28, "breadcrumbsVersion")}];
    [v265 setObject:v29 forKey:@"kMDItemBreadcrumbsVersion"];

    v311 = 0u;
    v312 = 0u;
    v309 = 0u;
    v310 = 0u;
    v30 = [v1 dates];
    v31 = [v30 countByEnumeratingWithState:&v309 objects:v328 count:16];
    if (v31)
    {
      v32 = v31;
      obja = 0;
      v33 = *v310;
LABEL_27:
      v34 = 0;
      while (1)
      {
        if (*v310 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v309 + 1) + 8 * v34);
        v36 = obja;
        if (!obja)
        {
          v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v37 = objc_alloc(MEMORY[0x277CC33C0]);
        v38 = [v35 date];
        [v35 score];
        v39 = [v37 initWithDate:v38 confidence:?];

        [v36 addObject:v39];
        obja = v36;
        v40 = [v36 count];
        v41 = [MEMORY[0x277D657A0] sharedContext];
        v42 = [v41 maxEntityCount];

        if (v40 >= v42)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v309 objects:v328 count:16];
          if (v32)
          {
            goto LABEL_27;
          }

          break;
        }
      }
    }

    else
    {
      obja = 0;
    }

    if ([obja count])
    {
      v256 = objc_alloc_init(MEMORY[0x277CC34B8]);
      [v256 setExtractedDates:obja];
    }

    else
    {
      v256 = 0;
    }

    v307 = 0u;
    v308 = 0u;
    v305 = 0u;
    v306 = 0u;
    v44 = [v1 emailAddresses];
    v45 = [v44 countByEnumeratingWithState:&v305 objects:v327 count:16];
    if (v45)
    {
      v46 = v45;
      v269 = 0;
      v47 = *v306;
LABEL_43:
      v48 = 0;
      while (1)
      {
        if (*v306 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v305 + 1) + 8 * v48);
        v50 = v269;
        if (!v269)
        {
          v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v51 = objc_alloc(MEMORY[0x277CC33E8]);
        v52 = [v49 email];
        v53 = [v49 components];
        [v49 score];
        v54 = [v51 initWithEmailAddress:v52 synonyms:v53 confidence:?];

        [v50 addObject:v54];
        v269 = v50;
        v55 = [v50 count];
        v56 = [MEMORY[0x277D657A0] sharedContext];
        v57 = [v56 maxEntityCount];

        if (v55 >= v57)
        {
          break;
        }

        if (v46 == ++v48)
        {
          v46 = [v44 countByEnumeratingWithState:&v305 objects:v327 count:16];
          if (v46)
          {
            goto LABEL_43;
          }

          break;
        }
      }
    }

    else
    {
      v269 = 0;
    }

    if ([v269 count])
    {
      v58 = v256;
      if (!v256)
      {
        v58 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      v256 = v58;
      [v58 setExtractedEmails:v269];
    }

    v303 = 0u;
    v304 = 0u;
    v301 = 0u;
    v302 = 0u;
    v59 = [v1 phoneNumbers];
    v60 = [v59 countByEnumeratingWithState:&v301 objects:v326 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = 0;
      v63 = *v302;
LABEL_59:
      v64 = 0;
      while (1)
      {
        if (*v302 != v63)
        {
          objc_enumerationMutation(v59);
        }

        v65 = *(*(&v301 + 1) + 8 * v64);
        if (!v62)
        {
          v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v66 = objc_alloc(MEMORY[0x277CC3460]);
        v67 = [v65 phoneNumberValue];
        v68 = [v65 synonyms];
        v69 = [v65 countryCodeValue];
        [v65 score];
        v70 = [v66 initWithPhoneNumber:v67 synonyms:v68 countryCode:v69 confidence:?];

        [v62 addObject:v70];
        v71 = [v62 count];
        v72 = [MEMORY[0x277D657A0] sharedContext];
        v73 = [v72 maxEntityCount];

        if (v71 >= v73)
        {
          break;
        }

        if (v61 == ++v64)
        {
          v61 = [v59 countByEnumeratingWithState:&v301 objects:v326 count:16];
          if (v61)
          {
            goto LABEL_59;
          }

          break;
        }
      }
    }

    else
    {
      v62 = 0;
    }

    if ([v62 count])
    {
      v74 = v272;
      v75 = v256;
      if (!v256)
      {
        v75 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      [v75 setExtractedPhoneNumbers:v62];
    }

    else
    {
      v74 = v272;
      v75 = v256;
    }

    v254 = v62;
    v257 = v75;
    v299 = 0u;
    v300 = 0u;
    v297 = 0u;
    v298 = 0u;
    v259 = [v74 locations];
    v76 = [v259 countByEnumeratingWithState:&v297 objects:v325 count:16];
    if (v76)
    {
      v77 = v76;
      v271 = 0;
      v262 = *v298;
LABEL_76:
      v78 = 0;
      while (1)
      {
        if (*v298 != v262)
        {
          objc_enumerationMutation(v259);
        }

        v79 = *(*(&v297 + 1) + 8 * v78);
        v80 = [v271 count];
        v81 = [MEMORY[0x277D657A0] sharedContext];
        v82 = [v81 maxEntityCount];

        if (v80 >= v82)
        {
          break;
        }

        v83 = [v79 address];
        v84 = v83;
        if (v83)
        {
          v85 = [v83 city];

          if (v85)
          {
            v86 = 1;
          }

          else
          {
            v87 = [v84 area];

            if (v87)
            {
              v86 = 2;
            }

            else
            {
              v88 = [v84 country];

              if (v88)
              {
                v86 = 3;
              }

              else
              {
                v86 = 0;
              }
            }
          }

          v89 = objc_alloc(MEMORY[0x277CC3398]);
          v90 = [v84 address];
          v91 = [v84 synonyms];
          v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v86];
          v93 = MEMORY[0x277CCABB0];
          [v79 lat];
          v94 = [v93 numberWithDouble:?];
          v95 = MEMORY[0x277CCABB0];
          [v79 lng];
          v96 = [v95 numberWithDouble:?];
          [v79 score];
          v97 = [v89 initWithAddress:v90 synonyms:v91 type:v92 lat:v94 lng:v96 confidence:?];

          v98 = v271;
          if (!v271)
          {
            v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v271 = v98;
          [v98 addObject:v97];

          v74 = v272;
        }

        if (v77 == ++v78)
        {
          v77 = [v259 countByEnumeratingWithState:&v297 objects:v325 count:16];
          if (v77)
          {
            goto LABEL_76;
          }

          break;
        }
      }
    }

    else
    {
      v271 = 0;
    }

    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v99 = [v74 addresses];
    v100 = [v99 countByEnumeratingWithState:&v293 objects:v324 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v294;
LABEL_97:
      v103 = 0;
      while (1)
      {
        if (*v294 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = *(*(&v293 + 1) + 8 * v103);
        v105 = [v271 count];
        v106 = [MEMORY[0x277D657A0] sharedContext];
        v107 = [v106 maxEntityCount];

        if (v105 >= v107)
        {
          break;
        }

        v108 = objc_alloc(MEMORY[0x277CC3398]);
        v109 = [v104 address];
        v110 = [v104 synonyms];
        [v104 score];
        v111 = [v108 initWithAddress:v109 synonyms:v110 type:&unk_2846E7E90 lat:&unk_2846E7E90 lng:&unk_2846E7E90 confidence:?];

        v112 = v271;
        if (!v271)
        {
          v112 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v271 = v112;
        [v112 addObject:v111];

        if (v101 == ++v103)
        {
          v101 = [v99 countByEnumeratingWithState:&v293 objects:v324 count:16];
          if (v101)
          {
            goto LABEL_97;
          }

          break;
        }
      }
    }

    if ([v271 count])
    {
      v113 = v257;
      v114 = v272;
      if (!v257)
      {
        v113 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      v257 = v113;
      [v113 setExtractedAddresses:v271];
    }

    else
    {
      v114 = v272;
    }

    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v115 = [v114 namedLocations];
    v116 = [v115 countByEnumeratingWithState:&v289 objects:v323 count:16];
    if (v116)
    {
      v117 = v116;
      v118 = 0;
      v119 = *v290;
LABEL_112:
      v120 = 0;
      while (1)
      {
        if (*v290 != v119)
        {
          objc_enumerationMutation(v115);
        }

        v121 = *(*(&v289 + 1) + 8 * v120);
        if (!v118)
        {
          v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v122 = [v121 location];
        [v118 addObject:v122];

        v123 = [v118 count];
        v124 = [MEMORY[0x277D657A0] sharedContext];
        v125 = [v124 maxEntityCount];

        if (v123 >= v125)
        {
          break;
        }

        if (v117 == ++v120)
        {
          v117 = [v115 countByEnumeratingWithState:&v289 objects:v323 count:16];
          if (v117)
          {
            goto LABEL_112;
          }

          break;
        }
      }
    }

    else
    {
      v118 = 0;
    }

    if ([v118 count])
    {
      [v265 setObject:v118 forKey:@"kMDItemExtractedPointsOfInterest"];
    }

    v260 = v118;
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    v126 = [v114 flights];
    v127 = [v126 countByEnumeratingWithState:&v285 objects:v322 count:16];
    if (v127)
    {
      v128 = v127;
      v129 = 0;
      v130 = *v286;
LABEL_126:
      v131 = 0;
      while (1)
      {
        if (*v286 != v130)
        {
          objc_enumerationMutation(v126);
        }

        v132 = *(*(&v285 + 1) + 8 * v131);
        if (!v129)
        {
          v129 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v133 = objc_alloc(MEMORY[0x277CC3408]);
        v134 = [v132 flight];
        v135 = [v132 components];
        [v132 score];
        v136 = [v133 initWithFlight:v134 synonyms:v135 confidence:?];

        [v129 addObject:v136];
        v137 = [v129 count];
        v138 = [MEMORY[0x277D657A0] sharedContext];
        v139 = [v138 maxEntityCount];

        if (v137 >= v139)
        {
          break;
        }

        if (v128 == ++v131)
        {
          v128 = [v126 countByEnumeratingWithState:&v285 objects:v322 count:16];
          if (v128)
          {
            goto LABEL_126;
          }

          break;
        }
      }
    }

    else
    {
      v129 = 0;
    }

    if ([v129 count])
    {
      v140 = v257;
      v141 = v272;
      if (!v257)
      {
        v140 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      v257 = v140;
      [v140 setExtractedFlights:v129];
    }

    else
    {
      v141 = v272;
    }

    v142 = [v141 airportLocations];
    v143 = [v142 count];

    if (v143)
    {
      v144 = 0;
      v145 = 0;
      v146 = 0;
      v147 = 1;
      do
      {
        v148 = [v141 airportLocations];
        v149 = [v148 objectAtIndexedSubscript:v144];

        if ([v149 isDepartureAirport] && (v146 & 1) == 0 && v149)
        {
          v150 = [v149 airportLocality];

          if (v150)
          {
            v151 = [v149 airportLocality];
            [v265 setObject:v151 forKey:@"kMDItemEventFlightDepartureAirportLocality"];
          }

          v152 = [v149 airportRegion];

          if (v152)
          {
            v153 = [v149 airportRegion];
            [v265 setObject:v153 forKey:@"kMDItemEventFlightDepartureAirportRegion"];
          }

          v154 = [v149 airportCountry];

          v146 = 1;
          v155 = @"kMDItemEventFlightDepartureAirportCountry";
          if (!v154)
          {
            goto LABEL_159;
          }
        }

        else
        {
          if (v145 & 1 | (v149 == 0))
          {
            goto LABEL_159;
          }

          v156 = [v149 airportLocality];

          if (v156)
          {
            v157 = [v149 airportLocality];
            [v265 setObject:v157 forKey:@"kMDItemEventFlightArrivalAirportLocality"];
          }

          v158 = [v149 airportRegion];

          if (v158)
          {
            v159 = [v149 airportRegion];
            [v265 setObject:v159 forKey:@"kMDItemEventFlightArrivalAirportRegion"];
          }

          v160 = [v149 airportCountry];

          v145 = 1;
          v155 = @"kMDItemEventFlightArrivalAirportCountry";
          if (!v160)
          {
            goto LABEL_159;
          }
        }

        v161 = [v149 airportCountry];
        [v265 setObject:v161 forKey:v155];

LABEL_159:
        v144 = v147;
        v141 = v272;
        v162 = [v272 airportLocations];
        v163 = [v162 count];
      }

      while (v163 > v147++);
    }

    v253 = v129;
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    v165 = [v141 links];
    v166 = [v165 countByEnumeratingWithState:&v281 objects:v321 count:16];
    if (v166)
    {
      v167 = v166;
      v168 = 0;
      v169 = *v282;
LABEL_162:
      v170 = 0;
      while (1)
      {
        if (*v282 != v169)
        {
          objc_enumerationMutation(v165);
        }

        v171 = *(*(&v281 + 1) + 8 * v170);
        if (!v168)
        {
          v168 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v172 = objc_alloc(MEMORY[0x277CC3438]);
        v173 = [v171 link];
        v174 = [v171 domain];
        v320 = v174;
        v175 = [MEMORY[0x277CBEA60] arrayWithObjects:&v320 count:1];
        [v171 score];
        v176 = [v172 initWithLink:v173 synonyms:v175 confidence:?];

        [v168 addObject:v176];
        v177 = [v168 count];
        v178 = [MEMORY[0x277D657A0] sharedContext];
        v179 = [v178 maxEntityCount];

        if (v177 >= v179)
        {
          break;
        }

        if (v167 == ++v170)
        {
          v167 = [v165 countByEnumeratingWithState:&v281 objects:v321 count:16];
          if (v167)
          {
            goto LABEL_162;
          }

          break;
        }
      }
    }

    else
    {
      v168 = 0;
    }

    if ([v168 count])
    {
      v1 = v272;
      v180 = v257;
      if (!v257)
      {
        v180 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      v257 = v180;
      [v180 setExtractedLinks:v168];
    }

    else
    {
      v1 = v272;
    }

    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v263 = [v1 trackingNumbers];
    v181 = [v263 countByEnumeratingWithState:&v277 objects:v319 count:16];
    if (v181)
    {
      v182 = v181;
      v183 = 0;
      v184 = *v278;
      while (2)
      {
        for (i = 0; i != v182; ++i)
        {
          if (*v278 != v184)
          {
            objc_enumerationMutation(v263);
          }

          v186 = *(*(&v277 + 1) + 8 * i);
          if (!v183)
          {
            v183 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v187 = objc_alloc(MEMORY[0x277CC34E8]);
          v188 = [v186 trackingNumber];
          v189 = [v186 carrier];
          v318 = v189;
          v190 = [MEMORY[0x277CBEA60] arrayWithObjects:&v318 count:1];
          [v186 score];
          v191 = [v187 initWithLabel:v188 synonyms:v190 confidence:?];

          [v183 addObject:v191];
          v192 = [v183 count];
          v193 = [MEMORY[0x277D657A0] sharedContext];
          v194 = [v193 maxEntityCount];

          if (v192 >= v194)
          {
            v1 = v272;
            goto LABEL_190;
          }

          v1 = v272;
        }

        v182 = [v263 countByEnumeratingWithState:&v277 objects:v319 count:16];
        if (v182)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v183 = 0;
    }

LABEL_190:

    if ([v183 count])
    {
      v195 = v257;
      if (!v257)
      {
        v195 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      [v195 setExtractedTrackingNumbers:v183];
    }

    else
    {
      v195 = v257;
    }

    v258 = v195;
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v264 = [v1 currencies];
    v196 = [v264 countByEnumeratingWithState:&v273 objects:v317 count:16];
    if (v196)
    {
      v197 = v196;
      v198 = 0;
      v199 = *v274;
      while (2)
      {
        for (j = 0; j != v197; ++j)
        {
          if (*v274 != v199)
          {
            objc_enumerationMutation(v264);
          }

          v201 = *(*(&v273 + 1) + 8 * j);
          if (!v198)
          {
            v198 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v202 = objc_alloc(MEMORY[0x277CC33A8]);
          v203 = MEMORY[0x277CCABB0];
          [v201 value];
          v204 = [v203 numberWithDouble:?];
          v205 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v201, "code")}];
          [v201 score];
          v206 = [v202 initWithCurrencyAmount:v204 currencyCode:v205 confidence:?];

          [v198 addObject:v206];
          v207 = [v198 count];
          v208 = [MEMORY[0x277D657A0] sharedContext];
          v209 = [v208 maxEntityCount];

          if (v207 >= v209)
          {
            v1 = v272;
            goto LABEL_208;
          }

          v1 = v272;
        }

        v197 = [v264 countByEnumeratingWithState:&v273 objects:v317 count:16];
        if (v197)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v198 = 0;
    }

LABEL_208:

    if ([v198 count])
    {
      v43 = v258;
      v210 = v260;
      v211 = v254;
      if (!v258)
      {
        v43 = objc_alloc_init(MEMORY[0x277CC34B8]);
      }

      [v43 setExtractedCurrencies:v198];
    }

    else
    {
      v43 = v258;
      v210 = v260;
      v211 = v254;
    }
  }

  else
  {
    v43 = 0;
  }

  v212 = v265;
  if ([v1 errorProcessingEmbeddings])
  {
    [v265 setObject:&unk_2846E7EA8 forKey:@":INC:_kMDItemEmbeddingsError"];
  }

  if ([v1 didProcessEmbeddings])
  {
    v213 = MEMORY[0x277CCABB0];
    v214 = [MEMORY[0x277D657A0] sharedContext];
    v215 = [v213 numberWithInteger:{objc_msgSend(v214, "embeddingVersion")}];
    [v265 setObject:v215 forKey:@"kMDItemEmbeddingVersion"];

    v216 = [v1 embedding];
    if (!v216)
    {
      goto LABEL_226;
    }

    if (!v43)
    {
      v43 = objc_alloc_init(MEMORY[0x277CC34B8]);
    }

    v217 = [v216 secondaryEmbeddings];
    v218 = [v217 count];

    if (v218)
    {
      v219 = objc_alloc(MEMORY[0x277CC3520]);
      v220 = [v216 format];
      v221 = [v216 size];
      v222 = [v216 version];
      v223 = [v216 secondaryEmbeddings];
      v224 = [v219 initWithFormat:v220 dimension:v221 version:v222 vectors:v223];
      [v43 setSecondaryTextEmbedding:v224];

      v225 = MEMORY[0x277CCABB0];
      v226 = [MEMORY[0x277D657A0] sharedContext];
      v227 = [v225 numberWithInteger:{objc_msgSend(v226, "embeddingModelVersion")}];
      [v265 setObject:v227 forKey:@"_kMDItemMediaEmbeddingVersion"];
    }

    v228 = [v216 primaryEmbeddings];
    v229 = [v228 count];

    if (v229)
    {
      v230 = objc_alloc(MEMORY[0x277CC3520]);
      v231 = [v216 format];
      v232 = [v216 size];
      v233 = [v216 version];
      v234 = [v216 primaryEmbeddings];
      v235 = [v230 initWithFormat:v231 dimension:v232 version:v233 vectors:v234];
      [v43 setPrimaryTextEmbedding:v235];

      v236 = MEMORY[0x277CCABB0];
      v237 = [MEMORY[0x277D657A0] sharedContext];
      v238 = [v236 numberWithInteger:{objc_msgSend(v237, "embeddingModelVersion")}];
      [v265 setObject:v238 forKey:@"_kMDItemMediaEmbeddingVersion"];

      v239 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v216, "firstChunkLength")}];
      [v265 setObject:v239 forKey:@"_kMDItemTextChunkTokenLength"];
    }

    if ([v216 isFileSystemConsistent])
    {
      v240 = [v216 fsIndexDataContentVersion];
      v212 = v265;
      [v265 setObject:v240 forKey:*MEMORY[0x277CC2B50]];

      v241 = MEMORY[0x277D65798];
      v242 = MEMORY[0x277CCABB0];
      v243 = [MEMORY[0x277D657A0] sharedContext];
      v244 = [v242 numberWithInteger:{objc_msgSend(v243, "embeddingModelVersion")}];
      v245 = [v241 embeddingVersionDataWithVersion:v244];
      [v265 setObject:v245 forKey:*MEMORY[0x277CC2B40]];
    }

    else
    {
LABEL_226:
      v212 = v265;
    }
  }

  if ([v1 didProcessCalendarEvents])
  {
    v246 = MEMORY[0x277CBEB98];
    v247 = [v1 detectedCalendarEventTypes];
    v248 = [v246 setWithArray:v247];

    v249 = [v248 allObjects];
    [v265 setObject:v249 forKey:@"kMDItemDetectedEventTypes"];

    v212 = v265;
  }

  objc_autoreleasePoolPop(context);
  if (!v43)
  {
    if (![v212 count])
    {
      v43 = 0;
      goto LABEL_234;
    }

    v43 = objc_alloc_init(MEMORY[0x277CC34B8]);
  }

  [v43 addAttributesFromDictionary:v212];
LABEL_234:
  v250 = v43;

  v251 = *MEMORY[0x277D85DE8];
  return v43;
}

void updateAttributeSetForEvents(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    [v6 setAttribute:a3 forKey:a2];
    v5 = *MEMORY[0x277CBEEE8];
    [v6 setAttribute:*MEMORY[0x277CBEEE8] forKey:@"_kMDItemContentURLFileID"];
    [v6 setAttribute:v5 forKey:@"_kMDItemContentURLFileVersion"];
  }
}

id itemUpdateForAttributeSet(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CC34B0];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [[v5 alloc] initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v8];

  [v9 setBundleID:v6];
  [v9 setIsUpdate:1];

  return v9;
}

id filterDictionaryWithTheAllowlist(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v3 objectForKey:{v11, v16}];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_231BE4C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void saveHistoricalReport(void *a1, uint64_t a2)
{
  v3 = a1;
  if (isAppleInternalInstall())
  {
    v4 = [MEMORY[0x277D65758] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __saveHistoricalReport_block_invoke;
    v5[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
    v6 = a2;
    [v4 saveReport:v3 withType:a2 errorHandler:v5];
  }
}

id createEmbeddingGenerationRawEvent(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"completeness", @"days", @"daysToComplete", @"eligibleItems", @"itemsProcessed", @"itemsWithEmbedding", @"percentageWithEmbedding", @"itemsAwaitingRedonation", @"itemsNeedEmbeddings", @"itemsRedonationRequestCapReached", @"progress", @"totalItems", @"bundleID", 0}];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v16 = [v7 objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = [v7 objectForKeyedSubscript:v15];
          [v9 setObject:v17 forKeyedSubscript:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v12);
  }

  v18 = [v7 objectForKeyedSubscript:@"totalItems"];
  if (v18)
  {
    v19 = v18;
    v20 = [v7 objectForKeyedSubscript:@"itemsProcessed"];
    if (v20)
    {
      v21 = v20;
      v22 = [v7 objectForKeyedSubscript:@"itemsNeedEmbeddings"];

      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = [v7 objectForKeyedSubscript:@"totalItems"];
      v24 = [v23 unsignedIntegerValue];
      v25 = [v7 objectForKeyedSubscript:@"itemsProcessed"];
      v26 = [v25 unsignedIntegerValue];
      v27 = [v7 objectForKeyedSubscript:@"itemsNeedEmbeddings"];
      v28 = v24 - (v26 + [v27 unsignedIntegerValue]);

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
      [v9 setObject:v19 forKeyedSubscript:@"itemsNeedUpdate"];
    }
  }

LABEL_15:
  if (a2)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v9 setObject:v29 forKeyedSubscript:@"updateRuns"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v9 setObject:v30 forKeyedSubscript:@"cleanupCount"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v9 setObject:v31 forKeyedSubscript:@"updateTaskReindexCount"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v9 setObject:v32 forKeyedSubscript:@"newDonations"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D65768], "version")}];
  [v9 setObject:v33 forKeyedSubscript:@"modelVersion"];

  v34 = [v9 copy];
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

id createEmbeddingGenerationAnalyticsEvent(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [&unk_2846E8568 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(&unk_2846E8568);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v1 objectForKeyedSubscript:v6];

        if (v7)
        {
          v8 = [v1 objectForKeyedSubscript:v6];
          v9 = [v8 unsignedIntegerValue];

          v10 = MEMORY[0x277CCABB0];
          if (v9)
          {
            v11 = log10(v9);
            v12 = __exp10((v11 - 1));
            v13 = (v12 * round(v9 / v12));
          }

          else
          {
            v13 = 0;
          }

          v14 = [v10 numberWithUnsignedInteger:v13];
          [v1 setObject:v14 forKeyedSubscript:v6];
        }
      }

      v3 = [&unk_2846E8568 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  v15 = [v1 copy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id createPreExtractionEvent(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v41 = a2;
  v40 = a3;
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"completeness", @"days", @"daysToComplete", @"eligibleItems", @"itemsProcessed", @"itemsWithPreExtraction", @"percentageWithPreExtraction", @"progress", @"totalItems", @"bundleID", 0}];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"totalItems", @"eligibleItems", @"itemsProcessed", @"itemsWithPreExtraction", 0}];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  v10 = 0x277CCA000uLL;
  if (v9)
  {
    v11 = v9;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        v15 = [v5 objectForKeyedSubscript:v14];

        if (v15)
        {
          if ([v7 containsObject:v14])
          {
            v16 = v10;
            v17 = *(v10 + 2992);
            v18 = [v5 objectForKeyedSubscript:v14];
            v19 = [v18 unsignedIntegerValue];
            if (v19)
            {
              v20 = v19;
              v21 = log10(v19);
              v22 = __exp10((v21 - 1));
              v23 = (v22 * round(v20 / v22));
            }

            else
            {
              v23 = 0;
            }

            v24 = [v17 numberWithUnsignedInteger:v23];
            [v8 setObject:v24 forKeyedSubscript:v14];

            v10 = v16;
          }

          else
          {
            v18 = [v5 objectForKeyedSubscript:v14];
            [v8 setObject:v18 forKeyedSubscript:v14];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v11);
  }

  v25 = [v5 objectForKeyedSubscript:v40];
  v26 = *(v10 + 2992);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v28 = [v5 objectForKeyedSubscript:v40];
    [v8 setObject:v28 forKeyedSubscript:@"itemsWithPreExtraction"];
    v29 = [v5 objectForKeyedSubscript:@"totalItems"];
    v30 = *(v10 + 2992);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v5 objectForKeyedSubscript:@"totalItems"];
    }

    else
    {
      v31 = 0;
    }

    [v31 doubleValue];
    if (v32 > 0.0)
    {
      [v28 doubleValue];
      v34 = v33;
      [v31 doubleValue];
      v36 = [*(v10 + 2992) numberWithDouble:v34 / v35 * 100.0];
      [v8 setObject:v36 forKeyedSubscript:@"percentageWithPreExtraction"];
    }
  }

  [v8 setObject:v41 forKeyedSubscript:@"modelVersion"];
  v37 = [v8 copy];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

void sub_231BEB8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __saveHistoricalReport_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v4 = SKGLogAgentInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __saveHistoricalReport_block_invoke_cold_1(a1);
    }
  }
}

void completeTask(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  [v1 setTaskCompleted];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogAgentInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v1 identifier];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "Marked task as done:%@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t deferTask(void *a1, double a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v11 = 0;
  LODWORD(v4) = [v3 setTaskExpiredWithRetryAfter:&v11 error:a2];
  v5 = v11;
  if (v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v4)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v7 = SKGLogAgentInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "Deferred task %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (CurrentLoggingLevel >= 2)
    {
      v8 = SKGLogAgentInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        deferTask_cold_1();
      }
    }

    [v3 setTaskCompleted];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void createCascadeRootDirectory()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = cascadePath();
  v7 = 0;
  [v0 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
  v2 = v7;

  if (v2)
  {
    v3 = [v2 code];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v3 == 17)
    {
      if (CurrentLoggingLevel >= 5)
      {
        v5 = SKGLogAgentInit();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_INFO, "### cascade root directory already exists", v6, 2u);
        }

LABEL_9:
      }
    }

    else if (CurrentLoggingLevel >= 2)
    {
      v5 = SKGLogAgentInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        createCascadeRootDirectory_cold_1(v2, v5);
      }

      goto LABEL_9;
    }
  }
}

void sub_231BEF9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_231BF0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id packXPCDict(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  empty = xpc_dictionary_create_empty();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = v8;
        v10 = [v9 UTF8String];
        v11 = [v3 objectForKeyedSubscript:v8];
        xpc_dictionary_set_uint64(empty, v10, [v11 unsignedLongLongValue]);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return empty;
}

id packXPCDictString(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  empty = xpc_dictionary_create_empty();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = v8;
        v10 = [v9 UTF8String];
        v11 = [v3 objectForKeyedSubscript:v8];
        xpc_dictionary_set_string(empty, v10, [v11 UTF8String]);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return empty;
}

id packXPCDictRec(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v14}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          xpc_dictionary_set_int64(v2, [v8 UTF8String], objc_msgSend(v9, "longLongValue"));
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v8 UTF8String];
            v11 = packXPCDictRec(v9);
            xpc_dictionary_set_value(v2, v10, v11);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_231BF56FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231BF5F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id fileSizeAtPathForProtectionClasses(void *a1, void *a2, void *a3, uint64_t a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v36 = a1;
  v6 = a2;
  v44 = a3;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v6;
  v37 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v37)
  {
    v47 = 0;
    v48 = 0;
    v35 = *v67;
    v7 = *MEMORY[0x277CBE8E8];
    v8 = *MEMORY[0x277CBE868];
    v45 = *MEMORY[0x277CBE838];
    v32 = v61;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v67 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v36, *(*(&v66 + 1) + 8 * i)];
        v41 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39 isDirectory:1];
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = [v41 path];
        v11 = [v9 fileExistsAtPath:v10];

        if (v11)
        {
          v62 = 0;
          v63 = &v62;
          v64 = 0x2020000000;
          v65 = 1;
          v12 = [MEMORY[0x277CCAA00] defaultManager];
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v7, v8, v45, 0, v32}];
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v61[0] = __fileSizeAtPathForProtectionClasses_block_invoke;
          v61[1] = &unk_27893F820;
          v61[2] = &v62;
          v61[3] = a4;
          v38 = [v12 enumeratorAtURL:v41 includingPropertiesForKeys:v13 options:4 errorHandler:v60];

          if (*(v63 + 24) == 1)
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v46 = v38;
            v14 = [v46 countByEnumeratingWithState:&v56 objects:v73 count:16];
            if (v14)
            {
              v15 = *v57;
              v42 = *v57;
              do
              {
                v16 = 0;
                v43 = v14;
                do
                {
                  if (*v57 != v15)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v17 = *(*(&v56 + 1) + 8 * v16);
                  v55 = 0;
                  [v17 getResourceValue:&v55 forKey:v7 error:0];
                  v18 = v55;
                  v54 = 0;
                  [v17 getResourceValue:&v54 forKey:v8 error:0];
                  v19 = v54;
                  if (([v19 BOOLValue] & 1) == 0)
                  {
                    v53 = 0;
                    [v17 getResourceValue:&v53 forKey:v45 error:0];
                    v20 = v53;
                    v49 = 0u;
                    v50 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v21 = v44;
                    v22 = [v21 countByEnumeratingWithState:&v49 objects:v72 count:16];
                    if (v22)
                    {
                      v23 = v8;
                      v24 = v7;
                      v25 = *v50;
                      while (2)
                      {
                        for (j = 0; j != v22; ++j)
                        {
                          if (*v50 != v25)
                          {
                            objc_enumerationMutation(v21);
                          }

                          if ([v18 hasPrefix:*(*(&v49 + 1) + 8 * j)])
                          {
                            v7 = v24;
                            v8 = v23;
                            v15 = v42;
                            v14 = v43;
                            v47 += [v20 unsignedIntValue];
                            ++v48;
                            goto LABEL_24;
                          }
                        }

                        v22 = [v21 countByEnumeratingWithState:&v49 objects:v72 count:16];
                        if (v22)
                        {
                          continue;
                        }

                        break;
                      }

                      v7 = v24;
                      v8 = v23;
                      v15 = v42;
                      v14 = v43;
                    }

LABEL_24:
                  }

                  ++v16;
                }

                while (v16 != v14);
                v14 = [v46 countByEnumeratingWithState:&v56 objects:v73 count:16];
              }

              while (v14);
            }
          }

          _Block_object_dispose(&v62, 8);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v37);
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  v70[0] = @"fileSize";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47];
  v70[1] = @"fileCount";
  v71[0] = v27;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v48];
  v71[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

BOOL __fileSizeAtPathForProtectionClasses_block_invoke(uint64_t a1, int a2, id a3)
{
  if (a3)
  {
    if (*(a1 + 40))
    {
      v5 = a3;
      **(a1 + 40) = a3;
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

id fileSizeAtPath(void *a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v38 = a2;
  v32 = v5;
  v33 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v33 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 1;
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = *MEMORY[0x277CBE8E8];
    v11 = *MEMORY[0x277CBE868];
    v37 = *MEMORY[0x277CBE838];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], *MEMORY[0x277CBE838], 0}];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __fileSizeAtPath_block_invoke;
    v52[3] = &unk_27893F820;
    v52[4] = &v53;
    v52[5] = a3;
    v31 = [v9 enumeratorAtURL:v33 includingPropertiesForKeys:v12 options:4 errorHandler:v52];

    if (*(v54 + 24) == 1)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v31;
      v13 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v13)
      {
        v40 = 0;
        v14 = 0;
        v15 = *v49;
        v34 = v10;
        v35 = v11;
        v36 = *v49;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v49 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v48 + 1) + 8 * i);
            v47 = 0;
            [v17 getResourceValue:&v47 forKey:v10 error:0];
            v18 = v47;
            v46 = 0;
            [v17 getResourceValue:&v46 forKey:v11 error:0];
            v19 = v46;
            if (([v19 BOOLValue] & 1) == 0)
            {
              v20 = v13;
              v45 = 0;
              [v17 getResourceValue:&v45 forKey:v37 error:0];
              v21 = v45;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v22 = v38;
              v23 = [v22 countByEnumeratingWithState:&v41 objects:v59 count:16];
              if (v23)
              {
                v24 = *v42;
                while (2)
                {
                  for (j = 0; j != v23; ++j)
                  {
                    if (*v42 != v24)
                    {
                      objc_enumerationMutation(v22);
                    }

                    if ([v18 hasPrefix:*(*(&v41 + 1) + 8 * j)])
                    {
                      v10 = v34;
                      v11 = v35;
                      v14 += [v21 unsignedIntValue];
                      ++v40;
                      goto LABEL_19;
                    }
                  }

                  v23 = [v22 countByEnumeratingWithState:&v41 objects:v59 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }

                v10 = v34;
                v11 = v35;
              }

LABEL_19:

              v13 = v20;
              v15 = v36;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v13);
      }

      else
      {
        v40 = 0;
        v14 = 0;
      }
    }

    else
    {
      v40 = 0;
      v14 = 0;
    }

    _Block_object_dispose(&v53, 8);
  }

  else
  {
    v40 = 0;
    v14 = 0;
  }

  v57[0] = @"fileSize";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v57[1] = @"fileCount";
  v58[0] = v26;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
  v58[1] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

BOOL __fileSizeAtPath_block_invoke(uint64_t a1, int a2, id a3)
{
  if (a3)
  {
    if (*(a1 + 40))
    {
      v5 = a3;
      **(a1 + 40) = a3;
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return a3 != 0;
}

BOOL sub_231BF6D2C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_231BF6D90()
{
  v0 = sub_231C17BB0();
  __swift_allocate_value_buffer(v0, qword_27DD6E3A0);
  __swift_project_value_buffer(v0, qword_27DD6E3A0);
  return sub_231C17BA0();
}

id sub_231BF6E0C()
{
  v1 = v0;
  type metadata accessor for MetricsJob();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_231BF6F48;
  *(v2 + 24) = 0;
  *&v0[OBJC_IVAR___SKDMetricsJob_metricsJob] = v2;
  v3 = qword_27DD6E2D0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27DD6E2B0;
  v5 = qword_27DD70508;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27DD6E9C8;

  sub_231C06644(v6, sub_231BF747C, v2, 0, 0);

  v8.receiver = v1;
  v8.super_class = SKDMetricsJob;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_231BF6F48(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v8[4] = sub_231BF7624;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_231BF7038;
  v8[3] = &block_descriptor;
  v4 = _Block_copy(v8);
  v5 = a1;

  v6 = [v2 processLegacyPipelinesReportWithCancelBlock_];
  _Block_release(v4);
  return v6;
}

uint64_t sub_231BF7038(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

unint64_t type metadata accessor for SKDMetricsJob()
{
  result = qword_27DD6E3C0;
  if (!qword_27DD6E3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD6E3C0);
  }

  return result;
}

uint64_t sub_231BF7100()
{
  sub_231C17FC0();
  MEMORY[0x238376CE0](0);
  return sub_231C17FE0();
}

uint64_t sub_231BF7144()
{
  sub_231C17FC0();
  MEMORY[0x238376CE0](0);
  return sub_231C17FE0();
}

uint64_t sub_231BF7194(uint64_t a1, uint64_t a2)
{
  if (qword_27DD6E2A0 != -1)
  {
    swift_once();
  }

  v4 = sub_231C17BB0();
  __swift_project_value_buffer(v4, qword_27DD6E3A0);
  v5 = sub_231C17B90();
  v6 = sub_231C17D30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_231B25000, v5, v6, "Starting Metrics Job", v7, 2u);
    MEMORY[0x238378B40](v7, -1, -1);
  }

  v8 = *(a2 + 24);
  if ((*(a2 + 16))(a1))
  {
    v9 = sub_231C17B90();
    v10 = sub_231C17D30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_231B25000, v9, v10, "Metrics Job completed", v11, 2u);
      MEMORY[0x238378B40](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_231BF74BC();
    v13 = swift_allocError();
    swift_willThrow();
    v14 = v13;
    v15 = sub_231C17B90();
    v16 = sub_231C17D30();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_231B25000, v15, v16, "Metrics Job did not complete with: %@", v17, 0xCu);
      sub_231BF7510(v18);
      MEMORY[0x238378B40](v18, -1, -1);
      MEMORY[0x238378B40](v17, -1, -1);
    }

    else
    {
    }

    return 2;
  }
}

uint64_t sub_231BF7420()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_231BF74BC()
{
  result = qword_27DD6E3C8;
  if (!qword_27DD6E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6E3C8);
  }

  return result;
}

uint64_t sub_231BF7510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E3D0, &unk_231C23AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for MetricsJobError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetricsJobError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_231BF7748()
{
  result = qword_27DD6E3D8;
  if (!qword_27DD6E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6E3D8);
  }

  return result;
}

uint64_t static SKDBreadcrumbProcessor.referenceDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E3E0, &qword_231C228C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v23[-v7];
  if (a1)
  {
    if (*(a1 + 16) && (v9 = sub_231BF7C64(0xD00000000000001BLL, 0x8000000231C34CA0), (v10 & 1) != 0))
    {
      sub_231BF7D44(*(a1 + 56) + 32 * v9, v23);
      v11 = sub_231C17B70();
      v12 = swift_dynamicCast();
      v13 = *(v11 - 8);
      v14 = *(v13 + 56);
      v14(v8, v12 ^ 1u, 1, v11);
      if ((*(v13 + 48))(v8, 1, v11) != 1)
      {
        (*(v13 + 32))(a2, v8, v11);
        return v14(a2, 0, 1, v11);
      }
    }

    else
    {
      v16 = sub_231C17B70();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    }

    if (*(a1 + 16) && (v17 = sub_231BF7C64(0xD00000000000001ALL, 0x8000000231C34CC0), (v18 & 1) != 0))
    {
      sub_231BF7D44(*(a1 + 56) + 32 * v17, v23);
      v19 = sub_231C17B70();
      v20 = swift_dynamicCast();
      (*(*(v19 - 8) + 56))(a2, v20 ^ 1u, 1, v19);
    }

    else
    {
      v19 = sub_231C17B70();
      (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    }

    sub_231C17B70();
    result = (*(*(v19 - 8) + 48))(v8, 1, v19);
    if (result != 1)
    {
      return sub_231BF7CDC(v8);
    }
  }

  else
  {
    sub_231C17B60();
    v21 = sub_231C17B70();
    v22 = *(*(v21 - 8) + 56);

    return v22(a2, 0, 1, v21);
  }

  return result;
}

unint64_t sub_231BF7C64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_231C17FC0();
  sub_231C17C80();
  v6 = sub_231C17FE0();

  return sub_231BF7DA0(a1, a2, v6);
}

uint64_t sub_231BF7CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E3E0, &qword_231C228C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231BF7D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_231BF7DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_231C17F40())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t PrimitiveQueryProtocol<>.negated()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return Query.NegationQuery.init(_:)(v7, a1, a3);
}

uint64_t sub_231BF7FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v10 = *v4;
  v11 = v4[1];

  MEMORY[0x2383769A0](a3, a4);
  MEMORY[0x2383769A0](v7, v8);
  MEMORY[0x2383769A0](39, 0xE100000000000000);
  return v10;
}

uint64_t _s24SpotlightKnowledgeDaemon5QueryO15AttributeEqualsV7negatedAC0e3NotF0VyF_0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_231BF80C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v10 = *v4;
  v11 = v4[1];

  MEMORY[0x2383769A0](a3, a4);
  MEMORY[0x2383769A0](v7, v8);
  return v10;
}

uint64_t _s24SpotlightKnowledgeDaemon5QueryO15AttributeEqualsV19primitiveAttributesShySSGvg_0()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E3E8, &qword_231C22AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231C228D0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = sub_231BFB2A0(inited);
  swift_setDeallocating();
  sub_231BF83E4(inited + 32);
  return v4;
}

uint64_t _s24SpotlightKnowledgeDaemon5QueryO14AttributeIsSetV15primitiveStringSSvg_0()
{
  v2 = *v0;
  v3 = v0[1];

  MEMORY[0x2383769A0](10813, 0xE200000000000000);
  return v2;
}

uint64_t sub_231BF8278()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_231BF82CC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

id sub_231BF8320@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t static QueryBuilder.buildBlock<each A>(_:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = 8 * a2;
  v40 = a4;
  if (a2 == 1)
  {
    v7 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1, a2);
    v10 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    v7 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v22 = *(*(TupleTypeMetadata - 8) + 64);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &v39;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v28 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v27 + 32);
    v31 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = a2;
    do
    {
      if (a2 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v30;
      }

      v35 = *v29++;
      v34 = v35;
      v36 = &v25[v33];
      v37 = *v5++;
      (*(*(v34 - 8) + 16))(&v25[v33], v37);
      *v31++ = v36;
      v30 += 4;
      --v32;
    }

    while (v32);
  }

  return sub_231BF8E1C(v28, a2, v7, v40);
}

uint64_t Optional<A>.queries()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v14, a1);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v4 + 8))(v8, a1);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = (*(a2 + 8))(v9, a2);
    (*(v10 + 8))(v13, v9);
    return v16;
  }
}

void *QueryArray.queries()()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = MEMORY[0x277D84F90];
  for (i = *v0 + 32; ; i += 40)
  {
    sub_231BF902C(i, v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = (*(v6 + 8))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = *(v7 + 16);
    v9 = v2[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= v2[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_231BF9564(result, v11, 1, v2);
      v2 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v8)
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD6E3F0, &qword_231C22940);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_23;
          }

          v2[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *QueryTuple.queries()(uint64_t TupleTypeMetadata, uint64_t a2)
{
  v2 = TupleTypeMetadata;
  v3 = *(TupleTypeMetadata + 16);
  if (v3 == 1)
  {
    v4 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata, a2);
    v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = *(v2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v4 = TupleTypeMetadata;
  }

  v18 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v50 = v20;
  v21 = *(v20 + 16);
  v53 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v21();
  v51 = v4;
  if (v3)
  {
    v24 = (*(v2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (*(v2 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v4 + 32);
    v56 = MEMORY[0x277D84F90];
    v27 = v3;
    v52 = v3;
    while (1)
    {
      v54 = &v49;
      v55 = v27;
      v31 = *v24;
      v32 = *v25;
      v33 = *(*v24 - 8);
      v34 = *(v33 + 64);
      MEMORY[0x28223BE20](v22, v23);
      v36 = &v49 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = v3 == 1 ? 0 : *v26;
      (*(v33 + 16))(v36, &v53[v37], v31);
      v38 = v31;
      v39 = (*(v32 + 8))(v31, v32);
      v40 = *(v39 + 16);
      result = v56;
      v41 = v56[2];
      v42 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = v56;
      if (!result || v42 > v56[3] >> 1)
      {
        if (v41 <= v42)
        {
          v44 = v41 + v40;
        }

        else
        {
          v44 = v41;
        }

        result = sub_231BF9564(result, v44, 1, v56);
        v43 = result;
      }

      v45 = *(v39 + 16);
      v56 = v43;
      if (v45)
      {
        if ((v43[3] >> 1) - v43[2] < v40)
        {
          goto LABEL_35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD6E3F0, &qword_231C22940);
        swift_arrayInitWithCopy();

        v3 = v52;
        v29 = v38;
        v30 = v55;
        if (v40)
        {
          v46 = v56[2];
          v47 = __OFADD__(v46, v40);
          v48 = v46 + v40;
          if (v47)
          {
            goto LABEL_36;
          }

          v56[2] = v48;
          v30 = v55;
        }
      }

      else
      {

        v3 = v52;
        v29 = v38;
        v30 = v55;
        if (v40)
        {
          goto LABEL_34;
        }
      }

      v22 = (*(v33 + 8))(v36, v29);
      v26 += 4;
      ++v25;
      ++v24;
      v27 = v30 - 1;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
LABEL_32:
    (*(v50 + 8))(v53, v51);
    return v56;
  }

  return result;
}

uint64_t sub_231BF8E1C@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata, a2);
    v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata, a2);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v26 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v8 + 32);
    v28 = a2;
    do
    {
      if (a2 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *v6++;
      (*(*(v30 - 8) + 32))(&v25[v29], v32);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return (*(v22 + 32))(a4, v25, v8);
}

uint64_t sub_231BF902C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t ConditionalQueryList.queries()(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1, v2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v7, v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v20, v4);
    v22 = (*(a1[5] + 8))(v4);
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    (*(v11 + 32))(v16, v20, v10);
    v22 = (*(a1[4] + 8))(v10);
    (*(v11 + 8))(v16, v10);
  }

  return v22;
}

uint64_t static QueryBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231C17DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t static QueryBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for ConditionalQueryList();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static QueryBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for ConditionalQueryList();
  return swift_storeEnumTagMultiPayload();
}

void *sub_231BF9564(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD6E3F0, &qword_231C22940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231BF96E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231BF972C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231BF9780(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v3 = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    result = swift_checkMetadataState();
    if (v5 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v21[7] = 0;
    v22 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x28223BE20](a1, v2);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v6)
  {
    v9 = 0;
    v10 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v6 < 4)
    {
      goto LABEL_10;
    }

    if (&v8[-v10] < 0x20)
    {
      goto LABEL_10;
    }

    v9 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (v10 + 16);
    v12 = v8 + 16;
    v13 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 4;
    }

    while (v13);
    if (v6 != v9)
    {
LABEL_10:
      v15 = v6 - v9;
      v16 = 8 * v9;
      v17 = &v8[8 * v9];
      v18 = (v10 + v16);
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        --v15;
      }

      while (v15);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v20 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_231BF991C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_231BF9998(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_231BF9AC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t static Query.attributeIsSet(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t Query.AttributeEquals.attribute.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Query.AttributeEquals.attribute.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Query.AttributeEquals.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Query.AttributeEquals.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

SpotlightKnowledgeDaemon::Query::AttributeEquals __swiftcall Query.AttributeEquals.init(_:value:)(Swift::String _, Swift::String value)
{
  *v2 = _;
  v2[1] = value;
  result.value = value;
  result.attribute = _;
  return result;
}

uint64_t sub_231BF9E7C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = *v2;
  v9 = v2[1];

  MEMORY[0x2383769A0](a1, a2);
  MEMORY[0x2383769A0](v5, v6);
  MEMORY[0x2383769A0](39, 0xE100000000000000);
  return v8;
}

uint64_t sub_231BFA050(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = *v2;
  v9 = v2[1];

  MEMORY[0x2383769A0](a1, a2);
  MEMORY[0x2383769A0](v5, v6);
  return v8;
}

uint64_t _s24SpotlightKnowledgeDaemon5QueryO9attribute_11greaterThanAC016AttributeGreaterG0VSS_SStFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t Query.AttributeIsSet.attribute.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Query.AttributeIsSet.attribute.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SpotlightKnowledgeDaemon::Query::AttributeIsNotSet __swiftcall Query.AttributeIsSet.negated()()
{
  v2 = v1[1];
  *v0 = *v1;
  v0[1] = v2;

  result.attribute._object = v4;
  result.attribute._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_231BFA22C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x238376A00](0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v18 = v6;
  v15 = a1;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  *v17 = 0xF000000000000007;
  memset(&v17[8], 0, 32);
  v7 = sub_231BFB0E0();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_231BFA81C(v13, v9, v10);

      v9 = sub_231BFB0E0();
      v10 = v11;
    }

    while (v11);
    v6 = v18;
  }

  v13[2] = *v17;
  v13[3] = *&v17[16];
  v14 = *&v17[32];
  v13[0] = v15;
  v13[1] = v16;
  sub_231BFBC40(v13);
  return v6;
}

uint64_t sub_231BFA3B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  return (*(v4 + 32))(a2, v8, a1);
}

uint64_t sub_231BFA484(uint64_t a1)
{
  v1 = (*(*(a1 + 24) + 8))(*(a1 + 16));
  if (*(v1 + 16) == 1)
  {
    sub_231BF902C(v1 + 32, v6);

    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 72))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_231BFA554(uint64_t a1)
{
  (*(*(a1 + 24) + 8))(*(a1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E500, &qword_231C22AA8);
  sub_231BFB408();
  v1 = sub_231C17C30();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0x65736C6166;
  }

  return v1;
}

uint64_t sub_231BFA624@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = QueryProtocol.composableString.getter(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_231BFA688(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a1 + 24) + 8))(*(a1 + 16));

  return sub_231BFA22C(v3, a2, 0);
}

uint64_t sub_231BFA6D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t Query.NegationQuery.primitiveString.getter(uint64_t a1)
{
  v1 = (*(*(a1 + 24) + 56))(*(a1 + 16));
  MEMORY[0x2383769A0](v1);

  MEMORY[0x2383769A0](41, 0xE100000000000000);
  return 10273;
}

uint64_t sub_231BFA81C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_231C17FC0();
  sub_231C17C80();
  v9 = sub_231C17FE0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_231C17F40() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_231BFABCC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_231BFA96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E6C0, &unk_231C22F38);
  result = sub_231C17E10();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_231C17FC0();
      sub_231C17C80();
      result = sub_231C17FE0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_231BFABCC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_231BFA96C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_231BFAD4C();
      goto LABEL_16;
    }

    sub_231BFAEA8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_231C17FC0();
  sub_231C17C80();
  result = sub_231C17FE0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_231C17F40();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_231C17F60();
  __break(1u);
  return result;
}

void *sub_231BFAD4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E6C0, &unk_231C22F38);
  v2 = *v0;
  v3 = sub_231C17E00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_231BFAEA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E6C0, &unk_231C22F38);
  result = sub_231C17E10();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_231C17FC0();

      sub_231C17C80();
      result = sub_231C17FE0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_231BFB0E0()
{
  v1 = v0;
  for (i = v0[4]; (~i & 0xF000000000000007) == 0; v1[8] = v18)
  {
LABEL_12:
    v9 = v1[1];
    v10 = *(*v1 + 16);
    if (v9 == v10)
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }

    else
    {
      if (v9 >= v10)
      {
        goto LABEL_26;
      }

      sub_231BF902C(*v1 + 40 * v9 + 32, &v31);
      v1[1] = v9 + 1;
    }

    v12 = v1[2];
    v11 = v1[3];
    v29[0] = v31;
    v29[1] = v32;
    v30 = v33;
    if (!*(&v32 + 1))
    {
      return 0;
    }

    sub_231BFBCA8(v29, v28);
    v12(&v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v28);
    i = v27;
    v13 = -1 << *(v27 + 32);
    v14 = ~v13;
    v15 = v27 + 56;
    v16 = -v13;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v27 + 56);
    v19 = v1[5];
    v20 = v1[6];
    v21 = v1[7];
    v22 = v1[8];
    result = sub_231BFBCC0(v1[4]);
    v1[4] = i;
    v1[5] = v15;
    v1[6] = v14;
    v1[7] = 0;
  }

  v3 = v1[7];
  v4 = v1[8];
  if (v4)
  {
LABEL_22:
    v24 = (*(i + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    v25 = *v24;
    v26 = v24[1];
    v1[7] = v3;
    v1[8] = (v4 - 1) & v4;

    return v25;
  }

  v5 = (v1[6] + 64) >> 6;
  if (v5 <= v3 + 1)
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = (v1[6] + 64) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v1[7] = v7;
      v1[8] = 0;
      goto LABEL_12;
    }

    v4 = *(v1[5] + 8 * v8);
    ++v3;
    if (v4)
    {
      v3 = v8;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_231BFB2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E6C0, &unk_231C22F38);
    v3 = sub_231C17E20();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_231C17FC0();

      sub_231C17C80();
      result = sub_231C17FE0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_231C17F40();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_231BFB408()
{
  result = qword_27DD6E508;
  if (!qword_27DD6E508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD6E500, &qword_231C22AA8);
    sub_231BFB634(&qword_27DD6E510, &qword_27DD6E518, &qword_231C22AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6E508);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_231BFB59C()
{
  result = qword_27DD6E520;
  if (!qword_27DD6E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD6E520);
  }

  return result;
}

uint64_t sub_231BFB634(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_231BFB6E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231BFB730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_231BFB79C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231BFB7E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231BFB860(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231BFB8D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_231BFBA10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
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

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_231BFBC40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E6B8, &qword_231C22F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231BFBCA8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_231BFBCC0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_231BFBCD4();
  }

  return result;
}

uint64_t QueryProtocol.string.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  (*(a2 + 48))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t QueryProtocol.attributes.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v13 - v8;
  (*(a2 + 48))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t QueryProtocol.isLeaf.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v12 - v8;
  (*(a2 + 48))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return a2 & 1;
}

uint64_t QueryProtocol.negated()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v12 - v8;
  (*(a2 + 48))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v9, AssociatedTypeWitness);
}

uint64_t QueryProtocol.queries()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231C228D0;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  return v5;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_231BFC470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_231C228D0;
  *(v10 + 56) = a1;
  *(v10 + 64) = a3;
  v11 = swift_allocObject();
  *(v10 + 32) = v11;
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v9;
  v11[5] = v8;

  return v10;
}

uint64_t sub_231BFC534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231C228D0;
  *(v8 + 56) = a1;
  *(v8 + 64) = a3;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  return v8;
}

uint64_t QueryProtocol.composableString.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 72))())
  {
    return (*(a2 + 56))(a1, a2);
  }

  v5 = (*(a2 + 56))(a1, a2);
  MEMORY[0x2383769A0](v5);

  MEMORY[0x2383769A0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_231BFC66C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return QueryProtocol.queries()(a1, WitnessTable);
}

uint64_t sub_231BFC6C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return QueryProtocol.queries()(a1, WitnessTable);
}

uint64_t sub_231BFC714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return QueryProtocol.queries()(a1, WitnessTable);
}

uint64_t sub_231BFC768(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD6E4F8, &unk_231C22A90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231C228D0;
  *(v2 + 56) = a1;
  *(v2 + 64) = sub_231BFB59C();
  return v2;
}