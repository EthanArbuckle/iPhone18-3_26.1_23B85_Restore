@interface WFHandleIntentAction
- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4;
- (BOOL)inputPassthrough;
- (BOOL)intentIsHandledBySiri:(id)a3;
- (BOOL)isHandledBySiri;
- (BOOL)isWorkflowInDatabase;
- (BOOL)opensInApp;
- (BOOL)parameterCombinationForIntentSupportsBackgroundExecution:(id)a3;
- (BOOL)prefersActionAttribution;
- (BOOL)requiresRemoteExecution;
- (BOOL)runInProcess;
- (BOOL)shouldDonateIntent:(id)a3;
- (BOOL)shouldForceHandleInSiri:(id)a3;
- (BOOL)showsWhenRun;
- (BOOL)skipSiriExecution;
- (INCExtensionConnection)connection;
- (NSString)associatedAppBundleIdentifier;
- (WFHandleIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (WFHandleIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6;
- (id)appBundleIdentifier;
- (id)appDescriptor;
- (id)appResource;
- (id)confirmationAlertForInteraction:(id)a3 completionHandler:(id)a4;
- (id)contentDestinationWithError:(id *)a3;
- (id)createResourceManager;
- (id)defaultLocalizationContext;
- (id)disabledOnPlatforms;
- (id)displayableAppDescriptor;
- (id)errorAttributedToApp:(id)a3;
- (id)errorFromConfirmResponse:(id)a3 intent:(id)a4;
- (id)errorFromHandleResponse:(id)a3 intent:(id)a4;
- (id)errorFromResolutionResult:(id)a3 forSlot:(id)a4 onIntent:(id)a5;
- (id)errorThatLaunchesApp:(id)a3;
- (id)executorWithIntent:(id)a3 groupIdentifier:(id)a4;
- (id)externalMetricsActionIdentifier;
- (id)generatedIntentWithInput:(id)a3 processedParameters:(id)a4 error:(id *)a5;
- (id)localizedNameWithContext:(id)a3;
- (id)parameterForSlot:(id)a3;
- (id)rootCauseErrorFromError:(id)a3;
- (id)showsWhenRunIfApplicable;
- (id)unknownErrorWithCode:(int64_t)a3 localizedDescription:(id)a4 userInfo:(id)a5;
- (unint64_t)allowsInteractiveSlotResolution;
- (void)accessBundleContentWithBlock:(id)a3;
- (void)actuallyStartExecutingIntent:(id)a3;
- (void)cancel;
- (void)finishRunningByContinuingInApp;
- (void)finishRunningWithError:(id)a3;
- (void)generatePopulatedIntentFromInput:(id)a3 processedParameters:(id)a4 completion:(id)a5;
- (void)generatePopulatedIntentWithIdentifier:(id)a3 fromInput:(id)a4 processedParameters:(id)a5 completion:(id)a6;
- (void)generateShortcutRepresentation:(id)a3;
- (void)generateStandaloneShortcutRepresentation:(id)a3;
- (void)getErrorFromExtensionError:(id)a3 completionHandler:(id)a4;
- (void)getOutputFromIntentResponse:(id)a3 completionHandler:(id)a4;
- (void)handleExecutionCompletionWithInteraction:(id)a3 error:(id)a4;
- (void)handleExecutorError:(id)a3;
- (void)handleResolutionResult:(id)a3 forSlot:(id)a4 onIntent:(id)a5;
- (void)initializeParameters;
- (void)launchAppInBackground:(BOOL)a3;
- (void)localizedConfirmationPromptForAttribute:(id)a3 intent:(id)a4 completion:(id)a5;
- (void)localizedDisambiguationPromptForAttribute:(id)a3 intent:(id)a4 disambiguationItems:(id)a5 completion:(id)a6;
- (void)populateIntent:(id)a3 withInput:(id)a4 processedParameters:(id)a5 completionHandler:(id)a6;
- (void)resolveSlot:(id)a3 withProcessedValue:(id)a4 parameter:(id)a5 input:(id)a6 completion:(id)a7;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)setExecutor:(id)a3;
- (void)setIntentDescriptor:(id)a3;
- (void)showAskForValueAndRetryForSlot:(id)a3 onIntent:(id)a4;
- (void)showConfirmationAndRetryForSlot:(id)a3 item:(id)a4 onIntent:(id)a5 completionHandler:(id)a6;
- (void)showDisambiguationAndRetryForSlot:(id)a3 items:(id)a4 onIntent:(id)a5;
- (void)startExecutingIntent:(id)a3;
- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)a3;
- (void)updateAppDescriptorWithSelectedApp:(id)a3;
- (void)wasAddedToWorkflowByUser:(id)a3;
@end

@implementation WFHandleIntentAction

- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"Connection"];

  v6 = [v5 appProxy];
  [v6 launchAppInBackground:0 completionHandler:&__block_literal_global_5174];

  v7 = v5 != 0;
  return v7;
}

