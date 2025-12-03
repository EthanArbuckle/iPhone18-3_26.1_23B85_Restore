@interface PSGUnderlineButton
- (void)drawRect:(CGRect)rect;
@end

@implementation PSGUnderlineButton

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  currentTitleShadowColor = [(PSGUnderlineButton *)self currentTitleShadowColor];
  [currentTitleShadowColor set];

  [(PSGUnderlineButton *)self bounds];
  v7 = v6;
  v9 = v8;
  v10 = v8 + -2.0;
  CGContextMoveToPoint(CurrentContext, self->_linePadding, v8 + -2.0);
  CGContextAddLineToPoint(CurrentContext, v7, v10);
  CGContextStrokePath(CurrentContext);
  currentTitleColor = [(PSGUnderlineButton *)self currentTitleColor];
  [currentTitleColor set];

  v12 = v9 + -3.0;
  CGContextMoveToPoint(CurrentContext, self->_linePadding, v12);
  CGContextAddLineToPoint(CurrentContext, v7, v12);

  CGContextStrokePath(CurrentContext);
}

@end