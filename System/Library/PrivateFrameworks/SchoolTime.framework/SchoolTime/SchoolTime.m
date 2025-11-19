id SCLInterruptBehaviorResolutionXPCServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28762F270];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_resolveBehaviorForEvent_clientIdentifier_completion_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_resolveBehaviorForEvent_clientIdentifier_completion_ argumentIndex:0 ofReply:1];

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_resolveBehaviorForEvent_clientIdentifier_completion_ argumentIndex:1 ofReply:1];

  return v0;
}

uint64_t SCLPBUnlockHistoryItemReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v53) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v53 & 0x7F) << v40;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v42;
            }

LABEL_82:
            v47 = 32;
          }

          else
          {
            if (v13 != 8)
            {
LABEL_73:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_97;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v53 & 0x7F) << v25;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v27;
            }

LABEL_90:
            v47 = 36;
          }
        }

        else if (v13 == 5)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            LOBYTE(v53) = 0;
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
              v22 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v35;
          }

LABEL_78:
          v47 = 40;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_73;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 56) |= 0x20u;
          while (1)
          {
            LOBYTE(v53) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v53 & 0x7F) << v16;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_86;
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

LABEL_86:
          v47 = 44;
        }

        *(a1 + v47) = v22;
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v23 = PBReaderReadString();
          v24 = 24;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_73;
          }

          v23 = PBReaderReadString();
          v24 = 48;
        }

        v39 = *(a1 + v24);
        *(a1 + v24) = v23;
      }

      else
      {
        if (v13 == 1)
        {
          *(a1 + 56) |= 2u;
          v53 = 0;
          v31 = [a2 position] + 8;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v53;
          v50 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_73;
          }

          *(a1 + 56) |= 1u;
          v53 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v53;
          v50 = 8;
        }

        *(a1 + v50) = v49;
      }

LABEL_97:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_26482C990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26482CDF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t SCLPBScheduleSettingsReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 5)
      {
        v28 = objc_alloc_init(SCLPBScheduleRecurrence);
        [a1 addRecurrences:v28];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SCLPBScheduleRecurrenceReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_44;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_44:
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
            goto LABEL_48;
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

LABEL_48:
        *(a1 + 16) = v20;
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

void sub_264831CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2648333FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SCLMutableScheduleSettings *SCLScheduleSettingsFromSCLPBScheduleSettings(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(SCLMutableScheduleSettings);
  -[SCLMutableScheduleSettings setEnabled:](v2, "setEnabled:", [v1 isEnabled]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v1 recurrences];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = SCLScheduleRecurrenceForSCLPBScheduleRecurrence(*(*(&v13 + 1) + 8 * i));
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [[SCLRecurrenceSchedule alloc] initWithRecurrences:v3];
  [(SCLMutableScheduleSettings *)v2 setSchedule:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

SCLScheduleRecurrence *SCLScheduleRecurrenceForSCLPBScheduleRecurrence(void *a1)
{
  v1 = a1;
  v2 = [v1 timeInterval];
  v3 = [v2 startTime];
  v4 = SCLScheduleTimeForSCLPBScheduleTime(v3);

  v5 = [v1 timeInterval];
  v6 = [v5 endTime];
  v7 = SCLScheduleTimeForSCLPBScheduleTime(v6);

  v8 = [[SCLTimeInterval alloc] initWithStartTime:v4 endTime:v7];
  LODWORD(v6) = [v1 day];

  v9 = [[SCLScheduleRecurrence alloc] initWithTimeInterval:v8 day:v6];

  return v9;
}

SCLPBScheduleSettings *SCLPBScheduleSettingsFromSCLScheduleSettings(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(SCLPBScheduleSettings);
  -[SCLPBScheduleSettings setIsEnabled:](v2, "setIsEnabled:", [v1 isEnabled]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v1 schedule];
  v5 = [v4 recurrences];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SCLPBScheduleRecurrenceForSCLScheduleRecurrence(*(*(&v13 + 1) + 8 * i));
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(SCLPBScheduleSettings *)v2 setRecurrences:v3];
  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

SCLPBScheduleRecurrence *SCLPBScheduleRecurrenceForSCLScheduleRecurrence(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SCLPBScheduleRecurrence);
  -[SCLPBScheduleRecurrence setDay:](v2, "setDay:", [v1 day]);
  v3 = objc_alloc_init(SCLPBTimeInterval);
  v4 = [v1 timeInterval];
  v5 = [v4 startTime];
  v6 = SCLPBScheduleTimeForSCLScheduleTime(v5);
  [(SCLPBTimeInterval *)v3 setStartTime:v6];

  v7 = [v1 timeInterval];

  v8 = [v7 endTime];
  v9 = SCLPBScheduleTimeForSCLScheduleTime(v8);
  [(SCLPBTimeInterval *)v3 setEndTime:v9];

  [(SCLPBScheduleRecurrence *)v2 setTimeInterval:v3];

  return v2;
}

SCLPBScheduleTime *SCLPBScheduleTimeForSCLScheduleTime(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SCLPBScheduleTime);
  -[SCLPBScheduleTime setHour:](v2, "setHour:", [v1 hour]);
  v3 = [v1 minute];

  [(SCLPBScheduleTime *)v2 setMinute:v3];

  return v2;
}

SCLScheduleTime *SCLScheduleTimeForSCLPBScheduleTime(void *a1)
{
  v1 = a1;
  if (SCLPBScheduleTimeIsEmpty(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = -[SCLScheduleTime initWithHour:minute:]([SCLScheduleTime alloc], "initWithHour:minute:", [v1 hour], objc_msgSend(v1, "minute"));
  }

  return v2;
}

SCLPBScheduleTime *SCLPBEmptyScheduleTime()
{
  v0 = objc_alloc_init(SCLPBScheduleTime);

  return v0;
}

uint64_t SCLPBScheduleTimeIsEmpty(void *a1)
{
  v1 = a1;
  if ([v1 hasHour])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 hasMinute] ^ 1;
  }

  return v2;
}

