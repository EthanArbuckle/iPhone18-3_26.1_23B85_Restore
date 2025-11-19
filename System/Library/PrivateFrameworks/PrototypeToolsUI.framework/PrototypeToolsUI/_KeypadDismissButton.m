@interface _KeypadDismissButton
- (_KeypadDismissButton)initWithFrame:(CGRect)a3;
@end

@implementation _KeypadDismissButton

- (_KeypadDismissButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = _KeypadDismissButton;
  v3 = [(_KeypadDismissButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_KeypadDismissButton *)v3 layer];
    [v5 setBorderWidth:2.0];

    v6 = [(_KeypadDismissButton *)v4 layer];
    v7 = _KeypadBackgroundColor();
    [v6 setBorderColor:{objc_msgSend(v7, "CGColor")}];

    v8 = _KeypadForegroundColor();
    [(_KeypadDismissButton *)v4 setBackgroundColor:v8];

    [(_KeypadDismissButton *)v4 setTitle:@"✕" forState:0];
    v9 = _KeypadBackgroundColor();
    [(_KeypadDismissButton *)v4 setTitleColor:v9 forState:0];

    v10 = _KeypadForegroundColor();
    [(_KeypadDismissButton *)v4 setTitleColor:v10 forState:1];

    v11 = [(_KeypadDismissButton *)v4 titleLabel];
    v12 = [MEMORY[0x277D74300] boldSystemFontOfSize:24.0];
    [v11 setFont:v12];
  }

  return v4;
}

@end