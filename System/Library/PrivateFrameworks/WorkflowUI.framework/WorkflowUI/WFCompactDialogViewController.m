@interface WFCompactDialogViewController
- (WFCompactDialogViewController)initWithRequest:(id)a3;
- (WFCompactDialogViewControllerDelegate)delegate;
- (id)keyCommands;
- (void)cancelKeyPressed;
- (void)configureActionGroupWithActions:(id)a3;
- (void)doneKeyPressed;
- (void)finishWithResponse:(id)a3 waitForFollowUpRequest:(BOOL)a4;
- (void)loadView;
- (void)systemDismissedBanner;
@end

@implementation WFCompactDialogViewController

- (WFCompactDialogViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)systemDismissedBanner
{
  v3 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
  [(WFCompactDialogViewController *)self finishWithResponse:v3];
}

- (void)doneKeyPressed
{
  v3 = [(WFCompactDialogViewController *)self view];
  [v3 endEditing:1];

  v4 = [(WFCompactDialogViewController *)self preferredAction];

  if (v4)
  {
    v5 = [(WFCompactDialogViewController *)self preferredAction];
    [v5 invokeHandler];
  }
}

- (void)cancelKeyPressed
{
  v3 = [(WFCompactDialogViewController *)self view];
  [v3 endEditing:1];

  v4 = [(WFCompactDialogViewController *)self cancelAction];

  if (v4)
  {
    v5 = [(WFCompactDialogViewController *)self cancelAction];
    [v5 invokeHandler];
  }
}

- (id)keyCommands
{
  v3 = objc_opt_new();
  v4 = [(WFCompactDialogViewController *)self cancelAction];

  if (v4)
  {
    v5 = MEMORY[0x277D75650];
    v6 = WFLocalizedString(@"Cancel");
    v7 = [v5 commandWithTitle:v6 image:0 action:sel_cancelKeyPressed input:*MEMORY[0x277D76AD8] modifierFlags:0 propertyList:0];

    [v3 addObject:v7];
  }

  v8 = [(WFCompactDialogViewController *)self preferredAction];

  if (v8)
  {
    v9 = [(WFCompactDialogViewController *)self request];
    if ([v9 hasMultilineTextEntry])
    {
      v10 = 0x100000;
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x277D75650];
    v12 = WFLocalizedString(@"Done");
    v13 = [v11 commandWithTitle:v12 image:0 action:sel_doneKeyPressed input:@"\r" modifierFlags:v10 propertyList:0];

    [v3 addObject:v13];
  }

  return v3;
}

- (void)finishWithResponse:(id)a3 waitForFollowUpRequest:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WFCompactDialogViewController *)self delegate];
  [v7 dialogViewController:self didFinishWithResponse:v6 waitForFollowUpRequest:v4];
}

- (void)configureActionGroupWithActions:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    if ([v7 count] > 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = [v7 if_firstObjectPassingTest:&__block_literal_global_11043];
    }

    v5 = [v7 if_firstObjectPassingTest:&__block_literal_global_173];
    [(WFCompactDialogViewController *)self setCancelAction:v5];

    [(WFCompactDialogViewController *)self setActions:v7];
    v6 = [(WFCompactPlatterViewController *)self platterView];
    [v6 setActions:v7];

    [(WFCompactDialogViewController *)self setPreferredAction:v4];
  }

  else
  {
    [(WFCompactDialogViewController *)self setActions:0];
    [(WFCompactDialogViewController *)self setPreferredAction:0];
    [(WFCompactDialogViewController *)self setCancelAction:0];
    v4 = [(WFCompactPlatterViewController *)self platterView];
    [v4 setActions:0];
  }
}

BOOL __65__WFCompactDialogViewController_configureActionGroupWithActions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 dialogButton];
  v3 = [v2 style] == 1;

  return v3;
}

BOOL __65__WFCompactDialogViewController_configureActionGroupWithActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dialogButton];
  v3 = [v2 style] == 0;

  return v3;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = WFCompactDialogViewController;
  [(WFCompactPlatterViewController *)&v8 loadView];
  v3 = [(WFCompactDialogViewController *)self request];
  v4 = [(WFCompactPlatterViewController *)self platterView];
  v5 = [v3 attribution];
  [v4 setAttribution:v5];

  v6 = [v3 promptForDisplay];
  [v4 setPrimaryText:v6];

  if ([v3 shouldCenterPrompt])
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  [v4 setPrimaryTextAlignment:v7];
}

- (WFCompactDialogViewController)initWithRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFCompactDialogViewController;
  v6 = [(WFCompactPlatterViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = v7;
  }

  return v7;
}

@end