- (id)rootCauseErrorFromError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

  if (v6)
  {
    v7 = [(WFHandleIntentAction *)self rootCauseErrorFromError:v6];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (void)handleExecutorError:(id)a3
{
  v74[2] = *MEMORY[0x1E69E9840];
  v4 = [(WFHandleIntentAction *)self errorAttributedToApp:a3];
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"WFIntentExecutorErrorDomain"];

  if (!v6)
  {
    v11 = [v4 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x1E699F9A0]];

    if (!v12)
    {
      goto LABEL_45;
    }

    v13 = MEMORY[0x1E6963620];
    v14 = [(WFHandleIntentAction *)self executor];
    v15 = [v14 intent];
    v16 = [v15 _intents_bundleIdForDisplay];
    v17 = [v13 bundleRecordWithBundleIdentifier:v16 allowPlaceholder:0 error:0];

    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 localizedName];
        v19 = [v18 length] != 0;
      }

      else
      {
        v19 = 0;
        v18 = v17;
        v17 = 0;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v29 = MEMORY[0x1E696AEC0];
    v30 = WFLocalizedString(@"Couldn’t Run “%@”");
    v31 = [(WFAction *)self localizedName];
    v32 = [v29 stringWithFormat:v30, v31];

    v33 = MEMORY[0x1E696AEC0];
    if (v19)
    {
      v34 = WFLocalizedString(@"“%1$@” could not open “%2$@” because an unknown error occurred.");
      v35 = [(WFAction *)self localizedName];
      v36 = [v17 localizedName];
      v37 = [v33 localizedStringWithFormat:v34, v35, v36];
    }

    else
    {
      v34 = WFLocalizedString(@"“%@” could not open the app because an unknown error occurred.");
      v35 = [(WFAction *)self localizedName];
      v37 = [v33 localizedStringWithFormat:v34, v35];
    }

    v38 = [(WFHandleIntentAction *)self rootCauseErrorFromError:v4];
    v39 = [v38 domain];
    if ([v39 isEqualToString:*MEMORY[0x1E699F8C0]])
    {
      v40 = [v38 code];

      if (v40 != 7)
      {
LABEL_44:
        v62 = MEMORY[0x1E696ABC0];
        v63 = [v4 domain];
        v64 = [v4 code];
        v65 = *MEMORY[0x1E696A578];
        v73[0] = *MEMORY[0x1E696A588];
        v73[1] = v65;
        v74[0] = v32;
        v74[1] = v37;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
        v67 = [v62 errorWithDomain:v63 code:v64 userInfo:v66];

        v4 = v67;
        goto LABEL_45;
      }

      v41 = [MEMORY[0x1E69E0A90] currentDevice];
      v39 = [v41 localizedModel];

      v42 = MEMORY[0x1E696AEC0];
      if (v19)
      {
        v71 = WFLocalizedString(@"“%1$@” could not open “%2$@” because the %3$@ is locked.");
        v43 = [(WFAction *)self localizedName];
        v44 = [v17 localizedName];
        v45 = [v42 localizedStringWithFormat:v71, v43, v44, v39];

        v37 = v44;
        v46 = v71;
      }

      else
      {
        v46 = WFLocalizedString(@"“%1$@” could not open the app because the %2$@ is locked.");
        v43 = [(WFAction *)self localizedName];
        v45 = [v42 stringWithFormat:v46, v43, v39];
      }

      v37 = v45;
    }

    goto LABEL_44;
  }

  v7 = [v4 code];
  if (v7 <= 101)
  {
    if (v7 == 100)
    {
      v24 = [v4 userInfo];
      v25 = *MEMORY[0x1E696AA08];
      v8 = [v24 objectForKey:*MEMORY[0x1E696AA08]];

      v26 = [v8 domain];
      v27 = *MEMORY[0x1E696E568];
      if ([v26 isEqualToString:*MEMORY[0x1E696E568]])
      {
        v28 = [v8 code];

        if (v28 == 3001)
        {
          [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
          goto LABEL_22;
        }
      }

      else
      {
      }

      v47 = [v8 domain];
      if ([v47 isEqualToString:v27])
      {
        v48 = [v8 code];

        if (v48 == 3006)
        {
          v9 = objc_opt_new();
          v49 = MEMORY[0x1E696AEC0];
          v50 = WFLocalizedString(@"Could not run %@");
          v51 = [(WFAction *)self localizedName];
          v52 = [v49 localizedStringWithFormat:v50, v51];
          [v9 setObject:v52 forKeyedSubscript:*MEMORY[0x1E696A588]];

          [v9 setObject:v8 forKeyedSubscript:v25];
          v53 = [(WFHandleIntentAction *)self appDescriptor];
          v54 = [v53 localizedName];
          v55 = [v54 length];

          v56 = MEMORY[0x1E696AEC0];
          if (v55)
          {
            v57 = WFLocalizedString(@"The action “%1$@” could not run. Open %2$@ to continue.");
            v58 = [(WFAction *)self localizedName];
            v59 = [(WFHandleIntentAction *)self appDescriptor];
            v60 = [v59 localizedName];
            v61 = [v56 localizedStringWithFormat:v57, v58, v60];
            [v9 setObject:v61 forKeyedSubscript:*MEMORY[0x1E696A578]];
          }

          else
          {
            v57 = WFLocalizedString(@"The action “%@” could not run. Open the app to continue.");
            v58 = [(WFAction *)self localizedName];
            v59 = [v56 localizedStringWithFormat:v57, v58];
            [v9 setObject:v59 forKeyedSubscript:*MEMORY[0x1E696A578]];
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

    if (v7 == 101)
    {
      v8 = [v4 userInfo];
      v9 = [v8 objectForKey:@"WFIntentExecutorSlotResolutionResultErrorKey"];
      v10 = [v8 objectForKey:@"WFIntentExecutorSlotDescriptionErrorKey"];
      v20 = [v8 objectForKey:@"WFIntentExecutorIntentErrorKey"];
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

  if ((v7 - 102) < 2)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:@"WFIntentExecutorIntentErrorKey"];
    v10 = [v8 objectForKey:@"WFIntentExecutorIntentResponseErrorKey"];
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

  if (v7 != 104)
  {
    goto LABEL_45;
  }

  v21 = [v4 userInfo];
  v22 = [v21 objectForKey:@"WFIntentExecutorIntentErrorKey"];

  [(WFHandleIntentAction *)self startExecutingIntent:v22];
LABEL_46:

  v68 = *MEMORY[0x1E69E9840];
}

- (void)getErrorFromExtensionError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E696AA08]];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__WFHandleIntentAction_getErrorFromExtensionError_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837E248;
  aBlock[4] = self;
  v9 = v8;
  v24 = v9;
  v10 = v6;
  v25 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v9 code];
  switch(v12)
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
      v15 = [(WFHandleIntentAction *)self appDescriptor];
      v14 = [v15 localizedName];

      if ([v14 length])
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = WFLocalizedString(@"This action requires %@ to be installed.");
        v18 = [v16 stringWithFormat:v17, v14];
        v11[2](v11, v18);
      }

      else
      {
        v17 = objc_alloc_init(WFiTunesSessionManager);
        v18 = [(WFHandleIntentAction *)self appDescriptor];
        v19 = [v18 bundleIdentifier];
        v20 = [MEMORY[0x1E695DF58] currentLocale];
        v21 = [v20 countryCode];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __69__WFHandleIntentAction_getErrorFromExtensionError_completionHandler___block_invoke_2;
        v22[3] = &unk_1E837F588;
        v22[4] = v11;
        [(WFiTunesSessionManager *)v17 lookupMediaWithBundleIdentifier:v19 countryCode:v21 completion:v22];
      }

      goto LABEL_9;
    default:
      if ((v12 - 1399) < 2)
      {
        goto LABEL_10;
      }

      v13 = @"There was a problem with the app.";
LABEL_8:
      v14 = WFLocalizedString(v13);
      v11[2](v11, v14);
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

- (id)errorThatLaunchesApp:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a3;
    v6 = WFLocalizedString(@"Open %@");
    v7 = [(WFHandleIntentAction *)self appDescriptor];
    v8 = [v7 localizedName];
    v9 = [v4 stringWithFormat:v6, v8];

    v10 = [v5 userInfo];
    v11 = [v10 mutableCopy];

    v12 = [(WFHandleIntentAction *)self executor];
    v13 = [v12 connection];
    [v11 setObject:v13 forKeyedSubscript:@"Connection"];

    [v11 setObject:&unk_1F4A9A180 forKeyedSubscript:*MEMORY[0x1E6997118]];
    v14 = WFLocalizedString(@"Cancel");
    v22[0] = v14;
    v22[1] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A590]];

    [v11 setObject:self forKeyedSubscript:*MEMORY[0x1E696A8A8]];
    v16 = MEMORY[0x1E696ABC0];
    v17 = [v5 domain];
    v18 = [v5 code];

    v19 = [v16 errorWithDomain:v17 code:v18 userInfo:v11];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)errorAttributedToApp:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 userInfo];
    v6 = [v5 mutableCopy];

    v7 = [(WFHandleIntentAction *)self appDescriptor];
    v8 = [v7 localizedName];
    [v6 setObject:v8 forKeyedSubscript:@"ApplicationName"];

    v9 = MEMORY[0x1E696ABC0];
    v10 = [v4 domain];
    v11 = [v4 code];

    v12 = [v9 errorWithDomain:v10 code:v11 userInfo:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)errorFromHandleResponse:(id)a3 intent:(id)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 _isSuccess])
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
    v9 = v6;
    v18 = v9;
    v19 = self;
    [(WFHandleIntentAction *)self accessBundleContentWithBlock:&v14];
    v10 = v22[5];
    v27[0] = @"WFIntentExecutorIntentErrorKey";
    v27[1] = @"WFIntentExecutorIntentResponseErrorKey";
    v28[0] = v7;
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

