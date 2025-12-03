@interface WFHandleIntentAction
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (BOOL)inputPassthrough;
- (BOOL)intentIsHandledBySiri:(id)siri;
- (BOOL)isHandledBySiri;
- (BOOL)isWorkflowInDatabase;
- (BOOL)opensInApp;
- (BOOL)parameterCombinationForIntentSupportsBackgroundExecution:(id)execution;
- (BOOL)prefersActionAttribution;
- (BOOL)requiresRemoteExecution;
- (BOOL)runInProcess;
- (BOOL)shouldDonateIntent:(id)intent;
- (BOOL)shouldForceHandleInSiri:(id)siri;
- (BOOL)showsWhenRun;
- (BOOL)skipSiriExecution;
- (INCExtensionConnection)connection;
- (NSString)associatedAppBundleIdentifier;
- (WFHandleIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
- (WFHandleIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer;
- (id)appBundleIdentifier;
- (id)appDescriptor;
- (id)appResource;
- (id)confirmationAlertForInteraction:(id)interaction completionHandler:(id)handler;
- (id)contentDestinationWithError:(id *)error;
- (id)createResourceManager;
- (id)defaultLocalizationContext;
- (id)disabledOnPlatforms;
- (id)displayableAppDescriptor;
- (id)errorAttributedToApp:(id)app;
- (id)errorFromConfirmResponse:(id)response intent:(id)intent;
- (id)errorFromHandleResponse:(id)response intent:(id)intent;
- (id)errorFromResolutionResult:(id)result forSlot:(id)slot onIntent:(id)intent;
- (id)errorThatLaunchesApp:(id)app;
- (id)executorWithIntent:(id)intent groupIdentifier:(id)identifier;
- (id)externalMetricsActionIdentifier;
- (id)generatedIntentWithInput:(id)input processedParameters:(id)parameters error:(id *)error;
- (id)localizedNameWithContext:(id)context;
- (id)parameterForSlot:(id)slot;
- (id)rootCauseErrorFromError:(id)error;
- (id)showsWhenRunIfApplicable;
- (id)unknownErrorWithCode:(int64_t)code localizedDescription:(id)description userInfo:(id)info;
- (unint64_t)allowsInteractiveSlotResolution;
- (void)accessBundleContentWithBlock:(id)block;
- (void)actuallyStartExecutingIntent:(id)intent;
- (void)cancel;
- (void)finishRunningByContinuingInApp;
- (void)finishRunningWithError:(id)error;
- (void)generatePopulatedIntentFromInput:(id)input processedParameters:(id)parameters completion:(id)completion;
- (void)generatePopulatedIntentWithIdentifier:(id)identifier fromInput:(id)input processedParameters:(id)parameters completion:(id)completion;
- (void)generateShortcutRepresentation:(id)representation;
- (void)generateStandaloneShortcutRepresentation:(id)representation;
- (void)getErrorFromExtensionError:(id)error completionHandler:(id)handler;
- (void)getOutputFromIntentResponse:(id)response completionHandler:(id)handler;
- (void)handleExecutionCompletionWithInteraction:(id)interaction error:(id)error;
- (void)handleExecutorError:(id)error;
- (void)handleResolutionResult:(id)result forSlot:(id)slot onIntent:(id)intent;
- (void)initializeParameters;
- (void)launchAppInBackground:(BOOL)background;
- (void)localizedConfirmationPromptForAttribute:(id)attribute intent:(id)intent completion:(id)completion;
- (void)localizedDisambiguationPromptForAttribute:(id)attribute intent:(id)intent disambiguationItems:(id)items completion:(id)completion;
- (void)populateIntent:(id)intent withInput:(id)input processedParameters:(id)parameters completionHandler:(id)handler;
- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)setExecutor:(id)executor;
- (void)setIntentDescriptor:(id)descriptor;
- (void)showAskForValueAndRetryForSlot:(id)slot onIntent:(id)intent;
- (void)showConfirmationAndRetryForSlot:(id)slot item:(id)item onIntent:(id)intent completionHandler:(id)handler;
- (void)showDisambiguationAndRetryForSlot:(id)slot items:(id)items onIntent:(id)intent;
- (void)startExecutingIntent:(id)intent;
- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)app;
- (void)updateAppDescriptorWithSelectedApp:(id)app;
- (void)wasAddedToWorkflowByUser:(id)user;
@end

@implementation WFHandleIntentAction

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  if (!index)
  {
    return 0;
  }

  userInfo = [error userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"Connection"];

  appProxy = [v5 appProxy];
  [appProxy launchAppInBackground:0 completionHandler:&__block_literal_global_5174];

  v7 = v5 != 0;
  return v7;
}

- (id)rootCauseErrorFromError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if (v6)
  {
    v7 = [(WFHandleIntentAction *)self rootCauseErrorFromError:v6];
  }

  else
  {
    v7 = errorCopy;
  }

  v8 = v7;

  return v8;
}

- (void)handleExecutorError:(id)error
{
  v74[2] = *MEMORY[0x1E69E9840];
  v4 = [(WFHandleIntentAction *)self errorAttributedToApp:error];
  domain = [v4 domain];
  v6 = [domain isEqualToString:@"WFIntentExecutorErrorDomain"];

  if (!v6)
  {
    domain2 = [v4 domain];
    v12 = [domain2 isEqualToString:*MEMORY[0x1E699F9A0]];

    if (!v12)
    {
      goto LABEL_45;
    }

    v13 = MEMORY[0x1E6963620];
    executor = [(WFHandleIntentAction *)self executor];
    intent = [executor intent];
    _intents_bundleIdForDisplay = [intent _intents_bundleIdForDisplay];
    v17 = [v13 bundleRecordWithBundleIdentifier:_intents_bundleIdForDisplay allowPlaceholder:0 error:0];

    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        localizedName = [v17 localizedName];
        v19 = [localizedName length] != 0;
      }

      else
      {
        v19 = 0;
        localizedName = v17;
        v17 = 0;
      }
    }

    else
    {
      localizedName = 0;
      v19 = 0;
    }

    v29 = MEMORY[0x1E696AEC0];
    v30 = WFLocalizedString(@"Couldn’t Run “%@”");
    localizedName2 = [(WFAction *)self localizedName];
    v32 = [v29 stringWithFormat:v30, localizedName2];

    v33 = MEMORY[0x1E696AEC0];
    if (v19)
    {
      v34 = WFLocalizedString(@"“%1$@” could not open “%2$@” because an unknown error occurred.");
      localizedName3 = [(WFAction *)self localizedName];
      localizedName4 = [v17 localizedName];
      v37 = [v33 localizedStringWithFormat:v34, localizedName3, localizedName4];
    }

    else
    {
      v34 = WFLocalizedString(@"“%@” could not open the app because an unknown error occurred.");
      localizedName3 = [(WFAction *)self localizedName];
      v37 = [v33 localizedStringWithFormat:v34, localizedName3];
    }

    v38 = [(WFHandleIntentAction *)self rootCauseErrorFromError:v4];
    domain3 = [v38 domain];
    if ([domain3 isEqualToString:*MEMORY[0x1E699F8C0]])
    {
      code = [v38 code];

      if (code != 7)
      {
LABEL_44:
        v62 = MEMORY[0x1E696ABC0];
        domain4 = [v4 domain];
        code2 = [v4 code];
        v65 = *MEMORY[0x1E696A578];
        v73[0] = *MEMORY[0x1E696A588];
        v73[1] = v65;
        v74[0] = v32;
        v74[1] = v37;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
        v67 = [v62 errorWithDomain:domain4 code:code2 userInfo:v66];

        v4 = v67;
        goto LABEL_45;
      }

      currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
      domain3 = [currentDevice localizedModel];

      v42 = MEMORY[0x1E696AEC0];
      if (v19)
      {
        v71 = WFLocalizedString(@"“%1$@” could not open “%2$@” because the %3$@ is locked.");
        localizedName5 = [(WFAction *)self localizedName];
        localizedName6 = [v17 localizedName];
        v45 = [v42 localizedStringWithFormat:v71, localizedName5, localizedName6, domain3];

        v37 = localizedName6;
        v46 = v71;
      }

      else
      {
        v46 = WFLocalizedString(@"“%1$@” could not open the app because the %2$@ is locked.");
        localizedName5 = [(WFAction *)self localizedName];
        v45 = [v42 stringWithFormat:v46, localizedName5, domain3];
      }

      v37 = v45;
    }

    goto LABEL_44;
  }

  code3 = [v4 code];
  if (code3 <= 101)
  {
    if (code3 == 100)
    {
      userInfo = [v4 userInfo];
      v25 = *MEMORY[0x1E696AA08];
      userInfo2 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

      domain5 = [userInfo2 domain];
      v27 = *MEMORY[0x1E696E568];
      if ([domain5 isEqualToString:*MEMORY[0x1E696E568]])
      {
        code4 = [userInfo2 code];

        if (code4 == 3001)
        {
          [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
          goto LABEL_22;
        }
      }

      else
      {
      }

      domain6 = [userInfo2 domain];
      if ([domain6 isEqualToString:v27])
      {
        code5 = [userInfo2 code];

        if (code5 == 3006)
        {
          v9 = objc_opt_new();
          v49 = MEMORY[0x1E696AEC0];
          v50 = WFLocalizedString(@"Could not run %@");
          localizedName7 = [(WFAction *)self localizedName];
          v52 = [v49 localizedStringWithFormat:v50, localizedName7];
          [v9 setObject:v52 forKeyedSubscript:*MEMORY[0x1E696A588]];

          [v9 setObject:userInfo2 forKeyedSubscript:v25];
          appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
          localizedName8 = [appDescriptor localizedName];
          v55 = [localizedName8 length];

          v56 = MEMORY[0x1E696AEC0];
          if (v55)
          {
            v57 = WFLocalizedString(@"The action “%1$@” could not run. Open %2$@ to continue.");
            localizedName9 = [(WFAction *)self localizedName];
            appDescriptor2 = [(WFHandleIntentAction *)self appDescriptor];
            localizedName10 = [appDescriptor2 localizedName];
            v61 = [v56 localizedStringWithFormat:v57, localizedName9, localizedName10];
            [v9 setObject:v61 forKeyedSubscript:*MEMORY[0x1E696A578]];
          }

          else
          {
            v57 = WFLocalizedString(@"The action “%@” could not run. Open the app to continue.");
            localizedName9 = [(WFAction *)self localizedName];
            appDescriptor2 = [v56 localizedStringWithFormat:v57, localizedName9];
            [v9 setObject:appDescriptor2 forKeyedSubscript:*MEMORY[0x1E696A578]];
          }

          v69 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFIntentExecutorErrorDomain" code:100 userInfo:v9];
          v70 = [(WFHandleIntentAction *)self errorThatLaunchesApp:v69];

          [(WFHandleIntentAction *)self finishRunningWithError:v70];
          goto LABEL_21;
        }
      }

      else
      {
      }

      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __44__WFHandleIntentAction_handleExecutorError___block_invoke;
      v72[3] = &unk_1E837E5E0;
      v72[4] = self;
      [(WFHandleIntentAction *)self getErrorFromExtensionError:v4 completionHandler:v72];
      goto LABEL_22;
    }

    if (code3 == 101)
    {
      userInfo2 = [v4 userInfo];
      v9 = [userInfo2 objectForKey:@"WFIntentExecutorSlotResolutionResultErrorKey"];
      v10 = [userInfo2 objectForKey:@"WFIntentExecutorSlotDescriptionErrorKey"];
      v20 = [userInfo2 objectForKey:@"WFIntentExecutorIntentErrorKey"];
      [(WFHandleIntentAction *)self handleResolutionResult:v9 forSlot:v10 onIntent:v20];
LABEL_20:

LABEL_21:
LABEL_22:

      goto LABEL_46;
    }

LABEL_45:
    [(WFHandleIntentAction *)self finishRunningWithError:v4];
    goto LABEL_46;
  }

  if ((code3 - 102) < 2)
  {
    userInfo2 = [v4 userInfo];
    v9 = [userInfo2 objectForKey:@"WFIntentExecutorIntentErrorKey"];
    v10 = [userInfo2 objectForKey:@"WFIntentExecutorIntentResponseErrorKey"];
    if ([v4 code] == 102)
    {
      [(WFHandleIntentAction *)self errorFromConfirmResponse:v10 intent:v9];
    }

    else
    {
      [(WFHandleIntentAction *)self errorFromHandleResponse:v10 intent:v9];
    }
    v20 = ;
    if ([v10 _intentResponseCode] == 6)
    {
      v23 = [(WFHandleIntentAction *)self errorThatLaunchesApp:v20];

      v20 = v23;
    }

    [(WFHandleIntentAction *)self finishRunningWithError:v20];
    goto LABEL_20;
  }

  if (code3 != 104)
  {
    goto LABEL_45;
  }

  userInfo3 = [v4 userInfo];
  v22 = [userInfo3 objectForKey:@"WFIntentExecutorIntentErrorKey"];

  [(WFHandleIntentAction *)self startExecutingIntent:v22];
LABEL_46:

  v68 = *MEMORY[0x1E69E9840];
}

