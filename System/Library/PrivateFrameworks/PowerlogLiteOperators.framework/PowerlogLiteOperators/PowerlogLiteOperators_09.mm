uint64_t AWDMETRICSKCellularPowerLogNRCarrierComponentInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v45[0] & 0x7F) << v29;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v31;
          }

LABEL_67:
          v42 = 24;
LABEL_78:
          *(a1 + v42) = v27;
          goto LABEL_79;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v45[0] & 0x7F) << v14;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_73;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_73:
          *(a1 + 32) = v20;
          goto LABEL_79;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
      }

      v28 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfo);
      [a1 addCarrierInfo:v28];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogNRCarrierComponentInfoMCarrierComponentInfoReadFrom(v28, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v38 = [a2 position] + 1;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v37 |= (v45[0] & 0x7F) << v35;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v11 = v36++ >= 9;
        if (v11)
        {
          v41 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v41 = 0;
      }

      else
      {
        v41 = v37;
      }

LABEL_71:
      *(a1 + 8) = v41;
      goto LABEL_79;
    }

    if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v45[0] & 0x7F) << v21;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_77:
      v42 = 28;
      goto LABEL_78;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

id PLLogDuetServiceDAS()
{
  if (qword_2811F7898 != -1)
  {
    dispatch_once(&qword_2811F7898, &__block_literal_global_27);
  }

  v1 = qword_2811F7890;

  return v1;
}

uint64_t __PLLogDuetServiceDAS_block_invoke()
{
  qword_2811F7890 = os_log_create("com.apple.powerlog", "DuetServiceDAS");

  return MEMORY[0x2821F96F8]();
}

id PLLogDuetServiceLpmSource()
{
  if (qword_2811F78D0 != -1)
  {
    dispatch_once(&qword_2811F78D0, &__block_literal_global_28);
  }

  v1 = _MergedGlobals_94;

  return v1;
}

uint64_t __PLLogDuetServiceLpmSource_block_invoke()
{
  _MergedGlobals_94 = os_log_create("com.apple.powerlog", "lpmsource");

  return MEMORY[0x2821F96F8]();
}

id PLLogContinuity()
{
  if (qword_2811F78E0 != -1)
  {
    dispatch_once(&qword_2811F78E0, &__block_literal_global_29);
  }

  v1 = _MergedGlobals_95;

  return v1;
}

uint64_t __PLLogContinuity_block_invoke()
{
  _MergedGlobals_95 = os_log_create("com.apple.powerlog", "continuity");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSKCellularPowerLogNRSub6RSRPHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v45[0] & 0x7F) << v35;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v41 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_76:
        *(a1 + 8) = v41;
        goto LABEL_79;
      }

      if (v13 != 2)
      {
        goto LABEL_62;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBin);
      [a1 addBin:v21];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogNRSub6RSRPHistMBinReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 36) |= 4u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v45[0] & 0x7F) << v22;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_67:
        v42 = 28;
        goto LABEL_72;
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v45[0] & 0x7F) << v29;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v31;
        }

LABEL_71:
        v42 = 24;
LABEL_72:
        *(a1 + v42) = v28;
        goto LABEL_79;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 8u;
        while (1)
        {
          LOBYTE(v45[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45[0] & 0x7F) << v14;
          if ((v45[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_78;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_78:
        *(a1 + 32) = v20;
        goto LABEL_79;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

id PLLogUsageTracking()
{
  if (qword_2811F78F0 != -1)
  {
    dispatch_once(&qword_2811F78F0, &__block_literal_global_30);
  }

  v1 = _MergedGlobals_96;

  return v1;
}

uint64_t __PLLogUsageTracking_block_invoke()
{
  _MergedGlobals_96 = os_log_create("com.apple.powerlog", "UsageTracking");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLLogDisplay_block_invoke()
{
  qword_2811F4920 = os_log_create("com.apple.powerlog", "display");

  return MEMORY[0x2821F96F8]();
}

void sub_21A7315D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21A737C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HIDTouchEventCallback(void *a1)
{
  if (IOHIDEventGetType() != 11)
  {
    return;
  }

  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return;
  }

  v3 = Children;
  v9 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v3, v6);
        if (IOHIDEventGetType() == 11)
        {
          if (IOHIDEventGetIntegerValue())
          {
            break;
          }
        }

        v6 = ++v7;
        if (v5 <= v7)
        {
          goto LABEL_9;
        }
      }

      if ([v9 userTouch])
      {
        goto LABEL_15;
      }

      v8 = 1;
      goto LABEL_14;
    }

LABEL_9:
    if ([v9 userTouch])
    {
      v8 = 0;
LABEL_14:
      [v9 logEventBackwardUserTouch:v8];
    }
  }

LABEL_15:
}

void sub_21A738718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t updateDisplayIOReportAZLStats(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    Samples = PLLogDisplay();
    if (!os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v12 = "LogDisplayAZL !ioReportStats";
LABEL_21:
    _os_log_debug_impl(&dword_21A4C6000, Samples, OS_LOG_TYPE_DEBUG, v12, buf, 2u);
    goto LABEL_11;
  }

  if ([v1 subscription])
  {
    [v2 subscription];
    v3 = [v2 subscribedChannels];
    Samples = IOReportCreateSamples();

    if (Samples)
    {
      v5 = [MEMORY[0x277CBEAA8] monotonicDate];
      v6 = [v2 ioReportSample];

      if (!v6)
      {
LABEL_7:
        [v2 setIoReportSample:Samples];
        v10 = [v2 sampleTime];
        [v2 setSampleTimePrevious:v10];

        [v2 setSampleTime:v5];
        v11 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v7 = [v2 ioReportSample];
      SamplesDelta = IOReportCreateSamplesDelta();

      if (SamplesDelta)
      {
        v15 = objc_alloc_init(PLDisplayAZLStats);
        v9 = v15;
        IOReportIterate();
        [v2 setDisplayAZLStats:v9];

        goto LABEL_7;
      }

      v13 = PLLogDisplay();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "LogDisplayAZL,no delta", buf, 2u);
      }
    }

    else
    {
      v5 = PLLogDisplay();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "LogDisplayAZL,no newSample", buf, 2u);
      }
    }

    v11 = 0;
    goto LABEL_18;
  }

  Samples = PLLogDisplay();
  if (os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v12 = "LogDisplayAZL !ioReportStats.subscription";
    goto LABEL_21;
  }

