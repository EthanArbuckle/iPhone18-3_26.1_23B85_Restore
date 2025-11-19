@interface TPSDictationLanguageValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSDictationLanguageValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  if (!+[TPSKeyboardUtilities isDictationEnabled])
  {
    v9 = 0;
    goto LABEL_13;
  }

  v5 = [(TPSTargetingValidation *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 TPSSafeArrayForKey:@"values"];
    v7 = [v5 TPSSafeStringForKey:@"joinType"];
    if ([v7 isEqualToString:@"AND"])
    {
      v8 = [v6 na_all:&__block_literal_global];
    }

    else
    {
      if (![v7 isEqualToString:@"OR"])
      {
        v9 = 0;
        goto LABEL_11;
      }

      v8 = [v6 na_any:&__block_literal_global_13];
    }

    v9 = v8;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

LABEL_13:
  v10 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v9, v10];
  }

  v4[2](v4, v9, 0);
}

- (void)validateWithCompletion:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 name];
  v7 = [a1 targetContext];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d", &v9, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end