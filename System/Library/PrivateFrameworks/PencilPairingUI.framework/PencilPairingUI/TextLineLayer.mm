@interface TextLineLayer
- (UIEdgeInsets)insets;
- (void)drawInContext:(CGContext *)context;
@end

@implementation TextLineLayer

- (void)drawInContext:(CGContext *)context
{
  v24.receiver = self;
  v24.super_class = TextLineLayer;
  [(TextLineLayer *)&v24 drawInContext:?];
  UIGraphicsPushContext(context);
  [(TextLineLayer *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(TextLineLayer *)self lineWidth];
  v14 = v13;
  [(TextLineLayer *)self centerOffset];
  v16 = v15;
  lineColor = [(TextLineLayer *)self lineColor];
  [lineColor setFill];

  [(TextLineLayer *)self insets];
  v19 = v18;
  v21 = v20;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  v22 = v16 + CGRectGetMidY(v25) + v14 * -0.5;
  v23 = ceilf(v22);
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v27.size.width = CGRectGetWidth(v26) - v19 - v21;
  v27.origin.x = v19;
  v27.origin.y = v23;
  v27.size.height = v14;
  CGContextFillRect(context, v27);
  UIGraphicsPopContext();
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end