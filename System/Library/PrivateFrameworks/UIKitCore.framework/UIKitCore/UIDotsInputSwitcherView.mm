@interface UIDotsInputSwitcherView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIDotsInputSwitcherView)initWithRenderConfig:(id)a3;
- (id)_actionsForKeyboardPositions;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)_addDotViewAtPoint:(CGPoint)a3;
- (void)_handleTap:(id)a3;
- (void)_updateBackgroundColor;
@end

@implementation UIDotsInputSwitcherView

- (UIDotsInputSwitcherView)initWithRenderConfig:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UIDotsInputSwitcherView;
  v5 = [(UIView *)&v21 init];
  if (v5)
  {
    if ([v4 colorAdaptiveBackground])
    {
      v6 = [(UIView *)v5 layer];
      LODWORD(v7) = 1060320051;
      [v6 setOpacity:v7];

      v8 = [(UIView *)v5 layer];
      v9 = [(UIView *)v5 traitCollection];
      v10 = [v9 userInterfaceStyle];
      v11 = MEMORY[0x1E6979CF8];
      if (v10 != 2)
      {
        v11 = MEMORY[0x1E6979CE8];
      }

      [v8 setCompositingFilter:*v11];
    }

    [(UIDotsInputSwitcherView *)v5 _updateBackgroundColor];
    [(UIView *)v5 setClipsToBounds:1];
    [(UIView *)v5 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 46.0, 24.0];
    v12 = [(UIView *)v5 layer];
    [v12 setCornerRadius:12.0];

    [(UIDotsInputSwitcherView *)v5 _addDotViewAtPoint:11.5, 12.0];
    [(UIDotsInputSwitcherView *)v5 _addDotViewAtPoint:23.0, 12.0];
    [(UIDotsInputSwitcherView *)v5 _addDotViewAtPoint:34.5, 12.0];
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel__handleTap_];
    tapGestureRecognizer = v5->_tapGestureRecognizer;
    v5->_tapGestureRecognizer = v13;

    [(UIGestureRecognizer *)v5->_tapGestureRecognizer setDelegate:v5];
    [(UIView *)v5 addGestureRecognizer:v5->_tapGestureRecognizer];
    v15 = [[UIContextMenuInteraction alloc] initWithDelegate:v5];
    contextMenuInteraction = v5->_contextMenuInteraction;
    v5->_contextMenuInteraction = v15;
    v17 = v15;

    [(UIView *)v5 addInteraction:v5->_contextMenuInteraction];
    [(UIView *)v5 setUserInteractionEnabled:1];
    v18 = objc_alloc_init(UIView);
    contextMenuTargettedPreview = v5->_contextMenuTargettedPreview;
    v5->_contextMenuTargettedPreview = v18;

    [(UIView *)v5->_contextMenuTargettedPreview setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 addSubview:v5->_contextMenuTargettedPreview];
    [(UIView *)v5 bounds];
    [(UIView *)v5->_contextMenuTargettedPreview setFrame:?];
  }

  return v5;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self bounds];
  v11 = CGRectInset(v10, -20.0, -10.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__UIDotsInputSwitcherView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v8[3] = &unk_1E7122FB0;
  objc_copyWeak(&v9, &location);
  v6 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __81__UIDotsInputSwitcherView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _actionsForKeyboardPositions];
  v3 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:32 children:v2];

  return v3;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v4 = [_UIContextMenuStyle defaultStyle:a3];
  v5 = v4;
  if (v4)
  {
    [v4 _preferredAnchor];
    v6 = v17;
    [v5 _preferredAnchor];
    v7 = *(&v14 + 1);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    v7 = 0;
    v6 = 0;
  }

  v9 = xmmword_18A6507C0;
  v10 = v6;
  v11 = v7;
  v12 = 0;
  [v5 set_preferredAnchor:&v9];
  [v5 setPreferredLayout:3];

  return v5;
}

- (void)_handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v5 = [(UIDotsInputSwitcherView *)self contextMenuInteraction];
    [(UIView *)self bounds];
    [v5 _presentMenuAtLocation:{v4 * 0.5, 0.0}];
  }
}

