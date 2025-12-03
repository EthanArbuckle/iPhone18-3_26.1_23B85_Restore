@interface _UIDatePickerOverlayPlatterView
- (CGRect)contentBounds;
- (CGSize)preferredContentSize;
- (CGSize)preferredPlatterSize;
- (_UIDatePickerOverlayPlatterView)initWithDatePicker:(id)picker accessoryView:(id)view;
- (void)datePickerTransitionAnimation;
- (void)datePickerTransitionCompletion;
- (void)layoutSubviews;
- (void)prepareDatePickerTransitionWithDatePicker:(id)picker;
- (void)replaceDatePicker:(id)picker;
- (void)setContentBounds:(CGRect)bounds;
- (void)updateConstraints;
@end

@implementation _UIDatePickerOverlayPlatterView

- (_UIDatePickerOverlayPlatterView)initWithDatePicker:(id)picker accessoryView:(id)view
{
  pickerCopy = picker;
  viewCopy = view;
  v23.receiver = self;
  v23.super_class = _UIDatePickerOverlayPlatterView;
  v8 = [(UIView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setUserInteractionEnabled:1];
    [(UIView *)v9 setClipsToBounds:0];
    layer = [(UIView *)v9 layer];
    [layer setAllowsGroupOpacity:0];

    _style = [pickerCopy _style];
    [_style overlayPlatterCornerRadius];
    v13 = v12;

    v14 = [(_UIRoundedRectShadowView *)[_UICutoutShadowView alloc] initWithCornerRadius:v13];
    [(UIView *)v14 setUserInteractionEnabled:0];
    [(UIView *)v9 bounds];
    [(_UIRoundedRectShadowView *)v14 frameWithContentWithFrame:?];
    [(UIImageView *)v14 setFrame:?];
    _style2 = [pickerCopy _style];
    -[UIImageView setHidden:](v14, "setHidden:", [_style2 overlayPlatterWantsShadowView] ^ 1);

    [(UIView *)v9 addSubview:v14];
    shadowView = v9->_shadowView;
    v9->_shadowView = &v14->super;
    v17 = v14;

    _style3 = [pickerCopy _style];
    createOverlayBackgroundView = [_style3 createOverlayBackgroundView];

    [(UIView *)v9 addSubview:createOverlayBackgroundView];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = createOverlayBackgroundView;
    v21 = createOverlayBackgroundView;

    objc_storeStrong(&v9->_accessoryView, view);
    [(_UIDatePickerOverlayPlatterView *)v9 replaceDatePicker:pickerCopy];
  }

  return v9;
}

