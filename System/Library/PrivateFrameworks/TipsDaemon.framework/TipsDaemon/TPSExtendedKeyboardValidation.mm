@interface TPSExtendedKeyboardValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSExtendedKeyboardValidation

- (void)validateWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[TPSKeyboardUtilities installedInputModes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    targeting = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (targeting)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != targeting; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([TPSKeyboardUtilities isExtendedSuggestionSupportedForInputMode:v10, v14])
          {
            targeting = [MEMORY[0x277D71778] targeting];
            if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
            {
              [(TPSExtendedKeyboardValidation *)v10 validateWithCompletion:targeting];
            }

            LODWORD(targeting) = 1;
            goto LABEL_15;
          }
        }

        targeting = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (targeting)
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
    LODWORD(targeting) = 0;
  }

  v11 = targeting ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting2, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting2];
  }

  (*(completionCopy + 2))(completionCopy, v11 ^ 1u, 0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Found keyboard with extended suggestion support: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end