@interface ISO18013HybridHandler
- (id)setActiveCredential:(id)a3;
- (id)setActiveCredentials:(id)a3;
- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4;
- (id)stopTransaction;
- (void)alternativeCarrierConnectedWithStatus:(unint64_t)a3;
- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)a3;
- (void)connectionHandoverCompleted:(id)a3;
- (void)notificationClientConnected;
- (void)processISO18013CredentialProposals:(id)a3 readerAuthInfo:(id)a4;
- (void)session:(id)a3 connectionHandoverProcessFailure:(id)a4;
- (void)session:(id)a3 didEndTransaction:(id)a4;
- (void)session:(id)a3 didEndUnexpectedly:(id)a4;
- (void)session:(id)a3 didEnterFieldWithNotification:(id)a4;
- (void)session:(id)a3 didExpireTransactionForApplet:(id)a4;
- (void)session:(id)a3 didStartTransaction:(id)a4;
- (void)session:(id)a3 fieldChange:(BOOL)a4;
- (void)session:(id)a3 fieldNotification:(id)a4;
- (void)session:(id)a3 tnepService:(id)a4;
- (void)sessionDidExitField:(id)a3;
- (void)tearDownWithCompletion:(id)a3;
- (void)transactionEndedWithIdentifier:(id)a3 error:(id)a4;
- (void)transactionStarted:(unint64_t)a3;
- (void)xpcInterrupted;
- (void)xpcInvalidated;
@end

@implementation ISO18013HybridHandler

- (id)setActiveCredential:(id)a3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 type];
    if (v7 == [(ISO18013HybridHandler *)self supportedCredentialType])
    {
      v10 = [v6 subIdentifier];
      if (v10)
      {
        v13 = v10;
        v14 = [v6 subIdentifier];
        v15 = [v14 lengthOfBytesUsingEncoding:4];

        if (v15)
        {
          v16 = [STSCredential alloc];
          v17 = [v6 type];
          v18 = [v6 identifier];
          v19 = [(STSCredential *)v16 initWithType:v17 identifier:v18 subIdentifier:0];

          v34[0] = v6;
          v34[1] = v19;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
          v21 = [(ISO18013HybridHandler *)self setActiveCredentials:v20];

          goto LABEL_10;
        }
      }

      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler setActiveCredential:]", 225, self, @"Missing required subIdentifier", v11, v12, v33);
      v22 = MEMORY[0x277CCA9B8];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v35[0] = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v36[0] = v24;
      v36[1] = &unk_2876ED638;
      v35[1] = @"Line";
      v35[2] = @"Method";
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v36[2] = v25;
      v35[3] = *MEMORY[0x277CCA068];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 226];
      v36[3] = v26;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v36;
      v29 = v35;
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler setActiveCredential:]", 219, self, @"Invalid credential type", v8, v9, v33);
      v22 = MEMORY[0x277CCA9B8];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v37[0] = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v38[0] = v24;
      v38[1] = &unk_2876ED620;
      v37[1] = @"Line";
      v37[2] = @"Method";
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v38[2] = v25;
      v37[3] = *MEMORY[0x277CCA068];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 220];
      v38[3] = v26;
      v27 = MEMORY[0x277CBEAC0];
      v28 = v38;
      v29 = v37;
    }

    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:4];
    v21 = [v22 errorWithDomain:v23 code:8 userInfo:v30];
  }

  else
  {
    v21 = [(ISO18013HybridHandler *)self setActiveCredentials:0];
  }

