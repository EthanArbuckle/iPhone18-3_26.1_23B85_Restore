id RCSharedLog()
{
  if (RCSharedLog_once != -1)
  {
    RCSharedLog_cold_1();
  }

  v1 = RCSharedLog_result;

  return v1;
}

uint64_t __RCSharedLog_block_invoke()
{
  RCSharedLog_result = os_log_create(RCLogSubsystemIdentifier, "RemoteConfiguration");

  return MEMORY[0x2821F96F8]();
}

uint64_t RCDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

id RCDeviceModelString()
{
  v0 = MGCopyAnswer();

  return v0;
}

id RCDeviceOSVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

__CFString *RCDeviceClassString()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue] - 1;
  if (v1 > 0xA)
  {
    v2 = @"unknown";
  }

  else
  {
    v2 = off_27822FEB0[v1];
  }

  return v2;
}

void sub_2179FE468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2179FE5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2179FE69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2179FE7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RCCompareRelativePriority(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v5 = [v3 compare:v4];

  return v5;
}

uint64_t RCHigherRelativePriority(uint64_t a1, uint64_t a2)
{
  if (RCCompareRelativePriority(a1, a2) == -1)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t RCNextHighestRelativePriority(uint64_t result)
{
  if ((result + 1) <= 3)
  {
    return qword_217A2EA88[result + 1];
  }

  return result;
}

uint64_t RCInferRelativePriorityFromQualityOfService(uint64_t a1)
{
  if (a1 == 9)
  {
    return -1;
  }

  return a1 == 33 || a1 == 25;
}

uint64_t RCQueuePriorityFromRelativePriority(uint64_t a1)
{
  if ((a1 + 1) >= 4)
  {
    return 0;
  }

  else
  {
    return 4 * (a1 + 1) - 4;
  }
}

void sub_2179FF8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t RCUserSegmentationEnvironmentForEnvironmentString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"STAGING"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"QA"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"DEVEL"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"TEST"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

id RCGenerateOperationID()
{
  v0 = 0;
  v5 = *MEMORY[0x277D85DE8];
  do
  {
    v4[v0++] = aAbcdef01234567[arc4random_uniform(0x10u)];
  }

  while (v0 != 16);
  v4[16] = 0;
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_217A03998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void sub_217A04ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_217A06564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_217A0C16C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_217A0CFDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void *RCSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

void *RCProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

void *RCClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

CFTypeRef RCCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

uint64_t RCCheckedDynamicCast(objc_class *a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      RCCheckedDynamicCast_cold_1(a1);
    }

    return 0;
  }

  return v2;
}

uint64_t RCCheckedStaticCast(uint64_t a1, uint64_t a2)
{
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCCheckedStaticCast_cold_1();
  }

  return a2;
}

void *RCCheckedProtocolCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      RCCheckedProtocolCast_cold_1();
    }

    return 0;
  }

  return v2;
}

void *RCCheckedStaticProtocolCast(uint64_t a1, void *a2)
{
  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCCheckedStaticProtocolCast_cold_1();
  }

  return a2;
}

void sub_217A0E980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_217A0F71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_217A10ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id RCBlockConjunction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __RCBlockConjunction_block_invoke;
  v9[3] = &unk_27822F7A0;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

uint64_t __RCBlockConjunction_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void RCPerformBlockOnMainThread(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCPerformBlockOnMainThread_cold_1();
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v1[2](v1);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v1);
  }
}

void RCPerformIfNonNil(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCPerformIfNonNil_cold_1();
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v3)
  {
LABEL_4:
    v4[2](v4, v3);
  }

LABEL_5:
}

