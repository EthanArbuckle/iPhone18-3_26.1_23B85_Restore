@interface SFProgressAlertView
- (SFProgressAlertView)initWithFrame:(CGRect)frame;
- (void)addProgress:(id)progress;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeProgress:(id)progress;
- (void)transferFinishedAnimated;
- (void)willMoveToWindow:(id)window;
@end

@implementation SFProgressAlertView

- (SFProgressAlertView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = SFProgressAlertView;
  v3 = [(SFProgressAlertView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = os_log_create("com.apple.useractivity", "SPBProgressUI");
    log = v3->_log;
    v3->_log = v4;

    v6 = [[SFHorizontalProgressView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    progressView = v3->_progressView;
    v3->_progressView = v6;

    [(SFHorizontalProgressView *)v3->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFProgressAlertView *)v3 addSubview:v3->_progressView];
    v8 = _NSDictionaryOfVariableBindings(@"_progressView", v3->_progressView, 0);
    v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_progressView]|" options:0 metrics:0 views:v8];
    [(SFProgressAlertView *)v3 addConstraints:v9];

    v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_progressView]|" options:0 metrics:0 views:v8];
    [(SFProgressAlertView *)v3 addConstraints:v10];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100001750;
    v17[3] = &unk_1000041C8;
    v11 = v3;
    v18 = v11;
    v12 = [NSProgress _addSubscriberForCategory:@"UASharedPasteboard" usingPublishingHandler:v17];
    progressToken = v11->_progressToken;
    v11->_progressToken = v12;

    v14 = v3->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "iOS progress view created", buf, 2u);
    }
  }

  return v3;
}

- (void)dealloc
{
  if (self->_progressToken)
  {
    [(SFProgressAlertView *)self removeProgress:self->_progress];
    [NSProgress _removeSubscriber:self->_progressToken];
    progressToken = self->_progressToken;
    self->_progressToken = 0;
  }

  v4.receiver = self;
  v4.super_class = SFProgressAlertView;
  [(SFProgressAlertView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = SFProgressAlertView;
  [(SFProgressAlertView *)&v5 willMoveToWindow:?];
  if (window)
  {
    if (self->_finished)
    {
      [(SFProgressAlertView *)self transferFinished];
    }
  }
}

- (void)transferFinishedAnimated
{
  if (!self->_finished)
  {
    self->_finished = 1;
    [(SFHorizontalProgressView *)self->_progressView setProgress:1 animated:1.0];
  }
}

- (void)addProgress:(id)progress
{
  objc_storeStrong(&self->_progress, progress);
  progressCopy = progress;
  [progressCopy addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];
}

- (void)removeProgress:(id)progress
{
  [progress removeObserver:self forKeyPath:@"fractionCompleted" context:0];
  progress = self->_progress;
  self->_progress = 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001C6C;
  v11[3] = &unk_1000041F0;
  v11[4] = self;
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v8 = changeCopy;
  v9 = objectCopy;
  v10 = pathCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

@end