- (id)errorFromConfirmResponse:(id)a3 intent:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = @"WFIntentExecutorIntentErrorKey";
  v13[1] = @"WFIntentExecutorIntentResponseErrorKey";
  v14[0] = a4;
  v14[1] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(WFHandleIntentAction *)self unknownErrorWithCode:102 localizedDescription:0 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)errorFromResolutionResult:(id)a3 forSlot:(id)a4 onIntent:(id)a5
{
  v45[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFHandleIntentAction *)self parameterForSlot:v9];
  if (v11 && [v8 resolutionResultCode] == 1)
  {
    v12 = [v10 _codableDescription];
    v13 = [v9 wf_slotName];
    v32 = [v12 attributeByName:v13];

    v14 = [v32 unsupportedReasonWithIndex:{objc_msgSend(v8, "unsupportedReason")}];
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
    v35 = v10;
    v36 = self;
    [(WFHandleIntentAction *)self accessBundleContentWithBlock:v33];
    v16 = MEMORY[0x1E696AEC0];
    v17 = WFLocalizedString(@"Invalid %@");
    v18 = [v11 localizedLabel];
    v19 = [v16 localizedStringWithFormat:v17, v18, 0];

    v20 = v39[5];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = WFLocalizedString(@"The value provided for %1$@ in %2$@ was invalid.");
      v25 = [v11 localizedLabel];
      v26 = [(WFAction *)self localizedName];
      v21 = [v23 localizedStringWithFormat:v24, v25, v26, 0];
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

- (void)showConfirmationAndRetryForSlot:(id)a3 item:(id)a4 onIntent:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
  v15 = [v12 _codableDescription];
  v16 = [v10 wf_slotName];
  v17 = [v15 attributeByName:v16];

  v18 = [v17 metadata];
  v19 = [v10 wf_slotName];
  v20 = [(WFAction *)self parameterStateForKey:v19];
  [v18 wf_updateWithParameterState:v20];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__WFHandleIntentAction_showConfirmationAndRetryForSlot_item_onIntent_completionHandler___block_invoke;
  v27[3] = &unk_1E8374498;
  v27[4] = self;
  v28 = v17;
  v29 = v12;
  v30 = v14;
  v32 = v10;
  v33 = v13;
  v31 = v11;
  v21 = v10;
  v22 = v13;
  v23 = v11;
  v24 = v14;
  v25 = v12;
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

- (void)localizedConfirmationPromptForAttribute:(id)a3 intent:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 promptDialogWithType:5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__WFHandleIntentAction_localizedConfirmationPromptForAttribute_intent_completion___block_invoke;
  v14[3] = &unk_1E837F510;
  v15 = v10;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v11 = v8;
  v12 = v10;
  v13 = v9;
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

- (void)showDisambiguationAndRetryForSlot:(id)a3 items:(id)a4 onIntent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:1];
  v12 = [v10 _codableDescription];
  v13 = [v8 wf_slotName];
  v14 = [v12 attributeByName:v13];

  v15 = [v14 metadata];
  v16 = [v8 wf_slotName];
  v17 = [(WFAction *)self parameterStateForKey:v16];
  [v15 wf_updateWithParameterState:v17];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__WFHandleIntentAction_showDisambiguationAndRetryForSlot_items_onIntent___block_invoke;
  v23[3] = &unk_1E8374448;
  v23[4] = self;
  v24 = v14;
  v25 = v10;
  v26 = v11;
  v27 = v9;
  v28 = v8;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v21 = v10;
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