LABEL_10:

  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)setActiveCredentials:(id)a3
{
  v91[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    sub_26538DF04(self, 0);
    v80.receiver = self;
    v80.super_class = ISO18013HybridHandler;
    v15 = [(STSHandler *)&v80 setActiveCredentials:0];
    goto LABEL_12;
  }

  if ([v5 count] != 2)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler setActiveCredentials:]", 247, self, @"Non expected number of credentials provided", v7, v8, v59);
    v16 = MEMORY[0x277CCA9B8];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v90[0] = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v91[0] = v18;
    v91[1] = &unk_2876ED650;
    v90[1] = @"Line";
    v90[2] = @"Method";
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v91[2] = v19;
    v90[3] = *MEMORY[0x277CCA068];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 248];
    v91[3] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:4];
    v15 = [v16 errorWithDomain:v17 code:8 userInfo:v21];

    goto LABEL_12;
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_26538CF08;
  v78 = sub_26538CF18;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_26538CF08;
  v72 = sub_26538CF18;
  v73 = 0;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_26538DF1C;
  v67[3] = &unk_279B93FE0;
  v67[4] = self;
  v67[5] = &v74;
  v67[6] = &v68;
  [v6 enumerateObjectsUsingBlock:v67];
  if (!v75[5] || !v69[5])
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler setActiveCredentials:]", 270, self, @"Invalid credential configuration", v9, v10, v59);
    v22 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v88[0] = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v89[0] = v11;
    v89[1] = &unk_2876ED668;
    v88[1] = @"Line";
    v88[2] = @"Method";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v89[2] = v23;
    v88[3] = *MEMORY[0x277CCA068];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 271];
    v89[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
    v15 = [v22 errorWithDomain:v14 code:8 userInfo:v25];

    goto LABEL_11;
  }

  v66 = 0;
  v11 = sub_26538C400(self, &v66);
  v12 = v66;
  if (!v12)
  {
    v28 = v69[5];
    v87[0] = v75[5];
    v87[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
    v65.receiver = self;
    v65.super_class = ISO18013HybridHandler;
    v14 = [(STSHandler *)&v65 setActiveCredentials:v29];

    if (v14)
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v85[0] = *MEMORY[0x277CCA450];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v33 = *MEMORY[0x277CCA7E8];
      v86[0] = v32;
      v86[1] = v14;
      v85[1] = v33;
      v85[2] = @"Line";
      v86[2] = &unk_2876ED680;
      v85[3] = @"Method";
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v86[3] = v34;
      v85[4] = *MEMORY[0x277CCA068];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 282];
      v86[4] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:5];
      v15 = [v30 errorWithDomain:v31 code:10 userInfo:v36];

      goto LABEL_11;
    }

    v37 = v69[5];
    if (!v37)
    {
      v45 = 0;
LABEL_29:
      v13 = v45;
      goto LABEL_7;
    }

    v38 = [v37 identifier];
    v63 = [v11 appletWithIdentifier:v38];

    if (v63)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler setActiveCredentials:]", 289, self, @"applet %@", v39, v40, v63);
      v64 = 0;
      v41 = [v11 setActiveApplet:v63 authorization:0 error:&v64];
      v42 = v64;
      v45 = v42;
      if (v41)
      {
LABEL_28:
        sub_26538DF04(self, v69[5]);

        goto LABEL_29;
      }

      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler setActiveCredentials:]", 291, self, @"set active applet failed = %@", v43, v44, v42);
      v46 = MEMORY[0x277CCA9B8];
      v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v83[0] = *MEMORY[0x277CCA450];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v84[0] = v47;
      v83[1] = *MEMORY[0x277CCA7E8];
      v48 = v45;
      if (!v45)
      {
        v49 = MEMORY[0x277CCA9B8];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v48 = [v49 errorWithDomain:v61 code:5 userInfo:0];
      }

      v84[1] = v48;
      v84[2] = &unk_2876ED698;
      v83[2] = @"Line";
      v83[3] = @"Method";
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v84[3] = v60;
      v83[4] = *MEMORY[0x277CCA068];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 292];
      v84[4] = v50;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:5];
      v52 = [v46 errorWithDomain:v62 code:10 userInfo:v51];
      v53 = v45 == 0;

      v45 = v52;
      if (!v53)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v54 = [v69[5] identifier];
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler setActiveCredentials:]", 295, self, @"applet not found for identifier = %@", v55, v56, v54);

      v57 = MEMORY[0x277CCA9B8];
      v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v81[0] = *MEMORY[0x277CCA450];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
      v82[0] = v47;
      v82[1] = &unk_2876ED6B0;
      v81[1] = @"Line";
      v81[2] = @"Method";
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v82[2] = v61;
      v81[3] = *MEMORY[0x277CCA068];
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 296];
      v82[3] = v48;
      v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];
      v45 = [v57 errorWithDomain:v62 code:8 userInfo:v58];
    }

    goto LABEL_27;
  }

  v13 = v12;
