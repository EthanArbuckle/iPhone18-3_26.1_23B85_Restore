@interface SAUISystemApertureManager
+ (void)initialize;
- (BOOL)_axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:(id)a3;
- (BOOL)_elementRequiresBeingDisplayedAlone:(id)a3;
- (BOOL)viewProviderShouldMakeSensorShadowVisible:(id)a3;
- (CGRect)interSensorRegionInContentView:(id)a3;
- (CGRect)sensorRegionInContentView:(id)a3 fromViewProvider:(id)a4;
- (CGRect)sensorRegionObstructingViewProvider:(id)a3 inContentView:(id)a4;
- (CGSize)maximumAvailableSizeForProvidedLeadingView:(id)a3 fromViewProvider:(id)a4;
- (CGSize)maximumAvailableSizeForProvidedMinimalView:(id)a3 fromViewProvider:(id)a4;
- (CGSize)maximumAvailableSizeForProvidedTrailingView:(id)a3 fromViewProvider:(id)a4;
- (NSArray)registeredElements;
- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)a3;
- (SAUIElementViewControlling)indicatorElementViewController;
- (SAUISystemApertureManager)initWithElementAuthority:(id)a3;
- (SAUISystemApertureManagerDelegate)delegate;
- (double)alertingDurationForHost:(id)a3;
- (double)concentricPaddingForProvidedView:(id)a3 fromViewProvider:(id)a4;
- (double)viewProviderSensorShadowOpacityFactor:(id)a3;
- (id)_assertionForElement:(id)a3;
- (id)_assertionForElementCreatingIfNecessary:(id)a3;
- (id)_elementViewControllerForElement:(id)a3 creatingIfNecessary:(BOOL)a4;
- (id)_invalidatedAssertionForElement:(id)a3;
- (id)_temporallyOrderedVisibleAlertAndActivityElements;
- (id)registerElement:(id)a3;
- (unint64_t)_maximumNumberOfSimultaneouslyVisibleElements;
- (void)_addInvalidatedAssertion:(id)a3 forElement:(id)a4;
- (void)_axLayoutSpecifierRequestsDiminishment:(id)a3;
- (void)_compactElements;
- (void)_elementAssertionDidInvalidate:(id)a3;
- (void)_invalidatePromotedState;
- (void)_invalidateTemporallyOrderedElements;
- (void)_purgeRemovedElementViewControllers;
- (void)_reevaluatePromotedElements;
- (void)_removeAssertionForElement:(id)a3;
- (void)_removeElementViewController:(id)a3;
- (void)_removeInvalidatedAssertionForElement:(id)a3;
- (void)_requestHostNeedsLayout;
- (void)elementRequestsNegativeResponse:(id)a3;
- (void)elementRequestsSignificantUpdateTransition:(id)a3;
- (void)elementViewControllingDidDisappear:(id)a3;
- (void)hostWillPerformLayout;
- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)a3;
- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)a3;
- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)a3;
- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)a3;
- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)a3;
- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5;
@end

@implementation SAUISystemApertureManager

- (void)_invalidatePromotedState
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_promotedStateIsValid)
  {
    obj->_promotedStateIsValid = 0;
    [(SAUISystemApertureManager *)obj _invalidateTemporallyOrderedElements];
    [(SAUISystemApertureManager *)obj _requestHostNeedsLayout];
  }

  objc_sync_exit(obj);
}

- (void)_invalidateTemporallyOrderedElements
{
  obj = self;
  objc_sync_enter(obj);
  temporallyOrderedElements = obj->_temporallyOrderedElements;
  obj->_temporallyOrderedElements = 0;

  objc_sync_exit(obj);
}

- (void)_requestHostNeedsLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained systemApertureManagerRequestsHostNeedsLayout:self];
  }
}

- (void)hostWillPerformLayout
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_promotedStateIsValid)
  {
    [(SAUISystemApertureManager *)obj _reevaluatePromotedElements];
  }

  objc_sync_exit(obj);
}

- (void)_reevaluatePromotedElements
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_26C482000, a2, OS_LOG_TYPE_DEBUG, "Updated ordered element view controllers: %{public}@", &v3, 0xCu);
}