- (void)localizedDisambiguationPromptForAttribute:(id)a3 intent:(id)a4 disambiguationItems:(id)a5 completion:(id)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v13 promptDialogWithType:2];
  v15 = [v13 promptDialogWithType:4];

  v33 = @"count";
  v16 = MEMORY[0x1E696AD98];
  v17 = [v12 count];

  v18 = [v16 numberWithUnsignedInteger:v17];
  v34[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __104__WFHandleIntentAction_localizedDisambiguationPromptForAttribute_intent_disambiguationItems_completion___block_invoke;
  v26[3] = &unk_1E8379788;
  v27 = v14;
  v28 = v10;
  v29 = v19;
  v30 = self;
  v31 = v15;
  v32 = v11;
  v20 = v11;
  v21 = v15;
  v22 = v19;
  v23 = v10;
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

- (void)showAskForValueAndRetryForSlot:(id)a3 onIntent:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(WFHandleIntentAction *)self parameterForSlot:v7];
  v10 = v7;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 codableAttribute];
      v12 = [v11 promptDialogs];
      v4 = [v12 count];

      v13 = v10;
      if (!v4)
      {
        goto LABEL_10;
      }

      v14 = [v10 codableAttribute];
      v15 = [v14 promptDialogWithType:0];

      v16 = [v15 localizedDialogWithIntent:v8 tokens:0];
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
  v17 = [(WFAction *)self runningDelegate];
  v18 = [v17 action:self canProvideInputForParameter:v9];

  if (v18)
  {
    if (v9)
    {
      v32 = v8;
      v19 = [(WFAction *)self processedParameters];
      v20 = [v19 mutableCopy];

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

      v29 = [(WFAction *)self input];
      v30 = dispatch_get_global_queue(0, 0);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __64__WFHandleIntentAction_showAskForValueAndRetryForSlot_onIntent___block_invoke;
      v33[3] = &unk_1E83743F8;
      v33[4] = self;
      v34 = v32;
      v35 = v10;
      v36 = v9;
      [(WFAction *)self askForValuesOfParameters:v24 withDefaultStates:v25 prompts:MEMORY[0x1E695E0F8] input:v29 workQueue:v30 completionHandler:v33];

      if (v23)
      {
      }

      v8 = v32;
    }

    else
    {
      v27 = getWFIntentExecutionLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v28 = [v10 wf_slotName];
        *buf = 136315650;
        v40 = "[WFHandleIntentAction showAskForValueAndRetryForSlot:onIntent:]";
        v41 = 2114;
        v42 = v28;
        v43 = 2114;
        v44 = v10;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s No parameter found for slot description (slotName: %{public}@): %{public}@. Opening in app to continue.", buf, 0x20u);
      }

      [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    [(WFHandleIntentAction *)self finishRunningWithError:v26];
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

- (void)handleResolutionResult:(id)a3 forSlot:(id)a4 onIntent:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFHandleIntentAction *)self allowsInteractiveSlotResolution];
  if (v11 == 2)
  {
    v12 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
    goto LABEL_5;
  }

  if (v11)
  {
    v14 = [v8 resolutionResultCode];
    if (v14 == 4)
    {
      [(WFHandleIntentAction *)self showAskForValueAndRetryForSlot:v9 onIntent:v10];
      goto LABEL_7;
    }

    if (v14 == 2)
    {
      v12 = [v8 disambiguationItems];
      [(WFHandleIntentAction *)self showDisambiguationAndRetryForSlot:v9 items:v12 onIntent:v10];
      goto LABEL_6;
    }

    v12 = [(WFHandleIntentAction *)self errorFromResolutionResult:v8 forSlot:v9 onIntent:v10];
    if (!v12)
    {
      v16 = @"WFIntentExecutorIntentErrorKey";
      v17[0] = v10;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12 = [(WFHandleIntentAction *)self unknownErrorWithCode:101 localizedDescription:0 userInfo:v15];
    }

LABEL_5:
    [(WFHandleIntentAction *)self finishRunningWithError:v12];
LABEL_6:

    goto LABEL_7;
  }

  [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)unknownErrorWithCode:(int64_t)a3 localizedDescription:(id)a4 userInfo:(id)a5
{
  v24[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = WFLocalizedString(@"Could Not Run %@");
  v12 = [(WFAction *)self localizedName];
  v13 = [v10 localizedStringWithFormat:v11, v12, 0];

  if (!v8)
  {
    v8 = WFLocalizedString(@"An unknown error occurred.");
  }

  v14 = [v9 mutableCopy];
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
  v24[1] = v8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v17 addEntriesFromDictionary:v19];

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFIntentExecutorErrorDomain" code:a3 userInfo:v17];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)confirmationAlertForInteraction:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 intent];
  v9 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
  v10 = [v6 intentResponse];

  if (v10)
  {
    v11 = [v6 intentResponse];
    v12 = [(WFHandleIntentAction *)self stringLocalizer];
    v13 = [v11 _renderedResponseWithLocalizer:v12 requiresSiriCompatibility:0];
  }

  else
  {
    v13 = 0;
  }

  if (![v13 length])
  {
    v14 = [v8 _subtitle];

    v13 = v14;
  }

  v15 = [v8 _title];
  [v9 setTitle:v15];

  [v9 setMessage:v13];
  v16 = MEMORY[0x1E6996C78];
  v17 = [v8 _localizedVerb];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74__WFHandleIntentAction_confirmationAlertForInteraction_completionHandler___block_invoke;
  v29[3] = &unk_1E837F4E8;
  v18 = v7;
  v30 = v18;
  v19 = [v16 buttonWithTitle:v17 style:0 handler:v29];
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
    v3 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[WFHandleIntentAction requiresRemoteExecution]";
      v16 = 2114;
      v17 = self;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition requires remote execution, returning YES for requiresRemoteExecution", buf, 0x16u);
    }

    LOBYTE(v4) = 1;
    goto LABEL_15;
  }

  v5 = [(WFAction *)self resourceManager];
  v6 = [v5 resourceObjectsOfClass:objc_opt_class()];
  v3 = [v6 anyObject];

  if (!v3)
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFHandleIntentAction requiresRemoteExecution]";
      v16 = 2114;
      v17 = self;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s App availability resource was not found for action: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (![v3 intentIsEligibleForRemoteExecution])
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = [v3 intentIsLocallyAvailable]^ 1;
LABEL_12:
  v8 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 intentIsEligibleForRemoteExecution];
    v10 = [v3 intentIsLocallyAvailable];
    *buf = 136316418;
    v15 = "[WFHandleIntentAction requiresRemoteExecution]";
    v16 = 2114;
    v17 = self;
    v18 = 1024;
    v19 = v4;
    v20 = 1024;
    v21 = v3 != 0;
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v10;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ requires remote execution: %i (intentAvailableResource exists: %i, intentIsEligibleForRemoteExecution: %i, intentIsLocallyAvailable: %i", buf, 0x2Eu);
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)contentDestinationWithError:(id *)a3
{
  v4 = [(WFHandleIntentAction *)self appDescriptor];

  if (v4 && (-[WFHandleIntentAction appDescriptor](self, "appDescriptor"), v5 = objc_claimAutoreleasedReturnValue(), [v5 bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = VCIsShortcutsAppBundleIdentifier(), v6, v5, (v7 & 1) == 0))
  {
    v9 = MEMORY[0x1E6996C90];
    v10 = [(WFHandleIntentAction *)self appDescriptor];
    v8 = [v9 locationWithAppDescriptor:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)appResource
{
  v3 = [(WFHandleIntentAction *)self intentDescriptor];

  if (v3)
  {
    appResource = self->_appResource;
    if (!appResource)
    {
      v5 = [WFAppInstalledResource alloc];
      v6 = [(WFHandleIntentAction *)self intentDescriptor];
      v7 = [(WFAppInstalledResource *)v5 initWithIntentDescriptor:v6 isSyncedFromOtherDevice:[(WFHandleIntentAction *)self intentDescriptorIsSyncedFromOtherDevices]];
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

- (void)updateAppDescriptorInDatabaseWithSelectedApp:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self workflow];
  v15 = [v5 actions];

  v6 = [v15 indexOfObject:self];
  v7 = [(WFHandleIntentAction *)self intentDescriptor];
  v8 = [v7 descriptorWithAppDescriptor:v4];

  v9 = +[WFDatabaseProxy defaultDatabase];
  v10 = [(WFAction *)self UUID];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v12 = [(WFAction *)self identifier];
  v13 = [(WFAction *)self workflow];
  v14 = [v13 workflowID];
  [v9 updateAppDescriptor:v8 atKey:@"IntentAppDefinition" actionUUID:v10 actionIndex:v11 actionIdentifier:v12 workflowID:v14 error:0];
}

- (void)updateAppDescriptorWithSelectedApp:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleIntentAction *)self intentDescriptor];
  v6 = [v5 descriptorWithAppDescriptor:v4];
  [(WFHandleIntentAction *)self setIntentDescriptor:v6];

  v7.receiver = self;
  v7.super_class = WFHandleIntentAction;
  [(WFAction *)&v7 updateAppDescriptorWithSelectedApp:v4];
}

- (void)setIntentDescriptor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_intentDescriptor, a3);
  v5 = [(WFAction *)self parameterForKey:@"IntentAppDefinition"];
  if (v5)
  {
    v6 = [(WFVariableSubstitutableParameterState *)[WFIntentDescriptorParameterState alloc] initWithValue:v7];
    [(WFAction *)self setParameterState:v6 forKey:@"IntentAppDefinition"];
  }

  else
  {
    v6 = [v7 serializedRepresentation];
    [(WFAction *)self setSupplementalParameterValue:v6 forKey:@"IntentAppDefinition"];
  }
}

