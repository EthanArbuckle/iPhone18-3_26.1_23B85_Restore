@interface SXConditionValidatorManager
- (BOOL)validateCondition:(id)condition context:(id)context;
- (SXConditionValidatorManager)init;
- (void)addConditionValidator:(id)validator;
@end

@implementation SXConditionValidatorManager

- (SXConditionValidatorManager)init
{
  v6.receiver = self;
  v6.super_class = SXConditionValidatorManager;
  v2 = [(SXConditionValidatorManager *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    validators = v2->_validators;
    v2->_validators = array;
  }

  return v2;
}

- (void)addConditionValidator:(id)validator
{
  if (validator)
  {
    validatorCopy = validator;
    validators = [(SXConditionValidatorManager *)self validators];
    [validators addObject:validatorCopy];
  }
}

- (BOOL)validateCondition:(id)condition context:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  conditionCopy = condition;
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  validators = [(SXConditionValidatorManager *)self validators];
  v9 = [validators copy];

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

        if (![*(*(&v16 + 1) + 8 * i) validateCondition:conditionCopy context:contextCopy])
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