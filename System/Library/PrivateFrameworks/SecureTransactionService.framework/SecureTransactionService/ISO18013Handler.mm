@interface ISO18013Handler
- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4;
- (id)stopTransaction;
- (void)alternativeCarrierConnectedWithStatus:(unint64_t)a3;
- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)a3;
- (void)connectionHandoverCompleted:(id)a3;
- (void)notificationClientConnected;
- (void)processISO18013CredentialProposals:(id)a3 readerAuthInfo:(id)a4;
- (void)session:(id)a3 connectionHandoverProcessFailure:(id)a4;
- (void)session:(id)a3 fieldChange:(BOOL)a4;
- (void)session:(id)a3 fieldNotification:(id)a4;
- (void)session:(id)a3 tnepService:(id)a4;
- (void)tearDownWithCompletion:(id)a3;
- (void)transactionEndedWithIdentifier:(id)a3 error:(id)a4;
- (void)transactionStarted:(unint64_t)a3;
- (void)xpcInterrupted;
- (void)xpcInvalidated;
@end

@implementation ISO18013Handler

- (id)stopTransaction
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler stopTransaction]", 251, self, &stru_2876E3E50, v2, v3, v9[0]);
  v18.receiver = self;
  v18.super_class = ISO18013Handler;
  v5 = [(STSTransactionHandler *)&v18 stopTransaction];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_265381200;
  v11 = &unk_279B93CB8;
  v12 = self;
  v13 = &v14;
  v6 = v9;
  os_unfair_lock_lock(&self->_lock);
  v10(v6);
  os_unfair_lock_unlock(&self->_lock);

  if ((v15[3] - 1) <= 2)
  {
    v7 = [(STSTransactionHandler *)self parent];
    [v7 fireSessionDidEndUnexpectedlyEventWithStatus:3];
  }

  sub_265380EF8(self, 0);
  _Block_object_dispose(&v14, 8);
  return 0;
}

- (void)tearDownWithCompletion:(id)a3
{
  v7 = a3;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013Handler tearDownWithCompletion:]", 271, self, &stru_2876E3E50, v4, v5, v6);
  sub_265380EF8(self, v7);
}

- (id)startTransactionWithAuthorization:(id)a3 options:(unint64_t)a4
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler startTransactionWithAuthorization:options:]", 312, self, @"options = 0x%04x", v4, v5, a4);
  if ((a4 & 4) != 0)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013Handler startTransactionWithAuthorization:options:]", 314, self, @"QRCodeHandoff", v8, v9, a4);
  }

  else if (self)
  {
    self->_startTransactionOption = a4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_265380384;
    v12[3] = &unk_279B93C90;
    v12[4] = self;
    v12[5] = sel__start18013Transaction;
    os_unfair_lock_lock(&self->_lock);
    v10 = (sub_265380384)(v12);
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)transactionStarted:(unint64_t)a3
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_265380DC0;
  v22 = sub_265380DD0;
  v23 = 0;
  v5 = [(STSTransactionHandler *)self parent];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2653819D8;
  v11 = &unk_279B93D08;
  v12 = self;
  v13 = &v18;
  v14 = &v32;
  v15 = &v28;
  v16 = &v24;
  v17 = a3;
  v6 = v9;
  os_unfair_lock_lock(&self->_lock);
  (v10)(v6);
  os_unfair_lock_unlock(&self->_lock);

  if (v19[5])
  {
    [v5 fireTransactionStartEvent:?];
  }

  if (*(v33 + 24) == 1)
  {
    [v5 fireRequestHandoverConfirmation];
  }

  if (*(v29 + 24) == 1)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionStarted:]", 379, self, @"Invalidate transaction due to error", v7, v8, v9[0]);
    sub_265380EF8(self, 0);
    [v5 fireSessionDidEndUnexpectedlyEventWithStatus:6];
  }

  if (*(v25 + 24) == 1)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionStarted:]", 386, self, @"Invalidate transaction due to error", v7, v8, v9[0]);
    sub_265380EF8(self, 0);
    [v5 fireSessionDidEndUnexpectedlyEventWithStatus:5];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)transactionEndedWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_265380DC0;
  v24 = sub_265380DD0;
  v25 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_265381D88;
  v15 = &unk_279B93D30;
  v16 = self;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  v19 = &v20;
  v10 = &v12;
  os_unfair_lock_lock(&self->_lock);
  (v14)(v10);
  os_unfair_lock_unlock(&self->_lock);

  if (v21[5])
  {
    v11 = [(STSTransactionHandler *)self parent:v12];
    [v11 fireTransactionEndEvent:v21[5]];
  }

  _Block_object_dispose(&v20, 8);
}

- (void)notificationClientConnected
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler notificationClientConnected]", 449, self, &stru_2876E3E50, v2, v3, v7);
  if (self && (self->_startTransactionOption & 2) != 0)
  {
    v5 = [(STSXPCClientNotificationListener *)self->_stsNotificationListener setRequestHandoverConfirmation:1];
  }

  v8 = sub_2653820A8(&self->super.super.super.isa);
  v6 = [(STSTransactionHandler *)self parent];
  [v8 stsSessionNotificationListenerStarted:v6];
}

