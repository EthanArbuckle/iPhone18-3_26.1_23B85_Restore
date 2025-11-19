@interface SSVSecureKeyDeliveryRequestOperation
- (AVAssetResourceLoadingRequest)resourceLoadingRequest;
- (BOOL)isITunesStoreRequest;
- (BOOL)shouldIncludeGUID;
- (NSData)persistentContentKeyContext;
- (NSData)serverPlaybackContextData;
- (NSURL)certificateURL;
- (NSURL)keyServerURL;
- (SSVSecureKeyDeliveryRequestOperation)init;
- (SSVSecureKeyDeliveryRequestOperationDelegate)serverPlaybackContextDataDelegate;
- (double)_timeIntervalForStreamingKeyID:(int64_t)a3 responseKey:(id)a4 streamingKeyDictionaries:(id)a5;
- (id)_contentKeyContextForStreamingKeyID:(int64_t)a3 streamingKeyDictionaries:(id)a4 renewAfter:(double *)a5 error:(id *)a6;
- (id)_streamingKeyDictionaryForID:(int64_t)a3 URI:(id)a4 serverPlaybackContextData:(id)a5;
- (id)_streamingRequestDictionaryWithStreamingKeyDictionaries:(id)a3;
- (id)responseBlock;
- (void)_sendResponseBlockWithError:(id)a3;
- (void)configureWithURLBagDictionary:(id)a3;
- (void)main;
- (void)setCertificateURL:(id)a3;
- (void)setITunesStoreRequest:(BOOL)a3;
- (void)setKeyServerURL:(id)a3;
- (void)setPersistentContentKeyContext:(id)a3;
- (void)setResourceLoadingRequest:(id)a3;
- (void)setResponseBlock:(id)a3;
- (void)setServerPlaybackContextData:(id)a3;
- (void)setShouldIncludeGUID:(BOOL)a3;
- (void)start;
@end

@implementation SSVSecureKeyDeliveryRequestOperation

- (SSVSecureKeyDeliveryRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = SSVSecureKeyDeliveryRequestOperation;
  v2 = [(SSVSecureKeyDeliveryRequestOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVSecureKeyDeliveryRequestOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

- (NSURL)certificateURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SSVSecureKeyDeliveryRequestOperation_certificateURL__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSURL)keyServerURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SSVSecureKeyDeliveryRequestOperation_keyServerURL__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSData)persistentContentKeyContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SSVSecureKeyDeliveryRequestOperation_persistentContentKeyContext__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (AVAssetResourceLoadingRequest)resourceLoadingRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__SSVSecureKeyDeliveryRequestOperation_resourceLoadingRequest__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)responseBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__87;
  v10 = __Block_byref_object_dispose__88;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSVSecureKeyDeliveryRequestOperation_responseBlock__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = MEMORY[0x1DA6DFBB0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__SSVSecureKeyDeliveryRequestOperation_responseBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSData)serverPlaybackContextData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SSVSecureKeyDeliveryRequestOperation_serverPlaybackContextData__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setCertificateURL:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SSVSecureKeyDeliveryRequestOperation_setCertificateURL___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setPersistentContentKeyContext:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SSVSecureKeyDeliveryRequestOperation_setPersistentContentKeyContext___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setKeyServerURL:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SSVSecureKeyDeliveryRequestOperation_setKeyServerURL___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setITunesStoreRequest:(BOOL)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__SSVSecureKeyDeliveryRequestOperation_setITunesStoreRequest___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_barrier_async(accessQueue, v4);
}

- (void)setResourceLoadingRequest:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SSVSecureKeyDeliveryRequestOperation_setResourceLoadingRequest___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setResponseBlock:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SSVSecureKeyDeliveryRequestOperation_setResponseBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __57__SSVSecureKeyDeliveryRequestOperation_setResponseBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 280);
  *(v3 + 280) = v2;
}

- (void)setShouldIncludeGUID:(BOOL)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__SSVSecureKeyDeliveryRequestOperation_setShouldIncludeGUID___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_barrier_async(accessQueue, v4);
}

- (void)setServerPlaybackContextData:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SSVSecureKeyDeliveryRequestOperation_setServerPlaybackContextData___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

- (BOOL)shouldIncludeGUID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SSVSecureKeyDeliveryRequestOperation_shouldIncludeGUID__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isITunesStoreRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__SSVSecureKeyDeliveryRequestOperation_isITunesStoreRequest__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)configureWithURLBagDictionary:(id)a3
{
  v4 = [a3 copy];
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SSVSecureKeyDeliveryRequestOperation_configureWithURLBagDictionary___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __70__SSVSecureKeyDeliveryRequestOperation_configureWithURLBagDictionary___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 296), *(a1 + 40));
  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 288) = 1;
  }
}

