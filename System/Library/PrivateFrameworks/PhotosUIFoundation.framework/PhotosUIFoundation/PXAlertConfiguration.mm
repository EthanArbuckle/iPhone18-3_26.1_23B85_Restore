@interface PXAlertConfiguration
- (PXAlertConfiguration)init;
- (PXAlertConfiguration)initWithError:(id)a3;
- (UIPopoverPresentationControllerSourceItem)sourceItem;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5;
- (void)configureForError:(id)a3;
@end

@implementation PXAlertConfiguration

- (UIPopoverPresentationControllerSourceItem)sourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceItem);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXAlertConfiguration *)self title];
  [v4 setTitle:v5];

  v6 = [(PXAlertConfiguration *)self message];
  [v4 setMessage:v6];

  v7 = [v4 actions];
  v8 = [(PXAlertConfiguration *)self actions];
  [v7 setArray:v8];

  [v4 setStyle:{-[PXAlertConfiguration style](self, "style")}];
  v9 = [(PXAlertConfiguration *)self sourceItem];
  [v4 setSourceItem:v9];

  v10 = [(PXAlertConfiguration *)self contentViewController];
  [v4 setContentViewController:v10];

  v11 = [(PXAlertConfiguration *)self headerContentViewController];
  [v4 setHeaderContentViewController:v11];

  v12 = [(PXAlertConfiguration *)self preferredAction];
  [v4 setPreferredAction:v12];

  v13 = [(PXAlertConfiguration *)self completionHandler];
  [v4 setCompletionHandler:v13];

  return v4;
}

- (PXAlertConfiguration)initWithError:(id)a3
{
  v4 = a3;
  v5 = [(PXAlertConfiguration *)self init];
  [(PXAlertConfiguration *)v5 configureForError:v4];

  return v5;
}

- (void)configureForError:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedFailureReason];
  if (v5)
  {
    [(PXAlertConfiguration *)self setTitle:v5];
  }

  else
  {
    v6 = [v4 localizedDescription];
    [(PXAlertConfiguration *)self setTitle:v6];
  }

  v7 = [v4 localizedRecoverySuggestion];
  [(PXAlertConfiguration *)self setMessage:v7];

  v8 = [v4 localizedRecoveryOptions];
  v9 = [v4 recoveryAttempter];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__PXAlertConfiguration_configureForError___block_invoke;
  v14[3] = &unk_1E7BB7F48;
  v14[4] = self;
  v15 = v9;
  v16 = v4;
  v10 = v4;
  v11 = v9;
  [v8 enumerateObjectsUsingBlock:v14];
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

- (void)addActionWithTitle:(id)a3 style:(int64_t)a4 action:(id)a5
{
  actions = self->_actions;
  v8 = a5;
  v9 = a3;
  v10 = [[PXAlertAction alloc] initWithTitle:v9 style:a4 action:v8];

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