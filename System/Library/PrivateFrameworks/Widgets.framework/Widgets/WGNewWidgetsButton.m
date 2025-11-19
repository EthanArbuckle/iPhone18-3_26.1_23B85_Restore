@interface WGNewWidgetsButton
- (CGSize)_numberLabelSizeForText:(id)a3 withAttributes:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WGNewWidgetsButton)init;
- (id)_attributedStringWithColor:(id)a3;
- (id)_numberAttributedStringWithNumberText:(id)a3 attributes:(id)a4;
- (id)_numberImageForNumberText:(id)a3 withAttributes:(id)a4;
- (id)_numberTextAttributes;
- (id)_textAttributesWithColor:(id)a3;
- (id)_textFont;
- (void)_buttonStateChanged:(id)a3;
- (void)_setAttributeTitleForButton:(id)a3 withColor:(id)a4;
- (void)_updateButtons;
- (void)layoutSubviews;
- (void)setBadgeNumber:(unint64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation WGNewWidgetsButton

- (WGNewWidgetsButton)init
{
  v14.receiver = self;
  v14.super_class = WGNewWidgetsButton;
  v2 = [(WGNewWidgetsButton *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(WGNewWidgetsButton *)v2 titleLabel];
    [v4 setNumberOfLines:0];

    v5 = [MEMORY[0x277D75220] buttonWithType:0];
    vibrantButton = v3->_vibrantButton;
    v3->_vibrantButton = v5;

    [(UIButton *)v3->_vibrantButton _setDrawsAsBackdropOverlayWithBlendMode:3];
    v7 = [(UIButton *)v3->_vibrantButton titleLabel];
    [v7 setNumberOfLines:0];

    [(WGNewWidgetsButton *)v3 addSubview:v3->_vibrantButton];
    v8 = [MEMORY[0x277D75220] buttonWithType:0];
    overlayButton = v3->_overlayButton;
    v3->_overlayButton = v8;

    v10 = [(UIButton *)v3->_overlayButton titleLabel];
    [v10 setNumberOfLines:0];

    [(WGNewWidgetsButton *)v3 addSubview:v3->_overlayButton];
    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    numberAttributedStringCache = v3->_numberAttributedStringCache;
    v3->_numberAttributedStringCache = v11;

    [(UIButton *)v3->_overlayButton addTarget:v3 action:sel__buttonStateChanged_ forControlEvents:0xFFFFFFFFLL];
    [(UIButton *)v3->_overlayButton addTarget:v3 action:sel__buttonPushed_ forControlEvents:64];
    [(WGNewWidgetsButton *)v3 setBadgeNumber:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIButton *)self->_overlayButton sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setBadgeNumber:(unint64_t)a3
{
  self->_badgeNumber = a3;
  v4 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%u", a3];
  [(WGNewWidgetsButton *)self setNumberText:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = _os_feature_enabled_impl();
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = @"NEW_WIDGETS_AVAILABLE_LEGACY";
  }

  else
  {
    v9 = @"NEW_WIDGETS_AVAILABLE";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_2883435D8 table:@"Widgets"];
  v11 = [v5 localizedStringWithFormat:v10, self->_badgeNumber];
  [(WGNewWidgetsButton *)self setText:v11];

  [(WGNewWidgetsButton *)self _updateButtons];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  [(UIButton *)self->_vibrantButton setHighlighted:?];
  overlayButton = self->_overlayButton;

  [(UIButton *)overlayButton setHighlighted:v3];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = WGNewWidgetsButton;
  [(WGNewWidgetsButton *)&v11 layoutSubviews];
  [(WGNewWidgetsButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_vibrantButton setFrame:?];
  [(UIButton *)self->_overlayButton setFrame:v4, v6, v8, v10];
}

- (void)_buttonStateChanged:(id)a3
{
  [(UIButton *)self->_vibrantButton setSelected:[(UIButton *)self->_overlayButton isSelected]];
  vibrantButton = self->_vibrantButton;
  v5 = [(UIButton *)self->_overlayButton isHighlighted];

  [(UIButton *)vibrantButton setHighlighted:v5];
}

- (void)_updateButtons
{
  vibrantButton = self->_vibrantButton;
  v4 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(WGNewWidgetsButton *)self _setAttributeTitleForButton:vibrantButton withColor:v4];

  overlayButton = self->_overlayButton;
  v6 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(WGNewWidgetsButton *)self _setAttributeTitleForButton:overlayButton withColor:v6];

  [(WGNewWidgetsButton *)self setNeedsLayout];
}

- (void)_setAttributeTitleForButton:(id)a3 withColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WGNewWidgetsButton *)self _attributedStringWithColor:v6];
  [v7 setAttributedTitle:v8 forState:0];

  v9 = [(WGNewWidgetsButton *)self _attributedStringWithColor:v6];

  [v7 setAttributedTitle:v9 forState:4];
  [v7 setAttributedTitle:v9 forState:1];
}

