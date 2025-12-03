@interface _VUIMonogramDecorator
- (id)decoratorIdentifier;
- (void)drawInContext:(id)context imageRect:(CGRect)rect;
@end

@implementation _VUIMonogramDecorator

- (id)decoratorIdentifier
{
  v5.receiver = self;
  v5.super_class = _VUIMonogramDecorator;
  decoratorIdentifier = [(VUIImageScaleDecorator *)&v5 decoratorIdentifier];
  v3 = [decoratorIdentifier stringByAppendingString:@"_mono"];

  return v3;
}

- (void)drawInContext:(id)context imageRect:(CGRect)rect
{
  contextCopy = context;
  currentImage = [contextCopy currentImage];
  [currentImage size];
  v7 = v6;
  [currentImage size];
  v9 = v8;
  v10 = [VUIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v7, v8];
  cGContext = [contextCopy CGContext];

  CGContextSetBlendMode(cGContext, kCGBlendModeCopy);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [clearColor setFill];

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v7;
  v17.size.height = v9;
  UIRectFill(v17);
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [blackColor setFill];

  [v10 fill];
  [currentImage drawInRect:18 blendMode:0.0 alpha:{0.0, v7, v9, 1.0}];
  borderColor = self->_borderColor;
  if (borderColor && self->_borderWidth > 0.0)
  {
    [(UIColor *)borderColor setStroke];
    [v10 setLineWidth:self->_borderWidth];
    [v10 stroke];
  }
}

@end