- (id)appDescriptor
{
  v2 = [(WFHandleIntentAction *)self intentDescriptor];
  v3 = [v2 appDescriptor];
  v4 = [v3 selfIfNotShortcutsApp];

  return v4;
}

- (id)displayableAppDescriptor
{
  v3 = [(WFAction *)self displayableAppDefinition];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:v3];
  }

  else
  {
    v5 = [(WFHandleIntentAction *)self intentDescriptor];
    v6 = [v5 _displayableAppDescriptor];
    v4 = [v6 selfIfNotShortcutsApp];
  }

  return v4;
}

- (void)getOutputFromIntentResponse:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFHandleIntentAction.m" lineNumber:660 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__WFHandleIntentAction_getOutputFromIntentResponse_completionHandler___block_invoke;
  v11[3] = &unk_1E8374358;
  v11[4] = self;
  v12 = v8;
  v9 = v8;
  [v7 wf_getOutputValueWithCompletionHandler:v11];
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

- (void)launchAppInBackground:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__WFHandleIntentAction_launchAppInBackground___block_invoke;
  v3[3] = &unk_1E837DEA0;
  v3[4] = self;
  v4 = a3;
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
  v4 = [(WFHandleIntentAction *)self executor];
  v5 = [v4 connection];
  v6 = [v5 intent];

  v7 = [(WFHandleIntentAction *)self executor];
  v8 = [v7 connection];
  v9 = [v8 _transaction];
  v10 = [v9 state];
  v11 = [v10 intentResponse];

  v12 = [(WFAction *)self userInterface];
  if ([v12 isRunningWithSiriUI])
  {
    v13 = [(WFHandleIntentAction *)self executor];

    if (!v13)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"WFHandleIntentAction.m" lineNumber:590 description:@"executor should not be nil"];
    }

    if ([(WFHandleIntentAction *)self shouldOpenAppThroughSiriForIntent:v6 intentResponse:v11])
    {
      v14 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v6 response:v11];
      v15 = [objc_alloc(MEMORY[0x1E69E0CF0]) initWithInteraction:v14];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__WFHandleIntentAction_finishRunningByContinuingInApp__block_invoke;
      v30[3] = &unk_1E8377278;
      v30[4] = self;
      if (([v12 performSiriRequest:v15 completionHandler:v30] & 1) == 0)
      {
        v16 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
        [(WFHandleIntentAction *)self finishRunningWithError:v16];
      }

      goto LABEL_17;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 requestedFromAnotherDevice] && !-[WFHandleIntentAction allowsContinueInAppWhenRunningRemotely](self, "allowsContinueInAppWhenRunningRemotely"))
  {
    v14 = WFLocalizedString(@"Sorry, you can’t do that here. Try it on your iPhone instead.");
    v20 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A588];
    v21 = MEMORY[0x1E696AEC0];
    v22 = WFLocalizedString(@"Could Not Run “%@”");
    v23 = [(WFAction *)self localizedName];
    v24 = [v21 localizedStringWithFormat:v22, v23];
    v31[1] = *MEMORY[0x1E696A578];
    v32[0] = v24;
    v32[1] = v14;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v26 = [v20 errorWithDomain:@"WFHandleIntentActionErrorDomain" code:0 userInfo:v25];

    [(WFHandleIntentAction *)self finishRunningWithError:v26];
