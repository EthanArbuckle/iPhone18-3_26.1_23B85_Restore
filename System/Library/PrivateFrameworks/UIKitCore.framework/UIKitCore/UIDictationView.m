@interface UIDictationView
+ (CGSize)layoutSize;
+ (CGSize)viewSize;
+ (Class)dictationViewClass;
+ (UIDictationView)sharedInstance;
- (BOOL)isShowing;
- (BOOL)visible;
- (CGPoint)backgroundOffset;
- (CGPoint)contentOffset;
- (CGPoint)positionForShow;
- (CGSize)currentScreenSize;
- (UIDictationView)initWithFrame:(CGRect)a3;
- (float)audioLevelForFlamesView:(id)a3;
- (id)endpointButton;
- (void)applicationEnteredBackground;
- (void)dealloc;
- (void)endpointButtonPressed;
- (void)finishReturnToKeyboard;
- (void)keyboardDidShow:(id)a3;
- (void)prepareForReturnToKeyboard;
- (void)removeBackgroundView;
- (void)returnToKeyboard;
@end

@implementation UIDictationView

+ (Class)dictationViewClass
{
  v2 = +[UIDictationController viewMode];
  if (v2 > 1 && ((v2 - 2) < 3 || v2 == 7))
  {
    +[UIDictationController viewMode];
  }

  v3 = objc_opt_class();

  return v3;
}

+ (CGSize)viewSize
{
  v2 = +[UIDictationController viewMode];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v19 = [v18 scene];
      v20 = [v19 screen];
      [v20 bounds];
      v5 = v21;
      v23 = v22;

      v7 = v23 + -200.0;
      goto LABEL_6;
    }

    if (v2 == 1)
    {
      v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v11 = [v10 preferencesActions];
      [v11 rivenSizeFactor:118.0];
      v5 = v12;
      v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v14 = [v13 preferencesActions];
      [v14 rivenSizeFactor:118.0];
      v7 = v15;

      goto LABEL_6;
    }

LABEL_10:
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_6;
  }

  if ((v2 - 2) >= 3)
  {
    if (v2 == 6)
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 bounds];
      v5 = v17;

      v7 = 100.0;
      goto LABEL_6;
    }

    if (v2 != 7)
    {
      goto LABEL_10;
    }
  }

  v3 = +[UIKeyboard activeKeyboard];
  +[UIKeyboardImpl defaultSizeForInterfaceOrientation:](UIKeyboardImpl, "defaultSizeForInterfaceOrientation:", [v3 interfaceOrientation]);
  v5 = v4;
  v7 = v6;

LABEL_6:
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (UIDictationView)sharedInstance
{
  if (MGGetBoolAnswer())
  {
    v3 = objc_opt_class();
    v4 = [a1 dictationViewClass];
    v5 = gDictationViewSharedInstance;
    if (gDictationViewSharedInstance)
    {
      v6 = v3 == v4;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v7 = v4;
      v8 = [a1 dictationViewClass];
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = v8;
      [(objc_class *)v8 layoutSize];
      v11 = v10;
      v13 = v12;
      if (v3 != v7)
      {
        [gDictationViewSharedInstance removeFromSuperview];
      }

      v14 = [[v9 alloc] initWithFrame:{0.0, 0.0, v11, v13}];
      v15 = gDictationViewSharedInstance;
      gDictationViewSharedInstance = v14;

      v5 = gDictationViewSharedInstance;
    }

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (id)endpointButton
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = self->_endpointButton;
  }

  else
  {
    v4 = +[UIKeyboard activeKeyboard];
    v5 = [v4 interfaceOrientation];
    v6 = 3;
    if ((v5 - 1) < 2)
    {
      v6 = 2;
    }

    v3 = *(&self->super.super.super.isa + OBJC_IVAR___UIKeyboardDicationBackground__gradient[v6]);
  }

  return v3;
}

