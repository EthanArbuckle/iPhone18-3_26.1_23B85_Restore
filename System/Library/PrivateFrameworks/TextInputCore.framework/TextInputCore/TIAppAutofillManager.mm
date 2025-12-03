@interface TIAppAutofillManager
+ (BOOL)_simulatesAutofillCandidates;
+ (BOOL)isSuggestingStrongPasswordsAvailable;
+ (id)sharedInstance;
+ (void)_fetchCredentialsWithPasskeyProvider:(id)provider autofillContext:(id)context textContentType:(id)type applicationIdentifier:(id)identifier auditToken:(id *)token completion:(id)completion;
+ (void)getCredentialsWithApplicationIdentifier:(id)identifier autofillContext:(id)context withCompletionHandler:(id)handler;
+ (void)setSharedAppAutofillManager:(id)manager;
- (BOOL)hasAutofillContextEntitlementForConnection:(id)connection;
- (BOOL)hasCoreTelephonyEntitlementForConnection:(id)connection;
- (BOOL)isValidedString:(id)string;
- (BOOL)shouldAuthenticateToAcceptAutofill;
- (id)_autoFillPayloadForPasskey:(id)passkey keyboardInfoType:(unint64_t *)type;
- (id)_autoFillPayloadForPasswordCredential:(id)credential keyboardInfoType:(unint64_t *)type;
- (id)_secureCandidateForPasskey:(id)passkey fromLocalizedStringKey:(id)key;
- (id)_secureCandidateForPasswordCredential:(id)credential fromLocalizedStringKey:(id)key;
- (id)customInfoFromCredential:(id)credential;
- (id)generateCellularCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state;
- (id)generateOneTimeCodeCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state;
- (id)initPrivate;
- (id)localizedCellularAutofillStringForKey:(id)key defaultValue:(id)value;
- (void)_acceptOneTimeCode:(id)code;
- (void)_finishAutofillFormCandidatesOnMainThreadWithCredentials:(id)credentials renderTraits:(id)traits documentIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completion:(id)completion;
- (void)generateAutofillFormCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state completion:(id)completion;
- (void)generateAutofillFormSuggestedUsernameWithRenderTraits:(id)traits withKeyboardState:(id)state completionHandler:(id)handler;
- (void)generateHideMyEmailCandidateWithSlotID:(unsigned int)d applicationBundleId:(id)id applicationId:(id)applicationId keyboardState:(id)state secureCandidateWidth:(double)width secureCandidateHash:(unint64_t)hash isSecureCandidateDoubleLines:(BOOL)lines completionHandler:(id)self0;
- (void)generateJustHMEAutofillFormSuggestionWithRenderTraits:(id)traits withKeyboardState:(id)state applicationID:(id)d applicationBundleID:(id)iD completionHandler:(id)handler;
- (void)obtainCredential:(id)credential;
- (void)oneTimeCodeProvider:(id)provider didUpdateOneTimeCode:(id)code;
- (void)oneTimeCodeProviderReceivedCode:(id)code;
- (void)presentHideMyEmailUI:(id)i keyboardState:(id)state completion:(id)completion;
- (void)pushQueuedCredentialIfNecessaryForKeyboardState:(id)state;
- (void)shouldAcceptAutofill:(id)autofill withPayload:(id)payload completion:(id)completion;
- (void)shouldAcceptOneTimeCode:(id)code completion:(id)completion;
@end

@implementation TIAppAutofillManager

+ (id)sharedInstance
{
  v2 = __testingInstance;
  if (!__testingInstance)
  {
    p_cache = TICoreAnalyticsEventDispatcher.cache;
    v2 = instance;
    if (!instance)
    {
      if (sharedInstance_onceToken != -1)
      {
        dispatch_once(&sharedInstance_onceToken, &__block_literal_global_137);
        p_cache = (TICoreAnalyticsEventDispatcher + 16);
      }

      v2 = p_cache[243];
    }
  }

  v4 = v2;

  return v4;
}

- (id)_autoFillPayloadForPasskey:(id)passkey keyboardInfoType:(unint64_t *)type
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F8F0];
  *type = 2056;
  v10 = *v4;
  v11[0] = passkey;
  v5 = MEMORY[0x277CBEAC0];
  passkeyCopy = passkey;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_secureCandidateForPasskey:(id)passkey fromLocalizedStringKey:(id)key
{
  v27 = *MEMORY[0x277D85DE8];
  passkeyCopy = passkey;
  keyCopy = key;
  username = [passkeyCopy username];
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v10 = [secureCandidateRenderer localizedStringForKey:keyCopy];

  v11 = MEMORY[0x277CCACA8];
  v24 = 0;
  relyingPartyIdentifier = [passkeyCopy relyingPartyIdentifier];
  v13 = [v11 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v24, relyingPartyIdentifier];
  v14 = v24;
  v15 = &stru_283FDFAF8;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  if (objc_opt_respondsToSelector())
  {
    customTitle = [passkeyCopy customTitle];

    if (customTitle)
    {
      customTitle2 = [passkeyCopy customTitle];

      v16 = customTitle2;
    }
  }

  if (v14)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v19 = TIOSLogFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key %@: %@", "-[TIAppAutofillManager _secureCandidateForPasskey:fromLocalizedStringKey:]", keyCopy, v14];
      *buf = 138412290;
      v26 = v23;
      _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v20 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v16 secureContent:username secureFormattedContent:username input:&stru_283FDFAF8 truncationSentinel:0];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_autoFillPayloadForPasswordCredential:(id)credential keyboardInfoType:(unint64_t *)type
{
  credentialCopy = credential;
  user = [credentialCopy user];
  password = [credentialCopy password];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([credentialCopy isExternal])
  {
    *type = 264;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:credentialCopy requiringSecureCoding:1 error:0];
    v10 = MEMORY[0x277D6F8D0];
LABEL_12:
    [dictionary setObject:v9 forKey:*v10];
    goto LABEL_13;
  }

  *type = 24;
  if (user)
  {
    [dictionary setObject:user forKey:*MEMORY[0x277D6F918]];
  }

  if (password)
  {
    [dictionary setObject:password forKey:*MEMORY[0x277D6F8F8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [credentialCopy requestedHost];
  }

  else
  {
    [credentialCopy site];
  }
  v9 = ;
  if (v9)
  {
    v10 = MEMORY[0x277D6F8D8];
    goto LABEL_12;
  }

LABEL_13:

  return dictionary;
}

- (id)_secureCandidateForPasswordCredential:(id)credential fromLocalizedStringKey:(id)key
{
  v47 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  keyCopy = key;
  user = [credentialCopy user];
  site = [credentialCopy site];
  customTitle = [credentialCopy customTitle];
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277D49DF0] textSuggestionHeaderForCredential:credentialCopy];
LABEL_3:
    v12 = v11;
    goto LABEL_23;
  }

  if ([credentialCopy isExternal] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [MEMORY[0x277D49DF0] textSuggestionHeaderForExternalCredential:credentialCopy];
    goto LABEL_3;
  }

  v13 = [(__CFString *)site length];
  v14 = site;
  if (!v13)
  {
    if ([(__CFString *)customTitle length])
    {
      v14 = customTitle;
    }

    else
    {
      v14 = &stru_283FDFAF8;
    }
  }

  v15 = v14;
  v16 = [(__CFString *)v15 length];
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v18 = secureCandidateRenderer;
  if (v16)
  {
    v41 = keyCopy;
    v19 = [secureCandidateRenderer localizedStringForKey:keyCopy];

    v44 = 0;
    v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v44, v15];
    v21 = v44;
    v22 = &stru_283FDFAF8;
    v23 = v21;
    if (v20)
    {
      v22 = v20;
    }

    v12 = v22;

    if (v23)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v24 = TIOSLogFacility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key %@: %@", "-[TIAppAutofillManager _secureCandidateForPasswordCredential:fromLocalizedStringKey:]", v41, v23];
        *buf = 138412290;
        v46 = v40;
        _os_log_debug_impl(&dword_22CA55000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    keyCopy = v41;
  }

  else
  {
    v12 = [secureCandidateRenderer localizedStringForKey:@"AUTOFILL_SAVED_PASSWORD_TITLE"];
  }

LABEL_23:
  if (![user length])
  {
    creationDate = [credentialCopy creationDate];

    if (creationDate)
    {
      v42 = keyCopy;
      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v27 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_CREDENTIAL_DATE"];

      v28 = MEMORY[0x277CCA968];
      creationDate2 = [credentialCopy creationDate];
      v30 = [v28 localizedStringFromDate:creationDate2 dateStyle:1 timeStyle:0];

      v43 = 0;
      v31 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:&v43, v30];
      v32 = v43;
      v33 = &stru_283FDFAF8;
      if (v31)
      {
        v33 = v31;
      }

      v34 = v33;

      if (v32)
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v35 = TIOSLogFacility();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key SAFARI_CREDENTIAL_DATE: %@", "-[TIAppAutofillManager _secureCandidateForPasswordCredential:fromLocalizedStringKey:]", v32];
          *buf = 138412290;
          v46 = v39;
          _os_log_debug_impl(&dword_22CA55000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      user = v34;
      keyCopy = v42;
    }
  }

  v36 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v12 secureContent:user secureFormattedContent:user input:&stru_283FDFAF8 truncationSentinel:0];

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)oneTimeCodeProvider:(id)provider didUpdateOneTimeCode:(id)code
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D6F8E0];
  v10[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = +[TIKeyboardInputManagerLoader sharedLoader];
  interactingConnection = [v5 interactingConnection];

  if (interactingConnection)
  {
    remoteObjectProxy = [interactingConnection remoteObjectProxy];
    [remoteObjectProxy processPayloadInfo:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)oneTimeCodeProviderReceivedCode:(id)code
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D6F8E0];
  v9[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  interactingConnection = [v4 interactingConnection];

  if (interactingConnection)
  {
    remoteObjectProxy = [interactingConnection remoteObjectProxy];
    [remoteObjectProxy processPayloadInfo:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)presentHideMyEmailUI:(id)i keyboardState:(id)state completion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CF02A0]);
  altDSID = [iCopy altDSID];
  if (!altDSID)
  {
    goto LABEL_6;
  }

  v10 = altDSID;
  applicationKey = [iCopy applicationKey];
  if (!applicationKey)
  {

    goto LABEL_6;
  }

  v12 = applicationKey;
  applicationBundleId = [iCopy applicationBundleId];

  if (!applicationBundleId)
  {
LABEL_6:
    completionCopy[2](completionCopy, 0);
    goto LABEL_7;
  }

  v14 = objc_alloc(MEMORY[0x277CF0298]);
  applicationKey2 = [iCopy applicationKey];
  altDSID2 = [iCopy altDSID];
  applicationBundleId2 = [iCopy applicationBundleId];
  v18 = [v14 initWithKey:applicationKey2 altDSID:altDSID2 clientAppBundleId:applicationBundleId2];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__TIAppAutofillManager_presentHideMyEmailUI_keyboardState_completion___block_invoke;
  v19[3] = &unk_27872EF20;
  v20 = completionCopy;
  [v8 fetchPrivateEmailWithContext:v18 completion:v19];

LABEL_7:
}

void __70__TIAppAutofillManager_presentHideMyEmailUI_keyboardState_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_alloc(MEMORY[0x277D6F3D8]);
    v9 = [v5 privateEmailAddress];
    v10 = [v8 initWithCandidate:v9];

    [v10 setCustomInfoType:1024];
    v16 = *(a1 + 32);
    v11 = v10;
    TIDispatchAsync();

