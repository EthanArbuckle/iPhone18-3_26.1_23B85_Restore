@interface UIKeyboardDockView
+ ($35570C6CB20FD1065279CABE7A6FABE9)_itemFramesForBoundingSize:(SEL)size;
+ (id)dockViewHomeGestureExclusionZones;
+ (int64_t)_currentInterfaceOrientation;
- (UIKeyboardDockView)initWithFrame:(CGRect)frame;
- (UIKeyboardDockViewDelegate)delegate;
- (id)_dockItemWithButton:(id)button;
- (id)_keyboardLayoutView;
- (id)_keyboardLongPressInteractionRegions;
- (void)_configureDockItem:(id)item;
- (void)_dockItemButtonWasTapped:(id)tapped withEvent:(id)event;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCenterDockItem:(id)item;
- (void)setCenterView:(id)view;
- (void)setLeftDockItem:(id)item;
- (void)setRightDockItem:(id)item;
@end

@implementation UIKeyboardDockView

- (void)layoutSubviews
{
  v91.receiver = self;
  v91.super_class = UIKeyboardDockView;
  [(UIView *)&v91 layoutSubviews];
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 valueForPreferenceKey:@"KeyboardDockItemHitAreaReductionPercent"];

  v5 = 1.0;
  if (_os_feature_enabled_impl())
  {
    if (v4)
    {
      [v4 doubleValue];
      v5 = v6 / 100.0;
    }

    else
    {
      v5 = 0.9;
    }
  }

  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v89 = 0u;
  v90 = 0u;
  v83 = 0u;
  v86 = 0u;
  v11 = objc_opt_class();
  if (v11)
  {
    [v11 _itemFramesForBoundingSize:{v8, v10}];
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
    v83 = 0u;
    v86 = 0u;
  }

  v12 = [(UIKeyboardDockView *)self leftDockItem:v83];

  if (v12)
  {
    leftDockItem = [(UIKeyboardDockView *)self leftDockItem];
    button = [leftDockItem button];
    [button setContentMode:4];

    v15 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    leftDockItem2 = [(UIKeyboardDockView *)self leftDockItem];
    button2 = [leftDockItem2 button];
    [button2 setImageEdgeInsets:{v15, v17, v19, v21}];

    leftDockItem3 = [(UIKeyboardDockView *)self leftDockItem];
    image = [leftDockItem3 image];
    [image baselineOffsetFromBottom];
    v27 = v85 + v26;

    leftDockItem4 = [(UIKeyboardDockView *)self leftDockItem];
    button3 = [leftDockItem4 button];
    [button3 setFrame:{v84, v27, v87, v88}];

    leftDockItem5 = [(UIKeyboardDockView *)self leftDockItem];
    button4 = [leftDockItem5 button];
    [button4 setTapActionRegion:{v87 - v5 * (v87 + -12.49376), 0.0, v5 * (v87 + -12.49376), v88 + -6.11907}];
  }

  rightDockItem = [(UIKeyboardDockView *)self rightDockItem];

  if (rightDockItem)
  {
    rightDockItem2 = [(UIKeyboardDockView *)self rightDockItem];
    button5 = [rightDockItem2 button];
    [button5 setContentMode:4];

    v35 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    rightDockItem3 = [(UIKeyboardDockView *)self rightDockItem];
    button6 = [rightDockItem3 button];
    [button6 setImageEdgeInsets:{v35, v37, v39, v41}];

    v44 = *&v89;
    rightDockItem4 = [(UIKeyboardDockView *)self rightDockItem];
    image2 = [rightDockItem4 image];
    [image2 baselineOffsetFromBottom];
    v48 = *(&v89 + 1) + v47;

    rightDockItem5 = [(UIKeyboardDockView *)self rightDockItem];
    identifier = [rightDockItem5 identifier];
    v51 = [identifier isEqualToString:@"keyboardkeyboard"];

    if (v51)
    {
      v44 = *&v89 + -5.0;
    }

    rightDockItem6 = [(UIKeyboardDockView *)self rightDockItem];
    button7 = [rightDockItem6 button];
    [button7 setFrame:{v44, v48, v90}];

    rightDockItem7 = [(UIKeyboardDockView *)self rightDockItem];
    button8 = [rightDockItem7 button];
    [button8 setTapActionRegion:{0.0, 0.0, v5 * (*&v90 + -12.49376), *(&v90 + 1) + -6.11907}];
  }

  centerDockItem = [(UIKeyboardDockView *)self centerDockItem];

  if (centerDockItem)
  {
    centerDockItem2 = [(UIKeyboardDockView *)self centerDockItem];
    button9 = [centerDockItem2 button];
    [button9 setContentMode:4];

    v59 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    centerDockItem3 = [(UIKeyboardDockView *)self centerDockItem];
    button10 = [centerDockItem3 button];
    [button10 setImageEdgeInsets:{v59, v61, v63, v65}];

    centerDockItem4 = [(UIKeyboardDockView *)self centerDockItem];
    image3 = [centerDockItem4 image];
    [image3 baselineOffsetFromBottom];
    v71 = *(&v89 + 1) + v70;

    centerDockItem5 = [(UIKeyboardDockView *)self centerDockItem];
    button11 = [centerDockItem5 button];
    [button11 setFrame:{floor((v8 - *&v90) * 0.5), v71, v90}];

    centerDockItem6 = [(UIKeyboardDockView *)self centerDockItem];
    button12 = [centerDockItem6 button];
    [button12 setTapActionRegion:{0.0, 0.0, *&v90 + -12.49376, *(&v90 + 1) + -6.11907}];
  }

  centerView = [(UIKeyboardDockView *)self centerView];

  if (centerView)
  {
    superview = [(UIView *)self superview];
    [(UIView *)self center];
    [superview convertPoint:self toView:?];
    v79 = v78;
    v81 = v80;

    centerView2 = [(UIKeyboardDockView *)self centerView];
    [centerView2 setCenter:{v79, v81 + 3.0}];
  }
}

