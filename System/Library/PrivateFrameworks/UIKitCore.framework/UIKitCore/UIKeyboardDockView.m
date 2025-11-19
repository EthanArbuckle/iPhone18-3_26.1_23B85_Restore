@interface UIKeyboardDockView
+ ($35570C6CB20FD1065279CABE7A6FABE9)_itemFramesForBoundingSize:(SEL)a3;
+ (id)dockViewHomeGestureExclusionZones;
+ (int64_t)_currentInterfaceOrientation;
- (UIKeyboardDockView)initWithFrame:(CGRect)a3;
- (UIKeyboardDockViewDelegate)delegate;
- (id)_dockItemWithButton:(id)a3;
- (id)_keyboardLayoutView;
- (id)_keyboardLongPressInteractionRegions;
- (void)_configureDockItem:(id)a3;
- (void)_dockItemButtonWasTapped:(id)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCenterDockItem:(id)a3;
- (void)setCenterView:(id)a3;
- (void)setLeftDockItem:(id)a3;
- (void)setRightDockItem:(id)a3;
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
    v13 = [(UIKeyboardDockView *)self leftDockItem];
    v14 = [v13 button];
    [v14 setContentMode:4];

    v15 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(UIKeyboardDockView *)self leftDockItem];
    v23 = [v22 button];
    [v23 setImageEdgeInsets:{v15, v17, v19, v21}];

    v24 = [(UIKeyboardDockView *)self leftDockItem];
    v25 = [v24 image];
    [v25 baselineOffsetFromBottom];
    v27 = v85 + v26;

    v28 = [(UIKeyboardDockView *)self leftDockItem];
    v29 = [v28 button];
    [v29 setFrame:{v84, v27, v87, v88}];

    v30 = [(UIKeyboardDockView *)self leftDockItem];
    v31 = [v30 button];
    [v31 setTapActionRegion:{v87 - v5 * (v87 + -12.49376), 0.0, v5 * (v87 + -12.49376), v88 + -6.11907}];
  }

  v32 = [(UIKeyboardDockView *)self rightDockItem];

  if (v32)
  {
    v33 = [(UIKeyboardDockView *)self rightDockItem];
    v34 = [v33 button];
    [v34 setContentMode:4];

    v35 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [(UIKeyboardDockView *)self rightDockItem];
    v43 = [v42 button];
    [v43 setImageEdgeInsets:{v35, v37, v39, v41}];

    v44 = *&v89;
    v45 = [(UIKeyboardDockView *)self rightDockItem];
    v46 = [v45 image];
    [v46 baselineOffsetFromBottom];
    v48 = *(&v89 + 1) + v47;

    v49 = [(UIKeyboardDockView *)self rightDockItem];
    v50 = [v49 identifier];
    v51 = [v50 isEqualToString:@"keyboardkeyboard"];

    if (v51)
    {
      v44 = *&v89 + -5.0;
    }

    v52 = [(UIKeyboardDockView *)self rightDockItem];
    v53 = [v52 button];
    [v53 setFrame:{v44, v48, v90}];

    v54 = [(UIKeyboardDockView *)self rightDockItem];
    v55 = [v54 button];
    [v55 setTapActionRegion:{0.0, 0.0, v5 * (*&v90 + -12.49376), *(&v90 + 1) + -6.11907}];
  }

  v56 = [(UIKeyboardDockView *)self centerDockItem];

  if (v56)
  {
    v57 = [(UIKeyboardDockView *)self centerDockItem];
    v58 = [v57 button];
    [v58 setContentMode:4];

    v59 = _UIKBGetDockItemTouchPaddingForCurrentDevice();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = [(UIKeyboardDockView *)self centerDockItem];
    v67 = [v66 button];
    [v67 setImageEdgeInsets:{v59, v61, v63, v65}];

    v68 = [(UIKeyboardDockView *)self centerDockItem];
    v69 = [v68 image];
    [v69 baselineOffsetFromBottom];
    v71 = *(&v89 + 1) + v70;

    v72 = [(UIKeyboardDockView *)self centerDockItem];
    v73 = [v72 button];
    [v73 setFrame:{floor((v8 - *&v90) * 0.5), v71, v90}];

    v74 = [(UIKeyboardDockView *)self centerDockItem];
    v75 = [v74 button];
    [v75 setTapActionRegion:{0.0, 0.0, *&v90 + -12.49376, *(&v90 + 1) + -6.11907}];
  }

  v76 = [(UIKeyboardDockView *)self centerView];

  if (v76)
  {
    v77 = [(UIView *)self superview];
    [(UIView *)self center];
    [v77 convertPoint:self toView:?];
    v79 = v78;
    v81 = v80;

    v82 = [(UIKeyboardDockView *)self centerView];
    [v82 setCenter:{v79, v81 + 3.0}];
  }
}