LABEL_7:
    goto LABEL_8;
  }

  if (v6)
  {
    v12 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: UI service returned error: %@", "-[TIAppAutofillManager presentHideMyEmailUI:keyboardState:completion:]_block_invoke", v7];
      *buf = 138412290;
      v18 = v14;
      _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    TIDispatchAsync();
    v11 = v15;
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_acceptOneTimeCode:(id)code
{
  if (code)
  {
    codeCopy = code;
    [(TIAppAutofillManager *)self setLastAutofilledUsername:0];
    customInfoType = [codeCopy customInfoType];

    if (customInfoType == 64)
    {
      [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider consumeCurrentOneTimeCode];
    }

    oneTimeCodeProvider = self->_oneTimeCodeProvider;

    [(SFAppAutoFillOneTimeCodeProvider *)oneTimeCodeProvider removeObserverForOneTimeCode:self];
  }
}

- (void)shouldAcceptOneTimeCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if (completionCopy)
  {
    if (![codeCopy isOneTimeCodeThatRequiresAuthentication])
    {
      goto LABEL_7;
    }

    laContext = [(TIAppAutofillManager *)self laContext];

    if (!laContext)
    {
      v9 = objc_alloc_init(getLAContextClass());
      [(TIAppAutofillManager *)self setLaContext:v9];
    }

    laContext2 = [(TIAppAutofillManager *)self laContext];
    v11 = [laContext2 canEvaluatePolicy:1 error:0];

    if (v11)
    {
      secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v13 = [secureCandidateRenderer localizedStringForKey:@"TOTP_AUTOFILL_AUTH_ALERT_TITLE"];

      laContext3 = [(TIAppAutofillManager *)self laContext];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke;
      v15[3] = &unk_27872EEF8;
      v17 = completionCopy;
      v15[4] = self;
      v16 = codeCopy;
      [laContext3 evaluatePolicy:1 localizedReason:v13 reply:v15];
    }

    else
    {
LABEL_7:
      (*(completionCopy + 2))(completionCopy, 1);
      [(TIAppAutofillManager *)self _acceptOneTimeCode:codeCopy];
    }
  }
}

void __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke(uint64_t a1, char a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke_2;
  v7[3] = &unk_2787305A8;
  v4 = *(a1 + 48);
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _acceptOneTimeCode:v5];
  }

  return result;
}

- (void)shouldAcceptAutofill:(id)autofill withPayload:(id)payload completion:(id)completion
{
  v105 = *MEMORY[0x277D85DE8];
  autofillCopy = autofill;
  payloadCopy = payload;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    if (autofillCopy)
    {
      v77 = completionCopy;
      customInfoType = [autofillCopy customInfoType];
      if (customInfoType == 24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D6F918]];
        [(TIAppAutofillManager *)self setLastAutofilledUsername:v13];

        v14 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D6F8D8]];
      }

      else
      {
        v14 = 0;
      }

      customInfoType2 = [autofillCopy customInfoType];
      v16 = customInfoType2 == 264;
      v78 = payloadCopy;
      selfCopy = self;
      if (customInfoType2 == 264 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D6F8D0]];
        if (v17)
        {
          v74 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:0];
        }

        else
        {
          v74 = 0;
        }
      }

      else
      {
        v74 = 0;
      }

      customInfoType3 = [autofillCopy customInfoType];
      v75 = autofillCopy;
      customInfoType4 = [autofillCopy customInfoType];
      currentConnection = [MEMORY[0x277CCAE80] currentConnection];
      v21 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke;
      aBlock[3] = &unk_27872EEA8;
      v92 = customInfoType == 24;
      aBlock[4] = selfCopy;
      v22 = v14;
      v88 = v22;
      v93 = v16;
      v23 = v21;
      v25 = customInfoType == 24 || customInfoType3 == 512;
      v73 = v23;
      v89 = v23;
      v94 = customInfoType4 == 2056;
      v26 = customInfoType4 == 2056 || v25;
      payloadCopy = v78;
      v72 = v78;
      v90 = v72;
      v11 = v77;
      v91 = v77;
      v76 = _Block_copy(aBlock);
      if (![(TIAppAutofillManager *)selfCopy shouldAuthenticateToAcceptAutofill]|| !v26)
      {
        v37 = v76;
        (*(v76 + 2))(v76, 1, 0);
LABEL_77:

        autofillCopy = v75;
        goto LABEL_78;
      }

      v69 = v22;
      currentConnection2 = [MEMORY[0x277CCAE80] currentConnection];
      v71 = [TIXPCUtils obtainBundleIdentifierFromConnection:currentConnection2];

      v28 = objc_alloc_init(getLAContextClass());
      [(TIAppAutofillManager *)selfCopy setLaContext:v28];

      initForLocalizedStrings = [[TIKeyboardSecureCandidateRenderer alloc] initForLocalizedStrings];
      v30 = deviceClassString();
      v68 = v30;
      if (customInfoType == 24)
      {
        v31 = MEMORY[0x277CCACA8];
        v32 = [initForLocalizedStrings localizedStringForKey:@"AUTOFILL_AUTH_PASSCODE_TITLE"];
        v86 = 0;
        v33 = [v31 stringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v86, v30];
        v34 = v86;
        v35 = &stru_283FDFAF8;
        if (v33)
        {
          v35 = v33;
        }

        v36 = v35;

        v37 = v76;
        if (!v34)
        {
          v39 = @"AUTOFILL_AUTH_ALERT_TITLE";
          goto LABEL_59;
        }

        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v38 = TIOSLogFacility();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key AUTOFILL_AUTH_PASSCODE_TITLE: %@", "-[TIAppAutofillManager shouldAcceptAutofill:withPayload:completion:]", v34];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v65;
          _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }

        v39 = @"AUTOFILL_AUTH_ALERT_TITLE";
      }

      else
      {
        v37 = v76;
        if (customInfoType3 == 512)
        {
          v40 = MEMORY[0x277CCACA8];
          v41 = [initForLocalizedStrings localizedStringForKey:@"TOTP_AUTOFILL_AUTH_PASSCODE_TITLE"];
          v85 = 0;
          v42 = [v40 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:&v85, v30];
          v34 = v85;
          v43 = &stru_283FDFAF8;
          if (v42)
          {
            v43 = v42;
          }

          v36 = v43;

          if (!v34)
          {
            v39 = @"TOTP_AUTOFILL_AUTH_ALERT_TITLE";
            goto LABEL_59;
          }

          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v38 = TIOSLogFacility();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key TOTP_AUTOFILL_AUTH_PASSCODE_TITLE: %@", "-[TIAppAutofillManager shouldAcceptAutofill:withPayload:completion:]", v34];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v66;
            _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }

          v39 = @"TOTP_AUTOFILL_AUTH_ALERT_TITLE";
        }

        else
        {
          if (customInfoType4 != 2056)
          {
            v48 = 0;
            v36 = 0;
LABEL_60:
            v99[0] = &unk_28400BC10;
            v99[1] = &unk_28400BC28;
            v100[0] = v48;
            v100[1] = v36;
            v49 = 2;
            v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
            if (_os_feature_enabled_impl())
            {
              v95 = 0;
              v96 = &v95;
              v97 = 0x2050000000;
              v50 = getLARatchetManagerClass_softClass;
              v98 = getLARatchetManagerClass_softClass;
              if (!getLARatchetManagerClass_softClass)
              {
                *&buf = MEMORY[0x277D85DD0];
                *(&buf + 1) = 3221225472;
                v102 = __getLARatchetManagerClass_block_invoke;
                v103 = &unk_278733760;
                v104 = &v95;
                __getLARatchetManagerClass_block_invoke(&buf);
                v50 = v96[3];
              }

              v51 = v50;
              _Block_object_dispose(&v95, 8);
              sharedInstance = [v50 sharedInstance];
              if ([sharedInstance isFeatureEnabled])
              {
                v49 = 1025;
              }

              else
              {
                v49 = 2;
              }
            }

            v53 = v36;
            laContext = [(TIAppAutofillManager *)selfCopy laContext];
            v83 = 0;
            v55 = [laContext canEvaluatePolicy:v49 error:&v83];
            v56 = v83;

            if (v55)
            {
              payloadCopy = v78;
              if ([v71 isEqualToString:@"com.apple.springboard"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v37[2](v37, 0, 0);
                v57 = 1;
                v58 = 1;
              }

              else
              {
                v57 = 0;
                v58 = 0;
              }

              v11 = v77;
              laContext2 = [(TIAppAutofillManager *)selfCopy laContext];
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v80[2] = __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_396;
              v80[3] = &unk_27872EED0;
              v80[4] = selfCopy;
              v82 = v57;
              v37 = v76;
              v81 = v76;
              [laContext2 evaluatePolicy:v49 options:v70 reply:v80];

              if (v58)
              {
                v61 = [TICredentialCustomInfo alloc];
                documentIdentifierForLastAutofillGeneration = [(TIAppAutofillManager *)selfCopy documentIdentifierForLastAutofillGeneration];
                v63 = [(TICredentialCustomInfo *)v61 initWithCustomInfo:v72 documentIdentifier:documentIdentifierForLastAutofillGeneration];
                [(TIAppAutofillManager *)selfCopy setQueuedUnauthenticatedCustomInfo:v63];
              }

              v59 = v71;
            }

            else
            {
              [(TIAppAutofillManager *)selfCopy setLaContext:0];
              v37[2](v37, 1, 0);
              v11 = v77;
              payloadCopy = v78;
              v59 = v71;
            }

            v22 = v69;
            goto LABEL_77;
          }

          v44 = MEMORY[0x277CCACA8];
          v45 = [initForLocalizedStrings localizedStringForKey:@"PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE"];
          v84 = 0;
          v46 = [v44 stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@" error:&v84, v30];
          v34 = v84;
          v47 = &stru_283FDFAF8;
          if (v46)
          {
            v47 = v46;
          }

          v36 = v47;

          if (!v34)
          {
            v39 = @"PASSKEY_AUTOFILL_AUTH_ALERT_TITLE";
            goto LABEL_59;
          }

          if (TICanLogMessageAtLevel_onceToken != -1)
          {
            dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
          }

          v38 = TIOSLogFacility();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE: %@", "-[TIAppAutofillManager shouldAcceptAutofill:withPayload:completion:]", v34];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v67;
            _os_log_debug_impl(&dword_22CA55000, v38, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
          }

          v39 = @"PASSKEY_AUTOFILL_AUTH_ALERT_TITLE";
        }
      }

LABEL_59:
      v48 = [initForLocalizedStrings localizedStringForKey:v39];

      goto LABEL_60;
    }

    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_78:

  v64 = *MEMORY[0x277D85DE8];
}

void __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 72) == 1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;

    v9 = [*(a1 + 32) passkeyProvider];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) passkeyProvider];
      v12 = [*(a1 + 32) lastAutofilledUsername];
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) clientIdentifierForLastKeyboardSync];
      [v11 didFillCredentialForUsername:v12 forHost:v13 inAppWithBundleIdentifier:v14];
    }

    if ((*(a1 + 73) & 1) == 0)
    {
      if ([*(a1 + 48) length])
      {
        objc_opt_class();
        if (objc_opt_respondsToSelector())
        {
          v15 = objc_opt_class();
          v16 = [*(a1 + 32) lastAutofilledUsername];
          [v15 didUsePasswordForUserName:v16 appID:*(a1 + 48)];
        }
      }
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 88);
    *(v17 + 88) = 0;

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  if (*(a1 + 74) == 1)
  {
    v19 = [*(a1 + 32) privateQueue];
    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = v5;
    TIDispatchAsync();
  }