LABEL_11:
  v11 = 0;
LABEL_19:

  return v11;
}

void __updateDisplayIOReportAZLStats_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetChannelName();
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
  v5 = v4;
  v6 = &unk_282C116B8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if ([v3 isEqualToString:@"power"])
  {
    [*(a1 + 32) setAvgPower:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AZL power is equal to %@";
LABEL_18:
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, v10, &v12, 0xCu);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"azl_accum"])
  {
    [*(a1 + 32) setAzlAccum:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AZL azl_accum is equal to %@";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if ([v3 isEqualToString:@"nits_accum"])
  {
    [*(a1 + 32) setNitsAccum:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AZL nits_accum is equal to %@";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"bl_update_count"])
  {
    [*(a1 + 32) setBlUpdateCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AZL bl_update_count is equal to %@";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"bl_frame_count"])
  {
    [*(a1 + 32) setBlFrameCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AZL bl_frame_count is equal to %@";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_20:

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t updateDisplayIOReportAODStats(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    Samples = PLLogDisplay();
    if (!os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v15 = "LogDisplayAOD !ioReportStats";
LABEL_25:
    _os_log_debug_impl(&dword_21A4C6000, Samples, OS_LOG_TYPE_DEBUG, v15, buf, 2u);
    goto LABEL_15;
  }

  v3 = [v1 subscription];
  Samples = PLLogDisplay();
  v5 = os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v22 = v2;
      _os_log_debug_impl(&dword_21A4C6000, Samples, OS_LOG_TYPE_DEBUG, "Got callback for updateDisplayIOReportAODStat with ioReportAODStats %@", buf, 0xCu);
    }

    [v2 subscription];
    v6 = [v2 subscribedChannels];
    Samples = IOReportCreateSamples();

    if (Samples)
    {
      v7 = [MEMORY[0x277CBEAA8] monotonicDate];
      v8 = PLLogDisplay();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v2 ioReportSample];
        *buf = 138412290;
        v22 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Got callback for updateDisplayIOReportAODStat with ioReportAODStats.ioReportSample %@", buf, 0xCu);
      }

      v9 = [v2 ioReportSample];

      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = [v2 ioReportSample];
      SamplesDelta = IOReportCreateSamplesDelta();

      if (SamplesDelta)
      {
        v20 = objc_alloc_init(PLDisplayAODStats);
        v12 = v20;
        IOReportIterate();
        [v2 setDisplayAODStats:v12];

LABEL_11:
        [v2 setIoReportSample:Samples];
        v13 = [v2 sampleTime];
        [v2 setSampleTimePrevious:v13];

        [v2 setSampleTime:v7];
        v14 = 1;
LABEL_22:

        goto LABEL_23;
      }

      v16 = PLLogDisplay();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "LogDisplayAOD,no delta", buf, 2u);
      }
    }

    else
    {
      v7 = PLLogDisplay();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LogDisplayAOD,no newSample", buf, 2u);
      }
    }

    v14 = 0;
    goto LABEL_22;
  }

  if (v5)
  {
    *buf = 0;
    v15 = "LogDisplayAOD !ioReportStats.subscription";
    goto LABEL_25;
  }

LABEL_15:
  v14 = 0;
LABEL_23:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

void __updateDisplayIOReportAODStats_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetChannelName();
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
  v5 = v4;
  v6 = &unk_282C116B8;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if ([v3 isEqualToString:@"awake_count"])
  {
    [*(a1 + 32) setAwakeCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD awake_count is equal to %@";
LABEL_45:
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, v10, &v12, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"media_count"])
  {
    [*(a1 + 32) setMediaCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD media_count is equal to %@";
      goto LABEL_45;
    }

LABEL_46:

    goto LABEL_47;
  }

  if ([v3 isEqualToString:@"flipbook_count"])
  {
    [*(a1 + 32) setFlipbookCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD flipbook_count is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"flipbook_delay"])
  {
    [*(a1 + 32) setFlipbookDelay:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD flipbook_delay is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"media_scanout"])
  {
    [*(a1 + 32) setMediaScanout:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD media_scanout is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"ambient_count"])
  {
    [*(a1 + 32) setAmbientCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD ambient_count is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"prc_repeat_coun"])
  {
    [*(a1 + 32) setPrcRepeatCoun:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD prc_repeat_coun is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"pdc_repeat_coun"])
  {
    [*(a1 + 32) setPdcRepeatCoun:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD pdc_repeat_coun is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"llm_count"])
  {
    [*(a1 + 32) setLlmCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD llm_count is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"apl_sum"])
  {
    [*(a1 + 32) setAplSum:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD apl_sum is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"apl_count"])
  {
    [*(a1 + 32) setAplCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD apl_count is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"1hz_flipbook_fr"])
  {
    [*(a1 + 32) setOneHzFlipbookFrameCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD 1hz_flipbook_fr is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"1hz_frame_miss_"])
  {
    [*(a1 + 32) setOneHzFrameMissCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD 1hz_frame_miss_ is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"1hz_bic_accum_c"])
  {
    [*(a1 + 32) setOneHzBicAccumCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue")}];
      v12 = 138412290;
      v13 = v9;
      v10 = "AOD 1hz_bic_accum_c is equal to %@";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_47:

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_21A73B518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21A73E240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t KCellularCdma1XRrStateReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        switch(v13)
        {
          case 7:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v58 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v58 & 0x7F) << v34;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 16;
            break;
          case 8:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v57 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v57 & 0x7F) << v47;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 28;
            break;
          case 9:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v61 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v61 & 0x7F) << v21;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 20;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v60 & 0x7F) << v41;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 32;
            break;
          case 6:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v59 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v59 & 0x7F) << v14;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 24;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_21A754598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t KCellularWcdmaCpcStatReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v59 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v59 & 0x7F) << v34;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_87:
            v53 = 20;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v58 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v58 & 0x7F) << v47;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_103;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_103:
            v53 = 16;
            break;
          case 0xF:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v57 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v57 & 0x7F) << v21;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_95:
            v53 = 28;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_105;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v56 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v56 & 0x7F) << v27;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v33 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_83:
            *(a1 + 8) = v33;
            goto LABEL_105;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v61 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v61 & 0x7F) << v41;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_99;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v43;
            }

