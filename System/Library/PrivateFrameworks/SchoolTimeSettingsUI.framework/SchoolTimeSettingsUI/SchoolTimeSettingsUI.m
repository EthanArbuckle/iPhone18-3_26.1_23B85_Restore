void sub_26486E56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_264874304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2648751D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_264877424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromSCLSettingsViewModelScheduleType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279B6F2C8[a1];
  }
}

void SCLLogViewModelCommit(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  v4 = v3;
  v5 = v6;
  AnalyticsSendEventLazy();
}

id __SCLLogViewModelCommit_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEnabled];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v3 setObject:v4 forKeyedSubscript:@"isDuringSetup"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  [v3 setObject:v5 forKeyedSubscript:@"enabled"];

  if (v2)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "scheduleType")}];
    [v3 setObject:v6 forKeyedSubscript:@"scheduleType"];

    v7 = [*(a1 + 32) schedule];
    v8 = [v7 uniformTimeIntervals];

    if ([v8 count])
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      [v3 setObject:v9 forKeyedSubscript:@"uniformTimeIntervalCount"];
    }

    v10 = +[SCLTimeIntervalModel defaultTimeInterval];
    v11 = [v8 isEqual:v10];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    [v3 setObject:v12 forKeyedSubscript:@"usesDefaultInterval"];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __SCLLogViewModelCommit_block_invoke_2;
    v14[3] = &unk_279B6F2F0;
    v15 = v3;
    [v8 enumerateObjectsUsingBlock:v14];
  }

  return v3;
}

void __SCLLogViewModelCommit_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 startTime];
  v7 = [v6 hour];
  v8 = [v5 startTime];
  v9 = [v8 minute] + 60 * v7;

  v10 = [v5 endTime];
  v11 = [v10 hour];

  if (v11)
  {
    v12 = 60 * v11;
  }

  else
  {
    v12 = 1440;
  }

  v13 = [v5 endTime];

  v14 = [v13 minute] + v12;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"interval%luStartTime", a3];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"interval%luEndTime", a3];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"interval%luDuration", a3];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:v20];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  [*(a1 + 32) setObject:v18 forKeyedSubscript:v15];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v14 - v9];
  [*(a1 + 32) setObject:v19 forKeyedSubscript:v16];
}