void sub_25ED90510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PFTRunWithLock(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  [v4 lock];
  v3[2](v3);
  [v4 unlock];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

PFTReaderWriterScheduler *sReaderWriterSchedulerProvider_block_invoke_3()
{
  v0 = objc_alloc_init(PFTReaderWriterScheduler);

  return v0;
}

void sub_25ED92F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25ED9341C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25ED93838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_25ED93E00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25ED93FC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __PFTGuardOSLog_block_invoke()
{
  PFTGuardOSLog_pft_once_object_7 = os_log_create("com.apple.PosterFuturesKit", "api");

  return MEMORY[0x2821F96F8]();
}

id PFTLogCommon()
{
  if (PFTLogCommon_onceToken != -1)
  {
    PFTLogCommon_cold_1();
  }

  v1 = PFTLogCommon___logObj;

  return v1;
}

uint64_t __PFTLogCommon_block_invoke()
{
  PFTLogCommon___logObj = os_log_create("com.apple.PosterFuturesKit", "Common");

  return MEMORY[0x2821F96F8]();
}

id PFTLogFutures()
{
  if (PFTLogFutures_onceToken != -1)
  {
    PFTLogFutures_cold_1();
  }

  v1 = PFTLogFutures___logObj;

  return v1;
}

uint64_t __PFTLogFutures_block_invoke()
{
  PFTLogFutures___logObj = os_log_create("com.apple.PosterFuturesKit", "Futures");

  return MEMORY[0x2821F96F8]();
}

void sub_25ED95780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PFTDispatchSemaphoreWait(void *a1, double a2)
{
  v3 = a1;
  if (a2 <= 1000000000.0)
  {
    v4 = dispatch_time(0, (a2 * 1000000000.0));
  }

  else
  {
    v4 = -1;
  }

  v5 = dispatch_semaphore_wait(v3, v4) == 0;

  return v5;
}

void PFTRunWithQueueName(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [MEMORY[0x277CCABD8] currentQueue];
  v5 = [v4 name];
  v6 = [v5 copy];

  [v4 setName:v7];
  v3[2](v3);
  [v4 setName:v6];
}

id PFTRangeDividedIntoStridesOfLength(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    if (a2 <= a3)
    {
      v11 = [MEMORY[0x277CCAE60] valueWithRange:{a1, a2}];
      v14[0] = v11;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] array];
      for (i = v5 + v4; v5 < i; v4 = v8)
      {
        v8 = v4 - a3;
        if (v4 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v4;
        }

        v10 = [MEMORY[0x277CCAE60] valueWithRange:{v5, v9}];
        [v6 pft_addNonNilObject:v10];

        v5 += a3;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

id PFTRangeDividedIntoBalancedStridesOfLength(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = a1;
    if (a2 <= a3)
    {
      v14 = [MEMORY[0x277CCAE60] valueWithRange:{a1, a2}];
      v17[0] = v14;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v7 = v5 + a2;
      if (v5 < v5 + a2)
      {
        v8 = vcvtpd_u64_f64(a2 / a3);
        v9 = (a2 / v8);
        v10 = a2 % v8;
        do
        {
          if (v10)
          {
            v11 = v9 + 1;
          }

          else
          {
            v11 = v9;
          }

          if (v10)
          {
            --v10;
          }

          else
          {
            v10 = 0;
          }

          if (v11 >= v7 - v5)
          {
            v12 = v7 - v5;
          }

          else
          {
            v12 = v11;
          }

          v13 = [MEMORY[0x277CCAE60] valueWithRange:{v5, v12}];
          [v6 pft_addNonNilObject:v13];

          v5 += v12;
        }

        while (v5 < v7);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

id PFTArrayMapFastPath(void *a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = v5;
  if (v5 >= 0x81)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE658];
    v25 = @"count";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v26[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v22 = [v18 exceptionWithName:v19 reason:@"FTArrayMapFastPath called with too many objects" userInfo:v21];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v24[1] = v24;
  v7 = 8 * v5;
  MEMORY[0x28223BE20]();
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 8 * v6);
  if (v6)
  {
    v9 = 0;
    v24[2] = v4 + 2;
    do
    {
      [v3 objectAtIndexedSubscript:v9];
      v11 = v10 = v3;
      v12 = v4[2](v4, v11);
      v13 = (off_2870E4280)(&__block_literal_global_2, v12);
      v14 = *&v8[8 * v9];
      *&v8[8 * v9] = v13;

      v3 = v10;
      ++v9;
    }

    while (v6 != v9);
  }

  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) count:v6];
  if (v6)
  {
    do
    {

      v7 -= 8;
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id PFTArrayCompactMapFastPath(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v27 = v3;
  v5 = [v3 count];
  v6 = v5;
  if (v5 >= 0x81)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = *MEMORY[0x277CBE658];
    v28 = @"count";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v29[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v18 exceptionWithName:v19 reason:@"FTArrayCompactMapFastPath called with too many objects" userInfo:v21];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v24[1] = v24;
  v7 = 8 * v5;
  MEMORY[0x28223BE20]();
  v25 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v25, 8 * v6);
  v8 = 0;
  if (v6)
  {
    v9 = 0;
    v26 = (v4 + 2);
    do
    {
      v10 = [v27 objectAtIndexedSubscript:v9];
      v11 = v4[2](v4, v10);
      v12 = (off_2870E42A0)(&__block_literal_global_4_0, v11);

      if (v12)
      {
        objc_storeStrong(&v25[8 * v8++], v11);
      }

      ++v9;
    }

    while (v6 != v9);
  }

  v13 = v25;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:v8];
  if (v6)
  {
    v15 = v13 - 8;
    do
    {

      v7 -= 8;
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_25ED99114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PFTArrayMapSlowPath_block_invoke(uint64_t a1)
{
  v4 = (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = off_2870E4280(&__block_literal_global_2, v4);
  [v2 addObject:v3];
}

void __PFTArrayConcurrentMapSlowPath_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (*(*(a1 + 32) + 16))();
  v5 = off_2870E4280(&__block_literal_global_2, v8);
  v6 = *(a1 + 40);
  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;
}

id PFTNilToNull_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v5 = v4;

  return v5;
}

id PFTNullToNil_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (*MEMORY[0x277CBEEE8] == v2 || ([MEMORY[0x277CBEB68] null], v3 = objc_claimAutoreleasedReturnValue(), v3, v3 == v2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

BOOL PFTIsNotNull_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v4 = [v2 null];

  return v4 != v3;
}

BOOL PFTIsNull_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v4 = [v2 null];

  return v4 == v3;
}

void pft_runWithPropertyLock(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = (&sPropertyLocks + 4 * ((a2 >> 5) & 0x7F));
  v4 = a3;
  os_unfair_lock_lock(v3);
  v4[2](v4);

  os_unfair_lock_unlock(v3);
}

id pft_objectResultWithPropertyLock(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __pft_objectResultWithPropertyLock_block_invoke;
  v10[3] = &unk_279A53078;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  pft_runWithPropertyLock(v7, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_25ED9A4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __pft_objectResultWithPropertyLock_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void pft_runWithObjectLock(void *a1, void *a2)
{
  v3 = a2;
  obj = a1;
  objc_sync_enter(obj);
  v3[2](v3);

  objc_sync_exit(obj);
}

id pft_objectResultWithObjectLock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __pft_objectResultWithObjectLock_block_invoke;
  v8[3] = &unk_279A53078;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  pft_runWithObjectLock(v3, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_25ED9A6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __pft_objectResultWithObjectLock_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

id PFTFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id PFTUnimplementedMethodException(void *a1, const char *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = PFTFullMethodName(a1, a2);
  v4 = [v2 stringWithFormat:@"selector not implemented: %@", v3];

  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v4 userInfo:0];

  return v5;
}

id PFTAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PFTFullMethodName(v3, a2);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

id PFTInitializerUnavailableException(void *a1, const char *a2, const char *a3)
{
  v5 = a1;
  v6 = PFTFullMethodName(v5, a2);
  v7 = PFTFullMethodName(v5, a3);

  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: initializer unavailable use %@ instead", v6, v7];;
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];

  return v11;
}

id PFTResultWithAutoreleasePool(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = v1[2](v1);
  objc_autoreleasePoolPop(v2);

  return v3;
}

uint64_t PFTObjectEquals_block_invoke_6(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return [a2 isEqual:?];
  }

  else
  {
    return 1;
  }
}

uint64_t PFTObjectEquator_block_invoke_7(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return [a2 isEqual:?];
  }

  else
  {
    return 1;
  }
}

id PFTAggregateComparator(void *a1)
{
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2 copyItems:1];

  v4 = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___PFTAggregateComparatorFromArray_block_invoke;
  v8[3] = &unk_279A53148;
  v9 = v4;
  v5 = MEMORY[0x25F8CF560](v8);
  v6 = [v5 copy];

  return v6;
}

id _PFTAggregateObjectTestFromArray(void *a1)
{
  v1 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___PFTAggregateObjectTestFromArray_block_invoke;
  v6[3] = &unk_279A530F8;
  v7 = v1;
  v2 = v1;
  v3 = MEMORY[0x25F8CF560](v6);
  v4 = [v3 copy];

  return v4;
}

id PFTAggregateObjectTest(void *a1)
{
  v1 = a1;
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v1 copyItems:1];
    v2 = _PFTAggregateObjectTestFromArray(v3);
  }

  return v2;
}

id PFTLogicalNot(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __PFTLogicalNot_block_invoke;
  v5[3] = &unk_279A53120;
  v6 = v1;
  v2 = v1;
  v3 = [v5 copy];

  return v3;
}

void sub_25ED9B208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25ED9BA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_sync_exit(v25);
  _Unwind_Resume(a1);
}

