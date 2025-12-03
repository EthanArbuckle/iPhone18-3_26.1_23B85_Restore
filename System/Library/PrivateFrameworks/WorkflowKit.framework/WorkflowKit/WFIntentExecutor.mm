@interface WFIntentExecutor
- (BOOL)continueInApp;
- (WFIntentExecutorDelegate)delegate;
- (id)errorFromConfirmResponse:(id)response intent:(id)intent;
- (id)errorFromExtensionError:(id)error;
- (id)errorFromHandleResponse:(id)response intent:(id)intent;
- (id)errorFromResolutionResult:(id)result forSlot:(id)slot onIntent:(id)intent;
- (id)extensionInputItemsWithIntent:(id)intent;
- (void)autoreleaseSelf;
- (void)configureConnection;
- (void)confirmIntent:(id)intent withExtensionProxy:(id)proxy;
- (void)failWithError:(id)error;
- (void)finish;
- (void)finishWithInteraction:(id)interaction error:(id)error;
- (void)getDefaultValueForParameterNamed:(id)named completionHandler:(id)handler;
- (void)getDynamicOptionsForParameterNamed:(id)named searchTerm:(id)term completionHandler:(id)handler;
- (void)handleIntent:(id)intent withExtensionProxy:(id)proxy;
- (void)handleIntent:(id)intent withExtensionProxy:(id)proxy completionHandler:(id)handler;
- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items;
- (void)resolveIntent:(id)intent withExtensionProxy:(id)proxy;
- (void)resolveIntentResolutionResults:(id)results slotDescription:(id)description intent:(id)intent completion:(id)completion;
- (void)resumeConnectionWithCompletionHandler:(id)handler;
- (void)startConnectionForParameterName:(id)name completionHandler:(id)handler;
- (void)startConnectionForParameterName:(id)name searchTerm:(id)term completionHandler:(id)handler;
- (void)startConnectionWithCompletionHandler:(id)handler;
- (void)startReceivingRideStatusUpdates;
- (void)startWithCompletionHandler:(id)handler;
- (void)stopReceivingRideStatusUpdates;
- (void)updateIntentWithItemToConfirm:(id)confirm forSlot:(id)slot onIntent:(id)intent;
@end

@implementation WFIntentExecutor

- (WFIntentExecutorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)autoreleaseSelf
{
  p_strongSelf = &self->_strongSelf;
  strongSelf = self->_strongSelf;
  v4 = strongSelf;
  objc_storeStrong(p_strongSelf, strongSelf);
  v5 = *p_strongSelf;
  *p_strongSelf = 0;
}

- (BOOL)continueInApp
{
  delegate = [(WFIntentExecutor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFIntentExecutor *)self delegate];
    [delegate2 intentExecutorRequestsContinueInApp:self];
  }

  return v4 & 1;
}

- (void)finish
{
  connection = [(WFIntentExecutor *)self connection];
  [connection reset];

  [(WFIntentExecutor *)self autoreleaseSelf];
}

- (void)failWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[WFIntentExecutor failWithError:]";
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Executing intent failed with error %@", &v7, 0x16u);
  }

  [(WFIntentExecutor *)self finishWithInteraction:0 error:errorCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)finishWithInteraction:(id)interaction error:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, interaction, error);
    v6 = self->_completionHandler;
    self->_completionHandler = 0;
  }

  [(WFIntentExecutor *)self finish:interaction];
}

