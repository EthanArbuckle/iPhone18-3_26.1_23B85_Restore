@interface PUPhotoEditOverlayBadge
- (CGSize)intrinsicContentSize;
- (PUPhotoEditOverlayBadge)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)insets;
- (void)_updateLabel;
- (void)setText:(id)a3;
@end

@implementation PUPhotoEditOverlayBadge

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_label intrinsicContentSize];
  v4 = v3 + self->_insets.top + self->_insets.bottom;
  v6 = v5 + self->_insets.left + self->_insets.right;
  result.height = v4;
  result.width = v6;
  return result;
}

- (void)_updateLabel
{
  label = self->_label;
  v3 = [(PUPhotoEditOverlayBadge *)self text];
  [(UILabel *)label setText:v3];
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      text = self->_text;
      self->_text = v6;

      v4 = [(PUPhotoEditOverlayBadge *)self _updateLabel];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (PUPhotoEditOverlayBadge)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25.receiver = self;
  v25.super_class = PUPhotoEditOverlayBadge;
  v7 = [(PUPhotoEditOverlayBadge *)&v25 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(PUPhotoEditOverlayBadge *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(PUPhotoEditOverlayBadge *)v8 layer];
    [v9 setCornerRadius:3.0];

    v10 = +[PUInterfaceManager currentTheme];
    v11 = [v10 photoEditingOverlayBadgeBackgroundColor];
    [(PUPhotoEditOverlayBadge *)v8 setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    label = v8->_label;
    v8->_label = v12;

    v14 = v8->_label;
    v15 = [v10 photoEditingOverlayBadgeColor];
    [(UILabel *)v14 setTextColor:v15];

    v16 = v8->_label;
    v17 = [v10 photoEditingOverlayBadgeFont];
    [(UILabel *)v16 setFont:v17];

    [(UILabel *)v8->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_label setText:v8->_text];
    [(PUPhotoEditOverlayBadge *)v8 addSubview:v8->_label];
    v18 = [MEMORY[0x1E695DF70] array];
    *&v8->_insets.top = xmmword_1B3D0CF50;
    *&v8->_insets.bottom = xmmword_1B3D0CF50;
    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v8->_label attribute:1 relatedBy:0 toItem:v8 attribute:1 multiplier:1.0 constant:8.0];
    [v18 addObject:v19];

    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v8->_label attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:v8->_insets.top];
    [v18 addObject:v20];

    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:2 relatedBy:0 toItem:v8->_label attribute:2 multiplier:1.0 constant:v8->_insets.right];
    [v18 addObject:v21];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v8->_label attribute:4 multiplier:1.0 constant:v8->_insets.bottom];
    [v18 addObject:v22];

    LODWORD(v23) = 1148846080;
    [(UILabel *)v8->_label setContentCompressionResistancePriority:1 forAxis:v23];
    [MEMORY[0x1E696ACD8] activateConstraints:v18];
  }

  return v8;
}

@end