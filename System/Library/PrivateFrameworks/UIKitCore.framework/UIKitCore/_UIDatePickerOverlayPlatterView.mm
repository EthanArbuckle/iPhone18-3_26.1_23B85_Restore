@interface _UIDatePickerOverlayPlatterView
- (CGRect)contentBounds;
- (CGSize)preferredContentSize;
- (CGSize)preferredPlatterSize;
- (_UIDatePickerOverlayPlatterView)initWithDatePicker:(id)a3 accessoryView:(id)a4;
- (void)datePickerTransitionAnimation;
- (void)datePickerTransitionCompletion;
- (void)layoutSubviews;
- (void)prepareDatePickerTransitionWithDatePicker:(id)a3;
- (void)replaceDatePicker:(id)a3;
- (void)setContentBounds:(CGRect)a3;
- (void)updateConstraints;
@end

@implementation _UIDatePickerOverlayPlatterView

- (_UIDatePickerOverlayPlatterView)initWithDatePicker:(id)a3 accessoryView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = _UIDatePickerOverlayPlatterView;
  v8 = [(UIView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setUserInteractionEnabled:1];
    [(UIView *)v9 setClipsToBounds:0];
    v10 = [(UIView *)v9 layer];
    [v10 setAllowsGroupOpacity:0];

    v11 = [v6 _style];
    [v11 overlayPlatterCornerRadius];
    v13 = v12;

    v14 = [(_UIRoundedRectShadowView *)[_UICutoutShadowView alloc] initWithCornerRadius:v13];
    [(UIView *)v14 setUserInteractionEnabled:0];
    [(UIView *)v9 bounds];
    [(_UIRoundedRectShadowView *)v14 frameWithContentWithFrame:?];
    [(UIImageView *)v14 setFrame:?];
    v15 = [v6 _style];
    -[UIImageView setHidden:](v14, "setHidden:", [v15 overlayPlatterWantsShadowView] ^ 1);

    [(UIView *)v9 addSubview:v14];
    shadowView = v9->_shadowView;
    v9->_shadowView = &v14->super;
    v17 = v14;

    v18 = [v6 _style];
    v19 = [v18 createOverlayBackgroundView];

    [(UIView *)v9 addSubview:v19];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v19;
    v21 = v19;

    objc_storeStrong(&v9->_accessoryView, a4);
    [(_UIDatePickerOverlayPlatterView *)v9 replaceDatePicker:v6];
  }

  return v9;
}

