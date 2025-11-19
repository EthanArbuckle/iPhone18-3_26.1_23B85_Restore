@interface _UITextFieldLineBackgroundProvider
+ (id)lineStyleMetricsProvider;
- (void)drawInBounds:(CGRect)a3;
- (void)enabledDidChangeAnimated:(BOOL)a3;
@end

@implementation _UITextFieldLineBackgroundProvider

+ (id)lineStyleMetricsProvider
{
  v2 = [[_UITextFieldPaddedMetricsProvider alloc] initWithSymmetricalPadding:2.0, 2.0];

  return v2;
}

- (void)enabledDidChangeAnimated:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UITextFieldLineBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v5 enabledDidChangeAnimated:a3];
  v4 = [(_UITextFieldBackgroundProvider *)self textField];
  [v4 setNeedsDisplay];
}

- (void)drawInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    v9 = [(_UITextFieldBackgroundProvider *)self textField];
    if ([v9 isEnabled])
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor grayColor];
    }
    v8 = ;
    [v8 set];
    UIRectFrameUsingOperation(1, x, y, width, height);
  }
}

@end