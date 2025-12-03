@interface _UIKeyboardLayoutAlignmentView
+ (BOOL)_shouldIgnoreFrameChangeNotification:(id)notification inView:(id)view;
+ (CGRect)_endFrameForNotification:(id)notification inView:(id)view;
+ (CGRect)_frameInBoundsForKeyboardFrame:(CGRect)frame inView:(id)view;
- (BOOL)_shouldOverrideAnimationForFrameChangeNotification:(id)notification;
- (CGRect)_frameInBoundsForKeyboardFrame:(CGRect)frame;
- (_UIKeyboardLayoutAlignmentView)initWithFrame:(CGRect)frame;
- (void)_createConstraints;
- (void)_matchInitialKeyboardFrame;
- (void)_removeConstraints;
- (void)_startObservingKeyboardNotificationsForScreen:(id)screen;
- (void)_stopObservingKeyboardNotifications;
- (void)_updateConstraintsForKeyboardNotification:(id)notification;
- (void)_updateConstraintsToMatchKeyboardFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setAutomaticKeyboardFrameTrackingDisabled:(BOOL)disabled;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIKeyboardLayoutAlignmentView

- (void)setAutomaticKeyboardFrameTrackingDisabled:(BOOL)disabled
{
  if (self->_automaticKeyboardFrameTrackingDisabled != disabled)
  {
    [(_UIKeyboardLayoutAlignmentView *)self _stopObservingKeyboardNotifications];
    self->_automaticKeyboardFrameTrackingDisabled = disabled;
    if (!disabled)
    {
      window = [(UIView *)self window];
      screen = [window screen];
      [(_UIKeyboardLayoutAlignmentView *)self _startObservingKeyboardNotificationsForScreen:screen];
    }
  }
}

+ (CGRect)_frameInBoundsForKeyboardFrame:(CGRect)frame inView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  superview = [viewCopy superview];
  _window = [viewCopy _window];

  screen = [_window screen];
  coordinateSpace = [screen coordinateSpace];
  [superview convertRect:coordinateSpace fromCoordinateSpace:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [superview bounds];
  v36.origin.x = v21;
  v36.origin.y = v22;
  v36.size.width = v23;
  v36.size.height = v24;
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v34 = CGRectIntersection(v33, v36);
  v25 = v34.origin.x;
  v26 = v34.origin.y;
  v27 = v34.size.width;
  v28 = v34.size.height;
  if (CGRectIsNull(v34))
  {
    v25 = *MEMORY[0x1E695EFF8];
    v26 = *(MEMORY[0x1E695EFF8] + 8);
    v28 = 0.0;
    v27 = v18;
  }

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)_frameInBoundsForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_opt_class();

  [v8 _frameInBoundsForKeyboardFrame:self inView:{x, y, width, height}];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_updateConstraintsToMatchKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  v9[2] = *MEMORY[0x1E69E9840];
  [(NSLayoutConstraint *)self->widthConstraint setConstant:frame.size.width, frame.origin.y];
  [(NSLayoutConstraint *)self->heightConstraint setConstant:height];
  superview = [(UIView *)self superview];

  if (superview)
  {
    v6 = MEMORY[0x1E69977A0];
    disambiguatingLeftConstraint = self->disambiguatingLeftConstraint;
    v9[0] = self->heightConstraint;
    v9[1] = disambiguatingLeftConstraint;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    [v6 activateConstraints:v8];
  }
}

