@interface _UIRecentsAccessoryDefaultView
- (CGSize)intrinsicContentSize;
- (_UIRecentsAccessoryDefaultView)init;
- (void)_updateLabelTextColors;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIRecentsAccessoryDefaultView

- (_UIRecentsAccessoryDefaultView)init
{
  v26[2] = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = _UIRecentsAccessoryDefaultView;
  v2 = [(UIView *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(UILabel);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v3;
    v5 = v3;

    v6 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    [(UILabel *)v5 setFont:v6];

    LODWORD(v7) = 1148846080;
    [(UIView *)v5 setContentHuggingPriority:1 forAxis:v7];
    [(UIView *)v5 sizeToFit];
    [(UIView *)v2 addSubview:v5];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:9 relatedBy:0 toItem:v2 attribute:9 multiplier:1.0 constant:0.0];
    v9 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:3 relatedBy:0 toItem:v2 attribute:3 multiplier:1.0 constant:0.0];
    v10 = MEMORY[0x1E69977A0];
    v26[0] = v8;
    v26[1] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [v10 activateConstraints:v11];

    v12 = objc_alloc_init(UILabel);
    subheadLabel = v2->_subheadLabel;
    v2->_subheadLabel = v12;
    v14 = v12;

    v15 = _UINSLocalizedStringWithDefaultValue(@"Select a previously-used email address or enter a new one. To remove one, go to Settings > General.", @"Select a previously-used email address or enter a new one. To remove one, go to Settings > General.");
    [(UILabel *)v14 setText:v15];

    v16 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    [(UILabel *)v14 setFont:v16];

    LODWORD(v17) = 1148846080;
    [(UIView *)v14 setContentHuggingPriority:1 forAxis:v17];
    [(UILabel *)v14 setNumberOfLines:3];
    [(UILabel *)v14 setTextAlignment:1];
    [(UILabel *)v14 setPreferredMaxLayoutWidth:660.0];
    [(UILabel *)v14 setAdjustsFontSizeToFitWidth:1];
    [(UIView *)v14 sizeToFit];
    [(UIView *)v2 addSubview:v14];
    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [MEMORY[0x1E69977A0] constraintWithItem:v14 attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
    v19 = [MEMORY[0x1E69977A0] constraintWithItem:v14 attribute:3 relatedBy:0 toItem:v5 attribute:4 multiplier:1.0 constant:20.0];
    v20 = [MEMORY[0x1E69977A0] constraintWithItem:v14 attribute:4 relatedBy:0 toItem:v2 attribute:4 multiplier:1.0 constant:-20.0];
    v21 = MEMORY[0x1E69977A0];
    v25[0] = v18;
    v25[1] = v19;
    v25[2] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    [v21 activateConstraints:v22];
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_subheadLabel frame];
  v4 = v3;
  [(UILabel *)self->_subheadLabel intrinsicContentSize];
  v6 = v5 + 40.0;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v8 = v6 + v7;
  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  [(_UIRecentsAccessoryDefaultView *)self _updateLabelTextColors];
  v5.receiver = self;
  v5.super_class = _UIRecentsAccessoryDefaultView;
  [(UIView *)&v5 willMoveToWindow:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIRecentsAccessoryDefaultView;
  v4 = a3;
  [(UIView *)&v6 traitCollectionDidChange:v4];
  v5 = [(UIView *)self traitCollection:v6.receiver];
}

- (void)_updateLabelTextColors
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 1000 || v4 == 2)
  {
    v5 = +[UIColor whiteColor];
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  v8 = v5;
  v6 = [(_UIRecentsAccessoryDefaultView *)self titleLabel];
  [v6 setTextColor:v8];

  v7 = [(_UIRecentsAccessoryDefaultView *)self subheadLabel];
  [v7 setTextColor:v8];
}

@end