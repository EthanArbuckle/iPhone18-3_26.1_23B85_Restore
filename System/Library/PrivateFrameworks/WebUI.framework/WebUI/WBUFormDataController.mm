@interface WBUFormDataController
+ (BOOL)contactIsMe:(id)a3;
+ (BOOL)contactStoreHasMeCard:(id)a3;
+ (BOOL)keychainSyncEnabled;
+ (id)_meCard;
+ (id)_stringForCNContactObject:(id)a3 contactObjectComponent:(id)a4;
+ (id)localizedLowercaseContactProperty:(id)a3;
+ (id)valueStringForMatch:(id)a3;
- (BOOL)_saveUser:(id)a3 password:(id)a4 isGeneratedPassword:(BOOL)a5 forURL:(id)a6 inContext:(id)a7 formType:(unint64_t)a8 promptingPolicy:(int64_t)a9 webView:(id)a10 completionHandler:(id)a11;
- (BOOL)_shouldSaveCreditCardDataInWebView:(id)a3 frame:(id)a4;
- (BOOL)_shouldSaveUsernamesAndPasswordsForURL:(id)a3 inWebView:(id)a4;
- (BOOL)_shouldTryToSaveCredentialsFromLastForm:(id)a3 currentFormMetadata:(id)a4 frame:(id)a5;
- (BOOL)_updateCredentialsWithGeneratedPasswordForForm:(id)a3 inWebView:(id)a4 frame:(id)a5 context:(id)a6;
- (BOOL)_updatePasswordOfPreviouslySavedAccount:(id)a3 withPasswordEditedByUser:(id)a4;
- (BOOL)_webView:(id)a3 formSubmission:(BOOL)a4 willSubmitNewAccountOrChangePasswordFormWithMetadata:(id)a5 shouldPreferAnnotatedCredentials:(BOOL)a6 fromFrame:(id)a7 inContext:(id)a8 submissionHandler:(id)a9;
- (BOOL)_webView:(id)a3 saveCredentialsForURL:(id)a4 formSubmission:(BOOL)a5 formWithMetadata:(id)a6 fromFrame:(id)a7 username:(id)a8 password:(id)a9 inContext:(id)a10 submissionHandler:(id)a11;
- (BOOL)_webView:(id)a3 saveUsernameAndPasswordForURL:(id)a4 formType:(unint64_t)a5 inFrame:(id)a6 username:(id)a7 password:(id)a8 isGeneratedPassword:(BOOL)a9 confirmOverwritingCurrentPassword:(BOOL)a10 inContext:(id)a11 submissionHandler:(id)a12;
- (BOOL)_webView:(id)a3 willSubmitFormContainingCreditCardData:(id)a4 fromFrame:(id)a5 submissionHandler:(id)a6;
- (BOOL)_webView:(id)a3 willSubmitLoginFormWithMetadata:(id)a4 formSubmission:(BOOL)a5 fromFrame:(id)a6 inContext:(id)a7 submissionHandler:(id)a8;
- (BOOL)_webView:(id)a3 willSubmitStandardFormWithMetadata:(id)a4 fromFrame:(id)a5 submissionHandler:(id)a6;
- (BOOL)hasAssociatedDomainSavedForURL:(id)a3 userName:(id)a4;
- (BOOL)shouldAllowPasswordAutoFillOnURL:(id)a3 allowExternalCredentials:(BOOL)a4;
- (BOOL)shouldAutoFillFromAddressBook;
- (BOOL)shouldAutoFillFromCreditCardData;
- (BOOL)shouldAutoFillFromCreditCardDataInFrame:(id)a3;
- (BOOL)shouldAutoFillPasswords;
- (BOOL)shouldAutoGeneratePasswordsForURL:(id)a3 inWebView:(id)a4;
- (BOOL)whiteListAllowsURL:(id)a3;
- (CNContact)me;
- (id)_addressBookMatchesForFamilyNameForContact:(id)a3;
- (id)_addressBookMatchesForFullNameForContact:(id)a3;
- (id)_addressBookMatchesForGivenNameForContact:(id)a3;
- (id)_addressBookMatchesForMiddleNameForContact:(id)a3;
- (id)_credentialMatchesEligibleForUpdateForURL:(id)a3 username:(id)a4 oldPassword:(id)a5;
- (id)_detailTextForPromptToSaveCard:(id)a3;
- (id)_detailTextForPromptToSaveSecurityCode;
- (id)_detailTextForPromptToUpdateExpirationDate;
- (id)_relatedCredentialMatchesToUpdateForUser:(id)a3 protectionSpace:(id)a4 oldSavedAccount:(id *)a5 matchesForCurrentHost:(id *)a6 matchesForAssociatedDomains:(id *)a7 haveExistingCredentialWithSameUsernameAndDifferentPassword:(BOOL *)a8;
- (id)_titleTextForWarning:(id)a3;
- (id)addressBookMatchesForProperty:(id)a3 key:(id)a4 label:(id)a5;
- (id)addressBookMatchesForProperty:(id)a3 key:(id)a4 label:(id)a5 contact:(id)a6;
- (id)completionDBPath;
- (id)savedAccountFromMatches:(id)a3 completingPartialUserInLoginForm:(id)a4;
- (void)_completePasswordsAppIntroduction;
- (void)_promptToUpdateRelatedCredentials:(id)a3 urlHost:(id)a4 relatedCredentialsHighLevelDomain:(id)a5 webView:(id)a6 completionHandler:(id)a7;
- (void)_showCreditCardPromptForWebView:(id)a3 creditCard:(id)a4 completionHandler:(id)a5;
- (void)_showPasswordPromptForWebView:(id)a3 formType:(unint64_t)a4 username:(id)a5 host:(id)a6 hasCredentialForCurrentHost:(BOOL)a7 existingCredentialMatchesForCurrentHost:(id)a8 otherSubdomainCredentialMatches:(id)a9 haveExistingCredentialWithSameUsernameAndDifferentPassword:(BOOL)a10 completionHandler:(id)a11;
- (void)_showPromptToSaveCreditCardSecurityCodeForWebView:(id)a3 cardNumber:(id)a4 securityCode:(id)a5 completionHandler:(id)a6;
- (void)_showPromptToUpdateCreditCardExpirationDateForWebView:(id)a3 cardNumber:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6;
- (void)_silentlyUpdateCredentialsForSavedAccounts:(id)a3 withPassword:(id)a4;
- (void)_silentlyUpdateSavedAccountsEquivalentToUserName:(id)a3 atURL:(id)a4 inContext:(id)a5 withPassword:(id)a6;
- (void)_warnAboutWeakPasswordIfNecessaryWithWebView:(id)a3 savedAccount:(id)a4 protectionSpace:(id)a5;
- (void)clearAllFormCredentials;
- (void)dealloc;
- (void)didFillFieldWithGeneratedPassword:(id)a3 inFrame:(id)a4 webView:(id)a5;
- (void)gatherAutoFillDisplayDataWithTextField:(id)a3 displayedInQuickType:(BOOL)a4 prefix:(id)a5 contact:(id)a6 completionHandler:(id)a7;
- (void)gatherValuesForForm:(id)a3 focusedTextFieldMetadata:(id)a4 inFrame:(id)a5 multiRoundAutoFillManager:(id)a6 completionHandler:(id)a7;
- (void)performWhenReady:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
- (void)saveCompletionDBSoon;
- (void)saveUnsubmittedGeneratedPasswordInFrame:(id)a3 form:(id)a4 context:(id)a5 closingWebView:(BOOL)a6;
- (void)setShouldAutoFillFromAddressBook:(BOOL)a3;
- (void)setShouldAutoFillFromCreditCardData:(BOOL)a3;
- (void)showPasswordSavedPromptForSavedAccount:(id)a3 webView:(id)a4;
- (void)textDidChangeInForm:(id)a3 inWebView:(id)a4 frame:(id)a5 context:(id)a6;
@end

@implementation WBUFormDataController

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  self->_cachedAutoFillRestrictionValue = [v5 BOOLRestrictionForFeature:*MEMORY[0x277D26030]];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  self->_cachedAutoFillRestrictionValue = [v5 BOOLRestrictionForFeature:*MEMORY[0x277D26030]];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [v3 unregisterObserver:self];
  }

  else
  {
    [v3 removeObserver:self];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = WBUFormDataController;
  [(WBUFormDataController *)&v5 dealloc];
}

- (id)completionDBPath
{
  if (SafariCompletionsDBPath_onceToken != -1)
  {
    [WBUFormDataController completionDBPath];
  }

  v3 = SafariCompletionsDBPath_path;

  return v3;
}

- (void)saveCompletionDBSoon
{
  if (!self->_savePending)
  {
    self->_savePending = 1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = *MEMORY[0x277D767B0];
    v3 = *MEMORY[0x277D76620];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__WBUFormDataController_saveCompletionDBSoon__block_invoke;
    v12[3] = &unk_279EB17E0;
    v12[4] = &v13;
    v4 = [v3 beginBackgroundTaskWithName:@"AutofillCompletionDBWrite" expirationHandler:v12];
    v14[3] = v4;
    v5 = [(WBUFormDataController *)self allFormDataForSaving];
    self->_savePending = 0;
    v6 = dispatch_get_global_queue(-2, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__WBUFormDataController_saveCompletionDBSoon__block_invoke_2;
    v8[3] = &unk_279EB1808;
    v9 = v5;
    v10 = self;
    v11 = &v13;
    v7 = v5;
    dispatch_async(v6, v8);

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __45__WBUFormDataController_saveCompletionDBSoon__block_invoke(uint64_t a1)
{
  NSLog(&cfstr_BackgroundTask.isa);
  v2 = *MEMORY[0x277D76620];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

uint64_t __45__WBUFormDataController_saveCompletionDBSoon__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) completionDBPath];
  v5 = [v2 fileURLWithPath:v4];
  [v3 writeToURL:v5 atomically:1];

  v6 = *MEMORY[0x277D76620];
  v7 = *(*(*(a1 + 48) + 8) + 24);

  return [v6 endBackgroundTask:v7];
}

+ (id)_meCard
{
  v2 = _meCard_me;
  if (!_meCard_me)
  {
    v3 = objc_alloc_init(_WBUDynamicMeCard);
    v4 = _meCard_me;
    _meCard_me = v3;

    v2 = _meCard_me;
  }

  return v2;
}

+ (id)valueStringForMatch:(id)a3
{
  v3 = a3;
  v4 = [v3 stringValue];
  if (!v4)
  {
    v4 = [v3 dateValue];

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v5 setLocalizedDateFormatFromTemplate:@"dMy"];
      v6 = [v3 dateValue];
      v4 = [v5 stringFromDate:v6];
    }
  }

  return v4;
}

- (void)gatherAutoFillDisplayDataWithTextField:(id)a3 displayedInQuickType:(BOOL)a4 prefix:(id)a5 contact:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke;
  v24[3] = &unk_279EB1880;
  v16 = v15;
  v28 = v16;
  v17 = v12;
  v25 = v17;
  v26 = self;
  v18 = v13;
  v27 = v18;
  v29 = a4;
  v19 = MEMORY[0x2743DCFC0](v24);
  v20 = v19;
  if (v14)
  {
    (*(v19 + 16))(v19, v14);
  }

  else if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v21 = [objc_opt_class() _meCard];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke_4;
    v22[3] = &unk_279EB18A8;
    v22[4] = self;
    v23 = v20;
    [v21 performWhenReady:v22];
  }

  else
  {
    (*(v16 + 2))(v16, 0);
  }
}

void __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56))
  {
    v4 = [off_279EB0F38 specifierForControl:*(a1 + 32)];
    v5 = [*(a1 + 32) ancestorFrameURLs];
    v6 = [v5 firstObject];

    v7 = [*(a1 + 40) matchesForControl:*(a1 + 32) atURL:v6 matchingPartialString:*(a1 + 48) autoFillDataType:2 contact:v3 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:0];
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = 0;
    if (*(a1 + 64) == 1)
    {
      v10 = [v4 property];
      v9 = [v10 isEqualToString:@"Address"];
    }

    v11 = *(a1 + 56);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke_2;
    v15[3] = &unk_279EB1858;
    v18 = v9;
    v15[4] = *(a1 + 40);
    v12 = v3;
    v19 = *(a1 + 64);
    v16 = v12;
    v17 = v8;
    v13 = v8;
    v14 = [v7 safari_mapAndFilterObjectsUsingBlock:v15];
    (*(v11 + 16))(v11, v14);
  }
}

WBUAutoFillDisplayData *__118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 56))
  {
    v5 = [*(a1 + 32) cascadingAddressMatchesForMatch:v3 contact:*(a1 + 40)];
  }

  else
  {
    v14[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  v6 = v5;
  if (*(a1 + 57) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke_3;
    v13[3] = &unk_279EB1830;
    v13[4] = *(a1 + 32);
    v7 = [v5 safari_mapObjectsUsingBlock:v13];
    if ([*(a1 + 48) containsObject:v7])
    {

      v8 = 0;
      goto LABEL_9;
    }

    [*(a1 + 48) addObject:v7];
  }

  v9 = [WBUAutoFillDisplayData alloc];
  v10 = [v4 label];
  v8 = [(WBUAutoFillDisplayData *)v9 initWithLabel:v10 fillMatches:v6];

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

id __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() valueStringForMatch:v3];

  return v4;
}

void __118__WBUFormDataController_gatherAutoFillDisplayDataWithTextField_displayedInQuickType_prefix_contact_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) me];
  (*(v1 + 16))(v1, v2);
}

