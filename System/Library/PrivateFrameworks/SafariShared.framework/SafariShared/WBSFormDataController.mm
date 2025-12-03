@interface WBSFormDataController
+ (BOOL)_password:(id)_password appearsToBeASixDigitCodeAppendedToPassword:(id)password;
+ (BOOL)_password:(id)_password appearsToBeMoreThanOneSymbolAppendedToPassword:(id)password;
+ (BOOL)canAutocompleteTextField:(id)field inForm:(id)form;
+ (BOOL)convertNumber:(id)number toAutoFillFormType:(unint64_t *)type;
+ (BOOL)formContainsCreditCardData:(id)data;
+ (BOOL)formContainsCreditCardNumberField:(id)field;
+ (BOOL)formContainsDateFields:(id)fields matchingAddressBookMatch:(id)match;
+ (BOOL)isFieldUnidentified:(id)unidentified;
+ (BOOL)isNameProperty:(id)property;
+ (BOOL)isUsernameFieldInLoginFormWithTextFieldMetadata:(id)metadata formMetadata:(id)formMetadata;
+ (BOOL)password:(id)password shouldBeConsideredEqualToExistingPassword:(id)existingPassword;
+ (BOOL)shouldDisplayHideMyEmailForControl:(id)control;
+ (BOOL)shouldDisplayOneTimeCodeForControl:(id)control inForm:(id)form;
+ (BOOL)textFieldLooksLikeCreditCardFormField:(id)field;
+ (BOOL)textFieldLooksLikeCreditCardNumericFormField:(id)field;
+ (id)allAddressBookAddressComponentKeys;
+ (id)allAddressBookNonAddressPropertyKeys;
+ (id)allSynonymsForMatch:(id)match;
+ (id)contactKeyForString:(id)string;
+ (id)continuingFieldsInFormControls:(id)controls startingAtIndex:(unint64_t)index;
+ (id)controlsConsideredByAutoFillInForm:(id)form;
+ (id)domainFromURL:(id)l;
+ (id)fieldToFocusBeforeSubmittingForm:(id)form;
+ (id)lastFieldInControls:(id)controls inForm:(id)form;
+ (id)metadataForControlWithUniqueID:(id)d inForm:(id)form;
+ (id)nextFieldAfterControls:(id)controls inForm:(id)form;
+ (id)specifierForAddressBookLabel:(id)label;
+ (id)specifierForControl:(id)control;
+ (id)stringWithAddressBookValue:(id)value key:(id)key;
+ (id)valueOfControlWithUniqueID:(id)d inForm:(id)form;
+ (id)valuesFromUser:(id)user password:(id)password forLoginOrChangePasswordForm:(id)form;
+ (int64_t)availableManualAutoFillActionForTextField:(id)field form:(id)form outUsernameElementUniqueID:(id *)d outPasswordElementUniqueID:(id *)iD outConfirmPasswordElementUniqueID:(id *)uniqueID;
+ (void)getFormFieldValues:(id *)values andFieldToFocus:(id *)focus andCreditCardDataTypesThatWillBeFilled:(id *)filled forCreditCardForm:(id)form fromCreditCardData:(id)data;
- (BOOL)_hasAutoFillEventMatchingCriteria:(id)criteria;
- (BOOL)_matchHasPreferredIdentifierOrShouldBeFilledInMultiRoundAutoFill:(id)fill specifier:(id)specifier multiRoundAutoFillManager:(id)manager contact:(id)contact;
- (BOOL)addressBookHasDataForLabel:(id)label;
- (BOOL)canApplyAutoFillGracePeriodForUsername:(id)username inTabWithID:(id)d currentURL:(id)l;
- (BOOL)canShowSavedAccountHistoryItemInTabWithID:(id)d currentURL:(id)l;
- (BOOL)frameIsKnownToAskForCredentialsFromOtherServicesFromAncestorFrameURLs:(id)ls;
- (BOOL)isControlASelectElement:(id)element;
- (BOOL)isPasswordFieldForUserCredentialsWithMetadata:(id)metadata formMetadata:(id)formMetadata;
- (BOOL)preferredIdentifierExistsForProperty:(id)property withContact:(id)contact;
- (BOOL)shouldSubmitForm:(id)form withUser:(id)user password:(id)password onURL:(id)l;
- (BOOL)textFieldIsEligibleForAutomaticStrongPassword:(id)password form:(id)form ignorePreviousDecision:(BOOL)decision textFieldCurrentlyContainsStrongPassword:(BOOL *)strongPassword;
- (BOOL)textFieldMetadataMeetsRequirementsForAutomaticStrongPasswordTreatment:(id)treatment form:(id)form;
- (NSLocale)locale;
- (WBSFormDataController)initWithAggressiveKeychainCaching:(BOOL)caching;
- (id)_autoFillSetFromMatches:(id)matches label:(id)label contact:(id)contact form:(id)form;
- (id)_cachedLocalizedStringsForBirthdate:(id)birthdate;
- (id)_completionDB;
- (id)_domainsWithPreviousDataOnInternalQueue;
- (id)_formKeyForMapOfHighLevelDomainToLastAutomaticFormSubmission:(id)submission formMetadata:(id)metadata;
- (id)_keyToLookUpInAnnotationsForPasswordForFormMetadata:(id)metadata;
- (id)_knownUsernamesWithPasswordsForURL:(id)l inContext:(id)context;
- (id)_lastUsedUsernameForDomain:(id)domain;
- (id)_matchesForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (id)_matchesForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (id)_nextFieldToFocusAfterFillingFieldAtIndex:(unint64_t)index inForm:(id)form;
- (id)_phoneNumberCandidates:(id)candidates fillingMultipleFields:(BOOL)fields;
- (id)_recentlyUsedAutoFillDictionaries;
- (id)_singleFieldPhoneNumberCandidates:(id)candidates;
- (id)_valuesForStandardForm:(id)form inDomain:(id)domain autoFillDataType:(unint64_t)type matches:(id *)matches preferredLabel:(id)label multiRoundAutoFillManager:(id)manager wantAllMatches:(BOOL)allMatches contact:(id)self0 existingMatches:(id)self1 shouldUseExistingMatchesToFillFocusedField:(BOOL)self2 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)self3;
- (id)addressBookMatchesForFullNameForContact:(id)contact;
- (id)addressBookMatchesForProperty:(id)property key:(id)key label:(id)label;
- (id)allFormDataForSaving;
- (id)annotationsFromUsername:(id)username forLoginOrChangePasswordForm:(id)form;
- (id)autoGeneratedPasswordForURL:(id)l respectingPasswordRequirements:(id)requirements maxLength:(unint64_t)length;
- (id)bestAddressBookLabelForFormMetadata:(id)metadata formControlValue:(id)value;
- (id)bestMatchForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (id)bestMatchForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (id)cascadingAddressMatchesForMatch:(id)match contact:(id)contact;
- (id)contactAutoFillSetForRecentlyUsedAutoFillSet:(id)set contact:(id)contact form:(id)form;
- (id)domainsWithPreviousData;
- (id)encryptOrDecryptData:(id)data encrypt:(BOOL)encrypt;
- (id)exactFQDNAndOtherSavedAccountMatchesForForm:(id)form atURL:(id)l webFrameIdentifier:(id)identifier savedAccountContext:(id)context;
- (id)extractPasswordFromForm:(id)form shouldPreferAnnotatedCredentials:(BOOL)credentials;
- (id)extractUserNameFromForm:(id)form atURL:(id)l inContext:(id)context;
- (id)extractUserNameFromForm:(id)form atURL:(id)l inContext:(id)context updateLastUsedUserName:(BOOL)name;
- (id)infoForDomain:(id)domain;
- (id)lastUsedUsernameWithPasswordForURL:(id)l inContext:(id)context;
- (id)matchesForControl:(id)control atURL:(id)l matchingPartialString:(id)string autoFillDataType:(unint64_t)type allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (id)matchesForControl:(id)control atURL:(id)l matchingPartialString:(id)string autoFillDataType:(unint64_t)type contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (id)metadataOfActiveFormOrBestFormForPageLevelAutoFill:(id)fill frame:(OpaqueFormAutoFillFrame *)frame;
- (id)metadataOfActiveFormOrBestFormForPageLevelAutoFill:(id)fill frameHandle:(id *)handle;
- (id)metadataOfBestFormForStreamlinedLogin:(id)login frame:(OpaqueFormAutoFillFrame *)frame;
- (id)metadataOfBestFormForStreamlinedLogin:(id)login frameHandle:(id *)handle;
- (id)orderedHomeAndWorkSetsForContact:(id)contact form:(id)form;
- (id)preferredIdentifierForProperty:(id)property withContact:(id)contact;
- (id)recentlyUsedAutoFillSetsForContact:(id)contact;
- (id)savedAccountFromMostRecentAutoFillEventOfURL:(id)l;
- (id)savedAccountUsingDomainsToConsiderIdenticalWithUsername:(id)username url:(id *)url host:(id *)host;
- (id)uniqueIDOfContact:(id)contact;
- (id)valuesForContactFormWithMetadata:(id)metadata inDomain:(id)domain matches:(id *)matches multiRoundAutoFillManager:(id)manager;
- (id)valuesForContactFormWithMetadata:(id)metadata inDomain:(id)domain matches:(id *)matches multiRoundAutoFillManager:(id)manager contact:(id)contact;
- (id)valuesForContactFormWithMetadata:(id)metadata matches:(id *)matches multiRoundAutoFillManager:(id)manager existingMatches:(id)existingMatches contact:(id)contact;
- (id)valuesForContactFormWithMetadata:(id)metadata matches:(id *)matches multiRoundAutoFillManager:(id)manager existingMatches:(id)existingMatches shouldUseExistingMatchesToFillFocusedField:(BOOL)field contact:(id)contact;
- (id)valuesForFormWithMetadata:(id)metadata hideMyEmailRecord:(id)record;
- (id)valuesForStandardForm:(id)form inDomain:(id)domain autoFillDataType:(unint64_t)type matches:(id *)matches preferredLabel:(id)label multiRoundAutoFillManager:(id)manager;
- (id)valuesForStandardForm:(id)form inDomain:(id)domain autoFillDataType:(unint64_t)type matches:(id *)matches preferredLabel:(id)label multiRoundAutoFillManager:(id)manager contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)self0;
- (int64_t)autoFillActionForFormType:(unint64_t)type onURL:(id)l shouldSubmitAfterFilling:(BOOL)filling;
- (unint64_t)_addMatchesForControl:(id)control startingAtIndex:(unint64_t)index formMetadata:(id)metadata fromExistingMatches:(id)matches fromAllMatchesIfNecessary:(id)necessary addToFoundMatches:(id)foundMatches addToAutoFillValues:(id)values multiRoundAutoFillManager:(id)self0 propertyToIdentifierMapForFoundMatches:(id)self1 shouldUseExistingMatchesToFillFocusedField:(BOOL)self2;
- (unint64_t)_indexForControlWithUniqueID:(id)d inForm:(id)form;
- (unint64_t)addValuesForStandardFormControls:(id)controls startingAtIndex:(unint64_t)index fromAutoFillItem:(id)item toDictionary:(id)dictionary formTextSample:(id)sample multiRoundAutoFillManager:(id)manager;
- (unint64_t)addValuesForStandardFormControlsInForm:(id)form startingAtIndex:(unint64_t)index fromAutoFillItem:(id)item toDictionary:(id)dictionary multiRoundAutoFillManager:(id)manager;
- (void)_currentLocaleDidChange:(id)change;
- (void)_dropValuesFromRecentlyUsedAutoFillSets;
- (void)_fillPhoneNumber:(id)number intoValues:(id)values controls:(id)controls formTextSample:(id)sample multiRoundAutoFillManager:(id)manager;
- (void)_loadCompletionDBIfNeededOnInternalQueue;
- (void)_processMatchesArray:(id)array autoFillSetKey:(id)key autoFillSet:(id)set madeChanges:(BOOL *)changes;
- (void)_removeExpiredAutoFillEvents:(id)events;
- (void)_removeStaleEntriesFromMapOfHighLevelDomainToLastAutomaticFormSubmission;
- (void)_setLastUsedUsername:(id)username andProtectionSpace:(id)space forDomain:(id)domain;
- (void)addABMatchesForValueSpecifier:(id)specifier matchingPartialString:(id)string toArray:(id)array preferredLabel:(id)label contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier;
- (void)addAllAddressDataIfNecessary:(id)necessary contactLabel:(id)label contact:(id)contact;
- (void)addPreviousDataMatchesForFieldWithName:(id)name inDomain:(id)domain matchingPartialString:(id)string toArray:(id)array;
- (void)addRecentlyUsedAutoFillSet:(id)set appendToTheEnd:(BOOL)end;
- (void)canAutomaticallyRegisterPasskeyForUsername:(id)username inTabWithID:(id)d currentURL:(id)l completionHandler:(id)handler;
- (void)clearPreviousDataDatabaseItemsAddedAfterDate:(id)date;
- (void)clearPreviousDataForDomain:(id)domain;
- (void)dealloc;
- (void)didAutomaticallySubmitFormWhenFillingOnURL:(id)l formMetadata:(id)metadata;
- (void)didFillPasswordForUsername:(id)username fromProviderWithBundleIdentifier:(id)identifier inTabWithID:(id)d currentURL:(id)l isPrivate:(BOOL)private formMetadata:(id)metadata requester:(id)requester;
- (void)getFormFieldValues:(id *)values andFieldToFocus:(id *)focus withSingleCreditCardData:(id)data inField:(id)field inForm:(id)form;
- (void)getSavedAccountMatchesWithCriteria:(id)criteria synchronously:(BOOL)synchronously completionHandler:(id)handler;
- (void)loadCompletionDBIfNeeded;
- (void)pruneCompletionDB;
- (void)saveRecentlyUsedAutoFillSetWithMatchesToFill:(id)fill matchesForDoNotFill:(id)notFill;
- (void)setInfo:(id)info forDomain:(id)domain;
- (void)setPreferredIdentifier:(id)identifier forProperty:(id)property withContact:(id)contact;
- (void)updateLastUsedUsernameAndExtractUsernameAndPasswordFromForm:(id)form shouldPreferAnnotatedCredentials:(BOOL)credentials atURL:(id)l username:(id *)username password:(id *)password inContext:(id)context;
@end

@implementation WBSFormDataController

+ (BOOL)convertNumber:(id)number toAutoFillFormType:(unint64_t *)type
{
  numberCopy = number;
  v6 = numberCopy;
  v7 = 0;
  if (numberCopy && type)
  {
    unsignedIntegerValue = [numberCopy unsignedIntegerValue];
    if (unsignedIntegerValue > 5)
    {
      v7 = 0;
    }

    else
    {
      *type = unsignedIntegerValue;
      v7 = 1;
    }
  }

  return v7;
}

+ (id)metadataForControlWithUniqueID:(id)d inForm:(id)form
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  controls = [form controls];
  v7 = [controls countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(controls);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uniqueID = [v10 uniqueID];
          v12 = [uniqueID isEqualToString:dCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [controls countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

+ (id)valueOfControlWithUniqueID:(id)d inForm:(id)form
{
  v4 = [self metadataForControlWithUniqueID:d inForm:form];
  value = [v4 value];

  return value;
}

- (int64_t)autoFillActionForFormType:(unint64_t)type onURL:(id)l shouldSubmitAfterFilling:(BOOL)filling
{
  fillingCopy = filling;
  lCopy = l;
  v9 = 0;
  if (type == 3 && fillingCopy)
  {
    v9 = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager isAutomaticLoginDisallowedOnURL:lCopy]^ 1;
  }

  return v9;
}

- (BOOL)shouldSubmitForm:(id)form withUser:(id)user password:(id)password onURL:(id)l
{
  formCopy = form;
  userCopy = user;
  lCopy = l;
  [(WBSFormDataController *)self _removeStaleEntriesFromMapOfHighLevelDomainToLastAutomaticFormSubmission];
  host = [lCopy host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  if (safari_highLevelDomainFromHost)
  {
    v15 = [(WBSFormDataController *)self _formKeyForMapOfHighLevelDomainToLastAutomaticFormSubmission:lCopy formMetadata:formCopy];
    v16 = [(NSMutableDictionary *)self->_mapOfHighLevelDomainToLastAutomaticFormSubmission objectForKeyedSubscript:v15];
    if (v16 && -[WBSFormDataController _dateIsWithinGracePeriodForNotAutomaticallySubmittingLoginForms:](self, "_dateIsWithinGracePeriodForNotAutomaticallySubmittingLoginForms:", v16) || [formCopy type] != 3)
    {
      goto LABEL_9;
    }

    v17 = [formCopy isEligibleForAutomaticLogin] ^ 1;
    if (!password)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
LABEL_9:
      v18 = 0;
    }

    else
    {
      v18 = [userCopy length] != 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)didAutomaticallySubmitFormWhenFillingOnURL:(id)l formMetadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  host = [lCopy host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  if (safari_highLevelDomainFromHost)
  {
    v9 = [(WBSFormDataController *)self _formKeyForMapOfHighLevelDomainToLastAutomaticFormSubmission:lCopy formMetadata:metadataCopy];
    date = [MEMORY[0x1E695DF00] date];
    [(NSMutableDictionary *)self->_mapOfHighLevelDomainToLastAutomaticFormSubmission setObject:date forKeyedSubscript:v9];
  }
}

- (id)_formKeyForMapOfHighLevelDomainToLastAutomaticFormSubmission:(id)submission formMetadata:(id)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  host = [submission host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  userNameElementUniqueID = [metadataCopy userNameElementUniqueID];
  passwordElementUniqueID = [metadataCopy passwordElementUniqueID];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  controls = [metadataCopy controls];
  isVisible2 = 0;
  isVisible = 0;
  v11 = [controls countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(controls);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        uniqueID = [v14 uniqueID];
        if ([userNameElementUniqueID length] && objc_msgSend(uniqueID, "isEqualToString:", userNameElementUniqueID))
        {
          isVisible = [v14 isVisible];
        }

        else if ([passwordElementUniqueID length] && objc_msgSend(uniqueID, "isEqualToString:", passwordElementUniqueID))
        {
          isVisible2 = [v14 isVisible];
        }
      }

      v11 = [controls countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = [userNameElementUniqueID length];
  v17 = [passwordElementUniqueID length];
  if ((v17 != 0) & isVisible2 | !((v16 != 0) & isVisible))
  {
    v18 = @"%@|U|P";
  }

  else
  {
    v18 = @"%@|U";
  }

  if (!((v17 != 0) & isVisible2) | (v16 != 0) & isVisible)
  {
    v19 = v18;
  }

  else
  {
    v19 = @"%@|P";
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, safari_highLevelDomainFromHost];

  return v20;
}

- (void)_removeStaleEntriesFromMapOfHighLevelDomainToLastAutomaticFormSubmission
{
  mapOfHighLevelDomainToLastAutomaticFormSubmission = self->_mapOfHighLevelDomainToLastAutomaticFormSubmission;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__WBSFormDataController__removeStaleEntriesFromMapOfHighLevelDomainToLastAutomaticFormSubmission__block_invoke;
  v7[3] = &unk_1E7FC5C90;
  v7[4] = self;
  v4 = [(NSMutableDictionary *)mapOfHighLevelDomainToLastAutomaticFormSubmission safari_mapAndFilterKeysAndObjectsUsingBlock:v7];
  v5 = [v4 mutableCopy];
  v6 = self->_mapOfHighLevelDomainToLastAutomaticFormSubmission;
  self->_mapOfHighLevelDomainToLastAutomaticFormSubmission = v5;
}

void *__97__WBSFormDataController__removeStaleEntriesFromMapOfHighLevelDomainToLastAutomaticFormSubmission__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) _dateIsWithinGracePeriodForNotAutomaticallySubmittingLoginForms:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)fieldToFocusBeforeSubmittingForm:(id)form
{
  formCopy = form;
  passwordElementUniqueID = [formCopy passwordElementUniqueID];
  v5 = passwordElementUniqueID;
  if (passwordElementUniqueID)
  {
    userNameElementUniqueID = passwordElementUniqueID;
  }

  else
  {
    userNameElementUniqueID = [formCopy userNameElementUniqueID];
  }

  v7 = userNameElementUniqueID;

  return v7;
}

- (WBSFormDataController)initWithAggressiveKeychainCaching:(BOOL)caching
{
  v24.receiver = self;
  v24.super_class = WBSFormDataController;
  v3 = [(WBSFormDataController *)&v24 init];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__currentLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"com.apple.Safari.%@.%p.internalQueue", v7, v3];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v9;

    v11 = objc_alloc(MEMORY[0x1E69C8820]);
    safari_safariCoreBundle = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
    v13 = [safari_safariCoreBundle URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    safari_autoFillQuirksDownloadDirectoryURL = [defaultManager safari_autoFillQuirksDownloadDirectoryURL];
    v16 = [v11 initWithBuiltInQuirksURL:v13 downloadsDirectoryURL:safari_autoFillQuirksDownloadDirectoryURL resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x1E69C8CF8] updateInterval:86400.0];
    autoFillQuirksManager = v3->_autoFillQuirksManager;
    v3->_autoFillQuirksManager = v16;

    [(WBSAutoFillQuirksManager *)v3->_autoFillQuirksManager beginLoadingQuirksFromDisk];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mapOfHighLevelDomainToLastAutomaticFormSubmission = v3->_mapOfHighLevelDomainToLastAutomaticFormSubmission;
    v3->_mapOfHighLevelDomainToLastAutomaticFormSubmission = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69C8818]);
    agentProxy = v3->_agentProxy;
    v3->_agentProxy = v20;

    v22 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(WBSKeychainCredentialNotificationMonitor *)self->_keychainMonitor removeObserverForToken:self->_keychainNotificationRegistrationToken];
  [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager prepareForTermination];
  if (self->_keybagCallbackToken)
  {
    mEMORY[0x1E69C88B0] = [MEMORY[0x1E69C88B0] sharedManager];
    [mEMORY[0x1E69C88B0] removeKeyBagLockStatusChangedObserver:self->_keybagCallbackToken];

    keybagCallbackToken = self->_keybagCallbackToken;
    self->_keybagCallbackToken = 0;
  }

  v5.receiver = self;
  v5.super_class = WBSFormDataController;
  [(WBSFormDataController *)&v5 dealloc];
}