void RCWaitUntilBlockIsInvoked(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCWaitUntilBlockIsInvoked_cold_1();
  }

  v2 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __RCWaitUntilBlockIsInvoked_block_invoke;
  v5[3] = &unk_27822F2B0;
  v6 = v2;
  v3 = v1[2];
  v4 = v2;
  v3(v1, v5);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t RCQoSClassFromQoS(uint64_t a1)
{
  if (a1 == 33)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 25)
  {
    v2 = 25;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 17)
  {
    v3 = 17;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == -1)
  {
    v5 = 21;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 16)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t RCQoSFromQoSClass(int a1)
{
  HIDWORD(v1) = a1 - 9;
  LODWORD(v1) = a1 - 9;
  v2 = 8 * (v1 >> 3) + 9;
  if ((v1 >> 3) >= 4)
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

dispatch_queue_global_t RCDispatchQueueForQualityOfService(uint64_t a1)
{
  if (a1 == 33)
  {
    v1 = 33;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 25)
  {
    v1 = 25;
  }

  if (a1 == 17)
  {
    v1 = 17;
  }

  v2 = 21;
  if (a1 == 9)
  {
    v3 = 9;
  }

  else
  {
    v3 = 0;
  }

  if (a1 != -1)
  {
    v2 = v3;
  }

  if (a1 <= 16)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  return dispatch_get_global_queue(v4, 0);
}

void RCDispatchAsyncWithQualityOfService(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = RCBlockWithQualityOfService(a2, a3);
  dispatch_async(v5, v6);
}

id RCBlockWithQualityOfService(uint64_t a1, dispatch_block_t block)
{
  if (a1 == 33)
  {
    v3 = 33;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == 25)
  {
    v4 = 25;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = v4;
  }

  if (a1 == 9)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == -1)
  {
    v7 = 21;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 16)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
  v10 = _Block_copy(v9);

  return v10;
}

void RCDispatchAfterWithQualityOfService(dispatch_time_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = RCBlockWithQualityOfService(a3, a4);
  dispatch_after(a1, v7, v8);
}

void RCDispatchGroupNotifyWithQualityOfService(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = RCBlockWithQualityOfService(a3, a4);
  dispatch_group_notify(v8, v7, v9);
}

BOOL RCDispatchGroupIsEmpty(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCDispatchGroupIsEmpty_cold_1();
  }

  v2 = dispatch_group_wait(v1, 0) == 0;

  return v2;
}

void RCDispatchGroupNotifyWithTimeout(void *a1, void *a2, dispatch_time_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCDispatchGroupNotifyWithTimeout_cold_1();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCDispatchGroupNotifyWithTimeout_cold_2();
  }

LABEL_6:
  if (!v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCDispatchGroupNotifyWithTimeout_cold_3();
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __RCDispatchGroupNotifyWithTimeout_block_invoke;
  v17[3] = &unk_27822F2D8;
  v10 = v9;
  v18 = v10;
  v11 = RCHandleOperationTimeout(a3, v8, v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RCDispatchGroupNotifyWithTimeout_block_invoke_2;
  block[3] = &unk_27822F7A0;
  v15 = v11;
  v16 = v10;
  v12 = v10;
  v13 = v11;
  dispatch_group_notify(v7, v8, block);
}

id RCHandleOperationTimeout(dispatch_time_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCHandleOperationTimeout_cold_1();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCHandleOperationTimeout_cold_2();
  }

LABEL_6:
  if (a1 == -1)
  {
    v9 = &__block_literal_global_4;
  }

  else
  {
    v12 = 0;
    v7 = RCHandleOperationCancellation(&v12, v6);
    v8 = v12;
    dispatch_after(a1, v5, v8);
    v9 = _Block_copy(v7);
  }

  v10 = _Block_copy(v9);

  return v10;
}

uint64_t __RCDispatchGroupNotifyWithTimeout_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

id RCHandleOperationCancellation(void *a1, void *a2)
{
  v3 = a2;
  if (!a1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCHandleOperationCancellation_cold_1();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCHandleOperationCancellation_cold_2();
  }

LABEL_6:
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__3;
  v20[4] = __Block_byref_object_dispose__3;
  v21 = _Block_copy(v3);
  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __RCHandleOperationCancellation_block_invoke;
  aBlock[3] = &unk_27822FCE8;
  v18 = v4;
  v19 = v22;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __RCHandleOperationCancellation_block_invoke_3;
  block[3] = &unk_27822FD10;
  v7 = v6;
  v15 = v7;
  v16 = v20;
  *a1 = dispatch_block_create(0, block);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __RCHandleOperationCancellation_block_invoke_4;
  v11[3] = &unk_27822FD38;
  v12 = v7;
  v13 = v20;
  v8 = v7;
  v9 = _Block_copy(v11);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);

  return v9;
}

void sub_217A11DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __RCHandleOperationCancellation_block_invoke(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __RCHandleOperationCancellation_block_invoke_2;
  v4[3] = &unk_27822FCC0;
  v1 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = &v5;
  [v1 performWithLockSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_217A11EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __RCHandleOperationCancellation_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __RCHandleOperationCancellation_block_invoke_3(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(*(*(a1 + 40) + 8) + 40) + 16);

    return v3();
  }

  return result;
}

