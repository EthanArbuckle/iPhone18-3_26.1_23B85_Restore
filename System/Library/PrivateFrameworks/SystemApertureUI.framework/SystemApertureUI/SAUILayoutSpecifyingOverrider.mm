@interface SAUILayoutSpecifyingOverrider
- (BOOL)isInteractiveDismissalEnabled;
- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (BOOL)isMinimalPresentationPossible;
- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode;
- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (BOOL)isRequestingMenuPresentation;
- (BOOL)isRequestingMenuPresentationForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode;
- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (NSArray)preferredLayoutModeAssertions;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (NSString)description;
- (SAUILayoutModePreferring)layoutModePreference;
- (SAUILayoutSpecifying)layoutSpecifyingOverridingTarget;
- (SAUILayoutSpecifyingOverrider)initWithTarget:(id)target;
- (SAUIPreferredLayoutModeAssertion)preferredLayoutModeAssertion;
- (id)_behaviorOverridingParticipantSubordinate:(BOOL)subordinate toParticipant:(id)participant passingTest:(id)test;
- (id)_firstParticipantThatRespondsToSelector:(SEL)selector;
- (id)behaviorOverridingTarget;
- (id)layoutModePreferenceForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (id)layoutSpecifyingOverridingParticipantSubordinateToParticipant:(id)participant thatRespondsToSelector:(SEL)selector;
- (id)layoutSpecifyingOverridingParticipantSuperiorToParticipant:(id)participant thatRespondsToSelector:(SEL)selector;
- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (int64_t)layoutMode;
- (int64_t)layoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (int64_t)maximumSupportedLayoutMode;
- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (int64_t)minimumSupportedLayoutMode;
- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (int64_t)preferredLayoutMode;
- (int64_t)preferredLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (unint64_t)customizationOptionsForLayoutMode:(int64_t)mode;
- (unint64_t)customizationOptionsForLayoutMode:(int64_t)mode forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (void)addBehaviorOverridingParticipant:(id)participant;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews forTargetWithOverrider:(id)overrider;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)subviews;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)subviews forTargetWithOverrider:(id)overrider;
- (void)removeBehaviorOverridingParticipant:(id)participant;
- (void)removeBehaviorOverridingParticipantWithRole:(int64_t)role;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider;
- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider;
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
  selfCopy = self;
  v5 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isRequestingMenuPresentationForTargetWithOverrider_isDefaultValue_];
  LOBYTE(selfCopy) = [v3 isRequestingMenuPresentationForTargetWithOverrider:selfCopy isDefaultValue:&v5];

  return selfCopy;
}

- (id)behaviorOverridingTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);

  return WeakRetained;
}

