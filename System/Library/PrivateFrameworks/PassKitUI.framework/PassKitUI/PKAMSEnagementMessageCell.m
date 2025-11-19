@interface PKAMSEnagementMessageCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)displayDialogRequest:(id)a3;
- (void)layoutSubviews;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)prepareForReuse;
- (void)setMessage:(id)a3;
@end

@implementation PKAMSEnagementMessageCell

- (void)setMessage:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_message, a3);
  if (self->_message)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __40__PKAMSEnagementMessageCell_setMessage___block_invoke;
    v10 = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    [v5 setActionOnViewed:&v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v6 = [v5 dialogRequest];
  [(PKAMSEnagementMessageCell *)self displayDialogRequest:v6];
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

- (void)displayDialogRequest:(id)a3
{
  v4 = a3;
  dashboardMessageController = self->_dashboardMessageController;
  v14 = v4;
  if (dashboardMessageController)
  {
    v6 = [(AMSUIDashboardMessageViewController *)dashboardMessageController view];
    [v6 removeFromSuperview];

    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController removeFromParentViewController];
    v7 = self->_dashboardMessageController;
    self->_dashboardMessageController = 0;

    v4 = v14;
  }

  if (v4)
  {
    v8 = [objc_alloc(MEMORY[0x1E698CCC0]) initWithRequest:v14];
    v9 = self->_dashboardMessageController;
    self->_dashboardMessageController = v8;

    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setImpressionsReportingFrequency:0];
    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setShouldAutomaticallyReportMetrics:0];
    v10 = objc_alloc_init(MEMORY[0x1E698CCB8]);
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [v10 setBackgroundColor:v11];

    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setPreferredAppearance:v10];
    [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController setDelegate:self];
    v12 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [v12 addChildViewController:self->_dashboardMessageController];

    v13 = [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController view];
    [(PKAMSEnagementMessageCell *)self addSubview:v13];

    v4 = v14;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController view];
  [v5 sizeThatFits:{width, height}];
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
  v3 = [(AMSUIDashboardMessageViewController *)self->_dashboardMessageController view];
  [(PKAMSEnagementMessageCell *)self bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  [(PKAMSEnagementMessageCell *)self setMessage:0];
  v3.receiver = self;
  v3.super_class = PKAMSEnagementMessageCell;
  [(PKAMSEnagementMessageCell *)&v3 prepareForReuse];
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 originalRequest];
  v9 = [v7 selectedActionIdentifier];

  v10 = [v8 locateActionWithIdentifier:v9];

  if (v10)
  {
    v11 = [v10 style];
    if (v11 < 2)
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __83__PKAMSEnagementMessageCell_messageViewController_didSelectActionWithDialogResult___block_invoke;
      aBlock[3] = &unk_1E80110E0;
      objc_copyWeak(&v15, &location);
      v14 = v6;
      v12 = _Block_copy(aBlock);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (v11 == 2)
    {
      v12 = [(PKDashboardPassMessage *)self->_message actionOnDismiss];
      if (v12)
      {
LABEL_7:
        v12[2](v12);
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