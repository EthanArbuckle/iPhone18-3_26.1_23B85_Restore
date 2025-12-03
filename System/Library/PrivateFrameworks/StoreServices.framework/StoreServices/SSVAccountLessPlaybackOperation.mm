@interface SSVAccountLessPlaybackOperation
- (NSDictionary)HTTPHeaderFields;
- (NSString)assetStoreFrontIdentifier;
- (NSString)itemIdentifier;
- (id)_requestBodyData;
- (id)responseBlock;
- (id)valueForHTTPHeaderField:(id)field;
- (void)main;
- (void)setAssetStoreFrontIdentifier:(id)identifier;
- (void)setHTTPHeaderFields:(id)fields;
- (void)setItemIdentifier:(id)identifier;
- (void)setResponseBlock:(id)block;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
@end

@implementation SSVAccountLessPlaybackOperation

- (NSString)assetStoreFrontIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__69;
  v9 = __Block_byref_object_dispose__69;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__SSVAccountLessPlaybackOperation_assetStoreFrontIdentifier__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSDictionary)HTTPHeaderFields
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__69;
  v9 = __Block_byref_object_dispose__69;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SSVAccountLessPlaybackOperation_HTTPHeaderFields__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __51__SSVAccountLessPlaybackOperation_HTTPHeaderFields__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 320) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)itemIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__69;
  v9 = __Block_byref_object_dispose__69;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SSVAccountLessPlaybackOperation_itemIdentifier__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __49__SSVAccountLessPlaybackOperation_itemIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 328) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)responseBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1_0;
  v9 = __Block_byref_object_dispose__2_0;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SSVAccountLessPlaybackOperation_responseBlock__block_invoke;
  v4[3] = &unk_1E84ABF40;
  v4[4] = self;
  v4[5] = &v5;
  [(SSVOperation *)self dispatchSync:v4];
  v2 = MEMORY[0x1DA6DFBB0](v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __48__SSVAccountLessPlaybackOperation_responseBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 336) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setAssetStoreFrontIdentifier:(id)identifier
{
  v4 = [identifier copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__SSVAccountLessPlaybackOperation_setAssetStoreFrontIdentifier___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVOperation *)self dispatchAsync:v6];
}

- (void)setItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__SSVAccountLessPlaybackOperation_setItemIdentifier___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __53__SSVAccountLessPlaybackOperation_setItemIdentifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 328) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 328);
    *(v5 + 328) = v4;
  }
}

- (void)setResponseBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SSVAccountLessPlaybackOperation_setResponseBlock___block_invoke;
  v6[3] = &unk_1E84AC360;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSVOperation *)self dispatchAsync:v6];
}

void __52__SSVAccountLessPlaybackOperation_setResponseBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 336) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 336);
    *(v5 + 336) = v4;
  }
}

- (void)setHTTPHeaderFields:(id)fields
{
  v4 = [fields mutableCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SSVAccountLessPlaybackOperation_setHTTPHeaderFields___block_invoke;
  v6[3] = &unk_1E84AC028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SSVOperation *)self dispatchAsync:v6];
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__SSVAccountLessPlaybackOperation_setValue_forHTTPHeaderField___block_invoke;
  v10[3] = &unk_1E84AC078;
  v11 = valueCopy;
  selfCopy = self;
  v13 = fieldCopy;
  v8 = fieldCopy;
  v9 = valueCopy;
  [(SSVOperation *)self dispatchAsync:v10];
}

uint64_t __63__SSVAccountLessPlaybackOperation_setValue_forHTTPHeaderField___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 320);
  if (v2)
  {
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = a1[5];
      v6 = *(v5 + 320);
      *(v5 + 320) = v4;

      v2 = a1[4];
      v3 = *(a1[5] + 320);
    }

    v7 = a1[6];

    return [v3 setObject:v2 forKey:v7];
  }

  else
  {
    v9 = a1[6];

    return [v3 removeObjectForKey:v9];
  }
}