- (void)replaceDatePicker:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  objc_storeStrong(&self->_datePicker, a3);
  v6 = [v5 _style];
  datePickerStyle = self->_datePickerStyle;
  self->_datePickerStyle = v6;

  v8 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];

  if (v8)
  {
    v9 = [UIStackView alloc];
    v21[0] = v5;
    v10 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
    v21[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v12 = [(UIStackView *)v9 initWithArrangedSubviews:v11];

    [(UIView *)v12 setAxis:1];
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(_UIDatePickerOverlayPlatterView *)self datePickerStyle];
    v14 = [(_UIDatePickerOverlayPlatterView *)self backgroundView];
    [v13 addSubview:v12 toOverlayBackgroundView:v14];

    contentView = self->_contentView;
    self->_contentView = v12;
  }

  else
  {
    v16 = [(_UIDatePickerOverlayPlatterView *)self datePickerStyle];
    datePicker = self->_datePicker;
    v18 = [(_UIDatePickerOverlayPlatterView *)self backgroundView];
    [v16 addSubview:datePicker toOverlayBackgroundView:v18];

    objc_storeStrong(&self->_contentView, self->_datePicker);
  }

  contentWidthConstraint = self->_contentWidthConstraint;
  self->_contentWidthConstraint = 0;

  contentHeightConstraint = self->_contentHeightConstraint;
  self->_contentHeightConstraint = 0;

  [(UIView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = _UIDatePickerOverlayPlatterView;
  [(UIView *)&v39 updateConstraints];
  if (!self->_contentWidthConstraint)
  {
    [(_UIDatePickerOverlayPlatterView *)self preferredContentSize];
    v4 = v3;
    v6 = v5;
    v7 = [(UIView *)self->_contentView widthAnchor];
    v8 = [v7 constraintEqualToConstant:v4];
    contentWidthConstraint = self->_contentWidthConstraint;
    self->_contentWidthConstraint = v8;

    v10 = [(UIView *)self->_contentView heightAnchor];
    v11 = [v10 constraintEqualToConstant:v6];
    contentHeightConstraint = self->_contentHeightConstraint;
    self->_contentHeightConstraint = v11;

    v13 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    v38 = [v13 _style];

    v14 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    [v14 _appliedInsetsToEdgeOfContent];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    [v38 overlayPlatterPaddingForAppliedInsets:objc_msgSend(v23 datePickerMode:{"datePickerMode"), v16, v18, v20, v22}];
    v25 = v24;
    v27 = v26;

    v28 = MEMORY[0x1E69977A0];
    v29 = [(_UIDatePickerOverlayPlatterView *)self contentWidthConstraint];
    v40[0] = v29;
    v30 = [(_UIDatePickerOverlayPlatterView *)self contentHeightConstraint];
    v40[1] = v30;
    v31 = [(UIView *)self->_contentView leftAnchor];
    v32 = [(UIView *)self leftAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:v25];
    v40[2] = v33;
    v34 = [(UIView *)self->_contentView topAnchor];
    v35 = [(UIView *)self topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:v27];
    v40[3] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
    [v28 activateConstraints:v37];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _UIDatePickerOverlayPlatterView;
  [(UIView *)&v13 layoutSubviews];
  v3 = [(_UIDatePickerOverlayPlatterView *)self shadowView];
  [(UIView *)self bounds];
  [v3 frameWithContentWithFrame:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_UIDatePickerOverlayPlatterView *)self shadowView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)preferredContentSize
{
  v3 = [(UIDatePicker *)self->_datePicker _style];
  v4 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  [v3 idealLayoutFittingSizeForDatePickerMode:{objc_msgSend(v4, "datePickerMode")}];
  v6 = v5;
  v8 = v7;

  v9 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  if ([v9 datePickerMode])
  {
    v10 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    v11 = [v10 datePickerMode];

    if (v11 != 3)
    {
      [(NSLayoutConstraint *)self->_contentWidthConstraint setActive:0];
      [(NSLayoutConstraint *)self->_contentHeightConstraint setActive:0];
      v12 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
      LODWORD(v13) = 1148846080;
      LODWORD(v14) = 1112014848;
      [v12 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v13, v14}];
      v6 = v15;
      v8 = v16;

      [(NSLayoutConstraint *)self->_contentWidthConstraint setActive:1];
      [(NSLayoutConstraint *)self->_contentHeightConstraint setActive:1];
    }
  }

  else
  {
  }

  v17 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];

  if (v17)
  {
    v18 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
    [v18 sizeToFit];

    v19 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
    [v19 bounds];
    v8 = v8 + CGRectGetHeight(v23);
  }

  v20 = v6;
  v21 = v8;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)preferredPlatterSize
{
  [UIViewController _horizontalContentMarginForView:self];
  [(_UIDatePickerOverlayPlatterView *)self preferredContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  [v7 _appliedInsetsToEdgeOfContent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  v17 = [v16 _style];

  [v17 overlayPlatterDefaultMargin];
  v19 = v18;
  [v17 overlayPlatterDefaultMargin];
  v21 = v20 + v20 - (v9 + v13);
  if ([(_UIDatePickerOverlayPlatterView *)self accessoryViewIgnoresDefaultInsets])
  {
    v22 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];

    if (v22)
    {
      [v17 overlayPlatterDefaultMargin];
      v21 = v21 - (v23 - v13);
    }
  }

  [(UIView *)self _currentScreenScale];
  v25 = UISizeRoundToScale(v4 + v19 + v19 - (v11 + v15), v6 + v21, v24);
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)setContentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  self->_contentBounds = a3;
  v6 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  v30 = [v6 _style];

  [v30 overlayPlatterDefaultMargin];
  v29 = v7;
  [v30 overlayPlatterDefaultMargin];
  v28 = v8;
  [v30 overlayPlatterDefaultMargin];
  v10 = v9;
  [v30 overlayPlatterDefaultMargin];
  v12 = v11;
  v13 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  [v13 _appliedInsetsToEdgeOfContent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
  if (v22)
  {
    v23 = v22;
    v24 = [(_UIDatePickerOverlayPlatterView *)self accessoryViewIgnoresDefaultInsets];

    if (v24)
    {
      [v30 overlayPlatterDefaultMargin];
      v19 = v25;
    }
  }

  v26 = [(_UIDatePickerOverlayPlatterView *)self contentWidthConstraint];
  [v26 setConstant:width - (v28 - v17 + v12 - v21)];

  v27 = [(_UIDatePickerOverlayPlatterView *)self contentHeightConstraint];
  [v27 setConstant:height - (v29 - v15 + v10 - v19)];

  [(UIView *)self layoutIfNeeded];
}

- (void)prepareDatePickerTransitionWithDatePicker:(id)a3
{
  v7 = a3;
  v4 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];
  [v4 removeFromSuperview];

  [(UIDatePicker *)self->_datePicker resignFirstResponder];
  if (v7)
  {
    v5 = [(_UIDatePickerOverlayPlatterView *)self contentView];
    previousContentView = self->_previousContentView;
    self->_previousContentView = v5;

    [v7 setAlpha:0.0];
    [(_UIDatePickerOverlayPlatterView *)self replaceDatePicker:v7];
  }
}

- (void)datePickerTransitionAnimation
{
  v3 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];

  if (v3)
  {
    v4 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];
    [v4 setAlpha:0.0];

    v5 = [(_UIDatePickerOverlayPlatterView *)self contentView];
    [v5 setAlpha:1.0];
  }
}

- (void)datePickerTransitionCompletion
{
  v3 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];

  if (v3)
  {
    v4 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];
    [v4 removeFromSuperview];

    previousContentView = self->_previousContentView;
    self->_previousContentView = 0;
  }
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end