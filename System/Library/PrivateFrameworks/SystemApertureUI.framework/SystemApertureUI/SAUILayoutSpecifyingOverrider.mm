@interface SAUILayoutSpecifyingOverrider
- (BOOL)isInteractiveDismissalEnabled;
- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (BOOL)isMinimalPresentationPossible;
- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4;
- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4 forTargetWithOverrider:(id)a5 isDefaultValue:(BOOL *)a6;
- (BOOL)isRequestingMenuPresentation;
- (BOOL)isRequestingMenuPresentationForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5;
- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7;
- (NSArray)preferredLayoutModeAssertions;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7;
- (NSString)description;
- (SAUILayoutModePreferring)layoutModePreference;
- (SAUILayoutSpecifying)layoutSpecifyingOverridingTarget;
- (SAUILayoutSpecifyingOverrider)initWithTarget:(id)a3;
- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion;
- (id)_behaviorOverridingParticipantSubordinate:(BOOL)a3 toParticipant:(id)a4 passingTest:(id)a5;
- (id)_firstParticipantThatRespondsToSelector:(SEL)a3;
- (id)behaviorOverridingTarget;
- (id)layoutModePreferenceForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (id)layoutSpecifyingOverridingParticipantSubordinateToParticipant:(id)a3 thatRespondsToSelector:(SEL)a4;
- (id)layoutSpecifyingOverridingParticipantSuperiorToParticipant:(id)a3 thatRespondsToSelector:(SEL)a4;
- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (int64_t)layoutMode;
- (int64_t)layoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (int64_t)maximumSupportedLayoutMode;
- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (int64_t)minimumSupportedLayoutMode;
- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (int64_t)preferredLayoutMode;
- (int64_t)preferredLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (unint64_t)customizationOptionsForLayoutMode:(int64_t)a3;
- (unint64_t)customizationOptionsForLayoutMode:(int64_t)a3 forTargetWithOverrider:(id)a4 isDefaultValue:(BOOL *)a5;
- (void)addBehaviorOverridingParticipant:(id)a3;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3 forTargetWithOverrider:(id)a4;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3 forTargetWithOverrider:(id)a4;
- (void)removeBehaviorOverridingParticipant:(id)a3;
- (void)removeBehaviorOverridingParticipantWithRole:(int64_t)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5;
- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5;
@end

@implementation SAUILayoutSpecifyingOverrider

- (int64_t)layoutMode
{
  v6 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_layoutModeForTargetWithOverrider_isDefaultValue_];
  v4 = [v3 layoutModeForTargetWithOverrider:self isDefaultValue:&v6];

  return v4;
}

- (BOOL)isRequestingMenuPresentation
{
  v2 = self;
  v5 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isRequestingMenuPresentationForTargetWithOverrider_isDefaultValue_];
  LOBYTE(v2) = [v3 isRequestingMenuPresentationForTargetWithOverrider:v2 isDefaultValue:&v5];

  return v2;
}

- (id)behaviorOverridingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);

  return WeakRetained;
}

- (int64_t)preferredLayoutMode
{
  v2 = [(SAUILayoutSpecifyingOverrider *)self layoutModePreference];
  v3 = [v2 preferredLayoutMode];

  return v3;
}

- (SAUILayoutModePreferring)layoutModePreference
{
  v6 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_layoutModePreferenceForTargetWithOverrider_isDefaultValue_];
  v4 = [v3 layoutModePreferenceForTargetWithOverrider:self isDefaultValue:&v6];

  return v4;
}

- (int64_t)maximumSupportedLayoutMode
{
  v6 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_maximumSupportedLayoutModeForTargetWithOverrider_isDefaultValue_];
  v4 = [v3 maximumSupportedLayoutModeForTargetWithOverrider:self isDefaultValue:&v6];

  return v4;
}

- (int64_t)minimumSupportedLayoutMode
{
  v6 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_minimumSupportedLayoutModeForTargetWithOverrider_isDefaultValue_];
  v4 = [v3 minimumSupportedLayoutModeForTargetWithOverrider:self isDefaultValue:&v6];

  return v4;
}

- (SAUILayoutSpecifyingOverrider)initWithTarget:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SAUILayoutSpecifyingOverrider;
  v5 = [(SAUILayoutSpecifyingOverrider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_behaviorOverridingTarget, v4);
    [(SAUILayoutSpecifyingOverrider *)v6 addBehaviorOverridingParticipant:v6];
  }

  return v6;
}

