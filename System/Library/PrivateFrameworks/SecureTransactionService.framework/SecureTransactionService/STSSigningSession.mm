@interface STSSigningSession
- (id)_createHandlerForMerchantPaymentSign;
- (id)_createHandlerForPeerPaymentSign;
- (id)canStartSession;
- (id)setActiveCredential:(id)credential;
- (id)signInAppPayment:(id)payment authorization:(id)authorization error:(id *)error;
- (id)signPeerPayment:(id)payment authorization:(id)authorization error:(id *)error;
@end

@implementation STSSigningSession

- (id)canStartSession
{
  v19[4] = *MEMORY[0x277D85DE8];
  nfHardwareManager = [(STSSessionBase *)self nfHardwareManager];
  getHwSupport = [nfHardwareManager getHwSupport];

  if (getHwSupport == 2)
  {
    v8 = 0;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession canStartSession]", 25, self, @"Hardware not available", v6, v7, v17);
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v18[0] = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
    v19[0] = v11;
    v19[1] = &unk_2876ED758;
    v18[1] = @"Line";
    v18[2] = @"Method";
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v19[2] = v12;
    v18[3] = *MEMORY[0x277CCA068];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 26];
    v19[3] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v8 = [v9 errorWithDomain:v10 code:12 userInfo:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_createHandlerForMerchantPaymentSign
{
  v34[4] = *MEMORY[0x277D85DE8];
  if ([(STSCredential *)self->_activeCredential type]!= 1)
  {
    type = [(STSCredential *)self->_activeCredential type];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession _createHandlerForMerchantPaymentSign]", 42, self, @"Unsupported credential type %02x", v11, v12, type);
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v33[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v34[0] = v15;
    v34[1] = &unk_2876ED770;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v34[2] = v16;
    v33[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 43];
    v34[3] = v17;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v34;
    v20 = v33;
LABEL_9:
    v25 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:4];
    v9 = [v13 errorWithDomain:v14 code:9 userInfo:v25];

    goto LABEL_10;
  }

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    v6 = [handler2 isMemberOfClass:objc_opt_class()];

    if (v6)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSigningSession _createHandlerForMerchantPaymentSign]", 52, self, @"Using existing handler.", v7, v8, v30);
      v9 = 0;
      goto LABEL_10;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession _createHandlerForMerchantPaymentSign]", 48, self, @"Handler already exists but is of wrong class type", v7, v8, v30);
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v31[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v32[0] = v15;
    v32[1] = &unk_2876ED788;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v32[2] = v16;
    v31[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 49];
    v32[3] = v17;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v32;
    v20 = v31;
    goto LABEL_9;
  }

  v21 = [[SignMerchantPaymentHandler alloc] initWithParent:self];
  [(STSSessionBase *)self setHandler:v21];

  activateChildSession = [(STSSessionBase *)self activateChildSession];
  if (activateChildSession)
  {
    v9 = activateChildSession;
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession _createHandlerForMerchantPaymentSign]", 60, self, @"Handler activation failure: %@", v23, v24, activateChildSession);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSigningSession _createHandlerForMerchantPaymentSign]", 62, self, @"Setting new activeCredential %@ on handler", v23, v24, self->_activeCredential);
    handler3 = [(STSSessionBase *)self handler];
    v9 = [handler3 setActiveCredential:self->_activeCredential];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  handler4 = [(STSSessionBase *)self handler];
  [handler4 tearDownWithCompletion:0];

  [(STSSessionBase *)self setHandler:0];