- (id)errorFromResolutionResult:(id)result forSlot:(id)slot onIntent:(id)intent
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"WFIntentExecutorSlotResolutionResultErrorKey";
  v15[1] = @"WFIntentExecutorSlotDescriptionErrorKey";
  v16[0] = result;
  v16[1] = slot;
  v15[2] = @"WFIntentExecutorIntentErrorKey";
  v16[2] = intent;
  v7 = MEMORY[0x1E695DF20];
  intentCopy = intent;
  slotCopy = slot;
  resultCopy = result;
  v11 = [v7 dictionaryWithObjects:v16 forKeys:v15 count:3];
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFIntentExecutorErrorDomain" code:101 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)errorFromHandleResponse:(id)response intent:(id)intent
{
  v15[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  intentCopy = intent;
  _intentResponseCode = [responseCopy _intentResponseCode];
  if (_intentResponseCode > 4 || ((1 << _intentResponseCode) & 0x1A) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v14[0] = @"WFIntentExecutorIntentErrorKey";
    v14[1] = @"WFIntentExecutorIntentResponseErrorKey";
    v15[0] = intentCopy;
    v15[1] = responseCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v9 = [v10 errorWithDomain:@"WFIntentExecutorErrorDomain" code:103 userInfo:v11];
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)errorFromConfirmResponse:(id)response intent:(id)intent
{
  v14[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  intentCopy = intent;
  _intentResponseCode = [responseCopy _intentResponseCode];
  if (_intentResponseCode - 1) < 8 && ((0x8Du >> (_intentResponseCode - 1)) & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v13[0] = @"WFIntentExecutorIntentErrorKey";
    v13[1] = @"WFIntentExecutorIntentResponseErrorKey";
    v14[0] = intentCopy;
    v14[1] = responseCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v8 = [v11 errorWithDomain:@"WFIntentExecutorErrorDomain" code:102 userInfo:v12];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)errorFromExtensionError:(id)error
{
  errorCopy = error;
  v5 = objc_opt_new();
  intent = [(WFIntentExecutor *)self intent];
  [v5 setObject:intent forKey:@"WFIntentExecutorIntentErrorKey"];

  if (errorCopy)
  {
    [v5 setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFIntentExecutorErrorDomain" code:100 userInfo:v5];

  return v7;
}

- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items
{
  updateCopy = update;
  itemsCopy = items;
  if (updateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = updateCopy;
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

  v8 = v7;
  delegate = [(WFIntentExecutor *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(WFIntentExecutor *)self delegate];
    [delegate2 intentExecutor:self receivingRideStatusDidReceiveUpdate:v8];
  }
}

- (void)stopReceivingRideStatusUpdates
{
  intent = [(WFIntentExecutor *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    getRideStatusUpdatingExtensionProxy = [(WFIntentExecutor *)self getRideStatusUpdatingExtensionProxy];
    [getRideStatusUpdatingExtensionProxy stopSendingUpdates];

    [(WFIntentExecutor *)self setGetRideStatusUpdatingExtensionProxy:0];

    [(WFIntentExecutor *)self finish];
  }
}

- (void)startReceivingRideStatusUpdates
{
  intent = [(WFIntentExecutor *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    getRideStatusUpdatingExtensionProxy = [(WFIntentExecutor *)self getRideStatusUpdatingExtensionProxy];

    if (!getRideStatusUpdatingExtensionProxy)
    {
      connection = [(WFIntentExecutor *)self connection];
      _transaction = [connection _transaction];
      [_transaction setShouldResetRequestAfterHandle:0];

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__WFIntentExecutor_startReceivingRideStatusUpdates__block_invoke;
      v7[3] = &unk_1E83790A0;
      v7[4] = self;
      [(WFIntentExecutor *)self startConnectionWithCompletionHandler:v7];
    }
  }

  else
  {
  }
}

void __51__WFIntentExecutor_startReceivingRideStatusUpdates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) setGetRideStatusUpdatingExtensionProxy:v5];
    v8 = *(a1 + 32);
    v9 = [v8 intent];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__WFIntentExecutor_startReceivingRideStatusUpdates__block_invoke_2;
    v13[3] = &unk_1E83793E0;
    v13[4] = *(a1 + 32);
    v14 = v5;
    [v8 handleIntent:v9 withExtensionProxy:v14 completionHandler:v13];
  }

  else if (v6)
  {
    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      [v12 intentExecutor:*(a1 + 32) receivingRideStatusDidReceiveError:v7];
    }
  }
}

void __51__WFIntentExecutor_startReceivingRideStatusUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    v6 = [v15 intentResponse];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
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

    v11 = v7;

    [*(a1 + 40) startSendingUpdatesToObserver:*(a1 + 32)];
    v12 = [*(a1 + 32) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [*(a1 + 32) delegate];
      [v14 intentExecutor:*(a1 + 32) receivingRideStatusDidReceiveUpdate:v11];
    }
  }

  else
  {
    if (v5)
    {
      v8 = [*(a1 + 32) delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [*(a1 + 32) delegate];
        [v10 intentExecutor:*(a1 + 32) receivingRideStatusDidReceiveError:v5];
      }
    }

    [*(a1 + 32) setGetRideStatusUpdatingExtensionProxy:*(a1 + 40)];
    [*(a1 + 32) finish];
  }
}

- (void)updateIntentWithItemToConfirm:(id)confirm forSlot:(id)slot onIntent:(id)intent
{
  v16[1] = *MEMORY[0x1E69E9840];
  confirmCopy = confirm;
  slotCopy = slot;
  intentCopy = intent;
  if (![slotCopy isEnum])
  {
    if ([slotCopy valueStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (!confirmCopy)
      {
        facadePropertyName = 0;
        goto LABEL_14;
      }

      v16[0] = confirmCopy;
      firstObject = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      if ([slotCopy valueStyle] == 3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        facadePropertyName = [slotCopy facadePropertyName];
        v12 = intentCopy;
        v11 = confirmCopy;
        goto LABEL_9;
      }

      firstObject = [confirmCopy firstObject];
    }

    facadePropertyName = firstObject;
LABEL_14:
    facadePropertyName2 = [slotCopy facadePropertyName];
    [intentCopy setValue:facadePropertyName forKey:facadePropertyName2];

    goto LABEL_15;
  }

  facadePropertyName = [slotCopy facadePropertyName];
  v11 = &unk_1F4A9A5B8;
  v12 = intentCopy;
LABEL_9:
  [v12 setValue:v11 forKey:facadePropertyName];
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleIntent:(id)intent withExtensionProxy:(id)proxy completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  proxyCopy = proxy;
  handlerCopy = handler;
  v11 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[WFIntentExecutor handleIntent:withExtensionProxy:completionHandler:]";
    v25 = 2112;
    v26 = intentCopy;
    v27 = 2112;
    v28 = proxyCopy;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling %@ with extension proxy %@", buf, 0x20u);
  }

  v12 = [WFAutoIncrementingProgress alloc];
  progress = [(WFIntentExecutor *)self progress];
  v14 = [(WFAutoIncrementingProgress *)v12 initWithParent:progress pendingUnitCount:1 duration:5.0];

  [(WFAutoIncrementingProgress *)v14 start];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__WFIntentExecutor_handleIntent_withExtensionProxy_completionHandler___block_invoke;
  v19[3] = &unk_1E83793B8;
  v19[4] = self;
  v20 = intentCopy;
  v21 = v14;
  v22 = handlerCopy;
  v15 = v14;
  v16 = handlerCopy;
  v17 = intentCopy;
  [proxyCopy handleIntentWithCompletionHandler:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __70__WFIntentExecutor_handleIntent_withExtensionProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (v18)
  {
    v6 = [v18 _intentResponseCode];
    if (v6 != 7)
    {
      if (v6 == 4)
      {
        if (![*(a1 + 40) _shouldForwardToAppOnSucccess])
        {
LABEL_9:
          v10 = *(a1 + 32);
          v11 = [v10 connection];
          v12 = [v11 intent];
          v8 = [v10 errorFromHandleResponse:v18 intent:v12];

          if (v8)
          {
            v9 = 0;
          }

          else
          {
            v13 = objc_alloc(MEMORY[0x1E696E8B8]);
            v14 = objc_opt_respondsToSelector();
            v15 = *(a1 + 40);
            if (v14)
            {
              v16 = [v13 _initWithIntent:v15 response:v18];
            }

            else
            {
              v16 = [v13 initWithIntent:v15 response:v18];
            }

            v9 = v16;
          }

          v17 = *(a1 + 56);
          if (v17)
          {
            (*(v17 + 16))(v17, v9, v8);
          }

          [*(a1 + 48) finish];
          goto LABEL_18;
        }
      }

      else if (v6 != 2)
      {
        goto LABEL_9;
      }
    }

    if ([*(a1 + 32) continueInApp])
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v8 = [v5 underlyingError];
  v9 = [v7 errorFromExtensionError:v8];
  [v7 failWithError:v9];
LABEL_18:

LABEL_19:
}

- (void)handleIntent:(id)intent withExtensionProxy:(id)proxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__WFIntentExecutor_handleIntent_withExtensionProxy___block_invoke;
  v4[3] = &unk_1E8379390;
  v4[4] = self;
  [(WFIntentExecutor *)self handleIntent:intent withExtensionProxy:proxy completionHandler:v4];
}

uint64_t __52__WFIntentExecutor_handleIntent_withExtensionProxy___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 failWithError:?];
  }

  else
  {
    return [v3 finishWithInteraction:a2];
  }
}

