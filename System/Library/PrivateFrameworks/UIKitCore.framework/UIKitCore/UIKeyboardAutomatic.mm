@interface UIKeyboardAutomatic
+ (id)sharedInstance;
- (BOOL)isActive;
- (UIKeyboardAutomatic)initWithFrame:(CGRect)a3;
- (UIPeripheralAnimationGeometry)geometryForHeightDelta:(SEL)a3;
- (void)activate;
- (void)dealloc;
- (void)didSuspend:(id)a3;
- (void)implBoundsHeightChangeDone:(double)a3 suppressNotification:(BOOL)a4;
- (void)maximize;
- (void)minimize;
- (void)prepareForImplBoundsHeightChange:(double)a3 suppressNotification:(BOOL)a4;
- (void)willResume:(id)a3;
@end

@implementation UIKeyboardAutomatic

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__UIKeyboardAutomatic_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49AE68 != -1)
  {
    dispatch_once(&qword_1ED49AE68, block);
  }

  v2 = _MergedGlobals_7_12;

  return v2;
}

void __37__UIKeyboardAutomatic_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = [v1 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v3 = _MergedGlobals_7_12;
  _MergedGlobals_7_12 = v2;
}

- (BOOL)isActive
{
  v6.receiver = self;
  v6.super_class = UIKeyboardAutomatic;
  if (![(UIKeyboard *)&v6 isActive])
  {
    return 0;
  }

  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 responder];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = UIKeyboardAutomaticIsOnScreen();
  }

  return v4;
}

- (void)activate
{
  v3 = +[UIKeyboard activeKeyboard];
  if (!v3 || [(UIKeyboardAutomatic *)self isActive])
  {

LABEL_4:
    v6.receiver = self;
    v6.super_class = UIKeyboardAutomatic;
    [(UIKeyboard *)&v6 activate];
    return;
  }

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 automaticAppearanceReallyEnabled];

  if (v5)
  {
    goto LABEL_4;
  }
}

- (UIKeyboardAutomatic)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIKeyboardAutomatic;
  v3 = [(UIKeyboard *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v4 addObserver:v3 selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationWillEnterForegroundNotification";
  v6[1] = @"UIApplicationDidEnterBackgroundNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIKeyboardAutomatic;
  [(UIKeyboard *)&v5 dealloc];
}

- (void)minimize
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 minimize];
}

- (void)maximize
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 maximize];
}

- (UIPeripheralAnimationGeometry)geometryForHeightDelta:(SEL)a3
{
  v27 = +[UIPeripheralHost sharedInstance];
  *&retstr->transform.a = 0u;
  *&retstr->transform.c = 0u;
  *&retstr->transform.tx = 0u;
  retstr->targetFrameHeightDelta = 0.0;
  v7 = [(UIView *)self _keyboardOrientation];
  retstr->bounds.origin.x = 0.0;
  retstr->bounds.origin.y = 0.0;
  [UIKeyboard sizeForInterfaceOrientation:v7];
  v9 = v8;
  v11 = v10;
  retstr->bounds.size.width = v8;
  retstr->bounds.size.height = v10;
  v12 = [v27 inputViews];
  v13 = [v12 inputAccessoryView];

  if (v13)
  {
    v14 = [v27 inputViews];
    v15 = [v14 inputAccessoryView];
    [v15 frame];
    v11 = v11 + v16;
    retstr->bounds.size.height = v11;
  }

  v17 = [v27 containerWindow];
  [v17 bounds];
  v19 = v18;

  v20 = v9 * 0.5;
  v21 = v19 - v11 * 0.5;
  retstr->inPosition.x = v20;
  retstr->inPosition.y = v21;
  retstr->outPosition.x = v20;
  retstr->outPosition.y = v21 + a4;
  if ([(UIKeyboard *)self isMinimized])
  {
    retstr->inPosition.y = v11 + v21;
    retstr->outPosition.y = v11 + v21 + a4;
  }

  if ([v27 isUndocked])
  {
    [v27 adjustedPersistentOffset];
    CGAffineTransformMakeTranslation(&retstr->transform, v22, v23);
  }

  else
  {
    v24 = MEMORY[0x1E695EFD0];
    v25 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->transform.a = *MEMORY[0x1E695EFD0];
    *&retstr->transform.c = v25;
    *&retstr->transform.tx = *(v24 + 32);
  }

  retstr->targetFrameHeightDelta = a4;

  return result;
}

