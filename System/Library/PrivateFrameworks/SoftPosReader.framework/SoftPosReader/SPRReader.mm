@interface SPRReader
- (BOOL)cancelReadAndReturnError:(id *)error;
- (BOOL)cancelReadWithCallback:(id)callback error:(id *)error;
- (BOOL)validateWithReadParameters:(id)parameters error:(id *)error;
- (SPRReader)initWithConnector:(id)connector;
- (id)generateSecureReaderBlobDataWithTrxBlob:(id)blob pinBlob:(id)pinBlob error:(id *)error;
- (id)generateSecureReaderBlobWithTrxBlob:(id)blob pinBlob:(id)pinBlob error:(id *)error;
- (id)getCardReaderBlobWithTxnBlob:(id)blob;
- (id)getSAFSessionTimeRemainingWithToken:(id)token error:(id *)error;
- (id)signBatchWithBatchId:(id)id count:(int64_t)count vtid:(id)vtid error:(id *)error;
- (id)signTransactionWithPaymentCardData:(id)data generalCardData:(id)cardData transactionUUID:(id)d vtid:(id)vtid error:(id *)error;
- (void)cancelReadWithCallback:(id)callback;
- (void)readCardWithParameter:(id)parameter callback:(id)callback;
- (void)readCardWithParameter:(id)parameter delegate:(id)delegate completion:(id)completion;
@end

@implementation SPRReader

- (SPRReader)initWithConnector:(id)connector
{
  v7.receiver = self;
  v7.super_class = SPRReader;
  v3 = [(SPRObject *)&v7 initWithConnector:connector];
  if (v3)
  {
    v4 = dispatch_get_global_queue(25, 0);
    relayQueue = v3->_relayQueue;
    v3->_relayQueue = v4;
  }

  return v3;
}

- (BOOL)validateWithReadParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_26A9492AC;
  v26 = sub_26A9492BC;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A9492C4;
  v17[3] = &unk_279CA5428;
  v17[4] = &v22;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v17, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A9492D4;
  v16[3] = &unk_279CA5670;
  v16[4] = &v18;
  v16[5] = &v22;
  objc_msgSend_validateWithReadParameters_reply_(v10, v11, parametersCopy, v16, v12);

  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (void)readCardWithParameter:(id)parameter callback:(id)callback
{
  callbackCopy = callback;
  parameterCopy = parameter;
  v8 = [SPRReadRelay alloc];
  v11 = objc_msgSend_initWithBase_queue_(v8, v9, callbackCopy, self->_relayQueue, v10);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26A949458;
  v21[3] = &unk_279CA5858;
  v21[4] = self;
  v12 = callbackCopy;
  v22 = v12;
  v16 = objc_msgSend_asyncProxyWithErrorHandler_(self, v13, v21, v14, v15);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26A949524;
  v19[3] = &unk_279CA5D28;
  v19[4] = self;
  v20 = v12;
  v17 = v12;
  objc_msgSend_readCardWithParameter_delegate_reply_(v16, v18, parameterCopy, v11, v19);
}

- (void)readCardWithParameter:(id)parameter delegate:(id)delegate completion:(id)completion
{
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26A94976C;
  v20[3] = &unk_279CA57B8;
  v20[4] = self;
  v9 = completionCopy;
  v21 = v9;
  delegateCopy = delegate;
  parameterCopy = parameter;
  v15 = objc_msgSend_asyncProxyWithErrorHandler_(self, v12, v20, v13, v14);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A949844;
  v18[3] = &unk_279CA5D50;
  v18[4] = self;
  v19 = v9;
  v16 = v9;
  objc_msgSend_readCardWithParameter_delegate_reply_(v15, v17, parameterCopy, delegateCopy, v18);
}

