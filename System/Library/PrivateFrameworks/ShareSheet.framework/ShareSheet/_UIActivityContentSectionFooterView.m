@interface _UIActivityContentSectionFooterView
- (_UIActivityContentSectionFooterView)initWithFrame:(CGRect)a3;
@end

@implementation _UIActivityContentSectionFooterView

- (_UIActivityContentSectionFooterView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = _UIActivityContentSectionFooterView;
  v3 = [(_UIActivityContentSectionFooterView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setEditable:0];
    [v4 setSelectable:1];
    [v4 setScrollEnabled:0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:v5];

    [v4 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v6 = [v4 textContainer];
    [v6 setLineFragmentPadding:0.0];

    [v4 setDelegate:v3];
    [v4 setAccessibilityIdentifier:@"footer.textView"];
    [(_UIActivityContentSectionFooterView *)v3 setFooterTextView:v4];
    v7 = v3;
    [(_UIActivityContentSectionFooterView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    [(_UIActivityContentSectionFooterView *)v7 addSubview:v8];

    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    v11 = [v10 leadingAnchor];
    v12 = [(_UIActivityContentSectionFooterView *)v7 layoutMarginsGuide];
    v13 = [v12 leadingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v9 addObject:v14];

    v15 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    v16 = [v15 trailingAnchor];
    v17 = [(_UIActivityContentSectionFooterView *)v7 layoutMarginsGuide];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v9 addObject:v19];

    v20 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    v21 = [v20 topAnchor];
    v22 = [(_UIActivityContentSectionFooterView *)v7 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v9 addObject:v23];

    v24 = [(_UIActivityContentSectionFooterView *)v7 bottomAnchor];
    v25 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];

    v26 = [v25 bottomAnchor];
    v27 = [v24 constraintEqualToAnchor:v26 constant:32.0];
    [v9 addObject:v27];

    [MEMORY[0x1E696ACD8] activateConstraints:v9];
  }

  return v3;
}

@end