- (void)confirmIntent:(id)intent withExtensionProxy:(id)proxy
{
  v26 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  proxyCopy = proxy;
  v8 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[WFIntentExecutor confirmIntent:withExtensionProxy:]";
    v22 = 2112;
    v23 = intentCopy;
    v24 = 2112;
    v25 = proxyCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Confirming %@ with extension proxy %@", buf, 0x20u);
  }

  v9 = [WFAutoIncrementingProgress alloc];
  progress = [(WFIntentExecutor *)self progress];
  v11 = [(WFAutoIncrementingProgress *)v9 initWithParent:progress pendingUnitCount:1 duration:1.0];

  [(WFAutoIncrementingProgress *)v11 start];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__WFIntentExecutor_confirmIntent_withExtensionProxy___block_invoke;
  v16[3] = &unk_1E8379368;
  v16[4] = self;
  v17 = intentCopy;
  v18 = v11;
  v19 = proxyCopy;
  v12 = proxyCopy;
  v13 = v11;
  v14 = intentCopy;
  [v12 confirmIntentWithCompletionHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __53__WFIntentExecutor_confirmIntent_withExtensionProxy___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v12 = a1[4];
    v11 = [v6 underlyingError];
    v13 = [v12 errorFromExtensionError:v11];
    [v12 failWithError:v13];

LABEL_18:
    goto LABEL_19;
  }

  if ([v5 _intentResponseCode] != 2 || (objc_msgSend(a1[4], "continueInApp") & 1) == 0)
  {
    v8 = a1[4];
    v9 = [v8 connection];
    v10 = [v9 intent];
    v11 = [v8 errorFromConfirmResponse:v5 intent:v10];

    if (v11)
    {
      [a1[4] failWithError:v11];
    }

    else
    {
      v14 = ([a1[5] _isUserConfirmationRequired] & 1) != 0 || (objc_msgSend(v5, "_userConfirmationRequired") & 1) != 0 || objc_msgSend(v5, "_intentResponseCode") == 8;
      v15 = [v5 _requiresAuthentication];
      v16 = [a1[5] _intentCategory];
      v17 = 1;
      v18 = v16 == 4;
      if (v16 != 4 && (v15 & 1) == 0)
      {
        v33 = v16 == 4;
        v19 = [a1[5] launchId];
        v38 = 0;
        INExtractAppInfoFromSiriLaunchId();
        v20 = 0;

        v21 = +[WFInterchangeAppRegistry sharedRegistry];
        [v21 appWithBundleIdentifier:v20];
        v22 = v34 = v14;

        v23 = [v22 appInfo];
        v24 = [v23 actionsRestrictedWhileLocked];
        v25 = [a1[5] _className];

        v17 = [v24 containsObject:v25];
        v18 = v33;
        v14 = v34;
      }

      v26 = v18 || v14;
      [a1[6] finish];
      v27 = objc_alloc(MEMORY[0x1E696E8B8]);
      v28 = objc_opt_respondsToSelector();
      v29 = a1[5];
      if (v28)
      {
        v30 = [v27 _initWithIntent:v29 response:v5];
      }

      else
      {
        v30 = [v27 initWithIntent:v29 response:v5];
      }

      v31 = v30;
      v32 = a1[4];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __53__WFIntentExecutor_confirmIntent_withExtensionProxy___block_invoke_2;
      v35[3] = &unk_1E8379340;
      v35[4] = v32;
      v36 = a1[5];
      v37 = a1[7];
      [v32 showConfirmationForInteraction:v31 confirmationRequired:v26 authenticationRequired:v17 completionHandler:v35];
    }

    goto LABEL_18;
  }

