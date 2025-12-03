@interface STSSession
+ (id)requestAssertionForKeyID:(id)d options:(id)options outError:(id *)error;
- (BOOL)supportsSecureRanging;
- (STSSession)init;
- (id)_translateXPCClientNotificationStatus:(unint64_t)status;
- (id)canStartSession;
- (id)createHandlerForCredential:(id)credential;
- (id)enableExpressModeForActiveCredential:(BOOL)credential;
- (id)felicaCredentialState:(id)state error:(id *)error;
- (id)releaseCredential:(id)credential withAuthorization:(id)authorization;
- (id)releaseCredential:(id)credential withAuthorization:(id)authorization iso18013Selection:(id)selection;
- (id)rkeCancelFunction:(id)function;
- (id)rkeGetVehicleReports:(id *)reports;
- (id)rkePauseRangingForReaderIdentifier:(id)identifier durationInSec:(id)sec;
- (id)rkeResumeRangingForReaderIdentifier:(id)identifier;
- (id)rkeSendPassthroughMessage:(id)message;
- (id)setAuxiliaryCredentials:(id)credentials;
- (id)startHandoff;
- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options;
- (id)startWithDelegate:(id)delegate;
- (id)startWithDelegate:(id)delegate callback:(id)callback;
- (id)startWithNotificationTesterDelegate:(id)delegate outNotificationListener:(id *)listener;
- (id)stopTransaction;
- (id)transitCredentialState:(id)state error:(id *)error;
- (void)_activateInvalidationHandler:(id)handler;
- (void)fireDidPerformAuxiliaryTransactions:(id)transactions;
- (void)fireDidReceive18013Requests:(id)requests readerAuthInfo:(id)info;
- (void)fireDidReceiveActivityTimeout:(id)timeout;
- (void)fireDidReceivePassthroughMessage:(id)message;
- (void)fireDigitalCarKeyEventPayload:(id)payload;
- (void)fireExpressModeStateChangeWithInfo:(id)info;
- (void)fireFieldNotificationEvent:(id)event;
- (void)fireRequestHandoverConfirmation;
- (void)fireSessionDidConsumeAuthorizationEvent;
- (void)fireSessionEndEvent:(id)event;
- (void)fireTransactionEndEvent:(id)event;
- (void)fireTransactionStartEvent:(id)event;
- (void)generateHandoverRequestForQRCodeWithConfiguration:(unint64_t)configuration responseHandler:(id)handler;
- (void)relinquishSEProxy;
- (void)rkeSendFunction:(id)function action:(id)action authorization:(id)authorization completion:(id)completion;
- (void)testSendToAlternativeCarrier:(id)carrier completion:(id)completion;
@end

@implementation STSSession

- (void)generateHandoverRequestForQRCodeWithConfiguration:(unint64_t)configuration responseHandler:(id)handler
{
  v52[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]", 64, self, @"dataRetrievalType = 0x%x", v8, v9, configuration);
  handler = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]", 67, self, @"Invalid ISO18013 configuration", v12, v13, v46);
    v32 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    activeSTSCredential = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v52[0] = activeSTSCredential;
    v52[1] = &unk_2876ED128;
    v51[1] = @"Line";
    v51[2] = @"Method";
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v29;
    v51[3] = *MEMORY[0x277CCA068];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 68];
    v52[3] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
    v35 = [v32 errorWithDomain:v17 code:9 userInfo:v34];
    handlerCopy[2](handlerCopy, 0, v35);

    goto LABEL_13;
  }

  v14 = [ISO18013Handler alloc];
  callbackQueue = [(STSSessionBase *)self callbackQueue];
  v16 = callbackQueue;
  if (!v14)
  {

    goto LABEL_12;
  }

  v17 = sub_265380088(v14, self, v14, 1, callbackQueue);

  if (!v17)
  {
LABEL_12:
    v40 = MEMORY[0x277CCA9B8];
    activeSTSCredential = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v49[0] = *MEMORY[0x277CCA450];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v50[0] = v29;
    v50[1] = &unk_2876ED140;
    v49[1] = @"Line";
    v49[2] = @"Method";
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v50[2] = v41;
    v49[3] = *MEMORY[0x277CCA068];
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 76];
    v50[3] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
    v44 = [v40 errorWithDomain:activeSTSCredential code:10 userInfo:v43];
    handlerCopy[2](handlerCopy, 0, v44);

    v17 = 0;
    goto LABEL_13;
  }

  handler2 = [(STSSessionBase *)self handler];
  activeSTSCredential = [handler2 activeSTSCredential];

  handler3 = [(STSSessionBase *)self handler];
  consumeHandoffToken = [handler3 consumeHandoffToken];
  [v17 retainUnusedHandoffToken:consumeHandoffToken];

  handler4 = [(STSSessionBase *)self handler];
  [handler4 tearDownWithCompletion:0];

  [(STSSessionBase *)self setHandler:v17];
  handler5 = [(STSSessionBase *)self handler];
  v24 = [handler5 setActiveCredential:activeSTSCredential];

  [(STSSession *)self setSendRequestCompletion:handlerCopy];
  v25 = [[NFSecureElementProxyListener alloc] initWithSTSSession:self];
  [(STSSession *)self setSeProxyListener:v25];

  v26 = v17[10];
  seProxyListener = [(STSSession *)self seProxyListener];
  callbackQueue2 = [(STSSessionBase *)self callbackQueue];
  v29 = [v26 startSEProxyListener:seProxyListener parameters:MEMORY[0x277CBEC10] workQueue:callbackQueue2];

  if (v29)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]", 113, self, @"SE proxy listener start error=%{public}@", v30, v31, v29);
    handlerCopy[2](handlerCopy, 0, v29);
  }

  else
  {
    v36 = configuration & 7 | 0x40;
    v37 = v17[10];
    v38 = [v37 startISO18013WithConnectionHandoverConfiguration:v36 type:0 credentialType:2 delegate:self];

    if (v38)
    {
      handlerCopy[2](handlerCopy, 0, v38);
    }

    else
    {
      v39 = v17[10];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_26537E740;
      v47[3] = &unk_279B93C08;
      v47[4] = self;
      v48 = handlerCopy;
      [v39 generateQRCodeCHRequestAndStartACWithQueue:0 responseHandler:v47];
    }

    v29 = 0;
  }