- (id)_temporallyOrderedVisibleAlertAndActivityElements
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(SAUISystemApertureManager *)v2 _compactElements];
  if (!v2->_temporallyOrderedElements && [(NSPointerArray *)v2->_elements count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSPointerArray count](v2->_elements, "count")}];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(NSPointerArray *)v2->_elements copy];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v9 = [(NSMapTable *)v2->_elementsToAssertions objectForKey:v8];
          if ([v9 isValid] && (SAHasIndicatorBehavior() & 1) == 0)
          {
            v10 = SAUILayoutSpecifyingOverriderForElement(v8);
            v11 = [v10 preferredLayoutMode] > 0;

            if (v11)
            {
              [(NSArray *)v3 addObject:v8];
            }
          }

          else
          {
          }

          ++v7;
        }

        while (v5 != v7);
        v12 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v5 = v12;
      }

      while (v12);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__SAUISystemApertureManager__temporallyOrderedVisibleAlertAndActivityElements__block_invoke;
    v17[3] = &unk_279D32A30;
    v17[4] = v2;
    [(NSArray *)v3 sortUsingComparator:v17];
    temporallyOrderedElements = v2->_temporallyOrderedElements;
    v2->_temporallyOrderedElements = v3;
    v14 = v3;
  }

  v15 = v2->_temporallyOrderedElements;
  objc_sync_exit(v2);

  return v15;
}

- (void)_compactElements
{
  obj = self;
  objc_sync_enter(obj);
  if ([(NSPointerArray *)obj->_elements sa_compact])
  {
    [(SAUISystemApertureManager *)obj _invalidateTemporallyOrderedElements];
  }

  objc_sync_exit(obj);
}

- (unint64_t)_maximumNumberOfSimultaneouslyVisibleElements
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained systemApertureManagerMaximumNumberOfSimultaneouslyVisibleElements:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (SAUIElementViewControlling)indicatorElementViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorElementViewController);
  v4 = [WeakRetained elementViewProvider];
  v5 = [v4 element];
  v6 = [(SAUISystemApertureManager *)self _assertionForElement:v5];
  if ([v6 isValid])
  {
    v7 = WeakRetained;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (NSArray)registeredElements
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSPointerArray *)v2->_elements sa_compact];
  v3 = [(NSPointerArray *)v2->_elements allObjects];
  objc_sync_exit(v2);

  return v3;
}

- (void)_purgeRemovedElementViewControllers
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMutableSet *)v2->_removedElementViewControllers copy];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = *v17;
    *&v5 = 138543362;
    v15 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = SAUILogManager;
        if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v21 = v8;
          _os_log_impl(&dword_26C482000, v9, OS_LOG_TYPE_DEFAULT, "Purging removed element view controller: %{public}@", buf, 0xCu);
        }

        [(NSMutableSet *)v2->_removedElementViewControllers removeObject:v8, v15];
        v10 = [v8 elementViewProvider];
        v11 = [v10 element];

        v12 = [(SAUISystemApertureManager *)v2 _invalidatedAssertionForElement:v11];
        [(SAUISystemApertureManager *)v2 _removeInvalidatedAssertionForElement:v11];
        v13 = SAUILayoutSpecifyingOverriderForElement(v11);
        if (v12)
        {
          v14 = [v12 invalidationLayoutModeChangeReason];
        }

        else
        {
          v14 = 0;
        }

        [v13 setLayoutMode:-1 reason:v14];

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

id __56__SAUISystemApertureManager__reevaluatePromotedElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 elementViewProvider];
  v3 = [v2 element];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    SAUIRegisterSystemApertureLogging();
  }
}

- (SAUISystemApertureManager)initWithElementAuthority:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SAUISystemApertureManager *)a2 initWithElementAuthority:?];
  }

  v10.receiver = self;
  v10.super_class = SAUISystemApertureManager;
  v7 = [(SAUISystemApertureManager *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_elementAuthority, a3);
  }

  return v8;
}