- (void)_loadCompletionDBIfNeededOnInternalQueue
{
  p_completionDB = &self->_completionDB;
  if (!self->_completionDB)
  {
    completionDBPath = [(WBSFormDataController *)self completionDBPath];
    v5 = MEMORY[0x1E695DEF0];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:completionDBPath isDirectory:0];
    v7 = [v5 dataWithContentsOfURL:v6];

    if (v7)
    {
      self->_completionDBSize = [v7 length];
      v8 = [(WBSFormDataController *)self encryptOrDecryptData:v7 encrypt:0];
      if (v8)
      {
        v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:1 format:0 error:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(p_completionDB, v9);
        }

        v10 = [(NSMutableDictionary *)*p_completionDB safari_dictionaryForKey:@"Values"];
        valuesDB = self->_valuesDB;
        self->_valuesDB = v10;

        completionDB = self->_completionDB;
        if (self->_valuesDB)
        {
          v13 = [(NSMutableDictionary *)completionDB safari_dictionaryForKey:@"PreferredLabels"];
          preferredLabelsMap = self->_preferredLabelsMap;
          self->_preferredLabelsMap = v13;

          v15 = [(NSMutableDictionary *)self->_completionDB safari_arrayForKey:@"RecentlyUsedAutoFillSets"];
          recentlyUsedAutoFillSets = self->_recentlyUsedAutoFillSets;
          self->_recentlyUsedAutoFillSets = v15;

          v17 = [(NSMutableDictionary *)self->_completionDB safari_dictionaryForKey:@"PreferredLabelsForUniqueIDOfPerson"];
          preferredLabelForUniqueIDOfPersonMap = self->_preferredLabelForUniqueIDOfPersonMap;
          self->_preferredLabelForUniqueIDOfPersonMap = v17;

          [(WBSFormDataController *)self _dropValuesFromRecentlyUsedAutoFillSets];
        }

        else
        {
          self->_completionDB = 0;

          v19 = self->_preferredLabelsMap;
          self->_preferredLabelsMap = 0;

          v20 = self->_recentlyUsedAutoFillSets;
          self->_recentlyUsedAutoFillSets = 0;

          v21 = self->_preferredLabelForUniqueIDOfPersonMap;
          self->_preferredLabelForUniqueIDOfPersonMap = 0;
        }
      }
    }

    if (!*p_completionDB)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [defaultManager fileExistsAtPath:completionDBPath];

      if (v23)
      {
        v24 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [WBSFormDataController _loadCompletionDBIfNeededOnInternalQueue];
        }
      }

      v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v26 = *p_completionDB;
      *p_completionDB = v25;

      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v28 = self->_valuesDB;
      self->_valuesDB = v27;

      [(NSMutableDictionary *)self->_completionDB setObject:self->_valuesDB forKey:@"Values"];
      self->_completionDBSize = 0;
    }

    if (!self->_preferredLabelsMap)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v30 = self->_preferredLabelsMap;
      self->_preferredLabelsMap = v29;

      [(NSMutableDictionary *)self->_completionDB setObject:self->_preferredLabelsMap forKey:@"PreferredLabels"];
    }

    if (!self->_recentlyUsedAutoFillSets)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v32 = self->_recentlyUsedAutoFillSets;
      self->_recentlyUsedAutoFillSets = v31;

      [(NSMutableDictionary *)self->_completionDB setObject:self->_recentlyUsedAutoFillSets forKey:@"RecentlyUsedAutoFillSets"];
    }

    if (!self->_preferredLabelForUniqueIDOfPersonMap)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v34 = self->_preferredLabelForUniqueIDOfPersonMap;
      self->_preferredLabelForUniqueIDOfPersonMap = v33;

      [(NSMutableDictionary *)self->_completionDB setObject:self->_preferredLabelForUniqueIDOfPersonMap forKey:@"PreferredLabelsForUniqueIDOfPerson"];
    }
  }
}

- (void)loadCompletionDBIfNeeded
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSFormDataController_loadCompletionDBIfNeeded__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)pruneCompletionDB
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WBSFormDataController_pruneCompletionDB__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __42__WBSFormDataController_pruneCompletionDB__block_invoke(uint64_t a1)
{
  v1 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [*(v1 + 32) _domainsWithPreviousDataOnInternalQueue];
  v2 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v2)
  {
    v25 = v1;
    v26 = *v38;
    do
    {
      v27 = v2;
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v37 + 1) + 8 * i);
        v5 = [*(*(v1 + 32) + 32) safari_dictionaryForKey:v4];
        if ([v5 count])
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v6 = v5;
          v7 = [v6 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v7)
          {
            v8 = *v34;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v34 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v33 + 1) + 8 * j);
                v30 = 0;
                v31 = 0;
                v30 = v4;
                objc_storeStrong(&v31, v10);
                v11 = [v6 safari_arrayForKey:v10];
                v32 = timestampForCompletionValues(v11);

                if (HIDWORD(v42) == v42)
                {
                  WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SortEntry&>(&v41, &v30);
                }

                else
                {
                  v12 = v41 + 24 * HIDWORD(v42);
                  *v12 = v30;
                  *(v12 + 8) = v31;
                  *(v12 + 16) = v32;
                  ++HIDWORD(v42);
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v7);
          }
        }

        v1 = v25;
      }

      v2 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v2);
  }

  v13 = v1;

  v30 = &__block_literal_global_50;
  v14 = 126 - 2 * __clz(HIDWORD(v42));
  if (HIDWORD(v42))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(SortEntry const&,SortEntry const&),SortEntry*,false>(v41, (v41 + 24 * HIDWORD(v42)), &v30, v15, 1);

  LODWORD(v1) = vcvtps_s32_f32(HIDWORD(v42) * 0.1);
  if (v1 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 8;
    do
    {
      if (v16 >= HIDWORD(v42) || (v19 = *(v41 + v18 - 8), [*(*(v13 + 32) + 32) safari_dictionaryForKey:v19], v20 = objc_claimAutoreleasedReturnValue(), v16 >= HIDWORD(v42)))
      {
        __break(0xC471u);
        JUMPOUT(0x1BB7760C8);
      }

      v21 = v20;
      [v20 removeObjectForKey:*(v41 + v18)];
      if (![v21 count])
      {
        [*(*(v13 + 32) + 32) removeObjectForKey:v19];
        v17 = 1;
      }

      ++v16;
      v18 += 24;
    }

    while (v1 != v16);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WBSFormDataController_pruneCompletionDB__block_invoke_3;
  block[3] = &unk_1E7FB7A40;
  v29 = v17 & 1;
  block[4] = *(v13 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return WTF::Vector<SortEntry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v22);
}

uint64_t __42__WBSFormDataController_pruneCompletionDB__block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) domainsWithPreviousDataChanged];
  }

  return result;
}

- (id)_completionDB
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__WBSFormDataController__completionDB__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__WBSFormDataController__completionDB__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)allFormDataForSaving
{
  if (self->_completionDBSize > 0x7D000)
  {
    [(WBSFormDataController *)self pruneCompletionDB];
  }

  v3 = MEMORY[0x1E696AE40];
  _completionDB = [(WBSFormDataController *)self _completionDB];
  v11 = 0;
  v5 = [v3 dataWithPropertyList:_completionDB format:200 options:0 error:&v11];
  v6 = v11;

  if (v5)
  {
    data = [(WBSFormDataController *)self encryptOrDecryptData:v5 encrypt:1];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSFormDataController allFormDataForSaving];
    }

    data = [MEMORY[0x1E695DEF0] data];
  }

  v9 = data;

  return v9;
}

- (void)_dropValuesFromRecentlyUsedAutoFillSets
{
  v18 = *MEMORY[0x1E69E9840];
  recentlyUsedAutoFillSets = self->_recentlyUsedAutoFillSets;
  if (recentlyUsedAutoFillSets && [(NSMutableArray *)recentlyUsedAutoFillSets count])
  {
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_recentlyUsedAutoFillSets;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 objectForKeyedSubscript:@"recentlyUsedAutoFillSetArray"];
            [(WBSFormDataController *)self _processMatchesArray:v9 autoFillSetKey:@"recentlyUsedAutoFillSetArray" autoFillSet:v8 madeChanges:&v16];

            v10 = [v8 objectForKeyedSubscript:@"recentlyUsedAutoFillSetDoNotFillArray"];
            [(WBSFormDataController *)self _processMatchesArray:v10 autoFillSetKey:@"recentlyUsedAutoFillSetDoNotFillArray" autoFillSet:v8 madeChanges:&v16];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v5);
    }

    if (v16 == 1)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__WBSFormDataController__dropValuesFromRecentlyUsedAutoFillSets__block_invoke;
      block[3] = &unk_1E7FB6F80;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_processMatchesArray:(id)array autoFillSetKey:(id)key autoFillSet:(id)set madeChanges:(BOOL *)changes
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [arrayCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = arrayCopy;
    v15 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 objectForKeyedSubscript:@"Value"];
            v14 = v13 == 0;

            if (!v14)
            {
              *changes = 1;
              [v12 removeObjectForKey:@"Value"];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    arrayCopy = v15;
  }
}

- (id)_domainsWithPreviousDataOnInternalQueue
{
  allKeys = [(NSMutableDictionary *)self->_valuesDB count];
  if (allKeys)
  {
    allKeys = [(NSMutableDictionary *)self->_valuesDB allKeys];
  }

  return allKeys;
}

- (id)domainsWithPreviousData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__WBSFormDataController_domainsWithPreviousData__block_invoke;
  v5[3] = &unk_1E7FB87C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__WBSFormDataController_domainsWithPreviousData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v2 = [*(a1 + 32) _domainsWithPreviousDataOnInternalQueue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)clearPreviousDataForDomain:(id)domain
{
  domainCopy = domain;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WBSFormDataController_clearPreviousDataForDomain___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = domainCopy;
  v6 = domainCopy;
  dispatch_async(internalQueue, v7);
}

void __52__WBSFormDataController_clearPreviousDataForDomain___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__WBSFormDataController_clearPreviousDataForDomain___block_invoke_2;
    block[3] = &unk_1E7FB6F80;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __52__WBSFormDataController_clearPreviousDataForDomain___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) domainsWithPreviousDataChanged];
  v2 = *(a1 + 32);

  return [v2 saveCompletionDBSoon];
}

- (void)clearPreviousDataDatabaseItemsAddedAfterDate:(id)date
{
  dateCopy = date;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSFormDataController_clearPreviousDataDatabaseItemsAddedAfterDate___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(internalQueue, v7);
}

void __70__WBSFormDataController_clearPreviousDataDatabaseItemsAddedAfterDate___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [*(a1 + 32) _domainsWithPreviousDataOnInternalQueue];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v17 = 0;
    v13 = *v25;
    v14 = v2;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v3 = [*(*(a1 + 32) + 32) safari_dictionaryForKey:?];
        if ([v3 count])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v4 = [v3 allKeys];
          v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v5)
          {
            v6 = *v21;
            do
            {
              for (j = 0; j != v5; ++j)
              {
                if (*v21 != v6)
                {
                  objc_enumerationMutation(v4);
                }

                v8 = *(*(&v20 + 1) + 8 * j);
                v9 = [v3 safari_arrayForKey:v8];
                v10 = timestampForCompletionValues(v9);

                v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
                if ([v11 compare:*(a1 + 40)] == 1)
                {
                  [v3 removeObjectForKey:v8];
                  v17 = 1;
                }
              }

              v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v5);
          }

          if (![v3 count])
          {
            [*(*(a1 + 32) + 32) removeObjectForKey:v15];
          }
        }

        else
        {
          [*(*(a1 + 32) + 32) removeObjectForKey:v15];
          v17 = 1;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v14);
  }

  else
  {
    v17 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSFormDataController_clearPreviousDataDatabaseItemsAddedAfterDate___block_invoke_2;
  block[3] = &unk_1E7FB7A40;
  v19 = v17 & 1;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__WBSFormDataController_clearPreviousDataDatabaseItemsAddedAfterDate___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    [*(result + 32) saveCompletionDBSoon];
    v3 = *(v2 + 32);

    return [v3 domainsWithPreviousDataChanged];
  }

  return result;
}

- (id)infoForDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WBSFormDataController_infoForDomain___block_invoke;
  block[3] = &unk_1E7FC5CD8;
  v10 = domainCopy;
  v11 = &v12;
  block[4] = self;
  v6 = domainCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__WBSFormDataController_infoForDomain___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v2 = [*(*(a1 + 32) + 32) safari_dictionaryForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setInfo:(id)info forDomain:(id)domain
{
  infoCopy = info;
  domainCopy = domain;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__WBSFormDataController_setInfo_forDomain___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = infoCopy;
  v13 = domainCopy;
  v9 = domainCopy;
  v10 = infoCopy;
  dispatch_async(internalQueue, block);
}

- (id)uniqueIDOfContact:(id)contact
{
  identifier = [contact identifier];

  return identifier;
}

- (void)setPreferredIdentifier:(id)identifier forProperty:(id)property withContact:(id)contact
{
  identifierCopy = identifier;
  propertyCopy = property;
  contactCopy = contact;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__WBSFormDataController_setPreferredIdentifier_forProperty_withContact___block_invoke;
  v15[3] = &unk_1E7FC5D00;
  v15[4] = self;
  v16 = contactCopy;
  v17 = identifierCopy;
  v18 = propertyCopy;
  v12 = propertyCopy;
  v13 = identifierCopy;
  v14 = contactCopy;
  dispatch_async(internalQueue, v15);
}

void __72__WBSFormDataController_setPreferredIdentifier_forProperty_withContact___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v5 = [*(a1 + 32) uniqueIDOfContact:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];
  v3 = v2;
  if (v2)
  {
    [v2 setObject:*(a1 + 48) forKey:*(a1 + 56)];
  }

  else
  {
    v4 = objc_opt_new();
    [v4 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 56)];
    v3 = v4;
    [*(*(a1 + 32) + 72) setObject:v4 forKey:v5];
  }
}

- (id)preferredIdentifierForProperty:(id)property withContact:(id)contact
{
  propertyCopy = property;
  contactCopy = contact;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__WBSFormDataController_preferredIdentifierForProperty_withContact___block_invoke;
  v13[3] = &unk_1E7FC5D28;
  v13[4] = self;
  v14 = contactCopy;
  v15 = propertyCopy;
  v16 = &v17;
  v9 = propertyCopy;
  v10 = contactCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __68__WBSFormDataController_preferredIdentifierForProperty_withContact___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v2 = *(a1 + 32);
  v3 = v2[9];
  v4 = [v2 uniqueIDOfContact:*(a1 + 40)];
  v8 = [v3 safari_dictionaryForKey:v4];

  v5 = [v8 safari_stringForKey:*(a1 + 48)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)preferredIdentifierExistsForProperty:(id)property withContact:(id)contact
{
  propertyCopy = property;
  contactCopy = contact;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__WBSFormDataController_preferredIdentifierExistsForProperty_withContact___block_invoke;
  v12[3] = &unk_1E7FC5D28;
  v12[4] = self;
  v13 = contactCopy;
  v14 = propertyCopy;
  v15 = &v16;
  v9 = propertyCopy;
  v10 = contactCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(propertyCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return propertyCopy;
}

void __74__WBSFormDataController_preferredIdentifierExistsForProperty_withContact___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadCompletionDBIfNeededOnInternalQueue];
  v2 = *(a1 + 32);
  v3 = v2[9];
  v4 = [v2 uniqueIDOfContact:*(a1 + 40)];
  v6 = [v3 safari_dictionaryForKey:v4];

  v5 = [v6 allKeys];
  *(*(*(a1 + 56) + 8) + 24) = [v5 containsObject:*(a1 + 48)];
}

- (id)_recentlyUsedAutoFillDictionaries
{
  [(WBSFormDataController *)self loadCompletionDBIfNeeded];
  v3 = [(NSMutableArray *)self->_recentlyUsedAutoFillSets copy];

  return v3;
}

- (void)addRecentlyUsedAutoFillSet:(id)set appendToTheEnd:(BOOL)end
{
  endCopy = end;
  setCopy = set;
  [(WBSFormDataController *)self loadCompletionDBIfNeeded];
  recentlyUsedAutoFillSets = self->_recentlyUsedAutoFillSets;
  if (endCopy)
  {
    [(NSMutableArray *)recentlyUsedAutoFillSets addObject:setCopy];
    if ([(NSMutableArray *)self->_recentlyUsedAutoFillSets count]>= 2)
    {
      [(NSMutableArray *)self->_recentlyUsedAutoFillSets removeObjectAtIndex:0];
    }
  }

  else
  {
    [(NSMutableArray *)recentlyUsedAutoFillSets insertObject:setCopy atIndex:0];
    if ([(NSMutableArray *)self->_recentlyUsedAutoFillSets count]>= 2)
    {
      [(NSMutableArray *)self->_recentlyUsedAutoFillSets removeLastObject];
    }

    [(WBSFormDataController *)self saveCompletionDBSoon];
  }
}

- (id)recentlyUsedAutoFillSetsForContact:(id)contact
{
  v43 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(WBSFormDataController *)self _recentlyUsedAutoFillDictionaries];
  v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v23)
  {
    v21 = *v37;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * i);
        v25 = [v5 objectForKeyedSubscript:@"recentlyUsedAutoFillSetArray"];
        v24 = [v5 objectForKeyedSubscript:@"recentlyUsedAutoFillSetDoNotFillArray"];
        v26 = [v5 objectForKeyedSubscript:@"recentlyUsedAutoFillSetLabel"];
        array2 = [MEMORY[0x1E695DF70] array];
        array3 = [MEMORY[0x1E695DF70] array];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v8 = v25;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v9)
        {
          v10 = *v33;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v33 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [WBSAddressBookMatch addressBookMatchWithContactDictionaryRepresentation:*(*(&v32 + 1) + 8 * j) forContact:contactCopy];
              if (!v12)
              {
                [array2 removeAllObjects];
                goto LABEL_16;
              }

              [array2 addObject:v12];
            }

            v9 = [v8 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v24;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v14)
        {
          v15 = *v29;
          while (2)
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = [WBSAddressBookMatch addressBookMatchWithContactDictionaryRepresentation:*(*(&v28 + 1) + 8 * k) forContact:contactCopy];
              if (!v17)
              {
                [array3 removeAllObjects];
                goto LABEL_26;
              }

              [array3 addObject:v17];
            }

            v14 = [v13 countByEnumeratingWithState:&v28 objects:v40 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        v18 = [[WBSRecentlyUsedAutoFillSet alloc] initWithFillMatches:array2 skipMatches:array3 label:v26];
        [array addObject:v18];
      }

      v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v23);
  }

  return array;
}

+ (BOOL)formContainsCreditCardData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  controls = [data controls];
  v5 = [controls countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(controls);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        value = [v8 value];
        if ([value length])
        {
          classification = [v8 classification];
          if (WBSIsEqual() & 1) != 0 || (WBSIsEqual() & 1) != 0 || ([self stringLooksLikeCreditCardNumber:value])
          {

            v11 = 1;
            goto LABEL_16;
          }
        }
      }

      v5 = [controls countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  return v11;
}

