@interface SAUISystemApertureManager
+ (void)initialize;
- (BOOL)_axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:(id)interaction;
- (BOOL)_elementRequiresBeingDisplayedAlone:(id)alone;
- (BOOL)viewProviderShouldMakeSensorShadowVisible:(id)visible;
- (CGRect)interSensorRegionInContentView:(id)view;
- (CGRect)sensorRegionInContentView:(id)view fromViewProvider:(id)provider;
- (CGRect)sensorRegionObstructingViewProvider:(id)provider inContentView:(id)view;
- (CGSize)maximumAvailableSizeForProvidedLeadingView:(id)view fromViewProvider:(id)provider;
- (CGSize)maximumAvailableSizeForProvidedMinimalView:(id)view fromViewProvider:(id)provider;
- (CGSize)maximumAvailableSizeForProvidedTrailingView:(id)view fromViewProvider:(id)provider;
- (NSArray)registeredElements;
- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size;
- (SAUIElementViewControlling)indicatorElementViewController;
- (SAUISystemApertureManager)initWithElementAuthority:(id)authority;
- (SAUISystemApertureManagerDelegate)delegate;
- (double)alertingDurationForHost:(id)host;
- (double)concentricPaddingForProvidedView:(id)view fromViewProvider:(id)provider;
- (double)viewProviderSensorShadowOpacityFactor:(id)factor;
- (id)_assertionForElement:(id)element;
- (id)_assertionForElementCreatingIfNecessary:(id)necessary;
- (id)_elementViewControllerForElement:(id)element creatingIfNecessary:(BOOL)necessary;
- (id)_invalidatedAssertionForElement:(id)element;
- (id)_temporallyOrderedVisibleAlertAndActivityElements;
- (id)registerElement:(id)element;
- (unint64_t)_maximumNumberOfSimultaneouslyVisibleElements;
- (void)_addInvalidatedAssertion:(id)assertion forElement:(id)element;
- (void)_axLayoutSpecifierRequestsDiminishment:(id)diminishment;
- (void)_compactElements;
- (void)_elementAssertionDidInvalidate:(id)invalidate;
- (void)_invalidatePromotedState;
- (void)_invalidateTemporallyOrderedElements;
- (void)_purgeRemovedElementViewControllers;
- (void)_reevaluatePromotedElements;
- (void)_removeAssertionForElement:(id)element;
- (void)_removeElementViewController:(id)controller;
- (void)_removeInvalidatedAssertionForElement:(id)element;
- (void)_requestHostNeedsLayout;
- (void)elementRequestsNegativeResponse:(id)response;
- (void)elementRequestsSignificantUpdateTransition:(id)transition;
- (void)elementViewControllingDidDisappear:(id)disappear;
- (void)hostWillPerformLayout;
- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)specifier;
- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider;
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
  v2 = *self;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_26C482000, a2, OS_LOG_TYPE_DEBUG, "Updated ordered element view controllers: %{public}@", &v3, 0xCu);
}

- (id)_temporallyOrderedVisibleAlertAndActivityElements
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SAUISystemApertureManager *)selfCopy _compactElements];
  if (!selfCopy->_temporallyOrderedElements && [(NSPointerArray *)selfCopy->_elements count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSPointerArray count](selfCopy->_elements, "count")}];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(NSPointerArray *)selfCopy->_elements copy];
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
          v9 = [(NSMapTable *)selfCopy->_elementsToAssertions objectForKey:v8];
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
    v17[4] = selfCopy;
    [(NSArray *)v3 sortUsingComparator:v17];
    temporallyOrderedElements = selfCopy->_temporallyOrderedElements;
    selfCopy->_temporallyOrderedElements = v3;
    v14 = v3;
  }

  v15 = selfCopy->_temporallyOrderedElements;
  objc_sync_exit(selfCopy);

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
  elementViewProvider = [WeakRetained elementViewProvider];
  element = [elementViewProvider element];
  v6 = [(SAUISystemApertureManager *)self _assertionForElement:element];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSPointerArray *)selfCopy->_elements sa_compact];
  allObjects = [(NSPointerArray *)selfCopy->_elements allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

- (void)_purgeRemovedElementViewControllers
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMutableSet *)selfCopy->_removedElementViewControllers copy];
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

        [(NSMutableSet *)selfCopy->_removedElementViewControllers removeObject:v8, v15];
        elementViewProvider = [v8 elementViewProvider];
        element = [elementViewProvider element];

        v12 = [(SAUISystemApertureManager *)selfCopy _invalidatedAssertionForElement:element];
        [(SAUISystemApertureManager *)selfCopy _removeInvalidatedAssertionForElement:element];
        v13 = SAUILayoutSpecifyingOverriderForElement(element);
        if (v12)
        {
          invalidationLayoutModeChangeReason = [v12 invalidationLayoutModeChangeReason];
        }

        else
        {
          invalidationLayoutModeChangeReason = 0;
        }

        [v13 setLayoutMode:-1 reason:invalidationLayoutModeChangeReason];

        ++v7;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
}

