@interface PaymentHandler
- (id)setActiveCredential:(id)a3;
- (id)startNFSessionWithCompletion:(id)a3;
- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4;
- (id)stopTransaction;
- (void)loyaltyAndPaymentSession:(id)a3 didEndTransaction:(id)a4;
- (void)loyaltyAndPaymentSession:(id)a3 didEnterFieldWithNotification:(id)a4;
- (void)loyaltyAndPaymentSession:(id)a3 didExpireTransactionForApplet:(id)a4;
- (void)loyaltyAndPaymentSession:(id)a3 didPerformValueAddedServiceTransactions:(id)a4;
- (void)loyaltyAndPaymentSession:(id)a3 didStartTransaction:(id)a4;
- (void)loyaltyAndPaymentSessionDidReceiveActivityTimeout:(id)a3 result:(id)a4;
- (void)loyaltyAndPaymentSessionHasPendingServerRequest:(id)a3;
@end

@implementation PaymentHandler

- (id)startNFSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(STSHandler *)self nfHardwareManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2653878F0;
  v9[3] = &unk_279B93F68;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 startLoyaltyAndContactlessPaymentSession:v9];

  return v7;
}

- (id)setActiveCredential:(id)a3
{
  v54[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v48.receiver = self;
  v48.super_class = PaymentHandler;
  v6 = [(STSHandler *)&v48 setActiveCredential:v5];
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = [v5 identifier];

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = [v5 identifier];
  if ([v8 hasPrefix:0x2876E4FF0])
  {

LABEL_6:
    v11 = [v5 identifier];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setActiveCredential:]", 60, self, @"AID is not supported by payment handler - %@", v12, v13, v11);

    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v53[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v54[0] = v16;
    v54[1] = &unk_2876ED338;
    v53[1] = @"Line";
    v53[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v54[2] = v17;
    v53[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 61];
    v54[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:4];
    v20 = [v14 errorWithDomain:v15 code:8 userInfo:v19];

    goto LABEL_17;
  }

  v9 = [v5 identifier];
  v10 = [v9 hasPrefix:0x2876E5010];

  if (v10)
  {
    goto LABEL_6;
  }

  v21 = 64;
  nfSession = self->_nfSession;
  v23 = [v5 identifier];
  v15 = [(NFLoyaltyAndPaymentSession *)nfSession appletWithIdentifier:v23];

  if (!v15)
  {
LABEL_13:
    v38 = [v5 identifier];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler setActiveCredential:]", 74, self, @"applet not found for identifier = %@", v39, v40, v38);

    v41 = MEMORY[0x277CCA9B8];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v49[0] = *MEMORY[0x277CCA450];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
    v50[0] = v32;
    v50[1] = &unk_2876ED368;
    v49[1] = @"Line";
    v49[2] = @"Method";
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v50[2] = v21;
    v49[3] = *MEMORY[0x277CCA068];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 75];
    v50[3] = v33;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
    v37 = [v41 errorWithDomain:v31 code:8 userInfo:v42];

    v15 = 0;
LABEL_14:

LABEL_15:
    v28 = v37;
    goto LABEL_16;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler setActiveCredential:]", 68, self, @"applet %@", v24, v25, v15);
  v26 = self->_nfSession;
  v47 = v6;
  v27 = [(NFLoyaltyAndPaymentSession *)v26 setActivePaymentApplet:v15 error:&v47];
  v28 = v47;

  if ((v27 & 1) == 0)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setActiveCredential:]", 70, self, @"set active applet failed = %@", v29, v30, v28);
    v46 = MEMORY[0x277CCA9B8];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v52[0] = v32;
    v51[1] = *MEMORY[0x277CCA7E8];
    v33 = v28;
    if (!v28)
    {
      v34 = MEMORY[0x277CCA9B8];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v33 = [v34 errorWithDomain:v21 code:5 userInfo:0];
    }

    v52[1] = v33;
    v52[2] = &unk_2876ED350;
    v51[2] = @"Line";
    v51[3] = @"Method";
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[3] = v45;
    v51[4] = *MEMORY[0x277CCA068];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 71];
    v52[4] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:5];
    v37 = [v46 errorWithDomain:v31 code:10 userInfo:v36];

    if (v28)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  v20 = v28;
  v6 = v20;
