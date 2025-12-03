@interface PUWallpaperPosterDateView
- (PUWallpaperPosterDateView)initWithFrame:(CGRect)frame;
- (void)_initViews;
- (void)_updateTimeLabel;
- (void)layoutWithLayout:(id)layout inContainerFrame:(CGRect)frame;
- (void)setTimeColor:(id)color;
- (void)setTimeFont:(id)font;
- (void)setUseThinnerFontWeightForTime:(BOOL)time;
- (void)setUseVibrantAppearance:(BOOL)appearance;
@end

@implementation PUWallpaperPosterDateView

- (void)_updateTimeLabel
{
  v32[1] = *MEMORY[0x1E69E9840];
  timeLabel = [(PUWallpaperPosterDateView *)self timeLabel];
  timeFont = [(PUWallpaperPosterDateView *)self timeFont];
  v5 = timeFont;
  if (timeFont)
  {
    v6 = timeFont;
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:100.0 weight:*MEMORY[0x1E69DB980]];
  }

  v7 = v6;

  fontDescriptor = [v7 fontDescriptor];
  v9 = *MEMORY[0x1E69DB8F0];
  v10 = [fontDescriptor objectForKey:*MEMORY[0x1E69DB8F0]];

  v11 = *MEMORY[0x1E69DB990];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v12 doubleValue];
  v14 = v13;

  useThinnerFontWeightForTime = [(PUWallpaperPosterDateView *)self useThinnerFontWeightForTime];
  v16 = fmax(v14 + -0.2, 0.0);
  if (useThinnerFontWeightForTime)
  {
    v14 = v16;
  }

  v17 = [v10 mutableCopy];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v17 setObject:v18 forKey:v11];

  fontDescriptor2 = [v7 fontDescriptor];
  v31 = v9;
  v32[0] = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v21 = [fontDescriptor2 fontDescriptorByAddingAttributes:v20];

  v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:100.0];
  [timeLabel setFont:v22];
  timeColor = [(PUWallpaperPosterDateView *)self timeColor];
  v24 = timeColor;
  if (timeColor)
  {
    whiteColor = timeColor;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v26 = whiteColor;

  if ([(PUWallpaperPosterDateView *)self useVibrantAppearance])
  {
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];

    [timeLabel setTextColor:whiteColor2];
    visualEffectView2 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v29 = [MEMORY[0x1E69DD248] effectForBlurEffect:visualEffectView2];
    visualEffectView = [(PUWallpaperPosterDateView *)self visualEffectView];
    [visualEffectView setEffect:v29];

    v26 = whiteColor2;
  }

  else
  {
    [timeLabel setTextColor:v26];
    visualEffectView2 = [(PUWallpaperPosterDateView *)self visualEffectView];
    [visualEffectView2 setEffect:0];
  }
}

- (void)setTimeColor:(id)color
{
  colorCopy = color;
  v5 = self->_timeColor;
  v6 = v5;
  if (v5 == colorCopy)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeColor, color);
      [(PUWallpaperPosterDateView *)self _updateTimeLabel];
    }
  }
}

- (void)setTimeFont:(id)font
{
  fontCopy = font;
  v5 = self->_timeFont;
  v6 = v5;
  if (v5 == fontCopy)
  {
  }

  else
  {
    v7 = [(UIFont *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeFont, font);
      [(PUWallpaperPosterDateView *)self _updateTimeLabel];
    }
  }
}

- (void)setUseVibrantAppearance:(BOOL)appearance
{
  if (self->_useVibrantAppearance != appearance)
  {
    self->_useVibrantAppearance = appearance;
    [(PUWallpaperPosterDateView *)self _updateTimeLabel];
  }
}

- (void)setUseThinnerFontWeightForTime:(BOOL)time
{
  if (self->_useThinnerFontWeightForTime != time)
  {
    self->_useThinnerFontWeightForTime = time;
    [(PUWallpaperPosterDateView *)self _updateTimeLabel];
  }
}

- (void)layoutWithLayout:(id)layout inContainerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  [layoutCopy visibleFrame];
  v8 = v7;
  v36 = v9;
  v11 = v10;
  v13 = v12;
  [layoutCopy timeFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15 - v8;
  v23 = 0.0;
  v24 = 0.0;
  if (v11 != 0.0)
  {
    v22 = v22 / v11;
    v24 = v19 / v11;
  }

  v25 = v17 - v36;
  if (v13 != 0.0)
  {
    v25 = v25 / v13;
    v23 = v21 / v13;
  }

  v26 = x + v22 * width;
  v27 = width * v24;
  v28 = height * v23;
  v29 = y + height - (height * v23 + y + v25 * height);
  [(PUWallpaperPosterDateView *)self setFrame:v26, v29, width * v24, v28];
  v42.origin.x = v26;
  v42.origin.y = v29;
  v42.size.width = v27;
  v42.size.height = v28;
  v30 = -CGRectGetMinX(v42);
  v43.origin.x = v26;
  v43.origin.y = v29;
  v43.size.width = v27;
  v43.size.height = v28;
  v31 = -CGRectGetMinY(v43);
  v44.origin.x = v26;
  v44.origin.y = v29;
  v44.size.width = v27;
  v44.size.height = v28;
  v45 = CGRectOffset(v44, v30, v31);
  v32 = v45.origin.x;
  v33 = v45.origin.y;
  v34 = v45.size.width;
  v35 = v45.size.height;
  timeLabel = [(PUWallpaperPosterDateView *)self timeLabel];
  [timeLabel setFrame:{v32, v33, v34, v35}];
}

- (void)_initViews
{
  v21 = [MEMORY[0x1E695DF00] now];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"h:mm"];
  v4 = [v3 stringFromDate:v21];
  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
  [(PUWallpaperPosterDateView *)self bounds];
  [(UIVisualEffectView *)v5 setFrame:?];
  [(UIVisualEffectView *)v5 setAutoresizingMask:18];
  [(PUWallpaperPosterDateView *)self addSubview:v5];
  v6 = self->_timeFont;
  v7 = objc_alloc(MEMORY[0x1E69DCC10]);
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(UILabel *)v8 setTextColor:self->_timeColor];
  if (PFPosterIsAdaptiveLayoutEnabled())
  {
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
    [(UILabel *)v8 setBackgroundColor:v9];
  }

  [(UILabel *)v8 setTextAlignment:1];
  [(UILabel *)v8 setFont:v6];
  [(UILabel *)v8 setText:v4];
  contentView = [(UIVisualEffectView *)v5 contentView];
  [contentView addSubview:v8];

  layer = [(UILabel *)v8 layer];
  [layer setShadowRadius:2.0];

  layer2 = [(UILabel *)v8 layer];
  LODWORD(v13) = 0.125;
  [layer2 setShadowOpacity:v13];

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  layer3 = [(UILabel *)v8 layer];
  [layer3 setShadowOffset:{v14, v15}];

  timeLabel = self->_timeLabel;
  self->_timeLabel = v8;
  v18 = v8;

  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v5;
  v20 = v5;
}

- (PUWallpaperPosterDateView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PUWallpaperPosterDateView;
  v3 = [(PUWallpaperPosterDateView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:100.0 weight:*MEMORY[0x1E69DB980]];
    timeFont = v3->_timeFont;
    v3->_timeFont = v4;

    if (PFPosterIsAdaptiveLayoutEnabled())
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v6 = ;
    timeColor = v3->_timeColor;
    v3->_timeColor = v6;

    [(PUWallpaperPosterDateView *)v3 _initViews];
  }

  return v3;
}

@end