uint64_t KCellularLteFwDuplexModeReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 15)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 24) |= 2u;
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
            v34 = 0;
            goto LABEL_54;
          }
        }

        v34 = [a2 hasError] ? 0 : v30;
LABEL_54:
        *(a1 + 16) = v34;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 4u;
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
            LOBYTE(v27) = 0;
            goto LABEL_50;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_50:
        *(a1 + 20) = v27;
      }

      else if (v13 == 1)
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
            goto LABEL_58;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_58:
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

      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogButton()
{
  if (qword_2811F4F90 != -1)
  {
    dispatch_once(&qword_2811F4F90, &__block_literal_global_42);
  }

  v1 = _MergedGlobals_1_40;

  return v1;
}

uint64_t __PLLogButton_block_invoke()
{
  _MergedGlobals_1_40 = os_log_create("com.apple.powerlog", "Button");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLLogCoalition_block_invoke()
{
  qword_2811F3148 = os_log_create("com.apple.powerlog", "coalition");

  return MEMORY[0x2821F96F8]();
}

void sub_21A7C0EA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_21A7C7664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose((v11 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t KCellularWcdmaL1StateReadFrom(uint64_t a1, void *a2)
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

void sub_21A7CBF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21A7CC128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TelephonyNotificationCB(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v7 = +[PLBBAgent getBBAgent];
    if (v7)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__12;
      v17 = __Block_byref_object_dispose__12;
      v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a5];
      [v14[5] setObject:@"not set" forKey:@"kCTRegistrationCellChangedNotification"];
      [v14[5] setObject:@"not set" forKey:@"kCTRegistrationStatusChangedNotification"];
      [v14[5] setObject:@"not set" forKey:@"kCTRegistrationDataStatusChangedNotification"];
      [v14[5] setObject:@"not set" forKey:@"kCTRegistrationOperatorNameChangedNotification"];
      if (a3)
      {
        CFRetain(a3);
      }

      v8 = [v7 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __TelephonyNotificationCB_block_invoke;
      block[3] = &unk_27825F7F0;
      v11 = &v13;
      v12 = a3;
      v10 = v7;
      dispatch_async(v8, block);

      _Block_object_dispose(&v13, 8);
    }
  }
}

void sub_21A7CEB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *dataIndicatorToString(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 >= 0x11)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown CTDataIndicatorStatus: %d", a1];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dataIndicatorToString"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:2102];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = v2;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_27825F810[a1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id removeCTPrefixFromString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 hasPrefix:v3])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(v3, "length")}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

void sub_21A7D18B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void TimeUpdateNotificationCB(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 && a5)
  {
    v7 = +[PLBBAgent getBBAgent];
    if (v7)
    {
      if (a3)
      {
        a3 = [MEMORY[0x277CCACA8] stringWithString:a3];
      }

      v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a5];
      if ([a3 isEqualToString:*MEMORY[0x277CC4310]])
      {
        [v7 processTimeUpdateInfoDict:v8];
      }

      else if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v9 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __TimeUpdateNotificationCB_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v9;
        if (qword_2811F3A70 != -1)
        {
          dispatch_once(&qword_2811F3A70, block);
        }

        if (byte_2811F5258 == 1)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"BB time update expected but absent"];
          v11 = MEMORY[0x277D3F178];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          v13 = [v12 lastPathComponent];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TimeUpdateNotificationCB"];
          [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:11998];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v19 = v10;
            _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void TelephonyActivityNotificationCB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __TelephonyActivityNotificationCB_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F3A60 != -1)
    {
      dispatch_once(&qword_2811F3A60, block);
    }

    if (byte_2811F5256 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "TelephonyActivityNotificationCB"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TelephonyActivityNotificationCB"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:11658];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (a5)
  {
    v14 = +[PLBBAgent getBBAgent];
    if (!v14)
    {
LABEL_12:

      goto LABEL_19;
    }

    v15 = [a5 mutableCopy];
    [v14 telephonyActivityNotificationCB_Agent:v15 withName:a3];
LABEL_11:

    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __TelephonyActivityNotificationCB_block_invoke_6529;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v16;
    if (qword_2811F3A68 != -1)
    {
      dispatch_once(&qword_2811F3A68, v22);
    }

    if (byte_2811F5257 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad userInfo in Tel CB"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TelephonyActivityNotificationCB"];
      [v17 logMessage:v14 fromFile:v19 fromFunction:v20 fromLineNumber:11660];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
}

void BasebandResetCallback(void *a1, uint64_t a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"BasebandResetCallback not valid for Protobuf platforms"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BasebandResetCallback"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:11578];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("BasebandResetCallback", "PLBBAgent.m", 11579, "0");
    }
  }

  else if (a3 == -469794815)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v20 = objc_opt_class();
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __BasebandResetCallback_block_invoke_6502;
      v31 = &unk_27825A310;
      v32 = @"Critical";
      v33 = v20;
      if (qword_2811F3A58 != -1)
      {
        dispatch_once(&qword_2811F3A58, &v28);
      }

      v21 = byte_2811F5255;

      if (v21 == 1)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Baseband reset callback: state=recovered", v28, v29, v30, v31];
        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v25 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BasebandResetCallback"];
        [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:11589];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = v22;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [a1 setupBBChannelsWithAction:{1, v28, v29, v30, v31}];
  }

  else if (a3 == -469794816 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __BasebandResetCallback_block_invoke;
    block[3] = &unk_27825A310;
    v35 = @"Critical";
    v36 = v12;
    if (qword_2811F3A50 != -1)
    {
      dispatch_once(&qword_2811F3A50, block);
    }

    v13 = byte_2811F5254;

    if (v13 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Baseband reset callback: state=reset"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BasebandResetCallback"];
      [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:11585];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void preferencesChanged(uint64_t a1, char a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((a2 & 2) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"***error**** unexpected notification type cannot handle"];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"preferencesChanged"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:11700];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v2;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  v2 = +[PLBBAgent getBBAgent];
  if (v2)
  {
    SCPreferencesSynchronize(qword_2811F39F0);
    Value = SCPreferencesGetValue(qword_2811F39F0, @"AirplaneMode");
    v9 = MEMORY[0x277CBED28];
    v10 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __preferencesChanged_block_invoke;
    v29 = &__block_descriptor_40_e5_v8__0lu32l8;
    v30 = v10;
    if (qword_2811F3A00 != -1)
    {
      dispatch_once(&qword_2811F3A00, &block);
    }

    v11 = *v9;
    if (byte_2811F524A == 1)
    {
      v12 = "off";
      if (Value == v11)
      {
        v12 = "on";
      }

      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"AirplaneMode is %s", v12, block, v27, v28, v29, v30];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"preferencesChanged"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:11715];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if (Value == v11)
    {
      v19 = @"on";
    }

    else
    {
      v19 = @"off";
    }

    if ([airplaneModeCurrent isEqualToString:v19])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"***error**** airplane mode chg cb didn't report any chg"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"preferencesChanged"];
      [v20 logMessage:v7 fromFile:v22 fromFunction:v23 fromLineNumber:11720];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong(&airplaneModeCurrent, v19);
      v7 = [v2 telActMsgHelper];
      [v7 setAirplaneMode:airplaneModeCurrent];
      [v7 logPointIntervalTelephonyActivityAirplaneModeChange];
    }

    goto LABEL_21;
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __preferencesChanged_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F524A = result;
  return result;
}

