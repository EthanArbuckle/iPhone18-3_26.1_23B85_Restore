@interface VUILibraryEpisodeFrameView
+ (void)configureEpisodeFrameView:(id)view withMedia:(id)media layout:(int64_t)layout imageSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUILibraryEpisodeFrameView)initWithFrame:(CGRect)frame;
- (VUILibraryEpisodeFrameViewDelegate)delegate;
- (void)_isPlaybackUIBeingShownDidChange:(id)change;
- (void)_playButtonPressed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFullyPlayedImageView:(id)view;
- (void)setImageView:(id)view;
- (void)setPlayButton:(id)button;
- (void)setProgressView:(id)view;
- (void)updateProgress:(id)progress;
@end

@implementation VUILibraryEpisodeFrameView

- (VUILibraryEpisodeFrameView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = VUILibraryEpisodeFrameView;
  v3 = [(VUILibraryEpisodeFrameView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
    v6 = +[VUIPlaybackManager sharedInstance];
    [defaultCenter addObserver:v3 selector:sel__isPlaybackUIBeingShownDidChange_ name:v5 object:v6];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(VUILibraryEpisodeFrameView *)self setMediaItem:0];
  v4.receiver = self;
  v4.super_class = VUILibraryEpisodeFrameView;
  [(VUILibraryEpisodeFrameView *)&v4 dealloc];
}

+ (void)configureEpisodeFrameView:(id)view withMedia:(id)media layout:(int64_t)layout imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  mediaCopy = media;
  layoutCopy = layout;
  [viewCopy setLayout:layout];
  imageView = [viewCopy imageView];
  if (imageView)
  {
    imageView2 = [viewCopy imageView];
  }

  else
  {
    imageView2 = [objc_alloc(MEMORY[0x1E69DF740]) initWithFrame:{0.0, 0.0, width, height}];
  }

  v14 = imageView2;

  if (layout == 1)
  {
    v15 = MEMORY[0x1E69DCAB8];
    vui_secondaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_secondaryDynamicBackgroundColor];
    v17 = [v15 imageWithColor:vui_secondaryDynamicBackgroundColor];
    [v14 setPlaceholderImage:v17];
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [viewCopy setVuiBackgroundColor:blackColor];

    vui_secondaryDynamicBackgroundColor = [viewCopy traitCollection];
    v17 = +[VUIUtilities placeholderImageResourceName:](VUIUtilities, "placeholderImageResourceName:", [vui_secondaryDynamicBackgroundColor userInterfaceStyle]);
    v19 = [VUIImageResourceMap imageForResourceName:v17];
    [v14 setPlaceholderImage:v19];
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v22 = width * v21;
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v25 = height * v24;

  v26 = MEMORY[0x1E69DF728];
  vui_imageBorderColor = [MEMORY[0x1E69DC888] vui_imageBorderColor];
  v28 = [v26 decoratorWithOutlineColor:vui_imageBorderColor outlineWidths:{1.0, 1.0, 1.0, 1.0}];

  [v28 setScaleToSize:{v22, v25}];
  if (layout == 1 && !+[VUIUtilities isIpadInterface])
  {
    [v28 setCornerRadii:{*MEMORY[0x1E69DF800], *(MEMORY[0x1E69DF800] + 8), *(MEMORY[0x1E69DF800] + 16), *(MEMORY[0x1E69DF800] + 24)}];
    [v14 setCornerRadius:0.0];
  }

  else
  {
    layer = [viewCopy layer];
    [VUIUtilities imageCornerRadiusWithStyle:1];
    [layer setCornerRadius:?];

    layer2 = [viewCopy layer];
    [layer2 setBorderWidth:1.0];

    layer3 = [viewCopy layer];
    vui_lockupBorderColorOpal = [MEMORY[0x1E69DC888] vui_lockupBorderColorOpal];
    [layer3 setBorderColor:{objc_msgSend(vui_lockupBorderColorOpal, "CGColor")}];

    layer4 = [viewCopy layer];
    [layer4 setMasksToBounds:1];
  }

  [v28 setScaleMode:2];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [v28 setBgColor:blackColor2];

  v35 = NSSelectorFromString(&cfstr_Previewartwork_0.isa);
  if (objc_opt_respondsToSelector())
  {
    v36 = ([mediaCopy methodForSelector:v35])(mediaCopy, v35);
  }

  else
  {
    v36 = 0;
  }

  v58 = v14;
  if ([v36 length])
  {
    v37 = [objc_alloc(MEMORY[0x1E69D5978]) initUrlWithProperties:v36 imageSize:0 focusSizeIncrease:@"jpeg" cropCode:width urlFormat:height, 70.0];
    mediaLibrary = [MEMORY[0x1E69D5988] imageURLWithDescription:v37];
    v39 = objc_alloc(MEMORY[0x1E69DF730]);
    mEMORY[0x1E69DF7C0] = [MEMORY[0x1E69DF7C0] sharedInstance];
    v41 = [v39 initWithObject:mediaLibrary imageLoader:mEMORY[0x1E69DF7C0] groupType:0];

LABEL_18:
    goto LABEL_19;
  }

  v37 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:mediaCopy imageType:1];
  if (v37)
  {
    v42 = objc_alloc(MEMORY[0x1E69DF730]);
    mediaLibrary = [mediaCopy mediaLibrary];
    v41 = [v42 initWithObject:v37 imageLoader:mediaLibrary groupType:0];
    goto LABEL_18;
  }

  v41 = 0;
