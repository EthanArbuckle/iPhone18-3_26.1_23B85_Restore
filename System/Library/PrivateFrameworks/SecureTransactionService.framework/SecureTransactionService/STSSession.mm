@interface STSSession
+ (id)requestAssertionForKeyID:(id)a3 options:(id)a4 outError:(id *)a5;
- (BOOL)supportsSecureRanging;
- (STSSession)init;
- (id)_translateXPCClientNotificationStatus:(unint64_t)a3;
- (id)canStartSession;
- (id)createHandlerForCredential:(id)a3;
- (id)enableExpressModeForActiveCredential:(BOOL)a3;
- (id)felicaCredentialState:(id)a3 error:(id *)a4;
- (id)releaseCredential:(id)a3 withAuthorization:(id)a4;
- (id)releaseCredential:(id)a3 withAuthorization:(id)a4 iso18013Selection:(id)a5;
- (id)rkeCancelFunction:(id)a3;
- (id)rkeGetVehicleReports:(id *)a3;
- (id)rkePauseRangingForReaderIdentifier:(id)a3 durationInSec:(id)a4;
- (id)rkeResumeRangingForReaderIdentifier:(id)a3;
- (id)rkeSendPassthroughMessage:(id)a3;
- (id)setAuxiliaryCredentials:(id)a3;
- (id)startHandoff;
- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4;
- (id)startWithDelegate:(id)a3;
- (id)startWithDelegate:(id)a3 callback:(id)a4;
- (id)startWithNotificationTesterDelegate:(id)a3 outNotificationListener:(id *)a4;
- (id)stopTransaction;
- (id)transitCredentialState:(id)a3 error:(id *)a4;
- (void)_activateInvalidationHandler:(id)a3;
- (void)fireDidPerformAuxiliaryTransactions:(id)a3;
- (void)fireDidReceive18013Requests:(id)a3 readerAuthInfo:(id)a4;
- (void)fireDidReceiveActivityTimeout:(id)a3;
- (void)fireDidReceivePassthroughMessage:(id)a3;
- (void)fireDigitalCarKeyEventPayload:(id)a3;
- (void)fireExpressModeStateChangeWithInfo:(id)a3;
- (void)fireFieldNotificationEvent:(id)a3;
- (void)fireRequestHandoverConfirmation;
- (void)fireSessionDidConsumeAuthorizationEvent;
- (void)fireSessionEndEvent:(id)a3;
- (void)fireTransactionEndEvent:(id)a3;
- (void)fireTransactionStartEvent:(id)a3;
- (void)generateHandoverRequestForQRCodeWithConfiguration:(unint64_t)a3 responseHandler:(id)a4;
- (void)relinquishSEProxy;
- (void)rkeSendFunction:(id)a3 action:(id)a4 authorization:(id)a5 completion:(id)a6;
- (void)testSendToAlternativeCarrier:(id)a3 completion:(id)a4;
@end

@implementation STSSession

