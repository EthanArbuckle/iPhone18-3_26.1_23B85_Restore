@interface TransparencyAnalytics
+ (BOOL)doWithAnalyticsForEventName:(id)a3 error:(id *)a4 block:(id)a5;
+ (id)analyticsApplications;
+ (id)errorChain:(id)a3 depth:(unint64_t)a4;
+ (id)logger;
+ (id)privacyURI:(id)a3;
+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)a3 error:(id *)a4 block:(id)a5;
+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)a3 validateType:(unint64_t)a4 error:(id *)a5 block:(id)a6;
+ (void)unsetGlobalLogger;
- (BOOL)skipLogResult:(id)a3;
- (TransparencyAnalytics)init;
- (id)fuzzyTimeSinceDateKey:(id)a3;
- (id)fuzzyTimeSinceLastSuccess:(id)a3;
- (id)nfsReporting;
- (void)addMultiSamplerForName:(id)a3 withTimeInterval:(double)a4 block:(id)a5;
- (void)addNFSReporting:(id)a3;
- (void)addUserInfoAttributes:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)loadCollectionConfiguration;
- (void)logHardFailureForEventNamed:(id)a3 withAttributes:(id)a4;
- (void)logMetric:(id)a3 withName:(id)a4;
- (void)logRockwellForEventNamed:(id)a3 withAttributes:(id)a4;
- (void)logSoftFailureForEventNamed:(id)a3 withAttributes:(id)a4;
- (void)logSuccessForEventNamed:(id)a3;
- (void)noteEventNamed:(id)a3;
- (void)noteLaunchSequence:(id)a3;
- (void)removeMultiSamplerForName:(id)a3;
- (void)setCKManateeState:(int)a3;
- (void)setFailureNowForPropertyKey:(id)a3;
- (void)setSuccessNowForPropertyKey:(id)a3;
- (void)setupCollection;
- (void)updateCollectionConfigurationWithData:(id)a3;
@end

@implementation TransparencyAnalytics

+ (id)logger
{
  os_unfair_lock_lock(&analytics_lock);
  if (!analytics)
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    v3 = [v2 processName];

    v4 = [v3 isEqualToString:@"transparencyd"];
    v5 = [v3 isEqualToString:@"swtransparencyd"];
    v6 = objc_alloc_init(TransparencyAnalytics);
    v7 = analytics;
    analytics = v6;

    if ((v4 & 1) != 0 || v5)
    {
      v8 = off_1E8700ED0;
      if (!v4)
      {
        v8 = off_1E8700E68;
      }

      v9 = [(__objc2_class *)*v8 logger];
      [analytics setSfanalytics:v9];
    }

    v10 = [analytics sfanalytics];

    if (v10)
    {
      [analytics loadCollectionConfiguration];
      [analytics setupCollection];
    }
  }

  os_unfair_lock_unlock(&analytics_lock);
  v11 = analytics;

  return v11;
}

- (TransparencyAnalytics)init
{
  v6.receiver = self;
  v6.super_class = TransparencyAnalytics;
  v2 = [(TransparencyAnalytics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(TransparencyAnalytics *)v2 setToken:0xFFFFFFFFLL];
    v4 = v3;
  }

  return v3;
}

- (void)setupCollection
{
  if ([(TransparencyAnalytics *)self token]== -1)
  {
    v3 = dispatch_get_global_queue(-32768, 0);
    objc_initWeak(&location, self);
    v4 = kTransparencySFACollectionUpdateName;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__TransparencyAnalytics_setupCollection__block_invoke;
    v5[3] = &unk_1E8702058;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v4, &self->_token, v3, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __40__TransparencyAnalytics_setupCollection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_9 != -1)
  {
    __40__TransparencyAnalytics_setupCollection__block_invoke_cold_1();
  }

  v2 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_9;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1E10DB000, v2, OS_LOG_TYPE_DEFAULT, "SFACollection updated, reloading", v3, 2u);
  }

  [WeakRetained loadCollectionConfiguration];
}

uint64_t __40__TransparencyAnalytics_setupCollection__block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  if ([(TransparencyAnalytics *)self token]!= -1)
  {
    notify_cancel([(TransparencyAnalytics *)self token]);
  }

  v3.receiver = self;
  v3.super_class = TransparencyAnalytics;
  [(TransparencyAnalytics *)&v3 dealloc];
}

- (void)loadCollectionConfiguration
{
  v2 = [(TransparencyAnalytics *)self sfanalytics];
  [v2 loadCollectionConfiguration];
}

