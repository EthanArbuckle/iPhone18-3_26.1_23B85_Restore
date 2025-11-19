@interface TIAppAutofillManager
+ (BOOL)_simulatesAutofillCandidates;
+ (BOOL)isSuggestingStrongPasswordsAvailable;
+ (id)sharedInstance;
+ (void)_fetchCredentialsWithPasskeyProvider:(id)a3 autofillContext:(id)a4 textContentType:(id)a5 applicationIdentifier:(id)a6 auditToken:(id *)a7 completion:(id)a8;
+ (void)getCredentialsWithApplicationIdentifier:(id)a3 autofillContext:(id)a4 withCompletionHandler:(id)a5;
+ (void)setSharedAppAutofillManager:(id)a3;
- (BOOL)hasAutofillContextEntitlementForConnection:(id)a3;
- (BOOL)hasCoreTelephonyEntitlementForConnection:(id)a3;
- (BOOL)isValidedString:(id)a3;
- (BOOL)shouldAuthenticateToAcceptAutofill;
- (id)_autoFillPayloadForPasskey:(id)a3 keyboardInfoType:(unint64_t *)a4;
- (id)_autoFillPayloadForPasswordCredential:(id)a3 keyboardInfoType:(unint64_t *)a4;
- (id)_secureCandidateForPasskey:(id)a3 fromLocalizedStringKey:(id)a4;
- (id)_secureCandidateForPasswordCredential:(id)a3 fromLocalizedStringKey:(id)a4;
- (id)customInfoFromCredential:(id)a3;
- (id)generateCellularCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4;
- (id)generateOneTimeCodeCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4;
- (id)initPrivate;
- (id)localizedCellularAutofillStringForKey:(id)a3 defaultValue:(id)a4;
- (void)_acceptOneTimeCode:(id)a3;
- (void)_finishAutofillFormCandidatesOnMainThreadWithCredentials:(id)a3 renderTraits:(id)a4 documentIdentifier:(id)a5 clientIdentifier:(id)a6 completion:(id)a7;
- (void)generateAutofillFormCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4 completion:(id)a5;
- (void)generateAutofillFormSuggestedUsernameWithRenderTraits:(id)a3 withKeyboardState:(id)a4 completionHandler:(id)a5;
- (void)generateHideMyEmailCandidateWithSlotID:(unsigned int)a3 applicationBundleId:(id)a4 applicationId:(id)a5 keyboardState:(id)a6 secureCandidateWidth:(double)a7 secureCandidateHash:(unint64_t)a8 isSecureCandidateDoubleLines:(BOOL)a9 completionHandler:(id)a10;
- (void)generateJustHMEAutofillFormSuggestionWithRenderTraits:(id)a3 withKeyboardState:(id)a4 applicationID:(id)a5 applicationBundleID:(id)a6 completionHandler:(id)a7;
- (void)obtainCredential:(id)a3;
- (void)oneTimeCodeProvider:(id)a3 didUpdateOneTimeCode:(id)a4;
- (void)oneTimeCodeProviderReceivedCode:(id)a3;
- (void)presentHideMyEmailUI:(id)a3 keyboardState:(id)a4 completion:(id)a5;
- (void)pushQueuedCredentialIfNecessaryForKeyboardState:(id)a3;
- (void)shouldAcceptAutofill:(id)a3 withPayload:(id)a4 completion:(id)a5;
- (void)shouldAcceptOneTimeCode:(id)a3 completion:(id)a4;
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

- (id)_autoFillPayloadForPasskey:(id)a3 keyboardInfoType:(unint64_t *)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F8F0];
  *a4 = 2056;
  v10 = *v4;
  v11[0] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_secureCandidateForPasskey:(id)a3 fromLocalizedStringKey:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 username];
  v9 = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v10 = [v9 localizedStringForKey:v7];

  v11 = MEMORY[0x277CCACA8];
  v24 = 0;
  v12 = [v6 relyingPartyIdentifier];
  v13 = [v11 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v24, v12];
  v14 = v24;
  v15 = &stru_283FDFAF8;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  if (objc_opt_respondsToSelector())
  {
    v17 = [v6 customTitle];

    if (v17)
    {
      v18 = [v6 customTitle];

      v16 = v18;
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
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key %@: %@", "-[TIAppAutofillManager _secureCandidateForPasskey:fromLocalizedStringKey:]", v7, v14];
      *buf = 138412290;
      v26 = v23;
      _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v20 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v16 secureContent:v8 secureFormattedContent:v8 input:&stru_283FDFAF8 truncationSentinel:0];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_autoFillPayloadForPasswordCredential:(id)a3 keyboardInfoType:(unint64_t *)a4
{
  v5 = a3;
  v6 = [v5 user];
  v7 = [v5 password];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  if ([v5 isExternal])
  {
    *a4 = 264;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v10 = MEMORY[0x277D6F8D0];
LABEL_12:
    [v8 setObject:v9 forKey:*v10];
    goto LABEL_13;
  }

  *a4 = 24;
  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x277D6F918]];
  }

  if (v7)
  {
    [v8 setObject:v7 forKey:*MEMORY[0x277D6F8F8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 requestedHost];
  }

  else
  {
    [v5 site];
  }
  v9 = ;
  if (v9)
  {
    v10 = MEMORY[0x277D6F8D8];
    goto LABEL_12;
  }

LABEL_13:

  return v8;
}

- (id)_secureCandidateForPasswordCredential:(id)a3 fromLocalizedStringKey:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 user];
  v9 = [v6 site];
  v10 = [v6 customTitle];
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277D49DF0] textSuggestionHeaderForCredential:v6];
LABEL_3:
    v12 = v11;
    goto LABEL_23;
  }

  if ([v6 isExternal] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [MEMORY[0x277D49DF0] textSuggestionHeaderForExternalCredential:v6];
    goto LABEL_3;
  }

  v13 = [(__CFString *)v9 length];
  v14 = v9;
  if (!v13)
  {
    if ([(__CFString *)v10 length])
    {
      v14 = v10;
    }

    else
    {
      v14 = &stru_283FDFAF8;
    }
  }

  v15 = v14;
  v16 = [(__CFString *)v15 length];
  v17 = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v18 = v17;
  if (v16)
  {
    v41 = v7;
    v19 = [v17 localizedStringForKey:v7];

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

    v7 = v41;
  }

  else
  {
    v12 = [v17 localizedStringForKey:@"AUTOFILL_SAVED_PASSWORD_TITLE"];
  }

