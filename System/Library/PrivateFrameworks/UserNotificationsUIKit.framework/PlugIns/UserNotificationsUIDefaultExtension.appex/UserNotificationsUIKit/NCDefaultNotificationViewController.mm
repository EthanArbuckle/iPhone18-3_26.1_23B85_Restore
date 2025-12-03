@interface NCDefaultNotificationViewController
+ (void)initialize;
- (CGRect)mediaPlayPauseButtonFrame;
- (CGSize)_preferredContentSizeWithContainerWidth:(double)width;
- (NCDefaultNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_primaryAttachment;
- (void)_performDefaultAction;
- (void)_rewind;
- (void)_setupView;
- (void)didReceiveNotification:(id)notification;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NCDefaultNotificationViewController

+ (void)initialize
{
  if (qword_1000115E8 != -1)
  {
    sub_100005744();
  }
}

- (NCDefaultNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = NCDefaultNotificationViewController;
  return [(NCDefaultNotificationViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  width = size.width;
  v6.receiver = self;
  v6.super_class = NCDefaultNotificationViewController;
  [(NCDefaultNotificationViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(NCDefaultNotificationViewController *)self _preferredContentSizeWithContainerWidth:width];
  [(NCDefaultNotificationViewController *)self setPreferredContentSize:?];
}

- (CGSize)_preferredContentSizeWithContainerWidth:(double)width
{
  _primaryAttachment = [(NCDefaultNotificationViewController *)self _primaryAttachment];
  _nc_safeUTI = [_primaryAttachment _nc_safeUTI];
  if (!UTTypeConformsTo(_nc_safeUTI, kUTTypeAudio))
  {
    if (UTTypeConformsTo(_nc_safeUTI, kUTTypeGIF))
    {
      animatedImage = [(ISAnimatedImagePlayer *)self->_animatedImagePlayer animatedImage];
      [animatedImage pixelSize];
    }

    else if (UTTypeConformsTo(_nc_safeUTI, kUTTypeImage))
    {
      image = [(UIView *)self->_attachmentView image];
      [image size];
    }

    else if (UTTypeConformsTo(_nc_safeUTI, kUTTypeMovie))
    {
      currentItem = [(AVPlayer *)self->_moviePlayer currentItem];
      asset = [currentItem asset];
      v10 = [asset tracksWithMediaType:AVMediaTypeVideo];
      firstObject = [v10 firstObject];

      [firstObject naturalSize];
    }
  }

  UISizeRoundToScale();
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)_primaryAttachment
{
  request = [(UNNotification *)self->_notification request];
  content = [request content];
  attachments = [content attachments];
  v5 = [attachments bs_firstObjectPassingTest:&stru_10000C4B0];

  return v5;
}

- (void)_setupView
{
  [(UIView *)self->_attachmentView removeFromSuperview];
  attachmentView = self->_attachmentView;
  self->_attachmentView = 0;

  _primaryAttachment = [(NCDefaultNotificationViewController *)self _primaryAttachment];
  v5 = [_primaryAttachment URL];
  [v5 startAccessingSecurityScopedResource];
  _nc_safeUTI = [_primaryAttachment _nc_safeUTI];
  if (!UTTypeConformsTo(_nc_safeUTI, kUTTypeAudio))
  {
    if (UTTypeConformsTo(_nc_safeUTI, kUTTypeGIF))
    {
      v25 = [[PFAnimatedImage alloc] initWithURL:v5];
      v26 = [[ISAnimatedImagePlayer alloc] initWithAnimatedImage:v25];
      animatedImagePlayer = self->_animatedImagePlayer;
      self->_animatedImagePlayer = v26;

      v28 = [[ISAnimatedImageView alloc] initWithAnimatedImagePlayer:self->_animatedImagePlayer];
      v29 = self->_attachmentView;
      self->_attachmentView = v28;

      [v25 pixelSize];
    }

    else if (UTTypeConformsTo(_nc_safeUTI, kUTTypeImage))
    {
      view = [(NCDefaultNotificationViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v73);

      v44 = +[UIScreen mainScreen];
      [v44 scale];
      v46 = v45;

      v70 = kCGImageSourceShouldCache;
      v71 = kCFBooleanFalse;
      v25 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v47 = CGImageSourceCreateWithURL(v5, v25);
      if (v47)
      {
        v48 = v47;
        v68[0] = kCGImageSourceThumbnailMaxPixelSize;
        v49 = [NSNumber numberWithDouble:Width * v46];
        v68[1] = kCGImageSourceCreateThumbnailFromImageAlways;
        v68[2] = kCGImageSourceShouldCacheImmediately;
        v69[0] = v49;
        v69[1] = kCFBooleanTrue;
        v68[3] = kCGImageSourceCreateThumbnailWithTransform;
        v69[2] = kCFBooleanTrue;
        v69[3] = kCFBooleanTrue;
        v50 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:4];

        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v48, 0, v50);
        if (ThumbnailAtIndex)
        {
          v52 = ThumbnailAtIndex;
          v53 = [UIImage imageWithCGImage:ThumbnailAtIndex];
          v54 = [[UIImageView alloc] initWithImage:v53];
          v55 = self->_attachmentView;
          self->_attachmentView = v54;

          [v53 size];
          CFRelease(v52);
        }

        CFRelease(v48);
      }
    }

    else
    {
      if (!UTTypeConformsTo(_nc_safeUTI, kUTTypeMovie))
      {
        goto LABEL_6;
      }

      v66 = AVURLAssetReferenceRestrictionsKey;
      v56 = [NSNumber numberWithUnsignedInteger:0xFFFFLL];
      v67 = v56;
      v25 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];

      v57 = [[AVURLAsset alloc] initWithURL:v5 options:v25];
      v58 = objc_alloc_init(AVPlayerViewController);
      [v58 setAllowsPictureInPicturePlayback:0];
      [v58 setShowsPlaybackControls:0];
      [v58 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
      view2 = [v58 view];
      [view2 setUserInteractionEnabled:0];

      v60 = [AVPlayerItem playerItemWithAsset:v57];
      v61 = [[AVPlayer alloc] initWithPlayerItem:v60];
      moviePlayer = self->_moviePlayer;
      self->_moviePlayer = v61;

      [v58 setPlayer:self->_moviePlayer];
      v63 = +[NSNotificationCenter defaultCenter];
      [v63 addObserver:self selector:"handlePlayerItemDidPlayToEndTimeNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];
      [v63 addObserver:self selector:"handlePlayerItemFailedToPlayToEndTimeNotification:" name:AVPlayerItemFailedToPlayToEndTimeNotification object:0];
      [(NCDefaultNotificationViewController *)self addChildViewController:v58];
      view3 = [v58 view];
      v65 = self->_attachmentView;
      self->_attachmentView = view3;
    }

LABEL_6:
    v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_performDefaultAction"];
    [(UIView *)self->_attachmentView addGestureRecognizer:v7];
    [(UIView *)self->_attachmentView setUserInteractionEnabled:1];
    view4 = [(NCDefaultNotificationViewController *)self view];
    [view4 addSubview:self->_attachmentView];
    [(UIView *)self->_attachmentView setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [(UIView *)self->_attachmentView leadingAnchor];
    leadingAnchor2 = [view4 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v32 setActive:1];

    trailingAnchor = [(UIView *)self->_attachmentView trailingAnchor];
    trailingAnchor2 = [view4 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v35 setActive:1];

    topAnchor = [(UIView *)self->_attachmentView topAnchor];
    topAnchor2 = [view4 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v38 setActive:1];

    bottomAnchor = [(UIView *)self->_attachmentView bottomAnchor];
    bottomAnchor2 = [view4 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v39 setActive:1];

    goto LABEL_7;
  }

  v7 = objc_alloc_init(NCAudioPlayerControlsViewController);
  [(NCAudioPlayerControlsViewController *)v7 setURL:v5];
  [(NCDefaultNotificationViewController *)self addChildViewController:v7];
  view5 = [(NCAudioPlayerControlsViewController *)v7 view];
  v9 = self->_attachmentView;
  self->_attachmentView = view5;

  view4 = [(NCDefaultNotificationViewController *)self view];
  [view4 addSubview:self->_attachmentView];
  [(UIView *)self->_attachmentView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor3 = [(UIView *)self->_attachmentView leadingAnchor];
  leadingAnchor4 = [view4 leadingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  [v13 setActive:1];

  trailingAnchor3 = [(UIView *)self->_attachmentView trailingAnchor];
  trailingAnchor4 = [view4 trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  [v16 setActive:1];

  topAnchor3 = [(UIView *)self->_attachmentView topAnchor];
  topAnchor4 = [view4 topAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
  [v19 setActive:1];

  bottomAnchor3 = [(UIView *)self->_attachmentView bottomAnchor];
  bottomAnchor4 = [view4 bottomAnchor];
  v22 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-24.0];
  [v22 setActive:1];

  bottomAnchor = [(UIView *)self->_attachmentView heightAnchor];
  bottomAnchor2 = [bottomAnchor constraintEqualToConstant:38.0];
  [bottomAnchor2 setActive:1];
LABEL_7:

  view6 = [(NCDefaultNotificationViewController *)self view];
  [view6 bounds];
  v41 = CGRectGetWidth(v72);

  [(NCDefaultNotificationViewController *)self _preferredContentSizeWithContainerWidth:v41];
  [(NCDefaultNotificationViewController *)self setPreferredContentSize:?];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  notification = self->_notification;
  if (!notification)
  {
    goto LABEL_3;
  }

  request = [(UNNotification *)notification request];
  identifier = [request identifier];
  request2 = [notificationCopy request];
  identifier2 = [request2 identifier];
  v11 = [identifier isEqualToString:identifier2];

  if (v11)
  {
LABEL_3:
    v12 = qword_1000115F0;
    if (os_log_type_enabled(qword_1000115F0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      request3 = [notificationCopy request];
      identifier3 = [request3 identifier];
      un_logDigest = [identifier3 un_logDigest];
      v17 = 138412290;
      v18 = un_logDigest;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Default extension did receive notification %@{public}", &v17, 0xCu);
    }

    objc_storeStrong(&self->_notification, notification);
    [(NCDefaultNotificationViewController *)self _setupView];
    [(ISAnimatedImagePlayer *)self->_animatedImagePlayer setPlaying:1];
  }
}

- (CGRect)mediaPlayPauseButtonFrame
{
  view = [(NCDefaultNotificationViewController *)self view];
  [view bounds];
  UIRectCenteredIntegralRectScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_rewind
{
  [(AVPlayer *)self->_moviePlayer pause];
  moviePlayer = self->_moviePlayer;
  v5 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [(AVPlayer *)moviePlayer seekToTime:&v5];
  extensionContext = [(NCDefaultNotificationViewController *)self extensionContext];
  [extensionContext mediaPlayingPaused];
}

- (void)_performDefaultAction
{
  extensionContext = [(NCDefaultNotificationViewController *)self extensionContext];
  [extensionContext performNotificationDefaultAction];
}

@end