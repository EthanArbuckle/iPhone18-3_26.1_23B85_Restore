@interface PUPhotoEditOverlayBadge
- (CGSize)intrinsicContentSize;
- (PUPhotoEditOverlayBadge)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)insets;
- (void)_updateLabel;
- (void)setText:(id)text;
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
  text = [(PUPhotoEditOverlayBadge *)self text];
  [(UILabel *)label setText:text];
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_text != textCopy)
  {
    v8 = textCopy;
    textCopy = [textCopy isEqualToString:?];
    v5 = v8;
    if ((textCopy & 1) == 0)
    {
      v6 = [v8 copy];
      text = self->_text;
      self->_text = v6;

      textCopy = [(PUPhotoEditOverlayBadge *)self _updateLabel];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](textCopy, v5);
}

- (PUPhotoEditOverlayBadge)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25.receiver = self;
  v25.super_class = PUPhotoEditOverlayBadge;
  v7 = [(PUPhotoEditOverlayBadge *)&v25 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(PUPhotoEditOverlayBadge *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(PUPhotoEditOverlayBadge *)v8 layer];
    [layer setCornerRadius:3.0];

    v10 = +[PUInterfaceManager currentTheme];
    photoEditingOverlayBadgeBackgroundColor = [v10 photoEditingOverlayBadgeBackgroundColor];
    [(PUPhotoEditOverlayBadge *)v8 setBackgroundColor:photoEditingOverlayBadgeBackgroundColor];

    v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    label = v8->_label;
    v8->_label = v12;

    v14 = v8->_label;
    photoEditingOverlayBadgeColor = [v10 photoEditingOverlayBadgeColor];
    [(UILabel *)v14 setTextColor:photoEditingOverlayBadgeColor];

    v16 = v8->_label;
    photoEditingOverlayBadgeFont = [v10 photoEditingOverlayBadgeFont];
    [(UILabel *)v16 setFont:photoEditingOverlayBadgeFont];

    [(UILabel *)v8->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_label setText:v8->_text];
    [(PUPhotoEditOverlayBadge *)v8 addSubview:v8->_label];
    array = [MEMORY[0x1E695DF70] array];
    *&v8->_insets.top = xmmword_1B3D0CF50;
    *&v8->_insets.bottom = xmmword_1B3D0CF50;
    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:v8->_label attribute:1 relatedBy:0 toItem:v8 attribute:1 multiplier:1.0 constant:8.0];
    [array addObject:v19];

    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v8->_label attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:v8->_insets.top];
    [array addObject:v20];

    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:2 relatedBy:0 toItem:v8->_label attribute:2 multiplier:1.0 constant:v8->_insets.right];
    [array addObject:v21];

    v22 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v8->_label attribute:4 multiplier:1.0 constant:v8->_insets.bottom];
    [array addObject:v22];

    LODWORD(v23) = 1148846080;
    [(UILabel *)v8->_label setContentCompressionResistancePriority:1 forAxis:v23];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v8;
}

@end