LABEL_19:
}

void __53__WFIntentExecutor_confirmIntent_withExtensionProxy___block_invoke_2(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v8 = v5;
  if (a2)
  {
    [v6 handleIntent:a1[5] withExtensionProxy:a1[6]];
  }

  else if (v5)
  {
    [v6 failWithError:v5];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] userCancelledError];
    [v6 failWithError:v7];
  }
}

- (void)resolveIntentResolutionResults:(id)results slotDescription:(id)description intent:(id)intent completion:(id)completion
{
  resultsCopy = results;
  descriptionCopy = description;
  intentCopy = intent;
  completionCopy = completion;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__38109;
  v32[4] = __Block_byref_object_dispose__38110;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__38109;
  v30[4] = __Block_byref_object_dispose__38110;
  v31 = [intentCopy copy];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__WFIntentExecutor_resolveIntentResolutionResults_slotDescription_intent_completion___block_invoke;
  v22[3] = &unk_1E83792F0;
  v22[4] = self;
  v14 = descriptionCopy;
  v23 = v14;
  v15 = intentCopy;
  v24 = v15;
  v25 = v28;
  v26 = v30;
  v27 = v32;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__WFIntentExecutor_resolveIntentResolutionResults_slotDescription_intent_completion___block_invoke_3;
  v17[3] = &unk_1E8379318;
  v16 = completionCopy;
  v18 = v16;
  v19 = v28;
  v20 = v30;
  v21 = v32;
  [resultsCopy if_enumerateAsynchronouslyInSequence:v22 completionHandler:v17];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
}

