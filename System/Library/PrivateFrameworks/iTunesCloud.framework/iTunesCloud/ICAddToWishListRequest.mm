@interface ICAddToWishListRequest
- (ICAddToWishListRequest)initWithRequestContext:(id)context buyParams:(id)params storeItemID:(int64_t)d itemName:(id)name itemKind:(id)kind;
- (ICAddToWishListRequest)initWithRequestContext:(id)context platformMetadataItem:(id)item;
- (void)execute;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation ICAddToWishListRequest

- (void)execute
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    storeItemID = self->_storeItemID;
    itemName = self->_itemName;
    *buf = 138543874;
    selfCopy = self;
    v11 = 2048;
    v12 = storeItemID;
    v13 = 2114;
    v14 = itemName;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing request with storeID=%lld, itemName=%{public}@", buf, 0x20u);
  }

  v6 = +[ICUserIdentityStore defaultIdentityStore];
  v7 = +[ICUserIdentity activeAccount];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__ICAddToWishListRequest_execute__block_invoke;
  v8[3] = &unk_1E7BF7B20;
  v8[4] = self;
  [v6 getPropertiesForUserIdentity:v7 completionHandler:v8];
}

void __33__ICAddToWishListRequest_execute__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    v5 = +[ICURLBagProvider sharedBagProvider];
    v6 = *(a1 + 32);
    v7 = *(v6 + 304);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__ICAddToWishListRequest_execute__block_invoke_2;
    v9[3] = &unk_1E7BFA500;
    v9[4] = v6;
    [v5 getBagForRequestContext:v7 withCompletionHandler:v9];
  }

  else
  {
    v4 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7401 userInfo:0];
    [v4 finishWithError:v8];
  }
}

void __33__ICAddToWishListRequest_execute__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v18[11] = v3;
    v18[12] = v4;
    v6 = [a2 urlForBagKey:@"addToWishlistBaseUrl"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(a1 + 32) + 320)];
    v9 = [v8 stringValue];
    [v7 setObject:v9 forKey:@"id"];

    v10 = *(a1 + 32);
    if (v10[39])
    {
      v11 = [MEMORY[0x1E695DFF8] ic_queryParametersDictionaryFromString:?];
      [v7 addEntriesFromDictionary:v11];

      v10 = *(a1 + 32);
    }

    v12 = v10[41];
    if (v12)
    {
      [v7 setObject:v12 forKey:@"wishlistItemName"];
      v10 = *(a1 + 32);
    }

    v13 = v10[42];
    if (v13)
    {
      [v7 setObject:v13 forKey:@"kind"];
    }

    v14 = [v6 ic_URLByAppendingQueryParameters:v7];

    v15 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v14];
    [v15 setCachePolicy:1];
    [v15 setValue:@"Software" forHTTPHeaderField:@"X-Mme-Client-Application"];
    v16 = [[ICStoreURLRequest alloc] initWithURLRequest:v15 requestContext:*(*(a1 + 32) + 304)];
    v17 = +[ICURLSessionManager defaultSession];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __33__ICAddToWishListRequest_execute__block_invoke_3;
    v18[3] = &unk_1E7BFA4D8;
    v18[4] = *(a1 + 32);
    [v17 enqueueDataRequest:v16 withCompletionHandler:v18];
  }
}

void __33__ICAddToWishListRequest_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [ICAddToWishListResponse alloc];
  v8 = [v6 parsedBodyDictionary];

  v9 = [(ICAddToWishListResponse *)v7 initWithResponseDictionary:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 344);
  *(v10 + 344) = v9;

  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 344);
    v15 = 138543874;
    v16 = v13;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished with err=%{public}@, response=%{public}@", &v15, 0x20u);
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ICAddToWishListRequest_performWithResponseHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICAddToWishListRequest)initWithRequestContext:(id)context platformMetadataItem:(id)item
{
  itemCopy = item;
  contextCopy = context;
  v8 = [itemCopy offerWithType:@"buy"];
  title = [itemCopy title];
  v10 = title;
  if (title)
  {
    name = title;
  }

  else
  {
    name = [itemCopy name];
  }

  v12 = name;

  buyParameters = [v8 buyParameters];
  storeAdamID = [itemCopy storeAdamID];
  kind = [itemCopy kind];
  v16 = [(ICAddToWishListRequest *)self initWithRequestContext:contextCopy buyParams:buyParameters storeItemID:storeAdamID itemName:v12 itemKind:kind];

  return v16;
}

- (ICAddToWishListRequest)initWithRequestContext:(id)context buyParams:(id)params storeItemID:(int64_t)d itemName:(id)name itemKind:(id)kind
{
  contextCopy = context;
  paramsCopy = params;
  nameCopy = name;
  kindCopy = kind;
  v22.receiver = self;
  v22.super_class = ICAddToWishListRequest;
  v17 = [(ICRequestOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_requestContext, context);
    v19 = [paramsCopy copy];
    buyParams = v18->_buyParams;
    v18->_buyParams = v19;

    v18->_storeItemID = d;
    objc_storeStrong(&v18->_itemName, name);
    objc_storeStrong(&v18->_itemKind, kind);
  }

  return v18;
}

@end