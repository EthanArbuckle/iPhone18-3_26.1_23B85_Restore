@interface PETTestLoggingOutlet
- (PETTestLoggingOutlet)init;
- (void)logDoubleValue:(double)value forEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data;
- (void)logErrorForEvent:(id)event featureId:(id)id reason:(id)reason;
- (void)logUnsignedIntegerValue:(unint64_t)value forEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data;
- (void)reset;
- (void)setUnsignedIntegerValue:(unint64_t)value forEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data;
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
  array = [MEMORY[0x1E695DF70] array];
  allLoggedKeys = self->_allLoggedKeys;
  self->_allLoggedKeys = array;

  array2 = [MEMORY[0x1E695DF70] array];
  allLoggedValues = self->_allLoggedValues;
  self->_allLoggedValues = array2;

  MEMORY[0x1EEE66BB8]();
}

- (void)logErrorForEvent:(id)event featureId:(id)id reason:(id)reason
{
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:reason userInfo:0];
  [v5 raise];
}

- (void)logDoubleValue:(double)value forEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = [PETLoggingUtils keyStringForEvent:event featureId:id stringifiedProperties:properties metaData:data];
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

  self->_lastLoggedDistributionValue = value;
  [(NSMutableArray *)self->_allLoggedKeys addObject:v12];
  allLoggedValues = self->_allLoggedValues;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [(NSMutableArray *)allLoggedValues addObject:v14];

  v15 = MEMORY[0x1E696AD98];
  v16 = [(NSMutableDictionary *)self->_keyValues objectForKeyedSubscript:v12];
  [v16 doubleValue];
  value = [v15 numberWithDouble:v17 + value];
  [(NSMutableDictionary *)self->_keyValues setObject:value forKeyedSubscript:v12];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setUnsignedIntegerValue:(unint64_t)value forEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = [PETLoggingUtils keyStringForEvent:event featureId:id stringifiedProperties:properties metaData:data];
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

  self->_lastLoggedScalarValue = value;
  [(NSMutableArray *)self->_allLoggedKeys addObject:v12];
  allLoggedValues = self->_allLoggedValues;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  [(NSMutableArray *)allLoggedValues addObject:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  [(NSMutableDictionary *)self->_keyValues setObject:v15 forKeyedSubscript:v12];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)logUnsignedIntegerValue:(unint64_t)value forEvent:(id)event featureId:(id)id stringifiedProperties:(id)properties metaData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = [PETLoggingUtils keyStringForEvent:event featureId:id stringifiedProperties:properties metaData:data];
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

  self->_lastLoggedScalarValue = value;
  [(NSMutableArray *)self->_allLoggedKeys addObject:v12];
  allLoggedValues = self->_allLoggedValues;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:value];
  [(NSMutableArray *)allLoggedValues addObject:v14];

  v15 = MEMORY[0x1E696AD98];
  v16 = [(NSMutableDictionary *)self->_keyValues objectForKeyedSubscript:v12];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + value}];
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
    array = [MEMORY[0x1E695DF70] array];
    allLoggedKeys = v2->_allLoggedKeys;
    v2->_allLoggedKeys = array;

    array2 = [MEMORY[0x1E695DF70] array];
    allLoggedValues = v2->_allLoggedValues;
    v2->_allLoggedValues = array2;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyValues = v2->_keyValues;
    v2->_keyValues = v7;
  }

  return v2;
}

@end