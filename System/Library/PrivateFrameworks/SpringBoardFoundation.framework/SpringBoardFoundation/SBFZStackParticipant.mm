@interface SBFZStackParticipant
- (NSString)debugDescription;
- (SBFZStackParticipant)initWithIdentifier:(int64_t)a3 delegate:(id)a4;
- (SBFZStackParticipantDelegate)delegate;
- (SBFZStackResolver)resolver;
- (id)copyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (void)_updatePreferences;
- (void)appendDescriptionToStream:(id)a3;
- (void)invalidate;
- (void)setNeedsUpdatePreferencesWithReason:(id)a3;
- (void)setResolver:(id)a3;
@end

@implementation SBFZStackParticipant

- (void)_updatePreferences
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(SBFZStackParticipant *)self preferences];
  v4 = [v3 copy];

  v5 = [[SBFZStackParticipantPreferences alloc] initInternal];
  v6 = [(SBFZStackParticipant *)self delegate];
  [v6 zStackParticipant:self updatePreferences:v5];

  [(SBFZStackParticipant *)self setPreferences:v5];
  if (BSEqualObjects())
  {
    v7 = SBLogZStack();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBFZStackParticipantIdentifierDescription([(SBFZStackParticipant *)self identifier]);
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_DEFAULT, "_updatePreferences <%{public}@>: no changes", buf, 0xCu);
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E688]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__SBFZStackParticipant__updatePreferences__block_invoke;
    v14[3] = &unk_1E807F2E0;
    v15 = v5;
    v16 = v4;
    v7 = v9;
    v17 = v7;
    [v7 appendBodySectionWithName:0 block:v14];
    v10 = SBLogZStack();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = _SBFZStackParticipantIdentifierDescription([(SBFZStackParticipant *)self identifier]);
      v12 = [v7 description];
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_1BEA11000, v10, OS_LOG_TYPE_DEFAULT, "_updatePreferences <%{public}@>: %{public}@", buf, 0x16u);
    }

    v13 = [(SBFZStackParticipant *)self resolver];
    [(SBFZStackResolver *)v13 _setNeedsUpdateFromParticipant:?];
  }
}

- (SBFZStackParticipantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFZStackResolver)resolver
{
  WeakRetained = objc_loadWeakRetained(&self->_resolver);

  return WeakRetained;
}

- (SBFZStackParticipant)initWithIdentifier:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBFZStackParticipant;
  v7 = [(SBFZStackParticipant *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_identifier = a3;
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- (void)setNeedsUpdatePreferencesWithReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogZStack();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFZStackParticipantIdentifierDescription([(SBFZStackParticipant *)self identifier]);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "Requested update preferences for <%{public}@> with reason: %{public}@", &v7, 0x16u);
  }

  [(SBFZStackParticipant *)self _updatePreferences];
}

- (void)setResolver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_resolver);
  if (obj && WeakRetained)
  {
    [(SBFZStackParticipant *)a2 setResolver:obj, WeakRetained];
  }

  objc_storeWeak(&self->_resolver, obj);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SBFZStackParticipant_appendDescriptionToStream___block_invoke;
  v10[3] = &unk_1E807F290;
  v5 = v4;
  v11 = v5;
  v12 = self;
  [v5 appendProem:self block:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SBFZStackParticipant_appendDescriptionToStream___block_invoke_2;
  v7[3] = &unk_1E807F290;
  v8 = v5;
  v9 = self;
  v6 = v5;
  [v6 appendBodySectionWithName:0 block:v7];
}

uint64_t __50__SBFZStackParticipant_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _SBFZStackParticipantIdentifierDescription([*(a1 + 40) identifier]);
  [v2 appendString:v3 withName:@"identifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) activationState];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E8080158[v5];
  }

  return [v4 appendString:v6 withName:@"activationState"];
}