LABEL_10:
  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_createHandlerForPeerPaymentSign
{
  v34[4] = *MEMORY[0x277D85DE8];
  if ([(STSCredential *)self->_activeCredential type]!= 1)
  {
    type = [(STSCredential *)self->_activeCredential type];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession _createHandlerForPeerPaymentSign]", 77, self, @"Unsupported credential type %02x", v11, v12, type);
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v33[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v34[0] = v15;
    v34[1] = &unk_2876ED7A0;
    v33[1] = @"Line";
    v33[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v34[2] = v16;
    v33[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 78];
    v34[3] = v17;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v34;
    v20 = v33;
LABEL_9:
    v25 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:4];
    v9 = [v13 errorWithDomain:v14 code:9 userInfo:v25];

    goto LABEL_10;
  }

  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    handler2 = [(STSSessionBase *)self handler];
    v6 = [handler2 isMemberOfClass:objc_opt_class()];

    if (v6)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSigningSession _createHandlerForPeerPaymentSign]", 87, self, @"Using existing handler.", v7, v8, v30);
      v9 = 0;
      goto LABEL_10;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession _createHandlerForPeerPaymentSign]", 83, self, @"Handler already exists but is of wrong class type", v7, v8, v30);
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v31[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v32[0] = v15;
    v32[1] = &unk_2876ED7B8;
    v31[1] = @"Line";
    v31[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v32[2] = v16;
    v31[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 84];
    v32[3] = v17;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v32;
    v20 = v31;
    goto LABEL_9;
  }

  v21 = [[SignPeerPaymentHandler alloc] initWithParent:self];
  [(STSSessionBase *)self setHandler:v21];

  activateChildSession = [(STSSessionBase *)self activateChildSession];
  if (activateChildSession)
  {
    v9 = activateChildSession;
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession _createHandlerForPeerPaymentSign]", 95, self, @"Handler activation failure: %@", v23, v24, activateChildSession);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSigningSession _createHandlerForPeerPaymentSign]", 97, self, @"Seting new activeCredential %@ on handler", v23, v24, self->_activeCredential);
    handler3 = [(STSSessionBase *)self handler];
    v9 = [handler3 setActiveCredential:self->_activeCredential];

    if (!v9)
    {
      goto LABEL_10;
    }
  }

  handler4 = [(STSSessionBase *)self handler];
  [handler4 tearDownWithCompletion:0];

  [(STSSessionBase *)self setHandler:0];
LABEL_10:
  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)signPeerPayment:(id)payment authorization:(id)authorization error:(id *)error
{
  v29[4] = *MEMORY[0x277D85DE8];
  paymentCopy = payment;
  authorizationCopy = authorization;
  v11 = _os_activity_create(&dword_26536F000, "signPeerPayment:authorization:error:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if ([paymentCopy isMemberOfClass:objc_opt_class()])
  {
    _createHandlerForPeerPaymentSign = [(STSSigningSession *)self _createHandlerForPeerPaymentSign];
    if (!_createHandlerForPeerPaymentSign)
    {
      handler = [(STSSessionBase *)self handler];
      v15 = [handler signPeerPayment:paymentCopy authorization:authorizationCopy error:error];

      v13 = 0;
      goto LABEL_9;
    }

    v13 = _createHandlerForPeerPaymentSign;
    if (error)
    {
      v14 = _createHandlerForPeerPaymentSign;
      v15 = 0;
      *error = v13;
LABEL_9:

      goto LABEL_10;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_9;
  }

  ClassName = object_getClassName(paymentCopy);
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession signPeerPayment:authorization:error:]", 115, self, @"Unsupported request type - %s", v17, v18, ClassName);
  if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v28[0] = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v29[0] = v20;
    v29[1] = &unk_2876ED7D0;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v29[2] = v21;
    v28[3] = *MEMORY[0x277CCA068];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 117];
    v29[3] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    *error = [v19 errorWithDomain:v13 code:8 userInfo:v23];

    goto LABEL_7;
  }

  v15 = 0;