- (id)registerElement:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SAUILogManager;
  if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = MEMORY[0x26D6A1D80](v4);
    *buf = 138543362;
    v32 = v7;
    _os_log_impl(&dword_26C482000, v6, OS_LOG_TYPE_DEFAULT, "Asked to register element: %{public}@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [(SAUISystemApertureManager *)self registeredElements];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v9)
  {
    v11 = *v28;
    *&v10 = 138412802;
    v24 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [(SAUISystemApertureManager *)self _assertionForElement:v13, v24];
        v15 = v14;
        if (v14)
        {
          if ([v14 isValid])
          {
            if (SAElementIdentityEqualToIdentity())
            {
              v16 = SAUILogManager;
              if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v32 = v4;
                v33 = 2112;
                v34 = v13;
                v35 = 2112;
                v36 = v15;
                _os_log_error_impl(&dword_26C482000, v16, OS_LOG_TYPE_ERROR, "Invalid Client Request: Attempting to register element (%@) with same identity as already registered element (%@) with assertion: %@", buf, 0x20u);
              }
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v9);
  }

  v17 = [(SAUISystemApertureManager *)self _assertionForElementCreatingIfNecessary:v4];
  if (v17)
  {
    if (SAHasIndicatorBehavior())
    {
      v18 = [(SAUISystemApertureManager *)self _elementViewControllerForElement:v4 creatingIfNecessary:1];
      [(SAUISystemApertureManager *)self _requestHostNeedsLayout];
    }

    else
    {
      v19 = [v4 viewProvider];
      v20 = [v19 systemApertureLayoutSpecifyingOverrider];
      [v20 addBehaviorOverridingParticipant:self];

      v21 = [(SAUISystemApertureManager *)self _elementViewControllerForElement:v4 creatingIfNecessary:1];
      [(SAUISystemApertureManager *)self _invalidatePromotedState];
      if (SAHasAlertBehavior() && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_initWeak(buf, v17);
        v22 = [v21 alertAssertion];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __45__SAUISystemApertureManager_registerElement___block_invoke;
        v25[3] = &unk_279D32738;
        objc_copyWeak(&v26, buf);
        [v22 addInvalidationBlock:v25];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }
    }
  }

  return v17;
}

void __45__SAUISystemApertureManager_registerElement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateWithReason:v4];
}

- (void)elementRequestsNegativeResponse:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained elementRequestsNegativeResponse:v5];
  }
}

- (void)elementRequestsSignificantUpdateTransition:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained elementRequestsSignificantUpdateTransition:v5];
  }
}

- (double)alertingDurationForHost:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(SAUISystemApertureManager *)a2 alertingDurationForHost:WeakRetained];
  }

  [WeakRetained alertingDurationForHost:v5];
  v8 = v7;

  return v8;
}

- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(SAUISystemApertureManager *)self _invalidatePromotedState];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:v4];
  }
}

- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:v4];
  }
}

- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained menuPresentationRequestDidChangeForLayoutSpecifier:v4];
  }
}

- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained edgeOutsetsForSize:{width, height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.trailing = v17;
  result.bottom = v16;
  result.leading = v15;
  result.top = v14;
  return result;
}

- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    [(SAUISystemApertureManager *)self _invalidatePromotedState];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:v6];
    }

    v4 = v6;
  }
}

- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained preferredComponentViewSizeDidInvalidateForLayoutSpecifier:v6];
    }

    v4 = v6;
  }
}

- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:v6];
    }

    v4 = v6;
  }
}

- (CGRect)interSensorRegionInContentView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained interSensorRegionInContentView:v4];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)concentricPaddingForProvidedView:(id)a3 fromViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained concentricPaddingForProvidedView:v6 fromViewProvider:v7];
    v9 = v10;
  }

  return v9;
}

- (CGRect)sensorRegionObstructingViewProvider:(id)a3 inContentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sensorRegionObstructingViewProvider:v6 inContentView:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)sensorRegionInContentView:(id)a3 fromViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sensorRegionInContentView:v6 fromViewProvider:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)viewProviderShouldMakeSensorShadowVisible:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained viewProviderShouldMakeSensorShadowVisible:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)viewProviderSensorShadowOpacityFactor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewProviderSensorShadowOpacityFactor:v4];
    v6 = v7;
  }

  return v6;
}

- (CGSize)maximumAvailableSizeForProvidedMinimalView:(id)a3 fromViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained maximumAvailableSizeForProvidedMinimalView:v6 fromViewProvider:v7];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)maximumAvailableSizeForProvidedLeadingView:(id)a3 fromViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained maximumAvailableSizeForProvidedLeadingView:v6 fromViewProvider:v7];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)maximumAvailableSizeForProvidedTrailingView:(id)a3 fromViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained maximumAvailableSizeForProvidedTrailingView:v6 fromViewProvider:v7];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_axLayoutSpecifierRequestsDiminishment:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _axLayoutSpecifierRequestsDiminishment:v5];
  }
}