LABEL_13:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)relinquishSEProxy
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession(Identity) relinquishSEProxy]", 145, self, &stru_2876E3E50, v2, v3, v9);
  handler = [(STSSessionBase *)self handler];
  v6 = handler;
  if (handler)
  {
    v7 = *(handler + 80);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v8 stopSEProxyListener];

  [(STSSession *)self setSeProxyListener:0];
}

- (void)_activateInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Identity) _activateInvalidationHandler:]", 166, self, @"error=%@", v5, v6, handlerCopy);
  objc_initWeak(&location, self);
  callbackQueue = [(STSSessionBase *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537EA28;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v11, &location);
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_translateXPCClientNotificationStatus:(unint64_t)status
{
  v4 = 0;
  v34[4] = *MEMORY[0x277D85DE8];
  if (status > 5)
  {
    if (status > 7)
    {
      if (status == 8)
      {
        v18 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v23[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Alternative Carrier transmission error"];
        v24[0] = v7;
        v24[1] = &unk_2876ED1D0;
        v23[1] = @"Line";
        v23[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v24[2] = v8;
        v23[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 205];
        v24[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
        v11 = v18;
        v12 = v6;
        v13 = 19;
      }

      else
      {
        if (status != 9)
        {
          goto LABEL_18;
        }

        v15 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v21[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
        v22[0] = v7;
        v22[1] = &unk_2876ED1E8;
        v21[1] = @"Line";
        v21[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v22[2] = v8;
        v21[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 207];
        v22[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
        v11 = v15;
        v12 = v6;
        v13 = 9;
      }
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      if (status == 6)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v27[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Wifi power on"];
        v28[0] = v7;
        v28[1] = &unk_2876ED1A0;
        v27[1] = @"Line";
        v27[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v28[2] = v8;
        v27[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 201];
        v28[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
        v11 = v14;
        v12 = v6;
        v13 = 15;
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v25[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Requires Bluetooth power on"];
        v26[0] = v7;
        v26[1] = &unk_2876ED1B8;
        v25[1] = @"Line";
        v25[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v26[2] = v8;
        v25[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 203];
        v26[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
        v11 = v14;
        v12 = v6;
        v13 = 16;
      }
    }
  }

  else
  {
    if (status <= 3)
    {
      if (status - 1 >= 2)
      {
        if (status != 3)
        {
          goto LABEL_18;
        }

        v5 = MEMORY[0x277CCA9B8];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v31[0] = *MEMORY[0x277CCA450];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Timeout"];
        v32[0] = v7;
        v32[1] = &unk_2876ED170;
        v31[1] = @"Line";
        v31[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v32[2] = v8;
        v31[3] = *MEMORY[0x277CCA068];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 197];
        v32[3] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
        v11 = v5;
        v12 = v6;
        v13 = 4;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (status == 4)
    {
LABEL_14:
      v17 = MEMORY[0x277CCA9B8];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v33[0] = *MEMORY[0x277CCA450];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Cancelled"];
      v34[0] = v7;
      v34[1] = &unk_2876ED158;
      v33[1] = @"Line";
      v33[2] = @"Method";
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v34[2] = v8;
      v33[3] = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 195];
      v34[3] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
      v11 = v17;
      v12 = v6;
      v13 = 13;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v29[0] = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"No alernative carrier available"];
    v30[0] = v7;
    v30[1] = &unk_2876ED188;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v30[2] = v8;
    v29[3] = *MEMORY[0x277CCA068];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 199];
    v30[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v11 = v16;
    v12 = v6;
    v13 = 14;
  }

LABEL_17:
  v4 = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)fireFieldNotificationEvent:(id)event
{
  eventCopy = event;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didReceiveFieldNotification:eventCopy];
  }
}

- (void)fireSessionDidConsumeAuthorizationEvent
{
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSessionDidConsumeAuthorization:self];
  }
}

- (void)fireTransactionStartEvent:(id)event
{
  eventCopy = event;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didStartTransaction:eventCopy];
  }
}

- (void)fireTransactionEndEvent:(id)event
{
  eventCopy = event;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didEndTransaction:eventCopy];
  }
}

- (void)fireExpressModeStateChangeWithInfo:(id)info
{
  infoCopy = info;
  delegate = [(STSSessionBase *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = infoCopy;
    state = [v5 state];
    detail = [v5 detail];

    [delegate stsSession:self didChangeExpressModeState:state withObject:detail];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didChangeExpressModeWithInfo:infoCopy];
  }
}

- (void)fireDidReceiveActivityTimeout:(id)timeout
{
  timeoutCopy = timeout;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didReceiveActivityTimeout:timeoutCopy];
  }
}

- (void)fireDidPerformAuxiliaryTransactions:(id)transactions
{
  transactionsCopy = transactions;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didPerformAuxiliaryTransactions:transactionsCopy];
  }
}

- (void)fireSessionEndEvent:(id)event
{
  eventCopy = event;
  if ([(STSSessionBase *)self hasStartedWithDelegate])
  {
    delegate = [(STSSessionBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate stsSession:self didEnd:eventCopy];
    }
  }
}

- (void)fireDidReceive18013Requests:(id)requests readerAuthInfo:(id)info
{
  requestsCopy = requests;
  infoCopy = info;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didReceive18013Requests:requestsCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didReceive18013Requests:requestsCopy readerAuthInfo:infoCopy];
  }
}