LABEL_12:
  (*(*(a1 + 64) + 16))();
}

void __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_396(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];

  if (v4)
  {
    if (v3 && *(a1 + 48) == 1)
    {
      v5 = [TICredentialCustomInfo alloc];
      v6 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];
      v7 = [v6 customInfo];
      v8 = [*(a1 + 32) queuedUnauthenticatedCustomInfo];
      v9 = [v8 documentIdentifier];
      v10 = [(TICredentialCustomInfo *)v5 initWithCustomInfo:v7 documentIdentifier:v9];
      [*(a1 + 32) setQueuedCustomInfo:v10];
    }

    [*(a1 + 32) setQueuedUnauthenticatedCustomInfo:0];
  }

  v11 = [*(a1 + 32) laContext];
  if ((*(a1 + 48) & 1) == 0)
  {
    v14 = *(a1 + 40);
    v12 = v3;
    v13 = v11;
    TIDispatchAsync();
  }

  [*(a1 + 32) setLaContext:0];
}

void __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) passkeyProvider];
  v2 = [*(a1 + 40) objectForKey:*MEMORY[0x277D6F8F0]];
  [v3 userSelectedPasskey:v2 authenticatedLAContext:*(a1 + 48)];
}

- (BOOL)shouldAuthenticateToAcceptAutofill
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v2 = getMCProfileConnectionClass_softClass;
  v19 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getMCProfileConnectionClass_block_invoke;
    v14 = &unk_278733760;
    v15 = &v16;
    __getMCProfileConnectionClass_block_invoke(&v11);
    v2 = v17[3];
  }

  v3 = v2;
  _Block_object_dispose(&v16, 8);
  sharedConnection = [v2 sharedConnection];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr;
  v19 = getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr;
  if (!getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_block_invoke;
    v14 = &unk_278733760;
    v15 = &v16;
    v6 = ManagedConfigurationLibrary();
    v7 = dlsym(v6, "MCFeatureAuthenticationBeforeAutoFillRequired");
    *(v15[1] + 24) = v7;
    getMCFeatureAuthenticationBeforeAutoFillRequiredSymbolLoc_ptr = *(v15[1] + 24);
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v5)
  {
    v8 = [sharedConnection effectiveBoolValueForSetting:*v5] == 1;

    return v8;
  }

  else
  {
    dlerror();
    v10 = abort_report_np();
    return __getMCProfileConnectionClass_block_invoke(v10);
  }
}

- (void)generateHideMyEmailCandidateWithSlotID:(unsigned int)d applicationBundleId:(id)id applicationId:(id)applicationId keyboardState:(id)state secureCandidateWidth:(double)width secureCandidateHash:(unint64_t)hash isSecureCandidateDoubleLines:(BOOL)lines completionHandler:(id)self0
{
  v96 = *MEMORY[0x277D85DE8];
  idCopy = id;
  applicationIdCopy = applicationId;
  handlerCopy = handler;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x3032000000;
  v89[3] = __Block_byref_object_copy__80;
  v89[4] = __Block_byref_object_dispose__81;
  v90 = 0;
  v18 = dispatch_semaphore_create(0);
  v19 = objc_opt_class();
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke;
  v86[3] = &unk_27872ED40;
  v88 = v89;
  v20 = v18;
  v87 = v20;
  [v19 getApprovedSharedWebCredentialsEntriesForAppWithAppID:applicationIdCopy completionHandler:v86];
  v21 = dispatch_time(0, 200000000);
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: Timeout on getApprovedSharedWebCredentialsEntriesForAppWithAppID:completionHandler:", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]"];
      v40 = v39 = applicationIdCopy;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v40;
      _os_log_error_impl(&dword_22CA55000, v22, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

      applicationIdCopy = v39;
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__80;
    v94 = __Block_byref_object_dispose__81;
    v95 = objc_alloc_init(MEMORY[0x277CF02A0]);
    v42 = mEMORY[0x277CF0130];
    primaryAuthKitAccount = [mEMORY[0x277CF0130] primaryAuthKitAccount];
    v44 = applicationIdCopy;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x3032000000;
    v84[3] = __Block_byref_object_copy__80;
    v84[4] = __Block_byref_object_dispose__81;
    v85 = [mEMORY[0x277CF0130] altDSIDForAccount:primaryAuthKitAccount];
    objc_initWeak(&location, self);
    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x2810000000;
    v81[3] = "";
    v82 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_317;
    aBlock[3] = &unk_27872EDB8;
    v43 = idCopy;
    v24 = idCopy;
    v71 = v24;
    v25 = applicationIdCopy;
    v72 = v25;
    selfCopy = self;
    v26 = handlerCopy;
    dCopy = d;
    dCopy2 = d;
    widthCopy = width;
    hashCopy = hash;
    linesCopy = lines;
    v75 = v84;
    v76 = v81;
    v28 = v26;
    v74 = v28;
    v29 = _Block_copy(aBlock);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_322;
    v60[3] = &unk_27872EE08;
    v61 = v25;
    v66 = v84;
    v30 = v24;
    v62 = v30;
    selfCopy2 = self;
    v69 = dCopy;
    p_buf = &buf;
    v68 = v81;
    v31 = v28;
    v64 = v31;
    v65 = v29;
    v46 = v29;
    v32 = _Block_copy(v60);
    v33 = MEMORY[0x277CFB450];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_327;
    v50[3] = &unk_27872EE80;
    v54 = v81;
    v34 = v31;
    idCopy = v43;
    v35 = v34;
    v52 = v34;
    v55 = v89;
    v56 = v84;
    v51 = v30;
    v57 = &buf;
    objc_copyWeak(&v58, &location);
    v59 = dCopy;
    handlerCopy = v26;
    v53 = v32;
    v36 = v32;
    [v33 requestFeatureWithId:@"mail.hide-my-email.create" completion:v50];
    v37 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_353;
    block[3] = &unk_278731400;
    v49 = v81;
    v48 = v35;
    dispatch_after(v37, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v58);
    applicationIdCopy = v44;

    _Block_object_dispose(v81, 8);
    objc_destroyWeak(&location);
    _Block_object_dispose(v84, 8);

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(v89, 8);
  v38 = *MEMORY[0x277D85DE8];
}

