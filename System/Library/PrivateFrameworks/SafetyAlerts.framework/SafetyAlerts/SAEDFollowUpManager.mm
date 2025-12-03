@interface SAEDFollowUpManager
+ (id)sharedInstance;
- (BOOL)BOOLForDefaultsKey:(id)key defaultValue:(BOOL)value;
- (BOOL)_isIgneousEnabled;
- (BOOL)_shouldDeferFollowUpForSAReason:(unint64_t)reason;
- (BOOL)_shouldRetractFollowUpForSAReason:(unint64_t)reason;
- (BOOL)currentLocationInCoveredRegion;
- (BOOL)hasNumberOverrideForDefaultsKey:(id)key;
- (BOOL)hasValidCurrentLocationInCoveredRegion;
- (BOOL)hasValidLocationServicesEnabled;
- (BOOL)hasValidUptakeCoefficient;
- (BOOL)locationServicesEnabled;
- (BOOL)shouldShowCFUPerUptakeCoefficient;
- (BOOL)userViewedEDSettings;
- (NSUserDefaults)userDefaults;
- (SAEDFollowUpManager)init;
- (float)uptakeCoefficient;
- (id)numberOverrideForDefaultsKey:(id)key defaultValue:(id)value;
- (id)stringForDefaultsKey:(id)key defaultValue:(id)value;
- (unint64_t)_ctSuppressEDFollowUpReason;
- (unint64_t)_saSuppressEDFollowUpReason;
- (unint64_t)uintForDefaultsKey:(id)key defaultValue:(unint64_t)value;
- (void)_addNotificationObservers;
- (void)_evaluateFollowUpStateAsync;
- (void)_evaluateFollowUpState_LOCKED;
- (void)_onCellConfigChanged:(id)changed;
- (void)_postFollowUp;
- (void)_removeNotificationObservers;
- (void)_retractFollowUp;
- (void)dealloc;
- (void)noteUserViewedEDSettings;
- (void)setCtSuppressEDFollowUpReason:(unint64_t)reason;
- (void)setCurrentLocationInCoveredRegion:(BOOL)region;
- (void)setFollowUpState:(unint64_t)state;
- (void)setLocationServicesEnabled:(BOOL)enabled;
- (void)setSAEWEnabledState:(BOOL)state;
- (void)setSaSuppressEDFollowUpReason:(unint64_t)reason;
- (void)setUptakeCoefficient:(float)coefficient;
- (void)start;
@end

@implementation SAEDFollowUpManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SAEDFollowUpManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280D68EF8 != -1)
  {
    dispatch_once(&qword_280D68EF8, block);
  }

  v2 = _MergedGlobals;

  return v2;
}

uint64_t __37__SAEDFollowUpManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  _MergedGlobals = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (SAEDFollowUpManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = SAEDFollowUpManager;
  v2 = [(SAEDFollowUpManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    if ([(SAEDFollowUpManager *)v2 _isIgneousEnabled])
    {
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create("com.apple.SAEDFollowUpManager", v4);
      evaluationQueue = v3->_evaluationQueue;
      v3->_evaluationQueue = v5;
    }

    else
    {
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v13 = 0;
        v14 = 2082;
        v15 = "";
        _os_log_impl(&dword_264550000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,init,!isIgneousEnabled}", buf, 0x12u);
      }
    }

    userDefaults = [(SAEDFollowUpManager *)v3 userDefaults];
    [userDefaults removeObjectForKey:@"saEnabledStateDefaultsWrite"];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_264550000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,start}", v5, 0x12u);
  }

  if ([(SAEDFollowUpManager *)self _isIgneousEnabled])
  {
    [(SAEDFollowUpManager *)self _addNotificationObservers];
    [(SAEDFollowUpManager *)self _evaluateFollowUpStateAsync];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setSAEWEnabledState:(BOOL)state
{
  stateCopy = state;
  v11 = *MEMORY[0x277D85DE8];
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = stateCopy;
    _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,setSAEWEnabledState, state:%{private}hhd}", v6, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SAEDFollowUpManager *)self _removeNotificationObservers];
  v3.receiver = self;
  v3.super_class = SAEDFollowUpManager;
  [(SAEDFollowUpManager *)&v3 dealloc];
}

