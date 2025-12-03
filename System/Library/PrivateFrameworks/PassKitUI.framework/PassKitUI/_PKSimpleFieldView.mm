@interface _PKSimpleFieldView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)labelBlendMode;
- (NSString)valueBlendMode;
- (_PKSimpleFieldView)initWithField:(id)field;
- (id)description;
- (void)_evaluateVibrancyEnablement;
- (void)layoutSubviews;
- (void)setLabelBlendMode:(id)mode;
- (void)setValueBlendMode:(id)mode;
@end

@implementation _PKSimpleFieldView

- (_PKSimpleFieldView)initWithField:(id)field
{
  fieldCopy = field;
  v17.receiver = self;
  v17.super_class = _PKSimpleFieldView;
  v6 = [(_PKSimpleFieldView *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_field, field);
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelLabel = v7->_labelLabel;
    v7->_labelLabel = v8;

    [(UILabel *)v7->_labelLabel setNumberOfLines:1];
    [(UILabel *)v7->_labelLabel setLineBreakMode:4];
    [(UILabel *)v7->_labelLabel setAccessibilityIdentifier:*MEMORY[0x1E69B98D0]];
    [(UILabel *)v7->_labelLabel setTextAlignment:[(PKPassField *)v7->_field textAlignment]];
    v10 = v7->_labelLabel;
    label = [(PKPassField *)v7->_field label];
    [(UILabel *)v10 setText:label];

    [(_PKSimpleFieldView *)v7 addSubview:v7->_labelLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v7->_valueLabel;
    v7->_valueLabel = v12;

    [(UILabel *)v7->_valueLabel setNumberOfLines:1];
    [(UILabel *)v7->_valueLabel setLineBreakMode:4];
    [(UILabel *)v7->_valueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
    [(UILabel *)v7->_valueLabel setTextAlignment:[(PKPassField *)v7->_field textAlignment]];
    v14 = v7->_valueLabel;
    value = [(PKPassField *)v7->_field value];
    [(UILabel *)v14 setText:value];

    [(_PKSimpleFieldView *)v7 addSubview:v7->_valueLabel];
    [(_PKSimpleFieldView *)v7 setAccessibilityIdentifier:*MEMORY[0x1E69B97E8]];
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(_PKSimpleFieldView *)self frame];
  [v3 appendFormat:@"frame = (%g %g; %g %g); ", v4, v5, v6, v7];
  text = [(UILabel *)self->_labelLabel text];
  if ([text length])
  {
    labelFont = [(_PKSimpleFieldView *)self labelFont];
    [labelFont pointSize];
    v11 = v10;

    if ([text length] >= 0x1A)
    {
      v12 = [text rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v14 = [text substringWithRange:{v12, v13}];
      v15 = [v14 stringByAppendingString:@"..."];

      text = v15;
    }

    [v3 appendFormat:@"<label = '%@'; font-size: %g>; ", text, v11];
  }

  text2 = [(UILabel *)self->_valueLabel text];
  if ([text2 length])
  {
    valueFont = [(_PKSimpleFieldView *)self valueFont];
    [valueFont pointSize];
    v19 = v18;

    if ([text2 length] >= 0x1A)
    {
      v20 = [text2 rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v22 = [text2 substringWithRange:{v20, v21}];
      v23 = [v22 stringByAppendingString:@"..."];

      text2 = v23;
    }

    [v3 appendFormat:@"<value = '%@'; font-size: %g>", text2, v19];
  }

  [v3 appendString:@">"];
  v24 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v24;
}

- (NSString)labelBlendMode
{
  layer = [(UILabel *)self->_labelLabel layer];
  compositingFilter = [layer compositingFilter];

  return compositingFilter;
}

- (void)setLabelBlendMode:(id)mode
{
  labelLabel = self->_labelLabel;
  modeCopy = mode;
  layer = [(UILabel *)labelLabel layer];
  [layer setCompositingFilter:modeCopy];

  [(_PKSimpleFieldView *)self _evaluateVibrancyEnablement];
}

- (NSString)valueBlendMode
{
  layer = [(UILabel *)self->_valueLabel layer];
  compositingFilter = [layer compositingFilter];

  return compositingFilter;
}

- (void)setValueBlendMode:(id)mode
{
  valueLabel = self->_valueLabel;
  modeCopy = mode;
  layer = [(UILabel *)valueLabel layer];
  [layer setCompositingFilter:modeCopy];

  [(_PKSimpleFieldView *)self _evaluateVibrancyEnablement];
}

- (void)_evaluateVibrancyEnablement
{
  labelBlendMode = [(_PKSimpleFieldView *)self labelBlendMode];
  if (labelBlendMode)
  {
    v4 = 0;
  }

  else
  {
    valueBlendMode = [(_PKSimpleFieldView *)self valueBlendMode];
    v4 = valueBlendMode == 0;
  }

  layer = [(_PKSimpleFieldView *)self layer];
  [layer setAllowsGroupBlending:v4];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = _PKSimpleFieldView;
  [(_PKSimpleFieldView *)&v21 layoutSubviews];
  [(_PKSimpleFieldView *)self bounds];
  v4 = v3;
  rect = v5;
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_labelLabel sizeThatFits:v6, v8];
  v11 = fmax(v9, v10);
  PKSizeAlignedInRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_labelLabel setFrame:?];
  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  CGRectGetMaxY(v22);
  v23.origin.x = v4;
  v23.origin.y = rect;
  v23.size.width = v7;
  v23.size.height = v11;
  CGRectGetMaxY(v23);
  [(UILabel *)self->_valueLabel sizeThatFits:v7, v9];
  PKSizeAlignedInRect();
  [(UILabel *)self->_valueLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UILabel *)self->_labelLabel sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_valueLabel sizeThatFits:width, height];
  if (v7 > v10)
  {
    v10 = v7;
  }

  v12 = v9 + v11 + self->_verticalPadding;
  result.height = v12;
  result.width = v10;
  return result;
}

@end