LABEL_7:
  v14 = v13;
  v15 = v13;
LABEL_11:

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v74, 8);

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)stopTransaction
{
  v33[5] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler stopTransaction]", 341, self, &stru_2876E3E50, v2, v3, v28);
  v31.receiver = self;
  v31.super_class = ISO18013HybridHandler;
  v6 = [(STSTransactionHandler *)&v31 stopTransaction];
  v7 = [(STSHandler *)self activeSTSCredential];
  if (v7)
  {
    v8 = v7;
    v9 = [(STSHandler *)self activeSTSCredential];
    if ([v9 type] == 5)
    {
      v10 = [(STSHandler *)self activeSTSCredential];
      v11 = [v10 identifier];

      if (v11)
      {
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013HybridHandler stopTransaction]", 348, self, &stru_2876E3E50, v12, v13, v29);
        handoverSession = self->_handoverSession;
        v30 = v6;
        [(NFSecureTransactionServicesHandoverHybridSession *)handoverSession stopCardEmulation:&v30];
        v15 = v30;

        transactionState = self->_transactionState;
        v6 = v15;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!self)
  {
    goto LABEL_11;
  }

  transactionState = self->_transactionState;
LABEL_8:
  if (transactionState == 1 || (transactionState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v17 = [(STSTransactionHandler *)self parent];
    [v17 fireSessionDidEndUnexpectedlyEventWithStatus:3];
  }

LABEL_11:
  sub_26538E044(self, 0);
  if (v6)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v32[0] = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v21 = *MEMORY[0x277CCA7E8];
    v33[0] = v20;
    v33[1] = v6;
    v32[1] = v21;
    v32[2] = @"Line";
    v33[2] = &unk_2876ED6C8;
    v32[3] = @"Method";
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v33[3] = v22;
    v32[4] = *MEMORY[0x277CCA068];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 361];
    v33[4] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:5];
    v25 = [v18 errorWithDomain:v19 code:10 userInfo:v24];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)tearDownWithCompletion:(id)a3
{
  v7 = a3;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013HybridHandler tearDownWithCompletion:]", 365, self, &stru_2876E3E50, v4, v5, v6);
  sub_26538E044(self, v7);
}

- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4
{
  v90[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 413, self, @"options = 0x%04x", v8, v9, a4);
  if ((a4 & 4) != 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 415, self, @"Non supported options", v10, v11, v69);
    v45 = MEMORY[0x277CCA9B8];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v89[0] = *MEMORY[0x277CCA450];
    v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v90[0] = v47;
    v90[1] = &unk_2876ED6E0;
    v89[1] = @"Line";
    v89[2] = @"Method";
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v90[2] = v48;
    v89[3] = *MEMORY[0x277CCA068];
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 416];
    v90[3] = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:4];
    v51 = [v45 errorWithDomain:v46 code:8 userInfo:v50];

    goto LABEL_36;
  }

  if (self)
  {
    self->_startTransactionOption = a4;
  }

  v12 = [(STSHandler *)self activeSTSCredentials];
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 421, self, @"active credentials=%@", v13, v14, v12);

  v15 = [(STSHandler *)self activeSTSCredential];
  if ([v15 type] != 5)
  {

    goto LABEL_20;
  }

  v16 = [(STSHandler *)self activeSTSCredential];
  v17 = [v16 identifier];

  if (!v17)
  {
LABEL_20:
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_26538F3D8;
    v79[3] = &unk_279B93D88;
    v79[4] = self;
    os_unfair_lock_lock(&self->_handoverSessionMutex);
    v51 = sub_26538F3D8(v79);
    os_unfair_lock_unlock(&self->_handoverSessionMutex);
    goto LABEL_36;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 426, self, @"auth: %@", v18, v19, v7);
  v20 = [(STSHandler *)self activeSTSCredentials];
  if (![v20 count])
  {
    __assert_rtn("[ISO18013HybridHandler startTransactionWithAuthorization:options:]", "ISO18013HybridHandler.m", 428, "self.activeSTSCredentials.count > 0");
  }

  if (!self || (v21 = self->_jpkiCredential) == 0)
  {
    __assert_rtn("[ISO18013HybridHandler startTransactionWithAuthorization:options:]", "ISO18013HybridHandler.m", 429, "nil != self.jpkiCredential");
  }

  v82 = 0;
  v22 = sub_26538C400(self, &v82);
  v25 = v82;
  v78 = v22;
  if (self->_jpkiCredential)
  {
    v26 = [v22 activeApplet];
    v27 = [v26 identifier];

    if (v27)
    {
      v28 = [(STSCredential *)self->_jpkiCredential identifier];
      v29 = [v27 isEqualToString:v28];

      if (v29)
      {
        goto LABEL_27;
      }
    }

    v30 = [(STSCredential *)self->_jpkiCredential identifier];
    v31 = [v22 appletWithIdentifier:v30];

    if (v31)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 440, self, @"Activate JPKI applet", v32, v33, v70);
      v81 = v25;
      v34 = [v22 setActiveApplet:v31 authorization:0 error:&v81];
      v35 = v81;

      if (v34)
      {
LABEL_26:

        v25 = v35;
LABEL_27:

        goto LABEL_28;
      }

      v77 = v31;
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 442, self, @"set active applet failed = %@", v36, v37, v35);
      v72 = MEMORY[0x277CCA9B8];
      v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v87[0] = *MEMORY[0x277CCA450];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v88[0] = v76;
      v87[1] = *MEMORY[0x277CCA7E8];
      v38 = v35;
      if (!v35)
      {
        v39 = MEMORY[0x277CCA9B8];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v38 = [v39 errorWithDomain:? code:? userInfo:?];
      }

      v75 = v38;
      v88[1] = v38;
      v88[2] = &unk_2876ED6F8;
      v87[2] = @"Line";
      v87[3] = @"Method";
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v88[3] = v40;
      v87[4] = *MEMORY[0x277CCA068];
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 443];
      v88[4] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:5];
      v43 = v73;
      v44 = [v72 errorWithDomain:v73 code:10 userInfo:v42];

      if (v35)
      {
LABEL_25:

        v35 = v44;
        v31 = v77;
        v22 = v78;
        goto LABEL_26;
      }
    }

    else
    {
      v77 = 0;
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 446, self, @"JPKI applet is missing", v32, v33, v70);
      v74 = MEMORY[0x277CCA9B8];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v85[0] = *MEMORY[0x277CCA450];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v86[0] = v76;
      v85[1] = *MEMORY[0x277CCA7E8];
      v53 = v25;
      if (!v25)
      {
        v54 = MEMORY[0x277CCA9B8];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v53 = [v54 errorWithDomain:? code:? userInfo:?];
      }

      v75 = v53;
      v86[1] = v53;
      v86[2] = &unk_2876ED710;
      v85[2] = @"Line";
      v85[3] = @"Method";
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v86[3] = v55;
      v85[4] = *MEMORY[0x277CCA068];
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 447];
      v86[4] = v56;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:5];
      v43 = v52;
      v44 = [v74 errorWithDomain:v52 code:10 userInfo:v57];

      if (v25)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

LABEL_28:
  if (!v25)
  {
    v80 = 0;
    v58 = [v22 startCardEmulationWithAuthorization:v7 error:&v80];
    v25 = v80;
    if (v58)
    {

      goto LABEL_20;
    }
  }

  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler startTransactionWithAuthorization:options:]", 453, self, @"start transaction failed = %@", v23, v24, v25);
  v59 = MEMORY[0x277CCA9B8];
  v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v83[0] = *MEMORY[0x277CCA450];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
  v84[0] = v61;
  v83[1] = *MEMORY[0x277CCA7E8];
  v62 = v25;
  if (!v25)
  {
    v63 = MEMORY[0x277CCA9B8];
    v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v62 = [v63 errorWithDomain:? code:? userInfo:?];
  }

  v84[1] = v62;
  v84[2] = &unk_2876ED728;
  v83[2] = @"Line";
  v83[3] = @"Method";
  v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
  v84[3] = v64;
  v83[4] = *MEMORY[0x277CCA068];
  v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 454];
  v84[4] = v65;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:5];
  v51 = [v59 errorWithDomain:v60 code:10 userInfo:v66];

  if (!v25)
  {
  }