- (BOOL)_isIgneousEnabled
{
  if (*(SAPlatformInfo::instance(self) + 9) != 1)
  {
    return 1;
  }

  return [(SAEDFollowUpManager *)self BOOLOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.isIgneousEnabled" defaultValue:1];
}

- (void)_evaluateFollowUpStateAsync
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(SAEDFollowUpManager *)self _isIgneousEnabled])
  {
    evaluationQueue = self->_evaluationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SAEDFollowUpManager__evaluateFollowUpStateAsync__block_invoke;
    block[3] = &unk_279B63F18;
    block[4] = self;
    dispatch_async(evaluationQueue, block);
  }

  else
  {
    v4 = SALogObjectWarning;
    if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState with !isIgneousEnabled}", buf, 0x12u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __50__SAEDFollowUpManager__evaluateFollowUpStateAsync__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _evaluateFollowUpState_LOCKED];
  objc_autoreleasePoolPop(v2);
}

- (void)_evaluateFollowUpState_LOCKED
{
  v37[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_evaluationQueue);
  followUpState = [(SAEDFollowUpManager *)self followUpState];
  if (followUpState >= 0x64)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2050;
      v31 = followUpState;
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,followUpState >= SAFollowUpStateRetracted, followUpState:%{public}lu}", buf, 0x1Cu);
    }

    v37[0] = @"NOP";
    v36[0] = @"action";
    v36[1] = @"startingFollowUpState";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:followUpState];
    v37[1] = v5;
    v36[2] = @"ctSuppressEDFollowUpReason";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAEDFollowUpManager ctSuppressEDFollowUpReason](self, "ctSuppressEDFollowUpReason")}];
    v37[2] = v6;
    v36[3] = @"saSuppressEDFollowUpReason";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAEDFollowUpManager saSuppressEDFollowUpReason](self, "saSuppressEDFollowUpReason")}];
    v37[3] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];

    v25 = v8;
    AnalyticsSendEventLazy();
    [(SAEDFollowUpManager *)self _retractFollowUp];
    [(SAEDFollowUpManager *)self _removeNotificationObservers];

    goto LABEL_38;
  }

  _ctSuppressEDFollowUpReason = [(SAEDFollowUpManager *)self _ctSuppressEDFollowUpReason];
  v10 = [(SAEDFollowUpManager *)self _shouldPostFollowUpForCTReason:_ctSuppressEDFollowUpReason];
  _saSuppressEDFollowUpReason = [(SAEDFollowUpManager *)self _saSuppressEDFollowUpReason];
  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2050;
    v31 = followUpState;
    v32 = 2050;
    v33 = _ctSuppressEDFollowUpReason;
    v34 = 2050;
    v35 = _saSuppressEDFollowUpReason;
    _os_log_impl(&dword_264550000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED, followUpState:%{public}lu, ctSuppressEDFollowUpReason:%{public}lu, saSuppressEDFollowUpReason:%{public}lu}", buf, 0x30u);
  }

  v23 = MEMORY[0x277D85DD0];
  v24 = _saSuppressEDFollowUpReason;
  AnalyticsSendEventLazy();
  if (followUpState <= 48)
  {
    if (followUpState && followUpState != 10)
    {
LABEL_16:
      v14 = SALogObjectWarning;
      if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2050;
        v31 = followUpState;
        _os_log_impl(&dword_264550000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,unexpected followUpState, followUpState:%{public}lu}", buf, 0x1Cu);
      }
    }
  }

  else if (followUpState != 49)
  {
    if (followUpState == 50)
    {
      v18 = [(SAEDFollowUpManager *)self _shouldRetractFollowUpForSAReason:_saSuppressEDFollowUpReason, v23, 3221225472, __52__SAEDFollowUpManager__evaluateFollowUpState_LOCKED__block_invoke_47, &__block_descriptor_56_e19___NSDictionary_8__0l, 50, _ctSuppressEDFollowUpReason, _saSuppressEDFollowUpReason]| ~v10;
      v19 = SALogObjectGeneral;
      v20 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v20)
        {
          *buf = 68289026;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          _os_log_impl(&dword_264550000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,posted,retracting FollowUp}", buf, 0x12u);
        }

        [(SAEDFollowUpManager *)self setCtSuppressEDFollowUpReason:_ctSuppressEDFollowUpReason];
        [(SAEDFollowUpManager *)self setSaSuppressEDFollowUpReason:_saSuppressEDFollowUpReason];
        [(SAEDFollowUpManager *)self _retractFollowUp];
        [(SAEDFollowUpManager *)self _removeNotificationObservers];
      }

      else
      {
        if (v20)
        {
          *buf = 68289026;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          _os_log_impl(&dword_264550000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,posted,leaving posted}", buf, 0x12u);
        }

        [(SAEDFollowUpManager *)self setCtSuppressEDFollowUpReason:_ctSuppressEDFollowUpReason];
        [(SAEDFollowUpManager *)self setSaSuppressEDFollowUpReason:_saSuppressEDFollowUpReason];
      }

      goto LABEL_38;
    }

    if (followUpState == 99)
    {
      v13 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        _os_log_impl(&dword_264550000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,retractingFailed,retracting FollowUp}", buf, 0x12u);
      }

      [(SAEDFollowUpManager *)self _retractFollowUp:v23];
      [(SAEDFollowUpManager *)self _removeNotificationObservers];
      goto LABEL_38;
    }

    goto LABEL_16;
  }

  if ((v10 & [(SAEDFollowUpManager *)self _shouldPostFollowUpForSAReason:_saSuppressEDFollowUpReason, v23, 3221225472, __52__SAEDFollowUpManager__evaluateFollowUpState_LOCKED__block_invoke_47, &__block_descriptor_56_e19___NSDictionary_8__0l, followUpState, _ctSuppressEDFollowUpReason, _saSuppressEDFollowUpReason]) == 1)
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      _os_log_impl(&dword_264550000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,posting FollowUp}", buf, 0x12u);
    }

    [(SAEDFollowUpManager *)self setCtSuppressEDFollowUpReason:_ctSuppressEDFollowUpReason];
    [(SAEDFollowUpManager *)self setSaSuppressEDFollowUpReason:_saSuppressEDFollowUpReason];
    [(SAEDFollowUpManager *)self _postFollowUp];
    goto LABEL_38;
  }

  if (v10)
  {
    v16 = [(SAEDFollowUpManager *)self _shouldDeferFollowUpForSAReason:_saSuppressEDFollowUpReason];
    [(SAEDFollowUpManager *)self setCtSuppressEDFollowUpReason:_ctSuppressEDFollowUpReason];
    [(SAEDFollowUpManager *)self setSaSuppressEDFollowUpReason:_saSuppressEDFollowUpReason];
    if (v16)
    {
      v17 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        _os_log_impl(&dword_264550000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,deferring FollowUp}", buf, 0x12u);
      }

      [(SAEDFollowUpManager *)self setFollowUpState:10];
      goto LABEL_38;
    }
  }

  else
  {
    [(SAEDFollowUpManager *)self setCtSuppressEDFollowUpReason:_ctSuppressEDFollowUpReason];
    [(SAEDFollowUpManager *)self setSaSuppressEDFollowUpReason:_saSuppressEDFollowUpReason];
  }

  v21 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    _os_log_impl(&dword_264550000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_evaluateFollowUpState_LOCKED,skipping FollowUp}", buf, 0x12u);
  }

  [(SAEDFollowUpManager *)self setFollowUpState:200];
LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
}

id __52__SAEDFollowUpManager__evaluateFollowUpState_LOCKED__block_invoke_47(void *a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"Evaluate";
  v8[0] = @"action";
  v8[1] = @"startingFollowUpState";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[4]];
  v9[1] = v2;
  v8[2] = @"ctSuppressEDFollowUpReason";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[5]];
  v9[2] = v3;
  v8[3] = @"saSuppressEDFollowUpReason";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_shouldRetractFollowUpForSAReason:(unint64_t)reason
{
  v12 = *MEMORY[0x277D85DE8];
  if (reason == 10000)
  {
LABEL_4:
    v4 = SALogObjectWarning;
    if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 68289282;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2050;
      reasonCopy = reason;
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAEDFollowUp,_shouldRetractFollowUpForSAReason,very unexpected reason, saSuppressEDFollowUpReason:%{public}lu}", v7, 0x1Cu);
    }

    goto LABEL_6;
  }

  if (reason != 30000)
  {
    if (reason != 20000)
    {
      result = 0;
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_6:
  result = 1;
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldDeferFollowUpForSAReason:(unint64_t)reason
{
  result = 1;
  if (reason <= 7999)
  {
    if (reason == 1000 || reason == 2000)
    {
      return result;
    }

    return 0;
  }

  if (reason != 8000 && reason != 9000)
  {
    return 0;
  }

  return result;
}

- (NSUserDefaults)userDefaults
{
  if (qword_280D68F00 != -1)
  {
    dispatch_once(&qword_280D68F00, &__block_literal_global);
  }

  v3 = qword_280D68F08;

  return v3;
}

uint64_t __35__SAEDFollowUpManager_userDefaults__block_invoke()
{
  qword_280D68F08 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.safetyalerts"];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasNumberOverrideForDefaultsKey:(id)key
{
  keyCopy = key;
  if (*(SAPlatformInfo::instance(keyCopy) + 9) != 1)
  {
    goto LABEL_4;
  }

  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v6 = [userDefaults objectForKey:keyCopy];

  objc_opt_class();
  LOBYTE(userDefaults) = objc_opt_isKindOfClass();

  if (userDefaults)
  {
    v7 = 1;
  }

  else
  {
LABEL_4:
    v7 = 0;
  }

  return v7;
}

- (id)numberOverrideForDefaultsKey:(id)key defaultValue:(id)value
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (*(SAPlatformInfo::instance(valueCopy) + 9) != 1)
  {
    goto LABEL_6;
  }

  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v9 = [userDefaults objectForKey:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v9 = valueCopy;
    goto LABEL_7;
  }

  v10 = SALogObjectWarning;
  if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 68289794;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = keyCopy;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = valueCopy;
    _os_log_impl(&dword_264550000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,numberOverrideForDefaultsKey,#overriding, key:%{public, location:escape_only}@, overrideNumber:%{public, location:escape_only}@, defaultValue:%{public, location:escape_only}@}", v13, 0x30u);
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)BOOLForDefaultsKey:(id)key defaultValue:(BOOL)value
{
  keyCopy = key;
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v8 = [userDefaults objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v8 BOOLValue];
  }

  return value;
}

- (unint64_t)uintForDefaultsKey:(id)key defaultValue:(unint64_t)value
{
  keyCopy = key;
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v8 = [userDefaults objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v8 unsignedIntegerValue];
  }

  return value;
}

- (id)stringForDefaultsKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v9 = [userDefaults objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = valueCopy;
  }

  v11 = v10;

  return v10;
}

