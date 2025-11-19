@interface _UIPreviewActionSheetItemView
- (UIImageView)imageView;
- (UILabel)label;
- (_UIPreviewActionSheetItemView)initWithCoder:(id)a3;
- (_UIPreviewActionSheetItemView)initWithFrame:(CGRect)a3 action:(id)a4;
- (void)_updateConstraints;
- (void)_updateImageFromAction;
- (void)_updateLabelFont;
- (void)_updateTitleFromAction;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation _UIPreviewActionSheetItemView

- (_UIPreviewActionSheetItemView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetItemView;
  return [(UIView *)&v4 initWithCoder:a3];
}

- (_UIPreviewActionSheetItemView)initWithFrame:(CGRect)a3 action:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = _UIPreviewActionSheetItemView;
  v10 = [(UIView *)&v22 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [UIImageView alloc];
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v18 = [(UIImageView *)v13 initWithFrame:*MEMORY[0x1E695F058], v15, v16, v17];
    [(UIImageView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v18 setContentMode:1];
    [(UIView *)v12 addSubview:v18];
    [(_UIPreviewActionSheetItemView *)v12 setImageView:v18];
    v19 = [[UILabel alloc] initWithFrame:v14, v15, v16, v17];
    [(UIView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v19 setTextAlignment:1];
    [(UIView *)v12 addSubview:v19];
    [(_UIPreviewActionSheetItemView *)v12 setLabel:v19];
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v12 selector:sel__contentSizeChanged_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];

    [(_UIPreviewActionSheetItemView *)v12 setAction:v9];
    [(_UIPreviewActionSheetItemView *)v12 _updateLabelFont];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetItemView;
  [(UIView *)&v4 dealloc];
}

- (void)setAction:(id)a3
{
  v5 = a3;
  if (self->_action != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_action, a3);
    [(_UIPreviewActionSheetItemView *)self _updateTitleFromAction];
    [(_UIPreviewActionSheetItemView *)self _updateImageFromAction];
    [(_UIPreviewActionSheetItemView *)self _updateConstraints];
    v5 = v6;
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(_UIPreviewActionSheetItemView *)self selected]!= a3)
  {
    [(_UIPreviewActionSheetItemView *)self setSelected:v5];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54___UIPreviewActionSheetItemView_setSelected_animated___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v4)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54___UIPreviewActionSheetItemView_setSelected_animated___block_invoke_2;
      v9[3] = &unk_1E70F0F78;
      v10 = v7;
      [UIView animateWithDuration:v9 animations:0.2];
    }

    else
    {
      v7[2](v7);
    }
  }
}

- (void)_updateLabelFont
{
  v3 = [UIApp preferredContentSizeCategory];
  v4 = 20.0;
  if (([v3 isEqualToString:@"UICTContentSizeCategoryXS"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UICTContentSizeCategoryS") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UICTContentSizeCategoryM") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UICTContentSizeCategoryL") & 1) == 0)
  {
    v4 = 22.0;
    if (([v3 isEqualToString:@"UICTContentSizeCategoryXL"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"UICTContentSizeCategoryXXL"])
      {
        v4 = 23.0;
      }

      else
      {
        v4 = 24.0;
      }
    }
  }

  v5 = [off_1E70ECC18 systemFontOfSize:v4];
  v6 = [(_UIPreviewActionSheetItemView *)self label];
  [v6 setFont:v5];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateTitleFromAction
{
  if (self->_action)
  {
    v3 = [(_UIPreviewActionSheetItemView *)self action];
    v7 = [v3 _effectiveColor];

    v4 = [(_UIPreviewActionSheetItemView *)self label];
    v5 = [(_UIPreviewActionSheetItemView *)self action];
    v6 = [v5 title];
    [v4 setText:v6];

    if (v7)
    {
      [v4 setTextColor:v7];
    }

    [v4 _setTextColorFollowsTintColor:v7 == 0];
  }
}

- (void)_updateImageFromAction
{
  if (self->_action)
  {
    v8 = [(_UIPreviewActionSheetItemView *)self imageView];
    v3 = [(_UIPreviewActionSheetItemView *)self action];
    v4 = [v3 _effectiveColor];
    [v8 setTintColor:v4];

    v5 = [(_UIPreviewActionSheetItemView *)self action];
    v6 = [v5 _effectiveImage];
    v7 = [v6 imageWithRenderingMode:2];
    [v8 setImage:v7];
  }
}

- (void)_updateConstraints
{
  v37 = [(_UIPreviewActionSheetItemView *)self label];
  v3 = [(_UIPreviewActionSheetItemView *)self imageView];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 image];

  v6 = [v37 leadingAnchor];
  v7 = [(UIView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:21.0];

  [v8 setIdentifier:@"labelLeading"];
  LODWORD(v9) = 1132068864;
  [v8 setPriority:v9];
  [v4 addObject:v8];
  if (v5)
  {
    v10 = [v3 trailingAnchor];
    v11 = [(UIView *)self trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:-21.0];

    [v12 setIdentifier:@"imageTrailing"];
    LODWORD(v13) = 1148846080;
    [v12 setPriority:v13];
    [v4 addObject:v12];
    v14 = [v3 leadingAnchor];
    v15 = [v37 trailingAnchor];
    v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:17.0];

    [v16 setIdentifier:@"labelToImageSpacing"];
    LODWORD(v17) = 1132068864;
    [v16 setPriority:v17];
    [v4 addObject:v16];
    v18 = [v37 centerXAnchor];
    v19 = [(UIView *)self centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setIdentifier:@"labelCentering"];
    LODWORD(v21) = 1132068864;
    [v20 setPriority:v21];
    [v4 addObject:v20];
    v22 = [v3 centerYAnchor];
    v23 = [(UIView *)self centerYAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v4 addObject:v24];
  }

  else
  {
    v25 = [v37 trailingAnchor];
    v26 = [(UIView *)self trailingAnchor];
    v12 = [v25 constraintEqualToAnchor:v26 constant:-21.0];

    [v12 setIdentifier:@"labelTrailing"];
    LODWORD(v27) = 1132068864;
    [v12 setPriority:v27];
    [v4 addObject:v12];
    v28 = [v37 centerXAnchor];
    v29 = [(UIView *)self centerXAnchor];
    v16 = [v28 constraintEqualToAnchor:v29];

    [v16 setIdentifier:@"labelCentering"];
    LODWORD(v30) = 1144750080;
    [v16 setPriority:v30];
    [v4 addObject:v16];
  }

  v31 = [v37 firstBaselineAnchor];
  v32 = [(UIView *)self topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:36.0];
  [v4 addObject:v33];

  v34 = [v37 lastBaselineAnchor];
  v35 = [(UIView *)self bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-21.0];
  [v4 addObject:v36];

  [MEMORY[0x1E69977A0] activateConstraints:v4];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

@end