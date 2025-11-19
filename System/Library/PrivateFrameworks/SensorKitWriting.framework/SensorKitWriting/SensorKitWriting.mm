void sub_265620DF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_265621D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265621EFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_265622910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2656231C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2656234D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265623ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v19 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *descriptionFromErrorCode(uint64_t a1)
{
  if (a1 < 4096)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          return 0;
        }

        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v4 = @"SRErrorNoAuthorization";
      }

      else
      {
        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v4 = @"SRErrorInvalidEntitlement";
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v4 = @"SRErrorDataInaccessible";
          break;
        case 3:
          v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v4 = @"SRErrorFetchRequestInvalid";
          break;
        case 4:
          v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v4 = @"SRErrorPromptDeclined";
          break;
        default:
          return 0;
      }
    }

    return [v3 localizedStringForKey:v4 value:&stru_2877002B0 table:0];
  }

  else
  {
    if (!os_variant_has_internal_content())
    {
      return 0;
    }

    if (a1 > 12288)
    {
      if (a1 > 12295)
      {
        if ((a1 - 20480) >= 5)
        {
          if (a1 == 12296)
          {
            return @"Provided sample is from the future";
          }

          if (a1 == 0x4000)
          {
            return @"Sensor Configuration is invalid";
          }
        }

        return 0;
      }

      if (a1 <= 12291)
      {
        if (a1 == 12289)
        {
          return @"Writer Not Authorized";
        }

        else if (a1 == 12290)
        {
          return @"Writer Input was invalid";
        }

        else
        {
          return @"No available memory mapped to write sample";
        }
      }

      else if (a1 > 12293)
      {
        if (a1 == 12294)
        {
          return @"Framework datastore state is invalid";
        }

        else
        {
          return @"Writer does not have explicit authorization";
        }
      }

      else if (a1 == 12292)
      {
        return @"Provided sample is out of order from previous samples";
      }

      else
      {
        return @"Provided sample is too large";
      }
    }

    else
    {
      if (a1 <= 8195)
      {
        if (a1 >= 0x2000)
        {
          if (a1 > 8193)
          {
            if (a1 == 8194)
            {
              return @"Internal Error";
            }

            else
            {
              return @"Prompt Busy";
            }
          }

          else if (a1 == 0x2000)
          {
            return @"No space available to write samples";
          }

          else
          {
            return @"Connection Not Found";
          }
        }

        switch(a1)
        {
          case 4096:
            return @"Required app is not installed";
          case 4097:
            return @"Required onboarding not completed";
          case 4098:
            return @"Global setting not enabled";
        }

        return 0;
      }

      if (a1 <= 8198)
      {
        if (a1 == 8196)
        {
          return @"Prompt is cancelled";
        }

        if (a1 != 8197)
        {
          return @"No device identifier could be found";
        }

        return 0;
      }

      if (a1 > 8200)
      {
        if (a1 == 8201)
        {
          return @"No new authorization groups were requested";
        }

        if (a1 == 12288)
        {
          return @"Writer Not Monitoring";
        }

        return 0;
      }

      if (a1 == 8199)
      {
        return @"Time synchronization state is invalid";
      }

      else
      {
        return @"The requested bundle authorization is being requested for could not be found";
      }
    }
  }
}

uint64_t recoverySuggestionFromErrorCode(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"SRErrorNoAuthorizationRecovery";
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    v1 = @"SRErrorDataInaccessibleRecovery";
  }

  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v2 localizedStringForKey:v1 value:&stru_2877002B0 table:0];
}

void sub_265625A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_265626138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265626B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265626C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SRAbsoluteTime SRAbsoluteTimeGetCurrent(void)
{
  v0 = mach_continuous_time();

  return SRAbsoluteTimeFromContinuousTime(v0);
}

SRAbsoluteTime SRAbsoluteTimeFromContinuousTime(uint64_t cont)
{
  if (_syncToken != -1)
  {
    dispatch_once(&_syncToken, &__block_literal_global_2);
  }

  if (_contStart >= cont)
  {
    v2 = -1.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = *&_rtcStart + *&_remoteRTCOffset;
  TMConvertTicksToSeconds();
  return v3 + v4 * v2;
}

uint64_t __SRAbsoluteTimeFromContinuousTime_block_invoke()
{
  v0 = mach_continuous_time();
  _rtcStart = MEMORY[0x26675A890]();
  result = mach_continuous_time();
  _contStart = v0 + ((result - v0) >> 1);
  return result;
}

uint64_t SRAbsoluteTimeGetOffsets(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *&_rtcStart;
    result = TMConvertTicksToSeconds();
    *v3 = v4 - v5;
  }

  if (a2)
  {
    result = mach_get_times();
    *a2 = 0;
  }

  return result;
}

