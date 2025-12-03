@interface STUIStatusBarLockItem
- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data;
- (STUIStatusBarLockView)lockView;
- (_UIExpandingGlyphsView)stringView;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_lockView;
- (void)_create_stringView;
@end

@implementation STUIStatusBarLockItem

- (BOOL)canEnableDisplayItem:(id)item fromData:(id)data
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarLockItem;
  if (![(STUIStatusBarItem *)&v8 canEnableDisplayItem:item fromData:data])
  {
    return [(STUIStatusBarLockItem *)self showsLock];
  }

  v5 = 1;
  [(STUIStatusBarLockItem *)self setShowsLock:1];
  lockDisappearanceTimer = [(STUIStatusBarLockItem *)self lockDisappearanceTimer];
  [lockDisappearanceTimer invalidate];

  [(STUIStatusBarLockItem *)self setLockDisappearanceTimer:0];
  return v5;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v39[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  itemCopy = item;
  v37.receiver = self;
  v37.super_class = STUIStatusBarLockItem;
  v8 = [(STUIStatusBarItem *)&v37 applyUpdate:updateCopy toDisplayItem:itemCopy];
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

    v15 = -[STUIStatusBarLockItem showsLock](self, "showsLock") ? [lockEntry isEnabled] ^ 1 : 0;
    [itemCopy setEnabled:v15];
    if (![itemCopy isEnabled])
    {
      goto LABEL_22;
    }

    stringView = [(STUIStatusBarLockItem *)self stringView];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v22 localizedStringForKey:@"UIStatusBar: Unlocked" value:@"Unlocked" table:0];

    v33 = objc_alloc(MEMORY[0x277CCA898]);
    v38[0] = *MEMORY[0x277D740A8];
    styleAttributes = [updateCopy styleAttributes];
    font = [styleAttributes font];
    v39[0] = font;
    v38[1] = *MEMORY[0x277D740C0];
    styleAttributes2 = [updateCopy styleAttributes];
    textColor = [styleAttributes2 textColor];
    v39[1] = textColor;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v28 = [v33 initWithString:v34 attributes:v27];

    lockView2 = stringView;
    [stringView setAttributedString:v28];
    [stringView baselineOffset];
    v30 = v29;
    [stringView intrinsicContentSize];
    [itemCopy setBaselineOffset:v30 - v31];

    goto LABEL_21;
  }

  if (![updateCopy dataChanged])
  {
    goto LABEL_22;
  }

  if (([lockEntry isEnabled] & 1) == 0 && -[STUIStatusBarLockItem showsLock](self, "showsLock"))
  {
    statusBar = [(STUIStatusBarItem *)self statusBar];
    areAnimationsEnabled = [statusBar areAnimationsEnabled];

    if (!areAnimationsEnabled)
    {
      [(STUIStatusBarLockItem *)self setShowsLock:0];
      [itemCopy setEnabled:0];
      goto LABEL_13;
    }

    lockView = [(STUIStatusBarLockItem *)self lockView];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __51__STUIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke;
    v36[3] = &unk_279D386A0;
    v36[4] = self;
    [lockView animateUnlockWithCompletionBlock:v36];
    goto LABEL_12;
  }

  if ([lockEntry isEnabled])
  {
    lockView = [(STUIStatusBarLockItem *)self lockView];
    [lockView resetLock];
LABEL_12:
  }

LABEL_13:
  if ([lockEntry unlockFailureCount] != self->_unlockFailureCount)
  {
    self->_unlockFailureCount = [lockEntry unlockFailureCount];
    if (([updateCopy enablementChanged] & 1) == 0)
    {
      if ([itemCopy isEnabled])
      {
        statusBar2 = [(STUIStatusBarItem *)self statusBar];
        areAnimationsEnabled2 = [statusBar2 areAnimationsEnabled];

        if (areAnimationsEnabled2)
        {
          lockView2 = [(STUIStatusBarLockItem *)self lockView];
          [lockView2 jiggleWithCompletionBlock:0];
LABEL_21:
        }
      }
    }
  }

LABEL_22:

  return v8;
}

void __51__STUIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__STUIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke_2;
    v5[3] = &unk_279D38D78;
    v5[4] = *(a1 + 32);
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v5 block:1.0];
    [*(a1 + 32) setLockDisappearanceTimer:v3];
  }

  else
  {
    [*(a1 + 32) setShowsLock:0];
    v4 = [*(a1 + 32) statusBar];
    [v4 updateWithAnimations:MEMORY[0x277CBEBF8]];
  }
}

void __51__STUIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setShowsLock:0];
  v2 = [*(a1 + 32) statusBar];
  [v2 updateWithAnimations:MEMORY[0x277CBEBF8]];
}

- (id)additionAnimationForDisplayItemWithIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = STUIStatusBarLockItem;
  identifierCopy = identifier;
  v5 = [(STUIStatusBarItem *)&v19 additionAnimationForDisplayItemWithIdentifier:identifierCopy];
  textDisplayIdentifier = [objc_opt_class() textDisplayIdentifier];

  if (textDisplayIdentifier == identifierCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke;
    v18[3] = &unk_279D38AC0;
    v18[4] = self;
    v7 = [STUIStatusBarAnimation animationWithBlock:v18];

    defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];
    v9 = [(STUIStatusBarItem *)self displayItemForIdentifier:defaultDisplayIdentifier];

    [v9 absoluteFrame];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_4;
    v17[3] = &unk_279D38DA0;
    v17[5] = v10;
    v17[6] = v11;
    v17[7] = v12;
    v17[8] = v13;
    v17[4] = self;
    v14 = [STUIStatusBarAnimation animationWithBlock:v17];
    identifier = [v9 identifier];
    [v7 addSubAnimation:v14 forDisplayItemWithIdentifier:identifier];

    v5 = v7;
  }

  return v5;
}

void __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) statusBar];
  v9 = [v8 styleAttributes];
  v10 = [v9 effectiveLayoutDirection];

  [v6 absoluteFrame];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v15 = v10 == 1;
  v16 = CGRectGetWidth(v36) * 0.5;
  v17 = -v16;
  if (v10 == 1)
  {
    v17 = v16;
  }

  v18 = x + v17;
  [v6 setFloating:1];
  [v6 setAbsoluteFrame:{v18, y, width, height}];
  v19 = MEMORY[0x277D75D18];
  v20 = *(a1 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_2;
  v30[3] = &unk_279D38038;
  v31 = v6;
  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_3;
  v28 = &unk_279D38810;
  v29 = v7;
  v21 = v7;
  v22 = v6;
  [v19 _animateWithDuration:0 delay:v20 options:v30 factory:&v25 animations:0.91 completion:0.0];
  v23 = [*(a1 + 32) stringView];
  [v23 setExpandsFromLeftToRight:v15];

  v24 = [*(a1 + 32) stringView];
  [v24 animateCompletionBlock:0];
}

uint64_t __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAbsoluteFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setFloating:0];
}

void __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [v6 absoluteFrame];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (!CGRectEqualToRect(v20, *(a1 + 40)))
  {
    [v6 setFloating:1];
    [v6 setAbsoluteFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v12 = MEMORY[0x277D75D18];
    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_5;
    v14[3] = &unk_279D38038;
    v15 = v6;
    v16 = x;
    v17 = y;
    v18 = width;
    v19 = height;
    [v12 _animateWithDuration:0 delay:v13 options:v14 factory:v7 animations:0.91 completion:0.0];
  }
}

uint64_t __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAbsoluteFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setFloating:0];
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:path];
  [v4 setMass:2.0];
  [v4 setStiffness:300.0];
  [v4 setDamping:400.0];
  [v4 setDuration:0.91];
  v5 = objc_alloc(MEMORY[0x277CD9EF8]);
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
    showsLock = [(STUIStatusBarLockItem *)self showsLock];

    if (showsLock)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v6 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.25];
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

- (STUIStatusBarLockView)lockView
{
  lockView = self->_lockView;
  if (!lockView)
  {
    [(STUIStatusBarLockItem *)self _create_lockView];
    lockView = self->_lockView;
  }

  return lockView;
}

- (void)_create_lockView
{
  v3 = [STUIStatusBarLockView alloc];
  v4 = [(STUIStatusBarLockView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  lockView = self->_lockView;
  self->_lockView = v4;

  MEMORY[0x2821F96F8](v4, lockView);
}

- (_UIExpandingGlyphsView)stringView
{
  stringView = self->_stringView;
  if (!stringView)
  {
    [(STUIStatusBarLockItem *)self _create_stringView];
    stringView = self->_stringView;
  }

  return stringView;
}

- (void)_create_stringView
{
  v3 = objc_alloc(MEMORY[0x277D75F40]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
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
    lockView = [(STUIStatusBarLockItem *)self lockView];
  }

  else
  {
    textDisplayIdentifier = [objc_opt_class() textDisplayIdentifier];

    if (textDisplayIdentifier == identifierCopy)
    {
      lockView = [(STUIStatusBarLockItem *)self stringView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = STUIStatusBarLockItem;
      lockView = [(STUIStatusBarItem *)&v10 viewForIdentifier:identifierCopy];
    }
  }

  v8 = lockView;

  return v8;
}

@end