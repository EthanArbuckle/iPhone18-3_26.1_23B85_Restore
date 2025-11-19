@interface PXComposeRecipientTableViewModel
- (PXComposeRecipientTableViewModel)init;
- (PXComposeRecipientTableViewModel)initWithComposeRecipientDataSourceManager:(id)a3;
- (void)performChanges:(id)a3;
- (void)setCanAddRecipients:(BOOL)a3;
- (void)setCanDeleteRecipients:(BOOL)a3;
- (void)setCanSelectRecipients:(BOOL)a3;
- (void)setComposeRecipients:(id)a3;
- (void)setFooterTitle:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setUseGroupedBackgroundColor:(BOOL)a3;
@end

@implementation PXComposeRecipientTableViewModel

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXComposeRecipientTableViewModel;
  [(PXComposeRecipientTableViewModel *)&v3 performChanges:a3];
}

- (void)setUseGroupedBackgroundColor:(BOOL)a3
{
  if (self->_useGroupedBackgroundColor != a3)
  {
    self->_useGroupedBackgroundColor = a3;
    [(PXComposeRecipientTableViewModel *)self signalChange:128];
  }
}

- (void)setFooterTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"footerTitle"}];

    v5 = 0;
  }

  footerTitle = self->_footerTitle;
  if (footerTitle != v5)
  {
    v11 = v5;
    v7 = [(NSString *)footerTitle isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_footerTitle;
      self->_footerTitle = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:64];
      v5 = v11;
    }
  }
}

- (void)setHeaderTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"headerTitle"}];

    v5 = 0;
  }

  headerTitle = self->_headerTitle;
  if (headerTitle != v5)
  {
    v11 = v5;
    v7 = [(NSString *)headerTitle isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_headerTitle;
      self->_headerTitle = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:32];
      v5 = v11;
    }
  }
}

- (void)setCanSelectRecipients:(BOOL)a3
{
  if (self->_canSelectRecipients != a3)
  {
    self->_canSelectRecipients = a3;
    [(PXComposeRecipientTableViewModel *)self signalChange:16];
  }
}

- (void)setCanDeleteRecipients:(BOOL)a3
{
  if (self->_canDeleteRecipients != a3)
  {
    self->_canDeleteRecipients = a3;
    [(PXComposeRecipientTableViewModel *)self signalChange:8];
  }
}

- (void)setCanAddRecipients:(BOOL)a3
{
  if (self->_canAddRecipients != a3)
  {
    self->_canAddRecipients = a3;
    [(PXComposeRecipientTableViewModel *)self signalChange:4];
  }
}

- (void)setComposeRecipients:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"composeRecipients"}];

    v5 = 0;
  }

  composeRecipients = self->_composeRecipients;
  if (composeRecipients != v5)
  {
    v11 = v5;
    v7 = [(NSArray *)composeRecipients isEqual:v5];
    v5 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v11 copy];
      v9 = self->_composeRecipients;
      self->_composeRecipients = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:2];
      v5 = v11;
    }
  }
}

- (void)setRecipients:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"recipients"}];

    v5 = 0;
  }

  recipients = self->_recipients;
  if (recipients != v5)
  {
    v11 = v5;
    v7 = [(NSArray *)recipients isEqual:v5];
    v5 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [(NSArray *)v11 copy];
      v9 = self->_recipients;
      self->_recipients = v8;

      [(PXComposeRecipientTableViewModel *)self signalChange:1];
      v5 = v11;
    }
  }
}

- (PXComposeRecipientTableViewModel)initWithComposeRecipientDataSourceManager:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXComposeRecipientTableViewModel;
  v6 = [(PXComposeRecipientTableViewModel *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composeRecipientDataSourceManager, a3);
    recipients = v7->_recipients;
    v9 = MEMORY[0x1E695E0F0];
    v7->_recipients = MEMORY[0x1E695E0F0];

    composeRecipients = v7->_composeRecipients;
    v7->_composeRecipients = v9;

    headerTitle = v7->_headerTitle;
    v7->_headerTitle = &stru_1F1741150;

    footerTitle = v7->_footerTitle;
    v7->_footerTitle = &stru_1F1741150;

    v13 = [(PXComposeRecipientDataSourceManager *)v7->_composeRecipientDataSourceManager peopleSuggestionsDataSourceManager];
    v14 = [v13 mediaProvider];
    peopleSuggestionsMediaProvider = v7->_peopleSuggestionsMediaProvider;
    v7->_peopleSuggestionsMediaProvider = v14;
  }

  return v7;
}

- (PXComposeRecipientTableViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewModel.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewModel init]"}];

  abort();
}

@end