- (void)getErrorFromExtensionError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  userInfo = [error userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__WFHandleIntentAction_getErrorFromExtensionError_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837E248;
  aBlock[4] = self;
  v9 = v8;
  v24 = v9;
  v10 = handlerCopy;
  v25 = v10;
  v11 = _Block_copy(aBlock);
  code = [v9 code];
  switch(code)
  {
    case 1300:
    case 1303:
    case 1306:
    case 1311:
    case 1312:
    case 1313:
    case 1316:
    case 1317:
    case 1318:
      goto LABEL_10;
    case 1301:
    case 1302:
      v13 = @"There was a problem communicating with the app.";
      goto LABEL_8;
    case 1304:
    case 1307:
    case 1314:
      v13 = @"The operation took too long to complete. Please try again.";
      goto LABEL_8;
    case 1305:
    case 1308:
    case 1309:
      v13 = @"There was a problem opening the app.";
      goto LABEL_8;
    case 1310:
      v13 = @"There was a problem opening the app. Please unlock the device and try again.";
      goto LABEL_8;
    case 1315:
      appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
      localizedName = [appDescriptor localizedName];

      if ([localizedName length])
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = WFLocalizedString(@"This action requires %@ to be installed.");
        appDescriptor2 = [v16 stringWithFormat:v17, localizedName];
        v11[2](v11, appDescriptor2);
      }

      else
      {
        v17 = objc_alloc_init(WFiTunesSessionManager);
        appDescriptor2 = [(WFHandleIntentAction *)self appDescriptor];
        bundleIdentifier = [appDescriptor2 bundleIdentifier];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        countryCode = [currentLocale countryCode];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __69__WFHandleIntentAction_getErrorFromExtensionError_completionHandler___block_invoke_2;
        v22[3] = &unk_1E837F588;
        v22[4] = v11;
        [(WFiTunesSessionManager *)v17 lookupMediaWithBundleIdentifier:bundleIdentifier countryCode:countryCode completion:v22];
      }

      goto LABEL_9;
    default:
      if ((code - 1399) < 2)
      {
        goto LABEL_10;
      }

      v13 = @"There was a problem with the app.";
LABEL_8:
      localizedName = WFLocalizedString(v13);
      v11[2](v11, localizedName);
LABEL_9:

LABEL_10:
      return;
  }
}

void __69__WFHandleIntentAction_getErrorFromExtensionError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"Could not run %@");
  v6 = [*(a1 + 32) localizedName];
  v7 = [v4 localizedStringWithFormat:v5, v6];
  [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];

  [v10 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A578]];
  [v10 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFIntentExecutorErrorDomain" code:100 userInfo:v10];
  (*(v8 + 16))(v8, v9);
}

void __69__WFHandleIntentAction_getErrorFromExtensionError_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = v4;

  v5 = [v11 name];
  v6 = [v5 length];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"This action requires %@ to be installed.");
    v9 = [v11 name];
    v10 = [v7 localizedStringWithFormat:v8, v9];
  }

  else
  {
    v10 = WFLocalizedString(@"This action requires an app to be installed.");
  }

  (*(*(a1 + 32) + 16))();
}