- (void)prepareForImplBoundsHeightChange:(double)a3 suppressNotification:(BOOL)a4
{
  if (!a4)
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v6 inputViews];
    v8 = [v7 inputView];

    if (v8)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      [(UIKeyboardAutomatic *)self geometryForHeightDelta:a3];
      v9 = +[UIPeripheralHost sharedInstance];
      v10[4] = v16;
      v10[5] = v17;
      v10[6] = v18;
      v11 = v19;
      v10[0] = v12;
      v10[1] = v13;
      v10[2] = v14;
      v10[3] = v15;
      [v9 postWillShowNotificationForGeometry:v10 duration:0.0];
    }
  }
}

- (void)implBoundsHeightChangeDone:(double)a3 suppressNotification:(BOOL)a4
{
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v8 = [v7 inputViews];
  v9 = [v8 inputView];

  if (v9)
  {
    self->super.m_respondingToImplGeometryChange = 1;
    [(UIView *)self frame];
    [(UIKeyboard *)self setFrame:?];
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    [(UIKeyboardAutomatic *)self geometryForHeightDelta:a3];
    self->super.m_respondingToImplGeometryChange = 0;
    if (!a4)
    {
      v10 = +[UIPeripheralHost sharedInstance];
      v11[4] = v17;
      v11[5] = v18;
      v11[6] = v19;
      v12 = v20;
      v11[0] = v13;
      v11[1] = v14;
      v11[2] = v15;
      v11[3] = v16;
      [v10 postDidShowNotificationForGeometry:v11];
    }
  }
}

