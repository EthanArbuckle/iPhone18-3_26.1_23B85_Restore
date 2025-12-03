@interface WFCompactDialogViewController
- (WFCompactDialogViewController)initWithRequest:(id)request;
- (WFCompactDialogViewControllerDelegate)delegate;
- (id)keyCommands;
- (void)cancelKeyPressed;
- (void)configureActionGroupWithActions:(id)actions;
- (void)doneKeyPressed;
- (void)finishWithResponse:(id)response waitForFollowUpRequest:(BOOL)request;
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
  view = [(WFCompactDialogViewController *)self view];
  [view endEditing:1];

  preferredAction = [(WFCompactDialogViewController *)self preferredAction];

  if (preferredAction)
  {
    preferredAction2 = [(WFCompactDialogViewController *)self preferredAction];
    [preferredAction2 invokeHandler];
  }
}

- (void)cancelKeyPressed
{
  view = [(WFCompactDialogViewController *)self view];
  [view endEditing:1];

  cancelAction = [(WFCompactDialogViewController *)self cancelAction];

  if (cancelAction)
  {
    cancelAction2 = [(WFCompactDialogViewController *)self cancelAction];
    [cancelAction2 invokeHandler];
  }
}

- (id)keyCommands
{
  v3 = objc_opt_new();
  cancelAction = [(WFCompactDialogViewController *)self cancelAction];

  if (cancelAction)
  {
    v5 = MEMORY[0x277D75650];
    v6 = WFLocalizedString(@"Cancel");
    v7 = [v5 commandWithTitle:v6 image:0 action:sel_cancelKeyPressed input:*MEMORY[0x277D76AD8] modifierFlags:0 propertyList:0];

    [v3 addObject:v7];
  }

  preferredAction = [(WFCompactDialogViewController *)self preferredAction];

  if (preferredAction)
  {
    request = [(WFCompactDialogViewController *)self request];
    if ([request hasMultilineTextEntry])
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

- (void)finishWithResponse:(id)response waitForFollowUpRequest:(BOOL)request
{
  requestCopy = request;
  responseCopy = response;
  delegate = [(WFCompactDialogViewController *)self delegate];
  [delegate dialogViewController:self didFinishWithResponse:responseCopy waitForFollowUpRequest:requestCopy];
}

- (void)configureActionGroupWithActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    if ([actionsCopy count] > 2)
    {
      platterView2 = 0;
    }

    else
    {
      platterView2 = [actionsCopy if_firstObjectPassingTest:&__block_literal_global_11043];
    }

    v5 = [actionsCopy if_firstObjectPassingTest:&__block_literal_global_173];
    [(WFCompactDialogViewController *)self setCancelAction:v5];

    [(WFCompactDialogViewController *)self setActions:actionsCopy];
    platterView = [(WFCompactPlatterViewController *)self platterView];
    [platterView setActions:actionsCopy];

    [(WFCompactDialogViewController *)self setPreferredAction:platterView2];
  }

  else
  {
    [(WFCompactDialogViewController *)self setActions:0];
    [(WFCompactDialogViewController *)self setPreferredAction:0];
    [(WFCompactDialogViewController *)self setCancelAction:0];
    platterView2 = [(WFCompactPlatterViewController *)self platterView];
    [platterView2 setActions:0];
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
  request = [(WFCompactDialogViewController *)self request];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  attribution = [request attribution];
  [platterView setAttribution:attribution];

  promptForDisplay = [request promptForDisplay];
  [platterView setPrimaryText:promptForDisplay];

  if ([request shouldCenterPrompt])
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  [platterView setPrimaryTextAlignment:v7];
}

- (WFCompactDialogViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v10.receiver = self;
  v10.super_class = WFCompactDialogViewController;
  v6 = [(WFCompactPlatterViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = v7;
  }

  return v7;
}

@end