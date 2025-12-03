@interface SCDAGoodnessScoreEvaluator
- (BOOL)deviceAdjustTrialEnabled;
- (SCDAGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)context preferences:(id)preferences queue:(id)queue instrumentation:(id)instrumentation;
- (id)_createSettingsConnectionIfRequired;
- (id)_readSidekickBoostsFile:(id)file;
- (int64_t)deviceAdjustTrialValue;
- (unsigned)_getRecentBump:(double)bump ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount;
- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)context;
- (unsigned)getPlatformBias;
- (void)_fetchDevicePlatformBiasIfRequired;
- (void)_reloadTrialConfiguredBoostValues;
- (void)_updateDeviceAdjust:(int64_t)adjust;
- (void)_updateDeviceAdjustTrialEnabled:(BOOL)enabled;
- (void)_updateMediaPlaybackBoost:(unsigned __int8)boost;
- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)enabled;
- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)defined withSecondDegree:(double)degree andFirstDegree:(double)firstDegree andIntercept:(double)intercept;
- (void)_updateSidekickBoosts:(id)boosts;
- (void)dealloc;
- (void)myriadTrialBoostsUpdated:(id)updated;
- (void)preheat;
@end

@implementation SCDAGoodnessScoreEvaluator

- (unsigned)getMyriadAdjustedBoostForGoodnessScoreContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[SCDAGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda", &v16, 0xCu);
  }

  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  myriadShouldIgnoreAdjustedBoost = [(SCDAAssistantPreferences *)self->_pref myriadShouldIgnoreAdjustedBoost];
  ignoreMyriadPlatformBias = [(SCDAAssistantPreferences *)self->_pref ignoreMyriadPlatformBias];
  v8 = ignoreMyriadPlatformBias;
  if (myriadShouldIgnoreAdjustedBoost && ignoreMyriadPlatformBias)
  {
    getPlatformBias = 0;
  }

  else if (myriadShouldIgnoreAdjustedBoost)
  {
    getPlatformBias = [(SCDAGoodnessScoreEvaluator *)self getPlatformBias];
  }

  else
  {
    reasons = [contextCopy reasons];
    lastActivationTime = self->_lastActivationTime;
    [contextCopy mediaPlaybackInterruptedTime];
    getPlatformBias = -[SCDAGoodnessScoreEvaluator _bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:](self, "_bumpGoodnessScore:lastActivationTime:mediaPlaybackInterruptedTime:ignoreAdjustedBoost:recentlyWonBySmallAmount:", reasons, 0, [contextCopy recentlyWonBySmallAmount], lastActivationTime, v12);

    if (!v8)
    {
      getPlatformBias += [(SCDAGoodnessScoreEvaluator *)self getPlatformBias];
    }
  }

  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[SCDAGoodnessScoreEvaluator getMyriadAdjustedBoostForGoodnessScoreContext:]";
    v18 = 2048;
    v19 = getPlatformBias;
    _os_log_impl(&dword_1DA758000, v13, OS_LOG_TYPE_INFO, "%s #scda adjusted score: %ld", &v16, 0x16u);
  }

  if (getPlatformBias >= 0xFF)
  {
    LOBYTE(getPlatformBias) = -1;
  }

  os_unfair_lock_unlock(&self->_scoreEvaluationLock);

  v14 = *MEMORY[0x1E69E9840];
  return getPlatformBias;
}

- (void)preheat
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SCDAGoodnessScoreEvaluator_preheat__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_reloadTrialConfiguredBoostValues
{
  v18[2] = *MEMORY[0x1E69E9840];
  p_queue = &self->_queue;
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1684;
  v15 = __Block_byref_object_dispose__1685;
  v16 = [objc_alloc(MEMORY[0x1E698D1E0]) initWithInstanceContext:self->_deviceInstanceContext];
  [v12[5] setXPCConnectionManagementQueue:*p_queue];
  objc_initWeak(&location, self);
  v4 = v12[5];
  v18[0] = @"RECENT_SIRI_BOOST_TRIAL_ENABLE";
  v18[1] = @"DEVICE_ADJUST_ENABLE";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17[0] = @"RECENT_PLAYBACK_BOOST";
  v17[1] = @"HOMEPOD_BOOST";
  v17[2] = @"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF";
  v17[3] = @"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF";
  v17[4] = @"RECENT_SIRI_BOOST_INTERCEPT";
  v17[5] = @"DEVICE_ADJUST";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__SCDAGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke;
  v8[3] = &unk_1E85D3100;
  objc_copyWeak(&v9, &location);
  v8[4] = &v11;
  [v4 getTrialEnables:v5 doubleFactors:v6 withCompletion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v11, 8);

  v7 = *MEMORY[0x1E69E9840];
}