+ (BOOL)formContainsCreditCardNumberField:(id)field
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  controls = [field controls];
  v4 = [controls countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(controls);
        }

        classification = [*(*(&v11 + 1) + 8 * i) classification];
        v8 = WBSIsEqual();

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [controls countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)addPreviousDataMatchesForFieldWithName:(id)name inDomain:(id)domain matchingPartialString:(id)string toArray:(id)array
{
  nameCopy = name;
  domainCopy = domain;
  stringCopy = string;
  arrayCopy = array;
  if ([nameCopy length] && objc_msgSend(domainCopy, "length"))
  {
    [(WBSFormDataController *)self loadCompletionDBIfNeeded];
    v13 = [(WBSFormDataController *)self infoForDomain:domainCopy];
    v14 = [v13 safari_arrayForKey:nameCopy];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 count];
      if (v16 - 2 >= 0)
      {
        v17 = v16 - 1;
        do
        {
          v18 = [v15 safari_stringAtIndex:--v17];
          if (v18 && !+[WBSFormDataController stringLooksLikeCreditCardNumber:](WBSFormDataController, "stringLooksLikeCreditCardNumber:", v18) && (([v18 safari_hasLocalizedCaseInsensitivePrefix:stringCopy] & 1) != 0 || !objc_msgSend(stringCopy, "length")))
          {
            v19 = [[WBSUserTypedFormString alloc] initWithUserTypedString:v18];
            [arrayCopy insertObject:v19 atIndex:0];
          }
        }

        while (v17 > 0);
      }
    }
  }
}

- (id)addressBookMatchesForProperty:(id)property key:(id)key label:(id)label
{
  v5 = [(WBSFormDataController *)self addressBookMatchesForProperty:property key:key label:label partialString:0 contact:0 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:1];

  return v5;
}

- (void)addABMatchesForValueSpecifier:(id)specifier matchingPartialString:(id)string toArray:(id)array preferredLabel:(id)label contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v88 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  stringCopy = string;
  arrayCopy = array;
  labelCopy = label;
  contactCopy = contact;
  v64 = specifierCopy;
  property = [specifierCopy property];
  v16 = [property length];

  if (!v16)
  {
    goto LABEL_58;
  }

  label = [v64 label];
  v18 = [label length];

  if (v18)
  {

    labelCopy = 0;
  }

  property2 = [v64 property];
  component = [v64 component];
  label2 = [v64 label];
  v22 = [(WBSFormDataController *)self addressBookMatchesForProperty:property2 key:component label:label2 partialString:stringCopy contact:contactCopy allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:identifierCopy];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v22;
  v23 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v23)
  {
    v24 = *v78;
    v62 = *MEMORY[0x1E69C8AB8];
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v78 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v77 + 1) + 8 * i);
        stringValue = [v26 stringValue];
        if (![stringCopy length] || (objc_msgSend(stringValue, "safari_hasLocalizedCaseInsensitivePrefix:", stringCopy) & 1) != 0)
        {
LABEL_22:
          if ([labelCopy length])
          {
            label3 = [v26 label];
            if ([label3 length])
            {
              label4 = [v26 label];
              v37 = [label4 isEqualToString:labelCopy];

              if ((v37 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
            }
          }

          stringValue2 = [v26 stringValue];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = ___ZL17findLiteralStringP7NSArrayP8NSString_block_invoke;
          v81[3] = &unk_1E7FC5F18;
          v82 = stringValue2;
          v39 = stringValue2;
          v40 = [arrayCopy indexOfObjectPassingTest:v81];

          if (v40 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [arrayCopy addObject:v26];
          }

          else
          {
            [arrayCopy replaceObjectAtIndex:v40 withObject:v26];
          }
        }

        else
        {
          property3 = [v64 property];
          v29 = [property3 isEqualToString:v62];

          if (v29)
          {
            v30 = [(WBSFormDataController *)self _singleFieldPhoneNumberCandidates:stringValue];
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v31 = v30;
            v32 = [v31 countByEnumeratingWithState:&v73 objects:v86 count:16];
            if (v32)
            {
              v33 = *v74;
              while (2)
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v74 != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  if ([*(*(&v73 + 1) + 8 * j) safari_hasLocalizedCaseInsensitivePrefix:stringCopy])
                  {

                    goto LABEL_22;
                  }
                }

                v32 = [v31 countByEnumeratingWithState:&v73 objects:v86 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

LABEL_30:
      }

      v23 = [obj countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v23);
  }

  v84[0] = @"_$!<Mobile>!$_";
  v84[1] = @"iPhone";
  v85[0] = &unk_1F3A9AD30;
  v85[1] = &unk_1F3A9AD48;
  v84[2] = @"_$!<Home>!$_";
  v84[3] = @"_$!<Work>!$_";
  v85[2] = &unk_1F3A9AD60;
  v85[3] = &unk_1F3A9AD78;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:4];
  if ([arrayCopy count])
  {
    goto LABEL_57;
  }

  property4 = [v64 property];
  stringValue3 = [property4 isEqualToString:*MEMORY[0x1E69C8AB8]];

  if ((stringValue3 & 1) == 0)
  {
    goto LABEL_57;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v59 = obj;
  v43 = [v59 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (!v43)
  {

    goto LABEL_55;
  }

  v66 = 0;
  v61 = *v70;
  do
  {
    v44 = v43;
    for (k = 0; k != v44; ++k)
    {
      if (*v70 != v61)
      {
        objc_enumerationMutation(v59);
      }

      v46 = *(*(&v69 + 1) + 8 * k);
      v47 = [stringCopy length];
      if (v47)
      {
        stringValue3 = [v46 stringValue];
        if (![stringValue3 safari_hasLocalizedCaseInsensitivePrefix:stringCopy])
        {
          v50 = stringValue3;
LABEL_49:

          continue;
        }
      }

      label5 = [v46 label];
      v49 = [v63 objectForKeyedSubscript:label5];

      if (v47)
      {

        if (!v49)
        {
          continue;
        }
      }

      else if (!v49)
      {
        continue;
      }

      if (v66)
      {
        label6 = [v46 label];
        v52 = [v63 objectForKeyedSubscript:label6];
        integerValue = [v52 integerValue];
        label7 = [v66 label];
        v55 = [v63 objectForKeyedSubscript:label7];
        LODWORD(integerValue) = integerValue < [v55 integerValue];

        if (!integerValue)
        {
          continue;
        }
      }

      v56 = v46;
      v50 = v66;
      v66 = v56;
      goto LABEL_49;
    }

    v43 = [v59 countByEnumeratingWithState:&v69 objects:v83 count:16];
  }

  while (v43);

  if (v66)
  {
    [arrayCopy addObject:?];
    v57 = v66;
    goto LABEL_56;
  }

LABEL_55:
  v57 = 0;
LABEL_56:

LABEL_57:
LABEL_58:
}

+ (id)allAddressBookAddressComponentKeys
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"City";
  v4[1] = @"State";
  v4[2] = @"Street";
  v4[3] = @"ZIP";
  v4[4] = @"Country";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)allAddressBookNonAddressPropertyKeys
{
  v8[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69C8AC8];
  v8[0] = *MEMORY[0x1E69C8AC0];
  v8[1] = v2;
  v3 = *MEMORY[0x1E69C8AA0];
  v8[2] = *MEMORY[0x1E69C8AD8];
  v8[3] = v3;
  v4 = *MEMORY[0x1E69C8AA8];
  v8[4] = *MEMORY[0x1E69C8AB8];
  v8[5] = v4;
  v5 = *MEMORY[0x1E69C8A98];
  v8[6] = *MEMORY[0x1E69C8AB0];
  v8[7] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:8];

  return v6;
}

+ (id)specifierForAddressBookLabel:(id)label
{
  v3 = [WBSFormToABBinder specifierForLabel:label];

  return v3;
}

+ (id)allSynonymsForMatch:(id)match
{
  matchCopy = match;
  stringValue = [matchCopy stringValue];
  v5 = [WBSFormToABBinder allSynonymsForMatch:matchCopy formAppearsToBeChinese:languageOfTextIsChinese(stringValue)];

  return v5;
}

+ (BOOL)formContainsDateFields:(id)fields matchingAddressBookMatch:(id)match
{
  fieldsCopy = fields;
  matchCopy = match;
  controls = [fieldsCopy controls];
  if (controls && ([matchCopy dateValue], v8 = objc_claimAutoreleasedReturnValue(), v8, controls, v8))
  {
    controls2 = [fieldsCopy controls];
    v22 = 0;
    v23 = 0;
    v21 = 0;
    identifyDateFields(controls2, &v23, &v22, &v21);
    v10 = v23;
    v11 = v22;
    v12 = v21;

    dateValue = [matchCopy dateValue];
    value = [v10 value];
    v15 = stringContainsDateComponentValue(value, 0, dateValue);

    if (v15 & 1) != 0 && ([v11 value], v16 = objc_claimAutoreleasedReturnValue(), v17 = stringContainsDateComponentValue(v16, 1, dateValue), v16, (v17))
    {
      value2 = [v12 value];
      v19 = stringContainsDateComponentValue(value2, 2, dateValue);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_currentLocaleDidChange:(id)change
{
  cachedBirthdayAndLocalizedStrings = self->_cachedBirthdayAndLocalizedStrings;
  self->_cachedBirthdayAndLocalizedStrings = 0;
}

- (id)_cachedLocalizedStringsForBirthdate:(id)birthdate
{
  birthdateCopy = birthdate;
  if (birthdateCopy)
  {
    cachedBirthdayAndLocalizedStrings = self->_cachedBirthdayAndLocalizedStrings;
    v16 = 0;
    v17 = 0;
    [(WBSPair *)cachedBirthdayAndLocalizedStrings getFirst:&v17 second:&v16];
    v6 = v17;
    v7 = v16;
    if ([v6 isEqualToDate:birthdateCopy])
    {
      v8 = v7;
    }

    else
    {
      safari_localeIdentifiersForMostWidelyUsedLanguages = [MEMORY[0x1E695DF58] safari_localeIdentifiersForMostWidelyUsedLanguages];
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];
      v12 = [safari_localeIdentifiersForMostWidelyUsedLanguages setByAddingObject:localeIdentifier];

      v8 = [birthdateCopy safari_stringsFromDateForLocaleIdentifiers:v12];
      v13 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:birthdateCopy second:v8];
      v14 = self->_cachedBirthdayAndLocalizedStrings;
      self->_cachedBirthdayAndLocalizedStrings = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bestAddressBookLabelForFormMetadata:(id)metadata formControlValue:(id)value
{
  v60 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  valueCopy = value;
  if (!valueCopy)
  {
    lowercaseString = 0;
    goto LABEL_50;
  }

  addressBookAddressPropertyKey = [objc_opt_class() addressBookAddressPropertyKey];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [objc_opt_class() allAddressBookAddressComponentKeys];
  v28 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (!v28)
  {
    goto LABEL_19;
  }

  v33 = *v53;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v53 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v52 + 1) + 8 * i);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v30 = v7;
      v39 = [WBSFormDataController addressBookMatchesForProperty:"addressBookMatchesForProperty:key:label:" key:addressBookAddressPropertyKey label:?];
      v8 = [v39 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (!v8)
      {
        goto LABEL_17;
      }

      v9 = *v49;
      while (2)
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(v39);
          }

          v11 = *(*(&v48 + 1) + 8 * j);
          stringValue = [v11 stringValue];
          v13 = stringValue;
          if (stringValue && ![stringValue caseInsensitiveCompare:valueCopy])
          {
            lowercaseString = [v30 lowercaseString];
LABEL_48:

            goto LABEL_49;
          }

          v14 = [objc_opt_class() allSynonymsForMatch:v11];
          dateValue = [v14 safari_setByApplyingBlock:&__block_literal_global_195];

          lowercaseString2 = [valueCopy lowercaseString];
          v17 = [lowercaseString2 stringByReplacingOccurrencesOfString:@"." withString:&stru_1F3A5E418];
          v18 = [dateValue containsObject:v17];

          if (v18)
          {
            lowercaseString = [v30 lowercaseString];
LABEL_47:

            goto LABEL_48;
          }
        }

        v8 = [v39 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_17:
    }

    v28 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  }

  while (v28);
LABEL_19:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [objc_opt_class() allAddressBookNonAddressPropertyKeys];
  v27 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v27)
  {
    v29 = *v45;
    v37 = *MEMORY[0x1E69C8A98];
    lowercaseString = &stru_1F3A5E418;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * k);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v39 = [(WBSFormDataController *)self addressBookMatchesForProperty:v19 key:0 label:0];
        v20 = [v39 countByEnumeratingWithState:&v40 objects:v56 count:16];
        if (v20)
        {
          v21 = *v41;
          while (2)
          {
            for (m = 0; m != v20; ++m)
            {
              if (*v41 != v21)
              {
                objc_enumerationMutation(v39);
              }

              v23 = *(*(&v40 + 1) + 8 * m);
              stringValue2 = [v23 stringValue];
              v13 = stringValue2;
              if (stringValue2 && ![stringValue2 caseInsensitiveCompare:valueCopy])
              {
                lowercaseString = [v19 lowercaseString];
                goto LABEL_48;
              }

              dateValue = [v23 dateValue];
              if (dateValue && [v19 isEqualToString:v37])
              {
                v25 = [(WBSFormDataController *)self _cachedLocalizedStringsForBirthdate:dateValue];
                if ([v25 containsObject:valueCopy] || (objc_msgSend(objc_opt_class(), "formContainsDateFields:matchingAddressBookMatch:", metadataCopy, v23) & 1) != 0)
                {
                  lowercaseString = [v19 lowercaseString];

                  goto LABEL_47;
                }
              }
            }

            v20 = [v39 countByEnumeratingWithState:&v40 objects:v56 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v27);
  }

  else
  {
    lowercaseString = &stru_1F3A5E418;
  }

LABEL_49:

LABEL_50:

  return lowercaseString;
}

id __78__WBSFormDataController_bestAddressBookLabelForFormMetadata_formControlValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lowercaseString];

  return v2;
}

- (BOOL)addressBookHasDataForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy length])
  {
    v5 = objc_opt_class();
    lowercaseString = [labelCopy lowercaseString];
    v7 = [v5 specifierForAddressBookLabel:lowercaseString];

    if (v7)
    {
      property = [v7 property];
      component = [v7 component];
      label = [v7 label];
      v11 = [(WBSFormDataController *)self addressBookMatchesForProperty:property key:component label:label];

      v12 = [v11 count] != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)shouldDisplayOneTimeCodeForControl:(id)control inForm:(id)form
{
  controlCopy = control;
  formCopy = form;
  value = [controlCopy value];
  v8 = [value length];

  if (!v8)
  {
    if ([controlCopy looksLikeOneTimeCodeField])
    {
      v9 = 1;
      goto LABEL_14;
    }

    uniqueID = [controlCopy uniqueID];
    userNameElementUniqueID = [formCopy userNameElementUniqueID];
    v12 = [uniqueID isEqualToString:userNameElementUniqueID];

    if (v12)
    {
      goto LABEL_6;
    }

    passwordElementUniqueID = [formCopy passwordElementUniqueID];
    if ([uniqueID isEqualToString:passwordElementUniqueID])
    {
      v9 = 0;
    }

    else
    {
      oldPasswordElementUniqueID = [formCopy oldPasswordElementUniqueID];
      if ([uniqueID isEqualToString:oldPasswordElementUniqueID])
      {
        goto LABEL_10;
      }

      confirmPasswordElementUniqueID = [formCopy confirmPasswordElementUniqueID];
      v17 = [uniqueID isEqualToString:confirmPasswordElementUniqueID];

      if (v17)
      {
LABEL_6:
        v9 = 0;
LABEL_13:

        goto LABEL_14;
      }

      passwordElementUniqueID = [WBSFormDataController specifierForControl:controlCopy];
      property = [passwordElementUniqueID property];
      v19 = [property isEqualToString:*MEMORY[0x1E69C8AB8]];

      if (v19)
      {
        v9 = 1;
        goto LABEL_12;
      }

      oldPasswordElementUniqueID = [passwordElementUniqueID property];
      if (![oldPasswordElementUniqueID isEqualToString:*MEMORY[0x1E69C8A90]])
      {
LABEL_10:
        v9 = 0;
      }

      else
      {
        component = [passwordElementUniqueID component];
        v9 = [component isEqualToString:@"ZIP"];
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

+ (BOOL)shouldDisplayHideMyEmailForControl:(id)control
{
  controlCopy = control;
  value = [controlCopy value];
  v5 = [value length];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [WBSFormDataController specifierForControl:controlCopy];
    property = [v7 property];
    v6 = [property isEqualToString:*MEMORY[0x1E69C8AA0]];
  }

  return v6;
}

+ (id)specifierForControl:(id)control
{
  controlCopy = control;
  classification = [controlCopy classification];
  classificationHints = [controlCopy classificationHints];
  orderedParts = [controlCopy orderedParts];
  v7 = [WBSFormToABBinder specifierForClassification:classification hints:classificationHints orderedParts:orderedParts];

  return v7;
}

+ (id)stringWithAddressBookValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = valueCopy;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [valueCopy objectForKey:keyCopy];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)matchesForControl:(id)control atURL:(id)l matchingPartialString:(id)string autoFillDataType:(unint64_t)type allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  controlCopy = control;
  stringCopy = string;
  v14 = [WBSFormDataController domainFromURL:l];
  LOBYTE(v17) = identifier;
  v15 = [(WBSFormDataController *)self _matchesForControl:controlCopy inDomain:v14 matchingPartialString:stringCopy autoFillDataType:type preferredLabel:0 contact:0 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v17];

  return v15;
}

- (id)matchesForControl:(id)control atURL:(id)l matchingPartialString:(id)string autoFillDataType:(unint64_t)type contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  controlCopy = control;
  stringCopy = string;
  contactCopy = contact;
  v17 = [WBSFormDataController domainFromURL:l];
  LOBYTE(v20) = identifier;
  v18 = [(WBSFormDataController *)self _matchesForControl:controlCopy inDomain:v17 matchingPartialString:stringCopy autoFillDataType:type preferredLabel:0 contact:contactCopy allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v20];

  return v18;
}

- (id)_matchesForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  LOBYTE(v10) = identifier;
  v8 = [(WBSFormDataController *)self _matchesForControl:control inDomain:domain matchingPartialString:string autoFillDataType:type preferredLabel:label contact:0 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v10];

  return v8;
}

- (id)_matchesForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  typeCopy = type;
  controlCopy = control;
  domainCopy = domain;
  stringCopy = string;
  labelCopy = label;
  contactCopy = contact;
  classification = [controlCopy classification];
  if (WBSIsEqual() & 1) != 0 || (WBSIsEqual())
  {
    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    fieldName = [controlCopy fieldName];
    v22 = ![(WBSFormDataController *)self shouldAutoFillFromPreviousData];
    if ((typeCopy & 8) == 0)
    {
      LOBYTE(v22) = 1;
    }

    if ((v22 & 1) == 0)
    {
      [(WBSFormDataController *)self addPreviousDataMatchesForFieldWithName:fieldName inDomain:domainCopy matchingPartialString:stringCopy toArray:array];
    }

    v23 = ![(WBSFormDataController *)self shouldAutoFillFromAddressBook];
    if ((typeCopy & 2) == 0)
    {
      LOBYTE(v23) = 1;
    }

    if ((v23 & 1) == 0)
    {
      v24 = [objc_opt_class() specifierForControl:controlCopy];
      if (v24)
      {
        v36 = v24;
        property = [v24 property];
        v26 = [property isEqualToString:*MEMORY[0x1E69C8AA0]];

        if (v26 & 1 | (([controlCopy isLabeledUsernameField] & 1) == 0))
        {
          if (v26)
          {
            v27 = [domainCopy safari_substringFromPrefix:@"."];
            v28 = v27;
            if (!v27)
            {
              v27 = domainCopy;
            }

            safari_bestURLForUserTypedString = [v27 safari_bestURLForUserTypedString];

            v34 = [objc_alloc(MEMORY[0x1E69C8A58]) initWithString:stringCopy matchingType:0];
            v32 = objc_alloc(MEMORY[0x1E69C8A30]);
            autoFillQuirksManager = [(WBSFormDataController *)self autoFillQuirksManager];
            associatedDomainsManager = [autoFillQuirksManager associatedDomainsManager];
            v33 = [v32 initWithURL:safari_bestURLForUserTypedString options:35 userNameQuery:v34 associatedDomainsManager:associatedDomainsManager webFrameIdentifier:0];

            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __179__WBSFormDataController__matchesForControl_inDomain_matchingPartialString_autoFillDataType_preferredLabel_contact_allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier___block_invoke;
            v38[3] = &unk_1E7FC5D70;
            v39 = array;
            [(WBSFormDataController *)self getSavedAccountMatchesWithCriteria:v33 synchronously:1 completionHandler:v38];
          }

          [(WBSFormDataController *)self addABMatchesForValueSpecifier:v36 matchingPartialString:stringCopy toArray:array preferredLabel:labelCopy contact:contactCopy allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:identifier];
          v24 = v36;
        }

        else
        {

          v24 = array;
          array = 0;
        }
      }
    }
  }

  return array;
}