- (void)setFollowUpState:(unint64_t)state
{
  v16[5] = *MEMORY[0x277D85DE8];
  followUpState = [(SAEDFollowUpManager *)self followUpState];
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [userDefaults setObject:v7 forKey:@"enhancedDelivery.followUp.state"];

  if (followUpState != state)
  {
    v16[0] = @"SetFollowupState";
    v15[0] = @"action";
    v15[1] = @"startingFollowUpState";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:followUpState];
    v16[1] = v8;
    v15[2] = @"newFollowUpState";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    v16[2] = v9;
    v15[3] = @"ctSuppressEDFollowUpReason";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAEDFollowUpManager ctSuppressEDFollowUpReason](self, "ctSuppressEDFollowUpReason")}];
    v16[3] = v10;
    v15[4] = @"saSuppressEDFollowUpReason";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAEDFollowUpManager saSuppressEDFollowUpReason](self, "saSuppressEDFollowUpReason")}];
    v16[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

    v13 = v12;
    AnalyticsSendEventLazy();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setCtSuppressEDFollowUpReason:(unint64_t)reason
{
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  [userDefaults setObject:v4 forKey:@"enhancedDelivery.followUp.ctSuppressionReason"];
}

- (void)setSaSuppressEDFollowUpReason:(unint64_t)reason
{
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  [userDefaults setObject:v4 forKey:@"enhancedDelivery.followUp.saSuppressionReason"];
}

- (BOOL)userViewedEDSettings
{
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  v3 = [userDefaults objectForKey:@"enhancedDelivery.followUp.settingsViewedDate"];
  v4 = v3 != 0;

  return v4;
}

- (void)_postFollowUp
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&dword_264550000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_postFollowUp}", buf, 0x12u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v4 setUniqueIdentifier:@"com.apple.safetyalerts.enhancedDelivery.onboardPrompt"];
  [v4 setGroupIdentifier:*MEMORY[0x277CFE440]];
  [v4 setDisplayStyle:2];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"SAFETYALERTS_ENHANCED_DELIVERY_FOLLOW_UP_TITLE" value:&stru_2876026C8 table:@"SAEDFollowUpManager"];
  [v4 setTitle:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"SAFETYALERTS_ENHANCED_DELIVERY_FOLLOW_UP_BODY_PHONE" value:&stru_2876026C8 table:@"SAEDFollowUpManager"];
  [v4 setInformativeText:v8];

  v9 = MEMORY[0x277CFE4F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"SAFETYALERTS_ENHANCED_DELIVERY_FOLLOW_UP_REDIRECT_ACTION_TITLE" value:&stru_2876026C8 table:@"SAEDFollowUpManager"];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=NOTIFICATIONS_ID&path=com.apple.cmas.EmergencyAlerts"];
  v13 = [v9 actionWithLabel:v11 url:v12];

  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [v4 setActions:v14];

  v15 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.safetyalerts"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __36__SAEDFollowUpManager__postFollowUp__block_invoke;
  v17[3] = &unk_279B63FD0;
  v17[4] = self;
  [v15 postFollowUpItem:v4 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __36__SAEDFollowUpManager__postFollowUp__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SAEDFollowUpManager__postFollowUp__block_invoke_2;
  block[3] = &unk_279B63FA8;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __36__SAEDFollowUpManager__postFollowUp__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SAEDFollowUpManager__postFollowUp__block_invoke_3;
  v4[3] = &unk_279B63FA8;
  v6 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  __36__SAEDFollowUpManager__postFollowUp__block_invoke_3(v4);

  objc_autoreleasePoolPop(v2);
}

