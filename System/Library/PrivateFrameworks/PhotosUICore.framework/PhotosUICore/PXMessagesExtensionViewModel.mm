@interface PXMessagesExtensionViewModel
+ (PXMessagesExtensionViewModel)sharedRootViewModel;
- (void)clearSelection;
- (void)performChanges:(id)changes;
- (void)setDrawerActive:(BOOL)active;
- (void)setPresentedViewController:(id)controller;
- (void)setRecipients:(id)recipients;
- (void)setSelectedActivityType:(unint64_t)type;
- (void)setSelectedMessageDate:(id)date;
- (void)setSelectedMessageText:(id)text;
- (void)setSelectedURL:(id)l;
@end

@implementation PXMessagesExtensionViewModel

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (![(NSArray *)self->_recipients isEqualToArray:?])
  {
    v4 = [recipientsCopy copy];
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

- (void)setSelectedMessageDate:(id)date
{
  dateCopy = date;
  if (self->_selectedMessageDate != dateCopy)
  {
    v6 = dateCopy;
    objc_storeStrong(&self->_selectedMessageDate, date);
    [(PXMessagesExtensionViewModel *)self signalChange:4];
    dateCopy = v6;
  }
}

- (void)setSelectedMessageText:(id)text
{
  if (self->_selectedMessageText != text)
  {
    v4 = [text copy];
    selectedMessageText = self->_selectedMessageText;
    self->_selectedMessageText = v4;

    [(PXMessagesExtensionViewModel *)self signalChange:4];
  }
}

- (void)setPresentedViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_presentedViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_presentedViewController, controller);
    [(PXMessagesExtensionViewModel *)self signalChange:16];
    controllerCopy = v6;
  }
}

- (void)setDrawerActive:(BOOL)active
{
  if (self->_drawerActive != active)
  {
    self->_drawerActive = active;
    [(PXMessagesExtensionViewModel *)self signalChange:8];
  }
}

- (void)setSelectedActivityType:(unint64_t)type
{
  if (self->_selectedActivityType != type)
  {
    self->_selectedActivityType = type;
    [(PXMessagesExtensionViewModel *)self signalChange:2];
  }
}

- (void)setSelectedURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (self->_selectedURL != lCopy)
  {
    v8 = lCopy;
    v7 = [(NSURL *)lCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectedURL, l);
      [(PXMessagesExtensionViewModel *)self signalChange:1];
      v6 = v8;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXMessagesExtensionViewModel;
  [(PXMessagesExtensionViewModel *)&v3 performChanges:changes];
}

+ (PXMessagesExtensionViewModel)sharedRootViewModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXMessagesExtensionViewModel_sharedRootViewModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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