- (id)_behaviorOverridingParticipantSubordinate:(BOOL)a3 toParticipant:(id)a4 passingTest:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  if (v8)
  {
    v10 = self;
    objc_sync_enter(v10);
    [(NSPointerArray *)v10->_orderedBehaviorOverridingParticipants sa_compact];
    v11 = [(NSPointerArray *)v10->_orderedBehaviorOverridingParticipants count];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v12 = [(NSPointerArray *)v10->_orderedBehaviorOverridingParticipants allObjects];
    if (v6)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__SAUILayoutSpecifyingOverrider__behaviorOverridingParticipantSubordinate_toParticipant_passingTest___block_invoke;
    v17[3] = &unk_279D32A78;
    v21 = v25;
    v24 = v6;
    v23 = v11;
    v18 = v8;
    v19 = v10;
    v20 = v9;
    v22 = &v27;
    [v12 enumerateObjectsWithOptions:v13 usingBlock:v17];

    _Block_object_dispose(v25, 8);
    objc_sync_exit(v10);

    v14 = v28[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  _Block_object_dispose(&v27, 8);

  return v15;
}

void __101__SAUILayoutSpecifyingOverrider__behaviorOverridingParticipantSubordinate_toParticipant_passingTest___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24) & 1) != 0 || (*(v8 + 24) = *(a1 + 32) == v7, (*(*(*(a1 + 56) + 8) + 24)))
  {
    if (*(a1 + 80) == 1)
    {
      if (*(a1 + 72) - 1 <= a3)
      {
        goto LABEL_13;
      }

      v9 = a3 + 1;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_13;
      }

      v9 = a3 - 1;
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v7;
      v10 = [*(*(a1 + 40) + 8) pointerAtIndex:?];
      v11 = *(a1 + 48);
      if (!v11 || (*(v11 + 16))(v11, v10))
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
        *a4 = 1;
      }

      v7 = v12;
    }
  }

LABEL_13:
}

- (void)addBehaviorOverridingParticipant:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = self;
    objc_sync_enter(v4);
    orderedBehaviorOverridingParticipants = v4->_orderedBehaviorOverridingParticipants;
    if (!orderedBehaviorOverridingParticipants)
    {
      v6 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v7 = v4->_orderedBehaviorOverridingParticipants;
      v4->_orderedBehaviorOverridingParticipants = v6;

      orderedBehaviorOverridingParticipants = v4->_orderedBehaviorOverridingParticipants;
    }

    [(NSPointerArray *)orderedBehaviorOverridingParticipants sa_compact];
    if ([(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants count])
    {
      v8 = [v12 behaviorOverridingRole];
      for (i = 0; ; ++i)
      {
        if (i >= [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants count])
        {
          goto LABEL_14;
        }

        v10 = [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants pointerAtIndex:i];
        v11 = [v10 behaviorOverridingRole];
        if (v11 == v8)
        {
          break;
        }

        if (v11 < v8)
        {
          [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants insertPointer:v12 atIndex:i];
          goto LABEL_13;
        }
      }

      [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants replacePointerAtIndex:i withPointer:v12];
LABEL_13:

      goto LABEL_14;
    }

    [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants addPointer:v12];
LABEL_14:
    objc_sync_exit(v4);
  }
}

- (void)removeBehaviorOverridingParticipant:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = self;
    objc_sync_enter(v4);
    for (i = 0; i < [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants count]; ++i)
    {
      if ([(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants pointerAtIndex:i]== v6)
      {
        [(NSPointerArray *)v4->_orderedBehaviorOverridingParticipants removePointerAtIndex:i];
        break;
      }
    }

    objc_sync_exit(v4);
  }
}

- (void)removeBehaviorOverridingParticipantWithRole:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  for (i = 0; i < [(NSPointerArray *)obj->_orderedBehaviorOverridingParticipants count]; ++i)
  {
    v5 = [(NSPointerArray *)obj->_orderedBehaviorOverridingParticipants pointerAtIndex:i];
    if ([v5 behaviorOverridingRole] == a3)
    {
      [(NSPointerArray *)obj->_orderedBehaviorOverridingParticipants removePointerAtIndex:i];

      break;
    }
  }

  objc_sync_exit(obj);
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v7 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
  [v7 setLayoutMode:a3 reason:a4 forTargetWithOverrider:self];
}

- (BOOL)isInteractiveDismissalEnabled
{
  v2 = self;
  v5 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isInteractiveDismissalEnabledForTargetWithOverrider_isDefaultValue_];
  LOBYTE(v2) = [v3 isInteractiveDismissalEnabledForTargetWithOverrider:v2 isDefaultValue:&v5];

  return v2;
}

