@interface PLIOReportStats
- (BOOL)subscribeToGroup:(id)a3 andSubGroup:(id)a4 withChannelIDs:(id)a5 manualChannelOnly:(BOOL)a6;
- (BOOL)updateStatsWithBlock:(id)a3;
- (PLIOReportStats)initWithDriverName:(id)a3 withGroup:(id)a4;
- (double)_convertValue:(int64_t)a3 toUnityScaleFromUnit:(unint64_t)a4;
- (double)getSampleDuration;
- (id)_calculateDeltaFromPreviousStats:(id)a3 toCurrentStats:(id)a4;
- (id)_init;
- (id)_parseIOReportSampleFromStats:(id)a3 convertingUnitToUnityScale:(BOOL)a4;
- (id)currentValueForSimpleChannel:(id)a3;
- (id)currentValueForStateChannel:(id)a3 atIndex:(int)a4;
- (id)deltaValueForSimpleChannel:(id)a3;
- (id)deltaValueForStateChannel:(id)a3 atIndex:(int)a4;
- (id)getCurrentStats;
- (id)getDeltaStats;
- (id)parseIOReportSample;
- (id)parseSimpleDeltaSample;
- (void)clearSubscription;
- (void)dealloc;
@end

@implementation PLIOReportStats

- (id)_init
{
  v5.receiver = self;
  v5.super_class = PLIOReportStats;
  v2 = [(PLIOReportStats *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLIOReportStats *)v2 setDriverName:@"ApplePMGR"];
    [(PLIOReportStats *)v3 setSubscription:0];
    [(PLIOReportStats *)v3 setSubscribedChannels:0];
  }

  return v3;
}

- (PLIOReportStats)initWithDriverName:(id)a3 withGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLIOReportStats *)self _init];
  v9 = v8;
  if (v8 && ([v8 setDriverName:v6], objc_msgSend(v9, "subscribeToGroup:andSubGroup:withChannelIDs:", v7, 0, 0)))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  if ([(PLIOReportStats *)self subscription])
  {
    CFRelease([(PLIOReportStats *)self subscription]);
  }

  v3.receiver = self;
  v3.super_class = PLIOReportStats;
  [(PLIOReportStats *)&v3 dealloc];
}

- (BOOL)subscribeToGroup:(id)a3 andSubGroup:(id)a4 withChannelIDs:(id)a5 manualChannelOnly:(BOOL)a6
{
  v6 = a6;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(PLIOReportStats *)self clearSubscription];
  v13 = objc_autoreleasePoolPush();
  v49[0] = 0;
  v49[1] = 0;
  v43 = MEMORY[0x1E69E9820];
  v44 = 3221225472;
  v45 = __81__PLIOReportStats_subscribeToGroup_andSubGroup_withChannelIDs_manualChannelOnly___block_invoke;
  v46 = &unk_1E8519C08;
  v14 = v10;
  v47 = v14;
  v15 = v11;
  v48 = v15;
  v16 = IOReportCopyFilteredChannels();
  v17 = v16;
  if (![v16 count] && !v6)
  {
    goto LABEL_5;
  }

  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v52 = v14;
    v53 = 2112;
    v54 = v15;
    v55 = 2112;
    v56 = v17;
    _os_log_debug_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEBUG, "Retrieved channels from group(%@) subgroup(%@) = %@\n", buf, 0x20u);
  }

  if (v12 && [v12 count])
  {
    v36 = v15;
    v37 = v13;
    v35 = self;
    v22 = [(PLIOReportStats *)self driverName];
    v23 = IOServiceMatching([v22 UTF8String]);

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = v12;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          [v29 unsignedLongLongValue];
          v30 = IOReportCopyChannelsWithID();
          if (v30)
          {
            v31 = v30;
            v32 = PLLogCommon();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [PLIOReportStats subscribeToGroup:buf andSubGroup:v29 withChannelIDs:&v52 manualChannelOnly:v32];
            }

            IOReportMergeChannels();
            CFRelease(v31);
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v39 objects:v50 count:16];
      }

      while (v26);
    }

    CFRelease(v23);
    v13 = v37;
    v12 = v38;
    v15 = v36;
    self = v35;
  }

  [(PLIOReportStats *)self setSubscription:IOReportCreateSubscription()];
  LOBYTE(v11) = v49[0] == 0;
  if (v49[0])
  {
    v33 = PLLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PLIOReportStats subscribeToGroup:v49 andSubGroup:v33 withChannelIDs:? manualChannelOnly:?];
    }

    CFRelease(v49[0]);
  }

  else
  {
    if (![(PLIOReportStats *)self subscription])
    {
LABEL_5:
      v18 = 0;
      goto LABEL_6;
    }

    [(PLIOReportStats *)self setSubscribedChannels:0];

    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [PLIOReportStats subscribeToGroup:? andSubGroup:? withChannelIDs:? manualChannelOnly:?];
    }
  }

  v18 = 1;
