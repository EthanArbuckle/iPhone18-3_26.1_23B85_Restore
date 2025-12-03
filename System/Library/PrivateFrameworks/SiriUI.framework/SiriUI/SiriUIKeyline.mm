@interface SiriUIKeyline
+ (SiriUIKeyline)keylineWithDefaultInsets;
+ (SiriUIKeyline)keylineWithKeylineType:(int64_t)type;
+ (SiriUIKeyline)keylineWithKeylineType:(int64_t)type platterStyling:(BOOL)styling;
+ (id)keyline;
+ (id)keylineForSelectableRow;
+ (id)verticalKeyline;
- (CGSize)_sizeThatFits:(CGSize)fits useAutolayout:(BOOL)autolayout;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SiriUIKeyline)initWithKeylineType:(int64_t)type;
- (SiriUIKeyline)initWithKeylineType:(int64_t)type platterStyling:(BOOL)styling;
- (double)_keylineThicknessForType:(int64_t)type;
- (id)_keylineColorForType:(int64_t)type platterStyling:(BOOL)styling;
- (void)layoutSubviews;
- (void)setKeylineType:(int64_t)type;
@end

@implementation SiriUIKeyline

+ (id)keyline
{
  v2 = [[self alloc] initWithKeylineType:2];

  return v2;
}

+ (SiriUIKeyline)keylineWithDefaultInsets
{
  v2 = [[self alloc] initWithKeylineType:1];

  return v2;
}

+ (id)keylineForSelectableRow
{
  v2 = [[self alloc] initWithKeylineType:3];

  return v2;
}

+ (id)verticalKeyline
{
  v2 = [[self alloc] initWithKeylineType:5];

  return v2;
}

+ (SiriUIKeyline)keylineWithKeylineType:(int64_t)type
{
  v5 = SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets();

  return [self keylineWithKeylineType:type platterStyling:v5];
}

+ (SiriUIKeyline)keylineWithKeylineType:(int64_t)type platterStyling:(BOOL)styling
{
  v4 = [[self alloc] initWithKeylineType:type platterStyling:styling];

  return v4;
}

- (SiriUIKeyline)initWithKeylineType:(int64_t)type
{
  v5 = SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets();

  return [(SiriUIKeyline *)self initWithKeylineType:type platterStyling:v5];
}

- (SiriUIKeyline)initWithKeylineType:(int64_t)type platterStyling:(BOOL)styling
{
  stylingCopy = styling;
  v17.receiver = self;
  v17.super_class = SiriUIKeyline;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(SiriUIKeyline *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    v10->_keylineType = type;
    v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    keyLineView = v11->_keyLineView;
    v11->_keyLineView = v12;

    v14 = v11->_keyLineView;
    v15 = [(SiriUIKeyline *)v11 _keylineColorForType:v11->_keylineType platterStyling:stylingCopy];
    [(UIView *)v14 setBackgroundColor:v15];

    [(SiriUIKeyline *)v11 addSubview:v11->_keyLineView];
  }

  return v11;
}

- (id)_keylineColorForType:(int64_t)type platterStyling:(BOOL)styling
{
  if (styling)
  {
    [MEMORY[0x277D75348] siriui_platterKeylineColor];
  }

  else
  {
    [MEMORY[0x277D75348] siriui_lightKeylineColor];
  }
  v4 = ;

  return v4;
}

- (double)_keylineThicknessForType:(int64_t)type
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  return 1.0 / v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SiriUIKeyline *)self _sizeThatFits:0 useAutolayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(SiriUIKeyline *)self _sizeThatFits:1 useAutolayout:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_sizeThatFits:(CGSize)fits useAutolayout:(BOOL)autolayout
{
  autolayoutCopy = autolayout;
  height = fits.height;
  width = fits.width;
  keylineType = [(SiriUIKeyline *)self keylineType];
  v9 = *MEMORY[0x277D77260];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v12 = v11;
  [(SiriUIKeyline *)self _keylineThicknessForType:self->_keylineType];
  v14 = ceil(v13);
  if (v12 < 2.0)
  {
    v13 = v14;
  }

  if (autolayoutCopy)
  {
    v15 = v9;
  }

  else
  {
    v15 = height;
  }

  if (autolayoutCopy)
  {
    v16 = v9;
  }

  else
  {
    v16 = width;
  }

  if (keylineType == 5)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (keylineType == 5)
  {
    v18 = v15;
  }

  else
  {
    v18 = v13;
  }

  v19 = v17;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SiriUIKeyline;
  [(SiriUIKeyline *)&v16 layoutSubviews];
  [(SiriUIKeyline *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  keylineType = [(SiriUIKeyline *)self keylineType];
  if (keylineType == 4)
  {
    [(SiriUIKeyline *)self customLeftPadding];
    v12 = v15;
    [(SiriUIKeyline *)self customRightPadding];
  }

  else if (keylineType == 3)
  {
    IsRTL = SiriLanguageIsRTL();
    v13 = 16.0;
    if (IsRTL)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 16.0;
    }

    if (!IsRTL)
    {
      v13 = 0.0;
    }
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    if (keylineType == 1)
    {
      v12 = 16.0;
      v13 = 16.0;
    }
  }

  [(UIView *)self->_keyLineView setFrame:v4 + v12, v6, v8 - (v12 + v13), v10];
}

- (void)setKeylineType:(int64_t)type
{
  self->_keylineType = type;
  [(SiriUIKeyline *)self setHidden:type == 0];

  [(SiriUIKeyline *)self setNeedsLayout];
}

@end