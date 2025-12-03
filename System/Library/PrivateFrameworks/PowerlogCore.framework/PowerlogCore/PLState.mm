@interface PLState
+ (void)load;
- (BOOL)updateWithValue:(id)value;
- (PLState)initWithStateId:(unint64_t)id entryKey:(id)key currValue:(id)value;
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

- (PLState)initWithStateId:(unint64_t)id entryKey:(id)key currValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = PLState;
  v11 = [(PLState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_stateId = id;
    objc_storeStrong(&v11->_entryKey, key);
    objc_storeStrong(&v12->_lastValue, value);
    objc_storeStrong(&v12->_currValue, value);
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    stateChangeTime = v12->_stateChangeTime;
    v12->_stateChangeTime = distantPast;
  }

  return v12;
}

- (void)updateWithLastEntry
{
  v3 = +[PowerlogCore sharedCore];
  storage = [v3 storage];
  entryKey = [(PLState *)self entryKey];
  v8 = [storage lastEntryForKey:entryKey];

  v6 = v8;
  if (v8)
  {
    [(PLState *)self updateWithEntry:v8];
    currValue = [(PLState *)self currValue];
    [(PLState *)self setLastValue:currValue];

    v6 = v8;
  }
}

- (BOOL)updateWithValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (-[PLState currValue](self, "currValue"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [valueCopy isEqual:v5], v5, (v6 & 1) == 0))
  {
    currValue = [(PLState *)self currValue];
    [(PLState *)self setLastValue:currValue];

    [(PLState *)self setCurrValue:valueCopy];
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