- (void)fireDidReceivePassthroughMessage:(id)message
{
  messageCopy = message;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self didReceivePassthroughMessage:messageCopy];
  }
}

- (void)fireDigitalCarKeyEventPayload:(id)payload
{
  payloadCopy = payload;
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSession:self digitalCarKeyEventPayload:payloadCopy];
  }
}

- (void)fireRequestHandoverConfirmation
{
  delegate = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stsSessionRequestHandoffConfirmation:self];
  }
}

- (id)setAuxiliaryCredentials:(id)credentials
{
  v40[4] = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  v6 = _os_activity_create(&dword_26536F000, "setAuxiliaryCredentials:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 23, self, @"%@", v7, v8, credentialsCopy);
  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    supportedCredentialType = [handler2 supportedCredentialType];

    if (supportedCredentialType == 1)
    {
      goto LABEL_6;
    }

    handler3 = [(STSSessionBase *)self handler];
    activeSTSCredential = [handler3 activeSTSCredential];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 33, self, @"new handler required, switching credential from %@ to STSCredentialTypeApplet", v16, v17, activeSTSCredential);

    v18 = [(STSTransactionHandler *)[PaymentHandler alloc] initWithParent:self];
    handler4 = [(STSSessionBase *)self handler];
    [handler4 tearDownWithCompletion:0];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 27, self, @"Creating initial handler", v10, v11, v37);
    v18 = [(STSTransactionHandler *)[PaymentHandler alloc] initWithParent:self];
  }

  [(STSSessionBase *)self setHandler:v18];

