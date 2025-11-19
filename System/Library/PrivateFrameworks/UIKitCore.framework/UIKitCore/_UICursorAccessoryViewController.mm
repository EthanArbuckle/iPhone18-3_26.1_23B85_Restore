@interface _UICursorAccessoryViewController
- ($1945D2EFE1244E2A91EF2AFFF7F2C6FE)_contentForAccessory:(SEL)a3;
- (CGRect)cursorRect;
- (UIColor)accessoryTintColor;
- (_UICursorAccessoryViewController)init;
- (_UICursorAccessoryViewControllerDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4 fromView:(id)a5;
- (void)_setSelectionRect:(CGRect)a3 preferredPlacement:(unint64_t)a4 animated:(BOOL)a5;
- (void)_updateSelectionRectAnimated:(BOOL)a3;
- (void)configureItemView:(id)a3 forAccessoryIdentifier:(id)a4;
- (void)didTapToActivateAccessoryWithIdentifier:(id)a3;
- (void)loadView;
- (void)setAccessories:(id)a3 animated:(BOOL)a4;
- (void)setAccessoryTintColor:(id)a3;
- (void)setCursorRect:(CGRect)a3;
- (void)setSelectionRects:(id)a3;
- (void)setVisible:(BOOL)a3 animationStyle:(int64_t)a4 completion:(id)a5;
@end

@implementation _UICursorAccessoryViewController

- (_UICursorAccessoryViewController)init
{
  v5.receiver = self;
  v5.super_class = _UICursorAccessoryViewController;
  v2 = [(UIViewController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(_UICursorAccessoryViewController *)v2 setVisible:0 animationStyle:0];
  }

  return v3;
}

- (void)loadView
{
  v3 = [[_UICursorAccessoryHostView alloc] initWithCursorItemDataSource:self];
  hostView = self->_hostView;
  self->_hostView = v3;

  v5 = self->_hostView;

  [(UIViewController *)self setView:v5];
}

- (UIColor)accessoryTintColor
{
  v2 = [(_UICursorAccessoryHostView *)self->_hostView cursorAccessoryView];
  v3 = [v2 tintColor];

  return v3;
}

- (void)_setSelectionRect:(CGRect)a3 preferredPlacement:(unint64_t)a4 animated:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a5 && self->_visible)
  {
    v11 = CGRectEqualToRect(a3, *MEMORY[0x1E695F058]);
    [(_UICursorAccessoryHostView *)self->_hostView setSelectionRect:x, y, width, height];
    [(_UICursorAccessoryHostView *)self->_hostView setPreferredPlacementEdge:a4];
    if (!v11)
    {
      v12 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.13];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __82___UICursorAccessoryViewController__setSelectionRect_preferredPlacement_animated___block_invoke;
      v14[3] = &unk_1E70F3590;
      v14[4] = self;
      [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:v14 completion:0];
    }
  }

  else
  {
    [(_UICursorAccessoryHostView *)self->_hostView setSelectionRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    hostView = self->_hostView;

    [(_UICursorAccessoryHostView *)hostView setPreferredPlacementEdge:a4];
  }
}

- (void)_updateSelectionRectAnimated:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_selectionRects;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v14 rect];
        if (CGRectGetWidth(v32) >= 2.22044605e-16)
        {
          [v14 rect];
          v36.origin.x = v15;
          v36.origin.y = v16;
          v36.size.width = v17;
          v36.size.height = v18;
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v34 = CGRectUnion(v33, v36);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (CGRectIsNull(v35))
  {
    v19 = self->_cursorRect.origin.x;
    v20 = self->_cursorRect.origin.y;
    v21 = self->_cursorRect.size.width;
    v22 = self->_cursorRect.size.height;
    v23 = self;
    v24 = v3;
    v25 = 4;
  }

  else
  {
    v23 = self;
    v19 = x;
    v20 = y;
    v21 = width;
    v22 = height;
    v24 = v3;
    v25 = 1;
  }

  [(_UICursorAccessoryViewController *)v23 _setSelectionRect:v25 preferredPlacement:v24 animated:v19, v20, v21, v22, v26];
}