uint64_t __BasebandResetCallback_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F5254 = result;
  return result;
}

uint64_t __BasebandResetCallback_block_invoke_6502(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F5255 = result;
  return result;
}

void __TelephonyNotificationCB_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3BE8]))
  {
    v2 = @"kCTRegistrationCellChangedNotification";
  }

  else if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3E48]))
  {
    v2 = @"kCTRegistrationStatusChangedNotification";
  }

  else if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3CB0]))
  {
    v2 = @"kCTRegistrationDataStatusChangedNotification";
  }

  else if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3D58]))
  {
    v2 = @"kCTRegistrationOperatorNameChangedNotification";
  }

  else
  {
    if (!CFEqual(*(a1 + 48), *MEMORY[0x277CC4310]))
    {
      goto LABEL_12;
    }

    v2 = @"kCTTimeUpdateNotification";
  }

  [*(*(*(a1 + 40) + 8) + 40) setObject:@"Valid" forKey:v2];
LABEL_12:
  [*(a1 + 32) logTelephonyRegMsgWith:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __TelephonyActivityNotificationCB_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5256 = result;
  return result;
}

uint64_t __TelephonyActivityNotificationCB_block_invoke_6529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5257 = result;
  return result;
}

uint64_t __TimeUpdateNotificationCB_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5258 = result;
  return result;
}

void logRunStateNotificationReceived(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *MEMORY[0x277D3F5D0];
    v3 = a2;
    v4 = [(PLOperator *)PLARKitAgent entryKeyForType:v2 andName:@"State"];
    v8 = @"State";
    v9[0] = &unk_282C11D90;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v5];
    [v3 logEntry:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void logPauseStateNotificationReceived(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *MEMORY[0x277D3F5D0];
    v3 = a2;
    v4 = [(PLOperator *)PLARKitAgent entryKeyForType:v2 andName:@"State"];
    v8 = @"State";
    v9[0] = &unk_282C11DA8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v5];
    [v3 logEntry:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t AWDMETRICSCellularPowerLogGSMRRCStateChangeReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
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
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v60 & 0x7F) << v47;
              if ((v60 & 0x80) == 0)
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
            v53 = 32;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 2u;
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
            v53 = 16;
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
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
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
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
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
            v53 = 20;
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

id PPSLogAPFS()
{
  if (qword_2811F7E20 != -1)
  {
    dispatch_once(&qword_2811F7E20, &__block_literal_global_45);
  }

  v1 = qword_2811F7E18;

  return v1;
}

uint64_t __PPSLogAPFS_block_invoke()
{
  qword_2811F7E18 = os_log_create("com.apple.powerlog", "apfs");

  return MEMORY[0x2821F96F8]();
}

uint64_t FilterReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 2u;
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
            v21 = &OBJC_IVAR___Filter__protocol;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___Filter__protocol;
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
    *(a1 + 16) |= 1u;
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
        v21 = &OBJC_IVAR___Filter__port;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___Filter__port;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t pushConfigToAggd(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 aggdTimerFired];
  }

  return result;
}

void sub_21A875E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21A881364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_21A881630(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x21A881604);
  }

  objc_exception_rethrow();
}

void sub_21A882240(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x21A882204);
  }

  objc_exception_rethrow();
}

void sub_21A882AC8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v13 = objc_begin_catch(a1);
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "Error parsing TAHighSoc: %@", &buf, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x21A8829B0);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x21A882A44);
  }

  _Unwind_Resume(a1);
}

void sub_21A882D54(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v13 = objc_begin_catch(a1);
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v13;
        _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "Error parsing lowVoltageResidencyCounters: %@", &buf, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x21A882C1CLL);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x21A882CC8);
  }

  _Unwind_Resume(a1);
}

void sub_21A8830AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x21A8830B8);
  }

  _Unwind_Resume(a1);
}

void sub_21A8830C8(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_21A8830D8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x21A8830E4);
}

void sub_21A8833B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x21A8833C0);
  }

  _Unwind_Resume(a1);
}

void sub_21A8833D4(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_21A8833E4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x21A8833F0);
}

void sub_21A8869CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t block, uint64_t a19, uint64_t (*a20)(uint64_t a1), void *a21, uint64_t a22, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v23 = objc_begin_catch(a1);
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v24 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        a19 = 3221225472;
        a20 = __46__PLBatteryAgent_logEventPointBatteryShutdown__block_invoke;
        a21 = &__block_descriptor_40_e5_v8__0lu32l8;
        a22 = v24;
        if (qword_2811F3C30 != -1)
        {
          dispatch_once(&qword_2811F3C30, &block);
        }

        if (byte_2811F3AA1 == 1)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryShutdown data could not be parsed"];
          v26 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v28 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventPointBatteryShutdown]"];
          [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:7524];

          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v25;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }
      }

      objc_end_catch();
      JUMPOUT(0x21A886984);
    }

    objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_21A886E84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v20 = objc_begin_catch(a1);
      if ([*(v19 + 384) debugEnabled])
      {
        v21 = objc_opt_class();
        a9 = MEMORY[0x277D85DD0];
        a10 = 3221225472;
        a11 = __52__PLBatteryAgent_logEventPointBatteryPanicShutdown___block_invoke_2;
        a12 = &__block_descriptor_40_e5_v8__0lu32l8;
        a13 = v21;
        if (qword_2811F3C38 != -1)
        {
          dispatch_once(&qword_2811F3C38, &a9);
        }

        if (byte_2811F3AA2 == 1)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryPanicShutdown data could not be parsed"];
          v23 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v25 = [v24 lastPathComponent];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventPointBatteryPanicShutdown:]"];
          [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:7569];

          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v22;
            _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }
        }
      }

      objc_end_catch();
      JUMPOUT(0x21A886E38);
    }

    objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_21A889B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(uint64_t a1), void *a26, uint64_t a27)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v28 = objc_begin_catch(exception_object);
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = objc_opt_class();
        a23 = MEMORY[0x277D85DD0];
        a24 = 3221225472;
        a25 = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5061;
        a26 = &__block_descriptor_40_e5_v8__0lu32l8;
        a27 = v29;
        v30 = &a23;
        if (qword_2811F3C58 != -1)
        {
          dispatch_once(&qword_2811F3C58, v30);
        }

        if (byte_2811F3AA6 == 1)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryConfig data could not be parsed"];
          v32 = MEMORY[0x277D3F178];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v34 = [v33 lastPathComponent];
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigWithRawData:]"];
          [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:8015];

          v36 = PLLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *(v27 - 176) = 138412290;
            *(v27 - 172) = v31;
            _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", (v27 - 176), 0xCu);
          }
        }
      }

      objc_end_catch();
      JUMPOUT(0x21A8897F8);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id PLLogBH()
{
  if (qword_2811F3CE8 != -1)
  {
    dispatch_once(&qword_2811F3CE8, &__block_literal_global_5309);
  }

  v1 = qword_2811F3CE0;

  return v1;
}