- (BOOL)cancelReadAndReturnError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A9492AC;
  v23 = sub_26A9492BC;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26A949AD8;
  v14[3] = &unk_279CA5428;
  v14[4] = &v19;
  v6 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v14, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26A949AE8;
  v13[3] = &unk_279CA5D78;
  v13[4] = &v15;
  objc_msgSend_cancelReadWithReply_(v6, v7, v13, v8, v9);

  if (error)
  {
    v10 = v20[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (id)generateSecureReaderBlobDataWithTrxBlob:(id)blob pinBlob:(id)pinBlob error:(id *)error
{
  blobCopy = blob;
  pinBlobCopy = pinBlob;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_26A9492AC;
  v30 = sub_26A9492BC;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_26A9492AC;
  v24 = sub_26A9492BC;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26A949D0C;
  v19[3] = &unk_279CA5428;
  v19[4] = &v20;
  v13 = objc_msgSend_syncProxyWithErrorHandler_(self, v10, v19, v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A949D1C;
  v18[3] = &unk_279CA5DA0;
  v18[4] = &v26;
  v18[5] = &v20;
  objc_msgSend_generateSecureReaderBlobWithTrxBlob_pinBlob_reply_(v13, v14, blobCopy, pinBlobCopy, v18);

  if (error)
  {
    v15 = v21[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v16;
}

- (id)getSAFSessionTimeRemainingWithToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_26A9492AC;
  v28 = sub_26A9492BC;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_26A9492AC;
  v22 = sub_26A9492BC;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A949F98;
  v17[3] = &unk_279CA5428;
  v17[4] = &v18;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v17, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A949FA8;
  v16[3] = &unk_279CA5DC8;
  v16[4] = &v24;
  v16[5] = &v18;
  objc_msgSend_getSAFSessionTimeRemainingWithToken_reply_(v10, v11, tokenCopy, v16, v12);

  if (error)
  {
    v13 = v19[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)signTransactionWithPaymentCardData:(id)data generalCardData:(id)cardData transactionUUID:(id)d vtid:(id)vtid error:(id *)error
{
  dataCopy = data;
  cardDataCopy = cardData;
  dCopy = d;
  vtidCopy = vtid;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_26A9492AC;
  v36 = sub_26A9492BC;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_26A9492AC;
  v30 = sub_26A9492BC;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26A94A270;
  v25[3] = &unk_279CA5428;
  v25[4] = &v26;
  v19 = objc_msgSend_syncProxyWithErrorHandler_(self, v16, v25, v17, v18);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_26A94A280;
  v24[3] = &unk_279CA5DF0;
  v24[4] = &v32;
  v24[5] = &v26;
  objc_msgSend_signTransactionWithPaymentCardData_generalCardData_transactionUUID_vtid_reply_(v19, v20, dataCopy, cardDataCopy, dCopy, vtidCopy, v24);

  if (error)
  {
    v21 = v27[5];
    if (v21)
    {
      *error = v21;
    }
  }

  v22 = v33[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v22;
}

- (id)signBatchWithBatchId:(id)id count:(int64_t)count vtid:(id)vtid error:(id *)error
{
  idCopy = id;
  vtidCopy = vtid;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_26A9492AC;
  v32 = sub_26A9492BC;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_26A9492AC;
  v26 = sub_26A9492BC;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26A94A520;
  v21[3] = &unk_279CA5428;
  v21[4] = &v22;
  v15 = objc_msgSend_syncProxyWithErrorHandler_(self, v12, v21, v13, v14);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26A94A530;
  v20[3] = &unk_279CA5E18;
  v20[4] = &v28;
  v20[5] = &v22;
  objc_msgSend_signBatchWithBatchId_count_vtid_reply_(v15, v16, idCopy, count, vtidCopy, v20);

  if (error)
  {
    v17 = v23[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v18;
}

- (id)generateSecureReaderBlobWithTrxBlob:(id)blob pinBlob:(id)pinBlob error:(id *)error
{
  v5 = objc_msgSend_generateSecureReaderBlobDataWithTrxBlob_pinBlob_error_(self, a2, blob, pinBlob, error);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_base64Encoding(v5, v6, v7, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getCardReaderBlobWithTxnBlob:(id)blob
{
  blobCopy = blob;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_26A9492AC;
  v19 = sub_26A9492BC;
  v20 = &stru_287B375A0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26A94A798;
  v14[3] = &unk_279CA5478;
  v14[4] = self;
  v8 = objc_msgSend_syncProxyWithErrorHandler_(self, v5, v14, v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26A94A804;
  v13[3] = &unk_279CA5E40;
  v13[4] = &v15;
  objc_msgSend_getCardReaderBlobWithTxnBlob_reply_(v8, v9, blobCopy, v13, v10);

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (void)cancelReadWithCallback:(id)callback
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26A94A8A0;
  v9[3] = &unk_279CA5478;
  v9[4] = self;
  v5 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v9, v3, v4);
  objc_msgSend_cancelReadWithReply_(v5, v6, &unk_287B2DCC0, v7, v8);
}

- (BOOL)cancelReadWithCallback:(id)callback error:(id *)error
{
  callbackCopy = callback;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_26A9492AC;
  v27 = sub_26A9492BC;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A94AABC;
  v18[3] = &unk_279CA5428;
  v18[4] = &v23;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v18, v8, v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A94AACC;
  v17[3] = &unk_279CA5D78;
  v17[4] = &v19;
  objc_msgSend_cancelReadWithReply_(v10, v11, v17, v12, v13);

  if (error)
  {
    v14 = v24[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v15;
}

@end