@interface AirDropAlertUIProgressAlertView
- (AirDropAlertUIProgressAlertView)initWithFrame:(CGRect)frame;
- (AirDropAlertUIProgressAlertViewDelegate)delegate;
- (void)dealloc;
- (void)handleKVOUpdateForProgress:(id)progress keyPath:(id)path;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setProgress:(id)progress;
- (void)transferFinished;
- (void)transferFinishedAnimated;
- (void)willMoveToWindow:(id)window;
@end

@implementation AirDropAlertUIProgressAlertView

- (AirDropAlertUIProgressAlertView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = AirDropAlertUIProgressAlertView;
  v3 = [(AirDropAlertUIProgressAlertView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, 65.0, 65.0];
  if (v3)
  {
    v4 = [SFCircleProgressView alloc];
    [(AirDropAlertUIProgressAlertView *)v3 frame];
    v5 = [v4 initWithFrame:?];
    progressView = v3->_progressView;
    v3->_progressView = v5;

    [(SFCircleProgressView *)v3->_progressView setShowProgressTray:1];
    [(SFCircleProgressView *)v3->_progressView setProgressLineWidth:3.0];
    [(AirDropAlertUIProgressAlertView *)v3 addSubview:v3->_progressView];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    bundleURL = [v7 bundleURL];

    v9 = [NSURL fileURLWithFileSystemRepresentation:"Glyph-Checkmark.png" isDirectory:0 relativeToURL:bundleURL];
    path = [v9 path];
    v11 = [UIImage imageWithContentsOfFile:path];

    v12 = [[UIView alloc] initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    checkmarkImageView = v3->_checkmarkImageView;
    v3->_checkmarkImageView = v12;

    [(UIView *)v3->_checkmarkImageView setAlpha:0.0];
    v14 = v3->_checkmarkImageView;
    progressColor = [(SFCircleProgressView *)v3->_progressView progressColor];
    [(UIView *)v14 setBackgroundColor:progressColor];

    [(UIView *)v3->_checkmarkImageView _setBackdropMaskViewFlags:7];
    v16 = v3->_checkmarkImageView;
    [(SFCircleProgressView *)v3->_progressView center];
    [(UIView *)v16 setCenter:?];
    [(AirDropAlertUIProgressAlertView *)v3 addSubview:v3->_checkmarkImageView];
    v17 = +[CALayer layer];
    [(UIView *)v3->_checkmarkImageView bounds];
    [v17 setFrame:?];
    [v17 setContents:{objc_msgSend(v11, "CGImage")}];
    layer = [(UIView *)v3->_checkmarkImageView layer];
    [layer setMask:v17];

    v19 = objc_alloc_init(UINotificationFeedbackGenerator);
    notificationHapticGenerator = v3->_notificationHapticGenerator;
    v3->_notificationHapticGenerator = v19;

    [(UINotificationFeedbackGenerator *)v3->_notificationHapticGenerator prepare];
  }

  return v3;
}

- (void)dealloc
{
  notificationHapticGenerator = self->_notificationHapticGenerator;
  self->_notificationHapticGenerator = 0;

  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted"];
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"finished"];
  v4.receiver = self;
  v4.super_class = AirDropAlertUIProgressAlertView;
  [(AirDropAlertUIProgressAlertView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = AirDropAlertUIProgressAlertView;
  [(AirDropAlertUIProgressAlertView *)&v5 willMoveToWindow:?];
  if (window)
  {
    if (self->_finished)
    {
      [(AirDropAlertUIProgressAlertView *)self transferFinished];
    }

    else if ([(NSProgress *)self->_progress isFinished])
    {
      [(AirDropAlertUIProgressAlertView *)self transferFinishedAnimated];
    }
  }
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  if (([(NSProgress *)self->_progress isEqual:?]& 1) == 0)
  {
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted"];
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"finished"];
    self->_restoringProgress = 1;
    objc_storeStrong(&self->_progress, progress);
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"finished" options:4 context:off_10000CA28];
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:off_10000CA28];
    self->_restoringProgress = 0;
  }
}

- (void)transferFinished
{
  [(UINotificationFeedbackGenerator *)self->_notificationHapticGenerator notificationOccurred:0];
  [(UIView *)self->_checkmarkImageView setAlpha:1.0];
  [(SFCircleProgressView *)self->_progressView setProgress:1.0];
  v3 = dispatch_time(0, 750000000);

  dispatch_after(v3, &_dispatch_main_q, &stru_100008230);
}

- (void)transferFinishedAnimated
{
  if (!self->_finished)
  {
    self->_finished = 1;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002444;
    v8[3] = &unk_100008258;
    v8[4] = self;
    v3 = objc_retainBlock(v8);
    [(SFCircleProgressView *)self->_progressView progressPresentationValue];
    if (v4 >= 1.0)
    {
      (v3[2])(v3);
    }

    else
    {
      v5 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000025F0;
      block[3] = &unk_1000082A8;
      block[4] = self;
      v7 = v3;
      dispatch_after(v5, &_dispatch_main_q, block);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v12 = objectCopy;
  if (off_10000CA28 == context)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002714;
    block[3] = &unk_1000081F0;
    v14 = objectCopy;
    selfCopy = self;
    v16 = pathCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = AirDropAlertUIProgressAlertView;
    [(AirDropAlertUIProgressAlertView *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }
}

- (void)handleKVOUpdateForProgress:(id)progress keyPath:(id)path
{
  progressCopy = progress;
  pathCopy = path;
  if ([pathCopy isEqualToString:@"finished"])
  {
    if ([progressCopy isFinished])
    {
      [(AirDropAlertUIProgressAlertView *)self transferFinishedAnimated];
    }
  }

  else if ([pathCopy isEqualToString:@"fractionCompleted"])
  {
    [(UINotificationFeedbackGenerator *)self->_notificationHapticGenerator prepare];
    progressView = self->_progressView;
    [progressCopy fractionCompleted];
    [(SFCircleProgressView *)progressView setProgress:!self->_restoringProgress animated:0 completion:?];
  }
}

- (AirDropAlertUIProgressAlertViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end