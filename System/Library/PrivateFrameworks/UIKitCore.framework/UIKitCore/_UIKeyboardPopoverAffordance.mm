@interface _UIKeyboardPopoverAffordance
- (_UIKeyboardPopoverAffordance)initWithFrame:(CGRect)frame;
- (void)updateForBackdropStyle:(int64_t)style;
@end

@implementation _UIKeyboardPopoverAffordance

- (_UIKeyboardPopoverAffordance)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = _UIKeyboardPopoverAffordance;
  v3 = [(UIView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(UIView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    pillView = v3->_pillView;
    v3->_pillView = v9;

    [(UIView *)v3->_pillView setUserInteractionEnabled:1];
    [(UIView *)v3->_pillView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = +[UIKeyboardPopoverContainer pillColor];
    [(UIView *)v3->_pillView setBackgroundColor:v11];

    +[UIKeyboardPopoverContainer pillCornerRadius];
    v13 = v12;
    layer = [(UIView *)v3->_pillView layer];
    [layer setCornerRadius:v13];

    +[UIKeyboardPopoverContainer pillSize];
    v16 = v15;
    v18 = v17;
    [(UIView *)v3 addSubview:v3->_pillView];
    v19 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_pillView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v16];
    [(UIView *)v3 addConstraint:v19];

    v20 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_pillView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v18];
    [(UIView *)v3 addConstraint:v20];

    v21 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_pillView attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(UIView *)v3 addConstraint:v21];

    v22 = MEMORY[0x1E69977A0];
    v23 = v3->_pillView;
    +[UIKeyboardPopoverContainer pillDistanceToEdge];
    v25 = [v22 constraintWithItem:v23 attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:-v24];
    [(UIView *)v3 addConstraint:v25];

    v26 = [[UIView alloc] initWithFrame:v5, v6, v7, v8];
    dragArea = v3->_dragArea;
    v3->_dragArea = v26;

    [(UIView *)v3->_dragArea setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = +[UIColor clearColor];
    [(UIView *)v3->_dragArea setBackgroundColor:v28];

    [(UIView *)v3 addSubview:v3->_dragArea];
    v29 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_dragArea attribute:1 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:0.0];
    [(UIView *)v3 addConstraint:v29];

    v30 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_dragArea attribute:2 relatedBy:0 toItem:v3 attribute:2 multiplier:1.0 constant:0.0];
    [(UIView *)v3 addConstraint:v30];

    v31 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_dragArea attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];
    [(UIView *)v3 addConstraint:v31];

    v32 = [MEMORY[0x1E69977A0] constraintWithItem:v3->_dragArea attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];
    [(UIView *)v3 addConstraint:v32];

    [(UIView *)v3->_dragArea setUserInteractionEnabled:1];
    [(UIView *)v3 setUserInteractionEnabled:1];
  }

  return v3;
}

- (void)updateForBackdropStyle:(int64_t)style
{
  if (style == 3904)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v6 = +[UIColor whiteColor];
      v7 = 0.5;
    }

    else
    {
      v6 = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.6451];
      v7 = 0.8;
    }

    p_pillView = &self->_pillView;
    [(UIView *)self->_pillView setBackgroundColor:v6];

    [(UIView *)self->_pillView setAlpha:v7];
    v11 = MEMORY[0x1E6979CF8];
    if (userInterfaceStyle != 2)
    {
      v11 = MEMORY[0x1E6979CE8];
    }

    v10 = *v11;
  }

  else
  {
    v8 = +[UIKeyboardPopoverContainer pillColor];
    p_pillView = &self->_pillView;
    [(UIView *)self->_pillView setBackgroundColor:v8];

    [(UIView *)self->_pillView setAlpha:1.0];
    v10 = 0;
  }

  layer = [(UIView *)*p_pillView layer];
  [layer setCompositingFilter:v10];
}

@end