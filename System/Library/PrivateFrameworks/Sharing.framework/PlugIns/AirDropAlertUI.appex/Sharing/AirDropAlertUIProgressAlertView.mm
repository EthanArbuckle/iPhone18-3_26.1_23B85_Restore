@interface AirDropAlertUIProgressAlertView
- (AirDropAlertUIProgressAlertView)initWithFrame:(CGRect)a3;
- (AirDropAlertUIProgressAlertViewDelegate)delegate;
- (void)dealloc;
- (void)handleKVOUpdateForProgress:(id)a3 keyPath:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setProgress:(id)a3;
- (void)transferFinished;
- (void)transferFinishedAnimated;
- (void)willMoveToWindow:(id)a3;
@end

@implementation AirDropAlertUIProgressAlertView

- (AirDropAlertUIProgressAlertView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = AirDropAlertUIProgressAlertView;
  v3 = [(AirDropAlertUIProgressAlertView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, 65.0, 65.0];
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
    v8 = [v7 bundleURL];

    v9 = [NSURL fileURLWithFileSystemRepresentation:"Glyph-Checkmark.png" isDirectory:0 relativeToURL:v8];
    v10 = [v9 path];
    v11 = [UIImage imageWithContentsOfFile:v10];

    v12 = [[UIView alloc] initWithFrame:{0.0, 0.0, 15.0, 15.0}];
    checkmarkImageView = v3->_checkmarkImageView;
    v3->_checkmarkImageView = v12;

    [(UIView *)v3->_checkmarkImageView setAlpha:0.0];
    v14 = v3->_checkmarkImageView;
    v15 = [(SFCircleProgressView *)v3->_progressView progressColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v3->_checkmarkImageView _setBackdropMaskViewFlags:7];
    v16 = v3->_checkmarkImageView;
    [(SFCircleProgressView *)v3->_progressView center];
    [(UIView *)v16 setCenter:?];
    [(AirDropAlertUIProgressAlertView *)v3 addSubview:v3->_checkmarkImageView];
    v17 = +[CALayer layer];
    [(UIView *)v3->_checkmarkImageView bounds];
    [v17 setFrame:?];
    [v17 setContents:{objc_msgSend(v11, "CGImage")}];
    v18 = [(UIView *)v3->_checkmarkImageView layer];
    [v18 setMask:v17];

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

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = AirDropAlertUIProgressAlertView;
  [(AirDropAlertUIProgressAlertView *)&v5 willMoveToWindow:?];
  if (a3)
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

- (void)setProgress:(id)a3
{
  v5 = a3;
  if (([(NSProgress *)self->_progress isEqual:?]& 1) == 0)
  {
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted"];
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"finished"];
    self->_restoringProgress = 1;
    objc_storeStrong(&self->_progress, a3);
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (off_10000CA28 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002714;
    block[3] = &unk_1000081F0;
    v14 = v11;
    v15 = self;
    v16 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = AirDropAlertUIProgressAlertView;
    [(AirDropAlertUIProgressAlertView *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

- (void)handleKVOUpdateForProgress:(id)a3 keyPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"finished"])
  {
    if ([v8 isFinished])
    {
      [(AirDropAlertUIProgressAlertView *)self transferFinishedAnimated];
    }
  }

  else if ([v6 isEqualToString:@"fractionCompleted"])
  {
    [(UINotificationFeedbackGenerator *)self->_notificationHapticGenerator prepare];
    progressView = self->_progressView;
    [v8 fractionCompleted];
    [(SFCircleProgressView *)progressView setProgress:!self->_restoringProgress animated:0 completion:?];
  }
}

- (AirDropAlertUIProgressAlertViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end