+ (void)unsetGlobalLogger
{
  os_unfair_lock_lock(&analytics_lock);
  v2 = analytics;
  analytics = 0;

  os_unfair_lock_unlock(&analytics_lock);
}

+ (id)analyticsApplications
{
  if (analyticsApplications_onceToken != -1)
  {
    +[TransparencyAnalytics analyticsApplications];
  }

  v3 = analyticsApplications_applications;

  return v3;
}

void __46__TransparencyAnalytics_analyticsApplications__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"IDS";
  v5[1] = @"TLT";
  v5[2] = @"CK";
  v5[3] = @"MP";
  v5[4] = @"FT";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = analyticsApplications_applications;
  analyticsApplications_applications = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)doWithAnalyticsForEventName:(id)a3 error:(id *)a4 block:(id)a5
{
  v7 = a3;
  if (a4)
  {
    v8 = *a4;
  }

  else
  {
    v8 = 0;
  }

  v19 = 0;
  v20 = v8;
  v9 = *(a5 + 2);
  v10 = v8;
  v11 = v9(a5, &v20, &v19);
  v12 = v20;

  v13 = v19;
  if (v11)
  {
    v14 = +[TransparencyAnalytics logger];
    [v14 logSuccessForEventNamed:v7];
  }

  else
  {
    v15 = +[TransparencyAnalytics logger];
    v14 = v15;
    if (v12 && v13)
    {
      [v15 logResultForEvent:v7 hardFailure:1 result:v12 withAttributes:v13];
    }

    else
    {
      if (!v12)
      {
        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TransparencyErrorUnknown" code:-120 userInfo:0];
        [v14 logResultForEvent:v7 hardFailure:1 result:v18];

        goto LABEL_14;
      }

      [v15 logResultForEvent:v7 hardFailure:1 result:v12];
    }
  }

  if (a4 && v12)
  {
    v16 = v12;
    *a4 = v12;
  }

LABEL_14:

  return v11;
}

+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)a3 validateType:(unint64_t)a4 error:(id *)a5 block:(id)a6
{
  v8 = a3;
  if (a5)
  {
    v9 = *a5;
  }

  else
  {
    v9 = 0;
  }

  v26 = 0;
  v27 = v9;
  v10 = *(a6 + 2);
  v11 = v9;
  v12 = v10(a6, &v27, &v26);
  v13 = v27;

  v14 = v26;
  if ([v8 isEqual:@"ktIDSPV2OptIn"])
  {
    v15 = [v14 objectForKeyedSubscript:@"peerOptIn"];
    v16 = [v15 isEqual:@"On"];

    if (v16)
    {
      v17 = [TransparencyAnalytics formatEventName:@"PV2OptInBoth" application:@"IDS"];

      v8 = v17;
    }
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v18 = +[TransparencyAnalytics logger];
      [v18 logSuccessForEventNamed:v8];
      goto LABEL_17;
    }

    v21 = 0;
  }

  else
  {
    v19 = [v14 objectForKeyedSubscript:@"ktSoftFailure"];
    v20 = [v19 BOOLValue];

    v21 = v20 ^ 1;
  }

  v22 = +[TransparencyAnalytics logger];
  v18 = v22;
  if (v13 && v14)
  {
    [v22 logResultForEvent:v8 hardFailure:v21 & 1 result:v13 withAttributes:v14];
  }

  else
  {
    if (!v13)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TransparencyErrorUnknown" code:-120 userInfo:0];
      [v18 logResultForEvent:v8 hardFailure:v21 & 1 result:v24];

      goto LABEL_21;
    }

    [v22 logResultForEvent:v8 hardFailure:v21 & 1 result:v13];
  }

LABEL_17:

  if (a5 && v13)
  {
    v23 = v13;
    *a5 = v13;
  }

LABEL_21:

  return v12;
}

+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)a3 error:(id *)a4 block:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [objc_opt_class() doKTResultWithAnalyticsForEventName:v8 validateType:0 error:a4 block:v7];

  return v9;
}

+ (id)errorChain:(id)a3 depth:(unint64_t)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 <= 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32[0] = @"domain";
    v7 = [v6 domain];
    v32[1] = @"code";
    v33[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
    v33[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v10 = [v9 mutableCopy];

    v11 = [v6 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v13 = [a1 errorChain:v12 depth:a4 + 1];
    [v10 setObject:v13 forKeyedSubscript:@"child"];

    v14 = [v6 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696A750]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v10;
      v16 = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [a1 errorChain:*(*(&v27 + 1) + 8 * i) depth:a4 + 1];
            if (v22)
            {
              [v16 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v19);
      }

      v10 = v26;
      if ([v16 count])
      {
        [v26 setObject:v16 forKeyedSubscript:@"multiple"];
      }
    }

    v23 = v10;
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)privacyURI:(id)a3
{
  v3 = a3;
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v4 = v3;
  }

  else
  {
    v5 = [v3 dataUsingEncoding:4];
    v6 = [v5 kt_sha256];
    v4 = [v6 kt_hexString];
  }

  return v4;
}