LABEL_19:

  [v41 setDecorator:v28];
  objc_initWeak(&location, viewCopy);
  objc_initWeak(&from, mediaCopy);
  objc_initWeak(&v64, v28);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __83__VUILibraryEpisodeFrameView_configureEpisodeFrameView_withMedia_layout_imageSize___block_invoke;
  v60[3] = &unk_1E87339A0;
  objc_copyWeak(&v61, &location);
  objc_copyWeak(&v62, &from);
  objc_copyWeak(&v63, &v64);
  [v58 setImageProxy:v41 completion:v60];
  [v58 setImageContainsCornerRadius:1];
  [viewCopy setImageView:v58];
  if (layoutCopy == 1)
  {
    playButton = [viewCopy playButton];
    if (playButton)
    {
      playButton2 = [viewCopy playButton];
    }

    else
    {
      playButton2 = [[VUIButton alloc] initWithType:6 interfaceStyle:0];
    }

    v45 = playButton2;

    [(VUIButton *)v45 setCornerRadius:32.0];
    mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen3 scale];
    v48 = v47;
    mainScreen4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen4 scale];
    v51 = v50;

    v52 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:*MEMORY[0x1E69DB978] weight:24.0];
    v53 = [objc_alloc(MEMORY[0x1E69DF778]) initWithSymbol:@"play.fill" size:v52 symbolConfiguration:{v48 * 32.0, v51 * 38.0}];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v53 setTintColor:whiteColor];

    v55 = [MEMORY[0x1E69DF720] makeImageViewWithResourceDescriptor:v53 existingView:0];
    [(VUIButton *)v45 setImageView:v55];
    [(VUIButton *)v45 setGroupName:0];
    [(VUIButton *)v45 setTextContentView:0];
    [(VUIButton *)v45 setImageTrailsTextContent:0];
    v56 = [MEMORY[0x1E69DC888] colorWithRed:0.78 green:0.78 blue:0.8 alpha:0.8];
    [(VUIButton *)v45 setButtonBackgroundColor:v56];

    [(VUIButton *)v45 setExclusiveTouch:1];
    vui_keyBlueHighlightedColor = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
    [(VUIButton *)v45 setHighlightColor:vui_keyBlueHighlightedColor];

    [viewCopy setPlayButton:v45];
  }

  [viewCopy updateProgress:mediaCopy];
  if (!layoutCopy)
  {
    [viewCopy setUserInteractionEnabled:0];
  }

  objc_destroyWeak(&v63);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __83__VUILibraryEpisodeFrameView_configureEpisodeFrameView_withMedia_layout_imageSize___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v6 = objc_loadWeakRetained(a1 + 5);
  v7 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && v6 && (!a2 || a3))
  {
    v8 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:v6 imageType:0];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69DF730]);
      v10 = [v6 mediaLibrary];
      v11 = [v9 initWithObject:v8 imageLoader:v10 groupType:0];

      if (v7)
      {
        [v11 setDecorator:v7];
      }

      v12 = [WeakRetained imageView];
      [v12 setImageProxy:v11];
    }
  }
}

