@interface SBSALayoutModeSupportingProvider
- (id)preferencesFromContext:(id)a3;
- (void)_transitionToLayoutModeIfNecessary:(int64_t)a3 customLayoutCustomizingOptions:(int64_t)a4 context:(id)a5;
@end

@implementation SBSALayoutModeSupportingProvider

- (id)preferencesFromContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 elementContexts];
  v10 = [v9 count];
  if (v10)
  {
    v11 = [v9 bs_firstObjectPassingTest:&__block_literal_global_349];
    v12 = v11;
    if (v11)
    {
      v10 = [v11 systemApertureCustomLayout];
      v13 = 3;
    }

    else if (v10 == 1 && ([v9 sbsa_onlyObjectOrNil], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "layoutMode"), v14, v15 != 1))
    {
      v10 = 0;
      v13 = 2;
    }

    else
    {
      v10 = 0;
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  [(SBSALayoutModeSupportingProvider *)self _transitionToLayoutModeIfNecessary:v13 customLayoutCustomizingOptions:v10 context:v8];
  v18.receiver = self;
  v18.super_class = SBSALayoutModeSupportingProvider;
  v16 = [(SBSABasePreferencesProvider *)&v18 preferencesFromContext:v8];

  return v16;
}

BOOL __59__SBSALayoutModeSupportingProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 layoutMode];
  v4 = [v2 systemApertureCustomLayout];

  return SBSABehavesLikeCustom(v3, v4);
}

- (void)_transitionToLayoutModeIfNecessary:(int64_t)a3 customLayoutCustomizingOptions:(int64_t)a4 context:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_activeTransitionProvider);
  v11 = objc_loadWeakRetained(&self->_elementRemovalTransitionProvider);
  v12 = [(SBSALayoutModeSupportingProvider *)self _firstElementLayoutModeSupportingProvider];
  v13 = v12;
  if ((a3 - 1) < 3)
  {
    if (v11)
    {
      v14 = SBLogSystemAperturePreferencesStackElements();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v28 = [v9 queryIteration];
        v29 = SAUIStringFromElementViewLayoutMode();
        *buf = 134349570;
        v31 = v28;
        v32 = 2112;
        v33 = v29;
        v34 = 2112;
        v35 = v11;
        _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%{public}lu] Cleaning up ContainerDisappearanceTransitionProvider for change to layoutMode: %@; %@", buf, 0x20u);
      }

      [(SBSAElementRemovalTransitionProvider *)v11 removeFromParentProvider];
      objc_storeWeak(&self->_elementRemovalTransitionProvider, 0);
    }

    if (v13 && SBSALayoutModeAndCustomLayoutOptionBehavesLikeTargetLayoutMode(a3, a4, [v13 supportedElementLayoutMode]))
    {
      v15 = v13;
      v16 = [v9 preferences];
      v17 = [v16 isCollisionImminent];

      if (!v17)
      {
LABEL_22:

        v11 = 0;
        goto LABEL_37;
      }

      v18 = SBLogSystemAperturePreferencesStackElements();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v9 queryIteration];
        *buf = 134349570;
        v31 = v27;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = WeakRetained;
        _os_log_debug_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEBUG, "[%{public}lu] Layout provider for desired layout mode exists, but collision required – removing layout provider '%@', transition provider '%@'", buf, 0x20u);
      }

      [v15 removeFromParentProvider];
      [(SBSAElementRemovalTransitionProvider *)WeakRetained removeFromParentProvider];

      objc_storeWeak(&self->_activeTransitionProvider, 0);
      WeakRetained = 0;
    }

    v19 = SBLogSystemAperturePreferencesStackElements();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:v9 customLayoutCustomizingOptions:v19 context:?];
    }

    v20 = [(SBSAElementRemovalTransitionProvider *)WeakRetained targetElementLayoutMode];
    v21 = [(SBSAElementRemovalTransitionProvider *)WeakRetained isInitialized]^ 1;
    if (v20 == a3)
    {
      LOBYTE(v21) = 1;
    }

    if (!WeakRetained || (v21 & 1) == 0)
    {
      v22 = objc_alloc_init(SBSALayoutTransitionProvider);
      objc_storeWeak(&self->_activeTransitionProvider, v22);
      [(SBSABasePreferencesProvider *)self setChildProvider:v22];
      v23 = SBLogSystemAperturePreferencesStackElements();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:v9 customLayoutCustomizingOptions:v22 context:v23];
      }

      [(SBSAElementRemovalTransitionProvider *)WeakRetained removeFromParentProvider];
    }

    v15 = 0;
    goto LABEL_22;
  }

  if ((a3 + 1) <= 1)
  {
    if (v12)
    {
      if ([v12 supportedElementLayoutMode] <= 0)
      {
        [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:a2 customLayoutCustomizingOptions:self context:?];
      }

      [v13 removeFromParentProvider];
    }

    if (WeakRetained)
    {
      [(SBSAElementRemovalTransitionProvider *)WeakRetained removeFromParentProvider];

      objc_storeWeak(&self->_activeTransitionProvider, 0);
    }

    if (!v11)
    {
      v24 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];
      if (v24)
      {
        v25 = v24;
        [v24 removeFromParentProvider];
      }

      v26 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];

      if (v26)
      {
        [SBSALayoutModeSupportingProvider _transitionToLayoutModeIfNecessary:a2 customLayoutCustomizingOptions:self context:?];
      }

      v11 = [(SBSABasePreferencesProvider *)[SBSAElementRemovalTransitionProvider alloc] initWithParentProvider:self];
      objc_storeWeak(&self->_elementRemovalTransitionProvider, v11);
    }

    WeakRetained = 0;
  }

LABEL_37:
}

- (void)_transitionToLayoutModeIfNecessary:(void *)a1 customLayoutCustomizingOptions:(NSObject *)a2 context:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134349056;
  v4 = [a1 queryIteration];
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[%{public}lu] No layout provider for desired layout mode – transition required", &v3, 0xCu);
}

- (void)_transitionToLayoutModeIfNecessary:(void *)a1 customLayoutCustomizingOptions:(uint64_t)a2 context:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134349314;
  v6 = [a1 queryIteration];
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "[%{public}lu] Added new transition provider: %@", &v5, 0x16u);
}

- (void)_transitionToLayoutModeIfNecessary:(uint64_t)a1 customLayoutCustomizingOptions:(uint64_t)a2 context:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSALayoutModeSupportingProvider.m" lineNumber:79 description:@"All SBSAElementLayoutModeSupporting providers currently do not support LayoutModeNone."];
}

- (void)_transitionToLayoutModeIfNecessary:(uint64_t)a1 customLayoutCustomizingOptions:(uint64_t)a2 context:.cold.4(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSALayoutModeSupportingProvider.m" lineNumber:95 description:@"There is still an element content provider in the stack?"];
}

@end