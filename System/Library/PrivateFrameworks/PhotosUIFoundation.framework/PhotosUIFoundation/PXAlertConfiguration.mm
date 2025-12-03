@interface PXAlertConfiguration
- (PXAlertConfiguration)init;
- (PXAlertConfiguration)initWithError:(id)error;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addActionWithTitle:(id)title style:(int64_t)style action:(id)action;
- (void)configureForError:(id)error;
@end

@implementation PXAlertConfiguration

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  title = [(PXAlertConfiguration *)self title];
  [v4 setTitle:title];

  message = [(PXAlertConfiguration *)self message];
  [v4 setMessage:message];

  actions = [v4 actions];
  actions2 = [(PXAlertConfiguration *)self actions];
  [actions setArray:actions2];

  [v4 setStyle:{-[PXAlertConfiguration style](self, "style")}];
  sourceItem = [(PXAlertConfiguration *)self sourceItem];
  [v4 setSourceItem:sourceItem];

  contentViewController = [(PXAlertConfiguration *)self contentViewController];
  [v4 setContentViewController:contentViewController];

  headerContentViewController = [(PXAlertConfiguration *)self headerContentViewController];
  [v4 setHeaderContentViewController:headerContentViewController];

  preferredAction = [(PXAlertConfiguration *)self preferredAction];
  [v4 setPreferredAction:preferredAction];

  completionHandler = [(PXAlertConfiguration *)self completionHandler];
  [v4 setCompletionHandler:completionHandler];

  return v4;
}

- (PXAlertConfiguration)initWithError:(id)error
{
  errorCopy = error;
  v5 = [(PXAlertConfiguration *)self init];
  [(PXAlertConfiguration *)v5 configureForError:errorCopy];

  return v5;
}

- (void)configureForError:(id)error
{
  errorCopy = error;
  localizedFailureReason = [errorCopy localizedFailureReason];
  if (localizedFailureReason)
  {
    [(PXAlertConfiguration *)self setTitle:localizedFailureReason];
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    [(PXAlertConfiguration *)self setTitle:localizedDescription];
  }

  localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
  [(PXAlertConfiguration *)self setMessage:localizedRecoverySuggestion];

  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  recoveryAttempter = [errorCopy recoveryAttempter];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__PXAlertConfiguration_configureForError___block_invoke;
  v14[3] = &unk_1E7BB7F48;
  v14[4] = self;
  v15 = recoveryAttempter;
  v16 = errorCopy;
  v10 = errorCopy;
  v11 = recoveryAttempter;
  [localizedRecoveryOptions enumerateObjectsUsingBlock:v14];
  v12 = PXPhotosUIFoundationBundle();
  v13 = [v12 localizedStringForKey:@"PXOK" value:&stru_1F2B87EE0 table:0];
  [(PXAlertConfiguration *)self addActionWithTitle:v13 style:1 action:0];
}

void __42__PXAlertConfiguration_configureForError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PXAlertConfiguration_configureForError___block_invoke_2;
  v7[3] = &unk_1E7BB7F20;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a3;
  [v6 addActionWithTitle:a2 style:0 action:v7];
}

uint64_t __42__PXAlertConfiguration_configureForError___block_invoke_2(void *a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  if (v2)
  {

    return [v3 attemptRecoveryFromError:v4 optionIndex:v5 delegate:0 didRecoverSelector:0 contextInfo:0];
  }

  else
  {

    return [v3 attemptRecoveryFromError:v4 optionIndex:v5];
  }
}

- (void)addActionWithTitle:(id)title style:(int64_t)style action:(id)action
{
  actions = self->_actions;
  actionCopy = action;
  titleCopy = title;
  v10 = [[PXAlertAction alloc] initWithTitle:titleCopy style:style action:actionCopy];

  [(NSMutableArray *)actions addObject:v10];
}

- (PXAlertConfiguration)init
{
  v6.receiver = self;
  v6.super_class = PXAlertConfiguration;
  v2 = [(PXAlertConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v2->_actions;
    v2->_actions = v3;

    v2->_style = 1;
  }

  return v2;
}

@end