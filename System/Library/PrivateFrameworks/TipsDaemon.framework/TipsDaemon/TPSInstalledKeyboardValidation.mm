@interface TPSInstalledKeyboardValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSInstalledKeyboardValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  arrayValue = [(TPSTargetingValidation *)self arrayValue];
  value = [(TPSTargetingValidation *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [value TPSSafeArrayForKey:@"values"];

    v8 = [value TPSSafeStringForKey:@"joinType"];
    if ([v8 isEqualToString:@"AND"])
    {
      v9 = 0;
    }

    else
    {
      if (![v8 isEqualToString:@"OR"])
      {
LABEL_7:

        arrayValue = v7;
        goto LABEL_8;
      }

      v9 = 1;
    }

    [(TPSTargetingValidation *)self setJoinType:v9];
    goto LABEL_7;
  }

LABEL_8:
  joinType = [(TPSTargetingValidation *)self joinType];
  if (joinType == 1)
  {
    v11 = [arrayValue na_any:&__block_literal_global_13_0];
    goto LABEL_12;
  }

  if (!joinType)
  {
    v11 = [arrayValue na_all:&__block_literal_global_10];
LABEL_12:
    v12 = v11;
    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v12, targeting];
  }

  completionCopy[2](completionCopy, v12, 0);
}

@end