+ (int64_t)_currentInterfaceOrientation
{
  v2 = +[UIKeyboard activeKeyboard];
  v3 = v2;
  if (v2)
  {
    interfaceOrientation = [v2 interfaceOrientation];
  }

  else
  {
    interfaceOrientation = [UIApp activeInterfaceOrientation];
  }

  v5 = interfaceOrientation;

  return v5;
}

+ ($35570C6CB20FD1065279CABE7A6FABE9)_itemFramesForBoundingSize:(SEL)size
{
  height = a4.height;
  width = a4.width;
  _currentInterfaceOrientation = [a2 _currentInterfaceOrientation];
  v7 = +[UIKeyboardImpl isFloating];
  if ((_currentInterfaceOrientation - 3) > 1)
  {
    v11 = 33.0;
    if (v7)
    {
      v11 = 18.0;
    }

    v51 = v11;
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v12 preferencesActions];
    handBias = [preferencesActions handBias];
  }

  else
  {
    v8 = +[UIKeyboardImpl isFloating];
    handBias = 0;
    v10 = 30.0;
    if (v8)
    {
      v10 = 18.0;
    }

    v51 = v10;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen _nativePointsPerMillimeter];
  v16 = v15;

  v52 = width;
  v17 = width + -320.0;
  if (+[UIKeyboardImpl isFloating])
  {
    v18 = 2.56127859;
  }

  else
  {
    v18 = 4.96247727;
  }

  v19 = +[UIKeyboardImpl isFloating];
  v20 = 7.04351612;
  if (v19)
  {
    v20 = 5.92295674;
  }

  v21 = v16 * v20;
  v22 = v16 * v20;
  if (handBias == 1)
  {
    UIRoundToScale(v17, 0.0);
    v22 = v23 + 22.0;
  }

  v48 = v22;
  v50 = v18;
  v24 = MillimeterSizeToPointSize(v18);
  v26 = v25;
  v27 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (handBias == 2)
  {
    UIRoundToScale(v17, 0.0);
    v21 = v34 + 22.0;
  }

  v47 = v27 + height - v26 - v51;
  v35 = v24 - (v29 + v33);
  v36 = v26 - (v27 + v31);
  v37 = MillimeterSizeToPointSize(v50);
  v39 = v38;
  v40 = height - v38 - v51;
  v42 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
  v45 = v37 - (v43 + v44);
  retstr->var0.origin.x = v48 - v35 * 0.5;
  retstr->var0.origin.y = v47;
  retstr->var0.size.width = v35;
  retstr->var0.size.height = v36;
  retstr->var1.origin.x = v52 - v45 * 0.5 - v21;
  retstr->var1.origin.y = v42 + v40;
  retstr->var1.size.width = v45;
  retstr->var1.size.height = v39 - (v42 + v46);
  return result;
}

+ (id)dockViewHomeGestureExclusionZones
{
  v12[2] = *MEMORY[0x1E69E9840];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  [self _itemFramesForBoundingSize:{v5, v7}];
  v8 = [MEMORY[0x1E696B098] valueWithCGRect:{0, 0}];
  v12[0] = v8;
  v9 = [MEMORY[0x1E696B098] valueWithCGRect:{0, 0}];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardHandBiasDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardDockView;
  [(UIView *)&v4 dealloc];
}