SCLPBUnlockHistoryItem *SCLPBUnlockHistoryItemFromSCLUnlockHistoryItem(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SCLPBUnlockHistoryItem);
  v3 = [v1 unlockedInterval];
  v4 = [v3 startDate];
  [v4 timeIntervalSinceReferenceDate];
  [(SCLPBUnlockHistoryItem *)v2 setStartTimeIntervalSinceReferenceDate:?];

  v5 = [v1 unlockedInterval];
  [v5 duration];
  [(SCLPBUnlockHistoryItem *)v2 setDuration:?];

  v6 = [v1 calendar];
  v7 = [v6 calendarIdentifier];
  [(SCLPBUnlockHistoryItem *)v2 setCalendarIdentifier:v7];

  v8 = [v1 timeZone];
  v9 = [v8 name];
  [(SCLPBUnlockHistoryItem *)v2 setTimeZoneName:v9];

  v10 = [v1 scheduleStartTime];
  -[SCLPBUnlockHistoryItem setScheduleStartHour:](v2, "setScheduleStartHour:", [v10 hour]);

  v11 = [v1 scheduleStartTime];
  -[SCLPBUnlockHistoryItem setScheduleStartMinute:](v2, "setScheduleStartMinute:", [v11 minute]);

  v12 = [v1 scheduleEndTime];
  -[SCLPBUnlockHistoryItem setScheduleEndHour:](v2, "setScheduleEndHour:", [v12 hour]);

  v13 = [v1 scheduleEndTime];

  -[SCLPBUnlockHistoryItem setScheduleEndMinute:](v2, "setScheduleEndMinute:", [v13 minute]);

  return v2;
}

SCLUnlockHistoryItem *SCLUnlockHistoryItemFromSCLPBUnlockHistoryItem(void *a1)
{
  v1 = MEMORY[0x277CBEAA8];
  v2 = a1;
  [v2 startTimeIntervalSinceReferenceDate];
  v3 = [v1 dateWithTimeIntervalSinceReferenceDate:?];
  [v2 duration];
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v3 duration:v5];
  v7 = MEMORY[0x277CBEA80];
  v8 = [v2 calendarIdentifier];
  v9 = [v7 calendarWithIdentifier:v8];

  v10 = MEMORY[0x277CBEBB0];
  v11 = [v2 timeZoneName];
  v12 = [v10 timeZoneWithName:v11];

  v13 = -[SCLScheduleTime initWithHour:minute:]([SCLScheduleTime alloc], "initWithHour:minute:", [v2 scheduleStartHour], objc_msgSend(v2, "scheduleStartMinute"));
  v14 = [SCLScheduleTime alloc];
  v15 = [v2 scheduleEndHour];
  v16 = [v2 scheduleEndMinute];

  v17 = [(SCLScheduleTime *)v14 initWithHour:v15 minute:v16];
  v18 = [[SCLUnlockHistoryItem alloc] initWithInterval:v6 calendar:v9 timeZone:v12 startTime:v13 endTime:v17];

  return v18;
}

void sub_2648355F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264835DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state, char a26)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a26, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id scl_persistence_log()
{
  if (scl_persistence_log_onceToken != -1)
  {
    scl_persistence_log_cold_1();
  }

  v1 = scl_persistence_log___logger;

  return v1;
}

uint64_t __scl_persistence_log_block_invoke()
{
  scl_persistence_log___logger = os_log_create("com.apple.SchoolTime", "persistence");

  return MEMORY[0x2821F96F8]();
}

id scl_pairing_log()
{
  if (scl_pairing_log_onceToken != -1)
  {
    scl_pairing_log_cold_1();
  }

  v1 = scl_pairing_log___logger;

  return v1;
}