LABEL_6:
  handler5 = [(STSSessionBase *)self handler];

  if (handler5)
  {
    activateChildSession = [(STSSessionBase *)self activateChildSession];
    if (activateChildSession)
    {
      v26 = activateChildSession;
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 43, self, @"Handler activation failure: %@", v24, v25, activateChildSession);
      v27 = v26;
      v28 = v27;
    }

    else
    {
      handler6 = [(STSSessionBase *)self handler];
      v28 = sub_2653888E8(handler6, credentialsCopy);

      v27 = 0;
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 50, self, @"Failed to create payment handler", v21, v22, v37);
    v29 = MEMORY[0x277CCA9B8];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v39[0] = *MEMORY[0x277CCA450];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v40[0] = v30;
    v40[1] = &unk_2876ED998;
    v39[1] = @"Line";
    v39[2] = @"Method";
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v40[2] = v31;
    v39[3] = *MEMORY[0x277CCA068];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 51];
    v40[3] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];
    v28 = [v29 errorWithDomain:v27 code:11 userInfo:v33];
  }

  v35 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)supportsSecureRanging
{
  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    handler3 = [(STSSessionBase *)self handler];
    v16 = handler3;
    if (isKindOfClass)
    {
      v17 = sub_265396254(handler3, v9, v10, v11, v12, v13, v14, v15);

      return v17;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) supportsSecureRanging]", 37, self, @"Invalid handler - %@", v21, v22, v20);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) supportsSecureRanging]", 34, self, @"No handler available", v4, v5, v23);
  }

  return 0;
}

- (id)rkeSendPassthroughMessage:(id)message
{
  v35[4] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = _os_activity_create(&dword_26536F000, "rkeSendPassthroughMessage:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    handler3 = [(STSSessionBase *)self handler];
    v13 = handler3;
    if (isKindOfClass)
    {
      v14 = sub_265396464(handler3, messageCopy);
      goto LABEL_7;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeSendPassthroughMessage:]", 52, self, @"Invalid handler - %@", v25, v26, v24);

    v27 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v32[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v33[0] = v16;
    v33[1] = &unk_2876EDA10;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v33[2] = v17;
    v32[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 53];
    v33[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v20 = v27;
    v21 = v13;
    v22 = 11;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeSendPassthroughMessage:]", 49, self, @"No handler available", v8, v9, v30);
    v15 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v34[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v35[0] = v16;
    v35[1] = &unk_2876ED9F8;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v35[2] = v17;
    v34[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 50];
    v35[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v20 = v15;
    v21 = v13;
    v22 = 9;
  }

  v14 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];

LABEL_7:
  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)rkeSendFunction:(id)function action:(id)action authorization:(id)authorization completion:(id)completion
{
  v52[4] = *MEMORY[0x277D85DE8];
  functionCopy = function;
  actionCopy = action;
  authorizationCopy = authorization;
  completionCopy = completion;
  v15 = _os_activity_create(&dword_26536F000, "rkeSendFunction:action:authorization:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  os_activity_scope_leave(&state);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_26539A1F0;
  aBlock[3] = &unk_279B94180;
  aBlock[4] = self;
  v16 = completionCopy;
  v47 = v16;
  v17 = _Block_copy(aBlock);
  handler = [(STSSessionBase *)self handler];

  if (!handler)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeSendFunction:action:authorization:completion:]", 74, self, @"No handler available", v19, v20, v43);
    v25 = MEMORY[0x277CCA9B8];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v52[0] = v26;
    v52[1] = &unk_2876EDA28;
    v51[1] = @"Line";
    v51[2] = @"Method";
    v45 = authorizationCopy;
    v27 = actionCopy;
    v28 = functionCopy;
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v29;
    v51[3] = *MEMORY[0x277CCA068];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 75];
    v52[3] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
    v32 = [v25 errorWithDomain:v24 code:9 userInfo:v31];
    v17[2](v17, 0, v32);

    functionCopy = v28;
    actionCopy = v27;
LABEL_7:
    authorizationCopy = v45;

    goto LABEL_8;
  }

  handler2 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  handler3 = [(STSSessionBase *)self handler];
  v24 = handler3;
  if ((isKindOfClass & 1) == 0)
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeSendFunction:action:authorization:completion:]", 77, self, @"Invalid handler - %@", v35, v36, v34);

    v44 = MEMORY[0x277CCA9B8];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v49[0] = *MEMORY[0x277CCA450];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v50[0] = v26;
    v50[1] = &unk_2876EDA40;
    v49[1] = @"Line";
    v49[2] = @"Method";
    [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v45 = authorizationCopy;
    v38 = v37 = functionCopy;
    v50[2] = v38;
    v49[3] = *MEMORY[0x277CCA068];
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 78];
    v50[3] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
    v41 = [v44 errorWithDomain:v24 code:11 userInfo:v40];
    v17[2](v17, 0, v41);

    functionCopy = v37;
    goto LABEL_7;
  }

  if (handler3)
  {
    [*(handler3 + 64) sendRKEFunction:functionCopy action:actionCopy authorization:authorizationCopy completion:v17];
  }

