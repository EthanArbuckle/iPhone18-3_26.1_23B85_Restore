@interface PUWallpaperPosterDateView
- (PUWallpaperPosterDateView)initWithFrame:(CGRect)a3;
- (void)_initViews;
- (void)_updateTimeLabel;
- (void)layoutWithLayout:(id)a3 inContainerFrame:(CGRect)a4;
- (void)setTimeColor:(id)a3;
- (void)setTimeFont:(id)a3;
- (void)setUseThinnerFontWeightForTime:(BOOL)a3;
- (void)setUseVibrantAppearance:(BOOL)a3;
@end

@implementation PUWallpaperPosterDateView

- (void)_updateTimeLabel
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUWallpaperPosterDateView *)self timeLabel];
  v4 = [(PUWallpaperPosterDateView *)self timeFont];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DB878] systemFontOfSize:100.0 weight:*MEMORY[0x1E69DB980]];
  }

  v7 = v6;

  v8 = [v7 fontDescriptor];
  v9 = *MEMORY[0x1E69DB8F0];
  v10 = [v8 objectForKey:*MEMORY[0x1E69DB8F0]];

  v11 = *MEMORY[0x1E69DB990];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PUWallpaperPosterDateView *)self useThinnerFontWeightForTime];
  v16 = fmax(v14 + -0.2, 0.0);
  if (v15)
  {
    v14 = v16;
  }

  v17 = [v10 mutableCopy];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v17 setObject:v18 forKey:v11];

  v19 = [v7 fontDescriptor];
  v31 = v9;
  v32[0] = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v21 = [v19 fontDescriptorByAddingAttributes:v20];

  v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v21 size:100.0];
  [v3 setFont:v22];
  v23 = [(PUWallpaperPosterDateView *)self timeColor];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v26 = v25;

  if ([(PUWallpaperPosterDateView *)self useVibrantAppearance])
  {
    v27 = [MEMORY[0x1E69DC888] whiteColor];

    [v3 setTextColor:v27];
    v28 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v29 = [MEMORY[0x1E69DD248] effectForBlurEffect:v28];
    v30 = [(PUWallpaperPosterDateView *)self visualEffectView];
    [v30 setEffect:v29];

    v26 = v27;
  }

  else
  {
    [v3 setTextColor:v26];
    v28 = [(PUWallpaperPosterDateView *)self visualEffectView];
    [v28 setEffect:0];
  }
}

- (void)setTimeColor:(id)a3
{
  v8 = a3;
  v5 = self->_timeColor;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeColor, a3);
      [(PUWallpaperPosterDateView *)self _updateTimeLabel];
    }
  }
}

- (void)setTimeFont:(id)a3
{
  v8 = a3;
  v5 = self->_timeFont;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIFont *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeFont, a3);
      [(PUWallpaperPosterDateView *)self _updateTimeLabel];
    }
  }
}

- (void)setUseVibrantAppearance:(BOOL)a3
{
  if (self->_useVibrantAppearance != a3)
  {
    self->_useVibrantAppearance = a3;
    [(PUWallpaperPosterDateView *)self _updateTimeLabel];
  }
}

- (void)setUseThinnerFontWeightForTime:(BOOL)a3
{
  if (self->_useThinnerFontWeightForTime != a3)
  {
    self->_useThinnerFontWeightForTime = a3;
    [(PUWallpaperPosterDateView *)self _updateTimeLabel];
  }
}

- (void)layoutWithLayout:(id)a3 inContainerFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v6 = a3;
  [v6 visibleFrame];
  v8 = v7;
  v36 = v9;
  v11 = v10;
  v13 = v12;
  [v6 timeFrame];
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
  v40 = [(PUWallpaperPosterDateView *)self timeLabel];
  [v40 setFrame:{v32, v33, v34, v35}];
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
  v10 = [(UIVisualEffectView *)v5 contentView];
  [v10 addSubview:v8];

  v11 = [(UILabel *)v8 layer];
  [v11 setShadowRadius:2.0];

  v12 = [(UILabel *)v8 layer];
  LODWORD(v13) = 0.125;
  [v12 setShadowOpacity:v13];

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v16 = [(UILabel *)v8 layer];
  [v16 setShadowOffset:{v14, v15}];

  timeLabel = self->_timeLabel;
  self->_timeLabel = v8;
  v18 = v8;

  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v5;
  v20 = v5;
}

- (PUWallpaperPosterDateView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PUWallpaperPosterDateView;
  v3 = [(PUWallpaperPosterDateView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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