uint64_t __36__SAEDFollowUpManager__postFollowUp__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_264550000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_postFollowUp,posted FollowUp successfully}", &v8, 0x12u);
    }

    v3 = 50;
  }

  else
  {
    v4 = SALogObjectWarning;
    if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAEDFollowUp,_postFollowUp,failed to post FollowUp, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }

    v3 = 49;
  }

  result = [*(a1 + 32) setFollowUpState:v3];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_retractFollowUp
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_264550000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_retractFollowUp}", buf, 0x12u);
  }

  v4 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.safetyalerts"];
  v13 = @"com.apple.safetyalerts.enhancedDelivery.onboardPrompt";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SAEDFollowUpManager__retractFollowUp__block_invoke;
  v9[3] = &unk_279B63FF8;
  v6 = v4;
  v10 = v6;
  v11 = v5;
  selfCopy = self;
  v7 = v5;
  [v6 countOfPendingFollowUpItemsWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __39__SAEDFollowUpManager__retractFollowUp__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    if (a2)
    {
      v11 = a1[4];
      v12 = a1[5];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __39__SAEDFollowUpManager__retractFollowUp__block_invoke_92;
      v15[3] = &unk_279B63FD0;
      v15[4] = a1[6];
      [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 completion:v15];
      goto LABEL_9;
    }

    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v7 = "{msg%{public}.0s:#SAEDFollowUp,_retractFollowUp,no pendingFollowUpItems}";
    v8 = v13;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 18;
    goto LABEL_4;
  }

  v6 = SALogObjectWarning;
  if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = v5;
    v7 = "{msg%{public}.0s:#SAEDFollowUp,_retractFollowUp,error from countOfPendingFollowUpItemsWithCompletion, error:%{public, location:escape_only}@}";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 28;