- (BOOL)_axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained _axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4 forTargetWithOverrider:(id)a5
{
  v8 = a5;
  v9 = [v8 layoutMode];
  v10 = [v8 layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
  [v10 setLayoutMode:a3 reason:a4 forTargetWithOverrider:v8];

  v11 = [v8 layoutMode];
  if (v9 != v11)
  {

    [(SAUISystemApertureManager *)self _invalidatePromotedState];
  }
}

- (void)elementViewControllingDidDisappear:(id)a3
{
  v12 = a3;
  v4 = [v12 elementViewProvider];
  v5 = [v4 element];
  v6 = [(SAUISystemApertureManager *)self _assertionForElement:v5];
  v7 = [v6 isValid];

  if ((v7 & 1) == 0)
  {
    v8 = objc_opt_class();
    v9 = v12;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [(SAUISystemApertureManager *)self _removeElementViewController:v11];
    [(SAUISystemApertureManager *)self _purgeRemovedElementViewControllers];
  }
}

- (id)_elementViewControllerForElement:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_45;
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMapTable *)v7->_elementsToElementViewControllers objectForKey:v6];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (!v9)
  {
    v10 = SAUILogManager;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x26D6A1D80](v6);
      *buf = 138543362;
      v39 = v11;
      _os_log_impl(&dword_26C482000, v10, OS_LOG_TYPE_DEFAULT, "Asked to add view controller for element: %{public}@", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [(NSMutableSet *)v7->_removedElementViewControllers copy];
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v8 = 0;
      v15 = *v34;
      *&v14 = 138543362;
      v32 = v14;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [v17 elementViewProvider];
          v19 = [v18 element];
          v20 = v19 == v6;

          if (v20)
          {
            v21 = v17;

            [(NSMutableSet *)v7->_removedElementViewControllers removeObject:v21];
            if (SAHasIndicatorBehavior())
            {
              objc_storeWeak(&v7->_indicatorElementViewController, v21);
            }

            v22 = SAUILogManager;
            if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v32;
              v39 = v21;
              _os_log_impl(&dword_26C482000, v22, OS_LOG_TYPE_DEFAULT, "Adding back element view controller that had been removed: %{public}@", buf, 0xCu);
            }

            v8 = v21;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);

      if (v8)
      {
LABEL_41:
        elementsToElementViewControllers = v7->_elementsToElementViewControllers;
        if (!elementsToElementViewControllers)
        {
          v29 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v30 = v7->_elementsToElementViewControllers;
          v7->_elementsToElementViewControllers = v29;

          elementsToElementViewControllers = v7->_elementsToElementViewControllers;
        }

        [(NSMapTable *)elementsToElementViewControllers setObject:v8 forKey:v6];
        [(SAUILayoutSpecifyingElementViewController *)v8 addElementViewControllingObserver:v7];
        goto LABEL_44;
      }
    }

    else
    {
    }

    if (SAHasIndicatorBehavior())
    {
      v23 = [SAUIIndicatorElementViewController alloc];
      v24 = [v6 viewProvider];
      v8 = [(SAUIIndicatorElementViewController *)v23 initWithIndicatorElementViewProvider:v24];

      [(SAUILayoutSpecifyingElementViewController *)v8 setLayoutHost:v7];
      objc_storeWeak(&v7->_indicatorElementViewController, v8);
    }

    else
    {
      if (((objc_opt_respondsToSelector() & 1) == 0 || ([v6 hasAlertBehavior] & 1) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend(v6, "hasActivityBehavior")))
      {
        v26 = SAUILogManager;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = MEMORY[0x26D6A1D80](v6);
          [(SAUISystemApertureManager *)v27 _elementViewControllerForElement:buf creatingIfNecessary:v26];
        }

        v8 = 0;
        goto LABEL_44;
      }

      v25 = [v6 viewProvider];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v8 = [[SAUIElementViewController alloc] initWithElementViewProvider:v25];
      }

      else
      {
        v8 = 0;
      }

      [(SAUILayoutSpecifyingElementViewController *)v8 setLayoutMode:0 reason:4];
      [(SAUILayoutSpecifyingElementViewController *)v8 setLayoutHost:v7];
    }

    if (v8)
    {
      goto LABEL_41;
    }
  }

LABEL_44:
  objc_sync_exit(v7);

LABEL_45:

  return v8;
}