void __179__WBSFormDataController__matchesForControl_inDomain_matchingPartialString_autoFillDataType_preferredLabel_contact_allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 matchesForPasswordAutoFill];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    v6 = *MEMORY[0x1E69C8AA0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 user];
        if ([v9 safari_looksLikeEmailAddress])
        {
          v10 = [v8 savedAccount];
          v11 = [v10 credentialTypes];

          if ((v11 - 2) < 2 || v11 == 1)
          {
            v12 = _WBSLocalizedString();
          }

          else
          {
            v12 = 0;
          }

          v13 = *(a1 + 32);
          v14 = [[WBSAddressBookMatch alloc] initWithValue:v9 property:v6 key:0 identifier:0 label:v12];
          [v13 addObject:v14];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

- (id)cascadingAddressMatchesForMatch:(id)match contact:(id)contact
{
  v21[1] = *MEMORY[0x1E69E9840];
  matchCopy = match;
  contactCopy = contact;
  v8 = [matchCopy key];
  v9 = [v8 isEqualToString:@"City"];

  if (v9 & 1) != 0 || ([matchCopy key], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"Street"), v10, (v11))
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithObject:matchCopy];
    label = [matchCopy label];
    [(WBSFormDataController *)self addAllAddressDataIfNecessary:v12 contactLabel:label contact:contactCopy];

    identifier = [matchCopy identifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__WBSFormDataController_cascadingAddressMatchesForMatch_contact___block_invoke;
    v18[3] = &unk_1E7FC5D98;
    v19 = identifier;
    v20 = v9;
    v15 = identifier;
    v16 = [v12 safari_filterObjectsUsingBlock:v18];
  }

  else
  {
    v21[0] = matchCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  return v16;
}

uint64_t __65__WBSFormDataController_cascadingAddressMatchesForMatch_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    if (*(a1 + 40) == 1)
    {
      v6 = [v3 key];
      if ([v6 isEqualToString:@"City"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"State") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ZIP"))
      {
        v7 = 1;
      }

      else
      {
        v7 = [v6 isEqualToString:@"Country"];
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)bestMatchForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  LOBYTE(v10) = identifier;
  v8 = [(WBSFormDataController *)self bestMatchForControl:control inDomain:domain matchingPartialString:string autoFillDataType:type preferredLabel:label contact:0 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v10];

  return v8;
}

- (id)bestMatchForControl:(id)control inDomain:(id)domain matchingPartialString:(id)string autoFillDataType:(unint64_t)type preferredLabel:(id)label contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)identifier
{
  LOBYTE(v12) = identifier;
  v9 = [(WBSFormDataController *)self _matchesForControl:control inDomain:domain matchingPartialString:string autoFillDataType:type preferredLabel:label contact:contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v12];
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)continuingFieldsInFormControls:(id)controls startingAtIndex:(unint64_t)index
{
  controlsCopy = controls;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v7 = [controlsCopy objectAtIndexedSubscript:index];
  [v6 addObject:v7];
  if ([v7 continuationID])
  {
    while (++index < [controlsCopy count])
    {
      v8 = [controlsCopy objectAtIndexedSubscript:index];
      continuationID = [v8 continuationID];
      if (continuationID != [v7 continuationID])
      {

        break;
      }

      [v6 addObject:v8];
    }
  }

  return v6;
}

+ (BOOL)canAutocompleteTextField:(id)field inForm:(id)form
{
  fieldCopy = field;
  formCopy = form;
  if ([fieldCopy isSecureTextField])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    type = [formCopy type];
    LOBYTE(v7) = 0;
    if (type <= 5 && ((1 << type) & 0x3A) != 0)
    {
      v7 = [fieldCopy disallowsAutocomplete] ^ 1;
    }
  }

  return v7;
}

+ (int64_t)availableManualAutoFillActionForTextField:(id)field form:(id)form outUsernameElementUniqueID:(id *)d outPasswordElementUniqueID:(id *)iD outConfirmPasswordElementUniqueID:(id *)uniqueID
{
  fieldCopy = field;
  formCopy = form;
  v30 = fieldCopy;
  isSecureTextField = [fieldCopy isSecureTextField];
  if (isSecureTextField)
  {
    [fieldCopy uniqueID];
  }

  else
  {
    [formCopy passwordElementUniqueID];
  }
  v14 = ;
  userNameElementUniqueID = [formCopy userNameElementUniqueID];
  v16 = v14;
  passwordElementUniqueID = [formCopy passwordElementUniqueID];
  v18 = [v16 isEqualToString:passwordElementUniqueID];

  if (v18)
  {
    confirmPasswordElementUniqueID = [formCopy confirmPasswordElementUniqueID];
    if (!isSecureTextField)
    {
      goto LABEL_6;
    }
  }

  else
  {
    confirmPasswordElementUniqueID = 0;
    if (!isSecureTextField)
    {
LABEL_6:
      v20 = 0;
      if (!iD)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v25 = [v29 valueOfControlWithUniqueID:v16 inForm:formCopy];
  if ([v25 length])
  {
    if ([v16 length])
    {
      v26 = [v29 metadataForControlWithUniqueID:v16 inForm:formCopy];
      isAutoFilledTextField = [v26 isAutoFilledTextField];

      v20 = ~isAutoFilledTextField & 1;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 2;
  }

  if (iD)
  {
LABEL_7:
    v21 = v16;
    *iD = v16;
  }

LABEL_8:
  if (d)
  {
    v22 = userNameElementUniqueID;
    *d = userNameElementUniqueID;
  }

  if (uniqueID)
  {
    v23 = confirmPasswordElementUniqueID;
    *uniqueID = confirmPasswordElementUniqueID;
  }

  return v20;
}

- (void)addAllAddressDataIfNecessary:(id)necessary contactLabel:(id)label contact:(id)contact
{
  v51[5] = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  labelCopy = label;
  contactCopy = contact;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = necessaryCopy;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = *v45;
    obj = @"th";
    v12 = *MEMORY[0x1E69C8A90];
    v13 = 1;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        stringValue = [v15 stringValue];
        safari_bestLanguageTag = [stringValue safari_bestLanguageTag];

        LODWORD(stringValue) = [safari_bestLanguageTag isEqualToString:obj];
        property = [v15 property];
        v19 = [property isEqualToString:v12];

        v13 &= stringValue ^ 1;
        if (v19)
        {

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          if (v13)
          {
            v20 = @"City";
          }

          else
          {
            v20 = @"State";
          }

          v51[0] = @"Street";
          v51[1] = v20;
          if (v13)
          {
            v21 = @"State";
          }

          else
          {
            v21 = @"City";
          }

          v51[2] = v21;
          v51[3] = @"ZIP";
          v51[4] = @"Country";
          v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5];
          v22 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v22)
          {
            obja = v10;
            v23 = 0;
            v24 = *v41;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v41 != v24)
                {
                  objc_enumerationMutation(obja);
                }

                obja = [(WBSFormDataController *)self addressBookMatchesForProperty:v12 key:*(*(&v40 + 1) + 8 * j) label:labelCopy partialString:0 contact:contactCopy allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:1, obja];

                v38 = 0u;
                v39 = 0u;
                v36 = 0u;
                v37 = 0u;
                v23 = obja;
                v27 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
                if (v27)
                {
                  v28 = *v37;
                  do
                  {
                    for (k = 0; k != v27; ++k)
                    {
                      if (*v37 != v28)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v30 = *(*(&v36 + 1) + 8 * k);
                      if (([v8 containsObject:v30] & 1) == 0)
                      {
                        [v8 addObject:v30];
                      }
                    }

                    v27 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
                  }

                  while (v27);
                }
              }

              v22 = [obja countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v22);

            v10 = obja;
          }

          goto LABEL_33;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v10 = v8;
  }

LABEL_33:
}

- (id)_singleFieldPhoneNumberCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v4 = objc_opt_new();
  v5 = phoneNumberWithoutFormatting(candidatesCopy);
  v6 = unprefixedPhoneNumber(v5);
  if (v6)
  {
    [v4 addObject:v6];
  }

  if ([(NSString *)v5 hasPrefix:@"+"])
  {
    v7 = [(NSString *)v5 substringFromIndex:1];
    [v4 addObject:v7];
  }

  else
  {
    [v4 addObject:v5];
  }

  return v4;
}

- (id)_phoneNumberCandidates:(id)candidates fillingMultipleFields:(BOOL)fields
{
  fieldsCopy = fields;
  candidatesCopy = candidates;
  {
    v7 = [WBSFormDataController _phoneNumberCandidates:fillingMultipleFields:]::extensionMarkers;
  }

  else
  {
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"xp-, "}];
    [WBSFormDataController _phoneNumberCandidates:fillingMultipleFields:]::extensionMarkers = v7;
  }

  v8 = [candidatesCopy rangeOfCharacterFromSet:v7 options:4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    if (fieldsCopy)
    {
LABEL_5:
      v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v11 = phoneNumberWithoutFormatting(candidatesCopy);
      v12 = unprefixedPhoneNumber(v11);
      [v10 addObject:v12];

      if (!v9)
      {
        goto LABEL_11;
      }

      v13 = phoneNumberWithoutFormatting(v9);
      v14 = unprefixedPhoneNumber(v13);
      [v10 addObject:v14];

      goto LABEL_10;
    }
  }

  else
  {
    v9 = [candidatesCopy substringToIndex:v8];
    if (fieldsCopy)
    {
      goto LABEL_5;
    }
  }

  v10 = [(WBSFormDataController *)self _singleFieldPhoneNumberCandidates:candidatesCopy];
  if (!v9)
  {
    goto LABEL_11;
  }

  v13 = [(WBSFormDataController *)self _singleFieldPhoneNumberCandidates:v9];
  [v10 addObjectsFromArray:v13];
LABEL_10:

LABEL_11:

  return v10;
}

- (void)_fillPhoneNumber:(id)number intoValues:(id)values controls:(id)controls formTextSample:(id)sample multiRoundAutoFillManager:(id)manager
{
  v72[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  valuesCopy = values;
  controlsCopy = controls;
  sampleCopy = sample;
  managerCopy = manager;
  IsChinese = languageOfTextIsChinese(sampleCopy);
  if (IsChinese)
  {
    v15 = phoneNumberWithoutFormatting(numberCopy);
    v72[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
  }

  else
  {
    v16 = -[WBSFormDataController _phoneNumberCandidates:fillingMultipleFields:](self, "_phoneNumberCandidates:fillingMultipleFields:", numberCopy, [controlsCopy count] > 1);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = *v68;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v68 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = *(*(&v67 + 1) + 8 * i);
      if ([controlsCopy count] == 1)
      {
        v22 = [controlsCopy objectAtIndex:0];
        v23 = fillSingleFieldValue(valuesCopy, v21, v22);

        if (v23)
        {
          goto LABEL_33;
        }
      }

      if ([controlsCopy count] >= 2 && valueFitsInFields(v21, controlsCopy))
      {
        if (IsChinese)
        {
          v24 = valuesCopy;
          v25 = v21;
          v61 = controlsCopy;
          v26 = v25;
          if ([(NSString *)v26 hasPrefix:@"1"]&& ![(NSString *)v26 hasPrefix:@"10"])
          {
          }

          else
          {

            v27 = [v61 objectAtIndexedSubscript:1];
            maxLength = [v27 maxLength];

            if (maxLength < 8)
            {
              v29 = 7;
            }

            else
            {
              v29 = 8;
            }

            v30 = [(NSString *)v26 length]- v29;
            if (v30 > 1)
            {
              v31 = [(NSString *)v26 substringWithRange:0, v30];
              v32 = [v61 objectAtIndexedSubscript:0];
              recordValueForTextField(v24, v31, v32);

              v33 = [(NSString *)v26 substringWithRange:v30, v29];
              v34 = [v61 objectAtIndexedSubscript:1];
              recordValueForTextField(v24, v33, v34);
              goto LABEL_24;
            }
          }
        }

        v35 = valuesCopy;
        v36 = v21;
        v37 = controlsCopy;
        v38 = v36;
        v39 = v37;
        if (([v39 count] == 3 || objc_msgSend(v39, "count") == 4) && -[NSString length](v38, "length") >= 0xA && (objc_msgSend(v39, "objectAtIndexedSubscript:", 0), v40 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v40, "maxLength"), v40, objc_msgSend(v39, "objectAtIndexedSubscript:", 1), v41 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v41, "maxLength"), v41, objc_msgSend(v39, "objectAtIndexedSubscript:", 2), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "maxLength"), v42, v62 >= 3) && v60 >= 3 && v43 >= 4 && (-[NSString length](v38, "length") < 0xB || objc_msgSend(v39, "count") == 4 && (objc_msgSend(v39, "objectAtIndexedSubscript:", 3), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "maxLength"), v44, v45 >= 1) && v45 >= -[NSString length](v38, "length") - 10))
        {
          if (v62 == 3 && v60 == 3 && v43 == 4)
          {

LABEL_55:
            v54 = [(NSString *)v38 substringWithRange:0, 3];
            v55 = [v39 objectAtIndex:0];
            recordValueForTextField(v35, v54, v55);

            v56 = [(NSString *)v38 substringWithRange:3, 3];
            v57 = [v39 objectAtIndex:1];
            recordValueForTextField(v35, v56, v57);

            v58 = [(NSString *)v38 substringWithRange:6, 4];
            v59 = [v39 objectAtIndex:2];
            recordValueForTextField(v35, v58, v59);

            if ([v39 count] != 4 || -[NSString length](v38, "length") < 0xB)
            {
              goto LABEL_25;
            }

            v33 = [(NSString *)v38 substringFromIndex:10];
            v34 = [v39 objectAtIndex:3];
            recordValueForTextField(v35, v33, v34);
LABEL_24:

LABEL_25:
            goto LABEL_33;
          }

          v46 = [v39 objectAtIndexedSubscript:0];
          v63 = [v46 size];

          v47 = [v39 objectAtIndexedSubscript:1];
          v48 = [v47 size];

          v49 = [v39 objectAtIndexedSubscript:2];
          v50 = [v49 size];

          v53 = v63 == 3 && v48 == 3 && v50 == 4;
          if (v53)
          {
            goto LABEL_55;
          }
        }

        else
        {
        }

        fillMultiFieldValue(v35, v38, v39, managerCopy);
        goto LABEL_33;
      }
    }

    v18 = [v17 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_33:
}

- (unint64_t)addValuesForStandardFormControlsInForm:(id)form startingAtIndex:(unint64_t)index fromAutoFillItem:(id)item toDictionary:(id)dictionary multiRoundAutoFillManager:(id)manager
{
  formCopy = form;
  itemCopy = item;
  dictionaryCopy = dictionary;
  managerCopy = manager;
  controls = [formCopy controls];
  textSample = [formCopy textSample];
  v18 = [(WBSFormDataController *)self addValuesForStandardFormControls:controls startingAtIndex:index fromAutoFillItem:itemCopy toDictionary:dictionaryCopy formTextSample:textSample multiRoundAutoFillManager:managerCopy];

  return v18;
}

