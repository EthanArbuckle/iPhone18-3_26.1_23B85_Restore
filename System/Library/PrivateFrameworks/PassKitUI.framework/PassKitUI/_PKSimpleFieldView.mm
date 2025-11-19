@interface _PKSimpleFieldView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)labelBlendMode;
- (NSString)valueBlendMode;
- (_PKSimpleFieldView)initWithField:(id)a3;
- (id)description;
- (void)_evaluateVibrancyEnablement;
- (void)layoutSubviews;
- (void)setLabelBlendMode:(id)a3;
- (void)setValueBlendMode:(id)a3;
@end

@implementation _PKSimpleFieldView

- (_PKSimpleFieldView)initWithField:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = _PKSimpleFieldView;
  v6 = [(_PKSimpleFieldView *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_field, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    labelLabel = v7->_labelLabel;
    v7->_labelLabel = v8;

    [(UILabel *)v7->_labelLabel setNumberOfLines:1];
    [(UILabel *)v7->_labelLabel setLineBreakMode:4];
    [(UILabel *)v7->_labelLabel setAccessibilityIdentifier:*MEMORY[0x1E69B98D0]];
    [(UILabel *)v7->_labelLabel setTextAlignment:[(PKPassField *)v7->_field textAlignment]];
    v10 = v7->_labelLabel;
    v11 = [(PKPassField *)v7->_field label];
    [(UILabel *)v10 setText:v11];

    [(_PKSimpleFieldView *)v7 addSubview:v7->_labelLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v7->_valueLabel;
    v7->_valueLabel = v12;

    [(UILabel *)v7->_valueLabel setNumberOfLines:1];
    [(UILabel *)v7->_valueLabel setLineBreakMode:4];
    [(UILabel *)v7->_valueLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9DC0]];
    [(UILabel *)v7->_valueLabel setTextAlignment:[(PKPassField *)v7->_field textAlignment]];
    v14 = v7->_valueLabel;
    v15 = [(PKPassField *)v7->_field value];
    [(UILabel *)v14 setText:v15];

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
  v8 = [(UILabel *)self->_labelLabel text];
  if ([v8 length])
  {
    v9 = [(_PKSimpleFieldView *)self labelFont];
    [v9 pointSize];
    v11 = v10;

    if ([v8 length] >= 0x1A)
    {
      v12 = [v8 rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v14 = [v8 substringWithRange:{v12, v13}];
      v15 = [v14 stringByAppendingString:@"..."];

      v8 = v15;
    }

    [v3 appendFormat:@"<label = '%@'; font-size: %g>; ", v8, v11];
  }

  v16 = [(UILabel *)self->_valueLabel text];
  if ([v16 length])
  {
    v17 = [(_PKSimpleFieldView *)self valueFont];
    [v17 pointSize];
    v19 = v18;

    if ([v16 length] >= 0x1A)
    {
      v20 = [v16 rangeOfComposedCharacterSequencesForRange:{0, 25}];
      v22 = [v16 substringWithRange:{v20, v21}];
      v23 = [v22 stringByAppendingString:@"..."];

      v16 = v23;
    }

    [v3 appendFormat:@"<value = '%@'; font-size: %g>", v16, v19];
  }

  [v3 appendString:@">"];
  v24 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v24;
}

- (NSString)labelBlendMode
{
  v2 = [(UILabel *)self->_labelLabel layer];
  v3 = [v2 compositingFilter];

  return v3;
}

- (void)setLabelBlendMode:(id)a3
{
  labelLabel = self->_labelLabel;
  v5 = a3;
  v6 = [(UILabel *)labelLabel layer];
  [v6 setCompositingFilter:v5];

  [(_PKSimpleFieldView *)self _evaluateVibrancyEnablement];
}

- (NSString)valueBlendMode
{
  v2 = [(UILabel *)self->_valueLabel layer];
  v3 = [v2 compositingFilter];

  return v3;
}

- (void)setValueBlendMode:(id)a3
{
  valueLabel = self->_valueLabel;
  v5 = a3;
  v6 = [(UILabel *)valueLabel layer];
  [v6 setCompositingFilter:v5];

  [(_PKSimpleFieldView *)self _evaluateVibrancyEnablement];
}

- (void)_evaluateVibrancyEnablement
{
  v3 = [(_PKSimpleFieldView *)self labelBlendMode];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_PKSimpleFieldView *)self valueBlendMode];
    v4 = v5 == 0;
  }

  v6 = [(_PKSimpleFieldView *)self layer];
  [v6 setAllowsGroupBlending:v4];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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