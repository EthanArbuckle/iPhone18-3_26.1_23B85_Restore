@interface ICPurchaseRedownloadRequest
- (ICPurchaseRedownloadRequest)init;
- (ICPurchaseRedownloadRequest)initWithRequestContext:(id)a3 storeItemID:(unint64_t)a4;
@end

@implementation ICPurchaseRedownloadRequest

- (ICPurchaseRedownloadRequest)initWithRequestContext:(id)a3 storeItemID:(unint64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = @"salableAdamId";
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithUnsignedLongLong:a4];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v12.receiver = self;
  v12.super_class = ICPurchaseRedownloadRequest;
  v10 = [(ICMediaRedownloadRequest *)&v12 initWithRequestContext:v7 redownloadParameters:v9];

  return v10;
}

- (ICPurchaseRedownloadRequest)init
{
  v5.receiver = self;
  v5.super_class = ICPurchaseRedownloadRequest;
  v2 = [(ICMediaRedownloadRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICMediaRedownloadRequest *)v2 setRequestURLBagKey:@"redownloadProduct"];
  }

  return v3;
}

@end