id __56__SAUISystemApertureManager__reevaluatePromotedElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 elementViewProvider];
  v3 = [v2 element];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    SAUIRegisterSystemApertureLogging();
  }
}

- (SAUISystemApertureManager)initWithElementAuthority:(id)authority
{
  authorityCopy = authority;
  if (!authorityCopy)
  {
    [(SAUISystemApertureManager *)a2 initWithElementAuthority:?];
  }

  v10.receiver = self;
  v10.super_class = SAUISystemApertureManager;
  v7 = [(SAUISystemApertureManager *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_elementAuthority, authority);
  }

  return v8;
}

- (id)registerElement:(id)element
{
  v38 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v5 = SAUILogManager;
  if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = MEMORY[0x26D6A1D80](elementCopy);
    *buf = 138543362;
    v32 = v7;
    _os_log_impl(&dword_26C482000, v6, OS_LOG_TYPE_DEFAULT, "Asked to register element: %{public}@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  registeredElements = [(SAUISystemApertureManager *)self registeredElements];
  v9 = [registeredElements countByEnumeratingWithState:&v27 objects:v37 count:16];
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
          objc_enumerationMutation(registeredElements);
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
                v32 = elementCopy;
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

      v9 = [registeredElements countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v9);
  }

  v17 = [(SAUISystemApertureManager *)self _assertionForElementCreatingIfNecessary:elementCopy];
  if (v17)
  {
    if (SAHasIndicatorBehavior())
    {
      v18 = [(SAUISystemApertureManager *)self _elementViewControllerForElement:elementCopy creatingIfNecessary:1];
      [(SAUISystemApertureManager *)self _requestHostNeedsLayout];
    }

    else
    {
      viewProvider = [elementCopy viewProvider];
      systemApertureLayoutSpecifyingOverrider = [viewProvider systemApertureLayoutSpecifyingOverrider];
      [systemApertureLayoutSpecifyingOverrider addBehaviorOverridingParticipant:self];

      v21 = [(SAUISystemApertureManager *)self _elementViewControllerForElement:elementCopy creatingIfNecessary:1];
      [(SAUISystemApertureManager *)self _invalidatePromotedState];
      if (SAHasAlertBehavior() && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_initWeak(buf, v17);
        alertAssertion = [v21 alertAssertion];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __45__SAUISystemApertureManager_registerElement___block_invoke;
        v25[3] = &unk_279D32738;
        objc_copyWeak(&v26, buf);
        [alertAssertion addInvalidationBlock:v25];

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

- (void)elementRequestsNegativeResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained elementRequestsNegativeResponse:responseCopy];
  }
}

- (void)elementRequestsSignificantUpdateTransition:(id)transition
{
  transitionCopy = transition;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained elementRequestsSignificantUpdateTransition:transitionCopy];
  }
}

- (double)alertingDurationForHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [(SAUISystemApertureManager *)a2 alertingDurationForHost:WeakRetained];
  }

  [WeakRetained alertingDurationForHost:hostCopy];
  v8 = v7;

  return v8;
}

- (void)preferredLayoutModeDidInvalidateForLayoutSpecifier:(id)specifier
{
  if (specifier)
  {
    specifierCopy = specifier;
    [(SAUISystemApertureManager *)self _invalidatePromotedState];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:specifierCopy];
  }
}

- (void)preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:(id)specifier
{
  if (specifier)
  {
    specifierCopy = specifier;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:specifierCopy];
  }
}

- (void)menuPresentationRequestDidChangeForLayoutSpecifier:(id)specifier
{
  if (specifier)
  {
    specifierCopy = specifier;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained menuPresentationRequestDidChangeForLayoutSpecifier:specifierCopy];
  }
}

- (NSDirectionalEdgeInsets)edgeOutsetsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)preferredPromotionDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v6 = specifierCopy;
    [(SAUISystemApertureManager *)self _invalidatePromotedState];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:v6];
    }

    specifierCopy = v6;
  }
}

- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v6 = specifierCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained preferredComponentViewSizeDidInvalidateForLayoutSpecifier:v6];
    }

    specifierCopy = v6;
  }
}

