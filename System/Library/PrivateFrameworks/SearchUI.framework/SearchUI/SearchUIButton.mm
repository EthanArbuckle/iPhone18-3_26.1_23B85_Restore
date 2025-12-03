@interface SearchUIButton
- (SearchUIButton)initWithType:(unint64_t)type;
- (id)imageNameForToggleState:(BOOL)state;
- (void)setFixedSize:(CGSize)size;
- (void)setUseCompactMode:(BOOL)mode;
- (void)updateWithType:(unint64_t)type;
@end

@implementation SearchUIButton

- (SearchUIButton)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = SearchUIButton;
  v4 = [(TLKButton *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SearchUIButton *)v4 setType:type];
  }

  return v5;
}

- (id)imageNameForToggleState:(BOOL)state
{
  v3 = @"plus";
  if (state)
  {
    v3 = @"minus";
  }

  v4 = @"play.fill";
  if (state)
  {
    v4 = @"pause.fill";
  }

  if (self->_type)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (void)updateWithType:(unint64_t)type
{
  [(TLKButton *)self fixedSize];
  if (v5 == *MEMORY[0x1E695F060] && v4 == *(MEMORY[0x1E695F060] + 8))
  {
    v7 = MEMORY[0x1E69D9138];
    useCompactMode = [(SearchUIButton *)self useCompactMode];
    v9 = MEMORY[0x1E69DDD28];
    if (!useCompactMode)
    {
      v9 = MEMORY[0x1E69DDCF8];
    }

    v14 = [v7 preferredFontForTextStyle:*v9 maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  }

  else
  {
    v14 = 0;
  }

  v10 = [(SearchUIButton *)self imageNameForToggleState:0];
  v11 = [SearchUISymbolImage uiImageWithSymbolName:v10 font:v14 scale:0];
  [(TLKButton *)self setUntoggledImage:v11];

  v12 = [(SearchUIButton *)self imageNameForToggleState:1];
  v13 = [SearchUISymbolImage uiImageWithSymbolName:v12 font:v14 scale:0];
  [(TLKButton *)self setToggledImage:v13];

  [(TLKButton *)self showPlayIndicator:[(TLKButton *)self isToggled]^ 1];
  [(SearchUIButton *)self tlk_updateWithCurrentAppearance];
}

- (void)setUseCompactMode:(BOOL)mode
{
  if (self->_useCompactMode != mode)
  {
    self->_useCompactMode = mode;
    type = [(SearchUIButton *)self type];

    [(SearchUIButton *)self updateWithType:type];
  }
}

- (void)setFixedSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = SearchUIButton;
  [(TLKButton *)&v4 setFixedSize:size.width, size.height];
  [(SearchUIButton *)self updateWithType:[(SearchUIButton *)self type]];
}

@end