- (void)updateProgress:(id)progress
{
  progressCopy = progress;
  [(VUILibraryEpisodeFrameView *)self setMediaItem:progressCopy];
  bookmark = [progressCopy bookmark];
  [bookmark floatValue];
  v6 = v5;

  if (v6 <= 0.0)
  {
    playedState = [progressCopy playedState];
    integerValue = [playedState integerValue];

    if (integerValue != 3)
    {
      [(VUILibraryEpisodeFrameView *)self setProgressView:0];
      [(VUILibraryEpisodeFrameView *)self setFullyPlayedImageView:0];
      goto LABEL_16;
    }

    fullyPlayedImageView = [(VUILibraryEpisodeFrameView *)self fullyPlayedImageView];
    if (fullyPlayedImageView)
    {
      fullyPlayedImageView2 = [(VUILibraryEpisodeFrameView *)self fullyPlayedImageView];
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E69DF740]);
      fullyPlayedImageView2 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    v14 = fullyPlayedImageView2;

    if ([(VUILibraryEpisodeFrameView *)self layout]== 1)
    {
      v23 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"CornerGradientCheck"];
    }

    else
    {
      v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [v14 _setTintColor:whiteColor];
    }

    [v14 setImage:v23];
    [(VUILibraryEpisodeFrameView *)self setFullyPlayedImageView:v14];
    [(VUILibraryEpisodeFrameView *)self setProgressView:0];
  }

  else
  {
    progressView = [(VUILibraryEpisodeFrameView *)self progressView];
    if (progressView)
    {
      progressView2 = [(VUILibraryEpisodeFrameView *)self progressView];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E69D59B0]);
      progressView2 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    v14 = progressView2;

    [v14 setCornerRadius:5.0];
    [v14 setStyle:0];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [v14 setProgressTintColor:whiteColor2];

    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:0.9];
    [v14 setCompleteTintColor:v16];

    bookmark2 = [progressCopy bookmark];
    [bookmark2 floatValue];
    v19 = v18;
    duration = [progressCopy duration];
    [duration floatValue];
    [v14 setProgress:(v19 / v21)];

    [(VUILibraryEpisodeFrameView *)self setProgressView:v14];
    [(VUILibraryEpisodeFrameView *)self setFullyPlayedImageView:0];
  }