- (id)errorThatLaunchesApp:(id)app
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (app)
  {
    v4 = MEMORY[0x1E696AEC0];
    appCopy = app;
    v6 = WFLocalizedString(@"Open %@");
    appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
    localizedName = [appDescriptor localizedName];
    v9 = [v4 stringWithFormat:v6, localizedName];

    userInfo = [appCopy userInfo];
    v11 = [userInfo mutableCopy];

    executor = [(WFHandleIntentAction *)self executor];
    connection = [executor connection];
    [v11 setObject:connection forKeyedSubscript:@"Connection"];

    [v11 setObject:&unk_1F4A9A180 forKeyedSubscript:*MEMORY[0x1E6997118]];
    v14 = WFLocalizedString(@"Cancel");
    v22[0] = v14;
    v22[1] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A590]];

    [v11 setObject:self forKeyedSubscript:*MEMORY[0x1E696A8A8]];
    v16 = MEMORY[0x1E696ABC0];
    domain = [appCopy domain];
    code = [appCopy code];

    v19 = [v16 errorWithDomain:domain code:code userInfo:v11];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)errorAttributedToApp:(id)app
{
  if (app)
  {
    appCopy = app;
    userInfo = [appCopy userInfo];
    v6 = [userInfo mutableCopy];

    appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
    localizedName = [appDescriptor localizedName];
    [v6 setObject:localizedName forKeyedSubscript:@"ApplicationName"];

    v9 = MEMORY[0x1E696ABC0];
    domain = [appCopy domain];
    code = [appCopy code];

    v12 = [v9 errorWithDomain:domain code:code userInfo:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)errorFromHandleResponse:(id)response intent:(id)intent
{
  v28[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  intentCopy = intent;
  if ([responseCopy _isSuccess])
  {
    v8 = 0;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__5216;
    v25 = __Block_byref_object_dispose__5217;
    v26 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __55__WFHandleIntentAction_errorFromHandleResponse_intent___block_invoke;
    v17 = &unk_1E837C4B0;
    v20 = &v21;
    v9 = responseCopy;
    v18 = v9;
    selfCopy = self;
    [(WFHandleIntentAction *)self accessBundleContentWithBlock:&v14];
    v10 = v22[5];
    v27[0] = @"WFIntentExecutorIntentErrorKey";
    v27[1] = @"WFIntentExecutorIntentResponseErrorKey";
    v28[0] = intentCopy;
    v28[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{2, v14, v15, v16, v17}];
    v8 = [(WFHandleIntentAction *)self unknownErrorWithCode:103 localizedDescription:v10 userInfo:v11];

    _Block_object_dispose(&v21, 8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

void __55__WFHandleIntentAction_errorFromHandleResponse_intent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) stringLocalizer];
  v3 = [v2 _renderedResponseWithLocalizer:v6 requiresSiriCompatibility:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)errorFromConfirmResponse:(id)response intent:(id)intent
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"WFIntentExecutorIntentErrorKey";
  v13[1] = @"WFIntentExecutorIntentResponseErrorKey";
  v14[0] = intent;
  v14[1] = response;
  v6 = MEMORY[0x1E695DF20];
  intentCopy = intent;
  responseCopy = response;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(WFHandleIntentAction *)self unknownErrorWithCode:102 localizedDescription:0 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)errorFromResolutionResult:(id)result forSlot:(id)slot onIntent:(id)intent
{
  v45[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  slotCopy = slot;
  intentCopy = intent;
  v11 = [(WFHandleIntentAction *)self parameterForSlot:slotCopy];
  if (v11 && [resultCopy resolutionResultCode] == 1)
  {
    _codableDescription = [intentCopy _codableDescription];
    wf_slotName = [slotCopy wf_slotName];
    v32 = [_codableDescription attributeByName:wf_slotName];

    v14 = [v32 unsupportedReasonWithIndex:{objc_msgSend(resultCopy, "unsupportedReason")}];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__5216;
    v42 = __Block_byref_object_dispose__5217;
    v43 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__WFHandleIntentAction_errorFromResolutionResult_forSlot_onIntent___block_invoke;
    v33[3] = &unk_1E8376768;
    v37 = &v38;
    v15 = v14;
    v34 = v15;
    v35 = intentCopy;
    selfCopy = self;
    [(WFHandleIntentAction *)self accessBundleContentWithBlock:v33];
    v16 = MEMORY[0x1E696AEC0];
    v17 = WFLocalizedString(@"Invalid %@");
    localizedLabel = [v11 localizedLabel];
    v19 = [v16 localizedStringWithFormat:v17, localizedLabel, 0];

    v20 = v39[5];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = WFLocalizedString(@"The value provided for %1$@ in %2$@ was invalid.");
      localizedLabel2 = [v11 localizedLabel];
      localizedName = [(WFAction *)self localizedName];
      v21 = [v23 localizedStringWithFormat:v24, localizedLabel2, localizedName, 0];
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A588];
    v44[0] = *MEMORY[0x1E696A578];
    v44[1] = v28;
    v45[0] = v21;
    v45[1] = v19;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v22 = [v27 errorWithDomain:@"WFIntentExecutorErrorDomain" code:101 userInfo:v29];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v22 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v22;
}

void __67__WFHandleIntentAction_errorFromResolutionResult_forSlot_onIntent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = [*(a1 + 48) stringLocalizer];
  v4 = [v2 localizedDialogWithIntent:v3 tokens:MEMORY[0x1E695E0F8] localizer:v7];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)showConfirmationAndRetryForSlot:(id)slot item:(id)item onIntent:(id)intent completionHandler:(id)handler
{
  slotCopy = slot;
  itemCopy = item;
  intentCopy = intent;
  handlerCopy = handler;
  v14 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
  _codableDescription = [intentCopy _codableDescription];
  wf_slotName = [slotCopy wf_slotName];
  v17 = [_codableDescription attributeByName:wf_slotName];

  metadata = [v17 metadata];
  wf_slotName2 = [slotCopy wf_slotName];
  v20 = [(WFAction *)self parameterStateForKey:wf_slotName2];
  [metadata wf_updateWithParameterState:v20];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke;
  v27[3] = &unk_1E8374498;
  v27[4] = self;
  v28 = v17;
  v29 = intentCopy;
  v30 = v14;
  v32 = slotCopy;
  v33 = handlerCopy;
  v31 = itemCopy;
  v21 = slotCopy;
  v22 = handlerCopy;
  v23 = itemCopy;
  v24 = v14;
  v25 = intentCopy;
  v26 = v17;
  [v23 wf_transformValueForCodableAttribute:v26 completionHandler:v27];
}

void __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8374470;
  v5[4] = v2;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v10 = *(a1 + 80);
  v9 = *(a1 + 72);
  [v2 localizedConfirmationPromptForAttribute:v3 intent:v4 completion:v5];
}

void __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [a1[4] finishRunningWithError:a3];
  }

  else
  {
    v6 = a1[6];
    v7 = [a1[4] stringLocalizer];
    v8 = [v6 localizedDisplayNameWithLocalizer:v7];
    [a1[5] setTitle:v8];

    [a1[5] setMessage:v5];
    v9 = [a1[6] metadata];
    [v9 wf_updateWithParameterValue:a1[7]];

    v10 = a1[5];
    v11 = MEMORY[0x1E6996F48];
    v12 = WFLocalizedString(@"No");
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_3;
    v26[3] = &unk_1E837F4E8;
    v27 = a1[9];
    v13 = [v11 buttonWithTitle:v12 subtitle:0 selected:0 style:0 handler:v26];
    [v10 addButton:v13];

    v14 = a1[5];
    v15 = MEMORY[0x1E6996F48];
    v16 = WFLocalizedString(@"Yes");
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_4;
    v22[3] = &unk_1E837ECE0;
    v23 = a1[8];
    v24 = a1[7];
    v25 = a1[9];
    v17 = [v15 buttonWithTitle:v16 subtitle:0 selected:0 style:0 handler:v22];
    [v14 addButton:v17];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_5;
    v21[3] = &unk_1E837FA70;
    v18 = a1[5];
    v21[4] = a1[4];
    v19 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:v21];
    [v18 addButton:v19];

    v20 = [a1[4] userInterface];
    [v20 presentAlert:a1[5]];
  }
}

void __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_4(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) wf_multipleValues])
  {
    v5[0] = *(a1 + 40);
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = *(a1 + 40);
  }

  v3 = v2;
  (*(*(a1 + 48) + 16))();

  v4 = *MEMORY[0x1E69E9840];
}

void __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  [v1 finishRunningWithError:v2];
}

- (void)localizedConfirmationPromptForAttribute:(id)attribute intent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  v10 = [attribute promptDialogWithType:5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__WFHandleIntentAction_localizedConfirmationPromptForAttribute_intent_completion___block_invoke;
  v14[3] = &unk_1E837F510;
  v15 = v10;
  v16 = intentCopy;
  selfCopy = self;
  v18 = completionCopy;
  v11 = intentCopy;
  v12 = v10;
  v13 = completionCopy;
  [(WFHandleIntentAction *)self accessBundleContentWithBlock:v14];
}

void __82__WFHandleIntentAction_localizedConfirmationPromptForAttribute_intent_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v5 = [*(a1 + 48) stringLocalizer];
  v4 = [v1 localizedDialogWithIntent:v2 tokens:0 localizer:v5];
  (*(v3 + 16))(v3, v4, 0);
}

- (void)showDisambiguationAndRetryForSlot:(id)slot items:(id)items onIntent:(id)intent
{
  slotCopy = slot;
  itemsCopy = items;
  intentCopy = intent;
  v11 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:1];
  _codableDescription = [intentCopy _codableDescription];
  wf_slotName = [slotCopy wf_slotName];
  v14 = [_codableDescription attributeByName:wf_slotName];

  metadata = [v14 metadata];
  wf_slotName2 = [slotCopy wf_slotName];
  v17 = [(WFAction *)self parameterStateForKey:wf_slotName2];
  [metadata wf_updateWithParameterState:v17];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke;
  v23[3] = &unk_1E8374448;
  v23[4] = self;
  v24 = v14;
  v25 = intentCopy;
  v26 = v11;
  v27 = itemsCopy;
  v28 = slotCopy;
  v18 = slotCopy;
  v19 = itemsCopy;
  v20 = v11;
  v21 = intentCopy;
  v22 = v14;
  [v19 wf_transformValueForCodableAttribute:v22 completionHandler:v23];
}

void __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke_2;
  v7[3] = &unk_1E8374420;
  v7[4] = v4;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  v12 = *(a1 + 48);
  [v4 localizedDisambiguationPromptForAttribute:v5 intent:v6 disambiguationItems:a2 completion:v7];
}

void __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [a1[4] finishRunningWithError:a3];
  }

  else
  {
    if ([v5 length])
    {
      [a1[5] setTitle:v6];
    }

    else
    {
      v7 = [a1[4] localizedDefaultDisambiguationPrompt];
      [a1[5] setTitle:v7];
    }

    v29 = v6;
    v8 = [a1[4] stringLocalizer];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = a1[6];
    v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v31 = *v39;
      do
      {
        v11 = 0;
        do
        {
          if (*v39 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * v11);
          v13 = [a1[7] metadata];
          [v13 wf_updateWithParameterValue:v12];

          v14 = [a1[7] metadata];
          v15 = [v12 _intents_readableTitleWithLocalizer:v8 metadata:v14];

          v16 = [a1[7] metadata];
          v17 = [v12 _intents_readableSubtitleWithLocalizer:v8 metadata:v16];

          v18 = [v12 _intents_displayImageWithLocalizer:v8];
          v19 = a1[5];
          v20 = MEMORY[0x1E6996F48];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke_3;
          v33[3] = &unk_1E837F848;
          v34 = a1[8];
          v35 = v12;
          v21 = a1[9];
          v22 = a1[4];
          v36 = v21;
          v37 = v22;
          v23 = [v18 wf_image];
          v24 = [v20 buttonWithTitle:v15 subtitle:v17 selected:0 stickySelection:0 style:0 handler:v33 image:v23];
          [v19 addButton:v24];

          ++v11;
        }

        while (v10 != v11);
        v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v10);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke_4;
    v32[3] = &unk_1E837FA70;
    v25 = a1[5];
    v32[4] = a1[4];
    v26 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:v32];
    [v25 addButton:v26];

    v27 = [a1[4] userInterface];
    [v27 presentAlert:a1[5]];

    v6 = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke_3(id *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([a1[4] wf_multipleValues])
  {
    v7[0] = a1[5];
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v2 = a1[5];
  }

  v3 = v2;
  v4 = [a1[6] copy];
  v5 = [a1[4] wf_slotName];
  [v4 setValue:v3 forKey:v5];

  [a1[7] startExecutingIntent:v4];
  v6 = *MEMORY[0x1E69E9840];
}

void __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  [v1 finishRunningWithError:v2];
}

