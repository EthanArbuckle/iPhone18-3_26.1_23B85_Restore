@interface VSUIActionStatusView
- (CGSize)sizeThatFits:(CGSize)a3;
- (VSUIActionStatusView)initWithCoder:(id)a3;
- (VSUIActionStatusView)initWithFrame:(CGRect)a3;
- (VSUIActionStatusViewDelegate)delegate;
- (void)_setUpViews;
- (void)_updateAcitivityViewSubviewWithDelegateProvidedView;
- (void)progressStateMachine:(id)a3 didTransitionToState:(unint64_t)a4 fromState:(unint64_t)a5 forEvent:(unint64_t)a6;
- (void)progressStateMachine:(id)a3 ignoredEvent:(unint64_t)a4;
- (void)resetState;
- (void)setDelegate:(id)a3;
@end

@implementation VSUIActionStatusView

- (VSUIActionStatusView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VSUIActionStatusView;
  v3 = [(VSUIActionStatusView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VSUIActionStatusView *)v3 _setUpViews];
  }

  return v4;
}

- (VSUIActionStatusView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSUIActionStatusView;
  v3 = [(VSUIActionStatusView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(VSUIActionStatusView *)v3 _setUpViews];
  }

  return v4;
}

- (void)resetState
{
  v3 = [(VSUIActionStatusView *)self activityView];
  [v3 setHidden:1];

  v4 = [(VSUIActionStatusView *)self errorView];
  [v4 setHidden:1];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(VSUIActionStatusView *)self _updateAcitivityViewSubviewWithDelegateProvidedView];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(VSUIActionStatusView *)self errorView];
  v7 = [v6 isHidden];

  if (v7)
  {
    v15.receiver = self;
    v15.super_class = VSUIActionStatusView;
    [(VSUIActionStatusView *)&v15 sizeThatFits:width, height];
  }

  else
  {
    v10 = [(VSUIActionStatusView *)self errorView];
    [v10 sizeThatFits:{width, height}];
    v12 = v11;
    v14 = v13;

    v8 = v12;
    v9 = v14;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)progressStateMachine:(id)a3 didTransitionToState:(unint64_t)a4 fromState:(unint64_t)a5 forEvent:(unint64_t)a6
{
  v9 = a3;
  if (a4 > 0)
  {
    if (a4 - 1 >= 2)
    {
      if (a4 != 3)
      {
        goto LABEL_15;
      }

      v18 = v9;
      v17 = [(VSUIActionStatusView *)self activityView];
      [v17 setHidden:a6 != 2];

      goto LABEL_12;
    }

    v18 = v9;
    v10 = [(VSUIActionStatusView *)self activityView];
    v11 = v10;
    v12 = 0;
LABEL_11:
    [v10 setHidden:v12];

LABEL_12:
    v14 = [(VSUIActionStatusView *)self errorView];
    v15 = v14;
LABEL_13:
    v16 = 1;
    goto LABEL_14;
  }

  if (a4 == -1)
  {
    v18 = v9;
    v10 = [(VSUIActionStatusView *)self activityView];
    v11 = v10;
    v12 = 1;
    goto LABEL_11;
  }

  if (a4)
  {
    goto LABEL_15;
  }

  v18 = v9;
  v13 = [(VSUIActionStatusView *)self activityView];
  [v13 setHidden:1];

  v14 = [(VSUIActionStatusView *)self errorView];
  v15 = v14;
  if (a6 != 3)
  {
    goto LABEL_13;
  }

  v16 = 0;
LABEL_14:
  [v14 setHidden:v16];

  v9 = v18;
LABEL_15:
}

- (void)progressStateMachine:(id)a3 ignoredEvent:(unint64_t)a4
{
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [VSUIActionStatusView progressStateMachine:v5 ignoredEvent:a4];
  }
}

- (void)_setUpViews
{
  v32[8] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] systemGray5Color];
  v4 = [v3 colorWithAlphaComponent:0.5];
  [(VSUIActionStatusView *)self setBackgroundColor:v4];

  v5 = objc_opt_new();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setHidden:1];
  [(VSUIActionStatusView *)self addSubview:v5];
  [(VSUIActionStatusView *)self setActivityView:v5];
  v6 = objc_opt_new();
  [v6 setHidden:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VSUIActionStatusView *)self addSubview:v6];
  [(VSUIActionStatusView *)self setErrorView:v6];
  v22 = MEMORY[0x277CCAAD0];
  v31 = [v5 heightAnchor];
  v30 = [v31 constraintEqualToConstant:20.0];
  v32[0] = v30;
  v29 = [v5 widthAnchor];
  v28 = [v29 constraintEqualToConstant:20.0];
  v32[1] = v28;
  v27 = [v5 centerXAnchor];
  v26 = [(VSUIActionStatusView *)self centerXAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v32[2] = v25;
  v24 = [v5 centerYAnchor];
  v23 = [(VSUIActionStatusView *)self centerYAnchor];
  v21 = [v24 constraintEqualToAnchor:v23];
  v32[3] = v21;
  v20 = [v6 topAnchor];
  v19 = [(VSUIActionStatusView *)self topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v32[4] = v18;
  v17 = [v6 bottomAnchor];
  v16 = [(VSUIActionStatusView *)self bottomAnchor];
  v7 = [v17 constraintEqualToAnchor:v16];
  v32[5] = v7;
  v8 = [v6 leadingAnchor];
  v9 = [(VSUIActionStatusView *)self leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v32[6] = v10;
  v11 = [v6 trailingAnchor];
  v12 = [(VSUIActionStatusView *)self trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v32[7] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:8];
  [v22 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateAcitivityViewSubviewWithDelegateProvidedView
{
  v21[4] = *MEMORY[0x277D85DE8];
  v3 = [(VSUIActionStatusView *)self delegate];
  v4 = [v3 progressViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 removeFromSuperview];
    [(UIView *)self->_activityView addSubview:v5];
    v16 = MEMORY[0x277CCAAD0];
    v20 = [v5 leadingAnchor];
    v19 = [(UIView *)self->_activityView leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v21[0] = v18;
    v17 = [v5 trailingAnchor];
    v6 = [(UIView *)self->_activityView trailingAnchor];
    v7 = [v17 constraintEqualToAnchor:v6];
    v21[1] = v7;
    v8 = [v5 topAnchor];
    v9 = [(UIView *)self->_activityView topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v21[2] = v10;
    v11 = [v5 bottomAnchor];
    v12 = [(UIView *)self->_activityView bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v21[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [v16 activateConstraints:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (VSUIActionStatusViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)progressStateMachine:(void *)a1 ignoredEvent:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_2728B4000, v4, OS_LOG_TYPE_ERROR, "progressStateMachine ignoredEvent:%@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end