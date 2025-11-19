@interface SUPastisOperation
- (id)_getAppCertWithError:(id *)a3;
- (id)_getCKCForSPC:(id)a3 URI:(id)a4 error:(id *)a5;
- (id)_getURIWithError:(id *)a3;
- (void)dealloc;
- (void)run;
@end

@implementation SUPastisOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUPastisOperation;
  [(SUPastisOperation *)&v3 dealloc];
}

- (void)run
{
  v3 = [(SUPastisOperation *)self _getURIWithError:0];
  if (v3 && (v4 = v3, (v5 = -[SUPastisOperation _getAppCertWithError:](self, "_getAppCertWithError:", 0)) != 0) && (v6 = -[AVAssetResourceLoadingRequest streamingContentKeyRequestDataForApp:contentIdentifier:options:error:](self->_loadingRequest, "streamingContentKeyRequestDataForApp:contentIdentifier:options:error:", v5, [v4 dataUsingEncoding:4], 0, 0)) != 0 && (v7 = -[SUPastisOperation _getCKCForSPC:URI:error:](self, "_getCKCForSPC:URI:error:", v6, v4, 0)) != 0)
  {
    [(AVAssetResourceLoadingDataRequest *)[(AVAssetResourceLoadingRequest *)self->_loadingRequest dataRequest] respondWithData:v7];
    loadingRequest = self->_loadingRequest;

    [(AVAssetResourceLoadingRequest *)loadingRequest finishLoading];
  }

  else
  {
    v9 = self->_loadingRequest;

    [(AVAssetResourceLoadingRequest *)v9 finishLoadingWithError:0];
  }
}

- (id)_getAppCertWithError:(id *)a3
{
  if (self->_certificateUrl)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:self->_certificateUrl];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69D4970]);
    [v4 setURLBagKey:@"skd-setup-cert"];
  }

  [v4 setCachePolicy:1];
  v5 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v5 setRequestProperties:v4];
  [v5 setDataProvider:{objc_msgSend(MEMORY[0x1E69E4738], "provider")}];

  v6 = [(SUPastisOperation *)self runSubOperation:v5 returningError:0];
  v7 = 0;
  if (v6)
  {
    v7 = [objc_msgSend(v5 "dataProvider")];
  }

  return v7;
}

- (id)_getURIWithError:(id *)a3
{
  v3 = [(NSURLRequest *)[(AVAssetResourceLoadingRequest *)self->_loadingRequest request] URL];

  return [(NSURL *)v3 absoluteString];
}

- (id)_getCKCForSPC:(id)a3 URI:(id)a4 error:(id *)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = @"fairplay-streaming-request";
  v24[0] = @"version";
  v24[1] = @"streaming-keys";
  v25[0] = &unk_1F41EA900;
  v21[0] = @"id";
  v21[1] = @"spc";
  v22[0] = &unk_1F41EA900;
  v22[1] = a3;
  v21[2] = @"uri";
  v22[2] = a4;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v25[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v27[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:0];
  if (self->_keyUrl)
  {
    v8 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:self->_keyUrl];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69D4970]);
    [v8 setURLBagKey:@"skd-get-keys"];
  }

  [v8 setCachePolicy:1];
  [v8 setHTTPBody:v7];
  [v8 setHTTPMethod:@"POST"];
  v9 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v9 setRequestProperties:v8];
  [v9 setDataProvider:{objc_msgSend(MEMORY[0x1E69E4738], "provider")}];

  if (-[SUPastisOperation runSubOperation:returningError:](self, "runSubOperation:returningError:", v9, 0) && (v10 = [objc_msgSend(v9 "dataProvider")]) != 0 && (v11 = objc_msgSend(MEMORY[0x1E696ACB0], "JSONObjectWithData:options:error:", v10, 0, 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12 = objc_msgSend(v11, "objectForKey:", @"fairplay-streaming-response"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v13 = objc_msgSend(v12, "objectForKey:", @"streaming-keys"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v13, "count"))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [v13 objectAtIndex:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 objectForKey:@"id"];
        v18 = [v16 objectForKey:@"status"];
        v19 = [v16 objectForKey:@"ckc"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v17 integerValue] == 1 && !objc_msgSend(v18, "integerValue"))
        {
          v14 = v19;
        }
      }

      ++v15;
    }

    while (v15 < [v13 count]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end