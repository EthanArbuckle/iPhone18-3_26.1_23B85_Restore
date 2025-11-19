@interface UIKeyboardLayoutDictation
+ (BOOL)keyboardInputMode:(id)a3 supportsResizingOffsetForScreenTraits:(id)a4;
+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5;
- (BOOL)visible;
- (CGRect)dragGestureRectInView:(id)a3;
- (CGSize)splitLeftSize;
- (UIKeyboardLayoutDictation)initWithFrame:(CGRect)a3;
- (unint64_t)_clipCornersOfView:(id)a3;
- (void)layoutSubviews;
- (void)setRenderConfig:(id)a3;
- (void)setupBackgroundViewForNewSplitTraits:(id)a3;
- (void)showKeyboardWithInputTraits:(id)a3 screenTraits:(id)a4 splitTraits:(id)a5;
@end

@implementation UIKeyboardLayoutDictation

- (UIKeyboardLayoutDictation)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UIKeyboardLayoutDictation;
  v3 = [(UIKeyboardLayout *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:1];
    objc_storeStrong(&gDictationLayout, v4);
    v5 = v4;
  }

  return v4;
}

+ (BOOL)keyboardInputMode:(id)a3 supportsResizingOffsetForScreenTraits:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 idiom] == 1 || objc_msgSend(v6, "idiom") == 24 || objc_msgSend(v6, "idiom") == 25 || objc_msgSend(v6, "idiom") == 26 || objc_msgSend(v6, "idiom") == 23)
  {
    v7 = 0;
  }

  else
  {
    v9 = [v6 orientation];
    v7 = 0;
    if (v5 && (v9 - 1) <= 1)
    {
      v10 = KBStarLayoutString(v5);
      v7 = [v10 hasPrefix:@"HWR"];
    }
  }

  return v7;
}

+ (CGSize)keyboardSizeForInputMode:(id)a3 screenTraits:(id)a4 keyboardType:(int64_t)a5
{
  v6 = a4;
  v7 = +[UIDictationController sharedInstance];
  v8 = [v7 keyboardInputModeToReturn];
  v9 = [v8 identifier];

  [UIKeyboardLayoutStar keyboardSizeForInputMode:v9 screenTraits:v6 keyboardType:a5];
  v11 = v10;
  v13 = v12;
  if ([objc_opt_class() keyboardInputMode:v9 supportsResizingOffsetForScreenTraits:v6])
  {
    +[UIKBResizingKeyplaneCoordinator savedResizingOffset];
    v13 = v13 + v14;
  }

  v15 = +[UIKeyboardImpl isSplit];
  if (!+[UIKeyboardImpl showsGlobeAndDictationKeysExternally])
  {
    [v6 keyboardWidth];
    v11 = v16;
  }

  if (v15)
  {
    v13 = 216.0;
  }

  v17 = v11;
  v18 = v13;
  result.height = v18;
  result.width = v17;
  return result;
}