- (unint64_t)addValuesForStandardFormControls:(id)controls startingAtIndex:(unint64_t)index fromAutoFillItem:(id)item toDictionary:(id)dictionary formTextSample:(id)sample multiRoundAutoFillManager:(id)manager
{
  v86 = *MEMORY[0x1E69E9840];
  controlsCopy = controls;
  itemCopy = item;
  dictionaryCopy = dictionary;
  sampleCopy = sample;
  managerCopy = manager;
  v72 = itemCopy;
  v69 = controlsCopy;
  if (itemCopy)
  {
    v71 = [controlsCopy objectAtIndexedSubscript:index];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v17 = itemCopy;
    }

    else
    {
      v17 = 0;
    }

    v65 = v17;
    selectElementInfo = [(WBSFormControlMetadata *)v71 selectElementInfo];
    if (isKindOfClass)
    {
      property = [itemCopy property];
      v19 = [property isEqualToString:*MEMORY[0x1E69C8A98]];

      if (v19)
      {
        dateValue = [itemCopy dateValue];
        v21 = fillDateUsingClassification(dictionaryCopy, controlsCopy, index, dateValue);

LABEL_80:
        goto LABEL_81;
      }
    }

    tagName = [(WBSFormControlMetadata *)v71 tagName];
    isTextField = [(WBSFormControlMetadata *)v71 isTextField];
    if (([tagName safari_isCaseInsensitiveEqualToString:@"input"] & isTextField) != 1)
    {
      if ((isKindOfClass & (selectElementInfo != 0)) == 1)
      {
        IsChinese = languageOfTextIsChinese(sampleCopy);
        v29 = selectElementInfo;
        v30 = v65;
        v31 = [WBSFormToABBinder allSynonymsForMatch:v30 formAppearsToBeChinese:IsChinese];
        if (!v31)
        {
          v32 = MEMORY[0x1E695DEC8];
          stringValue = [v30 stringValue];
          v31 = [v32 arrayWithObject:stringValue];
        }

        v34 = indexOfItemInSelectElement(v29, v31);

        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          recordIndexForSelectElement(dictionaryCopy, v34, v71);
        }
      }

      else if ((isKindOfClass & 1) != 0 && [tagName safari_isCaseInsensitiveEqualToString:@"textarea"])
      {
        completion = [itemCopy completion];
        recordValueForTextarea(dictionaryCopy, completion, v71);
      }

      v21 = 1;
      goto LABEL_79;
    }

    if (isKindOfClass)
    {
      property2 = [itemCopy property];
      v24 = [property2 isEqualToString:*MEMORY[0x1E69C8AB8]];

      if (v24)
      {
        v25 = 0;
        v26 = 0;
        v27 = 1;
        goto LABEL_29;
      }

      property3 = [itemCopy property];
      if (([property3 isEqualToString:*MEMORY[0x1E69C8A90]] & 1) == 0)
      {

        v25 = 0;
LABEL_28:
        property4 = [v72 property];
        v26 = [property4 isEqualToString:*MEMORY[0x1E69C8AA8]];

        v27 = 0;
LABEL_29:
        stringValue2 = [v65 stringValue];
        if ((v27 | v25 | v26))
        {
          v39 = [WBSFormDataController continuingFieldsInFormControls:controlsCopy startingAtIndex:index];
          if (stringValue2)
          {
            if (v27)
            {
              [(WBSFormDataController *)self _fillPhoneNumber:stringValue2 intoValues:dictionaryCopy controls:v39 formTextSample:sampleCopy multiRoundAutoFillManager:managerCopy];
            }

            else if (v25)
            {
              fillPostCode(dictionaryCopy, stringValue2, v39, managerCopy);
            }

            else
            {
              fillInstantMessageUsername(dictionaryCopy, stringValue2, v39);
            }
          }

          v21 = [v39 count];

          goto LABEL_78;
        }

        if (isKindOfClass)
        {
          property5 = [v72 property];
          if ([property5 isEqualToString:*MEMORY[0x1E69C8A90]])
          {
            v41 = [v72 key];
            v42 = [v41 isEqualToString:@"Street"];

            if (v42)
            {
              v75 = dictionaryCopy;
              v76 = stringValue2;
              v77 = managerCopy;
              [WBSFormDataController continuingFieldsInFormControls:controlsCopy startingAtIndex:index];
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              obj = v80 = 0u;
              v43 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
              if (!v43)
              {
                goto LABEL_71;
              }

              v74 = *v80;
              while (1)
              {
                v78 = v43;
                for (i = 0; i != v78; ++i)
                {
                  if (*v80 != v74)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v45 = *(*(&v79 + 1) + 8 * i);
                  orderedParts = [v45 orderedParts];
                  v47 = [orderedParts count];
                  if (v47 == 2)
                  {
                    v49 = 3;
                  }

                  else if (v47 == 1)
                  {
                    firstObject = [orderedParts firstObject];
                    if (WBSIsEqual())
                    {
                      v49 = 0;
                    }

                    else if (WBSIsEqual())
                    {
                      v49 = 1;
                    }

                    else if (WBSIsEqual())
                    {
                      v49 = 2;
                    }

                    else
                    {
                      v49 = 4;
                    }
                  }

                  else
                  {
                    v49 = 4;
                  }

                  v50 = v75;
                  v51 = v76;
                  v52 = v45;
                  v53 = v77;
                  uniqueID = [(WBSFormControlMetadata *)v52 uniqueID];
                  v55 = v51;
                  array = [MEMORY[0x1E695DF70] array];
                  v83[0] = MEMORY[0x1E69E9820];
                  v83[1] = 3221225472;
                  v83[2] = ___ZL22decomposeStreetAddressP8NSString20StreetDecomposeStyle_block_invoke;
                  v83[3] = &unk_1E7FC5F40;
                  v57 = array;
                  v84 = v57;
                  [v55 enumerateLinesUsingBlock:v83];
                  if (![v57 count])
                  {
                    goto LABEL_65;
                  }

                  if (v49 <= 1)
                  {
                    v58 = v49 != 0;
                    goto LABEL_62;
                  }

                  if (v49 == 2)
                  {
                    v58 = 2;
LABEL_62:
                    if (v58 < [v57 count])
                    {
                      v59 = [v57 objectAtIndex:v58];
                      goto LABEL_64;
                    }

                    goto LABEL_65;
                  }

                  if (v49 != 3)
                  {
                    goto LABEL_60;
                  }

                  if ([v57 count] != 1)
                  {
                    [v57 removeObjectAtIndex:0];
LABEL_60:
                    v59 = [v57 componentsJoinedByString:{@", "}];
LABEL_64:
                    v60 = v59;
                    goto LABEL_66;
                  }

LABEL_65:
                  v60 = &stru_1F3A5E418;
LABEL_66:

                  if ([(__CFString *)v60 length])
                  {
                    recordValueForTextField(v50, &v60->isa, v52);
                  }

                  else
                  {
                    [v53 addControlUniqueIDIgnoredByFollowUpAutoFill:uniqueID];
                  }
                }

                v43 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
                if (!v43)
                {
LABEL_71:

                  v21 = [obj count];
                  goto LABEL_78;
                }
              }
            }
          }

          else
          {
          }
        }

        completion2 = [v72 completion];
        recordValueForTextField(dictionaryCopy, completion2, v71);

        v21 = 1;
LABEL_78:

LABEL_79:
        goto LABEL_80;
      }

      v37 = [itemCopy key];
      v25 = [v37 isEqualToString:@"ZIP"];

      if ((v25 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 0;
    v26 = 0;
    goto LABEL_29;
  }

  v21 = 0;
LABEL_81:

  return v21;
}

+ (BOOL)textFieldLooksLikeCreditCardFormField:(id)field
{
  fieldCopy = field;
  classification = [fieldCopy classification];
  v6 = WBSIsEqual();

  if (v6 & 1) != 0 || ([fieldCopy classification], v7 = objc_claimAutoreleasedReturnValue(), v8 = WBSIsEqual(), v7, (v8))
  {
    v9 = 1;
  }

  else
  {
    v9 = [self textFieldLooksLikeCreditCardNumericFormField:fieldCopy];
  }

  return v9;
}

+ (BOOL)textFieldLooksLikeCreditCardNumericFormField:(id)field
{
  classification = [field classification];
  if (WBSIsEqual())
  {
    v4 = 1;
  }

  else
  {
    v4 = WBSIsEqual();
  }

  return v4;
}

+ (void)getFormFieldValues:(id *)values andFieldToFocus:(id *)focus andCreditCardDataTypesThatWillBeFilled:(id *)filled forCreditCardForm:(id)form fromCreditCardData:(id)data
{
  v108 = *MEMORY[0x1E69E9840];
  formCopy = form;
  dataCopy = data;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  controls = [formCopy controls];
  v8 = [controls count];
  if (!v8)
  {
    v72 = dictionary;
    v11 = 0;
    v10 = 0;
    focusCopy2 = focus;
    *values = v72;
    if (!focus)
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

  v85 = v8;
  v83 = 0;
  v9 = 0;
  v80 = 0;
  v81 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v82 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v89 = v12;
    v88 = [controls objectAtIndexedSubscript:?];
    v13 = uniqueIDForAutoFillOfControl(v88, 7);
    v14 = v13 == 0;

    if (!v14)
    {
      classification = [(WBSFormControlMetadata *)v88 classification];
      if ((v9 & 1) != 0 || ![classification isEqualToString:@"cc-name"])
      {
        if ((v83 & 0x100000000) != 0 || ![classification isEqualToString:@"cc-number"])
        {
          if ((v83 & 1) != 0 || ![classification isEqualToString:@"cc-exp"])
          {
            if ((v81 & 1) != 0 || ![classification isEqualToString:@"cc-csc"])
            {
              if ((v80 & 1) != 0 || ![classification isEqualToString:@"cc-type"])
              {
                if (v82 == 0x7FFFFFFFFFFFFFFFLL && ((v9 | HIDWORD(v83)) & 1) != 0)
                {
                  if (!-[WBSFormControlMetadata isTextField](v88, "isTextField") || (-[WBSFormControlMetadata value](v88, "value"), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v51 length] == 0, v51, v52))
                  {
                    v53 = v89;
                  }

                  else
                  {
                    v53 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v82 = v53;
                }
              }

              else
              {
                cardNumber = [dataCopy cardNumber];
                v49 = fillCreditCardType(dictionary, v88, cardNumber);

                if (v49)
                {
                  uniqueID = [(WBSFormControlMetadata *)v88 uniqueID];
                  recordTypeForFieldIfFilled(dictionary, dictionary2, uniqueID, 4);

                  v80 = 1;
                }

                else
                {
                  v80 = 0;
                }
              }
            }

            else
            {
              cardSecurityCode = [dataCopy cardSecurityCode];
              v45 = [cardSecurityCode length] == 0;

              if (!v45)
              {
                cardSecurityCode2 = [dataCopy cardSecurityCode];
                recordValueForTextField(dictionary, cardSecurityCode2, v88);

                uniqueID2 = [(WBSFormControlMetadata *)v88 uniqueID];
                recordTypeForFieldIfFilled(dictionary, dictionary2, uniqueID2, 1);
              }

              v81 = 1;
            }
          }

          else
          {
            v34 = allControlsContinuationStartingAtIndex(controls, v89);
            expirationDate = [dataCopy expirationDate];
            v36 = expirationDate == 0;

            if (!v36)
            {
              expirationDate2 = [dataCopy expirationDate];
              fillDateUsingClassification(dictionary, v34, 0, expirationDate2);

              v95 = 0u;
              v96 = 0u;
              v93 = 0u;
              v94 = 0u;
              v38 = v34;
              v39 = [v38 countByEnumeratingWithState:&v93 objects:v105 count:16];
              if (v39)
              {
                v40 = *v94;
                do
                {
                  for (i = 0; i != v39; ++i)
                  {
                    if (*v94 != v40)
                    {
                      objc_enumerationMutation(v38);
                    }

                    uniqueID3 = [*(*(&v93 + 1) + 8 * i) uniqueID];
                    recordTypeForFieldIfFilled(dictionary, dictionary2, uniqueID3, 2);
                  }

                  v39 = [v38 countByEnumeratingWithState:&v93 objects:v105 count:16];
                }

                while (v39);
              }
            }

            v43 = [v34 count];

            v89 = v89 + v43 - 1;
            LOBYTE(v83) = 1;
          }
        }

        else
        {
          v24 = allControlsContinuationStartingAtIndex(controls, v89);
          cardNumber2 = [dataCopy cardNumber];
          v26 = valueFitsInFields(cardNumber2, v24);

          if (v26)
          {
            cardNumber3 = [dataCopy cardNumber];
            fillMultiFieldValue(dictionary, cardNumber3, v24, 0);

            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v28 = v24;
            v29 = [v28 countByEnumeratingWithState:&v97 objects:v106 count:16];
            if (v29)
            {
              v30 = *v98;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v98 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  uniqueID4 = [*(*(&v97 + 1) + 8 * j) uniqueID];
                  recordTypeForFieldIfFilled(dictionary, dictionary2, uniqueID4, 0);
                }

                v29 = [v28 countByEnumeratingWithState:&v97 objects:v106 count:16];
              }

              while (v29);
            }
          }

          v33 = [v24 count];

          v89 = v89 + v33 - 1;
          HIDWORD(v83) = 1;
        }
      }

      else
      {
        v84 = allControlsContinuationStartingAtIndex(controls, v89);
        cardholderName = [dataCopy cardholderName];
        v16 = [cardholderName length] == 0;

        if (v16)
        {
          v68 = v82;
          if (v82 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v68 = v89;
          }

          v82 = v68;
        }

        else if ([v84 count] == 1 && (objc_msgSend(v84, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "orderedParts"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count") == 3, v18, v17, v19))
        {
          cardholderName2 = [dataCopy cardholderName];
          firstObject = [v84 firstObject];
          recordValueForTextField(dictionary, cardholderName2, firstObject);

          firstObject2 = [v84 firstObject];
          uniqueID5 = [firstObject2 uniqueID];
          recordTypeForFieldIfFilled(dictionary, dictionary2, uniqueID5, 3);
        }

        else
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v54 = v84;
          v55 = [v54 countByEnumeratingWithState:&v101 objects:v107 count:16];
          if (v55)
          {
            v56 = *v102;
            do
            {
              for (k = 0; k != v55; ++k)
              {
                if (*v102 != v56)
                {
                  objc_enumerationMutation(v54);
                }

                v58 = *(*(&v101 + 1) + 8 * k);
                if (!v10 || !v11)
                {
                  v59 = objc_alloc_init(MEMORY[0x1E696ADF8]);

                  [v59 setStyle:3];
                  cardholderName3 = [dataCopy cardholderName];
                  v61 = [v59 personNameComponentsFromString:cardholderName3];

                  v11 = v61;
                  v10 = v59;
                }

                v62 = objc_alloc_init(MEMORY[0x1E696ADF0]);
                orderedParts = [(WBSFormControlMetadata *)v58 orderedParts];
                if ([orderedParts containsObject:@"given-name"])
                {
                  givenName = [v11 givenName];
                  [v62 setGivenName:givenName];
                }

                if ([orderedParts containsObject:@"additional-name"])
                {
                  middleName = [v11 middleName];
                  [v62 setMiddleName:middleName];
                }

                if ([orderedParts containsObject:@"family-name"])
                {
                  familyName = [v11 familyName];
                  [v62 setFamilyName:familyName];
                }

                v67 = [v10 stringFromPersonNameComponents:v62];
                recordValueForTextField(dictionary, v67, v58);
              }

              v55 = [v54 countByEnumeratingWithState:&v101 objects:v107 count:16];
            }

            while (v55);
          }
        }

        v69 = [v84 count];

        v89 = v89 + v69 - 1;
        v9 = 1;
      }
    }

    v12 = v89 + 1;
  }

  while (v89 + 1 < v85);
  v70 = dictionary;
  *values = dictionary;
  if (focus)
  {
    if (v82 == 0x7FFFFFFFFFFFFFFFLL)
    {
      focusCopy2 = focus;
LABEL_78:
      *focusCopy2 = 0;
      goto LABEL_80;
    }

    v73 = [controls objectAtIndexedSubscript:?];
    uniqueID6 = [v73 uniqueID];
    *focus = uniqueID6;
  }

LABEL_80:
  if (filled)
  {
    v75 = dictionary2;
    *filled = dictionary2;
  }
}

- (unint64_t)_indexForControlWithUniqueID:(id)d inForm:(id)form
{
  dCopy = d;
  controls = [form controls];
  v7 = [controls count];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = [controls objectAtIndexedSubscript:v8];
      uniqueID = [v9 uniqueID];
      v11 = [uniqueID isEqualToString:dCopy];

      if (v11)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)_nextFieldToFocusAfterFillingFieldAtIndex:(unint64_t)index inForm:(id)form
{
  controls = [form controls];
  v6 = [controls count];
  v7 = index + 1;
  if (index + 1 >= v6)
  {
LABEL_4:
    uniqueID = 0;
  }

  else
  {
    while (1)
    {
      v8 = [controls objectAtIndexedSubscript:v7];
      value = [v8 value];
      v10 = [value length];

      if (!v10)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_4;
      }
    }

    uniqueID = [v8 uniqueID];
  }

  return uniqueID;
}

- (void)getFormFieldValues:(id *)values andFieldToFocus:(id *)focus withSingleCreditCardData:(id)data inField:(id)field inForm:(id)form
{
  v49 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  fieldCopy = field;
  formCopy = form;
  controls = [formCopy controls];
  uniqueID = [(WBSFormControlMetadata *)fieldCopy uniqueID];
  v16 = [(WBSFormDataController *)self _indexForControlWithUniqueID:uniqueID inForm:formCopy];

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (values)
    {
      *values = MEMORY[0x1E695E0F8];
    }

    if (focus)
    {
      *focus = 0;
    }

    goto LABEL_32;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = [dataCopy value];
  type = [dataCopy type];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        if (type == 4)
        {
          fillCreditCardType(dictionary, fieldCopy, value);
        }

        goto LABEL_29;
      }

      goto LABEL_13;
    }

    v38 = value;
    v39 = WBSLocaleForCreditCardExpirationDate();
    v41 = dictionary;
    v19 = controls;
    v42 = v38;
    v40 = v19;
    v43 = [WBSFormDataController continuingFieldsInFormControls:v19 startingAtIndex:v16];
    if ([v43 count] >= 4)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        -[WBSFormDataController getFormFieldValues:andFieldToFocus:withSingleCreditCardData:inField:inForm:].cold.3(buf, [v43 count], v20);
      }

      goto LABEL_27;
    }

    if (!v42)
    {
LABEL_27:
      v28 = [v43 count];
LABEL_28:

      v16 = v16 + v28 - 1;
      goto LABEL_29;
    }

    if ([v43 count] == 1)
    {
      v36 = [v43 objectAtIndexedSubscript:0];
      if ([(WBSFormControlMetadata *)v36 isTextField])
      {
        requiredFormatForDateTimeInput = [(WBSFormControlMetadata *)v36 requiredFormatForDateTimeInput];
        v24 = [requiredFormatForDateTimeInput length];

        if (v24)
        {
          v25 = objc_alloc_init(MEMORY[0x1E696AB78]);
          requiredFormatForDateTimeInput2 = [(WBSFormControlMetadata *)v36 requiredFormatForDateTimeInput];
          [v25 setDateFormat:requiredFormatForDateTimeInput2];

          v27 = [v25 stringFromDate:v42];
          recordValueForTextField(v41, v27, v36);
        }

        else
        {
          v33 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [WBSFormDataController getFormFieldValues:andFieldToFocus:withSingleCreditCardData:inField:inForm:];
          }
        }
      }

      else
      {
        v32 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [WBSFormDataController getFormFieldValues:andFieldToFocus:withSingleCreditCardData:inField:inForm:];
        }
      }

      v28 = 1;
      goto LABEL_28;
    }

    v47 = 0;
    *buf = 0;
    v46 = 0;
    v30 = identifyDateFields(v43, buf, &v47, &v46);
    v37 = *buf;
    v35 = v47;
    v34 = v46;
    if (v30)
    {
      if (v37 && !v35)
      {
        v31 = [v43 count];
LABEL_46:
        v28 = v31;

        goto LABEL_28;
      }

      if (v37)
      {
        recordValueForDateField(v41, 0, v42, v37);
      }

      if (v35)
      {
        recordValueForDateField(v41, 1, v42, v35);
      }

      if (v34)
      {
        recordValueForDateField(v41, 2, v42, v34);
      }
    }

    v31 = [v43 count];
    goto LABEL_46;
  }

  if (!type)
  {
    v21 = value;
    v22 = [objc_opt_class() continuingFieldsInFormControls:controls startingAtIndex:v16];
    if (valueFitsInFields(v21, v22))
    {
      fillMultiFieldValue(dictionary, v21, v22, 0);
    }

    v16 = v16 + [v22 count] - 1;

    goto LABEL_29;
  }

  if (type == 1)
  {
LABEL_13:
    recordValueForTextField(dictionary, value, fieldCopy);
  }

LABEL_29:
  v29 = dictionary;
  *values = dictionary;
  if (focus)
  {
    *focus = [(WBSFormDataController *)self _nextFieldToFocusAfterFillingFieldAtIndex:v16 inForm:formCopy];
  }

LABEL_32:
}

- (BOOL)isControlASelectElement:(id)element
{
  tagName = [element tagName];
  v4 = [tagName safari_isCaseInsensitiveEqualToString:@"select"];

  return v4;
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (!locale)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v5 = self->_locale;
    self->_locale = currentLocale;

    locale = self->_locale;
  }

  return locale;
}

+ (id)domainFromURL:(id)l
{
  host = [l host];
  _web_domainFromHost = [host _web_domainFromHost];
  lowercaseString = [_web_domainFromHost lowercaseString];

  return lowercaseString;
}

+ (id)nextFieldAfterControls:(id)controls inForm:(id)form
{
  v27 = *MEMORY[0x1E69E9840];
  controlsCopy = controls;
  controls = [form controls];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:controlsCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  reverseObjectEnumerator = [controls reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      nextControlUniqueID = [v11 nextControlUniqueID];
      if (([v6 containsObject:nextControlUniqueID] & 1) == 0)
      {
        uniqueID = [v11 uniqueID];
        v14 = [v6 containsObject:uniqueID];

        if (v14)
        {
          v15 = nextControlUniqueID;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = ___ZL43controlsContainTextFieldWithControlUniqueIDP7NSArrayIP22WBSFormControlMetadataEP8NSString_block_invoke;
          v24[3] = &unk_1E7FC5F68;
          v25 = v15;
          v16 = v15;
          v17 = [controls indexOfObjectPassingTest:v24] == 0x7FFFFFFFFFFFFFFFLL;

          if (!v17)
          {
            break;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  return v16;
}

+ (id)lastFieldInControls:(id)controls inForm:(id)form
{
  v21 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:controls];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  controls = [formCopy controls];
  reverseObjectEnumerator = [controls reverseObjectEnumerator];

  uniqueID2 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (uniqueID2)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != uniqueID2; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        uniqueID = [v12 uniqueID];
        v14 = [v6 containsObject:uniqueID];

        if (v14)
        {
          uniqueID2 = [v12 uniqueID];
          goto LABEL_11;
        }
      }

      uniqueID2 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (uniqueID2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return uniqueID2;
}

+ (id)controlsConsideredByAutoFillInForm:(id)form
{
  v16 = *MEMORY[0x1E69E9840];
  formCopy = form;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  controls = [formCopy controls];
  v6 = [controls countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(controls);
        }

        v9 = uniqueIDForAutoFillOfControl(*(*(&v11 + 1) + 8 * i), 3);
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [controls countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

+ (BOOL)isNameProperty:(id)property
{
  propertyCopy = property;
  {
    v4 = +[WBSFormDataController isNameProperty:]::namePropertiesSet;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69C8AC0], *MEMORY[0x1E69C8AD0], *MEMORY[0x1E69C8AC8], *MEMORY[0x1E69C8AD8], 0}];
    +[WBSFormDataController isNameProperty:]::namePropertiesSet = v4;
  }

  v5 = [v4 containsObject:propertyCopy];

  return v5;
}

- (id)_autoFillSetFromMatches:(id)matches label:(id)label contact:(id)contact form:(id)form
{
  v35 = *MEMORY[0x1E69E9840];
  matchesCopy = matches;
  labelCopy = label;
  contactCopy = contact;
  formCopy = form;
  v29 = matchesCopy;
  if (![matchesCopy count])
  {
    v24 = 0;
    goto LABEL_18;
  }

  v11 = [MEMORY[0x1E695DFA8] set];
  v12 = [MEMORY[0x1E695DFA8] set];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = matchesCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        property = [*(*(&v30 + 1) + 8 * i) property];
        [v12 addObject:property];
        if (![WBSFormDataController isNameProperty:property])
        {
          v19 = [objc_opt_class() localizedLowercaseContactProperty:property];
          [v11 addObject:v19];

          v15 = 1;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);

    if ((v15 & 1) == 0)
    {
      v24 = 0;
      goto LABEL_17;
    }

    v20 = [WBSRecentlyUsedAutoFillSet alloc];
    v21 = [(WBSRecentlyUsedAutoFillSet *)v20 initWithFillMatches:v13 skipMatches:MEMORY[0x1E695E0F0] label:labelCopy];
    v13 = [(WBSFormDataController *)self valuesForContactFormWithMetadata:formCopy matches:0 multiRoundAutoFillManager:0 existingMatches:v21 contact:contactCopy];

    v22 = [WBSContactAutoFillSet alloc];
    allObjects = [v11 allObjects];
    v24 = [(WBSContactAutoFillSet *)v22 initWithControlIDToValueMap:v13 label:labelCopy fillDisplayProperties:allObjects skipDisplayProperties:0 propertiesToFillOrSkip:v12];
  }

  else
  {
    v24 = 0;
  }

LABEL_17:
LABEL_18:

  return v24;
}

- (id)orderedHomeAndWorkSetsForContact:(id)contact form:(id)form
{
  v40 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  formCopy = form;
  v38 = 0;
  v6 = [(WBSFormDataController *)self valuesForContactFormWithMetadata:formCopy matches:&v38 multiRoundAutoFillManager:0 existingMatches:0 contact:contactCopy];
  selfCopy = self;
  v28 = v38;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v28;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = *v35;
    v10 = *MEMORY[0x1E69C8A98];
    v31 = *MEMORY[0x1E69C8AB0];
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        property = [v12 property];
        if ([WBSFormDataController isNameProperty:property])
        {

LABEL_9:
          [array addObject:v12];
LABEL_10:
          [array2 addObject:v12];
          goto LABEL_11;
        }

        property2 = [v12 property];
        v15 = [property2 isEqualToString:v10];

        if (v15)
        {
          goto LABEL_9;
        }

        label = [v12 label];
        v17 = [label isEqualToString:@"_$!<Home>!$_"];

        if (v17)
        {
          [array addObject:v12];
        }

        label2 = [v12 label];
        if ([label2 isEqualToString:@"_$!<Work>!$_"])
        {

          goto LABEL_10;
        }

        property3 = [v12 property];
        v20 = [property3 isEqualToString:v31];

        if (v20)
        {
          goto LABEL_10;
        }

LABEL_11:
        ++v11;
      }

      while (v8 != v11);
      v21 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      v8 = v21;
    }

    while (v21);
  }

  v22 = [(WBSFormDataController *)selfCopy _autoFillSetFromMatches:array label:@"_$!<Home>!$_" contact:contactCopy form:formCopy];
  v23 = [(WBSFormDataController *)selfCopy _autoFillSetFromMatches:array2 label:@"_$!<Work>!$_" contact:contactCopy form:formCopy];
  array3 = [MEMORY[0x1E695DF70] array];
  v25 = array3;
  if (v22)
  {
    [array3 addObject:v22];
  }

  if (v23)
  {
    [v25 addObject:v23];
  }

  return v25;
}