LABEL_36:
  v67 = *MEMORY[0x277D85DE8];

  return v51;
}

- (void)transactionStarted:(unint64_t)a3
{
  if (self)
  {
    transactionState = self->_transactionState;
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionStarted:]", 470, self, @"status=%lu, transactionState=%lu", v3, v4, a3);
    v9 = self->_transactionState;
    if (v9 > 4 || ((1 << v9) & 0x13) == 0)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionStarted:]", 476, self, @"Unexpected transaction state=%d", v7, v8, self->_transactionState);
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionStarted:]", 470, 0, @"status=%lu, transactionState=%lu", v3, v4, a3);
  }

  v11 = [(STSTransactionHandler *)self parent];
  if (a3 == 9)
  {
    if (self)
    {
      self->_transactionState = 1;
    }

    v18 = v11;
    [v11 fireRequestHandoverConfirmation];
  }

  else
  {
    if (a3)
    {
      goto LABEL_20;
    }

    v18 = v11;
    if (self && self->_transactionState >= 2)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionStarted:]", 488, self, @"Unexpected state, dropping start event", v12, v13, v16);
    }

    else
    {
      v14 = objc_opt_new();
      v15 = [(STSHandler *)self activeSTSCredential];
      [v14 setCredential:v15];

      [v14 setTransactionMode:4];
      [v18 fireTransactionStartEvent:v14];
      if (self)
      {
        self->_transactionState = 2;
      }
    }
  }

  v11 = v18;
LABEL_20:
}

- (void)transactionEndedWithIdentifier:(id)a3 error:(id)a4
{
  v22 = a3;
  v8 = a4;
  if (!self)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionEndedWithIdentifier:error:]", 512, 0, @"keyIdentifier: %@, error: %@", v6, v7, v22);
    goto LABEL_8;
  }

  if ((self->_transactionState & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionEndedWithIdentifier:error:]", 508, self, @"Dropping transaction end event, keyIdentifier: %@, error: %@", v6, v7, v22);
    goto LABEL_22;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler transactionEndedWithIdentifier:error:]", 512, self, @"keyIdentifier: %@, error: %@", v6, v7, v22);
  v9 = self->_releasedCredential;
  if (!v9)
  {
LABEL_8:
    v11 = [(STSHandler *)self activeSTSCredential];
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = 5;
    v11 = [STSCredential credentialWithType:5 identifier:0x2876E5050 subIdentifier:v22];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler transactionEndedWithIdentifier:error:]", 522, self, @"A credential is not available.  Creating a credential for event - credential=%@", v13, v14, v11);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = self->_releasedCredential;

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = 0;
LABEL_10:
  v15 = objc_alloc_init(STSTransactionEndEvent);
  [(STSTransactionEndEvent *)v15 setCredential:v11];
  [(STSTransactionEndEvent *)v15 setStatus:v12];
  if (v8)
  {
    v16 = [v8 domain];
    v17 = [v16 isEqual:@"STSXPCHelperErrorDomain"];

    if (v17)
    {
      v18 = [v8 code];
      v19 = 3;
      if (v18 == 14)
      {
        v19 = 4;
      }

      if (v18 == 15)
      {
        v20 = 6;
      }

      else
      {
        v20 = v19;
      }
    }

    else
    {
      v20 = 2;
    }

    [(STSTransactionEndEvent *)v15 setStatus:v20];
  }

  v21 = [(STSTransactionHandler *)self parent];
  [v21 fireTransactionEndEvent:v15];

  if (self)
  {
    self->_transactionState = 4;
  }

LABEL_22:
}