intptr_t __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [[v3 alloc] initWithArray:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_317(uint64_t a1)
{
  v2 = MEMORY[0x277D49DF0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2;
  v10[3] = &unk_27872ED90;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  v18 = *(a1 + 96);
  v6 = *(a1 + 32);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v19 = *(a1 + 100);
  v7 = *(a1 + 72);
  v13 = v6;
  v15 = v7;
  v9 = *(a1 + 56);
  v8 = v9;
  v14 = v9;
  [v2 bestDomainForAppID:v3 completionHandler:v10];
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_322(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CF0298]) initWithKey:*(a1 + 32) altDSID:*(*(*(a1 + 72) + 8) + 40) clientAppBundleId:*(a1 + 40)];
  v3 = *(*(*(a1 + 80) + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_324;
  v11[3] = &unk_27872EDE0;
  v17 = *(a1 + 96);
  v10 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 88);
  v15 = *(a1 + 72);
  v16 = v6;
  v7 = *(a1 + 56);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v4;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 64);
  [v3 lookupPrivateEmailWithContext:v2 completion:v11];
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_327(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TIAppAutofillOSLogFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: %@ on requestFeatureWithId:completion: HideMyEmail", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke", v6];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
LABEL_20:
    _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

LABEL_11:
    if ((atomic_exchange((*(*(a1 + 56) + 8) + 32), 1u) & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_13;
  }

  if ([v5 status] == 2 || objc_msgSend(v5, "status") == 3 || objc_msgSend(v5, "status") == 4)
  {
    v9 = [v5 status] - 2;
    if (v9 > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_27872EFA0[v9];
    }

    v7 = TIAppAutofillOSLogFacility();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: feature is %@ for user", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke", v10];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    goto LABEL_20;
  }

  if (![v5 status] || objc_msgSend(v5, "status") == 1)
  {
    v12 = [v5 status];
    v13 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = @"available and unlimited";
      if (v12 != 1)
      {
        v19 = 0;
      }

      if (!v12)
      {
        v19 = @"available";
      }

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: feature is %@ for user", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke", v19];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x2020000000;
    v34 = 0;
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v14 = *(*(*(a1 + 64) + 8) + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_349;
      v21[3] = &unk_27872EE58;
      v25 = *(a1 + 72);
      v15 = *(a1 + 32);
      v16 = *(a1 + 80);
      v22 = v15;
      v26 = v16;
      p_buf = &buf;
      objc_copyWeak(&v30, (a1 + 88));
      v31 = *(a1 + 96);
      v28 = *(a1 + 56);
      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
      v23 = v17;
      v29 = v18;
      v24 = *(a1 + 48);
      [v14 enumerateObjectsUsingBlock:v21];

      objc_destroyWeak(&v30);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&buf, 8);
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_353(uint64_t result)
{
  if ((atomic_exchange((*(*(result + 40) + 8) + 32), 1u) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_349(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = objc_alloc(MEMORY[0x277CF0298]);
  v9 = [v7 domain];
  v10 = [v8 initWithKey:v9 altDSID:*(*(*(a1 + 56) + 8) + 40) clientAppBundleId:*(a1 + 32)];

  v11 = *(*(*(a1 + 64) + 8) + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_350;
  v18[3] = &unk_27872EE30;
  v23 = *(a1 + 72);
  v27[1] = a4;
  objc_copyWeak(v27, (a1 + 96));
  v28 = *(a1 + 104);
  v19 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v20 = v12;
  v14 = *(a1 + 80);
  v24 = v13;
  v25 = v14;
  v15 = *(a1 + 40);
  v27[2] = a3;
  v16 = *(a1 + 88);
  v21 = v15;
  v26 = v16;
  v22 = *(a1 + 48);
  v17 = v7;
  [v11 lookupPrivateEmailWithContext:v10 completion:v18];

  objc_destroyWeak(v27);
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_350(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 privateEmailAddress];

  if (v3)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    **(a1 + 104) = 1;
    v4 = MEMORY[0x277D6F3D8];
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v6 = [WeakRetained secureCandidateRenderer];
    v7 = [v6 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
    v8 = *(a1 + 120);
    v9 = [*(a1 + 32) domain];
    v10 = [v4 secureCandidateForInput:v7 slotID:v8 customInfoType:1024 applicationKey:v9 applicationBundleId:*(a1 + 40) altDSID:*(*(*(a1 + 72) + 8) + 40)];

    if (atomic_exchange((*(*(a1 + 80) + 8) + 32), 1u))
    {
      v11 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke_2"];
        *buf = 138412290;
        v18 = v16;
        _os_log_error_impl(&dword_22CA55000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_13;
  }

  v12 = *(a1 + 112);
  if (v12 != [*(*(*(a1 + 88) + 8) + 40) count] - 1 || (*(*(*(a1 + 64) + 8) + 24) & 1) != 0)
  {
LABEL_13:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *(*(a1 + 56) + 16);
  v14 = *MEMORY[0x277D85DE8];

  v13();
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2_324(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 privateEmailAddress];

  if (v3)
  {
    v4 = MEMORY[0x277D6F3D8];
    v5 = [*(a1 + 32) secureCandidateRenderer];
    v6 = [v5 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
    v7 = [v4 secureCandidateForInput:v6 slotID:*(a1 + 88) customInfoType:1024 applicationKey:*(a1 + 40) applicationBundleId:*(a1 + 48) altDSID:*(*(*(a1 + 72) + 8) + 40)];

    if (atomic_exchange((*(*(a1 + 80) + 8) + 32), 1u))
    {
      v8 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke_2"];
        *buf = 138412290;
        v14 = v12;
        _os_log_error_impl(&dword_22CA55000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(*(a1 + 64) + 16);
    v10 = *MEMORY[0x277D85DE8];

    v9();
  }
}

void __199__TIAppAutofillManager_generateHideMyEmailCandidateWithSlotID_applicationBundleId_applicationId_keyboardState_secureCandidateWidth_secureCandidateHash_isSecureCandidateDoubleLines_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;
  v6 = MEMORY[0x277D6F3D8];
  v7 = [*(a1 + 40) secureCandidateRenderer];
  v8 = [v7 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
  v9 = [v6 secureCandidateForInput:v8 slotID:*(a1 + 96) customInfoType:1024 applicationKey:v5 applicationBundleId:*(a1 + 48) altDSID:*(*(*(a1 + 64) + 8) + 40)];

  [v9 setSecureCandidateWidth:*(a1 + 80)];
  [v9 setSecureCandidateHash:*(a1 + 88)];
  [v9 setIsSecureCandidateDoubleLines:*(a1 + 100)];
  if (atomic_exchange((*(*(a1 + 72) + 8) + 32), 1u))
  {
    v10 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout before handler completed", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]_block_invoke_2"];
      *buf = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)generateJustHMEAutofillFormSuggestionWithRenderTraits:(id)traits withKeyboardState:(id)state applicationID:(id)d applicationBundleID:(id)iD completionHandler:(id)handler
{
  v73 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
  if (traitsCopy)
  {
    v64 = handlerCopy;
    v17 = traitsCopy;
    documentIdentifier = [stateCopy documentIdentifier];
    v66 = [documentIdentifier copy];

    clientIdentifier = [stateCopy clientIdentifier];
    v65 = [clientIdentifier copy];

    secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];

    v21 = MEMORY[0x277D6F980];
    if (secureCandidateRenderer)
    {
      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v23 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v23 && [v23 length])
      {
LABEL_15:
        [v17 setHideMyEmailLocalizedText:v23];
        v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
        v62 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:&stru_283FDFAF8 secureContent:v23 secureFormattedContent:v23 input:&stru_283FDFAF8 truncationSentinel:0];
        [v28 addObject:?];
        secureCandidateRenderer3 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        v63 = v17;
        v30 = [secureCandidateRenderer3 slotIDsFromSecureCandidates:v28 withRenderTraits:v17];

        if (v30)
        {
          v60 = stateCopy;
          v61 = iDCopy;
          v58 = traitsCopy;
          v31 = [v30 objectAtIndex:0];
          slotID = [v31 slotID];

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v34 = dCopy;
          v35 = dictionary;
          if (v23)
          {
            v36 = v23;
          }

          else
          {
            v36 = *v21;
          }

          [dictionary setObject:v36 forKey:*MEMORY[0x277D6F910]];
          secureCandidateRenderer4 = [(TIAppAutofillManager *)self secureCandidateRenderer];
          secureCandidateCache = [secureCandidateRenderer4 secureCandidateCache];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
          [secureCandidateCache setObject:v35 forKey:v39];

          v40 = +[TIKeyboardSecureTouchManager sharedInstance];
          [v40 registerSlotID:slotID];

          v41 = _os_feature_enabled_impl();
          v59 = v34;
          if (v34 && v61 && v41)
          {
            firstObject = [v30 firstObject];
            [firstObject secureCandidateWidth];
            v43 = v42;
            firstObject2 = [v28 firstObject];
            candidateHash = [firstObject2 candidateHash];
            firstObject3 = [v30 firstObject];
            isSecureCandidateDoubleLines = [firstObject3 isSecureCandidateDoubleLines];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __148__TIAppAutofillManager_generateJustHMEAutofillFormSuggestionWithRenderTraits_withKeyboardState_applicationID_applicationBundleID_completionHandler___block_invoke;
            v67[3] = &unk_27872F2B0;
            v67[4] = self;
            v68 = v66;
            v69 = v65;
            v70 = v64;
            handlerCopy = v64;
            iDCopy = v61;
            [(TIAppAutofillManager *)self generateHideMyEmailCandidateWithSlotID:slotID applicationBundleId:v61 applicationId:v59 keyboardState:v60 secureCandidateWidth:candidateHash secureCandidateHash:isSecureCandidateDoubleLines isSecureCandidateDoubleLines:v43 completionHandler:v67];

            traitsCopy = v58;
          }

          else
          {
            [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v66];
            [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v65];
            handlerCopy = v64;
            v64[2](v64, 0);
            traitsCopy = v58;
            iDCopy = v61;
          }

          dCopy = v59;
          stateCopy = v60;
        }

        else
        {
          v46 = TIAppAutofillOSLogFacility();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s slotIDs are nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
            *buf = 138412290;
            v72 = v54;
            _os_log_error_impl(&dword_22CA55000, v46, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          handlerCopy = v64;
          v64[2](v64, 0);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v25 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%s self.secureCandidateRenderer is nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
        v53 = v52 = v17;
        *buf = 138412290;
        v72 = v53;
        _os_log_debug_impl(&dword_22CA55000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

        v17 = v52;
      }

      v23 = 0;
    }

    v26 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
      v49 = v48 = v17;
      *buf = 138412290;
      v72 = v49;
      _os_log_debug_impl(&dword_22CA55000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

      v17 = v48;
    }

    v27 = *v21;
    v23 = v27;
    goto LABEL_15;
  }

  v24 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%s secureCandidateRenderTraits is nil", "-[TIAppAutofillManager generateJustHMEAutofillFormSuggestionWithRenderTraits:withKeyboardState:applicationID:applicationBundleID:completionHandler:]"];
    v51 = v50 = handlerCopy;
    *buf = 138412290;
    v72 = v51;
    _os_log_error_impl(&dword_22CA55000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

    handlerCopy = v50;
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_29:

  v47 = *MEMORY[0x277D85DE8];
}

void __148__TIAppAutofillManager_generateJustHMEAutofillFormSuggestionWithRenderTraits_withKeyboardState_applicationID_applicationBundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  [v4 setDocumentIdentifierForLastAutofillGeneration:v3];
  [*(a1 + 32) setClientIdentifierForLastAutofillGeneration:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (void)generateAutofillFormSuggestedUsernameWithRenderTraits:(id)traits withKeyboardState:(id)state completionHandler:(id)handler
{
  v105 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  handlerCopy = handler;
  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
  selfCopy = self;
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__80;
  v101 = __Block_byref_object_dispose__81;
  array = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D49DF0] isAppAutoFillAvailable])
  {
    v9 = dispatch_semaphore_create(0);
    textInputTraits = [stateCopy textInputTraits];
    v11 = [textInputTraits keyboardType] == 7;

    mEMORY[0x277D49E08] = [MEMORY[0x277D49E08] sharedProvider];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke;
    v94[3] = &unk_27872ED40;
    v95 = v9;
    v96 = &v97;
    v13 = v9;
    [mEMORY[0x277D49E08] suggestedUsersOfType:v11 completionHandler:v94];

    v14 = dispatch_time(0, 200000000);
    dispatch_semaphore_wait(v13, v14);
  }

  if (_os_feature_enabled_impl() && [stateCopy autofillSubMode] == 7)
  {
    secureCandidateRenderer = [(TIAppAutofillManager *)selfCopy secureCandidateRenderer];

    if (secureCandidateRenderer)
    {
      secureCandidateRenderer2 = [(TIAppAutofillManager *)selfCopy secureCandidateRenderer];
      v17 = [secureCandidateRenderer2 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v17 && [v17 length])
      {
LABEL_15:
        [traitsCopy setHideMyEmailLocalizedText:v17];
        [v98[5] insertObject:v17 atIndex:0];

        goto LABEL_16;
      }
    }

    else
    {
      v18 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s self.secureCandidateRenderer is nil", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]"];
        *buf = 138412290;
        v104 = v79;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v17 = 0;
    }

    v19 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Hide My Email text is nil", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]"];
      *buf = 138412290;
      v104 = v77;
      _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v20 = *MEMORY[0x277D6F980];
    v17 = v20;
    goto LABEL_15;
  }

LABEL_16:
  v21 = [v98[5] count];
  v81 = traitsCopy;
  if (v21 >= [traitsCopy maxCellCount])
  {
    maxCellCount = [traitsCopy maxCellCount];
  }

  else
  {
    maxCellCount = [v98[5] count];
  }

  v23 = maxCellCount;
  v88 = [MEMORY[0x277CBEB18] arrayWithCapacity:maxCellCount];
  v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:v23];
  v24 = stateCopy;
  v25 = selfCopy;
  if (v23)
  {
    v26 = [v98[5] objectAtIndex:0];
    v27 = [v26 containsString:@"@"];

    if (v27)
    {
      v28 = 1;
      while (v23 != v28)
      {
        v29 = [v98[5] objectAtIndex:v28];
        v30 = [v29 containsString:@"@"];

        ++v28;
        if ((v30 & 1) == 0)
        {
          v31 = v28 - 1;
          goto LABEL_27;
        }
      }

      v31 = v23;
LABEL_27:
      v24 = stateCopy;
      v25 = selfCopy;
      v32 = v31 < v23;
    }

    else
    {
      v32 = 1;
    }

    for (i = 0; i != v23; ++i)
    {
      v34 = [v98[5] objectAtIndex:i];
      v35 = &stru_283FDFAF8;
      if (v32)
      {
        secureCandidateRenderer3 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
        v35 = [secureCandidateRenderer3 localizedStringForKey:@"SAFARI_CREDENTIAL_SUGGESTED_USERNAME"];
      }

      if (_os_feature_enabled_impl() && [v24 autofillSubMode] == 7)
      {
        secureCandidateRenderer4 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
        v38 = [secureCandidateRenderer4 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
        v39 = [v34 isEqualToString:v38];

        if (v39)
        {

          v35 = &stru_283FDFAF8;
        }

        v24 = stateCopy;
        v25 = selfCopy;
      }

      v40 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v35 secureContent:v34 secureFormattedContent:v34 input:&stru_283FDFAF8 truncationSentinel:0];
      [v88 addObject:v40];
    }
  }

  secureCandidateRenderer5 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
  v42 = [secureCandidateRenderer5 slotIDsFromSecureCandidates:v88 withRenderTraits:v81];

  if ([v42 count])
  {
    v43 = 0;
    isSecureCandidateDoubleLines = 0;
    candidateHash = 0;
    v44 = 0;
    v84 = *MEMORY[0x277D6F910];
    v45 = 0.0;
    while (1)
    {
      v46 = [v98[5] objectAtIndex:v43];
      v47 = [v42 objectAtIndex:v43];
      slotID = [v47 slotID];

      if (_os_feature_enabled_impl() && [stateCopy autofillSubMode] == 7 && (-[TIAppAutofillManager secureCandidateRenderer](selfCopy, "secureCandidateRenderer"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "localizedStringForKey:", @"SAFARI_HIDE_MY_EMAIL_SUGGESTION"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v46, "isEqualToString:", v50), v50, v49, v51))
      {
        v45 = 0.0;
        if ([v42 count] > v43)
        {
          v52 = [v42 objectAtIndexedSubscript:v43];
          [v52 secureCandidateWidth];
          v45 = v53;
        }

        v54 = [v88 objectAtIndexedSubscript:v43];
        candidateHash = [v54 candidateHash];

        if ([v42 count] <= v43)
        {
          isSecureCandidateDoubleLines = 0;
          goto LABEL_54;
        }

        v55 = [v42 objectAtIndexedSubscript:v43];
        isSecureCandidateDoubleLines = [v55 isSecureCandidateDoubleLines];
      }

      else
      {
        v55 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:slotID customInfoType:128 applicationKey:&stru_283FDFAF8 applicationBundleId:&stru_283FDFAF8 altDSID:&stru_283FDFAF8];
        if ([v42 count] <= v43)
        {
          [v55 setSecureCandidateWidth:0.0];
        }

        else
        {
          v56 = [v42 objectAtIndexedSubscript:v43];
          [v56 secureCandidateWidth];
          [v55 setSecureCandidateWidth:?];
        }

        v57 = [v88 objectAtIndexedSubscript:v43];
        [v55 setSecureCandidateHash:{objc_msgSend(v57, "candidateHash")}];

        if ([v42 count] <= v43)
        {
          [v55 setIsSecureCandidateDoubleLines:0];
        }

        else
        {
          v58 = [v42 objectAtIndexedSubscript:v43];
          [v55 setIsSecureCandidateDoubleLines:{objc_msgSend(v58, "isSecureCandidateDoubleLines")}];
        }

        [v86 addObject:v55];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:v46 forKey:v84];
        secureCandidateRenderer6 = [(TIAppAutofillManager *)selfCopy secureCandidateRenderer];
        secureCandidateCache = [secureCandidateRenderer6 secureCandidateCache];
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
        [secureCandidateCache setObject:dictionary forKey:v62];

        v63 = +[TIKeyboardSecureTouchManager sharedInstance];
        [v63 registerSlotID:slotID];

        slotID = v44;
      }

LABEL_54:
      ++v43;
      v44 = slotID;
      if (v43 >= [v42 count])
      {
        goto LABEL_58;
      }
    }
  }

  slotID = 0;
  candidateHash = 0;
  isSecureCandidateDoubleLines = 0;
  v45 = 0.0;
LABEL_58:
  v64 = stateCopy;
  if ((_os_feature_enabled_impl() & 1) == 0 || [stateCopy autofillSubMode] != 7 || !slotID)
  {
    goto LABEL_71;
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  autofillContext = [stateCopy autofillContext];
  v67 = [autofillContext objectForKey:*MEMORY[0x277D6F9B0]];

  if (!v67)
  {
    v67 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];
  }

  autofillContext2 = [stateCopy autofillContext];
  v69 = [autofillContext2 objectForKey:*MEMORY[0x277D6F9C0]];

  if (!v69)
  {
    v69 = [TIXPCUtils obtainBundleIdentifierFromConnection:currentConnection];
  }

  if (!v69 || !v67)
  {

LABEL_71:
    documentIdentifier = [stateCopy documentIdentifier];
    [(TIAppAutofillManager *)selfCopy setDocumentIdentifierForLastAutofillGeneration:documentIdentifier];

    clientIdentifier = [stateCopy clientIdentifier];
    [(TIAppAutofillManager *)selfCopy setClientIdentifierForLastAutofillGeneration:clientIdentifier];

    v73 = handlerCopy;
    v72 = v86;
    (*(handlerCopy + 2))(handlerCopy, v86);
    goto LABEL_72;
  }

  v70 = pthread_self();
  v71 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:...] is called from thread %lu", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]", v70];
    *buf = 138412290;
    v104 = v78;
    _os_log_debug_impl(&dword_22CA55000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke_300;
  v89[3] = &unk_27872ED68;
  v89[4] = selfCopy;
  v90 = stateCopy;
  v72 = v86;
  v91 = v86;
  v92 = handlerCopy;
  v93 = v70;
  v64 = stateCopy;
  [(TIAppAutofillManager *)selfCopy generateHideMyEmailCandidateWithSlotID:slotID applicationBundleId:v69 applicationId:v67 keyboardState:v90 secureCandidateWidth:candidateHash secureCandidateHash:isSecureCandidateDoubleLines & 1 isSecureCandidateDoubleLines:v45 completionHandler:v89];

  v73 = handlerCopy;
LABEL_72:

  _Block_object_dispose(&v97, 8);
  v76 = *MEMORY[0x277D85DE8];
}

void __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 40) + 8) + 40);
        v9 = [*(*(&v11 + 1) + 8 * v7) value];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

void __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke_300(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 40) documentIdentifier];
  [*(a1 + 32) setDocumentIdentifierForLastAutofillGeneration:v4];

  v5 = [*(a1 + 40) clientIdentifier];
  [*(a1 + 32) setClientIdentifierForLastAutofillGeneration:v5];

  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }

  v6 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v7 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s -[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:...] is completed in thread %lu", "-[TIAppAutofillManager generateAutofillFormSuggestedUsernameWithRenderTraits:withKeyboardState:completionHandler:]_block_invoke", *(a1 + 64)];
    *buf = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)generateCellularCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state
{
  v93 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  textInputTraits = [stateCopy textInputTraits];
  textContentType = [textInputTraits textContentType];
  v10 = *MEMORY[0x277D6FC40];
  if ([textContentType isEqualToString:*MEMORY[0x277D6FC40]])
  {

    goto LABEL_4;
  }

  textInputTraits2 = [stateCopy textInputTraits];
  textContentType2 = [textInputTraits2 textContentType];
  v13 = [textContentType2 isEqualToString:*MEMORY[0x277D6FC48]];

  if (v13)
  {
LABEL_4:
    v14 = deviceClassString();
    textInputTraits3 = [stateCopy textInputTraits];
    textContentType3 = [textInputTraits3 textContentType];
    v17 = [textContentType3 isEqualToString:v10];

    v18 = MEMORY[0x277CCACA8];
    if (v17)
    {
      v19 = [(TIAppAutofillManager *)self localizedCellularAutofillStringForKey:@"AUTOFILL_CELLULAR_EID_TITLE" defaultValue:*MEMORY[0x277D6F970]];
      v83 = 0;
      v20 = &v83;
      [v18 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v83, v14];
    }

    else
    {
      v19 = [(TIAppAutofillManager *)self localizedCellularAutofillStringForKey:@"AUTOFILL_CELLULAR_IMEI_TITLE" defaultValue:*MEMORY[0x277D6F978]];
      v82 = 0;
      v20 = &v82;
      [v18 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v82, v14];
    }
    v21 = ;
    v76 = *v20;
    v22 = &stru_283FDFAF8;
    if (v21)
    {
      v22 = v21;
    }

    v23 = v22;

    v79 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    coreTelephonyMockObject = [(TIAppAutofillManager *)self coreTelephonyMockObject];

    textInputTraits4 = [stateCopy textInputTraits];
    textContentType4 = [textInputTraits4 textContentType];
    v27 = [textContentType4 isEqualToString:v10];
    v77 = v14;
    v78 = v23;
    if (coreTelephonyMockObject)
    {
      v28 = v27 ^ 1u;

      coreTelephonyMockObject2 = [(TIAppAutofillManager *)self coreTelephonyMockObject];
      v30 = [coreTelephonyMockObject2 retrieveDeviceIdentifier:v28];
LABEL_11:

      [traitsCopy setShouldForceDoubleLineCandidateForCellularAutofill:1];
      v31 = MEMORY[0x277D6F570];
      v30 = v30;
      v73 = [[v31 alloc] initWithSecureHeader:v23 secureContent:v30 secureFormattedContent:v30 input:v30 truncationSentinel:0];
      [v79 addObject:?];
      secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v74 = traitsCopy;
      v33 = [secureCandidateRenderer slotIDsFromSecureCandidates:v79 withRenderTraits:traitsCopy];

      firstObject = [v33 firstObject];
      slotID = [firstObject slotID];

      textInputTraits5 = [stateCopy textInputTraits];
      textContentType5 = [textInputTraits5 textContentType];
      if ([textContentType5 isEqualToString:v10])
      {
        v38 = 0x2000;
      }

      else
      {
        v38 = 0x4000;
      }

      textInputTraits6 = [stateCopy textInputTraits];
      textContentType6 = [textInputTraits6 textContentType];
      v41 = [textContentType6 isEqualToString:v10];
      v42 = MEMORY[0x277D6F8C0];
      if (!v41)
      {
        v42 = MEMORY[0x277D6F8C8];
      }

      v43 = *v42;

      v44 = [MEMORY[0x277D6F3D8] secureCandidateForInput:v30 slotID:slotID customInfoType:v38];
      firstObject2 = [v33 firstObject];
      [firstObject2 secureCandidateWidth];
      [v44 setSecureCandidateWidth:?];

      firstObject3 = [v79 firstObject];
      [v44 setSecureCandidateHash:{objc_msgSend(firstObject3, "candidateHash")}];

      firstObject4 = [v33 firstObject];
      [v44 setIsSecureCandidateDoubleLines:{objc_msgSend(firstObject4, "isSecureCandidateDoubleLines")}];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:v30 forKeyedSubscript:v43];

      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      secureCandidateCache = [secureCandidateRenderer2 secureCandidateCache];
      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
      [secureCandidateCache setObject:dictionary forKey:v51];

      v52 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v52 registerSlotID:slotID];

      if (v44)
      {
        v88 = v44;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
      }

      else
      {
        v53 = 0;
      }

      coreTelephonyMockObject2 = v73;
      traitsCopy = v74;
      goto LABEL_48;
    }

    if (v27)
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    coreTelephonyMockObject2 = [MEMORY[0x277CCAE80] currentConnection];
    if (![(TIAppAutofillManager *)self hasCoreTelephonyEntitlementForConnection:coreTelephonyMockObject2])
    {
      v33 = TIAppAutofillOSLogFacility();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The application does not have the required entitlement.", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]"];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v69;
        _os_log_error_impl(&dword_22CA55000, v33, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v30 = 0;
      goto LABEL_47;
    }

    v84 = 0;
    v85 = &v84;
    v86 = 0x2050000000;
    v55 = getCoreTelephonyClientClass_softClass;
    v87 = getCoreTelephonyClientClass_softClass;
    if (!getCoreTelephonyClientClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v90 = __getCoreTelephonyClientClass_block_invoke;
      v91 = &unk_278733760;
      v92 = &v84;
      __getCoreTelephonyClientClass_block_invoke(&buf);
      v55 = v85[3];
    }

    v56 = v55;
    _Block_object_dispose(&v84, 8);
    v57 = [v55 alloc];
    v33 = [v57 initWithQueue:MEMORY[0x277D85CD0]];
    autofillContext = [stateCopy autofillContext];
    v59 = [autofillContext objectForKey:*MEMORY[0x277D6F9C0]];

    v75 = v59;
    if (!v59)
    {
      v75 = [TIXPCUtils obtainBundleIdentifierFromConnection:coreTelephonyMockObject2];
    }

    if (objc_opt_respondsToSelector())
    {
      v81 = 0;
      v60 = &v81;
      v61 = [v33 retrieveDeviceIdentifier:v54 clientBundleIdentifier:v75 showAlert:0 error:&v81];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v64 = TIAppAutofillOSLogFacility();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Could not link CoreTelephony.", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v72;
          _os_log_error_impl(&dword_22CA55000, v64, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }

        v30 = 0;
LABEL_46:

LABEL_47:
        v53 = MEMORY[0x277CBEBF8];
LABEL_48:

        v62 = v78;
        goto LABEL_49;
      }

      v80 = 0;
      v60 = &v80;
      v61 = [v33 retrieveDeviceIdentifier:v54 error:&v80];
    }

    v30 = v61;
    v63 = *v60;
    if (!v63)
    {

      v23 = v78;
      goto LABEL_11;
    }

    v64 = v63;
    v65 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s CoreTelephony client returned error on retrieveDeviceIdentifier:error: ERROR:%@", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]", v64];
      v71 = v70 = coreTelephonyMockObject2;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v71;
      _os_log_error_impl(&dword_22CA55000, v65, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

      coreTelephonyMockObject2 = v70;
    }

    goto LABEL_46;
  }

  v62 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The text field has no text content type.", "-[TIAppAutofillManager generateCellularCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v68;
    _os_log_error_impl(&dword_22CA55000, v62, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
  }

  v53 = MEMORY[0x277CBEBF8];
LABEL_49:

  v66 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)generateOneTimeCodeCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state
{
  v130 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  autofillContext = [stateCopy autofillContext];
  v9 = [autofillContext objectForKey:@"_WebViewURL"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  textInputTraits = [stateCopy textInputTraits];
  textContentType = [textInputTraits textContentType];
  v12 = [textContentType isEqualToString:@"one-time-code"];

  dateOfLastPasswordAutoFill = [(TIAppAutofillManager *)self dateOfLastPasswordAutoFill];
  if (dateOfLastPasswordAutoFill)
  {
    date = [MEMORY[0x277CBEAA8] date];
    dateOfLastPasswordAutoFill2 = [(TIAppAutofillManager *)self dateOfLastPasswordAutoFill];
    [date timeIntervalSinceDate:dateOfLastPasswordAutoFill2];
    v112 = v16 <= 30.0;
  }

  else
  {
    v112 = 0;
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v18 = [TIXPCUtils obtainApplicationIdentifierFromConnection:currentConnection];
  v19 = [v18 isEqualToString:@"com.apple.InputUI"];
  autofillContext2 = TIAppAutofillOSLogFacility();
  v21 = os_log_type_enabled(autofillContext2, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Grabbing application identifier from keyboardState.autofillContext.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v99;
      _os_log_debug_impl(&dword_22CA55000, autofillContext2, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    autofillContext2 = [stateCopy autofillContext];
    v22 = [autofillContext2 objectForKey:*MEMORY[0x277D6F9B0]];

    v18 = v22;
  }

  else if (v21)
  {
    v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Grabbing application identifier from xpc connection.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v100;
    _os_log_debug_impl(&dword_22CA55000, autofillContext2, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v115 = v18;
  if (v18)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v126 = 0x3032000000;
    v127 = __Block_byref_object_copy__80;
    v128 = __Block_byref_object_dispose__81;
    v129 = 0;
    autofillContext3 = [stateCopy autofillContext];
    v24 = [autofillContext3 objectForKeyedSubscript:*MEMORY[0x277D6F9B8]];

    v25 = dispatch_group_create();
    objc_opt_class();
    v110 = currentConnection;
    v111 = traitsCopy;
    if (objc_opt_respondsToSelector())
    {
      dispatch_group_enter(v25);
      v26 = MEMORY[0x277D49DF0];
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __88__TIAppAutofillManager_generateOneTimeCodeCandidatesWithRenderTraits_withKeyboardState___block_invoke;
      v116[3] = &unk_27872ED40;
      p_buf = &buf;
      v27 = v25;
      v117 = v27;
      [v26 getOneTimeCodeCredentialsForAppWithAppID:v115 externallyVerifiedAndApprovedSharedWebCredentialDomains:v24 websiteURL:v9 completionHandler:v116];
      v28 = dispatch_time(0, 200000000);
      if (dispatch_group_wait(v27, v28))
      {
        v29 = TIAppAutofillOSLogFacility();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timed out while fetching external one time code credential identities", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
          *v122 = 138412290;
          *&v122[4] = v102;
          _os_log_error_impl(&dword_22CA55000, v29, OS_LOG_TYPE_ERROR, "%@", v122, 0xCu);
        }
      }

      if ([*(*(&buf + 1) + 40) isExternal])
      {
        v105 = v25;
        v113 = v24;
        v30 = MEMORY[0x277CBEA60];
        v31 = [(TIAppAutofillManager *)self _secureCandidateForPasswordCredential:*(*(&buf + 1) + 40) fromLocalizedStringKey:@"SAFARI_CREDENTIAL_SITE_SHORT"];
        v32 = [v30 arrayWithObject:v31];

        *v122 = 0;
        v33 = [(TIAppAutofillManager *)self _autoFillPayloadForPasswordCredential:*(*(&buf + 1) + 40) keyboardInfoType:v122];
        secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
        v35 = [secureCandidateRenderer slotIDsFromSecureCandidates:v32 withRenderTraits:traitsCopy];

        v36 = MEMORY[0x277D6F3D8];
        firstObject = [v35 firstObject];
        slotID = [firstObject slotID];
        v39 = [v36 secureCandidateForInput:&stru_283FDFAF8 slotID:slotID customInfoType:*v122];

        firstObject2 = [v35 firstObject];
        slotID2 = [firstObject2 slotID];

        firstObject3 = [v35 firstObject];
        [firstObject3 secureCandidateWidth];
        [v39 setSecureCandidateWidth:?];

        v108 = v32;
        firstObject4 = [v32 firstObject];
        [v39 setSecureCandidateHash:{objc_msgSend(firstObject4, "candidateHash")}];

        firstObject5 = [v35 firstObject];
        [v39 setIsSecureCandidateDoubleLines:{objc_msgSend(firstObject5, "isSecureCandidateDoubleLines")}];

        secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        [secureCandidateRenderer2 secureCandidateCache];
        v47 = v46 = stateCopy;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID2];
        [v47 setObject:v33 forKey:v48];

        stateCopy = v46;
        v49 = +[TIKeyboardSecureTouchManager sharedInstance];
        [v49 registerSlotID:slotID2];

        documentIdentifier = [v46 documentIdentifier];
        v51 = [documentIdentifier copy];
        [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v51];

        clientIdentifier = [v46 clientIdentifier];
        v53 = [clientIdentifier copy];
        [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v53];

        if (v39)
        {
          v124 = v39;
          v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
        }

        else
        {
          v54 = 0;
        }

        v25 = v105;

        firstObject6 = v117;
        currentConnection = v110;
        traitsCopy = v111;
        v24 = v113;
LABEL_59:

        _Block_object_dispose(&buf, 8);
        goto LABEL_60;
      }
    }

    oneTimeCodeProvider = self->_oneTimeCodeProvider;
    v57 = objc_opt_respondsToSelector();
    v58 = self->_oneTimeCodeProvider;
    if (v57)
    {
      if ((v12 | v112))
      {
        v59 = 2;
      }

      else
      {
        v59 = 0;
      }

      v60 = [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider currentOneTimeCodesWithAppIdentifier:v115 website:v9 usernameHint:self->_lastAutofilledUsername fieldClassification:v59];
      firstObject6 = [v60 firstObject];
    }

    else
    {
      v62 = v25;
      v63 = v24;
      v60 = +[TIKeyboardInputManagerLoader sharedLoader];
      interactingConnection = [v60 interactingConnection];
      v65 = interactingConnection;
      if (interactingConnection)
      {
        [interactingConnection auditToken];
      }

      else
      {
        *v122 = 0u;
        v123 = 0u;
      }

      if ((v12 | v112))
      {
        v66 = 2;
      }

      else
      {
        v66 = 0;
      }

      v67 = [(SFAppAutoFillOneTimeCodeProvider *)v58 currentOneTimeCodesWithAuditToken:v122 website:v9 usernameHint:self->_lastAutofilledUsername fieldClassification:v66];
      firstObject6 = [v67 firstObject];

      v24 = v63;
      v25 = v62;
      traitsCopy = v111;
    }

    v68 = MEMORY[0x277D6F3D8];
    keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra = [MEMORY[0x277D6F3C0] keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra];
    v109 = [v68 candidateWithCandidate:&stru_283FDFAF8 forInput:keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra customInfoType:32];

    if (firstObject6)
    {
      v114 = v24;
      v103 = stateCopy;
      v104 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v70 = [firstObject6 localizedTitleForContext:0];
      displayCode = [firstObject6 displayCode];
      v72 = [firstObject6 localizedSubtitleForContext:0];
      v73 = v72;
      if (displayCode)
      {
        v74 = displayCode;
      }

      else
      {
        v74 = v72;
      }

      v75 = v74;
      v107 = v9;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [firstObject6 requiresAuthentication])
      {
        v76 = v73;

        v75 = v76;
      }

      v106 = v25;
      v77 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v70 secureContent:v75 secureFormattedContent:v73 input:&stru_283FDFAF8 truncationSentinel:0];
      [v104 addObject:v77];

      secureCandidateRenderer3 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v79 = [secureCandidateRenderer3 slotIDsFromSecureCandidates:v104 withRenderTraits:v111];

      code = [firstObject6 code];
      firstObject7 = [v79 firstObject];
      slotID3 = [firstObject7 slotID];

      if ([firstObject6 source] == 3)
      {
        v83 = 512;
      }

      else
      {
        v83 = 64;
      }

      v84 = [MEMORY[0x277D6F3D8] secureCandidateForInput:code slotID:slotID3 customInfoType:v83];
      firstObject8 = [v79 firstObject];
      [firstObject8 secureCandidateWidth];
      [v84 setSecureCandidateWidth:?];

      firstObject9 = [v104 firstObject];
      [v84 setSecureCandidateHash:{objc_msgSend(firstObject9, "candidateHash")}];

      firstObject10 = [v79 firstObject];
      [v84 setIsSecureCandidateDoubleLines:{objc_msgSend(firstObject10, "isSecureCandidateDoubleLines")}];

      if (objc_opt_respondsToSelector())
      {
        [v84 setIsOneTimeCodeThatRequiresAuthentication:{objc_msgSend(firstObject6, "requiresAuthentication")}];
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:code forKeyedSubscript:*MEMORY[0x277D6F8E8]];
      secureCandidateRenderer4 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      secureCandidateCache = [secureCandidateRenderer4 secureCandidateCache];
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID3];
      [secureCandidateCache setObject:dictionary forKey:v91];

      v92 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v92 registerSlotID:slotID3];

      [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider addObserver:self forOneTimeCode:firstObject6];
      v93 = v109;
      if (v84)
      {
        v120[0] = v84;
        v120[1] = v109;
        v94 = MEMORY[0x277CBEA60];
        v95 = v120;
        v96 = 2;
      }

      else
      {
        v119 = v109;
        v94 = MEMORY[0x277CBEA60];
        v95 = &v119;
        v96 = 1;
      }

      v54 = [v94 arrayWithObjects:v95 count:v96];
      v25 = v106;
      v9 = v107;
      currentConnection = v110;

      traitsCopy = v111;
      v24 = v114;
      stateCopy = v103;
    }

    else if (v112)
    {
      v93 = v109;
      v121 = v109;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
    }

    else
    {
      v54 = 0;
      v93 = v109;
    }

    goto LABEL_59;
  }

  v55 = TIAppAutofillOSLogFacility();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The application has no appID.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v101;
    _os_log_error_impl(&dword_22CA55000, v55, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
  }

  v54 = MEMORY[0x277CBEBF8];
