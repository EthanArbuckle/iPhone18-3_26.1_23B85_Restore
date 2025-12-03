@interface _KeypadDismissButton
- (_KeypadDismissButton)initWithFrame:(CGRect)frame;
@end

@implementation _KeypadDismissButton

- (_KeypadDismissButton)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = _KeypadDismissButton;
  v3 = [(_KeypadDismissButton *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_KeypadDismissButton *)v3 layer];
    [layer setBorderWidth:2.0];

    layer2 = [(_KeypadDismissButton *)v4 layer];
    v7 = _KeypadBackgroundColor();
    [layer2 setBorderColor:{objc_msgSend(v7, "CGColor")}];

    v8 = _KeypadForegroundColor();
    [(_KeypadDismissButton *)v4 setBackgroundColor:v8];

    [(_KeypadDismissButton *)v4 setTitle:@"✕" forState:0];
    v9 = _KeypadBackgroundColor();
    [(_KeypadDismissButton *)v4 setTitleColor:v9 forState:0];

    v10 = _KeypadForegroundColor();
    [(_KeypadDismissButton *)v4 setTitleColor:v10 forState:1];

    titleLabel = [(_KeypadDismissButton *)v4 titleLabel];
    v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:24.0];
    [titleLabel setFont:v12];
  }

  return v4;
}

@end