- (void)localizedDisambiguationPromptForAttribute:(id)attribute intent:(id)intent disambiguationItems:(id)items completion:(id)completion
{
  v34[1] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  completionCopy = completion;
  itemsCopy = items;
  attributeCopy = attribute;
  v14 = [attributeCopy promptDialogWithType:2];
  v15 = [attributeCopy promptDialogWithType:4];

  v33 = @"count";
  v16 = MEMORY[0x1E696AD98];
  v17 = [itemsCopy count];

  v18 = [v16 numberWithUnsignedInteger:v17];
  v34[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __104__WFHandleIntentAction_localizedDisambiguationPromptForAttribute_intent_disambiguationItems_completion___block_invoke;
  v26[3] = &unk_1E8379788;
  v27 = v14;
  v28 = intentCopy;
  v29 = v19;
  selfCopy = self;
  v31 = v15;
  v32 = completionCopy;
  v20 = completionCopy;
  v21 = v15;
  v22 = v19;
  v23 = intentCopy;
  v24 = v14;
  [(WFHandleIntentAction *)self accessBundleContentWithBlock:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __104__WFHandleIntentAction_localizedDisambiguationPromptForAttribute_intent_disambiguationItems_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) stringLocalizer];
  v13 = [v2 localizedDialogWithIntent:v3 tokens:v4 localizer:v5];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v9 = [*(a1 + 56) stringLocalizer];
  v10 = [v8 localizedDialogWithIntent:v6 tokens:v7 localizer:v9];

  if ([v13 length] && objc_msgSend(v10, "length"))
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v13, v10];
LABEL_8:
    v12 = v11;
    goto LABEL_9;
  }

  if ([v13 length])
  {
    v11 = v13;
    goto LABEL_8;
  }

  if ([v10 length])
  {
    v11 = v10;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:
  (*(*(a1 + 72) + 16))();
}

- (void)showAskForValueAndRetryForSlot:(id)slot onIntent:(id)intent
{
  v45 = *MEMORY[0x1E69E9840];
  slotCopy = slot;
  intentCopy = intent;
  v9 = [(WFHandleIntentAction *)self parameterForSlot:slotCopy];
  v10 = slotCopy;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      codableAttribute = [v10 codableAttribute];
      promptDialogs = [codableAttribute promptDialogs];
      v4 = [promptDialogs count];

      v13 = v10;
      if (!v4)
      {
        goto LABEL_10;
      }

      codableAttribute2 = [v10 codableAttribute];
      v15 = [codableAttribute2 promptDialogWithType:0];

      v16 = [v15 localizedDialogWithIntent:intentCopy tokens:0];
      if ([v16 length])
      {
        [v9 setLocalizedPrompt:v16];
      }

      v13 = v10;
    }

    else
    {
      v13 = 0;
      v15 = v10;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

LABEL_10:
  runningDelegate = [(WFAction *)self runningDelegate];
  v18 = [runningDelegate action:self canProvideInputForParameter:v9];

  if (v18)
  {
    if (v9)
    {
      v32 = intentCopy;
      processedParameters = [(WFAction *)self processedParameters];
      v20 = [processedParameters mutableCopy];

      v21 = [v9 key];
      [v20 setObject:0 forKeyedSubscript:v21];

      [(WFAction *)self setProcessedParameters:v20];
      v22 = [v9 key];
      v23 = [(WFAction *)self parameterStateForKey:v22];

      v24 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v9];
      if (v23)
      {
        v4 = [v9 key];
        v37 = v4;
        v38 = v23;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      }

      else
      {
        v25 = MEMORY[0x1E695E0F8];
      }

      input = [(WFAction *)self input];
      v30 = dispatch_get_global_queue(0, 0);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __64__WFHandleIntentAction_showAskForValueAndRetryForSlot_onIntent___block_invoke;
      v33[3] = &unk_1E83743F8;
      v33[4] = self;
      v34 = v32;
      v35 = v10;
      v36 = v9;
      [(WFAction *)self askForValuesOfParameters:v24 withDefaultStates:v25 prompts:MEMORY[0x1E695E0F8] input:input workQueue:v30 completionHandler:v33];

      if (v23)
      {
      }

      intentCopy = v32;
    }

    else
    {
      v27 = getWFIntentExecutionLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        wf_slotName = [v10 wf_slotName];
        *buf = 136315650;
        v40 = "[WFHandleIntentAction showAskForValueAndRetryForSlot:onIntent:]";
        v41 = 2114;
        v42 = wf_slotName;
        v43 = 2114;
        v44 = v10;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s No parameter found for slot description (slotName: %{public}@): %{public}@. Opening in app to continue.", buf, 0x20u);
      }

      [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
    }
  }

  else
  {
    wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [(WFHandleIntentAction *)self finishRunningWithError:wfUnsupportedUserInterfaceError];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __64__WFHandleIntentAction_showAskForValueAndRetryForSlot_onIntent___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    [a1[4] finishRunningWithError:a4];
  }

  else
  {
    v9 = [a1[5] _codableDescription];
    v10 = [a1[6] wf_slotName];
    v11 = [v9 attributeByName:v10];

    v12 = [a1[7] key];
    v13 = [v7 objectForKeyedSubscript:v12];

    v14 = a1[4];
    v15 = a1[7];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__WFHandleIntentAction_showAskForValueAndRetryForSlot_onIntent___block_invoke_2;
    v16[3] = &unk_1E83743D0;
    v16[4] = v14;
    v17 = a1[5];
    v18 = a1[6];
    [v14 resolveSlot:v11 withProcessedValue:v13 parameter:v15 input:v8 completion:v16];
  }
}

void __64__WFHandleIntentAction_showAskForValueAndRetryForSlot_onIntent___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    [a1[4] finishRunningWithError:a3];
  }

  else
  {
    v5 = [a1[5] copy];
    v6 = [a1[6] wf_slotName];
    [v5 setValue:v7 forKey:v6];

    [a1[4] startExecutingIntent:v5];
  }
}

- (void)handleResolutionResult:(id)result forSlot:(id)slot onIntent:(id)intent
{
  v17[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  slotCopy = slot;
  intentCopy = intent;
  allowsInteractiveSlotResolution = [(WFHandleIntentAction *)self allowsInteractiveSlotResolution];
  if (allowsInteractiveSlotResolution == 2)
  {
    wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    goto LABEL_5;
  }

  if (allowsInteractiveSlotResolution)
  {
    resolutionResultCode = [resultCopy resolutionResultCode];
    if (resolutionResultCode == 4)
    {
      [(WFHandleIntentAction *)self showAskForValueAndRetryForSlot:slotCopy onIntent:intentCopy];
      goto LABEL_7;
    }

    if (resolutionResultCode == 2)
    {
      wfUnsupportedUserInterfaceError = [resultCopy disambiguationItems];
      [(WFHandleIntentAction *)self showDisambiguationAndRetryForSlot:slotCopy items:wfUnsupportedUserInterfaceError onIntent:intentCopy];
      goto LABEL_6;
    }

    wfUnsupportedUserInterfaceError = [(WFHandleIntentAction *)self errorFromResolutionResult:resultCopy forSlot:slotCopy onIntent:intentCopy];
    if (!wfUnsupportedUserInterfaceError)
    {
      v16 = @"WFIntentExecutorIntentErrorKey";
      v17[0] = intentCopy;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      wfUnsupportedUserInterfaceError = [(WFHandleIntentAction *)self unknownErrorWithCode:101 localizedDescription:0 userInfo:v15];
    }

LABEL_5:
    [(WFHandleIntentAction *)self finishRunningWithError:wfUnsupportedUserInterfaceError];
LABEL_6:

    goto LABEL_7;
  }

  [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)unknownErrorWithCode:(int64_t)code localizedDescription:(id)description userInfo:(id)info
{
  v24[2] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  infoCopy = info;
  v10 = MEMORY[0x1E696AEC0];
  v11 = WFLocalizedString(@"Could Not Run %@");
  localizedName = [(WFAction *)self localizedName];
  v13 = [v10 localizedStringWithFormat:v11, localizedName, 0];

  if (!descriptionCopy)
  {
    descriptionCopy = WFLocalizedString(@"An unknown error occurred.");
  }

  v14 = [infoCopy mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;

  v18 = *MEMORY[0x1E696A578];
  v23[0] = *MEMORY[0x1E696A588];
  v23[1] = v18;
  v24[0] = v13;
  v24[1] = descriptionCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v17 addEntriesFromDictionary:v19];

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFIntentExecutorErrorDomain" code:code userInfo:v17];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)confirmationAlertForInteraction:(id)interaction completionHandler:(id)handler
{
  interactionCopy = interaction;
  handlerCopy = handler;
  intent = [interactionCopy intent];
  v9 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
  intentResponse = [interactionCopy intentResponse];

  if (intentResponse)
  {
    intentResponse2 = [interactionCopy intentResponse];
    stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
    v13 = [intentResponse2 _renderedResponseWithLocalizer:stringLocalizer requiresSiriCompatibility:0];
  }

  else
  {
    v13 = 0;
  }

  if (![v13 length])
  {
    _subtitle = [intent _subtitle];

    v13 = _subtitle;
  }

  _title = [intent _title];
  [v9 setTitle:_title];

  [v9 setMessage:v13];
  v16 = MEMORY[0x1E6996C78];
  _localizedVerb = [intent _localizedVerb];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74__WFHandleIntentAction_confirmationAlertForInteraction_completionHandler___block_invoke;
  v29[3] = &unk_1E837F4E8;
  v18 = handlerCopy;
  v30 = v18;
  v19 = [v16 buttonWithTitle:_localizedVerb style:0 handler:v29];
  [v9 addButton:v19];

  v20 = MEMORY[0x1E6996C78];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __74__WFHandleIntentAction_confirmationAlertForInteraction_completionHandler___block_invoke_2;
  v27 = &unk_1E837F4E8;
  v28 = v18;
  v21 = v18;
  v22 = [v20 cancelButtonWithHandler:&v24];
  [v9 addButton:{v22, v24, v25, v26, v27}];

  return v9;
}

void __74__WFHandleIntentAction_confirmationAlertForInteraction_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

void __143__WFHandleIntentAction_showInteractionIfNeeded_inUserInterface_requiringConfirmation_requiringAuthentication_executionStage_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v9 = v5;
      [*(a1 + 32) finishRunningByContinuingInApp];
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 32);
      v9 = v5;
      v7 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      [v6 finishRunningWithError:v7];
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_11;
    }

    v9 = v5;
    v5[2](v5, 1, 0);
  }

  else
  {
    v9 = v5;
    v8 = [MEMORY[0x1E696ABC0] userCancelledError];
    v9[2](v9, 0, v8);
  }

  v5 = v9;