- (id)contactAutoFillSetForRecentlyUsedAutoFillSet:(id)set contact:(id)contact form:(id)form
{
  v36 = *MEMORY[0x1E69E9840];
  setCopy = set;
  contactCopy = contact;
  formCopy = form;
  fillMatches = [setCopy fillMatches];
  skipMatches = [setCopy skipMatches];
  [setCopy label];
  v26 = v34 = 0;
  v27 = [(WBSFormDataController *)self valuesForContactFormWithMetadata:formCopy matches:&v34 multiRoundAutoFillManager:0 existingMatches:setCopy contact:contactCopy];
  v10 = v34;
  v28 = [WBSContactAutoFillSet displayStringsForFillMatches:fillMatches skipMatches:skipMatches matchesForForm:v10 label:v26 formDataController:self];
  v29 = [WBSContactAutoFillSet displayStringsForSkipMatches:skipMatches matchesForForm:v10 formDataController:self];
  v25 = [skipMatches valueForKeyPath:@"@distinctUnionOfObjects.property"];
  v11 = [MEMORY[0x1E695DFA8] setWithArray:?];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        property = [*(*(&v30 + 1) + 8 * i) property];
        [v11 addObject:property];
      }

      v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  v17 = [WBSContactAutoFillSet alloc];
  allObjects = [v28 allObjects];
  allObjects2 = [v29 allObjects];
  v20 = [(WBSContactAutoFillSet *)v17 initWithControlIDToValueMap:v27 label:v26 fillDisplayProperties:allObjects skipDisplayProperties:allObjects2 propertiesToFillOrSkip:v11];

  return v20;
}

- (id)valuesForStandardForm:(id)form inDomain:(id)domain autoFillDataType:(unint64_t)type matches:(id *)matches preferredLabel:(id)label multiRoundAutoFillManager:(id)manager contact:(id)contact allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)self0
{
  BYTE1(v13) = identifier;
  LOBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  v10 = [(WBSFormDataController *)self _valuesForStandardForm:form inDomain:domain autoFillDataType:type matches:matches preferredLabel:label multiRoundAutoFillManager:manager wantAllMatches:v12 contact:contact existingMatches:0 shouldUseExistingMatchesToFillFocusedField:v13 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:?];

  return v10;
}

- (id)valuesForStandardForm:(id)form inDomain:(id)domain autoFillDataType:(unint64_t)type matches:(id *)matches preferredLabel:(id)label multiRoundAutoFillManager:(id)manager
{
  LOWORD(v11) = 256;
  LOBYTE(v10) = 0;
  v8 = [(WBSFormDataController *)self _valuesForStandardForm:form inDomain:domain autoFillDataType:type matches:matches preferredLabel:label multiRoundAutoFillManager:manager wantAllMatches:v10 contact:0 existingMatches:0 shouldUseExistingMatchesToFillFocusedField:v11 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:?];

  return v8;
}

- (id)_valuesForStandardForm:(id)form inDomain:(id)domain autoFillDataType:(unint64_t)type matches:(id *)matches preferredLabel:(id)label multiRoundAutoFillManager:(id)manager wantAllMatches:(BOOL)allMatches contact:(id)self0 existingMatches:(id)self1 shouldUseExistingMatchesToFillFocusedField:(BOOL)self2 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:(BOOL)self3
{
  v88[1] = *MEMORY[0x1E69E9840];
  formCopy = form;
  domainCopy = domain;
  labelCopy = label;
  managerCopy = manager;
  contactCopy = contact;
  existingMatchesCopy = existingMatches;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v21 = array;
  if (matches)
  {
    v22 = array;
    *matches = v21;
  }

  type = [formCopy type];
  userNameElementUniqueID = [formCopy userNameElementUniqueID];
  passwordElementUniqueID = [formCopy passwordElementUniqueID];
  confirmPasswordElementUniqueID = [formCopy confirmPasswordElementUniqueID];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  controls = [formCopy controls];
  v76 = [controls count];
  fillMatches = [existingMatchesCopy fillMatches];
  v24 = [fillMatches count];
  v25 = MEMORY[0x1E69C8AB8];
  if (v24 == 1)
  {
    fillMatches2 = [existingMatchesCopy fillMatches];
    v27 = [fillMatches2 objectAtIndexedSubscript:0];
    property = [v27 property];
    v75 = [property isEqualToString:*v25];
  }

  else
  {
    v75 = 0;
  }

  if (v76)
  {
    v60 = 0;
    v29 = 0;
    v72 = *v25;
    v62 = *MEMORY[0x1E69C8AA0];
    while (1)
    {
      v30 = [controls objectAtIndexedSubscript:v29];
      v81 = v30;
      v80 = [objc_opt_class() specifierForControl:v30];
      if (v75)
      {
        property2 = [v80 property];
        v32 = [property2 isEqualToString:v72];

        v33 = (v32 & 1) != 0 ? 7 : 3;
      }

      else
      {
        v33 = 3;
      }

      v79 = uniqueIDForAutoFillOfControl(v30, v33);
      if (v79)
      {
        if ([managerCopy currentAutoFillAttemptTrigger] != 1 || (objc_msgSend(managerCopy, "shouldControlBeIgnoredByFollowUpAutoFill:", v79) & 1) == 0)
        {
          break;
        }
      }

      v34 = 1;
LABEL_59:

      v29 += v34;
      if (v29 >= v76)
      {
        goto LABEL_60;
      }
    }

    uniqueID = [(WBSFormControlMetadata *)v30 uniqueID];
    if (type == 4)
    {
      if (([uniqueID isEqualToString:userNameElementUniqueID] & 1) != 0 || -[WBSFormControlMetadata isLabeledUsernameField](v30, "isLabeledUsernameField")) && (objc_msgSend(v80, "property"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", v62), v35, (v36 & 1) == 0) || (objc_msgSend(uniqueID, "isEqualToString:", passwordElementUniqueID) & 1) != 0 || (objc_msgSend(uniqueID, "isEqualToString:", confirmPasswordElementUniqueID))
      {
        v34 = 1;
LABEL_58:

        goto LABEL_59;
      }
    }

    tagName = [(WBSFormControlMetadata *)v30 tagName];
    if (([tagName safari_isCaseInsensitiveEqualToString:@"input"] & 1) != 0 || (v37 = objc_msgSend(tagName, "safari_isCaseInsensitiveEqualToString:", @"textarea"), value = &stru_1F3A5E418, v37))
    {
      value = [(WBSFormControlMetadata *)v30 value];
    }

    v73 = value;
    if (allMatches)
    {
      LOBYTE(v57) = identifier;
      v39 = [WBSFormDataController _matchesForControl:"_matchesForControl:inDomain:matchingPartialString:autoFillDataType:preferredLabel:contact:allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:" inDomain:v30 matchingPartialString:domainCopy autoFillDataType:v57 preferredLabel:? contact:? allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:?];
      LOBYTE(v58) = identifier;
      v40 = [(WBSFormDataController *)self _matchesForControl:v30 inDomain:domainCopy matchingPartialString:&stru_1F3A5E418 autoFillDataType:type preferredLabel:labelCopy contact:contactCopy allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v58];
      v41 = v40;
      if (v39)
      {
        v42 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v39];
        [v42 addObjectsFromArray:v41];
        array2 = [v42 array];
      }

      else
      {
        v41 = v40;
        array2 = v41;
      }

LABEL_44:

      if (existingMatchesCopy)
      {
        LOBYTE(v59) = field;
        v34 = [(WBSFormDataController *)self _addMatchesForControl:v81 startingAtIndex:v29 formMetadata:formCopy fromExistingMatches:existingMatchesCopy fromAllMatchesIfNecessary:array2 addToFoundMatches:v21 addToAutoFillValues:dictionary multiRoundAutoFillManager:managerCopy propertyToIdentifierMapForFoundMatches:dictionary2 shouldUseExistingMatchesToFillFocusedField:v59];
LABEL_57:

        goto LABEL_58;
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v39 = array2;
      v51 = [v39 countByEnumeratingWithState:&v83 objects:v87 count:16];
      if (v51)
      {
        v52 = *v84;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v84 != v52)
            {
              objc_enumerationMutation(v39);
            }

            v54 = *(*(&v83 + 1) + 8 * i);
            [v21 addObject:v54];
            v55 = [(WBSFormDataController *)self addValuesForStandardFormControlsInForm:formCopy startingAtIndex:v29 fromAutoFillItem:v54 toDictionary:dictionary multiRoundAutoFillManager:managerCopy];
          }

          v34 = v55;
          v51 = [v39 countByEnumeratingWithState:&v83 objects:v87 count:16];
        }

        while (v51);
      }

      else
      {
        v34 = 1;
      }

      array2 = v39;
LABEL_56:

      goto LABEL_57;
    }

    addressSetLabelUsedDuringFirstAutoFillPass = [managerCopy addressSetLabelUsedDuringFirstAutoFillPass];
    v45 = addressSetLabelUsedDuringFirstAutoFillPass;
    v46 = labelCopy;
    if (addressSetLabelUsedDuringFirstAutoFillPass)
    {
      v46 = addressSetLabelUsedDuringFirstAutoFillPass;
    }

    v39 = v46;

    LOBYTE(v57) = identifier;
    v41 = [(WBSFormDataController *)self bestMatchForControl:v30 inDomain:domainCopy matchingPartialString:v73 autoFillDataType:type preferredLabel:v39 contact:contactCopy allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v57];
    v47 = [objc_opt_class() specifierForControl:v81];
    v48 = v47;
    if (!identifier)
    {
      property3 = [v47 property];
      v50 = [property3 isEqualToString:v72];

      if (v60 & 1 | ((v50 & 1) == 0))
      {
        if (v50 & v60)
        {
          v60 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        v60 = 1;
      }
    }

    if ([(WBSFormDataController *)self _matchHasPreferredIdentifierOrShouldBeFilledInMultiRoundAutoFill:v41 specifier:v48 multiRoundAutoFillManager:managerCopy contact:contactCopy])
    {
      if (v41)
      {
        v88[0] = v41;
        array2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
      }

      else
      {
        array2 = 0;
      }

      goto LABEL_44;
    }

LABEL_41:

    array2 = 0;
    v34 = 1;
    goto LABEL_56;
  }

LABEL_60:

  return dictionary;
}

- (BOOL)_matchHasPreferredIdentifierOrShouldBeFilledInMultiRoundAutoFill:(id)fill specifier:(id)specifier multiRoundAutoFillManager:(id)manager contact:(id)contact
{
  fillCopy = fill;
  specifierCopy = specifier;
  managerCopy = manager;
  contactCopy = contact;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = fillCopy;
    addressBookPropertiesThatCanBeFilled = [managerCopy addressBookPropertiesThatCanBeFilled];
    if (addressBookPropertiesThatCanBeFilled)
    {
      addressBookPropertiesThatCanBeFilled2 = [managerCopy addressBookPropertiesThatCanBeFilled];
      property = [v14 property];
      v18 = [addressBookPropertiesThatCanBeFilled2 containsObject:property];

      if ((v18 & 1) == 0)
      {
        v25 = 0;
        goto LABEL_14;
      }
    }

    addressSetLabelUsedDuringFirstAutoFillPass = [managerCopy addressSetLabelUsedDuringFirstAutoFillPass];
    if (addressSetLabelUsedDuringFirstAutoFillPass && ([v14 property], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", *MEMORY[0x1E69C8A90]), v20, addressSetLabelUsedDuringFirstAutoFillPass, v21))
    {
      label = [v14 label];
      addressSetLabelUsedDuringFirstAutoFillPass2 = [managerCopy addressSetLabelUsedDuringFirstAutoFillPass];
      v24 = [label isEqualToString:addressSetLabelUsedDuringFirstAutoFillPass2];
    }

    else
    {
      if (!specifierCopy || ([specifierCopy property], v26 = objc_claimAutoreleasedReturnValue(), v27 = -[WBSFormDataController preferredIdentifierExistsForProperty:withContact:](self, "preferredIdentifierExistsForProperty:withContact:", v26, contactCopy), v26, !v27))
      {
        v25 = 1;
        goto LABEL_14;
      }

      property2 = [specifierCopy property];
      label = [(WBSFormDataController *)self preferredIdentifierForProperty:property2 withContact:contactCopy];

      addressSetLabelUsedDuringFirstAutoFillPass2 = [v14 identifier];
      v24 = [addressSetLabelUsedDuringFirstAutoFillPass2 isEqualToString:label];
    }

    v25 = v24;

LABEL_14:
    goto LABEL_15;
  }

  v25 = 1;
LABEL_15:

  return v25;
}

- (unint64_t)_addMatchesForControl:(id)control startingAtIndex:(unint64_t)index formMetadata:(id)metadata fromExistingMatches:(id)matches fromAllMatchesIfNecessary:(id)necessary addToFoundMatches:(id)foundMatches addToAutoFillValues:(id)values multiRoundAutoFillManager:(id)self0 propertyToIdentifierMapForFoundMatches:(id)self1 shouldUseExistingMatchesToFillFocusedField:(BOOL)self2
{
  v123 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  metadataCopy = metadata;
  matchesCopy = matches;
  necessaryCopy = necessary;
  foundMatchesCopy = foundMatches;
  valuesCopy = values;
  managerCopy = manager;
  forFoundMatchesCopy = forFoundMatches;
  v65 = metadataCopy;
  if (field)
  {
    v19 = metadataCopy;
    if ([v19 containsActiveElement])
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v74 = v19;
      controls = [v19 controls];
      v21 = [controls countByEnumeratingWithState:&v110 objects:&v117 count:16];
      if (v21)
      {
        v22 = *v111;
        while (2)
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v111 != v22)
            {
              objc_enumerationMutation(controls);
            }

            v24 = *(*(&v110 + 1) + 8 * i);
            if ([v24 isActive])
            {
              v21 = [v24 copy];
              goto LABEL_15;
            }
          }

          v21 = [controls countByEnumeratingWithState:&v110 objects:&v117 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      v19 = v74;
    }

    else
    {
      v21 = 0;
    }

    uniqueID = [v21 uniqueID];
  }

  else
  {
    uniqueID = 0;
  }

  *&v110 = 0;
  *(&v110 + 1) = &v110;
  *&v111 = 0x2020000000;
  *(&v111 + 1) = 1;
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__13;
  v121 = __Block_byref_object_dispose__13;
  v122 = 0;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __268__WBSFormDataController__addMatchesForControl_startingAtIndex_formMetadata_fromExistingMatches_fromAllMatchesIfNecessary_addToFoundMatches_addToAutoFillValues_multiRoundAutoFillManager_propertyToIdentifierMapForFoundMatches_shouldUseExistingMatchesToFillFocusedField___block_invoke;
  v99[3] = &unk_1E7FC5DC0;
  v106 = &v117;
  v107 = &v110;
  v99[4] = self;
  v63 = v65;
  v100 = v63;
  indexCopy = index;
  v64 = managerCopy;
  v101 = v64;
  fieldCopy = field;
  v76 = controlCopy;
  v102 = v76;
  v75 = uniqueID;
  v103 = v75;
  v77 = foundMatchesCopy;
  v104 = v77;
  v72 = forFoundMatchesCopy;
  v105 = v72;
  v78 = MEMORY[0x1BFB13CE0](v99);
  v26 = [objc_opt_class() specifierForControl:v76];
  if (!v26 || (v86 = v26, [v26 property], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 == 0, v27, v26 = v86, v28))
  {
    v50 = *(*(&v110 + 1) + 24);
  }

  else
  {
    fillMatches = [matchesCopy fillMatches];
    skipMatches = [matchesCopy skipMatches];
    label = [matchesCopy label];
    v29 = [MEMORY[0x1E695DFA8] set];
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v30 = skipMatches;
    v31 = [v30 countByEnumeratingWithState:&v95 objects:v116 count:16];
    if (v31)
    {
      v32 = *v96;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v96 != v32)
          {
            objc_enumerationMutation(v30);
          }

          property = [*(*(&v95 + 1) + 8 * j) property];
          [v29 addObject:property];
        }

        v31 = [v30 countByEnumeratingWithState:&v95 objects:v116 count:16];
      }

      while (v31);
    }

    property2 = [v86 property];
    v83 = [v72 objectForKeyedSubscript:property2];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = fillMatches;
    v36 = [obj countByEnumeratingWithState:&v91 objects:v115 count:16];
    if (v36)
    {
      v81 = 0;
      v82 = *v92;
LABEL_28:
      v84 = v36;
      v37 = 0;
      while (1)
      {
        if (*v92 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v91 + 1) + 8 * v37);
        property3 = [v86 property];
        property4 = [v38 property];
        v41 = [property3 isEqualToString:property4];

        if ((v41 & 1) == 0)
        {
          goto LABEL_41;
        }

        identifier = [v38 identifier];
        v43 = identifier;
        if (!v83 || ([identifier isEqualToString:v83] & 1) != 0)
        {
          v44 = v43;

          v81 = v44;
          component = [v86 component];
          if (!component)
          {
            goto LABEL_39;
          }

          v46 = [v38 key];
          if (!v46)
          {

LABEL_39:
            if ((v78)[2](v78, v38))
            {
              [valuesCopy addEntriesFromDictionary:v118[5]];
              v50 = *(*(&v110 + 1) + 24);

              goto LABEL_67;
            }

            goto LABEL_40;
          }

          component2 = [v86 component];
          v48 = [v38 key];
          v49 = [component2 isEqualToString:v48];

          if (v49)
          {
            goto LABEL_39;
          }
        }

LABEL_40:

LABEL_41:
        if (v84 == ++v37)
        {
          v36 = [obj countByEnumeratingWithState:&v91 objects:v115 count:16];
          if (v36)
          {
            goto LABEL_28;
          }

          goto LABEL_47;
        }
      }
    }

    v81 = 0;
LABEL_47:

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = necessaryCopy;
    v51 = [v85 countByEnumeratingWithState:&v87 objects:v114 count:16];
    if (v51)
    {
      v52 = *v88;
      while (2)
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v85);
          }

          v54 = *(*(&v87 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = v54;
            if (![label length])
            {
              property5 = [v55 property];
              v57 = [v29 containsObject:property5];

              if (v57)
              {
                [v77 addObject:v55];
              }

              else
              {
                identifier2 = [v55 identifier];
                v59 = identifier2;
                if (!v81 || ([identifier2 isEqualToString:v81]) && (!v83 || objc_msgSend(v59, "isEqualToString:", v83)) && (v78)[2](v78, v55))
                {
                  [valuesCopy addEntriesFromDictionary:v118[5]];
                  v50 = *(*(&v110 + 1) + 24);

                  goto LABEL_67;
                }
              }
            }
          }
        }

        v51 = [v85 countByEnumeratingWithState:&v87 objects:v114 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    v50 = *(*(&v110 + 1) + 24);
LABEL_67:

    v26 = v86;
  }

  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v110, 8);

  return v50;
}

