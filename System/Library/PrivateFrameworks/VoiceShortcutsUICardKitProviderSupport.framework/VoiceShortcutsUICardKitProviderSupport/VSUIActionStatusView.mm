@interface VSUIActionStatusView
- (CGSize)sizeThatFits:(CGSize)fits;
- (VSUIActionStatusView)initWithCoder:(id)coder;
- (VSUIActionStatusView)initWithFrame:(CGRect)frame;
- (VSUIActionStatusViewDelegate)delegate;
- (void)_setUpViews;
- (void)_updateAcitivityViewSubviewWithDelegateProvidedView;
- (void)progressStateMachine:(id)machine didTransitionToState:(unint64_t)state fromState:(unint64_t)fromState forEvent:(unint64_t)event;
- (void)progressStateMachine:(id)machine ignoredEvent:(unint64_t)event;
- (void)resetState;
- (void)setDelegate:(id)delegate;
@end

@implementation VSUIActionStatusView

- (VSUIActionStatusView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VSUIActionStatusView;
  v3 = [(VSUIActionStatusView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VSUIActionStatusView *)v3 _setUpViews];
  }

  return v4;
}

- (VSUIActionStatusView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VSUIActionStatusView;
  v3 = [(VSUIActionStatusView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(VSUIActionStatusView *)v3 _setUpViews];
  }

  return v4;
}

- (void)resetState
{
  activityView = [(VSUIActionStatusView *)self activityView];
  [activityView setHidden:1];

  errorView = [(VSUIActionStatusView *)self errorView];
  [errorView setHidden:1];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(VSUIActionStatusView *)self _updateAcitivityViewSubviewWithDelegateProvidedView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  errorView = [(VSUIActionStatusView *)self errorView];
  isHidden = [errorView isHidden];

  if (isHidden)
  {
    v15.receiver = self;
    v15.super_class = VSUIActionStatusView;
    [(VSUIActionStatusView *)&v15 sizeThatFits:width, height];
  }

  else
  {
    errorView2 = [(VSUIActionStatusView *)self errorView];
    [errorView2 sizeThatFits:{width, height}];
    v12 = v11;
    v14 = v13;

    v8 = v12;
    v9 = v14;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)progressStateMachine:(id)machine didTransitionToState:(unint64_t)state fromState:(unint64_t)fromState forEvent:(unint64_t)event
{
  machineCopy = machine;
  if (state > 0)
  {
    if (state - 1 >= 2)
    {
      if (state != 3)
      {
        goto LABEL_15;
      }

      v18 = machineCopy;
      activityView = [(VSUIActionStatusView *)self activityView];
      [activityView setHidden:event != 2];

      goto LABEL_12;
    }

    v18 = machineCopy;
    activityView2 = [(VSUIActionStatusView *)self activityView];
    v11 = activityView2;
    v12 = 0;
LABEL_11:
    [activityView2 setHidden:v12];

LABEL_12:
    errorView = [(VSUIActionStatusView *)self errorView];
    v15 = errorView;
LABEL_13:
    v16 = 1;
    goto LABEL_14;
  }

  if (state == -1)
  {
    v18 = machineCopy;
    activityView2 = [(VSUIActionStatusView *)self activityView];
    v11 = activityView2;
    v12 = 1;
    goto LABEL_11;
  }

  if (state)
  {
    goto LABEL_15;
  }

  v18 = machineCopy;
  activityView3 = [(VSUIActionStatusView *)self activityView];
  [activityView3 setHidden:1];

  errorView = [(VSUIActionStatusView *)self errorView];
  v15 = errorView;
  if (event != 3)
  {
    goto LABEL_13;
  }

  v16 = 0;
LABEL_14:
  [errorView setHidden:v16];

  machineCopy = v18;
LABEL_15:
}

- (void)progressStateMachine:(id)machine ignoredEvent:(unint64_t)event
{
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [VSUIActionStatusView progressStateMachine:v5 ignoredEvent:event];
  }
}

- (void)_setUpViews
{
  v32[8] = *MEMORY[0x277D85DE8];
  systemGray5Color = [MEMORY[0x277D75348] systemGray5Color];
  v4 = [systemGray5Color colorWithAlphaComponent:0.5];
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
  heightAnchor = [v5 heightAnchor];
  v30 = [heightAnchor constraintEqualToConstant:20.0];
  v32[0] = v30;
  widthAnchor = [v5 widthAnchor];
  v28 = [widthAnchor constraintEqualToConstant:20.0];
  v32[1] = v28;
  centerXAnchor = [v5 centerXAnchor];
  centerXAnchor2 = [(VSUIActionStatusView *)self centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[2] = v25;
  centerYAnchor = [v5 centerYAnchor];
  centerYAnchor2 = [(VSUIActionStatusView *)self centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[3] = v21;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [(VSUIActionStatusView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[4] = v18;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [(VSUIActionStatusView *)self bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[5] = v7;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [(VSUIActionStatusView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[6] = v10;
  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [(VSUIActionStatusView *)self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[7] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:8];
  [v22 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateAcitivityViewSubviewWithDelegateProvidedView
{
  v21[4] = *MEMORY[0x277D85DE8];
  delegate = [(VSUIActionStatusView *)self delegate];
  progressViewController = [delegate progressViewController];
  view = [progressViewController view];

  if (view)
  {
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [view removeFromSuperview];
    [(UIView *)self->_activityView addSubview:view];
    v16 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_activityView leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v21[0] = v18;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_activityView trailingAnchor];
    v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v21[1] = v7;
    topAnchor = [view topAnchor];
    topAnchor2 = [(UIView *)self->_activityView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v21[2] = v10;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_activityView bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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