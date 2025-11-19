@interface SignPeerPaymentHandler
- (STSSigningSession)parent;
- (SignPeerPaymentHandler)initWithParent:(id)a3;
- (id)signPeerPayment:(id)a3 authorization:(id)a4 error:(id *)a5;
- (id)startNFSessionWithCompletion:(id)a3;
@end

@implementation SignPeerPaymentHandler

- (SignPeerPaymentHandler)initWithParent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SignPeerPaymentHandler;
  v5 = [(SignPeerPaymentHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, v4);
  }

  return v6;
}

- (id)startNFSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26537D43C;
  v9[3] = &unk_279B93BE0;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 startPeerPaymentSession:v9];

  return v7;
}

- (id)signPeerPayment:(id)a3 authorization:(id)a4 error:(id *)a5
{
  v61[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(STSHandler *)self activeSTSCredential];

  if (!v11)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 57, self, @"Credential does not exist!", v12, v13, v50);
    if (!a5)
    {
      goto LABEL_19;
    }

    v34 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v60[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v61[0] = v22;
    v61[1] = &unk_2876ED0C8;
    v60[1] = @"Line";
    v60[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v61[2] = v24;
    v60[3] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 59];
    v61[3] = v35;
    v36 = MEMORY[0x277CBEAC0];
    v37 = v61;
    v38 = v60;
LABEL_15:
    v44 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:4];
    v45 = v34;
    v46 = v28;
    v47 = 9;
LABEL_16:
    *a5 = [v45 errorWithDomain:v46 code:v47 userInfo:v44];

    goto LABEL_17;
  }

  v14 = [(STSHandler *)self activeSTSCredential];
  v15 = [v14 identifier];
  v16 = [v15 isEqualToString:0x2876E5030];

  if ((v16 & 1) == 0)
  {
    v39 = [(STSHandler *)self activeSTSCredential];
    v40 = [v39 identifier];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 65, self, @"AID is not supported by Peer Payment handler - %@", v41, v42, v40);

    if (!a5)
    {
      goto LABEL_19;
    }

    v43 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v58[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v59[0] = v22;
    v59[1] = &unk_2876ED0E0;
    v58[1] = @"Line";
    v58[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v59[2] = v24;
    v58[3] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 67];
    v59[3] = v35;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
    v45 = v43;
    v46 = v28;
    v47 = 8;
    goto LABEL_16;
  }

  if (!self->_nfPeerPaymentSession)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 74, self, @"NF session does not exist!", v17, v18, v50);
    if (!a5)
    {
      goto LABEL_19;
    }

    v34 = MEMORY[0x277CCA9B8];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v56[0] = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v57[0] = v22;
    v57[1] = &unk_2876ED0F8;
    v56[1] = @"Line";
    v56[2] = @"Method";
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v57[2] = v24;
    v56[3] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 76];
    v57[3] = v35;
    v36 = MEMORY[0x277CBEAC0];
    v37 = v57;
    v38 = v56;
    goto LABEL_15;
  }

  v19 = "is";
  if (!v10)
  {
    v19 = "is not";
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 81, self, @"Authorization %s available", v17, v18, v19);
  v20 = [(STSHandler *)self activeSTSCredential];
  v21 = [v20 identifier];
  v22 = [v9 toNFPeerPaymentRequest:v21];

  nfPeerPaymentSession = self->_nfPeerPaymentSession;
  v53 = 0;
  v24 = [(NFPeerPaymentSession *)nfPeerPaymentSession performPeerPayment:v10 request:v22 error:&v53];
  v25 = v53;
  v28 = v25;
  if (!v25)
  {
    a5 = [[STSPeerPaymentResponse alloc] initFromNFPeerPaymentResponse:v24];
    goto LABEL_18;
  }

  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler signPeerPayment:authorization:error:]", 89, self, @"start transaction failed = %@", v26, v27, v25);
  if (a5)
  {
    v29 = MEMORY[0x277CCA9B8];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v54[0] = *MEMORY[0x277CCA450];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v30 = *MEMORY[0x277CCA7E8];
    v55[0] = v52;
    v55[1] = v28;
    v54[1] = v30;
    v54[2] = @"Line";
    v55[2] = &unk_2876ED110;
    v54[3] = @"Method";
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v55[3] = v31;
    v54[4] = *MEMORY[0x277CCA068];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 91];
    v55[4] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:5];
    *a5 = [v29 errorWithDomain:v51 code:10 userInfo:v33];

LABEL_17:
    a5 = 0;
  }

LABEL_18:

LABEL_19:
  v48 = *MEMORY[0x277D85DE8];

  return a5;
}

- (STSSigningSession)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end