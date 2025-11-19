@interface _PRInlineTextViewController
- (_PRInlineTextViewController)initWithText:(id)a3;
@end

@implementation _PRInlineTextViewController

- (_PRInlineTextViewController)initWithText:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = _PRInlineTextViewController;
  v5 = [(_PRInlineTextViewController *)&v29 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [v6 setTextColor:v7];

    [v6 setText:v4];
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB970]];
    [v6 setFont:v8];

    v9 = [(_PRInlineTextViewController *)v5 view];
    [v9 addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = MEMORY[0x1E696ACD8];
    v27 = [v6 leadingAnchor];
    v28 = [(_PRInlineTextViewController *)v5 view];
    v26 = [v28 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v23 = [v6 trailingAnchor];
    v24 = [(_PRInlineTextViewController *)v5 view];
    v22 = [v24 trailingAnchor];
    v20 = [v23 constraintEqualToAnchor:v22];
    v30[1] = v20;
    v18 = [v6 topAnchor];
    v19 = [(_PRInlineTextViewController *)v5 view];
    v10 = [v19 topAnchor];
    v11 = [v18 constraintEqualToAnchor:v10];
    v30[2] = v11;
    v12 = [v6 bottomAnchor];
    v13 = [(_PRInlineTextViewController *)v5 view];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v30[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v21 activateConstraints:v16];
  }

  return v5;
}

@end