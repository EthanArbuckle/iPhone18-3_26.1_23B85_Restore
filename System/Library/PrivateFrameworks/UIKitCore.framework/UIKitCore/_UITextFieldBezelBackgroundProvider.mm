@interface _UITextFieldBezelBackgroundProvider
+ (id)bezelStyleMetricsProvider;
- (void)addToTextField:(id)a3;
- (void)drawInBounds:(CGRect)a3;
- (void)enabledDidChangeAnimated:(BOOL)a3;
@end

@implementation _UITextFieldBezelBackgroundProvider

+ (id)bezelStyleMetricsProvider
{
  v2 = [[_UITextFieldPaddedMetricsProvider alloc] initWithPerEdgePadding:4.0, 7.0, 1.0, 7.0];

  return v2;
}

- (void)addToTextField:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UITextFieldBezelBackgroundProvider;
  v3 = a3;
  [(_UITextFieldDrawingBackgroundProvider *)&v8 addToTextField:v3];
  v4 = [v3 _contentView];
  v5 = [v3 backgroundColor];

  if (v5)
  {
    [v5 alphaComponent];
    v7 = v6 == 1.0;
  }

  else
  {
    v7 = 0;
  }

  [v4 setOpaque:v7];
}

- (void)enabledDidChangeAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UITextFieldBezelBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 enabledDidChangeAnimated:a3];
  [(_UITextFieldDrawingBackgroundProvider *)self setNeedsDisplay];
}

- (void)drawInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    v14 = [(_UITextFieldBackgroundProvider *)self textField];
    v8 = [v14 traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == 2)
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