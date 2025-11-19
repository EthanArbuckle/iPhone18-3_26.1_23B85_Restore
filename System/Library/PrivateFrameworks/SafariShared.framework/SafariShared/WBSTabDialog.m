@interface WBSTabDialog
+ (id)tabDialogWithPresentationBlock:(id)a3 dismissalBlock:(id)a4;
- (WBSTabDialog)init;
- (id)_init;
- (id)createInfo;
@end

@implementation WBSTabDialog

+ (id)tabDialogWithPresentationBlock:(id)a3 dismissalBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _init];
  v9 = MEMORY[0x1BFB13CE0](v7);

  v10 = v8[1];
  v8[1] = v9;

  v11 = MEMORY[0x1BFB13CE0](v6);
  v12 = v8[2];
  v8[2] = v11;

  return v8;
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