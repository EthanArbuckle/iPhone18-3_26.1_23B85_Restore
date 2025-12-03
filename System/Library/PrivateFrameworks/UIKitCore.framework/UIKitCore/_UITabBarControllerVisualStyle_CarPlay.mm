@interface _UITabBarControllerVisualStyle_CarPlay
- (BOOL)shouldSuppressPresses:(id)presses withEvent:(id)event;
- (BOOL)supportsFocusGestures;
- (CGRect)adjustedTabBarFrame:(CGRect)frame;
- (void)_performLeftGesture:(id)gesture;
- (void)_performRightGesture:(id)gesture;
- (void)updateGestureRecognizers;
@end

@implementation _UITabBarControllerVisualStyle_CarPlay

- (void)updateGestureRecognizers
{
  v15.receiver = self;
  v15.super_class = _UITabBarControllerVisualStyle_CarPlay;
  [(_UITabBarControllerVisualStyle *)&v15 updateGestureRecognizers];
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _containerView = [tabBarController _containerView];

  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  traitCollection = [tabBarController2 traitCollection];

  supportsFocusGestures = [(_UITabBarControllerVisualStyle_CarPlay *)self supportsFocusGestures];
  nudgeLeftGestureRecognizer = self->_nudgeLeftGestureRecognizer;
  if (supportsFocusGestures)
  {
    if (!nudgeLeftGestureRecognizer)
    {
      v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performLeftGesture_];
      v10 = self->_nudgeLeftGestureRecognizer;
      self->_nudgeLeftGestureRecognizer = v9;

      [(UIGestureRecognizer *)self->_nudgeLeftGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_nudgeLeftGestureRecognizer setAllowedPressTypes:&unk_1EFE2DBE8];
      [_containerView addGestureRecognizer:self->_nudgeLeftGestureRecognizer];
      v11 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performRightGesture_];
      nudgeRightGestureRecognizer = self->_nudgeRightGestureRecognizer;
      self->_nudgeRightGestureRecognizer = v11;

      [(UIGestureRecognizer *)self->_nudgeRightGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_nudgeRightGestureRecognizer setAllowedPressTypes:&unk_1EFE2DC00];
      [_containerView addGestureRecognizer:self->_nudgeRightGestureRecognizer];
    }
  }

  else if (nudgeLeftGestureRecognizer)
  {
    [_containerView removeGestureRecognizer:?];
    v13 = self->_nudgeLeftGestureRecognizer;
    self->_nudgeLeftGestureRecognizer = 0;

    [_containerView removeGestureRecognizer:self->_nudgeRightGestureRecognizer];
    v14 = self->_nudgeRightGestureRecognizer;
    self->_nudgeRightGestureRecognizer = 0;
  }
}

- (BOOL)supportsFocusGestures
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  traitCollection = [tabBarController traitCollection];

  v4 = ([traitCollection interactionModel] & 2) != 0 || objc_msgSend(traitCollection, "primaryInteractionModel") == 8;
  return v4;
}

- (BOOL)shouldSuppressPresses:(id)presses withEvent:(id)event
{
  if (self->_nudgeLeftGestureRecognizer)
  {
    return _UIPressesContainsPressTypes(presses, &unk_1EFE2DC18);
  }

  else
  {
    return 0;
  }
}

- (void)_performLeftGesture:(id)gesture
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _performFocusGesture:4];
}

- (void)_performRightGesture:(id)gesture
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _performFocusGesture:8];
}

- (CGRect)adjustedTabBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController:frame.origin.x];
  view = [v5 view];
  [view safeAreaInsets];
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