@interface WFRemoteExecutionKeyValuePair
- (WFRemoteExecutionKeyValuePair)initWithKey:(id)a3 value:(id)a4;
@end

@implementation WFRemoteExecutionKeyValuePair

- (WFRemoteExecutionKeyValuePair)initWithKey:(id)a3 value:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionKeyValuePair.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionKeyValuePair.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"value"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFRemoteExecutionKeyValuePair;
  v11 = [(WFRemoteExecutionKeyValuePair *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, a3);
    objc_storeStrong(&v12->_value, a4);
    v13 = v12;
  }

  return v12;
}

@end