LABEL_17:

    goto LABEL_18;
  }

  if (![MEMORY[0x1E69AA868] shouldLaunchAppInBackgroundWithIntent:v6 intentResponse:v11])
  {
    v17 = [MEMORY[0x1E696E728] appInfoWithIntent:v6];
    v14 = [v17 actionsRestrictedWhileLocked];

    v18 = [v6 _className];
    v19 = [v14 containsObject:v18];

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

- (void)populateIntent:(id)a3 withInput:(id)a4 processedParameters:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 copy];
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v14 = [(WFHandleIntentAction *)self slots];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke;
  v22[3] = &unk_1E8374330;
  v22[4] = self;
  v23 = v11;
  v24 = v13;
  v25 = v10;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__WFHandleIntentAction_populateIntent_withInput_processedParameters_completionHandler___block_invoke_3;
  v19[3] = &unk_1E837EE60;
  v20 = v24;
  v21 = v12;
  v15 = v24;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  [v14 if_enumerateAsynchronouslyInSequence:v22 completionHandler:v19];
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

- (id)executorWithIntent:(id)a3 groupIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[WFIntentExecutor alloc] initWithIntent:v7 donateInteraction:[(WFHandleIntentAction *)self shouldDonateIntent:v7] groupIdentifier:v6];

  [(WFIntentExecutor *)v8 setDelegate:self];

  return v8;
}

- (BOOL)shouldForceHandleInSiri:(id)a3
{
  v3 = a3;
  if ([v3 _idiom] == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    v6 = [v5 arrayForKey:@"IntentsHandledBySiriOverride"];
    v7 = [v3 _className];
    v4 = [v6 containsObject:v7];
  }

  return v4;
}

- (BOOL)intentIsHandledBySiri:(id)a3
{
  v8 = a3;
  v4 = [(WFHandleIntentAction *)self skipSiriExecution];
  v5 = [(WFHandleIntentAction *)self runInProcess];
  v6 = [v8 _type] == 2;
  v7 = [(WFHandleIntentAction *)self shouldForceHandleInSiri:v8];

  LOBYTE(v8) = 0;
  if ((v6 || v7) && !v5)
  {
    v9 = [(WFAction *)self userInterface];
    LODWORD(v8) = [v9 isRunningWithSiriUI] & !v4;
  }

  return v8;
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
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"SkipSiriExecution"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)runInProcess
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"InProcess"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)parameterCombinationForIntentSupportsBackgroundExecution:(id)a3
{
  v3 = [a3 _currentParameterCombination];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportsBackgroundExecution];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)handleExecutionCompletionWithInteraction:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 intentResponse];
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
    [(WFHandleIntentAction *)self handleExecutorError:a4];
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

- (void)actuallyStartExecutingIntent:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(WFHandleIntentAction *)self parameterCombinationForIntentSupportsBackgroundExecution:v4]&& ![(WFHandleIntentAction *)self opensInApp])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__WFHandleIntentAction_actuallyStartExecutingIntent___block_invoke;
    aBlock[3] = &unk_1E8379390;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = [(WFHandleIntentAction *)self runInProcess];
    v10 = [v4 _executionContext];
    v12 = v10 != 9 && (v10 - 3) < 0xFFFFFFFFFFFFFFFELL;
    v13 = [v4 extensionBundleId];
    if (v13)
    {
      v14 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
      v15 = [v14 bundleIdentifier];
      v16 = [v4 extensionBundleId];
      v17 = [v15 isEqualToString:v16];
    }

    else
    {
      v17 = 0;
    }

    if ((v9 | v12 & v17))
    {
      v18 = +[WFBundledIntentHandlerProvider localIntentHandlerLaunchID];
      [v4 _setExtensionBundleId:v18];
    }

    if ([(WFHandleIntentAction *)self intentIsHandledBySiri:v4])
    {
      if (([v4 _hasMatchingIntentHandlerIncludingRemoteExecution:1] & 1) == 0)
      {
        v31 = [(WFHandleIntentAction *)self executorWithIntent:v4 groupIdentifier:0];
        [(WFHandleIntentAction *)self setExecutor:v31];

        [(WFHandleIntentAction *)self finishRunningByContinuingInApp];
        goto LABEL_23;
      }

      v19 = [(WFAction *)self userInterface];
      v20 = [v19 isRunningWithSiriUI];

      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x1E69E0CC0]) initWithIntent:v4];
        v22 = [(WFAction *)self userInterface];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __53__WFHandleIntentAction_actuallyStartExecutingIntent___block_invoke_2;
        v33[3] = &unk_1E8374A98;
        v33[4] = self;
        v34 = v8;
        v23 = [v22 performSiriRequest:v21 completionHandler:v33];

        if (v23)
        {
          goto LABEL_23;
        }
      }
    }

    v24 = [(WFHandleIntentAction *)self executor];
    v25 = [v24 connection];
    v26 = [v25 appProtectionPolicy];

    v27 = [(WFHandleIntentAction *)self executorWithIntent:v4 groupIdentifier:0];
    [(WFHandleIntentAction *)self setExecutor:v27];

    v28 = [(WFHandleIntentAction *)self executor];
    v29 = [v28 connection];
    [v29 setAppProtectionPolicy:v26];

    v30 = [(WFHandleIntentAction *)self executor];
    [v30 startWithCompletionHandler:v8];

