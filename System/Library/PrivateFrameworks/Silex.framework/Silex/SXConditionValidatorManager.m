@interface SXConditionValidatorManager
- (BOOL)validateCondition:(id)a3 context:(id)a4;
- (SXConditionValidatorManager)init;
- (void)addConditionValidator:(id)a3;
@end

@implementation SXConditionValidatorManager

- (SXConditionValidatorManager)init
{
  v6.receiver = self;
  v6.super_class = SXConditionValidatorManager;
  v2 = [(SXConditionValidatorManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    validators = v2->_validators;
    v2->_validators = v3;
  }

  return v2;
}

- (void)addConditionValidator:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXConditionValidatorManager *)self validators];
    [v5 addObject:v4];
  }
}

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(SXConditionValidatorManager *)self validators];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![*(*(&v16 + 1) + 8 * i) validateCondition:v6 context:v7])
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  return v14;
}

@end