void __85__WFIntentExecutor_resolveIntentResolutionResults_slotDescription_intent_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = [v9 resolutionResultCode];
  if (v11 == 5)
  {
    goto LABEL_8;
  }

  if (v11 != 3)
  {
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = [*(a1 + 32) delegate];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    *a5 = 1;
LABEL_8:
    v10[2](v10, 0);
    goto LABEL_9;
  }

  v14 = [*(a1 + 32) delegate];
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = [v9 itemToConfirm];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__WFIntentExecutor_resolveIntentResolutionResults_slotDescription_intent_completion___block_invoke_2;
  v23[3] = &unk_1E83792C8;
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v26 = *(a1 + 56);
  v23[4] = v19;
  v21 = v20;
  v22 = *(a1 + 64);
  v24 = v21;
  v27 = v22;
  v25 = v10;
  [v14 intentExecutor:v15 showConfirmationForSlot:v16 item:v17 intent:v18 completion:v23];

LABEL_9:
}

void __85__WFIntentExecutor_resolveIntentResolutionResults_slotDescription_intent_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  [*(a1 + 32) updateIntentWithItemToConfirm:a2 forSlot:*(a1 + 40) onIntent:*(*(*(a1 + 64) + 8) + 40)];
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v9 = @"WFIntentExecutorIntentErrorKey";
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v4 errorWithDomain:@"WFIntentExecutorErrorDomain" code:104 userInfo:v6];

    [*(a1 + 32) failWithError:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolveIntent:(id)intent withExtensionProxy:(id)proxy
{
  v28 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  proxyCopy = proxy;
  v8 = getWFIntentExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "[WFIntentExecutor resolveIntent:withExtensionProxy:]";
    v24 = 2112;
    v25 = intentCopy;
    v26 = 2112;
    v27 = proxyCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Resolving %@ with extension proxy %@", buf, 0x20u);
  }

  _intentInstanceDescription = [intentCopy _intentInstanceDescription];
  slotDescriptions = [_intentInstanceDescription slotDescriptions];
  v11 = [slotDescriptions if_compactMap:&__block_literal_global_38116];

  if ([v11 count])
  {
    v12 = [WFAutoIncrementingProgress alloc];
    progress = [(WFIntentExecutor *)self progress];
    v14 = [(WFAutoIncrementingProgress *)v12 initWithParent:progress pendingUnitCount:1 duration:0.5];

    [(WFAutoIncrementingProgress *)v14 start];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_2;
    v18[3] = &unk_1E83792A0;
    v18[4] = self;
    v19 = intentCopy;
    v20 = proxyCopy;
    v21 = v14;
    v15 = v14;
    [v20 resolveIntentSlotKeyPaths:v11 completionHandler:v18];
  }

  else
  {
    progress2 = [(WFIntentExecutor *)self progress];
    [progress2 setCompletedUnitCount:{objc_msgSend(progress2, "completedUnitCount") + 1}];

    [(WFIntentExecutor *)self confirmIntent:intentCopy withExtensionProxy:proxyCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__38109;
  v47 = __Block_byref_object_dispose__38110;
  v9 = v7;
  v48 = v9;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__38109;
  v41 = __Block_byref_object_dispose__38110;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__38109;
  v35 = __Block_byref_object_dispose__38110;
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_196;
  aBlock[3] = &unk_1E8379200;
  aBlock[4] = *(a1 + 32);
  aBlock[5] = &v43;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (a2)
  {
    (*(v10 + 2))(v10, v44[5], *(a1 + 48), v38[5], v32[5], *(a1 + 56));
  }

  else
  {
    v12 = [v8 allKeys];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_2_198;
    v22[3] = &unk_1E8379250;
    v23 = v8;
    v27 = &v37;
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v24 = v13;
    v25 = v14;
    v28 = &v43;
    v26 = *(a1 + 48);
    v29 = &v31;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_4;
    v15[3] = &unk_1E8379278;
    v18 = v11;
    v19 = &v43;
    v16 = *(a1 + 48);
    v20 = &v37;
    v21 = &v31;
    v17 = *(a1 + 56);
    [v12 if_enumerateAsynchronouslyInSequence:v22 completionHandler:v15];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
}

void __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_196(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  [a6 finish];
  v12 = *(a1 + 32);
  v13 = *(*(a1 + 40) + 8);
  if (v11)
  {
    v14 = [*(a1 + 32) errorFromResolutionResult:v11 forSlot:v10 onIntent:*(v13 + 40)];
    [v12 failWithError:v14];
  }

  else
  {
    [*(a1 + 32) confirmIntent:*(v13 + 40) withExtensionProxy:v15];
  }
}

void __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_2_198(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if ([v8 result] == 1)
  {
    v9 = [*(a1 + 40) _intentInstanceDescription];
    v10 = [v9 slotByName:v6];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [*(*(*(a1 + 64) + 8) + 40) resolutionResultClass];
    v14 = [v8 data];
    v15 = [v13 _resolutionResultWithData:v14 slotDescription:*(*(*(a1 + 64) + 8) + 40)];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 0;
        goto LABEL_9;
      }

      v16 = v15;
    }

    v17 = v16;
LABEL_9:
    v18 = *(*(*(a1 + 64) + 8) + 40);
    v19 = *(*(*(a1 + 72) + 8) + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_3;
    v22[3] = &unk_1E8379228;
    v20 = *(a1 + 48);
    v23 = *(a1 + 56);
    v25 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    v24 = v7;
    [v20 resolveIntentResolutionResults:v17 slotDescription:v18 intent:v19 completion:v22];

    goto LABEL_10;
  }

  (*(v7 + 2))(v7, 0);
LABEL_10:

  v21 = *MEMORY[0x1E69E9840];
}

void __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v13 = a3;
  v8 = a4;
  if (v13 && a2)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 _connection];
    [v12 setIntent:v13];
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  if (v13)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  (*(*(a1 + 40) + 16))();
}

