@interface PXMessagesExtensionViewModel
+ (PXMessagesExtensionViewModel)sharedRootViewModel;
- (void)clearSelection;
- (void)performChanges:(id)a3;
- (void)setDrawerActive:(BOOL)a3;
- (void)setPresentedViewController:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSelectedActivityType:(unint64_t)a3;
- (void)setSelectedMessageDate:(id)a3;
- (void)setSelectedMessageText:(id)a3;
- (void)setSelectedURL:(id)a3;
@end

@implementation PXMessagesExtensionViewModel

- (void)setRecipients:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_recipients isEqualToArray:?])
  {
    v4 = [v6 copy];
    recipients = self->_recipients;
    self->_recipients = v4;

    [(PXMessagesExtensionViewModel *)self signalChange:32];
  }
}

- (void)clearSelection
{
  [(PXMessagesExtensionViewModel *)self setSelectedURL:0];
  [(PXMessagesExtensionViewModel *)self setSelectedActivityType:0];

  [(PXMessagesExtensionViewModel *)self setPresentedViewController:0];
}

- (void)setSelectedMessageDate:(id)a3
{
  v5 = a3;
  if (self->_selectedMessageDate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedMessageDate, a3);
    [(PXMessagesExtensionViewModel *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setSelectedMessageText:(id)a3
{
  if (self->_selectedMessageText != a3)
  {
    v4 = [a3 copy];
    selectedMessageText = self->_selectedMessageText;
    self->_selectedMessageText = v4;

    [(PXMessagesExtensionViewModel *)self signalChange:4];
  }
}

- (void)setPresentedViewController:(id)a3
{
  v5 = a3;
  if (self->_presentedViewController != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_presentedViewController, a3);
    [(PXMessagesExtensionViewModel *)self signalChange:16];
    v5 = v6;
  }
}

- (void)setDrawerActive:(BOOL)a3
{
  if (self->_drawerActive != a3)
  {
    self->_drawerActive = a3;
    [(PXMessagesExtensionViewModel *)self signalChange:8];
  }
}

- (void)setSelectedActivityType:(unint64_t)a3
{
  if (self->_selectedActivityType != a3)
  {
    self->_selectedActivityType = a3;
    [(PXMessagesExtensionViewModel *)self signalChange:2];
  }
}

- (void)setSelectedURL:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_selectedURL != v5)
  {
    v8 = v5;
    v7 = [(NSURL *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectedURL, a3);
      [(PXMessagesExtensionViewModel *)self signalChange:1];
      v6 = v8;
    }
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXMessagesExtensionViewModel;
  [(PXMessagesExtensionViewModel *)&v3 performChanges:a3];
}

+ (PXMessagesExtensionViewModel)sharedRootViewModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXMessagesExtensionViewModel_sharedRootViewModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRootViewModel_onceToken != -1)
  {
    dispatch_once(&sharedRootViewModel_onceToken, block);
  }

  v2 = sharedRootViewModel__sharedRootViewModel;

  return v2;
}

void __51__PXMessagesExtensionViewModel_sharedRootViewModel__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedRootViewModel__sharedRootViewModel;
  sharedRootViewModel__sharedRootViewModel = v1;
}

@end