LABEL_17:

  v43 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4
{
  v52[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v46.receiver = self;
  v46.super_class = PaymentHandler;
  v10 = [(STSTransactionHandler *)&v46 startTransactionWithAuthorization:v7 options:a4];
  if (!self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 85, self, @"NF session does not exist!", v8, v9, v42);
    v25 = MEMORY[0x277CCA9B8];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v51[0] = *MEMORY[0x277CCA450];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v52[0] = v27;
    v52[1] = &unk_2876ED380;
    v51[1] = @"Line";
    v51[2] = @"Method";
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v52[2] = v28;
    v51[3] = *MEMORY[0x277CCA068];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 86];
    v52[3] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
    v31 = [v25 errorWithDomain:v26 code:9 userInfo:v30];

    goto LABEL_16;
  }

  if (a4)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 91, self, @"deferred auth: %@", v8, v9, v7);
    nfSession = self->_nfSession;
    v45 = v10;
    v33 = [(NFLoyaltyAndPaymentSession *)nfSession startDeferredCardEmulation:1 authorization:v7 error:&v45];
    v13 = v45;

    if ((v33 & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 95, self, @"start deferred transaction failed = %@", v34, v35, v13);
      v36 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v49[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v50[0] = v18;
      v49[1] = *MEMORY[0x277CCA7E8];
      v19 = v13;
      if (!v13)
      {
        v37 = MEMORY[0x277CCA9B8];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v19 = [v37 errorWithDomain:? code:? userInfo:?];
      }

      v50[1] = v19;
      v50[2] = &unk_2876ED398;
      v49[2] = @"Line";
      v49[3] = @"Method";
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v50[3] = v21;
      v49[4] = *MEMORY[0x277CCA068];
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 96];
      v50[4] = v38;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:5];
      v24 = [v36 errorWithDomain:v17 code:10 userInfo:v39];

      goto LABEL_12;
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 100, self, @"auth: %@", v8, v9, v7);
    v11 = self->_nfSession;
    v44 = v10;
    v12 = [(NFLoyaltyAndPaymentSession *)v11 startCardEmulation:1 authorization:v7 error:&v44];
    v13 = v44;

    if ((v12 & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startTransactionWithAuthorization:options:]", 102, self, @"start transaction failed = %@", v14, v15, v13);
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v47[0] = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v48[0] = v18;
      v47[1] = *MEMORY[0x277CCA7E8];
      v19 = v13;
      if (!v13)
      {
        v20 = MEMORY[0x277CCA9B8];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v19 = [v20 errorWithDomain:? code:? userInfo:?];
      }

      v48[1] = v19;
      v48[2] = &unk_2876ED3B0;
      v47[2] = @"Line";
      v47[3] = @"Method";
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
      v48[3] = v21;
      v47[4] = *MEMORY[0x277CCA068];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 103];
      v48[4] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:5];
      v24 = [v16 errorWithDomain:v17 code:10 userInfo:v23];

LABEL_12:
      if (!v13)
      {
      }

      v13 = v24;
    }
  }

  v31 = v13;
  v10 = v31;
LABEL_16:

  v40 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)stopTransaction
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PaymentHandler;
  v6 = [(STSTransactionHandler *)&v20 stopTransaction];
  if (self->_nfSession)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[PaymentHandler stopTransaction]", 118, self, &stru_2876E3E50, v4, v5, v18);
    nfSession = self->_nfSession;
    v19 = v6;
    [(NFLoyaltyAndPaymentSession *)nfSession stopCardEmulation:&v19];
    v8 = v19;

    v9 = v8;
    v6 = v9;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler stopTransaction]", 114, self, @"NF session does not exist!", v4, v5, v18);
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v21[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v22[0] = v12;
    v22[1] = &unk_2876ED3C8;
    v21[1] = @"Line";
    v21[2] = @"Method";
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v22[2] = v13;
    v21[3] = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 115];
    v22[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v9 = [v10 errorWithDomain:v11 code:9 userInfo:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)loyaltyAndPaymentSession:(id)a3 didEnterFieldWithNotification:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didEnterFieldWithNotification:]", 258, self, @"%@", v6, v7, v5);
  v9 = sub_265399348(v5);

  v8 = [(STSTransactionHandler *)self parent];
  [v8 fireFieldNotificationEvent:v9];
}

