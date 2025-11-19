@interface _UIPreviewActionSheetTitleView
- (UILabel)label;
- (_UIPreviewActionSheetTitleView)initWithCoder:(id)a3;
- (_UIPreviewActionSheetTitleView)initWithFrame:(CGRect)a3 title:(id)a4;
- (void)_updateLabelFont;
- (void)dealloc;
@end

@implementation _UIPreviewActionSheetTitleView

- (_UIPreviewActionSheetTitleView)initWithFrame:(CGRect)a3 title:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v25.receiver = self;
  v25.super_class = _UIPreviewActionSheetTitleView;
  v11 = [(UIView *)&v25 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a4);
    v13 = v12;
    v14 = [UILabel alloc];
    v15 = [(UILabel *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(_UIPreviewActionSheetTitleView *)v13 title];
    [(UILabel *)v15 setText:v16];

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
    v19 = [MEMORY[0x1E695DF70] array];
    v20 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-[label]-|" options:0 metrics:0 views:v18];
    [v19 addObjectsFromArray:v20];

    v21 = [MEMORY[0x1E69977A0] constraintWithItem:v15 attribute:12 relatedBy:0 toItem:v13 attribute:3 multiplier:1.0 constant:25.0];
    [v19 addObject:v21];

    v22 = [MEMORY[0x1E69977A0] constraintWithItem:v15 attribute:11 relatedBy:0 toItem:v13 attribute:11 multiplier:1.0 constant:-15.0];
    [v19 addObject:v22];

    [MEMORY[0x1E69977A0] activateConstraints:v19];
    [(_UIPreviewActionSheetTitleView *)v13 _updateLabelFont];
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v13 selector:sel__contentSizeChanged_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
  }

  return v12;
}

- (_UIPreviewActionSheetTitleView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetTitleView;
  return [(UIView *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetTitleView;
  [(UIView *)&v4 dealloc];
}

- (void)_updateLabelFont
{
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleFootnote"];
  v4 = [(_UIPreviewActionSheetTitleView *)self label];
  [v4 setFont:v3];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end