- (BOOL)isMinimalPresentationPossible
{
  v2 = self;
  v5 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isMinimalPresentationPossibleForTargetWithOverrider_isDefaultValue_];
  LOBYTE(v2) = [v3 isMinimalPresentationPossibleForTargetWithOverrider:v2 isDefaultValue:&v5];

  return v2;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v9 = a4.trailing;
  v10 = a4.bottom;
  v11 = a4.leading;
  v12 = a4.top;
  v28 = 0;
  v15 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_preferredEdgeOutsetsForLayoutMode_suggestedOutsets_maximumOutsets_forTargetWithOverrider_isDefaultValue_];
  [v15 preferredEdgeOutsetsForLayoutMode:a3 suggestedOutsets:self maximumOutsets:&v28 forTargetWithOverrider:v12 isDefaultValue:{v11, v10, v9, top, leading, bottom, trailing}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.trailing = v27;
  result.bottom = v26;
  result.leading = v25;
  result.top = v24;
  return result;
}

- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v17 = 0;
  v9 = a4;
  v10 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_sizeThatFitsSize_forProvidedView_inLayoutMode_forTargetWithOverrider_isDefaultValue_];
  [v10 sizeThatFitsSize:v9 forProvidedView:a5 inLayoutMode:self forTargetWithOverrider:&v17 isDefaultValue:{width, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4
{
  v9 = 0;
  v6 = a3;
  v7 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isProvidedViewConcentric_inLayoutMode_forTargetWithOverrider_isDefaultValue_];
  LOBYTE(a4) = [v7 isProvidedViewConcentric:v6 inLayoutMode:a4 forTargetWithOverrider:self isDefaultValue:&v9];

  return a4;
}

- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3
{
  v4 = a3;
  v5 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_layoutHostContainerViewWillLayoutSubviews_forTargetWithOverrider_];
  [v5 layoutHostContainerViewWillLayoutSubviews:v4 forTargetWithOverrider:self];
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3
{
  v4 = a3;
  v5 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_layoutHostContainerViewDidLayoutSubviews_forTargetWithOverrider_];
  [v5 layoutHostContainerViewDidLayoutSubviews:v4 forTargetWithOverrider:self];
}

- (unint64_t)customizationOptionsForLayoutMode:(int64_t)a3
{
  v8 = 0;
  v5 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_customizationOptionsForLayoutMode_forTargetWithOverrider_isDefaultValue_];
  v6 = [v5 customizationOptionsForLayoutMode:a3 forTargetWithOverrider:self isDefaultValue:&v8];

  return v6;
}

- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion
{
  v6 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_preferredLayoutModeAssertionForTargetWithOverrider_isDefaultValue_];
  v4 = [v3 preferredLayoutModeAssertionForTargetWithOverrider:self isDefaultValue:&v6];

  return v4;
}

- (NSArray)preferredLayoutModeAssertions
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [(SAUILayoutSpecifyingOverrider *)self preferredLayoutModeAssertion];
  v5 = [v3 initWithObjects:{v4, 0}];

  return v5;
}

- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v7 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_setPreferredLayoutMode_reason_forTargetWithOverrider_];
  [v7 setPreferredLayoutMode:a3 reason:a4 forTargetWithOverrider:self];
}

- (int64_t)layoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained layoutMode];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (unint64_t)customizationOptionsForLayoutMode:(int64_t)a3 forTargetWithOverrider:(id)a4 isDefaultValue:(BOOL *)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained customizationOptionsForLayoutMode:a3];
  }

  else
  {
    v8 = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  return v8;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setLayoutMode:a3 reason:a4];
  }
}

- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained minimumSupportedLayoutMode];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained maximumSupportedLayoutMode];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (int64_t)preferredLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v4 = [(SAUILayoutSpecifyingOverrider *)self layoutModePreferenceForTargetWithOverrider:a3 isDefaultValue:a4];
  v5 = [v4 preferredLayoutMode];

  return v5;
}

- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained isInteractiveDismissalEnabled];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained isMinimalPresentationPossible];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained preferredLayoutModeAssertion];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (id)layoutModePreferenceForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained layoutModePreference];
LABEL_5:
    v9 = v6;
    goto LABEL_6;
  }

  v7 = objc_opt_respondsToSelector();
  v8 = [SAUILayoutModePreference alloc];
  if (v7)
  {
    v6 = -[SAUILayoutModePreference initWithPreferredLayoutMode:reason:](v8, "initWithPreferredLayoutMode:reason:", [WeakRetained preferredLayoutMode], 1);
    goto LABEL_5;
  }

  v9 = [(SAUILayoutModePreference *)v8 initWithPreferredLayoutMode:2 reason:0];
  if (a4)
  {
    *a4 = 1;
  }