+ (BOOL)_shouldIgnoreFrameChangeNotification:(id)notification inView:(id)view
{
  viewCopy = view;
  userInfo = [notification userInfo];
  v7 = [userInfo objectForKey:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    keyboardSceneDelegate = [viewCopy keyboardSceneDelegate];
    v10 = [keyboardSceneDelegate isOnScreen] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_shouldOverrideAnimationForFrameChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKey:@"UIKeyboardOriginatedFromRotationUserInfoKey"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (CGRect)_endFrameForNotification:(id)notification inView:(id)view
{
  viewCopy = view;
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v9 = [userInfo valueForKey:@"UIKeyboardFrameEndUserInfoKey"];
  [v9 CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  LODWORD(userInfo) = [self _shouldIgnoreFrameChangeNotification:notificationCopy inView:viewCopy];
  if (userInfo)
  {
    window = [viewCopy window];
    +[UIKeyboard sizeForInterfaceOrientation:](UIKeyboard, "sizeForInterfaceOrientation:", [window interfaceOrientation]);
    v15 = v19;
    v17 = v20;

    _window = [viewCopy _window];
    screen = [_window screen];
    [screen bounds];
    v13 = CGRectGetHeight(v35) - v17;
  }

  [self _frameInBoundsForKeyboardFrame:viewCopy inView:{v11, v13, v15, v17}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_updateConstraintsForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (notificationCopy)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo valueForKey:@"UIKeyboardFrameBeginUserInfoKey"];
    [v7 CGRectValue];
    rect2.origin.x = v8;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [objc_opt_class() _endFrameForNotification:v5 inView:self];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    userInfo2 = [v5 userInfo];
    v24 = [userInfo2 valueForKey:@"UIKeyboardAnimationDurationUserInfoKey"];
    [v24 floatValue];
    v26 = v25;

    v27 = [(_UIKeyboardLayoutAlignmentView *)self _shouldOverrideAnimationForFrameChangeNotification:v5];
    v28 = 0.3;
    if (!v27)
    {
      v28 = v26;
    }

    v47 = v28;
    v29 = v16;
    userInfo3 = [v5 userInfo];
    v31 = [userInfo3 valueForKey:@"UIKeyboardAnimationCurveUserInfoKey"];
    integerValue = [v31 integerValue];

    [(_UIKeyboardLayoutAlignmentView *)self _frameInBoundsForKeyboardFrame:rect2.origin.x, v10, v12, v14];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    p_lastKnownKeyboardRect = &self->lastKnownKeyboardRect;
    v56.origin.x = v29;
    v56.origin.y = v18;
    v56.size.width = v20;
    v56.size.height = v22;
    if (!CGRectEqualToRect(self->lastKnownKeyboardRect, v56))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __76___UIKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke;
      aBlock[3] = &unk_1E70F3B20;
      aBlock[4] = self;
      *&aBlock[5] = v29;
      *&aBlock[6] = v18;
      *&aBlock[7] = v20;
      *&aBlock[8] = v22;
      v42 = _Block_copy(aBlock);
      if (!-[_UIKeyboardLayoutAlignmentView _shouldOverrideAnimationForFrameChangeNotification:](self, "_shouldOverrideAnimationForFrameChangeNotification:", v5) && ((v55.origin.x = v34, v55.origin.y = v36, v55.size.width = v38, v55.size.height = v40, v57.origin.x = v29, v57.origin.y = v18, v57.size.width = v20, v57.size.height = v22, CGRectEqualToRect(v55, v57)) || (-[UIView superview](self, "superview"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v45 _is_needsLayout], v45, (v46 & 1) != 0)))
      {
        [UIView performWithoutAnimation:v42];
      }

      else
      {
        *&rect2.origin.y = MEMORY[0x1E69E9820];
        *&rect2.size.width = 3221225472;
        *&rect2.size.height = __76___UIKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_2;
        v49 = &unk_1E71060F8;
        v52 = v47;
        v53 = integerValue;
        selfCopy = self;
        v51 = v42;
        v43 = _Block_copy(&rect2.origin.y);
        if ([(_UIKeyboardLayoutAlignmentView *)self _shouldOverrideAnimationForFrameChangeNotification:v5])
        {
          mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
          [mainRunLoop performBlock:v43];
        }

        else
        {
          v43[2](v43);
        }
      }
    }

    p_lastKnownKeyboardRect->origin.x = v29;
    p_lastKnownKeyboardRect->origin.y = v18;
    p_lastKnownKeyboardRect->size.width = v20;
    p_lastKnownKeyboardRect->size.height = v22;
  }
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  [(_UIKeyboardLayoutAlignmentView *)self _stopObservingKeyboardNotifications];
  screen = [windowCopy screen];

  [(_UIKeyboardLayoutAlignmentView *)self _startObservingKeyboardNotificationsForScreen:screen];
}

- (void)didMoveToWindow
{
  [(_UIKeyboardLayoutAlignmentView *)self _removeConstraints];

  [(_UIKeyboardLayoutAlignmentView *)self _createConstraints];
}

- (void)_createConstraints
{
  v16[2] = *MEMORY[0x1E69E9840];
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:4 relatedBy:0 toItem:superview attribute:4 multiplier:1.0 constant:0.0];
    bottomConstraint = self->bottomConstraint;
    self->bottomConstraint = v4;

    v6 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:7 relatedBy:0 toItem:0 attribute:7 multiplier:1.0 constant:0.0];
    widthConstraint = self->widthConstraint;
    self->widthConstraint = v6;

    v8 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:0.0];
    heightConstraint = self->heightConstraint;
    self->heightConstraint = v8;

    v10 = [MEMORY[0x1E69977A0] constraintWithItem:self attribute:1 relatedBy:0 toItem:superview attribute:1 multiplier:1.0 constant:0.0];
    disambiguatingLeftConstraint = self->disambiguatingLeftConstraint;
    self->disambiguatingLeftConstraint = v10;

    v12 = MEMORY[0x1E69977A0];
    v13 = self->widthConstraint;
    v16[0] = self->bottomConstraint;
    v16[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v12 activateConstraints:v14];

    window = [(UIView *)self window];
    if (window)
    {
      [(_UIKeyboardLayoutAlignmentView *)self _matchInitialKeyboardFrame];
    }
  }
}