- (void)notificationClientConnected
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler notificationClientConnected]", 551, self, &stru_2876E3E50, v2, v3, v7);
  if (self && (self->_startTransactionOption & 2) != 0)
  {
    v5 = [(STSXPCClientNotificationListener *)self->_stsNotificationListener setRequestHandoverConfirmation:1];
  }

  v8 = sub_26538F90C(&self->super.super.super.isa);
  v6 = [(STSTransactionHandler *)self parent];
  [v8 stsSessionNotificationListenerStarted:v6];
}

- (void)alternativeCarrierConnectedWithStatus:(unint64_t)a3
{
  v20[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler alternativeCarrierConnectedWithStatus:]", 569, self, @"status=%lu", v3, v4, a3);
  if (a3)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v19[0] = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v20[0] = v10;
    v20[1] = &unk_2876ED740;
    v19[1] = @"Line";
    v19[2] = @"Method";
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v20[2] = v11;
    v19[3] = *MEMORY[0x277CCA068];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 573];
    v20[3] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v14 = [v8 errorWithDomain:v9 code:10 userInfo:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(STSTransactionHandler *)self parent];
  v16 = sub_26538F90C(&self->super.super.super.isa);
  [v16 stsSession:v15 connectedAlternativeCarrierWithStatus:v14];

  if (a3)
  {
    if (a3 == 3)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [v15 fireSessionDidEndUnexpectedlyEventWithStatus:v17];
    sub_26538E044(self, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)a3
{
  if (self)
  {
    transactionState = self->_transactionState;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler alternativeCarrierDisconnectedWithStatus:]", 591, self, @"status=%d, transactionState=%lu", v3, v4, a3);
  v23 = [(STSTransactionHandler *)self parent];
  v8 = sub_26538F90C(&self->super.super.super.isa);
  [v8 stsSessionAlternativeCarrierDisconnected:v23];

  if (self && (self->_transactionState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler alternativeCarrierDisconnectedWithStatus:]", 597, self, @"Transaction end unexpectedly", v9, v10, v21);
    v11 = 1;
    if (a3 <= 3)
    {
      if (a3 - 1 >= 2)
      {
        if (a3)
        {
          v11 = a3 != 3;
        }

        else
        {
          v11 = 0;
        }

        if (a3)
        {
          v14 = a3 == 3;
        }

        else
        {
          v14 = 7;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (a3 > 9)
      {
        v14 = 0;
        goto LABEL_24;
      }

      if (((1 << a3) & 0x230) == 0)
      {
        v12 = 1 << a3;
        v13 = 6;
        if (a3 != 8)
        {
          v13 = 0;
        }

        v11 = (v12 & 0xC0) == 0 && a3 != 8;
        if ((v12 & 0xC0) != 0)
        {
          v14 = 12;
        }

        else
        {
          v14 = v13;
        }

        goto LABEL_24;
      }
    }

    v11 = 0;
    v14 = 2;
LABEL_24:
    v15 = objc_alloc_init(STSTransactionEndEvent);
    [(STSTransactionEndEvent *)v15 setStatus:v14];
    if (self->_releasedCredential)
    {
      [(STSTransactionEndEvent *)v15 setCredential:?];
    }

    else
    {
      v16 = [(STSHandler *)self activeSTSCredential];

      if (v16)
      {
        v17 = [(STSHandler *)self activeSTSCredential];
        [(STSTransactionEndEvent *)v15 setCredential:v17];
      }

      else
      {
        v18 = [STSCredential credentialWithType:2 identifier:0x2876E5050 subIdentifier:0];
        [(STSTransactionEndEvent *)v15 setCredential:v18];

        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler alternativeCarrierDisconnectedWithStatus:]", 633, self, @"Neither an active nor a released credential are set.", v19, v20, v22);
        if (v11)
        {
          [(STSTransactionEndEvent *)v15 setStatus:5];
        }
      }
    }

    [v23 fireTransactionEndEvent:v15];
  }

  sub_26538E044(self, 0);
}

- (void)processISO18013CredentialProposals:(id)a3 readerAuthInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler processISO18013CredentialProposals:readerAuthInfo:]", 648, self, &stru_2876E3E50, v8, v9, v12);
  v10 = sub_265398338();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessCredentialProposals", &unk_2653AE727, &v12, 2u);
  }

  if (self)
  {
    self->_transactionState = 3;
  }

  v11 = [(STSTransactionHandler *)self parent];
  [v11 fireDidReceive18013Requests:v7 readerAuthInfo:v6];
}