LABEL_60:

  v97 = *MEMORY[0x277D85DE8];

  return v54;
}

void __88__TIAppAutofillManager_generateOneTimeCodeCandidatesWithRenderTraits_withKeyboardState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

- (void)_finishAutofillFormCandidatesOnMainThreadWithCredentials:(id)credentials renderTraits:(id)traits documentIdentifier:(id)identifier clientIdentifier:(id)clientIdentifier completion:(id)completion
{
  credentialsCopy = credentials;
  traitsCopy = traits;
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  completionCopy = completion;
  v15 = [credentialsCopy count];
  v52 = clientIdentifierCopy;
  if (v15 >= [traitsCopy maxCellCount])
  {
    maxCellCount = [traitsCopy maxCellCount];
    [traitsCopy setCellRenderingStyle:1];
  }

  else
  {
    maxCellCount = [credentialsCopy count];
  }

  v59 = [MEMORY[0x277CBEB18] arrayWithCapacity:maxCellCount];
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:maxCellCount];
  v17 = @"SAFARI_CREDENTIAL_SITE_LONG";
  if (maxCellCount <= 1)
  {
    v18 = @"SAFARI_PASSKEY_SITE_LONG";
  }

  else
  {
    v17 = @"SAFARI_CREDENTIAL_SITE_SHORT";
    v18 = @"SAFARI_CREDENTIAL_SITE_SHORT";
  }

  v19 = v17;
  v55 = v18;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v20 = getSFAutoFillPasskeyClass_softClass;
  v64 = getSFAutoFillPasskeyClass_softClass;
  if (!getSFAutoFillPasskeyClass_softClass)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __getSFAutoFillPasskeyClass_block_invoke;
    v60[3] = &unk_278733760;
    v60[4] = &v61;
    __getSFAutoFillPasskeyClass_block_invoke(v60);
    v20 = v62[3];
  }

  v57 = v20;
  v21 = v20;
  _Block_object_dispose(&v61, 8);
  v22 = [credentialsCopy count];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    if (maxCellCount <= 1)
    {
      v25 = @"SAFARI_CREDENTIAL_CUSTOM_TITLE_LONG";
    }

    else
    {
      v25 = @"SAFARI_CREDENTIAL_CUSTOM_TITLE_SHORT";
    }

    do
    {
      v26 = [credentialsCopy objectAtIndexedSubscript:v24];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        site = [v26 site];
        v28 = [site length];

        if (!v28)
        {
          v29 = v25;

          v19 = v29;
        }

        v30 = [(TIAppAutofillManager *)self _secureCandidateForPasswordCredential:v26 fromLocalizedStringKey:v19];
      }

      else
      {
        if (!v57 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v30 = [(TIAppAutofillManager *)self _secureCandidateForPasskey:v26 fromLocalizedStringKey:v55];
      }

      v31 = v30;
      [v59 addObject:v30];

LABEL_21:
      ++v24;
    }

    while (v23 != v24);
  }

  v32 = +[TIKeyboardSecureTouchManager sharedInstance];
  [v32 clearRegistrations];

  [traitsCopy setShouldForceDoubleLineCandidateForPasswordAutofill:1];
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v54 = traitsCopy;
  v34 = [secureCandidateRenderer slotIDsFromSecureCandidates:v59 withRenderTraits:traitsCopy];

  if ([v34 count])
  {
    v35 = 0;
    v56 = credentialsCopy;
    do
    {
      v36 = [credentialsCopy objectAtIndex:v35];
      v60[0] = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = [(TIAppAutofillManager *)self _autoFillPayloadForPasswordCredential:v36 keyboardInfoType:v60];
      }

      else
      {
        if (!v57 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v38 = 0;
          goto LABEL_31;
        }

        v37 = [(TIAppAutofillManager *)self _autoFillPayloadForPasskey:v36 keyboardInfoType:v60];
      }

      v38 = v37;
LABEL_31:
      v39 = [v34 objectAtIndex:v35];
      slotID = [v39 slotID];

      v41 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:slotID customInfoType:v60[0]];
      if ([v34 count] <= v35)
      {
        [v41 setSecureCandidateWidth:0.0];
      }

      else
      {
        v42 = [v34 objectAtIndexedSubscript:v35];
        [v42 secureCandidateWidth];
        [v41 setSecureCandidateWidth:?];
      }

      v43 = [v59 objectAtIndexedSubscript:v35];
      [v41 setSecureCandidateHash:{objc_msgSend(v43, "candidateHash")}];

      if ([v34 count] <= v35)
      {
        [v41 setIsSecureCandidateDoubleLines:0];
      }

      else
      {
        v44 = [v34 objectAtIndexedSubscript:v35];
        [v41 setIsSecureCandidateDoubleLines:{objc_msgSend(v44, "isSecureCandidateDoubleLines")}];
      }

      [v58 addObject:v41];
      secureCandidateRenderer2 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      secureCandidateCache = [secureCandidateRenderer2 secureCandidateCache];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:slotID];
      [secureCandidateCache setObject:v38 forKey:v47];

      v48 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v48 registerSlotID:slotID];

      ++v35;
      credentialsCopy = v56;
    }

    while (v35 < [v34 count]);
  }

  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:identifierCopy];
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v52];
  v49 = [MEMORY[0x277D6F3D8] candidateWithCandidate:&stru_283FDFAF8 forInput:&stru_283FDFAF8 customInfoType:32];
  [v58 addObject:v49];
  completionCopy[2](completionCopy, v58);
}