- (void)setCursorRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self->_visible && !CGRectEqualToRect(self->_cursorRect, a3);
  self->_cursorRect.origin.x = x;
  self->_cursorRect.origin.y = y;
  self->_cursorRect.size.width = width;
  self->_cursorRect.size.height = height;

  [(_UICursorAccessoryViewController *)self _updateSelectionRectAnimated:v8];
}

- (void)setSelectionRects:(id)a3
{
  objc_storeStrong(&self->_selectionRects, a3);
  visible = self->_visible;

  [(_UICursorAccessoryViewController *)self _updateSelectionRectAnimated:visible];
}

- (void)setAccessories:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v4)
  {
    v4 = [(NSArray *)self->_accessories count]!= 0;
  }

  if (![(NSArray *)self->_accessories isEqualToArray:v7])
  {
    v23 = v4;
    v24 = self;
    objc_storeStrong(&self->_accessories, a3);
    v8 = [MEMORY[0x1E695DFA0] orderedSet];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v19 = [MEMORY[0x1E696AFB0] UUID];
            v18 = [v19 UUIDString];
          }

          [v9 setObject:v15 forKey:v18];
          [v8 addObject:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&v24->_accessoriesByIdentifier, v9);
    v20 = [(_UICursorAccessoryHostView *)v24->_hostView cursorAccessoryView];
    v21 = [v8 array];
    [v20 setAccessoryIdentifiers:v21 animated:v23];

    [(UIView *)v24->_hostView setNeedsLayout];
    if (v23)
    {
      v22 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.9 response:0.2];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __60___UICursorAccessoryViewController_setAccessories_animated___block_invoke;
      v26[3] = &unk_1E70F3590;
      v26[4] = v24;
      [UIView _animateUsingSpringBehavior:v22 tracking:0 animations:v26 completion:0];
    }

    v7 = v25;
  }
}

- (void)setAccessoryTintColor:(id)a3
{
  v7 = a3;
  v4 = [(_UICursorAccessoryViewController *)self accessoryTintColor];
  v5 = [v4 isEqual:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(_UICursorAccessoryHostView *)self->_hostView cursorAccessoryView];
    [v6 setTintColor:v7];
  }
}

- (void)setVisible:(BOOL)a3 animationStyle:(int64_t)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___UICursorAccessoryViewController_setVisible_animationStyle_completion___block_invoke;
  aBlock[3] = &unk_1E7103030;
  v9 = v8;
  v36 = v9;
  v10 = _Block_copy(aBlock);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __73___UICursorAccessoryViewController_setVisible_animationStyle_completion___block_invoke_2;
  v33[3] = &unk_1E70F3608;
  v11 = v10;
  v34 = v11;
  v12 = _Block_copy(v33);
  if (self->_visible == v6)
  {
    goto LABEL_2;
  }

  self->_visible = v6;
  if (a4 == 2)
  {
    v15 = +[_UIDictationSettingsDomain rootSettings];
    [v15 revealFadeTime];
    v17 = v16;

    hostView = self->_hostView;
    if (v6)
    {
      [(_UICursorAccessoryHostView *)hostView setHidden:0];
      [(_UICursorAccessoryHostView *)self->_hostView setCollapsed:0];
      [(UIView *)self->_hostView setAlpha:0.0];
      [(_UICursorAccessoryHostView *)self->_hostView layoutSubviews];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __73___UICursorAccessoryViewController_setVisible_animationStyle_completion___block_invoke_5;
      v29 = &unk_1E70F3590;
      v30 = self;
      v19 = &v26;
    }

    else
    {
      [(UIView *)hostView setAlpha:1.0];
      [(_UICursorAccessoryHostView *)self->_hostView setHidden:0];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __73___UICursorAccessoryViewController_setVisible_animationStyle_completion___block_invoke_6;
      v24 = &unk_1E70F3590;
      v25 = self;
      v19 = &v21;
    }

    [UIView animateWithDuration:0x20000 delay:v19 options:v12 animations:v17 completion:0.0, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30];
  }

  else
  {
    if (a4 != 1)
    {
      v20 = self->_hostView;
      if (v6)
      {
        [(_UICursorAccessoryHostView *)v20 setHidden:0];
        [(_UICursorAccessoryHostView *)self->_hostView setCollapsed:0];
        [(UIView *)self->_hostView setAlpha:1.0];
      }

      else
      {
        [(_UICursorAccessoryHostView *)v20 setHidden:1];
        [(_UICursorAccessoryHostView *)self->_hostView setCollapsed:1];
      }

LABEL_2:
      v12[2](v12, 1);
      goto LABEL_3;
    }

    if (v6)
    {
      [(_UICursorAccessoryHostView *)self->_hostView setHidden:0];
      [(_UICursorAccessoryHostView *)self->_hostView setCollapsed:1];
      [(UIView *)self->_hostView setAlpha:1.0];
      [(_UICursorAccessoryHostView *)self->_hostView layoutSubviews];
      v13 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.8 response:0.2];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __73___UICursorAccessoryViewController_setVisible_animationStyle_completion___block_invoke_3;
      v32[3] = &unk_1E70F3590;
      v32[4] = self;
      v14 = v32;
    }

    else
    {
      v13 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.15];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __73___UICursorAccessoryViewController_setVisible_animationStyle_completion___block_invoke_4;
      v31[3] = &unk_1E70F3590;
      v31[4] = self;
      v14 = v31;
    }

    [UIView _animateUsingSpringBehavior:v13 tracking:0 animations:v14 completion:v11];
  }