- (void)main
{
  v296[1] = *MEMORY[0x1E69E9840];
  if (![(SSVSecureKeyDeliveryRequestOperation *)self isCancelled])
  {
    v276 = 0;
    v277 = &v276;
    v278 = 0x3032000000;
    v279 = __Block_byref_object_copy__2;
    v280 = __Block_byref_object_dispose__2;
    v281 = 0;
    v270 = 0;
    v271 = &v270;
    v272 = 0x3032000000;
    v273 = __Block_byref_object_copy__2;
    v274 = __Block_byref_object_dispose__2;
    v275 = 0;
    v264 = 0;
    v265 = &v264;
    v266 = 0x3032000000;
    v267 = __Block_byref_object_copy__2;
    v268 = __Block_byref_object_dispose__2;
    v269 = 0;
    v258 = 0;
    v259 = &v258;
    v260 = 0x3032000000;
    v261 = __Block_byref_object_copy__2;
    v262 = __Block_byref_object_dispose__2;
    v263 = 0;
    v254 = 0;
    v255 = &v254;
    v256 = 0x2020000000;
    v257 = 0;
    v250 = 0;
    v251 = &v250;
    v252 = 0x2020000000;
    v253 = 0;
    v244 = 0;
    v245 = &v244;
    v246 = 0x3032000000;
    v247 = __Block_byref_object_copy__2;
    v248 = __Block_byref_object_dispose__2;
    v249 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke;
    block[3] = &unk_1E84AD098;
    block[4] = self;
    block[5] = &v276;
    block[6] = &v270;
    block[7] = &v258;
    block[8] = &v254;
    block[9] = &v250;
    block[10] = &v264;
    block[11] = &v244;
    dispatch_sync(accessQueue, block);
    if (!v277[5] || !v271[5] || !v259[5])
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2002 userInfo:0];
      [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v5];
LABEL_180:

      _Block_object_dispose(&v244, 8);
      _Block_object_dispose(&v250, 8);
      _Block_object_dispose(&v254, 8);
      _Block_object_dispose(&v258, 8);

      _Block_object_dispose(&v264, 8);
      _Block_object_dispose(&v270, 8);

      _Block_object_dispose(&v276, 8);
      return;
    }

    if (*(v255 + 24) == 1 && v265[5])
    {
      v4 = [SSVURLBagInterpreter alloc];
      v5 = [(SSVURLBagInterpreter *)v4 initWithURLBagDictionary:v265[5]];
    }

    else
    {
      v5 = 0;
    }

    v6 = objc_alloc(MEMORY[0x1E696AD68]);
    v7 = [v6 initWithURL:v277[5]];
    [v7 setHTTPMethod:@"GET"];
    v217 = v7;
    v237 = 0;
    v238 = &v237;
    v239 = 0x3032000000;
    v240 = __Block_byref_object_copy__2;
    v241 = __Block_byref_object_dispose__2;
    v242 = 0;
    v231 = 0;
    v232 = &v231;
    v233 = 0x3032000000;
    v234 = __Block_byref_object_copy__2;
    v235 = __Block_byref_object_dispose__2;
    v236 = 0;
    v8 = [[SSVLoadURLOperation alloc] initWithURLRequest:v7];
    v9 = v8;
    if (*(v255 + 24) == 1)
    {
      [(SSVLoadURLOperation *)v8 setITunesStoreRequest:1];
      if (v265[5])
      {
        [(SSVLoadURLOperation *)v9 configureWithURLBagDictionary:?];
        v10 = [(SSVLoadURLOperation *)v9 storeFrontSuffix];
        v11 = v10 == 0;

        if (v11)
        {
          v12 = [(SSVURLBagInterpreter *)v5 storeFrontSuffix];
          [(SSVLoadURLOperation *)v9 setStoreFrontSuffix:v12];
        }

        [(SSVLoadURLOperation *)v9 setMachineDataStyle:2];
        v13 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:1];
        [(SSVLoadURLOperation *)v9 setSAPSignaturePolicy:v13];
      }
    }

    v230[0] = MEMORY[0x1E69E9820];
    v230[1] = 3221225472;
    v230[2] = __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_2;
    v230[3] = &unk_1E84AD0C0;
    v230[4] = &v231;
    v230[5] = &v237;
    [(SSVLoadURLOperation *)v9 setOutputBlock:v230];
    [(SSVLoadURLOperation *)v9 main];
    if ([v232[5] length])
    {
      v14 = [v259[5] request];
      v215 = [v14 URL];

      v15 = [v215 host];
      v212 = [v15 dataUsingEncoding:4];
      v210 = v15;
      if (*(v251 + 24) == 1)
      {
        v16 = SSVAVFoundationFramework();
        v17 = SSVWeakLinkedStringConstantForString("AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey", v16);
        v295 = v17;
        v296[0] = MEMORY[0x1E695E118];
        v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v296 forKeys:&v295 count:1];
      }

      else
      {
        v211 = 0;
      }

      if (v245[5])
      {
        v19 = 0;
      }

      else
      {
        v32 = v259[5];
        v33 = v232[5];
        v229 = 0;
        v34 = [v32 streamingContentKeyRequestDataForApp:v33 contentIdentifier:v212 options:v211 error:&v229];
        v19 = v229;
        v35 = v245[5];
        v245[5] = v34;

        [(SSVSecureKeyDeliveryRequestOperation *)self setServerPlaybackContextData:v245[5]];
        v36 = [(SSVSecureKeyDeliveryRequestOperation *)self serverPlaybackContextDataDelegate];
        [v36 secureKeyDeliveryRequestOperationDidChangeServerPlaybackContextData:self];
      }

      v37 = [v215 absoluteString];
      v213 = v37;
      if (v19 || !v245[5])
      {
        v18 = v19;
        v38 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v38)
        {
          v38 = +[SSLogConfig sharedConfig];
        }

        v39 = [v38 shouldLog];
        v40 = [v38 shouldLogToDisk];
        v41 = [v38 OSLogObject];
        if (v40)
        {
          v39 |= 2u;
        }

        v42 = v41;
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v39 &= 2u;
        }

        if (v39)
        {
          v43 = objc_opt_class();
          *v290 = 138543618;
          *&v290[4] = v43;
          *&v290[12] = 2112;
          *&v290[14] = v18;
          v44 = v43;
          LODWORD(v199) = 22;
          v198 = v290;
          v45 = _os_log_send_and_compose_impl();

          if (!v45)
          {
LABEL_176:

            goto LABEL_177;
          }

          v42 = [MEMORY[0x1E696AEC0] stringWithCString:v45 encoding:{4, v290, v199}];
          free(v45);
          SSFileLog(v38, @"%@", v46, v47, v48, v49, v50, v51, v42);
        }