LABEL_6:

  objc_autoreleasePoolPop(v13);
  v19 = *MEMORY[0x1E69E9840];
  return v18 & v11;
}

uint64_t __81__PLIOReportStats_subscribeToGroup_andSubGroup_withChannelIDs_manualChannelOnly___block_invoke(uint64_t a1)
{
  v2 = IOReportChannelGetGroup();
  v3 = IOReportChannelGetSubGroup();
  v4 = *(a1 + 32);
  if (v4 && ([v4 isEqualToString:v2] && *(a1 + 40) && (objc_msgSend(v3, "isEqualToString:") & 1) != 0 || (v5 = *(a1 + 32)) != 0 && objc_msgSend(v5, "isEqualToString:", v2) && !*(a1 + 40)))
  {
    v6 = 0;
  }

  else
  {
    v6 = 16;
  }

  return v6;
}

- (void)clearSubscription
{
  [(PLIOReportStats *)self setSubscribedChannels:0];
  if ([(PLIOReportStats *)self subscription])
  {
    CFRelease([(PLIOReportStats *)self subscription]);

    [(PLIOReportStats *)self setSubscription:0];
  }
}

- (id)getCurrentStats
{
  Samples = self;
  if (self)
  {
    if (-[PLIOReportStats subscription](self, "subscription") && ([Samples subscribedChannels], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      [Samples subscription];
      v4 = [Samples subscribedChannels];
      Samples = IOReportCreateSamples();
    }

    else
    {
      Samples = 0;
    }
  }

  return Samples;
}

- (id)getDeltaStats
{
  v3 = [(PLIOReportStats *)self getCurrentStats];
  v4 = [(PLIOReportStats *)self ioReportSample];
  v5 = [(PLIOReportStats *)self _calculateDeltaFromPreviousStats:v4 toCurrentStats:v3];

  return v5;
}

- (double)getSampleDuration
{
  v3 = [(PLIOReportStats *)self sampleTimePrevious];
  if (v3)
  {
    v4 = [(PLIOReportStats *)self sampleTime];
    v5 = [(PLIOReportStats *)self sampleTimePrevious];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BOOL)updateStatsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(PLIOReportStats *)self ioReportSample];
  [(PLIOReportStats *)self setPreviousIOReportSample:v5];

  v6 = [(PLIOReportStats *)self getCurrentStats];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] monotonicDate];
    v8 = v4[2](v4, self, v6, v7);

    LOBYTE(v6) = v8 != 0;
    if (v8)
    {
      [(PLIOReportStats *)self setIoReportSample:v8];
      v9 = [(PLIOReportStats *)self sampleTime];
      [(PLIOReportStats *)self setSampleTimePrevious:v9];

      [(PLIOReportStats *)self setSampleTime:v7];
      v7 = v8;
    }
  }

  return v6;
}