- (id)_addressBookMatchesForFullNameForContact:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBDA78] stringFromContact:v3 style:0];
  v6 = [v5 length];
  v7 = MEMORY[0x277D49BB0];
  if (v6)
  {
    v8 = [[off_279EB0F20 alloc] initWithValue:v5 property:*MEMORY[0x277D49BB0] key:0 identifier:0];
    [v4 addObject:v8];
  }

  v9 = [MEMORY[0x277CBDA78] stringFromContact:v3 style:1];
  if ([v9 length])
  {
    v10 = [[off_279EB0F20 alloc] initWithValue:v9 property:*v7 key:0 identifier:0];
    [v4 addObject:v10];
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)_addressBookMatchesForGivenNameForContact:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 givenName];
  v6 = [v5 length];
  v7 = MEMORY[0x277D49B98];
  if (v6)
  {
    v8 = [[off_279EB0F20 alloc] initWithValue:v5 property:*MEMORY[0x277D49B98] key:0 identifier:0];
    [v4 addObject:v8];
  }

  v9 = [v3 phoneticGivenName];
  if ([v9 length])
  {
    v10 = [[off_279EB0F20 alloc] initWithValue:v9 property:*v7 key:0 identifier:0];
    [v4 addObject:v10];
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)_addressBookMatchesForMiddleNameForContact:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 middleName];
  v6 = [v5 length];
  v7 = MEMORY[0x277D49BA8];
  if (v6)
  {
    v8 = [[off_279EB0F20 alloc] initWithValue:v5 property:*MEMORY[0x277D49BA8] key:0 identifier:0];
    [v4 addObject:v8];
  }

  v9 = [v3 phoneticMiddleName];
  if ([v9 length])
  {
    v10 = [[off_279EB0F20 alloc] initWithValue:v9 property:*v7 key:0 identifier:0];
    [v4 addObject:v10];
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)_addressBookMatchesForFamilyNameForContact:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 familyName];
  v6 = [v5 length];
  v7 = MEMORY[0x277D49BA0];
  if (v6)
  {
    v8 = [[off_279EB0F20 alloc] initWithValue:v5 property:*MEMORY[0x277D49BA0] key:0 identifier:0];
    [v4 addObject:v8];
  }

  v9 = [v3 phoneticFamilyName];
  if ([v9 length])
  {
    v10 = [[off_279EB0F20 alloc] initWithValue:v9 property:*v7 key:0 identifier:0];
    [v4 addObject:v10];
  }

  if ([v4 count])
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)addressBookMatchesForProperty:(id)a3 key:(id)a4 label:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WBUFormDataController *)self me];
  v12 = [(WBUFormDataController *)self addressBookMatchesForProperty:v10 key:v9 label:v8 contact:v11];

  return v12;
}

- (id)addressBookMatchesForProperty:(id)a3 key:(id)a4 label:(id)a5 contact:(id)a6
{
  v52[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v43 = a5;
  v12 = a6;
  if ([v10 isEqualToString:*MEMORY[0x277D49BB0]])
  {
    v13 = [(WBUFormDataController *)self _addressBookMatchesForFullNameForContact:v12];
LABEL_9:
    v14 = v13;
    goto LABEL_10;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D49B98]])
  {
    v13 = [(WBUFormDataController *)self _addressBookMatchesForGivenNameForContact:v12];
    goto LABEL_9;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D49BA8]])
  {
    v13 = [(WBUFormDataController *)self _addressBookMatchesForMiddleNameForContact:v12];
    goto LABEL_9;
  }

  if ([v10 isEqualToString:*MEMORY[0x277D49BA0]])
  {
    v13 = [(WBUFormDataController *)self _addressBookMatchesForFamilyNameForContact:v12];
    goto LABEL_9;
  }

  v17 = [objc_opt_class() _meCard];
  v18 = [v17 valueForProperty:v10 contact:v12];

  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __73__WBUFormDataController_addressBookMatchesForProperty_key_label_contact___block_invoke;
      v48[3] = &unk_279EB18D0;
      v48[4] = self;
      v42 = v10;
      v19 = v10;
      v49 = v19;
      v41 = v11;
      v50 = v11;
      v39 = v18;
      v20 = [v18 safari_mapObjectsUsingBlock:v48];
      v14 = [MEMORY[0x277CBEB18] array];
      v40 = v12;
      v21 = [(WBUFormDataController *)self preferredIdentifierForProperty:v19 withContact:v12];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v44 objects:v51 count:16];
      v24 = v43;
      if (!v23)
      {
        goto LABEL_29;
      }

      v25 = v23;
      v26 = *v45;
      while (1)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v44 + 1) + 8 * i);
          v29 = [v28 label];
          if ([v24 isEqualToString:v29])
          {

LABEL_24:
            [v14 insertObject:v28 atIndex:0];
            continue;
          }

          if ([v21 length])
          {
            v30 = [v28 identifier];
            v31 = [v30 isEqualToString:v21];

            v24 = v43;
            if (v31)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }

          [v14 addObject:v28];
        }

        v25 = [v22 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (!v25)
        {
LABEL_29:

          v11 = v41;
          v10 = v42;
          v18 = v39;
          v12 = v40;
          goto LABEL_38;
        }
      }
    }

    v32 = v12;
    v33 = objc_alloc(MEMORY[0x277CBEA80]);
    v34 = [v33 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v11;
      v36 = v18;
      [v34 dateFromComponents:v18];
    }

    else
    {
      v36 = v18;
      v35 = v11;
      [WBUFormDataController stringWithAddressBookValue:v18 key:v11];
    }
    v37 = ;
    if (v37)
    {
      v38 = [[off_279EB0F20 alloc] initWithValue:v37 property:v10 key:v35 identifier:&stru_2882C1EC0];
      v52[0] = v38;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v11 = v35;
    v12 = v32;
    v18 = v36;
  }

  else
  {
    v14 = 0;
  }

LABEL_38:

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id __73__WBUFormDataController_addressBookMatchesForProperty_key_label_contact___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = a1[4];
  v6 = [objc_opt_class() contactKeyForString:a1[5]];
  v7 = [v6 isEqualToString:*MEMORY[0x277CBD038]];

  if (v7)
  {
    v8 = v4;
    v9 = [v8 service];
    v10 = [v9 stringByAppendingString:@"Instant"];

    if ([v10 isEqualToString:a1[6]])
    {
      v11 = [v8 username];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v8 = [_WBUDynamicMeCard _contactObjectComponentForString:a1[6]];
    v11 = [WBUFormDataController _stringForCNContactObject:v4 contactObjectComponent:v8];
  }

  if (v11)
  {
    v12 = [off_279EB0F20 alloc];
    v14 = a1[5];
    v13 = a1[6];
    v15 = [v3 identifier];
    v16 = [v3 label];
    v17 = [v12 initWithValue:v11 property:v14 key:v13 identifier:v15 label:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_stringForCNContactObject:(id)a3 contactObjectComponent:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v5 valueForKey:v6];
        if ([v10 length])
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v8 = v11;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_6;
    }

    v7 = [v5 stringValue];
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (BOOL)shouldAutoGeneratePasswordsForURL:(id)a3 inWebView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((![MEMORY[0x277D49A08] isPasswordsAppInstalled] || objc_msgSend(MEMORY[0x277D49A08], "isAutomaticStrongPasswordsEnabled")) && -[WBUFormDataController _shouldSaveUsernamesAndPasswordsForURL:inWebView:](self, "_shouldSaveUsernamesAndPasswordsForURL:inWebView:", v6, v7))
  {
    v8 = ([MEMORY[0x277D49A08] isPasswordsAppInstalled] & 1) != 0 || +[WBUFormDataController keychainSyncEnabled](WBUFormDataController, "keychainSyncEnabled");
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)keychainSyncEnabled
{
  v2 = [MEMORY[0x277D49A50] sharedMonitor];
  v3 = [v2 isKeychainSyncEnabled];

  return v3;
}

- (BOOL)whiteListAllowsURL:(id)a3
{
  v3 = a3;
  v4 = +[WBUFormAutoFillWhiteList sharedAutoFillWhiteList];
  v5 = [v4 allowsURL:v3];

  return v5;
}

- (BOOL)_shouldSaveUsernamesAndPasswordsForURL:(id)a3 inWebView:(id)a4
{
  v6 = a3;
  if (([a4 webui_privateBrowsingEnabled] & 1) != 0 || !-[WBUFormDataController whiteListAllowsURL:](self, "whiteListAllowsURL:", v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = ([MEMORY[0x277D38BB0] shouldShowLoginIntroduction] & 1) != 0 || -[WBUFormDataController shouldAllowPasswordAutoFillOnURL:allowExternalCredentials:](self, "shouldAllowPasswordAutoFillOnURL:allowExternalCredentials:", v6, 0);
  }

  return v7;
}

- (BOOL)_shouldSaveCreditCardDataInWebView:(id)a3 frame:(id)a4
{
  v6 = a3;
  if ([(WBUFormDataController *)self shouldAutoFillFromCreditCardDataInFrame:a4])
  {
    v7 = [v6 webui_privateBrowsingEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)shouldAutoFillPasswords
{
  v2 = [MEMORY[0x277D49DC0] sharedFeatureManager];
  v3 = [v2 shouldAutoFillPasswordsFromKeychain];

  return v3;
}

- (BOOL)shouldAutoFillFromCreditCardData
{
  v3 = +[WBUFeatureManager webui_sharedFeatureManager];
  if ([v3 isAutoFillAvailable] && objc_msgSend(v3, "isCreditCardStorageAvailable") && self->_cachedAutoFillRestrictionValue != 2)
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AutoFillCreditCards", [MEMORY[0x277D49DC0] autoFillPreferencesDomain], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppBooleanValue != 0;
    }

    else
    {
      v4 = [MEMORY[0x277D49DC0] defaultValueForPasswordAndCreditCardAutoFill];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShouldAutoFillFromCreditCardData:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"AutoFillCreditCards", *v3, [MEMORY[0x277D49DC0] autoFillPreferencesDomain]);
  v4 = MEMORY[0x277D49DC0];

  [v4 autoFillPreferencesDidChange];
}

+ (BOOL)contactStoreHasMeCard:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v4 = [v3 _ios_meContactWithKeysToFetch:MEMORY[0x277CBEBF8] error:0];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldAutoFillFromAddressBook
{
  v3 = +[WBUFeatureManager webui_sharedFeatureManager];
  v4 = [v3 isAutoFillAvailable];

  if (!v4 || self->_cachedAutoFillRestrictionValue == 2)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(*MEMORY[0x277D49E10], [MEMORY[0x277D49DC0] autoFillPreferencesDomain], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] != 3)
  {
    return 1;
  }

  v8 = [objc_opt_class() _meCard];
  v5 = [v8 meCardExists];

  return v5;
}

- (void)setShouldAutoFillFromAddressBook:(BOOL)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(*MEMORY[0x277D49E10], *v3, [MEMORY[0x277D49DC0] autoFillPreferencesDomain]);
  v4 = MEMORY[0x277D49DC0];

  [v4 autoFillPreferencesDidChange];
}

- (BOOL)shouldAutoFillFromCreditCardDataInFrame:(id)a3
{
  v4 = a3;
  if ([(WBUFormDataController *)self shouldAutoFillFromCreditCardData])
  {
    v5 = [(WBUFormDataController *)self mayFillCreditCardDataInFrame:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasAssociatedDomainSavedForURL:(id)a3 userName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v6];
  [v8 setOptions:{objc_msgSend(v8, "options") | 2}];
  v9 = [(WBUFormDataController *)self autoFillQuirksManager];
  v10 = [v9 associatedDomainsManager];
  [v8 setAssociatedDomainsManager:v10];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v11 = [MEMORY[0x277D49B58] sharedStore];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __65__WBUFormDataController_hasAssociatedDomainSavedForURL_userName___block_invoke;
  v23[3] = &unk_279EB18F8;
  v23[4] = &v24;
  [v11 getSavedAccountsMatchingCriteria:v8 withSynchronousCompletionHandler:v23];

  v12 = [v25[5] exactMatches];
  v13 = [v25[5] associatedDomainMatches];
  v14 = [v12 arrayByAddingObjectsFromArray:v13];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __65__WBUFormDataController_hasAssociatedDomainSavedForURL_userName___block_invoke_2;
  v21 = &unk_279EB1920;
  v15 = v7;
  v22 = v15;
  v16 = [v14 safari_firstObjectPassingTest:&v18];
  LOBYTE(v13) = [v16 matchLevel] == 3;

  _Block_object_dispose(&v24, 8);
  return v13;
}

uint64_t __65__WBUFormDataController_hasAssociatedDomainSavedForURL_userName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 user];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (id)localizedLowercaseContactProperty:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D49BB0]])
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v5 = MEMORY[0x277CBDA58];
    v6 = [WBUFormDataController contactKeyForString:v3];
    v7 = [v5 localizedStringForKey:v6];
    v4 = [v7 localizedLowercaseString];
  }

  return v4;
}

+ (BOOL)contactIsMe:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _meCard];
  v5 = [v4 me];
  v6 = [v5 isEqual:v3];

  return v6;
}

- (CNContact)me
{
  v2 = [objc_opt_class() _meCard];
  v3 = [v2 me];

  return v3;
}

- (id)savedAccountFromMatches:(id)a3 completingPartialUserInLoginForm:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 userNameElementUniqueID];
  if ([v7 length])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v6 controls];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = *v31;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 uniqueID];
          v14 = [v13 isEqualToString:v7];

          if (v14)
          {
            v9 = [v12 value];
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        if ([v9 length])
        {
          v21 = [v20 user];
          v22 = [v21 safari_hasCaseInsensitivePrefix:v9];

          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        v23 = [v20 savedAccount];
        goto LABEL_26;
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v23 = 0;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_26:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)shouldAllowPasswordAutoFillOnURL:(id)a3 allowExternalCredentials:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [MEMORY[0x277D49DC0] sharedFeatureManager];
    if ([v7 shouldAutoFillPasswords])
    {
      v8 = [v6 host];
      v9 = [off_279EB0F50 mayAutoFillPasswordOnHost:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (![(WBUFormDataController *)self shouldAutoFillPasswords])
    {
      v9 = 0;
      goto LABEL_9;
    }

    v7 = [v6 host];
    v9 = [off_279EB0F50 mayAutoFillPasswordOnHost:v7];
  }

LABEL_9:
  return v9;
}

- (void)gatherValuesForForm:(id)a3 focusedTextFieldMetadata:(id)a4 inFrame:(id)a5 multiRoundAutoFillManager:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 type];
  if (v17 <= 5 && ((1 << v17) & 0x32) != 0 && [(WBUFormDataController *)self shouldAutoFillFromAddressBook])
  {
    v18 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
    if (v18 >= 3)
    {
      if (v18 - 3 < 2)
      {
        v20 = [objc_opt_class() _meCard];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __122__WBUFormDataController_gatherValuesForForm_focusedTextFieldMetadata_inFrame_multiRoundAutoFillManager_completionHandler___block_invoke;
        v21[3] = &unk_279EB1948;
        v21[4] = self;
        v22 = v12;
        v23 = v14;
        v24 = v15;
        v25 = v16;
        [v20 performWhenReady:v21];
      }
    }

    else
    {
      v19 = [v13 addressBookLabel];
      (*(v16 + 2))(v16, MEMORY[0x277CBEC10], v19 != 0);
    }
  }

  else
  {
    (*(v16 + 2))(v16, 0, 0);
  }
}

void __122__WBUFormDataController_gatherValuesForForm_focusedTextFieldMetadata_inFrame_multiRoundAutoFillManager_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) webui_URL];
  v5 = [WBUFormDataController domainFromURL:v4];

  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) me];
  v8 = [v2 valuesForContactFormWithMetadata:v3 inDomain:v5 matches:0 multiRoundAutoFillManager:v6 contact:v7];

  [v8 count];
  (*(*(a1 + 64) + 16))();
}

