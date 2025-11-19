@interface SPRPINController
- (BOOL)capturePINWithParameters:(id)a3 error:(id *)a4;
- (BOOL)captureWithParameters:(id)a3 entropy:(id)a4 digitCodeMap:(char *)a5 error:(id *)a6;
- (BOOL)copyDigitCodeMap:(char *)a3;
- (BOOL)removeLastDigitAndReturnError:(id *)a3;
- (BOOL)updateParameters:(id)a3 error:(id *)a4;
- (BOOL)verifyWithPINToken:(id)a3 error:(id *)a4;
- (id)generatePINBlockAndReturnError:(id *)a3;
- (void)cancelPINCapture;
@end

@implementation SPRPINController

- (BOOL)capturePINWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_26A941FD4;
  v29 = sub_26A941FE4;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A941FD4;
  v23 = sub_26A941FE4;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A941FEC;
  v18[3] = &unk_279CA5428;
  v18[4] = &v25;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v18, v8, v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A941FFC;
  v17[3] = &unk_279CA5620;
  v17[4] = self;
  v17[5] = &v19;
  v17[6] = &v25;
  objc_msgSend_capturePINWithParameters_reply_(v10, v11, v6, v17, v12);

  v13 = v20[5];
  if (v13)
  {
    objc_storeStrong(&self->_pinCrypto, v13);
  }

  if (a4)
  {
    v14 = v26[5];
    if (v14)
    {
      *a4 = v14;
    }
  }

  v15 = v20[5] != 0;
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v15;
}

- (BOOL)captureWithParameters:(id)a3 entropy:(id)a4 digitCodeMap:(char *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_26A941FD4;
  v39 = sub_26A941FE4;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_26A941FD4;
  v33 = sub_26A941FE4;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_26A942338;
  v28[3] = &unk_279CA5428;
  v28[4] = &v35;
  v15 = objc_msgSend_syncProxyWithErrorHandler_(self, v12, v28, v13, v14);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26A942348;
  v23[3] = &unk_279CA5648;
  v16 = v11;
  v24 = v16;
  v25 = &v29;
  v26 = &v35;
  v27 = a5;
  objc_msgSend_capturePINWithParameters_reply_(v15, v17, v10, v23, v18);

  v19 = v30[5];
  if (v19)
  {
    objc_storeStrong(&self->_pinCrypto, v19);
  }

  if (a6)
  {
    v20 = v36[5];
    if (v20)
    {
      *a6 = v20;
    }
  }

  v21 = v30[5] != 0;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v21;
}

- (BOOL)copyDigitCodeMap:(char *)a3
{
  pinCrypto = self->_pinCrypto;
  if (pinCrypto)
  {
    objc_msgSend_copyDigitCodeMap_(self->_pinCrypto, a2, a3, v3, v4);
  }

  return pinCrypto != 0;
}

- (BOOL)removeLastDigitAndReturnError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A941FD4;
  v23 = sub_26A941FE4;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26A942A9C;
  v14[3] = &unk_279CA5428;
  v14[4] = &v19;
  v6 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v14, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_26A942AAC;
  v13[3] = &unk_279CA5670;
  v13[4] = &v15;
  v13[5] = &v19;
  objc_msgSend_removeLastDigitWithReply_(v6, v7, v13, v8, v9);

  if (a3)
  {
    v10 = v20[5];
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (id)generatePINBlockAndReturnError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_26A941FD4;
  v27 = sub_26A941FE4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_26A941FD4;
  v21 = sub_26A941FE4;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A942CD0;
  v16[3] = &unk_279CA5428;
  v16[4] = &v23;
  v7 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v16, v3, v4);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A942CE0;
  v15[3] = &unk_279CA5698;
  v15[4] = &v17;
  v15[5] = &v23;
  objc_msgSend_generatePINBlockWithReply_(v7, v8, v15, v9, v10);

  if (v18[5])
  {
    pinCrypto = self->_pinCrypto;
    self->_pinCrypto = 0;
  }

  if (a3)
  {
    v12 = v24[5];
    if (v12)
    {
      *a3 = v12;
    }
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

- (void)cancelPINCapture
{
  pinCrypto = self->_pinCrypto;
  self->_pinCrypto = 0;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26A942E10;
  v11[3] = &unk_279CA5478;
  v11[4] = self;
  v7 = objc_msgSend_syncProxyWithErrorHandler_(self, v4, v11, v5, v6);
  objc_msgSend_cancelPINCaptureWithReply_(v7, v8, &unk_287B2DCA0, v9, v10);
}

- (BOOL)updateParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_26A941FD4;
  v26 = sub_26A941FE4;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A943038;
  v17[3] = &unk_279CA5428;
  v17[4] = &v22;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v17, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A943048;
  v16[3] = &unk_279CA5670;
  v16[4] = &v18;
  v16[5] = &v22;
  objc_msgSend_updateParameters_reply_(v10, v11, v6, v16, v12);

  if (a4)
  {
    v13 = v23[5];
    if (v13)
    {
      *a4 = v13;
    }
  }

  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (BOOL)verifyWithPINToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_26A941FD4;
  v26 = sub_26A941FE4;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A943224;
  v17[3] = &unk_279CA5428;
  v17[4] = &v22;
  v10 = objc_msgSend_syncProxyWithErrorHandler_(self, v7, v17, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A943234;
  v16[3] = &unk_279CA5670;
  v16[4] = &v18;
  v16[5] = &v22;
  objc_msgSend_verifyWithPINToken_reply_(v10, v11, v6, v16, v12);

  if (a4)
  {
    v13 = v23[5];
    if (v13)
    {
      *a4 = v13;
    }
  }

  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

@end