- (BOOL)visible
{
  v2 = [(UIView *)self superview];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)_clipCornersOfView:(id)a3
{
  if (self->_backgroundView == a3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (void)setupBackgroundViewForNewSplitTraits:(id)a3
{
  v42 = a3;
  v4 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v5 = v42;
  if (v4 == 1)
  {
    backgroundView = self->_backgroundView;
    if (v42)
    {
      if (!backgroundView)
      {
        v7 = [UIKBBackgroundView alloc];
        [(UIView *)self bounds];
        v8 = [(UIKBBackgroundView *)v7 initWithFrame:?];
        v9 = self->_backgroundView;
        self->_backgroundView = v8;

        backgroundView = self->_backgroundView;
      }

      [(UIView *)self addSubview:backgroundView];
      [(UIView *)self bounds];
      [(UIView *)self->_backgroundView setFrame:?];
      keyplane = self->_keyplane;
      if (keyplane)
      {
        self->_keyplane = 0;
      }

      v11 = [UIKBTree treeOfType:2];
      v12 = self->_keyplane;
      self->_keyplane = v11;

      [(UIKBTree *)self->_keyplane setVisualStyle:103];
      [(UIKBTree *)self->_keyplane setName:@"iPad-dictation-split"];
      v13 = [UIKBTree treeOfType:3];
      [v13 setName:@"split-left"];
      v14 = +[UIKBShape shape];
      [v42 leftFrame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v14 setFrame:?];
      [v14 setPaddedFrame:{v16, v18, v20, v22}];
      [v13 setShape:v14];
      v23 = [(UIKBTree *)self->_keyplane subtrees];
      [v23 addObject:v13];

      v24 = [objc_opt_self() mainScreen];
      [v24 _boundsForInterfaceOrientation:{-[UIView _keyboardOrientation](self, "_keyboardOrientation")}];
      v26 = v25;

      v27 = [UIKBTree treeOfType:3];
      [v27 setName:@"split-right"];
      [v42 rightFrame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = v26 - v30;
      v35 = +[UIKBShape shape];
      [v35 setFrame:{v34, v29, v31, v33}];
      [v35 setPaddedFrame:{v34, v29, v31, v33}];
      [v27 setShape:v35];
      v36 = [(UIKBTree *)self->_keyplane subtrees];
      [v36 addObject:v27];

      [(UIView *)self setNeedsDisplay];
      [(UIView *)self->_backgroundView setNeedsDisplay];
      v37 = self->_backgroundView;
      v38 = +[UIKeyboardImpl activeInstance];
      v39 = [v38 _inheritedRenderConfig];
      [(UIKBBackgroundView *)v37 setRenderConfig:v39];

      [(UIKBBackgroundView *)self->_backgroundView refreshStyleForKeyplane:self->_keyplane inputTraits:self->super._inputTraits];
      [v13 frame];
      [(UIView *)self->_backgroundView setFrame:0.0, 0.0, v26];
      [(UIView *)self frame];
      v41 = v40;
      [(UIView *)self frame];
      [(UIView *)self setFrame:v41];
    }

    else
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
      v13 = self->_backgroundView;
      self->_backgroundView = 0;
    }

    v5 = v42;
  }
}

- (void)showKeyboardWithInputTraits:(id)a3 screenTraits:(id)a4 splitTraits:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!+[UIKeyboard isModelessActive])
  {
    v23.receiver = self;
    v23.super_class = UIKeyboardLayoutDictation;
    [(UIKeyboardLayout *)&v23 showKeyboardWithInputTraits:v8 screenTraits:v9 splitTraits:v10];
    [(UIKeyboardLayoutDictation *)self setupBackgroundViewForNewSplitTraits:v10];
    v11 = +[UIDictationView sharedInstance];
    [v11 setDisplayDelegate:0];

    v12 = +[UIDictationView sharedInstance];
    [(UIView *)self addSubview:v12];

    v13 = +[UIDictationView sharedInstance];
    [v13 setNeedsLayout];

    v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v15 = [v14 automaticAppearanceEnabled];

    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v16 setAutomaticAppearanceEnabled:1];

    v17 = [(UIView *)self superview];

    if (v17)
    {
      v18 = [(UIView *)self superview];
      [(UIView *)self bounds];
      v21 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v19, v20];
      [v18 _didChangeKeyplaneWithContext:v21];
    }

    v22 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v22 setAutomaticAppearanceEnabled:v15];
  }
}

- (void)setRenderConfig:(id)a3
{
  v8 = a3;
  v4 = +[UIDictationView sharedInstance];
  v5 = [v4 superview];
  v6 = v5;
  if (v5 == self)
  {
    v7 = +[UIDictationController viewMode];

    if (v7 != 2)
    {
      goto LABEL_6;
    }

    v4 = +[UIDictationView sharedInstance];
    [v4 setRenderConfig:v8];
  }

  else
  {
  }

LABEL_6:
  [(UIKBBackgroundView *)self->_backgroundView setRenderConfig:v8];
}

- (void)layoutSubviews
{
  v3 = +[UIDictationView sharedInstance];
  v4 = [v3 superview];

  if (v4 == self)
  {
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = +[UIDictationView sharedInstance];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = +[UIDictationView sharedInstance];
    [v14 setNeedsLayout];

    v15.receiver = self;
    v15.super_class = UIKeyboardLayoutDictation;
    [(UIView *)&v15 layoutSubviews];
  }
}

- (CGSize)splitLeftSize
{
  [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-left"];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)dragGestureRectInView:(id)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end