- (void)clearAllFormCredentials
{
  v2 = [MEMORY[0x277CBAB88] sharedCredentialStorage];
  v3 = [v2 safari_allSafariCredentials];
  v4 = [v3 copy];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WBUFormDataController_clearAllFormCredentials__block_invoke;
  v6[3] = &unk_279EB1998;
  v7 = v2;
  v5 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __48__WBUFormDataController_clearAllFormCredentials__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WBUFormDataController_clearAllFormCredentials__block_invoke_2;
  v7[3] = &unk_279EB1970;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __48__WBUFormDataController_clearAllFormCredentials__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = *MEMORY[0x277CBAB10];
  v10[0] = MEMORY[0x277CBEC38];
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 removeCredential:v6 forProtectionSpace:v4 options:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveUnsubmittedGeneratedPasswordInFrame:(id)a3 form:(id)a4 context:(id)a5 closingWebView:(BOOL)a6
{
  v6 = a6;
  v53 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v10 = a4;
  v35 = a5;
  v36 = v10;
  if ([v10 usesGeneratedPassword] && objc_msgSend(v10, "type") == 5)
  {
    v33 = [v34 webui_URL];
    v51 = 0;
    v50 = 0;
    [(WBUFormDataController *)self willSubmitFormWithCredentials:v10 shouldPreferAnnotatedCredentials:0 atURL:v33 username:&v51 password:&v50 inContext:v35];
    v38 = v51;
    v11 = v50;
    if ([v11 length])
    {
      v12 = v38;
      if (!v38)
      {
        v12 = &stru_2882C1EC0;
      }

      v38 = v12;
      v31 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:v33];
      v37 = [MEMORY[0x277D49B58] sharedStore];
      v32 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v33];
      v13 = [objc_alloc(MEMORY[0x277D49B70]) initWithString:v38 matchingType:1];
      [v32 setUserNameQuery:v13];

      v44 = 0;
      v45 = &v44;
      v46 = 0x3032000000;
      v47 = __Block_byref_object_copy_;
      v48 = __Block_byref_object_dispose_;
      v49 = 0;
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __93__WBUFormDataController_saveUnsubmittedGeneratedPasswordInFrame_form_context_closingWebView___block_invoke;
      v43[3] = &unk_279EB18F8;
      v43[4] = &v44;
      [v37 getSavedAccountsMatchingCriteria:v32 withSynchronousCompletionHandler:v43];
      v30 = [v45[5] exactMatches];
      if ([v30 count])
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v14 = v30;
        v15 = [v14 countByEnumeratingWithState:&v39 objects:v52 count:16];
        if (v15)
        {
          v16 = *v40;
          v17 = v6;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v40 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v39 + 1) + 8 * i);
              v20 = [v19 password];
              v21 = [v20 isEqualToString:v11];

              if (v21)
              {
                v22 = objc_alloc_init(MEMORY[0x277D49B28]);
                v23 = [v19 savedAccount];
                [v22 setSavedAccount:v23];

                [v22 setUser:v38];
                [v22 setPassword:v11];
                [v37 changeSavedAccountWithRequest:v22];
                v24 = [MEMORY[0x277D499B8] sharedLogger];
                [v24 generatedPasswordDidOverwriteExistingPasswordWithTrigger:v17];
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v39 objects:v52 count:16];
          }

          while (v15);
        }
      }

      else
      {
        v25 = [v31 host];
        v26 = [v25 safari_highLevelDomainForPasswordManager];
        v14 = [v37 saveUser:v38 password:v11 forProtectionSpace:v31 highLevelDomain:v26 groupID:*MEMORY[0x277D49C38]];

        v27 = [(WBUFormDataController *)self autoFillQuirksManager];
        v28 = [v27 associatedDomainsManager];
        [v37 setSavedAccountAsDefault:v14 forProtectionSpace:v31 context:v35 associatedDomainsManager:v28 completionHandler:&__block_literal_global_3];
      }

      _Block_object_dispose(&v44, 8);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_showCreditCardPromptForWebView:(id)a3 creditCard:(id)a4 completionHandler:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277D49A08];
  v10 = a4;
  v11 = a3;
  [v9 isKeychainCardsInWalletEnabled];
  v12 = _WBSLocalizedString();
  v13 = [(WBUFormDataController *)self _detailTextForPromptToSaveCard:v10];

  v14 = _WBSLocalizedString();
  v15 = _WBSLocalizedString();
  v16 = _WBSLocalizedString();
  v22[0] = v15;
  v22[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__WBUFormDataController__showCreditCardPromptForWebView_creditCard_completionHandler___block_invoke;
  v20[3] = &unk_279EB19C0;
  v21 = v8;
  v18 = v8;
  [WBUFormAutoFillPrompt showAutoFillPromptInWebView:v11 title:v12 message:v13 cancelButtonTitle:v14 otherButtonTitles:v17 makeFirstButtonSuggestedAction:1 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_detailTextForPromptToSaveCard:(id)a3
{
  v3 = a3;
  [MEMORY[0x277D49A08] isKeychainCardsInWalletEnabled];
  +[WBUFormDataController keychainSyncEnabled];
  v4 = [v3 cardSecurityCode];
  [v4 length];

  v5 = _WBSLocalizedString();

  return v5;
}

- (void)_showPromptToSaveCreditCardSecurityCodeForWebView:(id)a3 cardNumber:(id)a4 securityCode:(id)a5 completionHandler:(id)a6
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = a6;
  v9 = MEMORY[0x277D49A08];
  v10 = a3;
  [v9 isKeychainCardsInWalletEnabled];
  v11 = _WBSLocalizedString();
  v12 = [(WBUFormDataController *)self _detailTextForPromptToSaveSecurityCode];
  v13 = _WBSLocalizedString();
  v14 = _WBSLocalizedString();
  v15 = _WBSLocalizedString();
  v21[0] = v14;
  v21[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __117__WBUFormDataController__showPromptToSaveCreditCardSecurityCodeForWebView_cardNumber_securityCode_completionHandler___block_invoke;
  v19[3] = &unk_279EB19C0;
  v20 = v8;
  v17 = v8;
  [WBUFormAutoFillPrompt showAutoFillPromptInWebView:v10 title:v11 message:v12 cancelButtonTitle:v13 otherButtonTitles:v16 makeFirstButtonSuggestedAction:1 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_detailTextForPromptToSaveSecurityCode
{
  [MEMORY[0x277D49A08] isKeychainCardsInWalletEnabled];
  +[WBUFormDataController keychainSyncEnabled];
  v2 = _WBSLocalizedString();

  return v2;
}

- (void)_showPromptToUpdateCreditCardExpirationDateForWebView:(id)a3 cardNumber:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a6;
  v9 = MEMORY[0x277D49A08];
  v10 = a3;
  [v9 isKeychainCardsInWalletEnabled];
  v11 = _WBSLocalizedString();
  v12 = [(WBUFormDataController *)self _detailTextForPromptToUpdateExpirationDate];
  v13 = _WBSLocalizedString();
  v14 = _WBSLocalizedString();
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __123__WBUFormDataController__showPromptToUpdateCreditCardExpirationDateForWebView_cardNumber_expirationDate_completionHandler___block_invoke;
  v18[3] = &unk_279EB19C0;
  v19 = v8;
  v16 = v8;
  [WBUFormAutoFillPrompt showAutoFillPromptInWebView:v10 title:v11 message:v12 cancelButtonTitle:v13 otherButtonTitles:v15 makeFirstButtonSuggestedAction:1 completionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_detailTextForPromptToUpdateExpirationDate
{
  [MEMORY[0x277D49A08] isKeychainCardsInWalletEnabled];
  +[WBUFormDataController keychainSyncEnabled];
  v2 = _WBSLocalizedString();

  return v2;
}

- (BOOL)_webView:(id)a3 willSubmitFormContainingCreditCardData:(id)a4 fromFrame:(id)a5 submissionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(WBUFormDataController *)self _shouldSaveCreditCardDataInWebView:v10 frame:v12])
  {
    v14 = +[WBUCreditCardDataController sharedCreditCardDataController];
    v15 = self->_previouslyFilledVirtualCardNumbers;
    v16 = self->_lastFilledCreditCardData;
    v17 = [v11 cardNumber];
    if ([MEMORY[0x277D49A08] isKeychainCardsInWalletEnabled])
    {
      if ([v14 isVirtualCard:v11 previouslyFilledVirtualCardNumbers:v15])
      {
        [v14 sendCardholderNameEnteredInFormToWalletIfNecessary:v11 lastFilledVirtualCardData:v16];
        v18 = 1;
      }

      else
      {
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke;
        v78[3] = &unk_279EB1A88;
        v84 = v13;
        v78[4] = self;
        v79 = v10;
        v80 = v11;
        v23 = v14;
        v24 = v13;
        v25 = v14;
        v26 = v17;
        v27 = v23;
        v81 = v23;
        v82 = v15;
        v83 = v26;
        v28 = v27;
        v17 = v26;
        v14 = v25;
        v13 = v24;
        [v28 canSaveCardData:v80 lastFilledCardData:v16 completionHandler:v78];

        v18 = 0;
      }

      goto LABEL_27;
    }

    v19 = [v14 existingCardWithNumber:v17];
    v49 = v19;
    if (!v19)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_10;
      v50[3] = &unk_279EB1B00;
      v51 = v14;
      v52 = v11;
      v53 = v16;
      v56 = v13;
      v54 = self;
      v55 = v10;
      [v51 isVirtualCard:v52 previouslyFilledVirtualCardNumbers:v15 completion:v50];

      v18 = 0;
LABEL_26:

LABEL_27:
      goto LABEL_28;
    }

    v20 = v19;
    v47 = v15;
    v48 = v16;
    [v14 tellWalletThatExistingCardWasFilledInForm:v19 previouslyFilledVirtualCardNumbers:v15];
    v21 = [v20 cardSecurityCode];
    if ([v21 length])
    {
      v22 = 0;
    }

    else
    {
      v29 = [v11 cardSecurityCode];
      v22 = [v29 length] != 0;
    }

    v30 = [v11 expirationDate];
    v31 = [v49 expirationYearIsOlderThan:v30];

    if (!v22 && (v31 & 1) == 0)
    {
      v18 = 1;
      v32 = [v49 creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:v11 mergeSecurityCode:1 updateExpirationDate:0];
      [v14 replaceCreditCardData:v49 withCard:v32];

      v15 = v47;
      v16 = v48;
      goto LABEL_26;
    }

    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_8;
    v68[3] = &unk_279EB1AB0;
    v43 = v14;
    v69 = v43;
    v33 = v49;
    v70 = v33;
    v45 = v11;
    v71 = v45;
    v73 = &v74;
    v42 = v13;
    v72 = v42;
    v46 = MEMORY[0x2743DCFC0](v68);
    if (v22)
    {
      v41 = v33;
      v34 = [v33 promptToSaveSecurityCode];
      v15 = v47;
      v16 = v48;
      if (v34)
      {
        v40 = [v45 cardSecurityCode];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_9;
        v57[3] = &unk_279EB1AD8;
        v66 = &v74;
        v67 = v31;
        v58 = v45;
        v59 = self;
        v60 = v10;
        v61 = v17;
        v64 = v46;
        v62 = v43;
        v63 = v41;
        v65 = v42;
        v16 = v48;
        [(WBUFormDataController *)self _showPromptToSaveCreditCardSecurityCodeForWebView:v60 cardNumber:v61 securityCode:v40 completionHandler:v57];

        v35 = v58;
LABEL_24:

        v18 = 0;
        goto LABEL_25;
      }

      if ((v31 & 1) == 0)
      {
        v18 = 1;
        goto LABEL_25;
      }

      *(v75 + 24) = 0;
    }

    else
    {
      v36 = v33;
      v16 = v48;
      if ((v31 & 1) == 0)
      {
        v18 = 1;
        v15 = v47;
LABEL_25:

        _Block_object_dispose(&v74, 8);
        goto LABEL_26;
      }

      v44 = [v36 cardSecurityCode];
      v15 = v47;
      v37 = [v45 cardSecurityCode];
      v38 = [v44 isEqualToString:v37];
      *(v75 + 24) = v38 ^ 1;
    }

    v35 = [v45 expirationDate];
    [(WBUFormDataController *)self _showPromptToUpdateCreditCardExpirationDateForWebView:v10 cardNumber:v17 expirationDate:v35 completionHandler:v46];
    goto LABEL_24;
  }

  v18 = 1;
LABEL_28:

  return v18;
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = 0;
      v33 = 1;
    }

    else
    {
      v7 = a2 == 4;
    }

    goto LABEL_9;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_2;
      block[3] = &unk_279EB1948;
      v16 = *(a1 + 32);
      v8 = *(&v16 + 1);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      v29 = v16;
      v30 = v11;
      v31 = *(a1 + 80);
      dispatch_async(MEMORY[0x277D85CD0], block);

      v12 = *(&v29 + 1);
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_5;
    v17[3] = &unk_279EB1A60;
    v18 = v5;
    v25 = *(a1 + 80);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v13 = *(a1 + 48);
    v26 = v32;
    v27 = v7;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = *(a1 + 72);
    dispatch_async(MEMORY[0x277D85CD0], v17);

    v12 = v18;
    goto LABEL_10;
  }

  dispatch_async(MEMORY[0x277D85CD0], *(a1 + 80));
LABEL_11:
  _Block_object_dispose(v32, 8);
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_3;
  v5[3] = &unk_279EB19E8;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  [v2 _showCreditCardPromptForWebView:v3 creditCard:v4 completionHandler:v5];
}

