@interface ICSubscriptionRedownloadRequest
- (ICSubscriptionRedownloadRequest)init;
- (ICSubscriptionRedownloadRequest)initWithRequestContext:(id)a3 subscriptionItemID:(unint64_t)a4;
@end

@implementation ICSubscriptionRedownloadRequest

- (ICSubscriptionRedownloadRequest)initWithRequestContext:(id)a3 subscriptionItemID:(unint64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"salableAdamId";
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v12.receiver = self;
  v12.super_class = ICSubscriptionRedownloadRequest;
  v10 = [(ICMediaRedownloadRequest *)&v12 initWithRequestContext:v7 redownloadParameters:v9];

  return v10;
}

- (ICSubscriptionRedownloadRequest)init
{
  v5.receiver = self;
  v5.super_class = ICSubscriptionRedownloadRequest;
  v2 = [(ICMediaRedownloadRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICMediaRedownloadRequest *)v2 setRequestURLBagKey:@"subDownload"];
    [(ICMediaRedownloadRequest *)v3 setIncludeKeybagSyncData:0];
    [(ICMediaRedownloadRequest *)v3 setIncludeSubscriptionKeybagSyncData:1];
  }

  return v3;
}

@end