id PFTMakeErrorHelper(uint64_t a1)
{
  if (a1)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __PFTMakeErrorHelper_block_invoke_2;
    v4[3] = &__block_descriptor_40_e23_v16__0_____NSError____8l;
    v4[4] = a1;
    v1 = MEMORY[0x25F8CF560](v4);
  }

  else
  {
    v1 = &__block_literal_global_8;
  }

  v2 = [v1 copy];

  return v2;
}

id __PFTMakeErrorHelper_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(a2);
  **(a1 + 32) = result;
  return result;
}

__CFString *PFTSuspendableSchedulerConditionToString(uint64_t a1)
{
  v1 = @"PFTSuspendableSchedulerConditionBuffering";
  if (a1 == 1)
  {
    v1 = @"PFTSuspendableSchedulerConditionDraining";
  }

  if (a1 == 2)
  {
    return @"PFTSuspendableSchedulerConditionRelaying";
  }

  else
  {
    return v1;
  }
}

void sub_25ED9CF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25ED9D25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_25ED9DC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25ED9F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25ED9FB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25ED9FCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RunningBoardServicesLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = RunningBoardServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSDomainAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRBSDomainAttributeClass_block_invoke_cold_1();
    RunningBoardServicesLibrary();
  }
}

void RunningBoardServicesLibrary()
{
  if (!RunningBoardServicesLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getRBSAcquisitionCompletionAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAcquisitionCompletionAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAcquisitionCompletionAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRBSAcquisitionCompletionAttributeClass_block_invoke_cold_1();
    return __getRBSAssertionClass_block_invoke(v3);
  }

  return result;
}