uint64_t __PLLogBH_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "batteryhealth");
  qword_2811F3CE0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21A8939AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

id PLLogWatchKit()
{
  if (qword_2811F7E38 != -1)
  {
    dispatch_once(&qword_2811F7E38, &__block_literal_global_48);
  }

  v1 = _MergedGlobals_107;

  return v1;
}

uint64_t __PLLogWatchKit_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "WatchKit");
  _MergedGlobals_107 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t RegulatorAverageCurrentReadFrom(uint64_t a1, void *a2)
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
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___RegulatorAverageCurrent__duration64ms;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___RegulatorAverageCurrent__duration64ms;
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
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___RegulatorAverageCurrent__averageCurrentMa;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___RegulatorAverageCurrent__averageCurrentMa;
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
          *(a1 + 24) |= 4u;
          while (1)
          {
            v44 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___RegulatorAverageCurrent__regulatorId;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___RegulatorAverageCurrent__regulatorId;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v43 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___RegulatorAverageCurrent__sampleCount;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___RegulatorAverageCurrent__sampleCount;
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

uint64_t KCellularProtocolStackHistArrayReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v44[0] & 0x7F) << v22;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_67:
        v41 = 36;
        goto LABEL_80;
      }

      if (v13 == 6)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v44[0] & 0x7F) << v28;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v30;
        }

LABEL_71:
        v41 = 16;
LABEL_80:
        *(a1 + v41) = v21;
        goto LABEL_81;
      }

      if (v13 != 7)
      {
        goto LABEL_62;
      }

      v14 = objc_alloc_init(Histogram);
      [a1 addHist:v14];
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !HistogramReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v44[0] & 0x7F) << v34;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          v40 = 0;
          goto LABEL_75;
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

LABEL_75:
      *(a1 + 8) = v40;
      goto LABEL_81;
    }

    if (v13 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v44[0] & 0x7F) << v15;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_79:
      v41 = 32;
      goto LABEL_80;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogNetwork_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "Network");
  qword_2811F61B0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t KCellularCdmaEvdoRrStateReadFrom(uint64_t a1, void *a2)
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

uint64_t AWDMETRICSKCellularPowerLogPlmnSearchEventReadFrom(uint64_t a1, void *a2)
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
        v61 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_94:
            *(a1 + 8) = v39;
            goto LABEL_120;
          case 2:
            v53 = 0;
            v54 = 0;
            v55 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v66 = 0;
              v56 = [a2 position] + 1;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
              {
                v58 = [a2 data];
                [v58 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v55 |= (v66 & 0x7F) << v53;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              v11 = v54++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v55;
            }

LABEL_118:
            v59 = 24;
            break;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v65 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v65 & 0x7F) << v21;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_114;
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

LABEL_114:
            v59 = 20;
            break;
          default:
            goto LABEL_62;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v68 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v68 & 0x7F) << v47;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_102;
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

LABEL_102:
          v59 = 16;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 40) |= 0x40u;
          while (1)
          {
            v67 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v67 & 0x7F) << v27;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_110;
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

LABEL_110:
          v59 = 36;
        }
      }

      else if (v13 == 4)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 40) |= 0x20u;
        while (1)
        {
          v64 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v64 & 0x7F) << v41;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
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

LABEL_98:
        v59 = 32;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_62;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          v63 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v63 & 0x7F) << v14;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_106;
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

LABEL_106:
        v59 = 28;
      }

      *(a1 + v59) = v20;
LABEL_120:
      v60 = [a2 position];
    }

    while (v60 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v47[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47[0] & 0x7F) << v5;
        if ((v47[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 7)
      {
        break;
      }

      if (v13 != 8)
      {
        if (v13 == 15)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v47[0] & 0x7F) << v38;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v40;
          }

LABEL_79:
          v44 = 40;
          goto LABEL_80;
        }

        if (v13 == 16)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v47[0] & 0x7F) << v21;
            if ((v47[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_75;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 44) = v27;
          goto LABEL_81;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
      }

      v35 = objc_alloc_init(AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity);
      [a1 addRxTxAct:v35];
      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivityReadFrom(v35, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v47[0] & 0x7F) << v28;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_69:
        *(a1 + 8) = v34;
        goto LABEL_81;
      case 3:
        v36 = PBReaderReadData();
        v37 = *(a1 + 24);
        *(a1 + 24) = v36;

        goto LABEL_81;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47[0] & 0x7F) << v14;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
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
          v20 = v16;
        }

LABEL_73:
        v44 = 16;
LABEL_80:
        *(a1 + v44) = v20;
        goto LABEL_81;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivityReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
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
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__actState;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__actState;
          goto LABEL_64;
        }

        if (v13 == 7)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
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
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__count;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__count;
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
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__ratDpl;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__ratDpl;
          goto LABEL_64;
        }

        if (v13 == 3)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
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
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__caState;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteNrRxTxActivityStatsRxTxActivity__caState;
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

uint64_t AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBinReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 24) |= 8u;
          while (1)
          {
            v44 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v33;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__duration;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__duration;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__direction;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__direction;
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
          *(a1 + 24) |= 2u;
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
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__ccConfigured;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__ccConfigured;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
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
              v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__ccActivated;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin__ccActivated;
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

uint64_t KCellularProtocolStackPerStateHistReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 40) |= 8u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v44[0] & 0x7F) << v22;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_67:
        v41 = 36;
        goto LABEL_80;
      }

      if (v13 == 6)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v44[0] & 0x7F) << v28;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v30;
        }

LABEL_71:
        v41 = 16;