- (CGSize)currentScreenSize
{
  v2 = [objc_opt_self() mainScreen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;

  v7 = +[UIKeyboard activeKeyboard];
  v8 = [v7 interfaceOrientation] - 3;

  if (v8 >= 2)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 2)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)applicationEnteredBackground
{
  [(UIView *)self removeFromSuperview];
  v2 = +[UIPeripheralHost sharedInstance];
  [v2 disableInterfaceAutorotation:0];
}

- (CGPoint)positionForShow
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGSize)layoutSize
{
  +[UIDictationView viewSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)contentOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)backgroundOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)keyboardDidShow:(id)a3
{
  if (self->_keyboardInTransition)
  {
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 disableInterfaceAutorotation:0];

    self->_keyboardInTransition = 0;
  }
}

- (void)prepareForReturnToKeyboard
{
  v3 = +[UIKeyboardImpl activeInstance];
  v2 = [v3 textInteractionAssistant];
  [v2 selectionChanged];
}

- (void)finishReturnToKeyboard
{
  v6 = +[UIDictationController sharedInstance];
  v2 = +[UIKeyboard isModelessActive];
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = v3;
  if (v2)
  {
    if (![v3 isTrackpadMode])
    {
      goto LABEL_6;
    }

    v5 = [v4 _layout];
    [v5 didEndTrackpadModeForServerSideDictation];
  }

  else
  {
    v5 = [v6 keyboardInputModeToReturn];
    [v4 setKeyboardInputMode:v5 userInitiated:0];
  }

LABEL_6:
  [v6 setKeyboardInputModeToReturn:0];
}

- (void)returnToKeyboard
{
  [(UIDictationView *)self prepareForReturnToKeyboard];

  [(UIDictationView *)self finishReturnToKeyboard];
}

- (BOOL)isShowing
{
  v2 = [(UIView *)self superview];
  v3 = v2 != 0;

  return v3;
}

- (UIDictationView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = UIDictationView;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    if (![(UIDictationView *)v3 drawsOwnBackground])
    {
      v5 = [UIKeyboardDicationBackground alloc];
      [(UIView *)v4 bounds];
      v6 = [(UIKeyboardDicationBackground *)v5 initWithFrame:?];
      background = v4->_background;
      v4->_background = v6;

      v8 = [(UIKeyboardDicationBackground *)v4->_background gradient];
      [v8 setDictationView:v4];

      [(UIView *)v4->_background setNeedsDisplay];
      [(UIView *)v4 addSubview:v4->_background];
    }

    v9 = v4;
  }

  return v4;
}

- (void)removeBackgroundView
{
  [(UIView *)self->_background removeFromSuperview];
  v3 = [(UIKeyboardDicationBackground *)self->_background gradient];
  [v3 setDictationView:0];

  background = self->_background;
  self->_background = 0;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationDidEnterBackgroundNotification";
  v6[1] = @"UIKeyboardDidShowNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(UIDictationView *)self removeBackgroundView];
  v5.receiver = self;
  v5.super_class = UIDictationView;
  [(UIView *)&v5 dealloc];
}

- (void)endpointButtonPressed
{
  if (self->_displayDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    displayDelegate = self->_displayDelegate;

    [(UIDictationViewDisplayDelegate *)displayDelegate doneButtonPressed];
  }

  else
  {
    v4 = +[UIDictationController sharedInstance];
    [v4 stopDictation];
  }
}

- (BOOL)visible
{
  v2 = [(UIView *)self window];
  v3 = v2 != 0;

  return v3;
}

- (float)audioLevelForFlamesView:(id)a3
{
  v4 = a3;
  if (self->_displayDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIDictationViewDisplayDelegate *)self->_displayDelegate nextAudioLevel];
    v6 = v5;
  }

  else
  {
    v7 = +[UIDictationController sharedInstance];
    [v7 audioLevel];
    v6 = v8;
  }

  return v6;
}

@end