LABEL_175:

        goto LABEL_176;
      }

      v38 = [(SSVSecureKeyDeliveryRequestOperation *)self _streamingKeyDictionaryForID:0 URI:v37 serverPlaybackContextData:?];
      v294 = v38;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v294 count:1];
      v209 = [(SSVSecureKeyDeliveryRequestOperation *)self _streamingRequestDictionaryWithStreamingKeyDictionaries:v52];

      v228 = 0;
      v53 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v209 options:0 error:&v228];
      v54 = v228;
      v18 = v54;
      v208 = v53;
      if (v53 && !v54)
      {
        v55 = [MEMORY[0x1E696AD68] requestWithURL:v271[5]];
        [v55 setHTTPBody:v53];
        [v55 setHTTPMethod:@"POST"];
        [v55 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        v205 = [MEMORY[0x1E695DF00] date];
        *v290 = 0;
        *&v290[8] = v290;
        *&v290[16] = 0x3032000000;
        v291 = __Block_byref_object_copy__2;
        v292 = __Block_byref_object_dispose__2;
        v293 = 0;
        v222 = 0;
        v223 = &v222;
        v224 = 0x3032000000;
        v225 = __Block_byref_object_copy__2;
        v226 = __Block_byref_object_dispose__2;
        v227 = 0;
        v56 = [[SSVLoadURLOperation alloc] initWithURLRequest:v55];
        v57 = v56;
        v206 = v55;
        v207 = v56;
        if (*(v255 + 24) == 1)
        {
          [(SSVLoadURLOperation *)v56 setITunesStoreRequest:1];
          if (v265[5])
          {
            [(SSVLoadURLOperation *)v57 configureWithURLBagDictionary:?];
            v58 = [(SSVLoadURLOperation *)v57 storeFrontSuffix];
            v59 = v58 == 0;

            if (v59)
            {
              v60 = [(SSVURLBagInterpreter *)v5 storeFrontSuffix];
              [(SSVLoadURLOperation *)v207 setStoreFrontSuffix:v60];
            }

            [(SSVLoadURLOperation *)v207 setMachineDataStyle:2];
            v61 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:1];
            [(SSVLoadURLOperation *)v207 setSAPSignaturePolicy:v61];

            v57 = v207;
          }
        }

        v62 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
        [(SSVLoadURLOperation *)v57 setDataConsumer:v62];

        v221[0] = MEMORY[0x1E69E9820];
        v221[1] = 3221225472;
        v221[2] = __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_3;
        v221[3] = &unk_1E84AD0E8;
        v221[4] = self;
        v221[5] = &v222;
        v221[6] = v290;
        [(SSVLoadURLOperation *)v207 setOutputBlock:v221];
        [(SSVLoadURLOperation *)v207 main];
        v220 = 0.0;
        v63 = 0.0;
        if (![v209 count] || *(*&v290[8] + 40))
        {
          v64 = 0;
          v18 = 0;
          v65 = 0.0;
          goto LABEL_131;
        }

        v203 = [v223[5] objectForKey:@"fairplay-streaming-response"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v116 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v116)
          {
            v116 = +[SSLogConfig sharedConfig];
          }

          v117 = [v116 shouldLog];
          v118 = [v116 shouldLogToDisk];
          v119 = [v116 OSLogObject];
          v113 = v119;
          if (v118)
          {
            v117 |= 2u;
          }

          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            v120 = v117;
          }

          else
          {
            v120 = v117 & 2;
          }

          v201 = v116;
          if (v120)
          {
            v121 = objc_opt_class();
            v122 = objc_opt_class();
            v284 = 138543618;
            v285 = v121;
            v286 = 2112;
            v287 = v122;
            v123 = v122;
            LODWORD(v199) = 22;
            v198 = &v284;
            v18 = _os_log_send_and_compose_impl();

            if (!v18)
            {
              v64 = 0;
              v65 = 0.0;
              goto LABEL_130;
            }

            v113 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v284, v199}];
            free(v18);
            SSFileLog(v201, @"%@", v124, v125, v126, v127, v128, v129, v113);
          }

LABEL_105:
          v64 = 0;
          v18 = 0;