uint64_t __268__WBSFormDataController__addMatchesForControl_startingAtIndex_formMetadata_fromExistingMatches_fromAllMatchesIfNecessary_addToFoundMatches_addToAutoFillValues_multiRoundAutoFillManager_propertyToIdentifierMapForFoundMatches_shouldUseExistingMatchesToFillFocusedField___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = *(*(a1 + 88) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 32) addValuesForStandardFormControlsInForm:*(a1 + 40) startingAtIndex:*(a1 + 104) fromAutoFillItem:v3 toDictionary:*(*(*(a1 + 88) + 8) + 40) multiRoundAutoFillManager:*(a1 + 48)];
  if (![*(*(*(a1 + 88) + 8) + 40) count])
  {
    if (!*(a1 + 112) || ([*(a1 + 56) uniqueID], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", *(a1 + 64)), v11, (v12 & 1) != 0))
    {
      v7 = 0;
      goto LABEL_13;
    }

    v7 = 0;
LABEL_12:
    *(*(*(a1 + 96) + 8) + 24) = 1;
    goto LABEL_13;
  }

  if (*(a1 + 112))
  {
    if (*(a1 + 64))
    {
      v7 = [*(*(*(a1 + 88) + 8) + 40) objectForKeyedSubscript:?];

      if (!v7)
      {
        goto LABEL_12;
      }
    }
  }

  [*(a1 + 72) addObject:v3];
  v8 = [v3 identifier];
  if (v8)
  {
    v9 = *(a1 + 80);
    v10 = [v3 property];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  v7 = 1;
LABEL_13:

  return v7;
}

- (void)saveRecentlyUsedAutoFillSetWithMatchesToFill:(id)fill matchesForDoNotFill:(id)notFill
{
  v33 = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  notFillCopy = notFill;
  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = fillCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) dictionaryRepresentationExcludingValue:1];
        [v8 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v10);
  }

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = notFillCopy;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) dictionaryRepresentationExcludingValue:1];
        [array addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v16);
  }

  v29[0] = @"recentlyUsedAutoFillSetArray";
  v29[1] = @"recentlyUsedAutoFillSetDoNotFillArray";
  v30[0] = v8;
  v30[1] = array;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [(WBSFormDataController *)self addRecentlyUsedAutoFillSet:v20 appendToTheEnd:0];
}

- (id)valuesForContactFormWithMetadata:(id)metadata inDomain:(id)domain matches:(id *)matches multiRoundAutoFillManager:(id)manager
{
  v6 = [(WBSFormDataController *)self valuesForContactFormWithMetadata:metadata inDomain:domain matches:matches multiRoundAutoFillManager:manager contact:0];

  return v6;
}

- (id)valuesForContactFormWithMetadata:(id)metadata inDomain:(id)domain matches:(id *)matches multiRoundAutoFillManager:(id)manager contact:(id)contact
{
  LOWORD(v10) = 0;
  LOBYTE(v9) = 1;
  v7 = [(WBSFormDataController *)self _valuesForStandardForm:metadata inDomain:domain autoFillDataType:2 matches:matches preferredLabel:0 multiRoundAutoFillManager:manager wantAllMatches:v9 contact:contact existingMatches:0 shouldUseExistingMatchesToFillFocusedField:v10 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:?];

  return v7;
}

- (id)valuesForContactFormWithMetadata:(id)metadata matches:(id *)matches multiRoundAutoFillManager:(id)manager existingMatches:(id)existingMatches contact:(id)contact
{
  v7 = [(WBSFormDataController *)self valuesForContactFormWithMetadata:metadata matches:matches multiRoundAutoFillManager:manager existingMatches:existingMatches shouldUseExistingMatchesToFillFocusedField:0 contact:contact];

  return v7;
}

- (id)valuesForContactFormWithMetadata:(id)metadata matches:(id *)matches multiRoundAutoFillManager:(id)manager existingMatches:(id)existingMatches shouldUseExistingMatchesToFillFocusedField:(BOOL)field contact:(id)contact
{
  LOWORD(v11) = field;
  LOBYTE(v10) = 1;
  v8 = [(WBSFormDataController *)self _valuesForStandardForm:metadata inDomain:0 autoFillDataType:2 matches:matches preferredLabel:0 multiRoundAutoFillManager:manager wantAllMatches:v10 contact:contact existingMatches:existingMatches shouldUseExistingMatchesToFillFocusedField:v11 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:?];

  return v8;
}

- (id)exactFQDNAndOtherSavedAccountMatchesForForm:(id)form atURL:(id)l webFrameIdentifier:(id)identifier savedAccountContext:(id)context
{
  formCopy = form;
  lCopy = l;
  identifierCopy = identifier;
  contextCopy = context;
  userNameElementUniqueID = [formCopy userNameElementUniqueID];
  if (!userNameElementUniqueID)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v15 = [objc_opt_class() metadataForControlWithUniqueID:userNameElementUniqueID inForm:formCopy];
  v16 = v15;
  if (!v15)
  {
LABEL_9:
    v20 = &stru_1F3A5E418;
    goto LABEL_10;
  }

  value = [v15 value];
  isVisible = [v16 isVisible];
  isReadOnly = [v16 isReadOnly];
  if (isReadOnly & 1 | ((isVisible & 1) == 0) | [v16 claimsToBeUsernameViaAutocompleteAttribute] & 1 && objc_msgSend(value, "length") && (objc_msgSend(value, "hasPrefix:", @"@") & 1) == 0)
  {
    v20 = value;
  }

  else
  {
    v20 = &stru_1F3A5E418;
  }

LABEL_10:
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__13;
  v37 = __Block_byref_object_dispose__13;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  v21 = [objc_alloc(MEMORY[0x1E69C8A58]) initWithString:v20 matchingType:0];
  v22 = [objc_alloc(MEMORY[0x1E69C8A30]) initWithURL:lCopy options:3 userNameQuery:v21 associatedDomainsManager:0 webFrameIdentifier:identifierCopy];
  [v22 setContext:contextCopy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __114__WBSFormDataController_exactFQDNAndOtherSavedAccountMatchesForForm_atURL_webFrameIdentifier_savedAccountContext___block_invoke;
  v26[3] = &unk_1E7FC5DE8;
  v26[4] = &v33;
  v26[5] = &v27;
  [(WBSFormDataController *)self getSavedAccountMatchesWithCriteria:v22 synchronously:1 completionHandler:v26];
  v23 = objc_alloc(MEMORY[0x1E69C88F0]);
  v24 = [v23 initWithFirst:v34[5] second:v28[5]];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v24;
}

void __114__WBSFormDataController_exactFQDNAndOtherSavedAccountMatchesForForm_atURL_webFrameIdentifier_savedAccountContext___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 exactMatches];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v11 potentialMatches];
  v7 = [v11 associatedDomainMatches];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

+ (id)valuesFromUser:(id)user password:(id)password forLoginOrChangePasswordForm:(id)form
{
  userCopy = user;
  passwordCopy = password;
  formCopy = form;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  userNameElementUniqueID = [formCopy userNameElementUniqueID];
  type = [formCopy type];
  if (type == 3)
  {
    passwordElementUniqueID = [formCopy passwordElementUniqueID];
  }

  else
  {
    if (type != 5)
    {
      v14 = 0;
      v15 = v10;
      v10 = 0;
      goto LABEL_16;
    }

    passwordElementUniqueID = [formCopy oldPasswordElementUniqueID];
  }

  v14 = passwordElementUniqueID;
  if (userNameElementUniqueID && [userCopy length])
  {
    [v10 setObject:userCopy forKeyedSubscript:userNameElementUniqueID];
  }

  v15 = 0;
  if (passwordCopy && v14)
  {
    v16 = [objc_opt_class() metadataForControlWithUniqueID:v14 inForm:formCopy];
    if (([v16 isSecureTextField] & 1) == 0)
    {

      passwordCopy = 0;
    }

    if ([passwordCopy length])
    {
      [v10 setObject:passwordCopy forKeyedSubscript:v14];
    }

    v15 = 0;
  }

LABEL_16:

  return v10;
}