LABEL_99:
            v53 = 32;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v60 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v14;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v53 = 24;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v53) = v20;
LABEL_105:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ComponentCarrierInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___ComponentCarrierInfo__dlRfBand;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___ComponentCarrierInfo__dlRfBand;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v37 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37 & 0x7F) << v14;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___ComponentCarrierInfo__dlEarfcn;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___ComponentCarrierInfo__dlEarfcn;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 1u;
    while (1)
    {
      v38 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v38 & 0x7F) << v23;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___ComponentCarrierInfo__dlBandwidth;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___ComponentCarrierInfo__dlBandwidth;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

void NotificationCallback_0(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__9;
  v6[4] = __Block_byref_object_dispose__9;
  v7 = a2;
  v4 = dispatch_get_global_queue(-2, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __NotificationCallback_block_invoke_0;
  v5[3] = &unk_27825DC90;
  v5[4] = v6;
  v5[5] = a3;
  dispatch_async(v4, v5);

  _Block_object_dispose(v6, 8);
}

void sub_21A75F7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_21A7645CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NotificationCallback_block_invoke_0(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [v2 substringFromIndex:{objc_msgSend(@"com.apple.powerlogd.accounting.", "length")}];
  if ([v3 isEqualToString:@"testAll"])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v5 = [*(*(*(a1 + 32) + 8) + 40) testNames];
    v6 = [v5 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v54;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v54 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v53 + 1) + 8 * i);
          if ([v10 rangeOfString:@"Reload"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v10, "rangeOfString:", @"All") == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v7);
    }
  }

  else if ([v3 isEqualToString:{@"testDistributionAll", v3, v2}])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = [*(*(*(a1 + 32) + 8) + 40) testNames];
    v11 = [v5 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v50;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v49 + 1) + 8 * j);
          if ([v15 rangeOfString:@"testDistribution"] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v15, "isEqualToString:", @"testDistributionAll") & 1) == 0)
          {
            [v4 addObject:v15];
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v12);
    }
  }

  else if ([v3 isEqualToString:@"testCorrectionAll"])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v5 = [*(*(*(a1 + 32) + 8) + 40) testNames];
    v16 = [v5 countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v5);
          }

          v20 = *(*(&v45 + 1) + 8 * k);
          if ([v20 rangeOfString:@"testCorrection"] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v20, "isEqualToString:", @"testCorrectionAll") & 1) == 0)
          {
            [v4 addObject:v20];
          }
        }

        v17 = [v5 countByEnumeratingWithState:&v45 objects:v60 count:16];
      }

      while (v17);
    }
  }

  else if ([v3 isEqualToString:@"testQualificationAll"])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [*(*(*(a1 + 32) + 8) + 40) testNames];
    v21 = [v5 countByEnumeratingWithState:&v41 objects:v59 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (m = 0; m != v22; ++m)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v5);
          }

          v25 = *(*(&v41 + 1) + 8 * m);
          if ([v25 rangeOfString:@"testQualification"] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v25, "isEqualToString:", @"testQualificationAll") & 1) == 0)
          {
            [v4 addObject:v25];
          }
        }

        v22 = [v5 countByEnumeratingWithState:&v41 objects:v59 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v58 = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    v4 = [v5 mutableCopy];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = v4;
  v27 = [v26 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v38;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v37 + 1) + 8 * n);
        if (([v31 isEqualToString:@"testInit"] & 1) == 0 && objc_msgSend(v31, "rangeOfString:", @"ReloadAfter") == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = [MEMORY[0x277D3F0C0] debugInstance];
          [v32 reset];
        }

        v33 = NSSelectorFromString(v31);
        ([*(*(*(a1 + 32) + 8) + 40) methodForSelector:v33])(*(*(*(a1 + 32) + 8) + 40), v33);
      }

      v28 = [v26 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t AWDMETRICSKCellularPowerLogPLMNSearchHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v51[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51[0] & 0x7F) << v5;
        if ((v51[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v51[0] & 0x7F) << v27;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_77:
        *(a1 + 8) = v33;
        goto LABEL_93;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v51[0] & 0x7F) << v14;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_85:
          v48 = 32;
LABEL_90:
          *(a1 + v48) = v20;
          goto LABEL_93;
        }

LABEL_60:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_93;
      }

      v40 = objc_alloc_init(AWDMETRICSKCellularPowerLogPLMNSearchHistMBin);
      [a1 addBin:v40];
      v51[0] = 0;
      v51[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogPLMNSearchHistMBinReadFrom(v40, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_93:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v51[0] & 0x7F) << v34;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v36;
        }

LABEL_81:
        v48 = 24;
        goto LABEL_90;
      case 0xE:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v51[0] & 0x7F) << v41;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            LOBYTE(v47) = 0;
            goto LABEL_92;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_92:
        *(a1 + 36) = v47;
        goto LABEL_93;
      case 0xF:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v51[0] & 0x7F) << v21;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_89:
        v48 = 28;
        goto LABEL_90;
    }

    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HistogramBinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___HistogramBin__ids;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___HistogramBin__ids;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___HistogramBin__value;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___HistogramBin__value;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void myRelease(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

id PLLogUrsa()
{
  if (qword_2811F4C48 != -1)
  {
    dispatch_once(&qword_2811F4C48, &__block_literal_global_203);
  }

  v1 = qword_2811F4C40;

  return v1;
}

uint64_t __PLLogUrsa_block_invoke()
{
  qword_2811F4C40 = os_log_create("com.apple.powerlog", "Ursa");

  return MEMORY[0x2821F96F8]();
}

void sub_21A76A6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21A76ACC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21A76C2FC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x21A76C208);
  }

  _Unwind_Resume(exception_object);
}