LABEL_128:
          v65 = 0.0;
          goto LABEL_129;
        }

        v201 = [v203 objectForKey:@"version"];
        if (objc_opt_respondsToSelector())
        {
          v112 = [v201 longLongValue];
          if (v112 == 1)
          {
            v113 = [v203 objectForKey:@"streaming-keys"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v219 = 0;
              v64 = [(SSVSecureKeyDeliveryRequestOperation *)self _contentKeyContextForStreamingKeyID:0 streamingKeyDictionaries:v113 renewAfter:&v220 error:&v219];
              v18 = v219;
              [(SSVSecureKeyDeliveryRequestOperation *)self _expirationTimeForStreamingKeyID:0 streamingKeyDictionaries:v113];
              v65 = v114;
              [(SSVSecureKeyDeliveryRequestOperation *)self _playbackStartTimeForStreamingKeyID:0 streamingKeyDictionaries:v113];
              v63 = v115;
LABEL_129:

LABEL_130:
LABEL_131:
              if (!(v18 | v64))
              {
                v163 = *(*&v290[8] + 40);
                if (!v163)
                {
                  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2005 userInfo:0];
                  goto LABEL_171;
                }

                v202 = v64;
                v18 = v163;
                v164 = +[SSLogConfig sharedStoreServicesConfig];
                if (!v164)
                {
                  v164 = +[SSLogConfig sharedConfig];
                }

                v165 = [v164 shouldLog];
                v166 = [v164 shouldLogToDisk];
                v204 = v164;
                v167 = [v164 OSLogObject];
                v168 = v167;
                if (v166)
                {
                  v165 |= 2u;
                }

                if (!os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  v165 &= 2u;
                }

                if (v165)
                {
                  v169 = objc_opt_class();
                  v284 = 138543618;
                  v285 = v169;
                  v286 = 2112;
                  v287 = v18;
                  v170 = v169;
                  LODWORD(v199) = 22;
                  v198 = &v284;
                  v171 = _os_log_send_and_compose_impl();

                  if (!v171)
                  {
LABEL_170:

                    v64 = v202;
                    goto LABEL_171;
                  }

                  v168 = [MEMORY[0x1E696AEC0] stringWithCString:v171 encoding:{4, &v284, v199}];
                  free(v171);
                  SSFileLog(v204, @"%@", v172, v173, v174, v175, v176, v177, v168);
                }

LABEL_169:

                goto LABEL_170;
              }

              if (v18)
              {
                goto LABEL_171;
              }

              v162 = v259[5];
              if (!v162 || !v64)
              {
                goto LABEL_171;
              }

              if (self->_leaseAction == 3)
              {
                v18 = 0;
LABEL_171:
                self->_expirationTime = v65;
                self->_playbackStartTime = v63;

                _Block_object_dispose(&v222, 8);
                _Block_object_dispose(v290, 8);

                v84 = v205;
                goto LABEL_172;
              }

              if (*(v251 + 24) == 1)
              {
                v218 = 0;
                v204 = [v162 persistentContentKeyFromKeyVendorResponse:v64 options:0 error:&v218];
                v200 = v218;
                if (v200)
                {
                  v178 = +[SSLogConfig sharedStoreServicesConfig];
                  if (!v178)
                  {
                    v178 = +[SSLogConfig sharedConfig];
                  }

                  v179 = [v178 shouldLog];
                  v180 = [v178 shouldLogToDisk];
                  v181 = [v178 OSLogObject];
                  v182 = v181;
                  if (v180)
                  {
                    v179 |= 2u;
                  }

                  if (!os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                  {
                    v179 &= 2u;
                  }

                  if (v179)
                  {
                    v183 = objc_opt_class();
                    v284 = 138543618;
                    v285 = v183;
                    v286 = 2112;
                    v287 = v200;
                    v184 = v183;
                    LODWORD(v199) = 22;
                    v198 = &v284;
                    v185 = _os_log_send_and_compose_impl();

                    if (!v185)
                    {
LABEL_160:

LABEL_165:
                      v193 = [v259[5] dataRequest];
                      [v193 respondWithData:v64];
                      goto LABEL_166;
                    }

                    v182 = [MEMORY[0x1E696AEC0] stringWithCString:v185 encoding:{4, &v284, v199}];
                    free(v185);
                    SSFileLog(v178, @"%@", v186, v187, v188, v189, v190, v191, v182);
                  }

                  goto LABEL_160;
                }

                if (v204)
                {
                  [(SSVSecureKeyDeliveryRequestOperation *)self setPersistentContentKeyContext:?];
                  v192 = SSVAVFoundationFramework();
                  v193 = SSVWeakLinkedStringConstantForString("AVStreamingKeyDeliveryPersistentContentKeyType", v192);
                  v194 = [v259[5] contentInformationRequest];
                  [v194 setContentType:v193];

                  v195 = [v259[5] dataRequest];
                  [v195 respondWithData:v204];

                  v200 = 0;
LABEL_166:
                  v202 = v64;

                  if (v220 != 0.0)
                  {
                    v196 = [v205 dateByAddingTimeInterval:v220];
                    v197 = [v259[5] contentInformationRequest];
                    [v197 setRenewalDate:v196];
                  }

                  v18 = 0;
                  v168 = v200;
                  goto LABEL_169;
                }
              }

              v204 = 0;
              v200 = 0;
              goto LABEL_165;
            }

            goto LABEL_105;
          }

LABEL_117:
          v145 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v145)
          {
            v145 = +[SSLogConfig sharedConfig];
          }

          v146 = [v145 shouldLog];
          v147 = [v145 shouldLogToDisk];
          v148 = v145;
          v149 = [v145 OSLogObject];
          v150 = v149;
          if (v147)
          {
            v146 |= 2u;
          }

          if (!os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            v146 &= 2u;
          }

          if (v146)
          {
            v151 = objc_opt_class();
            v284 = 138543874;
            v285 = v151;
            v286 = 2048;
            v287 = v112;
            v288 = 2048;
            v289 = 1;
            v152 = v151;
            LODWORD(v199) = 32;
            v198 = &v284;
            v153 = _os_log_send_and_compose_impl();

            if (!v153)
            {
LABEL_127:

              v160 = MEMORY[0x1E696ABC0];
              v282 = @"SSVSecureKeyDeliveryErrorUserInfoKeyResponseVersion";
              v113 = [MEMORY[0x1E696AD98] numberWithLongLong:v112];
              v283 = v113;
              v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
              v18 = [v160 errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2005 userInfo:v161];

              v64 = 0;
              goto LABEL_128;
            }

            v150 = [MEMORY[0x1E696AEC0] stringWithCString:v153 encoding:{4, &v284, v199}];
            free(v153);
            SSFileLog(v148, @"%@", v154, v155, v156, v157, v158, v159, v150);
          }

          goto LABEL_127;
        }

        v130 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v130)
        {
          v130 = +[SSLogConfig sharedConfig];
        }

        v131 = [v130 shouldLog];
        v132 = [v130 shouldLogToDisk];
        v133 = [v130 OSLogObject];
        v134 = v133;
        if (v132)
        {
          v131 |= 2u;
        }

        if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
        {
          v131 &= 2u;
        }

        if (v131)
        {
          v135 = objc_opt_class();
          v136 = objc_opt_class();
          v284 = 138543618;
          v285 = v135;
          v286 = 2112;
          v287 = v136;
          v137 = v136;
          LODWORD(v199) = 22;
          v198 = &v284;
          v138 = _os_log_send_and_compose_impl();

          if (!v138)
          {
LABEL_116:

            v112 = 0;
            goto LABEL_117;
          }

          v134 = [MEMORY[0x1E696AEC0] stringWithCString:v138 encoding:{4, &v284, v199}];
          free(v138);
          SSFileLog(v130, @"%@", v139, v140, v141, v142, v143, v144, v134);
        }

        goto LABEL_116;
      }

      if (v54)
      {
        v80 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v80)
        {
          v80 = +[SSLogConfig sharedConfig];
        }

        v81 = [v80 shouldLog];
        v82 = [v80 shouldLogToDisk];
        v206 = v80;
        v83 = [v80 OSLogObject];
        v84 = v83;
        if (v82)
        {
          v81 |= 2u;
        }

        if (!os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v81 &= 2u;
        }

        if (v81)
        {
          v85 = objc_opt_class();
          *v290 = 138543618;
          *&v290[4] = v85;
          *&v290[12] = 2112;
          *&v290[14] = v18;
          v86 = v85;
          LODWORD(v199) = 22;
          v198 = v290;
          v87 = _os_log_send_and_compose_impl();

          if (!v87)
          {
LABEL_173:

            v111 = v208;
            goto LABEL_174;
          }

          v84 = [MEMORY[0x1E696AEC0] stringWithCString:v87 encoding:{4, v290, v199}];
          free(v87);
          SSFileLog(v206, @"%@", v88, v89, v90, v91, v92, v93, v84);
        }

