@interface PSGUnderlineButton
- (void)drawRect:(CGRect)a3;
@end

@implementation PSGUnderlineButton

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  v5 = [(PSGUnderlineButton *)self currentTitleShadowColor];
  [v5 set];

  [(PSGUnderlineButton *)self bounds];
  v7 = v6;
  v9 = v8;
  v10 = v8 + -2.0;
  CGContextMoveToPoint(CurrentContext, self->_linePadding, v8 + -2.0);
  CGContextAddLineToPoint(CurrentContext, v7, v10);
  CGContextStrokePath(CurrentContext);
  v11 = [(PSGUnderlineButton *)self currentTitleColor];
  [v11 set];

  v12 = v9 + -3.0;
  CGContextMoveToPoint(CurrentContext, self->_linePadding, v12);
  CGContextAddLineToPoint(CurrentContext, v7, v12);

  CGContextStrokePath(CurrentContext);
}

@end