uint64_t __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    [*(a1 + 32) neverSaveCreditCardData:*(a1 + 40)];
  }

  else if (!a2)
  {
    [*(a1 + 32) saveCreditCardData:*(a1 + 40) completionHandler:&__block_literal_global_280];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) tellWalletThatExistingCardWasFilledInForm:v2 previouslyFilledVirtualCardNumbers:*(a1 + 48)];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 56) expirationDate];
    v5 = [v3 expirationYearIsOlderThan:v4];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_6;
    v33[3] = &unk_279EB1A10;
    v34 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(a1 + 96);
    v35 = v6;
    v38 = v7;
    v36 = *(a1 + 40);
    v37 = *(a1 + 88);
    v8 = MEMORY[0x2743DCFC0](v33);
    if (*(a1 + 104) == 1)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 80);
      v11 = *(a1 + 64);
      v12 = [*(a1 + 56) cardSecurityCode];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_7;
      v22[3] = &unk_279EB1A38;
      v23 = *(a1 + 40);
      v13 = *(a1 + 32);
      v31 = *(a1 + 96);
      v32 = v5;
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      v24 = v13;
      v25 = v14;
      v26 = v15;
      v27 = *(a1 + 80);
      v28 = *(a1 + 56);
      v29 = v8;
      v30 = *(a1 + 88);
      [v11 _showPromptToSaveCreditCardSecurityCodeForWebView:v9 cardNumber:v10 securityCode:v12 completionHandler:v22];

      v16 = v23;
    }

    else if (v5)
    {
      v19 = *(a1 + 72);
      v20 = *(a1 + 80);
      v21 = *(a1 + 64);
      v16 = [*(a1 + 56) expirationDate];
      [v21 _showPromptToUpdateCreditCardExpirationDateForWebView:v19 cardNumber:v20 expirationDate:v16 completionHandler:v8];
    }

    else
    {
      v16 = [*(a1 + 32) creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:*(a1 + 56) mergeSecurityCode:*(*(*(a1 + 96) + 8) + 24) updateExpirationDate:0];
      [*(a1 + 40) updateCreditCardDataCreditCardData:v16];
      (*(*(a1 + 88) + 16))();
    }
  }

  else
  {
    v17 = *(a1 + 88);
    v18 = *(*(a1 + 88) + 16);

    v18();
  }
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:*(a1 + 40) mergeSecurityCode:*(*(*(a1 + 64) + 8) + 24) updateExpirationDate:a2 == 0];
  [*(a1 + 48) updateCreditCardDataCreditCardData:v3];
  (*(*(a1 + 56) + 16))();
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    [*(a1 + 32) neverSaveCVVForCreditCardData:*(a1 + 40)];
  }

  *(*(*(a1 + 96) + 8) + 24) = a2 == 0;
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = [*(a1 + 72) expirationDate];
    v8 = *(a1 + 80);
    v9 = v7;
    [v4 _showPromptToUpdateCreditCardExpirationDateForWebView:v5 cardNumber:v6 expirationDate:? completionHandler:?];
  }

  else
  {
    v9 = [*(a1 + 40) creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:*(a1 + 72) mergeSecurityCode:*(*(*(a1 + 96) + 8) + 24) updateExpirationDate:0];
    [*(a1 + 32) updateCreditCardDataCreditCardData:?];
    (*(*(a1 + 88) + 16))();
  }
}

uint64_t __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_8(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = [v4 creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:a1[6] mergeSecurityCode:*(*(a1[8] + 8) + 24) updateExpirationDate:a2 == 0];
  [v3 replaceCreditCardData:v4 withCard:v5];

  v6 = *(a1[7] + 16);

  return v6();
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_9(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPromptToSaveSecurityCode:a2 != 2];
  *(*(*(a1 + 96) + 8) + 24) = a2 == 0;
  if (*(a1 + 104) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v11 = [*(a1 + 32) expirationDate];
    [v6 _showPromptToUpdateCreditCardExpirationDateForWebView:v4 cardNumber:v5 expirationDate:v11 completionHandler:*(a1 + 80)];
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = [v8 creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:*(a1 + 32) mergeSecurityCode:*(*(*(a1 + 96) + 8) + 24) updateExpirationDate:0];
    [v7 replaceCreditCardData:v8 withCard:v9];

    v10 = *(*(a1 + 88) + 16);

    v10();
  }
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_10(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) sendCardholderNameEnteredInFormToWalletIfNecessary:*(a1 + 40) lastFilledVirtualCardData:*(a1 + 48)];
    v3 = *(a1 + 72);
    v4 = MEMORY[0x277D85CD0];

    dispatch_async(v4, v3);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_11;
    block[3] = &unk_279EB1948;
    v5 = *(a1 + 64);
    block[4] = *(a1 + 56);
    v7 = v5;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = *(a1 + 72);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_12;
  v5[3] = &unk_279EB19E8;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  [v2 _showCreditCardPromptForWebView:v3 creditCard:v4 completionHandler:v5];
}

uint64_t __101__WBUFormDataController__webView_willSubmitFormContainingCreditCardData_fromFrame_submissionHandler___block_invoke_12(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    [*(a1 + 32) neverSaveCreditCardData:*(a1 + 40)];
  }

  else if (!a2)
  {
    [*(a1 + 32) saveCreditCardDataIfAllowed:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (id)_credentialMatchesEligibleForUpdateForURL:(id)a3 username:(id)a4 oldPassword:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23 = a4;
  v9 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v22 = v8;
  v10 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v8];
  v11 = [objc_alloc(MEMORY[0x277D49B70]) initWithString:v23 matchingType:1];
  [v10 setUserNameQuery:v11];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__WBUFormDataController__credentialMatchesEligibleForUpdateForURL_username_oldPassword___block_invoke;
  v28[3] = &unk_279EB18F8;
  v28[4] = &v29;
  [(WBUFormDataController *)self getSavedAccountMatchesWithCriteria:v10 synchronously:1 completionHandler:v28];
  v12 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v30[5];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v14)
  {
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v17 password];
        v19 = [v18 isEqualToString:v9];

        if (v19)
        {
          [v12 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v29, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

void __88__WBUFormDataController__credentialMatchesEligibleForUpdateForURL_username_oldPassword___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 exactMatches];
  v4 = [v3 potentialMatches];

  v5 = [v8 arrayByAddingObjectsFromArray:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_webView:(id)a3 saveUsernameAndPasswordForURL:(id)a4 formType:(unint64_t)a5 inFrame:(id)a6 username:(id)a7 password:(id)a8 isGeneratedPassword:(BOOL)a9 confirmOverwritingCurrentPassword:(BOOL)a10 inContext:(id)a11 submissionHandler:(id)a12
{
  v44[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = a11;
  v22 = a12;
  v23 = [(WBUFormDataController *)self _shouldSaveUsernamesAndPasswordsForURL:v18 inWebView:v17];
  v24 = 1;
  if (a5 && v23)
  {
    if (![MEMORY[0x277D49A08] isPasswordsAppInstalled])
    {
      goto LABEL_11;
    }

    accountSavedWithGeneratedPassword = self->_accountSavedWithGeneratedPassword;
    if (!accountSavedWithGeneratedPassword)
    {
      goto LABEL_11;
    }

    v26 = [(WBSSavedAccount *)accountSavedWithGeneratedPassword user];
    v41 = [v19 isEqualToString:v26];

    v39 = self->_accountSavedWithGeneratedPassword;
    v27 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:v18];
    v40 = [(WBSSavedAccount *)v39 hasProtectionSpace:v27];

    v28 = [(WBSSavedAccount *)self->_accountSavedWithGeneratedPassword password];
    v29 = [v28 isEqualToString:v20];

    if (!v41)
    {
      goto LABEL_11;
    }

    if (v40 && (v29 & 1) == 0)
    {
      v30 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_273D58000, v30, OS_LOG_TYPE_DEFAULT, "Updating password of account saved after user edited a strong password", buf, 2u);
      }

      [(WBUFormDataController *)self _updatePasswordOfPreviouslySavedAccount:self->_accountSavedWithGeneratedPassword withPasswordEditedByUser:v20];
      [(WBUFormDataController *)self _silentlyUpdateSavedAccountsEquivalentToUserName:v19 atURL:v18 inContext:v21 withPassword:v20];
      v31 = [MEMORY[0x277CCAB98] defaultCenter];
      v32 = self->_accountSavedWithGeneratedPassword;
      v43 = @"savedAccount";
      v44[0] = v32;
      v24 = 1;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      [v31 postNotificationName:@"formDataControllerDidUpdatePasswordForPreviouslySavedAccount" object:self userInfo:v33];

      v34 = self->_accountSavedWithGeneratedPassword;
      self->_accountSavedWithGeneratedPassword = 0;
    }

    else
    {
LABEL_11:
      v35 = [v19 length];
      v36 = 1;
      if (!a10)
      {
        v36 = 2;
      }

      if (!a9)
      {
        v36 = 0;
      }

      if (!v35)
      {
        v36 = 3;
      }

      v24 = [(WBUFormDataController *)self _saveUser:v19 password:v20 isGeneratedPassword:a9 forURL:v18 inContext:v21 formType:a5 promptingPolicy:v36 webView:v17 completionHandler:v22];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)_updatePasswordOfPreviouslySavedAccount:(id)a3 withPasswordEditedByUser:(id)a4
{
  v5 = MEMORY[0x277D49B28];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setSavedAccount:v7];

  [v8 setPassword:v6];
  v9 = [MEMORY[0x277D49B58] sharedStore];
  [v9 changeSavedAccountWithRequest:v8];

  return 1;
}

- (void)_silentlyUpdateSavedAccountsEquivalentToUserName:(id)a3 atURL:(id)a4 inContext:(id)a5 withPassword:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 length])
  {
    if ([v10 length])
    {
      v14 = [v11 host];
      v15 = [v14 length];

      if (v15)
      {
        if ([MEMORY[0x277D49B48] shouldEvaluateAccountsToConsiderEquivalentForUserName:v10 atURL:v11])
        {
          v16 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v11];
          [v16 setOptions:{objc_msgSend(v16, "options") | 2}];
          [v16 setContext:v12];
          v19 = 0;
          v20 = &v19;
          v21 = 0x3032000000;
          v22 = __Block_byref_object_copy_;
          v23 = __Block_byref_object_dispose_;
          v24 = 0;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __103__WBUFormDataController__silentlyUpdateSavedAccountsEquivalentToUserName_atURL_inContext_withPassword___block_invoke;
          v18[3] = &unk_279EB18F8;
          v18[4] = &v19;
          [(WBUFormDataController *)self getSavedAccountMatchesWithCriteria:v16 synchronously:1 completionHandler:v18];
          v17 = [v20[5] accountsToConsiderEquivalentForUserName:v10 atURL:v11];
          [(WBUFormDataController *)self _silentlyUpdateCredentialsForSavedAccounts:v17 withPassword:v13];

          _Block_object_dispose(&v19, 8);
        }
      }
    }
  }
}

- (void)_silentlyUpdateCredentialsForSavedAccounts:(id)a3 withPassword:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "length"))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *buf = 134217984;
      v15 = [v5 count];
      _os_log_impl(&dword_273D58000, v8, OS_LOG_TYPE_DEFAULT, "Silently updating %zu accounts", buf, 0xCu);
    }

    v9 = [MEMORY[0x277D49B58] sharedStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__WBUFormDataController__silentlyUpdateCredentialsForSavedAccounts_withPassword___block_invoke;
    v12[3] = &unk_279EB1B28;
    v13 = v6;
    v10 = [v5 safari_mapObjectsUsingBlock:v12];
    [v9 changeSavedAccountsWithRequests:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __81__WBUFormDataController__silentlyUpdateCredentialsForSavedAccounts_withPassword___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D49B28];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setSavedAccount:v4];

  [v5 setPassword:*(a1 + 32)];

  return v5;
}

- (BOOL)_saveUser:(id)a3 password:(id)a4 isGeneratedPassword:(BOOL)a5 forURL:(id)a6 inContext:(id)a7 formType:(unint64_t)a8 promptingPolicy:(int64_t)a9 webView:(id)a10 completionHandler:(id)a11
{
  v13 = a5;
  v72 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v68 = a10;
  v67 = a11;
  v19 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:v17];
  v71 = [MEMORY[0x277D49B58] sharedStore];
  v128 = 0;
  v129 = &v128;
  v130 = 0x3032000000;
  v131 = __Block_byref_object_copy_;
  v132 = __Block_byref_object_dispose_;
  v133 = 0;
  v20 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v17];
  [v20 setContext:v18];
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 3221225472;
  v127[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke;
  v127[3] = &unk_279EB18F8;
  v127[4] = &v128;
  [v71 getSavedAccountsMatchingCriteria:v20 withSynchronousCompletionHandler:v127];
  v63 = [v129[5] password];
  v69 = v19;
  v70 = v18;
  v126 = 0;
  v21 = v129;
  v22 = v129[5];
  v124 = 0;
  v125 = v22;
  v123 = 0;
  v65 = [(WBUFormDataController *)self _relatedCredentialMatchesToUpdateForUser:v72 protectionSpace:v19 oldSavedAccount:&v125 matchesForCurrentHost:&v124 matchesForAssociatedDomains:&v123 haveExistingCredentialWithSameUsernameAndDifferentPassword:&v126];
  objc_storeStrong(v21 + 5, v125);
  v64 = v124;
  v66 = v123;
  v23 = v129[5];
  v24 = [v23 password];
  LOBYTE(v18) = [v24 isEqualToString:v16];

  if (((v23 != 0) & v18) == 1 && [v72 length])
  {
    v25 = [MEMORY[0x277D49B58] sharedStore];
    v26 = v129[5];
    v27 = [(WBUFormDataController *)self autoFillQuirksManager];
    v28 = [v27 associatedDomainsManager];
    [v25 setSavedAccountAsDefault:v26 forProtectionSpace:v69 context:v70 associatedDomainsManager:v28 completionHandler:&__block_literal_global_287];

    v29 = 1;
LABEL_27:

    goto LABEL_28;
  }

  if ([v16 length] && (objc_msgSend(v16, "safari_looksLikeObscuredPassword") & 1) == 0)
  {
    if (a9 == 3)
    {
      if (v13)
      {
        v30 = MEMORY[0x277CCACA8];
        v31 = _WBSLocalizedString();
        v32 = [v17 host];
        v33 = [v32 safari_highLevelDomainFromHost];
        v34 = [v30 stringWithFormat:v31, v33];

        v35 = &stru_2882C1EC0;
      }

      else
      {
        v34 = titleTextForSavingNewPassword();
        v35 = _WBSLocalizedString();
      }

      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_3;
      v111[3] = &unk_279EB1BC8;
      v112 = v68;
      v113 = v17;
      v25 = v34;
      v114 = v25;
      v40 = v35;
      v115 = v40;
      v122 = v13;
      v116 = v16;
      v117 = self;
      v121 = v67;
      v118 = v71;
      v119 = v69;
      v120 = v70;
      [(WBUFormDataController *)self bestUsernameSuggestionForUsernamePromptOnURL:v113 inContext:v120 completionHandler:v111];

      v29 = 0;
      goto LABEL_27;
    }

    v36 = v129[5];
    v37 = [v66 count];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_5;
    v102[3] = &unk_279EB1BF0;
    v110 = &v128;
    v55 = v71;
    v103 = v55;
    v54 = v72;
    v104 = v54;
    v38 = v16;
    v105 = v38;
    v56 = v69;
    v106 = v56;
    v107 = self;
    v58 = v17;
    v108 = v58;
    v39 = v70;
    v109 = v39;
    v60 = MEMORY[0x2743DCFC0](v102);
    if (!a9)
    {
      goto LABEL_20;
    }

    if (a9 == 2)
    {
      if (v37 || [v65 count])
      {
        goto LABEL_20;
      }
    }

    else if (a9 == 1 && (v36 || v37))
    {
LABEL_20:
      v41 = [v58 host];
      v42 = v126;
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_6;
      v90[3] = &unk_279EB1C18;
      v99 = v60;
      v91 = v65;
      v92 = v55;
      v93 = v39;
      v94 = self;
      v95 = v56;
      v101 = v36 != 0;
      v96 = v38;
      v97 = v66;
      v98 = v68;
      v100 = v67;
      LOBYTE(v53) = v42;
      [(WBUFormDataController *)self _showPasswordPromptForWebView:v98 formType:a8 username:v54 host:v41 hasCredentialForCurrentHost:v36 != 0 existingCredentialMatchesForCurrentHost:v64 otherSubdomainCredentialMatches:v91 haveExistingCredentialWithSameUsernameAndDifferentPassword:v53 completionHandler:v90];

      v29 = 0;
LABEL_26:

      v25 = v103;
      goto LABEL_27;
    }

    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x3032000000;
    v88[3] = __Block_byref_object_copy_;
    v88[4] = __Block_byref_object_dispose_;
    v89 = 0;
    v43 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v58];
    [v43 setContext:v39];
    v44 = objc_alloc(MEMORY[0x277D49B70]);
    v45 = [objc_opt_class() dontSaveMarker];
    v46 = [v44 initWithString:v45 matchingType:1];
    [v43 setUserNameQuery:v46];

    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_7;
    v81[3] = &unk_279EB1C68;
    v47 = v55;
    v82 = v47;
    v48 = v60;
    v86 = v48;
    v87 = v88;
    v83 = v56;
    v49 = v39;
    v84 = v49;
    v85 = self;
    [v47 savedAccountsMatchingCriteria:v43 withCompletionHandler:v81];
    v29 = 1;
    if (a8 == 5 && v63 && [v65 count])
    {
      v59 = [v58 host];
      v62 = [v65 firstObject];
      v57 = [v62 protectionSpace];
      v50 = [v57 host];
      v51 = [v50 safari_highLevelDomainFromHost];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_10;
      v73[3] = &unk_279EB1C90;
      v78 = v48;
      v80 = v88;
      v74 = v65;
      v75 = v47;
      v76 = v49;
      v77 = self;
      v79 = v67;
      [(WBUFormDataController *)self _promptToUpdateRelatedCredentials:v54 urlHost:v59 relatedCredentialsHighLevelDomain:v51 webView:v68 completionHandler:v73];

      v29 = 0;
    }

    _Block_object_dispose(v88, 8);
    goto LABEL_26;
  }

  v29 = 1;