LABEL_23:
    goto LABEL_24;
  }

  v5 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WFAction *)self localizedName];
    *buf = 136315906;
    v37 = "[WFHandleIntentAction actuallyStartExecutingIntent:]";
    v38 = 2112;
    v39 = v6;
    v40 = 1024;
    v41 = [(WFHandleIntentAction *)self parameterCombinationForIntentSupportsBackgroundExecution:v4];
    v42 = 1024;
    v43 = [(WFHandleIntentAction *)self opensInApp];
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ will finish by continuing in app (parameter combination supports background execution: %i, opensInApp: %i", buf, 0x22u);
  }

  v7 = [(WFHandleIntentAction *)self executorWithIntent:v4 groupIdentifier:0];
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

- (void)startExecutingIntent:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "[WFHandleIntentAction startExecutingIntent:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s WFHandleIntentAction startExecutingIntent", buf, 0xCu);
  }

  [v4 _setExecutionContext:7];
  v6 = [(WFHandleIntentAction *)self showsWhenRunIfApplicable];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
    v9 = [v4 _metadata];
    [v9 setShowsWhenRun:v8];
  }

  v10 = [v4 copy];
  runningIntent = self->_runningIntent;
  self->_runningIntent = v10;

  v12 = [(WFAction *)self userInterface];
  if (![v12 isRunningWithSiriUI])
  {
    goto LABEL_8;
  }

  v13 = [(WFAction *)self userInterface];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v12 = [(WFAction *)self userInterface];
    [v12 configureIntent:v4];
LABEL_8:
  }

  v15 = [[WFActionWillRunIntentTestingEvent alloc] initWithAction:self intent:v4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__WFHandleIntentAction_startExecutingIntent___block_invoke;
  v18[3] = &unk_1E837C698;
  v18[4] = self;
  v19 = v4;
  v16 = v4;
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

- (void)setExecutor:(id)a3
{
  v5 = a3;
  executor = self->_executor;
  if (executor != v5)
  {
    v13 = v5;
    if (!executor)
    {
      goto LABEL_6;
    }

    v7 = [(WFIntentExecutor *)executor progress];
    v8 = [v7 totalUnitCount];
    v9 = [(WFIntentExecutor *)self->_executor progress];
    [v9 setCompletedUnitCount:v8];

    if (!v13)
    {
      goto LABEL_6;
    }

    if (self->_executor)
    {
      v10 = [(WFAction *)self progress];
      [v10 setTotalUnitCount:{objc_msgSend(v10, "totalUnitCount") + 1}];

      objc_storeStrong(&self->_executor, a3);
    }

    else
    {
LABEL_6:
      objc_storeStrong(&self->_executor, a3);
      v5 = v13;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v11 = [(WFAction *)self progress];
    v12 = [(WFIntentExecutor *)v13 progress];
    [v11 addChild:v12 withPendingUnitCount:1];

    v5 = v13;
  }

LABEL_8:
}

- (BOOL)shouldDonateIntent:(id)a3
{
  v4 = a3;
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
  v2 = [(WFAction *)self workflow];
  v3 = [v2 reference];
  v4 = [v3 identifier];
  v5 = v4 != 0;

  return v5;
}

- (void)accessBundleContentWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleIntentAction *)self appDescriptor];
  v8 = [v5 bundleIdentifier];

  v6 = [MEMORY[0x1E696E878] sharedConnection];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{v8, 0}];
  [v6 wf_accessBundleContentForBundleIdentifiers:v7 withBlock:v4];
}

- (id)parameterForSlot:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parameters];
  v6 = [v4 wf_slotName];

  v7 = [v5 objectMatchingKey:@"intentSlotName" value:v6];

  return v7;
}

- (void)generateStandaloneShortcutRepresentation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__WFHandleIntentAction_generateStandaloneShortcutRepresentation___block_invoke;
  v6[3] = &unk_1E83742D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)generateShortcutRepresentation:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__WFHandleIntentAction_generateShortcutRepresentation___block_invoke;
  v7[3] = &unk_1E8378300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v3 = [(WFAction *)&v5 createResourceManager];
  WFConfigureIntentBasedParameterResources(v3, self);

  return v3;
}

- (void)generatePopulatedIntentWithIdentifier:(id)a3 fromInput:(id)a4 processedParameters:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v15 = 0;
  v12 = a6;
  v13 = [(WFHandleIntentAction *)self generatedIntentWithIdentifier:a3 input:v10 processedParameters:v11 error:&v15];
  v14 = v15;
  if (v13)
  {
    [(WFHandleIntentAction *)self populateIntent:v13 withInput:v10 processedParameters:v11 completionHandler:v12];
  }

  else
  {
    v12[2](v12, 0, v14);
  }
}

