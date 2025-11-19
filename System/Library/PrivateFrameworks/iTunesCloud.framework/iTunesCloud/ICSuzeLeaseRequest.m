@interface ICSuzeLeaseRequest
- (ICSuzeLeaseRequest)initWithRequestContext:(id)a3 requestType:(int64_t)a4 leaseID:(id)a5 mediaType:(int64_t)a6 clientData:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation ICSuzeLeaseRequest

- (void)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICSuzeLeaseRequest *)self copy];
  v6 = [ICAsyncBlockOperation alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke;
  v11[3] = &unk_1E7BF8BE8;
  v13 = self;
  v14 = v4;
  v12 = v5;
  v7 = v4;
  v8 = v5;
  v9 = [(ICAsyncBlockOperation *)v6 initWithStartHandler:v11];
  v10 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:{objc_msgSend(v8, "qualityOfService")}];
  [v10 addOperation:v9];
}

void __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_2;
  v18[3] = &unk_1E7BF66E8;
  v19 = a1[4];
  v21 = a1[6];
  v4 = v3;
  v20 = v4;
  v5 = MEMORY[0x1B8C781E0](v18);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__22938;
  v16[4] = __Block_byref_object_dispose__22939;
  v17 = 0;
  v6 = [a1[4] requestContext];
  v7 = +[ICURLBagProvider sharedBagProvider];
  v8 = [a1[5] qualityOfService];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_4;
  v11[3] = &unk_1E7BF6738;
  v12 = a1[4];
  v9 = v6;
  v13 = v9;
  v15 = v16;
  v10 = v5;
  v14 = v10;
  [v7 getBagForRequestContext:v9 qualityOfService:v8 forceRefetch:0 withCompletionHandler:v11];

  _Block_object_dispose(v16, 8);
}

void __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = dispatch_queue_attr_make_with_qos_class(0, [a1[4] qualityOfService], 0);
  v11 = dispatch_queue_create("com.apple.iTunesCloud.ICSuzeLeaseRequest.calloutQueue", v10);

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_3;
  v19 = &unk_1E7BF9E78;
  v12 = a1[6];
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, &v16);
  [a1[5] finishWithError:{v13, v16, v17, v18, v19}];
}

void __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) requestType] - 1;
    if (v8 > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *off_1E7BF6758[v8];
    }

    v12 = [v5 urlForBagKey:v9];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = [*(a1 + 32) mediaType] - 1;
      if (v14 > 6)
      {
        v15 = @"unknown";
      }

      else
      {
        v15 = off_1E7BF6770[v14];
      }

      [v13 setObject:v15 forKey:@"media-kind"];
      v19 = [*(a1 + 40) deviceInfo];
      v20 = [v19 deviceGUID];

      if (v20)
      {
        [v13 setObject:v20 forKey:@"guid"];
      }

      v21 = [*(a1 + 32) clientData];
      if (v21)
      {
        [v13 setObject:v21 forKey:@"client-data"];
      }

      v39 = v7;
      v40 = v21;
      v41 = v20;
      v22 = [*(a1 + 32) leaseID];
      [v13 setObject:v22 forKey:@"lease-id"];

      v45 = 0;
      v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:100 options:0 error:&v45];
      v24 = v45;
      v25 = v24;
      if (v23)
      {
        v38 = v9;
        v26 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v12];
        [v26 setHTTPMethod:@"POST"];
        [v26 setHTTPBody:v23];
        [v26 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
        v27 = [MEMORY[0x1E695DF00] date];
        v28 = [[ICStoreURLRequest alloc] initWithURLRequest:v26 requestContext:*(a1 + 40)];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SuzeLease endpoint:%@", v38];
        [(ICURLRequest *)v28 setRequestName:v29];

        v30 = +[ICURLSessionManager defaultSession];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_2_28;
        v42[3] = &unk_1E7BF6710;
        v43 = v27;
        v37 = *(a1 + 48);
        v31 = v37;
        v44 = v37;
        v32 = v27;
        [v30 enqueueDataRequest:v28 withCompletionHandler:v42];

        v9 = v38;
      }

      else
      {
        v33 = *(a1 + 48);
        v34 = *(*(*(a1 + 56) + 8) + 40);
        if (v24)
        {
          (*(v33 + 16))(v33, 0, v34, v24);
        }

        else
        {
          v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
          (*(v33 + 16))(v33, 0, v34, v36);
        }
      }

      v7 = v39;
    }

    else
    {
      v16 = *(a1 + 48);
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(v16 + 16))(v16, 0, v17, v18);
    }
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = *(*(*(a1 + 56) + 8) + 40);
    if (v6)
    {
      (*(v10 + 16))(v10, 0, v11, v6);
    }

    else
    {
      v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7200 userInfo:0];
      (*(v10 + 16))(v10, 0, v11, v35);
    }
  }
}

void __49__ICSuzeLeaseRequest_performWithResponseHandler___block_invoke_2_28(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(*(a1[6] + 8) + 40);
  v7 = [v15 aggregatedPerformanceMetrics];
  v8 = [ICURLAggregatedPerformanceMetrics aggregatedMetricsFromAggregatedMetrics:v6 addingAggregatedMetrics:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v5)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v11 = [v15 parsedBodyDictionary];
    if ([v11 count])
    {
      v12 = [[ICSuzeLeaseResponse alloc] initWithResponseDictionary:v11 requestDate:a1[4]];
      v13 = *(a1[5] + 16);
    }

    else
    {
      v14 = a1[5];
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      v13 = *(v14 + 16);
    }

    v13();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSData *)self->_clientData copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v5[6] = self->_requestType;
    v8 = [(NSString *)self->_leaseID copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v5[3] = self->_mediaType;
    v5[4] = self->_qualityOfService;
    v10 = [(ICRequestContext *)self->_requestContext copyWithZone:a3];
    v11 = v5[5];
    v5[5] = v10;
  }

  return v5;
}

- (ICSuzeLeaseRequest)initWithRequestContext:(id)a3 requestType:(int64_t)a4 leaseID:(id)a5 mediaType:(int64_t)a6 clientData:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = ICSuzeLeaseRequest;
  v15 = [(ICSuzeLeaseRequest *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    requestContext = v15->_requestContext;
    v15->_requestContext = v16;

    v15->_requestType = a4;
    v18 = [v13 copy];
    leaseID = v15->_leaseID;
    v15->_leaseID = v18;

    v15->_mediaType = a6;
    v15->_qualityOfService = 25;
    v20 = [v14 copy];
    clientData = v15->_clientData;
    v15->_clientData = v20;
  }

  return v15;
}

@end