- (void)alternativeCarrierConnectedWithStatus:(unint64_t)a3
{
  v20[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler alternativeCarrierConnectedWithStatus:]", 467, self, @"status=%lu", v3, v4, a3);
  if (a3)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v19[0] = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
    v20[0] = v10;
    v20[1] = &unk_2876ED278;
    v19[1] = @"Line";
    v19[2] = @"Method";
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v20[2] = v11;
    v19[3] = *MEMORY[0x277CCA068];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 471];
    v20[3] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    v14 = [v8 errorWithDomain:v9 code:10 userInfo:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(STSTransactionHandler *)self parent];
  v16 = sub_2653820A8(&self->super.super.super.isa);
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

    sub_265380EF8(self, 0);
    [v15 fireSessionDidEndUnexpectedlyEventWithStatus:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)alternativeCarrierDisconnectedWithStatus:(unint64_t)a3
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v25 = sub_2653826F8;
  v26 = &unk_279B93CB8;
  v27 = self;
  v28 = &v29;
  v5 = v24;
  os_unfair_lock_lock(&self->_lock);
  v25(v5);
  os_unfair_lock_unlock(&self->_lock);

  v23 = v30[3];
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler alternativeCarrierDisconnectedWithStatus:]", 491, self, @"status=%d, transactionState=%lu", v6, v7, a3);
  v8 = [(STSTransactionHandler *)self parent];
  v9 = sub_2653820A8(&self->super.super.super.isa);
  [v9 stsSessionAlternativeCarrierDisconnected:v8];

  if ((v30[3] & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v14 = 0;
    goto LABEL_19;
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler alternativeCarrierDisconnectedWithStatus:]", 499, self, @"Transaction end unexpectedly", v10, v11, v21);
  v12 = 0;
  v13 = 1;
  if (a3 > 3)
  {
    if (a3 > 9)
    {
      goto LABEL_13;
    }

    if (((1 << a3) & 0x230) == 0)
    {
      if (((1 << a3) & 0xC0) != 0)
      {
        v13 = 0;
        v12 = 12;
      }

      else if (a3 == 8)
      {
        v13 = 0;
        v12 = 6;
      }

      goto LABEL_13;
    }

LABEL_12:
    v13 = 0;
    v12 = 2;
    goto LABEL_13;
  }

  if (a3 - 1 < 2)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    if (a3 == 3)
    {
      v13 = 0;
      v12 = 1;
    }
  }

  else
  {
    v13 = 0;
    v12 = 7;
  }

LABEL_13:
  v14 = objc_alloc_init(STSTransactionEndEvent);
  [(STSTransactionEndEvent *)v14 setStatus:v12];
  if (self)
  {
    releasedCredential = self->_releasedCredential;
    if (releasedCredential)
    {
      v16 = releasedCredential;
      [(STSTransactionEndEvent *)v14 setCredential:v16];
LABEL_18:

      goto LABEL_19;
    }
  }

  v17 = [(STSHandler *)self activeSTSCredential];

  if (v17)
  {
    v16 = [(STSHandler *)self activeSTSCredential];
    [(STSTransactionEndEvent *)v14 setCredential:v16];
    goto LABEL_18;
  }

  v18 = [STSCredential credentialWithType:2 identifier:0x2876E4FD0 subIdentifier:0];
  [(STSTransactionEndEvent *)v14 setCredential:v18];

  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler alternativeCarrierDisconnectedWithStatus:]", 535, self, @"Neither an active nor a released credential are set.", v19, v20, v22);
  if (v13)
  {
    [(STSTransactionEndEvent *)v14 setStatus:5];
  }

LABEL_19:
  sub_265380EF8(self, 0);
  if (v14)
  {
    [v8 fireTransactionEndEvent:v14];
  }

  _Block_object_dispose(&v29, 8);
}

- (void)processISO18013CredentialProposals:(id)a3 readerAuthInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler processISO18013CredentialProposals:readerAuthInfo:]", 552, self, &stru_2876E3E50, v8, v9, v12);
  v10 = sub_265398338();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessCredentialProposals", &unk_2653AE727, buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_265382874;
  v13[3] = &unk_279B93910;
  v13[4] = self;
  os_unfair_lock_lock(&self->_lock);
  sub_265382874(v13);
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(STSTransactionHandler *)self parent];
  [v11 fireDidReceive18013Requests:v7 readerAuthInfo:v6];
}