LABEL_80:
        *(a1 + v41) = v21;
        goto LABEL_81;
      }

      if (v13 != 7)
      {
        goto LABEL_62;
      }

      v14 = objc_alloc_init(StateHist);
      [a1 addHist:v14];
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !StateHistReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v37 = [a2 position] + 1;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
        {
          v39 = [a2 data];
          [v39 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v36 |= (v44[0] & 0x7F) << v34;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v11 = v35++ >= 9;
        if (v11)
        {
          v40 = 0;
          goto LABEL_75;
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

LABEL_75:
      *(a1 + 8) = v40;
      goto LABEL_81;
    }

    if (v13 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v44[0] & 0x7F) << v15;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_79:
      v41 = 32;
      goto LABEL_80;
    }

LABEL_62:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __PLLogNfc_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "nfc");
  _MergedGlobals_1_48 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void logFieldChangedNotificationReceived(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = v2;
  if (v2 && [v2 isDebugEnabled])
  {
    v4 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Field"];
    v9 = @"State";
    v5 = [MEMORY[0x277CCABB0] numberWithBool:logFieldChangedNotificationReceived_fieldState];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v6];
    [v3 fieldChangedWithEntry:v7];
    logFieldChangedNotificationReceived_fieldState ^= 1u;
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t AWDMETRICSKCellularPowerLogRatChangeEventReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v47 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v47 & 0x7F) << v36;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
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
          v20 = v38;
        }

LABEL_73:
        v42 = 20;
LABEL_74:
        *(a1 + v42) = v20;
        goto LABEL_75;
      }

      if (v13 != 15)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_75;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 28) |= 8u;
      while (1)
      {
        v48 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v48 & 0x7F) << v21;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          LOBYTE(v27) = 0;
          goto LABEL_65;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_65:
      *(a1 + 24) = v27;
LABEL_75:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v45 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v45 & 0x7F) << v29;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_69;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_69:
      *(a1 + 8) = v35;
      goto LABEL_75;
    }

    if (v13 != 2)
    {
      goto LABEL_40;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a1 + 28) |= 2u;
    while (1)
    {
      v46 = 0;
      v17 = [a2 position] + 1;
      if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v46 & 0x7F) << v14;
      if ((v46 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v11 = v15++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_63;
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

LABEL_63:
    v42 = 16;
    goto LABEL_74;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSKCellularPowerlogRFSSVoltageLevelsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
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

LABEL_46:
        *(a1 + 16) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSS);
        [a1 addRfssState:v21];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerlogRFSSVoltageLevelsRfSSReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
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

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDMETRICSCellularPowerLog1xEVDORRCStateChangeReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 36) |= 8u;
            while (1)
            {
              v61 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v61 & 0x7F) << v34;
              if ((v61 & 0x80) == 0)
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
            v53 = 24;
            break;
          case 5:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              v60 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v60 & 0x7F) << v47;
              if ((v60 & 0x80) == 0)
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
            v53 = 32;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 2u;
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
            v53 = 16;
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
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v59 = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v59 & 0x7F) << v41;
              if ((v59 & 0x80) == 0)
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
            v53 = 28;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v58 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v58 & 0x7F) << v14;
              if ((v58 & 0x80) == 0)
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
            v53 = 20;
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

void TelephonyNotificationCallback()
{
  v11 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v0 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __TelephonyNotificationCallback_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v0;
    if (qword_2811F7FA0 != -1)
    {
      dispatch_once(&qword_2811F7FA0, block);
    }

    if (byte_2811F7F41 == 1)
    {
      v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"LConnection with CT reseted"];
      v2 = MEMORY[0x277D3F178];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
      v4 = [v3 lastPathComponent];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TelephonyNotificationCallback"];
      [v2 logMessage:v1 fromFile:v4 fromFunction:v5 fromLineNumber:341];

      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v10 = v1;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void ServerConnectionCallback(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __ServerConnectionCallback_block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F7F98 != -1)
    {
      dispatch_once(&qword_2811F7F98, &block);
    }

    if (byte_2811F7F40 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"received unexpected notification: %@", a2, block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ServerConnectionCallback"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:336];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __ServerConnectionCallback_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F40 = result;
  return result;
}

uint64_t __TelephonyNotificationCallback_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F41 = result;
  return result;
}

uint64_t __PLLogPush_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "push");
  _MergedGlobals_1_50 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21A8C33B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AWDMETRICSKCellularPowerLogSleepStatesMBinReadFrom(uint64_t a1, void *a2)
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
            *(a1 + 32) |= 0x20u;
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
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__socSleepState;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__socSleepState;
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
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__durationMs;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__durationMs;
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
            *(a1 + 32) |= 1u;
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
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__count;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__count;
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
            *(a1 + 32) |= 8u;
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
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__rat;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__rat;
            goto LABEL_86;
          case 2:
            v38 = 0;
            v39 = 0;
            v16 = 0;
            *(a1 + 32) |= 0x10u;
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
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__rrcState;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__rrcState;
            goto LABEL_86;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 2u;
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
                v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__deployment;
                goto LABEL_89;
              }
            }

            v22 = &OBJC_IVAR___AWDMETRICSKCellularPowerLogSleepStatesMBin__deployment;
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

uint64_t AWDMETRICSCellularPowerLogPagingDRXCycleReadFrom(uint64_t a1, void *a2)
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
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 8u;
          while (1)
          {
            v45 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v45 & 0x7F) << v35;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v37;
          }

LABEL_75:
          v41 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_77;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v47 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v47 & 0x7F) << v21;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
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

LABEL_67:
          v41 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v44 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_71:
          *(a1 + 8) = v34;
          goto LABEL_77;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v46 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v46 & 0x7F) << v14;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
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

LABEL_63:
        v41 = 20;
      }

      *(a1 + v41) = v20;
LABEL_77:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PLLogHealthKit()
{
  if (qword_2811F6368 != -1)
  {
    dispatch_once(&qword_2811F6368, &__block_literal_global_53);
  }

  v1 = _MergedGlobals_1_51;

  return v1;
}

uint64_t __PLLogHealthKit_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "healthkit");
  _MergedGlobals_1_51 = v0;

  return MEMORY[0x2821F96F8](v0);
}

id PLLogCLPC()
{
  if (qword_2811F6380 != -1)
  {
    dispatch_once(&qword_2811F6380, &__block_literal_global_54);
  }

  v1 = qword_2811F6378;

  return v1;
}

uint64_t __PLLogCLPC_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "clpc");
  qword_2811F6378 = v0;

  return MEMORY[0x2821F96F8](v0);
}