uint64_t __RCHandleOperationCancellation_block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return v2 ^ 1u;
}

void RCDispatchGroupWrap(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCDispatchGroupWrap_cold_1();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCDispatchGroupWrap_cold_2();
  }

LABEL_6:
  dispatch_group_enter(v3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __RCDispatchGroupWrap_block_invoke;
  v7[3] = &unk_27822F2B0;
  v8 = v3;
  v5 = v4[2];
  v6 = v3;
  v5(v4, v7);
}

void RCRepeat(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    for (; a1; --a1)
    {
      v3[2](v3);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCRepeat_cold_1();
  }
}

id RCTestBlockForClass(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __RCTestBlockForClass_block_invoke;
  aBlock[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);

  return v1;
}

id RCTestBlockForProtocol(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __RCTestBlockForProtocol_block_invoke;
  aBlock[3] = &unk_27822FDA0;
  v6 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);

  return v3;
}

__CFString *RCStringFromQualityOfService(uint64_t a1)
{
  v1 = @"UserInteractive";
  v2 = @"Utility";
  v3 = @"UserInitiated";
  if (a1 != 25)
  {
    v3 = @"UserInteractive";
  }

  if (a1 != 17)
  {
    v2 = v3;
  }

  if (a1 == 9)
  {
    v1 = @"Background";
  }

  if (a1 == -1)
  {
    v1 = @"Default";
  }

  if (a1 <= 16)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *RCStringFromQueuePriority(uint64_t a1)
{
  v1 = __ROR8__(a1 + 8, 2) - 1;
  if (v1 > 3)
  {
    return @"VeryLow";
  }

  else
  {
    return off_27822FDC0[v1];
  }
}

void sub_217A162D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id RCAppVersion()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  return v1;
}

uint64_t RCIsInternalBuild()
{
  if (RCIsInternalBuild_onceToken != -1)
  {
    [RCDeviceInfo dictionaryRepresentation];
  }

  return RCIsInternalBuild_internalBuild;
}

uint64_t __RCIsInternalBuild_block_invoke()
{
  result = os_variant_has_internal_content();
  RCIsInternalBuild_internalBuild = result;
  return result;
}

id RCAppBundleID()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  return v1;
}

uint64_t RCJSONIntegerValue(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 objectForKeyedSubscript:v5];
    if (!v6 || ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7))
    {
      v8 = RCSharedLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        RCJSONIntegerValue_cold_1();
      }
    }

    else
    {
      a3 = [v6 integerValue];
    }
  }

  return a3;
}

double RCJSONDoubleValue(void *a1, void *a2, double a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 objectForKeyedSubscript:v5];
    if (!v6 || ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7))
    {
      v9 = RCSharedLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        RCJSONDoubleValue_cold_1(v5, v9, a3);
      }
    }

    else
    {
      [v6 doubleValue];
      a3 = v8;
    }
  }

  return a3;
}

uint64_t RCJSONBoolValue(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 objectForKeyedSubscript:v5];
    if (!v6 || ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v7, v6 == v7))
    {
      v8 = RCSharedLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        RCJSONBoolValue_cold_1();
      }
    }

    else
    {
      a3 = [v6 BOOLValue];
    }
  }

  return a3;
}

id RCJSONStringValue(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [a1 objectForKeyedSubscript:v5];
    if (!v8 || ([MEMORY[0x277CBEB68] null], v9 = objc_claimAutoreleasedReturnValue(), v9, v10 = v8, v8 == v9))
    {
      v11 = RCSharedLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        RCJSONStringValue_cold_1();
      }

      v10 = v7;
    }

    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

id RCJSONArrayValue(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 objectForKeyedSubscript:v3];
    if (!v4 || ([MEMORY[0x277CBEB68] null], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5))
    {
      v7 = RCSharedLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        RCJSONArrayValue_cold_1();
      }

      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id RCJSONDictionaryValue(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 objectForKeyedSubscript:v3];
    if (!v4 || ([MEMORY[0x277CBEB68] null], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 == v5))
    {
      v7 = RCSharedLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        RCJSONDictionaryValue_cold_1();
      }

      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_217A1C3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double RCFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