LABEL_4:
    _os_log_impl(&dword_264550000, v8, v9, v7, buf, v10);
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

void __39__SAEDFollowUpManager__retractFollowUp__block_invoke_92(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SAEDFollowUpManager__retractFollowUp__block_invoke_2;
  block[3] = &unk_279B63FA8;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __39__SAEDFollowUpManager__retractFollowUp__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SAEDFollowUpManager__retractFollowUp__block_invoke_3;
  v4[3] = &unk_279B63FA8;
  v6 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  __39__SAEDFollowUpManager__retractFollowUp__block_invoke_3(v4);

  objc_autoreleasePoolPop(v2);
}

uint64_t __39__SAEDFollowUpManager__retractFollowUp__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_264550000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_retractFollowUp,cleared FollowUp successfully}", &v8, 0x12u);
    }

    v3 = 100;
  }

  else
  {
    v4 = SALogObjectWarning;
    if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAEDFollowUp,_retractFollowUp,failed to clear FollowUp, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }

    v3 = 99;
  }

  result = [*(a1 + 32) setFollowUpState:v3];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)_ctSuppressEDFollowUpReason
{
  v27 = *MEMORY[0x277D85DE8];
  evaluationQueue = self->_evaluationQueue;
  v4 = _CTServerConnectionCreateOnTargetQueue();
  CellBroadcastConfig = _CTServerConnectionGetCellBroadcastConfig();
  v6 = SALogObjectWarning;
  if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289538;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2050;
    v24 = CellBroadcastConfig;
    v25 = 2050;
    v26 = CellBroadcastConfig >> 32;
    _os_log_impl(&dword_264550000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAEDFollowUp,_ctSuppressEDFollowUpReason,_CTServerConnectionGetCellBroadcastConfig error, error.domain:%{public}ld, error.error:%{public}ld}", buf, 0x26u);
  }

  CFRelease(v4);
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2114;
    v24 = 0;
    _os_log_impl(&dword_264550000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_ctSuppressEDFollowUpReason,_CTServerConnectionGetCellBroadcastConfig, configDict:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v8 = [0 objectForKeyedSubscript:@"EmergencyAlertsPref"];
  bOOLValue = [v8 BOOLValue];

  v10 = [0 objectForKeyedSubscript:@"EnhancedDeliveryAvailability"];
  bOOLValue2 = [v10 BOOLValue];

  v12 = [0 objectForKeyedSubscript:@"EnhancedDeliveryPref"];
  bOOLValue3 = [v12 BOOLValue];

  if (*(SAPlatformInfo::instance(v14) + 9) == 1)
  {
    LODWORD(bOOLValue) = [(SAEDFollowUpManager *)self BOOLOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.emergencyAlertsEnabled" defaultValue:bOOLValue];
    LOBYTE(bOOLValue2) = [(SAEDFollowUpManager *)self BOOLOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.enhancedDeliveryAvailable" defaultValue:bOOLValue2];
    LOBYTE(bOOLValue3) = [(SAEDFollowUpManager *)self BOOLOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.enhancedDeliveryPrefEnabled" defaultValue:bOOLValue3];
  }

  if (bOOLValue && (bOOLValue2 & 1) != 0)
  {
    if (bOOLValue3)
    {
      v15 = 1000300;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = 100;
    if (bOOLValue)
    {
      v16 = 200;
    }

    v15 = v16 + 1000000;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unint64_t)_saSuppressEDFollowUpReason
{
  if (![(SAEDFollowUpManager *)self _currentDeviceHasEnhancedDeliverySwitch])
  {
    return 20000;
  }

  if ([(SAEDFollowUpManager *)self userViewedEDSettings])
  {
    return 30000;
  }

  if (![(SAEDFollowUpManager *)self hasValidLocationServicesEnabled])
  {
    return 1000;
  }

  if (![(SAEDFollowUpManager *)self locationServicesEnabled])
  {
    return 40000;
  }

  if (![(SAEDFollowUpManager *)self hasValidCurrentLocationInCoveredRegion])
  {
    return 2000;
  }

  if (![(SAEDFollowUpManager *)self currentLocationInCoveredRegion])
  {
    return 50000;
  }

  if (![(SAEDFollowUpManager *)self hasValidUptakeCoefficient])
  {
    return 8000;
  }

  if ([(SAEDFollowUpManager *)self shouldShowCFUPerUptakeCoefficient])
  {
    return 0;
  }

  return 9000;
}

- (void)setCurrentLocationInCoveredRegion:(BOOL)region
{
  self->_currentLocationInCoveredRegion = region;
  if (!self->_currentLocationInCoveredRegion_Valid)
  {
    self->_currentLocationInCoveredRegion_Valid = 1;
    [(SAEDFollowUpManager *)self _evaluateFollowUpStateAsync];
  }
}

- (BOOL)currentLocationInCoveredRegion
{
  v11 = *MEMORY[0x277D85DE8];
  hasValidCurrentLocationInCoveredRegion = [(SAEDFollowUpManager *)self hasValidCurrentLocationInCoveredRegion];
  if (!hasValidCurrentLocationInCoveredRegion)
  {
    v4 = SALogObjectWarning;
    hasValidCurrentLocationInCoveredRegion = os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR);
    if (hasValidCurrentLocationInCoveredRegion)
    {
      v8[0] = 68289026;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:currentLocationInCoveredRegion + !hasValidCurrentLocationInCoveredRegion}", v8, 0x12u);
    }
  }

  currentLocationInCoveredRegion = self->_currentLocationInCoveredRegion;
  if (*(SAPlatformInfo::instance(hasValidCurrentLocationInCoveredRegion) + 9) == 1)
  {
    LOBYTE(currentLocationInCoveredRegion) = [(SAEDFollowUpManager *)self BOOLOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.currentLocationInCoveredRegion" defaultValue:currentLocationInCoveredRegion];
  }

  v6 = *MEMORY[0x277D85DE8];
  return currentLocationInCoveredRegion;
}

- (BOOL)hasValidCurrentLocationInCoveredRegion
{
  if (self->_currentLocationInCoveredRegion_Valid)
  {
    return 1;
  }

  if (*(SAPlatformInfo::instance(self) + 9) != 1)
  {
    return 0;
  }

  return [(SAEDFollowUpManager *)self hasNumberOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.currentLocationInCoveredRegion"];
}

- (void)setLocationServicesEnabled:(BOOL)enabled
{
  self->_locationServicesEnabled = enabled;
  if (!self->_locationServicesEnabled_Valid)
  {
    self->_locationServicesEnabled_Valid = 1;
    [(SAEDFollowUpManager *)self _evaluateFollowUpStateAsync];
  }
}

- (BOOL)locationServicesEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  hasValidLocationServicesEnabled = [(SAEDFollowUpManager *)self hasValidLocationServicesEnabled];
  if (!hasValidLocationServicesEnabled)
  {
    v4 = SALogObjectWarning;
    hasValidLocationServicesEnabled = os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR);
    if (hasValidLocationServicesEnabled)
    {
      v8[0] = 68289026;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:locationServicesEnabled + !hasValidLocationServicesEnabled}", v8, 0x12u);
    }
  }

  locationServicesEnabled = self->_locationServicesEnabled;
  if (*(SAPlatformInfo::instance(hasValidLocationServicesEnabled) + 9) == 1)
  {
    LOBYTE(locationServicesEnabled) = [(SAEDFollowUpManager *)self BOOLOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.locationServicesEnabled" defaultValue:locationServicesEnabled];
  }

  v6 = *MEMORY[0x277D85DE8];
  return locationServicesEnabled;
}

- (BOOL)hasValidLocationServicesEnabled
{
  if (self->_locationServicesEnabled_Valid)
  {
    return 1;
  }

  if (*(SAPlatformInfo::instance(self) + 9) != 1)
  {
    return 0;
  }

  return [(SAEDFollowUpManager *)self hasNumberOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.locationServicesEnabled"];
}

- (void)setUptakeCoefficient:(float)coefficient
{
  self->_uptakeCoefficient = coefficient;
  if (!self->_uptakeCoefficient_Valid)
  {
    self->_uptakeCoefficient_Valid = 1;
    [(SAEDFollowUpManager *)self _evaluateFollowUpStateAsync];
  }
}

- (float)uptakeCoefficient
{
  v15 = *MEMORY[0x277D85DE8];
  hasValidUptakeCoefficient = [(SAEDFollowUpManager *)self hasValidUptakeCoefficient];
  if (!hasValidUptakeCoefficient)
  {
    v4 = SALogObjectWarning;
    hasValidUptakeCoefficient = os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR);
    if (hasValidUptakeCoefficient)
    {
      v12[0] = 68289026;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:uptakeCoefficient + !hasValidUptakeCoefficient}", v12, 0x12u);
    }
  }

  uptakeCoefficient = self->_uptakeCoefficient;
  if (*(SAPlatformInfo::instance(hasValidUptakeCoefficient) + 9) == 1)
  {
    *&v6 = uptakeCoefficient;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    v8 = [(SAEDFollowUpManager *)self numberOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.uptakeCoefficient" defaultValue:v7];
    [v8 floatValue];
    uptakeCoefficient = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return uptakeCoefficient;
}

- (BOOL)hasValidUptakeCoefficient
{
  if (self->_uptakeCoefficient_Valid)
  {
    return 1;
  }

  if (*(SAPlatformInfo::instance(self) + 9) != 1)
  {
    return 0;
  }

  return [(SAEDFollowUpManager *)self hasNumberOverrideForDefaultsKey:@"enhancedDelivery.followUp.override.uptakeCoefficient"];
}

- (BOOL)shouldShowCFUPerUptakeCoefficient
{
  v24 = *MEMORY[0x277D85DE8];
  [(SAEDFollowUpManager *)self uptakeCoefficient];
  v4 = v3;
  userDefaults = [(SAEDFollowUpManager *)self userDefaults];
  *&v6 = v4;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [userDefaults setObject:v7 forKey:@"enhancedDelivery.followUp.lastTestedUptakeCoefficient"];

  v8 = v4 * 1000000.0;
  v9 = arc4random_uniform(0xF4240u);
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 68290050;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1026;
    v17 = v8 > v9;
    v18 = 2050;
    v19 = v4;
    v20 = 2050;
    v21 = v8;
    v22 = 2050;
    v23 = v9;
    _os_log_impl(&dword_264550000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,shouldShowCFUPerUptakeCoefficient, showCFU:%{public}hhd, uptakeCoefficient:%{public}f, threshold:%{public}f, randomValue:%{public}f}", v13, 0x36u);
  }

  result = v8 > v9;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_onCellConfigChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_264550000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_onCellConfigChanged}", v6, 0x12u);
  }

  [(SAEDFollowUpManager *)self _evaluateFollowUpStateAsync];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addNotificationObservers
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_264550000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_addNotificationObservers}", v6, 0x12u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__onCellConfigChanged_ name:*MEMORY[0x277CC4110] object:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeNotificationObservers
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_264550000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,_removeNotificationObservers}", v6, 0x12u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CC4110] object:0];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)noteUserViewedEDSettings
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_264550000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAEDFollowUp,noteUserViewedEDSettings}", v5, 0x12u);
  }

  [(SAEDFollowUpManager *)self setUserViewedEDSettings:1];
  v4 = *MEMORY[0x277D85DE8];
}

@end