uint64_t __scl_pairing_log_block_invoke()
{
  scl_pairing_log___logger = os_log_create("com.apple.SchoolTime", "pairing");

  return MEMORY[0x2821F96F8]();
}

id scl_transport_log()
{
  if (scl_transport_log_onceToken != -1)
  {
    scl_transport_log_cold_1();
  }

  v1 = scl_transport_log___logger;

  return v1;
}

uint64_t __scl_transport_log_block_invoke()
{
  scl_transport_log___logger = os_log_create("com.apple.SchoolTime", "transport");

  return MEMORY[0x2821F96F8]();
}

id scl_framework_log()
{
  if (scl_framework_log_onceToken != -1)
  {
    scl_framework_log_cold_1();
  }

  v1 = scl_framework_log___logger;

  return v1;
}

uint64_t __scl_framework_log_block_invoke()
{
  scl_framework_log___logger = os_log_create("com.apple.SchoolTime", "framework");

  return MEMORY[0x2821F96F8]();
}

id scl_interrupt_log()
{
  if (scl_interrupt_log_onceToken != -1)
  {
    scl_interrupt_log_cold_1();
  }

  v1 = scl_interrupt_log___logger;

  return v1;
}

uint64_t __scl_interrupt_log_block_invoke()
{
  scl_interrupt_log___logger = os_log_create("com.apple.SchoolTime", "interrupt");

  return MEMORY[0x2821F96F8]();
}

_DWORD *SCLSStateDataWithTitleDescriptionAndHints(void *a1, uint64_t a2)
{
  v3 = a1;
  v9 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a2 format:200 options:0 error:&v9];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    v7 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
    *v7 = 1;
    v7[1] = v6;
    [v3 UTF8String];
    __strlcpy_chk();
    memcpy(v7 + 50, [v5 bytes], v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_264838B2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26483A4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_26483A82C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26483B700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t SCLIsStateTransitionStartOfUnlockPeriod(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 activeState] == 2 || objc_msgSend(v3, "activeState") == 1)
  {
    v5 = [v3 isInSchedule];
  }

  else
  {
    v5 = 0;
  }

  if ([v4 activeState])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isInSchedule];
  }

  return v5 & v6;
}

uint64_t SCLIsStateTransitionEndOfUnlockPeriod(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isInSchedule])
  {
    v5 = [v3 activeState] == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 activeState] == 2 || objc_msgSend(v4, "activeState") == 1;
  v7 = v6 | [v4 isInSchedule] ^ 1;
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t SCLPBScheduleRequestResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SCLPBScheduleSettings);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SCLPBScheduleSettingsReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SCLPBScheduleRecurrenceReadFrom(uint64_t a1, void *a2)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SCLPBTimeInterval);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SCLPBTimeIntervalReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

uint64_t SCLPBScheduleRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_26483FE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t SCLPBTimeIntervalReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SCLPBScheduleTime);
        v14 = 8;
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

        v13 = objc_alloc_init(SCLPBScheduleTime);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !SCLPBScheduleTimeReadFrom(v13, a2))
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

id SCLSuppressSchoolModeAssertionXPCServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287631328];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_acquireWithExplanation_UUID_completion_ argumentIndex:1 ofReply:0];

  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_acquireWithExplanation_UUID_completion_ argumentIndex:1 ofReply:1];

  return v0;
}

void sub_264843F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2648444B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void SCLWatchServerRun()
{
  v0 = +[SCLWatchServer sharedWatchServer];
  [v0 run];
}

void sub_264845944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SCLRepeatScheduleContainsDay(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = (1 << (a2 - 1));
  }

  return (v2 & a1) != 0;
}

uint64_t SCLRepeatScheduleForDay(uint64_t a1)
{
  if ((a1 - 1) >= 7)
  {
    return 0;
  }

  else
  {
    return (1 << (a1 - 1));
  }
}

uint64_t SCLEnumerateDaysInRepeatSchedule(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = 1; i != 8; ++i)
  {
    if (((1 << (i - 1)) & v3) != 0)
    {
      result = (*(a2 + 16))(a2, i);
    }
  }

  return result;
}

uint64_t SCLGetNextDay(uint64_t a1)
{
  if (a1 == 7)
  {
    return 1;
  }

  else
  {
    return a1 + 1;
  }
}

uint64_t SCLGetPreviousDay(uint64_t a1)
{
  if (a1 == 1)
  {
    return 7;
  }

  else
  {
    return a1 - 1;
  }
}

id NSStringForSCLDay(uint64_t a1)
{
  if (NSStringForSCLDay_onceToken != -1)
  {
    NSStringForSCLDay_cold_1();
  }

  v2 = [NSStringForSCLDay_formatter weekdaySymbols];
  v3 = [v2 objectAtIndex:a1 - 1];

  return v3;
}

