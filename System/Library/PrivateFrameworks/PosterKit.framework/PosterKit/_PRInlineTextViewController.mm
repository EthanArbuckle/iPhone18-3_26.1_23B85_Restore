@interface _PRInlineTextViewController
- (_PRInlineTextViewController)initWithText:(id)text;
@end

@implementation _PRInlineTextViewController

- (_PRInlineTextViewController)initWithText:(id)text
{
  v30[4] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v29.receiver = self;
  v29.super_class = _PRInlineTextViewController;
  v5 = [(_PRInlineTextViewController *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v6 setTextColor:whiteColor];

    [v6 setText:textCopy];
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB970]];
    [v6 setFont:v8];

    view = [(_PRInlineTextViewController *)v5 view];
    [view addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v6 leadingAnchor];
    view2 = [(_PRInlineTextViewController *)v5 view];
    leadingAnchor2 = [view2 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v25;
    trailingAnchor = [v6 trailingAnchor];
    view3 = [(_PRInlineTextViewController *)v5 view];
    trailingAnchor2 = [view3 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v20;
    topAnchor = [v6 topAnchor];
    view4 = [(_PRInlineTextViewController *)v5 view];
    topAnchor2 = [view4 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[2] = v11;
    bottomAnchor = [v6 bottomAnchor];
    view5 = [(_PRInlineTextViewController *)v5 view];
    bottomAnchor2 = [view5 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v21 activateConstraints:v16];
  }

  return v5;
}

@end