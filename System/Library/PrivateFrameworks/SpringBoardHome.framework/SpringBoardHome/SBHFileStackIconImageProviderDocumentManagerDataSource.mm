@interface SBHFileStackIconImageProviderDocumentManagerDataSource
- (SBHFileStackIconImageProviderDataSourceDelegate)delegate;
- (SBHFileStackIconImageProviderDocumentManagerDataSource)init;
- (SBHFileStackIconImageProviderDocumentManagerDataSource)initWithUniqueIdentifier:(id)a3;
- (id)fileStackIconImageProvider:(id)a3 iconImageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 forFileStackIcon:(id)a7;
- (void)dealloc;
- (void)handleDOCSBFolderDidChangeNotification:(id)a3;
@end

@implementation SBHFileStackIconImageProviderDocumentManagerDataSource

- (SBHFileStackIconImageProviderDocumentManagerDataSource)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [(SBHFileStackIconImageProviderDocumentManagerDataSource *)self initWithUniqueIdentifier:v4];
  return v5;
}

- (SBHFileStackIconImageProviderDocumentManagerDataSource)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBHFileStackIconImageProviderDocumentManagerDataSource;
  v5 = [(SBHFileStackIconImageProviderDocumentManagerDataSource *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v5 selector:sel_handleDOCSBFolderDidChangeNotification_ name:*MEMORY[0x1E699A3B8] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHFileStackIconImageProviderDocumentManagerDataSource;
  [(SBHFileStackIconImageProviderDocumentManagerDataSource *)&v4 dealloc];
}

- (id)fileStackIconImageProvider:(id)a3 iconImageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 forFileStackIcon:(id)a7
{
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = a6;
  v14 = [v13 url];
  v15 = [v13 uniqueIdentifier];

  v16 = [MEMORY[0x1E699A418] sharedManager];
  v17 = [v16 thumbnailImageForFolder:v15 URL:v14 size:0 scale:v12 options:{v11, v10}];

  return v17;
}

- (void)handleDOCSBFolderDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v9 = [v5 objectForKey:*MEMORY[0x1E699A3C0]];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:*MEMORY[0x1E699A3C8]];

  v8 = [(SBHFileStackIconImageProviderDocumentManagerDataSource *)self delegate];
  [v8 fileStackIconImageProviderDataSourceChanged:self uniqueIdentifier:v9 url:v7];
}

- (SBHFileStackIconImageProviderDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end