void sub_21A76DBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21A76E8D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x21A76E80CLL);
  }

  _Unwind_Resume(exception_object);
}

id PLLogComputeSafeguards()
{
  if (qword_2811F4C70 != -1)
  {
    dispatch_once(&qword_2811F4C70, &__block_literal_global_559);
  }

  v1 = qword_2811F4C68;

  return v1;
}

uint64_t __PLLogComputeSafeguards_block_invoke()
{
  qword_2811F4C68 = os_log_create("com.apple.powerlog", "ComputeSafeguards");

  return MEMORY[0x2821F96F8]();
}

uint64_t AWDMETRICSKCellularLteCdrxConfigReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v103 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v103 & 0x7F) << v5;
        if ((v103 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v104 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v104 & 0x7F) << v13;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_173:
              *(a1 + 8) = v19;
              goto LABEL_201;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_173;
        case 2u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v115 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v115 & 0x7F) << v69;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_185;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v71;
          }

LABEL_185:
          v101 = 20;
          goto LABEL_200;
        case 3u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 68) |= 0x100u;
          while (1)
          {
            v114 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v114 & 0x7F) << v63;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_181;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_181:
          v101 = 44;
          goto LABEL_200;
        case 4u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v113 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v113 & 0x7F) << v57;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_177;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v59;
          }

LABEL_177:
          v101 = 24;
          goto LABEL_200;
        case 5u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            v112 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v112 & 0x7F) << v33;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_157:
          v101 = 28;
          goto LABEL_200;
        case 7u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            v111 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v111 & 0x7F) << v45;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v47;
          }

LABEL_165:
          v101 = 36;
          goto LABEL_200;
        case 8u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 68) |= 0x80u;
          while (1)
          {
            v110 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v110 & 0x7F) << v75;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v11 = v76++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_189;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v77;
          }

LABEL_189:
          v101 = 40;
          goto LABEL_200;
        case 9u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 68) |= 0x2000u;
          while (1)
          {
            v116 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v116 & 0x7F) << v81;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              LOBYTE(v87) = 0;
              goto LABEL_191;
            }
          }

          v87 = (v83 != 0) & ~[a2 hasError];
LABEL_191:
          *(a1 + 64) = v87;
          goto LABEL_201;
        case 0xAu:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 68) |= 0x400u;
          while (1)
          {
            v109 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v109 & 0x7F) << v94;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v96;
          }

LABEL_199:
          v101 = 52;
          goto LABEL_200;
        case 0xBu:
          v88 = 0;
          v89 = 0;
          v90 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            v108 = 0;
            v91 = [a2 position] + 1;
            if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
            {
              v93 = [a2 data];
              [v93 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v90 |= (v108 & 0x7F) << v88;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            v11 = v89++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_195;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v90;
          }

LABEL_195:
          v101 = 32;
          goto LABEL_200;
        case 0xCu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 68) |= 0x200u;
          while (1)
          {
            v117 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v117 & 0x7F) << v27;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_153:
          v101 = 48;
          goto LABEL_200;
        case 0xDu:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 68) |= 2u;
          while (1)
          {
            v107 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v107 & 0x7F) << v51;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_169;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v53;
          }

LABEL_169:
          v101 = 16;
          goto LABEL_200;
        case 0xEu:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 68) |= 0x1000u;
          while (1)
          {
            v106 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v106 & 0x7F) << v39;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_161;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v41;
          }

LABEL_161:
          v101 = 60;
          goto LABEL_200;
        case 0xFu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 68) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_201;
      }

      while (1)
      {
        v105 = 0;
        v23 = [a2 position] + 1;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
        {
          v25 = [a2 data];
          [v25 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v105 & 0x7F) << v20;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_149;
        }
      }

      v26 = [a2 hasError] ? 0 : v22;
LABEL_149:
      v101 = 56;
LABEL_200:
      *(a1 + v101) = v26;
LABEL_201:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogIOReportMetrics()
{
  if (qword_2811F4C80 != -1)
  {
    dispatch_once(&qword_2811F4C80, &__block_literal_global_35);
  }

  v1 = _MergedGlobals_1_32;

  return v1;
}

uint64_t __PLLogIOReportMetrics_block_invoke()
{
  _MergedGlobals_1_32 = os_log_create("com.apple.PerfPowerServicesAgent", "ioreportmetrics");

  return MEMORY[0x2821F96F8]();
}

uint64_t StateHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HistogramBin);
        [a1 addBin:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HistogramBinReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogFSEvent()
{
  if (qword_2811F7D20 != -1)
  {
    dispatch_once(&qword_2811F7D20, &__block_literal_global_36);
  }

  v1 = _MergedGlobals_101;

  return v1;
}

uint64_t __PLLogFSEvent_block_invoke()
{
  _MergedGlobals_101 = os_log_create("com.apple.powerlog", "FSEvent");

  return MEMORY[0x2821F96F8]();
}

void fsEventsHandler(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = a4;
  if (a3)
  {
    v7 = 0;
    do
    {
      if ((~*(a5 + 4 * v7) & 0x10100) == 0)
      {
        v8 = [v14 objectAtIndexedSubscript:v7];
        v9 = [v8 lastPathComponent];

        if ((~*(a5 + 4 * v7) & 0x900) == 0)
        {
          v10 = [v9 componentsSeparatedByString:@"."];
          if ([v10 count] == 4)
          {
            v11 = [v10 objectAtIndexedSubscript:1];
            v12 = [v11 isEqualToString:@"microstackshots"];

            if (v12)
            {
              [a2 logLogFileName:@"microstackshots" withName:v9];
            }
          }
        }
      }

      ++v7;
    }

    while (a3 != v7);
  }
}

uint64_t AWDMETRICSKCellularPowerLogLteNrTxPowerHistHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v43[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43[0] & 0x7F) << v5;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 8)
      {
        if ((v12 & 7) == 2)
        {
          v43[0] = 0;
          v43[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v28 = [a2 position];
            if (v28 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            while (1)
            {
              v44 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v44 & 0x7F) << v29;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                goto LABEL_52;
              }
            }

            [a2 hasError];
LABEL_52:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v43[0] & 0x7F) << v37;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              goto LABEL_77;
            }
          }

          [a2 hasError];