- (void)xpcInvalidated
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_2653829AC;
  v7 = &unk_279B93CB8;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&self->_lock);
  v6(v3);
  os_unfair_lock_unlock(&self->_lock);

  if (v11[3] != 5)
  {
    sub_265380EF8(self, 0);
    v4 = [(STSTransactionHandler *)self parent];
    [v4 fireSessionDidEndUnexpectedlyEventWithStatus:2];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)xpcInterrupted
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_265382AEC;
  v7 = &unk_279B93CB8;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&self->_lock);
  v6(v3);
  os_unfair_lock_unlock(&self->_lock);

  if (v11[3] != 5)
  {
    sub_265380EF8(self, 0);
    v4 = [(STSTransactionHandler *)self parent];
    [v4 fireSessionDidEndUnexpectedlyEventWithStatus:2];
  }

  _Block_object_dispose(&v10, 8);
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
    _os_signpost_emit_with_name_impl(&dword_26536F000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013Handler_FieldChange", "fieldPresent=%s", &v10, 0xCu);
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
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler session:fieldNotification:]", 621, self, @"field=%@", v6, v7, v5);
  v8 = sub_265398338();
  if (os_signpost_enabled(v8))
  {
    *buf = 138412290;
    v16 = v5;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013Handler_FieldDetect", "field=%@", buf, 0xCu);
  }

  v9 = sub_265399348(v5);
  if (self)
  {
    callbackQueue = self->_callbackQueue;
  }

  else
  {
    callbackQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_265383020;
  block[3] = &unk_279B93898;
  block[4] = self;
  v14 = v9;
  v11 = v9;
  dispatch_async(callbackQueue, block);

  v12 = *MEMORY[0x277D85DE8];
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
    _os_signpost_emit_with_name_impl(&dword_26536F000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013Handler_TnepService_Selected", "service=%@", buf, 0xCu);
  }

  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler session:tnepService:]", 633, self, @"service=%@", v7, v8, v5);
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
    _os_signpost_emit_with_name_impl(&dword_26536F000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013Handler_HandoverFailure", "error=%@", buf, 0xCu);
  }

  if (self && (v11 = self->_transactionState, v11 >= 2))
  {
    transactionState = self->_transactionState;
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler session:connectionHandoverProcessFailure:]", 645, self, @"error=%@, transactionState=%lu, handoverCompeted=%d", v9, v10, v7);
    if (v11 != 5)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler session:connectionHandoverProcessFailure:]", 648, self, @"Handover has completed; ignore error=%{public}@", v12, v13, v7);
      [(ISO18013Handler *)self connectionHandoverCompleted:v6];
      goto LABEL_38;
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler session:connectionHandoverProcessFailure:]", 645, self, @"error=%@, transactionState=%lu, handoverCompeted=%d", v9, v10, v7);
  }

  v14 = v7;
  v15 = v14;
  if (!v14)
  {
    v21 = 0;
    goto LABEL_21;
  }

  v16 = [v14 domain];
  if (![v16 isEqualToString:@"STSXPCHelperErrorDomain"])
  {
    goto LABEL_13;
  }

  v17 = [v15 code];

  if (v17 == 12)
  {
    v18 = [v15 userInfo];
    v16 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v19 = [v16 domain];
    v20 = [v19 isEqualToString:@"BluetoothDomain"];

    if (v20)
    {
      v16 = v16;
      v21 = v16;
LABEL_14:

      goto LABEL_17;
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  v21 = 0;
LABEL_17:

  v22 = v15;
  v23 = [v22 domain];
  if (![v23 isEqualToString:@"WifiDomain"])
  {
LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

  v24 = [v22 code];

  if (v24 != 12)
  {
LABEL_21:
    v28 = 0;
    goto LABEL_24;
  }

  v25 = [v22 userInfo];
  v23 = [v25 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v26 = [v23 domain];
  v27 = [v26 isEqualToString:@"WifiDomain"];

  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = v23;
LABEL_23:

LABEL_24:
  if (!(v21 | v28) && ([v15 code] == 2 || objc_msgSend(v15, "code") == 8))
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler session:connectionHandoverProcessFailure:]", 659, self, @"Allows reader to retry", v29, v30, v34);
    v21 = 0;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler session:connectionHandoverProcessFailure:]", 662, self, @"error=%@", v29, v30, v15);
    v31 = 4 * ([v15 code] == 6);
    if (v21 && ![v21 code])
    {
      v31 = 6;
    }

    if (v28 && [v28 code] == 3)
    {
      v31 = 5;
    }

    sub_265382B10(self);
    if (self)
    {
      callbackQueue = self->_callbackQueue;
    }

    else
    {
      callbackQueue = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2653835D0;
    block[3] = &unk_279B93A80;
    block[4] = self;
    block[5] = v31;
    dispatch_async(callbackQueue, block);
  }

LABEL_38:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)connectionHandoverCompleted:(id)a3
{
  v4 = sub_265398338();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26536F000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ISO18013Handler_HandoverCompleted", &unk_2653AE727, buf, 2u);
  }

  if (self)
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler connectionHandoverCompleted:]", 686, self, @"transactionState=%lu", v5, v6, self->_transactionState);
    [(STSXPCClientNotificationListener *)self->_stsNotificationListener sendConnectionHandoverCompleted];
    if (self->_transactionState)
    {
      sub_265382B10(self);
    }
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler connectionHandoverCompleted:]", 686, 0, @"transactionState=%lu", v5, v6, 0);
    [0 sendConnectionHandoverCompleted];
  }
}

@end