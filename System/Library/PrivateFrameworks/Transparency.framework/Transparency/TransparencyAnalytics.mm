@interface TransparencyAnalytics
+ (BOOL)doWithAnalyticsForEventName:(id)name error:(id *)error block:(id)block;
+ (id)analyticsApplications;
+ (id)errorChain:(id)chain depth:(unint64_t)depth;
+ (id)logger;
+ (id)privacyURI:(id)i;
+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)name error:(id *)error block:(id)block;
+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)name validateType:(unint64_t)type error:(id *)error block:(id)block;
+ (void)unsetGlobalLogger;
- (BOOL)skipLogResult:(id)result;
- (TransparencyAnalytics)init;
- (id)fuzzyTimeSinceDateKey:(id)key;
- (id)fuzzyTimeSinceLastSuccess:(id)success;
- (id)nfsReporting;
- (void)addMultiSamplerForName:(id)name withTimeInterval:(double)interval block:(id)block;
- (void)addNFSReporting:(id)reporting;
- (void)addUserInfoAttributes:(id)attributes error:(id)error;
- (void)dealloc;
- (void)loadCollectionConfiguration;
- (void)logHardFailureForEventNamed:(id)named withAttributes:(id)attributes;
- (void)logMetric:(id)metric withName:(id)name;
- (void)logRockwellForEventNamed:(id)named withAttributes:(id)attributes;
- (void)logSoftFailureForEventNamed:(id)named withAttributes:(id)attributes;
- (void)logSuccessForEventNamed:(id)named;
- (void)noteEventNamed:(id)named;
- (void)noteLaunchSequence:(id)sequence;
- (void)removeMultiSamplerForName:(id)name;
- (void)setCKManateeState:(int)state;
- (void)setFailureNowForPropertyKey:(id)key;
- (void)setSuccessNowForPropertyKey:(id)key;
- (void)setupCollection;
- (void)updateCollectionConfigurationWithData:(id)data;
@end

@implementation TransparencyAnalytics

+ (id)logger
{
  os_unfair_lock_lock(&analytics_lock);
  if (!analytics)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    v4 = [processName isEqualToString:@"transparencyd"];
    v5 = [processName isEqualToString:@"swtransparencyd"];
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

      logger = [(__objc2_class *)*v8 logger];
      [analytics setSfanalytics:logger];
    }

    sfanalytics = [analytics sfanalytics];

    if (sfanalytics)
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
  sfanalytics = [(TransparencyAnalytics *)self sfanalytics];
  [sfanalytics loadCollectionConfiguration];
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

+ (BOOL)doWithAnalyticsForEventName:(id)name error:(id *)error block:(id)block
{
  nameCopy = name;
  if (error)
  {
    v8 = *error;
  }

  else
  {
    v8 = 0;
  }

  v19 = 0;
  v20 = v8;
  v9 = *(block + 2);
  v10 = v8;
  v11 = v9(block, &v20, &v19);
  v12 = v20;

  v13 = v19;
  if (v11)
  {
    v14 = +[TransparencyAnalytics logger];
    [v14 logSuccessForEventNamed:nameCopy];
  }

  else
  {
    v15 = +[TransparencyAnalytics logger];
    v14 = v15;
    if (v12 && v13)
    {
      [v15 logResultForEvent:nameCopy hardFailure:1 result:v12 withAttributes:v13];
    }

    else
    {
      if (!v12)
      {
        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TransparencyErrorUnknown" code:-120 userInfo:0];
        [v14 logResultForEvent:nameCopy hardFailure:1 result:v18];

        goto LABEL_14;
      }

      [v15 logResultForEvent:nameCopy hardFailure:1 result:v12];
    }
  }

  if (error && v12)
  {
    v16 = v12;
    *error = v12;
  }

LABEL_14:

  return v11;
}

+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)name validateType:(unint64_t)type error:(id *)error block:(id)block
{
  nameCopy = name;
  if (error)
  {
    v9 = *error;
  }

  else
  {
    v9 = 0;
  }

  v26 = 0;
  v27 = v9;
  v10 = *(block + 2);
  v11 = v9;
  v12 = v10(block, &v27, &v26);
  v13 = v27;

  v14 = v26;
  if ([nameCopy isEqual:@"ktIDSPV2OptIn"])
  {
    v15 = [v14 objectForKeyedSubscript:@"peerOptIn"];
    v16 = [v15 isEqual:@"On"];

    if (v16)
    {
      v17 = [TransparencyAnalytics formatEventName:@"PV2OptInBoth" application:@"IDS"];

      nameCopy = v17;
    }
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v18 = +[TransparencyAnalytics logger];
      [v18 logSuccessForEventNamed:nameCopy];
      goto LABEL_17;
    }

    v21 = 0;
  }

  else
  {
    v19 = [v14 objectForKeyedSubscript:@"ktSoftFailure"];
    bOOLValue = [v19 BOOLValue];

    v21 = bOOLValue ^ 1;
  }

  v22 = +[TransparencyAnalytics logger];
  v18 = v22;
  if (v13 && v14)
  {
    [v22 logResultForEvent:nameCopy hardFailure:v21 & 1 result:v13 withAttributes:v14];
  }

  else
  {
    if (!v13)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TransparencyErrorUnknown" code:-120 userInfo:0];
      [v18 logResultForEvent:nameCopy hardFailure:v21 & 1 result:v24];

      goto LABEL_21;
    }

    [v22 logResultForEvent:nameCopy hardFailure:v21 & 1 result:v13];
  }