LABEL_11:
}

uint64_t __143__WFHandleIntentAction_showInteractionIfNeeded_inUserInterface_requiringConfirmation_requiringAuthentication_executionStage_completionHandler___block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) finishRunningByContinuingInApp];
  }

  if (!a2)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (BOOL)requiresRemoteExecution
{
  v26 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = WFHandleIntentAction;
  if ([(WFAction *)&v13 requiresRemoteExecution])
  {
    anyObject = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[WFHandleIntentAction requiresRemoteExecution]";
      v16 = 2114;
      selfCopy3 = self;
      _os_log_impl(&dword_1CA256000, anyObject, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition requires remote execution, returning YES for requiresRemoteExecution", buf, 0x16u);
    }

    LOBYTE(v4) = 1;
    goto LABEL_15;
  }

  resourceManager = [(WFAction *)self resourceManager];
  v6 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v6 anyObject];

  if (!anyObject)
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFHandleIntentAction requiresRemoteExecution]";
      v16 = 2114;
      selfCopy3 = self;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s App availability resource was not found for action: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (![anyObject intentIsEligibleForRemoteExecution])
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = [anyObject intentIsLocallyAvailable]^ 1;
LABEL_12:
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    intentIsEligibleForRemoteExecution = [anyObject intentIsEligibleForRemoteExecution];
    intentIsLocallyAvailable = [anyObject intentIsLocallyAvailable];
    *buf = 136316418;
    v15 = "[WFHandleIntentAction requiresRemoteExecution]";
    v16 = 2114;
    selfCopy3 = self;
    v18 = 1024;
    v19 = v4;
    v20 = 1024;
    v21 = anyObject != 0;
    v22 = 1024;
    v23 = intentIsEligibleForRemoteExecution;
    v24 = 1024;
    v25 = intentIsLocallyAvailable;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ requires remote execution: %i (intentAvailableResource exists: %i, intentIsEligibleForRemoteExecution: %i, intentIsLocallyAvailable: %i", buf, 0x2Eu);
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)contentDestinationWithError:(id *)error
{
  appDescriptor = [(WFHandleIntentAction *)self appDescriptor];

  if (appDescriptor && (-[WFHandleIntentAction appDescriptor](self, "appDescriptor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = VCIsShortcutsAppBundleIdentifier(), v6, v5, (v7 & 1) == 0))
  {
    v9 = MEMORY[0x1E6996C90];
    appDescriptor2 = [(WFHandleIntentAction *)self appDescriptor];
    v8 = [v9 locationWithAppDescriptor:appDescriptor2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)appResource
{
  intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];

  if (intentDescriptor)
  {
    appResource = self->_appResource;
    if (!appResource)
    {
      v5 = [WFAppInstalledResource alloc];
      intentDescriptor2 = [(WFHandleIntentAction *)self intentDescriptor];
      v7 = [(WFAppInstalledResource *)v5 initWithIntentDescriptor:intentDescriptor2 isSyncedFromOtherDevice:[(WFHandleIntentAction *)self intentDescriptorIsSyncedFromOtherDevices]];
      v8 = self->_appResource;
      self->_appResource = v7;

      [(WFAppInstalledResource *)self->_appResource setDelegate:self];
      appResource = self->_appResource;
    }

    v9 = appResource;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)app
{
  appCopy = app;
  workflow = [(WFAction *)self workflow];
  actions = [workflow actions];

  v6 = [actions indexOfObject:self];
  intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];
  v8 = [intentDescriptor descriptorWithAppDescriptor:appCopy];

  v9 = +[WFDatabaseProxy defaultDatabase];
  uUID = [(WFAction *)self UUID];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  identifier = [(WFAction *)self identifier];
  workflow2 = [(WFAction *)self workflow];
  workflowID = [workflow2 workflowID];
  [v9 updateAppDescriptor:v8 atKey:@"IntentAppDefinition" actionUUID:uUID actionIndex:v11 actionIdentifier:identifier workflowID:workflowID error:0];
}

- (void)updateAppDescriptorWithSelectedApp:(id)app
{
  appCopy = app;
  intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];
  v6 = [intentDescriptor descriptorWithAppDescriptor:appCopy];
  [(WFHandleIntentAction *)self setIntentDescriptor:v6];

  v7.receiver = self;
  v7.super_class = WFHandleIntentAction;
  [(WFAction *)&v7 updateAppDescriptorWithSelectedApp:appCopy];
}

- (void)setIntentDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_storeStrong(&self->_intentDescriptor, descriptor);
  v5 = [(WFAction *)self parameterForKey:@"IntentAppDefinition"];
  if (v5)
  {
    serializedRepresentation = [(WFVariableSubstitutableParameterState *)[WFIntentDescriptorParameterState alloc] initWithValue:descriptorCopy];
    [(WFAction *)self setParameterState:serializedRepresentation forKey:@"IntentAppDefinition"];
  }

  else
  {
    serializedRepresentation = [descriptorCopy serializedRepresentation];
    [(WFAction *)self setSupplementalParameterValue:serializedRepresentation forKey:@"IntentAppDefinition"];
  }
}

- (id)appDescriptor
{
  intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];
  appDescriptor = [intentDescriptor appDescriptor];
  selfIfNotShortcutsApp = [appDescriptor selfIfNotShortcutsApp];

  return selfIfNotShortcutsApp;
}

- (id)displayableAppDescriptor
{
  displayableAppDefinition = [(WFAction *)self displayableAppDefinition];
  if (displayableAppDefinition)
  {
    selfIfNotShortcutsApp = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:displayableAppDefinition];
  }

  else
  {
    intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];
    _displayableAppDescriptor = [intentDescriptor _displayableAppDescriptor];
    selfIfNotShortcutsApp = [_displayableAppDescriptor selfIfNotShortcutsApp];
  }

  return selfIfNotShortcutsApp;
}

- (void)getOutputFromIntentResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHandleIntentAction.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__WFHandleIntentAction_getOutputFromIntentResponse_completionHandler___block_invoke;
  v11[3] = &unk_1E8374358;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  [responseCopy wf_getOutputValueWithCompletionHandler:v11];
}

void __70__WFHandleIntentAction_getOutputFromIntentResponse_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [*(a1 + 32) executor];
    v9 = [v8 intent];
    v10 = [v9 extensionBundleId];
    v11 = +[WFBundledIntentHandlerProvider localIntentHandlerLaunchID];
    v12 = [v10 isEqualToString:v11];

    v13 = v7;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if ((isKindOfClass & 1) != 0 && v12)
    {
      v17 = *MEMORY[0x1E69E0F30];
      v18 = [v16 codableDescription];
      [v18 setMainBundleIdentifier:v17];
    }

    v19 = objc_opt_new();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v16;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = v5;
      v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v30;
        do
        {
          v24 = 0;
          do
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [v13 wf_contentItemForValue:*(*(&v29 + 1) + 8 * v24)];
            if (v25)
            {
              [v19 addItem:v25];
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v22);
      }

      v16 = v28;
    }

    else
    {
      v26 = [v13 wf_contentItemForValue:v5];
      if (v26)
      {
        [v19 addItem:v26];
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)launchAppInBackground:(BOOL)background
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__WFHandleIntentAction_launchAppInBackground___block_invoke;
  v3[3] = &unk_1E837DEA0;
  v3[4] = self;
  backgroundCopy = background;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __46__WFHandleIntentAction_launchAppInBackground___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) executor];
  v3 = [v2 connection];
  v4 = [v3 appProxy];
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__WFHandleIntentAction_launchAppInBackground___block_invoke_2;
  v6[3] = &unk_1E8379BE0;
  v6[4] = *(a1 + 32);
  [v4 launchAppInBackground:v5 completionHandler:v6];
}

uint64_t __46__WFHandleIntentAction_launchAppInBackground___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishRunningWithError:0];
  }

  else
  {
    return [v2 handleExecutorError:?];
  }
}