- (id)_textFont
{
  v2 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v3 = [v2 preferredFontForTextStyle:*MEMORY[0x277D76940] hiFontStyle:1];

  return v3;
}

- (id)_textAttributesWithColor:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(WGNewWidgetsButton *)self _textFont];
  if (v6)
  {
    [v5 setObject:v6 forKey:*MEMORY[0x277D740A8]];
  }

  if (v4)
  {
    [v5 setObject:v4 forKey:*MEMORY[0x277D740C0]];
  }

  v7 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setAlignment:1];
  [v5 setObject:v8 forKey:*MEMORY[0x277D74118]];

  return v5;
}

- (id)_numberTextAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(WGNewWidgetsButton *)self _numberFont];
  if (v4)
  {
    [v3 setObject:v4 forKey:*MEMORY[0x277D740A8]];
  }

  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings)
  {
    [(_UILegibilitySettings *)legibilitySettings shadowColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v6 = ;
  [v3 setObject:v6 forKey:*MEMORY[0x277D740C0]];

  v7 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v8 = [v7 mutableCopy];

  [v8 setAlignment:1];
  [v3 setObject:v8 forKey:*MEMORY[0x277D74118]];

  return v3;
}

- (id)_attributedStringWithColor:(id)a3
{
  v4 = a3;
  v5 = [(WGNewWidgetsButton *)self numberText];
  v6 = [(WGNewWidgetsButton *)self _numberTextAttributes];
  v7 = [(WGNewWidgetsButton *)self _numberAttributedStringWithNumberText:v5 attributes:v6];

  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = [(WGNewWidgetsButton *)self text];
  v10 = [(WGNewWidgetsButton *)self _textAttributesWithColor:v4];

  v11 = [v8 initWithString:v9 attributes:v10];
  v12 = [v11 string];
  v13 = [(WGNewWidgetsButton *)self numberText];
  v14 = [v12 rangeOfString:v13];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v11 replaceCharactersInRange:v14 withAttributedString:{v16, v7}];
  }

  return v11;
}

- (id)_numberAttributedStringWithNumberText:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v6];
  if (v7)
  {
    v9 = [v7 description];
    [v8 appendString:v9];
  }

  legibilitySettings = self->_legibilitySettings;
  if (legibilitySettings)
  {
    v11 = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    v12 = [v11 description];
    [v8 appendString:v12];

    v13 = [(_UILegibilitySettings *)self->_legibilitySettings shadowColor];
    v14 = [v13 description];
    [v8 appendString:v14];
  }

  v15 = [(NSCache *)self->_numberAttributedStringCache objectForKey:v8];
  if (!v15)
  {
    v16 = [(WGNewWidgetsButton *)self _numberImageForNumberText:v6 withAttributes:v7];
    v17 = [objc_alloc(MEMORY[0x277D74270]) initWithData:0 ofType:0];
    [v17 setImage:v16];
    v18 = [(WGNewWidgetsButton *)self _numberFont];
    [v18 descender];
    _WGMainScreenScale();
    BSFloatFloorForScale();
    v20 = v19;

    [v16 size];
    [v17 setBounds:{0.0, v20, v21, v22}];
    v15 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v17];
    [(NSCache *)self->_numberAttributedStringCache setObject:v15 forKey:v8];
  }

  return v15;
}

- (id)_numberImageForNumberText:(id)a3 withAttributes:(id)a4
{
  v6 = a4;
  [(WGNewWidgetsButton *)self _numberLabelSizeForText:a3 withAttributes:v6];
  width = v21.width;
  height = v21.height;
  UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
  v9 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [v9 set];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v12 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*MEMORY[0x277CBF348] cornerRadius:{v11, width, height, height * 0.5}];
  [v12 fill];
  if (self->_badgeNumber == 1)
  {
    v22.origin.x = v10;
    v22.origin.y = v11;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectOffset(v22, -0.5, 0.0);
    WGRectRoundForMainScreenScale(v23.origin.x, v23.origin.y, v23.size.width, v23.size.height);
    v10 = v13;
    v11 = v14;
    width = v15;
    height = v16;
  }

  v17 = [(WGNewWidgetsButton *)self numberText];
  [v17 drawInRect:v6 withAttributes:{v10, v11, width, height}];

  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (CGSize)_numberLabelSizeForText:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  [v6 sizeWithAttributes:a4];
  v7 = [v6 length];

  if (v7 == 1)
  {
    _WGMainScreenScale();
    BSFloatCeilForScale();
    v9 = v8;
  }

  else
  {
    v10 = [(WGNewWidgetsButton *)self _numberFont];
    [v10 capHeight];
    _WGMainScreenScale();
    BSFloatCeilForScale();
    v9 = v11;
  }

  _WGMainScreenScale();
  BSFloatCeilForScale();
  v13 = v12;
  v14 = v9;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);

  [(WGNewWidgetsButton *)self _updateButtons];
}

@end