- (void)logSuccessForEventNamed:(id)a3
{
  v4 = a3;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics logSuccessForEventNamed:v4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__TransparencyAnalytics_logSuccessForEventNamed___block_invoke;
    v6[3] = &unk_1E8702080;
    v7 = v4;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v6 errorHandler:&__block_literal_global_118_0];
  }
}

- (void)logHardFailureForEventNamed:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_sfanalytics)
  {
    v9 = [v7 mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:114];
    [v9 setObject:v10 forKeyedSubscript:@"transparencyVersion"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[TransparencySettings getEnvironment](TransparencySettings, "getEnvironment")}];
    [v9 setObject:v11 forKeyedSubscript:@"ktEnvironment"];

    [(SFAnalytics *)self->_sfanalytics logHardFailureForEventNamed:v6 withAttributes:v9];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__TransparencyAnalytics_logHardFailureForEventNamed_withAttributes___block_invoke;
    v12[3] = &unk_1E87011D0;
    v13 = v6;
    v14 = v8;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v12 errorHandler:&__block_literal_global_121];
  }
}

- (void)logSoftFailureForEventNamed:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_sfanalytics)
  {
    v9 = [v7 mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:114];
    [v9 setObject:v10 forKeyedSubscript:@"transparencyVersion"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[TransparencySettings getEnvironment](TransparencySettings, "getEnvironment")}];
    [v9 setObject:v11 forKeyedSubscript:@"ktEnvironment"];

    [(SFAnalytics *)self->_sfanalytics logSoftFailureForEventNamed:v6 withAttributes:v9];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__TransparencyAnalytics_logSoftFailureForEventNamed_withAttributes___block_invoke;
    v12[3] = &unk_1E87011D0;
    v13 = v6;
    v14 = v8;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v12 errorHandler:&__block_literal_global_123];
  }
}

- (void)noteEventNamed:(id)a3
{
  v4 = a3;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics noteEventNamed:v4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__TransparencyAnalytics_noteEventNamed___block_invoke;
    v6[3] = &unk_1E8702080;
    v7 = v4;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v6 errorHandler:&__block_literal_global_125_0];
  }
}

- (void)noteLaunchSequence:(id)a3
{
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics noteLaunchSequence:a3];
  }
}

- (BOOL)skipLogResult:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 code] == -134)
  {
    v5 = [v4 domain];
    v6 = [v5 isEqual:@"TransparencyErrorUnknown"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addUserInfoAttributes:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = [a4 userInfo];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__TransparencyAnalytics_addUserInfoAttributes_error___block_invoke;
  v8[3] = &unk_1E87020A8;
  v9 = v5;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __53__TransparencyAnalytics_addUserInfoAttributes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 hasPrefix:@"swt"])
  {
    v7 = [v5 substringFromIndex:3];
    v11 = v7;
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v8])
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }

    else
    {
      v9 = [v6 description];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)logMetric:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics logMetric:v6 withName:v7];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__TransparencyAnalytics_logMetric_withName___block_invoke;
    v9[3] = &unk_1E87011D0;
    v10 = v6;
    v11 = v7;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v9 errorHandler:&__block_literal_global_137];
  }
}

- (void)logRockwellForEventNamed:(id)a3 withAttributes:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_sfanalytics && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v6 mutableCopy];
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:114];
    [v7 setObject:v8 forKeyedSubscript:@"transparencyVersion"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[TransparencySettings getEnvironment](TransparencySettings, "getEnvironment")}];
    [v7 setObject:v9 forKeyedSubscript:@"ktEnvironment"];

    [(SFAnalytics *)self->_sfanalytics logRockwellFailureForEventNamed:v10 withAttributes:v7];
  }
}

- (void)setSuccessNowForPropertyKey:(id)a3
{
  v9 = a3;
  v4 = [(TransparencyAnalytics *)self failureKey:v9];
  v5 = [(TransparencyAnalytics *)self datePropertyForKey:v9];
  v6 = [(TransparencyAnalytics *)self datePropertyForKey:v4];
  v7 = v6;
  if (!v5 || v6 && [v5 compare:v6] < 0)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [(TransparencyAnalytics *)self setDateProperty:v8 forKey:v9];
  }
}