- (void)generateHandoverRequestForQRCodeWithConfiguration:(unint64_t)a3 responseHandler:(id)a4
{
  v52[4] = *MEMORY[0x277D85DE8];
  v7 = a4;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]", 64, self, @"dataRetrievalType = 0x%x", v8, v9, a3);
  v10 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]", 67, self, @"Invalid ISO18013 configuration", v12, v13, v46);
    v32 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v52[0] = v19;
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
    v7[2](v7, 0, v35);

    goto LABEL_13;
  }

  v14 = [ISO18013Handler alloc];
  v15 = [(STSSessionBase *)self callbackQueue];
  v16 = v15;
  if (!v14)
  {

    goto LABEL_12;
  }

  v17 = sub_265380088(v14, self, v14, 1, v15);

  if (!v17)
  {
LABEL_12:
    v40 = MEMORY[0x277CCA9B8];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
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
    v44 = [v40 errorWithDomain:v19 code:10 userInfo:v43];
    v7[2](v7, 0, v44);

    v17 = 0;
    goto LABEL_13;
  }

  v18 = [(STSSessionBase *)self handler];
  v19 = [v18 activeSTSCredential];

  v20 = [(STSSessionBase *)self handler];
  v21 = [v20 consumeHandoffToken];
  [v17 retainUnusedHandoffToken:v21];

  v22 = [(STSSessionBase *)self handler];
  [v22 tearDownWithCompletion:0];

  [(STSSessionBase *)self setHandler:v17];
  v23 = [(STSSessionBase *)self handler];
  v24 = [v23 setActiveCredential:v19];

  [(STSSession *)self setSendRequestCompletion:v7];
  v25 = [[NFSecureElementProxyListener alloc] initWithSTSSession:self];
  [(STSSession *)self setSeProxyListener:v25];

  v26 = v17[10];
  v27 = [(STSSession *)self seProxyListener];
  v28 = [(STSSessionBase *)self callbackQueue];
  v29 = [v26 startSEProxyListener:v27 parameters:MEMORY[0x277CBEC10] workQueue:v28];

  if (v29)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]", 113, self, @"SE proxy listener start error=%{public}@", v30, v31, v29);
    v7[2](v7, 0, v29);
  }

  else
  {
    v36 = a3 & 7 | 0x40;
    v37 = v17[10];
    v38 = [v37 startISO18013WithConnectionHandoverConfiguration:v36 type:0 credentialType:2 delegate:self];

    if (v38)
    {
      v7[2](v7, 0, v38);
    }

    else
    {
      v39 = v17[10];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_26537E740;
      v47[3] = &unk_279B93C08;
      v47[4] = self;
      v48 = v7;
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
  v5 = [(STSSessionBase *)self handler];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 80);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v8 stopSEProxyListener];

  [(STSSession *)self setSeProxyListener:0];
}

- (void)_activateInvalidationHandler:(id)a3
{
  v4 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Identity) _activateInvalidationHandler:]", 166, self, @"error=%@", v5, v6, v4);
  objc_initWeak(&location, self);
  v7 = [(STSSessionBase *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26537EA28;
  block[3] = &unk_279B93B68;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_translateXPCClientNotificationStatus:(unint64_t)a3
{
  v4 = 0;
  v34[4] = *MEMORY[0x277D85DE8];
  if (a3 > 5)
  {
    if (a3 > 7)
    {
      if (a3 == 8)
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
        if (a3 != 9)
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
      if (a3 == 6)
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
    if (a3 <= 3)
    {
      if (a3 - 1 >= 2)
      {
        if (a3 != 3)
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

    if (a3 == 4)
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

- (void)fireFieldNotificationEvent:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didReceiveFieldNotification:v5];
  }
}

- (void)fireSessionDidConsumeAuthorizationEvent
{
  v3 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 stsSessionDidConsumeAuthorization:self];
  }
}

- (void)fireTransactionStartEvent:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didStartTransaction:v5];
  }
}

- (void)fireTransactionEndEvent:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didEndTransaction:v5];
  }
}

- (void)fireExpressModeStateChangeWithInfo:(id)a3
{
  v8 = a3;
  v4 = [(STSSessionBase *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = v8;
    v6 = [v5 state];
    v7 = [v5 detail];

    [v4 stsSession:self didChangeExpressModeState:v6 withObject:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didChangeExpressModeWithInfo:v8];
  }
}

- (void)fireDidReceiveActivityTimeout:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didReceiveActivityTimeout:v5];
  }
}

- (void)fireDidPerformAuxiliaryTransactions:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didPerformAuxiliaryTransactions:v5];
  }
}

- (void)fireSessionEndEvent:(id)a3
{
  v5 = a3;
  if ([(STSSessionBase *)self hasStartedWithDelegate])
  {
    v4 = [(STSSessionBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 stsSession:self didEnd:v5];
    }
  }
}

- (void)fireDidReceive18013Requests:(id)a3 readerAuthInfo:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 stsSession:self didReceive18013Requests:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 stsSession:self didReceive18013Requests:v8 readerAuthInfo:v6];
  }
}

- (void)fireDidReceivePassthroughMessage:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self didReceivePassthroughMessage:v5];
  }
}

- (void)fireDigitalCarKeyEventPayload:(id)a3
{
  v5 = a3;
  v4 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 stsSession:self digitalCarKeyEventPayload:v5];
  }
}

- (void)fireRequestHandoverConfirmation
{
  v3 = [(STSSessionBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 stsSessionRequestHandoffConfirmation:self];
  }
}

