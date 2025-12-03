@interface _UIPreviewActionSheetTitleView
- (UILabel)label;
- (_UIPreviewActionSheetTitleView)initWithCoder:(id)coder;
- (_UIPreviewActionSheetTitleView)initWithFrame:(CGRect)frame title:(id)title;
- (void)_updateLabelFont;
- (void)dealloc;
@end

@implementation _UIPreviewActionSheetTitleView

- (_UIPreviewActionSheetTitleView)initWithFrame:(CGRect)frame title:(id)title
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  v25.receiver = self;
  v25.super_class = _UIPreviewActionSheetTitleView;
  height = [(UIView *)&v25 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_title, title);
    v13 = v12;
    v14 = [UILabel alloc];
    v15 = [(UILabel *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    title = [(_UIPreviewActionSheetTitleView *)v13 title];
    [(UILabel *)v15 setText:title];

    [(UILabel *)v15 setNumberOfLines:0];
    [(UILabel *)v15 setTextAlignment:1];
    if (_AXDarkenSystemColors())
    {
      +[UIColor blackColor];
    }

    else
    {
      [UIColor colorWithWhite:0.56 alpha:1.0];
    }
    v17 = ;
    [(UILabel *)v15 setTextColor:v17];

    [(UIView *)v13 addSubview:v15];
    [(_UIPreviewActionSheetTitleView *)v13 setLabel:v15];
    v18 = _NSDictionaryOfVariableBindings(&cfstr_Label.isa, v15, 0);
    array = [MEMORY[0x1E695DF70] array];
    v20 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-[label]-|" options:0 metrics:0 views:v18];
    [array addObjectsFromArray:v20];

    v21 = [MEMORY[0x1E69977A0] constraintWithItem:v15 attribute:12 relatedBy:0 toItem:v13 attribute:3 multiplier:1.0 constant:25.0];
    [array addObject:v21];

    v22 = [MEMORY[0x1E69977A0] constraintWithItem:v15 attribute:11 relatedBy:0 toItem:v13 attribute:11 multiplier:1.0 constant:-15.0];
    [array addObject:v22];

    [MEMORY[0x1E69977A0] activateConstraints:array];
    [(_UIPreviewActionSheetTitleView *)v13 _updateLabelFont];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__contentSizeChanged_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
  }

  return v12;
}

- (_UIPreviewActionSheetTitleView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetTitleView;
  return [(UIView *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetTitleView;
  [(UIView *)&v4 dealloc];
}

- (void)_updateLabelFont
{
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  label = [(_UIPreviewActionSheetTitleView *)self label];
  [label setFont:v3];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end