LABEL_3:
}

- ($1945D2EFE1244E2A91EF2AFFF7F2C6FE)_contentForAccessory:(SEL)a3
{
  v7 = a4;
  v8 = [v7 _dictationCursorAccessory];

  if (v8)
  {
    retstr->var0 = 0;
    retstr->var1 = [v7 identifier];
    v9 = [UIImage systemImageNamed:@"mic"];
  }

  else
  {
    v10 = [v7 _deleteCursorAccessory];

    if (!v10)
    {
      v12 = [v7 _inputModeCursorAccessory];

      if (v12)
      {
        v13 = [v7 _inputModeCursorAccessory];
        v14 = [v13 dictationLanguage];
        if (v14 && (v15 = v14, TUIKeyboardInputModeIconRendererClass = getTUIKeyboardInputModeIconRendererClass(), v15, TUIKeyboardInputModeIconRendererClass))
        {
          v17 = +[UIKeyboardInputModeController sharedInputModeController];
          v18 = [v17 enabledDictationLanguages];

          v19 = [v13 dictationLanguage];
          v20 = [v18 indexOfObject:v19];

          if (v20 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = 0;
          }

          else
          {
            v21 = v20;
          }

          v22 = [MEMORY[0x1E695DF58] abbreviationsForLanguages:v18 minimizeVariants:1];
          v23 = [v22 objectAtIndexedSubscript:v21];
          v24 = [v23 componentsSeparatedByString:@" "];
          v45 = [v24 firstObject];
          v25 = 0;
          if ([v24 count] == 2)
          {
            v25 = [v24 lastObject];
          }

          v26 = objc_alloc_init(getTUIKeyboardInputModeIconRendererClass());
          v47 = 0;
          v48 = &v47;
          v49 = 0x2050000000;
          v27 = getTUIKeyboardInputModeIconRendererConfigurationClass_softClass;
          v50 = getTUIKeyboardInputModeIconRendererConfigurationClass_softClass;
          if (!getTUIKeyboardInputModeIconRendererConfigurationClass_softClass)
          {
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __getTUIKeyboardInputModeIconRendererConfigurationClass_block_invoke;
            v46[3] = &unk_1E70F2F20;
            v46[4] = &v47;
            __getTUIKeyboardInputModeIconRendererConfigurationClass_block_invoke(v46);
            v27 = v48[3];
          }

          v44 = v22;
          v28 = v27;
          _Block_object_dispose(&v47, 8);
          v29 = objc_alloc_init(v27);
          v30 = +[UIColor whiteColor];
          [v29 setTintColor:v30];

          if ([v13 isLarge])
          {
            +[_UICursorAccessoryView largeItemSize];
          }

          else
          {
            +[_UICursorAccessoryView defaultItemSize];
          }

          v43 = v23;
          [v29 setSize:v31 + -6.0];
          +[_UICursorAccessoryView baseFontSize];
          [v29 setBaseFontSize:?];
          [v29 setStyle:0];
          if (objc_opt_respondsToSelector())
          {
            v40 = [v13 dictationLanguage];
            [v29 setLanguage:v40];
          }

          v41 = [v26 imageForPrimaryLabel:v45 secondaryLabel:v25 withConfiguration:v29];
          v42 = [v41 imageWithRenderingMode:2];

          retstr->var0 = 0;
          retstr->var1 = [v7 identifier];
          retstr->var2 = v42;
          retstr->var3 = 3;
        }

        else
        {
          v32 = [v13 inputModeIdentifier];
          v33 = [v13 inputModeIdentifier];
          v34 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v33];

          if ([v13 isLarge])
          {
            [v34 largeCursorAccessoryIcon];
          }

          else
          {
            [v34 cursorAccessoryIcon];
          }
          v38 = ;
          retstr->var0 = 0;
          retstr->var1 = [v7 identifier];
          retstr->var2 = v38;
          retstr->var3 = 3;
        }
      }

      else
      {
        v35 = [v7 _modifierKeyCursorAccessory];

        if (!v35)
        {
          v39 = [MEMORY[0x1E696AAA8] currentHandler];
          [v39 handleFailureInMethod:a3 object:self file:@"_UICursorAccessoryViewController.m" lineNumber:348 description:@"Unsupported accessory type."];

          *&retstr->var0 = 0u;
          *&retstr->var2 = 0u;
          goto LABEL_6;
        }

        v13 = [v7 _modifierKeyCursorAccessory];
        v36 = [v13 modifierType] - 1;
        if (v36 > 2)
        {
          v37 = @"question";
        }

        else
        {
          v37 = off_1E710B728[v36];
        }

        retstr->var0 = 0;
        retstr->var1 = [v7 identifier];
        retstr->var2 = [UIImage systemImageNamed:v37];
        retstr->var3 = 2;
      }

      goto LABEL_6;
    }

    retstr->var0 = 0;
    retstr->var1 = [v7 identifier];
    v9 = [UIImage systemImageNamed:@"delete.left"];
  }

  retstr->var2 = v9;
  retstr->var3 = 2;