id __53__WFIntentExecutor_resolveIntent_withExtensionProxy___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resolveSelector])
  {
    v3 = [v2 name];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)resumeConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(WFIntentExecutor *)self connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__WFIntentExecutor_resumeConnectionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83791B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [connection resumeWithCompletionHandler:v7];
}

void __58__WFIntentExecutor_resumeConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 && [v6 code] == 1320 && (objc_msgSend(*(a1 + 32), "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    v10 = [*(a1 + 32) delegate];
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__WFIntentExecutor_resumeConnectionWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E8379190;
    v12[4] = v11;
    v15 = *(a1 + 40);
    v13 = 0;
    v14 = v7;
    [v10 intentExecutor:v11 needsAppProtectionUnlockWithCompletionHandler:v12];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __58__WFIntentExecutor_resumeConnectionWithCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) connection];
    [v3 setAppProtectionPolicy:1];

    v8 = [*(a1 + 32) connection];
    [v8 resumeWithCompletionHandler:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

- (void)startConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(WFIntentExecutor *)self configureConnection];
  v5 = [WFAutoIncrementingProgress alloc];
  progress = [(WFIntentExecutor *)self progress];
  v7 = [(WFAutoIncrementingProgress *)v5 initWithParent:progress pendingUnitCount:1 duration:1.0];

  [(WFAutoIncrementingProgress *)v7 start];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__WFIntentExecutor_startConnectionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E8379168;
  v11 = v7;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = v7;
  v9 = handlerCopy;
  [(WFIntentExecutor *)self resumeConnectionWithCompletionHandler:v10];
}