- (void)finishRunningByContinuingInApp
{
  v32[2] = *MEMORY[0x1E69E9840];
  executor = [(WFHandleIntentAction *)self executor];
  connection = [executor connection];
  intent = [connection intent];

  executor2 = [(WFHandleIntentAction *)self executor];
  connection2 = [executor2 connection];
  _transaction = [connection2 _transaction];
  state = [_transaction state];
  intentResponse = [state intentResponse];

  userInterface = [(WFAction *)self userInterface];
  if ([userInterface isRunningWithSiriUI])
  {
    executor3 = [(WFHandleIntentAction *)self executor];

    if (!executor3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"WFHandleIntentAction.m" lineNumber:590 description:@"executor should not be nil"];
    }

    if ([(WFHandleIntentAction *)self shouldOpenAppThroughSiriForIntent:intent intentResponse:intentResponse])
    {
      actionsRestrictedWhileLocked = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:intent response:intentResponse];
      v15 = [objc_alloc(MEMORY[0x1E69E0CF0]) initWithInteraction:actionsRestrictedWhileLocked];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__WFHandleIntentAction_finishRunningByContinuingInApp__block_invoke;
      v30[3] = &unk_1E8377278;
      v30[4] = self;
      if (([userInterface performSiriRequest:v15 completionHandler:v30] & 1) == 0)
      {
        wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
        [(WFHandleIntentAction *)self finishRunningWithError:wfUnsupportedUserInterfaceError];
      }

      goto LABEL_17;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [userInterface requestedFromAnotherDevice] && !-[WFHandleIntentAction allowsContinueInAppWhenRunningRemotely](self, "allowsContinueInAppWhenRunningRemotely"))
  {
    actionsRestrictedWhileLocked = WFLocalizedString(@"Sorry, you can’t do that here. Try it on your iPhone instead.");
    v20 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A588];
    v21 = MEMORY[0x1E696AEC0];
    v22 = WFLocalizedString(@"Could Not Run “%@”");
    localizedName = [(WFAction *)self localizedName];
    v24 = [v21 localizedStringWithFormat:v22, localizedName];
    v31[1] = *MEMORY[0x1E696A578];
    v32[0] = v24;
    v32[1] = actionsRestrictedWhileLocked;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v26 = [v20 errorWithDomain:@"WFHandleIntentActionErrorDomain" code:0 userInfo:v25];

    [(WFHandleIntentAction *)self finishRunningWithError:v26];
LABEL_17:

    goto LABEL_18;
  }

  if (![MEMORY[0x1E69AA868] shouldLaunchAppInBackgroundWithIntent:intent intentResponse:intentResponse])
  {
    v17 = [MEMORY[0x1E696E728] appInfoWithIntent:intent];
    actionsRestrictedWhileLocked = [v17 actionsRestrictedWhileLocked];

    _className = [intent _className];
    v19 = [actionsRestrictedWhileLocked containsObject:_className];

    if (v19)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __54__WFHandleIntentAction_finishRunningByContinuingInApp__block_invoke_289;
      v29[3] = &unk_1E8379BE0;
      v29[4] = self;
      [(WFAction *)self requestUnlock:v29];
    }

    else
    {
      [(WFHandleIntentAction *)self launchAppInBackground:0];
    }

    goto LABEL_17;
  }

  [(WFHandleIntentAction *)self launchAppInBackground:1];
LABEL_18:

  v27 = *MEMORY[0x1E69E9840];
}

void __54__WFHandleIntentAction_finishRunningByContinuingInApp__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *(a1 + 32);
    v5 = [v3 error];
    [v4 finishRunningWithError:v5];

    v6 = v3;
  }

  else
  {

    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315394;
      v12 = "[WFHandleIntentAction finishRunningByContinuingInApp]_block_invoke";
      v13 = 2112;
      v14 = objc_opt_class();
      v8 = v14;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v11, 0x16u);
    }

    v9 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v9 finishRunningWithError:v6];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __54__WFHandleIntentAction_finishRunningByContinuingInApp__block_invoke_289(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 launchAppInBackground:0];
  }

  else
  {
    return [v2 finishRunningWithError:?];
  }
}

- (void)populateIntent:(id)intent withInput:(id)input processedParameters:(id)parameters completionHandler:(id)handler
{
  inputCopy = input;
  parametersCopy = parameters;
  handlerCopy = handler;
  v13 = [intent copy];
  if (!inputCopy)
  {
    inputCopy = objc_opt_new();
  }

  slots = [(WFHandleIntentAction *)self slots];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke;
  v22[3] = &unk_1E8374330;
  v22[4] = self;
  v23 = parametersCopy;
  v24 = v13;
  v25 = inputCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke_3;
  v19[3] = &unk_1E837EE60;
  v20 = v24;
  v21 = handlerCopy;
  v15 = v24;
  v16 = handlerCopy;
  v17 = inputCopy;
  v18 = parametersCopy;
  [slots if_enumerateAsynchronouslyInSequence:v22 completionHandler:v19];
}

void __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) parameterForSlot:v6];
  v9 = *(a1 + 40);
  v10 = [v8 key];
  v11 = [v9 objectForKey:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v8 && !v11)
    {
      v16 = [*(a1 + 32) inputParameter];
      v17 = v16;
      if (v8 != v16)
      {

LABEL_12:
        v7[2](v7, 0);
        goto LABEL_13;
      }

      v20 = [*(a1 + 32) populatesInputFromInputParameter];

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v21 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke_2;
    v23[3] = &unk_1E837C818;
    v22 = *(a1 + 56);
    v24 = *(a1 + 48);
    v25 = v6;
    v26 = v7;
    [v21 resolveSlot:v25 withProcessedValue:v11 parameter:v8 input:v22 completion:v23];

    goto LABEL_13;
  }

  v12 = [*(a1 + 48) _parametersForcedToNeedsValue];
  v13 = [v12 mutableCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v18 = v15;

  v19 = [v6 wf_slotName];
  [v18 addObject:v19];

  [*(a1 + 48) _setParametersForcedToNeedsValue:v18];
  v7[2](v7, 0);

LABEL_13:
}

void __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[WFHandleIntentAction populateIntent:withInput:processedParameters:completionHandler:]_block_invoke_3";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s WFHandleIntentAction failed to populate intent with error %{public}@", &v9, 0x16u);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);
  }

  v6();

  v8 = *MEMORY[0x1E69E9840];
}

void __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a2;
    v8 = [v6 wf_slotName];
    [v5 setValue:v7 forKey:v8];
  }

  (*(a1[6] + 16))();
}

- (id)executorWithIntent:(id)intent groupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  intentCopy = intent;
  v8 = [[WFIntentExecutor alloc] initWithIntent:intentCopy donateInteraction:[(WFHandleIntentAction *)self shouldDonateIntent:intentCopy] groupIdentifier:identifierCopy];

  [(WFIntentExecutor *)v8 setDelegate:self];

  return v8;
}

- (BOOL)shouldForceHandleInSiri:(id)siri
{
  siriCopy = siri;
  if ([siriCopy _idiom] == 4)
  {
    v4 = 0;
  }

  else
  {
    systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    v6 = [systemShortcutsUserDefaults arrayForKey:@"IntentsHandledBySiriOverride"];
    _className = [siriCopy _className];
    v4 = [v6 containsObject:_className];
  }

  return v4;
}

- (BOOL)intentIsHandledBySiri:(id)siri
{
  siriCopy = siri;
  skipSiriExecution = [(WFHandleIntentAction *)self skipSiriExecution];
  runInProcess = [(WFHandleIntentAction *)self runInProcess];
  v6 = [siriCopy _type] == 2;
  v7 = [(WFHandleIntentAction *)self shouldForceHandleInSiri:siriCopy];

  LOBYTE(siriCopy) = 0;
  if ((v6 || v7) && !runInProcess)
  {
    userInterface = [(WFAction *)self userInterface];
    LODWORD(siriCopy) = [userInterface isRunningWithSiriUI] & !skipSiriExecution;
  }

  return siriCopy;
}

- (BOOL)isHandledBySiri
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v11 = "[WFHandleIntentAction isHandledBySiri]";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Unable to generate intent: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(WFHandleIntentAction *)self intentIsHandledBySiri:v3];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)skipSiriExecution
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"SkipSiriExecution"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)runInProcess
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"InProcess"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)parameterCombinationForIntentSupportsBackgroundExecution:(id)execution
{
  _currentParameterCombination = [execution _currentParameterCombination];
  v4 = _currentParameterCombination;
  if (_currentParameterCombination)
  {
    supportsBackgroundExecution = [_currentParameterCombination supportsBackgroundExecution];
  }

  else
  {
    supportsBackgroundExecution = 1;
  }

  return supportsBackgroundExecution;
}

- (void)handleExecutionCompletionWithInteraction:(id)interaction error:(id)error
{
  interactionCopy = interaction;
  v7 = interactionCopy;
  if (interactionCopy)
  {
    intentResponse = [interactionCopy intentResponse];
    v9 = INTypedIntentResponseWithIntentResponse();

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__WFHandleIntentAction_handleExecutionCompletionWithInteraction_error___block_invoke;
    v10[3] = &unk_1E8374300;
    v10[4] = self;
    v11 = v7;
    [(WFHandleIntentAction *)self getOutputFromIntentResponse:v9 completionHandler:v10];
  }

  else
  {
    [(WFHandleIntentAction *)self handleExecutorError:error];
  }
}