void __NSStringForSCLDay_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = NSStringForSCLDay_formatter;
  NSStringForSCLDay_formatter = v0;

  v2 = NSStringForSCLDay_formatter;
  v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:v3];
}

void sub_264846BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264846EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264847608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *StringFromSCLInterruptEventType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_279B6CA70[a1];
  }
}

__CFString *StringFromSCLInterruptEventUrgency(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"critical";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"default";
  }
}

uint64_t SCLIsNRDeviceEligibleForSchoolTime(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    goto LABEL_11;
  }

  v6 = [v3 pairingID];

  if (!v6)
  {
    v9 = scl_pairing_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SCLIsNRDeviceEligibleForSchoolTime_cold_2(v3, v9);
    }

    goto LABEL_10;
  }

  v7 = [v3 valueForProperty:*MEMORY[0x277D2BB60]];

  if (!v7)
  {
    v9 = scl_pairing_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SCLIsNRDeviceEligibleForSchoolTime_cold_1(v3, v9);
    }

LABEL_10:

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (a2)
  {
    v8 = 1;
  }

  else
  {
    v11 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
    v8 = [v11 BOOLValue];
  }

LABEL_12:

  return v8;
}

id SCLAutoUpdatingPairingID()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v3[1] = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_26484997C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264849F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_26484A66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t SCLPBScheduleTimeReadFrom(uint64_t a1, void *a2)
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
            v21 = &OBJC_IVAR___SCLPBScheduleTime__hour;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___SCLPBScheduleTime__hour;
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
        v21 = &OBJC_IVAR___SCLPBScheduleTime__minute;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___SCLPBScheduleTime__minute;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id SCLEntitlementError(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot set schedule because client is missing the %@ entitlement", a1];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.schooltime" code:1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id SCLPairingUnavailableError(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"No pairing for pairingID %@", a1];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.schooltime" code:2 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_26484C0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *StringFromSCLContactType(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"phone";
  }

  if (a1 == 1)
  {
    return @"email";
  }

  else
  {
    return v1;
  }
}

void sub_26484D128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2648503D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *StringFromSCLInterruptEligibility(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"eligible";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"none";
  }
}

id SCLSchoolModeClientXPCInterface()
{
  os_unfair_lock_lock(&SCLSchoolModeClientXPCInterface___lock);
  WeakRetained = objc_loadWeakRetained(&SCLSchoolModeClientXPCInterface___interface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28762C008];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_applyServerSettings_ argumentIndex:0 ofReply:0];
    objc_storeWeak(&SCLSchoolModeClientXPCInterface___interface, WeakRetained);
  }

  os_unfair_lock_unlock(&SCLSchoolModeClientXPCInterface___lock);

  return WeakRetained;
}

id SCLSchoolModeServerXPCInterface()
{
  os_unfair_lock_lock(&SCLSchoolModeServerXPCInterface___lock);
  WeakRetained = objc_loadWeakRetained(&SCLSchoolModeServerXPCInterface___interface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287631590];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_connectWithPairingID_identifier_completion_ argumentIndex:0 ofReply:1];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_connectWithPairingID_identifier_completion_ argumentIndex:1 ofReply:1];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_applySchedule_completion_ argumentIndex:0 ofReply:0];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_applySchedule_completion_ argumentIndex:1 ofReply:1];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_setActive_options_completion_ argumentIndex:1 ofReply:1];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_addUnlockHistoryItem_completion_ argumentIndex:0 ofReply:0];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_addUnlockHistoryItem_completion_ argumentIndex:1 ofReply:1];
    v1 = MEMORY[0x277CBEB98];
    v2 = objc_opt_class();
    v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
    [WeakRetained setClasses:v3 forSelector:sel_fetchRecentUnlockHistoryItemsWithCompletion_ argumentIndex:0 ofReply:1];

    [WeakRetained setClass:objc_opt_class() forSelector:sel_fetchRecentUnlockHistoryItemsWithCompletion_ argumentIndex:1 ofReply:1];
    [WeakRetained setClass:objc_opt_class() forSelector:sel_deleteHistoryWithCompletion_ argumentIndex:1 ofReply:1];
    objc_storeWeak(&SCLSchoolModeServerXPCInterface___interface, WeakRetained);
  }

  os_unfair_lock_unlock(&SCLSchoolModeServerXPCInterface___lock);

  return WeakRetained;
}

void SCLIsNRDeviceEligibleForSchoolTime_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 pairingID];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = a1;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Have pairing id %@ but nil pairing store path. Perhaps device hasn't completed pairing yet? %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void SCLIsNRDeviceEligibleForSchoolTime_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264829000, a2, OS_LOG_TYPE_ERROR, "Device %@ is missing pairingID", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}