LABEL_17:

  if (error && v13)
  {
    v23 = v13;
    *error = v13;
  }

LABEL_21:

  return v12;
}

+ (unint64_t)doKTResultWithAnalyticsForEventName:(id)name error:(id *)error block:(id)block
{
  blockCopy = block;
  nameCopy = name;
  v9 = [objc_opt_class() doKTResultWithAnalyticsForEventName:nameCopy validateType:0 error:error block:blockCopy];

  return v9;
}

+ (id)errorChain:(id)chain depth:(unint64_t)depth
{
  v33[2] = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  if (depth <= 5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32[0] = @"domain";
    domain = [chainCopy domain];
    v32[1] = @"code";
    v33[0] = domain;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(chainCopy, "code")}];
    v33[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v10 = [v9 mutableCopy];

    userInfo = [chainCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v13 = [self errorChain:v12 depth:depth + 1];
    [v10 setObject:v13 forKeyedSubscript:@"child"];

    userInfo2 = [chainCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A750]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v10;
      array = [MEMORY[0x1E695DF70] array];
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

            v22 = [self errorChain:*(*(&v27 + 1) + 8 * i) depth:depth + 1];
            if (v22)
            {
              [array addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v19);
      }

      v10 = v26;
      if ([array count])
      {
        [v26 setObject:array forKeyedSubscript:@"multiple"];
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

+ (id)privacyURI:(id)i
{
  iCopy = i;
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    kt_hexString = iCopy;
  }

  else
  {
    v5 = [iCopy dataUsingEncoding:4];
    kt_sha256 = [v5 kt_sha256];
    kt_hexString = [kt_sha256 kt_hexString];
  }

  return kt_hexString;
}

- (void)logSuccessForEventNamed:(id)named
{
  namedCopy = named;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics logSuccessForEventNamed:namedCopy];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__TransparencyAnalytics_logSuccessForEventNamed___block_invoke;
    v6[3] = &unk_1E8702080;
    v7 = namedCopy;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v6 errorHandler:&__block_literal_global_118_0];
  }
}

- (void)logHardFailureForEventNamed:(id)named withAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (self->_sfanalytics)
  {
    v9 = [attributesCopy mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:114];
    [v9 setObject:v10 forKeyedSubscript:@"transparencyVersion"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[TransparencySettings getEnvironment](TransparencySettings, "getEnvironment")}];
    [v9 setObject:v11 forKeyedSubscript:@"ktEnvironment"];

    [(SFAnalytics *)self->_sfanalytics logHardFailureForEventNamed:namedCopy withAttributes:v9];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__TransparencyAnalytics_logHardFailureForEventNamed_withAttributes___block_invoke;
    v12[3] = &unk_1E87011D0;
    v13 = namedCopy;
    v14 = v8;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v12 errorHandler:&__block_literal_global_121];
  }
}

- (void)logSoftFailureForEventNamed:(id)named withAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  v8 = attributesCopy;
  if (self->_sfanalytics)
  {
    v9 = [attributesCopy mutableCopy];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:114];
    [v9 setObject:v10 forKeyedSubscript:@"transparencyVersion"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[TransparencySettings getEnvironment](TransparencySettings, "getEnvironment")}];
    [v9 setObject:v11 forKeyedSubscript:@"ktEnvironment"];

    [(SFAnalytics *)self->_sfanalytics logSoftFailureForEventNamed:namedCopy withAttributes:v9];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__TransparencyAnalytics_logSoftFailureForEventNamed_withAttributes___block_invoke;
    v12[3] = &unk_1E87011D0;
    v13 = namedCopy;
    v14 = v8;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v12 errorHandler:&__block_literal_global_123];
  }
}

- (void)noteEventNamed:(id)named
{
  namedCopy = named;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics noteEventNamed:namedCopy];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__TransparencyAnalytics_noteEventNamed___block_invoke;
    v6[3] = &unk_1E8702080;
    v7 = namedCopy;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v6 errorHandler:&__block_literal_global_125_0];
  }
}

- (void)noteLaunchSequence:(id)sequence
{
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics noteLaunchSequence:sequence];
  }
}