LABEL_8:

  v42 = *MEMORY[0x277D85DE8];
}

- (id)rkeCancelFunction:(id)function
{
  v35[4] = *MEMORY[0x277D85DE8];
  functionCopy = function;
  v6 = _os_activity_create(&dword_26536F000, "rkeCancelFunction:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    handler3 = [(STSSessionBase *)self handler];
    v13 = handler3;
    if (isKindOfClass)
    {
      v14 = sub_2653968C0(handler3, functionCopy);
      goto LABEL_7;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeCancelFunction:]", 92, self, @"Invalid handler - %@", v25, v26, v24);

    v27 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v32[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v33[0] = v16;
    v33[1] = &unk_2876EDA70;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v33[2] = v17;
    v32[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 93];
    v33[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v20 = v27;
    v21 = v13;
    v22 = 11;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeCancelFunction:]", 89, self, @"No handler available", v8, v9, v30);
    v15 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v34[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v35[0] = v16;
    v35[1] = &unk_2876EDA58;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v35[2] = v17;
    v34[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 90];
    v35[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v20 = v15;
    v21 = v13;
    v22 = 9;
  }

  v14 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];

LABEL_7:
  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)rkePauseRangingForReaderIdentifier:(id)identifier durationInSec:(id)sec
{
  v38[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  secCopy = sec;
  v9 = _os_activity_create(&dword_26536F000, "rkePauseRangingForReaderIdentifier:durationInSec:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    handler3 = [(STSSessionBase *)self handler];
    v16 = handler3;
    if (isKindOfClass)
    {
      v17 = sub_265396900(handler3, identifierCopy, secCopy);
      goto LABEL_7;
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkePauseRangingForReaderIdentifier:durationInSec:]", 108, self, @"Invalid handler - %@", v28, v29, v27);

    v30 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v35[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v36[0] = v19;
    v36[1] = &unk_2876EDAA0;
    v35[1] = @"Line";
    v35[2] = @"Method";
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v36[2] = v20;
    v35[3] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 109];
    v36[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
    v23 = v30;
    v24 = v16;
    v25 = 11;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkePauseRangingForReaderIdentifier:durationInSec:]", 105, self, @"No handler available", v11, v12, v33);
    v18 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v37[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v38[0] = v19;
    v38[1] = &unk_2876EDA88;
    v37[1] = @"Line";
    v37[2] = @"Method";
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v38[2] = v20;
    v37[3] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 106];
    v38[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
    v23 = v18;
    v24 = v16;
    v25 = 9;
  }

  v17 = [v23 errorWithDomain:v24 code:v25 userInfo:v22];

LABEL_7:
  v31 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)rkeResumeRangingForReaderIdentifier:(id)identifier
{
  v35[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = _os_activity_create(&dword_26536F000, "rkeResumeRangingForReaderIdentifier:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    handler3 = [(STSSessionBase *)self handler];
    v13 = handler3;
    if (isKindOfClass)
    {
      v14 = sub_265396940(handler3, identifierCopy);
      goto LABEL_7;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeResumeRangingForReaderIdentifier:]", 123, self, @"Invalid handler - %@", v25, v26, v24);

    v27 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v32[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v33[0] = v16;
    v33[1] = &unk_2876EDAD0;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v33[2] = v17;
    v32[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 124];
    v33[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v20 = v27;
    v21 = v13;
    v22 = 11;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeResumeRangingForReaderIdentifier:]", 120, self, @"No handler available", v8, v9, v30);
    v15 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v34[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v35[0] = v16;
    v35[1] = &unk_2876EDAB8;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v35[2] = v17;
    v34[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 121];
    v35[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v20 = v15;
    v21 = v13;
    v22 = 9;
  }

  v14 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];

LABEL_7:
  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)rkeGetVehicleReports:(id *)reports
{
  v34[4] = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_26536F000, "rkeGetVehicleReports:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (!handler)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeGetVehicleReports:]", 135, self, @"No handler available", v8, v9, v29);
    if (!reports)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v33[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v34[0] = v15;
    v34[1] = &unk_2876EDAE8;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v34[2] = v16;
    v33[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 137];
    v34[3] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v19 = v14;
    v20 = v13;
    v21 = 9;
LABEL_8:
    *reports = [v19 errorWithDomain:v20 code:v21 userInfo:v18];

    reports = 0;
    goto LABEL_9;
  }

  handler2 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  handler3 = [(STSSessionBase *)self handler];
  v13 = handler3;
  if ((isKindOfClass & 1) == 0)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeGetVehicleReports:]", 141, self, @"Invalid handler - %@", v24, v25, v23);

    if (!reports)
    {
      goto LABEL_10;
    }

    v26 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v31[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v32[0] = v15;
    v32[1] = &unk_2876EDB00;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v32[2] = v16;
    v31[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 143];
    v32[3] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
    v19 = v26;
    v20 = v13;
    v21 = 11;
    goto LABEL_8;
  }

  reports = sub_2653962B8(handler3, reports);
LABEL_9:

LABEL_10:
  v27 = *MEMORY[0x277D85DE8];

  return reports;
}

+ (id)requestAssertionForKeyID:(id)d options:(id)options outError:(id *)error
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"STS.fwk", options}];
    v15[0] = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v16[0] = v9;
    v16[1] = &unk_2876EDB18;
    v15[1] = @"Line";
    v15[2] = @"Method";
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v16[2] = v10;
    v15[3] = *MEMORY[0x277CCA068];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 155];
    v16[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    *error = [v7 errorWithDomain:v8 code:11 userInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)createHandlerForCredential:(id)credential
{
  credentialCopy = credential;
  type = [credentialCopy type];
  v6 = 0;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v12 = UnifiedAccessHandler;
        break;
      case 4:
        v12 = DigitalCarKeyHandler;
        break;
      case 5:
        v6 = [ISO18013HybridHandler alloc];
        callbackQueue = [(STSSessionBase *)self callbackQueue];
        if (!v6)
        {
          goto LABEL_13;
        }

        v8 = sub_26538C184(v6, self, v6, 0, callbackQueue);
        goto LABEL_12;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (!type)
    {
      type2 = [credentialCopy type];
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession createHandlerForCredential:]", 42, self, @"Unsupported credential type %02x", v10, v11, type2);
      v6 = 0;
      goto LABEL_19;
    }

    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_19;
      }

      v6 = [ISO18013Handler alloc];
      callbackQueue = [(STSSessionBase *)self callbackQueue];
      if (!v6)
      {
        goto LABEL_13;
      }

      v8 = sub_265380088(v6, self, v6, 0, callbackQueue);
LABEL_12:
      v6 = v8;
LABEL_13:

      goto LABEL_19;
    }

    v12 = PaymentHandler;
  }

  v6 = [[v12 alloc] initWithParent:self];