- (void)indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v6 = specifierCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained indicatorNeedsDisplayWellKnownLocationDidInvalidateForLayoutSpecifier:v6];
    }

    specifierCopy = v6;
  }
}

- (CGRect)interSensorRegionInContentView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained interSensorRegionInContentView:viewCopy];
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

- (double)concentricPaddingForProvidedView:(id)view fromViewProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained concentricPaddingForProvidedView:viewCopy fromViewProvider:providerCopy];
    v9 = v10;
  }

  return v9;
}

- (CGRect)sensorRegionObstructingViewProvider:(id)provider inContentView:(id)view
{
  providerCopy = provider;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sensorRegionObstructingViewProvider:providerCopy inContentView:viewCopy];
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

- (CGRect)sensorRegionInContentView:(id)view fromViewProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sensorRegionInContentView:viewCopy fromViewProvider:providerCopy];
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

- (BOOL)viewProviderShouldMakeSensorShadowVisible:(id)visible
{
  visibleCopy = visible;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained viewProviderShouldMakeSensorShadowVisible:visibleCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)viewProviderSensorShadowOpacityFactor:(id)factor
{
  factorCopy = factor;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewProviderSensorShadowOpacityFactor:factorCopy];
    v6 = v7;
  }

  return v6;
}

- (CGSize)maximumAvailableSizeForProvidedMinimalView:(id)view fromViewProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained maximumAvailableSizeForProvidedMinimalView:viewCopy fromViewProvider:providerCopy];
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

- (CGSize)maximumAvailableSizeForProvidedLeadingView:(id)view fromViewProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained maximumAvailableSizeForProvidedLeadingView:viewCopy fromViewProvider:providerCopy];
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

- (CGSize)maximumAvailableSizeForProvidedTrailingView:(id)view fromViewProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained maximumAvailableSizeForProvidedTrailingView:viewCopy fromViewProvider:providerCopy];
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

- (void)_axLayoutSpecifierRequestsDiminishment:(id)diminishment
{
  diminishmentCopy = diminishment;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _axLayoutSpecifierRequestsDiminishment:diminishmentCopy];
  }
}

- (BOOL)_axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained _axLayoutSpecifierRequestsCollapseIfExpandedByUserInteraction:interactionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason forTargetWithOverrider:(id)overrider
{
  overriderCopy = overrider;
  layoutMode = [overriderCopy layoutMode];
  v10 = [overriderCopy layoutSpecifyingOverridingParticipantSubordinateToParticipant:self thatRespondsToSelector:sel_setLayoutMode_reason_forTargetWithOverrider_];
  [v10 setLayoutMode:mode reason:reason forTargetWithOverrider:overriderCopy];

  layoutMode2 = [overriderCopy layoutMode];
  if (layoutMode != layoutMode2)
  {

    [(SAUISystemApertureManager *)self _invalidatePromotedState];
  }
}

- (void)elementViewControllingDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  elementViewProvider = [disappearCopy elementViewProvider];
  element = [elementViewProvider element];
  v6 = [(SAUISystemApertureManager *)self _assertionForElement:element];
  isValid = [v6 isValid];

  if ((isValid & 1) == 0)
  {
    v8 = objc_opt_class();
    v9 = disappearCopy;
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

- (id)_elementViewControllerForElement:(id)element creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v40 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if (!elementCopy)
  {
    v8 = 0;
    goto LABEL_45;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMapTable *)selfCopy->_elementsToElementViewControllers objectForKey:elementCopy];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !necessaryCopy;
  }

  if (!v9)
  {
    v10 = SAUILogManager;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x26D6A1D80](elementCopy);
      *buf = 138543362;
      v39 = v11;
      _os_log_impl(&dword_26C482000, v10, OS_LOG_TYPE_DEFAULT, "Asked to add view controller for element: %{public}@", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [(NSMutableSet *)selfCopy->_removedElementViewControllers copy];
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
          elementViewProvider = [v17 elementViewProvider];
          element = [elementViewProvider element];
          v20 = element == elementCopy;

          if (v20)
          {
            v21 = v17;

            [(NSMutableSet *)selfCopy->_removedElementViewControllers removeObject:v21];
            if (SAHasIndicatorBehavior())
            {
              objc_storeWeak(&selfCopy->_indicatorElementViewController, v21);
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
        elementsToElementViewControllers = selfCopy->_elementsToElementViewControllers;
        if (!elementsToElementViewControllers)
        {
          strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          v30 = selfCopy->_elementsToElementViewControllers;
          selfCopy->_elementsToElementViewControllers = strongToStrongObjectsMapTable;

          elementsToElementViewControllers = selfCopy->_elementsToElementViewControllers;
        }

        [(NSMapTable *)elementsToElementViewControllers setObject:v8 forKey:elementCopy];
        [(SAUILayoutSpecifyingElementViewController *)v8 addElementViewControllingObserver:selfCopy];
        goto LABEL_44;
      }
    }

    else
    {
    }

    if (SAHasIndicatorBehavior())
    {
      v23 = [SAUIIndicatorElementViewController alloc];
      viewProvider = [elementCopy viewProvider];
      v8 = [(SAUIIndicatorElementViewController *)v23 initWithIndicatorElementViewProvider:viewProvider];

      [(SAUILayoutSpecifyingElementViewController *)v8 setLayoutHost:selfCopy];
      objc_storeWeak(&selfCopy->_indicatorElementViewController, v8);
    }

    else
    {
      if (((objc_opt_respondsToSelector() & 1) == 0 || ([elementCopy hasAlertBehavior] & 1) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend(elementCopy, "hasActivityBehavior")))
      {
        v26 = SAUILogManager;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = MEMORY[0x26D6A1D80](elementCopy);
          [(SAUISystemApertureManager *)v27 _elementViewControllerForElement:buf creatingIfNecessary:v26];
        }

        v8 = 0;
        goto LABEL_44;
      }

      viewProvider2 = [elementCopy viewProvider];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v8 = [[SAUIElementViewController alloc] initWithElementViewProvider:viewProvider2];
      }

      else
      {
        v8 = 0;
      }

      [(SAUILayoutSpecifyingElementViewController *)v8 setLayoutMode:0 reason:4];
      [(SAUILayoutSpecifyingElementViewController *)v8 setLayoutHost:selfCopy];
    }

    if (v8)
    {
      goto LABEL_41;
    }
  }

