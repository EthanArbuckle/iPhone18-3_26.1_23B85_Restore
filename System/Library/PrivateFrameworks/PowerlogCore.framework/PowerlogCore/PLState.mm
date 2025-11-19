@interface PLState
+ (void)load;
- (BOOL)updateWithValue:(id)a3;
- (PLState)initWithStateId:(unint64_t)a3 entryKey:(id)a4 currValue:(id)a5;
- (void)updateWithLastEntry;
@end

@implementation PLState

+ (void)load
{
  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = objc_opt_class();
    if (v3 != objc_opt_class())
    {
      v4 = objc_opt_class();

      [PLStateTrackingComposition registerState:v4];
    }
  }
}

- (PLState)initWithStateId:(unint64_t)a3 entryKey:(id)a4 currValue:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PLState;
  v11 = [(PLState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_stateId = a3;
    objc_storeStrong(&v11->_entryKey, a4);
    objc_storeStrong(&v12->_lastValue, a5);
    objc_storeStrong(&v12->_currValue, a5);
    v13 = [MEMORY[0x1E695DF00] distantPast];
    stateChangeTime = v12->_stateChangeTime;
    v12->_stateChangeTime = v13;
  }

  return v12;
}

- (void)updateWithLastEntry
{
  v3 = +[PowerlogCore sharedCore];
  v4 = [v3 storage];
  v5 = [(PLState *)self entryKey];
  v8 = [v4 lastEntryForKey:v5];

  v6 = v8;
  if (v8)
  {
    [(PLState *)self updateWithEntry:v8];
    v7 = [(PLState *)self currValue];
    [(PLState *)self setLastValue:v7];

    v6 = v8;
  }
}

- (BOOL)updateWithValue:(id)a3
{
  v4 = a3;
  if (v4 && (-[PLState currValue](self, "currValue"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqual:v5], v5, (v6 & 1) == 0))
  {
    v8 = [(PLState *)self currValue];
    [(PLState *)self setLastValue:v8];

    [(PLState *)self setCurrValue:v4];
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLState *)self updateWithValue:v9];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateWithValue:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a1 lastValue];
  v7 = [a1 currValue];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "%@ Last:%@ Curr:%@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

@end