LABEL_172:

        goto LABEL_173;
      }

      v94 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v94)
      {
        v94 = +[SSLogConfig sharedConfig];
      }

      v95 = [v94 shouldLog];
      v96 = [v94 shouldLogToDisk];
      v97 = [v94 OSLogObject];
      v98 = v97;
      if (v96)
      {
        v99 = v95 | 2;
      }

      else
      {
        v99 = v95;
      }

      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v100 = v99;
      }

      else
      {
        v100 = v99 & 2;
      }

      if (v100)
      {
        v101 = objc_opt_class();
        *v290 = 138543362;
        *&v290[4] = v101;
        v102 = v101;
        LODWORD(v199) = 12;
        v198 = v290;
        v103 = _os_log_send_and_compose_impl();

        if (!v103)
        {
LABEL_89:

          v110 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2004 userInfo:0];
          v111 = v208;
          v18 = v110;
LABEL_174:

          v42 = v209;
          goto LABEL_175;
        }

        v98 = [MEMORY[0x1E696AEC0] stringWithCString:v103 encoding:{4, v290, v199}];
        free(v103);
        SSFileLog(v94, @"%@", v104, v105, v106, v107, v108, v109, v98);
      }

      goto LABEL_89;
    }

    v18 = v238[5];
    if (v18)
    {
      v19 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v20 = [v19 shouldLog];
      v21 = [v19 shouldLogToDisk];
      v22 = [v19 OSLogObject];
      if (v21)
      {
        v20 |= 2u;
      }

      v213 = v22;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v20 &= 2u;
      }

      if (v20)
      {
        v23 = objc_opt_class();
        *v290 = 138543618;
        *&v290[4] = v23;
        *&v290[12] = 2112;
        *&v290[14] = v18;
        v24 = v23;
        LODWORD(v199) = 22;
        v198 = v290;
        v25 = _os_log_send_and_compose_impl();

        if (v25)
        {
          v214 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, v290, v199}];
          free(v25);
          SSFileLog(v19, @"%@", v26, v27, v28, v29, v30, v31, v214);
        }

        goto LABEL_178;
      }

LABEL_177:

LABEL_178:
      goto LABEL_179;
    }

    v66 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v66)
    {
      v66 = +[SSLogConfig sharedConfig];
    }

    v67 = [v66 shouldLog];
    v68 = [v66 shouldLogToDisk];
    v69 = [v66 OSLogObject];
    v70 = v69;
    if (v68)
    {
      v67 |= 2u;
    }

    if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v67 &= 2u;
    }

    if (v67)
    {
      v71 = objc_opt_class();
      *v290 = 138543362;
      *&v290[4] = v71;
      v72 = v71;
      LODWORD(v199) = 12;
      v198 = v290;
      v73 = _os_log_send_and_compose_impl();

      if (!v73)
      {
LABEL_66:

        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2003 userInfo:0];
LABEL_179:
        [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v18, v198];

        _Block_object_dispose(&v231, 8);
        _Block_object_dispose(&v237, 8);

        goto LABEL_180;
      }

      v70 = [MEMORY[0x1E696AEC0] stringWithCString:v73 encoding:{4, v290, v199}];
      free(v73);
      SSFileLog(v66, @"%@", v74, v75, v76, v77, v78, v79, v70);
    }

    goto LABEL_66;
  }

  v216 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2001 userInfo:0];
  [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v216];
}

void __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 256));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 264));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 272));
  *(*(a1[8] + 8) + 24) = *(a1[4] + 288);
  *(*(a1[9] + 8) + 24) = *(a1[4] + 321);
  objc_storeStrong((*(a1[10] + 8) + 40), *(a1[4] + 296));
  v2 = *(a1[4] + 312);
  v3 = (*(a1[11] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __44__SSVSecureKeyDeliveryRequestOperation_main__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      *v27 = 138543618;
      *&v27[4] = v11;
      *&v27[12] = 2112;
      *&v27[14] = objc_opt_class();
      v13 = *&v27[14];
      LODWORD(v26) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        v5 = 0;
        goto LABEL_14;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, v27, v26, *v27, *&v27[16], v28}];
      free(v14);
      SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v10);
    }

    goto LABEL_13;
  }

LABEL_14:
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v5;
  v23 = v5;

  v24 = *(*(a1 + 48) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v6;
}

- (void)start
{
  if ([(SSVSecureKeyDeliveryRequestOperation *)self isFinished]&& [(SSVSecureKeyDeliveryRequestOperation *)self isCancelled])
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2001 userInfo:0];
    [(SSVSecureKeyDeliveryRequestOperation *)self _sendResponseBlockWithError:v3];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SSVSecureKeyDeliveryRequestOperation;
    [(SSVSecureKeyDeliveryRequestOperation *)&v4 start];
  }
}

- (id)_contentKeyContextForStreamingKeyID:(int64_t)a3 streamingKeyDictionaries:(id)a4 renewAfter:(double *)a5 error:(id *)a6
{
  v148 = *MEMORY[0x1E69E9840];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = a4;
  v8 = [obj countByEnumeratingWithState:&v133 objects:v147 count:16];
  if (!v8)
  {
    v45 = 0;
    v46 = 0;
    goto LABEL_110;
  }

  v9 = v8;
  v127 = a6;
  v128 = a5;
  v10 = *v134;
  v11 = off_1E84AB000;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v134 != v10)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v133 + 1) + 8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [(__objc2_class *)v11[75] sharedStoreServicesConfig];
      if (!v14)
      {
        v14 = [(__objc2_class *)v11[75] sharedConfig];
      }

      v15 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = v15 | 2;
      }

      else
      {
        v16 = v15;
      }

      v17 = [v14 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 2;
      }

      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = objc_opt_class();
      v20 = v19;
      v21 = objc_opt_class();
      v137 = 138543618;
      v138 = v19;
      v139 = 2112;
      v140 = v21;
      v22 = v21;
      LODWORD(v125) = 22;
      v122 = &v137;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
        v11 = off_1E84AB000;
        goto LABEL_34;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v137, v125}];
      free(v23);
      SSFileLog(v14, @"%@", v24, v25, v26, v27, v28, v29, v17);
      goto LABEL_32;
    }

    v14 = [v13 objectForKey:@"id"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v17 = [(__objc2_class *)v11[75] sharedStoreServicesConfig];
      if (!v17)
      {
        v17 = [(__objc2_class *)v11[75] sharedConfig];
      }

      v30 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v30 |= 2u;
      }

      v31 = [v17 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 2;
      }

      if (!v32)
      {
        goto LABEL_31;
      }

      v33 = objc_opt_class();
      v34 = v33;
      v35 = objc_opt_class();
      v137 = 138543618;
      v138 = v33;
      v139 = 2112;
      v140 = v35;
      v36 = v35;
      LODWORD(v125) = 22;
      v122 = &v137;
      v37 = _os_log_send_and_compose_impl();

      if (v37)
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithCString:v37 encoding:{4, &v137, v125}];
        free(v37);
        SSFileLog(v17, @"%@", v38, v39, v40, v41, v42, v43, v31);
        v11 = off_1E84AB000;
LABEL_31:

LABEL_33:
        goto LABEL_34;
      }

LABEL_32:
      v11 = off_1E84AB000;
      goto LABEL_33;
    }

    if ([v14 longLongValue] == a3)
    {
      break;
    }