LABEL_23:
  if (![v8 length])
  {
    v25 = [v6 creationDate];

    if (v25)
    {
      v42 = v7;
      v26 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v27 = [v26 localizedStringForKey:@"SAFARI_CREDENTIAL_DATE"];

      v28 = MEMORY[0x277CCA968];
      v29 = [v6 creationDate];
      v30 = [v28 localizedStringFromDate:v29 dateStyle:1 timeStyle:0];

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

      v8 = v34;
      v7 = v42;
    }
  }

  v36 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v12 secureContent:v8 secureFormattedContent:v8 input:&stru_283FDFAF8 truncationSentinel:0];

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (void)oneTimeCodeProvider:(id)a3 didUpdateOneTimeCode:(id)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D6F8E0];
  v10[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = +[TIKeyboardInputManagerLoader sharedLoader];
  v6 = [v5 interactingConnection];

  if (v6)
  {
    v7 = [v6 remoteObjectProxy];
    [v7 processPayloadInfo:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)oneTimeCodeProviderReceivedCode:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D6F8E0];
  v9[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  v5 = [v4 interactingConnection];

  if (v5)
  {
    v6 = [v5 remoteObjectProxy];
    [v6 processPayloadInfo:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)presentHideMyEmailUI:(id)a3 keyboardState:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = objc_alloc_init(MEMORY[0x277CF02A0]);
  v9 = [v6 altDSID];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [v6 applicationKey];
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v11;
  v13 = [v6 applicationBundleId];

  if (!v13)
  {
LABEL_6:
    v7[2](v7, 0);
    goto LABEL_7;
  }

  v14 = objc_alloc(MEMORY[0x277CF0298]);
  v15 = [v6 applicationKey];
  v16 = [v6 altDSID];
  v17 = [v6 applicationBundleId];
  v18 = [v14 initWithKey:v15 altDSID:v16 clientAppBundleId:v17];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__TIAppAutofillManager_presentHideMyEmailUI_keyboardState_completion___block_invoke;
  v19[3] = &unk_27872EF20;
  v20 = v7;
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

- (void)_acceptOneTimeCode:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(TIAppAutofillManager *)self setLastAutofilledUsername:0];
    v5 = [v4 customInfoType];

    if (v5 == 64)
    {
      [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider consumeCurrentOneTimeCode];
    }

    oneTimeCodeProvider = self->_oneTimeCodeProvider;

    [(SFAppAutoFillOneTimeCodeProvider *)oneTimeCodeProvider removeObserverForOneTimeCode:self];
  }
}

- (void)shouldAcceptOneTimeCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (![v6 isOneTimeCodeThatRequiresAuthentication])
    {
      goto LABEL_7;
    }

    v8 = [(TIAppAutofillManager *)self laContext];

    if (!v8)
    {
      v9 = objc_alloc_init(getLAContextClass());
      [(TIAppAutofillManager *)self setLaContext:v9];
    }

    v10 = [(TIAppAutofillManager *)self laContext];
    v11 = [v10 canEvaluatePolicy:1 error:0];

    if (v11)
    {
      v12 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v13 = [v12 localizedStringForKey:@"TOTP_AUTOFILL_AUTH_ALERT_TITLE"];

      v14 = [(TIAppAutofillManager *)self laContext];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__TIAppAutofillManager_shouldAcceptOneTimeCode_completion___block_invoke;
      v15[3] = &unk_27872EEF8;
      v17 = v7;
      v15[4] = self;
      v16 = v6;
      [v14 evaluatePolicy:1 localizedReason:v13 reply:v15];
    }

    else
    {
LABEL_7:
      (*(v7 + 2))(v7, 1);
      [(TIAppAutofillManager *)self _acceptOneTimeCode:v6];
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

- (void)shouldAcceptAutofill:(id)a3 withPayload:(id)a4 completion:(id)a5
{
  v105 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      v77 = v10;
      v12 = [v8 customInfoType];
      if (v12 == 24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277D6F918]];
        [(TIAppAutofillManager *)self setLastAutofilledUsername:v13];

        v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277D6F8D8]];
      }

      else
      {
        v14 = 0;
      }

      v15 = [v8 customInfoType];
      v16 = v15 == 264;
      v78 = v9;
      v79 = self;
      if (v15 == 264 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v17 = [v9 objectForKeyedSubscript:*MEMORY[0x277D6F8D0]];
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

      v18 = [v8 customInfoType];
      v75 = v8;
      v19 = [v8 customInfoType];
      v20 = [MEMORY[0x277CCAE80] currentConnection];
      v21 = [TIXPCUtils obtainApplicationIdentifierFromConnection:v20];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke;
      aBlock[3] = &unk_27872EEA8;
      v92 = v12 == 24;
      aBlock[4] = v79;
      v22 = v14;
      v88 = v22;
      v93 = v16;
      v23 = v21;
      v25 = v12 == 24 || v18 == 512;
      v73 = v23;
      v89 = v23;
      v94 = v19 == 2056;
      v26 = v19 == 2056 || v25;
      v9 = v78;
      v72 = v78;
      v90 = v72;
      v11 = v77;
      v91 = v77;
      v76 = _Block_copy(aBlock);
      if (![(TIAppAutofillManager *)v79 shouldAuthenticateToAcceptAutofill]|| !v26)
      {
        v37 = v76;
        (*(v76 + 2))(v76, 1, 0);
LABEL_77:

        v8 = v75;
        goto LABEL_78;
      }

      v69 = v22;
      v27 = [MEMORY[0x277CCAE80] currentConnection];
      v71 = [TIXPCUtils obtainBundleIdentifierFromConnection:v27];

      v28 = objc_alloc_init(getLAContextClass());
      [(TIAppAutofillManager *)v79 setLaContext:v28];

      v29 = [[TIKeyboardSecureCandidateRenderer alloc] initForLocalizedStrings];
      v30 = deviceClassString();
      v68 = v30;
      if (v12 == 24)
      {
        v31 = MEMORY[0x277CCACA8];
        v32 = [v29 localizedStringForKey:@"AUTOFILL_AUTH_PASSCODE_TITLE"];
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
        if (v18 == 512)
        {
          v40 = MEMORY[0x277CCACA8];
          v41 = [v29 localizedStringForKey:@"TOTP_AUTOFILL_AUTH_PASSCODE_TITLE"];
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
          if (v19 != 2056)
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
              v52 = [v50 sharedInstance];
              if ([v52 isFeatureEnabled])
              {
                v49 = 1025;
              }

              else
              {
                v49 = 2;
              }
            }

            v53 = v36;
            v54 = [(TIAppAutofillManager *)v79 laContext];
            v83 = 0;
            v55 = [v54 canEvaluatePolicy:v49 error:&v83];
            v56 = v83;

            if (v55)
            {
              v9 = v78;
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
              v60 = [(TIAppAutofillManager *)v79 laContext];
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v80[2] = __68__TIAppAutofillManager_shouldAcceptAutofill_withPayload_completion___block_invoke_396;
              v80[3] = &unk_27872EED0;
              v80[4] = v79;
              v82 = v57;
              v37 = v76;
              v81 = v76;
              [v60 evaluatePolicy:v49 options:v70 reply:v80];

              if (v58)
              {
                v61 = [TICredentialCustomInfo alloc];
                v62 = [(TIAppAutofillManager *)v79 documentIdentifierForLastAutofillGeneration];
                v63 = [(TICredentialCustomInfo *)v61 initWithCustomInfo:v72 documentIdentifier:v62];
                [(TIAppAutofillManager *)v79 setQueuedUnauthenticatedCustomInfo:v63];
              }

              v59 = v71;
            }

            else
            {
              [(TIAppAutofillManager *)v79 setLaContext:0];
              v37[2](v37, 1, 0);
              v11 = v77;
              v9 = v78;
              v59 = v71;
            }

            v22 = v69;
            goto LABEL_77;
          }

          v44 = MEMORY[0x277CCACA8];
          v45 = [v29 localizedStringForKey:@"PASSKEY_AUTOFILL_AUTH_PASSCODE_TITLE"];
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
      v48 = [v29 localizedStringForKey:v39];

      goto LABEL_60;
    }

    (*(v10 + 2))(v10, 1);
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
  v4 = [v2 sharedConnection];
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
    v8 = [v4 effectiveBoolValueForSetting:*v5] == 1;

    return v8;
  }

  else
  {
    dlerror();
    v10 = abort_report_np();
    return __getMCProfileConnectionClass_block_invoke(v10);
  }
}

