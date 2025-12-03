@interface _UIAnimatingLabel
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)setFont:(id)font;
@end

@implementation _UIAnimatingLabel

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (self->_shouldAnimateVariantWeight && ([keyCopy isEqualToString:@"variantWeight"] & 1) != 0)
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

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self font];
  familyName = [font familyName];
  familyName2 = [fontCopy familyName];
  if ([familyName isEqualToString:familyName2])
  {
    [font pointSize];
    v9 = v8;
    [fontCopy pointSize];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  self->_shouldAnimateVariantWeight = v11;

  _variantWeight = [fontCopy _variantWeight];
  layer = [(UIView *)self layer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    layer2 = [(UIView *)self layer];
    v16 = layer2;
    if (_variantWeight == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 400;
    }

    else
    {
      v17 = _variantWeight;
    }

    [layer2 setVariantWeight:v17];
  }

  v18.receiver = self;
  v18.super_class = _UIAnimatingLabel;
  [(UILabel *)&v18 setFont:fontCopy];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  layer = [(UIView *)self layer];

  if (layer == layerCopy)
  {
    v12.receiver = self;
    v12.super_class = _UIAnimatingLabel;
    [(UIView *)&v12 drawLayer:layerCopy inContext:context];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      variantWeight = [layerCopy variantWeight];
      font = [(UILabel *)self font];
      v10 = [font _fontWithVariantWeight:variantWeight];
      v15.receiver = self;
      v15.super_class = _UIAnimatingLabel;
      [(UILabel *)&v15 setFont:v10];

      layer2 = [(UIView *)self layer];
      v14.receiver = self;
      v14.super_class = _UIAnimatingLabel;
      [(UIView *)&v14 drawLayer:layer2 inContext:context];

      v13.receiver = self;
      v13.super_class = _UIAnimatingLabel;
      [(UILabel *)&v13 setFont:font];
    }
  }
}

@end