- (void)xpcInvalidated
{
  if (!self || self->_transactionState != 5)
  {
    v3 = [(STSTransactionHandler *)self parent];
    [v3 fireSessionDidEndUnexpectedlyEventWithStatus:2];

    sub_26538E044(self, 0);
  }
}

- (void)xpcInterrupted
{
  if (!self || self->_transactionState != 5)
  {
    v3 = [(STSTransactionHandler *)self parent];
    [v3 fireSessionDidEndUnexpectedlyEventWithStatus:2];

    sub_26538E044(self, 0);
  }
}

- (void)session:(id)a3 fieldChange:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v6 = sub_265398338();
  if (os_signpost_enabled(v6))
  {
    v7 = "no";
    if (v4)
    {
      v7 = "yes";
    }

    v10 = 136315138;
    v11 = v7;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013HybridHandler_FieldChange", "fieldPresent=%s", &v10, 0xCu);
  }

  if (v4)
  {
    if (self)
    {
      stsNotificationListener = self->_stsNotificationListener;
    }

    else
    {
      stsNotificationListener = 0;
    }

    [(STSXPCClientNotificationListener *)stsNotificationListener sendConnectionHandoverStarted];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 fieldNotification:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:fieldNotification:]", 705, self, @"field=%@", v6, v7, v5);
  v8 = sub_265398338();
  if (os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v13 = v5;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013HybridHandler_FieldDetect", "field=%@", buf, 0xCu);
  }

  v9 = sub_265399348(v5);
  v10 = [(STSTransactionHandler *)self parent];
  [v10 fireFieldNotificationEvent:v9];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 tnepService:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = sub_265398338();
  if (os_signpost_enabled(v6))
  {
    *buf = 138412290;
    v11 = v5;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013HybridHandler_TnepService_Selected", "service=%@", buf, 0xCu);
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:tnepService:]", 715, self, @"service=%@", v7, v8, v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 connectionHandoverProcessFailure:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = sub_265398338();
  if (os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v38 = v7;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013HybridHandler_HandoverFailure", "error=%@", buf, 0xCu);
  }

  if (!self || (transactionState = self->_transactionState, transactionState < 2))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:connectionHandoverProcessFailure:]", 727, self, @"error=%@, transactionState=%lu, handoverCompeted=%d", v9, v10, v7);
LABEL_8:
    if ([v7 code] == 2 || objc_msgSend(v7, "code") == 8)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:connectionHandoverProcessFailure:]", 737, self, @"Allows reader to retry", v14, v15, v35);
      goto LABEL_35;
    }

    v16 = 4 * ([v7 code] == 6);
    v17 = v7;
    v18 = v17;
    if (!v17)
    {
      v25 = 0;
      goto LABEL_33;
    }

    v19 = [v17 domain];
    if ([v19 isEqualToString:@"STSXPCHelperErrorDomain"])
    {
      v20 = [v18 code];

      if (v20 == 12)
      {
        v21 = [v18 userInfo];
        v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

        v23 = [v22 domain];
        v24 = [v23 isEqualToString:@"BluetoothDomain"];

        if (v24)
        {
          v25 = v22;
        }

        else
        {
          v25 = 0;
        }

        if (v25 && ![v25 code])
        {
          v16 = 6;
        }

LABEL_19:
        v26 = v18;
        v27 = [v26 domain];
        if ([v27 isEqualToString:@"WifiDomain"])
        {
          v28 = [v26 code];

          if (v28 == 12)
          {
            v29 = [v26 userInfo];
            v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

            v31 = [v30 domain];
            v32 = [v31 isEqualToString:@"WifiDomain"];

            if (v32)
            {
              v18 = v30;
            }

            else
            {
              v18 = 0;
            }

            if (!v18)
            {
              goto LABEL_34;
            }

            if ([v18 code] == 3)
            {
              v16 = 5;
            }
          }
        }

        else
        {
        }

LABEL_33:

LABEL_34:
        sub_265390080(self);
        v33 = [(STSTransactionHandler *)self parent];
        [v33 fireSessionDidEndUnexpectedlyEventWithStatus:v16];

        goto LABEL_35;
      }
    }

    else
    {
    }

    v25 = 0;
    goto LABEL_19;
  }

  v36 = self->_transactionState;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:connectionHandoverProcessFailure:]", 727, self, @"error=%@, transactionState=%lu, handoverCompeted=%d", v9, v10, v7);
  if (transactionState == 5)
  {
    goto LABEL_8;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:connectionHandoverProcessFailure:]", 730, self, @"Handover has completed; ignore error=%@", v12, v13, v7);
  [(ISO18013HybridHandler *)self connectionHandoverCompleted:v6];
