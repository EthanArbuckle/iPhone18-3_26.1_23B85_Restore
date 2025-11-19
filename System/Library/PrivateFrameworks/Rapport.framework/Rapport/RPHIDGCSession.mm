@interface RPHIDGCSession
- (RPHIDGCSession)initWithOptions:(id)a3;
- (void)_activateWithCompletion:(id)a3;
- (void)_invalidate;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)sendGCEvent:(RPHIDGCEvent *)a3 destinationID:(id)a4 completion:(id)a5;
@end

@implementation RPHIDGCSession

- (RPHIDGCSession)initWithOptions:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RPHIDGCSession;
  v6 = [(RPHIDGCSession *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, MEMORY[0x1E69E96A0]);
    objc_storeStrong(&v7->_options, a3);
    v8 = v7;
  }

  return v7;
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self->_messenger;
  if (!v5)
  {
    v7 = RPErrorF();
    if (gLogCategory_RPHIDGCSession <= 90 && (gLogCategory_RPHIDGCSession != -1 || _LogCategory_Initialize()))
    {
      [RPHIDGCSession _activateWithCompletion:];
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
LABEL_8:

      goto LABEL_9;
    }

    v4[2](v4, v7);
    goto LABEL_8;
  }

  options = self->_options;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__RPHIDGCSession__activateWithCompletion___block_invoke;
  v8[3] = &unk_1E7C93780;
  v9 = v4;
  [(RPMessageable *)v5 sendRequestID:@"_gcStart" request:options destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v8];

LABEL_9:
}

void __42__RPHIDGCSession__activateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (gLogCategory_RPHIDGCSession <= 90 && (gLogCategory_RPHIDGCSession != -1 || _LogCategory_Initialize()))
    {
      __42__RPHIDGCSession__activateWithCompletion___block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_12:
      v10();
    }
  }

  else
  {
    if (gLogCategory_RPHIDGCSession <= 30 && (gLogCategory_RPHIDGCSession != -1 || _LogCategory_Initialize()))
    {
      __42__RPHIDGCSession__activateWithCompletion___block_invoke_cold_2();
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_12;
    }
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = v5;
  if (!v5)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__RPHIDGCSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)_invalidate
{
  if (gLogCategory_RPHIDGCSession <= 30 && (gLogCategory_RPHIDGCSession != -1 || _LogCategory_Initialize()))
  {
    [RPHIDGCSession _invalidate];
  }

  [(RPMessageable *)self->_messenger sendRequestID:@"_gcStop" request:MEMORY[0x1E695E0F8] destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:&__block_literal_global_7];
  messenger = self->_messenger;
  self->_messenger = 0;
}

void __29__RPHIDGCSession__invalidate__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (gLogCategory_RPHIDGCSession <= 90 && (gLogCategory_RPHIDGCSession != -1 || _LogCategory_Initialize()))
    {
      __29__RPHIDGCSession__invalidate__block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPHIDGCSession <= 30 && (gLogCategory_RPHIDGCSession != -1 || _LogCategory_Initialize()))
  {
    __29__RPHIDGCSession__invalidate__block_invoke_cold_2();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__RPHIDGCSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)sendGCEvent:(RPHIDGCEvent *)a3 destinationID:(id)a4 completion:(id)a5
{
  v52[21] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v11 = a3->var17 | (a3->var16 << 8);
    v12 = a3->var19 | (a3->var18 << 8);
    v43 = a3->var21 | (a3->var20 << 8);
    v51[0] = @"_gcDU";
    *&v10 = a3->var0;
    v49 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v52[0] = v49;
    v51[1] = @"_gcDD";
    *&v13 = a3->var1;
    v48 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v52[1] = v48;
    v51[2] = @"_gcDL";
    *&v14 = a3->var2;
    v47 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v52[2] = v47;
    v51[3] = @"_gcDR";
    *&v15 = a3->var3;
    v46 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    v52[3] = v46;
    v51[4] = @"_gcLThx";
    v45 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var4.x];
    v52[4] = v45;
    v51[5] = @"_gcLThy";
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var4.y];
    v52[5] = v44;
    v51[6] = @"_gcRThx";
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var5.x];
    v52[6] = v42;
    v51[7] = @"_gcRThy";
    v41 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var5.y];
    v52[7] = v41;
    v51[8] = @"_gcBtA";
    *&v16 = a3->var6;
    v40 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v52[8] = v40;
    v51[9] = @"_gcBtB";
    *&v17 = a3->var7;
    v39 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    v52[9] = v39;
    v51[10] = @"_gcBtX";
    *&v18 = a3->var8;
    v38 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v52[10] = v38;
    v51[11] = @"_gcBtY";
    *&v19 = a3->var9;
    v37 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    v52[11] = v37;
    v51[12] = @"_gcL1";
    *&v20 = a3->var13;
    v36 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    v52[12] = v36;
    v51[13] = @"_gcL2";
    *&v21 = a3->var10;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
    v52[13] = v22;
    v51[14] = @"_gcR1";
    *&v23 = a3->var14;
    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    v52[14] = v24;
    v51[15] = @"_gcR2";
    *&v25 = a3->var11;
    [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v26 = v50 = v9;
    v52[15] = v26;
    v51[16] = @"_gcLThB";
    v27 = [MEMORY[0x1E696AD98] numberWithInt:a3->var12];
    v52[16] = v27;
    v51[17] = @"_gcRThB";
    [MEMORY[0x1E696AD98] numberWithInt:a3->var15];
    v28 = v35 = self;
    v52[17] = v28;
    v51[18] = @"_gcBtHome";
    v29 = [MEMORY[0x1E696AD98] numberWithInt:v11];
    v52[18] = v29;
    v51[19] = @"_gcBtMenu";
    v30 = [MEMORY[0x1E696AD98] numberWithInt:v12];
    v52[19] = v30;
    v51[20] = @"_gcBtOptions";
    v31 = [MEMORY[0x1E696AD98] numberWithInt:v43];
    v52[20] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:21];

    v9 = v50;
    [(RPMessageable *)v35->_messenger sendEventID:@"_hidGC" event:v32 destinationID:v8 options:0 completion:v50];
  }

  else
  {
    v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RPHIDGCSessionErrorDomain" code:0 userInfo:0];
    if (v9)
    {
      v9[2](v9, v33);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

@end