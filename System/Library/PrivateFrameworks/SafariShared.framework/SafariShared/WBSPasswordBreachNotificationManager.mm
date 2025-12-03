@interface WBSPasswordBreachNotificationManager
+ (BOOL)_highLevelDomain:(id)domain isIncludedInTopFraudTargets:(id)targets;
+ (id)_bodyForHighLevelDomains:(id)domains deviceClass:(int)class topFraudTargets:(id)targets;
+ (id)_bodyForSavedAccounts:(id)accounts withTopFraudTargets:(id)targets;
+ (unint64_t)_bodyStyleForTopFraudTargetDomains:(id)domains sensitiveDomains:(id)sensitiveDomains passwordsCount:(unint64_t)count;
- (WBSPasswordBreachNotificationManager)init;
- (id)_contentWithSavedAccounts:(id)accounts topFraudTargets:(id)targets;
- (id)_passwordManagerURLForSavedAccount:(id)account;
- (id)_titleForSavedAccounts:(id)accounts;
- (void)addBreachNotificationForSavedAccounts:(id)accounts withCompletionHandler:(id)handler;
@end

@implementation WBSPasswordBreachNotificationManager

- (WBSPasswordBreachNotificationManager)init
{
  v9.receiver = self;
  v9.super_class = WBSPasswordBreachNotificationManager;
  v2 = [(WBSPasswordBreachNotificationManager *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.Safari.PasswordBreachNotifications"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69C89B8]);
    topFraudTargetsManager = v2->_topFraudTargetsManager;
    v2->_topFraudTargetsManager = v5;

    v7 = v2;
  }

  return v2;
}

- (void)addBreachNotificationForSavedAccounts:(id)accounts withCompletionHandler:(id)handler
{
  accountsCopy = accounts;
  handlerCopy = handler;
  if ([accountsCopy count])
  {
    topFraudTargetsManager = self->_topFraudTargetsManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__WBSPasswordBreachNotificationManager_addBreachNotificationForSavedAccounts_withCompletionHandler___block_invoke;
    v10[3] = &unk_1E7FC91D8;
    v10[4] = self;
    v11 = accountsCopy;
    v12 = handlerCopy;
    [(WBSPasswordWarningTopFraudTargetsManager *)topFraudTargetsManager getTopFraudTargetsWithCompletionHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A798] code:22 privacyPreservingDescription:@"Cannot add a notification for zero passwords."];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

void __100__WBSPasswordBreachNotificationManager_addBreachNotificationForSavedAccounts_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__WBSPasswordBreachNotificationManager_addBreachNotificationForSavedAccounts_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7FC51C0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

void __100__WBSPasswordBreachNotificationManager_addBreachNotificationForSavedAccounts_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) _contentWithSavedAccounts:*(a1 + 40) topFraudTargets:*(a1 + 48)];
  v2 = [MEMORY[0x1E6983298] requestWithIdentifier:*MEMORY[0x1E69C8CD8] content:v4 trigger:0];
  v3 = [MEMORY[0x1E69C89C0] sharedNotificationManager];
  [v3 schedulePasswordBreachNotificationRequest:v2 completionHandler:*(a1 + 56)];
}

- (id)_contentWithSavedAccounts:(id)accounts topFraudTargets:(id)targets
{
  accountsCopy = accounts;
  v7 = MEMORY[0x1E6983220];
  targetsCopy = targets;
  v9 = objc_alloc_init(v7);
  v10 = [(WBSPasswordBreachNotificationManager *)self _titleForSavedAccounts:accountsCopy];
  [v9 setTitle:v10];

  v11 = [WBSPasswordBreachNotificationManager _bodyForSavedAccounts:accountsCopy withTopFraudTargets:targetsCopy];

  [v9 setBody:v11];
  if ([accountsCopy count] == 1)
  {
    firstObject = [accountsCopy firstObject];
    passwordManagerSecurityRecommendationsURL = [(WBSPasswordBreachNotificationManager *)self _passwordManagerURLForSavedAccount:firstObject];
  }

  else
  {
    passwordManagerSecurityRecommendationsURL = [MEMORY[0x1E69C8978] passwordManagerSecurityRecommendationsURL];
  }

  [v9 setDefaultActionURL:passwordManagerSecurityRecommendationsURL];

  return v9;
}

- (id)_passwordManagerURLForSavedAccount:(id)account
{
  v9[1] = *MEMORY[0x1E69E9840];
  stableIDString = [account stableIDString];
  v4 = MEMORY[0x1E69C8978];
  v8 = @"Security";
  v9[0] = stableIDString;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 passwordManagerURLWithDictionary:v5];

  return v6;
}

