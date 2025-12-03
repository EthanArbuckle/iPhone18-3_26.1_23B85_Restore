@interface _UITextFieldBezelBackgroundProvider
+ (id)bezelStyleMetricsProvider;
- (void)addToTextField:(id)field;
- (void)drawInBounds:(CGRect)bounds;
- (void)enabledDidChangeAnimated:(BOOL)animated;
@end

@implementation _UITextFieldBezelBackgroundProvider

+ (id)bezelStyleMetricsProvider
{
  v2 = [[_UITextFieldPaddedMetricsProvider alloc] initWithPerEdgePadding:4.0, 7.0, 1.0, 7.0];

  return v2;
}

- (void)addToTextField:(id)field
{
  v8.receiver = self;
  v8.super_class = _UITextFieldBezelBackgroundProvider;
  fieldCopy = field;
  [(_UITextFieldDrawingBackgroundProvider *)&v8 addToTextField:fieldCopy];
  _contentView = [fieldCopy _contentView];
  backgroundColor = [fieldCopy backgroundColor];

  if (backgroundColor)
  {
    [backgroundColor alphaComponent];
    v7 = v6 == 1.0;
  }

  else
  {
    v7 = 0;
  }

  [_contentView setOpaque:v7];
}

- (void)enabledDidChangeAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = _UITextFieldBezelBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 enabledDidChangeAnimated:animated];
  [(_UITextFieldDrawingBackgroundProvider *)self setNeedsDisplay];
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
    traitCollection = [textField traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      +[UIColor darkGrayColor];
    }

    else
    {
      +[UIColor lightGrayColor];
    }
    v10 = ;
    [v10 set];

    v11 = x + 1.0;
    v12 = y + 1.0;
    UIRectFrameUsingOperation(1, v11, v12, width, height);
    v13 = +[UIColor grayColor];
    [v13 set];

    UIRectFrameUsingOperation(1, v11 + -1.0, v12 + -1.0, width, height);
  }
}

@end