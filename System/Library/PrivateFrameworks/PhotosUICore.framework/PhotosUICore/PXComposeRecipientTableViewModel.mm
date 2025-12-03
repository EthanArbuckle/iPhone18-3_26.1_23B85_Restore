@interface PXComposeRecipientTableViewModel
- (PXComposeRecipientTableViewModel)init;
- (PXComposeRecipientTableViewModel)initWithComposeRecipientDataSourceManager:(id)manager;
- (void)performChanges:(id)changes;
- (void)setCanAddRecipients:(BOOL)recipients;
- (void)setCanDeleteRecipients:(BOOL)recipients;
- (void)setCanSelectRecipients:(BOOL)recipients;
- (void)setComposeRecipients:(id)recipients;
- (void)setFooterTitle:(id)title;
- (void)setHeaderTitle:(id)title;
- (void)setRecipients:(id)recipients;
- (void)setUseGroupedBackgroundColor:(BOOL)color;
@end

@implementation PXComposeRecipientTableViewModel

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientTableViewModel;
  [(PXComposeRecipientTableViewModel *)&v3 performChanges:changes];
}

- (void)setUseGroupedBackgroundColor:(BOOL)color
{
  if (self->_useGroupedBackgroundColor != color)
  {
    self->_useGroupedBackgroundColor = color;
    [(PXComposeRecipientTableViewModel *)self signalChange:128];
  }
}

- (void)setFooterTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"footerTitle"}];

    titleCopy = 0;
  }

  footerTitle = self->_footerTitle;
  if (footerTitle != titleCopy)
  {
    v11 = titleCopy;
    v7 = [(NSString *)footerTitle isEqualToString:titleCopy];
    titleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_footerTitle;
      self->_footerTitle = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:64];
      titleCopy = v11;
    }
  }
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"headerTitle"}];

    titleCopy = 0;
  }

  headerTitle = self->_headerTitle;
  if (headerTitle != titleCopy)
  {
    v11 = titleCopy;
    v7 = [(NSString *)headerTitle isEqualToString:titleCopy];
    titleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_headerTitle;
      self->_headerTitle = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:32];
      titleCopy = v11;
    }
  }
}

- (void)setCanSelectRecipients:(BOOL)recipients
{
  if (self->_canSelectRecipients != recipients)
  {
    self->_canSelectRecipients = recipients;
    [(PXComposeRecipientTableViewModel *)self signalChange:16];
  }
}

- (void)setCanDeleteRecipients:(BOOL)recipients
{
  if (self->_canDeleteRecipients != recipients)
  {
    self->_canDeleteRecipients = recipients;
    [(PXComposeRecipientTableViewModel *)self signalChange:8];
  }
}

- (void)setCanAddRecipients:(BOOL)recipients
{
  if (self->_canAddRecipients != recipients)
  {
    self->_canAddRecipients = recipients;
    [(PXComposeRecipientTableViewModel *)self signalChange:4];
  }
}

- (void)setComposeRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (!recipientsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"composeRecipients"}];

    recipientsCopy = 0;
  }

  composeRecipients = self->_composeRecipients;
  if (composeRecipients != recipientsCopy)
  {
    v11 = recipientsCopy;
    v7 = [(NSArray *)composeRecipients isEqual:recipientsCopy];
    recipientsCopy = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v11 copy];
      v9 = self->_composeRecipients;
      self->_composeRecipients = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:2];
      recipientsCopy = v11;
    }
  }
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (!recipientsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"recipients"}];

    recipientsCopy = 0;
  }

  recipients = self->_recipients;
  if (recipients != recipientsCopy)
  {
    v11 = recipientsCopy;
    v7 = [(NSArray *)recipients isEqual:recipientsCopy];
    recipientsCopy = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v11 copy];
      v9 = self->_recipients;
      self->_recipients = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:1];
      recipientsCopy = v11;
    }
  }
}

- (PXComposeRecipientTableViewModel)initWithComposeRecipientDataSourceManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PXComposeRecipientTableViewModel;
  v6 = [(PXComposeRecipientTableViewModel *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composeRecipientDataSourceManager, manager);
    recipients = v7->_recipients;
    v9 = MEMORY[0x1E695E0F0];
    v7->_recipients = MEMORY[0x1E695E0F0];

    composeRecipients = v7->_composeRecipients;
    v7->_composeRecipients = v9;

    headerTitle = v7->_headerTitle;
    v7->_headerTitle = &stru_1F1741150;

    footerTitle = v7->_footerTitle;
    v7->_footerTitle = &stru_1F1741150;

    peopleSuggestionsDataSourceManager = [(PXComposeRecipientDataSourceManager *)v7->_composeRecipientDataSourceManager peopleSuggestionsDataSourceManager];
    mediaProvider = [peopleSuggestionsDataSourceManager mediaProvider];
    peopleSuggestionsMediaProvider = v7->_peopleSuggestionsMediaProvider;
    v7->_peopleSuggestionsMediaProvider = mediaProvider;
  }

  return v7;
}

- (PXComposeRecipientTableViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewModel init]"}];

  abort();
}

@end