LABEL_44:
  objc_sync_exit(selfCopy);

LABEL_45:

  return v8;
}

- (void)_removeElementViewController:(id)controller
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = SAUILogManager;
  if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = controllerCopy;
    _os_log_impl(&dword_26C482000, v5, OS_LOG_TYPE_DEFAULT, "Asked to remove element view controller: %{public}@", &v16, 0xCu);
  }

  if (controllerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    elementViewProvider = [controllerCopy elementViewProvider];
    element = [elementViewProvider element];

    v9 = [(SAUISystemApertureManager *)selfCopy elementViewControllerForElement:element];
    if (v9 == controllerCopy)
    {
      removedElementViewControllers = selfCopy->_removedElementViewControllers;
      if (!removedElementViewControllers)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v13 = selfCopy->_removedElementViewControllers;
        selfCopy->_removedElementViewControllers = v12;

        removedElementViewControllers = selfCopy->_removedElementViewControllers;
      }

      [(NSMutableSet *)removedElementViewControllers addObject:controllerCopy];
      [(NSMapTable *)selfCopy->_elementsToElementViewControllers removeObjectForKey:element];
      [v9 removeElementViewControllingObserver:selfCopy];
      v14 = SAUILogManager;
      if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = controllerCopy;
        _os_log_impl(&dword_26C482000, v14, OS_LOG_TYPE_DEFAULT, "Removed element view controller: %{public}@", &v16, 0xCu);
      }
    }

    else
    {
      v10 = SAUILogManager;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = MEMORY[0x26D6A1D80](element);
        v16 = 138543874;
        v17 = v15;
        v18 = 2114;
        v19 = v9;
        v20 = 2114;
        v21 = controllerCopy;
        _os_log_error_impl(&dword_26C482000, v10, OS_LOG_TYPE_ERROR, "Asked to remove element view controller with element that is associated with a different view controller: element: %{public}@; expected view controller: %{public}@; argument view controller: %{public}@", &v16, 0x20u);
      }
    }

    objc_sync_exit(selfCopy);
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

- (BOOL)_elementRequiresBeingDisplayedAlone:(id)alone
{
  aloneCopy = alone;
  if (SAHasAlertBehavior())
  {
    goto LABEL_2;
  }

  v7 = SAUILayoutSpecifyingOverriderForElement(aloneCopy);
  layoutModePreference = [v7 layoutModePreference];
  preferredLayoutMode = [layoutModePreference preferredLayoutMode];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (preferredLayoutMode == 3)
    {

      goto LABEL_2;
    }

LABEL_10:

    goto LABEL_11;
  }

  v10 = [v7 customizationOptionsForLayoutMode:preferredLayoutMode];
  if (preferredLayoutMode != 3)
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
    v5 = [(SAElementConsidering *)self->_elementAuthority elementRequiresBeingDisplayedAlone:aloneCopy];
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

