@interface SFProgressAlertView
- (SFProgressAlertView)initWithFrame:(CGRect)a3;
- (void)addProgress:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeProgress:(id)a3;
- (void)transferFinishedAnimated;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SFProgressAlertView

- (SFProgressAlertView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = SFProgressAlertView;
  v3 = [(SFProgressAlertView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFProgressAlertView;
  [(SFProgressAlertView *)&v5 willMoveToWindow:?];
  if (a3)
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

- (void)addProgress:(id)a3
{
  objc_storeStrong(&self->_progress, a3);
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0];
}

- (void)removeProgress:(id)a3
{
  [a3 removeObserver:self forKeyPath:@"fractionCompleted" context:0];
  progress = self->_progress;
  self->_progress = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001C6C;
  v11[3] = &unk_1000041F0;
  v11[4] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

@end