- (void)willResume:(id)a3
{
  v33 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = +[UIKeyboard activeKeyboard];
  v5 = v4;
  if (v4 != self)
  {

LABEL_3:
    if (+[UIKeyboard usesInputSystemUI])
    {
      v6 = +[UIKeyboard activeKeyboard];

      if (v6 == self)
      {
        [(UIKeyboardAutomatic *)self activate];
      }
    }

    goto LABEL_20;
  }

  v7 = [(UIKeyboard *)self window];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [UIKeyboardImpl suppressSetPersistentOffset:1];
  if (v8)
  {
    [v8 frame];
    v10 = v9;
    v12 = v11;
    [(UIView *)self frame];
    if (v10 != v14 || v12 != v13)
    {
      [v8 frame];
      v18 = [UIKBKeyplaneChangeContext keyplaneChangeContextWithSize:v16, v17];
      [(UIKeyboard *)self _didChangeKeyplaneWithContext:v18];
    }
  }

  [(UIKeyboardAutomatic *)self activate];
  v19 = +[UIPeripheralHost sharedInstance];
  v20 = [v33 responder];
  if ([v20 _requiresKeyboardWhenFirstResponder])
  {
    [v33 updateRenderConfigForCurrentResponder];
    v21 = +[UIKeyboardImpl activeInstance];

    [v21 setReceivedCandidatesInCurrentInputMode:{-[UIKeyboardAutomatic receivedCandidatesInCurrentInputMode](self, "receivedCandidatesInCurrentInputMode")}];
    [v21 setShowsCandidateBar:{-[UIKeyboardAutomatic showsCandidateBar](self, "showsCandidateBar")}];
    [v21 setShowsCandidateInline:{-[UIKeyboardAutomatic showsCandidateInline](self, "showsCandidateInline")}];
    [v21 setDelegate:0];
    v22 = [v20 _keyboardResponder];
    [v21 setDelegate:v22];

    if ([v21 _shouldSuppressSoftwareKeyboard])
    {
      v23 = 1;
    }

    else
    {
      v23 = [v21 _shouldMinimizeForHardwareKeyboard];
    }

    [(UIKeyboard *)self setMinimized:v23];
    [v19 moveToPersistentOffset];
    [v19 setKeyboardOnScreenNotifyKey:{-[UIKeyboard isMinimized](self, "isMinimized") ^ 1}];
    v24 = +[UIKeyboardInputModeController sharedInputModeController];
    [v24 _trackInputModeIfNecessary:v20];

    v25 = [(UIKeyboardAutomatic *)self lastMatchedSupplementalCandidate];
    [v21 setLastMatchedSupplementalCandidate:v25];

    v26 = [(UIKeyboardAutomatic *)self pendingSupplementalCandidateToInsert];
    [v21 setPendingSupplementalCandidateToInsert:v26];

    [v21 setLastChooseSupplementalItemToInsertCallbackIdentifier:{-[UIKeyboardAutomatic lastChooseSupplementalItemToInsertCallbackIdentifier](self, "lastChooseSupplementalItemToInsertCallbackIdentifier")}];
  }

  else
  {
    [v33 forceOrderOutAutomaticExceptAccessoryView];
    v21 = v8;
  }

  [UIKeyboardImpl suppressSetPersistentOffset:0];
  [v33 _updateContainerWindowLevel];

LABEL_20:
  if ([(UIKeyboard *)self isMinimized])
  {
    v27 = +[UIKeyboardImpl activeInstance];
    if (v27)
    {
      v28 = v27;
      v29 = +[UIKeyboardImpl activeInstance];
      if ([v29 _shouldSuppressSoftwareKeyboard])
      {
      }

      else
      {
        v30 = +[UIKeyboardImpl activeInstance];
        v31 = [v30 _shouldMinimizeForHardwareKeyboard];

        if ((v31 & 1) == 0)
        {
          self->super.m_minimized = 0;
          [v33 maximizeWithAnimation:0];
        }
      }
    }
  }

  v32 = [(UIKeyboardAutomatic *)self blinkAssertion];
  [v32 invalidate];

  [(UIKeyboardAutomatic *)self setBlinkAssertion:0];
}

- (void)didSuspend:(id)a3
{
  v9 = +[UIKeyboardImpl activeInstance];
  -[UIKeyboardAutomatic setReceivedCandidatesInCurrentInputMode:](self, "setReceivedCandidatesInCurrentInputMode:", [v9 receivedCandidatesInCurrentInputMode]);
  -[UIKeyboardAutomatic setShowsCandidateBar:](self, "setShowsCandidateBar:", [v9 showsCandidateBar]);
  -[UIKeyboardAutomatic setShowsCandidateInline:](self, "setShowsCandidateInline:", [v9 showsCandidateInline]);
  v4 = [v9 lastMatchedSupplementalCandidate];
  [(UIKeyboardAutomatic *)self setLastMatchedSupplementalCandidate:v4];

  v5 = [v9 pendingSupplementalCandidateToInsert];
  [(UIKeyboardAutomatic *)self setPendingSupplementalCandidateToInsert:v5];

  -[UIKeyboardAutomatic setLastChooseSupplementalItemToInsertCallbackIdentifier:](self, "setLastChooseSupplementalItemToInsertCallbackIdentifier:", [v9 lastChooseSupplementalItemToInsertCallbackIdentifier]);
  if ([v9 caretBlinks])
  {
    v6 = [v9 _activeAssertionController];
    v7 = [v6 nonBlinkingAssertionWithReason:@"UIKeyboardAutomatic Suspend/Resume"];
    [(UIKeyboardAutomatic *)self setBlinkAssertion:v7];
  }

  v8 = +[UIPeripheralHost sharedInstance];
  [v8 setKeyboardOnScreenNotifyKey:0];
}

@end