@interface SignMerchantPaymentHandler
- (STSSigningSession)parent;
- (SignMerchantPaymentHandler)initWithParent:(id)parent;
- (id)signInAppPayment:(id)payment authorization:(id)authorization error:(id *)error;
- (id)startNFSessionWithCompletion:(id)completion;
@end

@implementation SignMerchantPaymentHandler

- (SignMerchantPaymentHandler)initWithParent:(id)parent
{
  parentCopy = parent;
  v8.receiver = self;
  v8.super_class = SignMerchantPaymentHandler;
  v5 = [(SignMerchantPaymentHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, parentCopy);
  }

  return v6;
}

- (id)startNFSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  nfHardwareManager = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2653942D4;
  v9[3] = &unk_279B940A8;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [nfHardwareManager startECommercePaymentSession:v9];

  return v7;
}

- (id)signInAppPayment:(id)payment authorization:(id)authorization error:(id *)error
{
  v57[4] = *MEMORY[0x277D85DE8];
  paymentCopy = payment;
  authorizationCopy = authorization;
  activeSTSCredential = [(STSHandler *)self activeSTSCredential];

  if (activeSTSCredential)
  {
    if ([paymentCopy isMemberOfClass:objc_opt_class()])
    {
      if (self->_nfECommerceSession)
      {
        v16 = "is";
        if (!authorizationCopy)
        {
          v16 = "is not";
        }

        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[SignMerchantPaymentHandler signInAppPayment:authorization:error:]", 76, self, @"Authorization %s available", v14, v15, v16);
        v17 = paymentCopy;
        activeSTSCredential2 = [(STSHandler *)self activeSTSCredential];
        identifier = [activeSTSCredential2 identifier];

        v20 = [v17 toNFECommercePaymentRequest:identifier];
        nfECommerceSession = self->_nfECommerceSession;
        v49 = 0;
        v22 = [(NFECommercePaymentSession *)nfECommerceSession performECommercePayment:authorizationCopy request:v20 error:&v49];
        v23 = v49;
        v26 = v23;
        if (v23)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignMerchantPaymentHandler signInAppPayment:authorization:error:]", 86, self, @"start transaction failed = %@", v24, v25, v23);
          if (error)
          {
            v48 = MEMORY[0x277CCA9B8];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v50[0] = *MEMORY[0x277CCA450];
            v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
            v27 = *MEMORY[0x277CCA7E8];
            v51[0] = v47;
            v51[1] = v26;
            v50[1] = v27;
            v50[2] = @"Line";
            v51[2] = &unk_2876ED878;
            v50[3] = @"Method";
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
            v51[3] = v45;
            v50[4] = *MEMORY[0x277CCA068];
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 88];
            v51[4] = v28;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:5];
            *error = [v48 errorWithDomain:v46 code:10 userInfo:v29];
          }

          v30 = 0;
        }

        else
        {
          v30 = [[STSMerchantPaymentResponse alloc] initFromNFECommercePaymentResponse:v22];
        }

        goto LABEL_18;
      }

      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignMerchantPaymentHandler signInAppPayment:authorization:error:]", 69, self, @"NF session does not exist!", v14, v15, v44);
      if (error)
      {
        v31 = MEMORY[0x277CCA9B8];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v52[0] = *MEMORY[0x277CCA450];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
        v53[0] = v17;
        v53[1] = &unk_2876ED860;
        v52[1] = @"Line";
        v52[2] = @"Method";
        identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v53[2] = identifier;
        v52[3] = *MEMORY[0x277CCA068];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 71];
        v53[3] = v20;
        v32 = MEMORY[0x277CBEAC0];
        v33 = v53;
        v34 = v52;
        goto LABEL_16;
      }
    }

    else
    {
      ClassName = object_getClassName(paymentCopy);
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignMerchantPaymentHandler signInAppPayment:authorization:error:]", 61, self, @"Class %s is not supported!", v36, v37, ClassName);
      if (error)
      {
        v38 = MEMORY[0x277CCA9B8];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v54[0] = *MEMORY[0x277CCA450];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
        v55[0] = v17;
        v55[1] = &unk_2876ED848;
        v54[1] = @"Line";
        v54[2] = @"Method";
        identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
        v55[2] = identifier;
        v54[3] = *MEMORY[0x277CCA068];
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 63];
        v55[3] = v20;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
        v39 = v38;
        v40 = v26;
        v41 = 8;
LABEL_17:
        [v39 errorWithDomain:v40 code:v41 userInfo:v22];
        *error = v30 = 0;
LABEL_18:

        goto LABEL_20;
      }
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignMerchantPaymentHandler signInAppPayment:authorization:error:]", 55, self, @"Credential does not exist!", v12, v13, v44);
    if (error)
    {
      v31 = MEMORY[0x277CCA9B8];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v56[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v57[0] = v17;
      v57[1] = &unk_2876ED830;
      v56[1] = @"Line";
      v56[2] = @"Method";
      identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v57[2] = identifier;
      v56[3] = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 57];
      v57[3] = v20;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v57;
      v34 = v56;
LABEL_16:
      v22 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:4];
      v39 = v31;
      v40 = v26;
      v41 = 9;
      goto LABEL_17;
    }
  }

  v30 = 0;
LABEL_20:

  v42 = *MEMORY[0x277D85DE8];

  return v30;
}

- (STSSigningSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end