void __57__WFIntentExecutor_startConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    a3 = [*(a1 + 32) errorFromExtensionError:a3];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) finish];
}

- (void)configureConnection
{
  connection = [(WFIntentExecutor *)self connection];
  intent = [(WFIntentExecutor *)self intent];
  extensionBundleId = [intent extensionBundleId];
  v6 = [extensionBundleId isEqualToString:@"com.apple.PassKit.PassKitIntentsExtension"];

  if (v6)
  {
    [connection setRequestTimeoutInterval:60.0];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__WFIntentExecutor_configureConnection__block_invoke;
  v9[3] = &unk_1E8379140;
  objc_copyWeak(&v10, &location);
  [connection setTimeoutHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WFIntentExecutor_configureConnection__block_invoke_2;
  v7[3] = &unk_1E8379140;
  objc_copyWeak(&v8, &location);
  [connection setInterruptionHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__WFIntentExecutor_configureConnection__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69AA858] code:1307 userInfo:v5];
  v7 = [WeakRetained errorFromExtensionError:v6];
  [WeakRetained failWithError:v7];

  v8 = *MEMORY[0x1E69E9840];
}

void __39__WFIntentExecutor_configureConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69AA858] code:1301 userInfo:v5];
  v7 = [WeakRetained errorFromExtensionError:v6];
  [WeakRetained failWithError:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)getDynamicOptionsForParameterNamed:(id)named searchTerm:(id)term completionHandler:(id)handler
{
  namedCopy = named;
  termCopy = term;
  handlerCopy = handler;
  [(WFIntentExecutor *)self retainSelf];
  networkExtensionProxy = [(WFIntentExecutor *)self networkExtensionProxy];

  if (networkExtensionProxy)
  {
    networkExtensionProxy2 = [(WFIntentExecutor *)self networkExtensionProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__WFIntentExecutor_getDynamicOptionsForParameterNamed_searchTerm_completionHandler___block_invoke;
    v13[3] = &unk_1E83790F0;
    v15 = handlerCopy;
    v13[4] = self;
    v14 = namedCopy;
    [networkExtensionProxy2 getOptionsForParameterNamed:v14 searchTerm:termCopy completionHandler:v13];
  }

  else
  {
    [(WFIntentExecutor *)self startConnectionForParameterName:namedCopy searchTerm:termCopy completionHandler:handlerCopy];
  }
}

void __84__WFIntentExecutor_getDynamicOptionsForParameterNamed_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) intent];
    v8 = [v7 _codableDescription];
    v9 = [v8 attributeByName:*(a1 + 40)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__WFIntentExecutor_getDynamicOptionsForParameterNamed_searchTerm_completionHandler___block_invoke_2;
    v12[3] = &unk_1E83790C8;
    v15 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    [v5 wf_transformValueForCodableAttribute:v9 completionHandler:v12];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finish];
  }
}

uint64_t __84__WFIntentExecutor_getDynamicOptionsForParameterNamed_searchTerm_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 finish];
}

- (void)startConnectionForParameterName:(id)name searchTerm:(id)term completionHandler:(id)handler
{
  nameCopy = name;
  termCopy = term;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__WFIntentExecutor_startConnectionForParameterName_searchTerm_completionHandler___block_invoke;
  v14[3] = &unk_1E8379118;
  v15 = nameCopy;
  v16 = termCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = termCopy;
  v12 = nameCopy;
  v13 = handlerCopy;
  [(WFIntentExecutor *)self startConnectionWithCompletionHandler:v14];
}

void __81__WFIntentExecutor_startConnectionForParameterName_searchTerm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__WFIntentExecutor_startConnectionForParameterName_searchTerm_completionHandler___block_invoke_2;
    v10[3] = &unk_1E83790F0;
    v6 = *(a1 + 56);
    v7 = *(a1 + 48);
    v12 = v6;
    v10[4] = v7;
    v11 = *(a1 + 32);
    [a2 getOptionsForParameterNamed:v4 searchTerm:v5 completionHandler:v10];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

