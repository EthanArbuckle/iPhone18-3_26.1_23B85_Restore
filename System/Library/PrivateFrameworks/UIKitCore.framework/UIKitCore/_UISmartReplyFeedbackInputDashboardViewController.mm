@interface _UISmartReplyFeedbackInputDashboardViewController
- (_UISmartReplyFeedbackInputDashboardViewController)init;
- (void)setAssistantBarStyle:(int64_t)style;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation _UISmartReplyFeedbackInputDashboardViewController

- (_UISmartReplyFeedbackInputDashboardViewController)init
{
  v10.receiver = self;
  v10.super_class = _UISmartReplyFeedbackInputDashboardViewController;
  v2 = [(UIViewController *)&v10 init];
  if (v2)
  {
    v3 = +[_UISmartReplyFeedbackManager showReportConcernUI];
    v4 = off_1E70EC2B8;
    if (!v3)
    {
      v4 = off_1E70EC2C0;
    }

    v5 = objc_alloc_init(*v4);
    [(_UISmartReplyFeedbackInputDashboardViewController *)v2 setInputDashboardView:v5];

    v6 = +[_UISmartReplyFeedbackInputDashboardView makeBackgroundView];
    [(_UISmartReplyFeedbackInputDashboardViewController *)v2 setBackdropView:v6];

    v7 = +[UIColor tertiarySystemFillColor];
    backdropView = [(_UISmartReplyFeedbackInputDashboardViewController *)v2 backdropView];
    [backdropView setBackgroundColor:v7];
  }

  return v2;
}

- (void)setAssistantBarStyle:(int64_t)style
{
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v5 systemInputAssistantViewController];

  v6 = [systemInputAssistantViewController styleFromAssistantBarStyle:style];
  LODWORD(v5) = [v6 drawsPredictionBackdropView];
  backdropView = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  [backdropView setHidden:v5 ^ 1];
}

- (void)viewDidLoad
{
  v55[8] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = _UISmartReplyFeedbackInputDashboardViewController;
  [(UIViewController *)&v54 viewDidLoad];
  view = [(UIViewController *)self view];
  backdropView = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  [view addSubview:backdropView];

  view2 = [(UIViewController *)self view];
  inputDashboardView = [(_UISmartReplyFeedbackInputDashboardViewController *)self inputDashboardView];
  [view2 addSubview:inputDashboardView];

  backdropView2 = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  [backdropView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  inputDashboardView2 = [(_UISmartReplyFeedbackInputDashboardViewController *)self inputDashboardView];
  [inputDashboardView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 3.0;
  }

  v37 = MEMORY[0x1E69977A0];
  backdropView3 = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  centerYAnchor = [backdropView3 centerYAnchor];
  view3 = [(UIViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v55[0] = v49;
  backdropView4 = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  centerXAnchor = [backdropView4 centerXAnchor];
  view4 = [(UIViewController *)self view];
  centerXAnchor2 = [view4 centerXAnchor];
  v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v55[1] = v44;
  backdropView5 = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  widthAnchor = [backdropView5 widthAnchor];
  view5 = [(UIViewController *)self view];
  widthAnchor2 = [view5 widthAnchor];
  v39 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v55[2] = v39;
  backdropView6 = [(_UISmartReplyFeedbackInputDashboardViewController *)self backdropView];
  heightAnchor = [backdropView6 heightAnchor];
  view6 = [(UIViewController *)self view];
  heightAnchor2 = [view6 heightAnchor];
  v33 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v55[3] = v33;
  inputDashboardView3 = [(_UISmartReplyFeedbackInputDashboardViewController *)self inputDashboardView];
  centerYAnchor3 = [inputDashboardView3 centerYAnchor];
  view7 = [(UIViewController *)self view];
  centerYAnchor4 = [view7 centerYAnchor];
  v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:v11];
  v55[4] = v28;
  inputDashboardView4 = [(_UISmartReplyFeedbackInputDashboardViewController *)self inputDashboardView];
  centerXAnchor3 = [inputDashboardView4 centerXAnchor];
  view8 = [(UIViewController *)self view];
  centerXAnchor4 = [view8 centerXAnchor];
  v23 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v55[5] = v23;
  inputDashboardView5 = [(_UISmartReplyFeedbackInputDashboardViewController *)self inputDashboardView];
  widthAnchor3 = [inputDashboardView5 widthAnchor];
  view9 = [(UIViewController *)self view];
  widthAnchor4 = [view9 widthAnchor];
  v15 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v55[6] = v15;
  inputDashboardView6 = [(_UISmartReplyFeedbackInputDashboardViewController *)self inputDashboardView];
  heightAnchor3 = [inputDashboardView6 heightAnchor];
  view10 = [(UIViewController *)self view];
  heightAnchor4 = [view10 heightAnchor];
  v20 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v55[7] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:8];
  [v37 activateConstraints:v21];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _UISmartReplyFeedbackInputDashboardViewController;
  [(UIViewController *)&v6 viewDidAppear:appear];
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 reportSmartReplyFeedbackUIWasPresented];

  v4 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_INFO, "_UISmartReplyFeedbackInputDashboardViewController viewDidAppear", v5, 2u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _UISmartReplyFeedbackInputDashboardViewController;
  [(UIViewController *)&v5 viewDidDisappear:disappear];
  v3 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_INFO, "_UISmartReplyFeedbackInputDashboardViewController viewDidDisappear", v4, 2u);
  }
}

@end