- (void)_removeElementViewController:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SAUILogManager;
  if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v4;
    _os_log_impl(&dword_26C482000, v5, OS_LOG_TYPE_DEFAULT, "Asked to remove element view controller: %{public}@", &v16, 0xCu);
  }

  if (v4)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [v4 elementViewProvider];
    v8 = [v7 element];

    v9 = [(SAUISystemApertureManager *)v6 elementViewControllerForElement:v8];
    if (v9 == v4)
    {
      removedElementViewControllers = v6->_removedElementViewControllers;
      if (!removedElementViewControllers)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v13 = v6->_removedElementViewControllers;
        v6->_removedElementViewControllers = v12;

        removedElementViewControllers = v6->_removedElementViewControllers;
      }

      [(NSMutableSet *)removedElementViewControllers addObject:v4];
      [(NSMapTable *)v6->_elementsToElementViewControllers removeObjectForKey:v8];
      [v9 removeElementViewControllingObserver:v6];
      v14 = SAUILogManager;
      if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v4;
        _os_log_impl(&dword_26C482000, v14, OS_LOG_TYPE_DEFAULT, "Removed element view controller: %{public}@", &v16, 0xCu);
      }
    }

    else
    {
      v10 = SAUILogManager;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = MEMORY[0x26D6A1D80](v8);
        v16 = 138543874;
        v17 = v15;
        v18 = 2114;
        v19 = v9;
        v20 = 2114;
        v21 = v4;
        _os_log_error_impl(&dword_26C482000, v10, OS_LOG_TYPE_ERROR, "Asked to remove element view controller with element that is associated with a different view controller: element: %{public}@; expected view controller: %{public}@; argument view controller: %{public}@", &v16, 0x20u);
      }
    }

    objc_sync_exit(v6);
  }
}

uint64_t __78__SAUISystemApertureManager__temporallyOrderedVisibleAlertAndActivityElements__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__SAUISystemApertureManager__temporallyOrderedVisibleAlertAndActivityElements__block_invoke_2;
  v12[3] = &unk_279D32A08;
  v12[4] = *(a1 + 32);
  v4 = a3;
  v5 = a2;
  v6 = MEMORY[0x26D6A2080](v12);
  v7 = (v6)[2](v6, v5);

  v8 = (v6)[2](v6, v4);

  [v7 timeIntervalSinceDate:v8];
  if (v9 > 0.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

id __78__SAUISystemApertureManager__temporallyOrderedVisibleAlertAndActivityElements__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 40) objectForKey:v3];
  v5 = [v4 creationDate];

  if (SAHasActivityBehavior())
  {
    v6 = [*(a1 + 32) elementViewControllerForElement:v3];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 temporallyOrderedAlertingActivityAssertions];
      v8 = [v7 lastObject];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 creationDate];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;

    v5 = v12;
  }

  return v5;
}

- (BOOL)_elementRequiresBeingDisplayedAlone:(id)a3
{
  v4 = a3;
  if (SAHasAlertBehavior())
  {
    goto LABEL_2;
  }

  v7 = SAUILayoutSpecifyingOverriderForElement(v4);
  v8 = [v7 layoutModePreference];
  v9 = [v8 preferredLayoutMode];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v9 == 3)
    {

      goto LABEL_2;
    }

LABEL_10:

    goto LABEL_11;
  }

  v10 = [v7 customizationOptionsForLayoutMode:v9];
  if (v9 != 3)
  {
    goto LABEL_10;
  }

  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_2:
    v5 = 1;
    goto LABEL_3;
  }

LABEL_11:
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SAElementConsidering *)self->_elementAuthority elementRequiresBeingDisplayedAlone:v4];
  }

  else
  {
    v5 = 0;
  }

LABEL_3:

  return v5;
}

id __56__SAUISystemApertureManager__reevaluatePromotedElements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 elementViewProvider];
  v3 = [v2 element];
  v4 = MEMORY[0x26D6A1D80]();

  return v4;
}

- (id)_assertionForElement:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)v5->_elementsToAssertions objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)_elementAssertionDidInvalidate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 element];
  v6 = SAUILogManager;
  if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = MEMORY[0x26D6A1D80](v5);
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_26C482000, v7, OS_LOG_TYPE_DEFAULT, "Assertion for element did invalidate: %{public}@", &v14, 0xCu);
  }

  [(SAUISystemApertureManager *)self _addInvalidatedAssertion:v4 forElement:v5];

  [(SAUISystemApertureManager *)self _removeAssertionForElement:v5];
  v9 = [(SAUISystemApertureManager *)self elementViewControllerForElement:v5];
  v10 = v9;
  if (v9 && (![v9 isViewLoaded] || !objc_msgSend(v10, "_appearState")))
  {
    v11 = SAUILogManager;
    if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = MEMORY[0x26D6A1D80](v5);
      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_26C482000, v12, OS_LOG_TYPE_DEFAULT, "Removing unpresented element view controller for invalidated element: %{public}@", &v14, 0xCu);
    }

    [(SAUISystemApertureManager *)self _removeElementViewController:v10];
    [(SAUISystemApertureManager *)self _purgeRemovedElementViewControllers];
  }

  if (SAHasIndicatorBehavior())
  {
    [(SAUISystemApertureManager *)self _requestHostNeedsLayout];
  }

  else
  {
    [(SAUISystemApertureManager *)self _invalidatePromotedState];
  }
}