- (void)generateHideMyEmailCandidateWithSlotID:(unsigned int)a3 applicationBundleId:(id)a4 applicationId:(id)a5 keyboardState:(id)a6 secureCandidateWidth:(double)a7 secureCandidateHash:(unint64_t)a8 isSecureCandidateDoubleLines:(BOOL)a9 completionHandler:(id)a10
{
  v96 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a10;
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
  [v19 getApprovedSharedWebCredentialsEntriesForAppWithAppID:v16 completionHandler:v86];
  v21 = dispatch_time(0, 200000000);
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = TIAppAutofillOSLogFacility();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%s HME: Timeout on getApprovedSharedWebCredentialsEntriesForAppWithAppID:completionHandler:", "-[TIAppAutofillManager generateHideMyEmailCandidateWithSlotID:applicationBundleId:applicationId:keyboardState:secureCandidateWidth:secureCandidateHash:isSecureCandidateDoubleLines:completionHandler:]"];
      v40 = v39 = v16;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v40;
      _os_log_error_impl(&dword_22CA55000, v22, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

      v16 = v39;
    }

    v17[2](v17, 0);
  }

  else
  {
    v23 = [MEMORY[0x277CF0130] sharedInstance];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__80;
    v94 = __Block_byref_object_dispose__81;
    v95 = objc_alloc_init(MEMORY[0x277CF02A0]);
    v42 = v23;
    v41 = [v23 primaryAuthKitAccount];
    v44 = v16;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x3032000000;
    v84[3] = __Block_byref_object_copy__80;
    v84[4] = __Block_byref_object_dispose__81;
    v85 = [v23 altDSIDForAccount:v41];
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
    v43 = v15;
    v24 = v15;
    v71 = v24;
    v25 = v16;
    v72 = v25;
    v73 = self;
    v26 = v17;
    v27 = a3;
    v79 = a3;
    v77 = a7;
    v78 = a8;
    v80 = a9;
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
    v63 = self;
    v69 = v27;
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
    v15 = v43;
    v35 = v34;
    v52 = v34;
    v55 = v89;
    v56 = v84;
    v51 = v30;
    v57 = &buf;
    objc_copyWeak(&v58, &location);
    v59 = v27;
    v17 = v26;
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
    v16 = v44;

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

- (void)generateJustHMEAutofillFormSuggestionWithRenderTraits:(id)a3 withKeyboardState:(id)a4 applicationID:(id)a5 applicationBundleID:(id)a6 completionHandler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
  if (v12)
  {
    v64 = v16;
    v17 = v12;
    v18 = [v13 documentIdentifier];
    v66 = [v18 copy];

    v19 = [v13 clientIdentifier];
    v65 = [v19 copy];

    v20 = [(TIAppAutofillManager *)self secureCandidateRenderer];

    v21 = MEMORY[0x277D6F980];
    if (v20)
    {
      v22 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v23 = [v22 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v23 && [v23 length])
      {
LABEL_15:
        [v17 setHideMyEmailLocalizedText:v23];
        v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
        v62 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:&stru_283FDFAF8 secureContent:v23 secureFormattedContent:v23 input:&stru_283FDFAF8 truncationSentinel:0];
        [v28 addObject:?];
        v29 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        v63 = v17;
        v30 = [v29 slotIDsFromSecureCandidates:v28 withRenderTraits:v17];

        if (v30)
        {
          v60 = v13;
          v61 = v15;
          v58 = v12;
          v31 = [v30 objectAtIndex:0];
          v32 = [v31 slotID];

          v33 = [MEMORY[0x277CBEB38] dictionary];
          v34 = v14;
          v35 = v33;
          if (v23)
          {
            v36 = v23;
          }

          else
          {
            v36 = *v21;
          }

          [v33 setObject:v36 forKey:*MEMORY[0x277D6F910]];
          v37 = [(TIAppAutofillManager *)self secureCandidateRenderer];
          v38 = [v37 secureCandidateCache];
          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v32];
          [v38 setObject:v35 forKey:v39];

          v40 = +[TIKeyboardSecureTouchManager sharedInstance];
          [v40 registerSlotID:v32];

          v41 = _os_feature_enabled_impl();
          v59 = v34;
          if (v34 && v61 && v41)
          {
            v57 = [v30 firstObject];
            [v57 secureCandidateWidth];
            v43 = v42;
            v44 = [v28 firstObject];
            v56 = [v44 candidateHash];
            v45 = [v30 firstObject];
            v55 = [v45 isSecureCandidateDoubleLines];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __148__TIAppAutofillManager_generateJustHMEAutofillFormSuggestionWithRenderTraits_withKeyboardState_applicationID_applicationBundleID_completionHandler___block_invoke;
            v67[3] = &unk_27872F2B0;
            v67[4] = self;
            v68 = v66;
            v69 = v65;
            v70 = v64;
            v16 = v64;
            v15 = v61;
            [(TIAppAutofillManager *)self generateHideMyEmailCandidateWithSlotID:v32 applicationBundleId:v61 applicationId:v59 keyboardState:v60 secureCandidateWidth:v56 secureCandidateHash:v55 isSecureCandidateDoubleLines:v43 completionHandler:v67];

            v12 = v58;
          }

          else
          {
            [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v66];
            [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v65];
            v16 = v64;
            v64[2](v64, 0);
            v12 = v58;
            v15 = v61;
          }

          v14 = v59;
          v13 = v60;
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

          v16 = v64;
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
    v51 = v50 = v16;
    *buf = 138412290;
    v72 = v51;
    _os_log_error_impl(&dword_22CA55000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

    v16 = v50;
  }

  (*(v16 + 2))(v16, 0);
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

- (void)generateAutofillFormSuggestedUsernameWithRenderTraits:(id)a3 withKeyboardState:(id)a4 completionHandler:(id)a5
{
  v105 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v85 = a4;
  v80 = a5;
  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
  v87 = self;
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__80;
  v101 = __Block_byref_object_dispose__81;
  v102 = [MEMORY[0x277CBEB18] array];
  if ([MEMORY[0x277D49DF0] isAppAutoFillAvailable])
  {
    v9 = dispatch_semaphore_create(0);
    v10 = [v85 textInputTraits];
    v11 = [v10 keyboardType] == 7;

    v12 = [MEMORY[0x277D49E08] sharedProvider];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __114__TIAppAutofillManager_generateAutofillFormSuggestedUsernameWithRenderTraits_withKeyboardState_completionHandler___block_invoke;
    v94[3] = &unk_27872ED40;
    v95 = v9;
    v96 = &v97;
    v13 = v9;
    [v12 suggestedUsersOfType:v11 completionHandler:v94];

    v14 = dispatch_time(0, 200000000);
    dispatch_semaphore_wait(v13, v14);
  }

  if (_os_feature_enabled_impl() && [v85 autofillSubMode] == 7)
  {
    v15 = [(TIAppAutofillManager *)v87 secureCandidateRenderer];

    if (v15)
    {
      v16 = [(TIAppAutofillManager *)v87 secureCandidateRenderer];
      v17 = [v16 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];

      if (v17 && [v17 length])
      {
LABEL_15:
        [v8 setHideMyEmailLocalizedText:v17];
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
  v81 = v8;
  if (v21 >= [v8 maxCellCount])
  {
    v22 = [v8 maxCellCount];
  }

  else
  {
    v22 = [v98[5] count];
  }

  v23 = v22;
  v88 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
  v86 = [MEMORY[0x277CBEB18] arrayWithCapacity:v23];
  v24 = v85;
  v25 = v87;
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
      v24 = v85;
      v25 = v87;
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
        v36 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
        v35 = [v36 localizedStringForKey:@"SAFARI_CREDENTIAL_SUGGESTED_USERNAME"];
      }

      if (_os_feature_enabled_impl() && [v24 autofillSubMode] == 7)
      {
        v37 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
        v38 = [v37 localizedStringForKey:@"SAFARI_HIDE_MY_EMAIL_SUGGESTION"];
        v39 = [v34 isEqualToString:v38];

        if (v39)
        {

          v35 = &stru_283FDFAF8;
        }

        v24 = v85;
        v25 = v87;
      }

      v40 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v35 secureContent:v34 secureFormattedContent:v34 input:&stru_283FDFAF8 truncationSentinel:0];
      [v88 addObject:v40];
    }
  }

  v41 = [(TIAppAutofillManager *)v25 secureCandidateRenderer];
  v42 = [v41 slotIDsFromSecureCandidates:v88 withRenderTraits:v81];

  if ([v42 count])
  {
    v43 = 0;
    v82 = 0;
    v83 = 0;
    v44 = 0;
    v84 = *MEMORY[0x277D6F910];
    v45 = 0.0;
    while (1)
    {
      v46 = [v98[5] objectAtIndex:v43];
      v47 = [v42 objectAtIndex:v43];
      v48 = [v47 slotID];

      if (_os_feature_enabled_impl() && [v85 autofillSubMode] == 7 && (-[TIAppAutofillManager secureCandidateRenderer](v87, "secureCandidateRenderer"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v49, "localizedStringForKey:", @"SAFARI_HIDE_MY_EMAIL_SUGGESTION"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v46, "isEqualToString:", v50), v50, v49, v51))
      {
        v45 = 0.0;
        if ([v42 count] > v43)
        {
          v52 = [v42 objectAtIndexedSubscript:v43];
          [v52 secureCandidateWidth];
          v45 = v53;
        }

        v54 = [v88 objectAtIndexedSubscript:v43];
        v83 = [v54 candidateHash];

        if ([v42 count] <= v43)
        {
          v82 = 0;
          goto LABEL_54;
        }

        v55 = [v42 objectAtIndexedSubscript:v43];
        v82 = [v55 isSecureCandidateDoubleLines];
      }

      else
      {
        v55 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:v48 customInfoType:128 applicationKey:&stru_283FDFAF8 applicationBundleId:&stru_283FDFAF8 altDSID:&stru_283FDFAF8];
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
        v59 = [MEMORY[0x277CBEB38] dictionary];
        [v59 setObject:v46 forKey:v84];
        v60 = [(TIAppAutofillManager *)v87 secureCandidateRenderer];
        v61 = [v60 secureCandidateCache];
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v48];
        [v61 setObject:v59 forKey:v62];

        v63 = +[TIKeyboardSecureTouchManager sharedInstance];
        [v63 registerSlotID:v48];

        v48 = v44;
      }

LABEL_54:
      ++v43;
      v44 = v48;
      if (v43 >= [v42 count])
      {
        goto LABEL_58;
      }
    }
  }

  v48 = 0;
  v83 = 0;
  v82 = 0;
  v45 = 0.0;
LABEL_58:
  v64 = v85;
  if ((_os_feature_enabled_impl() & 1) == 0 || [v85 autofillSubMode] != 7 || !v48)
  {
    goto LABEL_71;
  }

  v65 = [MEMORY[0x277CCAE80] currentConnection];
  v66 = [v85 autofillContext];
  v67 = [v66 objectForKey:*MEMORY[0x277D6F9B0]];

  if (!v67)
  {
    v67 = [TIXPCUtils obtainApplicationIdentifierFromConnection:v65];
  }

  v68 = [v85 autofillContext];
  v69 = [v68 objectForKey:*MEMORY[0x277D6F9C0]];

  if (!v69)
  {
    v69 = [TIXPCUtils obtainBundleIdentifierFromConnection:v65];
  }

  if (!v69 || !v67)
  {

LABEL_71:
    v74 = [v85 documentIdentifier];
    [(TIAppAutofillManager *)v87 setDocumentIdentifierForLastAutofillGeneration:v74];

    v75 = [v85 clientIdentifier];
    [(TIAppAutofillManager *)v87 setClientIdentifierForLastAutofillGeneration:v75];

    v73 = v80;
    v72 = v86;
    (*(v80 + 2))(v80, v86);
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
  v89[4] = v87;
  v90 = v85;
  v72 = v86;
  v91 = v86;
  v92 = v80;
  v93 = v70;
  v64 = v85;
  [(TIAppAutofillManager *)v87 generateHideMyEmailCandidateWithSlotID:v48 applicationBundleId:v69 applicationId:v67 keyboardState:v90 secureCandidateWidth:v83 secureCandidateHash:v82 & 1 isSecureCandidateDoubleLines:v45 completionHandler:v89];

  v73 = v80;
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

- (id)generateCellularCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 textInputTraits];
  v9 = [v8 textContentType];
  v10 = *MEMORY[0x277D6FC40];
  if ([v9 isEqualToString:*MEMORY[0x277D6FC40]])
  {

    goto LABEL_4;
  }

  v11 = [v7 textInputTraits];
  v12 = [v11 textContentType];
  v13 = [v12 isEqualToString:*MEMORY[0x277D6FC48]];

  if (v13)
  {
LABEL_4:
    v14 = deviceClassString();
    v15 = [v7 textInputTraits];
    v16 = [v15 textContentType];
    v17 = [v16 isEqualToString:v10];

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
    v24 = [(TIAppAutofillManager *)self coreTelephonyMockObject];

    v25 = [v7 textInputTraits];
    v26 = [v25 textContentType];
    v27 = [v26 isEqualToString:v10];
    v77 = v14;
    v78 = v23;
    if (v24)
    {
      v28 = v27 ^ 1u;

      v29 = [(TIAppAutofillManager *)self coreTelephonyMockObject];
      v30 = [v29 retrieveDeviceIdentifier:v28];
LABEL_11:

      [v6 setShouldForceDoubleLineCandidateForCellularAutofill:1];
      v31 = MEMORY[0x277D6F570];
      v30 = v30;
      v73 = [[v31 alloc] initWithSecureHeader:v23 secureContent:v30 secureFormattedContent:v30 input:v30 truncationSentinel:0];
      [v79 addObject:?];
      v32 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v74 = v6;
      v33 = [v32 slotIDsFromSecureCandidates:v79 withRenderTraits:v6];

      v34 = [v33 firstObject];
      v35 = [v34 slotID];

      v36 = [v7 textInputTraits];
      v37 = [v36 textContentType];
      if ([v37 isEqualToString:v10])
      {
        v38 = 0x2000;
      }

      else
      {
        v38 = 0x4000;
      }

      v39 = [v7 textInputTraits];
      v40 = [v39 textContentType];
      v41 = [v40 isEqualToString:v10];
      v42 = MEMORY[0x277D6F8C0];
      if (!v41)
      {
        v42 = MEMORY[0x277D6F8C8];
      }

      v43 = *v42;

      v44 = [MEMORY[0x277D6F3D8] secureCandidateForInput:v30 slotID:v35 customInfoType:v38];
      v45 = [v33 firstObject];
      [v45 secureCandidateWidth];
      [v44 setSecureCandidateWidth:?];

      v46 = [v79 firstObject];
      [v44 setSecureCandidateHash:{objc_msgSend(v46, "candidateHash")}];

      v47 = [v33 firstObject];
      [v44 setIsSecureCandidateDoubleLines:{objc_msgSend(v47, "isSecureCandidateDoubleLines")}];

      v48 = [MEMORY[0x277CBEB38] dictionary];
      [v48 setObject:v30 forKeyedSubscript:v43];

      v49 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v50 = [v49 secureCandidateCache];
      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35];
      [v50 setObject:v48 forKey:v51];

      v52 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v52 registerSlotID:v35];

      if (v44)
      {
        v88 = v44;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
      }

      else
      {
        v53 = 0;
      }

      v29 = v73;
      v6 = v74;
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

    v29 = [MEMORY[0x277CCAE80] currentConnection];
    if (![(TIAppAutofillManager *)self hasCoreTelephonyEntitlementForConnection:v29])
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
    v58 = [v7 autofillContext];
    v59 = [v58 objectForKey:*MEMORY[0x277D6F9C0]];

    v75 = v59;
    if (!v59)
    {
      v75 = [TIXPCUtils obtainBundleIdentifierFromConnection:v29];
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
      v71 = v70 = v29;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v71;
      _os_log_error_impl(&dword_22CA55000, v65, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);

      v29 = v70;
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

- (id)generateOneTimeCodeCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 autofillContext];
  v9 = [v8 objectForKey:@"_WebViewURL"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  v10 = [v7 textInputTraits];
  v11 = [v10 textContentType];
  v12 = [v11 isEqualToString:@"one-time-code"];

  v13 = [(TIAppAutofillManager *)self dateOfLastPasswordAutoFill];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(TIAppAutofillManager *)self dateOfLastPasswordAutoFill];
    [v14 timeIntervalSinceDate:v15];
    v112 = v16 <= 30.0;
  }

  else
  {
    v112 = 0;
  }

  v17 = [MEMORY[0x277CCAE80] currentConnection];
  v18 = [TIXPCUtils obtainApplicationIdentifierFromConnection:v17];
  v19 = [v18 isEqualToString:@"com.apple.InputUI"];
  v20 = TIAppAutofillOSLogFacility();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Grabbing application identifier from keyboardState.autofillContext.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v99;
      _os_log_debug_impl(&dword_22CA55000, v20, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    v20 = [v7 autofillContext];
    v22 = [v20 objectForKey:*MEMORY[0x277D6F9B0]];

    v18 = v22;
  }

  else if (v21)
  {
    v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Grabbing application identifier from xpc connection.", "-[TIAppAutofillManager generateOneTimeCodeCandidatesWithRenderTraits:withKeyboardState:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v100;
    _os_log_debug_impl(&dword_22CA55000, v20, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
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
    v23 = [v7 autofillContext];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x277D6F9B8]];

    v25 = dispatch_group_create();
    objc_opt_class();
    v110 = v17;
    v111 = v6;
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
        v34 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        v35 = [v34 slotIDsFromSecureCandidates:v32 withRenderTraits:v6];

        v36 = MEMORY[0x277D6F3D8];
        v37 = [v35 firstObject];
        v38 = [v37 slotID];
        v39 = [v36 secureCandidateForInput:&stru_283FDFAF8 slotID:v38 customInfoType:*v122];

        v40 = [v35 firstObject];
        v41 = [v40 slotID];

        v42 = [v35 firstObject];
        [v42 secureCandidateWidth];
        [v39 setSecureCandidateWidth:?];

        v108 = v32;
        v43 = [v32 firstObject];
        [v39 setSecureCandidateHash:{objc_msgSend(v43, "candidateHash")}];

        v44 = [v35 firstObject];
        [v39 setIsSecureCandidateDoubleLines:{objc_msgSend(v44, "isSecureCandidateDoubleLines")}];

        v45 = [(TIAppAutofillManager *)self secureCandidateRenderer];
        [v45 secureCandidateCache];
        v47 = v46 = v7;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v41];
        [v47 setObject:v33 forKey:v48];

        v7 = v46;
        v49 = +[TIKeyboardSecureTouchManager sharedInstance];
        [v49 registerSlotID:v41];

        v50 = [v46 documentIdentifier];
        v51 = [v50 copy];
        [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v51];

        v52 = [v46 clientIdentifier];
        v53 = [v52 copy];
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

        v61 = v117;
        v17 = v110;
        v6 = v111;
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
      v61 = [v60 firstObject];
    }

    else
    {
      v62 = v25;
      v63 = v24;
      v60 = +[TIKeyboardInputManagerLoader sharedLoader];
      v64 = [v60 interactingConnection];
      v65 = v64;
      if (v64)
      {
        [v64 auditToken];
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
      v61 = [v67 firstObject];

      v24 = v63;
      v25 = v62;
      v6 = v111;
    }

    v68 = MEMORY[0x277D6F3D8];
    v69 = [MEMORY[0x277D6F3C0] keyboardCandidateInputStringUsedWithAutofillExtraThatSignifiesOTPExtra];
    v109 = [v68 candidateWithCandidate:&stru_283FDFAF8 forInput:v69 customInfoType:32];

    if (v61)
    {
      v114 = v24;
      v103 = v7;
      v104 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v70 = [v61 localizedTitleForContext:0];
      v71 = [v61 displayCode];
      v72 = [v61 localizedSubtitleForContext:0];
      v73 = v72;
      if (v71)
      {
        v74 = v71;
      }

      else
      {
        v74 = v72;
      }

      v75 = v74;
      v107 = v9;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v61 requiresAuthentication])
      {
        v76 = v73;

        v75 = v76;
      }

      v106 = v25;
      v77 = [objc_alloc(MEMORY[0x277D6F570]) initWithSecureHeader:v70 secureContent:v75 secureFormattedContent:v73 input:&stru_283FDFAF8 truncationSentinel:0];
      [v104 addObject:v77];

      v78 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v79 = [v78 slotIDsFromSecureCandidates:v104 withRenderTraits:v111];

      v80 = [v61 code];
      v81 = [v79 firstObject];
      v82 = [v81 slotID];

      if ([v61 source] == 3)
      {
        v83 = 512;
      }

      else
      {
        v83 = 64;
      }

      v84 = [MEMORY[0x277D6F3D8] secureCandidateForInput:v80 slotID:v82 customInfoType:v83];
      v85 = [v79 firstObject];
      [v85 secureCandidateWidth];
      [v84 setSecureCandidateWidth:?];

      v86 = [v104 firstObject];
      [v84 setSecureCandidateHash:{objc_msgSend(v86, "candidateHash")}];

      v87 = [v79 firstObject];
      [v84 setIsSecureCandidateDoubleLines:{objc_msgSend(v87, "isSecureCandidateDoubleLines")}];

      if (objc_opt_respondsToSelector())
      {
        [v84 setIsOneTimeCodeThatRequiresAuthentication:{objc_msgSend(v61, "requiresAuthentication")}];
      }

      v88 = [MEMORY[0x277CBEB38] dictionary];
      [v88 setObject:v80 forKeyedSubscript:*MEMORY[0x277D6F8E8]];
      v89 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v90 = [v89 secureCandidateCache];
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v82];
      [v90 setObject:v88 forKey:v91];

      v92 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v92 registerSlotID:v82];

      [(SFAppAutoFillOneTimeCodeProvider *)self->_oneTimeCodeProvider addObserver:self forOneTimeCode:v61];
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
      v17 = v110;

      v6 = v111;
      v24 = v114;
      v7 = v103;
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