- (void)generateAutofillFormCandidatesWithRenderTraits:(id)traits withKeyboardState:(id)state completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  stateCopy = state;
  completionCopy = completion;
  privateQueue = [(TIAppAutofillManager *)self privateQueue];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke;
  aBlock[3] = &unk_278730308;
  v12 = privateQueue;
  v54 = v12;
  v13 = completionCopy;
  v55 = v13;
  v14 = _Block_copy(aBlock);
  documentIdentifier = [stateCopy documentIdentifier];

  if (documentIdentifier)
  {
    [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
    [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
    if (+[TIAppAutofillManager _simulatesAutofillCandidates](TIAppAutofillManager, "_simulatesAutofillCandidates") || ([MEMORY[0x277D49DF0] isAppAutoFillAvailable] & 1) != 0)
    {
      v41 = v13;
      v42 = v12;
      documentIdentifier2 = [stateCopy documentIdentifier];
      v40 = [documentIdentifier2 copy];

      clientIdentifier = [stateCopy clientIdentifier];
      v39 = [clientIdentifier copy];

      textInputTraits = [stateCopy textInputTraits];
      textContentType = [textInputTraits textContentType];
      v20 = [textContentType copy];

      autofillContext = [stateCopy autofillContext];
      v22 = [autofillContext copy];

      passkeyProvider = [(TIAppAutofillManager *)self passkeyProvider];
      currentConnection = [MEMORY[0x277CCAE80] currentConnection];
      v25 = currentConnection;
      *buf = 0u;
      v57 = 0u;
      if (currentConnection)
      {
        [currentConnection auditToken];
      }

      v26 = [v22 objectForKey:*MEMORY[0x277D6F9B0]];
      if (v26)
      {
        v27 = v26;
        v28 = [TIXPCUtils obtainBundleIdentifierFromConnection:v25];
        if (([v28 hasPrefix:@"com.apple."] & 1) != 0 || -[TIAppAutofillManager hasAutofillContextEntitlementForConnection:](self, "hasAutofillContextEntitlementForConnection:", v25))
        {

LABEL_16:
          objc_initWeak(&location, self);
          privateQueue2 = [(TIAppAutofillManager *)self privateQueue];
          v50 = *buf;
          v43 = passkeyProvider;
          v44 = v22;
          v45 = v20;
          v46 = v27;
          v51 = v57;
          v38 = v27;
          v37 = v20;
          v31 = v22;
          v32 = passkeyProvider;
          objc_copyWeak(&v49, &location);
          v47 = traitsCopy;
          v48 = v14;
          v33 = v39;
          v34 = v40;
          TIDispatchAsync();

          objc_destroyWeak(&v49);
          objc_destroyWeak(&location);

          v13 = v41;
          v12 = v42;
          goto LABEL_17;
        }
      }

      v27 = [TIXPCUtils obtainApplicationIdentifierFromConnection:v25];
      goto LABEL_16;
    }
  }

  else
  {
    v29 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s The documentIdentifier is nil, do not try to generate autofill suggestions.", "-[TIAppAutofillManager generateAutofillFormCandidatesWithRenderTraits:withKeyboardState:completion:]"];
      *buf = 138412290;
      *&buf[4] = v36;
      _os_log_debug_impl(&dword_22CA55000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  (*(v14 + 2))(v14, MEMORY[0x277CBEBF8]);
LABEL_17:

  v35 = *MEMORY[0x277D85DE8];
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  TIDispatchAsync();
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_198(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_2_199;
  v14[3] = &unk_27872F3C0;
  objc_copyWeak(&v17, (a1 + 96));
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v12 = *(a1 + 120);
  v13[0] = *(a1 + 104);
  v13[1] = v12;
  [TIAppAutofillManager _fetchCredentialsWithPasskeyProvider:v2 autofillContext:v3 textContentType:v4 applicationIdentifier:v5 auditToken:v13 completion:v14];

  objc_destroyWeak(&v17);
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_2_199(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v14, a1 + 8);
  v11 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  v10 = v3;
  TIDispatchAsync();

  objc_destroyWeak(&v14);
}

void __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _finishAutofillFormCandidatesOnMainThreadWithCredentials:*(a1 + 32) renderTraits:*(a1 + 40) documentIdentifier:*(a1 + 48) clientIdentifier:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (BOOL)hasCoreTelephonyEntitlementForConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = connectionCopy;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.CommCenter.fine-grained", &error);
    if (error)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v8 = TIOSLogFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        error = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain core telephony entitlement: %@", "-[TIAppAutofillManager hasCoreTelephonyEntitlementForConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", &token, 0xCu);
      }

      CFRelease(error);
    }

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __65__TIAppAutofillManager_hasCoreTelephonyEntitlementForConnection___block_invoke;
        v13[3] = &unk_27872ECA0;
        v13[4] = &v15;
        [v7 enumerateObjectsUsingBlock:v13];
      }
    }

    CFRelease(v6);
  }

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __65__TIAppAutofillManager_hasCoreTelephonyEntitlementForConnection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:@"public-cellular-plan"];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)hasAutofillContextEntitlementForConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.textInput.autofillContext", &error);
    bOOLValue = [v7 BOOLValue];

    if (error)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        error = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain autofill context: %@", "-[TIAppAutofillManager hasAutofillContextEntitlementForConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", &token, 0xCu);
      }

      CFRelease(error);
    }

    CFRelease(v6);
  }

  else
  {
    bOOLValue = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)localizedCellularAutofillStringForKey:(id)key defaultValue:(id)value
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  secureCandidateRenderer = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v9 = [secureCandidateRenderer localizedStringForKey:keyCopy];

  if (![v9 length])
  {
    v10 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized Cellular autofill text is nil", "-[TIAppAutofillManager localizedCellularAutofillStringForKey:defaultValue:]"];
      *buf = 138412290;
      v16 = v14;
      _os_log_error_impl(&dword_22CA55000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v11 = valueCopy;
    v9 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)customInfoFromCredential:(id)credential
{
  credentialCopy = credential;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  user = [credentialCopy user];
  if ([(TIAppAutofillManager *)self isValidedString:user])
  {
    user2 = [credentialCopy user];
  }

  else
  {
    user2 = &stru_283FDFAF8;
  }

  password = [credentialCopy password];
  if ([(TIAppAutofillManager *)self isValidedString:password])
  {
    password2 = [credentialCopy password];
  }

  else
  {
    password2 = &stru_283FDFAF8;
  }

  [v5 setObject:user2 forKey:*MEMORY[0x277D6F918]];
  [v5 setObject:password2 forKey:*MEMORY[0x277D6F8F8]];
  if (objc_opt_respondsToSelector())
  {
    oneTimeCode = [credentialCopy oneTimeCode];
    v11 = [(TIAppAutofillManager *)self isValidedString:oneTimeCode];

    if (v11)
    {
      oneTimeCode2 = [credentialCopy oneTimeCode];
      [v5 setObject:oneTimeCode2 forKey:*MEMORY[0x277D6F8E8]];
    }
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)isValidedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (isValidedString__onceToken != -1)
  {
    dispatch_once(&isValidedString__onceToken, &__block_literal_global_132);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [v4 rangeOfCharacterFromSet:isValidedString__invalidCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:

  return v5;
}

void __40__TIAppAutofillManager_isValidedString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] illegalCharacterSet];
  v1 = isValidedString__invalidCharacterSet;
  isValidedString__invalidCharacterSet = v0;

  v2 = isValidedString__invalidCharacterSet;
  v3 = [MEMORY[0x277CCA900] controlCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = isValidedString__invalidCharacterSet;
  v5 = [MEMORY[0x277CCA900] newlineCharacterSet];
  [v4 formUnionWithCharacterSet:v5];
}

- (void)pushQueuedCredentialIfNecessaryForKeyboardState:(id)state
{
  stateCopy = state;
  queuedCustomInfo = [(TIAppAutofillManager *)self queuedCustomInfo];
  if (queuedCustomInfo && (([stateCopy needAutofill] & 1) != 0 || objc_msgSend(stateCopy, "autofillMode") == 1 || objc_msgSend(stateCopy, "autofillMode") == 3))
  {
    documentIdentifier = [stateCopy documentIdentifier];
    queuedCustomInfo2 = [(TIAppAutofillManager *)self queuedCustomInfo];
    documentIdentifier2 = [queuedCustomInfo2 documentIdentifier];
    v8 = [documentIdentifier isEqual:documentIdentifier2];

    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = +[TIKeyboardInputManagerLoader sharedLoader];
    queuedCustomInfo = [v9 interactingConnection];

    if (queuedCustomInfo)
    {
      remoteObjectProxy = [queuedCustomInfo remoteObjectProxy];
      queuedCustomInfo3 = [(TIAppAutofillManager *)self queuedCustomInfo];
      customInfo = [queuedCustomInfo3 customInfo];
      [remoteObjectProxy processPayloadInfo:customInfo];

      [(TIAppAutofillManager *)self setQueuedCustomInfo:0];
    }
  }

LABEL_9:
  clientIdentifier = [stateCopy clientIdentifier];
  [(TIAppAutofillManager *)self setClientIdentifierForLastKeyboardSync:clientIdentifier];
}

- (void)obtainCredential:(id)credential
{
  v15 = [(TIAppAutofillManager *)self customInfoFromCredential:credential];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  interactingConnection = [v4 interactingConnection];

  v6 = [TIXPCUtils obtainBundleIdentifierFromConnection:interactingConnection];
  if (interactingConnection)
  {
    clientIdentifierForLastKeyboardSync = [(TIAppAutofillManager *)self clientIdentifierForLastKeyboardSync];
    clientIdentifierForLastAutofillGeneration = [(TIAppAutofillManager *)self clientIdentifierForLastAutofillGeneration];
    if ([clientIdentifierForLastKeyboardSync isEqualToString:clientIdentifierForLastAutofillGeneration])
    {
      clientIdentifierForLastKeyboardSync2 = [(TIAppAutofillManager *)self clientIdentifierForLastKeyboardSync];
      v10 = [clientIdentifierForLastKeyboardSync2 isEqualToString:v6];

      if (v10)
      {
        remoteObjectProxy = [interactingConnection remoteObjectProxy];
        [remoteObjectProxy processPayloadInfo:v15];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = [TICredentialCustomInfo alloc];
  remoteObjectProxy = [(TIAppAutofillManager *)self documentIdentifierForLastAutofillGeneration];
  v13 = [(TICredentialCustomInfo *)v12 initWithCustomInfo:v15 documentIdentifier:remoteObjectProxy];
  [(TIAppAutofillManager *)self setQueuedCustomInfo:v13];

LABEL_7:
  date = [MEMORY[0x277CBEAA8] date];
  [(TIAppAutofillManager *)self setDateOfLastPasswordAutoFill:date];
}

- (id)initPrivate
{
  v15.receiver = self;
  v15.super_class = TIAppAutofillManager;
  v2 = [(TIAppAutofillManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.appAutofillManager", v3);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v4;

    v6 = objc_alloc_init(TIKeyboardSecureCandidateRenderer);
    secureCandidateRenderer = v2->_secureCandidateRenderer;
    v2->_secureCandidateRenderer = v6;

    v8 = objc_alloc_init(MEMORY[0x277D49DB8]);
    oneTimeCodeProvider = v2->_oneTimeCodeProvider;
    v2->_oneTimeCodeProvider = v8;

    [(SFAppAutoFillOneTimeCodeProvider *)v2->_oneTimeCodeProvider addObserver:v2];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getSFAppAutoFillPasskeyProviderClass_softClass;
    v20 = getSFAppAutoFillPasskeyProviderClass_softClass;
    if (!getSFAppAutoFillPasskeyProviderClass_softClass)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getSFAppAutoFillPasskeyProviderClass_block_invoke;
      v16[3] = &unk_278733760;
      v16[4] = &v17;
      __getSFAppAutoFillPasskeyProviderClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = objc_alloc_init(v10);
    passkeyProvider = v2->_passkeyProvider;
    v2->_passkeyProvider = v12;
  }

  return v2;
}

+ (BOOL)isSuggestingStrongPasswordsAvailable
{
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = MEMORY[0x277D49DF0];

  return [v2 isSuggestingStrongPasswordsAvailable];
}

+ (void)_fetchCredentialsWithPasskeyProvider:(id)provider autofillContext:(id)context textContentType:(id)type applicationIdentifier:(id)identifier auditToken:(id *)token completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  contextCopy = context;
  identifierCopy = identifier;
  completionCopy = completion;
  typeCopy = type;
  v17 = dispatch_group_create();
  v18 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__80;
  v64 = __Block_byref_object_dispose__81;
  v65 = 0;
  v19 = [typeCopy isEqualToString:*MEMORY[0x277D6FCE8]];

  if (v19)
  {
    if (!providerCopy)
    {
      goto LABEL_13;
    }

    v20 = *MEMORY[0x277D6F9C8];
    goto LABEL_6;
  }

  v20 = *MEMORY[0x277D6F9C8];
  v21 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277D6F9C8]];
  if ([v21 isEqualToString:@"webauthn"])
  {

    if (!providerCopy)
    {
      goto LABEL_13;
    }

LABEL_6:
    dispatch_group_enter(v17);
    v22 = [contextCopy objectForKeyedSubscript:v20];
    if ([v22 isEqualToString:@"webauthn"])
    {
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = v59;
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v25 = __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke;
LABEL_11:
        v24[2] = v25;
        v24[3] = &unk_27872ED18;
        v24[4] = v18;
        v24[6] = &v60;
        v24[5] = v17;
        [providerCopy getAvailablePasskeysForApplicationIdentifier:identifierCopy completionHandler:v24];

        v21 = v24[4];
        goto LABEL_12;
      }
    }

    else
    {
    }

    v24 = v58;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v25 = __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_2;
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__80;
  v56 = __Block_byref_object_dispose__81;
  v57 = 0;
  dispatch_group_enter(v17);
  v45 = MEMORY[0x277D85DD0];
  v46 = 3221225472;
  v47 = __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_3;
  v48 = &unk_27872ED18;
  v26 = v18;
  v49 = v26;
  v51 = &v52;
  v27 = v17;
  v50 = v27;
  [TIAppAutofillManager getCredentialsWithApplicationIdentifier:identifierCopy autofillContext:contextCopy withCompletionHandler:&v45];
  v28 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v27, v28))
  {
    v29 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Timeout while waiting for credentials", "+[TIAppAutofillManager _fetchCredentialsWithPasskeyProvider:autofillContext:textContentType:applicationIdentifier:auditToken:completion:]", v45, v46, v47, v48, v49];
      *buf = 138412290;
      v69 = v44;
      _os_log_error_impl(&dword_22CA55000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [v26 lock];
  v30 = [v61[5] copy];
  v31 = v30;
  v32 = MEMORY[0x277CBEBF8];
  if (v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  v34 = v33;

  v35 = [v53[5] copy];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v32;
  }

  v38 = v37;

  [v26 unlock];
  if ([v34 count])
  {
    firstObject = [v34 firstObject];
    v67 = firstObject;
    v40 = &v67;
  }

  else
  {
    firstObject2 = [v38 firstObject];

    if (!firstObject2)
    {
      v42 = 0;
      goto LABEL_28;
    }

    firstObject = [v38 firstObject];
    v66 = firstObject;
    v40 = &v66;
  }

  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

LABEL_28:
  completionCopy[2](completionCopy, v42);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v60, 8);

  v43 = *MEMORY[0x277D85DE8];
}

void __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) lock];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 40));
}