CFTypeRef createIORegObject(io_registry_entry_t a1, const __CFString *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(a2, SystemEncoding);
  CFProperty = IORegistryEntryCreateCFProperty(a1, a2, *MEMORY[0x277CBECE8], 0);
  if (!CFProperty)
  {
    v7 = PLLogCLPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = CStringPtr;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Could not read property %s.", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return CFProperty;
}

uint64_t shouldUseNewCLPCPath()
{
  if (qword_2811F6388 != -1)
  {
    dispatch_once(&qword_2811F6388, &__block_literal_global_95);
  }

  v0 = MEMORY[0x277D3F180];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:_MergedGlobals_1_52];
  [v0 setObject:v1 forKey:@"newCLPCPath" saveToDisk:1];

  return _MergedGlobals_1_52;
}

void __shouldUseNewCLPCPath_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"CLPC Stats" andSubGroup:@"Lost Performance"];
  if (v0)
  {
    goto LABEL_5;
  }

  if (qword_2811F63A8 != -1)
  {
    dispatch_once(&qword_2811F63A8, &__block_literal_global_246);
  }

  if (byte_2811F6371 == 1)
  {
LABEL_5:
    _MergedGlobals_1_52 = v0 == 0;
  }

  v1 = PLLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = _MergedGlobals_1_52;
    _os_log_impl(&dword_21A4C6000, v1, OS_LOG_TYPE_DEFAULT, "newCLPCPath value is %d", v3, 8u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_21A8CB23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21A8CB4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void __clpcIsLegacy_block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = PLLogCLPC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v22 = "AppleCLPC";
    _os_log_debug_impl(&dword_21A4C6000, v0, OS_LOG_TYPE_DEBUG, "Getting service matching %s.", buf, 0xCu);
  }

  v1 = IOServiceMatching("AppleCLPC");
  v2 = PLLogCLPC();
  v3 = v2;
  if (!v1)
  {
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v22 = "AppleCLPC";
    v16 = "Could not find service matching %s.";
    goto LABEL_33;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Getting master port default", buf, 2u);
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1);
  if (!MatchingService)
  {
    v3 = PLLogCLPC();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315138;
    v22 = "AppleCLPC";
    v16 = "Could not get default service for %s.";
LABEL_33:
    _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
LABEL_18:

    v14 = PLLogCLPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v15 = "No CLPC service found";
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v5 = MatchingService;
  valuePtr = 0;
  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(@"#clpc-version", SystemEncoding);
  IORegObject = createIORegObject(v5, @"#clpc-version");
  if (IORegObject)
  {
    v9 = IORegObject;
    v10 = CFGetTypeID(IORegObject);
    if (v10 == CFNumberGetTypeID())
    {
      Value = CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
      v12 = PLLogCLPC();
      v13 = v12;
      if (Value)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v22) = valuePtr;
          _os_log_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_INFO, "Read value: %u", buf, 8u);
        }

        CFRelease(v9);
        if (valuePtr < 2)
        {
          IOObjectRelease(v5);
          v14 = PLLogCLPC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v15 = "System is running legacy CLPC.";
            goto LABEL_31;
          }
        }

        else
        {
          byte_2811F6371 = 1;
          IOObjectRelease(v5);
          v14 = PLLogCLPC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v15 = "System is running AMP CLPC.";
LABEL_31:
            _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 2u);
          }
        }

LABEL_19:

        goto LABEL_27;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136315138;
      v22 = CStringPtr;
      v17 = "Conversion error getting value of key %s.";
    }

    else
    {
      v13 = PLLogCLPC();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        CFRelease(v9);
        goto LABEL_24;
      }

      *buf = 136315138;
      v22 = CStringPtr;
      v17 = "Key %s unexpectedly not a number.";
    }

    _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    goto LABEL_23;
  }

LABEL_24:
  v18 = PLLogCLPC();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "No clpc-version property => legacy CLPC.", buf, 2u);
  }

  IOObjectRelease(v5);
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t AWDMETRICSKCellularPlatformApBbSleepStatsReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 36) |= 8u;
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
            LOBYTE(v28) = 0;
            goto LABEL_65;
          }
        }

        v28 = (v24 != 0) & ~[a2 hasError];
LABEL_65:
        *(a1 + 32) = v28;
        goto LABEL_79;
      }

      if (v13 == 5)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 36) |= 4u;
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
            v21 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v31;
        }

LABEL_69:
        v42 = 20;
LABEL_78:
        *(a1 + v42) = v21;
        goto LABEL_79;
      }

      if (v13 != 6)
      {
        goto LABEL_62;
      }

      v14 = objc_alloc_init(AWDMETRICSKCellularPlatformApBbSleepStatsPlatformState);
      [a1 addState:v14];
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPlatformApBbSleepStatsPlatformStateReadFrom(v14, a2))
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
          goto LABEL_73;
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

LABEL_73:
      *(a1 + 8) = v41;
      goto LABEL_79;
    }

    if (v13 == 3)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v45[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v45[0] & 0x7F) << v15;
        if ((v45[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_77:
      v42 = 16;
      goto LABEL_78;
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

uint64_t AWDMETRICSKCellularPowerLogNRCdrxConfigReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v47) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup);
            v23 = 16;
            goto LABEL_66;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup);
            v15 = 24;
            goto LABEL_53;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 72) |= 8u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v47 & 0x7F) << v31;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  LOBYTE(v37) = 0;
                  goto LABEL_85;
                }
              }

              v37 = (v33 != 0) & ~[a2 hasError];
LABEL_85:
              v44 = 69;
              goto LABEL_92;
            case 9:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *(a1 + 72) |= 4u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v47 & 0x7F) << v38;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  LOBYTE(v37) = 0;
                  goto LABEL_91;
                }
              }

              v37 = (v40 != 0) & ~[a2 hasError];
LABEL_91:
              v44 = 68;
LABEL_92:
              *(a1 + v44) = v37;
              goto LABEL_93;
            case 0x10:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 72) |= 2u;
              while (1)
              {
                LOBYTE(v47) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v47 & 0x7F) << v16;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_89;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_89:
              *(a1 + 64) = v22;
              goto LABEL_93;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v47) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v47 & 0x7F) << v24;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_83:
          *(a1 + 8) = v30;
          goto LABEL_93;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup);
          v23 = 32;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup);
            v15 = 40;
LABEL_53:
            objc_storeStrong((a1 + v15), v14);
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroupReadFrom(v14, a2))
            {
              goto LABEL_95;
            }

            goto LABEL_68;
          case 4:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup);
            v23 = 48;
LABEL_66:
            objc_storeStrong((a1 + v23), v14);
            v47 = 0;
            v48 = 0;
            if (!PBReaderPlaceMark() || !AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroupReadFrom(v14, a2))
            {
LABEL_95:

              return 0;
            }