void __63__SCDAGoodnessScoreEvaluator__reloadTrialConfiguredBoostValues__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
        v56 = 2112;
        v57 = v9;
        _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda Error loading Trial factors: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_TRIAL_ENABLE"];
      v13 = [v12 BOOLValue];
      if (v12)
      {
        [WeakRetained _updateRecentSiriBoostTrialEnabled:v13];
      }

      else
      {
        v14 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1DA758000, v14, OS_LOG_TYPE_DEBUG, "%s #scda Recent Siri Boost Trial Enable Not Loaded", buf, 0xCu);
        }
      }

      v15 = [v7 objectForKeyedSubscript:@"DEVICE_ADJUST_ENABLE"];
      v16 = [v15 BOOLValue];
      v52 = v15;
      if (v15)
      {
        [WeakRetained _updateDeviceAdjustTrialEnabled:v16];
      }

      else
      {
        v17 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1DA758000, v17, OS_LOG_TYPE_DEBUG, "%s #scda Device Adjust Trial Enable not loaded", buf, 0xCu);
        }
      }

      v18 = [v8 objectForKeyedSubscript:@"DEVICE_ADJUST"];
      v51 = v18;
      if (v18)
      {
        [WeakRetained _updateDeviceAdjust:{objc_msgSend(v18, "integerValue")}];
      }

      else
      {
        v19 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          _os_log_debug_impl(&dword_1DA758000, v19, OS_LOG_TYPE_DEBUG, "%s #scda Device Adjust Trial Value not loaded", buf, 0xCu);
        }
      }

      v20 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_SECOND_DEGREE_COEFF"];
      v21 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_FIRST_DEGREE_COEFF"];
      v22 = [v8 objectForKeyedSubscript:@"RECENT_SIRI_BOOST_INTERCEPT"];
      if (v20)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0;
      }

      v53 = v22;
      if (v23 == 1 && v21 && (v24 = v22) != 0)
      {
        [v20 doubleValue];
        v26 = v25;
        [v21 doubleValue];
        v28 = v27;
        [v24 doubleValue];
        v30 = v29;
        v31 = WeakRetained;
        v32 = 1;
        v33 = v26;
        v34 = v28;
      }

      else
      {
        v35 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v56 = 2112;
          v57 = v20;
          v58 = 2112;
          v59 = v21;
          v60 = 2112;
          v61 = v53;
          _os_log_debug_impl(&dword_1DA758000, v35, OS_LOG_TYPE_DEBUG, "%s #scda Recent Siri exponential factors not loaded: %@ %@ %@", buf, 0x2Au);
        }

        v33 = 0.0;
        v34 = 0.0;
        v30 = 0.0;
        v31 = WeakRetained;
        v32 = 0;
      }

      [v31 _updateRecentSiriExponentialBoostDefined:v32 withSecondDegree:v33 andFirstDegree:v34 andIntercept:v30];
      v36 = [v8 objectForKeyedSubscript:@"RECENT_PLAYBACK_BOOST"];
      v37 = [v36 unsignedIntValue];
      if (v36 && v37 <= 0xFF)
      {
        [WeakRetained _updateMediaPlaybackBoost:v37];
      }

      else
      {
        v38 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
          v56 = 2112;
          v57 = v36;
          _os_log_debug_impl(&dword_1DA758000, v38, OS_LOG_TYPE_DEBUG, "%s #scda Trial Playback Boost not loaded: %@", buf, 0x16u);
        }
      }

      if (+[SCDAUtilities isCommunal])
      {
        v50 = v12;
        v39 = [v8 objectForKeyedSubscript:@"HOMEPOD_BOOST"];
        v40 = [v7 objectForKeyedSubscript:@"MULTI_DEVICE_TRIAL_TREATMENT_CONSENSUS"];
        v49 = [v40 BOOLValue];

        v41 = [v39 unsignedIntValue];
        if (v39 && (v42 = v41, v41 <= 0xFF))
        {
          if (SCDAIsInternalInstall_onceToken != -1)
          {
            dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
          }

          if (SCDAIsInternalInstall_isInternal == 1 && !v49)
          {
            v44 = WeakRetained;
            v43 = 12;
          }

          else
          {
            v43 = v42;
            v44 = WeakRetained;
          }

          [v44 _updatePlatformBias:v43];
        }

        else
        {
          v45 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v55 = "[SCDAGoodnessScoreEvaluator _reloadTrialConfiguredBoostValues]_block_invoke";
            v56 = 2112;
            v57 = v39;
            _os_log_debug_impl(&dword_1DA758000, v45, OS_LOG_TYPE_DEBUG, "%s #scda Trial HomePod Boost not loaded: %@", buf, 0x16u);
          }
        }

        v12 = v50;
      }

      v46 = *(*(a1 + 32) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = 0;
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (id)_readSidekickBoostsFile:(id)file
{
  v26 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  if (fileCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if (([defaultManager fileExistsAtPath:fileCopy] & 1) == 0)
    {
      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = fileCopy;
        _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s Unable to find sidekick boosts plist at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_23;
    }

    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:fileCopy];
    if (!v5)
    {
      v12 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = fileCopy;
        _os_log_error_impl(&dword_1DA758000, v12, OS_LOG_TYPE_ERROR, "%s Unable to read sidekick boosts plist file at path %@.", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_22;
    }

    v19 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:&v19];
    v7 = v19;
    if (v7)
    {
      v8 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = fileCopy;
        v24 = 2112;
        v25 = v7;
        _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s Unable to initialize sidekick boosts from plist file at path %@ due to error %@", buf, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6;
LABEL_21:

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }

      v13 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        v16 = v13;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 136315394;
        v21 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
        v22 = 2112;
        v23 = v18;
        _os_log_error_impl(&dword_1DA758000, v16, OS_LOG_TYPE_ERROR, "%s Unexpected type of initialized sidekick boosts plist %@.", buf, 0x16u);
      }
    }

    v10 = 0;
    goto LABEL_21;
  }

  v9 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v21 = "[SCDAGoodnessScoreEvaluator _readSidekickBoostsFile:]";
    _os_log_error_impl(&dword_1DA758000, v9, OS_LOG_TYPE_ERROR, "%s _readSidekickBoostsFile: called with empty filepath", buf, 0xCu);
  }

  v10 = 0;
