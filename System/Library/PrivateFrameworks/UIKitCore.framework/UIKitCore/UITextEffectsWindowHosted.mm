@interface UITextEffectsWindowHosted
- (BOOL)_isFullscreen;
- (BOOL)_isTextEffectsWindowNotificationOwner;
- (CGRect)actualSceneBounds;
- (CGRect)actualSceneBoundsForLandscape:(BOOL)a3;
- (void)_sceneBoundsDidChange;
- (void)adjustTextEffectsWindowSizeIfNecessary;
@end

@implementation UITextEffectsWindowHosted

- (CGRect)actualSceneBoundsForLandscape:(BOOL)a3
{
  v3 = a3;
  [(UITextEffectsWindow *)self hostedViewSize];
  v7 = v6;
  v8 = v5;
  if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
  {
    v12.receiver = self;
    v12.super_class = UITextEffectsWindowHosted;
    [(UITextEffectsWindow *)&v12 actualSceneBoundsForLandscape:v3];
  }

  else
  {
    v10 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)actualSceneBounds
{
  [(UITextEffectsWindow *)self hostedViewSize];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v10.receiver = self;
    v10.super_class = UITextEffectsWindowHosted;
    [(UITextEffectsWindow *)&v10 actualSceneBounds];
  }

  else
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (BOOL)_isFullscreen
{
  [(UITextEffectsWindow *)self hostedViewSize];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v13.receiver = self;
    v13.super_class = UITextEffectsWindowHosted;
    return [(UITextEffectsWindow *)&v13 _isFullscreen];
  }

  else
  {
    v8 = [(UIWindow *)self screen];
    [v8 _boundsForInterfaceOrientation:{-[UIView _keyboardOrientation](self, "_keyboardOrientation")}];
    v11 = v6 == v10 && v5 == v9;
  }

  return v11;
}

- (void)adjustTextEffectsWindowSizeIfNecessary
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  [(UITextEffectsWindow *)self hostedViewSize];
  if ((*(MEMORY[0x1E695F060] + 8) != v7 || *MEMORY[0x1E695F060] != v6) && v5 != 0)
  {
    [(UITextEffectsWindow *)self hostedViewSize];
    v11 = v10;
    [(UITextEffectsWindow *)self hostedViewSize];
    [(UIWindow *)self setBounds:0.0, 0.0, v11, v12];
    [(UITextEffectsWindow *)self hostedViewOrigin];
    v14 = v13;
    v16 = v15;
    [(UITextEffectsWindow *)self hostedViewSize];

    [(UITextEffectsWindow *)self setFrame:v14, v16, v17, v18];
  }
}

- (void)_sceneBoundsDidChange
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  [(UITextEffectsWindow *)self _sceneBounds];
  v7 = v6;
  [(UITextEffectsWindow *)self hostedViewSize];
  v9 = v7 - v8;
  if (v9 <= 0.0)
  {
    goto LABEL_5;
  }

  [(UITextEffectsWindow *)self hostedViewSize];
  v11 = v10 == *MEMORY[0x1E695F060];
  if (v12 != *(MEMORY[0x1E695F060] + 8))
  {
    v11 = 0;
  }

  if ((v11 | v5))
  {
LABEL_5:
    v9 = 0.0;
  }

  [(UITextEffectsWindow *)self addBottomPadding:v9];
  [(UITextEffectsWindowHosted *)self adjustTextEffectsWindowSizeIfNecessary];
  v35 = 0;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 64;
  [(UIView *)self _notifyGeometryObserversWithChangeInfo:?];
  v13 = [(UITextEffectsWindow *)self rootViewController];
  v14 = [v13 conformsToProtocol:&unk_1F0037730];

  if (v14)
  {
    v15 = [(UITextEffectsWindow *)self rootViewController];
    [v15 hostAppSceneBoundsChanged];
  }

  [(UITextEffectsWindow *)self updateEditingOverlayContainer];
  v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v17 = [v16 visualModeManager];
  v18 = [v17 windowingModeEnabled];

  if (v18)
  {
    v19.receiver = self;
    v19.super_class = UITextEffectsWindowHosted;
    [(UITextEffectsWindow *)&v19 _sceneBoundsDidChange];
  }
}

- (BOOL)_isTextEffectsWindowNotificationOwner
{
  v3 = [(UIWindow *)self windowScene];
  v4 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v3];
  v5 = [v4 useHostedInstance];

  if (v5 & 1) != 0 || ([UIApp _isSpringBoard])
  {
    return 1;
  }

  v7 = [(UIWindow *)self windowScene];
  v8 = [v7 _isKeyWindowScene];

  return v8;
}

@end