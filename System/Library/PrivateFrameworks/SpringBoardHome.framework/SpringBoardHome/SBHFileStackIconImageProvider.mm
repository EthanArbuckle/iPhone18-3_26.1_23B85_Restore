@interface SBHFileStackIconImageProvider
- (SBHFileStackIconImageProvider)initWithFileStackIconImageProviderDataSource:(id)a3;
- (SBHFileStackIconImageProviderDelegate)delegate;
- (SBHFileStackIconImageProviderOverrideDataSourceDelegate)overrideDataSourceDelegate;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 forFileStackIcon:(id)a6;
- (void)dealloc;
- (void)fileStackIconImageProviderDataSourceChanged:(id)a3 uniqueIdentifier:(id)a4 url:(id)a5;
@end

@implementation SBHFileStackIconImageProvider

- (SBHFileStackIconImageProvider)initWithFileStackIconImageProviderDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBHFileStackIconImageProvider;
  v6 = [(SBHFileStackIconImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    [(SBHFileStackIconImageProviderDataSource *)v7->_dataSource setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHFileStackIconImageProvider;
  [(SBHFileStackIconImageProvider *)&v4 dealloc];
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5 forFileStackIcon:(id)a6
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v17 = a3;
  v18 = a5;
  v19 = [(SBHFileStackIconImageProvider *)self overrideDataSourceDelegate];
  v20 = v19;
  if (!v19 || ([v19 iconImageWithInfo:v17 traitCollection:a4 options:v18 forFileStackIcon:{v15, v14, v13, v12}], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = [(SBHFileStackIconImageProvider *)self dataSource];
    v21 = [v22 fileStackIconImageProvider:self iconImageWithInfo:v17 traitCollection:a4 options:v18 forFileStackIcon:{v15, v14, v13, v12}];
  }

  return v21;
}

- (void)fileStackIconImageProviderDataSourceChanged:(id)a3 uniqueIdentifier:(id)a4 url:(id)a5
{
  v13 = a5;
  v7 = a4;
  v8 = [(SBHFileStackIconImageProvider *)self delegate];
  v9 = [v8 iconIdentifierForIconImageProvider:self];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) != 0 || ([v13 absoluteString], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"/SBHFileStackIconImageProviderDataSource_Testing/TestingURL"), v11, v12))
  {
    [v8 fileStackIconImageProviderHasChanged:self];
  }
}

- (SBHFileStackIconImageProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHFileStackIconImageProviderOverrideDataSourceDelegate)overrideDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideDataSourceDelegate);

  return WeakRetained;
}

@end