LABEL_16:
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  imageView = self->_imageView;
  if (imageView != viewCopy)
  {
    v7 = viewCopy;
    [(VUIImageView *)imageView removeFromSuperview];
    objc_storeStrong(&self->_imageView, view);
    if (self->_imageView)
    {
      [(VUILibraryEpisodeFrameView *)self addSubview:?];
    }

    [(VUILibraryEpisodeFrameView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setProgressView:(id)view
{
  viewCopy = view;
  progressView = self->_progressView;
  if (progressView != viewCopy)
  {
    v7 = viewCopy;
    [(_TVProgressView *)progressView removeFromSuperview];
    objc_storeStrong(&self->_progressView, view);
    if (self->_progressView)
    {
      [(VUILibraryEpisodeFrameView *)self addSubview:?];
    }

    [(VUILibraryEpisodeFrameView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setPlayButton:(id)button
{
  buttonCopy = button;
  playButton = self->_playButton;
  if (playButton != buttonCopy)
  {
    [(VUIButton *)playButton removeFromSuperview];
    objc_storeStrong(&self->_playButton, button);
    if (self->_playButton)
    {
      [(VUILibraryEpisodeFrameView *)self addSubview:?];
      objc_initWeak(&location, self);
      v7 = self->_playButton;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __44__VUILibraryEpisodeFrameView_setPlayButton___block_invoke;
      v11 = &unk_1E872DE30;
      objc_copyWeak(&v12, &location);
      [(VUIButton *)v7 setSelectActionHandler:&v8];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    [(VUILibraryEpisodeFrameView *)self setNeedsLayout:v8];
  }
}

void __44__VUILibraryEpisodeFrameView_setPlayButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playButtonPressed];
}

- (void)setFullyPlayedImageView:(id)view
{
  viewCopy = view;
  fullyPlayedImageView = self->_fullyPlayedImageView;
  if (fullyPlayedImageView != viewCopy)
  {
    v7 = viewCopy;
    [(VUIImageView *)fullyPlayedImageView removeFromSuperview];
    objc_storeStrong(&self->_fullyPlayedImageView, view);
    if (self->_fullyPlayedImageView)
    {
      [(VUIImageView *)self->_imageView addSubview:?];
    }

    [(VUILibraryEpisodeFrameView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = VUILibraryEpisodeFrameView;
  [(VUILibraryEpisodeFrameView *)&v24 layoutSubviews];
  imageView = self->_imageView;
  [(VUILibraryEpisodeFrameView *)self bounds];
  [(VUIImageView *)imageView setFrame:?];
  if (self->_layout == 1)
  {
    playButton = self->_playButton;
    [(VUILibraryEpisodeFrameView *)self bounds];
    v5 = CGRectGetMidX(v25) + -32.0;
    [(VUILibraryEpisodeFrameView *)self bounds];
    [(VUIButton *)playButton setFrame:v5, CGRectGetMidY(v26) + -32.0, 64.0, 64.0];
  }

  progressView = self->_progressView;
  [(VUILibraryEpisodeFrameView *)self bounds];
  MinX = CGRectGetMinX(v27);
  v8 = 4.0;
  if (self->_layout == 1)
  {
    v8 = 12.0;
  }

  v9 = MinX + v8;
  [(VUILibraryEpisodeFrameView *)self bounds];
  MaxY = CGRectGetMaxY(v28);
  v11 = 9.0;
  if (self->_layout == 1)
  {
    v11 = 17.0;
  }

  v12 = MaxY - v11;
  [(VUILibraryEpisodeFrameView *)self bounds];
  Width = CGRectGetWidth(v29);
  v14 = -4.0;
  if (self->_layout == 1)
  {
    v14 = -12.0;
  }

  [(_TVProgressView *)progressView setFrame:v9, v12, Width + v14 * 2.0, 5.0];
  image = [(VUIImageView *)self->_fullyPlayedImageView image];
  [image size];
  v17 = v16;
  v19 = v18;

  fullyPlayedImageView = self->_fullyPlayedImageView;
  imageView = [(VUILibraryEpisodeFrameView *)self imageView];
  [imageView bounds];
  v22 = CGRectGetMaxX(v30) - v17 + -5.0;
  imageView2 = [(VUILibraryEpisodeFrameView *)self imageView];
  [imageView2 bounds];
  [(VUIImageView *)fullyPlayedImageView setFrame:v22, CGRectGetMaxY(v31) - v19 + -5.0, v17, v19];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(VUIImageView *)self->_imageView frame:fits.width];
  v4 = CGRectGetHeight(v7) + 0.0;
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)_playButtonPressed
{
  delegate = [(VUILibraryEpisodeFrameView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didTapButtonForEpisodeFrameView:self];
  }
}

- (void)_isPlaybackUIBeingShownDidChange:(id)change
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 500000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__VUILibraryEpisodeFrameView__isPlaybackUIBeingShownDidChange___block_invoke;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__VUILibraryEpisodeFrameView__isPlaybackUIBeingShownDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 isPlaybackUIBeingShown];

  if ((v3 & 1) == 0)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained mediaItem];
      v6 = [v5 title];
      v7 = [WeakRetained mediaItem];
      v8 = [v7 bookmark];
      [v8 floatValue];
      v10 = v9;
      v11 = [WeakRetained mediaItem];
      v12 = [v11 playedState];
      [v12 integerValue];
      v13 = VUIBoolLogString();
      v15 = 138412802;
      v16 = v6;
      v17 = 2048;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUILibraryEpisodeFrameView:: playback dismissed. Update progress for item %@ # bookmark time %f # isFullyWatched %@", &v15, 0x20u);
    }

    v14 = [WeakRetained mediaItem];
    [WeakRetained updateProgress:v14];
  }
}

- (VUILibraryEpisodeFrameViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end