double RCClamp(double a1, double a2, double a3)
{
  v4 = a2;
  if (a3 < a2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    RCClamp_cold_1();
  }

  if (a1 >= v4)
  {
    v4 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return v4;
}

unint64_t RCClampUInt64s(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_217A20EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217A21090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217A21434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217A215D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_217A2175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RCConfigurationManager.fetch<A>(_:settings:decoder:networkActivity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a1;
  v9[7] = a3;
  v10 = *(a7 - 8);
  v9[14] = v10;
  v11 = *(v10 + 64) + 15;
  v9[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217A218F8, 0, 0);
}

uint64_t sub_217A218F8()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = swift_task_alloc();
  v0[16] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D878, &qword_217A2EBE8);
  *v7 = v0;
  v7[1] = sub_217A21A14;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000033, 0x8000000217A32F30, sub_217A22238, v5, v8);
}

uint64_t sub_217A21A14()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_217A21C98;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_217A21B30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_217A21B30()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  sub_217A2B138();
  if (v1)
  {
    sub_217A2228C(v6, v7);

    v10 = v0[15];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[14] + 32))(v0[6], v0[15], v0[11]);
    sub_217A222E0(v6, v7);

    sub_217A2228C(v6, v7);

    sub_217A2228C(v6, v7);

    v13 = v0[1];

    return v13(v9, v8);
  }
}

uint64_t sub_217A21C98()
{
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t RCConfigurationManager.fetchSingleConfiguration(settings:networkActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_217A21D28, 0, 0);
}

uint64_t sub_217A21D28()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v8 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D878, &qword_217A2EBE8);
  *v5 = v0;
  v5[1] = sub_217A21E4C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000033, 0x8000000217A32F30, sub_217A2374C, v3, v6);
}

uint64_t sub_217A21E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_217A21F88;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_217A21F68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_217A21F88()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

void sub_217A21FEC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(unint64_t a1, char *a2, unint64_t a3, unint64_t a4, void *a5), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D8B0, &qword_217A2EC28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &aBlock - v13;
  if (a4)
  {
    v22 = a4;
    v23 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_217A22334;
    v21 = &block_descriptor_19;
    a4 = _Block_copy(&aBlock);
  }

  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  v22 = sub_217A23398;
  v23 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_217A22384;
  v21 = &block_descriptor_16;
  v17 = _Block_copy(&aBlock);

  [a2 fetchSingleConfigurationWithSettings:a3 networkActivityBlock:a4 completionQueue:0 completion:v17];
  _Block_release(v17);
  _Block_release(a4);
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

uint64_t sub_217A2228C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_217A222E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_217A22334(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

uint64_t sub_217A22384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {

    v11 = v8;
    v8 = sub_217A2B148();
    v13 = v12;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    sub_217A22E74();
    a3 = sub_217A2B178();
  }

LABEL_4:
  if (a4)
  {
    sub_217A22E74();
    a4 = sub_217A2B178();
  }

  v14 = a5;
  v10(v8, v13, a3, a4, a5);

  sub_217A23718(v8, v13);
}

uint64_t RCConfigurationManager.fetchMultiConfiguration(settings:networkActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_217A224B8, 0, 0);
}

uint64_t sub_217A224B8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v8 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D880, &qword_217A2EC00);
  *v5 = v0;
  v5[1] = sub_217A225DC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000032, 0x8000000217A32F70, sub_217A229C8, v3, v6);
}

uint64_t sub_217A225DC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_217A22718;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_217A226F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_217A22718()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_217A2277C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, unint64_t a2, unint64_t a3, void *a4), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D888, &qword_217A2EC08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &aBlock - v13;
  if (a4)
  {
    v22 = a4;
    v23 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_217A22334;
    v21 = &block_descriptor_10;
    a4 = _Block_copy(&aBlock);
  }

  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  v22 = sub_217A229D4;
  v23 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_217A22D50;
  v21 = &block_descriptor;
  v17 = _Block_copy(&aBlock);

  [a2 fetchMultiConfigurationWithSettings:a3 networkActivityBlock:a4 completionQueue:0 completion:v17];
  _Block_release(v17);
  _Block_release(a4);
}

