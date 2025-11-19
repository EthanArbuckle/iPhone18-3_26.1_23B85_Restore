@interface ICRemoveMediaDRMOperation
- (ICRemoveMediaDRMOperation)initWithFilePath:(id)a3 sinfs:(id)a4;
- (void)execute;
- (void)removeDRMWithCompletionHandler:(id)a3;
@end

@implementation ICRemoveMediaDRMOperation

- (void)execute
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  sinfs = self->_sinfs;
  if (sinfs)
  {
    [v3 setObject:sinfs forKey:*MEMORY[0x1E6993BC0]];
  }

  v6 = [MEMORY[0x1E6993BC8] fileProcessor];
  mediaFilePath = self->_mediaFilePath;
  v13[4] = self;
  v14 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__ICRemoveMediaDRMOperation_execute__block_invoke;
  v13[3] = &unk_1E7BF6560;
  v8 = [v6 processPurchasedItem:mediaFilePath withAttributes:v4 resultInfo:&v14 progressBlock:v13];
  v9 = v14;

  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "RemoveDRM operation complete. err=%{public}@, resultInfo=%{public}@", buf, 0x16u);
  }

  if (!v8)
  {
    v11 = [v9 objectForKey:*MEMORY[0x1E6993BB0]];
    newFileExtension = self->_newFileExtension;
    self->_newFileExtension = v11;
  }

  [(ICRequestOperation *)self finishWithError:v8];
}

void __36__ICRemoveMediaDRMOperation_execute__block_invoke(uint64_t a1, float a2)
{
  v3 = [*(a1 + 32) progress];
  [v3 setCompletedUnitCount:100 * a2];
}

- (void)removeDRMWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__ICRemoveMediaDRMOperation_removeDRMWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7BFA490;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ICRequestOperation *)self performRequestWithCompletionHandler:v6];
}

- (ICRemoveMediaDRMOperation)initWithFilePath:(id)a3 sinfs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICRemoveMediaDRMOperation;
  v9 = [(ICRequestOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaFilePath, a3);
    objc_storeStrong(&v10->_sinfs, a4);
  }

  return v10;
}

@end