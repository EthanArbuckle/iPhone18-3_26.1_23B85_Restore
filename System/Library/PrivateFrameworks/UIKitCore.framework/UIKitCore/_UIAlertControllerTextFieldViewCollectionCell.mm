@interface _UIAlertControllerTextFieldViewCollectionCell
- (_UIAlertControllerTextFieldViewCollectionCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_selectButton:(id)button;
- (void)prepareForReuse;
- (void)setTextField:(id)field horizontalMargin:(double)margin;
@end

@implementation _UIAlertControllerTextFieldViewCollectionCell

- (_UIAlertControllerTextFieldViewCollectionCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIAlertControllerTextFieldViewCollectionCell;
  v3 = [(UICollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:sel__selectButton_];
    selectButtonGesture = v3->_selectButtonGesture;
    v3->_selectButtonGesture = v4;

    [(UITapGestureRecognizer *)v3->_selectButtonGesture setAllowedPressTypes:&unk_1EFE2B350];
    [(UIView *)v3 addGestureRecognizer:v3->_selectButtonGesture];
    [(UICollectionReusableView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UICollectionViewCell *)v3 contentView];
    [contentView setAutoresizingMask:18];
  }

  return v3;
}

- (void)setTextField:(id)field horizontalMargin:(double)margin
{
  fieldCopy = field;
  contentView = [(UICollectionViewCell *)self contentView];
  [contentView addSubview:fieldCopy];
  v7 = [MEMORY[0x1E69977A0] constraintWithItem:contentView attribute:8 relatedBy:0 toItem:fieldCopy attribute:8 multiplier:1.0 constant:0.0];
  [contentView addConstraint:v7];

  v8 = [MEMORY[0x1E69977A0] constraintWithItem:fieldCopy attribute:1 relatedBy:0 toItem:contentView attribute:1 multiplier:1.0 constant:margin];
  [contentView addConstraint:v8];

  v9 = [MEMORY[0x1E69977A0] constraintWithItem:fieldCopy attribute:2 relatedBy:0 toItem:contentView attribute:2 multiplier:1.0 constant:-margin];
  [contentView addConstraint:v9];

  v10 = [MEMORY[0x1E69977A0] constraintWithItem:fieldCopy attribute:3 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:0.0];
  [contentView addConstraint:v10];

  textField = self->_textField;
  self->_textField = fieldCopy;
}

- (void)prepareForReuse
{
  textField = [(_UIAlertControllerTextFieldViewCollectionCell *)self textField];
  [textField removeFromSuperview];

  v4.receiver = self;
  v4.super_class = _UIAlertControllerTextFieldViewCollectionCell;
  [(UICollectionViewCell *)&v4 prepareForReuse];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LODWORD(v9) = 1148846080;
  LODWORD(v11) = 1132068864;
  [(UICollectionViewCell *)self systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:v12 verticalFittingPriority:v9, v11];
  v14 = v13;
  v16 = v15;
  v17 = [attributesCopy copy];

  [v17 setFrame:{v6, v8, v14, v16}];
  if (_UISolariumEnabled())
  {
    [v17 setSize:{v14, 48.0}];
  }

  return v17;
}

- (void)_selectButton:(id)button
{
  if ([button state] == 3)
  {
    textField = [(_UIAlertControllerTextFieldViewCollectionCell *)self textField];
    v5TextField = [textField textField];
    [v5TextField becomeFirstResponder];
  }
}

@end