- (int64_t)preferredLayoutMode
{
  layoutModePreference = [(SAUILayoutSpecifyingOverrider *)self layoutModePreference];
  preferredLayoutMode = [layoutModePreference preferredLayoutMode];

  return preferredLayoutMode;
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

- (SAUILayoutSpecifyingOverrider)initWithTarget:(id)target
{
  targetCopy = target;
  v8.receiver = self;
  v8.super_class = SAUILayoutSpecifyingOverrider;
  v5 = [(SAUILayoutSpecifyingOverrider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_behaviorOverridingTarget, targetCopy);
    [(SAUILayoutSpecifyingOverrider *)v6 addBehaviorOverridingParticipant:v6];
  }

  return v6;
}

- (id)_behaviorOverridingParticipantSubordinate:(BOOL)subordinate toParticipant:(id)participant passingTest:(id)test
{
  subordinateCopy = subordinate;
  participantCopy = participant;
  testCopy = test;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  if (participantCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants sa_compact];
    v11 = [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants count];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    allObjects = [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants allObjects];
    if (subordinateCopy)
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
    v24 = subordinateCopy;
    v23 = v11;
    v18 = participantCopy;
    v19 = selfCopy;
    v20 = testCopy;
    v22 = &v27;
    [allObjects enumerateObjectsWithOptions:v13 usingBlock:v17];

    _Block_object_dispose(v25, 8);
    objc_sync_exit(selfCopy);

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

- (void)addBehaviorOverridingParticipant:(id)participant
{
  participantCopy = participant;
  if (participantCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    orderedBehaviorOverridingParticipants = selfCopy->_orderedBehaviorOverridingParticipants;
    if (!orderedBehaviorOverridingParticipants)
    {
      weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v7 = selfCopy->_orderedBehaviorOverridingParticipants;
      selfCopy->_orderedBehaviorOverridingParticipants = weakObjectsPointerArray;

      orderedBehaviorOverridingParticipants = selfCopy->_orderedBehaviorOverridingParticipants;
    }

    [(NSPointerArray *)orderedBehaviorOverridingParticipants sa_compact];
    if ([(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants count])
    {
      behaviorOverridingRole = [participantCopy behaviorOverridingRole];
      for (i = 0; ; ++i)
      {
        if (i >= [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants count])
        {
          goto LABEL_14;
        }

        v10 = [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants pointerAtIndex:i];
        behaviorOverridingRole2 = [v10 behaviorOverridingRole];
        if (behaviorOverridingRole2 == behaviorOverridingRole)
        {
          break;
        }

        if (behaviorOverridingRole2 < behaviorOverridingRole)
        {
          [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants insertPointer:participantCopy atIndex:i];
          goto LABEL_13;
        }
      }

      [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants replacePointerAtIndex:i withPointer:participantCopy];
LABEL_13:

      goto LABEL_14;
    }

    [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants addPointer:participantCopy];
LABEL_14:
    objc_sync_exit(selfCopy);
  }
}

- (void)removeBehaviorOverridingParticipant:(id)participant
{
  participantCopy = participant;
  if (participantCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    for (i = 0; i < [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants count]; ++i)
    {
      if ([(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants pointerAtIndex:i]== participantCopy)
      {
        [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants removePointerAtIndex:i];
        break;
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)removeBehaviorOverridingParticipantWithRole:(int64_t)role
{
  obj = self;
  objc_sync_enter(obj);
  for (i = 0; i < [(NSPointerArray *)obj->_orderedBehaviorOverridingParticipants count]; ++i)
  {
    v5 = [(NSPointerArray *)obj->_orderedBehaviorOverridingParticipants pointerAtIndex:i];
    if ([v5 behaviorOverridingRole] == role)
    {
      [(NSPointerArray *)obj->_orderedBehaviorOverridingParticipants removePointerAtIndex:i];

      break;
    }
  }

  objc_sync_exit(obj);
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  v7 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
  [v7 setLayoutMode:mode reason:reason forTargetWithOverrider:self];
}

- (BOOL)isInteractiveDismissalEnabled
{
  selfCopy = self;
  v5 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isInteractiveDismissalEnabledForTargetWithOverrider_isDefaultValue_];
  LOBYTE(selfCopy) = [v3 isInteractiveDismissalEnabledForTargetWithOverrider:selfCopy isDefaultValue:&v5];

  return selfCopy;
}

- (BOOL)isMinimalPresentationPossible
{
  selfCopy = self;
  v5 = 0;
  v3 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isMinimalPresentationPossibleForTargetWithOverrider_isDefaultValue_];
  LOBYTE(selfCopy) = [v3 isMinimalPresentationPossibleForTargetWithOverrider:selfCopy isDefaultValue:&v5];

  return selfCopy;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  trailing = maximumOutsets.trailing;
  bottom = maximumOutsets.bottom;
  leading = maximumOutsets.leading;
  top = maximumOutsets.top;
  v9 = outsets.trailing;
  v10 = outsets.bottom;
  v11 = outsets.leading;
  v12 = outsets.top;
  v28 = 0;
  v15 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_preferredEdgeOutsetsForLayoutMode_suggestedOutsets_maximumOutsets_forTargetWithOverrider_isDefaultValue_];
  [v15 preferredEdgeOutsetsForLayoutMode:mode suggestedOutsets:self maximumOutsets:&v28 forTargetWithOverrider:v12 isDefaultValue:{v11, v10, v9, top, leading, bottom, trailing}];
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

- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode
{
  height = size.height;
  width = size.width;
  v17 = 0;
  viewCopy = view;
  v10 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_sizeThatFitsSize_forProvidedView_inLayoutMode_forTargetWithOverrider_isDefaultValue_];
  [v10 sizeThatFitsSize:viewCopy forProvidedView:mode inLayoutMode:self forTargetWithOverrider:&v17 isDefaultValue:{width, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode
{
  v9 = 0;
  concentricCopy = concentric;
  v7 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_isProvidedViewConcentric_inLayoutMode_forTargetWithOverrider_isDefaultValue_];
  LOBYTE(mode) = [v7 isProvidedViewConcentric:concentricCopy inLayoutMode:mode forTargetWithOverrider:self isDefaultValue:&v9];

  return mode;
}

- (void)layoutHostContainerViewWillLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_layoutHostContainerViewWillLayoutSubviews_forTargetWithOverrider_];
  [v5 layoutHostContainerViewWillLayoutSubviews:subviewsCopy forTargetWithOverrider:self];
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_layoutHostContainerViewDidLayoutSubviews_forTargetWithOverrider_];
  [v5 layoutHostContainerViewDidLayoutSubviews:subviewsCopy forTargetWithOverrider:self];
}

- (unint64_t)customizationOptionsForLayoutMode:(int64_t)mode
{
  v8 = 0;
  v5 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_customizationOptionsForLayoutMode_forTargetWithOverrider_isDefaultValue_];
  v6 = [v5 customizationOptionsForLayoutMode:mode forTargetWithOverrider:self isDefaultValue:&v8];

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
  preferredLayoutModeAssertion = [(SAUILayoutSpecifyingOverrider *)self preferredLayoutModeAssertion];
  v5 = [v3 initWithObjects:{preferredLayoutModeAssertion, 0}];

  return v5;
}

- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  v7 = [(SAUILayoutSpecifyingOverrider *)self _firstParticipantThatRespondsToSelector:sel_setPreferredLayoutMode_reason_forTargetWithOverrider_];
  [v7 setPreferredLayoutMode:mode reason:reason forTargetWithOverrider:self];
}

- (int64_t)layoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    layoutMode = [WeakRetained layoutMode];
  }

  else
  {
    layoutMode = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return layoutMode;
}