LABEL_34:

    if (v9 == ++v12)
    {
      v44 = [obj countByEnumeratingWithState:&v133 objects:v147 count:16];
      v9 = v44;
      if (!v44)
      {
        v45 = 0;
        v46 = 0;
        goto LABEL_109;
      }

      goto LABEL_3;
    }
  }

  v47 = [(__objc2_class *)v11[75] sharedStoreServicesConfig];
  v48 = v47;
  if (!v47)
  {
    v48 = [(__objc2_class *)v11[75] sharedConfig];
  }

  v49 = [v48 shouldLog];
  if ([v48 shouldLogToDisk])
  {
    v49 |= 2u;
  }

  v50 = [v48 OSLogObject];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = v49;
  }

  else
  {
    v51 = v49 & 2;
  }

  v52 = v128;
  if (v51)
  {
    v53 = objc_opt_class();
    v137 = 138543618;
    v138 = v53;
    v139 = 2048;
    v140 = a3;
    v54 = v53;
    LODWORD(v125) = 22;
    v123 = &v137;
    v55 = _os_log_send_and_compose_impl();

    if (v55)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithCString:v55 encoding:{4, &v137, v125}];
      free(v55);
      SSFileLog(v48, @"%@", v56, v57, v58, v59, v60, v61, v50);
      goto LABEL_49;
    }
  }

  else
  {
LABEL_49:
  }

  v62 = [v13 objectForKey:@"status"];
  v63 = [v13 objectForKey:@"failureType"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v64 = [v62 longLongValue]) == 0)
  {
    v68 = [v13 objectForKey:{@"ckc", v123}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v68 options:0];
      if (![v46 length])
      {
        v89 = v62;
        v90 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v90)
        {
          v90 = +[SSLogConfig sharedConfig];
        }

        v130 = v63;
        v91 = [v90 shouldLog];
        if ([v90 shouldLogToDisk])
        {
          v91 |= 2u;
        }

        v92 = [v90 OSLogObject];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v91;
        }

        else
        {
          v93 = v91 & 2;
        }

        if (v93)
        {
          v94 = objc_opt_class();
          v137 = 138543618;
          v138 = v94;
          v139 = 2048;
          v140 = a3;
          v95 = v94;
          LODWORD(v125) = 22;
          v124 = &v137;
          v96 = _os_log_send_and_compose_impl();

          v62 = v89;
          if (!v96)
          {
            goto LABEL_106;
          }

          v92 = [MEMORY[0x1E696AEC0] stringWithCString:v96 encoding:{4, &v137, v125}];
          free(v96);
          SSFileLog(v90, @"%@", v97, v98, v99, v100, v101, v102, v92);
        }

        else
        {
          v62 = v89;
        }

LABEL_106:
        v46 = 0;
        v52 = v128;
        v63 = v130;
        if (!v128)
        {
          goto LABEL_107;
        }

        goto LABEL_96;
      }

LABEL_95:
      if (!v128)
      {
LABEL_107:
        v45 = 0;
        goto LABEL_108;
      }

LABEL_96:
      v71 = v63;
      v72 = [v13 objectForKey:{@"renew-after", v124}];
      v118 = 0;
      if (v72 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v72 doubleValue];
        v118 = v119;
      }

      v45 = 0;
      *v52 = v118;
      goto LABEL_103;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v68;
      if (!v128)
      {
        goto LABEL_107;
      }

      goto LABEL_96;
    }

    v103 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v103)
    {
      v103 = +[SSLogConfig sharedConfig];
    }

    v104 = [v103 shouldLog];
    if ([v103 shouldLogToDisk])
    {
      v104 |= 2u;
    }

    v105 = [v103 OSLogObject];
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = v104;
    }

    else
    {
      v106 = v104 & 2;
    }

    if (v106)
    {
      v107 = objc_opt_class();
      v131 = v63;
      v108 = v107;
      v109 = objc_opt_class();
      v137 = 138543874;
      v138 = v107;
      v139 = 2048;
      v140 = a3;
      v141 = 2112;
      v142 = v109;
      v110 = v109;
      LODWORD(v125) = 32;
      v124 = &v137;
      v111 = _os_log_send_and_compose_impl();

      v63 = v131;
      if (!v111)
      {
LABEL_94:

        v46 = 0;
        goto LABEL_95;
      }

      v105 = [MEMORY[0x1E696AEC0] stringWithCString:v111 encoding:{4, &v137, v125}];
      free(v111);
      SSFileLog(v103, @"%@", v112, v113, v114, v115, v116, v117, v105);
    }

    goto LABEL_94;
  }

  v65 = v64;
  v66 = objc_alloc(MEMORY[0x1E695DF90]);
  v67 = [MEMORY[0x1E696AD98] numberWithLongLong:v65];
  v68 = [v66 initWithObjectsAndKeys:{v67, @"SSVSecureKeyDeliveryErrorUserInfoKeyResponseStatus", 0}];

  v69 = 0x1E696A000;
  if (v63 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v70 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSServerErrorDomain" code:objc_msgSend(v63 userInfo:{"integerValue"), 0}];
    [v68 setObject:v70 forKey:@"SSVSecureKeyDeliveryErrorUserInfoKeyServerError"];

    v69 = 0x1E696A000uLL;
  }

  v71 = v63;
  v72 = [v13 objectForKey:@"dialog"];
  if ([v72 isNSDictionary])
  {
    [v68 setObject:v72 forKey:@"SSVSecureKeyDeliveryErrorUserInfoKeyDialogDictionary"];
  }

  v73 = v62;
  v74 = [objc_alloc(*(v69 + 3008)) initWithDomain:@"com.apple.fpsrequest" code:v65 userInfo:0];
  [v68 setObject:v74 forKey:*MEMORY[0x1E696AA08]];

  v75 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v75)
  {
    v75 = +[SSLogConfig sharedConfig];
  }

  v76 = [v75 shouldLog];
  if ([v75 shouldLogToDisk])
  {
    v76 |= 2u;
  }

  v77 = [v75 OSLogObject];
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
  {
    v78 = v76;
  }

  else
  {
    v78 = v76 & 2;
  }

  if (v78)
  {
    v79 = objc_opt_class();
    v137 = 138544386;
    v138 = v79;
    v139 = 2048;
    v140 = a3;
    v141 = 2048;
    v142 = v65;
    v143 = 2114;
    v144 = v71;
    v145 = 2114;
    v146 = v72;
    v80 = v79;
    LODWORD(v126) = 52;
    v81 = _os_log_send_and_compose_impl();

    v62 = v73;
    v82 = 0x1E696A000;
    if (v81)
    {
      v77 = [MEMORY[0x1E696AEC0] stringWithCString:v81 encoding:{4, &v137, v126}];
      free(v81);
      SSFileLog(v75, @"%@", v83, v84, v85, v86, v87, v88, v77);
      goto LABEL_101;
    }
  }

  else
  {
    v62 = v73;
    v82 = 0x1E696A000uLL;
LABEL_101:
  }

  v45 = [*(v82 + 3008) errorWithDomain:@"SSVSecureKeyDeliveryErrorDomain" code:-2005 userInfo:v68];
  v46 = 0;