LABEL_68:
            PBReaderRecallMark();

            goto LABEL_93;
          case 5:
            v14 = objc_alloc_init(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup);
            v15 = 56;
            goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_93:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLtePdcchStateStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v103) = 0;
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v14 > 6)
        {
          if (v14 == 7)
          {
            if (v13 != 2)
            {
              v78 = 0;
              v79 = 0;
              v80 = 0;
              while (1)
              {
                LOBYTE(v103) = 0;
                v81 = [a2 position] + 1;
                if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
                {
                  v83 = [a2 data];
                  [v83 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v80 |= (v103 & 0x7F) << v78;
                if ((v103 & 0x80) == 0)
                {
                  goto LABEL_191;
                }

                v78 += 7;
                v11 = v79++ >= 9;
                if (v11)
                {
                  goto LABEL_192;
                }
              }
            }

            v103 = 0;
            v104 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v64 = [a2 position];
              if (v64 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v65 = 0;
              v66 = 0;
              v67 = 0;
              while (1)
              {
                v105 = 0;
                v68 = [a2 position] + 1;
                if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
                {
                  v70 = [a2 data];
                  [v70 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v67 |= (v105 & 0x7F) << v65;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v11 = v66++ >= 9;
                if (v11)
                {
                  goto LABEL_129;
                }
              }

              [a2 hasError];
LABEL_129:
              PBRepeatedUInt32Add();
            }

LABEL_130:
            PBReaderRecallMark();
            goto LABEL_193;
          }

          if (v14 == 15)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 144) |= 4u;
            while (1)
            {
              LOBYTE(v103) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v103 & 0x7F) << v37;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_144;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v39;
            }

LABEL_144:
            v71 = 140;
            goto LABEL_145;
          }
        }

        else
        {
          if (v14 == 5)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            *(a1 + 144) |= 2u;
            while (1)
            {
              LOBYTE(v103) = 0;
              v54 = [a2 position] + 1;
              if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
              {
                v56 = [a2 data];
                [v56 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v53 |= (v103 & 0x7F) << v51;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v11 = v52++ >= 9;
              if (v11)
              {
                v43 = 0;
                goto LABEL_140;
              }
            }

            if ([a2 hasError])
            {
              v43 = 0;
            }

            else
            {
              v43 = v53;
            }

LABEL_140:
            v71 = 136;
LABEL_145:
            *(a1 + v71) = v43;
            goto LABEL_193;
          }

          if (v14 == 6)
          {
            if (v13 != 2)
            {
              v90 = 0;
              v91 = 0;
              v92 = 0;
              while (1)
              {
                LOBYTE(v103) = 0;
                v93 = [a2 position] + 1;
                if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
                {
                  v95 = [a2 data];
                  [v95 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v92 |= (v103 & 0x7F) << v90;
                if ((v103 & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                v11 = v91++ >= 9;
                if (v11)
                {
                  goto LABEL_192;
                }
              }

LABEL_191:
              [a2 hasError];
LABEL_192:
              PBRepeatedUInt32Add();
              goto LABEL_193;
            }

            v103 = 0;
            v104 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v23 = [a2 position];
              if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_130;
              }

              v24 = 0;
              v25 = 0;
              v26 = 0;
              while (1)
              {
                v105 = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v105 & 0x7F) << v24;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  goto LABEL_53;
                }
              }

              [a2 hasError];
LABEL_53:
              PBRepeatedUInt32Add();
            }
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          if (v13 != 2)
          {
            v72 = 0;
            v73 = 0;
            v74 = 0;
            while (1)
            {
              LOBYTE(v103) = 0;
              v75 = [a2 position] + 1;
              if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
              {
                v77 = [a2 data];
                [v77 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v74 |= (v103 & 0x7F) << v72;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_191;
              }

              v72 += 7;
              v11 = v73++ >= 9;
              if (v11)
              {
                goto LABEL_192;
              }
            }
          }

          v103 = 0;
          v104 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v57 = [a2 position];
            if (v57 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_130;
            }

            v58 = 0;
            v59 = 0;
            v60 = 0;
            while (1)
            {
              v105 = 0;
              v61 = [a2 position] + 1;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v60 |= (v105 & 0x7F) << v58;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              v11 = v59++ >= 9;
              if (v11)
              {
                goto LABEL_114;
              }
            }

            [a2 hasError];
LABEL_114:
            PBRepeatedUInt32Add();
          }
        }

        if (v14 == 4)
        {
          if (v13 != 2)
          {
            v96 = 0;
            v97 = 0;
            v98 = 0;
            while (1)
            {
              LOBYTE(v103) = 0;
              v99 = [a2 position] + 1;
              if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
              {
                v101 = [a2 data];
                [v101 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v98 |= (v103 & 0x7F) << v96;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_191;
              }

              v96 += 7;
              v11 = v97++ >= 9;
              if (v11)
              {
                goto LABEL_192;
              }
            }
          }

          v103 = 0;
          v104 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v30 = [a2 position];
            if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_130;
            }

            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              v105 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v105 & 0x7F) << v31;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                goto LABEL_70;
              }
            }

            [a2 hasError];
LABEL_70:
            PBRepeatedUInt32Add();
          }
        }
      }

      else
      {
        if (v14 == 1)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 144) |= 1u;
          while (1)
          {
            LOBYTE(v103) = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v103 & 0x7F) << v44;
            if ((v103 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v50 = 0;
              goto LABEL_136;
            }
          }

          if ([a2 hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v46;
          }

LABEL_136:
          *(a1 + 128) = v50;
          goto LABEL_193;
        }

        if (v14 == 2)
        {
          if (v13 != 2)
          {
            v84 = 0;
            v85 = 0;
            v86 = 0;
            while (1)
            {
              LOBYTE(v103) = 0;
              v87 = [a2 position] + 1;
              if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
              {
                v89 = [a2 data];
                [v89 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v86 |= (v103 & 0x7F) << v84;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_191;
              }

              v84 += 7;
              v11 = v85++ >= 9;
              if (v11)
              {
                goto LABEL_192;
              }
            }
          }

          v103 = 0;
          v104 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_130;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v105 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v105 & 0x7F) << v17;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_193:
      v102 = [a2 position];
    }

    while (v102 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularRrcModeHistReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v192 = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v192 & 0x7F) << v5;
          if ((v192 & 0x80) == 0)
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
        if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
        {
          switch((v12 >> 3))
          {
            case 1u:
              v13 = 0;
              v14 = 0;
              v15 = 0;
              *(a1 + 128) |= 1u;
              while (1)
              {
                v192 = 0;
                v16 = [a2 position] + 1;
                if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
                {
                  v18 = [a2 data];
                  [v18 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v15 |= (v192 & 0x7F) << v13;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v13 += 7;
                v11 = v14++ >= 9;
                if (v11)
                {
                  v19 = 0;
LABEL_341:
                  *(a1 + 8) = v19;
                  goto LABEL_399;
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

              goto LABEL_341;
            case 2u:
              v106 = 0;
              v107 = 0;
              v108 = 0;
              *(a1 + 128) |= 0x4000u;
              while (1)
              {
                v192 = 0;
                v109 = [a2 position] + 1;
                if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
                {
                  v111 = [a2 data];
                  [v111 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v108 |= (v192 & 0x7F) << v106;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v106 += 7;
                v11 = v107++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_345;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v108;
              }

LABEL_345:
              v190 = 68;
              goto LABEL_398;
            case 3u:
              v82 = 0;
              v83 = 0;
              v84 = 0;
              *(a1 + 128) |= 0x8000u;
              while (1)
              {
                v192 = 0;
                v85 = [a2 position] + 1;
                if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
                {
                  v87 = [a2 data];
                  [v87 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v84 |= (v192 & 0x7F) << v82;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v82 += 7;
                v11 = v83++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_325;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v84;
              }

LABEL_325:
              v190 = 72;
              goto LABEL_398;
            case 4u:
              v94 = 0;
              v95 = 0;
              v96 = 0;
              *(a1 + 128) |= 0x10000u;
              while (1)
              {
                v192 = 0;
                v97 = [a2 position] + 1;
                if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
                {
                  v99 = [a2 data];
                  [v99 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 |= (v192 & 0x7F) << v94;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                v11 = v95++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_333;
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

LABEL_333:
              v190 = 76;
              goto LABEL_398;
            case 5u:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 128) |= 0x100000u;
              while (1)
              {
                v192 = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v192 & 0x7F) << v52;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_305;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v54;
              }

LABEL_305:
              v190 = 92;
              goto LABEL_398;
            case 6u:
              v124 = 0;
              v125 = 0;
              v126 = 0;
              *(a1 + 128) |= 0x200000u;
              while (1)
              {
                v192 = 0;
                v127 = [a2 position] + 1;
                if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
                {
                  v129 = [a2 data];
                  [v129 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v126 |= (v192 & 0x7F) << v124;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v124 += 7;
                v11 = v125++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_357;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v126;
              }

LABEL_357:
              v190 = 96;
              goto LABEL_398;
            case 7u:
              v142 = 0;
              v143 = 0;
              v144 = 0;
              *(a1 + 128) |= 0x400000u;
              while (1)
              {
                v192 = 0;
                v145 = [a2 position] + 1;
                if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
                {
                  v147 = [a2 data];
                  [v147 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v144 |= (v192 & 0x7F) << v142;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v142 += 7;
                v11 = v143++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_369;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v144;
              }

LABEL_369:
              v190 = 100;
              goto LABEL_398;
            case 8u:
              v100 = 0;
              v101 = 0;
              v102 = 0;
              *(a1 + 128) |= 0x800000u;
              while (1)
              {
                v192 = 0;
                v103 = [a2 position] + 1;
                if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
                {
                  v105 = [a2 data];
                  [v105 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v102 |= (v192 & 0x7F) << v100;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v100 += 7;
                v11 = v101++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_337;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v102;
              }

LABEL_337:
              v190 = 104;
              goto LABEL_398;
            case 9u:
              v160 = 0;
              v161 = 0;
              v162 = 0;
              *(a1 + 128) |= 0x1000000u;
              while (1)
              {
                v192 = 0;
                v163 = [a2 position] + 1;
                if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
                {
                  v165 = [a2 data];
                  [v165 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v162 |= (v192 & 0x7F) << v160;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v160 += 7;
                v11 = v161++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_381;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v162;
              }

LABEL_381:
              v190 = 108;
              goto LABEL_398;
            case 0xAu:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              *(a1 + 128) |= 0x2000000u;
              while (1)
              {
                v192 = 0;
                v67 = [a2 position] + 1;
                if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
                {
                  v69 = [a2 data];
                  [v69 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v66 |= (v192 & 0x7F) << v64;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v11 = v65++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_313;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v66;
              }

LABEL_313:
              v190 = 112;
              goto LABEL_398;
            case 0xBu:
              v154 = 0;
              v155 = 0;
              v156 = 0;
              *(a1 + 128) |= 0x4000000u;
              while (1)
              {
                v192 = 0;
                v157 = [a2 position] + 1;
                if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
                {
                  v159 = [a2 data];
                  [v159 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v156 |= (v192 & 0x7F) << v154;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v154 += 7;
                v11 = v155++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_377;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v156;
              }

LABEL_377:
              v190 = 116;
              goto LABEL_398;
            case 0xCu:
              v46 = 0;
              v47 = 0;
              v48 = 0;
              *(a1 + 128) |= 0x8000000u;
              while (1)
              {
                v192 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v192 & 0x7F) << v46;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_301;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v48;
              }

LABEL_301:
              v190 = 120;
              goto LABEL_398;
            case 0xDu:
              v58 = 0;
              v59 = 0;
              v60 = 0;
              *(a1 + 128) |= 0x20000u;
              while (1)
              {
                v192 = 0;
                v61 = [a2 position] + 1;
                if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
                {
                  v63 = [a2 data];
                  [v63 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v60 |= (v192 & 0x7F) << v58;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v11 = v59++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_309;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v60;
              }

LABEL_309:
              v190 = 80;
              goto LABEL_398;
            case 0xEu:
              v136 = 0;
              v137 = 0;
              v138 = 0;
              *(a1 + 128) |= 0x40000u;
              while (1)
              {
                v192 = 0;
                v139 = [a2 position] + 1;
                if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
                {
                  v141 = [a2 data];
                  [v141 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v138 |= (v192 & 0x7F) << v136;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v136 += 7;
                v11 = v137++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_365;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v138;
              }

LABEL_365:
              v190 = 84;
              goto LABEL_398;
            case 0xFu:
              v39 = 0;
              v40 = 0;
              v41 = 0;
              *(a1 + 128) |= 0x80000u;
              while (1)
              {
                v192 = 0;
                v42 = [a2 position] + 1;
                if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                {
                  v44 = [a2 data];
                  [v44 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v41 |= (v192 & 0x7F) << v39;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                v11 = v40++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_293;
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

LABEL_293:
              v190 = 88;
              goto LABEL_398;
            case 0x10u:
              v88 = 0;
              v89 = 0;
              v90 = 0;
              *(a1 + 128) |= 2u;
              while (1)
              {
                v192 = 0;
                v91 = [a2 position] + 1;
                if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
                {
                  v93 = [a2 data];
                  [v93 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v90 |= (v192 & 0x7F) << v88;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v88 += 7;
                v11 = v89++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_329;
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

LABEL_329:
              v190 = 16;
              goto LABEL_398;
            case 0x11u:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 128) |= 4u;
              while (1)
              {
                v192 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v192 & 0x7F) << v33;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_289;
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

LABEL_289:
              v190 = 20;
              goto LABEL_398;
            case 0x12u:
              v112 = 0;
              v113 = 0;
              v114 = 0;
              *(a1 + 128) |= 0x40u;
              while (1)
              {
                v192 = 0;
                v115 = [a2 position] + 1;
                if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
                {
                  v117 = [a2 data];
                  [v117 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v114 |= (v192 & 0x7F) << v112;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v112 += 7;
                v11 = v113++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_349;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v114;
              }

LABEL_349:
              v190 = 36;
              goto LABEL_398;
            case 0x13u:
              v148 = 0;
              v149 = 0;
              v150 = 0;
              *(a1 + 128) |= 0x80u;
              while (1)
              {
                v192 = 0;
                v151 = [a2 position] + 1;
                if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
                {
                  v153 = [a2 data];
                  [v153 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v150 |= (v192 & 0x7F) << v148;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v148 += 7;
                v11 = v149++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_373;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v150;
              }

LABEL_373:
              v190 = 40;
              goto LABEL_398;
            case 0x14u:
              v172 = 0;
              v173 = 0;
              v174 = 0;
              *(a1 + 128) |= 0x100u;
              while (1)
              {
                v192 = 0;
                v175 = [a2 position] + 1;
                if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
                {
                  v177 = [a2 data];
                  [v177 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v174 |= (v192 & 0x7F) << v172;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v172 += 7;
                v11 = v173++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_389;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v174;
              }

LABEL_389:
              v190 = 44;
              goto LABEL_398;
            case 0x15u:
              v118 = 0;
              v119 = 0;
              v120 = 0;
              *(a1 + 128) |= 0x200u;
              while (1)
              {
                v192 = 0;
                v121 = [a2 position] + 1;
                if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
                {
                  v123 = [a2 data];
                  [v123 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v120 |= (v192 & 0x7F) << v118;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v118 += 7;
                v11 = v119++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_353;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v120;
              }

LABEL_353:
              v190 = 48;
              goto LABEL_398;
            case 0x16u:
              v130 = 0;
              v131 = 0;
              v132 = 0;
              *(a1 + 128) |= 0x400u;
              while (1)
              {
                v192 = 0;
                v133 = [a2 position] + 1;
                if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
                {
                  v135 = [a2 data];
                  [v135 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v132 |= (v192 & 0x7F) << v130;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v130 += 7;
                v11 = v131++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_361;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v132;
              }

LABEL_361:
              v190 = 52;
              goto LABEL_398;
            case 0x17u:
              v166 = 0;
              v167 = 0;
              v168 = 0;
              *(a1 + 128) |= 0x800u;
              while (1)
              {
                v192 = 0;
                v169 = [a2 position] + 1;
                if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
                {
                  v171 = [a2 data];
                  [v171 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v168 |= (v192 & 0x7F) << v166;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v166 += 7;
                v11 = v167++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_385;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v168;
              }

LABEL_385:
              v190 = 56;
              goto LABEL_398;
            case 0x18u:
              v178 = 0;
              v179 = 0;
              v180 = 0;
              *(a1 + 128) |= 0x1000u;
              while (1)
              {
                v192 = 0;
                v181 = [a2 position] + 1;
                if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
                {
                  v183 = [a2 data];
                  [v183 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v180 |= (v192 & 0x7F) << v178;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v178 += 7;
                v11 = v179++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_393;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v180;
              }

LABEL_393:
              v190 = 60;
              goto LABEL_398;
            case 0x19u:
              v76 = 0;
              v77 = 0;
              v78 = 0;
              *(a1 + 128) |= 0x2000u;
              while (1)
              {
                v192 = 0;
                v79 = [a2 position] + 1;
                if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                {
                  v81 = [a2 data];
                  [v81 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v78 |= (v192 & 0x7F) << v76;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v76 += 7;
                v11 = v77++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_321;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v78;
              }

LABEL_321:
              v190 = 64;
              goto LABEL_398;
            case 0x1Au:
              v70 = 0;
              v71 = 0;
              v72 = 0;
              *(a1 + 128) |= 8u;
              while (1)
              {
                v192 = 0;
                v73 = [a2 position] + 1;
                if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
                {
                  v75 = [a2 data];
                  [v75 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v72 |= (v192 & 0x7F) << v70;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                v11 = v71++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_317;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v72;
              }

LABEL_317:
              v190 = 24;
              goto LABEL_398;
            case 0x1Bu:
              v184 = 0;
              v185 = 0;
              v186 = 0;
              *(a1 + 128) |= 0x10u;
              while (1)
              {
                v192 = 0;
                v187 = [a2 position] + 1;
                if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
                {
                  v189 = [a2 data];
                  [v189 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v186 |= (v192 & 0x7F) << v184;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v184 += 7;
                v11 = v185++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_397;
                }
              }

              if ([a2 hasError])
              {
                v26 = 0;
              }

              else
              {
                v26 = v186;
              }

LABEL_397:
              v190 = 28;
              goto LABEL_398;
            case 0x1Cu:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 128) |= 0x20u;
              while (1)
              {
                v192 = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v192 & 0x7F) << v27;
                if ((v192 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  v26 = 0;
                  goto LABEL_285;
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

LABEL_285:
              v190 = 32;
              goto LABEL_398;
            default:
              if ((v12 >> 3) == 127)
              {
                v20 = 0;
                v21 = 0;
                v22 = 0;
                *(a1 + 128) |= 0x10000000u;
                while (1)
                {
                  v192 = 0;
                  v23 = [a2 position] + 1;
                  if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
                  {
                    v25 = [a2 data];
                    [v25 getBytes:&v192 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v22 |= (v192 & 0x7F) << v20;
                  if ((v192 & 0x80) == 0)
                  {
                    break;
                  }

                  v20 += 7;
                  v11 = v21++ >= 9;
                  if (v11)
                  {
                    v26 = 0;
                    goto LABEL_297;
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

LABEL_297:
                v190 = 124;
LABEL_398:
                *(a1 + v190) = v26;
              }

              else
              {
                result = PBReaderSkipValueWithTag();
                if (!result)
                {
                  return result;
                }
              }

LABEL_399:
              v191 = [a2 position];
              if (v191 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              continue;
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t KCellularLtePagingCycleReadFrom(uint64_t a1, void *a2)
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
          case 6:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 36) |= 8u;
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
            v53 = 24;
            break;
          case 0xF:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 0x20u;
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
            v53 = 32;
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
            *(a1 + 36) |= 2u;
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
            v53 = 16;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 0x10u;
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
            v53 = 28;
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