- (void)loyaltyAndPaymentSession:(id)a3 didExpireTransactionForApplet:(id)a4
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didExpireTransactionForApplet:]", 276, self, @"EXPIRED: %@", v4, v5, a4);
  v7 = [(STSTransactionHandler *)self parent];
  [v7 fireDidExpireTransaction:1];
}

- (void)loyaltyAndPaymentSession:(id)a3 didStartTransaction:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didStartTransaction:]", 282, self, @"START: %@", v6, v7, v5);
  v8 = [STSTransactionStartEvent alloc];
  v9 = [(STSHandler *)self activeSTSCredential];
  v11 = [(STSTransactionStartEvent *)v8 initWithCredential:v9 andNearFieldStartEvent:v5];

  v10 = [(STSTransactionHandler *)self parent];
  [v10 fireTransactionStartEvent:v11];
}

- (void)loyaltyAndPaymentSession:(id)a3 didEndTransaction:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didEndTransaction:]", 290, self, @"END: %@", v6, v7, v5);
  v8 = [STSTransactionEndEvent alloc];
  v9 = [(STSHandler *)self activeSTSCredential];
  v11 = [(STSTransactionEndEvent *)v8 initWithCredential:v9 andNearFieldEndEvent:v5];

  v10 = [(STSTransactionHandler *)self parent];
  [v10 fireTransactionEndEvent:v11];
}

- (void)loyaltyAndPaymentSessionHasPendingServerRequest:(id)a3
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSessionHasPendingServerRequest:]", 302, self, @"Pending priority server request", v3, v4, v6);
  v7 = [(STSTransactionHandler *)self parent];
  [v7 fireHasPendingServerRequest:1];
}

- (void)loyaltyAndPaymentSession:(id)a3 didPerformValueAddedServiceTransactions:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSession:didPerformValueAddedServiceTransactions:]", 313, self, @"HCE transactions: %@", v6, v7, v5);
  v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    v11 = 0x277D2C000uLL;
    v31 = *v41;
    v32 = self;
    do
    {
      v12 = 0;
      v33 = v9;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        v14 = *(v11 + 2200);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v13;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v16 = self->_vasCredentials;
          v17 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v17)
          {
            v18 = *v37;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v36 + 1) + 8 * i);
                v21 = [v15 merchantId];
                v22 = [v20 merchantId];
                v23 = [v21 isEqualToData:v22];

                if (v23)
                {
                  v17 = v20;
                  goto LABEL_18;
                }
              }

              v17 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v10 = v31;
            self = v32;
            v11 = 0x277D2C000;
            v9 = v33;
          }

          v27 = [v15 asDictionary];
          v28 = [STSVASTransaction vasTransactionForCredential:v17 withDictionary:v27];

          [v34 addObject:v28];
        }

        else
        {
          v24 = objc_opt_class();
          v15 = NSStringFromClass(v24);
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler loyaltyAndPaymentSession:didPerformValueAddedServiceTransactions:]", 320, self, @"Wrong transaction class: %@", v25, v26, v15);
        }

        ++v12;
      }

      while (v12 != v9);
      v9 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v29 = [(STSTransactionHandler *)self parent];
  [v29 fireDidPerformAuxiliaryTransactions:v34];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)loyaltyAndPaymentSessionDidReceiveActivityTimeout:(id)a3 result:(id)a4
{
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler loyaltyAndPaymentSessionDidReceiveActivityTimeout:result:]", 359, self, @"Activity Timeout : %@", v6, v7, v5);
  v8 = [(STSTransactionHandler *)self parent];
  [v8 fireDidReceiveActivityTimeout:v5];
}

@end