- (void)setFailureNowForPropertyKey:(id)a3
{
  v9 = a3;
  v4 = [(TransparencyAnalytics *)self failureKey:?];
  v5 = [(TransparencyAnalytics *)self datePropertyForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [(TransparencyAnalytics *)self setDateProperty:v6 forKey:v4];
  }

  v7 = [(TransparencyAnalytics *)self datePropertyForKey:v9];
  if (v7 && [v5 compare:v7] < 0)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [(TransparencyAnalytics *)self setDateProperty:v8 forKey:v4];
  }
}

- (id)fuzzyTimeSinceLastSuccess:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyAnalytics *)self failureKey:v4];
  v6 = [(SFAnalytics *)self->_sfanalytics datePropertyForKey:v4];

  v7 = [(SFAnalytics *)self->_sfanalytics datePropertyForKey:v5];
  v8 = v7;
  if (!(v6 | v7))
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v6 || !v7)
  {
    if (v6 && !v7)
    {
      v10 = MEMORY[0x1E696AD98];
      v12 = [MEMORY[0x1E697AAA0] fuzzyDaysSinceDate:v6] + 1;
      goto LABEL_12;
    }

    v13 = [v6 compare:v7];
    v10 = MEMORY[0x1E696AD98];
    v11 = MEMORY[0x1E697AAA0];
    if ((v13 & 0x8000000000000000) == 0)
    {
      v12 = [MEMORY[0x1E697AAA0] fuzzyDaysSinceDate:v6];
      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = MEMORY[0x1E697AAA0];
  }

  v12 = ~[v11 fuzzyDaysSinceDate:v8];
LABEL_12:
  v9 = [v10 numberWithInteger:v12];
LABEL_13:

  return v9;
}

- (id)fuzzyTimeSinceDateKey:(id)a3
{
  v3 = [(SFAnalytics *)self->_sfanalytics datePropertyForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E697AAA0], "fuzzyDaysSinceDate:", v3)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addMultiSamplerForName:(id)a3 withTimeInterval:(double)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    v11 = [(SFAnalytics *)sfanalytics AddMultiSamplerForName:v8 withTimeInterval:v9 block:a4];
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_9 != -1)
    {
      [TransparencyAnalytics addMultiSamplerForName:withTimeInterval:block:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_9;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E10DB000, v12, OS_LOG_TYPE_ERROR, "SPI violation: multi-sampler may only be called from transparencyd", v13, 2u);
    }
  }
}

uint64_t __71__TransparencyAnalytics_addMultiSamplerForName_withTimeInterval_block___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)removeMultiSamplerForName:(id)a3
{
  v4 = a3;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics removeMultiSamplerForName:v4];
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_9 != -1)
    {
      [TransparencyAnalytics removeMultiSamplerForName:];
    }

    v6 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_9;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_9, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_ERROR, "SPI violation: multi-sampler may only be called from transparencyd", v7, 2u);
    }
  }
}

uint64_t __51__TransparencyAnalytics_removeMultiSamplerForName___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_9 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateCollectionConfigurationWithData:(id)a3
{
  v6 = a3;
  [(SFAnalytics *)self->_sfanalytics updateCollectionConfigurationWithData:?];
  sfanalytics = self->_sfanalytics;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[SWTransparencySFAnalytics logger];
    [v5 updateCollectionConfigurationWithData:v6];

    notify_post(kTransparencySFACollectionUpdateName);
  }
}

- (void)addNFSReporting:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(TransparencyAnalytics *)v4 nfsObserver];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(TransparencyAnalytics *)v4 setNfsObserver:v6];
  }

  v7 = [(TransparencyAnalytics *)v4 nfsObserver];
  [v7 addObject:v8];

  objc_sync_exit(v4);
}

- (id)nfsReporting
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(TransparencyAnalytics *)v2 nfsObserver];
  v4 = [v3 allObjects];

  objc_sync_exit(v2);
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 status];
          v12 = [v10 name];
          [v5 setObject:v11 forKeyedSubscript:v12];
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setCKManateeState:(int)a3
{
  if (a3 == 1)
  {

    [(TransparencyAnalytics *)self setNumberProperty:0 forKey:@"CKManateeState"];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [(TransparencyAnalytics *)self setNumberProperty:v4 forKey:@"CKManateeState"];
  }
}

@end