- (id)_assertionForElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_elementsToAssertions objectForKey:elementCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_elementAssertionDidInvalidate:(id)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  element = [invalidateCopy element];
  v6 = SAUILogManager;
  if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = MEMORY[0x26D6A1D80](element);
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_26C482000, v7, OS_LOG_TYPE_DEFAULT, "Assertion for element did invalidate: %{public}@", &v14, 0xCu);
  }

  [(SAUISystemApertureManager *)self _addInvalidatedAssertion:invalidateCopy forElement:element];

  [(SAUISystemApertureManager *)self _removeAssertionForElement:element];
  v9 = [(SAUISystemApertureManager *)self elementViewControllerForElement:element];
  v10 = v9;
  if (v9 && (![v9 isViewLoaded] || !objc_msgSend(v10, "_appearState")))
  {
    v11 = SAUILogManager;
    if (os_log_type_enabled(SAUILogManager, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = MEMORY[0x26D6A1D80](element);
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

- (id)_assertionForElementCreatingIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(SAUISystemApertureManager *)selfCopy _assertionForElement:necessaryCopy];
    if (!v6)
    {
      [necessaryCopy uniquelyIdentifyElement];
      objc_initWeak(&location, selfCopy);
      v7 = [SAUIElementAssertion alloc];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __69__SAUISystemApertureManager__assertionForElementCreatingIfNecessary___block_invoke;
      v18 = &unk_279D32738;
      objc_copyWeak(&v19, &location);
      v6 = [(SAUIElementAssertion *)v7 initWithElement:necessaryCopy invalidationHandler:&v15];
      if (v6)
      {
        elementsToAssertions = selfCopy->_elementsToAssertions;
        if (!elementsToAssertions)
        {
          strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
          v10 = selfCopy->_elementsToAssertions;
          selfCopy->_elementsToAssertions = strongToWeakObjectsMapTable;

          elementsToAssertions = selfCopy->_elementsToAssertions;
        }

        [(NSMapTable *)elementsToAssertions setObject:v6 forKey:necessaryCopy, v15, v16, v17, v18];
        elements = selfCopy->_elements;
        if (!elements)
        {
          weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
          v13 = selfCopy->_elements;
          selfCopy->_elements = weakObjectsPointerArray;

          elements = selfCopy->_elements;
        }

        [(NSPointerArray *)elements addPointer:necessaryCopy];
        [(SAUISystemApertureManager *)selfCopy _invalidateTemporallyOrderedElements];
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    objc_sync_exit(selfCopy);
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

- (void)_removeAssertionForElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v8 = elementCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(SAUISystemApertureManager *)selfCopy _assertionForElement:v8];
    if (v6)
    {
      [(SAUISystemApertureManager *)selfCopy _compactElements];
      for (i = 0; i < [(NSPointerArray *)selfCopy->_elements count]; ++i)
      {
        if ([(NSPointerArray *)selfCopy->_elements pointerAtIndex:i]== v8)
        {
          if (i != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSPointerArray *)selfCopy->_elements removePointerAtIndex:i];
            [(NSMapTable *)selfCopy->_elementsToAssertions removeObjectForKey:v8];
            [(SAUISystemApertureManager *)selfCopy _compactElements];
            [(SAUISystemApertureManager *)selfCopy _invalidateTemporallyOrderedElements];
          }

          break;
        }
      }
    }

    objc_sync_exit(selfCopy);
    elementCopy = v8;
  }
}

- (void)_addInvalidatedAssertion:(id)assertion forElement:(id)element
{
  assertionCopy = assertion;
  elementCopy = element;
  if (elementCopy)
  {
    if (!assertionCopy || [assertionCopy isValid])
    {
      [(SAUISystemApertureManager *)a2 _addInvalidatedAssertion:assertionCopy forElement:?];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    elementsToInvalidatedAssertions = selfCopy->_elementsToInvalidatedAssertions;
    if (!elementsToInvalidatedAssertions)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v11 = selfCopy->_elementsToInvalidatedAssertions;
      selfCopy->_elementsToInvalidatedAssertions = weakToStrongObjectsMapTable;

      elementsToInvalidatedAssertions = selfCopy->_elementsToInvalidatedAssertions;
    }

    [(NSMapTable *)elementsToInvalidatedAssertions setObject:assertionCopy forKey:elementCopy];
    objc_sync_exit(selfCopy);
  }
}

- (id)_invalidatedAssertionForElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_elementsToInvalidatedAssertions objectForKey:elementCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_removeInvalidatedAssertionForElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMapTable *)selfCopy->_elementsToInvalidatedAssertions removeObjectForKey:elementCopy];
  objc_sync_exit(selfCopy);
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