void __50__SBFZStackParticipant_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"ownsHomeGesture"), @"ownsHomeGesture"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"homeAffordanceDrawingSuppressed") ifEqualTo:{@"homeAffordanceDrawingSuppressed", 1}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"systemApertureSuppressedForSystemChromeSuppression") ifEqualTo:{@"systemApertureSuppressedForSystemChromeSuppression", 1}];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) associatedSceneIdentifiersToSuppressInSystemAperture];
  v7 = [v6 allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  [v5 appendString:v8 withName:@"associatedSceneIdentifiersToSuppressInSystemAperture" skipIfEmpty:1];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) associatedBundleIdentifiersToSuppressInSystemAperture];
  v11 = [v10 allObjects];
  v12 = [v11 componentsJoinedByString:{@", "}];
  [v9 appendString:v12 withName:@"associatedBundleIdentifiersToSuppressInSystemAperture" skipIfEmpty:1];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) physicalButtonSceneTargets];
  v15 = [v13 appendObject:v14 withName:@"physicalButtonSceneTargets"];

  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) captureButtonFullFidelityEventRequestingScenes];
  v18 = [v16 appendObject:v17 withName:@"captureButtonFullFidelityEventRequestingScenes"];

  v19 = *(a1 + 32);
  v20 = [*(a1 + 40) foregroundCaptureSceneTargets];
  v21 = [v19 appendObject:v20 withName:@"foregroundCaptureSceneTargets"];

  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) audioCategoriesDisablingVolumeHUD];
  v24 = [v23 allObjects];
  v25 = [v24 componentsJoinedByString:{@", "}];
  [v22 appendString:v25 withName:@"audioCategoriesDisablingVolumeHUD" skipIfEmpty:1];

  v26 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"participantBelowAllowsDimming") ifEqualTo:{@"participantBelowAllowsDimming", 1}];
  v27 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"allowsKeyboardArbiterToDetermineFocusTarget") ifEqualTo:{@"allowsKeyboardArbiterToDetermineFocusTarget", 1}];
  v28 = *(a1 + 32);
  v29 = [*(a1 + 40) overrideKeyboardFocusTarget];
  v30 = [v28 appendObject:v29 withName:@"overrideKeyboardFocusTarget"];

  v31 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"allowCameraButtonDeferringWhileFocusLocked") ifEqualTo:{@"allowCameraButtonDeferringWhileFocusLocked", 1}];
  v32 = [*(a1 + 32) hasSuccinctStyle];
  v34 = *(a1 + 32);
  v33 = *(a1 + 40);
  if (v32)
  {
    v44 = [v33 preferences];
    v35 = [v44 homeAffordanceDrawingSuppression];
    if (v35 > 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = off_1E80801A0[v35];
    }

    [v34 appendString:v36 withName:@"suppression"];
  }

  else
  {
    v37 = [v33 delegate];
    v38 = [v34 appendPointer:v37 withName:@"delegate"];

    v39 = *(a1 + 32);
    v40 = [*(a1 + 40) resolver];
    v41 = [v39 appendPointer:v40 withName:@"resolver"];

    v42 = *(a1 + 32);
    v44 = [*(a1 + 40) preferences];
    v43 = [v42 appendObject:v44 withName:@"preferences"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBFZStackParticipant alloc];
  identifier = self->_identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [(SBFZStackParticipant *)v4 initWithIdentifier:identifier delegate:WeakRetained];

  v8 = objc_loadWeakRetained(&self->_resolver);
  objc_storeWeak((v7 + 96), v8);

  objc_storeStrong((v7 + 104), self->_preferences);
  *(v7 + 9) = self->_homeAffordanceDrawingSuppressed;
  *(v7 + 8) = self->_ownsHomeGesture;
  *(v7 + 32) = self->_activationState;
  *(v7 + 10) = self->_systemApertureSuppressedForSystemChromeSuppression;
  objc_storeStrong((v7 + 48), self->_associatedSceneIdentifiersToSuppressInSystemAperture);
  objc_storeStrong((v7 + 40), self->_associatedBundleIdentifiersToSuppressInSystemAperture);
  objc_storeStrong((v7 + 56), self->_physicalButtonSceneTargets);
  v9 = [(NSArray *)self->_captureButtonFullFidelityEventRequestingScenes copy];
  v10 = *(v7 + 64);
  *(v7 + 64) = v9;

  v11 = [(NSArray *)self->_foregroundCaptureSceneTargets copy];
  v12 = *(v7 + 72);
  *(v7 + 72) = v11;

  objc_storeStrong((v7 + 80), self->_audioCategoriesDisablingVolumeHUD);
  *(v7 + 11) = self->_participantBelowAllowsDimming;
  *(v7 + 12) = self->_allowsKeyboardArbiterToDetermineFocusTarget;
  objc_storeStrong((v7 + 88), self->_overrideKeyboardFocusTarget);
  *(v7 + 13) = self->_allowCameraButtonDeferringWhileFocusLocked;
  return v7;
}

- (void)invalidate
{
  v3 = [(SBFZStackParticipant *)self resolver];
  [(SBFZStackResolver *)v3 _unregisterParticipant:?];
}

- (void)setResolver:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBFZStackResolver.m" lineNumber:804 description:{@"Cannot register %@ with %@ because it's already registered with %@", a2, a3, a4}];
}

@end