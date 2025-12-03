@interface PKAMSEnagementMessageCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)displayDialogRequest:(id)request;
- (void)layoutSubviews;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)prepareForReuse;
- (void)setMessage:(id)message;
@end

@implementation PKAMSEnagementMessageCell

- (void)setMessage:(id)message
{
  messageCopy = message;
  objc_storeStrong(&self->_message, message);
  if (self->_message)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __40__PKAMSEnagementMessageCell_setMessage___block_invoke;
    v10 = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    [messageCopy setActionOnViewed:&v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  dialogRequest = [messageCopy dialogRequest];
  [(PKAMSEnagementMessageCell *)self displayDialogRequest:dialogRequest];
}

void __40__PKAMSEnagementMessageCell_setMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[128] enqueueImpressionMetrics];
    WeakRetained = v2;
  }
}

- (void)displayDialogRequest:(id)request
{
  requestCopy = request;
  dashboardMessageController = self->_dashboardMessageController;
  v14 = requestCopy;
  if (dashboardMessageController)
  {
    view = [(AMSUIDashboardMessageViewController *)dashboardMessageController view];
    [view removeFromSuperview];

    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController removeFromParentViewController];
    v7 = self->_dashboardMessageController;
    self->_dashboardMessageController = 0;

    requestCopy = v14;
  }

  if (requestCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E698CCC0]) initWithRequest:v14];
    v9 = self->_dashboardMessageController;
    self->_dashboardMessageController = v8;

    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setImpressionsReportingFrequency:0];
    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setShouldAutomaticallyReportMetrics:0];
    v10 = objc_alloc_init(MEMORY[0x1E698CCB8]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v10 setBackgroundColor:clearColor];

    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setPreferredAppearance:v10];
    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setDelegate:self];
    pkui_viewControllerFromResponderChain = [(UIView *)self pkui_viewControllerFromResponderChain];
    [pkui_viewControllerFromResponderChain addChildViewController:self->_dashboardMessageController];

    view2 = [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController view];
    [(PKAMSEnagementMessageCell *)self addSubview:view2];

    requestCopy = v14;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  view = [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController view];
  [view sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKAMSEnagementMessageCell;
  [(PKAMSEnagementMessageCell *)&v4 layoutSubviews];
  view = [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController view];
  [(PKAMSEnagementMessageCell *)self bounds];
  [view setFrame:?];
}

- (void)prepareForReuse
{
  [(PKAMSEnagementMessageCell *)self setMessage:0];
  v3.receiver = self;
  v3.super_class = PKAMSEnagementMessageCell;
  [(PKAMSEnagementMessageCell *)&v3 prepareForReuse];
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  originalRequest = [resultCopy originalRequest];
  selectedActionIdentifier = [resultCopy selectedActionIdentifier];

  v10 = [originalRequest locateActionWithIdentifier:selectedActionIdentifier];

  if (v10)
  {
    style = [v10 style];
    if (style < 2)
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__PKAMSEnagementMessageCell_messageViewController_didSelectActionWithDialogResult___block_invoke;
      aBlock[3] = &unk_1E80110E0;
      objc_copyWeak(&v15, &location);
      v14 = controllerCopy;
      actionOnDismiss = _Block_copy(aBlock);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      if (!actionOnDismiss)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (style == 2)
    {
      actionOnDismiss = [(PKDashboardPassMessage *)self->_message actionOnDismiss];
      if (actionOnDismiss)
      {
LABEL_7:
        actionOnDismiss[2](actionOnDismiss);
      }
    }
  }

LABEL_8:
}

void __83__PKAMSEnagementMessageCell_messageViewController_didSelectActionWithDialogResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[129] actionOnButtonPress];
    v4 = [*(a1 + 32) view];
    (v3)[2](v3, v4);

    WeakRetained = v5;
  }
}

@end