LABEL_28:

  _Block_object_dispose(&v128, 8);
  return v29;
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 exactMatches];
  v3 = [v7 firstObject];
  v4 = [v3 savedAccount];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(WBUFormAutoFillPrompt);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 112);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_4;
  v12[3] = &unk_279EB1BA0;
  v10 = *(a1 + 64);
  v12[4] = *(a1 + 72);
  v13 = v5;
  v14 = *(a1 + 64);
  v20 = *(a1 + 112);
  v19 = *(a1 + 104);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 32);
  LOBYTE(v11) = v9;
  [(WBUFormAutoFillPrompt *)v4 showAutoFillPromptForUsernameInWebView:v6 url:v13 title:v7 message:v8 suggestedUsername:v3 password:v10 isGeneratedPassword:v11 completionHandler:v12];
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = [v6 host];
    v8 = [v7 safari_highLevelDomainForPasswordManager];
    v53 = [v5 saveUser:v3 password:v4 forProtectionSpace:v6 highLevelDomain:v8 groupID:*MEMORY[0x277D49C38]];

    if (*(a1 + 96) == 1)
    {
      v9 = [MEMORY[0x277D499B8] sharedLogger];
      [v9 didUseGeneratedPassword];
    }

    v10 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:*(a1 + 40)];
    v11 = [objc_alloc(MEMORY[0x277D49B70]) initWithString:v3 matchingType:1];
    [v10 setUserNameQuery:v11];

    [v10 setContext:*(a1 + 72)];
    [v10 setOptions:{objc_msgSend(v10, "options") | 2}];
    *v74 = 0;
    v75 = v74;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy_;
    v78 = __Block_byref_object_dispose_;
    v79 = 0;
    v12 = *(a1 + 56);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_2_297;
    v73[3] = &unk_279EB18F8;
    v73[4] = v74;
    [v12 getSavedAccountsMatchingCriteria:v10 withSynchronousCompletionHandler:v73];
    if (*(v75 + 5))
    {
      v13 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_273D58000, v13, OS_LOG_TYPE_DEFAULT, "Updating existing saved account to new password", buf, 2u);
      }

      v14 = objc_alloc_init(MEMORY[0x277D49B28]);
      [v14 setSavedAccount:*(v75 + 5)];
      [v14 setUser:v3];
      [v14 setPassword:*(a1 + 48)];
      [*(a1 + 56) changeSavedAccountWithRequest:v14];
    }

    [*(a1 + 32) _silentlyUpdateSavedAccountsEquivalentToUserName:v3 atURL:*(a1 + 40) inContext:*(a1 + 72) withPassword:*(a1 + 48)];
    v51 = [objc_alloc(MEMORY[0x277CBAB80]) initWithUser:&stru_2882C1EC0 password:*(a1 + 48) persistence:3];
    v15 = [MEMORY[0x277D49B58] sharedStore];
    v52 = [v15 savedAccountWithAllMetadataForURLCredential:v51 protectionSpace:*(a1 + 64)];

    if (v52)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_273D58000, v16, OS_LOG_TYPE_DEFAULT, "Update existing saved account without a user name", buf, 2u);
      }

      [*(a1 + 56) changeSavedAccount:v52 toUser:v3 password:*(a1 + 48)];
    }

    else if (!*(v75 + 5))
    {
      v21 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v53 user];
        v23 = [*(a1 + 64) host];
        *buf = 138740227;
        *&buf[4] = v22;
        *&buf[12] = 2117;
        *&buf[14] = v23;
        _os_log_impl(&dword_273D58000, v21, OS_LOG_TYPE_DEFAULT, "Setting saved account for user %{sensitive}@ as default for %{sensitive}@", buf, 0x16u);
      }

      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = *(a1 + 72);
      v27 = [*(a1 + 32) autoFillQuirksManager];
      v28 = [v27 associatedDomainsManager];
      [v25 setSavedAccountAsDefault:v53 forProtectionSpace:v24 context:v26 associatedDomainsManager:v28];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v83 = __Block_byref_object_copy_;
    v84 = __Block_byref_object_dispose_;
    v85 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy_;
    v71 = __Block_byref_object_dispose_;
    v72 = 0;
    v29 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:*(a1 + 40)];
    [v29 setOptions:{objc_msgSend(v29, "options") | 3}];
    v30 = *(a1 + 32);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_298;
    v66[3] = &unk_279EB1B50;
    v66[4] = buf;
    v66[5] = &v67;
    [v30 getSavedAccountMatchesWithCriteria:v29 synchronously:1 completionHandler:v66];
    v31 = *(*&buf[8] + 40);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_2_299;
    v64[3] = &unk_279EB1920;
    v32 = v3;
    v65 = v32;
    v33 = [v31 safari_filterObjectsUsingBlock:v64];
    v34 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v33;

    v35 = v68[5];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_3_300;
    v62[3] = &unk_279EB1920;
    v36 = v32;
    v63 = v36;
    v37 = [v35 safari_filterObjectsUsingBlock:v62];
    v38 = v68[5];
    v68[5] = v37;

    if ([*(*&buf[8] + 40) count] || objc_msgSend(v68[5], "count"))
    {
      if ([*(*&buf[8] + 40) count])
      {
        [*(*&buf[8] + 40) firstObject];
      }

      else
      {
        [v68[5] firstObject];
      }
      v39 = ;
      v40 = [v39 host];

      v41 = *(a1 + 32);
      v42 = [*(a1 + 40) host];
      v43 = [v40 safari_highLevelDomainFromHost];
      v44 = *(a1 + 80);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_4_301;
      v54[3] = &unk_279EB1B78;
      v60 = buf;
      v55 = *(a1 + 56);
      v56 = v53;
      v45 = *(a1 + 72);
      v46 = *(a1 + 32);
      v57 = v45;
      v58 = v46;
      v61 = &v67;
      v59 = *(a1 + 88);
      [v41 _promptToUpdateRelatedCredentials:v36 urlHost:v42 relatedCredentialsHighLevelDomain:v43 webView:v44 completionHandler:v54];
    }

    else
    {
      v50 = *(a1 + 88);
      if (v50)
      {
        (*(v50 + 16))();
      }
    }

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v74, 8);
  }

  else
  {
    if (*(*(a1 + 32) + 192))
    {
      v17 = [MEMORY[0x277D49A40] sharedStore];
      [v17 removeGeneratedPassword:*(*(a1 + 32) + 192) completionHandler:0];
    }

    v53 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:*(a1 + 40)];
    v10 = [objc_alloc(MEMORY[0x277CBAB80]) initWithUser:&stru_2882C1EC0 password:*(a1 + 48) persistence:3];
    v18 = [MEMORY[0x277D49B58] sharedStore];
    v19 = [v18 savedAccountWithAllMetadataForURLCredential:v10 protectionSpace:v53];

    if (*(a1 + 96) == 1 && v19 && ([v19 hasSidecarData] & 1) == 0)
    {
      v47 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *v74 = 0;
        _os_log_impl(&dword_273D58000, v47, OS_LOG_TYPE_INFO, "Deleting a password without a username because the user opted not to save an ASP from the username dialog", v74, 2u);
      }

      v48 = [MEMORY[0x277D49B58] sharedStore];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_296;
      v80[3] = &unk_279EB15A8;
      v81 = *(a1 + 88);
      [v48 removeCredentialTypes:1 forSavedAccount:v19 completionHandler:v80];
    }

    else
    {
      v20 = *(a1 + 88);
      if (v20)
      {
        (*(v20 + 16))();
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_296(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_2_297(uint64_t a1, void *a2)
{
  v7 = [a2 matchesForPasswordAutoFill];
  v3 = [v7 firstObject];
  v4 = [v3 savedAccount];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 potentialMatches];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 associatedDomainMatches];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_2_299(uint64_t a1, void *a2)
{
  v3 = [a2 user];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_3_300(uint64_t a1, void *a2)
{
  v3 = [a2 user];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_4_301(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(*(*(a1 + 72) + 8) + 40);
    v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v32;
      do
      {
        v6 = 0;
        do
        {
          if (*v32 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v9 = [*(*(&v31 + 1) + 8 * v6) protectionSpace];
          v10 = *(a1 + 48);
          v11 = [*(a1 + 56) autoFillQuirksManager];
          v12 = [v11 associatedDomainsManager];
          [v7 setSavedAccountAsDefault:v8 forProtectionSpace:v9 context:v10 associatedDomainsManager:v12];

          ++v6;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v4);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obja = *(*(*(a1 + 80) + 8) + 40);
    v13 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obja);
          }

          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v19 = [*(*(&v27 + 1) + 8 * v16) protectionSpace];
          v20 = *(a1 + 48);
          v21 = [*(a1 + 56) autoFillQuirksManager];
          v22 = [v21 associatedDomainsManager];
          [v17 setSavedAccountAsDefault:v18 forProtectionSpace:v19 context:v20 associatedDomainsManager:v22];

          ++v16;
        }

        while (v14 != v16);
        v14 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v14);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 88) + 8) + 40);
  if (v3)
  {
    v4 = v3;
    *a2 = v3;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [v9 host];
    v11 = [v10 safari_highLevelDomainForPasswordManager];
    v12 = [v6 saveUser:v7 password:v8 forProtectionSpace:v9 highLevelDomain:v11 groupID:*MEMORY[0x277D49C38]];

    v13 = v12;
    *a2 = v12;
    if (v12)
    {
      [*(a1 + 64) _silentlyUpdateSavedAccountsEquivalentToUserName:*(a1 + 40) atURL:*(a1 + 72) inContext:*(a1 + 80) withPassword:*(a1 + 48)];
    }
  }

  return v3 == 0;
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a2 > 1)
  {
    v5 = 0;
    v35 = 0;
  }

  else
  {
    v4 = *(a1 + 96);
    v44 = 0;
    v5 = (*(v4 + 16))();
    v35 = 0;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_30;
      }

      v34 = v5;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v6 = *(a1 + 32);
      v7 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v41;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v41 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(a1 + 40);
            v12 = [*(*(&v40 + 1) + 8 * i) protectionSpace];
            v13 = *(a1 + 48);
            v14 = [*(a1 + 56) autoFillQuirksManager];
            v15 = [v14 associatedDomainsManager];
            [v11 setSavedAccountAsDefault:v35 forProtectionSpace:v12 context:v13 associatedDomainsManager:v15];
          }

          v8 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v8);
      }

      v5 = v34;
    }

    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v19 = [*(a1 + 56) autoFillQuirksManager];
    v20 = [v19 associatedDomainsManager];
    [v16 setSavedAccountAsDefault:v35 forProtectionSpace:v18 context:v17 associatedDomainsManager:v20];

    if (!(v5 & 1 | ((*(a1 + 112) & 1) == 0)))
    {
      v21 = objc_alloc_init(MEMORY[0x277D49B28]);
      [v21 setSavedAccount:v35];
      [v21 setPassword:*(a1 + 72)];
      [*(a1 + 40) changeSavedAccountWithRequest:v21];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = *(a1 + 80);
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v37;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(a1 + 40);
          v28 = [*(*(&v36 + 1) + 8 * j) protectionSpace];
          v29 = *(a1 + 48);
          v30 = [*(a1 + 56) autoFillQuirksManager];
          v31 = [v30 associatedDomainsManager];
          [v27 setSavedAccountAsDefault:v35 forProtectionSpace:v28 context:v29 associatedDomainsManager:v31];
        }

        v24 = [v22 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v24);
    }

LABEL_28:

    goto LABEL_30;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_30;
    }

    v22 = [MEMORY[0x277D49B58] sharedStore];
    [v22 setDontSaveMarkerForSavedAccountsWithProtectionSpace:*(a1 + 64)];
    goto LABEL_28;
  }

  [*(a1 + 88) webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:0];
LABEL_30:
  v32 = *(a1 + 104);
  if (v32)
  {
    (*(v32 + 16))();
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v3;
  obj = [v3 exactMatches];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        dispatch_group_enter(v4);
        v10 = *(a1 + 32);
        v11 = [v9 savedAccount];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_8;
        v26[3] = &unk_279EB12E0;
        v27 = v4;
        [v10 removeCredentialTypes:3 forSavedAccount:v11 completionHandler:v26];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_9;
  block[3] = &unk_279EB1C40;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v24 = v12;
  v25 = v13;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *&v16 = *(a1 + 48);
  *(&v16 + 1) = *(a1 + 56);
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v22 = v17;
  v23 = v16;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  v18 = *MEMORY[0x277D85DE8];
}

void __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(*(a1 + 72) + 8);
  obj = *(v3 + 40);
  (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) autoFillQuirksManager];
  v9 = [v8 associatedDomainsManager];
  [v5 setSavedAccountAsDefault:v4 forProtectionSpace:v6 context:v7 associatedDomainsManager:v9];
}