SRAbsoluteTime SRAbsoluteTimeFromCFAbsoluteTime(CFAbsoluteTime cf)
{
  mach_get_times();
  v2 = 0 / 1000000000.0 + 0 - *MEMORY[0x277CBECD0];
  return cf - (v2 - SRAbsoluteTimeFromContinuousTime(0));
}

BOOL SRAbsoluteTimeSetSyntheticStartFromRemoteTime(unint64_t a1, unint64_t a2, double a3, uint64_t a4, double *a5)
{
  mach_get_times();
  v9 = 1.0;
  if (a2 >= a1)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = -1.0;
  }

  TMConvertTicksToSeconds();
  v12 = v11 + a3;
  TMConvertTicksToSeconds();
  v14 = v12 + v10 * v13;
  TMConvertTicksToSeconds();
  v16 = v14 - v15;
  TMConvertTicksToSeconds();
  v18 = v16 + v17;
  if (a1 <= _contStart)
  {
    v9 = -1.0;
  }

  v19 = *&_rtcStart;
  TMConvertTicksToSeconds();
  v21 = v19 + v20 * v9;
  v22 = v18 - v21;
  v23 = v21 + v18 - v21;
  if (v23 > 0.0)
  {
    _remoteRTCOffset = *&v22;
    if (a5)
    {
      *a5 = v22;
    }
  }

  return v23 > 0.0;
}

double SRAbsoluteTimeRoundedDownToNearestInterval(SRAbsoluteTime a1, double a2)
{
  if (a2 == 0.0)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = a2;
  }

  v3 = v2 * floor(SRAbsoluteTimeToCFAbsoluteTime(a1) / v2);

  return SRAbsoluteTimeFromCFAbsoluteTime(v3);
}