uint64_t sub_217A229D4(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D888, &qword_217A2EC08) - 8) + 80);
  if (a4)
  {
    v9 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D888, &qword_217A2EC08);
    return sub_217A2B188();
  }

  v33 = a3;
  if (!a1)
  {
    sub_217A231F8(MEMORY[0x277D84F90]);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

LABEL_5:
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_217A2B1B8())
  {

    if (i)
    {
      v13 = MEMORY[0x277D84F90];
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x21CEAA650](v14 - 4, a2);
        }

        else
        {
          if (v15 >= *(v11 + 16))
          {
            goto LABEL_39;
          }

          v16 = *(a2 + 8 * v14);
        }

        v17 = v16;
        v18 = v14 - 3;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = [v16 longLongValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_217A22FC4(0, *(v13 + 2) + 1, 1, v13);
        }

        v21 = *(v13 + 2);
        v20 = *(v13 + 3);
        if (v21 >= v20 >> 1)
        {
          v13 = sub_217A22FC4((v20 > 1), v21 + 1, 1, v13);
        }

        *(v13 + 2) = v21 + 1;
        *&v13[8 * v21 + 32] = v19;
        ++v14;
        if (v18 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_22:
    if (!v33)
    {
      break;
    }

    v22 = v33 & 0xFFFFFFFFFFFFFF8;
    if (!(v33 >> 62))
    {
      a2 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a2)
      {
        break;
      }

      goto LABEL_25;
    }

    a2 = sub_217A2B1B8();
    if (!a2)
    {
      break;
    }

LABEL_25:
    v11 = v33;
    v23 = MEMORY[0x277D84F90];
    v24 = 4;
    while (1)
    {
      v25 = v24 - 4;
      if ((v33 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x21CEAA650](v24 - 4, v33);
      }

      else
      {
        if (v25 >= *(v22 + 16))
        {
          goto LABEL_41;
        }

        v26 = *(v33 + 8 * v24);
      }

      v27 = v26;
      v28 = v24 - 3;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = [v26 intValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_217A22EC0(0, *(v23 + 2) + 1, 1, v23);
      }

      v31 = *(v23 + 2);
      v30 = *(v23 + 3);
      if (v31 >= v30 >> 1)
      {
        v23 = sub_217A22EC0((v30 > 1), v31 + 1, 1, v23);
      }

      *(v23 + 2) = v31 + 1;
      *&v23[4 * v31 + 32] = v29;
      ++v24;
      v32 = v28 == a2;
      v22 = v33 & 0xFFFFFFFFFFFFFF8;
      if (v32)
      {
        goto LABEL_44;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_44:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D888, &qword_217A2EC08);
  return sub_217A2B198();
}

uint64_t sub_217A22D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    v10 = sub_217A2B158();
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (a3)
  {
LABEL_3:
    sub_217A22E74();
    v7 = sub_217A2B178();
  }

LABEL_4:
  if (a4)
  {
    sub_217A22E74();
    a4 = sub_217A2B178();
  }

  v11 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_217A22E74()
{
  result = qword_27CB9D890;
  if (!qword_27CB9D890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB9D890);
  }

  return result;
}

char *sub_217A22EC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D8A0, &qword_217A2EC18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_217A22FC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D898, &qword_217A2EC10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_217A230C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_217A2B1F8();
  sub_217A2B168();
  v6 = sub_217A2B208();

  return sub_217A23140(a1, a2, v6);
}

