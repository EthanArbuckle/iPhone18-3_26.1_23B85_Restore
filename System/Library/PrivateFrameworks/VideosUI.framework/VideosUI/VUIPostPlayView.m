@interface VUIPostPlayView
+ (unint64_t)postPlayTypeFromString:(id)a3;
- (CGSize)_layoutForCategoryAccessibility:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)_layoutForOriginal:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIPostPlayView)initWithFrame:(CGRect)a3 andEpisodeArtworkURLStringFormat:(id)a4 andTitle:(id)a5 andHeader:(id)a6 andType:(unint64_t)a7;
- (VUIPostPlayView)initWithFrame:(CGRect)a3 andTVImageProxy:(id)a4 andTitle:(id)a5 andHeader:(id)a6 andType:(unint64_t)a7;
- (VUIPostPlayViewDelegate)delegate;
- (void)_dispatchAutoPlayEvent;
- (void)_initWithFrame:(CGRect)a3 andTVImageProxy:(id)a4 andTitle:(id)a5 andHeader:(id)a6 andType:(unint64_t)a7;
- (void)_invalidateAutoPlayIfNeeded;
- (void)_setupViews;
- (void)_startAutoPlayAnimation;
- (void)layoutSubviews;
- (void)setCanAutoPlay:(BOOL)a3;
@end

@implementation VUIPostPlayView

- (VUIPostPlayView)initWithFrame:(CGRect)a3 andTVImageProxy:(id)a4 andTitle:(id)a5 andHeader:(id)a6 andType:(unint64_t)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = VUIPostPlayView;
  v18 = [(VUIPostPlayView *)&v21 initWithFrame:x, y, width, height];
  v19 = v18;
  if (v18)
  {
    [(VUIPostPlayView *)v18 _initWithFrame:v15 andTVImageProxy:v16 andTitle:v17 andHeader:a7 andType:x, y, width, height];
  }

  return v19;
}

- (VUIPostPlayView)initWithFrame:(CGRect)a3 andEpisodeArtworkURLStringFormat:(id)a4 andTitle:(id)a5 andHeader:(id)a6 andType:(unint64_t)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v30.receiver = self;
  v30.super_class = VUIPostPlayView;
  v18 = [(VUIPostPlayView *)&v30 initWithFrame:x, y, width, height];
  v19 = v18;
  v20 = 0;
  if (v15 && v18)
  {
    if ([v15 length])
    {
      v21 = [(VUIPostPlayView *)v19 traitCollection];
      if ([v21 isAXEnabled])
      {
        v22 = 154.0;
      }

      else
      {
        v22 = 107.0;
      }

      v23 = objc_alloc(MEMORY[0x1E69D5978]);
      [(VUIPostPlayView *)v19 bounds];
      v25 = [v23 initUrlWithProperties:v15 imageSize:0 focusSizeIncrease:@"jpeg" cropCode:v24 urlFormat:v22, 0.0];
      v26 = [MEMORY[0x1E69D5988] imageURLWithDescription:v25];
      v27 = objc_alloc(MEMORY[0x1E69D5958]);
      v28 = [MEMORY[0x1E69D5980] sharedInstance];
      v20 = [v27 initWithObject:v26 imageLoader:v28 groupType:0];
    }

    else
    {
      v20 = 0;
    }
  }

  [(VUIPostPlayView *)v19 _initWithFrame:v20 andTVImageProxy:v16 andTitle:v17 andHeader:a7 andType:x, y, width, height];

  return v19;
}

- (void)_initWithFrame:(CGRect)a3 andTVImageProxy:(id)a4 andTitle:(id)a5 andHeader:(id)a6 andType:(unint64_t)a7
{
  v25 = a4;
  v12 = a6;
  [(VUIPostPlayView *)self setTitle:a5];
  [(VUIPostPlayView *)self setHeader:v12];

  [(VUIPostPlayView *)self setType:a7];
  if (v25)
  {
    v13 = [(VUIPostPlayView *)self traitCollection];
    if ([v13 isAXEnabled])
    {
      v14 = 154.0;
    }

    else
    {
      v14 = 107.0;
    }

    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 scale];
    v17 = v14 * 1.77777778 * v16;
    v18 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v18 scale];
    v20 = v14 * v19;

    v21 = MEMORY[0x1E69D5950];
    v22 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
    v23 = [v21 decoratorWithOutlineColor:v22 outlineWidths:{0.5, 0.5, 0.5, 0.5}];

    [v23 setScaleToSize:{v17, v20}];
    v24 = [MEMORY[0x1E69DC888] blackColor];
    [v23 setBgColor:v24];

    [v23 setScaleMode:2];
    [v25 setDecorator:v23];
    objc_storeStrong(&self->_episodeImageProxy, a4);
  }

  [(VUIPostPlayView *)self _setupViews];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIPostPlayView *)self _layoutWithSize:1 metricsOnly:a3.width, a3.height];
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

