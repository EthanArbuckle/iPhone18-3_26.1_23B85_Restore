@interface WBSTabDialog
+ (id)tabDialogWithPresentationBlock:(id)block dismissalBlock:(id)dismissalBlock;
- (WBSTabDialog)init;
- (id)_init;
- (id)createInfo;
@end

@implementation WBSTabDialog

+ (id)tabDialogWithPresentationBlock:(id)block dismissalBlock:(id)dismissalBlock
{
  dismissalBlockCopy = dismissalBlock;
  blockCopy = block;
  _init = [[self alloc] _init];
  v9 = MEMORY[0x1BFB13CE0](blockCopy);

  v10 = _init[1];
  _init[1] = v9;

  v11 = MEMORY[0x1BFB13CE0](dismissalBlockCopy);
  v12 = _init[2];
  _init[2] = v11;

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WBSTabDialog;
  return [(WBSTabDialog *)&v3 init];
}

- (WBSTabDialog)init
{
  v3.receiver = self;
  v3.super_class = WBSTabDialog;
  return [(WBSTabDialog *)&v3 init];
}

- (id)createInfo
{
  v3 = [[WBSTabDialogInformation alloc] initWithPresentationBlock:self->_presentationBlock dismissalBlock:self->_dismissalBlock blocksWebProcessUntilDismissed:self->_blocksWebProcessUntilDismissed];
  [(WBSTabDialogInformation *)v3 setCancellationExemptions:self->_cancellationExemptions];

  return v3;
}

@end