- (void)_finishAutofillFormCandidatesOnMainThreadWithCredentials:(id)a3 renderTraits:(id)a4 documentIdentifier:(id)a5 clientIdentifier:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v53 = a5;
  v14 = a6;
  v51 = a7;
  v15 = [v12 count];
  v52 = v14;
  if (v15 >= [v13 maxCellCount])
  {
    v16 = [v13 maxCellCount];
    [v13 setCellRenderingStyle:1];
  }

  else
  {
    v16 = [v12 count];
  }

  v59 = [MEMORY[0x277CBEB18] arrayWithCapacity:v16];
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:v16];
  v17 = @"SAFARI_CREDENTIAL_SITE_LONG";
  if (v16 <= 1)
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
  v22 = [v12 count];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    if (v16 <= 1)
    {
      v25 = @"SAFARI_CREDENTIAL_CUSTOM_TITLE_LONG";
    }

    else
    {
      v25 = @"SAFARI_CREDENTIAL_CUSTOM_TITLE_SHORT";
    }

    do
    {
      v26 = [v12 objectAtIndexedSubscript:v24];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 site];
        v28 = [v27 length];

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

  [v13 setShouldForceDoubleLineCandidateForPasswordAutofill:1];
  v33 = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v54 = v13;
  v34 = [v33 slotIDsFromSecureCandidates:v59 withRenderTraits:v13];

  if ([v34 count])
  {
    v35 = 0;
    v56 = v12;
    do
    {
      v36 = [v12 objectAtIndex:v35];
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
      v40 = [v39 slotID];

      v41 = [MEMORY[0x277D6F3D8] secureCandidateForInput:&stru_283FDFAF8 slotID:v40 customInfoType:v60[0]];
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
      v45 = [(TIAppAutofillManager *)self secureCandidateRenderer];
      v46 = [v45 secureCandidateCache];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v40];
      [v46 setObject:v38 forKey:v47];

      v48 = +[TIKeyboardSecureTouchManager sharedInstance];
      [v48 registerSlotID:v40];

      ++v35;
      v12 = v56;
    }

    while (v35 < [v34 count]);
  }

  [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:v53];
  [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:v52];
  v49 = [MEMORY[0x277D6F3D8] candidateWithCandidate:&stru_283FDFAF8 forInput:&stru_283FDFAF8 customInfoType:32];
  [v58 addObject:v49];
  v51[2](v51, v58);
}

