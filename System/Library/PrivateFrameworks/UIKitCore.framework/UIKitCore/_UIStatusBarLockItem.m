@interface _UIStatusBarLockItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (_UIExpandingGlyphsView)stringView;
- (_UIStatusBarLockView)lockView;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_lockView;
- (void)_create_stringView;
@end

@implementation _UIStatusBarLockItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarLockItem;
  if (![(_UIStatusBarItem *)&v8 canEnableDisplayItem:a3 fromData:a4])
  {
    return [(_UIStatusBarLockItem *)self showsLock];
  }

  v5 = 1;
  [(_UIStatusBarLockItem *)self setShowsLock:1];
  v6 = [(_UIStatusBarLockItem *)self lockDisappearanceTimer];
  [v6 invalidate];

  [(_UIStatusBarLockItem *)self setLockDisappearanceTimer:0];
  return v5;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = _UIStatusBarLockItem;
  v8 = [(_UIStatusBarItem *)&v36 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 lockEntry];

  v11 = [v7 identifier];
  v12 = [objc_opt_class() defaultDisplayIdentifier];

  if (v11 != v12)
  {
    v13 = [v7 identifier];
    v14 = [objc_opt_class() textDisplayIdentifier];

    if (v13 != v14)
    {
      goto LABEL_22;
    }

    v15 = -[_UIStatusBarLockItem showsLock](self, "showsLock") ? [v10 isEnabled] ^ 1 : 0;
    [v7 setEnabled:v15];
    if (![v7 isEnabled])
    {
      goto LABEL_22;
    }

    v34 = [(_UIStatusBarLockItem *)self stringView];
    v33 = _UILocalizedStringInSystemLanguage(@"UIStatusBar: Unlocked", @"Unlocked");
    v32 = objc_alloc(MEMORY[0x1E696AAB0]);
    v37[0] = *off_1E70EC918;
    v22 = [v6 styleAttributes];
    v23 = [v22 font];
    v38[0] = v23;
    v37[1] = *off_1E70EC920;
    v24 = [v6 styleAttributes];
    v25 = [v24 textColor];
    v38[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v27 = [v32 initWithString:v33 attributes:v26];

    v21 = v34;
    [v34 setAttributedString:v27];
    [v34 baselineOffset];
    v29 = v28;
    [v34 intrinsicContentSize];
    [v7 setBaselineOffset:v29 - v30];

    goto LABEL_21;
  }

  if (![v6 dataChanged])
  {
    goto LABEL_22;
  }

  if (([v10 isEnabled] & 1) == 0 && -[_UIStatusBarLockItem showsLock](self, "showsLock"))
  {
    v16 = [(_UIStatusBarItem *)self statusBar];
    v17 = [v16 areAnimationsEnabled];

    if (!v17)
    {
      [(_UIStatusBarLockItem *)self setShowsLock:0];
      [v7 setEnabled:0];
      goto LABEL_13;
    }

    v18 = [(_UIStatusBarLockItem *)self lockView];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __50___UIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke;
    v35[3] = &unk_1E70F5AC0;
    v35[4] = self;
    [v18 animateUnlockWithCompletionBlock:v35];
    goto LABEL_12;
  }

  if ([v10 isEnabled])
  {
    v18 = [(_UIStatusBarLockItem *)self lockView];
    [v18 resetLock];
LABEL_12:
  }

LABEL_13:
  if ([v10 unlockFailureCount] != self->_unlockFailureCount)
  {
    self->_unlockFailureCount = [v10 unlockFailureCount];
    if (([v6 enabilityChanged] & 1) == 0)
    {
      if ([v7 isEnabled])
      {
        v19 = [(_UIStatusBarItem *)self statusBar];
        v20 = [v19 areAnimationsEnabled];

        if (v20)
        {
          v21 = [(_UIStatusBarLockItem *)self lockView];
          [v21 jiggleWithCompletionBlock:0];
LABEL_21:
        }
      }
    }
  }

LABEL_22:

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = _UIStatusBarLockItem;
  v4 = a3;
  v5 = [(_UIStatusBarItem *)&v19 additionAnimationForDisplayItemWithIdentifier:v4];
  v6 = [objc_opt_class() textDisplayIdentifier];

  if (v6 == v4)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke;
    v18[3] = &unk_1E711F828;
    v18[4] = self;
    v7 = [_UIStatusBarAnimation animationWithBlock:v18];

    v8 = [objc_opt_class() defaultDisplayIdentifier];
    v9 = [(_UIStatusBarItem *)self displayItemForIdentifier:v8];

    [v9 absoluteFrame];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_4;
    v17[3] = &unk_1E711FBF8;
    v17[5] = v10;
    v17[6] = v11;
    v17[7] = v12;
    v17[8] = v13;
    v17[4] = self;
    v14 = [_UIStatusBarAnimation animationWithBlock:v17];
    v15 = [v9 identifier];
    [v7 addSubAnimation:v14 forDisplayItemWithIdentifier:v15];

    v5 = v7;
  }

  return v5;
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:a4];
  [v4 setMass:2.0];
  [v4 setStiffness:300.0];
  [v4 setDamping:400.0];
  [v4 setDuration:0.91];
  v5 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v6) = 1046809695;
  LODWORD(v7) = 990250344;
  LODWORD(v8) = 1057860847;
  LODWORD(v9) = 1064564184;
  v10 = [v5 initWithControlPoints:v6 :v7 :v8 :v9];
  [v4 setTimingFunction:v10];

  return v4;
}

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() textDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(_UIStatusBarLockItem *)self showsLock];

    if (v7)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v6 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.25];
    v5 = [objc_opt_class() defaultDisplayIdentifier];
    [v6 addSubAnimation:v6 forDisplayItemWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (_UIStatusBarLockView)lockView
{
  lockView = self->_lockView;
  if (!lockView)
  {
    [(_UIStatusBarLockItem *)self _create_lockView];
    lockView = self->_lockView;
  }

  return lockView;
}

- (void)_create_lockView
{
  v3 = [_UIStatusBarLockView alloc];
  v4 = [(_UIStatusBarLockView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  lockView = self->_lockView;
  self->_lockView = v4;
}

- (_UIExpandingGlyphsView)stringView
{
  stringView = self->_stringView;
  if (!stringView)
  {
    [(_UIStatusBarLockItem *)self _create_stringView];
    stringView = self->_stringView;
  }

  return stringView;
}

- (void)_create_stringView
{
  v3 = [_UIExpandingGlyphsView alloc];
  v4 = [(_UIExpandingGlyphsView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  stringView = self->_stringView;
  self->_stringView = v4;

  v6 = self->_stringView;

  [(_UIExpandingGlyphsView *)v6 setFadesOut:0];
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(_UIStatusBarLockItem *)self lockView];
  }

  else
  {
    v6 = [objc_opt_class() textDisplayIdentifier];

    if (v6 == v4)
    {
      v7 = [(_UIStatusBarLockItem *)self stringView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = _UIStatusBarLockItem;
      v7 = [(_UIStatusBarItem *)&v10 viewForIdentifier:v4];
    }
  }

  v8 = v7;

  return v8;
}

@end