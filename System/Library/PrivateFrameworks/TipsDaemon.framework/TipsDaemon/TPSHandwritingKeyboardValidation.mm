@interface TPSHandwritingKeyboardValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSHandwritingKeyboardValidation

- (void)validateWithCompletion:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TPSKeyboardUtilities installedInputModes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([TPSKeyboardUtilities isHandwritingEnabledForInputMode:v10, v14])
          {
            v7 = [MEMORY[0x277D71778] default];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v19 = v10;
              _os_log_impl(&dword_232D6F000, v7, OS_LOG_TYPE_DEFAULT, "Handwriting keyboard enabled: %@", buf, 0xCu);
            }

            LODWORD(v7) = 1;
            goto LABEL_15;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v11 = v7 ^ [(TPSTargetingValidation *)self BOOLValue];
  v12 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v12];
  }

  (*(v4 + 2))(v4, v11 ^ 1u, 0);
  v13 = *MEMORY[0x277D85DE8];
}

@end