LABEL_103:

  v63 = v71;
LABEL_108:

LABEL_109:
  a6 = v127;
LABEL_110:

  if (a6)
  {
    v120 = v45;
    *a6 = v45;
  }

  return v46;
}

- (void)_sendResponseBlockWithError:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__87;
  v12 = __Block_byref_object_dispose__88;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SSVSecureKeyDeliveryRequestOperation__sendResponseBlockWithError___block_invoke;
  v7[3] = &unk_1E84ABF40;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_barrier_sync(accessQueue, v7);
  v6 = v9[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }

  _Block_object_dispose(&v8, 8);
}

void __68__SSVSecureKeyDeliveryRequestOperation__sendResponseBlockWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 280) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 280);
  *(v5 + 280) = 0;
}

- (id)_streamingKeyDictionaryForID:(int64_t)a3 URI:(id)a4 serverPlaybackContextData:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v12 = [v10 initWithObjectsAndKeys:{v11, @"id", 0}];

  if (v8)
  {
    [v12 setObject:v8 forKey:@"uri"];
  }

  if ([v9 length])
  {
    v13 = [v9 base64EncodedStringWithOptions:0];
    if ([v13 length])
    {
      [v12 setObject:v13 forKey:@"spc"];
    }
  }

  v14 = [(SSVSecureKeyDeliveryRequestOperation *)self rentalId];

  if (v14)
  {
    v15 = [(SSVSecureKeyDeliveryRequestOperation *)self rentalId];
    [v12 setObject:v15 forKey:@"rental-id"];
  }

  if ([(SSVSecureKeyDeliveryRequestOperation *)self skippedRentalCheckout])
  {
    [v12 setObject:MEMORY[0x1E695E118] forKey:@"skipped-rental-checkout"];
  }

  if ([(SSVSecureKeyDeliveryRequestOperation *)self shouldIncludeGUID])
  {
    v16 = +[SSDevice currentDevice];
    v17 = [v16 uniqueDeviceIdentifier];

    if (v17)
    {
      [v12 setObject:v17 forKey:@"guid"];
    }
  }

  v18 = [(SSVSecureKeyDeliveryRequestOperation *)self leaseAction]- 1;
  if (v18 <= 2)
  {
    [v12 setObject:off_1E84AD108[v18] forKey:@"lease-action"];
  }

  if ([(SSVSecureKeyDeliveryRequestOperation *)self offline])
  {
    [v12 setObject:MEMORY[0x1E695E118] forKey:@"offline"];
  }

  return v12;
}

- (id)_streamingRequestDictionaryWithStreamingKeyDictionaries:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{&unk_1F507A0F0, @"version", 0}];
  if ([v3 count])
  {
    [v4 setObject:v3 forKey:@"streaming-keys"];
  }

  v7 = @"fairplay-streaming-request";
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (double)_timeIntervalForStreamingKeyID:(int64_t)a3 responseKey:(id)a4 streamingKeyDictionaries:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = a5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 objectForKey:@"id"];
          if (objc_opt_respondsToSelector())
          {
            v15 = [v14 longLongValue];
            if (v6)
            {
              if (v15 == a3)
              {
                v16 = [v13 objectForKey:v6];
                v9 = 0.0;
                if (objc_opt_respondsToSelector())
                {
                  [v16 doubleValue];
                  v9 = v17 / 1000.0;
                }

                goto LABEL_17;
              }
            }
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v9;
}

- (SSVSecureKeyDeliveryRequestOperationDelegate)serverPlaybackContextDataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serverPlaybackContextDataDelegate);

  return WeakRetained;
}

@end