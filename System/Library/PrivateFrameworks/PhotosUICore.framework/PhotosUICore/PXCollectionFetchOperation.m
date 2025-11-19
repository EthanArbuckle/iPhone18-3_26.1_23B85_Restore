@interface PXCollectionFetchOperation
+ (id)fetchOperationWithCollection:(id)a3 delegate:(id)a4;
- (PXCollectionFetchOperation)init;
- (PXCollectionFetchOperation)initWithCollection:(id)a3;
- (PXCollectionFetchOperationDelegate)delegate;
- (void)handleBegin;
- (void)handleFinish;
- (void)main;
- (void)setDelegate:(id)a3;
@end

@implementation PXCollectionFetchOperation

- (PXCollectionFetchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleFinish
{
  if ([(PXCollectionFetchOperation *)self isCancelled])
  {
    v3 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v4 = __42__PXCollectionFetchOperation_handleFinish__block_invoke;
  }

  else
  {
    v3 = v5;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v4 = __42__PXCollectionFetchOperation_handleFinish__block_invoke_2;
  }

  v3[2] = v4;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __42__PXCollectionFetchOperation_handleFinish__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 collectionFetchOperationDidCancel:*(a1 + 32)];
  }
}

void __42__PXCollectionFetchOperation_handleFinish__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 collectionFetchOperationDidComplete:*(a1 + 32)];
  }
}

- (void)handleBegin
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PXCollectionFetchOperation_handleBegin__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__PXCollectionFetchOperation_handleBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 collectionFetchOperationDidBegin:*(a1 + 32)];
  }
}

- (void)main
{
  [(PXCollectionFetchOperation *)self handleBegin];
  fetchOptions = self->_fetchOptions;
  if (fetchOptions)
  {
    v9 = fetchOptions;
  }

  else
  {
    v4 = [(PXCollectionFetchOperation *)self collection];
    v5 = [v4 photoLibrary];
    v9 = [v5 px_standardLibrarySpecificFetchOptions];
  }

  if (([(PXCollectionFetchOperation *)self isCancelled]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (([(PXCollectionFetchOperation *)self isCancelled]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:self->_collection options:0];
    }
  }

  else
  {
    v6 = self->_collection;
    if ([(PHCollection *)v6 assetCollectionType]== 2 && [(PHCollection *)v6 assetCollectionSubtype]== 1000000205)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXCollectionFetchOperation PHAssetCollection All Photos"];
      [(PHFetchOptions *)v9 setImportantFetchName:v7];
    }

    v8 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v6 options:v9];
  }

  [(PXCollectionFetchOperation *)self setOutputFetchResult:v8];
  [(PXCollectionFetchOperation *)self handleFinish];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (PXCollectionFetchOperation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCollectionFetchOperation.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXCollectionFetchOperation init]"}];

  abort();
}

- (PXCollectionFetchOperation)initWithCollection:(id)a3
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PXCollectionFetchOperation;
  v7 = [(PXCollectionFetchOperation *)&v10 init];
  if (v7)
  {
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PXCollectionFetchOperation.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"collection"}];
    }

    objc_storeStrong(&v7->_collection, a3);
  }

  return v7;
}

+ (id)fetchOperationWithCollection:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithCollection:v7];

  [v8 setDelegate:v6];

  return v8;
}

@end