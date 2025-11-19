@interface ICMusicSubscriptionAccountlessPlaybackRequest
- (ICMusicSubscriptionAccountlessPlaybackRequest)initWithRequestContext:(id)a3 storeSubscriptionAdamID:(int64_t)a4;
- (id)performWithResponseHandler:(id)a3;
@end

@implementation ICMusicSubscriptionAccountlessPlaybackRequest

- (id)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v6 = objc_alloc_init(ICMusicSubscriptionPlaybackRequestOperation);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__ICMusicSubscriptionAccountlessPlaybackRequest_performWithResponseHandler___block_invoke;
  v17[3] = &unk_1E7BFA300;
  v18 = v6;
  v7 = v6;
  [v5 setCancellationHandler:v17];
  [v5 setCancellable:1];
  [(ICMusicSubscriptionPlaybackRequestOperation *)v7 setRequestType:3];
  [(ICMusicSubscriptionPlaybackRequestOperation *)v7 setAssetSourceStorefrontID:self->_assetSourceStorefrontID];
  [(ICMusicSubscriptionPlaybackRequestOperation *)v7 setRequestContext:self->_requestContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__ICMusicSubscriptionAccountlessPlaybackRequest_performWithResponseHandler___block_invoke_2;
  v14[3] = &unk_1E7BF4550;
  v8 = v5;
  v15 = v8;
  v16 = v4;
  v9 = v4;
  [(ICMusicSubscriptionPlaybackRequestOperation *)v7 setResponseHandler:v14];
  [(ICMusicSubscriptionPlaybackRequestOperation *)v7 setStoreSubscriptionAdamID:self->_storeSubscriptionAdamID];
  v10 = [MEMORY[0x1E696ADC8] ic_sharedRequestOperationQueueWithQualityOfService:self->_qualityOfService];
  [v10 addOperation:v7];

  v11 = v16;
  v12 = v8;

  return v8;
}

void __76__ICMusicSubscriptionAccountlessPlaybackRequest_performWithResponseHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a4;
  v11 = a2;
  [v8 setCancellationHandler:0];
  [*(a1 + 32) setCompletedUnitCount:1];
  (*(*(a1 + 40) + 16))();
}

- (ICMusicSubscriptionAccountlessPlaybackRequest)initWithRequestContext:(id)a3 storeSubscriptionAdamID:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ICMusicSubscriptionAccountlessPlaybackRequest;
  v7 = [(ICMusicSubscriptionAccountlessPlaybackRequest *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    requestContext = v7->_requestContext;
    v7->_requestContext = v8;

    v7->_qualityOfService = 25;
    v7->_storeSubscriptionAdamID = a4;
  }

  return v7;
}

@end