- (void)generateAutofillFormCandidatesWithRenderTraits:(id)a3 withKeyboardState:(id)a4 completion:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TIAppAutofillManager *)self privateQueue];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__TIAppAutofillManager_generateAutofillFormCandidatesWithRenderTraits_withKeyboardState_completion___block_invoke;
  aBlock[3] = &unk_278730308;
  v12 = v11;
  v54 = v12;
  v13 = v10;
  v55 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [v9 documentIdentifier];

  if (v15)
  {
    [(TIAppAutofillManager *)self setDocumentIdentifierForLastAutofillGeneration:0];
    [(TIAppAutofillManager *)self setClientIdentifierForLastAutofillGeneration:0];
    if (+[TIAppAutofillManager _simulatesAutofillCandidates](TIAppAutofillManager, "_simulatesAutofillCandidates") || ([MEMORY[0x277D49DF0] isAppAutoFillAvailable] & 1) != 0)
    {
      v41 = v13;
      v42 = v12;
      v16 = [v9 documentIdentifier];
      v40 = [v16 copy];

      v17 = [v9 clientIdentifier];
      v39 = [v17 copy];

      v18 = [v9 textInputTraits];
      v19 = [v18 textContentType];
      v20 = [v19 copy];

      v21 = [v9 autofillContext];
      v22 = [v21 copy];

      v23 = [(TIAppAutofillManager *)self passkeyProvider];
      v24 = [MEMORY[0x277CCAE80] currentConnection];
      v25 = v24;
      *buf = 0u;
      v57 = 0u;
      if (v24)
      {
        [v24 auditToken];
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
          v30 = [(TIAppAutofillManager *)self privateQueue];
          v50 = *buf;
          v43 = v23;
          v44 = v22;
          v45 = v20;
          v46 = v27;
          v51 = v57;
          v38 = v27;
          v37 = v20;
          v31 = v22;
          v32 = v23;
          objc_copyWeak(&v49, &location);
          v47 = v8;
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

- (BOOL)hasCoreTelephonyEntitlementForConnection:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v3)
  {
    [v3 auditToken];
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
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain core telephony entitlement: %@", "-[TIAppAutofillManager hasCoreTelephonyEntitlementForConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = v12;
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

- (BOOL)hasAutofillContextEntitlementForConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
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
    v8 = [v7 BOOLValue];

    if (error)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Cannot obtain autofill context: %@", "-[TIAppAutofillManager hasAutofillContextEntitlementForConnection:]", error];
        token.val[0] = 138412290;
        *&token.val[1] = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", &token, 0xCu);
      }

      CFRelease(error);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)localizedCellularAutofillStringForKey:(id)a3 defaultValue:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(TIAppAutofillManager *)self secureCandidateRenderer];
  v9 = [v8 localizedStringForKey:v7];

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

    v11 = v6;
    v9 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)customInfoFromCredential:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 user];
  if ([(TIAppAutofillManager *)self isValidedString:v6])
  {
    v7 = [v4 user];
  }

  else
  {
    v7 = &stru_283FDFAF8;
  }

  v8 = [v4 password];
  if ([(TIAppAutofillManager *)self isValidedString:v8])
  {
    v9 = [v4 password];
  }

  else
  {
    v9 = &stru_283FDFAF8;
  }

  [v5 setObject:v7 forKey:*MEMORY[0x277D6F918]];
  [v5 setObject:v9 forKey:*MEMORY[0x277D6F8F8]];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v4 oneTimeCode];
    v11 = [(TIAppAutofillManager *)self isValidedString:v10];

    if (v11)
    {
      v12 = [v4 oneTimeCode];
      [v5 setObject:v12 forKey:*MEMORY[0x277D6F8E8]];
    }
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)isValidedString:(id)a3
{
  v3 = a3;
  v4 = v3;
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

  if (!v3)
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

- (void)pushQueuedCredentialIfNecessaryForKeyboardState:(id)a3
{
  v14 = a3;
  v4 = [(TIAppAutofillManager *)self queuedCustomInfo];
  if (v4 && (([v14 needAutofill] & 1) != 0 || objc_msgSend(v14, "autofillMode") == 1 || objc_msgSend(v14, "autofillMode") == 3))
  {
    v5 = [v14 documentIdentifier];
    v6 = [(TIAppAutofillManager *)self queuedCustomInfo];
    v7 = [v6 documentIdentifier];
    v8 = [v5 isEqual:v7];

    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = +[TIKeyboardInputManagerLoader sharedLoader];
    v4 = [v9 interactingConnection];

    if (v4)
    {
      v10 = [v4 remoteObjectProxy];
      v11 = [(TIAppAutofillManager *)self queuedCustomInfo];
      v12 = [v11 customInfo];
      [v10 processPayloadInfo:v12];

      [(TIAppAutofillManager *)self setQueuedCustomInfo:0];
    }
  }

LABEL_9:
  v13 = [v14 clientIdentifier];
  [(TIAppAutofillManager *)self setClientIdentifierForLastKeyboardSync:v13];
}

- (void)obtainCredential:(id)a3
{
  v15 = [(TIAppAutofillManager *)self customInfoFromCredential:a3];
  v4 = +[TIKeyboardInputManagerLoader sharedLoader];
  v5 = [v4 interactingConnection];

  v6 = [TIXPCUtils obtainBundleIdentifierFromConnection:v5];
  if (v5)
  {
    v7 = [(TIAppAutofillManager *)self clientIdentifierForLastKeyboardSync];
    v8 = [(TIAppAutofillManager *)self clientIdentifierForLastAutofillGeneration];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(TIAppAutofillManager *)self clientIdentifierForLastKeyboardSync];
      v10 = [v9 isEqualToString:v6];

      if (v10)
      {
        v11 = [v5 remoteObjectProxy];
        [v11 processPayloadInfo:v15];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = [TICredentialCustomInfo alloc];
  v11 = [(TIAppAutofillManager *)self documentIdentifierForLastAutofillGeneration];
  v13 = [(TICredentialCustomInfo *)v12 initWithCustomInfo:v15 documentIdentifier:v11];
  [(TIAppAutofillManager *)self setQueuedCustomInfo:v13];

LABEL_7:
  v14 = [MEMORY[0x277CBEAA8] date];
  [(TIAppAutofillManager *)self setDateOfLastPasswordAutoFill:v14];
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

+ (void)_fetchCredentialsWithPasskeyProvider:(id)a3 autofillContext:(id)a4 textContentType:(id)a5 applicationIdentifier:(id)a6 auditToken:(id *)a7 completion:(id)a8
{
  v70 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = a5;
  v17 = dispatch_group_create();
  v18 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__80;
  v64 = __Block_byref_object_dispose__81;
  v65 = 0;
  v19 = [v16 isEqualToString:*MEMORY[0x277D6FCE8]];

  if (v19)
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    v20 = *MEMORY[0x277D6F9C8];
    goto LABEL_6;
  }

  v20 = *MEMORY[0x277D6F9C8];
  v21 = [v13 objectForKeyedSubscript:*MEMORY[0x277D6F9C8]];
  if ([v21 isEqualToString:@"webauthn"])
  {

    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_6:
    dispatch_group_enter(v17);
    v22 = [v13 objectForKeyedSubscript:v20];
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
        [v12 getAvailablePasskeysForApplicationIdentifier:v14 completionHandler:v24];

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
  [TIAppAutofillManager getCredentialsWithApplicationIdentifier:v14 autofillContext:v13 withCompletionHandler:&v45];
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
    v39 = [v34 firstObject];
    v67 = v39;
    v40 = &v67;
  }

  else
  {
    v41 = [v38 firstObject];

    if (!v41)
    {
      v42 = 0;
      goto LABEL_28;
    }

    v39 = [v38 firstObject];
    v66 = v39;
    v40 = &v66;
  }

  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

LABEL_28:
  v15[2](v15, v42);

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

+ (void)getCredentialsWithApplicationIdentifier:(id)a3 autofillContext:(id)a4 withCompletionHandler:(id)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[TIAppAutofillManager _simulatesAutofillCandidates](TIAppAutofillManager, "_simulatesAutofillCandidates") && [MEMORY[0x277D49DE8] instancesRespondToSelector:sel_initWithUser_password_site_creationDate_])
  {
    v10 = objc_alloc(MEMORY[0x277D49DE8]);
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v10 initWithUser:@"simulateduser573" password:@"thisisasimulatedcandidate" site:@"apple.com" creationDate:v11];

    v13 = objc_alloc(MEMORY[0x277D49DE8]);
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 initWithUser:@"Pablo 黑客 Jjyy" password:@"ascenders & descenders" site:@"jjyyPP.apple.com" creationDate:v14];

    v20[0] = v12;
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v9[2](v9, v16);
  }

  v17 = [v8 objectForKeyedSubscript:*MEMORY[0x277D6F9B8]];
  if ([v17 count] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    [objc_opt_class() getCredentialsForAppWithAppID:v7 externallyVerifiedAndApprovedSharedWebCredentialDomains:v17 completionHandler:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v18 = [v8 objectForKey:@"_WebViewURL"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v18 = 0;
      }

      [objc_opt_class() getCredentialsForAppWithAppID:v7 websiteURL:v18 completionHandler:v9];
    }

    else
    {
      [MEMORY[0x277D49DF0] getCredentialsForAppWithAppID:v7 completionHandler:v9];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_simulatesAutofillCandidates
{
  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 BOOLForPreferenceKey:*MEMORY[0x277D6F9A0]];

  return v3;
}

uint64_t __38__TIAppAutofillManager_sharedInstance__block_invoke()
{
  instance = [[TIAppAutofillManager alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

+ (void)setSharedAppAutofillManager:(id)a3
{
  v4 = a3;
  if (__testingInstance != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance, a3);
    v4 = v5;
  }
}

@end