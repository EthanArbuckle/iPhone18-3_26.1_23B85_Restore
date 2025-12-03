@interface SBHFileStackIconImageProvider
- (SBHFileStackIconImageProvider)initWithFileStackIconImageProviderDataSource:(id)source;
- (SBHFileStackIconImageProviderDelegate)delegate;
- (SBHFileStackIconImageProviderOverrideDataSourceDelegate)overrideDataSourceDelegate;
- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options forFileStackIcon:(id)icon;
- (void)dealloc;
- (void)fileStackIconImageProviderDataSourceChanged:(id)changed uniqueIdentifier:(id)identifier url:(id)url;
@end

@implementation SBHFileStackIconImageProvider

- (SBHFileStackIconImageProvider)initWithFileStackIconImageProviderDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = SBHFileStackIconImageProvider;
  v6 = [(SBHFileStackIconImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    [(SBHFileStackIconImageProviderDataSource *)v7->_dataSource setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHFileStackIconImageProvider;
  [(SBHFileStackIconImageProvider *)&v4 dealloc];
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options forFileStackIcon:(id)icon
{
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  infoCopy = info;
  optionsCopy = options;
  overrideDataSourceDelegate = [(SBHFileStackIconImageProvider *)self overrideDataSourceDelegate];
  v20 = overrideDataSourceDelegate;
  if (!overrideDataSourceDelegate || ([overrideDataSourceDelegate iconImageWithInfo:infoCopy traitCollection:collection options:optionsCopy forFileStackIcon:{v15, v14, v13, v12}], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    dataSource = [(SBHFileStackIconImageProvider *)self dataSource];
    v21 = [dataSource fileStackIconImageProvider:self iconImageWithInfo:infoCopy traitCollection:collection options:optionsCopy forFileStackIcon:{v15, v14, v13, v12}];
  }

  return v21;
}

- (void)fileStackIconImageProviderDataSourceChanged:(id)changed uniqueIdentifier:(id)identifier url:(id)url
{
  urlCopy = url;
  identifierCopy = identifier;
  delegate = [(SBHFileStackIconImageProvider *)self delegate];
  v9 = [delegate iconIdentifierForIconImageProvider:self];
  v10 = [identifierCopy isEqualToString:v9];

  if ((v10 & 1) != 0 || ([urlCopy absoluteString], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"/SBHFileStackIconImageProviderDataSource_Testing/TestingURL"), v11, v12))
  {
    [delegate fileStackIconImageProviderHasChanged:self];
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