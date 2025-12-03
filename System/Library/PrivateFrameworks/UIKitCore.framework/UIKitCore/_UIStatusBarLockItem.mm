@interface _UIStatusBarLockItem
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (_UIExpandingGlyphsView)stringView;
- (_UIStatusBarLockView)lockView;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_lockView;
- (void)_create_stringView;
@end

@implementation _UIStatusBarLockItem

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  v8.receiver = self;
  v8.super_class = _UIStatusBarLockItem;
  if (![(_UIStatusBarItem *)&v8 canEnableDisplayItem:item fromData:data])
  {
    return [(_UIStatusBarLockItem *)self showsLock];
  }

  v5 = 1;
  [(_UIStatusBarLockItem *)self setShowsLock:1];
  lockDisappearanceTimer = [(_UIStatusBarLockItem *)self lockDisappearanceTimer];
  [lockDisappearanceTimer invalidate];

  [(_UIStatusBarLockItem *)self setLockDisappearanceTimer:0];
  return v5;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v38[2] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  itemCopy = item;
  v36.receiver = self;
  v36.super_class = _UIStatusBarLockItem;
  v8 = [(_UIStatusBarItem *)&v36 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  lockEntry = [data lockEntry];

  identifier = [itemCopy identifier];
  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];

  if (identifier != defaultDisplayIdentifier)
  {
    identifier2 = [itemCopy identifier];
    textDisplayIdentifier = [objc_opt_class() textDisplayIdentifier];

    if (identifier2 != textDisplayIdentifier)
    {
      goto LABEL_22;
    }

    v15 = -[_UIStatusBarLockItem showsLock](self, "showsLock") ? [lockEntry isEnabled] ^ 1 : 0;
    [itemCopy setEnabled:v15];
    if (![itemCopy isEnabled])
    {
      goto LABEL_22;
    }

    stringView = [(_UIStatusBarLockItem *)self stringView];
    v33 = _UILocalizedStringInSystemLanguage(@"UIStatusBar: Unlocked", @"Unlocked");
    v32 = objc_alloc(MEMORY[0x1E696AAB0]);
    v37[0] = *off_1E70EC918;
    styleAttributes = [updateCopy styleAttributes];
    font = [styleAttributes font];
    v38[0] = font;
    v37[1] = *off_1E70EC920;
    styleAttributes2 = [updateCopy styleAttributes];
    textColor = [styleAttributes2 textColor];
    v38[1] = textColor;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v27 = [v32 initWithString:v33 attributes:v26];

    lockView2 = stringView;
    [stringView setAttributedString:v27];
    [stringView baselineOffset];
    v29 = v28;
    [stringView intrinsicContentSize];
    [itemCopy setBaselineOffset:v29 - v30];

    goto LABEL_21;
  }

  if (![updateCopy dataChanged])
  {
    goto LABEL_22;
  }

  if (([lockEntry isEnabled] & 1) == 0 && -[_UIStatusBarLockItem showsLock](self, "showsLock"))
  {
    statusBar = [(_UIStatusBarItem *)self statusBar];
    areAnimationsEnabled = [statusBar areAnimationsEnabled];

    if (!areAnimationsEnabled)
    {
      [(_UIStatusBarLockItem *)self setShowsLock:0];
      [itemCopy setEnabled:0];
      goto LABEL_13;
    }

    lockView = [(_UIStatusBarLockItem *)self lockView];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __50___UIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke;
    v35[3] = &unk_1E70F5AC0;
    v35[4] = self;
    [lockView animateUnlockWithCompletionBlock:v35];
    goto LABEL_12;
  }

  if ([lockEntry isEnabled])
  {
    lockView = [(_UIStatusBarLockItem *)self lockView];
    [lockView resetLock];
LABEL_12:
  }

LABEL_13:
  if ([lockEntry unlockFailureCount] != self->_unlockFailureCount)
  {
    self->_unlockFailureCount = [lockEntry unlockFailureCount];
    if (([updateCopy enabilityChanged] & 1) == 0)
    {
      if ([itemCopy isEnabled])
      {
        statusBar2 = [(_UIStatusBarItem *)self statusBar];
        areAnimationsEnabled2 = [statusBar2 areAnimationsEnabled];

        if (areAnimationsEnabled2)
        {
          lockView2 = [(_UIStatusBarLockItem *)self lockView];
          [lockView2 jiggleWithCompletionBlock:0];
LABEL_21:
        }
      }
    }
  }

LABEL_22:

  return v8;
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = _UIStatusBarLockItem;
  identifierCopy = identifier;
  v5 = [(_UIStatusBarItem *)&v19 additionAnimationForDisplayItemWithIdentifier:identifierCopy];
  textDisplayIdentifier = [objc_opt_class() textDisplayIdentifier];

  if (textDisplayIdentifier == identifierCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke;
    v18[3] = &unk_1E711F828;
    v18[4] = self;
    v7 = [_UIStatusBarAnimation animationWithBlock:v18];

    defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];
    v9 = [(_UIStatusBarItem *)self displayItemForIdentifier:defaultDisplayIdentifier];

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
    identifier = [v9 identifier];
    [v7 addSubAnimation:v14 forDisplayItemWithIdentifier:identifier];

    v5 = v7;
  }

  return v5;
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:path];
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

- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textDisplayIdentifier = [objc_opt_class() textDisplayIdentifier];

  if (textDisplayIdentifier == identifierCopy)
  {
    showsLock = [(_UIStatusBarLockItem *)self showsLock];

    if (showsLock)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v6 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.25];
    textDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];
    [v6 addSubAnimation:v6 forDisplayItemWithIdentifier:textDisplayIdentifier];
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];

  if (defaultDisplayIdentifier == identifierCopy)
  {
    lockView = [(_UIStatusBarLockItem *)self lockView];
  }

  else
  {
    textDisplayIdentifier = [objc_opt_class() textDisplayIdentifier];

    if (textDisplayIdentifier == identifierCopy)
    {
      lockView = [(_UIStatusBarLockItem *)self stringView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = _UIStatusBarLockItem;
      lockView = [(_UIStatusBarItem *)&v10 viewForIdentifier:identifierCopy];
    }
  }

  v8 = lockView;

  return v8;
}

@end