- (void)_matchInitialKeyboardFrame
{
  keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
  isOnScreen = [keyboardSceneDelegate isOnScreen];

  if (isOnScreen)
  {
    keyboardSceneDelegate2 = [(UIView *)self keyboardSceneDelegate];
    [keyboardSceneDelegate2 visibleFrameInView:0];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(_UIKeyboardLayoutAlignmentView *)self _frameInBoundsForKeyboardFrame:v7, v9, v11, v13];

    [(_UIKeyboardLayoutAlignmentView *)self _updateConstraintsToMatchKeyboardFrame:?];
  }
}

- (void)_removeConstraints
{
  [(NSLayoutConstraint *)self->bottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->widthConstraint setActive:0];
  [(NSLayoutConstraint *)self->heightConstraint setActive:0];
  [(NSLayoutConstraint *)self->disambiguatingLeftConstraint setActive:0];
  bottomConstraint = self->bottomConstraint;
  self->bottomConstraint = 0;

  widthConstraint = self->widthConstraint;
  self->widthConstraint = 0;

  heightConstraint = self->heightConstraint;
  self->heightConstraint = 0;

  disambiguatingLeftConstraint = self->disambiguatingLeftConstraint;
  self->disambiguatingLeftConstraint = 0;
}

- (_UIKeyboardLayoutAlignmentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardLayoutAlignmentView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)dealloc
{
  [(_UIKeyboardLayoutAlignmentView *)self _stopObservingKeyboardNotifications];
  v3.receiver = self;
  v3.super_class = _UIKeyboardLayoutAlignmentView;
  [(UIView *)&v3 dealloc];
}

- (void)_stopObservingKeyboardNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardPrivateWillChangeFrameNotification" object:0];
}

- (void)_startObservingKeyboardNotificationsForScreen:(id)screen
{
  if (screen)
  {
    v4 = MEMORY[0x1E696AD88];
    screenCopy = screen;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel__keyboardChanged_ name:@"UIKeyboardPrivateWillChangeFrameNotification" object:screenCopy];
  }
}

@end