- (id)valueForHTTPHeaderField:(id)field
{
  fieldCopy = field;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__69;
  v15 = __Block_byref_object_dispose__69;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__SSVAccountLessPlaybackOperation_valueForHTTPHeaderField___block_invoke;
  v8[3] = &unk_1E84ABF90;
  v10 = &v11;
  v8[4] = self;
  v5 = fieldCopy;
  v9 = v5;
  [(SSVOperation *)self dispatchSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __59__SSVAccountLessPlaybackOperation_valueForHTTPHeaderField___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 320) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)main
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__69;
  v45 = __Block_byref_object_dispose__69;
  v46 = 0;
  uRLBagDictionary = [(SSVComplexOperation *)self URLBagDictionary];
  v4 = [uRLBagDictionary objectForKey:@"subDownload"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = SSError(@"SSErrorDomain", 124, 0, 0);
    v18 = v42[5];
    v42[5] = v17;

    v19 = 0;
    goto LABEL_22;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__69;
  v39 = __Block_byref_object_dispose__69;
  v40 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
  v6 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v5];
  [v6 setHTTPMethod:@"POST"];
  [v6 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  hTTPHeaderFields = [(SSVAccountLessPlaybackOperation *)self HTTPHeaderFields];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __39__SSVAccountLessPlaybackOperation_main__block_invoke;
  v33[3] = &unk_1E84ADD90;
  v8 = v6;
  v34 = v8;
  [hTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v33];
  v9 = [(SSVComplexOperation *)self newLoadURLOperationWithRequest:v8];
  v10 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
  [v9 setDataConsumer:v10];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __39__SSVAccountLessPlaybackOperation_main__block_invoke_2;
  v32[3] = &unk_1E84B1CC8;
  v32[4] = &v41;
  v32[5] = &v35;
  [v9 setOutputBlock:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __39__SSVAccountLessPlaybackOperation_main__block_invoke_3;
  v31[3] = &unk_1E84B2FF0;
  v31[4] = self;
  [v9 setPrepareRequestBlock:v31];
  [(SSVOperation *)self runChildOperation:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = hTTPHeaderFields;
    v30 = v5;
    v11 = [v36[5] objectForKey:@"keybag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SSVFairPlayContextIdentifier();
      [v11 bytes];
      [v11 length];
      lCUad();
    }

    v12 = [v36[5] objectForKey:@"failureType"];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      pastisKeyServerURL = [v36[5] objectForKey:@"dialog"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SSVURLBagInterpreter *)v13 setObject:pastisKeyServerURL forKey:@"SSVPlaybackResponseErrorUserInfoKeyDialogDictionary"];
      }

      if (![(SSVURLBagInterpreter *)v13 count])
      {

        v13 = 0;
      }

      v15 = MEMORY[0x1E696ABC0];
      if (objc_opt_respondsToSelector())
      {
        integerValue = [v12 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      v25 = [v15 errorWithDomain:@"SSServerErrorDomain" code:integerValue userInfo:v13];
      v26 = v42[5];
      v42[5] = v25;

      v19 = 0;
    }

    else
    {
      v21 = [SSVPlaybackResponse alloc];
      v22 = v36[5];
      uRLResponse = [v9 URLResponse];
      v19 = [(SSVPlaybackResponse *)v21 initWithDictionary:v22 URLResponse:uRLResponse];

      v13 = [[SSVURLBagInterpreter alloc] initWithURLBagDictionary:uRLBagDictionary];
      pastisCertificateURL = [(SSVURLBagInterpreter *)v13 pastisCertificateURL];
      [(SSVPlaybackResponse *)v19 setFallbackStreamingKeyCertificateURL:pastisCertificateURL];

      pastisKeyServerURL = [(SSVURLBagInterpreter *)v13 pastisKeyServerURL];
      [(SSVPlaybackResponse *)v19 setFallbackStreamingKeyServerURL:pastisKeyServerURL];
    }

    hTTPHeaderFields = v29;
    v5 = v30;
    goto LABEL_20;
  }

  if (!v42[5])
  {
    v20 = SSError(@"SSErrorDomain", 100, 0, 0);
    v19 = 0;
    v11 = v42[5];
    v42[5] = v20;
LABEL_20:

    goto LABEL_21;
  }

  v19 = 0;
LABEL_21:

  _Block_object_dispose(&v35, 8);
LABEL_22:
  responseBlock = [(SSVAccountLessPlaybackOperation *)self responseBlock];
  v28 = responseBlock;
  if (responseBlock)
  {
    (*(responseBlock + 16))(responseBlock, v19, v42[5]);
  }

  _Block_object_dispose(&v41, 8);
}

void __39__SSVAccountLessPlaybackOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __39__SSVAccountLessPlaybackOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _requestBodyData];
  [v3 setHTTPBody:v4];
}

- (id)_requestBodyData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = +[SSDevice currentDevice];
  uniqueDeviceIdentifier = [v4 uniqueDeviceIdentifier];

  if (uniqueDeviceIdentifier)
  {
    [v3 setObject:uniqueDeviceIdentifier forKey:@"guid"];
  }

  itemIdentifier = [(SSVAccountLessPlaybackOperation *)self itemIdentifier];

  if (itemIdentifier)
  {
    [v3 setObject:itemIdentifier forKey:@"salableAdamId"];
  }

  [v3 setObject:@"accountless-streaming" forKey:@"action"];
  assetStoreFrontIdentifier = [(SSVAccountLessPlaybackOperation *)self assetStoreFrontIdentifier];

  if (assetStoreFrontIdentifier)
  {
    [v3 setObject:assetStoreFrontIdentifier forKey:@"assetStoreFront"];
  }

  v16 = 0;
  v15 = 0;
  v8 = SSVFairPlayContextIdentifier();
  Mt76Vq80ux(v8, -1, 0, 309, &v16, &v15);
  if (!v9 && v16)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEF0]);
    v11 = [v10 initWithBytesNoCopy:v16 length:v15 freeWhenDone:0];
    v12 = [v11 base64EncodedStringWithOptions:0];
    if (v12)
    {
      [v3 setObject:v12 forKey:@"kbsync"];
    }

    jEHf8Xzsv8K(v16);
  }

  v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];

  return v13;
}

@end