LABEL_77:
          PBRepeatedUInt32Add();
        }

        goto LABEL_64;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v43[0] & 0x7F) << v14;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_62;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_62:
        v35 = 36;
LABEL_63:
        *(a1 + v35) = v20;
        goto LABEL_64;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 40) |= 1u;
    while (1)
    {
      LOBYTE(v43[0]) = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v43[0] & 0x7F) << v21;
      if ((v43[0] & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_58;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v23;
    }

LABEL_58:
    v35 = 32;
    goto LABEL_63;
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLqmStateChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v122 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v122 & 0x7F) << v5;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v122 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v122 & 0x7F) << v13;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_191:
              *(a1 + 8) = v19;
              goto LABEL_226;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_191;
        case 3u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 72) |= 0x200u;
          while (1)
          {
            v122 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              v66 = [a2 data];
              [v66 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v122 & 0x7F) << v61;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v11 = v62++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_195;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v63;
          }

LABEL_195:
          v119 = 48;
          goto LABEL_225;
        case 4u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v122 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v122 & 0x7F) << v41;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v43;
          }

LABEL_179:
          v119 = 24;
          goto LABEL_225;
        case 5u:
          v94 = 0;
          v95 = 0;
          v96 = 0;
          *(a1 + 72) |= 0x800u;
          while (1)
          {
            v122 = 0;
            v97 = [a2 position] + 1;
            if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
            {
              v99 = [a2 data];
              [v99 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v96 |= (v122 & 0x7F) << v94;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v11 = v95++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_213;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v96;
          }

LABEL_213:
          v119 = 56;
          goto LABEL_225;
        case 6u:
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 72) |= 0x4000u;
          while (1)
          {
            v122 = 0;
            v103 = [a2 position] + 1;
            if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
            {
              v105 = [a2 data];
              [v105 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v102 |= (v122 & 0x7F) << v100;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v11 = v101++ >= 9;
            if (v11)
            {
              LOBYTE(v79) = 0;
              goto LABEL_215;
            }
          }

          v79 = (v102 != 0) & ~[a2 hasError];
LABEL_215:
          v120 = 68;
          goto LABEL_216;
        case 7u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 72) |= 0x100u;
          while (1)
          {
            v122 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v122 & 0x7F) << v48;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_183;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v50;
          }

LABEL_183:
          v119 = 44;
          goto LABEL_225;
        case 8u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *(a1 + 72) |= 0x400u;
          while (1)
          {
            v122 = 0;
            v70 = [a2 position] + 1;
            if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
            {
              v72 = [a2 data];
              [v72 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v69 |= (v122 & 0x7F) << v67;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_199;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v69;
          }

LABEL_199:
          v119 = 52;
          goto LABEL_225;
        case 9u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *(a1 + 72) |= 0x8000u;
          while (1)
          {
            v122 = 0;
            v76 = [a2 position] + 1;
            if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
            {
              v78 = [a2 data];
              [v78 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v75 |= (v122 & 0x7F) << v73;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v11 = v74++ >= 9;
            if (v11)
            {
              LOBYTE(v79) = 0;
              goto LABEL_201;
            }
          }

          v79 = (v75 != 0) & ~[a2 hasError];
LABEL_201:
          v120 = 69;
LABEL_216:
          *(a1 + v120) = v79;
          goto LABEL_226;
        case 0xCu:
          v112 = 0;
          v113 = 0;
          v114 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v122 = 0;
            v115 = [a2 position] + 1;
            if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
            {
              v117 = [a2 data];
              [v117 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v114 |= (v122 & 0x7F) << v112;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v112 += 7;
            v11 = v113++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_224;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v114;
          }

LABEL_224:
          v119 = 16;
          goto LABEL_225;
        case 0xEu:
          v106 = 0;
          v107 = 0;
          v108 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v122 = 0;
            v109 = [a2 position] + 1;
            if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
            {
              v111 = [a2 data];
              [v111 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v108 |= (v122 & 0x7F) << v106;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v106 += 7;
            v11 = v107++ >= 9;
            if (v11)
            {
              v47 = 0;
              goto LABEL_220;
            }
          }

          if ([a2 hasError])
          {
            v47 = 0;
          }

          else
          {
            v47 = v108;
          }

LABEL_220:
          v119 = 20;
          goto LABEL_225;
        case 0x15u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 72) |= 0x1000u;
          while (1)
          {
            v122 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v122 & 0x7F) << v27;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v33 = 0;
              goto LABEL_171;
            }
          }

          if ([a2 hasError])
          {
            v33 = 0;
          }

          else
          {
            v33 = v29;
          }

LABEL_171:
          v47 = -(v33 & 1) ^ (v33 >> 1);
          v119 = 60;
          goto LABEL_225;
        case 0x16u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 72) |= 0x2000u;
          while (1)
          {
            v122 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v122 & 0x7F) << v54;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v60 = 0;
              goto LABEL_187;
            }
          }

          if ([a2 hasError])
          {
            v60 = 0;
          }

          else
          {
            v60 = v56;
          }

LABEL_187:
          v47 = -(v60 & 1) ^ (v60 >> 1);
          v119 = 64;
          goto LABEL_225;
        case 0x17u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 72) |= 0x40u;
          while (1)
          {
            v122 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v122 & 0x7F) << v34;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_175;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_175:
          v47 = -(v40 & 1) ^ (v40 >> 1);
          v119 = 36;
          goto LABEL_225;
        case 0x18u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            v122 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v122 & 0x7F) << v20;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_167;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_167:
          v47 = -(v26 & 1) ^ (v26 >> 1);
          v119 = 28;
          goto LABEL_225;
        case 0x19u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            v122 = 0;
            v83 = [a2 position] + 1;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
            {
              v85 = [a2 data];
              [v85 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v82 |= (v122 & 0x7F) << v80;
            if ((v122 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v11 = v81++ >= 9;
            if (v11)
            {
              v86 = 0;
              goto LABEL_205;
            }
          }

          if ([a2 hasError])
          {
            v86 = 0;
          }

          else
          {
            v86 = v82;
          }

LABEL_205:
          v47 = -(v86 & 1) ^ (v86 >> 1);
          v119 = 32;
          goto LABEL_225;
        case 0x1Au:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 72) |= 0x80u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_226;
      }

      while (1)
      {
        v122 = 0;
        v90 = [a2 position] + 1;
        if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
        {
          v92 = [a2 data];
          [v92 getBytes:&v122 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v89 |= (v122 & 0x7F) << v87;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v87 += 7;
        v11 = v88++ >= 9;
        if (v11)
        {
          v93 = 0;
          goto LABEL_209;
        }
      }

      v93 = [a2 hasError] ? 0 : v89;
LABEL_209:
      v47 = -(v93 & 1) ^ (v93 >> 1);
      v119 = 40;
LABEL_225:
      *(a1 + v119) = v47;
LABEL_226:
      v121 = [a2 position];
    }

    while (v121 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularProtocolStackPowerStateReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v50 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v50 & 0x7F) << v39;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_81:
          *(a1 + 8) = v45;
          goto LABEL_91;
        }

        if (v13 != 2)
        {
LABEL_68:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_91;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 8u;
        while (1)
        {
          v54 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v54 & 0x7F) << v21;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_89:
        v47 = 24;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v53 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v53 & 0x7F) << v27;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_73:
            v47 = 16;
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v52 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v52 & 0x7F) << v33;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_77:
            v47 = 20;
            break;
          case 0xF:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v51 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v14;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_85:
            v47 = 28;
            break;
          default:
            goto LABEL_68;
        }
      }

      *(a1 + v47) = v20;