uint64_t __132__WBUFormDataController__saveUser_password_isGeneratedPassword_forURL_inContext_formType_promptingPolicy_webView_completionHandler___block_invoke_10(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 80) + 8);
    obj = *(v4 + 40);
    (*(v3 + 16))();
    objc_storeStrong((v4 + 40), obj);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = *(a1 + 32);
    v5 = [v17 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v17);
          }

          v9 = *(a1 + 40);
          v10 = *(*(*(a1 + 80) + 8) + 40);
          v11 = [*(*(&v18 + 1) + 8 * v8) protectionSpace];
          v12 = *(a1 + 48);
          v13 = [*(a1 + 56) autoFillQuirksManager];
          v14 = [v13 associatedDomainsManager];
          [v9 setSavedAccountAsDefault:v10 forProtectionSpace:v11 context:v12 associatedDomainsManager:v14];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v17 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_promptToUpdateRelatedCredentials:(id)a3 urlHost:(id)a4 relatedCredentialsHighLevelDomain:(id)a5 webView:(id)a6 completionHandler:(id)a7
{
  v29[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v26 = a6;
  v14 = a4;
  +[WBUFormDataController keychainSyncEnabled];
  v15 = MEMORY[0x277CCACA8];
  v16 = _WBSLocalizedString();
  v17 = [v15 localizedStringWithFormat:v16, v11, v12];

  v18 = MEMORY[0x277CCACA8];
  v19 = _WBSLocalizedString();
  v20 = [v18 localizedStringWithFormat:v19, v14];

  v21 = _WBSLocalizedString();
  v22 = _WBSLocalizedString();
  v29[0] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __127__WBUFormDataController__promptToUpdateRelatedCredentials_urlHost_relatedCredentialsHighLevelDomain_webView_completionHandler___block_invoke;
  v27[3] = &unk_279EB19C0;
  v28 = v13;
  v24 = v13;
  [WBUFormAutoFillPrompt showAutoFillPromptInWebView:v26 title:v17 message:v20 cancelButtonTitle:v21 otherButtonTitles:v23 makeFirstButtonSuggestedAction:1 completionHandler:v27];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)didFillFieldWithGeneratedPassword:(id)a3 inFrame:(id)a4 webView:(id)a5
{
  v7 = MEMORY[0x277CBAB90];
  v8 = a5;
  v9 = a3;
  v10 = [a4 webui_URL];
  v13 = [v7 safari_HTMLFormProtectionSpaceForURL:v10];

  v11 = [MEMORY[0x277CBAB80] safari_credentialWithUser:&stru_2882C1EC0 password:v9 persistence:3];
  v12 = [MEMORY[0x277CBAB88] sharedCredentialStorage];
  [v12 setCredential:v11 forProtectionSpace:v13];

  [v8 webui_setLastGeneratedPasswordForCurrentBackForwardItem:v9];
}

- (BOOL)_webView:(id)a3 formSubmission:(BOOL)a4 willSubmitNewAccountOrChangePasswordFormWithMetadata:(id)a5 shouldPreferAnnotatedCredentials:(BOOL)a6 fromFrame:(id)a7 inContext:(id)a8 submissionHandler:(id)a9
{
  v24 = a6;
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = +[WBUCreditCardDataController sharedCreditCardDataController];
  v20 = [v19 savableCreditCardDataInForm:v15];

  if (!v20)
  {
    goto LABEL_10;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __173__WBUFormDataController__webView_formSubmission_willSubmitNewAccountOrChangePasswordFormWithMetadata_shouldPreferAnnotatedCredentials_fromFrame_inContext_submissionHandler___block_invoke;
  v25[3] = &unk_279EB1CB8;
  v25[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v31 = v12;
  v32 = v24;
  v30 = v18;
  v21 = [(WBUFormDataController *)self _webView:v26 willSubmitFormContainingCreditCardData:v20 fromFrame:v28 submissionHandler:v25];

  if (v21)
  {
LABEL_10:
    if ([v15 usesGeneratedPassword] && objc_msgSend(MEMORY[0x277D49A08], "isPasswordsAppInstalled"))
    {
      v22 = [MEMORY[0x277D49AE0] sharedNotificationManager];
      [v22 scheduleTakeATourNotificationIfNeededWithCompletionHandler:&__block_literal_global_318];
    }

    LOBYTE(v21) = [(WBUFormDataController *)self _webView:v14 saveUsernameAndPasswordFromForm:v15 inFrame:v16 context:v17 confirmOverwritingCurrentPassword:!v12 shouldPreferAnnotatedCredentials:v24 submissionHandler:v18];
  }

  return v21;
}

uint64_t __173__WBUFormDataController__webView_formSubmission_willSubmitNewAccountOrChangePasswordFormWithMetadata_shouldPreferAnnotatedCredentials_fromFrame_inContext_submissionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _webView:*(a1 + 40) saveUsernameAndPasswordFromForm:*(a1 + 48) inFrame:*(a1 + 56) context:*(a1 + 64) confirmOverwritingCurrentPassword:(*(a1 + 80) & 1) == 0 shouldPreferAnnotatedCredentials:*(a1 + 81) submissionHandler:*(a1 + 72)];
  if (result)
  {
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  return result;
}

- (BOOL)_webView:(id)a3 willSubmitStandardFormWithMetadata:(id)a4 fromFrame:(id)a5 submissionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([objc_opt_class() formContainsCreditCardData:v11])
  {
    v14 = +[WBUCreditCardDataController sharedCreditCardDataController];
    v15 = [v14 savableCreditCardDataInForm:v11];

    if (v15)
    {
      v16 = [(WBUFormDataController *)self _webView:v10 willSubmitFormContainingCreditCardData:v15 fromFrame:v12 submissionHandler:v13];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)_showPasswordPromptForWebView:(id)a3 formType:(unint64_t)a4 username:(id)a5 host:(id)a6 hasCredentialForCurrentHost:(BOOL)a7 existingCredentialMatchesForCurrentHost:(id)a8 otherSubdomainCredentialMatches:(id)a9 haveExistingCredentialWithSameUsernameAndDifferentPassword:(BOOL)a10 completionHandler:(id)a11
{
  v12 = a7;
  v65[2] = *MEMORY[0x277D85DE8];
  v16 = a5;
  v17 = a6;
  v61 = a8;
  v18 = a9;
  v19 = a11;
  v58 = a3;
  v20 = [v17 safari_highLevelDomainFromHost];
  v21 = [MEMORY[0x277CBEB18] array];
  v59 = v16;
  v60 = v18;
  if (v12)
  {
    if (a4 == 5)
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = v16;
      v24 = v17;
      v25 = _WBSLocalizedString();
      v26 = [v22 localizedStringWithFormat:v25, v23, v24];

      if ([v60 count])
      {
        if (a10)
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = _WBSLocalizedString();
          v29 = [v27 localizedStringWithFormat:v28, v20];
        }

        else
        {
          v29 = 0;
        }

        v46 = _WBSLocalizedString();
        [v21 addObject:v46];

        v41 = &unk_2882C4638;
      }

      else
      {
        v42 = _WBSLocalizedString();
        [v21 addObject:v42];

        v41 = &unk_2882C4650;
        v29 = v26;
        v26 = 0;
      }
    }

    else if ([v18 count])
    {
      v32 = [v18 firstObject];
      v33 = [v32 host];
      v34 = [v33 safari_highLevelDomainFromHost];

      v35 = v16;
      v20 = v34;
      +[WBUFormDataController keychainSyncEnabled];
      v36 = MEMORY[0x277CCACA8];
      v47 = _WBSLocalizedString();
      v26 = [v36 localizedStringWithFormat:v47, v35, v20];

      if (a10)
      {
        v48 = MEMORY[0x277CCACA8];
        v49 = _WBSLocalizedString();
        v29 = [v48 localizedStringWithFormat:v49, v20];
      }

      else
      {
        v29 = 0;
      }

      v50 = _WBSLocalizedString();
      [v21 addObject:v50];

      v41 = &unk_2882C4668;
    }

    else
    {
      v43 = v16;
      v44 = v17;
      +[WBUFormDataController keychainSyncEnabled];
      v45 = MEMORY[0x277CCACA8];
      v51 = _WBSLocalizedString();
      v29 = [v45 localizedStringWithFormat:v51, v43, v44];

      v52 = _WBSLocalizedString();
      [v21 addObject:v52];

      v26 = 0;
      v41 = &unk_2882C4680;
    }
  }

  else
  {
    if ([MEMORY[0x277D38BB0] shouldShowLoginIntroduction])
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = _WBSLocalizedString();
      v26 = [v30 stringWithFormat:v31, v20];
    }

    else
    {
      v26 = titleTextForSavingNewPassword();
    }

    if (![MEMORY[0x277D38BB0] shouldShowLoginIntroduction])
    {
      [MEMORY[0x277D49A08] isPasswordsAppInstalled];
    }

    v29 = _WBSLocalizedString();
    v37 = _WBSLocalizedString();
    [v21 addObject:v37];

    v38 = [v61 count];
    if (([MEMORY[0x277D38BB0] shouldShowLoginIntroduction] & 1) == 0 && !v38)
    {
      v39 = _WBSLocalizedString();
      [v21 addObject:v39];
    }

    v40 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    v65[0] = v40;
    v65[1] = &unk_2882C4620;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
  }

  v53 = _WBSLocalizedString();
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __255__WBUFormDataController__showPasswordPromptForWebView_formType_username_host_hasCredentialForCurrentHost_existingCredentialMatchesForCurrentHost_otherSubdomainCredentialMatches_haveExistingCredentialWithSameUsernameAndDifferentPassword_completionHandler___block_invoke;
  v62[3] = &unk_279EB1CE0;
  v63 = v41;
  v64 = v19;
  v54 = v41;
  v55 = v19;
  LOBYTE(v57) = 1;
  [WBUFormAutoFillPrompt showAutoFillPromptInWebView:v58 title:v26 message:v29 cancelButtonTitle:v53 otherButtonTitles:v21 cancelWhenAppEntersBackground:0 makeFirstButtonSuggestedAction:v57 headerViewController:0 completionHandler:v62];

  v56 = *MEMORY[0x277D85DE8];
}

void __255__WBUFormDataController__showPasswordPromptForWebView_formType_username_host_hasCredentialForCurrentHost_existingCredentialMatchesForCurrentHost_otherSubdomainCredentialMatches_haveExistingCredentialWithSameUsernameAndDifferentPassword_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    [MEMORY[0x277D38BB0] shouldShowLoginIntroduction];
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) objectAtIndex:a2];
    (*(v3 + 16))(v3, [v5 unsignedIntegerValue]);
  }
}

- (void)_completePasswordsAppIntroduction
{
  v2 = [MEMORY[0x277CBEBD0] pm_defaults];
  [v2 setBool:1 forKey:*MEMORY[0x277D38BB8]];
}

- (id)_relatedCredentialMatchesToUpdateForUser:(id)a3 protectionSpace:(id)a4 oldSavedAccount:(id *)a5 matchesForCurrentHost:(id *)a6 matchesForAssociatedDomains:(id *)a7 haveExistingCredentialWithSameUsernameAndDifferentPassword:(BOOL *)a8
{
  v13 = a3;
  v14 = a4;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy_;
  v66 = __Block_byref_object_dispose_;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy_;
  v54[4] = __Block_byref_object_dispose_;
  v55 = 0;
  v15 = objc_alloc(MEMORY[0x277D49B40]);
  v16 = [v14 safari_URL];
  v17 = [MEMORY[0x277D49B70] queryThatMatchesEverything];
  v18 = [v15 initWithURL:v16 options:19 userNameQuery:v17 associatedDomainsManager:0 webFrameIdentifier:0];

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __207__WBUFormDataController__relatedCredentialMatchesToUpdateForUser_protectionSpace_oldSavedAccount_matchesForCurrentHost_matchesForAssociatedDomains_haveExistingCredentialWithSameUsernameAndDifferentPassword___block_invoke;
  v49[3] = &unk_279EB1D08;
  v51 = &v62;
  v19 = v13;
  v50 = v19;
  v52 = &v56;
  v53 = v54;
  [(WBUFormDataController *)self getSavedAccountMatchesWithCriteria:v18 synchronously:1 completionHandler:v49];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __207__WBUFormDataController__relatedCredentialMatchesToUpdateForUser_protectionSpace_oldSavedAccount_matchesForCurrentHost_matchesForAssociatedDomains_haveExistingCredentialWithSameUsernameAndDifferentPassword___block_invoke_2;
  v29[3] = &unk_279EB1D30;
  v31 = &v39;
  v20 = v19;
  v30 = v20;
  v32 = v54;
  v33 = &v35;
  v34 = &v43;
  v21 = MEMORY[0x2743DCFC0](v29);
  v22 = [v63[5] potentialMatches];
  v23 = [v22 safari_filterObjectsUsingBlock:v21];

  if (*(v40 + 24) == 1)
  {

    v23 = MEMORY[0x277CBEBF8];
  }

  if (a6)
  {
    *(v40 + 24) = 0;
    v24 = [v63[5] exactMatches];
    *a6 = [v24 safari_filterObjectsUsingBlock:v21];

    if (*(v40 + 24) == 1)
    {
      *a6 = MEMORY[0x277CBEBF8];
    }
  }

  if (a7)
  {
    v25 = v44[5];
    v44[5] = 0;

    *(v40 + 24) = 0;
    v26 = [v63[5] associatedDomainMatches];
    *a7 = [v26 safari_filterObjectsUsingBlock:v21];

    if (*(v40 + 24) == 1)
    {
      *a7 = MEMORY[0x277CBEBF8];
    }
  }

  if (a5)
  {
    *a5 = v57[5];
  }

  if (a8)
  {
    *a8 = *(v36 + 24);
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);

  return v23;
}