LABEL_35:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)connectionHandoverCompleted:(id)a3
{
  v4 = sub_265398338();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013HybridHandler_HandoverCompleted", &unk_2653AE727, buf, 2u);
  }

  if (self)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler connectionHandoverCompleted:]", 762, self, @"transactionState=%lu", v5, v6, self->_transactionState);
    [(STSXPCClientNotificationListener *)self->_stsNotificationListener sendConnectionHandoverCompleted];
    if (self->_transactionState)
    {
      sub_265390080(self);
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler connectionHandoverCompleted:]", 762, 0, @"transactionState=%lu", v5, v6, 0);
    [0 sendConnectionHandoverCompleted];
  }
}

- (void)session:(id)a3 didEndUnexpectedly:(id)a4
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:didEndUnexpectedly:]", 772, self, @"reason: %@", v4, v5, a4);
  v7 = [(STSTransactionHandler *)self parent];
  [v7 fireSessionDidEndUnexpectedlyEventWithStatus:0];
}

- (void)session:(id)a3 didEnterFieldWithNotification:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:didEnterFieldWithNotification:]", 783, self, @"%@", v6, v7, v5);
  v9 = sub_265399348(v5);

  v8 = [(STSTransactionHandler *)self parent];
  [v8 fireFieldNotificationEvent:v9];
}

- (void)sessionDidExitField:(id)a3
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler sessionDidExitField:]", 789, self, @"Field Off", v3, v4, v6);
  v7 = [(STSTransactionHandler *)self parent];
  [v7 fireFieldDetectEvent:0];
}

- (void)session:(id)a3 didExpireTransactionForApplet:(id)a4
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:didExpireTransactionForApplet:]", 800, self, @"EXPIRED: %@", v4, v5, a4);
  v7 = [(STSTransactionHandler *)self parent];
  [v7 fireDidExpireTransaction:1];
}

- (void)session:(id)a3 didStartTransaction:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:didStartTransaction:]", 806, self, @"START: %@", v6, v7, v5);
  v8 = [STSTransactionStartEvent alloc];
  if (self)
  {
    jpkiCredential = self->_jpkiCredential;
  }

  else
  {
    jpkiCredential = 0;
  }

  v11 = [(STSTransactionStartEvent *)v8 initWithCredential:jpkiCredential andNearFieldStartEvent:v5];

  v10 = [(STSTransactionHandler *)self parent];
  [v10 fireTransactionStartEvent:v11];
}

- (void)session:(id)a3 didEndTransaction:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler session:didEndTransaction:]", 814, self, @"END: %@", v6, v7, v5);
  v8 = [STSTransactionEndEvent alloc];
  if (self)
  {
    jpkiCredential = self->_jpkiCredential;
  }

  else
  {
    jpkiCredential = 0;
  }

  v11 = [(STSTransactionEndEvent *)v8 initWithCredential:jpkiCredential andNearFieldEndEvent:v5];

  v10 = [(STSTransactionHandler *)self parent];
  [v10 fireTransactionEndEvent:v11];
}

@end