- (id)_actionsForKeyboardPositions
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (+[UIKeyboardImpl supportsFloating])
  {
    v3 = _UILocalizedStringInSystemLanguage(@"Floating", @"Floating");
    v4 = [UIImage systemImageNamed:@"inset.filled.bottomright.rectangle"];
    v5 = [UIAction actionWithTitle:v3 image:v4 identifier:0 handler:&__block_literal_global_558];
    if (+[UIKeyboardImpl isFloating])
    {
      [v5 setState:1];
    }

    [v2 addObject:v5];
  }

  v6 = +[UIKeyboard activeKeyboard];
  v7 = [v6 _overrideTextInputTraits];
  v8 = [v7 forceFloatingKeyboard];

  if ((v8 & 1) == 0)
  {
    v9 = _UILocalizedStringInSystemLanguage(@"Full", @"Full");
    v10 = [UIImage systemImageNamed:@"inset.filled.bottomhalf.rectangle"];
    v11 = [UIAction actionWithTitle:v9 image:v10 identifier:0 handler:&__block_literal_global_36_4];
    if (!+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && !+[UIKeyboardImpl isSplit])
    {
      [v11 setState:1];
    }

    [v2 addObject:v11];
    if (+[UIKeyboardImpl rivenPreference])
    {
      v12 = _UILocalizedStringInSystemLanguage(@"Split", @"Split");
      v13 = [UIImage systemImageNamed:@"inset.filled.bottomleft.bottomright.rectangle"];
      v14 = [UIAction actionWithTitle:v12 image:v13 identifier:0 handler:&__block_literal_global_47_4];
      if (+[UIKeyboardImpl isSplit])
      {
        [v14 setState:1];
      }

      [v2 addObject:v14];
    }
  }

  return v2;
}

uint64_t __55__UIDotsInputSwitcherView__actionsForKeyboardPositions__block_invoke()
{
  result = +[UIKeyboardImpl isFloating];
  if ((result & 1) == 0)
  {
    [UIPeripheralHost setFloating:1 onCompletion:0];
    v1 = *MEMORY[0x1E695EFF8];
    v2 = *(MEMORY[0x1E695EFF8] + 8);

    return [UIKBAnalyticsDispatcher floatingKeyboardSummonedEvent:@"Untether" trigger:@"NonInteractive" finalPosition:v1, v2];
  }

  return result;
}

uint64_t __55__UIDotsInputSwitcherView__actionsForKeyboardPositions__block_invoke_2()
{
  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") || (result = +[UIKeyboardImpl isSplit], result))
  {

    return [UIPeripheralHost setFloating:0 onCompletion:&__block_literal_global_39_2];
  }

  return result;
}

void __55__UIDotsInputSwitcherView__actionsForKeyboardPositions__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [UIKeyboardImpl setPersistentSplitProgress:0.0];
    [UIKeyboardImpl setPersistentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    UIKeyboardForceOrderInAutomatic();
  }

  else
  {
    UIKeyboardSetSplit(0);
    v2 = +[UIPeripheralHost sharedInstance];
    v3 = [v2 isUndocked];

    if (v3)
    {
      v4 = *MEMORY[0x1E695EFF8];
      v5 = *(MEMORY[0x1E695EFF8] + 8);

      [UIKeyboardImpl setPersistentOffset:v4, v5];
    }
  }
}

uint64_t __55__UIDotsInputSwitcherView__actionsForKeyboardPositions__block_invoke_4()
{
  result = +[UIKeyboardImpl isSplit];
  if ((result & 1) == 0)
  {

    return [UIView performWithoutAnimation:&__block_literal_global_50_2];
  }

  return result;
}

void __55__UIDotsInputSwitcherView__actionsForKeyboardPositions__block_invoke_6()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 setSplit:1 animated:0];

  v1 = MEMORY[0x1E69E96A0];

  dispatch_async(v1, &__block_literal_global_54_3);
}

void __55__UIDotsInputSwitcherView__actionsForKeyboardPositions__block_invoke_7()
{
  v0 = +[UIPeripheralHost sharedInstance];
  +[UIPeripheralHost defaultUndockedOffset];
  [v0 setUndockedWithOffset:0 animated:?];
}

- (void)_updateBackgroundColor
{
  v6 = [(UIView *)self traitCollection];
  if ([v6 userInterfaceStyle] == 2)
  {
    v3 = 0.16;
    v4 = 1.0;
  }

  else
  {
    v3 = 0.1;
    v4 = 0.0;
  }

  v5 = [UIColor colorWithWhite:v4 alpha:v3];
  [(UIView *)self setBackgroundColor:v5];
}

- (void)_addDotViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(UIView);
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v6 setFrame:x + -3.7, y + -3.7, 7.4, 7.4];
  [(UIView *)v6 setClipsToBounds:1];
  v7 = [(UIView *)v6 layer];
  [v7 setCornerRadius:3.7];

  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceStyle];
  v10 = 0.0;
  if (v9 == 2)
  {
    v10 = 1.0;
  }

  v11 = [UIColor colorWithWhite:v10 alpha:0.5];
  [(UIView *)v6 setBackgroundColor:v11];

  v14[0] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = [(UIView *)v6 registerForTraitChanges:v12 withHandler:&__block_literal_global_60_2];

  [(UIView *)self addSubview:v6];
}

void __46__UIDotsInputSwitcherView__addDotViewAtPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [v2 traitCollection];
  v3 = [v6 userInterfaceStyle];
  v4 = 0.0;
  if (v3 == 2)
  {
    v4 = 1.0;
  }

  v5 = [UIColor colorWithWhite:v4 alpha:0.5];
  [v2 setBackgroundColor:v5];
}

@end