Class __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRBSAssertionClass_block_invoke_cold_1();
    return __getRBSTargetClass_block_invoke(v3);
  }

  return result;
}

_PFTConstantFutureImpl *__getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSTarget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRBSTargetClass_block_invoke_cold_1();
    return [(_PFTConstantFutureImpl *)v3 initWithResult:v4, v5];
  }

  return result;
}

uint64_t __PFTGuardOSLog_block_invoke_0()
{
  PFTGuardOSLog_pft_once_object_7_0 = os_log_create("com.apple.PosterFuturesKit", "api");

  return MEMORY[0x2821F96F8]();
}

void sub_25EDA3D78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_25EDA45B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void PFTFutureThrowProtocolExceptionWithReason(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (+[PFTObservableContractEnforcement shouldEnforceRxProtocols])
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:v3];
    [v4 raise];
  }
}

id PFTPromiseCompletionHandler(void *a1)
{
  v1 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PFTPromiseCompletionHandler_block_invoke;
  v6[3] = &unk_279A537A8;
  v7 = v1;
  v2 = v1;
  v3 = MEMORY[0x25F8CF560](v6);
  v4 = [v3 copy];

  return v4;
}

id PFTPromiseCompletionHandlerWithDefaultValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __PFTPromiseCompletionHandlerWithDefaultValue_block_invoke;
  v13 = &unk_279A537D0;
  v14 = v3;
  v15 = v4;
  v5 = v4;
  v6 = v3;
  v7 = MEMORY[0x25F8CF560](&v10);
  v8 = [v7 copy];

  return v8;
}

id PFTPromiseBoolErrorCompletionHandler(void *a1)
{
  v1 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PFTPromiseBoolErrorCompletionHandler_block_invoke;
  v6[3] = &unk_279A537F8;
  v7 = v1;
  v2 = v1;
  v3 = MEMORY[0x25F8CF560](v6);
  v4 = [v3 copy];

  return v4;
}

id PFTPromiseErrorOnlyCompletionHandler(void *a1)
{
  v1 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __PFTPromiseErrorOnlyCompletionHandler_block_invoke;
  v6[3] = &unk_279A53530;
  v7 = v1;
  v2 = v1;
  v3 = MEMORY[0x25F8CF560](v6);
  v4 = [v3 copy];

  return v4;
}

void __PFTPromiseCompletionHandlerWithDefaultValue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    if (!v7)
    {
      v6 = *(a1 + 40);
    }

    [*(a1 + 32) finishWithResult:?];
  }
}

void __PFTPromiseBoolErrorCompletionHandler_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v2 finishWithResult:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:?];
  }
}

void __PFTPromiseErrorOnlyCompletionHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v2 finishWithResult:v4];
  }
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}