LABEL_91:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogAccessibility()
{
  if (qword_2811F4D48 != -1)
  {
    dispatch_once(&qword_2811F4D48, &__block_literal_global_38);
  }

  v1 = _MergedGlobals_1_35;

  return v1;
}

uint64_t __PLLogAccessibility_block_invoke()
{
  _MergedGlobals_1_35 = os_log_create("com.apple.powerlog", "Accessibility");

  return MEMORY[0x2821F96F8]();
}

id PLLogVideo()
{
  if (qword_2811F4D58 != -1)
  {
    dispatch_once(&qword_2811F4D58, &__block_literal_global_39);
  }

  v1 = _MergedGlobals_1_36;

  return v1;
}

uint64_t __PLLogVideo_block_invoke()
{
  _MergedGlobals_1_36 = os_log_create("com.apple.powerlog", "Video");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLLogAudio_block_invoke()
{
  qword_2811F4D78 = os_log_create("com.apple.powerlog", "audio");

  return MEMORY[0x2821F96F8]();
}

uint64_t KCellularProtocolStackStateReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v50 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v50 & 0x7F) << v39;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_81:
          *(a1 + 8) = v45;
          goto LABEL_91;
        }

        if (v13 != 2)
        {
LABEL_68:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_91;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 0x10u;
        while (1)
        {
          v52 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v52 & 0x7F) << v21;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_89:
        v47 = 28;
      }

      else
      {
        switch(v13)
        {
          case 6:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v54 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v54 & 0x7F) << v27;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_73:
            v47 = 20;
            break;
          case 7:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v53 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v53 & 0x7F) << v33;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_77:
            v47 = 16;
            break;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v51 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v14;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_85:
            v47 = 24;
            break;
          default:
            goto LABEL_68;
        }
      }

      *(a1 + v47) = v20;
LABEL_91:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularRfTunerHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 12)
      {
        break;
      }

      if (v13 == 1)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40[0] & 0x7F) << v31;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v37 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_61:
        *(a1 + 8) = v37;
        goto LABEL_66;
      }

      if (v13 != 3)
      {
        goto LABEL_54;
      }

      v21 = objc_alloc_init(AWDMETRICSKCellularRfTunerHistTunerStateDuration);
      [a1 addTunerStateDuration:v21];
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularRfTunerHistTunerStateDurationReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 0xD:
        v22 = PBReaderReadData();
        v23 = *(a1 + 16);
        *(a1 + 16) = v22;

        goto LABEL_66;
      case 0xE:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v40[0] & 0x7F) << v24;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v30) = 0;
            goto LABEL_57;
          }
        }

        v30 = (v26 != 0) & ~[a2 hasError];
LABEL_57:
        *(a1 + 40) = v30;
        goto LABEL_66;
      case 0xF:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v40[0] & 0x7F) << v14;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_65:
        *(a1 + 24) = v20;
        goto LABEL_66;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_66;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularRfTunerHistTunerStateDurationReadFrom(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v58 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v33;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__rat;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__rat;
            goto LABEL_98;
          case 2:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v57 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v57 & 0x7F) << v48;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__txBand;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__txBand;
