@interface WBSAnalyticsLogger
@end

@implementation WBSAnalyticsLogger

id __111__WBSAnalyticsLogger_WBSAnalyticsLoggerExtras__reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) savedAccountStore];
  v3 = [v2 savedAccountsWithPasswords];

  v4 = [*(a1 + 32) duplicatePasswordsInPasswords:v3];
  v5 = [v4 count];
  v21 = [v3 count];
  v6 = [MEMORY[0x1E69C8968] standardPasswordEvaluator];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 userIsNeverSaveMarker] & 1) == 0 && (objc_msgSend(v4, "containsObject:", v12) & 1) == 0)
        {
          v13 = [v12 password];
          v14 = [v6 evaluatePassword:v13];
          v15 = [v14 userShouldBeShownPassiveWarning];

          v5 += v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  v26[0] = @"numberOfFlaggedPasswords";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v27[0] = v16;
  v26[1] = @"totalNumberOfPasswords";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
  v27[1] = v17;
  v26[2] = @"percentageOfFlaggedPasswords";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v5 * 100.0 / v21)];
  v27[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

  return v19;
}

@end