- (UIKeyboardDockView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIKeyboardDockView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__didReceiveHandBiasChangeNotification_ name:@"UIKeyboardHandBiasDidChangeNotification" object:0];
  }

  return v3;
}

- (void)_dockItemButtonWasTapped:(id)tapped withEvent:(id)event
{
  eventCopy = event;
  v6 = [(UIKeyboardDockView *)self _dockItemWithButton:tapped];
  if (v6)
  {
    delegate = [(UIKeyboardDockView *)self delegate];

    if (delegate)
    {
      delegate2 = [(UIKeyboardDockView *)self delegate];
      [delegate2 keyboardDockView:self didPressDockItem:v6 withEvent:eventCopy];
    }
  }
}

- (void)_configureDockItem:(id)item
{
  itemCopy = item;
  button = [itemCopy button];
  [button addTarget:self action:sel__dockItemButtonWasTapped_withEvent_ forControlEvents:0xFFFFFFFFLL];

  button2 = [itemCopy button];

  [(UIView *)self addSubview:button2];

  [(UIView *)self setNeedsLayout];
}

- (id)_dockItemWithButton:(id)button
{
  buttonCopy = button;
  leftDockItem = [(UIKeyboardDockView *)self leftDockItem];
  button = [leftDockItem button];

  if (button == buttonCopy)
  {
    leftDockItem2 = [(UIKeyboardDockView *)self leftDockItem];
  }

  else
  {
    rightDockItem = [(UIKeyboardDockView *)self rightDockItem];
    button2 = [rightDockItem button];

    if (button2 == buttonCopy)
    {
      leftDockItem2 = [(UIKeyboardDockView *)self rightDockItem];
    }

    else
    {
      centerDockItem = [(UIKeyboardDockView *)self centerDockItem];
      button3 = [centerDockItem button];

      if (button3 != buttonCopy)
      {
        v11 = 0;
        goto LABEL_9;
      }

      leftDockItem2 = [(UIKeyboardDockView *)self centerDockItem];
    }
  }

  v11 = leftDockItem2;
LABEL_9:

  return v11;
}

- (void)setLeftDockItem:(id)item
{
  itemCopy = item;
  if (![(UIKeyboardDockItem *)self->_leftDockItem isEqual:?])
  {
    button = [(UIKeyboardDockItem *)self->_leftDockItem button];
    [button removeFromSuperview];

    objc_storeStrong(&self->_leftDockItem, item);
    [(UIKeyboardDockView *)self _configureDockItem:itemCopy];
  }
}

- (void)setRightDockItem:(id)item
{
  itemCopy = item;
  if (![(UIKeyboardDockItem *)self->_rightDockItem isEqual:?])
  {
    button = [(UIKeyboardDockItem *)self->_rightDockItem button];
    [button removeFromSuperview];

    objc_storeStrong(&self->_rightDockItem, item);
    [(UIKeyboardDockView *)self _configureDockItem:itemCopy];
  }
}

- (void)setCenterDockItem:(id)item
{
  itemCopy = item;
  if (![(UIKeyboardDockItem *)self->_centerDockItem isEqual:?])
  {
    button = [(UIKeyboardDockItem *)self->_centerDockItem button];
    [button removeFromSuperview];

    objc_storeStrong(&self->_centerDockItem, item);
    [(UIKeyboardDockView *)self _configureDockItem:itemCopy];
  }
}

- (void)setCenterView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_centerView isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_centerView removeFromSuperview];
    objc_storeStrong(&self->_centerView, view);
    [(UIView *)self addSubview:viewCopy];
    [(UIView *)self setNeedsLayout];
  }
}

- (id)_keyboardLayoutView
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = +[UIKeyboard activeKeyboard];
  v4 = [v2 isDescendantOfView:v3];

  if (v4)
  {
    _layout = [v2 _layout];
  }

  else
  {
    _layout = 0;
  }

  return _layout;
}

- (id)_keyboardLongPressInteractionRegions
{
  v20[1] = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  memset(&v19, 0, sizeof(v19));
  v16 = 0u;
  v18 = 0u;
  v7 = objc_opt_class();
  if (v7)
  {
    [v7 _itemFramesForBoundingSize:{v4, v6}];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
    v16 = 0u;
    v18 = 0u;
  }

  v8 = [(UIView *)self _rootInputWindowController:v16];
  [v8 _inputViewPadding];
  v10 = v9;

  MaxX = CGRectGetMaxX(v17);
  MinX = CGRectGetMinX(v19);
  v13 = [MEMORY[0x1E696B098] valueWithCGRect:{MaxX, 0.0, MinX - CGRectGetMaxX(v17), v6 + v10 * 0.5}];
  v20[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  return v14;
}

- (UIKeyboardDockViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end