- (unint64_t)customizationOptionsForLayoutMode:(int64_t)mode forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained customizationOptionsForLayoutMode:mode];
  }

  else
  {
    v8 = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return v8;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setLayoutMode:mode reason:reason];
  }
}

- (int64_t)minimumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    minimumSupportedLayoutMode = [WeakRetained minimumSupportedLayoutMode];
  }

  else
  {
    minimumSupportedLayoutMode = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return minimumSupportedLayoutMode;
}

- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    maximumSupportedLayoutMode = [WeakRetained maximumSupportedLayoutMode];
  }

  else
  {
    maximumSupportedLayoutMode = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return maximumSupportedLayoutMode;
}

- (int64_t)preferredLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  v4 = [(SAUILayoutSpecifyingOverrider *)self layoutModePreferenceForTargetWithOverrider:overrider isDefaultValue:value];
  preferredLayoutMode = [v4 preferredLayoutMode];

  return preferredLayoutMode;
}

- (BOOL)isInteractiveDismissalEnabledForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    isInteractiveDismissalEnabled = [WeakRetained isInteractiveDismissalEnabled];
  }

  else
  {
    isInteractiveDismissalEnabled = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return isInteractiveDismissalEnabled;
}

- (BOOL)isMinimalPresentationPossibleForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    isMinimalPresentationPossible = [WeakRetained isMinimalPresentationPossible];
  }

  else
  {
    isMinimalPresentationPossible = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return isMinimalPresentationPossible;
}

- (id)preferredLayoutModeAssertionForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    preferredLayoutModeAssertion = [WeakRetained preferredLayoutModeAssertion];
  }

  else
  {
    preferredLayoutModeAssertion = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return preferredLayoutModeAssertion;
}

- (id)layoutModePreferenceForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    layoutModePreference = [WeakRetained layoutModePreference];
LABEL_5:
    v9 = layoutModePreference;
    goto LABEL_6;
  }

  v7 = objc_opt_respondsToSelector();
  v8 = [SAUILayoutModePreference alloc];
  if (v7)
  {
    layoutModePreference = -[SAUILayoutModePreference initWithPreferredLayoutMode:reason:](v8, "initWithPreferredLayoutMode:reason:", [WeakRetained preferredLayoutMode], 1);
    goto LABEL_5;
  }

  v9 = [(SAUILayoutModePreference *)v8 initWithPreferredLayoutMode:2 reason:0];
  if (value)
  {
    *value = 1;
  }

