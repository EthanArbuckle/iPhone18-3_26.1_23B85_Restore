@interface _UIActivityContentSectionFooterView
- (_UIActivityContentSectionFooterView)initWithFrame:(CGRect)frame;
@end

@implementation _UIActivityContentSectionFooterView

- (_UIActivityContentSectionFooterView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = _UIActivityContentSectionFooterView;
  v3 = [(_UIActivityContentSectionFooterView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD168]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setEditable:0];
    [v4 setSelectable:1];
    [v4 setScrollEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:clearColor];

    [v4 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    textContainer = [v4 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [v4 setDelegate:v3];
    [v4 setAccessibilityIdentifier:@"footer.textView"];
    [(_UIActivityContentSectionFooterView *)v3 setFooterTextView:v4];
    v7 = v3;
    [(_UIActivityContentSectionFooterView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    footerTextView = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    [(_UIActivityContentSectionFooterView *)v7 addSubview:footerTextView];

    array = [MEMORY[0x1E695DF70] array];
    footerTextView2 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    leadingAnchor = [footerTextView2 leadingAnchor];
    layoutMarginsGuide = [(_UIActivityContentSectionFooterView *)v7 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v14];

    footerTextView3 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    trailingAnchor = [footerTextView3 trailingAnchor];
    layoutMarginsGuide2 = [(_UIActivityContentSectionFooterView *)v7 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v19];

    footerTextView4 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];
    topAnchor = [footerTextView4 topAnchor];
    topAnchor2 = [(_UIActivityContentSectionFooterView *)v7 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v23];

    bottomAnchor = [(_UIActivityContentSectionFooterView *)v7 bottomAnchor];
    footerTextView5 = [(_UIActivityContentSectionFooterView *)v7 footerTextView];

    bottomAnchor2 = [footerTextView5 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:32.0];
    [array addObject:v27];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v3;
}

@end