LABEL_24:

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_fetchDevicePlatformBiasIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_platformBiasAcquisitionState != 2)
  {
    if (+[SCDAUtilities isHorseman])
    {
      [(SCDAGoodnessScoreEvaluator *)self _updatePlatformBias:12];
    }

    self->_platformBiasAcquisitionState = 2;
  }
}

- (id)_createSettingsConnectionIfRequired
{
  dispatch_assert_queue_V2(self->_queue);
  settingsConnection = self->_settingsConnection;
  if (!settingsConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E698D1E0]) initWithInstanceContext:self->_deviceInstanceContext];
    v5 = self->_settingsConnection;
    self->_settingsConnection = v4;

    [(AFSettingsConnection *)self->_settingsConnection setXPCConnectionManagementQueue:self->_queue];
    settingsConnection = self->_settingsConnection;
  }

  v6 = settingsConnection;

  return v6;
}

- (void)_updateSidekickBoosts:(id)boosts
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SCDAGoodnessScoreEvaluator _updateSidekickBoosts:]";
    _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s #scda Error updating sidekick boosts: unsupported platform", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecentSiriExponentialBoostDefined:(BOOL)defined withSecondDegree:(double)degree andFirstDegree:(double)firstDegree andIntercept:(double)intercept
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isExponentialBoostDefined = defined;
  self->_recentSiriSecondDegreeCoefficient = degree;
  self->_recentSiriFirstDegreeCoefficient = firstDegree;
  self->_recentSiriIntercept = intercept;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v11 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    isExponentialBoostDefined = self->_isExponentialBoostDefined;
    recentSiriSecondDegreeCoefficient = self->_recentSiriSecondDegreeCoefficient;
    recentSiriFirstDegreeCoefficient = self->_recentSiriFirstDegreeCoefficient;
    recentSiriIntercept = self->_recentSiriIntercept;
    v17 = 136316162;
    v18 = "[SCDAGoodnessScoreEvaluator _updateRecentSiriExponentialBoostDefined:withSecondDegree:andFirstDegree:andIntercept:]";
    v19 = 1024;
    v20 = isExponentialBoostDefined;
    v21 = 2048;
    v22 = recentSiriSecondDegreeCoefficient;
    v23 = 2048;
    v24 = recentSiriFirstDegreeCoefficient;
    v25 = 2048;
    v26 = recentSiriIntercept;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s #scda updated Trial recent Siri exponential boost to %du %.12f %.12f %.12f", &v17, 0x30u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateDeviceAdjust:(int64_t)adjust
{
  v16 = *MEMORY[0x1E69E9840];
  if ((adjust - 129) > 0xFFFFFFFFFFFFFEFELL)
  {
    os_unfair_lock_lock(&self->_scoreEvaluationLock);
    self->_deviceAdjust = adjust;
    os_unfair_lock_unlock(&self->_scoreEvaluationLock);
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      deviceAdjust = self->_deviceAdjust;
      if (self->_isDeviceAdjustTrialEnabled)
      {
        v7 = @"YES";
      }

      v10 = 136315650;
      v11 = "[SCDAGoodnessScoreEvaluator _updateDeviceAdjust:]";
      v12 = 2112;
      adjustCopy = v7;
      v14 = 2048;
      v15 = deviceAdjust;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda updated Trial Device Adjust to (Enabled: %@) Value %ld", &v10, 0x20u);
    }
  }

  else
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SCDAGoodnessScoreEvaluator _updateDeviceAdjust:]";
      v12 = 2048;
      adjustCopy = adjust;
      _os_log_error_impl(&dword_1DA758000, v5, OS_LOG_TYPE_ERROR, "%s #scda Error: Attempting to assign out of bounds device adjust: %ld", &v10, 0x16u);
    }

    os_unfair_lock_lock(&self->_scoreEvaluationLock);
    self->_deviceAdjust = 0;
    os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateDeviceAdjustTrialEnabled:(BOOL)enabled
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isDeviceAdjustTrialEnabled = enabled;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    deviceAdjust = self->_deviceAdjust;
    if (self->_isDeviceAdjustTrialEnabled)
    {
      v6 = @"YES";
    }

    v9 = 136315650;
    v10 = "[SCDAGoodnessScoreEvaluator _updateDeviceAdjustTrialEnabled:]";
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = deviceAdjust;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda updated isDeviceAdjustTrialEnabled to Enabled: %@ (Value: %ld)", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateRecentSiriBoostTrialEnabled:(BOOL)enabled
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_isRecentSiriBoostTrialEnabled = enabled;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (self->_isRecentSiriBoostTrialEnabled)
    {
      v6 = @"YES";
    }

    v8 = 136315394;
    v9 = "[SCDAGoodnessScoreEvaluator _updateRecentSiriBoostTrialEnabled:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda updated _isRecentSiriBoostTrialEnabled to %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateMediaPlaybackBoost:(unsigned __int8)boost
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_scoreEvaluationLock);
  self->_mediaPlaybackBoost = boost;
  os_unfair_lock_unlock(&self->_scoreEvaluationLock);
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    mediaPlaybackBoost = self->_mediaPlaybackBoost;
    v8 = 136315394;
    v9 = "[SCDAGoodnessScoreEvaluator _updateMediaPlaybackBoost:]";
    v10 = 1024;
    v11 = mediaPlaybackBoost;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda updated _mediaPlaybackBoost to %d", &v8, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (int64_t)deviceAdjustTrialValue
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    deviceAdjust = self->_deviceAdjust;
    v7 = 136315394;
    v8 = "[SCDAGoodnessScoreEvaluator deviceAdjustTrialValue]";
    v9 = 2048;
    v10 = deviceAdjust;
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda device adjust value: %ld", &v7, 0x16u);
  }

  result = self->_deviceAdjust;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)deviceAdjustTrialEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    isDeviceAdjustTrialEnabled = self->_isDeviceAdjustTrialEnabled;
    v7 = 136315394;
    v8 = "[SCDAGoodnessScoreEvaluator deviceAdjustTrialEnabled]";
    v9 = 1024;
    v10 = isDeviceAdjustTrialEnabled;
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s #scda device adjust trial enabled: %du", &v7, 0x12u);
  }

  result = self->_isDeviceAdjustTrialEnabled;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)getPlatformBias
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    myriadPlatformBias = self->_myriadPlatformBias;
    v8 = 136315394;
    v9 = "[SCDAGoodnessScoreEvaluator getPlatformBias]";
    v10 = 1024;
    v11 = myriadPlatformBias;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda bumping goodness score (reason: platform bias, adjusted bias: %d)", &v8, 0x12u);
  }

  myriadInstrumentation = self->_myriadInstrumentation;
  if (myriadInstrumentation)
  {
    [(SCDAInstrumentation *)myriadInstrumentation updateBoost:1 value:self->_myriadPlatformBias];
  }

  result = self->_myriadPlatformBias;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unsigned)_getRecentBump:(double)bump ignoreAdjustedBoost:(BOOL)boost recentlyWonBySmallAmount:(BOOL)amount
{
  v44 = *MEMORY[0x1E69E9840];
  if (boost)
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v38 = 136315138;
      v39 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda ignoring recent event bump", &v38, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    amountCopy = amount;
    v10 = 0.0;
    v11 = 0.0;
    if (+[SCDAUtilities isIOS])
    {
      if (+[SCDAUtilities isDeviceUnlocked])
      {
        if (!+[SCDAUtilities accessibilitySupportsAttentionAwareFeatures])
        {
          v12 = SCDALogContextCore;
          v11 = 4.0;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            v38 = 136315138;
            v39 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
            _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s #scda device is unlocked and doesn't support attention, apply +4 bump", &v38, 0xCu);
          }
        }
      }
    }

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v15 = v14;

    v16 = v15 - bump;
    [(SCDAAssistantPreferences *)self->_pref recencyBoostDecayInterval];
    v18 = 8.0 / v17;
    [(SCDAAssistantPreferences *)self->_pref recencyBoostInitialInterval];
    v20 = v15 - bump - v19;
    v21 = -v20;
    v22 = v20 < 0.0;
    v23 = -0.0;
    if (!v22)
    {
      v23 = v21;
    }

    v24 = v23 * v18 + 8.0;
    if (v24 >= 0.0)
    {
      v10 = v24;
    }

    if (self->_isRecentSiriBoostTrialEnabled && self->_isExponentialBoostDefined)
    {
      v25 = SCDAGoodnessComputeExponentialBoost(bump, v15, self->_recentSiriSecondDegreeCoefficient, self->_recentSiriFirstDegreeCoefficient, self->_recentSiriIntercept);
      v26 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v38 = 136315650;
        v39 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v40 = 2048;
        v41 = v10;
        v42 = 1024;
        *v43 = v25;
        _os_log_impl(&dword_1DA758000, v26, OS_LOG_TYPE_INFO, "%s #scda trial exponential boost configured, replacing %f with %du", &v38, 0x1Cu);
      }

      v10 = v25;
    }

    if (amountCopy && v10 > v11)
    {
      v27 = SCDALogContextCore;
      v28 = 0.0;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v38 = 136316162;
        v39 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v40 = 2048;
        v41 = v16;
        v42 = 2048;
        *v43 = v11;
        *&v43[8] = 2048;
        *&v43[10] = v11;
        *&v43[18] = 2048;
        *&v43[20] = v10;
        _os_log_impl(&dword_1DA758000, v27, OS_LOG_TYPE_INFO, "%s #scda previous close win: canceling recency bump from secsAgo=%f yields %f = %f(act) + %f(siri)", &v38, 0x34u);
      }
    }

    else
    {
      v28 = v10;
    }

    disableRecencyBoost = [(SCDAAssistantPreferences *)self->_pref disableRecencyBoost];
    v30 = SCDALogContextCore;
    if (disableRecencyBoost)
    {
      v31 = 0.0;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v38 = 136315394;
        v39 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
        v40 = 2048;
        v41 = v28;
        _os_log_impl(&dword_1DA758000, v30, OS_LOG_TYPE_INFO, "%s #scda recency boost disabled, clearing it %f -> 0", &v38, 0x16u);
        v30 = SCDALogContextCore;
      }
    }

    else
    {
      v31 = v28;
    }

    if (v11 >= v31)
    {
      v32 = v11;
    }

    else
    {
      v32 = v31;
    }

    v6 = v32;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v38 = 136316162;
      v39 = "[SCDAGoodnessScoreEvaluator _getRecentBump:ignoreAdjustedBoost:recentlyWonBySmallAmount:]";
      v40 = 2048;
      v41 = v16;
      v42 = 1024;
      *v43 = v6;
      *&v43[4] = 2048;
      *&v43[6] = v11;
      *&v43[14] = 2048;
      *&v43[16] = v31;
      _os_log_impl(&dword_1DA758000, v30, OS_LOG_TYPE_INFO, "%s #scda bumptoGoodness secsAgo=%f yields %d = %f(act) + %f(siri)", &v38, 0x30u);
    }

    myriadInstrumentation = self->_myriadInstrumentation;
    if (myriadInstrumentation && v6)
    {
      if (v11 <= v31)
      {
        v34 = v31;
        v35 = 4;
      }

      else
      {
        v34 = v11;
        v35 = 2;
      }

      [(SCDAInstrumentation *)myriadInstrumentation updateBoost:v35 value:v34];
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)myriadTrialBoostsUpdated:(id)updated
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SCDAGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__SCDAGoodnessScoreEvaluator_myriadTrialBoostsUpdated___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SCDAGoodnessScoreEvaluator myriadTrialBoostsUpdated:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s Trial Boosts Updated Notification", &v5, 0xCu);
  }

  result = [*(a1 + 32) _reloadTrialConfiguredBoostValues];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SCDAGoodnessScoreEvaluator;
  [(SCDAGoodnessScoreEvaluator *)&v4 dealloc];
}