void __207__WBUFormDataController__relatedCredentialMatchesToUpdateForUser_protectionSpace_oldSavedAccount_matchesForCurrentHost_matchesForAssociatedDomains_haveExistingCredentialWithSameUsernameAndDifferentPassword___block_invoke(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 exactMatches];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v10 user];
        v12 = [v11 isEqualToString:a1[4]];

        if (v12)
        {
          v13 = [v10 savedAccount];
          v14 = *(a1[6] + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v16 = [v10 password];
          v17 = *(a1[7] + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(a1[7] + 8) + 40))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [v4 potentialMatches];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      while (2)
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * j);
          v25 = [v24 user];
          v26 = [v25 isEqualToString:a1[4]];

          if (v26)
          {
            v27 = [v24 password];
            v28 = *(a1[7] + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = v27;

            goto LABEL_22;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __207__WBUFormDataController__relatedCredentialMatchesToUpdateForUser_protectionSpace_oldSavedAccount_matchesForCurrentHost_matchesForAssociatedDomains_haveExistingCredentialWithSameUsernameAndDifferentPassword___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v6 = [v3 user];
    v5 = [v6 isEqualToString:a1[4]];

    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = [v4 password];
    v8 = v7;
    if (*(*(a1[6] + 8) + 40))
    {
      v5 = 1;
      if (([v7 isEqualToString:?] & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 1;
        v5 = 0;
      }

      goto LABEL_12;
    }

    v9 = *(a1[8] + 8);
    if (*(v9 + 40))
    {
      if (![v7 isEqualToString:?])
      {
        v5 = 0;
        *(*(a1[5] + 8) + 24) = 1;
        goto LABEL_12;
      }

      v9 = *(a1[8] + 8);
    }

    objc_storeStrong((v9 + 40), v8);
    v5 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (BOOL)_webView:(id)a3 saveCredentialsForURL:(id)a4 formSubmission:(BOOL)a5 formWithMetadata:(id)a6 fromFrame:(id)a7 username:(id)a8 password:(id)a9 inContext:(id)a10 submissionHandler:(id)a11
{
  v100 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v61 = a6;
  v56 = a7;
  v62 = a8;
  v18 = a9;
  v59 = a10;
  v57 = a11;
  v58 = v16;
  v55 = self;
  v60 = v18;
  if (-[WBUFormDataController _shouldSaveUsernamesAndPasswordsForURL:inWebView:](self, "_shouldSaveUsernamesAndPasswordsForURL:inWebView:", v17, v16) && ([v18 safari_looksLikeObscuredPassword] & 1) == 0)
  {
    if (WBSCurrentPasswordSavingBehavior() == 1 && ([v61 usesGeneratedPassword] & 1) == 0)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_273D58000, v22, OS_LOG_TYPE_DEFAULT, "Will not attempt to save credentials because user opted out of saving credentials when signing in", buf, 2u);
      }

      goto LABEL_3;
    }

    v53 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:v17];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v54 = [MEMORY[0x277D49B58] sharedStore];
    v21 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v17];
    [v21 setOptions:{objc_msgSend(v21, "options") | 4}];
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke;
    v90[3] = &unk_279EB18F8;
    v90[4] = &v91;
    [v54 getSavedAccountsMatchingCriteria:v21 withSynchronousCompletionHandler:v90];
    v52 = v21;
    if ((v92[3] & 1) != 0 || [(WBUFormDataController *)self hasAssociatedDomainSavedForURL:v17 userName:v62])
    {
      a5 = 1;
LABEL_39:

      _Block_object_dispose(&v91, 8);
      goto LABEL_4;
    }

    v89 = 0;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v48 = [(WBUFormDataController *)self _relatedCredentialMatchesToUpdateForUser:v62 protectionSpace:v53 oldSavedAccount:&v88 matchesForCurrentHost:&v87 matchesForAssociatedDomains:&v86 haveExistingCredentialWithSameUsernameAndDifferentPassword:&v89];
    v23 = v88;
    v47 = v87;
    v46 = v86;
    v51 = v23;
    v49 = [v23 password];
    if (![v48 count] && !objc_msgSend(v46, "count") && objc_msgSend(off_279EB0F38, "password:shouldBeConsideredEqualToExistingPassword:", v18, v49))
    {
      v24 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_2;
      block[3] = &unk_279EB1D58;
      v25 = v23;
      v79 = v25;
      v26 = v53;
      v80 = v26;
      v81 = v54;
      v82 = v59;
      v83 = self;
      v84 = v62;
      v85 = v60;
      dispatch_async(v24, block);

      [(WBUFormDataController *)self _warnAboutWeakPasswordIfNecessaryWithWebView:v16 savedAccount:v25 protectionSpace:v26];
      a5 = 1;
LABEL_38:

      goto LABEL_39;
    }

    v77 = 0;
    v50 = v61;
    v27 = [v50 userNameElementUniqueID];
    v28 = [v50 passwordElementUniqueID];
    if (![v27 length] && !objc_msgSend(v28, "length"))
    {
LABEL_31:

      if ([v49 isEqualToString:v60])
      {
        v36 = [v53 host];
        v37 = [v36 safari_highLevelDomainForPasswordManager];
        v38 = [v51 sharedGroupID];
        v39 = [v54 saveUser:v62 password:v60 forProtectionSpace:v53 highLevelDomain:v37 groupID:v38];

        v40 = [(WBUFormDataController *)v55 autoFillQuirksManager];
        v41 = [v40 associatedDomainsManager];
        [v54 setSavedAccountAsDefault:v39 forProtectionSpace:v53 context:v59 associatedDomainsManager:v41];

        [(WBUFormDataController *)v55 _warnAboutWeakPasswordIfNecessaryWithWebView:v58 savedAccount:v51 protectionSpace:v53];
        a5 = 1;
      }

      else
      {
        if (v51)
        {
          v42 = 1;
        }

        else
        {
          v42 = HIBYTE(v77) & (v77 ^ 1);
        }

        v43 = [v17 host];
        v44 = v89;
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_4;
        v64[3] = &unk_279EB1DF8;
        v65 = v62;
        v66 = v60;
        v67 = v53;
        v68 = v51;
        v69 = v59;
        v70 = v55;
        v71 = v48;
        v72 = v17;
        v73 = v49;
        v74 = v58;
        v76 = a5;
        v75 = v57;
        LOBYTE(v45) = v44;
        [(WBUFormDataController *)v55 _showPasswordPromptForWebView:v74 formType:3 username:v65 host:v43 hasCredentialForCurrentHost:v42 & 1 existingCredentialMatchesForCurrentHost:v47 otherSubdomainCredentialMatches:v71 haveExistingCredentialWithSameUsernameAndDifferentPassword:v45 completionHandler:v64];

        v39 = v65;
      }

      goto LABEL_38;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v29 = [v50 controls];
    v30 = [v29 countByEnumeratingWithState:&v95 objects:buf count:16];
    if (!v30)
    {
      goto LABEL_30;
    }

    v31 = *v96;
LABEL_20:
    v32 = 0;
    while (1)
    {
      if (*v96 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v33 = *(*(&v95 + 1) + 8 * v32);
      v34 = [v33 uniqueID];
      if ([v34 isEqualToString:v27])
      {
        break;
      }

      if ([v34 isEqualToString:v28])
      {
        v35 = &v77;
        goto LABEL_27;
      }

LABEL_28:

      if (v30 == ++v32)
      {
        v30 = [v29 countByEnumeratingWithState:&v95 objects:buf count:16];
        if (!v30)
        {
LABEL_30:

          goto LABEL_31;
        }

        goto LABEL_20;
      }
    }

    v35 = (&v77 + 1);
LABEL_27:
    *v35 = [v33 isAutoFilledTextField];
    goto LABEL_28;
  }

LABEL_3:
  a5 = 1;
LABEL_4:

  v19 = *MEMORY[0x277D85DE8];
  return a5;
}

void __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 exactMatches];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) savedAccount];
        v9 = [v8 user];
        v10 = +[WBUFormDataController dontSaveMarker];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

void __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) protectionSpaces];
  v3 = [*(a1 + 32) protectionSpacesForAdditionalSites];
  v16 = [v2 arrayByAddingObjectsFromArray:v3];

  v4 = [v16 containsObject:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) autoFillQuirksManager];
    v10 = [v9 associatedDomainsManager];
    [v5 setSavedAccountAsDefault:v6 forProtectionSpace:v7 context:v8 associatedDomainsManager:v10 completionHandler:&__block_literal_global_360];
  }

  else
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a1 + 40);
    v9 = [v13 host];
    v10 = [v9 safari_highLevelDomainForPasswordManager];
    v14 = [*(a1 + 32) sharedGroupID];
    v15 = [v5 saveUser:v11 password:v12 forProtectionSpace:v13 highLevelDomain:v10 groupID:v14];
  }
}

void __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v3 = [MEMORY[0x277D49B58] sharedStore];
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = [v6 host];
      v8 = [v7 safari_highLevelDomainForPasswordManager];
      v9 = [*(a1 + 56) sharedGroupID];
      v10 = [v3 saveUser:v4 password:v5 forProtectionSpace:v6 highLevelDomain:v8 groupID:v9];

      v11 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_5;
      block[3] = &unk_279EB1D80;
      v41 = v3;
      v42 = v10;
      v43 = *(a1 + 48);
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      v14 = *(a1 + 80);
      v44 = v12;
      v45 = v13;
      v46 = v14;
      v15 = v10;
      v16 = v3;
      dispatch_async(v11, block);
    }

    else
    {
      v16 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:*(a1 + 88)];
      v15 = [MEMORY[0x277D49B58] sharedStore];
      v17 = [*(a1 + 56) protectionSpaces];
      v18 = [v17 containsObject:v16];

      if (v18)
      {
        if (([*(a1 + 40) isEqualToString:*(a1 + 96)] & 1) == 0)
        {
          v19 = objc_alloc_init(MEMORY[0x277D49B28]);
          [v19 setSavedAccount:*(a1 + 56)];
          [v19 setPassword:*(a1 + 40)];
          [v15 changeSavedAccountWithRequest:v19];
        }

        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        v22 = [*(a1 + 72) autoFillQuirksManager];
        v23 = [v22 associatedDomainsManager];
        [v15 setSavedAccountAsDefault:v20 forProtectionSpace:v16 context:v21 associatedDomainsManager:v23];
      }

      else
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        v26 = [v16 host];
        v27 = [v26 safari_highLevelDomainForPasswordManager];
        v28 = [*(a1 + 56) sharedGroupID];
        v29 = [v15 saveUser:v24 password:v25 forProtectionSpace:v16 highLevelDomain:v27 groupID:v28];

        v30 = *(a1 + 64);
        v31 = [*(a1 + 72) autoFillQuirksManager];
        v32 = [v31 associatedDomainsManager];
        [v15 setSavedAccountAsDefault:v29 forProtectionSpace:v16 context:v30 associatedDomainsManager:v32];

        if ([MEMORY[0x277D49A08] isPasswordsAppInstalled])
        {
          v33 = [MEMORY[0x277D49AE0] sharedNotificationManager];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_6;
          v36[3] = &unk_279EB1DD0;
          v34 = v29;
          v35 = *(a1 + 72);
          v37 = v34;
          v38 = v35;
          v39 = *(a1 + 104);
          [v33 requestStatusWithCompletionHandler:v36];
        }
      }
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v16 = [MEMORY[0x277D49B58] sharedStore];
    [v16 setDontSaveMarkerForSavedAccountsWithProtectionSpace:*(a1 + 48)];
LABEL_17:

    goto LABEL_18;
  }

  if (a2 == 4)
  {
    [*(a1 + 72) _completePasswordsAppIntroduction];
  }

LABEL_18:
  if ((*(a1 + 120) & 1) == 0)
  {
    (*(*(a1 + 112) + 16))();
  }
}

void __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_5(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) autoFillQuirksManager];
  v7 = [v6 associatedDomainsManager];
  [v2 setSavedAccountAsDefault:v3 forProtectionSpace:v4 context:v5 associatedDomainsManager:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 72);
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = [*(*(&v20 + 1) + 8 * v11) protectionSpace];
        v15 = *(a1 + 56);
        v16 = [*(a1 + 64) autoFillQuirksManager];
        v17 = [v16 associatedDomainsManager];
        [v12 setSavedAccountAsDefault:v13 forProtectionSpace:v14 context:v15 associatedDomainsManager:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v3 = [MEMORY[0x277D49AE0] sharedNotificationManager];
    [v3 schedulePasswordSavedNotificationForSavedAccount:*(a1 + 32) completionHandler:&__block_literal_global_362];
  }

  else if ([MEMORY[0x277D38BB0] shouldShowLoginIntroduction])
  {
    [*(a1 + 40) showPasswordSavedPromptForSavedAccount:*(a1 + 32) webView:*(a1 + 48)];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __144__WBUFormDataController__webView_saveCredentialsForURL_formSubmission_formWithMetadata_fromFrame_username_password_inContext_submissionHandler___block_invoke_8;
    v4[3] = &unk_279EB1DA8;
    v4[4] = *(a1 + 40);
    [MEMORY[0x277CBA9C8] requestToTurnOnCredentialProviderExtensionWithCompletionHandler:v4];
  }
}

- (void)showPasswordSavedPromptForSavedAccount:(id)a3 webView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = _WBSLocalizedString();
  v9 = [v5 highLevelDomain];
  v10 = [v7 stringWithFormat:v8, v9];

  v11 = _WBSLocalizedString();
  v12 = _WBSLocalizedString();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WBUFormDataController_showPasswordSavedPromptForSavedAccount_webView___block_invoke;
  block[3] = &unk_279EB1E48;
  v19 = v6;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = v5;
  v13 = v5;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  v17 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__WBUFormDataController_showPasswordSavedPromptForSavedAccount_webView___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10[0] = *(a1 + 56);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__WBUFormDataController_showPasswordSavedPromptForSavedAccount_webView___block_invoke_2;
  v8[3] = &unk_279EB1E20;
  v9 = *(a1 + 64);
  LOBYTE(v7) = 1;
  [WBUFormAutoFillPrompt showAutoFillPromptInWebView:v2 title:v3 message:0 cancelButtonTitle:v4 otherButtonTitles:v5 cancelWhenAppEntersBackground:0 makeFirstButtonSuggestedAction:v7 headerViewController:0 completionHandler:v8];

  v6 = *MEMORY[0x277D85DE8];
}

void __72__WBUFormDataController_showPasswordSavedPromptForSavedAccount_webView___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a2 != -1)
  {
    v2 = [*(a1 + 32) stableIDString];
    v3 = v2;
    if (v2)
    {
      v4 = *MEMORY[0x277D76620];
      v5 = MEMORY[0x277D49A98];
      v9 = *MEMORY[0x277D49CA0];
      v10[0] = v2;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v7 = [v5 passwordManagerURLWithDictionary:v6];
      [v4 openURL:v7 options:MEMORY[0x277CBEC10] completionHandler:0];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_warnAboutWeakPasswordIfNecessaryWithWebView:(id)a3 savedAccount:(id)a4 protectionSpace:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v8 webui_canPromptForAccountSecurityRecommendation])
  {
    objc_initWeak(&location, v8);
    v11 = [MEMORY[0x277D49B58] sharedStore];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke;
    v19[3] = &unk_279EB1EE8;
    v19[4] = self;
    v20 = v11;
    v12 = v11;
    objc_copyWeak(&v22, &location);
    v21 = v10;
    v13 = MEMORY[0x2743DCFC0](v19);
    v14 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_2_396;
    block[3] = &unk_279EB18A8;
    v18 = v13;
    v17 = v9;
    v15 = v13;
    dispatch_async(v14, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 persistentIdentifiersForWarningManager];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [a1[4] autoFillQuirksManager];
      v8 = [MEMORY[0x277D49AD0] sharedStore];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_380;
      v12[3] = &unk_279EB1EC0;
      v13 = a1[5];
      v9 = v7;
      v14 = v9;
      v15 = v4;
      objc_copyWeak(&v19, a1 + 7);
      v16 = a1[4];
      v17 = a1[6];
      v18 = v6;
      [v8 getContainsPersistentIdentifier:v18 completionHandler:v12];

      objc_destroyWeak(&v19);
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_cold_2();
    }
  }
}

