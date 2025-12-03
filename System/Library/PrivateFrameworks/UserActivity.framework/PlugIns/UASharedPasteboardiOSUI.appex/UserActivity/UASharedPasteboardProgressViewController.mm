@interface UASharedPasteboardProgressViewController
+ (void)initialize;
- (void)_configureProgressView;
- (void)loadView;
@end

@implementation UASharedPasteboardProgressViewController

+ (void)initialize
{
  v2 = os_log_create("com.apple.useractivity", "SPBProgressUI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Initalize iOS progress view controller", v3, 2u);
  }
}

- (void)_configureProgressView
{
  v3 = [[SFProgressAlertView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SFProgressAlertView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(UASharedPasteboardProgressViewController *)self view];
  [view addSubview:v3];

  v5 = _NSDictionaryOfVariableBindings(@"progressView", v3, 0);
  v16 = @"padding";
  v17 = &off_100004368;
  v6 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  view2 = [(UASharedPasteboardProgressViewController *)self view];
  v8 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-padding-[progressView]-padding-|", 0, v6, v5);
  [view2 addConstraints:v8];

  view3 = [(UASharedPasteboardProgressViewController *)self view];
  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[progressView]-padding-|" options:0 metrics:v6 views:v5];
  [view3 addConstraints:v10];

  v11 = [NSLayoutConstraint constraintWithItem:v3 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:24.0];
  [(SFProgressAlertView *)v3 addConstraint:v11];

  view4 = [(UASharedPasteboardProgressViewController *)self view];
  [view4 bounds];
  v14 = v13;

  [&off_100004368 floatValue];
  [(UASharedPasteboardProgressViewController *)self setPreferredContentSize:v14, (v15 + 24.0)];
  [(UASharedPasteboardProgressViewController *)self setProgressView:v3];
}

- (void)loadView
{
  v3 = os_log_create("com.apple.useractivity", "SPBProgressUI");
  v6.receiver = self;
  v6.super_class = UASharedPasteboardProgressViewController;
  [(UASharedPasteboardProgressViewController *)&v6 loadView];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating iOS progress UI", v5, 2u);
  }

  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(UASharedPasteboardProgressViewController *)self setView:v4];
  [(UASharedPasteboardProgressViewController *)self _configureProgressView];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Added iOS progress UI view", v5, 2u);
  }
}

@end