- (BOOL)skipLogResult:(id)result
{
  resultCopy = result;
  v4 = resultCopy;
  if (resultCopy && [resultCopy code] == -134)
  {
    domain = [v4 domain];
    v6 = [domain isEqual:@"TransparencyErrorUnknown"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addUserInfoAttributes:(id)attributes error:(id)error
{
  attributesCopy = attributes;
  userInfo = [error userInfo];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__TransparencyAnalytics_addUserInfoAttributes_error___block_invoke;
  v8[3] = &unk_1E87020A8;
  v9 = attributesCopy;
  v7 = attributesCopy;
  [userInfo enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)logMetric:(id)metric withName:(id)name
{
  metricCopy = metric;
  nameCopy = name;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics logMetric:metricCopy withName:nameCopy];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__TransparencyAnalytics_logMetric_withName___block_invoke;
    v9[3] = &unk_1E87011D0;
    v10 = metricCopy;
    v11 = nameCopy;
    [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v9 errorHandler:&__block_literal_global_137];
  }
}

- (void)logRockwellForEventNamed:(id)named withAttributes:(id)attributes
{
  namedCopy = named;
  attributesCopy = attributes;
  if (self->_sfanalytics && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [attributesCopy mutableCopy];
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:114];
    [v7 setObject:v8 forKeyedSubscript:@"transparencyVersion"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[TransparencySettings getEnvironment](TransparencySettings, "getEnvironment")}];
    [v7 setObject:v9 forKeyedSubscript:@"ktEnvironment"];

    [(SFAnalytics *)self->_sfanalytics logRockwellFailureForEventNamed:namedCopy withAttributes:v7];
  }
}

- (void)setSuccessNowForPropertyKey:(id)key
{
  keyCopy = key;
  v4 = [(TransparencyAnalytics *)self failureKey:keyCopy];
  v5 = [(TransparencyAnalytics *)self datePropertyForKey:keyCopy];
  v6 = [(TransparencyAnalytics *)self datePropertyForKey:v4];
  v7 = v6;
  if (!v5 || v6 && [v5 compare:v6] < 0)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(TransparencyAnalytics *)self setDateProperty:date forKey:keyCopy];
  }
}

- (void)setFailureNowForPropertyKey:(id)key
{
  keyCopy = key;
  v4 = [(TransparencyAnalytics *)self failureKey:?];
  v5 = [(TransparencyAnalytics *)self datePropertyForKey:v4];
  if (!v5)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(TransparencyAnalytics *)self setDateProperty:date forKey:v4];
  }

  v7 = [(TransparencyAnalytics *)self datePropertyForKey:keyCopy];
  if (v7 && [v5 compare:v7] < 0)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [(TransparencyAnalytics *)self setDateProperty:date2 forKey:v4];
  }
}

- (id)fuzzyTimeSinceLastSuccess:(id)success
{
  successCopy = success;
  v5 = [(TransparencyAnalytics *)self failureKey:successCopy];
  v6 = [(SFAnalytics *)self->_sfanalytics datePropertyForKey:successCopy];

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

- (id)fuzzyTimeSinceDateKey:(id)key
{
  v3 = [(SFAnalytics *)self->_sfanalytics datePropertyForKey:key];
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

- (void)addMultiSamplerForName:(id)name withTimeInterval:(double)interval block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    v11 = [(SFAnalytics *)sfanalytics AddMultiSamplerForName:nameCopy withTimeInterval:blockCopy block:interval];
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

- (void)removeMultiSamplerForName:(id)name
{
  nameCopy = name;
  sfanalytics = self->_sfanalytics;
  if (sfanalytics)
  {
    [(SFAnalytics *)sfanalytics removeMultiSamplerForName:nameCopy];
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

- (void)updateCollectionConfigurationWithData:(id)data
{
  dataCopy = data;
  [(SFAnalytics *)self->_sfanalytics updateCollectionConfigurationWithData:?];
  sfanalytics = self->_sfanalytics;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[SWTransparencySFAnalytics logger];
    [v5 updateCollectionConfigurationWithData:dataCopy];

    notify_post(kTransparencySFACollectionUpdateName);
  }
}

- (void)addNFSReporting:(id)reporting
{
  reportingCopy = reporting;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nfsObserver = [(TransparencyAnalytics *)selfCopy nfsObserver];

  if (!nfsObserver)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(TransparencyAnalytics *)selfCopy setNfsObserver:weakObjectsHashTable];
  }

  nfsObserver2 = [(TransparencyAnalytics *)selfCopy nfsObserver];
  [nfsObserver2 addObject:reportingCopy];

  objc_sync_exit(selfCopy);
}

- (id)nfsReporting
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nfsObserver = [(TransparencyAnalytics *)selfCopy nfsObserver];
  allObjects = [nfsObserver allObjects];

  objc_sync_exit(selfCopy);
  if ([allObjects count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = allObjects;
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
          status = [v10 status];
          name = [v10 name];
          [dictionary setObject:status forKeyedSubscript:name];
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    dictionary = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)setCKManateeState:(int)state
{
  if (state == 1)
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