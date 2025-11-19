@interface PETTestLoggingOutlet
- (PETTestLoggingOutlet)init;
- (void)logDoubleValue:(double)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7;
- (void)logErrorForEvent:(id)a3 featureId:(id)a4 reason:(id)a5;
- (void)logUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7;
- (void)reset;
- (void)setUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7;
@end

@implementation PETTestLoggingOutlet

- (void)reset
{
  previousLoggedKey = self->_previousLoggedKey;
  self->_previousLoggedKey = 0;

  self->_previousLoggedDistributionValue = 0.0;
  lastLoggedKey = self->_lastLoggedKey;
  self->_lastLoggedKey = 0;

  self->_lastLoggedDistributionValue = 0.0;
  v5 = [MEMORY[0x1E695DF70] array];
  allLoggedKeys = self->_allLoggedKeys;
  self->_allLoggedKeys = v5;

  v7 = [MEMORY[0x1E695DF70] array];
  allLoggedValues = self->_allLoggedValues;
  self->_allLoggedValues = v7;

  MEMORY[0x1EEE66BB8]();
}

- (void)logErrorForEvent:(id)a3 featureId:(id)a4 reason:(id)a5
{
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:a5 userInfo:0];
  [v5 raise];
}

- (void)logDoubleValue:(double)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = [PETLoggingUtils keyStringForEvent:a4 featureId:a5 stringifiedProperties:a6 metaData:a7];
  if ([v9 length] >= 0x100)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v9;
      v22 = 1024;
      v23 = 255;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AggD key %@ exceeds max length of %d. Try to shorten the event/property names", &v20, 0x12u);
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:@"key exceeds max length" userInfo:0];
    [v10 raise];
  }

  objc_storeStrong(&self->_previousLoggedKey, self->_lastLoggedKey);
  self->_previousLoggedDistributionValue = self->_lastLoggedDistributionValue;
  lastLoggedKey = self->_lastLoggedKey;
  self->_lastLoggedKey = v9;
  v12 = v9;

  self->_lastLoggedDistributionValue = a3;
  [(NSMutableArray *)self->_allLoggedKeys addObject:v12];
  allLoggedValues = self->_allLoggedValues;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSMutableArray *)allLoggedValues addObject:v14];

  v15 = MEMORY[0x1E696AD98];
  v16 = [(NSMutableDictionary *)self->_keyValues objectForKeyedSubscript:v12];
  [v16 doubleValue];
  v18 = [v15 numberWithDouble:v17 + a3];
  [(NSMutableDictionary *)self->_keyValues setObject:v18 forKeyedSubscript:v12];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = [PETLoggingUtils keyStringForEvent:a4 featureId:a5 stringifiedProperties:a6 metaData:a7];
  if ([v9 length] >= 0x100)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v9;
      v19 = 1024;
      v20 = 255;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AggD key %@ exceeds max length of %d. Try to shorten the event/property names", &v17, 0x12u);
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:@"key exceeds max length" userInfo:0];
    [v10 raise];
  }

  objc_storeStrong(&self->_previousLoggedKey, self->_lastLoggedKey);
  lastLoggedKey = self->_lastLoggedKey;
  self->_previousLoggedScalarValue = self->_lastLoggedScalarValue;
  self->_lastLoggedKey = v9;
  v12 = v9;

  self->_lastLoggedScalarValue = a3;
  [(NSMutableArray *)self->_allLoggedKeys addObject:v12];
  allLoggedValues = self->_allLoggedValues;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableArray *)allLoggedValues addObject:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_keyValues setObject:v15 forKeyedSubscript:v12];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)logUnsignedIntegerValue:(unint64_t)a3 forEvent:(id)a4 featureId:(id)a5 stringifiedProperties:(id)a6 metaData:(id)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = [PETLoggingUtils keyStringForEvent:a4 featureId:a5 stringifiedProperties:a6 metaData:a7];
  if ([v9 length] >= 0x100)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v9;
      v21 = 1024;
      v22 = 255;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AggD key %@ exceeds max length of %d. Try to shorten the event/property names", &v19, 0x12u);
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:@"key exceeds max length" userInfo:0];
    [v10 raise];
  }

  objc_storeStrong(&self->_previousLoggedKey, self->_lastLoggedKey);
  lastLoggedKey = self->_lastLoggedKey;
  self->_previousLoggedScalarValue = self->_lastLoggedScalarValue;
  self->_lastLoggedKey = v9;
  v12 = v9;

  self->_lastLoggedScalarValue = a3;
  [(NSMutableArray *)self->_allLoggedKeys addObject:v12];
  allLoggedValues = self->_allLoggedValues;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableArray *)allLoggedValues addObject:v14];

  v15 = MEMORY[0x1E696AD98];
  v16 = [(NSMutableDictionary *)self->_keyValues objectForKeyedSubscript:v12];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + a3}];
  [(NSMutableDictionary *)self->_keyValues setObject:v17 forKeyedSubscript:v12];

  v18 = *MEMORY[0x1E69E9840];
}

- (PETTestLoggingOutlet)init
{
  v10.receiver = self;
  v10.super_class = PETTestLoggingOutlet;
  v2 = [(PETTestLoggingOutlet *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    allLoggedKeys = v2->_allLoggedKeys;
    v2->_allLoggedKeys = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    allLoggedValues = v2->_allLoggedValues;
    v2->_allLoggedValues = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyValues = v2->_keyValues;
    v2->_keyValues = v7;
  }

  return v2;
}

@end