LABEL_98:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_101:
            *(a1 + *v22) = v21;
            goto LABEL_102;
          case 3:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v62 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v23;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__port;
                goto LABEL_101;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__port;
            goto LABEL_98;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v43 = 0;
          v44 = 0;
          v16 = 0;
          *(a1 + 36) |= 0x40u;
          while (1)
          {
            v60 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v60 & 0x7F) << v43;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v20 = v44++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__workMode;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__workMode;
          goto LABEL_98;
        }

        if (v13 == 11)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v59 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v28;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__ftQualInd;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__ftQualInd;
          goto LABEL_98;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 36) |= 0x10u;
          while (1)
          {
            v56 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v56 & 0x7F) << v38;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__scenarioDecision;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__scenarioDecision;
          goto LABEL_98;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v61 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v61 & 0x7F) << v14;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__duration;
              goto LABEL_101;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularRfTunerHistTunerStateDuration__duration;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularNrDataInactivityBeforeIdleReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 1u;
            while (1)
            {
              v38 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v38 & 0x7F) << v14;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_61:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_62;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v35 = 16;
      }

      *(a1 + v35) = v27;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *timestampGetTimeval(void *result, uint64_t a2)
{
  v2 = 5 * (*result >> 16) + *result / 0x2667u + 2;
  *a2 = ((v2 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800;
  *(a2 + 8) = 1000 * ((v2 >> 2) - 1000 * (((v2 >> 2) * 0x4189374BC6A7F0uLL) >> 64));
  return result;
}

uint64_t AWDMETRICSKCellularPowerLogCpuPerfLevelsMBinReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 4u;
        while (1)
        {
          v40 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v40 & 0x7F) << v28;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_56:
        v35 = 20;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v39 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v39 & 0x7F) << v21;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_52:
          *(a1 + 8) = v27;
          goto LABEL_62;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_60;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_60:
        v35 = 16;
      }

      *(a1 + v35) = v20;
LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLteComponentCarrierInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v86[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v86[0] & 0x7F) << v5;
        if ((v86[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 6)
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 64) |= 0x100u;
              while (1)
              {
                LOBYTE(v86[0]) = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v86[0] & 0x7F) << v52;
                if ((v86[0] & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_163;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v54;
              }

LABEL_163:
              v83 = 52;
              goto LABEL_180;
            case 5:
              v76 = 0;
              v77 = 0;
              v78 = 0;
              *(a1 + 64) |= 2u;
              while (1)
              {
                LOBYTE(v86[0]) = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  v81 = [a2 data];
                  [v81 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v86[0] & 0x7F) << v76;
                if ((v86[0] & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                v11 = v77++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_179;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v78;
              }

LABEL_179:
              v83 = 24;
              goto LABEL_180;
            case 6:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 64) |= 0x10u;
              while (1)
              {
                LOBYTE(v86[0]) = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v86[0] & 0x7F) << v27;
                if ((v86[0] & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_147;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v29;
              }

LABEL_147:
              v83 = 36;
              goto LABEL_180;
          }
        }

        else
        {
          switch(v13)
          {
            case 1:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              *(a1 + 64) |= 1u;
              while (1)
              {
                LOBYTE(v86[0]) = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v86[0] & 0x7F) << v39;
                if ((v86[0] & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  v45 = 0;
                  goto LABEL_155;
                }
              }

              if ([a2 hasError])
              {
                v45 = 0;
              }

              else
              {
                v45 = v41;
              }

LABEL_155:
              *(a1 + 8) = v45;
              goto LABEL_181;
            case 2:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 64) |= 4u;
              while (1)
              {
                LOBYTE(v86[0]) = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v86[0] & 0x7F) << v64;
                if ((v86[0] & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_171;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v66;
              }

LABEL_171:
              v83 = 28;
              goto LABEL_180;
            case 3:
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 64) |= 0x20u;
              while (1)
              {
                LOBYTE(v86[0]) = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v86[0] & 0x7F) << v14;
                if ((v86[0] & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_139;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v16;
              }

LABEL_139:
              v83 = 40;
LABEL_180:
              *(a1 + v83) = v20;
              goto LABEL_181;
          }
        }

        goto LABEL_134;
      }

      if (v13 <= 9)
      {
        break;
      }

      if (v13 == 10)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 64) |= 0x200u;
        while (1)
        {
          LOBYTE(v86[0]) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v86[0] & 0x7F) << v58;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v11 = v59++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_167;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v60;
        }

LABEL_167:
        v83 = 56;
        goto LABEL_180;
      }

      if (v13 != 11)
      {
        if (v13 == 15)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 64) |= 0x400u;
          while (1)
          {
            LOBYTE(v86[0]) = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v86[0] & 0x7F) << v33;
            if ((v86[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_151;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v35;
          }

LABEL_151:
          v83 = 60;
          goto LABEL_180;
        }

LABEL_134:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_181;
      }

      v82 = objc_alloc_init(ComponentCarrierInfo);
      [a1 addCarrierInfo:v82];
      v86[0] = 0;
      v86[1] = 0;
      if (!PBReaderPlaceMark() || !ComponentCarrierInfoReadFrom(v82, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_181:
      v84 = [a2 position];
      if (v84 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 7:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 64) |= 0x80u;
        while (1)
        {
          LOBYTE(v86[0]) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v86[0] & 0x7F) << v46;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_159;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v48;
        }

LABEL_159:
        v83 = 48;
        goto LABEL_180;
      case 8:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 64) |= 8u;
        while (1)
        {
          LOBYTE(v86[0]) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v86[0] & 0x7F) << v70;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v11 = v71++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_175;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v72;
        }