+ (int64_t)_currentInterfaceOrientation
{
  v2 = +[UIKeyboard activeKeyboard];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 interfaceOrientation];
  }

  else
  {
    v4 = [UIApp activeInterfaceOrientation];
  }

  v5 = v4;

  return v5;
}

+ ($35570C6CB20FD1065279CABE7A6FABE9)_itemFramesForBoundingSize:(SEL)a3
{
  height = a4.height;
  width = a4.width;
  v6 = [a2 _currentInterfaceOrientation];
  v7 = +[UIKeyboardImpl isFloating];
  if ((v6 - 3) > 1)
  {
    v11 = 33.0;
    if (v7)
    {
      v11 = 18.0;
    }

    v51 = v11;
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    v9 = [v13 handBias];
  }

  else
  {
    v8 = +[UIKeyboardImpl isFloating];
    v9 = 0;
    v10 = 30.0;
    if (v8)
    {
      v10 = 18.0;
    }

    v51 = v10;
  }

  v14 = [objc_opt_self() mainScreen];
  [v14 _nativePointsPerMillimeter];
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
  if (v9 == 1)
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
  if (v9 == 2)
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
  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [a1 _itemFramesForBoundingSize:{v5, v7}];
  v8 = [MEMORY[0x1E696B098] valueWithCGRect:{0, 0}];
  v12[0] = v8;
  v9 = [MEMORY[0x1E696B098] valueWithCGRect:{0, 0}];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardHandBiasDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardDockView;
  [(UIView *)&v4 dealloc];
}

- (UIKeyboardDockView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIKeyboardDockView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__didReceiveHandBiasChangeNotification_ name:@"UIKeyboardHandBiasDidChangeNotification" object:0];
  }

  return v3;
}

- (void)_dockItemButtonWasTapped:(id)a3 withEvent:(id)a4
{
  v9 = a4;
  v6 = [(UIKeyboardDockView *)self _dockItemWithButton:a3];
  if (v6)
  {
    v7 = [(UIKeyboardDockView *)self delegate];

    if (v7)
    {
      v8 = [(UIKeyboardDockView *)self delegate];
      [v8 keyboardDockView:self didPressDockItem:v6 withEvent:v9];
    }
  }
}

- (void)_configureDockItem:(id)a3
{
  v4 = a3;
  v5 = [v4 button];
  [v5 addTarget:self action:sel__dockItemButtonWasTapped_withEvent_ forControlEvents:0xFFFFFFFFLL];

  v6 = [v4 button];

  [(UIView *)self addSubview:v6];

  [(UIView *)self setNeedsLayout];
}

- (id)_dockItemWithButton:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardDockView *)self leftDockItem];
  v6 = [v5 button];

  if (v6 == v4)
  {
    v12 = [(UIKeyboardDockView *)self leftDockItem];
  }

  else
  {
    v7 = [(UIKeyboardDockView *)self rightDockItem];
    v8 = [v7 button];

    if (v8 == v4)
    {
      v12 = [(UIKeyboardDockView *)self rightDockItem];
    }

    else
    {
      v9 = [(UIKeyboardDockView *)self centerDockItem];
      v10 = [v9 button];

      if (v10 != v4)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v12 = [(UIKeyboardDockView *)self centerDockItem];
    }
  }

  v11 = v12;
LABEL_9:

  return v11;
}

- (void)setLeftDockItem:(id)a3
{
  v6 = a3;
  if (![(UIKeyboardDockItem *)self->_leftDockItem isEqual:?])
  {
    v5 = [(UIKeyboardDockItem *)self->_leftDockItem button];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_leftDockItem, a3);
    [(UIKeyboardDockView *)self _configureDockItem:v6];
  }
}

- (void)setRightDockItem:(id)a3
{
  v6 = a3;
  if (![(UIKeyboardDockItem *)self->_rightDockItem isEqual:?])
  {
    v5 = [(UIKeyboardDockItem *)self->_rightDockItem button];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_rightDockItem, a3);
    [(UIKeyboardDockView *)self _configureDockItem:v6];
  }
}

- (void)setCenterDockItem:(id)a3
{
  v6 = a3;
  if (![(UIKeyboardDockItem *)self->_centerDockItem isEqual:?])
  {
    v5 = [(UIKeyboardDockItem *)self->_centerDockItem button];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_centerDockItem, a3);
    [(UIKeyboardDockView *)self _configureDockItem:v6];
  }
}

- (void)setCenterView:(id)a3
{
  v5 = a3;
  if (([(UIView *)self->_centerView isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_centerView removeFromSuperview];
    objc_storeStrong(&self->_centerView, a3);
    [(UIView *)self addSubview:v5];
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
    v5 = [v2 _layout];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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