- (void)generatePopulatedIntentFromInput:(id)a3 processedParameters:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = [v8 UUID];
  v12 = [v13 UUIDString];
  [(WFHandleIntentAction *)self generatePopulatedIntentWithIdentifier:v12 fromInput:v11 processedParameters:v10 completion:v9];
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = [(WFHandleIntentAction *)self generatedIntentWithInput:0 processedParameters:0 error:0];
  v3 = [v2 _intents_bundleIdForDisplay];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 _intents_launchIdForCurrentPlatform];
  }

  v6 = v5;

  return v6;
}

- (id)generatedIntentWithInput:(id)a3 processedParameters:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [v11 UUIDString];
  v13 = [(WFHandleIntentAction *)self generatedIntentWithIdentifier:v12 input:v10 processedParameters:v9 error:a5];

  return v13;
}

- (void)resolveSlot:(id)a3 withProcessedValue:(id)a4 parameter:(id)a5 input:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v12)
  {
    v15 = [v13 key];
    v16 = [(WFAction *)self parameterStateForKey:v15];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v12;
      v18 = [(WFAction *)self contentPermissionRequestor];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __82__WFHandleIntentAction_resolveSlot_withProcessedValue_parameter_input_completion___block_invoke;
      v20[3] = &unk_1E8374288;
      v22 = v14;
      v21 = v11;
      [v17 getRecipientsWithPermissionRequestor:v18 completionHandler:v20];
    }

    else
    {
      [v11 wf_getProcessedIntentValueForParameterValue:v12 parameter:v13 parameterState:v16 completionHandler:v14];
    }
  }

  else
  {
    if ([v11 wf_multipleValues])
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v19 = 0;
    }

    (*(v14 + 2))(v14, v19, 0);
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
  v3 = [(WFAction *)self userInterface];
  if (([v3 isRunningWithSiriUI] & 1) == 0)
  {

    return 1;
  }

  v4 = [(WFAction *)self userInterface];
  v5 = [v4 executionContext];

  if (v5 <= 9 && ((1 << v5) & 0x206) != 0)
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)showsWhenRun
{
  v2 = [(WFHandleIntentAction *)self showsWhenRunIfApplicable];
  v3 = [v2 BOOLValue];

  return v3;
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

- (void)wasAddedToWorkflowByUser:(id)a3
{
  v9.receiver = self;
  v9.super_class = WFHandleIntentAction;
  v4 = a3;
  [(WFAction *)&v9 wasAddedToWorkflowByUser:v4];
  v5 = [v4 hiddenFromLibraryAndSync];

  if (v5)
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
  v2 = [(WFHandleIntentAction *)self intentDescriptor];
  v3 = [v2 intentClassName];

  return v3;
}

- (id)appBundleIdentifier
{
  v3 = [(WFHandleIntentAction *)self intentDescriptor];
  v4 = [v3 displayableBundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(WFHandleIntentAction *)self intentDescriptor];
    v6 = [v7 bundleIdentifier];
  }

  return v6;
}

- (BOOL)prefersActionAttribution
{
  v6.receiver = self;
  v6.super_class = WFHandleIntentAction;
  if ([(WFAction *)&v6 prefersActionAttribution])
  {
    v3 = [(WFAction *)self identifier];
    v4 = [v3 hasPrefix:@"is.workflow.actions"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (INCExtensionConnection)connection
{
  v2 = [(WFHandleIntentAction *)self executor];
  v3 = [v2 connection];

  return v3;
}

- (void)cancel
{
  v3 = [(WFHandleIntentAction *)self executor];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = WFHandleIntentAction;
  [(WFAction *)&v4 cancel];
}

- (void)finishRunningWithError:(id)a3
{
  v4 = a3;
  [(WFHandleIntentAction *)self setExecutor:0];
  v5.receiver = self;
  v5.super_class = WFHandleIntentAction;
  [(WFAction *)&v5 finishRunningWithError:v4];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self processedParameters];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__WFHandleIntentAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_1E8374260;
  v6[4] = self;
  [(WFHandleIntentAction *)self generatePopulatedIntentFromInput:v4 processedParameters:v5 completion:v6];
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
  v3 = [(WFAction *)self parameters];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) resourceManager];
        WFConfigureIntentBasedParameterResources(v8, self);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFHandleIntentAction *)self overrideLocalizedName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHandleIntentAction;
    v7 = [(WFAction *)&v10 localizedNameWithContext:v4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)inputPassthrough
{
  v2 = [(WFAction *)self outputDictionary];
  v3 = [v2 objectForKeyedSubscript:@"Types"];
  v4 = v3 == 0;

  return v4;
}

- (id)disabledOnPlatforms
{
  v4.receiver = self;
  v4.super_class = WFHandleIntentAction;
  v2 = [(WFAction *)&v4 disabledOnPlatforms];

  return v2;
}

- (id)defaultLocalizationContext
{
  v3 = objc_alloc(MEMORY[0x1E69E0BE0]);
  v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v5 = [(WFHandleIntentAction *)self stringLocalizer];
  v6 = [v3 initWithLocale:v4 stringLocalizer:v5];

  return v6;
}

- (WFHandleIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5 stringLocalizer:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = WFHandleIntentAction;
  v11 = [(WFAction *)&v15 initWithIdentifier:a3 definition:a4 serializedParameters:a5];
  if (v11)
  {
    v12 = v10;
    if (!v10)
    {
      v12 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    }

    objc_storeStrong(&v11->_stringLocalizer, v12);
    if (!v10)
    {
    }

    v13 = v11;
  }

  return v11;
}

- (WFHandleIntentAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v8 = MEMORY[0x1E696EA80];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 localizerForLanguage:0];
  v13 = [(WFHandleIntentAction *)self initWithIdentifier:v11 definition:v10 serializedParameters:v9 stringLocalizer:v12];

  return v13;
}

@end