LABEL_175:
        v83 = 32;
        goto LABEL_180;
      case 9:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 64) |= 0x40u;
        while (1)
        {
          LOBYTE(v86[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v86[0] & 0x7F) << v21;
          if ((v86[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_143:
        v83 = 44;
        goto LABEL_180;
    }

    goto LABEL_134;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPlatformApBbSleepStatsPlatformStateReadFrom(uint64_t a1, void *a2)
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
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v51 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v33;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__bbChipset;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__bbChipset;
            goto LABEL_86;
          case 5:
            v43 = 0;
            v44 = 0;
            v16 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v56 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v43;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v20 = v44++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationMs;
LABEL_86:
            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v16;
            }

LABEL_89:
            *(a1 + *v22) = v21;
            goto LABEL_90;
          case 6:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v55 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v55 & 0x7F) << v23;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationUlpnMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__durationUlpnMs;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v54 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v54 & 0x7F) << v28;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__ap;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__ap;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v53 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v38;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v20 = v39++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__psPrefSim;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__psPrefSim;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
            while (1)
            {
              v52 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v52 & 0x7F) << v14;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__nonPsPrefSim;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState__nonPsPrefSim;
            goto LABEL_86;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_90:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularWcdmaRabStatusReadFrom(uint64_t a1, void *a2)
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
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v50 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v50 & 0x7F) << v39;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_81:
          *(a1 + 8) = v45;
          goto LABEL_91;
        }

        if (v13 != 2)
        {
LABEL_68:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_91;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 32) |= 0x10u;
        while (1)
        {
          v54 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v54 & 0x7F) << v21;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_89:
        v47 = 28;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v53 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v53 & 0x7F) << v27;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_73:
            v47 = 20;
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v52 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v52 & 0x7F) << v33;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_77:
            v47 = 16;
            break;
          case 0xF:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v51 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v14;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_85:
            v47 = 24;
            break;
          default:
            goto LABEL_68;
        }
      }

      *(a1 + v47) = v20;
LABEL_91:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularProtocolStackCpuStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v38[0] & 0x7F) << v29;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_65:
        v35 = 28;
        goto LABEL_66;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(CStat);
      [a1 addCores:v21];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !CStatReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v38[0] & 0x7F) << v22;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v24;
      }

LABEL_61:
      *(a1 + 8) = v28;
      goto LABEL_67;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v38[0] & 0x7F) << v14;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_57:
      v35 = 24;
LABEL_66:
      *(a1 + v35) = v20;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLteCdrxConfigReadFrom(uint64_t a1, void *a2)
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
        v91 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v91 & 0x7F) << v5;
        if ((v91 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 9)
      {
        if (v13 > 12)
        {
          switch(v13)
          {
            case 0xD:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 60) |= 2u;
              while (1)
              {
                v95 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v95 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v95 & 0x7F) << v58;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_173;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v60;
              }

LABEL_173:
              v89 = 16;
              break;
            case 0xE:
              v82 = 0;
              v83 = 0;
              v84 = 0;
              *(a1 + 60) |= 0x800u;
              while (1)
              {
                v94 = 0;
                v85 = [a2 position] + 1;
                if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                {
                  v87 = [a2 data];
                  [v87 getBytes:&v94 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v84 |= (v94 & 0x7F) << v82;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v82 += 7;
                v11 = v83++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_189;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v84;
              }

LABEL_189:
              v89 = 56;
              break;
            case 0xF:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 60) |= 0x400u;
              while (1)
              {
                v93 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v93 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v93 & 0x7F) << v33;
                if ((v93 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_157;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v35;
              }

LABEL_157:
              v89 = 52;
              break;
            default:
LABEL_140:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_191;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xA:
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 60) |= 0x200u;
              while (1)
              {
                v97 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v97 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v97 & 0x7F) << v46;
                if ((v97 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_165;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v48;
              }

LABEL_165:
              v89 = 48;
              break;
            case 0xB:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 60) |= 0x20u;
              while (1)
              {
                v96 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v96 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v96 & 0x7F) << v70;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_181;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v72;
              }

LABEL_181:
              v89 = 32;
              break;
            case 0xC:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 60) |= 0x100u;
              while (1)
              {
                v103 = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v103 & 0x7F) << v21;
                if ((v103 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_149;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v23;
              }

LABEL_149:
              v89 = 44;
              break;
            default:
              goto LABEL_140;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 60) |= 8u;
            while (1)
            {
              v100 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v100 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v100 & 0x7F) << v52;
              if ((v100 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_169;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v54;
            }

LABEL_169:
            v89 = 24;
            break;
          case 5:
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 60) |= 0x10u;
            while (1)
            {
              v99 = 0;
              v79 = [a2 position] + 1;
              if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
              {
                v81 = [a2 data];
                [v81 getBytes:&v99 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v78 |= (v99 & 0x7F) << v76;
              if ((v99 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v11 = v77++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_185;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v78;
            }

LABEL_185:
            v89 = 28;
            break;
          case 7:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 60) |= 0x40u;
            while (1)
            {
              v98 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v98 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v98 & 0x7F) << v27;
              if ((v98 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_153;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v29;
            }

LABEL_153:
            v89 = 36;
            break;
          default:
            goto LABEL_140;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v92 = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v92 & 0x7F) << v39;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_161;
              }
            }

            if ([a2 hasError])
            {
              v45 = 0;
            }

            else
            {
              v45 = v41;
            }

LABEL_161:
            *(a1 + 8) = v45;
            goto LABEL_191;
          case 2:
            v64 = 0;
            v65 = 0;
            v66 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v102 = 0;
              v67 = [a2 position] + 1;
              if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
              {
                v69 = [a2 data];
                [v69 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v66 |= (v102 & 0x7F) << v64;
              if ((v102 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v11 = v65++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_177;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v66;
            }

LABEL_177:
            v89 = 20;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 60) |= 0x80u;
            while (1)
            {
              v101 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v101 & 0x7F) << v14;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_145;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_145:
            v89 = 40;
            break;
          default:
            goto LABEL_140;
        }
      }

      *(a1 + v89) = v20;
LABEL_191:
      v90 = [a2 position];
    }

    while (v90 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSSReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v41 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v33;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__fr;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__fr;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v44 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v23;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__duration;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__duration;
LABEL_64:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_67:
          *(a1 + *v22) = v21;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v43 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v28;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__vddScenarioId;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__vddScenarioId;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v42 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v14;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__sleepStateId;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS__sleepStateId;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}