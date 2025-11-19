@interface _UITabBarControllerVisualStyle_CarPlay
- (BOOL)shouldSuppressPresses:(id)a3 withEvent:(id)a4;
- (BOOL)supportsFocusGestures;
- (CGRect)adjustedTabBarFrame:(CGRect)a3;
- (void)_performLeftGesture:(id)a3;
- (void)_performRightGesture:(id)a3;
- (void)updateGestureRecognizers;
@end

@implementation _UITabBarControllerVisualStyle_CarPlay

- (void)updateGestureRecognizers
{
  v15.receiver = self;
  v15.super_class = _UITabBarControllerVisualStyle_CarPlay;
  [(_UITabBarControllerVisualStyle *)&v15 updateGestureRecognizers];
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [v3 _containerView];

  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [v5 traitCollection];

  v7 = [(_UITabBarControllerVisualStyle_CarPlay *)self supportsFocusGestures];
  nudgeLeftGestureRecognizer = self->_nudgeLeftGestureRecognizer;
  if (v7)
  {
    if (!nudgeLeftGestureRecognizer)
    {
      v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performLeftGesture_];
      v10 = self->_nudgeLeftGestureRecognizer;
      self->_nudgeLeftGestureRecognizer = v9;

      [(UIGestureRecognizer *)self->_nudgeLeftGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_nudgeLeftGestureRecognizer setAllowedPressTypes:&unk_1EFE2DBE8];
      [v4 addGestureRecognizer:self->_nudgeLeftGestureRecognizer];
      v11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performRightGesture_];
      nudgeRightGestureRecognizer = self->_nudgeRightGestureRecognizer;
      self->_nudgeRightGestureRecognizer = v11;

      [(UIGestureRecognizer *)self->_nudgeRightGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_nudgeRightGestureRecognizer setAllowedPressTypes:&unk_1EFE2DC00];
      [v4 addGestureRecognizer:self->_nudgeRightGestureRecognizer];
    }
  }

  else if (nudgeLeftGestureRecognizer)
  {
    [v4 removeGestureRecognizer:?];
    v13 = self->_nudgeLeftGestureRecognizer;
    self->_nudgeLeftGestureRecognizer = 0;

    [v4 removeGestureRecognizer:self->_nudgeRightGestureRecognizer];
    v14 = self->_nudgeRightGestureRecognizer;
    self->_nudgeRightGestureRecognizer = 0;
  }
}

- (BOOL)supportsFocusGestures
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [v2 traitCollection];

  v4 = ([v3 interactionModel] & 2) != 0 || objc_msgSend(v3, "primaryInteractionModel") == 8;
  return v4;
}

- (BOOL)shouldSuppressPresses:(id)a3 withEvent:(id)a4
{
  if (self->_nudgeLeftGestureRecognizer)
  {
    return _UIPressesContainsPressTypes(a3, &unk_1EFE2DC18);
  }

  else
  {
    return 0;
  }
}

- (void)_performLeftGesture:(id)a3
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v3 _performFocusGesture:4];
}

- (void)_performRightGesture:(id)a3
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v3 _performFocusGesture:8];
}

- (CGRect)adjustedTabBarFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController:a3.origin.x];
  v6 = [v5 view];
  [v6 safeAreaInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = width - v10 - v12;
  v14 = v10;
  v15 = v8;
  v16 = height;
  result.size.height = v16;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end