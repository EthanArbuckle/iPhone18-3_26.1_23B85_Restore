@interface WFRemoteExecutionKeyValuePair
- (WFRemoteExecutionKeyValuePair)initWithKey:(id)key value:(id)value;
@end

@implementation WFRemoteExecutionKeyValuePair

- (WFRemoteExecutionKeyValuePair)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v10 = valueCopy;
  if (keyCopy)
  {
    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionKeyValuePair.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionKeyValuePair.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFRemoteExecutionKeyValuePair;
  v11 = [(WFRemoteExecutionKeyValuePair *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, key);
    objc_storeStrong(&v12->_value, value);
    v13 = v12;
  }

  return v12;
}

@end