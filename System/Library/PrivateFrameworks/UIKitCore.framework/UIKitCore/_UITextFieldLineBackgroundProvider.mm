@interface _UITextFieldLineBackgroundProvider
+ (id)lineStyleMetricsProvider;
- (void)drawInBounds:(CGRect)bounds;
- (void)enabledDidChangeAnimated:(BOOL)animated;
@end

@implementation _UITextFieldLineBackgroundProvider

+ (id)lineStyleMetricsProvider
{
  v2 = [[_UITextFieldPaddedMetricsProvider alloc] initWithSymmetricalPadding:2.0, 2.0];

  return v2;
}

- (void)enabledDidChangeAnimated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = _UITextFieldLineBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v5 enabledDidChangeAnimated:animated];
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  [textField setNeedsDisplay];
}

- (void)drawInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    textField = [(_UITextFieldBackgroundProvider *)self textField];
    if ([textField isEnabled])
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