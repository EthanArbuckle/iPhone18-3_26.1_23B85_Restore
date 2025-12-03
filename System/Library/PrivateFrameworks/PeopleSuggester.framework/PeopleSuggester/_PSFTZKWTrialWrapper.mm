@interface _PSFTZKWTrialWrapper
+ (id)sharedInstance;
+ (void)runIfUpdated:(id)updated;
+ (void)runWithData:(id)data;
- (_PSFTZKWTrialWrapper)init;
- (int64_t)loadLevelAsConfidenceCategoryFromFactor:(id)factor withDefault:(int64_t)default;
- (int64_t)loadLevelAsInteractionModelTypeFromFactor:(id)factor withDefault:(int64_t)default;
- (void)loadFactors;
- (void)refresh;
- (void)runIfUpdated:(id)updated;
- (void)runWithData:(id)data;
@end

@implementation _PSFTZKWTrialWrapper

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___PSFTZKWTrialWrapper_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7, block);
  }

  v2 = sharedInstance__pasExprOnceResult_0;

  return v2;
}

+ (void)runWithData:(id)data
{
  dataCopy = data;
  sharedInstance = [self sharedInstance];
  [sharedInstance runWithData:dataCopy];
}

+ (void)runIfUpdated:(id)updated
{
  updatedCopy = updated;
  sharedInstance = [self sharedInstance];
  [sharedInstance runIfUpdated:updatedCopy];
}

- (_PSFTZKWTrialWrapper)init
{
  v20.receiver = self;
  v20.super_class = _PSFTZKWTrialWrapper;
  v2 = [(_PSFTZKWTrialWrapper *)&v20 init];
  if (v2)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v3 = getTRIClientClass_softClass_1;
    v25 = getTRIClientClass_softClass_1;
    if (!getTRIClientClass_softClass_1)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getTRIClientClass_block_invoke_1;
      location[3] = &unk_1E7C23BF0;
      location[4] = &v22;
      __getTRIClientClass_block_invoke_1(location);
      v3 = v23[3];
    }

    v4 = v3;
    _Block_object_dispose(&v22, 8);
    v5 = [v3 clientWithIdentifier:210];
    triClient = v2->_triClient;
    v2->_triClient = v5;

    v7 = objc_alloc(MEMORY[0x1E69C5D60]);
    v8 = objc_opt_new();
    v9 = [v7 initWithGuardedData:v8];
    lock = v2->_lock;
    v2->_lock = v9;

    v11 = objc_alloc(MEMORY[0x1E69C5D60]);
    v12 = objc_opt_new();
    v13 = [v11 initWithGuardedData:v12];
    updateLock = v2->_updateLock;
    v2->_updateLock = v13;

    [(_PSFTZKWTrialWrapper *)v2 loadFactors];
    [(_PSFTZKWTrialWrapper *)v2 flagAsSame];
    objc_initWeak(location, v2);
    v15 = v2->_triClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __28___PSFTZKWTrialWrapper_init__block_invoke;
    v18[3] = &unk_1E7C24830;
    objc_copyWeak(&v19, location);
    v16 = [(TRIClient *)v15 addUpdateHandlerForNamespaceName:@"COREML_SYSTEMS_FACETIME_CONTACT_PREDICTION" usingBlock:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  return v2;
}

- (void)refresh
{
  [(TRIClient *)self->_triClient refresh];

  [(_PSFTZKWTrialWrapper *)self loadFactors];
}

- (int64_t)loadLevelAsConfidenceCategoryFromFactor:(id)factor withDefault:(int64_t)default
{
  factorCopy = factor;
  v7 = [(TRIClient *)self->_triClient levelForFactor:factorCopy withNamespaceName:@"COREML_SYSTEMS_FACETIME_CONTACT_PREDICTION"];
  v8 = v7;
  if (v7)
  {
    if (([v7 longValue] & 0x8000000000000000) == 0 && objc_msgSend(v8, "longValue") < 5)
    {
      default = [v8 longValue];
      goto LABEL_9;
    }

    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSFTZKWTrialWrapper loadLevelAsConfidenceCategoryFromFactor:withDefault:];
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSFTZKWTrialWrapper loadLevelAsConfidenceCategoryFromFactor:withDefault:];
    }
  }

LABEL_9:
  return default;
}

- (int64_t)loadLevelAsInteractionModelTypeFromFactor:(id)factor withDefault:(int64_t)default
{
  factorCopy = factor;
  v7 = [(TRIClient *)self->_triClient levelForFactor:factorCopy withNamespaceName:@"COREML_SYSTEMS_FACETIME_CONTACT_PREDICTION"];
  v8 = v7;
  if (v7)
  {
    if (([v7 longValue] & 0x8000000000000000) == 0 && objc_msgSend(v8, "longValue") < 3)
    {
      default = [v8 longValue];
      goto LABEL_9;
    }

    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSFTZKWTrialWrapper loadLevelAsInteractionModelTypeFromFactor:withDefault:];
    }
  }

  else
  {
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_PSFTZKWTrialWrapper loadLevelAsConfidenceCategoryFromFactor:withDefault:];
    }
  }

LABEL_9:
  return default;
}

- (void)loadFactors
{
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: (Re)-Loading Trial factors.", buf, 2u);
  }

  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35___PSFTZKWTrialWrapper_loadFactors__block_invoke;
  v6[3] = &unk_1E7C24880;
  v6[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "_PSFTZKWTrialWrapper: Finished (re)-loading Trial factors.", buf, 2u);
  }
}

- (void)runWithData:(id)data
{
  dataCopy = data;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___PSFTZKWTrialWrapper_runWithData___block_invoke;
  v7[3] = &unk_1E7C26CA0;
  v8 = dataCopy;
  v6 = dataCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)runIfUpdated:(id)updated
{
  updatedCopy = updated;
  updateLock = self->_updateLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37___PSFTZKWTrialWrapper_runIfUpdated___block_invoke;
  v7[3] = &unk_1E7C26CC8;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  [(_PASLock *)updateLock runWithLockAcquired:v7];
}

- (void)loadLevelAsBooleanFromFactor:(NSObject *)a3 withDefault:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  *v5 = 138412546;
  *&v5[4] = a1;
  *&v5[12] = 2112;
  *&v5[14] = v3;
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, a2, a3, "_PSFTZKWTrialWrapper: TRILevel is nil for %@. Using default of %@", *v5, *&v5[8], *&v5[16], *MEMORY[0x1E69E9840]);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)loadLevelAsConfidenceCategoryFromFactor:withDefault:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "_PSFTZKWTrialWrapper: TRILevel is out-of-range for ATXProactiveSuggestionConfidenceCategory: %@. Using default of %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)loadLevelAsConfidenceCategoryFromFactor:withDefault:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "_PSFTZKWTrialWrapper: TRILevel is nil for %@. Using default of %ld");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)loadLevelAsInteractionModelTypeFromFactor:withDefault:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_8(&dword_1B5ED1000, v0, v1, "_PSFTZKWTrialWrapper: TRILevel is out-of-range for _PSInteractionModelType: %@. Using default of %ld");
  v2 = *MEMORY[0x1E69E9840];
}

@end