unint64_t sub_217A23140(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_217A2B1D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_217A231F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D8A8, &qword_217A2EC20);
    v3 = sub_217A2B1C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_217A222E0(v7, v8);
      result = sub_217A230C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_217A23398(unint64_t a1, char *a2, unint64_t a3, unint64_t a4, void *a5)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D8B0, &qword_217A2EC28) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  if (a5)
  {
    v12 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D8B0, &qword_217A2EC28);
    return sub_217A2B188();
  }

  v33 = a4;
  if (!a3)
  {
    sub_217A2372C(a1, a2);
    goto LABEL_20;
  }

  v14 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_217A2B1B8())
  {
    sub_217A2372C(a1, a2);
    if (i)
    {
      a2 = MEMORY[0x277D84F90];
      v16 = 4;
      while (1)
      {
        a1 = v16 - 4;
        if ((a3 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CEAA650](v16 - 4, a3);
        }

        else
        {
          if (a1 >= *(v14 + 16))
          {
            goto LABEL_38;
          }

          v17 = *(a3 + 8 * v16);
        }

        v18 = v17;
        v19 = v16 - 3;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v20 = [v17 longLongValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_217A22FC4(0, *(a2 + 2) + 1, 1, a2);
        }

        v22 = *(a2 + 2);
        v21 = *(a2 + 3);
        if (v22 >= v21 >> 1)
        {
          a2 = sub_217A22FC4((v21 > 1), v22 + 1, 1, a2);
        }

        *(a2 + 2) = v22 + 1;
        *&a2[8 * v22 + 32] = v20;
        ++v16;
        if (v19 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_20:
    a2 = MEMORY[0x277D84F90];
LABEL_21:
    if (!v33)
    {
      break;
    }

    v23 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 >> 62)
    {
      a3 = sub_217A2B1B8();
      if (!a3)
      {
        break;
      }
    }

    else
    {
      a3 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a3)
      {
        break;
      }
    }

    v14 = v33;
    v24 = MEMORY[0x277D84F90];
    v25 = 4;
    while (1)
    {
      a1 = v25 - 4;
      if ((v33 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x21CEAA650](v25 - 4, v33);
      }

      else
      {
        if (a1 >= *(v23 + 16))
        {
          goto LABEL_40;
        }

        v26 = *(v33 + 8 * v25);
      }

      v27 = v26;
      v28 = v25 - 3;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v29 = [v26 intValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_217A22EC0(0, *(v24 + 2) + 1, 1, v24);
      }

      v31 = *(v24 + 2);
      v30 = *(v24 + 3);
      if (v31 >= v30 >> 1)
      {
        v24 = sub_217A22EC0((v30 > 1), v31 + 1, 1, v24);
      }

      *(v24 + 2) = v31 + 1;
      *&v24[4 * v31 + 32] = v29;
      ++v25;
      v32 = v28 == a3;
      v23 = v33 & 0xFFFFFFFFFFFFFF8;
      if (v32)
      {
        goto LABEL_43;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB9D8B0, &qword_217A2EC28);
  return sub_217A2B198();
}

uint64_t sub_217A23718(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217A2228C(a1, a2);
  }

  return a1;
}

uint64_t sub_217A2372C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217A222E0(a1, a2);
  }

  return a1;
}

void RCCheckedDynamicCast_cold_1(objc_class *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = NSStringFromClass(a1);
  v4 = objc_opt_class();
  *buf = 136315906;
  v7 = "id RCCheckedDynamicCast(Class, id<NSObject>)";
  v8 = 2080;
  v9 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Utilities/RCCast.m";
  v10 = 1024;
  v11 = 100;
  v12 = 2114;
  v13 = [v2 initWithFormat:@"Unexpected object type in checked dynamic cast - Expected %@, Got %@", v3, NSStringFromClass(v4)];
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCCheckedStaticCast_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected object type in checked static cast.  This is a serious problem and could lead to a crash, or worse."];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v0, "*** Assertion failure: %s %s:%d %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCCheckedProtocolCast_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected object type in checked protocol cast"];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v0, "*** Assertion failure: %s %s:%d %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCCheckedStaticProtocolCast_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected object type in checked protocol cast. This is a serious problem and could lead to a crash, or worse."];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0(&dword_2179FC000, MEMORY[0x277D86220], v0, "*** Assertion failure: %s %s:%d %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCPerformBlockOnMainThread_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCPerformIfNonNil_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCWaitUntilBlockIsInvoked_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCDispatchGroupIsEmpty_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "group", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCDispatchGroupNotifyWithTimeout_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "group", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCDispatchGroupNotifyWithTimeout_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "queue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCDispatchGroupNotifyWithTimeout_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCHandleOperationTimeout_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "timeoutQueue", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCHandleOperationTimeout_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "timeoutHandler", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCHandleOperationCancellation_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "cancellationTrigger", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCHandleOperationCancellation_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "cancellationHandler", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCDispatchGroupWrap_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "group", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCDispatchGroupWrap_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCRepeat_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "block", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

void RCJSONIntegerValue_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCJSONDoubleValue_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_2179FC000, a2, OS_LOG_TYPE_DEBUG, "missing double value for key: %{public}@ defaultValue: %f", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void RCJSONBoolValue_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCJSONStringValue_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void RCJSONArrayValue_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEBUG, "missing array value for key: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void RCJSONDictionaryValue_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_2179FC000, v0, OS_LOG_TYPE_DEBUG, "missing dictionary value for key: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void RCClamp_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "max >= min"];
  *buf = 136315906;
  v3 = "CGFloat RCClamp(CGFloat, CGFloat, CGFloat)";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Utilities/RCMath.m";
  v6 = 1024;
  v7 = 44;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}