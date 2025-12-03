@interface _UIPreviewActionSheetItemView
- (UIImageView)imageView;
- (UILabel)label;
- (_UIPreviewActionSheetItemView)initWithCoder:(id)coder;
- (_UIPreviewActionSheetItemView)initWithFrame:(CGRect)frame action:(id)action;
- (void)_updateConstraints;
- (void)_updateImageFromAction;
- (void)_updateLabelFont;
- (void)_updateTitleFromAction;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation _UIPreviewActionSheetItemView

- (_UIPreviewActionSheetItemView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetItemView;
  return [(UIView *)&v4 initWithCoder:coder];
}

- (_UIPreviewActionSheetItemView)initWithFrame:(CGRect)frame action:(id)action
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  v22.receiver = self;
  v22.super_class = _UIPreviewActionSheetItemView;
  height = [(UIView *)&v22 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    v12 = height;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__contentSizeChanged_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];

    [(_UIPreviewActionSheetItemView *)v12 setAction:actionCopy];
    [(_UIPreviewActionSheetItemView *)v12 _updateLabelFont];
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIPreviewActionSheetItemView;
  [(UIView *)&v4 dealloc];
}

- (void)setAction:(id)action
{
  actionCopy = action;
  if (self->_action != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_action, action);
    [(_UIPreviewActionSheetItemView *)self _updateTitleFromAction];
    [(_UIPreviewActionSheetItemView *)self _updateImageFromAction];
    [(_UIPreviewActionSheetItemView *)self _updateConstraints];
    actionCopy = v6;
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(_UIPreviewActionSheetItemView *)self selected]!= selected)
  {
    [(_UIPreviewActionSheetItemView *)self setSelected:selectedCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54___UIPreviewActionSheetItemView_setSelected_animated___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
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
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  v4 = 20.0;
  if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXS"] & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", @"UICTContentSizeCategoryS") & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", @"UICTContentSizeCategoryM") & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", @"UICTContentSizeCategoryL") & 1) == 0)
  {
    v4 = 22.0;
    if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXL"] & 1) == 0)
    {
      if ([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXL"])
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
  label = [(_UIPreviewActionSheetItemView *)self label];
  [label setFont:v5];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)_updateTitleFromAction
{
  if (self->_action)
  {
    action = [(_UIPreviewActionSheetItemView *)self action];
    _effectiveColor = [action _effectiveColor];

    label = [(_UIPreviewActionSheetItemView *)self label];
    action2 = [(_UIPreviewActionSheetItemView *)self action];
    title = [action2 title];
    [label setText:title];

    if (_effectiveColor)
    {
      [label setTextColor:_effectiveColor];
    }

    [label _setTextColorFollowsTintColor:_effectiveColor == 0];
  }
}

- (void)_updateImageFromAction
{
  if (self->_action)
  {
    imageView = [(_UIPreviewActionSheetItemView *)self imageView];
    action = [(_UIPreviewActionSheetItemView *)self action];
    _effectiveColor = [action _effectiveColor];
    [imageView setTintColor:_effectiveColor];

    action2 = [(_UIPreviewActionSheetItemView *)self action];
    _effectiveImage = [action2 _effectiveImage];
    v7 = [_effectiveImage imageWithRenderingMode:2];
    [imageView setImage:v7];
  }
}

- (void)_updateConstraints
{
  label = [(_UIPreviewActionSheetItemView *)self label];
  imageView = [(_UIPreviewActionSheetItemView *)self imageView];
  array = [MEMORY[0x1E695DF70] array];
  image = [imageView image];

  leadingAnchor = [label leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:21.0];

  [v8 setIdentifier:@"labelLeading"];
  LODWORD(v9) = 1132068864;
  [v8 setPriority:v9];
  [array addObject:v8];
  if (image)
  {
    trailingAnchor = [imageView trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-21.0];

    [v12 setIdentifier:@"imageTrailing"];
    LODWORD(v13) = 1148846080;
    [v12 setPriority:v13];
    [array addObject:v12];
    leadingAnchor3 = [imageView leadingAnchor];
    trailingAnchor3 = [label trailingAnchor];
    v16 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:17.0];

    [v16 setIdentifier:@"labelToImageSpacing"];
    LODWORD(v17) = 1132068864;
    [v16 setPriority:v17];
    [array addObject:v16];
    centerXAnchor = [label centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

    [v20 setIdentifier:@"labelCentering"];
    LODWORD(v21) = 1132068864;
    [v20 setPriority:v21];
    [array addObject:v20];
    centerYAnchor = [imageView centerYAnchor];
    centerYAnchor2 = [(UIView *)self centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v24];
  }

  else
  {
    trailingAnchor4 = [label trailingAnchor];
    trailingAnchor5 = [(UIView *)self trailingAnchor];
    v12 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-21.0];

    [v12 setIdentifier:@"labelTrailing"];
    LODWORD(v27) = 1132068864;
    [v12 setPriority:v27];
    [array addObject:v12];
    centerXAnchor3 = [label centerXAnchor];
    centerXAnchor4 = [(UIView *)self centerXAnchor];
    v16 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

    [v16 setIdentifier:@"labelCentering"];
    LODWORD(v30) = 1144750080;
    [v16 setPriority:v30];
    [array addObject:v16];
  }

  firstBaselineAnchor = [label firstBaselineAnchor];
  topAnchor = [(UIView *)self topAnchor];
  v33 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:36.0];
  [array addObject:v33];

  lastBaselineAnchor = [label lastBaselineAnchor];
  bottomAnchor = [(UIView *)self bottomAnchor];
  v36 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-21.0];
  [array addObject:v36];

  [MEMORY[0x1E69977A0] activateConstraints:array];
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