- (SCDAGoodnessScoreEvaluator)initWithDeviceInstanceContext:(id)context preferences:(id)preferences queue:(id)queue instrumentation:(id)instrumentation
{
  contextCopy = context;
  preferencesCopy = preferences;
  queueCopy = queue;
  instrumentationCopy = instrumentation;
  v26.receiver = self;
  v26.super_class = SCDAGoodnessScoreEvaluator;
  v15 = [(SCDAGoodnessScoreEvaluator *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deviceInstanceContext, context);
    if (preferencesCopy)
    {
      v17 = preferencesCopy;
    }

    else
    {
      v17 = [[SCDAAssistantPreferences alloc] initWithInstanceContext:v16->_deviceInstanceContext];
    }

    pref = v16->_pref;
    v16->_pref = v17;

    v16->_platformBiasAcquisitionState = 0;
    objc_storeStrong(&v16->_queue, queue);
    v16->_evaluateForAudioAccessory = 0;
    v16->_scoreEvaluationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v16->_myriadInstrumentation, instrumentation);
    *&v16->_mediaPlaybackBoost = 5127;
    v16->_isSpeakerEndpoint = 0;
    endpointModelName = v16->_endpointModelName;
    v16->_endpointModelName = 0;

    *&v16->_isRecentSiriBoostTrialEnabled = 0;
    v16->_isExponentialBoostDefined = 0;
    v20 = MEMORY[0x1E69E9820];
    *&v16->_recentSiriSecondDegreeCoefficient = 0u;
    *&v16->_recentSiriIntercept = 0u;
    block[0] = v20;
    block[1] = 3221225472;
    block[2] = __94__SCDAGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke;
    block[3] = &unk_1E85D3850;
    v21 = v16;
    v25 = v21;
    dispatch_async(queueCopy, block);
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_myriadTrialBoostsUpdated_ name:*MEMORY[0x1E698D088] object:0];
  }

  return v16;
}

uint64_t __94__SCDAGoodnessScoreEvaluator_initWithDeviceInstanceContext_preferences_queue_instrumentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchDevicePlatformBiasIfRequired];
  v2 = *(a1 + 32);

  return [v2 _reloadTrialConfiguredBoostValues];
}

@end