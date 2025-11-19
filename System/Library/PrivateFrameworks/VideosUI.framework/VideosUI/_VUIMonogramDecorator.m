@interface _VUIMonogramDecorator
- (id)decoratorIdentifier;
- (void)drawInContext:(id)a3 imageRect:(CGRect)a4;
@end

@implementation _VUIMonogramDecorator

- (id)decoratorIdentifier
{
  v5.receiver = self;
  v5.super_class = _VUIMonogramDecorator;
  v2 = [(VUIImageScaleDecorator *)&v5 decoratorIdentifier];
  v3 = [v2 stringByAppendingString:@"_mono"];

  return v3;
}

- (void)drawInContext:(id)a3 imageRect:(CGRect)a4
{
  v5 = a3;
  v15 = [v5 currentImage];
  [v15 size];
  v7 = v6;
  [v15 size];
  v9 = v8;
  v10 = [VUIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v7, v8];
  v11 = [v5 CGContext];

  CGContextSetBlendMode(v11, kCGBlendModeCopy);
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [v12 setFill];

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v7;
  v17.size.height = v9;
  UIRectFill(v17);
  v13 = [MEMORY[0x1E69DC888] blackColor];
  [v13 setFill];

  [v10 fill];
  [v15 drawInRect:18 blendMode:0.0 alpha:{0.0, v7, v9, 1.0}];
  borderColor = self->_borderColor;
  if (borderColor && self->_borderWidth > 0.0)
  {
    [(UIColor *)borderColor setStroke];
    [v10 setLineWidth:self->_borderWidth];
    [v10 stroke];
  }
}

@end