void sub_265628484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26562ADC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void SRRegisterForDarwinNotification(void *a1, int *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = SRLogDaemonNotification;
  if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543362;
    v13 = a1;
    _os_log_debug_impl(&dword_26561F000, v6, OS_LOG_TYPE_DEBUG, "Registering for darwin notification on %{public}@", &v12, 0xCu);
  }

  *a2 = -1;
  v7 = [a1 UTF8String];
  v8 = notify_register_dispatch(v7, a2, MEMORY[0x277D85CD0], a3);
  if (v8 || *a2 == -1)
  {
    v9 = SRLogDaemonNotification;
    if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_ERROR))
    {
      v10 = *a2;
      v12 = 138543874;
      v13 = a1;
      v14 = 1026;
      v15 = v8;
      v16 = 1026;
      v17 = v10;
      _os_log_error_impl(&dword_26561F000, v9, OS_LOG_TYPE_ERROR, "Failed to register for darwin notification %{public}@, status %{public}d, registration token %{public}d", &v12, 0x18u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void SRUnregisterForNotification(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (*a2 != -1)
  {
    v5 = SRLogDaemonNotification;
    if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = a1;
      _os_log_debug_impl(&dword_26561F000, v5, OS_LOG_TYPE_DEBUG, "Unregistering for darwin notification on %{public}@", &v9, 0xCu);
      v2 = *a2;
    }

    if (notify_cancel(v2))
    {
      v6 = SRLogDaemonNotification;
      if (os_log_type_enabled(SRLogDaemonNotification, OS_LOG_TYPE_ERROR))
      {
        v8 = *a2;
        v9 = 138543618;
        v10 = a1;
        v11 = 1026;
        v12 = v8;
        _os_log_error_impl(&dword_26561F000, v6, OS_LOG_TYPE_ERROR, "Failed to cancel notification %{public}@. status %{public}d", &v9, 0x12u);
      }
    }

    *a2 = -1;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t writeMetadataBytesForFrameStore(uint64_t a1, const Bytef *a2, z_size_t a3, SRError **a4, double a5)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = 0.0;
  }

  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [(SRFrameStore *)a1 enumerateFromOffset:?];
  v12 = [(SRFramesStoreOffsetEnumerator *)v11 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v34 = a3;
  v14 = 0;
  v15 = *v36;
LABEL_5:
  v16 = 0;
  v17 = v14;
  while (1)
  {
    if (*v36 != v15)
    {
      objc_enumerationMutation(v11);
    }

    v14 = *(*(&v35 + 1) + 8 * v16);
    v18 = SRLogDatastore;
    if (os_log_type_enabled(SRLogDatastore, OS_LOG_TYPE_DEBUG))
    {
      if (a1)
      {
        v19 = *(a1 + 40);
      }

      else
      {
        v19 = 0;
      }

      v20 = *v14;
      *buf = 138413058;
      v40 = v19;
      v41 = 2048;
      v42 = v20;
      v43 = 2048;
      v44 = v10;
      v45 = 2048;
      v46 = v17;
      _os_log_debug_impl(&dword_26561F000, v18, OS_LOG_TYPE_DEBUG, "metadata segment: %@, metadata frame time: %f, sample time: %f, current metadata object: %p", buf, 0x2Au);
    }

    if (*v14 > v10)
    {
      break;
    }

    ++v16;
    v17 = v14;
    if (v13 == v16)
    {
      v21 = [(SRFramesStoreOffsetEnumerator *)v11 countByEnumeratingWithState:&v35 objects:v47 count:16, *v14];
      v13 = v21;
      if (!v21)
      {
        v17 = v14;
        a3 = v34;
        goto LABEL_19;
      }

      goto LABEL_5;
    }
  }

  a3 = v34;
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = *(v17 + 4);
  if (v22 && v22 == a3 && !memcmp(a2, v17 + 20, a3))
  {
    v26 = 1;
  }

  else
  {
LABEL_22:
    if (a1)
    {
      v23 = *(a1 + 24);
      if (v23 && (v24 = *(v23 + 16)) != 0)
      {
        v25 = *(v24 + 4);
      }

      else
      {
        v27 = *(a1 + 16);
        if (v27)
        {
          v25 = *(v27 + 24) - *(v27 + 16) + 56;
        }

        else
        {
          v25 = 56;
        }
      }

      v26 = [(SRFrameStore *)a1 writeFrameForBytes:a2 length:a3 timestamp:a4 error:a5];
      v28 = *(a1 + 24);
      if (v28 && (v29 = *(v28 + 16)) != 0)
      {
        v30 = *(v29 + 4);
      }

      else
      {
        v31 = *(a1 + 16);
        if (v31)
        {
          v30 = *(v31 + 24) - *(v31 + 16) + 56;
        }

        else
        {
          v30 = 56;
        }
      }

      if (v30 >= v25 + a3)
      {
        [(SRFrameStore *)a1 sync];
      }
    }

    else
    {
      v26 = 0;
      if (a4)
      {
        *a4 = [SRError errorWithCode:12294];
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

void SRMakeSegmentHeader(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a1 + 40) = 0u;
  *a1 = 1195725633;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  if (a3)
  {
    v5 = [a3 UTF8String];
    v6 = strlen(v5);
    if (v6 >= 0x21)
    {
      v7 = v6;
      v8 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        v12 = 134349312;
        v13 = v7;
        v14 = 2050;
        v15 = 32;
        _os_log_error_impl(&dword_26561F000, v8, OS_LOG_TYPE_ERROR, "Segment name is too large to store in the segment header. Truncating the segment name of %{public}zu to %{public}lu", &v12, 0x16u);
      }
    }

    v9 = *(v5 + 16);
    *v4 = *v5;
    v4[1] = v9;
  }

  else
  {
    v10 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_26561F000, v10, OS_LOG_TYPE_INFO, "No segment name provided for the segment header", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t memoryMappingsForPermission(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 2:
      v5 = [[SRMemoryMapping alloc] initWithSize:2 protection:1 advice:56 offset:?];
      v14 = v5;
      v6 = MEMORY[0x277CBEA60];
      v7 = &v14;
      goto LABEL_7;
    case 1:
      v10 = [[SRMemoryMapping alloc] initWithSize:2 protection:1 advice:0 offset:?];
      v5 = [[SRMemoryMapping alloc] initWithSize:2 protection:2 advice:*(a2 + 4) + 56 offset:?];
      v13[0] = v10;
      v13[1] = v5;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

LABEL_8:
      break;
    case 0:
      v5 = [[SRMemoryMapping alloc] initWithSize:1 protection:1 advice:56 offset:?];
      v15[0] = v5;
      v6 = MEMORY[0x277CBEA60];
      v7 = v15;
LABEL_7:
      v4 = [v6 arrayWithObjects:v7 count:1];
      goto LABEL_8;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}