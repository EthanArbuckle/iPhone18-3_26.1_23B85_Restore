@interface VUIPostPlayView
+ (unint64_t)postPlayTypeFromString:(id)string;
- (CGSize)_layoutForCategoryAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only;
- (CGSize)_layoutForOriginal:(CGSize)original metricsOnly:(BOOL)only;
- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIPostPlayView)initWithFrame:(CGRect)frame andEpisodeArtworkURLStringFormat:(id)format andTitle:(id)title andHeader:(id)header andType:(unint64_t)type;
- (VUIPostPlayView)initWithFrame:(CGRect)frame andTVImageProxy:(id)proxy andTitle:(id)title andHeader:(id)header andType:(unint64_t)type;
- (VUIPostPlayViewDelegate)delegate;
- (void)_dispatchAutoPlayEvent;
- (void)_initWithFrame:(CGRect)frame andTVImageProxy:(id)proxy andTitle:(id)title andHeader:(id)header andType:(unint64_t)type;
- (void)_invalidateAutoPlayIfNeeded;
- (void)_setupViews;
- (void)_startAutoPlayAnimation;
- (void)layoutSubviews;
- (void)setCanAutoPlay:(BOOL)play;
@end

@implementation VUIPostPlayView

- (VUIPostPlayView)initWithFrame:(CGRect)frame andTVImageProxy:(id)proxy andTitle:(id)title andHeader:(id)header andType:(unint64_t)type
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  proxyCopy = proxy;
  titleCopy = title;
  headerCopy = header;
  v21.receiver = self;
  v21.super_class = VUIPostPlayView;
  height = [(VUIPostPlayView *)&v21 initWithFrame:x, y, width, height];
  v19 = height;
  if (height)
  {
    [(VUIPostPlayView *)height _initWithFrame:proxyCopy andTVImageProxy:titleCopy andTitle:headerCopy andHeader:type andType:x, y, width, height];
  }

  return v19;
}

- (VUIPostPlayView)initWithFrame:(CGRect)frame andEpisodeArtworkURLStringFormat:(id)format andTitle:(id)title andHeader:(id)header andType:(unint64_t)type
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  formatCopy = format;
  titleCopy = title;
  headerCopy = header;
  v30.receiver = self;
  v30.super_class = VUIPostPlayView;
  height = [(VUIPostPlayView *)&v30 initWithFrame:x, y, width, height];
  v19 = height;
  v20 = 0;
  if (formatCopy && height)
  {
    if ([formatCopy length])
    {
      traitCollection = [(VUIPostPlayView *)v19 traitCollection];
      if ([traitCollection isAXEnabled])
      {
        v22 = 154.0;
      }

      else
      {
        v22 = 107.0;
      }

      v23 = objc_alloc(MEMORY[0x1E69D5978]);
      [(VUIPostPlayView *)v19 bounds];
      v25 = [v23 initUrlWithProperties:formatCopy imageSize:0 focusSizeIncrease:@"jpeg" cropCode:v24 urlFormat:v22, 0.0];
      v26 = [MEMORY[0x1E69D5988] imageURLWithDescription:v25];
      v27 = objc_alloc(MEMORY[0x1E69D5958]);
      mEMORY[0x1E69D5980] = [MEMORY[0x1E69D5980] sharedInstance];
      v20 = [v27 initWithObject:v26 imageLoader:mEMORY[0x1E69D5980] groupType:0];
    }

    else
    {
      v20 = 0;
    }
  }

  [(VUIPostPlayView *)v19 _initWithFrame:v20 andTVImageProxy:titleCopy andTitle:headerCopy andHeader:type andType:x, y, width, height];

  return v19;
}