LABEL_6:

  return v9;
}

- (void)setPreferredLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPreferredLayoutMode:a3 reason:a4];
  }
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v12 = a4.trailing;
  v13 = a4.bottom;
  v14 = a4.leading;
  v15 = a4.top;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredEdgeOutsetsForLayoutMode:a3 suggestedOutsets:v15 maximumOutsets:{v14, v13, v12, top, leading, bottom, trailing}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v19 = *MEMORY[0x277D75060];
    v21 = *(MEMORY[0x277D75060] + 8);
    v23 = *(MEMORY[0x277D75060] + 16);
    v25 = *(MEMORY[0x277D75060] + 24);
    if (a7)
    {
      *a7 = 1;
    }
  }

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.trailing = v29;
  result.bottom = v28;
  result.leading = v27;
  result.top = v26;
  return result;
}

- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7
{
  height = a3.height;
  width = a3.width;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sizeThatFitsSize:v12 forProvidedView:a5 inLayoutMode:{width, height}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    if (a7)
    {
      *a7 = 1;
    }
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)isProvidedViewConcentric:(id)a3 inLayoutMode:(int64_t)a4 forTargetWithOverrider:(id)a5 isDefaultValue:(BOOL *)a6
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v11 = [WeakRetained isProvidedViewConcentric:v9 inLayoutMode:a4];
  }

  else
  {
    v11 = 1;
    if (a6)
    {
      *a6 = 1;
    }
  }

  return v11;
}

- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3 forTargetWithOverrider:(id)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained layoutHostContainerViewWillLayoutSubviews:v6];
  }
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3 forTargetWithOverrider:(id)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained layoutHostContainerViewDidLayoutSubviews:v6];
  }
}

- (BOOL)isRequestingMenuPresentationForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained isRequestingMenuPresentation];
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v6;
}

- (SAUILayoutSpecifying)layoutSpecifyingOverridingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v3 = WeakRetained;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)layoutSpecifyingOverridingParticipantSubordinateToParticipant:(id)a3 thatRespondsToSelector:(SEL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __118__SAUILayoutSpecifyingOverrider_layoutSpecifyingOverridingParticipantSubordinateToParticipant_thatRespondsToSelector___block_invoke;
  v6[3] = &__block_descriptor_40_e43_B16__0___SABehaviorOverridingParticipant__8l;
  v6[4] = a4;
  v4 = [(SAUILayoutSpecifyingOverrider *)self _behaviorOverridingParticipantSubordinate:1 toParticipant:a3 passingTest:v6];

  return v4;
}

- (id)layoutSpecifyingOverridingParticipantSuperiorToParticipant:(id)a3 thatRespondsToSelector:(SEL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__SAUILayoutSpecifyingOverrider_layoutSpecifyingOverridingParticipantSuperiorToParticipant_thatRespondsToSelector___block_invoke;
  v6[3] = &__block_descriptor_40_e43_B16__0___SABehaviorOverridingParticipant__8l;
  v6[4] = a4;
  v4 = [(SAUILayoutSpecifyingOverrider *)self _behaviorOverridingParticipantSubordinate:0 toParticipant:a3 passingTest:v6];

  return v4;
}

- (NSString)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = self;
  objc_sync_enter(v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = &v7->super.isa;
  v8 = v7->_orderedBehaviorOverridingParticipants;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 behaviorOverridingRole];
        v14 = @"[UNKNOWN]";
        if (v13 <= 3)
        {
          v14 = off_279D32AB8[v13];
        }

        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        [v6 appendFormat:@"; '%@': <%@: %p>", v14, v16, v12];
      }

      v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  objc_sync_exit(obj);
  WeakRetained = objc_loadWeakRetained(obj + 2);
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  [v6 appendFormat:@"; 'behaviorOverridingTarget': <%@: %p>", v19, WeakRetained];

  [v6 appendString:@">"];

  return v6;
}

- (id)_firstParticipantThatRespondsToSelector:(SEL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  [(NSPointerArray *)v3->_orderedBehaviorOverridingParticipants sa_compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3->_orderedBehaviorOverridingParticipants;
  v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  objc_sync_exit(v3);

  return v9;
}

@end