- (void)replaceDatePicker:(id)picker
{
  v21[2] = *MEMORY[0x1E69E9840];
  pickerCopy = picker;
  [pickerCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [pickerCopy setLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  objc_storeStrong(&self->_datePicker, picker);
  _style = [pickerCopy _style];
  datePickerStyle = self->_datePickerStyle;
  self->_datePickerStyle = _style;

  accessoryView = [(_UIDatePickerOverlayPlatterView *)self accessoryView];

  if (accessoryView)
  {
    v9 = [UIStackView alloc];
    v21[0] = pickerCopy;
    accessoryView2 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
    v21[1] = accessoryView2;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v12 = [(UIStackView *)v9 initWithArrangedSubviews:v11];

    [(UIView *)v12 setAxis:1];
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    datePickerStyle = [(_UIDatePickerOverlayPlatterView *)self datePickerStyle];
    backgroundView = [(_UIDatePickerOverlayPlatterView *)self backgroundView];
    [datePickerStyle addSubview:v12 toOverlayBackgroundView:backgroundView];

    contentView = self->_contentView;
    self->_contentView = v12;
  }

  else
  {
    datePickerStyle2 = [(_UIDatePickerOverlayPlatterView *)self datePickerStyle];
    datePicker = self->_datePicker;
    backgroundView2 = [(_UIDatePickerOverlayPlatterView *)self backgroundView];
    [datePickerStyle2 addSubview:datePicker toOverlayBackgroundView:backgroundView2];

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
    widthAnchor = [(UIView *)self->_contentView widthAnchor];
    v8 = [widthAnchor constraintEqualToConstant:v4];
    contentWidthConstraint = self->_contentWidthConstraint;
    self->_contentWidthConstraint = v8;

    heightAnchor = [(UIView *)self->_contentView heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:v6];
    contentHeightConstraint = self->_contentHeightConstraint;
    self->_contentHeightConstraint = v11;

    datePicker = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    _style = [datePicker _style];

    datePicker2 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    [datePicker2 _appliedInsetsToEdgeOfContent];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    datePicker3 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    [_style overlayPlatterPaddingForAppliedInsets:objc_msgSend(datePicker3 datePickerMode:{"datePickerMode"), v16, v18, v20, v22}];
    v25 = v24;
    v27 = v26;

    v28 = MEMORY[0x1E69977A0];
    contentWidthConstraint = [(_UIDatePickerOverlayPlatterView *)self contentWidthConstraint];
    v40[0] = contentWidthConstraint;
    contentHeightConstraint = [(_UIDatePickerOverlayPlatterView *)self contentHeightConstraint];
    v40[1] = contentHeightConstraint;
    leftAnchor = [(UIView *)self->_contentView leftAnchor];
    leftAnchor2 = [(UIView *)self leftAnchor];
    v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v25];
    v40[2] = v33;
    topAnchor = [(UIView *)self->_contentView topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v27];
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
  shadowView = [(_UIDatePickerOverlayPlatterView *)self shadowView];
  [(UIView *)self bounds];
  [shadowView frameWithContentWithFrame:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  shadowView2 = [(_UIDatePickerOverlayPlatterView *)self shadowView];
  [shadowView2 setFrame:{v5, v7, v9, v11}];
}

- (CGSize)preferredContentSize
{
  _style = [(UIDatePicker *)self->_datePicker _style];
  datePicker = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  [_style idealLayoutFittingSizeForDatePickerMode:{objc_msgSend(datePicker, "datePickerMode")}];
  v6 = v5;
  v8 = v7;

  datePicker2 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  if ([datePicker2 datePickerMode])
  {
    datePicker3 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
    datePickerMode = [datePicker3 datePickerMode];

    if (datePickerMode != 3)
    {
      [(NSLayoutConstraint *)self->_contentWidthConstraint setActive:0];
      [(NSLayoutConstraint *)self->_contentHeightConstraint setActive:0];
      datePicker4 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
      LODWORD(v13) = 1148846080;
      LODWORD(v14) = 1112014848;
      [datePicker4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v13, v14}];
      v6 = v15;
      v8 = v16;

      [(NSLayoutConstraint *)self->_contentWidthConstraint setActive:1];
      [(NSLayoutConstraint *)self->_contentHeightConstraint setActive:1];
    }
  }

  else
  {
  }

  accessoryView = [(_UIDatePickerOverlayPlatterView *)self accessoryView];

  if (accessoryView)
  {
    accessoryView2 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
    [accessoryView2 sizeToFit];

    accessoryView3 = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
    [accessoryView3 bounds];
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
  datePicker = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  [datePicker _appliedInsetsToEdgeOfContent];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  datePicker2 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  _style = [datePicker2 _style];

  [_style overlayPlatterDefaultMargin];
  v19 = v18;
  [_style overlayPlatterDefaultMargin];
  v21 = v20 + v20 - (v9 + v13);
  if ([(_UIDatePickerOverlayPlatterView *)self accessoryViewIgnoresDefaultInsets])
  {
    accessoryView = [(_UIDatePickerOverlayPlatterView *)self accessoryView];

    if (accessoryView)
    {
      [_style overlayPlatterDefaultMargin];
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

- (void)setContentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  self->_contentBounds = bounds;
  datePicker = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  _style = [datePicker _style];

  [_style overlayPlatterDefaultMargin];
  v29 = v7;
  [_style overlayPlatterDefaultMargin];
  v28 = v8;
  [_style overlayPlatterDefaultMargin];
  v10 = v9;
  [_style overlayPlatterDefaultMargin];
  v12 = v11;
  datePicker2 = [(_UIDatePickerOverlayPlatterView *)self datePicker];
  [datePicker2 _appliedInsetsToEdgeOfContent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  accessoryView = [(_UIDatePickerOverlayPlatterView *)self accessoryView];
  if (accessoryView)
  {
    v23 = accessoryView;
    accessoryViewIgnoresDefaultInsets = [(_UIDatePickerOverlayPlatterView *)self accessoryViewIgnoresDefaultInsets];

    if (accessoryViewIgnoresDefaultInsets)
    {
      [_style overlayPlatterDefaultMargin];
      v19 = v25;
    }
  }

  contentWidthConstraint = [(_UIDatePickerOverlayPlatterView *)self contentWidthConstraint];
  [contentWidthConstraint setConstant:width - (v28 - v17 + v12 - v21)];

  contentHeightConstraint = [(_UIDatePickerOverlayPlatterView *)self contentHeightConstraint];
  [contentHeightConstraint setConstant:height - (v29 - v15 + v10 - v19)];

  [(UIView *)self layoutIfNeeded];
}

- (void)prepareDatePickerTransitionWithDatePicker:(id)picker
{
  pickerCopy = picker;
  previousContentView = [(_UIDatePickerOverlayPlatterView *)self previousContentView];
  [previousContentView removeFromSuperview];

  [(UIDatePicker *)self->_datePicker resignFirstResponder];
  if (pickerCopy)
  {
    contentView = [(_UIDatePickerOverlayPlatterView *)self contentView];
    previousContentView = self->_previousContentView;
    self->_previousContentView = contentView;

    [pickerCopy setAlpha:0.0];
    [(_UIDatePickerOverlayPlatterView *)self replaceDatePicker:pickerCopy];
  }
}

- (void)datePickerTransitionAnimation
{
  previousContentView = [(_UIDatePickerOverlayPlatterView *)self previousContentView];

  if (previousContentView)
  {
    previousContentView2 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];
    [previousContentView2 setAlpha:0.0];

    contentView = [(_UIDatePickerOverlayPlatterView *)self contentView];
    [contentView setAlpha:1.0];
  }
}

- (void)datePickerTransitionCompletion
{
  previousContentView = [(_UIDatePickerOverlayPlatterView *)self previousContentView];

  if (previousContentView)
  {
    previousContentView2 = [(_UIDatePickerOverlayPlatterView *)self previousContentView];
    [previousContentView2 removeFromSuperview];

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