+ (unint64_t)postPlayTypeFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"nextEpisode"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"recommendedItems"];
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

  v37 = [(VUIPostPlayView *)self header];
  if ([v37 length])
  {
    v6 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v6 setTextStyle:13];
    [(VUITextLayout *)v6 setFontWeight:7];
    v7 = [(VUIPostPlayView *)self traitCollection];
    if ([v7 isAXEnabled])
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    [(VUITextLayout *)v6 setNumberOfLines:v8];

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(VUITextLayout *)v6 setColor:v9];

    [(VUITextLayout *)v6 setMaximumContentSizeCategory:8];
    v10 = [VUILabel labelWithString:v37 textLayout:v6 existingLabel:0];
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
  v20 = [(AVBackgroundView *)self->_backgroundView layer];
  [v20 setCornerRadius:16.0];

  v21 = [(AVBackgroundView *)self->_backgroundView layer];
  [v21 setMasksToBounds:1];

  v22 = [(VUIPostPlayView *)self backgroundView];
  [(VUIPostPlayView *)self addSubview:v22];

  v23 = [(VUIPostPlayView *)self traitCollection];
  [v23 isAXEnabled];

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
  v30 = [MEMORY[0x1E69DC888] whiteColor];
  [(VUITextLayout *)v29 setColor:v30];

  if ([v37 length])
  {
    [(VUITextLayout *)v29 setMaximumContentSizeCategory:8];
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  [(VUITextLayout *)v29 setNumberOfLines:v31];
  v32 = [(VUIPostPlayView *)self title];
  if (![v32 length])
  {
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"TV.PostPlay.NextEpisode"];

    v32 = v34;
  }

  v35 = [VUILabel labelWithString:v32 textLayout:v29 existingLabel:0];
  nextEpisodeLabel = self->_nextEpisodeLabel;
  self->_nextEpisodeLabel = v35;

  [(AVBackgroundView *)self->_backgroundView addSubview:self->_nextEpisodeLabel];
}

- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(VUIPostPlayView *)self traitCollection];
  v9 = [v8 isAXEnabled];

  if (v9)
  {

    [(VUIPostPlayView *)self _layoutForCategoryAccessibility:v4 metricsOnly:width, height];
  }

  else
  {

    [(VUIPostPlayView *)self _layoutForOriginal:v4 metricsOnly:width, height];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_layoutForCategoryAccessibility:(CGSize)a3 metricsOnly:(BOOL)a4
{
  height = a3.height;
  if (self->_headerLabel)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  width = a3.width;
  v24 = a3.width + -32.0;
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
  v17 = [(VUIPostPlayView *)self backgroundView];
  [v17 setFrame:{v16, v14, width, fmax(v8 + 154.0 + 11.0, 141.0)}];

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

- (CGSize)_layoutForOriginal:(CGSize)a3 metricsOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
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
  v15 = [(VUIPostPlayView *)self backgroundView];
  [v15 setFrame:{v14, v12, width, 141.0}];

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

- (void)setCanAutoPlay:(BOOL)a3
{
  v3 = a3;
  self->_canAutoPlay = a3;
  v5 = [(VUIPostPlayView *)self title];
  v6 = [v5 length];

  if (!v6)
  {
    nextEpisodeLabel = self->_nextEpisodeLabel;
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = v8;
    if (v3)
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
  v3 = [(VUIPostPlayView *)self autoPlayIndicator];
  if (!v3)
  {
    if (![(VUIPostPlayView *)self canAutoPlay])
    {
      return;
    }

    v4 = +[VUIFeaturesConfiguration sharedInstance];
    v5 = [v4 playbackUpNextConfig];

    v6 = MEMORY[0x1E696AD98];
    [v5 autoPlayTimerDuration];
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
      v9 = [(NSNumber *)v8 unsignedIntegerValue];
      v10 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"PlayMask"];
      v11 = [MEMORY[0x1E69DC888] whiteColor];
      v12 = [v10 vui_imageWithColor:v11];

      v13 = [(VUIPostPlayView *)self traitCollection];
      v14 = [v13 isAXEnabled];

      if (v14)
      {
        v15 = 8.0;
      }

      else
      {
        v15 = 4.0;
      }

      if (v14)
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
      v21 = [(VUICountDownProgressIndicator *)v17 initWithFrame:v19 duration:v20 - v16 * 0.5, v16, v16, v9];
      [(VUICountDownProgressIndicator *)v21 setProgressWidth:v15];
      v22 = [MEMORY[0x1E69DC888] whiteColor];
      [(VUICountDownProgressIndicator *)v21 setProgressTintColor:v22];

      v23 = [MEMORY[0x1E69DC888] blackColor];
      v24 = [v23 colorWithAlphaComponent:0.7];
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
  v3 = [(VUIPostPlayView *)self autoPlayIndicator];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
    [(VUIPostPlayView *)self setAutoPlayIndicator:0];
    v3 = v4;
  }
}

- (void)_dispatchAutoPlayEvent
{
  v3 = [(VUIPostPlayView *)self delegate];
  [v3 autoPlayTimerDidCompleteForPostPlayView:self];

  [(VUIPostPlayView *)self _invalidateAutoPlayIfNeeded];
}

- (VUIPostPlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end