LABEL_19:

  return v6;
}

- (STSSession)init
{
  v3.receiver = self;
  v3.super_class = STSSession;
  return [(STSSessionBase *)&v3 init];
}

- (id)startWithDelegate:(id)delegate callback:(id)callback
{
  delegateCopy = delegate;
  callbackCopy = callback;
  v8 = _os_activity_create(&dword_26536F000, "startWithDelegate:callback:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession startWithDelegate:callback:]", 60, self, &stru_2876E3E50, v9, v10, v16[0]);
  canStartSession = [(STSSession *)self canStartSession];
  if (canStartSession)
  {
    callbackQueue = [(STSSessionBase *)self callbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_26539BCD8;
    v16[3] = &unk_279B93848;
    v18 = callbackCopy;
    v13 = canStartSession;
    v17 = v13;
    dispatch_async(callbackQueue, v16);

    v14 = v13;
  }

  else
  {
    LOBYTE(state.opaque[0]) = 0;
    [(STSSessionBase *)self setTheStartCallback:callbackCopy];
    [(STSSessionBase *)self startWithDelegate:delegateCopy isFirstInQueue:&state];
  }

  return canStartSession;
}

- (id)startWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = _os_activity_create(&dword_26536F000, "startWithDelegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v5, &v12);
  os_activity_scope_leave(&v12);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession startWithDelegate:]", 79, self, &stru_2876E3E50, v6, v7, v12.opaque[0]);
  canStartSession = [(STSSession *)self canStartSession];
  v9 = canStartSession;
  if (canStartSession)
  {
    v10 = canStartSession;
  }

  else
  {
    LOBYTE(v12.opaque[0]) = 0;
    [(STSSessionBase *)self startWithDelegate:delegateCopy isFirstInQueue:&v12];
  }

  return v9;
}

