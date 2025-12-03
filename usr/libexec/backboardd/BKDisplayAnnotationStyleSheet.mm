@interface BKDisplayAnnotationStyleSheet
- (BKDisplayAnnotationStyle)subnodeStyleModifier;
- (id)newLayerForContent:(id)content scale:(double)scale;
- (void)applyToLayer:(id)layer forContent:(id)content;
- (void)sizeLayer:(id)layer toFitAtScale:(double)scale;
@end

@implementation BKDisplayAnnotationStyleSheet

- (id)newLayerForContent:(id)content scale:(double)scale
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = +[CATextLayer layer];
    string = [contentCopy string];
    [v6 setString:string];
    v8 = [@"Text annotation: " stringByAppendingString:string];
    [v6 setName:v8];

    [v6 setContentsScale:scale];
    [v6 setRasterizationScale:scale];
    [v6 setContentsFormat:kCAContentsFormatAutomatic];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = +[CAShapeLayer layer];
      [v6 setName:@"Shape annotation"];
    }

    else
    {
      v6 = +[CALayer layer];
    }
  }

  return v6;
}

- (BKDisplayAnnotationStyle)subnodeStyleModifier
{
  subnodeStyleModifier = self->_subnodeStyleModifier;
  if (!subnodeStyleModifier)
  {
    subnodeStyleModifier = self->_styleModifier;
  }

  v3 = subnodeStyleModifier;

  return v3;
}

- (void)sizeLayer:(id)layer toFitAtScale:(double)scale
{
  layerCopy = layer;
  baseStyle = self->_baseStyle;
  if (objc_opt_respondsToSelector())
  {
    [(BKDisplayAnnotationStyle *)self->_baseStyle sizeLayer:layerCopy toFitAtScale:scale];
  }

  styleModifier = self->_styleModifier;
  if (styleModifier && self->_baseStyle != styleModifier && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(BKDisplayAnnotationStyle *)self->_styleModifier sizeLayer:layerCopy toFitAtScale:scale];
  }
}

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  contentCopy = content;
  [(BKDisplayAnnotationStyle *)self->_baseStyle applyToLayer:layerCopy forContent:contentCopy];
  styleModifier = self->_styleModifier;
  if (styleModifier && self->_baseStyle != styleModifier)
  {
    [(BKDisplayAnnotationStyle *)styleModifier applyToLayer:layerCopy forContent:contentCopy];
  }
}

@end