void __71__WFHandleIntentAction_handleExecutionCompletionWithInteraction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setOutput:v3];
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __71__WFHandleIntentAction_handleExecutionCompletionWithInteraction_error___block_invoke_2;
  v13 = &unk_1E837F870;
  v4 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = _Block_copy(&v10);
  v6 = [*(a1 + 40) intent];
  v7 = [v6 launchId];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69E0F80]];

  if (v8)
  {
    v9 = dispatch_time(0, 200000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

void __71__WFHandleIntentAction_handleExecutionCompletionWithInteraction_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 userInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__WFHandleIntentAction_handleExecutionCompletionWithInteraction_error___block_invoke_3;
  v5[3] = &unk_1E8379BE0;
  v5[4] = *(a1 + 32);
  [v2 showInteractionIfNeeded:v3 inUserInterface:v4 requiringConfirmation:0 requiringAuthentication:0 executionStage:1 completionHandler:v5];
}

- (void)actuallyStartExecutingIntent:(id)intent
{
  v44 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  if ([(WFHandleIntentAction *)self parameterCombinationForIntentSupportsBackgroundExecution:intentCopy]&& ![(WFHandleIntentAction *)self opensInApp])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__WFHandleIntentAction_actuallyStartExecutingIntent___block_invoke;
    aBlock[3] = &unk_1E8379390;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    runInProcess = [(WFHandleIntentAction *)self runInProcess];
    _executionContext = [intentCopy _executionContext];
    v12 = _executionContext != 9 && (_executionContext - 3) < 0xFFFFFFFFFFFFFFFELL;
    extensionBundleId = [intentCopy extensionBundleId];
    if (extensionBundleId)
    {
      bundleProxyForCurrentProcess = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
      bundleIdentifier = [bundleProxyForCurrentProcess bundleIdentifier];
      extensionBundleId2 = [intentCopy extensionBundleId];
      v17 = [bundleIdentifier isEqualToString:extensionBundleId2];
    }

    else
    {
      v17 = 0;
    }

    if ((runInProcess | v12 & v17))
    {
      v18 = +[WFBundledIntentHandlerProvider localIntentHandlerLaunchID];
      [intentCopy _setExtensionBundleId:v18];
    }

    if ([(WFHandleIntentAction *)self intentIsHandledBySiri:intentCopy])
    {
      if (([intentCopy _hasMatchingIntentHandlerIncludingRemoteExecution:1] & 1) == 0)
      {
        v31 = [(WFHandleIntentAction *)self executorWithIntent:intentCopy groupIdentifier:0];
        [(WFHandleIntentAction *)self setExecutor:v31];

        [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
        goto LABEL_23;
      }

      userInterface = [(WFAction *)self userInterface];
      isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

      if (isRunningWithSiriUI)
      {
        v21 = [objc_alloc(MEMORY[0x1E69E0CC0]) initWithIntent:intentCopy];
        userInterface2 = [(WFAction *)self userInterface];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __53__WFHandleIntentAction_actuallyStartExecutingIntent___block_invoke_2;
        v33[3] = &unk_1E8374A98;
        v33[4] = self;
        v34 = v8;
        v23 = [userInterface2 performSiriRequest:v21 completionHandler:v33];

        if (v23)
        {
          goto LABEL_23;
        }
      }
    }

    executor = [(WFHandleIntentAction *)self executor];
    connection = [executor connection];
    appProtectionPolicy = [connection appProtectionPolicy];

    v27 = [(WFHandleIntentAction *)self executorWithIntent:intentCopy groupIdentifier:0];
    [(WFHandleIntentAction *)self setExecutor:v27];

    executor2 = [(WFHandleIntentAction *)self executor];
    connection2 = [executor2 connection];
    [connection2 setAppProtectionPolicy:appProtectionPolicy];

    executor3 = [(WFHandleIntentAction *)self executor];
    [executor3 startWithCompletionHandler:v8];

LABEL_23:
    goto LABEL_24;
  }

  v5 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localizedName = [(WFAction *)self localizedName];
    *buf = 136315906;
    v37 = "[WFHandleIntentAction actuallyStartExecutingIntent:]";
    v38 = 2112;
    v39 = localizedName;
    v40 = 1024;
    v41 = [(WFHandleIntentAction *)self parameterCombinationForIntentSupportsBackgroundExecution:intentCopy];
    v42 = 1024;
    opensInApp = [(WFHandleIntentAction *)self opensInApp];
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ will finish by continuing in app (parameter combination supports background execution: %i, opensInApp: %i", buf, 0x22u);
  }

  v7 = [(WFHandleIntentAction *)self executorWithIntent:intentCopy groupIdentifier:0];
  [(WFHandleIntentAction *)self setExecutor:v7];

  [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
LABEL_24:

  v32 = *MEMORY[0x1E69E9840];
}

void __53__WFHandleIntentAction_actuallyStartExecutingIntent___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = *(a1 + 40);
    v4 = [v8 interaction];
    v5 = [v8 error];
    (*(v3 + 16))(v3, v4, v5);

    v6 = v8;
  }

  else
  {

    v7 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [v7 finishRunningWithError:v6];
  }
}

- (void)startExecutingIntent:(id)intent
{
  v22 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v5 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[WFHandleIntentAction startExecutingIntent:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s WFHandleIntentAction startExecutingIntent", buf, 0xCu);
  }

  [intentCopy _setExecutionContext:7];
  showsWhenRunIfApplicable = [(WFHandleIntentAction *)self showsWhenRunIfApplicable];
  v7 = showsWhenRunIfApplicable;
  if (showsWhenRunIfApplicable)
  {
    bOOLValue = [showsWhenRunIfApplicable BOOLValue];
    _metadata = [intentCopy _metadata];
    [_metadata setShowsWhenRun:bOOLValue];
  }

  v10 = [intentCopy copy];
  runningIntent = self->_runningIntent;
  self->_runningIntent = v10;

  userInterface = [(WFAction *)self userInterface];
  if (![userInterface isRunningWithSiriUI])
  {
    goto LABEL_8;
  }

  userInterface2 = [(WFAction *)self userInterface];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    userInterface = [(WFAction *)self userInterface];
    [userInterface configureIntent:intentCopy];
LABEL_8:
  }

  v15 = [[WFActionWillRunIntentTestingEvent alloc] initWithAction:self intent:intentCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__WFHandleIntentAction_startExecutingIntent___block_invoke;
  v18[3] = &unk_1E837C698;
  v18[4] = self;
  v19 = intentCopy;
  v16 = intentCopy;
  [(WFAction *)self handleTestingEvent:v15 completionHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __45__WFHandleIntentAction_startExecutingIntent___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 actuallyStartExecutingIntent:*(a1 + 40)];
  }

  else
  {
    return [v3 finishRunningWithError:?];
  }
}

- (void)setExecutor:(id)executor
{
  executorCopy = executor;
  executor = self->_executor;
  if (executor != executorCopy)
  {
    v13 = executorCopy;
    if (!executor)
    {
      goto LABEL_6;
    }

    progress = [(WFIntentExecutor *)executor progress];
    totalUnitCount = [progress totalUnitCount];
    progress2 = [(WFIntentExecutor *)self->_executor progress];
    [progress2 setCompletedUnitCount:totalUnitCount];

    if (!v13)
    {
      goto LABEL_6;
    }

    if (self->_executor)
    {
      progress3 = [(WFAction *)self progress];
      [progress3 setTotalUnitCount:{objc_msgSend(progress3, "totalUnitCount") + 1}];

      objc_storeStrong(&self->_executor, executor);
    }

    else
    {
LABEL_6:
      objc_storeStrong(&self->_executor, executor);
      executorCopy = v13;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    progress4 = [(WFAction *)self progress];
    progress5 = [(WFIntentExecutor *)v13 progress];
    [progress4 addChild:progress5 withPendingUnitCount:1];

    executorCopy = v13;
  }

LABEL_8:
}

- (BOOL)shouldDonateIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  else
  {
    return ![(WFHandleIntentAction *)self isWorkflowInDatabase];
  }
}

- (BOOL)isWorkflowInDatabase
{
  workflow = [(WFAction *)self workflow];
  reference = [workflow reference];
  identifier = [reference identifier];
  v5 = identifier != 0;

  return v5;
}

- (void)accessBundleContentWithBlock:(id)block
{
  blockCopy = block;
  appDescriptor = [(WFHandleIntentAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  mEMORY[0x1E696E878] = [MEMORY[0x1E696E878] sharedConnection];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{bundleIdentifier, 0}];
  [mEMORY[0x1E696E878] wf_accessBundleContentForBundleIdentifiers:v7 withBlock:blockCopy];
}

- (id)parameterForSlot:(id)slot
{
  slotCopy = slot;
  parameters = [(WFAction *)self parameters];
  wf_slotName = [slotCopy wf_slotName];

  v7 = [parameters objectMatchingKey:@"intentSlotName" value:wf_slotName];

  return v7;
}

- (void)generateStandaloneShortcutRepresentation:(id)representation
{
  representationCopy = representation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__WFHandleIntentAction_generateStandaloneShortcutRepresentation___block_invoke;
  v6[3] = &unk_1E83742D8;
  v6[4] = self;
  v7 = representationCopy;
  v5 = representationCopy;
  [(WFHandleIntentAction *)self generateShortcutRepresentation:v6];
}

void __65__WFHandleIntentAction_generateStandaloneShortcutRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 titleForINShortcut:v4];
  v5 = [[WFStandaloneShortcutRepresentation alloc] initWithINShortcut:v4 title:v6];

  (*(*(a1 + 40) + 16))();
}

- (void)generateShortcutRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__WFHandleIntentAction_generateShortcutRepresentation___block_invoke;
  v7[3] = &unk_1E8378300;
  v7[4] = self;
  v8 = representationCopy;
  v6 = representationCopy;
  [(WFAction *)self processParametersWithoutAskingForValuesWithInput:0 workQueue:v5 completionHandler:v7];
}

void __55__WFHandleIntentAction_generateShortcutRepresentation___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__WFHandleIntentAction_generateShortcutRepresentation___block_invoke_2;
    v8[3] = &unk_1E83742B0;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v6 generatePopulatedIntentFromInput:a3 processedParameters:a2 completion:v8];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

void __55__WFHandleIntentAction_generateShortcutRepresentation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (!v5 || a3)
  {
    (*(v6 + 16))(v6, 0, a3);
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696EA38]) initWithIntent:v5];
    (*(v6 + 16))(v6, v7, 0);
  }
}

- (id)createResourceManager
{
  v5.receiver = self;
  v5.super_class = WFHandleIntentAction;
  createResourceManager = [(WFAction *)&v5 createResourceManager];
  WFConfigureIntentBasedParameterResources(createResourceManager, self);

  return createResourceManager;
}