- (id)valuesForFormWithMetadata:(id)metadata hideMyEmailRecord:(id)record
{
  v25[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  recordCopy = record;
  v8 = recordCopy;
  if (recordCopy && ![recordCopy state])
  {
    privateEmailAddress = [v8 privateEmailAddress];
    v23 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v11 = objc_alloc(MEMORY[0x1E695CEE0]);
    v12 = *MEMORY[0x1E695CB68];
    v25[0] = [v11 initWithLabel:*MEMORY[0x1E695CB68] value:privateEmailAddress];
    v22 = v25[0];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [v23 setEmailAddresses:v13];

    v14 = v23;
    v15 = [WBSAddressBookMatch alloc];
    identifier = [v14 identifier];
    v17 = [(WBSAddressBookMatch *)v15 initWithValue:privateEmailAddress property:*MEMORY[0x1E69C8AA0] key:0 identifier:identifier label:v12];

    v18 = [WBSRecentlyUsedAutoFillSet alloc];
    v24 = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v20 = [(WBSRecentlyUsedAutoFillSet *)v18 initWithFillMatches:v19 skipMatches:MEMORY[0x1E695E0F0] label:v12];
    v9 = [(WBSFormDataController *)self valuesForContactFormWithMetadata:metadataCopy matches:0 multiRoundAutoFillManager:0 existingMatches:v20 shouldUseExistingMatchesToFillFocusedField:1 contact:v14];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v9;
}

- (id)annotationsFromUsername:(id)username forLoginOrChangePasswordForm:(id)form
{
  v12[1] = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  formCopy = form;
  userNameElementUniqueID = [formCopy userNameElementUniqueID];

  if (userNameElementUniqueID)
  {
    v8 = 0;
  }

  else
  {
    if (usernameCopy)
    {
      v9 = usernameCopy;
    }

    else
    {
      v9 = &stru_1F3A5E418;
    }

    v11 = @"Username";
    v12[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  return v8;
}

- (id)_lastUsedUsernameForDomain:(id)domain
{
  v3 = [(NSMutableDictionary *)self->_domainToLastUsedUsernameAndProtectionSpace objectForKey:domain];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setLastUsedUsername:(id)username andProtectionSpace:(id)space forDomain:(id)domain
{
  v15[2] = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  spaceCopy = space;
  domainCopy = domain;
  domainToLastUsedUsernameAndProtectionSpace = self->_domainToLastUsedUsernameAndProtectionSpace;
  if (!domainToLastUsedUsernameAndProtectionSpace)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_domainToLastUsedUsernameAndProtectionSpace;
    self->_domainToLastUsedUsernameAndProtectionSpace = v12;

    domainToLastUsedUsernameAndProtectionSpace = self->_domainToLastUsedUsernameAndProtectionSpace;
  }

  v15[0] = usernameCopy;
  v15[1] = spaceCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [(NSMutableDictionary *)domainToLastUsedUsernameAndProtectionSpace setObject:v14 forKey:domainCopy];
}

- (id)lastUsedUsernameWithPasswordForURL:(id)l inContext:(id)context
{
  lCopy = l;
  if ([(WBSFormDataController *)self shouldAutoFillPasswords])
  {
    v6 = [WBSFormDataController domainFromURL:lCopy];
    if ([v6 length])
    {
      v7 = [(WBSFormDataController *)self _lastUsedUsernameForDomain:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_knownUsernamesWithPasswordsForURL:(id)l inContext:(id)context
{
  lCopy = l;
  contextCopy = context;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v8 = objc_alloc(MEMORY[0x1E69C8A30]);
  queryThatMatchesEverything = [MEMORY[0x1E69C8A58] queryThatMatchesEverything];
  v10 = [v8 initWithURL:lCopy options:17 userNameQuery:queryThatMatchesEverything associatedDomainsManager:0 webFrameIdentifier:0];

  [v10 setContext:contextCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__WBSFormDataController__knownUsernamesWithPasswordsForURL_inContext___block_invoke;
  v13[3] = &unk_1E7FC5E10;
  v13[4] = &v14;
  [(WBSFormDataController *)self getSavedAccountMatchesWithCriteria:v10 synchronously:1 completionHandler:v13];
  v11 = [v15[5] safari_setByApplyingBlock:&__block_literal_global_235];

  _Block_object_dispose(&v14, 8);

  return v11;
}

void __70__WBSFormDataController__knownUsernamesWithPasswordsForURL_inContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 exactMatches];
  v4 = [v8 potentialMatches];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __70__WBSFormDataController__knownUsernamesWithPasswordsForURL_inContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 user];

  return v2;
}

- (void)didFillPasswordForUsername:(id)username fromProviderWithBundleIdentifier:(id)identifier inTabWithID:(id)d currentURL:(id)l isPrivate:(BOOL)private formMetadata:(id)metadata requester:(id)requester
{
  privateCopy = private;
  usernameCopy = username;
  identifierCopy = identifier;
  dCopy = d;
  lCopy = l;
  metadataCopy = metadata;
  requesterCopy = requester;
  if (!self->_recentAutoFillEvents)
  {
    array = [MEMORY[0x1E695DF70] array];
    recentAutoFillEvents = self->_recentAutoFillEvents;
    self->_recentAutoFillEvents = array;
  }

  if (!self->_keybagCallbackToken)
  {
    mEMORY[0x1E69C88B0] = [MEMORY[0x1E69C88B0] sharedManager];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __141__WBSFormDataController_didFillPasswordForUsername_fromProviderWithBundleIdentifier_inTabWithID_currentURL_isPrivate_formMetadata_requester___block_invoke;
    v32[3] = &unk_1E7FB6F80;
    v32[4] = self;
    v24 = [mEMORY[0x1E69C88B0] addKeyBagLockStatusChangedObserverWithHandler:v32];
    keybagCallbackToken = self->_keybagCallbackToken;
    self->_keybagCallbackToken = v24;
  }

  [(WBSFormDataController *)self _removeExpiredAutoFillEvents:self->_recentAutoFillEvents];
  passwordElementUniqueID = [metadataCopy passwordElementUniqueID];

  v27 = self->_recentAutoFillEvents;
  v28 = [[WBSAutoFillEvent alloc] initWithUsername:usernameCopy tabID:dCopy isPrivateTab:privateCopy url:lCopy providerBundleIdentifier:identifierCopy passwordWasFilled:passwordElementUniqueID != 0];
  [(NSMutableArray *)v27 addObject:v28];

  agentProxy = self->_agentProxy;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(WBSAuthenticationServicesAgentProxy *)agentProxy didFillCredentialForUsername:usernameCopy forURL:lCopy fromProviderWithBundleIdentifier:identifierCopy inBrowserWithBundleIdentifier:bundleIdentifier externalProviderConditionalRegistrationRequester:requesterCopy];
}

void __141__WBSFormDataController_didFillPasswordForUsername_fromProviderWithBundleIdentifier_inTabWithID_currentURL_isPrivate_formMetadata_requester___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __141__WBSFormDataController_didFillPasswordForUsername_fromProviderWithBundleIdentifier_inTabWithID_currentURL_isPrivate_formMetadata_requester___block_invoke_2;
  block[3] = &unk_1E7FB6F80;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __141__WBSFormDataController_didFillPasswordForUsername_fromProviderWithBundleIdentifier_inTabWithID_currentURL_isPrivate_formMetadata_requester___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69C88B0] sharedManager];
  v3 = [v2 keyBagLockStatus];

  if ((v3 - 1) <= 1)
  {
    v4 = *(*(a1 + 32) + 104);

    [v4 removeAllObjects];
  }
}

- (void)canAutomaticallyRegisterPasskeyForUsername:(id)username inTabWithID:(id)d currentURL:(id)l completionHandler:(id)handler
{
  usernameCopy = username;
  dCopy = d;
  lCopy = l;
  handlerCopy = handler;
  LOBYTE(v21) = 0;
  v14 = [[_WBSAutoFillEventMatchingCriteria alloc] initWithUsername:usernameCopy timeInterval:dCopy tabID:lCopy currentURL:0 shouldAllowPrivateTabs:1 shouldRemoveMatchingEvent:1 shouldIncludeExternalCredentialEvents:300.0 onlyEventsWhenPasswordWasFilled:v21];
  if ([(WBSFormDataController *)self _hasAutoFillEventMatchingCriteria:v14])
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_recentAutoFillEvents lastObject];
    if (lastObject)
    {
      host = [lCopy host];
      safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];

      agentProxy = self->_agentProxy;
      v19 = [lastObject url];
      absoluteString = [v19 absoluteString];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __109__WBSFormDataController_canAutomaticallyRegisterPasskeyForUsername_inTabWithID_currentURL_completionHandler___block_invoke;
      v22[3] = &unk_1E7FC5E58;
      v23 = handlerCopy;
      [(WBSAuthenticationServicesAgentProxy *)agentProxy isOrigin:absoluteString relatedToRelyingPartyIdentifier:safari_highLevelDomainForPasswordManager completionHandler:v22];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (BOOL)canApplyAutoFillGracePeriodForUsername:(id)username inTabWithID:(id)d currentURL:(id)l
{
  usernameCopy = username;
  dCopy = d;
  lCopy = l;
  LOBYTE(v13) = 0;
  v11 = [[_WBSAutoFillEventMatchingCriteria alloc] initWithUsername:usernameCopy timeInterval:dCopy tabID:lCopy currentURL:1 shouldAllowPrivateTabs:0 shouldRemoveMatchingEvent:0 shouldIncludeExternalCredentialEvents:60.0 onlyEventsWhenPasswordWasFilled:v13];
  LOBYTE(self) = [(WBSFormDataController *)self _hasAutoFillEventMatchingCriteria:v11];

  return self;
}

- (BOOL)canShowSavedAccountHistoryItemInTabWithID:(id)d currentURL:(id)l
{
  dCopy = d;
  lCopy = l;
  if (([MEMORY[0x1E69C8880] isSavedAccountHistoryInAutoFillEnabled] & 1) != 0 && -[NSMutableArray count](self->_recentAutoFillEvents, "count"))
  {
    lastObject = [(NSMutableArray *)self->_recentAutoFillEvents lastObject];
    username = [lastObject username];

    LOBYTE(v13) = 1;
    v10 = [[_WBSAutoFillEventMatchingCriteria alloc] initWithUsername:username timeInterval:dCopy tabID:lCopy currentURL:0 shouldAllowPrivateTabs:0 shouldRemoveMatchingEvent:0 shouldIncludeExternalCredentialEvents:60.0 onlyEventsWhenPasswordWasFilled:v13];
    v11 = [(WBSFormDataController *)self _hasAutoFillEventMatchingCriteria:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)savedAccountFromMostRecentAutoFillEventOfURL:(id)l
{
  lCopy = l;
  if ([(NSMutableArray *)self->_recentAutoFillEvents count])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__13;
    v16 = __Block_byref_object_dispose__13;
    v17 = 0;
    mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
    v6 = [MEMORY[0x1E69C8A30] criteriaForExactFQDNPasswordMatchesOfURL:lCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__WBSFormDataController_savedAccountFromMostRecentAutoFillEventOfURL___block_invoke;
    v11[3] = &unk_1E7FC5E10;
    v11[4] = &v12;
    [mEMORY[0x1E69C8A38] getSavedAccountsMatchingCriteria:v6 withSynchronousCompletionHandler:v11];
    matchesForPasswordAutoFill = [v13[5] matchesForPasswordAutoFill];
    if ([matchesForPasswordAutoFill count])
    {
      firstObject = [matchesForPasswordAutoFill firstObject];
      savedAccount = [firstObject savedAccount];
    }

    else
    {
      savedAccount = 0;
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    savedAccount = 0;
  }

  return savedAccount;
}

- (BOOL)_hasAutoFillEventMatchingCriteria:(id)criteria
{
  criteriaCopy = criteria;
  if ([(NSMutableArray *)self->_recentAutoFillEvents count])
  {
    [(WBSFormDataController *)self _removeExpiredAutoFillEvents:self->_recentAutoFillEvents];
    [criteriaCopy timeInterval];
    v6 = (v5 * 1000000000.0);
    recentAutoFillEvents = self->_recentAutoFillEvents;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __59__WBSFormDataController__hasAutoFillEventMatchingCriteria___block_invoke;
    v15 = &unk_1E7FC5E80;
    v8 = criteriaCopy;
    v16 = v8;
    v17 = v6;
    v9 = [(NSMutableArray *)recentAutoFillEvents indexOfObjectPassingTest:&v12];
    v10 = v9 != 0x7FFFFFFFFFFFFFFFLL;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && [v8 shouldRemoveMatchingEvent])
    {
      [(NSMutableArray *)self->_recentAutoFillEvents removeObjectAtIndex:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __59__WBSFormDataController__hasAutoFillEventMatchingCriteria___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 username];
  v5 = [*(a1 + 32) username];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 tabID];
    v7 = [*(a1 + 32) tabID];
    if (v6 == v7)
    {
      v15 = [v3 url];
      v14 = [v15 host];
      v9 = [v14 safari_highLevelDomainForPasswordManager];
      v10 = [*(a1 + 32) currentURL];
      v11 = [v10 host];
      v12 = [v11 safari_highLevelDomainForPasswordManager];
      if ([v9 isEqualToString:v12] && objc_msgSend(v3, "timeIntervalSinceTimestamp") <= *(a1 + 40) && ((objc_msgSend(*(a1 + 32), "shouldAllowPrivateTabs") & 1) != 0 || (objc_msgSend(v3, "isPrivateTab") & 1) == 0) && (!objc_msgSend(v3, "isExternalCredentialProviderEvent") || objc_msgSend(*(a1 + 32), "shouldIncludeExternalCredentialEvents")))
      {
        if ([*(a1 + 32) onlyEventsWhenPasswordWasFilled])
        {
          v8 = [v3 passwordWasFilled];
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_removeExpiredAutoFillEvents:(id)events
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSFormDataController__removeExpiredAutoFillEvents___block_invoke;
  v3[3] = &__block_descriptor_40_e33_B32__0__WBSAutoFillEvent_8Q16_B24l;
  v3[4] = 300000000000;
  [events safari_removeObjectsPassingTest:v3];
}

- (id)encryptOrDecryptData:(id)data encrypt:(BOOL)encrypt
{
  v4 = [data copy];

  return v4;
}

- (void)getSavedAccountMatchesWithCriteria:(id)criteria synchronously:(BOOL)synchronously completionHandler:(id)handler
{
  synchronouslyCopy = synchronously;
  criteriaCopy = criteria;
  handlerCopy = handler;
  if ([(WBSFormDataController *)self shouldAutoFillPasswords])
  {
    associatedDomainsManager = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager associatedDomainsManager];
    [criteriaCopy setAssociatedDomainsManager:associatedDomainsManager];

    [MEMORY[0x1E69C8A38] sharedStore];
    if (synchronouslyCopy)
      v10 = {;
      [v10 getSavedAccountsMatchingCriteria:criteriaCopy withSynchronousCompletionHandler:handlerCopy];
    }

    else
      v10 = {;
      [v10 savedAccountsMatchingCriteria:criteriaCopy withCompletionHandler:handlerCopy];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)metadataOfActiveFormOrBestFormForPageLevelAutoFill:(id)fill frame:(OpaqueFormAutoFillFrame *)frame
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSFormDataController_metadataOfActiveFormOrBestFormForPageLevelAutoFill_frame___block_invoke;
  v7[3] = &unk_1E7FC5EC8;
  v7[4] = &v8;
  v7[5] = &v14;
  [fill enumerateFormsUsingBlock:v7];
  if (frame)
  {
    *frame = v15[3];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __82__WBSFormDataController_metadataOfActiveFormOrBestFormForPageLevelAutoFill_frame___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([v8 containsActiveElement])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }

  else if ([v8 isBestForPageLevelAutoFill])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (id)metadataOfActiveFormOrBestFormForPageLevelAutoFill:(id)fill frameHandle:(id *)handle
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSFormDataController_metadataOfActiveFormOrBestFormForPageLevelAutoFill_frameHandle___block_invoke;
  v7[3] = &unk_1E7FC5EF0;
  v7[4] = &v8;
  v7[5] = &v14;
  [fill enumerateFormsAndFramesUsingBlock:v7];
  if (handle)
  {
    *handle = v15[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __88__WBSFormDataController_metadataOfActiveFormOrBestFormForPageLevelAutoFill_frameHandle___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 containsActiveElement])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  else if ([v8 isBestForPageLevelAutoFill])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)metadataOfBestFormForStreamlinedLogin:(id)login frame:(OpaqueFormAutoFillFrame *)frame
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WBSFormDataController_metadataOfBestFormForStreamlinedLogin_frame___block_invoke;
  v7[3] = &unk_1E7FC5EC8;
  v7[4] = &v8;
  v7[5] = &v14;
  [login enumerateFormsUsingBlock:v7];
  if (frame)
  {
    *frame = v15[3];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __69__WBSFormDataController_metadataOfBestFormForStreamlinedLogin_frame___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([v8 isBestForStreamlinedLogin])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

- (id)metadataOfBestFormForStreamlinedLogin:(id)login frameHandle:(id *)handle
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSFormDataController_metadataOfBestFormForStreamlinedLogin_frameHandle___block_invoke;
  v7[3] = &unk_1E7FC5EF0;
  v7[4] = &v8;
  v7[5] = &v14;
  [login enumerateFormsAndFramesUsingBlock:v7];
  if (handle)
  {
    *handle = v15[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __75__WBSFormDataController_metadataOfBestFormForStreamlinedLogin_frameHandle___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 isBestForStreamlinedLogin])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (BOOL)isUsernameFieldInLoginFormWithTextFieldMetadata:(id)metadata formMetadata:(id)formMetadata
{
  metadataCopy = metadata;
  formMetadataCopy = formMetadata;
  if ([formMetadataCopy type] == 3)
  {
    userNameElementUniqueID = [formMetadataCopy userNameElementUniqueID];
    uniqueID = [metadataCopy uniqueID];
    v9 = [userNameElementUniqueID isEqualToString:uniqueID];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isPasswordFieldForUserCredentialsWithMetadata:(id)metadata formMetadata:(id)formMetadata
{
  metadataCopy = metadata;
  formMetadataCopy = formMetadata;
  type = [formMetadataCopy type];
  if ((type - 6) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    uniqueID = [metadataCopy uniqueID];
    classification = [metadataCopy classification];
    v11 = WBSIsEqual();

    if (v11 & 1) != 0 || ([formMetadataCopy passwordElementUniqueID], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", uniqueID), v12, (v13))
    {
      v8 = 1;
    }

    else if (type == 3)
    {
      v8 = 0;
    }

    else
    {
      confirmPasswordElementUniqueID = [formMetadataCopy confirmPasswordElementUniqueID];
      v8 = [confirmPasswordElementUniqueID isEqualToString:uniqueID];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateLastUsedUsernameAndExtractUsernameAndPasswordFromForm:(id)form shouldPreferAnnotatedCredentials:(BOOL)credentials atURL:(id)l username:(id *)username password:(id *)password inContext:(id)context
{
  credentialsCopy = credentials;
  formCopy = form;
  lCopy = l;
  contextCopy = context;
  *username = 0;
  *password = 0;
  if ([(WBSFormDataController *)self shouldAutoFillPasswords]|| self->_shouldShowPasswordsAppOnboarding)
  {
    *username = [(WBSFormDataController *)self extractUserNameFromForm:formCopy atURL:lCopy inContext:contextCopy updateLastUsedUserName:1];
    *password = [(WBSFormDataController *)self extractPasswordFromForm:formCopy shouldPreferAnnotatedCredentials:credentialsCopy];
  }
}

- (id)extractUserNameFromForm:(id)form atURL:(id)l inContext:(id)context
{
  v5 = [(WBSFormDataController *)self extractUserNameFromForm:form atURL:l inContext:context updateLastUsedUserName:0];

  return v5;
}

- (id)extractUserNameFromForm:(id)form atURL:(id)l inContext:(id)context updateLastUsedUserName:(BOOL)name
{
  nameCopy = name;
  v55 = *MEMORY[0x1E69E9840];
  formCopy = form;
  lCopy = l;
  contextCopy = context;
  v43 = formCopy;
  userNameElementUniqueID = [formCopy userNameElementUniqueID];
  selfCopy = self;
  v38 = [objc_opt_class() domainFromURL:lCopy];
  if (![v38 length])
  {
    v49 = 0;
    goto LABEL_56;
  }

  v41 = [MEMORY[0x1E695DFA8] set];
  annotations = [formCopy annotations];
  v37 = [annotations safari_stringForKey:@"Username"];
  if (v37)
  {
    [v41 addObject:v37];
  }

  v11 = [(WBSFormDataController *)self _knownUsernamesWithPasswordsForURL:lCopy inContext:contextCopy];
  [v41 unionSet:v11];

  if (![userNameElementUniqueID length])
  {
    goto LABEL_45;
  }

  passwordElementUniqueID = [objc_opt_class() metadataForControlWithUniqueID:userNameElementUniqueID inForm:formCopy];
  value = [passwordElementUniqueID value];
  if ([v41 containsObject:?])
  {
    v12 = value;
    goto LABEL_41;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v41;
  v13 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  v35 = nameCopy;
  if (!v13)
  {
    v16 = value;
    goto LABEL_40;
  }

  v46 = *v51;
  do
  {
    v14 = 0;
    do
    {
      if (*v51 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v50 + 1) + 8 * v14);
      v16 = value;
      v17 = v15;
      v18 = passwordElementUniqueID;
      if (([v16 isEqualToString:v17] & 1) != 0 || (v19 = objc_msgSend(v16, "length"), v20 = objc_msgSend(v17, "length"), !v19) || (v21 = v20) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }

      if (v19 == v20)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = [v16 characterAtIndex:v22];
          v25 = [v17 characterAtIndex:v22];
          if ((v24 != 42 || v25 == 42) && (v24 != 8226 || v25 == 8226))
          {
            if (v24 != v25)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v23 = 1;
          }

          ++v22;
        }

        while (v19 != v22);

        if (v23)
        {
LABEL_38:
          v31 = v17;

          v16 = v31;
          goto LABEL_40;
        }
      }

      else
      {
        isUserEditedTextField = [v18 isUserEditedTextField];
        if (v19 <= v21 + 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = isUserEditedTextField;
        }

        if (v27)
        {
          goto LABEL_14;
        }

        v28 = [@"_" stringByAppendingString:v17];
        v29 = [v16 hasSuffix:v28];

        if (v29)
        {
          goto LABEL_38;
        }
      }

LABEL_15:
      ++v14;
    }

    while (v14 != v13);
    v30 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    v13 = v30;
  }

  while (v30);
LABEL_40:

  v12 = v16;
  nameCopy = v35;
LABEL_41:
  v49 = v12;
  if ([v12 length])
  {
    if (nameCopy)
    {
      v32 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:lCopy];
      [(WBSFormDataController *)selfCopy _setLastUsedUsername:v49 andProtectionSpace:v32 forDomain:v38];
      goto LABEL_53;
    }

    goto LABEL_54;
  }

LABEL_45:
  if ([v37 length])
  {
    v49 = v37;
  }

  else
  {
    passwordElementUniqueID = [v43 passwordElementUniqueID];
    v32 = [objc_opt_class() metadataForControlWithUniqueID:passwordElementUniqueID inForm:v43];
    associatedUsername = [v32 associatedUsername];
    if ([associatedUsername length])
    {
      v49 = associatedUsername;
      associatedUsername = 0;
    }

    else if ([v43 type] == 4)
    {
      v49 = 0;
    }

    else
    {
      v49 = [(WBSFormDataController *)selfCopy lastUsedUsernameWithPasswordForURL:lCopy inContext:contextCopy];
    }

LABEL_53:
LABEL_54:
  }

LABEL_56:

  return v49;
}

- (id)extractPasswordFromForm:(id)form shouldPreferAnnotatedCredentials:(BOOL)credentials
{
  formCopy = form;
  annotations = [formCopy annotations];
  v25 = annotations;
  passwordElementUniqueID = [formCopy passwordElementUniqueID];
  v9 = [objc_opt_class() metadataForControlWithUniqueID:passwordElementUniqueID inForm:formCopy];
  value = [v9 value];
  if (credentials)
  {
    v11 = @"NewPassword";
  }

  else
  {
    v11 = [(WBSFormDataController *)self _keyToLookUpInAnnotationsForPasswordForFormMetadata:formCopy];
  }

  v12 = v11;
  v13 = [annotations safari_stringForKey:v11];
  v14 = value;
  v15 = v13;
  v16 = v9;
  if (([v14 isEqualToString:v15] & 1) == 0 && (v18 = objc_msgSend(v14, "length"), v19 = objc_msgSend(v15, "length"), v18) && v19 && v18 == v19)
  {
    if (([v16 isUserEditedTextField] & 1) == 0)
    {
      v26 = 0;
      v20 = [MEMORY[0x1E696AE88] scannerWithString:v14];
      [v20 scanInteger:&v26];
      isAtEnd = [v20 isAtEnd];

      if (isAtEnd)
      {

LABEL_21:
        v24 = v15;

        v14 = v24;
        goto LABEL_6;
      }
    }

    safari_looksLikeObscuredPassword = [v14 safari_looksLikeObscuredPassword];

    if (safari_looksLikeObscuredPassword)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_6:
  if (credentials || ![v14 length] && v15)
  {
    v17 = v14;
    v14 = v15;
  }

  else
  {

    v17 = 0;
  }

  return v14;
}

- (id)_keyToLookUpInAnnotationsForPasswordForFormMetadata:(id)metadata
{
  if (([metadata type] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = WBSFormAnnotationNewPasswordKey;
  }

  else
  {
    v3 = WBSFormAnnotationCurrentPasswordKey;
  }

  v4 = *v3;

  return v4;
}

- (id)savedAccountUsingDomainsToConsiderIdenticalWithUsername:(id)username url:(id *)url host:(id *)host
{
  v28 = *MEMORY[0x1E69E9840];
  autoFillQuirksManager = [(WBSFormDataController *)self autoFillQuirksManager];
  associatedDomainsManager = [autoFillQuirksManager associatedDomainsManager];
  v8 = [associatedDomainsManager domainsToConsiderIdenticalToDomain:*host];

  v21 = [MEMORY[0x1E696AF20] componentsWithURL:*url resolvingAgainstBaseURL:1];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  savedAccounts = [mEMORY[0x1E69C8A38] savedAccounts];

  v11 = [savedAccounts countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(savedAccounts);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [MEMORY[0x1E695DFA8] set];
        sites = [v14 sites];
        [v15 addObjectsFromArray:sites];

        [v15 intersectSet:v8];
        if ([v15 count])
        {
          anyObject = [v15 anyObject];
          [v21 setHost:anyObject];
          *url = [v21 URL];
          v19 = anyObject;
          *host = anyObject;
          v17 = v14;

          goto LABEL_11;
        }
      }

      v11 = [savedAccounts countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)autoGeneratedPasswordForURL:(id)l respectingPasswordRequirements:(id)requirements maxLength:(unint64_t)length
{
  lCopy = l;
  requirementsCopy = requirements;
  autoFillQuirksManager = [(WBSFormDataController *)self autoFillQuirksManager];
  passwordGenerationManager = [autoFillQuirksManager passwordGenerationManager];

  if ([requirementsCopy count])
  {
    v12 = requirementsCopy;
  }

  else
  {
    v12 = [passwordGenerationManager defaultRequirementsForURL:lCopy];
  }

  v13 = v12;
  v14 = [passwordGenerationManager updatedRequirements:v12 respectingMaxLength:length];

  v15 = [passwordGenerationManager generatedPasswordMatchingRequirements:v14];

  return v15;
}

+ (id)contactKeyForString:(id)string
{
  v20[12] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  {
    v4 = +[WBSFormDataController contactKeyForString:]::map;
  }

  else
  {
    v7 = *MEMORY[0x1E695C360];
    v19[0] = @"Address";
    v19[1] = @"Birthday";
    v8 = *MEMORY[0x1E695C1D0];
    v20[0] = v7;
    v20[1] = v8;
    v9 = *MEMORY[0x1E695C208];
    v19[2] = @"Email";
    v19[3] = @"First";
    v10 = *MEMORY[0x1E695C240];
    v20[2] = v9;
    v20[3] = v10;
    v11 = *MEMORY[0x1E695C2B0];
    v19[4] = @"InstantMessage";
    v19[5] = @"JobTitle";
    v12 = *MEMORY[0x1E695C2C8];
    v20[4] = v11;
    v20[5] = v12;
    v13 = *MEMORY[0x1E695C230];
    v19[6] = @"Last";
    v19[7] = @"Middle";
    v14 = *MEMORY[0x1E695C2F0];
    v20[6] = v13;
    v20[7] = v14;
    v15 = *MEMORY[0x1E695C328];
    v19[8] = @"Organization";
    v19[9] = @"Phone";
    v16 = *MEMORY[0x1E695C330];
    v20[8] = v15;
    v20[9] = v16;
    v17 = *MEMORY[0x1E695C418];
    v18 = *MEMORY[0x1E69C8AD8];
    v19[10] = @"URLs";
    v19[11] = v18;
    v20[10] = v17;
    v20[11] = v18;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:12];
    +[WBSFormDataController contactKeyForString:]::map = v4;
  }

  v5 = [v4 objectForKeyedSubscript:stringCopy];

  return v5;
}

- (id)addressBookMatchesForFullNameForContact:(id)contact
{
  v10[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  if ([v4 length])
  {
    v5 = [WBSAddressBookMatch alloc];
    identifier = [contactCopy identifier];
    v7 = [(WBSAddressBookMatch *)v5 initWithValue:v4 property:*MEMORY[0x1E69C8AD8] key:0 identifier:0 label:0 uniqueID:identifier];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)textFieldMetadataMeetsRequirementsForAutomaticStrongPasswordTreatment:(id)treatment form:(id)form
{
  treatmentCopy = treatment;
  formCopy = form;
  v7 = formCopy;
  v8 = 0;
  if (treatmentCopy && formCopy)
  {
    classification = [treatmentCopy classification];
    v10 = [classification isEqualToString:@"new-password"];

    if ((v10 & 1) != 0 && (v11 = [treatmentCopy maxLength], v11 >= objc_msgSend(MEMORY[0x1E69C8970], "minimumPasswordLength")))
    {
      value = [treatmentCopy value];
      v8 = [value length] == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)textFieldIsEligibleForAutomaticStrongPassword:(id)password form:(id)form ignorePreviousDecision:(BOOL)decision textFieldCurrentlyContainsStrongPassword:(BOOL *)strongPassword
{
  passwordCopy = password;
  formCopy = form;
  autoFillButtonType = [passwordCopy autoFillButtonType];
  if (strongPassword)
  {
    *strongPassword = autoFillButtonType == 3;
  }

  if (autoFillButtonType == 3)
  {
    decision = 1;
  }

  else if ([(WBSFormDataController *)self textFieldMetadataMeetsRequirementsForAutomaticStrongPasswordTreatment:passwordCopy form:formCopy])
  {
    if ([passwordCopy lastAutoFillButtonType] != 3)
    {
      decision = 1;
    }
  }

  else
  {
    decision = 0;
  }

  return decision;
}

- (BOOL)frameIsKnownToAskForCredentialsFromOtherServicesFromAncestorFrameURLs:(id)ls
{
  lsCopy = ls;
  if ([lsCopy count] >= 2)
  {
    firstObject = [lsCopy firstObject];
    lastObject = [lsCopy lastObject];
    host = [firstObject host];
    safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];

    host2 = [lastObject host];
    safari_highLevelDomainForPasswordManager2 = [host2 safari_highLevelDomainForPasswordManager];
    v12 = [safari_highLevelDomainForPasswordManager isEqualToString:safari_highLevelDomainForPasswordManager2];

    if (v12)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(WBSAutoFillQuirksManager *)self->_autoFillQuirksManager isDomainKnownToAskForCredentialsForOtherServicesWhenEmbeddedAsThirdParty:safari_highLevelDomainForPasswordManager];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)password:(id)password shouldBeConsideredEqualToExistingPassword:(id)existingPassword
{
  passwordCopy = password;
  existingPasswordCopy = existingPassword;
  v7 = ([passwordCopy isEqualToString:existingPasswordCopy] & 1) != 0 || +[WBSFormDataController _password:appearsToBeASixDigitCodeAppendedToPassword:](WBSFormDataController, "_password:appearsToBeASixDigitCodeAppendedToPassword:", passwordCopy, existingPasswordCopy) || +[WBSFormDataController _password:appearsToBeMoreThanOneSymbolAppendedToPassword:](WBSFormDataController, "_password:appearsToBeMoreThanOneSymbolAppendedToPassword:", passwordCopy, existingPasswordCopy);

  return v7;
}

+ (BOOL)_password:(id)_password appearsToBeASixDigitCodeAppendedToPassword:(id)password
{
  _passwordCopy = _password;
  passwordCopy = password;
  if ([passwordCopy length] && !objc_msgSend(_passwordCopy, "rangeOfString:", passwordCopy))
  {
    v9 = [_passwordCopy substringFromIndex:v7];
    if ([v9 length] == 6)
    {
      decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      invertedSet = [decimalDigitCharacterSet invertedSet];

      v8 = [v9 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_password:(id)_password appearsToBeMoreThanOneSymbolAppendedToPassword:(id)password
{
  v24[2] = *MEMORY[0x1E69E9840];
  _passwordCopy = _password;
  passwordCopy = password;
  if ([passwordCopy length] && objc_msgSend(_passwordCopy, "length") && !objc_msgSend(_passwordCopy, "rangeOfString:", passwordCopy))
  {
    v10 = [_passwordCopy substringFromIndex:v7];
    if ([v10 length] >= 2)
    {
      v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"@"];
      v24[0] = v11;
      v12 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*"];
      v24[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = v13;
      v8 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v15 = *v20;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v14);
            }

            v17 = [v10 stringByTrimmingCharactersInSet:{*(*(&v19 + 1) + 8 * i), v19}];
            v18 = [v17 length] == 0;

            if (v18)
            {
              LOBYTE(v8) = 1;
              goto LABEL_18;
            }
          }

          v8 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)isFieldUnidentified:(id)unidentified
{
  unidentifiedCopy = unidentified;
  classification = [unidentifiedCopy classification];
  addressBookLabel = [unidentifiedCopy addressBookLabel];
  if (addressBookLabel || (WBSIsEqual() & 1) != 0 || (WBSIsEqual() & 1) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = WBSIsEqual() ^ 1;
  }

  return v6;
}

- (void)getFormFieldValues:(os_log_t)log andFieldToFocus:withSingleCreditCardData:inField:inForm:.cold.3(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Found %lu controls, but expected 3 or fewer.", buf, 0xCu);
}

@end