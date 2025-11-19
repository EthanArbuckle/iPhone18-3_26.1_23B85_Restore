@interface STUIStatusBarLockItem
- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4;
- (STUIStatusBarLockView)lockView;
- (_UIExpandingGlyphsView)stringView;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_lockView;
- (void)_create_stringView;
@end

@implementation STUIStatusBarLockItem

- (BOOL)canEnableDisplayItem:(id)a3 fromData:(id)a4
{
  v8.receiver = self;
  v8.super_class = STUIStatusBarLockItem;
  if (![(STUIStatusBarItem *)&v8 canEnableDisplayItem:a3 fromData:a4])
  {
    return [(STUIStatusBarLockItem *)self showsLock];
  }

  v5 = 1;
  [(STUIStatusBarLockItem *)self setShowsLock:1];
  v6 = [(STUIStatusBarLockItem *)self lockDisappearanceTimer];
  [v6 invalidate];

  [(STUIStatusBarLockItem *)self setLockDisappearanceTimer:0];
  return v5;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = STUIStatusBarLockItem;
  v8 = [(STUIStatusBarItem *)&v37 applyUpdate:v6 toDisplayItem:v7];
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

    v15 = -[STUIStatusBarLockItem showsLock](self, "showsLock") ? [v10 isEnabled] ^ 1 : 0;
    [v7 setEnabled:v15];
    if (![v7 isEnabled])
    {
      goto LABEL_22;
    }

    v35 = [(STUIStatusBarLockItem *)self stringView];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v22 localizedStringForKey:@"UIStatusBar: Unlocked" value:@"Unlocked" table:0];

    v33 = objc_alloc(MEMORY[0x277CCA898]);
    v38[0] = *MEMORY[0x277D740A8];
    v23 = [v6 styleAttributes];
    v24 = [v23 font];
    v39[0] = v24;
    v38[1] = *MEMORY[0x277D740C0];
    v25 = [v6 styleAttributes];
    v26 = [v25 textColor];
    v39[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v28 = [v33 initWithString:v34 attributes:v27];

    v21 = v35;
    [v35 setAttributedString:v28];
    [v35 baselineOffset];
    v30 = v29;
    [v35 intrinsicContentSize];
    [v7 setBaselineOffset:v30 - v31];

    goto LABEL_21;
  }

  if (![v6 dataChanged])
  {
    goto LABEL_22;
  }

  if (([v10 isEnabled] & 1) == 0 && -[STUIStatusBarLockItem showsLock](self, "showsLock"))
  {
    v16 = [(STUIStatusBarItem *)self statusBar];
    v17 = [v16 areAnimationsEnabled];

    if (!v17)
    {
      [(STUIStatusBarLockItem *)self setShowsLock:0];
      [v7 setEnabled:0];
      goto LABEL_13;
    }

    v18 = [(STUIStatusBarLockItem *)self lockView];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __51__STUIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke;
    v36[3] = &unk_279D386A0;
    v36[4] = self;
    [v18 animateUnlockWithCompletionBlock:v36];
    goto LABEL_12;
  }

  if ([v10 isEnabled])
  {
    v18 = [(STUIStatusBarLockItem *)self lockView];
    [v18 resetLock];
LABEL_12:
  }

LABEL_13:
  if ([v10 unlockFailureCount] != self->_unlockFailureCount)
  {
    self->_unlockFailureCount = [v10 unlockFailureCount];
    if (([v6 enablementChanged] & 1) == 0)
    {
      if ([v7 isEnabled])
      {
        v19 = [(STUIStatusBarItem *)self statusBar];
        v20 = [v19 areAnimationsEnabled];

        if (v20)
        {
          v21 = [(STUIStatusBarLockItem *)self lockView];
          [v21 jiggleWithCompletionBlock:0];
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

- (id)additionAnimationForDisplayItemWithIdentifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = STUIStatusBarLockItem;
  v4 = a3;
  v5 = [(STUIStatusBarItem *)&v19 additionAnimationForDisplayItemWithIdentifier:v4];
  v6 = [objc_opt_class() textDisplayIdentifier];

  if (v6 == v4)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__STUIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke;
    v18[3] = &unk_279D38AC0;
    v18[4] = self;
    v7 = [STUIStatusBarAnimation animationWithBlock:v18];

    v8 = [objc_opt_class() defaultDisplayIdentifier];
    v9 = [(STUIStatusBarItem *)self displayItemForIdentifier:v8];

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
    v15 = [v9 identifier];
    [v7 addSubAnimation:v14 forDisplayItemWithIdentifier:v15];

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

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:a4];
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

- (id)removalAnimationForDisplayItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() textDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(STUIStatusBarLockItem *)self showsLock];

    if (v7)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v6 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.25];
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(STUIStatusBarLockItem *)self lockView];
  }

  else
  {
    v6 = [objc_opt_class() textDisplayIdentifier];

    if (v6 == v4)
    {
      v7 = [(STUIStatusBarLockItem *)self stringView];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = STUIStatusBarLockItem;
      v7 = [(STUIStatusBarItem *)&v10 viewForIdentifier:v4];
    }
  }

  v8 = v7;

  return v8;
}

@end