LABEL_6:

  return result;
}

- (void)configureItemView:(id)a3 forAccessoryIdentifier:(id)a4
{
  v6 = a3;
  accessoriesByIdentifier = self->_accessoriesByIdentifier;
  v8 = a4;
  v9 = [(NSDictionary *)accessoriesByIdentifier objectForKey:v8];
  [(_UICursorAccessoryViewController *)self _contentForAccessory:v9];
  v10 = v18;
  v14 = v10;
  v11 = v19;
  v15 = v11;
  v12 = v20;
  v16 = v12;
  v17 = v21;
  if (v6)
  {
    [v6 setContent:&v14];
  }

  else
  {
    v13 = v12;
  }

  [v6 setStyle:{objc_msgSend(v9, "style", v14, v15, v16, v17)}];
  [v6 setAccessibilityIdentifier:v8];
  [v6 setAccessibilityLabel:v8];

  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityTraits:1];
}

- (void)didTapToActivateAccessoryWithIdentifier:(id)a3
{
  v5 = [(NSDictionary *)self->_accessoriesByIdentifier objectForKey:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cursorAccessoryViewController:self didActivateCursorAccessory:v5];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4 fromView:(id)a5
{
  y = a3.y;
  x = a3.x;
  hostView = self->_hostView;
  v10 = a5;
  v11 = a4;
  v12 = [(_UICursorAccessoryHostView *)hostView cursorAccessoryView];
  [v12 convertPoint:v10 fromView:{x, y}];
  v14 = v13;
  v16 = v15;

  v17 = [(_UICursorAccessoryHostView *)self->_hostView cursorAccessoryView];
  v18 = [v17 hitTest:v11 withEvent:{v14, v16}];

  return v18;
}

- (_UICursorAccessoryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)cursorRect
{
  x = self->_cursorRect.origin.x;
  y = self->_cursorRect.origin.y;
  width = self->_cursorRect.size.width;
  height = self->_cursorRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end