void __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) lock];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 40));
}

void __137__TIAppAutofillManager__fetchCredentialsWithPasskeyProvider_autofillContext_textContentType_applicationIdentifier_auditToken_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  v5 = [v4 copy];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) unlock];
  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

+ (void)getCredentialsWithApplicationIdentifier:(id)identifier autofillContext:(id)context withCompletionHandler:(id)handler
{
  v20[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  handlerCopy = handler;
  if (+[TIAppAutofillManager _simulatesAutofillCandidates](TIAppAutofillManager, "_simulatesAutofillCandidates") && [MEMORY[0x277D49DE8] instancesRespondToSelector:sel_initWithUser_password_site_creationDate_])
  {
    v10 = objc_alloc(MEMORY[0x277D49DE8]);
    date = [MEMORY[0x277CBEAA8] date];
    v12 = [v10 initWithUser:@"simulateduser573" password:@"thisisasimulatedcandidate" site:@"apple.com" creationDate:date];

    v13 = objc_alloc(MEMORY[0x277D49DE8]);
    date2 = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 initWithUser:@"Pablo 黑客 Jjyy" password:@"ascenders & descenders" site:@"jjyyPP.apple.com" creationDate:date2];

    v20[0] = v12;
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    handlerCopy[2](handlerCopy, v16);
  }

  v17 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277D6F9B8]];
  if ([v17 count] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [objc_opt_class() getCredentialsForAppWithAppID:identifierCopy externallyVerifiedAndApprovedSharedWebCredentialDomains:v17 completionHandler:handlerCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v18 = [contextCopy objectForKey:@"_WebViewURL"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v18 = 0;
      }

      [objc_opt_class() getCredentialsForAppWithAppID:identifierCopy websiteURL:v18 completionHandler:handlerCopy];
    }

    else
    {
      [MEMORY[0x277D49DF0] getCredentialsForAppWithAppID:identifierCopy completionHandler:handlerCopy];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_simulatesAutofillCandidates
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6F9A0]];

  return v3;
}

uint64_t __38__TIAppAutofillManager_sharedInstance__block_invoke()
{
  instance = [[TIAppAutofillManager alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

+ (void)setSharedAppAutofillManager:(id)manager
{
  managerCopy = manager;
  if (__testingInstance != managerCopy)
  {
    v5 = managerCopy;
    objc_storeStrong(&__testingInstance, manager);
    managerCopy = v5;
  }
}

@end