- (id)_assertionForElementCreatingIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SAUISystemApertureManager *)v5 _assertionForElement:v4];
    if (!v6)
    {
      [v4 uniquelyIdentifyElement];
      objc_initWeak(&location, v5);
      v7 = [SAUIElementAssertion alloc];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __69__SAUISystemApertureManager__assertionForElementCreatingIfNecessary___block_invoke;
      v18 = &unk_279D32738;
      objc_copyWeak(&v19, &location);
      v6 = [(SAUIElementAssertion *)v7 initWithElement:v4 invalidationHandler:&v15];
      if (v6)
      {
        elementsToAssertions = v5->_elementsToAssertions;
        if (!elementsToAssertions)
        {
          v9 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
          v10 = v5->_elementsToAssertions;
          v5->_elementsToAssertions = v9;

          elementsToAssertions = v5->_elementsToAssertions;
        }

        [(NSMapTable *)elementsToAssertions setObject:v6 forKey:v4, v15, v16, v17, v18];
        elements = v5->_elements;
        if (!elements)
        {
          v12 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
          v13 = v5->_elements;
          v5->_elements = v12;

          elements = v5->_elements;
        }

        [(NSPointerArray *)elements addPointer:v4];
        [(SAUISystemApertureManager *)v5 _invalidateTemporallyOrderedElements];
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __69__SAUISystemApertureManager__assertionForElementCreatingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_opt_class();
  v8 = v3;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [WeakRetained _elementAssertionDidInvalidate:v7];
}

- (void)_removeAssertionForElement:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SAUISystemApertureManager *)v5 _assertionForElement:v8];
    if (v6)
    {
      [(SAUISystemApertureManager *)v5 _compactElements];
      for (i = 0; i < [(NSPointerArray *)v5->_elements count]; ++i)
      {
        if ([(NSPointerArray *)v5->_elements pointerAtIndex:i]== v8)
        {
          if (i != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSPointerArray *)v5->_elements removePointerAtIndex:i];
            [(NSMapTable *)v5->_elementsToAssertions removeObjectForKey:v8];
            [(SAUISystemApertureManager *)v5 _compactElements];
            [(SAUISystemApertureManager *)v5 _invalidateTemporallyOrderedElements];
          }

          break;
        }
      }
    }

    objc_sync_exit(v5);
    v4 = v8;
  }
}

- (void)_addInvalidatedAssertion:(id)a3 forElement:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v12 || [v12 isValid])
    {
      [(SAUISystemApertureManager *)a2 _addInvalidatedAssertion:v12 forElement:?];
    }

    v8 = self;
    objc_sync_enter(v8);
    elementsToInvalidatedAssertions = v8->_elementsToInvalidatedAssertions;
    if (!elementsToInvalidatedAssertions)
    {
      v10 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v11 = v8->_elementsToInvalidatedAssertions;
      v8->_elementsToInvalidatedAssertions = v10;

      elementsToInvalidatedAssertions = v8->_elementsToInvalidatedAssertions;
    }

    [(NSMapTable *)elementsToInvalidatedAssertions setObject:v12 forKey:v7];
    objc_sync_exit(v8);
  }
}

- (id)_invalidatedAssertionForElement:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)v5->_elementsToInvalidatedAssertions objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)_removeInvalidatedAssertionForElement:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMapTable *)v4->_elementsToInvalidatedAssertions removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (SAUISystemApertureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithElementAuthority:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUISystemApertureManager.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"elementAuthority"}];
}

- (void)alertingDurationForHost:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
}

- (void)_elementViewControllerForElement:(os_log_t)log creatingIfNecessary:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26C482000, log, OS_LOG_TYPE_ERROR, "Attempt to add element that has no known behavior: %{public}@", buf, 0xCu);
}

- (void)_addInvalidatedAssertion:(uint64_t)a3 forElement:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SAUISystemApertureManager.m" lineNumber:639 description:{@"Invalidated assertion argument either missing, or valid: %@", a3}];
}

@end