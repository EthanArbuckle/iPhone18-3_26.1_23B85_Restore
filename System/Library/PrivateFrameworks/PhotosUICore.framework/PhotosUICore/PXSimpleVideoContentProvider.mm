@interface PXSimpleVideoContentProvider
- (PXSimpleVideoContentProvider)init;
- (PXSimpleVideoContentProvider)initWithPlayerItem:(id)item contentIdentifier:(id)identifier;
- (id)description;
@end

@implementation PXSimpleVideoContentProvider

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PXSimpleVideoContentProvider;
  v4 = [(PXSimpleVideoContentProvider *)&v8 description];
  loadingResult = [(PXSimpleVideoContentProvider *)self loadingResult];
  v6 = [v3 stringWithFormat:@"%@, Result: %@", v4, loadingResult];

  return v6;
}

- (PXSimpleVideoContentProvider)initWithPlayerItem:(id)item contentIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PXSimpleVideoContentProvider;
  v8 = [(PXSimpleVideoContentProvider *)&v15 init];
  if (v8)
  {
    v9 = [PXVideoContentProviderLoadingResult alloc];
    v10 = *(MEMORY[0x1E6960C98] + 16);
    v14[0] = *MEMORY[0x1E6960C98];
    v14[1] = v10;
    v14[2] = *(MEMORY[0x1E6960C98] + 32);
    v11 = [(PXVideoContentProviderLoadingResult *)v9 initWithPlayerItem:itemCopy url:0 timeRange:v14 timeRangeMapper:0 error:0 priority:3 description:&stru_1F1741150];
    loadingResult = v8->_loadingResult;
    v8->_loadingResult = v11;

    objc_storeStrong(&v8->_contentIdentifier, identifier);
    v8->_loadingProgress = 1.0;
  }

  return v8;
}

- (PXSimpleVideoContentProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSimpleVideoContentProvider.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXSimpleVideoContentProvider init]"}];

  abort();
}

@end