- (id)_titleForSavedAccounts:(id)accounts
{
  [accounts count];
  v3 = _WBSLocalizedString();

  return v3;
}

+ (id)_bodyForSavedAccounts:(id)accounts withTopFraudTargets:(id)targets
{
  targetsCopy = targets;
  v7 = [accounts safari_mapObjectsUsingBlock:&__block_literal_global_86];
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  deviceClass = [currentDevice deviceClass];

  v10 = [self _bodyForHighLevelDomains:v7 deviceClass:deviceClass topFraudTargets:targetsCopy];

  return v10;
}

+ (unint64_t)_bodyStyleForTopFraudTargetDomains:(id)domains sensitiveDomains:(id)sensitiveDomains passwordsCount:(unint64_t)count
{
  sensitiveDomainsCopy = sensitiveDomains;
  v8 = [domains count];
  v9 = [sensitiveDomainsCopy count];

  if (count == 1 && !v8 && v9 == 1)
  {
    return 5;
  }

  v12 = v8 == 1 && v9 == 0;
  result = count != 1 || !v12;
  if (!v12)
  {
    if (v8 != 2 || v9)
    {
      if (v8 != 3 || v9)
      {
        if ((v9 + v8) >= 0xA || v8 == 0)
        {
          return 6;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

+ (BOOL)_highLevelDomain:(id)domain isIncludedInTopFraudTargets:(id)targets
{
  domainCopy = domain;
  targetsCopy = targets;
  highPriorityFraudTargets = [targetsCopy highPriorityFraudTargets];
  if ([highPriorityFraudTargets containsObject:domainCopy])
  {
    v8 = 1;
  }

  else
  {
    fraudTargets = [targetsCopy fraudTargets];
    if ([fraudTargets containsObject:domainCopy])
    {
      v8 = 1;
    }

    else
    {
      financialFraudTargets = [targetsCopy financialFraudTargets];
      v8 = [financialFraudTargets containsObject:domainCopy];
    }
  }

  return v8;
}

+ (id)_bodyForHighLevelDomains:(id)domains deviceClass:(int)class topFraudTargets:(id)targets
{
  v34 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  targetsCopy = targets;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = domainsCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if ([self _highLevelDomain:v16 isIncludedInTopFraudTargets:targetsCopy])
        {
          v17 = v9;
        }

        else
        {
          v17 = v10;
        }

        [v17 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v18 = [self _bodyStyleForTopFraudTargetDomains:v9 sensitiveDomains:v10 passwordsCount:{objc_msgSend(v11, "count")}];
  if (v18 <= 2)
  {
    if (v18)
    {
      if (v18 != 1)
      {
        if (v18 != 2)
        {
          goto LABEL_30;
        }

        v23 = MEMORY[0x1E696AEC0];
        v20 = _WBSLocalizedString();
        firstObject = [v9 objectAtIndexedSubscript:0];
        v24 = [v9 objectAtIndexedSubscript:1];
        self = [v23 stringWithFormat:v20, firstObject, v24];
        goto LABEL_24;
      }

      v25 = MEMORY[0x1E696AEC0];
    }

    else
    {
      v25 = MEMORY[0x1E696AEC0];
    }

    v20 = _WBSLocalizedString();
    firstObject = [v9 firstObject];
    v22 = [v25 stringWithFormat:v20, firstObject];
    goto LABEL_28;
  }

  if (v18 <= 4)
  {
    if (v18 != 3)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = _WBSLocalizedString();
      firstObject = [v9 objectAtIndexedSubscript:0];
      v22 = [v19 localizedStringWithFormat:v20, firstObject, objc_msgSend(v9, "count") + objc_msgSend(v10, "count") - 1];
LABEL_28:
      self = v22;
      goto LABEL_29;
    }

    v26 = MEMORY[0x1E696AEC0];
    v20 = _WBSLocalizedString();
    firstObject = [v9 objectAtIndexedSubscript:0];
    v24 = [v9 objectAtIndexedSubscript:1];
    v27 = [v9 objectAtIndexedSubscript:2];
    self = [v26 stringWithFormat:v20, firstObject, v24, v27];

LABEL_24:
LABEL_29:

    goto LABEL_30;
  }

  if (v18 == 5 || v18 == 6)
  {
    self = _WBSLocalizedString();
  }

LABEL_30:

  return self;
}

@end