@interface WFWidgetConfigurationLoadingContentViewController
- (void)setCurrentContentView:(id)a3;
- (void)showMessage:(id)a3;
- (void)startLoading;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationLoadingContentViewController

- (void)showMessage:(id)a3
{
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v8 = objc_alloc_init(v4);
  [v8 setText:v5];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v8 setFont:v6];

  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:1];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:v7];

  [(WFWidgetConfigurationLoadingContentViewController *)self setCurrentContentView:v8];
}

- (void)startLoading
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  [v3 startAnimating];
  [(WFWidgetConfigurationLoadingContentViewController *)self setCurrentContentView:v3];
}

- (void)viewDidLoad
{
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = WFWidgetConfigurationLoadingContentViewController;
  [(WFWidgetConfigurationLoadingContentViewController *)&v34 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];

  if (v5)
  {
    v6 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v7 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    [v6 addSubview:v7];

    v22 = MEMORY[0x1E696ACD8];
    v33 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    v31 = [v33 centerXAnchor];
    v32 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v30 = [v32 layoutMarginsGuide];
    v29 = [v30 centerXAnchor];
    v28 = [v31 constraintEqualToAnchor:v29];
    v35[0] = v28;
    v27 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    v25 = [v27 centerYAnchor];
    v26 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v24 = [v26 layoutMarginsGuide];
    v23 = [v24 centerYAnchor];
    v21 = [v25 constraintEqualToAnchor:v23];
    v35[1] = v21;
    v20 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    v18 = [v20 widthAnchor];
    v19 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v8 = [v19 layoutMarginsGuide];
    v9 = [v8 widthAnchor];
    v10 = [v18 constraintLessThanOrEqualToAnchor:v9];
    v35[2] = v10;
    v11 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    v12 = [v11 heightAnchor];
    v13 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v14 = [v13 layoutMarginsGuide];
    v15 = [v14 heightAnchor];
    v16 = [v12 constraintLessThanOrEqualToAnchor:v15];
    v35[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [v22 activateConstraints:v17];
  }

  else
  {
    [(WFWidgetConfigurationLoadingContentViewController *)self startLoading];
  }
}

- (void)setCurrentContentView:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  currentContentView = self->_currentContentView;
  if (currentContentView)
  {
    [(UIView *)currentContentView removeFromSuperview];
  }

  objc_storeStrong(&self->_currentContentView, a3);
  [(UIView *)self->_currentContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v5 && [(WFWidgetConfigurationLoadingContentViewController *)self isViewLoaded])
  {
    v7 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    [v7 addSubview:v5];

    v20 = MEMORY[0x1E696ACD8];
    v28 = [v5 centerXAnchor];
    v29 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v27 = [v29 layoutMarginsGuide];
    v26 = [v27 centerXAnchor];
    v25 = [v28 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v23 = [v5 centerYAnchor];
    v24 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v22 = [v24 layoutMarginsGuide];
    v21 = [v22 centerYAnchor];
    v19 = [v23 constraintEqualToAnchor:v21];
    v30[1] = v19;
    v17 = [v5 widthAnchor];
    v18 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v8 = [v18 layoutMarginsGuide];
    v9 = [v8 widthAnchor];
    v10 = [v17 constraintLessThanOrEqualToAnchor:v9];
    v30[2] = v10;
    v11 = [v5 heightAnchor];
    v12 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    v13 = [v12 layoutMarginsGuide];
    v14 = [v13 heightAnchor];
    v15 = [v11 constraintLessThanOrEqualToAnchor:v14];
    v30[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v20 activateConstraints:v16];
  }
}

@end