- (void)_initWithFrame:(CGRect)frame andTVImageProxy:(id)proxy andTitle:(id)title andHeader:(id)header andType:(unint64_t)type
{
  proxyCopy = proxy;
  headerCopy = header;
  [(VUIPostPlayView *)self setTitle:title];
  [(VUIPostPlayView *)self setHeader:headerCopy];

  [(VUIPostPlayView *)self setType:type];
  if (proxyCopy)
  {
    traitCollection = [(VUIPostPlayView *)self traitCollection];
    if ([traitCollection isAXEnabled])
    {
      v14 = 154.0;
    }

    else
    {
      v14 = 107.0;
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v17 = v14 * 1.77777778 * v16;
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v20 = v14 * v19;

    v21 = MEMORY[0x1E69D5950];
    vui_imageBorderColor = [MEMORY[0x1E69DC888] vui_imageBorderColor];
    v23 = [v21 decoratorWithOutlineColor:vui_imageBorderColor outlineWidths:{0.5, 0.5, 0.5, 0.5}];

    [v23 setScaleToSize:{v17, v20}];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [v23 setBgColor:blackColor];

    [v23 setScaleMode:2];
    [proxyCopy setDecorator:v23];
    objc_storeStrong(&self->_episodeImageProxy, proxy);
  }

  [(VUIPostPlayView *)self _setupViews];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIPostPlayView *)self _layoutWithSize:1 metricsOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUIPostPlayView;
  [(VUIPostPlayView *)&v4 layoutSubviews];
  [(VUIPostPlayView *)self bounds];
  Width = CGRectGetWidth(v5);
  [(VUIPostPlayView *)self bounds];
  [(VUIPostPlayView *)self _layoutWithSize:0 metricsOnly:Width, CGRectGetHeight(v6)];
}

+ (unint64_t)postPlayTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"nextEpisode"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stringCopy isEqualToString:@"recommendedItems"];
  }

  return v4;
}

- (void)_setupViews
{
  self->_canAutoPlay = 1;
  LODWORD(v2) = 10.0;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  defaultAutoPlayDuration = self->_defaultAutoPlayDuration;
  self->_defaultAutoPlayDuration = v4;

  header = [(VUIPostPlayView *)self header];
  if ([header length])
  {
    v6 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v6 setTextStyle:13];
    [(VUITextLayout *)v6 setFontWeight:7];
    traitCollection = [(VUIPostPlayView *)self traitCollection];
    if ([traitCollection isAXEnabled])
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    [(VUITextLayout *)v6 setNumberOfLines:v8];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(VUITextLayout *)v6 setColor:whiteColor];

    [(VUITextLayout *)v6 setMaximumContentSizeCategory:8];
    v10 = [VUILabel labelWithString:header textLayout:v6 existingLabel:0];
    headerLabel = self->_headerLabel;
    self->_headerLabel = v10;

    [(VUIPostPlayView *)self addSubview:self->_headerLabel];
  }

  [(VUIPostPlayView *)self bounds];
  v13 = v12;
  [(VUIPostPlayView *)self bounds];
  v15 = v14;
  [(VUIPostPlayView *)self bounds];
  v17 = v16 + -34.0 + -12.0;
  v18 = objc_alloc_init(MEMORY[0x1E69585B8]);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v18;

  [(AVBackgroundView *)self->_backgroundView setFrame:v13, 46.0, v15, v17];
  layer = [(AVBackgroundView *)self->_backgroundView layer];
  [layer setCornerRadius:16.0];

  layer2 = [(AVBackgroundView *)self->_backgroundView layer];
  [layer2 setMasksToBounds:1];

  backgroundView = [(VUIPostPlayView *)self backgroundView];
  [(VUIPostPlayView *)self addSubview:backgroundView];

  traitCollection2 = [(VUIPostPlayView *)self traitCollection];
  [traitCollection2 isAXEnabled];

  v24 = objc_alloc(MEMORY[0x1E69D5998]);
  [(VUIPostPlayView *)self bounds];
  v25 = [v24 initWithFrame:{0.0, 0.0}];
  episodeImageView = self->_episodeImageView;
  self->_episodeImageView = v25;

  v27 = self->_episodeImageView;
  v28 = [VUIImageResourceMap imageForResourceName:@"PreloadAsset-Dark-Generic16x9"];
  [(_TVImageView *)v27 setPlaceholderImage:v28];

  if (self->_episodeImageProxy)
  {
    [(_TVImageView *)self->_episodeImageView setImageProxy:?];
  }

  [(AVBackgroundView *)self->_backgroundView addSubview:self->_episodeImageView];
  v29 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v29 setTextStyle:14];
  [(VUITextLayout *)v29 setFontWeight:10];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [(VUITextLayout *)v29 setColor:whiteColor2];

  if ([header length])
  {
    [(VUITextLayout *)v29 setMaximumContentSizeCategory:8];
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  [(VUITextLayout *)v29 setNumberOfLines:v31];
  title = [(VUIPostPlayView *)self title];
  if (![title length])
  {
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"TV.PostPlay.NextEpisode"];

    title = v34;
  }

  v35 = [VUILabel labelWithString:title textLayout:v29 existingLabel:0];
  nextEpisodeLabel = self->_nextEpisodeLabel;
  self->_nextEpisodeLabel = v35;

  [(AVBackgroundView *)self->_backgroundView addSubview:self->_nextEpisodeLabel];
}

- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only
{
  onlyCopy = only;
  height = size.height;
  width = size.width;
  traitCollection = [(VUIPostPlayView *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  if (isAXEnabled)
  {

    [(VUIPostPlayView *)self _layoutForCategoryAccessibility:onlyCopy metricsOnly:width, height];
  }

  else
  {

    [(VUIPostPlayView *)self _layoutForOriginal:onlyCopy metricsOnly:width, height];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_layoutForCategoryAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only
{
  height = accessibility.height;
  if (self->_headerLabel)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  width = accessibility.width;
  v24 = accessibility.width + -32.0;
  [(VUILabel *)self->_nextEpisodeLabel textRectForBounds:v6 limitedToNumberOfLines:16.0, 0.0];
  v8 = v7;
  headerLabel = self->_headerLabel;
  [(VUIPostPlayView *)self bounds];
  [(VUILabel *)headerLabel textRectForBounds:3 limitedToNumberOfLines:?];
  v12 = v11 + 11.0;
  v13 = v8 + v11 + 11.0 + 154.0;
  if (height >= v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = height - (v8 + 154.0);
  }

  [(VUIPostPlayView *)self bounds:*&v11];
  v16 = v15;
  backgroundView = [(VUIPostPlayView *)self backgroundView];
  [backgroundView setFrame:{v16, v14, width, fmax(v8 + 154.0 + 11.0, 141.0)}];

  [(VUILabel *)self->_nextEpisodeLabel setFrame:16.0, v8 * 0.5 + 154.0, v24, v8];
  if (self->_headerLabel)
  {
    [(AVBackgroundView *)self->_backgroundView frame];
    [(VUILabel *)self->_headerLabel setFrame:4.0, v18 - v12, v22, v21];
  }

  if (height >= v13)
  {
    v19 = height;
  }

  else
  {
    v19 = v13;
  }

  v20 = width;
  result.height = v19;
  result.width = v20;
  return result;
}

- (CGSize)_layoutForOriginal:(CGSize)original metricsOnly:(BOOL)only
{
  height = original.height;
  width = original.width;
  headerLabel = self->_headerLabel;
  if (headerLabel)
  {
    [(VUIPostPlayView *)self bounds];
    [(VUILabel *)headerLabel sizeThatFits:v8 + -8.0, 34.0];
    v10 = v9;
    [(VUILabel *)self->_headerLabel setFrame:4.0, 0.0, v11, v9];
    v12 = v10 + 11.0;
  }

  else
  {
    v12 = 45.0;
  }

  [(VUIPostPlayView *)self bounds];
  v14 = v13;
  backgroundView = [(VUIPostPlayView *)self backgroundView];
  [backgroundView setFrame:{v14, v12, width, 141.0}];

  nextEpisodeLabel = self->_nextEpisodeLabel;
  [(VUIPostPlayView *)self bounds];
  [(VUILabel *)nextEpisodeLabel sizeThatFits:v17 + -24.0, 34.0];
  v19 = v18;
  v20 = (34.0 - v18) * 0.5 + 107.0;
  [(VUIPostPlayView *)self bounds];
  [(VUILabel *)self->_nextEpisodeLabel setFrame:12.0, v20, v21 + -24.0, v19];
  v22 = width;
  v23 = height;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setCanAutoPlay:(BOOL)play
{
  playCopy = play;
  self->_canAutoPlay = play;
  title = [(VUIPostPlayView *)self title];
  v6 = [title length];

  if (!v6)
  {
    nextEpisodeLabel = self->_nextEpisodeLabel;
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = v8;
    if (playCopy)
    {
      v10 = @"TV.PostPlay.NextEpisode";
    }

    else
    {
      v10 = @"POST_PLAY_CONTINUE_WATCHING";
    }

    v11 = [v8 localizedStringForKey:v10];
    [(VUILabel *)nextEpisodeLabel setText:v11];

    [(VUIPostPlayView *)self setNeedsLayout];
  }
}

- (void)_startAutoPlayAnimation
{
  autoPlayIndicator = [(VUIPostPlayView *)self autoPlayIndicator];
  if (!autoPlayIndicator)
  {
    if (![(VUIPostPlayView *)self canAutoPlay])
    {
      return;
    }

    v4 = +[VUIFeaturesConfiguration sharedInstance];
    playbackUpNextConfig = [v4 playbackUpNextConfig];

    v6 = MEMORY[0x1E696AD98];
    [playbackUpNextConfig autoPlayTimerDuration];
    v7 = [v6 numberWithDouble:?];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = self->_defaultAutoPlayDuration;
      if (!v8)
      {
LABEL_17:

        return;
      }
    }

    if ([(NSNumber *)v8 unsignedIntegerValue])
    {
      unsignedIntegerValue = [(NSNumber *)v8 unsignedIntegerValue];
      v10 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"PlayMask"];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v12 = [v10 vui_imageWithColor:whiteColor];

      traitCollection = [(VUIPostPlayView *)self traitCollection];
      isAXEnabled = [traitCollection isAXEnabled];

      if (isAXEnabled)
      {
        v15 = 8.0;
      }

      else
      {
        v15 = 4.0;
      }

      if (isAXEnabled)
      {
        v16 = 96.0;
      }

      else
      {
        v16 = 48.0;
      }

      v17 = [VUICountDownProgressIndicator alloc];
      [(_TVImageView *)self->_episodeImageView center];
      v19 = v18 - v16 * 0.5;
      [(_TVImageView *)self->_episodeImageView center];
      v21 = [(VUICountDownProgressIndicator *)v17 initWithFrame:v19 duration:v20 - v16 * 0.5, v16, v16, unsignedIntegerValue];
      [(VUICountDownProgressIndicator *)v21 setProgressWidth:v15];
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [(VUICountDownProgressIndicator *)v21 setProgressTintColor:whiteColor2];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v24 = [blackColor colorWithAlphaComponent:0.7];
      [(VUICountDownProgressIndicator *)v21 setBackgroundTintColor:v24];

      [(VUICountDownProgressIndicator *)v21 setCenterImage:v12];
      [(VUICountDownProgressIndicator *)v21 setCountDownProgressDirection:1];
      objc_initWeak(&location, self);
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __42__VUIPostPlayView__startAutoPlayAnimation__block_invoke;
      v28 = &unk_1E872E4B8;
      objc_copyWeak(&v29, &location);
      [(VUICountDownProgressIndicator *)v21 setCompletion:&v25];
      [(VUIPostPlayView *)self setAutoPlayIndicator:v21, v25, v26, v27, v28];
      [(_TVImageView *)self->_episodeImageView addSubview:v21];
      [(VUIPostPlayView *)self setNeedsLayout];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    goto LABEL_17;
  }
}

void __42__VUIPostPlayView__startAutoPlayAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchAutoPlayEvent];
}

- (void)_invalidateAutoPlayIfNeeded
{
  autoPlayIndicator = [(VUIPostPlayView *)self autoPlayIndicator];
  if (autoPlayIndicator)
  {
    v4 = autoPlayIndicator;
    [autoPlayIndicator removeFromSuperview];
    [(VUIPostPlayView *)self setAutoPlayIndicator:0];
    autoPlayIndicator = v4;
  }
}

- (void)_dispatchAutoPlayEvent
{
  delegate = [(VUIPostPlayView *)self delegate];
  [delegate autoPlayTimerDidCompleteForPostPlayView:self];

  [(VUIPostPlayView *)self _invalidateAutoPlayIfNeeded];
}

- (VUIPostPlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end