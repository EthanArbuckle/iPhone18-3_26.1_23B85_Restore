@interface WFWidgetConfigurationLoadingContentViewController
- (void)setCurrentContentView:(id)view;
- (void)showMessage:(id)message;
- (void)startLoading;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationLoadingContentViewController

- (void)showMessage:(id)message
{
  v4 = MEMORY[0x1E69DCC10];
  messageCopy = message;
  v8 = objc_alloc_init(v4);
  [v8 setText:messageCopy];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v8 setFont:v6];

  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:secondaryLabelColor];

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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(WFWidgetConfigurationLoadingContentViewController *)self view];
  [view setBackgroundColor:clearColor];

  currentContentView = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];

  if (currentContentView)
  {
    view2 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    currentContentView2 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    [view2 addSubview:currentContentView2];

    v22 = MEMORY[0x1E696ACD8];
    currentContentView3 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    centerXAnchor = [currentContentView3 centerXAnchor];
    view3 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide = [view3 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v35[0] = v28;
    currentContentView4 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    centerYAnchor = [currentContentView4 centerYAnchor];
    view4 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide2 = [view4 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v35[1] = v21;
    currentContentView5 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    widthAnchor = [currentContentView5 widthAnchor];
    view5 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide3 = [view5 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide3 widthAnchor];
    v10 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v35[2] = v10;
    currentContentView6 = [(WFWidgetConfigurationLoadingContentViewController *)self currentContentView];
    heightAnchor = [currentContentView6 heightAnchor];
    view6 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide4 = [view6 layoutMarginsGuide];
    heightAnchor2 = [layoutMarginsGuide4 heightAnchor];
    v16 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v35[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [v22 activateConstraints:v17];
  }

  else
  {
    [(WFWidgetConfigurationLoadingContentViewController *)self startLoading];
  }
}

- (void)setCurrentContentView:(id)view
{
  v30[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  currentContentView = self->_currentContentView;
  if (currentContentView)
  {
    [(UIView *)currentContentView removeFromSuperview];
  }

  objc_storeStrong(&self->_currentContentView, view);
  [(UIView *)self->_currentContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (viewCopy && [(WFWidgetConfigurationLoadingContentViewController *)self isViewLoaded])
  {
    view = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    [view addSubview:viewCopy];

    v20 = MEMORY[0x1E696ACD8];
    centerXAnchor = [viewCopy centerXAnchor];
    view2 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide = [view2 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30[0] = v25;
    centerYAnchor = [viewCopy centerYAnchor];
    view3 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide2 = [view3 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[1] = v19;
    widthAnchor = [viewCopy widthAnchor];
    view4 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide3 = [view4 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide3 widthAnchor];
    v10 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v30[2] = v10;
    heightAnchor = [viewCopy heightAnchor];
    view5 = [(WFWidgetConfigurationLoadingContentViewController *)self view];
    layoutMarginsGuide4 = [view5 layoutMarginsGuide];
    heightAnchor2 = [layoutMarginsGuide4 heightAnchor];
    v15 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v30[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v20 activateConstraints:v16];
  }
}

@end