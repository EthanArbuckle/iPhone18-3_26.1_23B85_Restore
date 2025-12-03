@interface SBHFileStackIconImageProviderDocumentManagerDataSource
- (SBHFileStackIconImageProviderDataSourceDelegate)delegate;
- (SBHFileStackIconImageProviderDocumentManagerDataSource)init;
- (SBHFileStackIconImageProviderDocumentManagerDataSource)initWithUniqueIdentifier:(id)identifier;
- (id)fileStackIconImageProvider:(id)provider iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options forFileStackIcon:(id)icon;
- (void)dealloc;
- (void)handleDOCSBFolderDidChangeNotification:(id)notification;
@end

@implementation SBHFileStackIconImageProviderDocumentManagerDataSource

- (SBHFileStackIconImageProviderDocumentManagerDataSource)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [(SBHFileStackIconImageProviderDocumentManagerDataSource *)self initWithUniqueIdentifier:uUIDString];
  return v5;
}

- (SBHFileStackIconImageProviderDocumentManagerDataSource)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SBHFileStackIconImageProviderDocumentManagerDataSource;
  v5 = [(SBHFileStackIconImageProviderDocumentManagerDataSource *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_handleDOCSBFolderDidChangeNotification_ name:*MEMORY[0x1E699A3B8] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHFileStackIconImageProviderDocumentManagerDataSource;
  [(SBHFileStackIconImageProviderDocumentManagerDataSource *)&v4 dealloc];
}

- (id)fileStackIconImageProvider:(id)provider iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options forFileStackIcon:(id)icon
{
  v10 = v9;
  v11 = v8;
  v12 = v7;
  optionsCopy = options;
  v14 = [optionsCopy url];
  uniqueIdentifier = [optionsCopy uniqueIdentifier];

  mEMORY[0x1E699A418] = [MEMORY[0x1E699A418] sharedManager];
  v17 = [mEMORY[0x1E699A418] thumbnailImageForFolder:uniqueIdentifier URL:v14 size:0 scale:v12 options:{v11, v10}];

  return v17;
}

- (void)handleDOCSBFolderDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v9 = [userInfo objectForKey:*MEMORY[0x1E699A3C0]];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 objectForKey:*MEMORY[0x1E699A3C8]];

  delegate = [(SBHFileStackIconImageProviderDocumentManagerDataSource *)self delegate];
  [delegate fileStackIconImageProviderDataSourceChanged:self uniqueIdentifier:v9 url:v7];
}

- (SBHFileStackIconImageProviderDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end