LABEL_10:

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)signInAppPayment:(id)payment authorization:(id)authorization error:(id *)error
{
  v29[4] = *MEMORY[0x277D85DE8];
  paymentCopy = payment;
  authorizationCopy = authorization;
  v11 = _os_activity_create(&dword_26536F000, "signInAppPayment:authorization:error:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if ([paymentCopy isMemberOfClass:objc_opt_class()])
  {
    _createHandlerForMerchantPaymentSign = [(STSSigningSession *)self _createHandlerForMerchantPaymentSign];
    if (!_createHandlerForMerchantPaymentSign)
    {
      handler = [(STSSessionBase *)self handler];
      v15 = [handler signInAppPayment:paymentCopy authorization:authorizationCopy error:error];

      v13 = 0;
      goto LABEL_9;
    }

    v13 = _createHandlerForMerchantPaymentSign;
    if (error)
    {
      v14 = _createHandlerForMerchantPaymentSign;
      v15 = 0;
      *error = v13;
LABEL_9:

      goto LABEL_10;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_9;
  }

  ClassName = object_getClassName(paymentCopy);
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession signInAppPayment:authorization:error:]", 142, self, @"Unsupported request type - %s", v17, v18, ClassName);
  if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v28[0] = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v29[0] = v20;
    v29[1] = &unk_2876ED7E8;
    v28[1] = @"Line";
    v28[2] = @"Method";
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v29[2] = v21;
    v28[3] = *MEMORY[0x277CCA068];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 144];
    v29[3] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    *error = [v19 errorWithDomain:v13 code:8 userInfo:v23];

    goto LABEL_7;
  }

  v15 = 0;
LABEL_10:

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)setActiveCredential:(id)credential
{
  v52[4] = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v7 = _os_activity_create(&dword_26536F000, "setActiveCredential:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSigningSession setActiveCredential:]", 165, self, @"%@", v8, v9, credentialCopy);
  handler = [(STSSessionBase *)self handler];

  if (handler)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSigningSession setActiveCredential:]", 168, self, @"New handler will be required, Tearing down current handler.", v11, v12, v46);
    handler2 = [(STSSessionBase *)self handler];
    [handler2 tearDownWithCompletion:0];

    [(STSSessionBase *)self setHandler:0];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSSigningSession setActiveCredential:]", 172, self, @"Waiting for Control SE session ready", v14, v15, v47);
    v16 = [(STSSessionBase *)self waitForControlSessionToBeReady:1];
    if (v16)
    {
      v19 = v16;
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession setActiveCredential:]", 176, self, @"Control SE session not ready: %@", v17, v18, v16);
      goto LABEL_13;
    }
  }

  identifier = [credentialCopy identifier];
  v21 = [identifier length];

  if (v21)
  {
    masterSESession = [(STSSessionBase *)self masterSESession];
    identifier2 = [credentialCopy identifier];
    v26 = [masterSESession appletWithIdentifier:identifier2];

    if (v26)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSigningSession setActiveCredential:]", 184, self, @"Applet is present: applet=%@", v27, v28, v26);
LABEL_10:

      objc_storeStrong(&self->_activeCredential, credential);
      v19 = 0;
      goto LABEL_13;
    }

    identifier3 = [credentialCopy identifier];
    v38 = [identifier3 isEqualToString:0x2876E5030];

    identifier4 = [credentialCopy identifier];
    v42 = identifier4;
    if (v38)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSigningSession setActiveCredential:]", 192, self, @"Applet is presumed to be present = %@", v40, v41, identifier4);

      goto LABEL_10;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession setActiveCredential:]", 189, self, @"Applet not found for identifier = %@", v40, v41, identifier4);

    v29 = MEMORY[0x277CCA9B8];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v52[0] = v31;
    v52[1] = &unk_2876ED800;
    v51[1] = @"Line";
    v51[2] = @"Method";
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v32;
    v51[3] = *MEMORY[0x277CCA068];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 190];
    v52[3] = v33;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v52;
    v36 = v51;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSigningSession setActiveCredential:]", 196, self, @"Credential did not specify an AID", v22, v23, v46);
    v29 = MEMORY[0x277CCA9B8];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v49[0] = *MEMORY[0x277CCA450];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v50[0] = v31;
    v50[1] = &unk_2876ED818;
    v49[1] = @"Line";
    v49[2] = @"Method";
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v50[2] = v32;
    v49[3] = *MEMORY[0x277CCA068];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 197];
    v50[3] = v33;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v50;
    v36 = v49;
  }

  v43 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:4];
  v19 = [v29 errorWithDomain:v30 code:8 userInfo:v43];

LABEL_13:
  v44 = *MEMORY[0x277D85DE8];

  return v19;
}

@end