- (id)canStartSession
{
  v30[4] = *MEMORY[0x277D85DE8];
  nfHardwareManager = [(STSSessionBase *)self nfHardwareManager];
  if ([nfHardwareManager getHwSupport] == 2)
  {
    v26 = 1;
    v7 = [nfHardwareManager getRadioEnabledState:&v26];
    v10 = v7;
    if (!v7 && v26)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v17 = @"NFRadioStateDisabled";
    if (v7)
    {
      v17 = v7;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession canStartSession]", 104, self, @"NFC Radio is not available (error=%@).", v8, v9, v17);
    v18 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v27[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC radio disabled"];
    v28[0] = v19;
    v28[1] = &unk_2876EDB48;
    v27[1] = @"Line";
    v27[2] = @"Method";
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v28[2] = v20;
    v27[3] = *MEMORY[0x277CCA068];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 105];
    v28[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
    v11 = [v18 errorWithDomain:v13 code:18 userInfo:v22];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession canStartSession]", 97, self, @"Hardware not available", v5, v6, v25);
    v12 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v29[0] = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
    v30[0] = v13;
    v30[1] = &unk_2876EDB30;
    v29[1] = @"Line";
    v29[2] = @"Method";
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v30[2] = v14;
    v29[3] = *MEMORY[0x277CCA068];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 98];
    v30[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    v11 = [v12 errorWithDomain:v10 code:12 userInfo:v16];
  }

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)startTransactionWithAuthorization:(id)authorization options:(unint64_t)options
{
  v28[4] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  v8 = _os_activity_create(&dword_26536F000, "startTransactionWithAuthorization:options:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    activateChildSession = [(STSSessionBase *)self activateChildSession];
    if (activateChildSession)
    {
      v15 = activateChildSession;
      v16 = v15;
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession startTransactionWithAuthorization:options:]", 124, self, @"options: 0x%04x", v13, v14, options);
      handler2 = [(STSSessionBase *)self handler];
      v16 = [handler2 startTransactionWithAuthorization:authorizationCopy options:options];

      v15 = 0;
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession startTransactionWithAuthorization:options:]", 115, self, @"Handler invalid", v10, v11, v25);
    v17 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v27[0] = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v28[0] = v18;
    v28[1] = &unk_2876EDB60;
    v27[1] = @"Line";
    v27[2] = @"Method";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v28[2] = v19;
    v27[3] = *MEMORY[0x277CCA068];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 116];
    v28[3] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
    v16 = [v17 errorWithDomain:v15 code:9 userInfo:v21];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)stopTransaction
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_26536F000, "stopTransaction:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession stopTransaction]", 136, self, &stru_2876E3E50, v6, v7, v17);
    handler2 = [(STSSessionBase *)self handler];
    stopTransaction = [handler2 stopTransaction];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession stopTransaction]", 132, self, @"Handler invalid", v6, v7, v17);
    v10 = MEMORY[0x277CCA9B8];
    handler2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v19[0] = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v20[0] = v11;
    v20[1] = &unk_2876EDB78;
    v19[1] = @"Line";
    v19[2] = @"Method";
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v20[2] = v12;
    v19[3] = *MEMORY[0x277CCA068];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 133];
    v20[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    stopTransaction = [v10 errorWithDomain:handler2 code:9 userInfo:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return stopTransaction;
}

- (id)enableExpressModeForActiveCredential:(BOOL)credential
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v13[0] = *MEMORY[0x277CCA450];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
  v14[0] = v6;
  v14[1] = &unk_2876EDB90;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v14[2] = v7;
  v13[3] = *MEMORY[0x277CCA068];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 141];
  v14[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v10 = [v4 errorWithDomain:v5 code:11 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)releaseCredential:(id)credential withAuthorization:(id)authorization
{
  v15[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"STS.fwk", authorization}];
  v14[0] = *MEMORY[0x277CCA450];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
  v15[0] = v7;
  v15[1] = &unk_2876EDBA8;
  v14[1] = @"Line";
  v14[2] = @"Method";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v15[2] = v8;
  v14[3] = *MEMORY[0x277CCA068];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 145];
  v15[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v11 = [v5 errorWithDomain:v6 code:11 userInfo:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)releaseCredential:(id)credential withAuthorization:(id)authorization iso18013Selection:(id)selection
{
  v29[4] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  authorizationCopy = authorization;
  selectionCopy = selection;
  v12 = _os_activity_create(&dword_26536F000, "releaseCredential:withAuthorization:iso18013Selection:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  handler2 = [(STSSessionBase *)self handler];
  handler3 = handler2;
  if (isKindOfClass)
  {
    v17 = sub_2653812A0(handler2, credentialCopy, authorizationCopy, selectionCopy);
LABEL_5:
    v19 = v17;
    goto LABEL_7;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    handler3 = [(STSSessionBase *)self handler];
    v17 = sub_26538E56C(handler3, credentialCopy, authorizationCopy, selectionCopy);
    goto LABEL_5;
  }

  v20 = MEMORY[0x277CCA9B8];
  handler3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v28[0] = *MEMORY[0x277CCA450];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
  v29[0] = v21;
  v29[1] = &unk_2876EDBC0;
  v28[1] = @"Line";
  v28[2] = @"Method";
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v29[2] = v22;
  v28[3] = *MEMORY[0x277CCA068];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 163];
  v29[3] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v19 = [v20 errorWithDomain:handler3 code:11 userInfo:v24];

LABEL_7:
  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)startHandoff
{
  v23[4] = *MEMORY[0x277D85DE8];
  handler = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  handler2 = [(STSSessionBase *)self handler];
  v7 = handler2;
  if (isKindOfClass)
  {
    if (handler2)
    {
      v8 = *(handler2 + 72);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    startHandoff = [v9 startHandoff];
  }

  else
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      handler3 = [(STSSessionBase *)self handler];
      v13 = handler3;
      if (handler3)
      {
        v14 = *(handler3 + 72);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      startHandoff = [v15 startHandoff];
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v22[0] = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v23[0] = v15;
      v23[1] = &unk_2876EDBD8;
      v22[1] = @"Line";
      v22[2] = @"Method";
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v23[2] = v17;
      v22[3] = *MEMORY[0x277CCA068];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 176];
      v23[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
      startHandoff = [v16 errorWithDomain:v13 code:9 userInfo:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return startHandoff;
}

- (id)startWithNotificationTesterDelegate:(id)delegate outNotificationListener:(id *)listener
{
  delegateCopy = delegate;
  v7 = _os_activity_create(&dword_26536F000, "startWithNotificationTesterDelegate:outNotificationListener:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v7, &v16);
  os_activity_scope_leave(&v16);

  v8 = [ISO18013Handler alloc];
  callbackQueue = [(STSSessionBase *)self callbackQueue];
  v10 = sub_265380234(v8, delegateCopy, self, callbackQueue);

  [(STSSessionBase *)self setHandler:v10];
  if (listener)
  {
    if (v10)
    {
      v11 = v10[9];
    }

    else
    {
      v11 = 0;
    }

    *listener = v11;
  }

  if (v10)
  {
    v12 = v10[9];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  xpcEndpoint = [v13 xpcEndpoint];

  return xpcEndpoint;
}

- (void)testSendToAlternativeCarrier:(id)carrier completion:(id)completion
{
  carrierCopy = carrier;
  completionCopy = completion;
  v9 = _os_activity_create(&dword_26536F000, "testSendToAlternativeCarrier:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  handler = [(STSSessionBase *)self handler];
  if (!handler)
  {
    goto LABEL_6;
  }

  v11 = handler;
  handler2 = [(STSSessionBase *)self handler];
  v13 = sub_2653837C8(ISO18013Handler, handler2);

  if (v13)
  {
    handler3 = [(STSSessionBase *)self handler];
    callbackQueue = handler3;
    if (handler3)
    {
      v16 = *(handler3 + 72);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_26539D468;
    v21[3] = &unk_279B93E00;
    v18 = &v22;
    v22 = completionCopy;
    v19 = completionCopy;
    [v17 alternativerCarrierSend:carrierCopy completion:v21];
  }

  else
  {
LABEL_6:
    callbackQueue = [(STSSessionBase *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_26539D2B8;
    block[3] = &unk_279B93AF8;
    v18 = v24;
    v24[0] = completionCopy;
    v24[1] = a2;
    v20 = completionCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (id)felicaCredentialState:(id)state error:(id *)error
{
  v20[4] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  handler = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    handler2 = [(STSSessionBase *)self handler];
    error = sub_265389320(handler2, stateCopy, error);
  }

  else if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v19[0] = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v20[0] = v13;
    v20[1] = &unk_2876EDC20;
    v19[1] = @"Line";
    v19[2] = @"Method";
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v20[2] = v14;
    v19[3] = *MEMORY[0x277CCA068];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 26];
    v20[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    *error = [v11 errorWithDomain:v12 code:11 userInfo:v16];

    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)transitCredentialState:(id)state error:(id *)error
{
  v20[4] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  handler = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    handler2 = [(STSSessionBase *)self handler];
    error = sub_265389920(handler2, stateCopy, error);
  }

  else if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v19[0] = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Feature Not Supported"];
    v20[0] = v13;
    v20[1] = &unk_2876EDC38;
    v19[1] = @"Line";
    v19[2] = @"Method";
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v20[2] = v14;
    v19[3] = *MEMORY[0x277CCA068];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 38];
    v20[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    *error = [v11 errorWithDomain:v12 code:11 userInfo:v16];

    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return error;
}

@end