- (id)setAuxiliaryCredentials:(id)a3
{
  v40[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _os_activity_create(&dword_26536F000, "setAuxiliaryCredentials:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 23, self, @"%@", v7, v8, v5);
  v9 = [(STSSessionBase *)self handler];

  if (v9)
  {
    v12 = [(STSSessionBase *)self handler];
    v13 = [v12 supportedCredentialType];

    if (v13 == 1)
    {
      goto LABEL_6;
    }

    v14 = [(STSSessionBase *)self handler];
    v15 = [v14 activeSTSCredential];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 33, self, @"new handler required, switching credential from %@ to STSCredentialTypeApplet", v16, v17, v15);

    v18 = [(STSTransactionHandler *)[PaymentHandler alloc] initWithParent:self];
    v19 = [(STSSessionBase *)self handler];
    [v19 tearDownWithCompletion:0];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 27, self, @"Creating initial handler", v10, v11, v37);
    v18 = [(STSTransactionHandler *)[PaymentHandler alloc] initWithParent:self];
  }

  [(STSSessionBase *)self setHandler:v18];

LABEL_6:
  v20 = [(STSSessionBase *)self handler];

  if (v20)
  {
    v23 = [(STSSessionBase *)self activateChildSession];
    if (v23)
    {
      v26 = v23;
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(Auxiliary) setAuxiliaryCredentials:]", 43, self, @"Handler activation failure: %@", v24, v25, v23);
      v27 = v26;
      v28 = v27;
    }

    else
    {
      v34 = [(STSSessionBase *)self handler];
      v28 = sub_2653888E8(v34, v5);

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
  v3 = [(STSSessionBase *)self handler];

  if (v3)
  {
    v6 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = [(STSSessionBase *)self handler];
    v16 = v8;
    if (isKindOfClass)
    {
      v17 = sub_265396254(v8, v9, v10, v11, v12, v13, v14, v15);

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

- (id)rkeSendPassthroughMessage:(id)a3
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _os_activity_create(&dword_26536F000, "rkeSendPassthroughMessage:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  v7 = [(STSSessionBase *)self handler];

  if (v7)
  {
    v10 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = [(STSSessionBase *)self handler];
    v13 = v12;
    if (isKindOfClass)
    {
      v14 = sub_265396464(v12, v5);
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

- (void)rkeSendFunction:(id)a3 action:(id)a4 authorization:(id)a5 completion:(id)a6
{
  v52[4] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
  v16 = v14;
  v47 = v16;
  v17 = _Block_copy(aBlock);
  v18 = [(STSSessionBase *)self handler];

  if (!v18)
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
    v45 = v13;
    v27 = v12;
    v28 = v11;
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v29;
    v51[3] = *MEMORY[0x277CCA068];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 75];
    v52[3] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
    v32 = [v25 errorWithDomain:v24 code:9 userInfo:v31];
    v17[2](v17, 0, v32);

    v11 = v28;
    v12 = v27;
LABEL_7:
    v13 = v45;

    goto LABEL_8;
  }

  v21 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v23 = [(STSSessionBase *)self handler];
  v24 = v23;
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
    v45 = v13;
    v38 = v37 = v11;
    v50[2] = v38;
    v49[3] = *MEMORY[0x277CCA068];
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 78];
    v50[3] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
    v41 = [v44 errorWithDomain:v24 code:11 userInfo:v40];
    v17[2](v17, 0, v41);

    v11 = v37;
    goto LABEL_7;
  }

  if (v23)
  {
    [*(v23 + 64) sendRKEFunction:v11 action:v12 authorization:v13 completion:v17];
  }

LABEL_8:

  v42 = *MEMORY[0x277D85DE8];
}

- (id)rkeCancelFunction:(id)a3
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _os_activity_create(&dword_26536F000, "rkeCancelFunction:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  v7 = [(STSSessionBase *)self handler];

  if (v7)
  {
    v10 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = [(STSSessionBase *)self handler];
    v13 = v12;
    if (isKindOfClass)
    {
      v14 = sub_2653968C0(v12, v5);
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

- (id)rkePauseRangingForReaderIdentifier:(id)a3 durationInSec:(id)a4
{
  v38[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_26536F000, "rkePauseRangingForReaderIdentifier:durationInSec:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = [(STSSessionBase *)self handler];

  if (v10)
  {
    v13 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = [(STSSessionBase *)self handler];
    v16 = v15;
    if (isKindOfClass)
    {
      v17 = sub_265396900(v15, v7, v8);
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

- (id)rkeResumeRangingForReaderIdentifier:(id)a3
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _os_activity_create(&dword_26536F000, "rkeResumeRangingForReaderIdentifier:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  v7 = [(STSSessionBase *)self handler];

  if (v7)
  {
    v10 = [(STSSessionBase *)self handler];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = [(STSSessionBase *)self handler];
    v13 = v12;
    if (isKindOfClass)
    {
      v14 = sub_265396940(v12, v5);
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

- (id)rkeGetVehicleReports:(id *)a3
{
  v34[4] = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_26536F000, "rkeGetVehicleReports:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  v7 = [(STSSessionBase *)self handler];

  if (!v7)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeGetVehicleReports:]", 135, self, @"No handler available", v8, v9, v29);
    if (!a3)
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
    *a3 = [v19 errorWithDomain:v20 code:v21 userInfo:v18];

    a3 = 0;
    goto LABEL_9;
  }

  v10 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [(STSSessionBase *)self handler];
  v13 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession(RKE) rkeGetVehicleReports:]", 141, self, @"Invalid handler - %@", v24, v25, v23);

    if (!a3)
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

  a3 = sub_2653962B8(v12, a3);
LABEL_9:

LABEL_10:
  v27 = *MEMORY[0x277D85DE8];

  return a3;
}

+ (id)requestAssertionForKeyID:(id)a3 options:(id)a4 outError:(id *)a5
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"STS.fwk", a4}];
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
    *a5 = [v7 errorWithDomain:v8 code:11 userInfo:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)createHandlerForCredential:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 0;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v12 = UnifiedAccessHandler;
        break;
      case 4:
        v12 = DigitalCarKeyHandler;
        break;
      case 5:
        v6 = [ISO18013HybridHandler alloc];
        v7 = [(STSSessionBase *)self callbackQueue];
        if (!v6)
        {
          goto LABEL_13;
        }

        v8 = sub_26538C184(v6, self, v6, 0, v7);
        goto LABEL_12;
      default:
        goto LABEL_19;
    }
  }

  else
  {
    if (!v5)
    {
      v9 = [v4 type];
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession createHandlerForCredential:]", 42, self, @"Unsupported credential type %02x", v10, v11, v9);
      v6 = 0;
      goto LABEL_19;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      v6 = [ISO18013Handler alloc];
      v7 = [(STSSessionBase *)self callbackQueue];
      if (!v6)
      {
        goto LABEL_13;
      }

      v8 = sub_265380088(v6, self, v6, 0, v7);
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

- (id)startWithDelegate:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_26536F000, "startWithDelegate:callback:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession startWithDelegate:callback:]", 60, self, &stru_2876E3E50, v9, v10, v16[0]);
  v11 = [(STSSession *)self canStartSession];
  if (v11)
  {
    v12 = [(STSSessionBase *)self callbackQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_26539BCD8;
    v16[3] = &unk_279B93848;
    v18 = v7;
    v13 = v11;
    v17 = v13;
    dispatch_async(v12, v16);

    v14 = v13;
  }

  else
  {
    LOBYTE(state.opaque[0]) = 0;
    [(STSSessionBase *)self setTheStartCallback:v7];
    [(STSSessionBase *)self startWithDelegate:v6 isFirstInQueue:&state];
  }

  return v11;
}

- (id)startWithDelegate:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_26536F000, "startWithDelegate:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v5, &v12);
  os_activity_scope_leave(&v12);

  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession startWithDelegate:]", 79, self, &stru_2876E3E50, v6, v7, v12.opaque[0]);
  v8 = [(STSSession *)self canStartSession];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    LOBYTE(v12.opaque[0]) = 0;
    [(STSSessionBase *)self startWithDelegate:v4 isFirstInQueue:&v12];
  }

  return v9;
}

- (id)canStartSession
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = [(STSSessionBase *)self nfHardwareManager];
  if ([v4 getHwSupport] == 2)
  {
    v26 = 1;
    v7 = [v4 getRadioEnabledState:&v26];
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

- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4
{
  v28[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = _os_activity_create(&dword_26536F000, "startTransactionWithAuthorization:options:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v9 = [(STSSessionBase *)self handler];

  if (v9)
  {
    v12 = [(STSSessionBase *)self activateChildSession];
    if (v12)
    {
      v15 = v12;
      v16 = v15;
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession startTransactionWithAuthorization:options:]", 124, self, @"options: 0x%04x", v13, v14, a4);
      v22 = [(STSSessionBase *)self handler];
      v16 = [v22 startTransactionWithAuthorization:v7 options:a4];

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

  v5 = [(STSSessionBase *)self handler];

  if (v5)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession stopTransaction]", 136, self, &stru_2876E3E50, v6, v7, v17);
    v8 = [(STSSessionBase *)self handler];
    v9 = [v8 stopTransaction];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSession stopTransaction]", 132, self, @"Handler invalid", v6, v7, v17);
    v10 = MEMORY[0x277CCA9B8];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
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
    v9 = [v10 errorWithDomain:v8 code:9 userInfo:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)enableExpressModeForActiveCredential:(BOOL)a3
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

- (id)releaseCredential:(id)a3 withAuthorization:(id)a4
{
  v15[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"STS.fwk", a4}];
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

- (id)releaseCredential:(id)a3 withAuthorization:(id)a4 iso18013Selection:(id)a5
{
  v29[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _os_activity_create(&dword_26536F000, "releaseCredential:withAuthorization:iso18013Selection:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  v13 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v15 = [(STSSessionBase *)self handler];
  v16 = v15;
  if (isKindOfClass)
  {
    v17 = sub_2653812A0(v15, v9, v10, v11);
LABEL_5:
    v19 = v17;
    goto LABEL_7;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v18)
  {
    v16 = [(STSSessionBase *)self handler];
    v17 = sub_26538E56C(v16, v9, v10, v11);
    goto LABEL_5;
  }

  v20 = MEMORY[0x277CCA9B8];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
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
  v19 = [v20 errorWithDomain:v16 code:11 userInfo:v24];

LABEL_7:
  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)startHandoff
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [(STSSessionBase *)self handler];
  v7 = v6;
  if (isKindOfClass)
  {
    if (v6)
    {
      v8 = *(v6 + 72);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 startHandoff];
  }

  else
  {
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = [(STSSessionBase *)self handler];
      v13 = v12;
      if (v12)
      {
        v14 = *(v12 + 72);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v10 = [v15 startHandoff];
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
      v10 = [v16 errorWithDomain:v13 code:9 userInfo:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)startWithNotificationTesterDelegate:(id)a3 outNotificationListener:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_26536F000, "startWithNotificationTesterDelegate:outNotificationListener:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v7, &v16);
  os_activity_scope_leave(&v16);

  v8 = [ISO18013Handler alloc];
  v9 = [(STSSessionBase *)self callbackQueue];
  v10 = sub_265380234(v8, v6, self, v9);

  [(STSSessionBase *)self setHandler:v10];
  if (a4)
  {
    if (v10)
    {
      v11 = v10[9];
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
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
  v14 = [v13 xpcEndpoint];

  return v14;
}

- (void)testSendToAlternativeCarrier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_26536F000, "testSendToAlternativeCarrier:completion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = [(STSSessionBase *)self handler];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [(STSSessionBase *)self handler];
  v13 = sub_2653837C8(ISO18013Handler, v12);

  if (v13)
  {
    v14 = [(STSSessionBase *)self handler];
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 72);
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
    v22 = v8;
    v19 = v8;
    [v17 alternativerCarrierSend:v7 completion:v21];
  }

  else
  {
LABEL_6:
    v15 = [(STSSessionBase *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_26539D2B8;
    block[3] = &unk_279B93AF8;
    v18 = v24;
    v24[0] = v8;
    v24[1] = a2;
    v20 = v8;
    dispatch_async(v15, block);
  }
}

- (id)felicaCredentialState:(id)a3 error:(id *)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(STSSessionBase *)self handler];
    a4 = sub_265389320(v10, v7, a4);
  }

  else if (a4)
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
    *a4 = [v11 errorWithDomain:v12 code:11 userInfo:v16];

    a4 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)transitCredentialState:(id)a3 error:(id *)a4
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(STSSessionBase *)self handler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(STSSessionBase *)self handler];
    a4 = sub_265389920(v10, v7, a4);
  }

  else if (a4)
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
    *a4 = [v11 errorWithDomain:v12 code:11 userInfo:v16];

    a4 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return a4;
}

@end