- (id)parseIOReportSample
{
  v3 = [(PLIOReportStats *)self ioReportSample];

  if (v3)
  {
    v4 = [(PLIOReportStats *)self ioReportSample];
    v5 = [(PLIOReportStats *)self _parseIOReportSampleFromStats:v4 convertingUnitToUnityScale:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseSimpleDeltaSample
{
  v3 = [(PLIOReportStats *)self ioReportSample];

  if (v3)
  {
    v4 = [(PLIOReportStats *)self getDeltaStats];
    v5 = [(PLIOReportStats *)self _parseIOReportSampleFromStats:v4 convertingUnitToUnityScale:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_calculateDeltaFromPreviousStats:(id)a3 toCurrentStats:(id)a4
{
  SamplesDelta = 0;
  if (a3 && a4)
  {
    SamplesDelta = IOReportCreateSamplesDelta();
    v4 = vars8;
  }

  return SamplesDelta;
}

- (id)_parseIOReportSampleFromStats:(id)a3 convertingUnitToUnityScale:(BOOL)a4
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v8 = [v4 dictionary];
  IOReportIterate();

  v6 = v8;
  return v8;
}

void __76__PLIOReportStats__parseIOReportSampleFromStats_convertingUnitToUnityScale___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Format = IOReportChannelGetFormat();
  if (Format == 2)
  {
    context = v2;
    Count = IOReportStateGetCount();
    v10 = IOReportChannelGetChannelName();
    if (Count >= 1)
    {
      v11 = 0;
      v12 = 0x1E696A000uLL;
      do
      {
        v13 = IOReportStateGetNameForIndex();
        if (!v13)
        {
          v13 = [*(v12 + 3776) stringWithFormat:@"%d", v11];
        }

        v14 = [*(v12 + 3776) stringWithFormat:@"%@_%@", v10, v13];
        IOReportStateGetDutyCycle();
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v16 = v15;
        v17 = &unk_1F5405CD0;
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        [*(a1 + 40) setObject:v18 forKeyedSubscript:v14];
        v19 = IOReportStateGetInTransitions();
        if (v19 != 0x8000000000000000)
        {
          v20 = v19;
          [*(v12 + 3776) stringWithFormat:@"%@_transitions", v14];
          v21 = v10;
          v22 = Count;
          v24 = v23 = v12;
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
          [*(a1 + 40) setObject:v25 forKeyedSubscript:v24];

          v12 = v23;
          Count = v22;
          v10 = v21;
        }

        v11 = (v11 + 1);
      }

      while (Count != v11);
    }

    v2 = context;
  }

  else
  {
    v4 = Format;
    if (Format == 1)
    {
      v5 = IOReportChannelGetChannelName();
      IntegerValue = IOReportSimpleGetIntegerValue();
      Unit = IOReportChannelGetUnit();
      if (*(a1 + 48) == 1)
      {
        [*(a1 + 32) _convertValue:IntegerValue toUnityScaleFromUnit:Unit];
        [MEMORY[0x1E696AD98] numberWithDouble:?];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithLongLong:IntegerValue];
      }
      v8 = ;
      v27 = v8;
      if (v8)
      {
        v28 = v8;
      }

      else
      {
        v28 = &unk_1F5405CD0;
      }

      [*(a1 + 40) setObject:v28 forKeyedSubscript:v5];
    }

    else
    {
      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __76__PLIOReportStats__parseIOReportSampleFromStats_convertingUnitToUnityScale___block_invoke_cold_1(v4, v26);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (double)_convertValue:(int64_t)a3 toUnityScaleFromUnit:(unint64_t)a4
{
  v4 = a4 & 0xFFFFFFFFFFFFFFLL;
  result = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFLL) > 0x81FFFFFFFFLL)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFLL) > 0x87FFFFFFFFLL)
    {
      if (v4 == 0x8800000000)
      {
        v7 = 1000000000.0;
      }

      else
      {
        if (v4 != 0x8B00000000)
        {
          return result;
        }

        v7 = 1.0e12;
      }
    }

    else if (v4 == 0x8200000000)
    {
      v7 = 1000.0;
    }

    else
    {
      if (v4 != 0x8500000000)
      {
        return result;
      }

      v7 = 1000000.0;
    }

    return result * v7;
  }

  else
  {
    if ((a4 & 0xFFFFFFFFFFFFFFLL) > 0x78FFFFFFFFLL)
    {
      if (v4 == 0x7900000000)
      {
        v6 = 1000000.0;
      }

      else
      {
        if (v4 != 0x7C00000000)
        {
          return result;
        }

        v6 = 1000.0;
      }
    }

    else if (v4 == 0x7300000000)
    {
      v6 = 1.0e12;
    }

    else
    {
      if (v4 != 0x7600000000)
      {
        return result;
      }

      v6 = 1000000000.0;
    }

    return result / v6;
  }
}

- (id)currentValueForSimpleChannel:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  if (v4)
  {
    v5 = [(PLIOReportStats *)self getCurrentStats];
    v9 = v4;
    IOReportIterate();

    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __48__PLIOReportStats_currentValueForSimpleChannel___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 1)
  {
    v3 = IOReportChannelGetChannelName();
    if ([v3 isEqualToString:*(a1 + 32)])
    {
      v4 = [MEMORY[0x1E696AD98] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (id)deltaValueForSimpleChannel:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = 0;
  if (v4)
  {
    v5 = [(PLIOReportStats *)self getDeltaStats];
    v9 = v4;
    IOReportIterate();

    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __46__PLIOReportStats_deltaValueForSimpleChannel___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 1)
  {
    v3 = IOReportChannelGetChannelName();
    if ([v3 isEqualToString:*(a1 + 32)])
    {
      v4 = [MEMORY[0x1E696AD98] numberWithLongLong:IOReportSimpleGetIntegerValue()];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (id)currentValueForStateChannel:(id)a3 atIndex:(int)a4
{
  v5 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  if (v5)
  {
    v6 = [(PLIOReportStats *)self getCurrentStats];
    v10 = v5;
    IOReportIterate();

    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __55__PLIOReportStats_currentValueForStateChannel_atIndex___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 2)
  {
    v3 = IOReportChannelGetChannelName();
    if ([v3 isEqualToString:*(a1 + 32)])
    {
      v4 = MEMORY[0x1E696AD98];
      v5 = *(a1 + 48);
      IOReportStateGetDutyCycle();
      v6 = [v4 numberWithDouble:?];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (id)deltaValueForStateChannel:(id)a3 atIndex:(int)a4
{
  v5 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  if (v5)
  {
    v6 = [(PLIOReportStats *)self getDeltaStats];
    v10 = v5;
    IOReportIterate();

    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __53__PLIOReportStats_deltaValueForStateChannel_atIndex___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (IOReportChannelGetFormat() == 2)
  {
    v3 = IOReportChannelGetChannelName();
    if ([v3 isEqualToString:*(a1 + 32)])
    {
      v4 = MEMORY[0x1E696AD98];
      v5 = *(a1 + 48);
      IOReportStateGetDutyCycle();
      v6 = [v4 numberWithDouble:?];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &unk_1F5405CD0;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)subscribeToGroup:(uint64_t *)a1 andSubGroup:(NSObject *)a2 withChannelIDs:manualChannelOnly:.cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "IOReportCopyFilteredChannels returned error = %@ in PLIOReportStats", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToGroup:(uint8_t *)a1 andSubGroup:(void *)a2 withChannelIDs:(uint64_t *)a3 manualChannelOnly:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [a2 unsignedLongLongValue];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&dword_1D8611000, a4, OS_LOG_TYPE_DEBUG, "Add manual channel with ID 0x%llx@\n", a1, 0xCu);
}

- (void)subscribeToGroup:(uint64_t *)a1 andSubGroup:(NSObject *)a2 withChannelIDs:manualChannelOnly:.cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "IOReportCreateSubscription returned error = %@ in PLIOReportStats", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToGroup:(void *)a1 andSubGroup:withChannelIDs:manualChannelOnly:.cold.4(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 subscribedChannels];
  OUTLINED_FUNCTION_5(&dword_1D8611000, v2, v3, "Subscribed to channels %@\n", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)subscribeToGroup:(void *)a1 andSubGroup:withChannelIDs:manualChannelOnly:.cold.5(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 subscription];
  OUTLINED_FUNCTION_5(&dword_1D8611000, v1, v2, "IOReportSubscriptionRef returned subscription = %@ in PLIOReportStats", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void __76__PLIOReportStats__parseIOReportSampleFromStats_convertingUnitToUnityScale___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to parse: unsupported IOReport channel format %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end