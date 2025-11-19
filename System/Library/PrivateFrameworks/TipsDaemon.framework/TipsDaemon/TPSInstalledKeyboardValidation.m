@interface TPSInstalledKeyboardValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSInstalledKeyboardValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSTargetingValidation *)self arrayValue];
  v6 = [(TPSTargetingValidation *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 TPSSafeArrayForKey:@"values"];

    v8 = [v6 TPSSafeStringForKey:@"joinType"];
    if ([v8 isEqualToString:@"AND"])
    {
      v9 = 0;
    }

    else
    {
      if (![v8 isEqualToString:@"OR"])
      {
LABEL_7:

        v5 = v7;
        goto LABEL_8;
      }

      v9 = 1;
    }

    [(TPSTargetingValidation *)self setJoinType:v9];
    goto LABEL_7;
  }

LABEL_8:
  v10 = [(TPSTargetingValidation *)self joinType];
  if (v10 == 1)
  {
    v11 = [v5 na_any:&__block_literal_global_13_0];
    goto LABEL_12;
  }

  if (!v10)
  {
    v11 = [v5 na_all:&__block_literal_global_10];
LABEL_12:
    v12 = v11;
    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:
  v13 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v12, v13];
  }

  v4[2](v4, v12, 0);
}

@end