void __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_380(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x277D49AC8]);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = +[(WBSHistory *)WBUHistory];
    v7 = [v3 initWithSavedAccountStore:v4 autoFillQuirksManager:v5 userDefaults:0 highLevelDomainsProvider:v6];

    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_2;
    v11[3] = &unk_279EB1E98;
    objc_copyWeak(&v15, (a1 + 80));
    v10 = *(a1 + 48);
    v9 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    [v7 getWarningForSavedAccount:v8 completionHandler:v11];

    objc_destroyWeak(&v15);
  }
}

void __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 shouldShowWarningsWhenLoggingIn])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_3;
    v4[3] = &unk_279EB1E70;
    objc_copyWeak(&v9, (a1 + 64));
    v4[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v9);
  }
}

void __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_3(id *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  if (WeakRetained)
  {
    v3 = [a1[4] _titleTextForWarning:a1[5]];
    v4 = [a1[5] localizedInformationTextForWarningWhenLoggingIn];
    v5 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v16[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_392;
    v11[3] = &unk_279EB1DD0;
    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[8];
    LOBYTE(v10) = 1;
    [WBUFormAutoFillPrompt showAutoFillPromptInWebView:WeakRetained title:v3 message:v4 cancelButtonTitle:v5 otherButtonTitles:v7 cancelWhenAppEntersBackground:1 makeFirstButtonSuggestedAction:v10 headerViewController:0 completionHandler:v11];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_273D58000, v8, OS_LOG_TYPE_INFO, "WebView disappeared before presenting weak password warning.", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __99__WBUFormDataController__warnAboutWeakPasswordIfNecessaryWithWebView_savedAccount_protectionSpace___block_invoke_392(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277D499B8] sharedLogger];
    [v3 reportWeakPasswordWarningEvent:2];
  }

  else
  {
    v4 = MEMORY[0x277D49A98];
    v12[0] = *MEMORY[0x277D49C70];
    v5 = [*(a1 + 32) user];
    v13[0] = v5;
    v12[1] = *MEMORY[0x277D49C68];
    v6 = [*(a1 + 40) host];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v3 = [v4 passwordManagerURLWithDictionary:v7];

    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v8 openSensitiveURL:v3 withOptions:0];

    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 reportWeakPasswordWarningEvent:3];
  }

  v10 = [MEMORY[0x277D49AD0] sharedStore];
  [v10 addPersistentIdentifier:*(a1 + 48)];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_titleTextForWarning:(id)a3
{
  v3 = [a3 localizedLongDescriptionForClient:2];
  v4 = MEMORY[0x277CCACA8];
  v5 = _WBSLocalizedString();
  v6 = [v4 stringWithFormat:@" %@", v5];
  v7 = [v3 stringByAppendingString:v6];

  return v7;
}

- (BOOL)_webView:(id)a3 willSubmitLoginFormWithMetadata:(id)a4 formSubmission:(BOOL)a5 fromFrame:(id)a6 inContext:(id)a7 submissionHandler:(id)a8
{
  v28 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v15 webui_URL];
  if ([MEMORY[0x277D38BB0] shouldShowLoginIntroduction])
  {
    v31 = 0;
    v32 = 0;
    LOBYTE(v27) = 1;
    v19 = &v32;
    v20 = &v31;
    [(WBUFormDataController *)self willSubmitFormWithCredentials:v14 shouldPreferAnnotatedCredentials:0 atURL:v18 username:&v32 password:&v31 inContext:v16 shouldShowPasswordsAppOnboarding:v27];
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v19 = &v30;
    v20 = &v29;
    [(WBUFormDataController *)self willSubmitFormWithCredentials:v14 shouldPreferAnnotatedCredentials:0 atURL:v18 username:&v30 password:&v29 inContext:v16];
  }

  v21 = *v19;
  v22 = *v20;
  if ([v14 usesGeneratedPassword] && objc_msgSend(MEMORY[0x277D49A08], "isPasswordsAppInstalled"))
  {
    v23 = [MEMORY[0x277D49AE0] sharedNotificationManager];
    [v23 scheduleTakeATourNotificationIfNeededWithCompletionHandler:&__block_literal_global_404];
  }

  if ([v22 length])
  {
    if ([v21 length])
    {
      v24 = [(WBUFormDataController *)self _webView:v13 saveCredentialsForURL:v18 formSubmission:v28 formWithMetadata:v14 fromFrame:v15 username:v21 password:v22 inContext:v16 submissionHandler:v17];
    }

    else
    {
      BYTE1(v27) = 1;
      LOBYTE(v27) = [v14 usesGeneratedPassword];
      v24 = [(WBUFormDataController *)self _webView:v13 saveUsernameAndPasswordForURL:v18 formType:3 inFrame:v15 username:v21 password:v22 isGeneratedPassword:v27 confirmOverwritingCurrentPassword:v16 inContext:v17 submissionHandler:?];
    }

    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

- (BOOL)_shouldTryToSaveCredentialsFromLastForm:(id)a3 currentFormMetadata:(id)a4 frame:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([a4 containsAtLeastOneSecureTextField] && (objc_msgSend(v7, "type") - 6) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v10 = [v7 passwordElementUniqueID];
    if ([v10 length])
    {
      v11 = [v7 confirmPasswordElementUniqueID];
      if ([v11 length])
      {
        v12 = [v7 oldPasswordElementUniqueID];
        if ([v12 length])
        {
          LOBYTE(v9) = 0;
        }

        else
        {
          v13 = [objc_opt_class() valueOfControlWithUniqueID:v10 inForm:v7];
          if ([v13 length])
          {
            v14 = MEMORY[0x277CBAB90];
            v15 = [v8 webui_URL];
            v16 = [v14 safari_HTMLFormProtectionSpaceForURL:v15];

            v17 = [MEMORY[0x277CBAB88] sharedCredentialStorage];
            v18 = [v17 defaultCredentialForProtectionSpace:v16];

            if ([v18 hasPassword])
            {
              v19 = [v18 password];
              v9 = [v19 isEqualToString:v13] ^ 1;
            }

            else
            {
              LOBYTE(v9) = 0;
            }
          }

          else
          {
            LOBYTE(v9) = 0;
          }
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)_updateCredentialsWithGeneratedPasswordForForm:(id)a3 inWebView:(id)a4 frame:(id)a5 context:(id)a6
{
  v9 = a3;
  v55 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 type];
  v54 = v10;
  v13 = [v10 webui_URL];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy_;
  v78 = __Block_byref_object_dispose_;
  v79 = 0;
  v49 = v12;
  if ([v9 usesGeneratedPassword])
  {
    v14 = [MEMORY[0x277D38BB0] shouldShowLoginIntroduction];
    v16 = (v75 + 5);
    v15 = v75[5];
    if (v14)
    {
      v72 = 0;
      v73 = v15;
      v17 = &v72;
      v18 = &v73;
      LOBYTE(v45) = 1;
      [(WBUFormDataController *)self willSubmitFormWithCredentials:v9 shouldPreferAnnotatedCredentials:0 atURL:v13 username:&v73 password:&v72 inContext:v11 shouldShowPasswordsAppOnboarding:v45];
    }

    else
    {
      v70 = 0;
      v71 = v15;
      v17 = &v70;
      v18 = &v71;
      [(WBUFormDataController *)self willSubmitFormWithCredentials:v9 shouldPreferAnnotatedCredentials:0 atURL:v13 username:&v71 password:&v70 inContext:v11];
    }

    objc_storeStrong(v16, *v18);
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CBAB90] safari_HTMLFormProtectionSpaceForURL:v13];
  v21 = [v55 webui_formMetadataForLastPasswordGenerationOrSubmitEventInFrame:v10];
  if ([v21 usesGeneratedPassword])
  {
    v22 = [v21 passwordElementUniqueID];
    if ([v22 length])
    {
      v23 = [objc_opt_class() valueOfControlWithUniqueID:v22 inForm:v21];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __96__WBUFormDataController__updateCredentialsWithGeneratedPasswordForForm_inWebView_frame_context___block_invoke;
  v63[3] = &unk_279EB1F38;
  v63[4] = self;
  v69 = &v74;
  v24 = v19;
  v64 = v24;
  v52 = v23;
  v65 = v52;
  v25 = v13;
  v66 = v25;
  v51 = v20;
  v67 = v51;
  v26 = v11;
  v68 = v26;
  v27 = MEMORY[0x2743DCFC0](v63);
  if ([v24 length])
  {
    [v55 webui_setFormMetadata:v9 forLastPasswordGenerationOrSubmitEventInFrame:v10];
    v50 = v26;
    if (!v75[5])
    {
      v75[5] = &stru_2882C1EC0;
    }

    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy_;
    v61 = __Block_byref_object_dispose_;
    v62 = 0;
    v28 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:v25];
    v29 = objc_alloc(MEMORY[0x277D49B70]);
    v30 = [v29 initWithString:v75[5] matchingType:1];
    [v28 setUserNameQuery:v30];

    v31 = [MEMORY[0x277D49B58] sharedStore];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __96__WBUFormDataController__updateCredentialsWithGeneratedPasswordForForm_inWebView_frame_context___block_invoke_3;
    v56[3] = &unk_279EB18F8;
    v56[4] = &v57;
    [v31 getSavedAccountsMatchingCriteria:v28 withSynchronousCompletionHandler:v56];

    v32 = v58[5];
    if (v32)
    {
      v33 = [v32 password];
      v34 = [v33 length];

      if (v34)
      {
        v27[2](v27, 0);
        v35 = [v58[5] password];
        v36 = [v35 isEqualToString:v24];
LABEL_31:

        _Block_object_dispose(&v57, 8);
        v26 = v50;
        goto LABEL_32;
      }
    }

    v35 = [v25 host];
    v37 = [v21 usesGeneratedPassword];
    if (v35)
    {
      v38 = v37;
    }

    else
    {
      v38 = 1;
    }

    if (v38 == 1)
    {
      v36 = 1;
      v27[2](v27, 1);
      goto LABEL_31;
    }

    v39 = [(WBUFormDataController *)self autoFillQuirksManager];
    v48 = [v39 associatedDomainsManager];

    v40 = [v48 domainsToConsiderIdenticalToDomain:v35];
    v41 = [v40 count];

    v36 = v41 == 0;
    if (v41)
    {
      v42 = v27[2];
    }

    else
    {
      v47 = [v35 safari_stringByRemovingWwwDotPrefix];
      v43 = [v48 domainsWithAssociatedCredentialsForDomain:v47];
      v46 = [v43 count];

      v42 = v27[2];
      if (v46)
      {
        v42(v27, 0);
        -[WBUFormDataController _saveUser:password:isGeneratedPassword:forURL:inContext:formType:promptingPolicy:webView:completionHandler:](self, "_saveUser:password:isGeneratedPassword:forURL:inContext:formType:promptingPolicy:webView:completionHandler:", v75[5], v24, [v9 usesGeneratedPassword], v25, v50, v49, 2, v55, 0);
        goto LABEL_30;
      }
    }

    v42(v27, v41 == 0);
LABEL_30:

    goto LABEL_31;
  }

  v27[2](v27, 0);
  [v55 webui_removeFormMetadataForLastPasswordGenerationOrSubmitEventInFrame:v10];
  v36 = 0;
LABEL_32:

  _Block_object_dispose(&v74, 8);
  return v36;
}

void __96__WBUFormDataController__updateCredentialsWithGeneratedPasswordForForm_inWebView_frame_context___block_invoke(uint64_t a1, char a2)
{
  v3 = [*(*(a1 + 32) + 160) user];
  v14 = [v3 isEqual:*(*(*(a1 + 80) + 8) + 40)];

  v4 = +[WBUGeneratedPasswordCredentialUpdater sharedUpdater];
  v5 = *(a1 + 72);
  v13 = *(*(*(a1 + 80) + 8) + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) autoFillQuirksManager];
  v11 = [v10 associatedDomainsManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__WBUFormDataController__updateCredentialsWithGeneratedPasswordForForm_inWebView_frame_context___block_invoke_2;
  v16[3] = &unk_279EB1F10;
  v16[4] = *(a1 + 32);
  v17 = *(a1 + 56);
  v18 = *(a1 + 72);
  BYTE1(v12) = v14;
  LOBYTE(v12) = a2;
  [v4 updateCredentialWithNewUsername:v13 newGeneratedPassword:v9 lastGeneratedPassword:v6 credentialURL:v7 protectionSpace:v8 savedAccountContext:v5 shouldSaveNewCredential:v12 shouldSaveExistingCredential:v11 associatedDomainsManager:v16 completionHandler:?];
}

void __96__WBUFormDataController__updateCredentialsWithGeneratedPasswordForForm_inWebView_frame_context___block_invoke_2(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = a1[4];
    v7 = [v4 user];
    v8 = a1[5];
    v9 = a1[6];
    v10 = [v5 password];
    [v6 _silentlyUpdateSavedAccountsEquivalentToUserName:v7 atURL:v8 inContext:v9 withPassword:v10];

    if ([MEMORY[0x277D49A08] isPasswordsAppInstalled])
    {
      objc_storeStrong((a1[4] + 160), a2);
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = a1[4];
      v15 = @"savedAccount";
      v16[0] = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v11 postNotificationName:@"formDataControllerDidSaveAccountWithGeneratedPassword" object:v12 userInfo:v13];

LABEL_6:
    }
  }

  else if ([MEMORY[0x277D49A08] isPasswordsAppInstalled])
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"formDataControllerDidSaveAccountWithGeneratedPassword" object:a1[4] userInfo:0];
    goto LABEL_6;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __96__WBUFormDataController__updateCredentialsWithGeneratedPasswordForForm_inWebView_frame_context___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = [a2 matchesForPasswordAutoFill];
  v3 = [v7 firstObject];
  v4 = [v3 savedAccount];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)textDidChangeInForm:(id)a3 inWebView:(id)a4 frame:(id)a5 context:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 webui_formMetadataForLastPasswordGenerationOrSubmitEventInFrame:v11];
  if ([v13 usesGeneratedPassword])
  {
    [(WBUFormDataController *)self _updateCredentialsWithGeneratedPasswordForForm:v14 inWebView:v10 frame:v11 context:v12];
  }
}

- (void)performWhenReady:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v3 = [objc_opt_class() _meCard];
    [v3 performWhenReady:v4];
  }
}

@end