- (void)generatePopulatedIntentWithIdentifier:(id)identifier fromInput:(id)input processedParameters:(id)parameters completion:(id)completion
{
  inputCopy = input;
  parametersCopy = parameters;
  v15 = 0;
  completionCopy = completion;
  v13 = [(WFHandleIntentAction *)self generatedIntentWithIdentifier:identifier input:inputCopy processedParameters:parametersCopy error:&v15];
  v14 = v15;
  if (v13)
  {
    [(WFHandleIntentAction *)self populateIntent:v13 withInput:inputCopy processedParameters:parametersCopy completionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)generatePopulatedIntentFromInput:(id)input processedParameters:(id)parameters completion:(id)completion
{
  v8 = MEMORY[0x1E696AFB0];
  completionCopy = completion;
  parametersCopy = parameters;
  inputCopy = input;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  [(WFHandleIntentAction *)self generatePopulatedIntentWithIdentifier:uUIDString fromInput:inputCopy processedParameters:parametersCopy completion:completionCopy];
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:0];
  _intents_bundleIdForDisplay = [v2 _intents_bundleIdForDisplay];
  v4 = _intents_bundleIdForDisplay;
  if (_intents_bundleIdForDisplay)
  {
    _intents_launchIdForCurrentPlatform = _intents_bundleIdForDisplay;
  }

  else
  {
    _intents_launchIdForCurrentPlatform = [v2 _intents_launchIdForCurrentPlatform];
  }

  v6 = _intents_launchIdForCurrentPlatform;

  return v6;
}

- (id)generatedIntentWithInput:(id)input processedParameters:(id)parameters error:(id *)error
{
  v8 = MEMORY[0x1E696AFB0];
  parametersCopy = parameters;
  inputCopy = input;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v13 = [(WFHandleIntentAction *)self generatedIntentWithIdentifier:uUIDString input:inputCopy processedParameters:parametersCopy error:error];

  return v13;
}

- (void)resolveSlot:(id)slot withProcessedValue:(id)value parameter:(id)parameter input:(id)input completion:(id)completion
{
  slotCopy = slot;
  valueCopy = value;
  parameterCopy = parameter;
  completionCopy = completion;
  if (valueCopy)
  {
    v15 = [parameterCopy key];
    v16 = [(WFAction *)self parameterStateForKey:v15];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = valueCopy;
      contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __82__WFHandleIntentAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke;
      v20[3] = &unk_1E8374288;
      v22 = completionCopy;
      v21 = slotCopy;
      [v17 getRecipientsWithPermissionRequestor:contentPermissionRequestor completionHandler:v20];
    }

    else
    {
      [slotCopy wf_getProcessedIntentValueForParameterValue:valueCopy parameter:parameterCopy parameterState:v16 completionHandler:completionCopy];
    }
  }

  else
  {
    if ([slotCopy wf_multipleValues])
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v19 = 0;
    }

    (*(completionCopy + 2))(completionCopy, v19, 0);
  }
}

void __82__WFHandleIntentAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v6 = *(v8 + 8);
  v9 = a2;
  if (([v7 wf_multipleValues] & 1) == 0)
  {
    v10 = [v9 firstObject];

    v9 = v10;
  }

  (*(v6 + 16))(v6, v9, v11);
}

- (unint64_t)allowsInteractiveSlotResolution
{
  userInterface = [(WFAction *)self userInterface];
  if (([userInterface isRunningWithSiriUI] & 1) == 0)
  {

    return 1;
  }

  userInterface2 = [(WFAction *)self userInterface];
  executionContext = [userInterface2 executionContext];

  if (executionContext <= 9 && ((1 << executionContext) & 0x206) != 0)
  {
    return 1;
  }

  if ([(WFHandleIntentAction *)self isWorkflowInDatabase])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)opensInApp
{
  v2 = [(WFAction *)self parameterValueForKey:@"OpenInApp" ofClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)showsWhenRun
{
  showsWhenRunIfApplicable = [(WFHandleIntentAction *)self showsWhenRunIfApplicable];
  bOOLValue = [showsWhenRunIfApplicable BOOLValue];

  return bOOLValue;
}

- (id)showsWhenRunIfApplicable
{
  if ([(WFHandleIntentAction *)self requiresShowsWhenRun])
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = [(WFAction *)self parameterForKey:@"ShowWhenRun"];
    v5 = v4;
    if (v4 && ([v4 isHidden] & 1) == 0 && (objc_msgSend(v5, "resourceManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "resourcesRequiredForDisplayAvailable"), v6, v7))
    {
      v3 = [(WFAction *)self parameterValueForKey:@"ShowWhenRun" ofClass:objc_opt_class()];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)wasAddedToWorkflowByUser:(id)user
{
  v9.receiver = self;
  v9.super_class = WFHandleIntentAction;
  userCopy = user;
  [(WFAction *)&v9 wasAddedToWorkflowByUser:userCopy];
  hiddenFromLibraryAndSync = [userCopy hiddenFromLibraryAndSync];

  if (hiddenFromLibraryAndSync)
  {
    v6 = [(WFAction *)self parameterForKey:@"ShowWhenRun"];

    if (v6)
    {
      v7 = [WFBooleanSubstitutableState alloc];
      v8 = [(WFNumberSubstitutableState *)v7 initWithNumber:MEMORY[0x1E695E110]];
      [(WFAction *)self setParameterState:v8 forKey:@"ShowWhenRun"];
    }
  }
}

- (id)externalMetricsActionIdentifier
{
  intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];
  intentClassName = [intentDescriptor intentClassName];

  return intentClassName;
}

- (id)appBundleIdentifier
{
  intentDescriptor = [(WFHandleIntentAction *)self intentDescriptor];
  displayableBundleIdentifier = [intentDescriptor displayableBundleIdentifier];
  v5 = displayableBundleIdentifier;
  if (displayableBundleIdentifier)
  {
    bundleIdentifier = displayableBundleIdentifier;
  }

  else
  {
    intentDescriptor2 = [(WFHandleIntentAction *)self intentDescriptor];
    bundleIdentifier = [intentDescriptor2 bundleIdentifier];
  }

  return bundleIdentifier;
}

- (BOOL)prefersActionAttribution
{
  v6.receiver = self;
  v6.super_class = WFHandleIntentAction;
  if ([(WFAction *)&v6 prefersActionAttribution])
  {
    identifier = [(WFAction *)self identifier];
    v4 = [identifier hasPrefix:@"is.workflow.actions"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (INCExtensionConnection)connection
{
  executor = [(WFHandleIntentAction *)self executor];
  connection = [executor connection];

  return connection;
}

- (void)cancel
{
  executor = [(WFHandleIntentAction *)self executor];
  [executor cancel];

  v4.receiver = self;
  v4.super_class = WFHandleIntentAction;
  [(WFAction *)&v4 cancel];
}

- (void)finishRunningWithError:(id)error
{
  errorCopy = error;
  [(WFHandleIntentAction *)self setExecutor:0];
  v5.receiver = self;
  v5.super_class = WFHandleIntentAction;
  [(WFAction *)&v5 finishRunningWithError:errorCopy];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  processedParameters = [(WFAction *)self processedParameters];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__WFHandleIntentAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_1E8374260;
  v6[4] = self;
  [(WFHandleIntentAction *)self generatePopulatedIntentFromInput:inputCopy processedParameters:processedParameters completion:v6];
}

uint64_t __51__WFHandleIntentAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 startExecutingIntent:a2];
  }

  else
  {
    return [v2 finishRunningWithError:?];
  }
}

- (void)initializeParameters
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = WFHandleIntentAction;
  [(WFAction *)&v14 initializeParameters];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  parameters = [(WFAction *)self parameters];
  v4 = [parameters countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(parameters);
        }

        resourceManager = [*(*(&v10 + 1) + 8 * v7) resourceManager];
        WFConfigureIntentBasedParameterResources(resourceManager, self);

        ++v7;
      }

      while (v5 != v7);
      v5 = [parameters countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  overrideLocalizedName = [(WFHandleIntentAction *)self overrideLocalizedName];
  v6 = overrideLocalizedName;
  if (overrideLocalizedName)
  {
    v7 = overrideLocalizedName;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHandleIntentAction;
    v7 = [(WFAction *)&v10 localizedNameWithContext:contextCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)inputPassthrough
{
  outputDictionary = [(WFAction *)self outputDictionary];
  v3 = [outputDictionary objectForKeyedSubscript:@"Types"];
  v4 = v3 == 0;

  return v4;
}

- (id)disabledOnPlatforms
{
  v4.receiver = self;
  v4.super_class = WFHandleIntentAction;
  disabledOnPlatforms = [(WFAction *)&v4 disabledOnPlatforms];

  return disabledOnPlatforms;
}

- (id)defaultLocalizationContext
{
  v3 = objc_alloc(MEMORY[0x1E69E0BE0]);
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  stringLocalizer = [(WFHandleIntentAction *)self stringLocalizer];
  v6 = [v3 initWithLocale:autoupdatingCurrentLocale stringLocalizer:stringLocalizer];

  return v6;
}

- (WFHandleIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters stringLocalizer:(id)localizer
{
  localizerCopy = localizer;
  v15.receiver = self;
  v15.super_class = WFHandleIntentAction;
  v11 = [(WFAction *)&v15 initWithIdentifier:identifier definition:definition serializedParameters:parameters];
  if (v11)
  {
    v12 = localizerCopy;
    if (!localizerCopy)
    {
      v12 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    }

    objc_storeStrong(&v11->_stringLocalizer, v12);
    if (!localizerCopy)
    {
    }

    v13 = v11;
  }

  return v11;
}

- (WFHandleIntentAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  v8 = MEMORY[0x1E696EA80];
  parametersCopy = parameters;
  definitionCopy = definition;
  identifierCopy = identifier;
  v12 = [v8 localizerForLanguage:0];
  v13 = [(WFHandleIntentAction *)self initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy stringLocalizer:v12];

  return v13;
}

@end