LABEL_6:

  return v9;
}

- (void)setPreferredLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setPreferredLayoutMode:mode reason:reason];
  }
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  trailing = maximumOutsets.trailing;
  bottom = maximumOutsets.bottom;
  leading = maximumOutsets.leading;
  top = maximumOutsets.top;
  v12 = outsets.trailing;
  v13 = outsets.bottom;
  v14 = outsets.leading;
  v15 = outsets.top;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained preferredEdgeOutsetsForLayoutMode:mode suggestedOutsets:v15 maximumOutsets:{v14, v13, v12, top, leading, bottom, trailing}];
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
    if (value)
    {
      *value = 1;
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

- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sizeThatFitsSize:viewCopy forProvidedView:mode inLayoutMode:{width, height}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    if (value)
    {
      *value = 1;
    }
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (BOOL)isProvidedViewConcentric:(id)concentric inLayoutMode:(int64_t)mode forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  concentricCopy = concentric;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    v11 = [WeakRetained isProvidedViewConcentric:concentricCopy inLayoutMode:mode];
  }

  else
  {
    v11 = 1;
    if (value)
    {
      *value = 1;
    }
  }

  return v11;
}

- (void)layoutHostContainerViewWillLayoutSubviews:(id)subviews forTargetWithOverrider:(id)overrider
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained layoutHostContainerViewWillLayoutSubviews:subviewsCopy];
  }
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews forTargetWithOverrider:(id)overrider
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained layoutHostContainerViewDidLayoutSubviews:subviewsCopy];
  }
}

- (BOOL)isRequestingMenuPresentationForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  WeakRetained = objc_loadWeakRetained(&self->_behaviorOverridingTarget);
  if (objc_opt_respondsToSelector())
  {
    isRequestingMenuPresentation = [WeakRetained isRequestingMenuPresentation];
  }

  else
  {
    isRequestingMenuPresentation = 0;
    if (value)
    {
      *value = 1;
    }
  }

  return isRequestingMenuPresentation;
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

- (id)layoutSpecifyingOverridingParticipantSubordinateToParticipant:(id)participant thatRespondsToSelector:(SEL)selector
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __118__SAUILayoutSpecifyingOverrider_layoutSpecifyingOverridingParticipantSubordinateToParticipant_thatRespondsToSelector___block_invoke;
  v6[3] = &__block_descriptor_40_e43_B16__0___SABehaviorOverridingParticipant__8l;
  v6[4] = selector;
  v4 = [(SAUILayoutSpecifyingOverrider *)self _behaviorOverridingParticipantSubordinate:1 toParticipant:participant passingTest:v6];

  return v4;
}

- (id)layoutSpecifyingOverridingParticipantSuperiorToParticipant:(id)participant thatRespondsToSelector:(SEL)selector
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__SAUILayoutSpecifyingOverrider_layoutSpecifyingOverridingParticipantSuperiorToParticipant_thatRespondsToSelector___block_invoke;
  v6[3] = &__block_descriptor_40_e43_B16__0___SABehaviorOverridingParticipant__8l;
  v6[4] = selector;
  v4 = [(SAUILayoutSpecifyingOverrider *)self _behaviorOverridingParticipantSubordinate:0 toParticipant:participant passingTest:v6];

  return v4;
}

- (NSString)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = &selfCopy->super.isa;
  v8 = selfCopy->_orderedBehaviorOverridingParticipants;
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
        behaviorOverridingRole = [v12 behaviorOverridingRole];
        v14 = @"[UNKNOWN]";
        if (behaviorOverridingRole <= 3)
        {
          v14 = off_279D32AB8[behaviorOverridingRole];
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

- (id)_firstParticipantThatRespondsToSelector:(SEL)selector
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSPointerArray *)selfCopy->_orderedBehaviorOverridingParticipants sa_compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = selfCopy->_orderedBehaviorOverridingParticipants;
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

  objc_sync_exit(selfCopy);

  return v9;
}

@end