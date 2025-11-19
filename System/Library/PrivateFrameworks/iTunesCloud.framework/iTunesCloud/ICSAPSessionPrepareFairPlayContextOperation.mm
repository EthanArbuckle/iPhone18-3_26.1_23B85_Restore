@interface ICSAPSessionPrepareFairPlayContextOperation
- (void)_exchangeDataWithSAPContext:(id)a3 requestContext:(id)a4 setupURL:(id)a5 responseData:(id)a6 completionHandler:(id)a7;
- (void)execute;
@end

@implementation ICSAPSessionPrepareFairPlayContextOperation

- (void)execute
{
  v3 = [(ICSAPSession *)self->_sapSession _sapContext];
  if (v3)
  {
    responseHandler = self->_responseHandler;
    if (responseHandler)
    {
      responseHandler[2](responseHandler, v3, 0);
    }

    [(ICAsyncOperation *)self finishWithError:0];
  }

  else
  {
    v5 = [(ICSAPSession *)self->_sapSession _certificateURL];
    v6 = [(ICSAPSession *)self->_sapSession _setupURL];
    v7 = [(ICSAPSession *)self->_sapSession _requestContext];
    v19 = 0;
    v8 = [[ICFPSAPContext alloc] initReturningError:&v19];
    v9 = v19;
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v13 = [[ICStoreURLRequest alloc] initWithURL:v5 requestContext:v7];
      [(ICStoreURLRequest *)v13 setShouldUseMescalSigning:0];
      [(ICURLRequest *)v13 setPrioritize:1];
      v14 = +[ICCertificateCache shared];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __54__ICSAPSessionPrepareFairPlayContextOperation_execute__block_invoke;
      v15[3] = &unk_1E7BF7178;
      v15[4] = self;
      v16 = v8;
      v17 = v7;
      v18 = v6;
      [v14 getDataForSAPCertificateRequest:v13 withCompletionHandler:v15];
    }

    else
    {
      v12 = self->_responseHandler;
      if (v12)
      {
        v12[2](v12, 0, v10);
      }

      [(ICAsyncOperation *)self finishWithError:v10];
    }
  }
}

- (void)_exchangeDataWithSAPContext:(id)a3 requestContext:(id)a4 setupURL:(id)a5 responseData:(id)a6 completionHandler:(id)a7
{
  v38[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v36 = -1;
  sapSession = self->_sapSession;
  v17 = a6;
  v34 = 0;
  v35 = 0;
  LODWORD(sapSession) = [v12 exchangeWithSAPVersion:-[ICSAPSession sapVersion](sapSession data:"sapVersion") returningData:v17 exchangeStatus:&v35 error:{&v36, &v34}];

  v18 = v35;
  v19 = v34;
  if (!sapSession)
  {
    v15[2](v15, v19);
LABEL_10:
    v22 = v19;
    goto LABEL_13;
  }

  if (!v18 || v36 != 1)
  {
    if (v36)
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      v15[2](v15, v23);
    }

    else
    {
      v15[2](v15, 0);
    }

    goto LABEL_10;
  }

  v37 = @"sign-sap-setup-buffer";
  v38[0] = v18;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v33 = 0;
  v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v20 format:100 options:0 error:&v33];
  v22 = v33;

  if (v22)
  {
    v15[2](v15, v22);
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v14];
    [v24 setHTTPMethod:@"POST"];
    [v24 setHTTPBody:v21];
    v26 = +[ICURLSessionManager unlimitedHighPrioritySession];
    v27 = v21;
    v25 = [[ICStoreURLRequest alloc] initWithURLRequest:v24 requestContext:v13];
    [(ICStoreURLRequest *)v25 setShouldUseMescalSigning:0];
    [(ICURLRequest *)v25 setPrioritize:1];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __130__ICSAPSessionPrepareFairPlayContextOperation__exchangeDataWithSAPContext_requestContext_setupURL_responseData_completionHandler___block_invoke;
    v28[3] = &unk_1E7BF71A0;
    v28[4] = self;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    [v26 enqueueUploadRequest:v25 withCompletionHandler:v28];

    v21 = v27;
  }

LABEL_13:
}

void __130__ICSAPSessionPrepareFairPlayContextOperation__exchangeDataWithSAPContext_requestContext_setupURL_responseData_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = [a2 parsedBodyDictionary];
    v8 = [v5 objectForKey:@"sign-sap-setup-buffer"];

    if (_NSIsNSData())
    {
      [*(a1 + 32) _exchangeDataWithSAPContext:*(a1 + 40) requestContext:*(a1 + 48) setupURL:*(a1 + 56) responseData:v8 completionHandler:*(a1 + 64)];
    }

    else
    {
      v6 = *(a1 + 64);
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void __54__ICSAPSessionPrepareFairPlayContextOperation_execute__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  if (v5)
  {
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__ICSAPSessionPrepareFairPlayContextOperation_execute__block_invoke_2;
    v12[3] = &unk_1E7BF92E0;
    v12[4] = v7;
    v13 = v8;
    [v7 _exchangeDataWithSAPContext:v13 requestContext:v9 setupURL:v10 responseData:v5 completionHandler:v12];
  }

  else
  {
    v11 = v7[37];
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v6);
      v7 = a1[4];
    }

    [v7 finishWithError:v6];
  }
}

void __54__ICSAPSessionPrepareFairPlayContextOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    v5 = *(v4 + 296);
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = 0;
  }

  else
  {
    [*(v4 + 288) _setSAPContext:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 296);
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 40);
  }

  (*(v5 + 16))(v5, v6, v7);
  v4 = *(a1 + 32);
LABEL_7:
  [v4 finishWithError:v7];
}

@end