void __81__WFIntentExecutor_startConnectionForParameterName_searchTerm_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) intent];
    v8 = [v7 _codableDescription];
    v9 = [v8 attributeByName:*(a1 + 40)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__WFIntentExecutor_startConnectionForParameterName_searchTerm_completionHandler___block_invoke_3;
    v12[3] = &unk_1E83790C8;
    v15 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    [v5 wf_transformValueForCodableAttribute:v9 completionHandler:v12];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finish];
  }
}

uint64_t __81__WFIntentExecutor_startConnectionForParameterName_searchTerm_completionHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 finish];
}

- (void)getDefaultValueForParameterNamed:(id)named completionHandler:(id)handler
{
  namedCopy = named;
  handlerCopy = handler;
  [(WFIntentExecutor *)self retainSelf];
  networkExtensionProxy = [(WFIntentExecutor *)self networkExtensionProxy];

  if (networkExtensionProxy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);

    [(WFIntentExecutor *)self finish];
  }

  else
  {
    [(WFIntentExecutor *)self startConnectionForParameterName:namedCopy completionHandler:handlerCopy];
  }
}

- (void)startConnectionForParameterName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WFIntentExecutor_startConnectionForParameterName_completionHandler___block_invoke;
  v10[3] = &unk_1E8379168;
  selfCopy = self;
  v13 = handlerCopy;
  v11 = nameCopy;
  v8 = nameCopy;
  v9 = handlerCopy;
  [(WFIntentExecutor *)self startConnectionWithCompletionHandler:v10];
}

void __70__WFIntentExecutor_startConnectionForParameterName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__WFIntentExecutor_startConnectionForParameterName_completionHandler___block_invoke_2;
    v9[3] = &unk_1E837C818;
    v11 = *(a1 + 48);
    v8 = *(a1 + 32);
    v5 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    [a2 getDefaultValueForParameterNamed:v4 completionHandler:v9];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __70__WFIntentExecutor_startConnectionForParameterName_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) intent];
    v8 = [v7 _codableDescription];
    v9 = [v8 attributeByName:*(a1 + 40)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__WFIntentExecutor_startConnectionForParameterName_completionHandler___block_invoke_3;
    v12[3] = &unk_1E83790C8;
    v15 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    [v5 wf_transformValueForCodableAttribute:v9 completionHandler:v12];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finish];
  }
}

uint64_t __70__WFIntentExecutor_startConnectionForParameterName_completionHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  return [v3 finish];
}

- (void)startWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  [(WFIntentExecutor *)self retainSelf];
  progress = [(WFIntentExecutor *)self progress];
  [progress setCompletedUnitCount:0];

  if ([(WFIntentExecutor *)self skipResolveAndConfirm])
  {
    v7 = 2;
  }

  else
  {
    v7 = 4;
  }

  progress2 = [(WFIntentExecutor *)self progress];
  [progress2 setTotalUnitCount:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__WFIntentExecutor_startWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E83790A0;
  v9[4] = self;
  [(WFIntentExecutor *)self startConnectionWithCompletionHandler:v9];
}

void __47__WFIntentExecutor_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v10)
  {
    v7 = [v6 skipResolveAndConfirm];
    v8 = *(a1 + 32);
    v9 = [v8 intent];
    if (v7)
    {
      [v8 handleIntent:v9 withExtensionProxy:v10];
    }

    else
    {
      [v8 resolveIntent:v9 withExtensionProxy:v10];
    }
  }

  else
  {
    [v6 failWithError:v5];
  }
}

- (id)extensionInputItemsWithIntent:(id)intent
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABE0];
  intentCopy = intent;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _executionContext = [intentCopy _executionContext];

  if (_executionContext <= 9 && ((1 << _executionContext) & 0x206) != 0)
  {
    siriLanguageCode = [MEMORY[0x1E696E958] siriLanguageCode];
  }

  else
  {
    v9 = _CFLocaleCopyPreferred();
    siriLanguageCode = [v9 languageIdentifier];
  }

  [v6 if_setObjectIfNonNil:siriLanguageCode forKey:*MEMORY[0x1E696EB08]];

  [v5 setUserInfo:v6];
  v13[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end