@interface _UIAnimatingLabel
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)setFont:(id)a3;
@end

@implementation _UIAnimatingLabel

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shouldAnimateVariantWeight && ([v4 isEqualToString:@"variantWeight"] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIAnimatingLabel;
    v6 = [(UIView *)&v8 _shouldAnimatePropertyWithKey:v5];
  }

  return v6;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self font];
  v6 = [v5 familyName];
  v7 = [v4 familyName];
  if ([v6 isEqualToString:v7])
  {
    [v5 pointSize];
    v9 = v8;
    [v4 pointSize];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  self->_shouldAnimateVariantWeight = v11;

  v12 = [v4 _variantWeight];
  v13 = [(UIView *)self layer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [(UIView *)self layer];
    v16 = v15;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 400;
    }

    else
    {
      v17 = v12;
    }

    [v15 setVariantWeight:v17];
  }

  v18.receiver = self;
  v18.super_class = _UIAnimatingLabel;
  [(UILabel *)&v18 setFont:v4];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v6 = a3;
  v7 = [(UIView *)self layer];

  if (v7 == v6)
  {
    v12.receiver = self;
    v12.super_class = _UIAnimatingLabel;
    [(UIView *)&v12 drawLayer:v6 inContext:a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 variantWeight];
      v9 = [(UILabel *)self font];
      v10 = [v9 _fontWithVariantWeight:v8];
      v15.receiver = self;
      v15.super_class = _UIAnimatingLabel;
      [(UILabel *)&v15 setFont:v10];

      v11 = [(UIView *)self layer];
      v14.receiver = self;
      v14.super_class = _UIAnimatingLabel;
      [(UIView *)&v14 drawLayer:v11 inContext:a4];

      v13.receiver = self;
      v13.super_class = _UIAnimatingLabel;
      [(UILabel *)&v13 setFont:v9];
    }
  }
}

@end