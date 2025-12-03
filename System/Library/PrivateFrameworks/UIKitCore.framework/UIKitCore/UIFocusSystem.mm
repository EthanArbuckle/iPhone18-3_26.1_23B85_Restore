@interface UIFocusSystem
+ (BOOL)environment:(id)environment containsEnvironment:(id)otherEnvironment;
+ (NSArray)_allFocusSystems;
+ (UIFocusSystem)focusSystemForEnvironment:(id)environment;
+ (void)initialize;
+ (void)registerURL:(NSURL *)soundFileURL forSoundIdentifier:(UIFocusSoundIdentifier)identifier;
- (BOOL)_focusedItemIsContainedInEnvironment:(id)environment includeSelf:(BOOL)self;
- (BOOL)_handleFailedFocusMovementRequest:(id)request withPerformer:(id)performer;
- (BOOL)_hasValidItemForCurrentDeferralState;
- (BOOL)_isEnvironmentEligibleForFocusUpdate:(id)update fallbackToEnvironment:(id *)environment debugReport:(id)report;
- (BOOL)_isEnvironmentLocked:(id)locked;
- (BOOL)_isScrollingScrollableContainer:(id)container targetContentOffset:(CGPoint *)offset;
- (BOOL)_performDeferredFocusUpdateIfAvailable;
- (BOOL)_performFocusMovement:(id)movement;
- (BOOL)_prefersDeferralForFocusUpdateInContext:(id)context;
- (BOOL)_safari_moveFocusToNextGroup;
- (BOOL)_safari_moveFocusToPreviousGroup;
- (BOOL)_shouldRestoreFocusInContext:(id)context;
- (BOOL)_shouldReverseLayoutDirectionForEnvironment:(id)environment;
- (BOOL)_shouldReverseLinearWrappingForEnvironment:(id)environment;
- (BOOL)_uiktest_performFocusMovement:(id)movement withSearchInfo:(id)info;
- (BOOL)_uiktest_updateFocusToItem:(id)item;
- (BOOL)_updateFocusImmediatelyToEnvironment:(id)environment startDeferringOnLostFocus:(BOOL)focus suppressLostFocusUpdate:(BOOL)update;
- (BOOL)_updateFocusImmediatelyWithContext:(id)context;
- (BOOL)_updateFocusWithContext:(id)context report:(id)report;
- (CGRect)_clippingRectInCoordinateSpace:(id)space;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (UIFocusEnvironment)_deepestPreferredFocusEnvironment;
- (UIFocusItem)_focusedItemOrDeferralTarget;
- (UIFocusItem)_previousFocusedItem;
- (UIFocusItemContainer)focusItemContainer;
- (UIFocusSystem)_preferredFirstResponderFocusSystem;
- (UIFocusSystem)init;
- (UIFocusSystem)initWithFocusBehavior:(id)behavior enabled:(BOOL)enabled;
- (UIResponder)_preferredFirstResponder;
- (_UIFocusEnvironmentPreferenceCache)_deepestPreferredFocusableItemCacheForCurrentUpdate;
- (_UIFocusGroupHistory)_focusGroupHistory;
- (_UIFocusRegionContainer)_focusMapContainer;
- (_UIFocusSystemDelegate)delegate;
- (id)_closestFocusableItemToPoint:(CGPoint)point inEnvironment:(id)environment constrainedToRect:(CGRect)rect distanceMeasuringUnitPoint:(CGPoint)unitPoint itemFilter:(id)filter;
- (id)_configureFocusDeferralIfNecessaryForContext:(id)context report:(id)report;
- (id)_contextForUpdateToEnvironment:(id)environment allowsOverridingPreferedFocusEnvironments:(BOOL)environments allowsDeferral:(BOOL)deferral;
- (id)_focusItemForValidation;
- (id)_overridingPreferredFocusEnvironment;
- (id)_preferredFirstResponderFocusSystemForFocusedItem:(id)item;
- (id)_topEnvironment;
- (id)_validatedAppearingFocusEnvironmentRequest;
- (id)_validatedPendingFocusUpdateRequest;
- (id)focusedItem;
- (int64_t)_effectiveFocusDeferralBehavior;
- (void)_buildFocusItemAncestorCacheIfNecessary;
- (void)_clearFocusItemAncestorCache;
- (void)_didFinishUpdatingFocusInContext:(id)context;
- (void)_enableWithoutFocusRestoration;
- (void)_focusBehaviorDidChange;
- (void)_focusEnvironmentDidAppear:(id)appear;
- (void)_focusEnvironmentDidBecomeVisible:(id)visible;
- (void)_focusEnvironmentWillBecomeInvisible:(id)invisible;
- (void)_focusEnvironmentWillDisappear:(id)disappear remainingInHierarchy:(BOOL)hierarchy;
- (void)_handleFocusMovementAction:(id)action;
- (void)_lockEnvironment:(id)environment;
- (void)_notifyEnvironment:(id)environment didUpdateFocusInContext:(id)context;
- (void)_performWithoutFocusUpdates:(id)updates;
- (void)_reevaluateLockedEnvironments;
- (void)_requestFocusUpdate:(id)update;
- (void)_resetFocusDeferral;
- (void)_sendDidUpdateFocusNotificationsInContext:(id)context;
- (void)_sendNotificationsForFocusUpdateInContext:(id)context usingBlock:(id)block;
- (void)_sendWillUpdateFocusNotificationsInContext:(id)context;
- (void)_setDeferredFocusUpdateTarget:(id)target;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setFocusCasting:(id)casting;
- (void)_setOverrideFocusDeferralBehavior:(id)behavior;
- (void)_startDeferringFocusIfSupported;
- (void)_tickHasSeenFocusedItemTimer:(BOOL)timer;
- (void)_uiktest_disableFocusDeferral;
- (void)_uiktest_disableThrottle;
- (void)_unlockEnvironment:(id)environment;
- (void)_updateFocusUpdateThrottle;
- (void)_updateWantsTreeLocking;
- (void)requestFocusUpdateToEnvironment:(id)environment;
- (void)setBehavior:(id)behavior;
- (void)setDelegate:(id)delegate;
- (void)updateFocusIfNeeded;
@end

@implementation UIFocusSystem

- (id)focusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
  v4 = objc_loadWeakRetained(&self->_focusedItem);
  v5 = v4;
  if (WeakRetained)
  {
    v6 = _UIFocusEnvironmentRootAncestorEnvironment(v4);
    if (v6 == self)
    {
      v7 = objc_loadWeakRetained(&self->_focusedItem);
    }

    else
    {
      v7 = 0;
    }

    v5 = v7;
  }

  return v5;
}

- (id)_topEnvironment
{
  selfCopy = self;
  v3 = selfCopy;
  v4 = selfCopy;
  if ((*&selfCopy->_flags & 0x40) == 0 || (-[UIFocusSystem delegate](selfCopy, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 _topEnvironmentForFocusSystem:v3], v4 = objc_claimAutoreleasedReturnValue(), v3, v6, v4) && ((disappearingFocusEnvironment = v3->_disappearingFocusEnvironment) != 0 && (_UIFocusEnvironmentIsAncestorOfEnvironment(disappearingFocusEnvironment, v4) & 1) != 0 || !_UIFocusEnvironmentIsAncestorOfEnvironment(v3, v4)))
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
    v4 = v5;
  }

  return v5;
}

- (_UIFocusSystemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_focusItemForValidation
{
  _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
  if (_focusedItemOrDeferralTarget || [(UIFocusSystem *)self _isEnabled])
  {
    WeakRetained = _focusedItemOrDeferralTarget;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_previousFocusedItem);
  }

  v5 = WeakRetained;

  return v5;
}

- (UIFocusItem)_focusedItemOrDeferralTarget
{
  focusedItem = [(UIFocusSystem *)self focusedItem];
  v4 = focusedItem;
  if (focusedItem)
  {
    WeakRetained = focusedItem;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);
  }

  v6 = WeakRetained;

  return v6;
}

- (int64_t)_effectiveFocusDeferralBehavior
{
  _overrideFocusDeferralBehavior = [(UIFocusSystem *)self _overrideFocusDeferralBehavior];
  v4 = _overrideFocusDeferralBehavior;
  if (_overrideFocusDeferralBehavior)
  {
    integerValue = [_overrideFocusDeferralBehavior integerValue];
  }

  else
  {
    behavior = [(UIFocusSystem *)self behavior];
    integerValue = [behavior focusDeferral];
  }

  return integerValue;
}

- (id)_validatedPendingFocusUpdateRequest
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = self->_pendingFocusUpdateRequest;
  v4 = v3;
  if (v3 && ![(_UIFocusUpdateRequest *)v3 isValidInFocusSystem:self])
  {
    v6 = *(__UILogGetCategoryCachedImpl("UIFocus", &_validatedPendingFocusUpdateRequest___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      environment = [(_UIFocusUpdateRequest *)v4 environment];
      if (environment)
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"<%@: %p>", v10, environment];
      }

      else
      {
        v11 = @"(nil)";
      }

      v12 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v14 = v11;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      selfCopy = [v12 stringWithFormat:@"<%@: %p>", v16, selfCopy];

      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = selfCopy;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Found invalid pending focus update request for environment %{public}@ in focus system %{public}@.", buf, 0x16u);
    }

    pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
    self->_pendingFocusUpdateRequest = 0;

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (void)updateFocusIfNeeded
{
  v77 = *MEMORY[0x1E69E9840];
  if (![(UIFocusSystem *)self _focusSystemIsValid])
  {
    return;
  }

  if (![(UIFocusSystem *)self _isEnabled])
  {
    return;
  }

  flags = self->_flags;
  if ((*&flags & 9) != 0)
  {
    return;
  }

  if (self->_appearingFocusEnvironment)
  {
    v5 = [(UIFocusSystem *)self _isEnvironmentLocked:?];
    flags = self->_flags;
    if (v5)
    {
      self->_flags = (*&flags | 8);
      return;
    }
  }

  if ((*&flags & 2) == 0)
  {
    self->_flags = (*&flags | 0x20);
    _validatedPendingFocusUpdateRequest = [(UIFocusSystem *)self _validatedPendingFocusUpdateRequest];
    _validatedAppearingFocusEnvironmentRequest = [(UIFocusSystem *)self _validatedAppearingFocusEnvironmentRequest];
    if (_validatedPendingFocusUpdateRequest | _validatedAppearingFocusEnvironmentRequest)
    {
      _topEnvironment = [(UIFocusSystem *)self _topEnvironment];
      if (!_topEnvironment)
      {
        pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
        self->_pendingFocusUpdateRequest = 0;

        appearingFocusEnvironment = self->_appearingFocusEnvironment;
        self->_appearingFocusEnvironment = 0;

        v24 = *&self->_flags & 0xFFFFFFDF | (32 * ((*&flags >> 5) & 1));
LABEL_32:
        self->_flags = v24;
LABEL_60:

        return;
      }

      v9 = _topEnvironment;
      if (_validatedPendingFocusUpdateRequest)
      {
        environment = [_validatedPendingFocusUpdateRequest environment];
        IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v9, environment);

        if ((IsAncestorOfEnvironment & 1) == 0)
        {
          v12 = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToEnvironment:v9];

          _validatedPendingFocusUpdateRequest = v12;
        }
      }

      if (_validatedAppearingFocusEnvironmentRequest)
      {
        environment2 = [_validatedAppearingFocusEnvironmentRequest environment];
        v14 = _UIFocusEnvironmentFirstCommonAncestor(v9, environment2);

        if (v14 != v9)
        {
          v15 = v14;

          v9 = v15;
        }

        if (_validatedPendingFocusUpdateRequest)
        {
          environment3 = [_validatedPendingFocusUpdateRequest environment];
          environment4 = [_validatedAppearingFocusEnvironmentRequest environment];
          v18 = _UIFocusEnvironmentFirstCommonAncestor(environment3, environment4);

          if (!v18)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1215 description:@"The appearing environment and the requested environment are not part of the same focus system."];
          }

          environment5 = [_validatedPendingFocusUpdateRequest environment];

          if (v18 != environment5)
          {
            v20 = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToEnvironment:v18];

            _validatedPendingFocusUpdateRequest = v20;
          }
        }

        else
        {
          _validatedPendingFocusUpdateRequest = _validatedAppearingFocusEnvironmentRequest;
        }
      }

      environment6 = [_validatedPendingFocusUpdateRequest environment];
      v26 = [(UIFocusSystem *)self _isEnvironmentLocked:environment6];

      if (v26)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE48);
        if (*CategoryCachedImpl)
        {
          v61 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = v61;
            environment7 = [_validatedPendingFocusUpdateRequest environment];
            *buf = 138412290;
            v76 = environment7;
            _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "Postponing update for locked environment %@", buf, 0xCu);
          }
        }

        v24 = *&flags & 0x20 | *&self->_flags & 0xFFFFFFDF | 8;

        goto LABEL_32;
      }

      v72 = self->_appearingFocusEnvironment;
      v28 = self->_pendingFocusUpdateRequest;
      self->_pendingFocusUpdateRequest = 0;

      v29 = self->_appearingFocusEnvironment;
      self->_appearingFocusEnvironment = 0;

      v30 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:_validatedPendingFocusUpdateRequest];
      if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE50))
      {
        v64 = objc_alloc_init(_UIDebugIssueReport);
        [v30 _setValidationReport:v64];

        v65 = objc_alloc_init(_UIDebugLogReport);
        [v30 _setPreferredFocusReport:v65];
      }

      nextFocusedItem = [v30 nextFocusedItem];
      v74 = _validatedAppearingFocusEnvironmentRequest;
      if (nextFocusedItem || !v9)
      {
        v44 = v30;
        v43 = _validatedPendingFocusUpdateRequest;
LABEL_55:

        v30 = v44;
        _validatedPendingFocusUpdateRequest = v43;
      }

      else
      {
        while (1)
        {
          environment8 = [_validatedPendingFocusUpdateRequest environment];
          if (!environment8)
          {
            break;
          }

          v33 = environment8;
          environment9 = [_validatedPendingFocusUpdateRequest environment];

          if (environment9 == v9)
          {
            break;
          }

          environment10 = [_validatedPendingFocusUpdateRequest environment];
          if (_UIFocusEnvironmentPrefersFocusContainment(environment10))
          {
            _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];

            if (_effectiveFocusDeferralBehavior == 3)
            {
              [(UIFocusSystem *)self _resetFocusDeferral];
            }
          }

          else
          {
          }

          requestByRedirectingRequestToNextContainerEnvironment = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToNextContainerEnvironment];
          if (os_variant_has_internal_diagnostics())
          {
            if (!requestByRedirectingRequestToNextContainerEnvironment)
            {
              v70 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_188A29000, v70, OS_LOG_TYPE_FAULT, "Iterating through container providing environments resulted in a nil request without ever reaching the defined top environment. This should never happen.", buf, 2u);
              }

              break;
            }
          }

          else if (!requestByRedirectingRequestToNextContainerEnvironment)
          {
            v60 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DE58) + 8);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v60, OS_LOG_TYPE_ERROR, "Iterating through container providing environments resulted in a nil request without ever reaching the defined top environment. This should never happen.", buf, 2u);
            }

            break;
          }

          environment11 = [(_UIFocusUpdateRequest *)requestByRedirectingRequestToNextContainerEnvironment environment];
          v39 = _UIFocusEnvironmentIsAncestorOfEnvironment(v9, environment11);

          if ((v39 & 1) == 0)
          {
            v40 = [_validatedPendingFocusUpdateRequest requestByRedirectingRequestToEnvironment:v9];

            requestByRedirectingRequestToNextContainerEnvironment = v40;
            if (!v40)
            {
              break;
            }
          }

          environment12 = [(_UIFocusUpdateRequest *)requestByRedirectingRequestToNextContainerEnvironment environment];
          v42 = [(UIFocusSystem *)self _isEnvironmentLocked:environment12];

          if (v42)
          {
            v55 = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE60);
            if (*v55)
            {
              v67 = *(v55 + 8);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = v67;
                environment13 = [(_UIFocusUpdateRequest *)requestByRedirectingRequestToNextContainerEnvironment environment];
                *buf = 138412290;
                v76 = environment13;
                _os_log_impl(&dword_188A29000, v68, OS_LOG_TYPE_ERROR, "Postponing update for locked environment %@", buf, 0xCu);
              }
            }

            *&self->_flags |= 8u;
            v56 = self->_pendingFocusUpdateRequest;
            self->_pendingFocusUpdateRequest = requestByRedirectingRequestToNextContainerEnvironment;
            v57 = requestByRedirectingRequestToNextContainerEnvironment;

            v58 = self->_appearingFocusEnvironment;
            self->_appearingFocusEnvironment = v73;
            v59 = v73;

            _validatedAppearingFocusEnvironmentRequest = v74;
            goto LABEL_60;
          }

          v43 = requestByRedirectingRequestToNextContainerEnvironment;

          v44 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:v43];
          if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE68))
          {
            _preferredFocusReport = [v30 _preferredFocusReport];
            [_preferredFocusReport addLineBreak];

            _preferredFocusReport2 = [v30 _preferredFocusReport];
            [_preferredFocusReport2 addMessage:@" === unable to find focused item in context. retrying with updated request. === "];

            _preferredFocusReport3 = [v30 _preferredFocusReport];
            [_preferredFocusReport3 addLineBreak];

            _validationReport = [v30 _validationReport];
            [v44 _setValidationReport:_validationReport];

            _preferredFocusReport4 = [v30 _preferredFocusReport];
            [v44 _setPreferredFocusReport:_preferredFocusReport4];
          }

          nextFocusedItem = [v44 nextFocusedItem];
          _validatedPendingFocusUpdateRequest = v43;
          v30 = v44;
          if (nextFocusedItem)
          {
            goto LABEL_55;
          }
        }
      }

      _validatedAppearingFocusEnvironmentRequest = v74;
      disappearingFocusEnvironment = self->_disappearingFocusEnvironment;
      self->_disappearingFocusEnvironment = 0;

      updateThrottle = [(UIFocusSystem *)self updateThrottle];
      [updateThrottle didCreateProgrammaticFocusUpdateContext:v30];

      v52 = 0;
      if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE70))
      {
        v52 = [[_UIFocusUpdateReport alloc] initWithFocusSystem:self];
        [(_UIFocusUpdateReport *)v52 setContext:v30];
      }

      v53 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:v30 report:v52];

      [(UIFocusSystem *)self _updateFocusWithContext:v53 report:v52];
    }

    else
    {
      _validatedPendingFocusUpdateRequest = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFDF | (32 * ((*&flags >> 5) & 1)));
    deepestPreferredFocusableItemCacheForCurrentUpdate = self->_deepestPreferredFocusableItemCacheForCurrentUpdate;
    self->_deepestPreferredFocusableItemCacheForCurrentUpdate = 0;

    goto LABEL_60;
  }

  v21 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE40) + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Calling updateFocusIfNeeded while a focus update is in progress. This call will be ignored.", buf, 2u);
  }
}

- (id)_validatedAppearingFocusEnvironmentRequest
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = self->_appearingFocusEnvironment;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_14;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE30);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = v3;
      v15 = v12;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v13 stringWithFormat:@"<%@: %p>", v17, v14];

      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Validating focused item for appearing environment %{public}@.", buf, 0xCu);
    }
  }

  _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
  if (_focusedItemOrDeferralTarget)
  {
    v6 = _UIFocusEnvironmentRootAncestorEnvironment(v3);

    if (v6 == self)
    {
      v8 = _UIFocusEnvironmentPreferredFocusMapContainer(v3);
      if (os_variant_has_internal_diagnostics())
      {
        if (v8)
        {
LABEL_9:
          v9 = [[_UIFocusMap alloc] initWithFocusSystem:self rootContainer:v8 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];
          if ([(_UIFocusMap *)v9 verifyFocusabilityForItem:_focusedItemOrDeferralTarget])
          {
            appearingFocusEnvironment = self->_appearingFocusEnvironment;
            self->_appearingFocusEnvironment = 0;

            v7 = 0;
          }

          else
          {
            v7 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:self environment:v3];
          }

          goto LABEL_12;
        }

        v19 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Unable to find a focus map container. This should never happen.", buf, 2u);
        }
      }

      else
      {
        if (v8)
        {
          goto LABEL_9;
        }

        v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DE38) + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Unable to find a focus map container. This should never happen.", buf, 2u);
        }
      }

      v7 = 0;
      v9 = self->_appearingFocusEnvironment;
      self->_appearingFocusEnvironment = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v7 = 0;
  v8 = self->_appearingFocusEnvironment;
  self->_appearingFocusEnvironment = 0;
LABEL_13:

LABEL_14:

  return v7;
}

- (_UIFocusEnvironmentPreferenceCache)_deepestPreferredFocusableItemCacheForCurrentUpdate
{
  if (!self->_deepestPreferredFocusableItemCacheForCurrentUpdate && (*&self->_flags & 0x20) != 0)
  {
    behavior = [(UIFocusSystem *)self behavior];
    cachesPreferredEnvironmentEnumerationResults = [behavior cachesPreferredEnvironmentEnumerationResults];

    if (cachesPreferredEnvironmentEnumerationResults)
    {
      v5 = objc_opt_new();
      deepestPreferredFocusableItemCacheForCurrentUpdate = self->_deepestPreferredFocusableItemCacheForCurrentUpdate;
      self->_deepestPreferredFocusableItemCacheForCurrentUpdate = v5;
    }
  }

  v7 = self->_deepestPreferredFocusableItemCacheForCurrentUpdate;

  return v7;
}

- (void)_buildFocusItemAncestorCacheIfNecessary
{
  p_focusItemAncestorCache = &self->_focusItemAncestorCache;
  if (!self->_focusItemAncestorCache)
  {
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
    if (WeakRetained)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __56__UIFocusSystem__buildFocusItemAncestorCacheIfNecessary__block_invoke;
      v6[3] = &unk_1E7108C10;
      v7 = v4;
      _UIFocusEnvironmentEnumerateAncestorEnvironments(WeakRetained, v6);
      objc_storeStrong(p_focusItemAncestorCache, v4);
    }

    else
    {
      objc_storeStrong(p_focusItemAncestorCache, v4);
    }
  }
}

- (void)_clearFocusItemAncestorCache
{
  focusItemAncestorCache = self->_focusItemAncestorCache;
  self->_focusItemAncestorCache = 0;
}

- (NSArray)preferredFocusEnvironments
{
  delegate = [(UIFocusSystem *)self delegate];
  v5 = delegate;
  if (!delegate || (*&self->_flags & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v6 = [delegate _preferredFocusEnvironmentsForFocusSystem:self];
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:616 description:@"Returning nil for a focus system's preferred focus environments is not allowed."];

LABEL_3:
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (UIFocusItemContainer)focusItemContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (flags = self->_flags, WeakRetained, (*&flags & 0x20000) != 0))
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v6 _focusItemContainerForFocusSystem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFocusRegionContainer)_focusMapContainer
{
  v3 = [_UIFocusRegionContainerProxy alloc];
  focusItemContainer = [(UIFocusSystem *)self focusItemContainer];
  v5 = [(_UIFocusRegionContainerProxy *)v3 initWithOwningEnvironment:self itemContainer:focusItemContainer];

  [(_UIFocusRegionContainerProxy *)v5 setAllowsLazyLoading:0];
  [(_UIFocusRegionContainerProxy *)v5 setShouldCreateRegionForOwningItem:0];
  [(_UIFocusRegionContainerProxy *)v5 setShouldCreateRegionForGuideBehavior:0];

  return v5;
}

- (void)_focusBehaviorDidChange
{
  [(UIFocusSystem *)self _updateFocusUpdateThrottle];

  [(UIFocusSystem *)self _updateWantsTreeLocking];
}

- (void)_updateFocusUpdateThrottle
{
  behavior = [(UIFocusSystem *)self behavior];
  if ([behavior throttlesProgrammaticFocusUpdates])
  {
    updateThrottle = self->_updateThrottle;

    if (!updateThrottle)
    {
      objc_initWeak(&location, self);
      v5 = [_UIFocusUpdateThrottle alloc];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__UIFocusSystem__updateFocusUpdateThrottle__block_invoke;
      v11[3] = &unk_1E70F5A28;
      objc_copyWeak(&v12, &location);
      v6 = [(_UIFocusUpdateThrottle *)v5 initWithUpdateHandler:v11];
      v7 = self->_updateThrottle;
      self->_updateThrottle = v6;

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
  }

  behavior2 = [(UIFocusSystem *)self behavior];
  if (([(_UIFocusUpdateThrottle *)behavior2 throttlesProgrammaticFocusUpdates]& 1) != 0)
  {
    v8 = behavior2;
  }

  else
  {
    v9 = self->_updateThrottle;

    if (!v9)
    {
      return;
    }

    [(_UIFocusUpdateThrottle *)self->_updateThrottle teardown];
    v8 = self->_updateThrottle;
    self->_updateThrottle = 0;
  }
}

- (void)_updateWantsTreeLocking
{
  behavior = [(UIFocusSystem *)self behavior];
  wantsTreeLocking = [behavior wantsTreeLocking];

  treeLock = self->_treeLock;
  if (wantsTreeLocking)
  {
    if (!treeLock)
    {
      v6 = objc_opt_new();
      v7 = self->_treeLock;
      self->_treeLock = v6;
    }
  }

  else if (treeLock)
  {
    self->_treeLock = 0;

    [(UIFocusSystem *)self _reevaluateLockedEnvironments];
  }
}

- (UIFocusItem)_previousFocusedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_previousFocusedItem);

  return WeakRetained;
}

- (void)_reevaluateLockedEnvironments
{
  flags = self->_flags;
  self->_flags = (*&flags & 0xFFFFFFF7);
  if ((*&flags & 8) != 0 && (self->_pendingFocusUpdateRequest || self->_appearingFocusEnvironment))
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &_reevaluateLockedEnvironments___s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Trying to execute postponed update...", location, 2u);
      }
    }

    objc_initWeak(location, self);
    v5 = UIApp;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__UIFocusSystem__reevaluateLockedEnvironments__block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, location);
    [v5 _performBlockAfterCATransactionCommits:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    NSClassFromString(&cfstr_Uifocusdebugge_0.isa);
  }
}

- (UIFocusSystem)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:127 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (UIFocusSystem)initWithFocusBehavior:(id)behavior enabled:(BOOL)enabled
{
  behaviorCopy = behavior;
  v16.receiver = self;
  v16.super_class = UIFocusSystem;
  v8 = [(UIFocusSystem *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_behavior, behavior);
    v9->_enabled = enabled;
    v10 = objc_opt_new();
    [(_UIFocusMovementPerformer *)v10 setDelegate:v9];
    movementPerformer = v9->_movementPerformer;
    v9->_movementPerformer = v10;
    v12 = v10;

    v13 = qword_1ED49DE90;
    v14 = v9;
    if (v13 != -1)
    {
      dispatch_once(&qword_1ED49DE90, &__block_literal_global_229);
    }

    [qword_1ED49DDE8 addObject:v14];

    [(UIFocusSystem *)v14 _focusBehaviorDidChange];
  }

  return v9;
}

- (void)_setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v33 = *MEMORY[0x1E69E9840];
  if (!enabled)
  {
LABEL_10:
    [(UIFocusSystem *)self setWaitingForFocusMovementAction:0];
    if (self->_enabled == enabledCopy)
    {
      return;
    }

    _hostFocusSystem = [(UIFocusSystem *)self _hostFocusSystem];

    if (!_hostFocusSystem)
    {
      v10 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDA0) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"disabled";
        if (enabledCopy)
        {
          v11 = @"enabled";
        }

        v31 = 138543362;
        v32 = v11;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Focus system %{public}@", &v31, 0xCu);
      }
    }

    self->_enabled = enabledCopy;
    if (!enabledCopy)
    {
      focusedItem = [(UIFocusSystem *)self focusedItem];

      if (focusedItem)
      {
        [(UIFocusSystem *)self _setNeedsFocusRestoration];
      }

      v25 = [(UIFocusSystem *)self _contextForUpdateToEnvironment:0];
      [(UIFocusSystem *)self _updateFocusWithContext:v25 report:0];
      [(UIFocusSystem *)self setPendingFocusMovementAction:0];
      pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
      self->_pendingFocusUpdateRequest = 0;

      appearingFocusEnvironment = self->_appearingFocusEnvironment;
      self->_appearingFocusEnvironment = 0;

      disappearingFocusEnvironment = self->_disappearingFocusEnvironment;
      self->_disappearingFocusEnvironment = 0;

      goto LABEL_32;
    }

    pendingFocusMovementAction = [(UIFocusSystem *)self pendingFocusMovementAction];
    if (pendingFocusMovementAction)
    {
      v13 = pendingFocusMovementAction;
      pendingFocusMovementAction2 = [(UIFocusSystem *)self pendingFocusMovementAction];
      focusMovementInfo = [pendingFocusMovementAction2 focusMovementInfo];
      heading = [focusMovementInfo heading];

      if (heading)
      {
        v17 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:self];
        pendingFocusMovementAction3 = [(UIFocusSystem *)self pendingFocusMovementAction];
        focusMovementInfo2 = [pendingFocusMovementAction3 focusMovementInfo];
        [(_UIFocusMovementRequest *)v17 setMovementInfo:focusMovementInfo2];

        LOBYTE(pendingFocusMovementAction3) = [(UIFocusSystem *)self _performFocusMovement:v17];
        [(UIFocusSystem *)self setPendingFocusMovementAction:0];

        if (pendingFocusMovementAction3)
        {
LABEL_31:
          [(UIFocusSystem *)self _tickHasSeenFocusedItemTimer:0];
LABEL_32:
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self];

          return;
        }
      }
    }

    flags = self->_flags;
    if ((*&flags & 4) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFFB);
      _previousFocusedItem = [(UIFocusSystem *)self _previousFocusedItem];
      v22 = [(UIFocusSystem *)self _contextForUpdateToEnvironment:_previousFocusedItem];

      if ([(UIFocusSystem *)self _shouldRestoreFocusInContext:v22])
      {
        v23 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:v22 report:0];

        [(UIFocusSystem *)self _updateFocusWithContext:v23 report:0];
        if (!self->_pendingFocusUpdateRequest)
        {
          goto LABEL_31;
        }

LABEL_29:
        [(UIFocusSystem *)self updateFocusIfNeeded];
        goto LABEL_31;
      }
    }

    if (!self->_pendingFocusUpdateRequest)
    {
      v29 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:self];
      [(UIFocusSystem *)self _requestFocusUpdate:v29];
      [(UIFocusSystem *)self updateFocusIfNeeded];

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  delegate = [(UIFocusSystem *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  delegate2 = [(UIFocusSystem *)self delegate];
  if (([delegate2 _shouldWaitForFocusMovementActionToEnableFocusSystem:self] & 1) == 0)
  {

    goto LABEL_9;
  }

  pendingFocusMovementAction4 = [(UIFocusSystem *)self pendingFocusMovementAction];

  if (pendingFocusMovementAction4)
  {
    goto LABEL_10;
  }

  v8 = *(__UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_1096) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Tried to enable focus system without receiving focus movement action, waiting until action is received to enable", &v31, 2u);
  }

  [(UIFocusSystem *)self setWaitingForFocusMovementAction:1];
}

- (void)_enableWithoutFocusRestoration
{
  if (!self->_enabled)
  {
    self->_enabled = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self];
  }
}

- (BOOL)_hasValidItemForCurrentDeferralState
{
  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  if ((_effectiveFocusDeferralBehavior - 1) < 4)
  {
    _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
LABEL_5:
    v2 = _focusedItemOrDeferralTarget != 0;

    return v2;
  }

  if (!_effectiveFocusDeferralBehavior)
  {
    _focusedItemOrDeferralTarget = [(UIFocusSystem *)self focusedItem];
    goto LABEL_5;
  }

  return v2;
}

- (void)_setFocusCasting:(id)casting
{
  castingCopy = casting;
  focusCasting = self->_focusCasting;
  if (focusCasting != castingCopy)
  {
    v7 = castingCopy;
    if (focusCasting)
    {
      [(_UIFocusCasting *)focusCasting setFocusSystem:0];
      [(_UIFocusCasting *)self->_focusCasting teardown];
      castingCopy = v7;
    }

    [(_UIFocusCasting *)castingCopy setFocusSystem:self];
    objc_storeStrong(&self->_focusCasting, casting);
    castingCopy = v7;
  }
}

- (_UIFocusGroupHistory)_focusGroupHistory
{
  focusGroupHistory = self->_focusGroupHistory;
  if (!focusGroupHistory)
  {
    v4 = objc_opt_new();
    v5 = self->_focusGroupHistory;
    self->_focusGroupHistory = v4;

    focusGroupHistory = self->_focusGroupHistory;
  }

  return focusGroupHistory;
}

- (BOOL)_prefersDeferralForFocusUpdateInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  if (_effectiveFocusDeferralBehavior > 2)
  {
    if (_effectiveFocusDeferralBehavior == 3)
    {
      _request = [contextCopy _request];
      if ([_request allowsDeferral])
      {
        nextFocusedItem = [contextCopy nextFocusedItem];
        if (_UIFocusItemDeferralModeForItem(nextFocusedItem) == 1)
        {
          allowsDeferral = 1;
        }

        else if ((*&self->_flags & 0x10) != 0)
        {
          allowsDeferral = 0;
        }

        else
        {
          nextFocusedItem2 = [contextCopy nextFocusedItem];
          allowsDeferral = _UIFocusItemDeferralModeForItem(nextFocusedItem2) != 2;
        }
      }

      else
      {
        allowsDeferral = 0;
      }

      goto LABEL_9;
    }

    if (_effectiveFocusDeferralBehavior != 4)
    {
      allowsDeferral = 0;
      goto LABEL_10;
    }

LABEL_8:
    _request = [contextCopy _request];
    allowsDeferral = [_request allowsDeferral];
LABEL_9:

    goto LABEL_10;
  }

  if (_effectiveFocusDeferralBehavior == 1)
  {
    goto LABEL_8;
  }

  allowsDeferral = _effectiveFocusDeferralBehavior == 2;
LABEL_10:

  return allowsDeferral;
}

- (id)_configureFocusDeferralIfNecessaryForContext:(id)context report:(id)report
{
  v32 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  reportCopy = report;
  v8 = contextCopy;
  nextFocusedItem = [v8 nextFocusedItem];
  if (!nextFocusedItem || (v10 = nextFocusedItem, v11 = [(UIFocusSystem *)self _prefersDeferralForFocusUpdateInContext:v8], v10, !v11))
  {
    [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:0];
    v18 = v8;
    goto LABEL_17;
  }

  if ([reportCopy shouldLog])
  {
    v12 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDA8) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      nextFocusedItem2 = [v8 nextFocusedItem];
      if (nextFocusedItem2)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v14 stringWithFormat:@"<%@: %p>", v16, nextFocusedItem2];
      }

      else
      {
        v17 = @"(nil)";
      }

      v23 = v17;
      v24 = +[(_UIDebugReportFormatter *)_UIFocusUpdateReportFormatter];
      v25 = [v24 stringFromReport:reportCopy];
      *buf = 138543618;
      v29 = v17;
      v30 = 2114;
      v31 = v25;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Deferring focus update to item %{public}@:\n%{public}@", buf, 0x16u);

LABEL_15:
    }
  }

  else
  {
    v12 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDB0) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      nextFocusedItem3 = [v8 nextFocusedItem];
      if (nextFocusedItem3)
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v20 stringWithFormat:@"<%@: %p>", v22, nextFocusedItem3];
      }

      else
      {
        v23 = @"(nil)";
      }

      *buf = 138543362;
      v29 = v23;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Deferring focus update to item %{public}@. No additional info available.", buf, 0xCu);

      goto LABEL_15;
    }
  }

  nextFocusedItem4 = [v8 nextFocusedItem];
  [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:nextFocusedItem4];

  v18 = [(UIFocusSystem *)self _simulatedNonDeferredProgrammaticFocusUpdateToEnvironment:0];

LABEL_17:

  return v18;
}

- (BOOL)_performDeferredFocusUpdateIfAvailable
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(UIFocusSystem *)self _isEnabled])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);
  if (WeakRetained && [(UIFocusSystem *)self _effectiveFocusDeferralBehavior]!= 2)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &_performDeferredFocusUpdateIfAvailable___s_category);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = WeakRetained;
        v11 = v8;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v9 stringWithFormat:@"<%@: %p>", v13, v10];

        *buf = 138543362;
        v16 = v14;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Executing previously deferred focus update to item %{public}@", buf, 0xCu);
      }
    }

    [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:0];
    v6 = [(UIFocusSystem *)self _simulatedNonDeferredProgrammaticFocusUpdateToEnvironment:WeakRetained];
    [v6 _setDeferredUpdate:1];
    v4 = [(UIFocusSystem *)self _updateFocusImmediatelyWithContext:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_tickHasSeenFocusedItemTimer:(BOOL)timer
{
  timerCopy = timer;
  v20 = *MEMORY[0x1E69E9840];
  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  WeakRetained = objc_loadWeakRetained(&self->_hasSeenFocusedItemDidExpireTimer);
  [WeakRetained invalidate];

  focusedItem = [(UIFocusSystem *)self focusedItem];

  if (focusedItem && _effectiveFocusDeferralBehavior == 3)
  {
    if (timerCopy)
    {
      if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDB8))
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDC0);
        if (*CategoryCachedImpl)
        {
          v12 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = MEMORY[0x1E696AF00];
            v14 = v12;
            callStackSymbols = [v13 callStackSymbols];
            *buf = 138543362;
            v19 = callStackSymbols;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Disabling focus deferral.\n%{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        v8 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDC8) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Disabling focus deferral.", buf, 2u);
        }
      }

      *&self->_flags |= 0x10u;
    }

    objc_initWeak(buf, self);
    v9 = MEMORY[0x1E695DFF0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__UIFocusSystem__tickHasSeenFocusedItemTimer___block_invoke;
    v16[3] = &unk_1E70F4130;
    objc_copyWeak(&v17, buf);
    v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:v16 block:60.0];
    objc_storeWeak(&self->_hasSeenFocusedItemDidExpireTimer, v10);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __46__UIFocusSystem__tickHasSeenFocusedItemTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hasSeenFocusedItemDidExpire];
}

- (void)_resetFocusDeferral
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = 0x1E696A000uLL;
  if ((*&self->_flags & 0x10) != 0)
  {
    if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDD0))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDD8);
      if (*CategoryCachedImpl)
      {
        v9 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = MEMORY[0x1E696AF00];
          v11 = v9;
          callStackSymbols = [v10 callStackSymbols];
          v13 = 138543362;
          v14 = callStackSymbols;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Starting to defer focus updates.\n%{public}@", &v13, 0xCu);

          v3 = 0x1E696A000;
        }
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDE0) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Starting to defer focus updates.", &v13, 2u);
      }
    }
  }

  [*(v3 + 3840) cancelPreviousPerformRequestsWithTarget:self selector:sel__hasSeenFocusedItemDidExpire object:0];
  *&self->_flags &= ~0x10u;
  behavior = [(UIFocusSystem *)self behavior];
  focusCastingMode = [behavior focusCastingMode];

  if (focusCastingMode == 2)
  {
    _focusCasting = [(UIFocusSystem *)self _focusCasting];
    [_focusCasting forgetEntryPoint];
  }
}

- (void)_startDeferringFocusIfSupported
{
  [(UIFocusSystem *)self _resetFocusDeferral];
  _effectiveFocusDeferralBehavior = [(UIFocusSystem *)self _effectiveFocusDeferralBehavior];
  if ((_effectiveFocusDeferralBehavior - 1) >= 2)
  {
    if (_effectiveFocusDeferralBehavior != 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
      goto LABEL_10;
    }

    v5 = objc_loadWeakRetained(&self->_focusedItem);
    v4 = _UIFocusItemDeferralModeForItem(v5) != 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = objc_loadWeakRetained(&self->_focusedItem);

  if (!v6 || !v4)
  {
    return;
  }

  v8 = objc_loadWeakRetained(&self->_focusedItem);
  [(UIFocusSystem *)self _dropFocusAndStartDeferring:0 suppressUpdate:1];
  [(UIFocusSystem *)self _setDeferredFocusUpdateTarget:v8];
  WeakRetained = v8;
LABEL_10:
}

- (void)_setDeferredFocusUpdateTarget:(id)target
{
  obj = target;
  WeakRetained = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_deferredFocusUpdateTarget, obj);
    if ((*(&self->_flags + 2) & 8) != 0)
    {
      delegate = [(UIFocusSystem *)self delegate];
      [delegate _focusSystem:self didUpdateDeferralTarget:obj];
    }
  }
}

- (void)_setOverrideFocusDeferralBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (self->_overrideFocusDeferralBehavior != behaviorCopy)
  {
    v7 = behaviorCopy;
    objc_storeStrong(&self->_overrideFocusDeferralBehavior, behavior);
    if ([(UIFocusSystem *)self _effectiveFocusDeferralBehavior])
    {
      [(UIFocusSystem *)self _startDeferringFocusIfSupported];
    }

    else
    {
      _performDeferredFocusUpdateIfAvailable = [(UIFocusSystem *)self _performDeferredFocusUpdateIfAvailable];
      behaviorCopy = v7;
      if (_performDeferredFocusUpdateIfAvailable)
      {
        goto LABEL_7;
      }

      [(UIFocusSystem *)self requestFocusUpdateToEnvironment:self];
      [(UIFocusSystem *)self updateFocusIfNeeded];
    }

    behaviorCopy = v7;
  }

LABEL_7:
}

+ (UIFocusSystem)focusSystemForEnvironment:(id)environment
{
  v5 = environment;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = qword_1ED49DDE8;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = _UIFocusEnvironmentRootAncestorEnvironment(v5);
    if ([v7 containsObject:v8])
    {
      if ([v8 _focusSystemIsValid])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSArray)_allFocusSystems
{
  allObjects = [qword_1ED49DDE8 allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    v4 = allObjects;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (CGRect)_clippingRectInCoordinateSpace:(id)space
{
  if ((*(&self->_flags + 2) & 4) != 0)
  {
    spaceCopy = space;
    delegate = [(UIFocusSystem *)self delegate];
    [delegate _clippingRectForFocusSystem:self inCoordinateSpace:spaceCopy];
    v3 = v10;
    v4 = v11;
    v5 = v12;
    v6 = v13;
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)_overridingPreferredFocusEnvironment
{
  delegate = [(UIFocusSystem *)self delegate];
  v4 = delegate;
  if (delegate && (*(&self->_flags + 1) & 1) != 0)
  {
    v5 = [delegate _overridingPreferredFocusEnvironmentForFocusSystem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)environment:(id)environment containsEnvironment:(id)otherEnvironment
{
  v7 = environment;
  v8 = otherEnvironment;
  v9 = v8;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:659 description:{@"Invalid parameter not satisfying: %@", @"otherEnvironment"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v7, v9);

  return IsAncestorOfEnvironment;
}

- (void)requestFocusUpdateToEnvironment:(id)environment
{
  v7 = environment;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:668 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v5 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v7];
  [(UIFocusSystem *)self _requestFocusUpdate:v5];
}

- (void)_requestFocusUpdate:(id)update
{
  v56 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (!updateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:675 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  if (([updateCopy isFocusRemovalRequest] & 1) == 0)
  {
    v6 = [updateCopy copy];

    [v6 cacheCurrentFocusSystem];
    if (![v6 isValidInFocusSystem:self])
    {
      goto LABEL_28;
    }

    _validatedPendingFocusUpdateRequest = [(UIFocusSystem *)self _validatedPendingFocusUpdateRequest];
    v8 = _validatedPendingFocusUpdateRequest;
    if (_validatedPendingFocusUpdateRequest && [_validatedPendingFocusUpdateRequest canMergeWithRequest:v6])
    {
      v9 = [v8 requestByMergingWithRequest:v6];

      v10 = 1;
      v6 = v9;
      goto LABEL_22;
    }

    environment = [v6 environment];
    if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDF0))
    {
      v12 = objc_opt_new();
    }

    else
    {
      v12 = 0;
    }

    v50 = 0;
    v13 = [(UIFocusSystem *)self _isEnvironmentEligibleForFocusUpdate:environment fallbackToEnvironment:&v50 debugReport:v12];
    v14 = v50;
    v15 = v14;
    if (v13)
    {

      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = self->_appearingFocusEnvironment != 0;
      }

LABEL_22:
      objc_storeStrong(&self->_pendingFocusUpdateRequest, v6);
      updateThrottle = [(UIFocusSystem *)self updateThrottle];
      v20 = updateThrottle == 0;

      if (v20)
      {
        if (!v10)
        {
          objc_initWeak(location, self);
          v23 = UIApp;
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __37__UIFocusSystem__requestFocusUpdate___block_invoke;
          v48[3] = &unk_1E70F5A28;
          objc_copyWeak(&v49, location);
          [v23 _performBlockAfterCATransactionCommits:v48];
          objc_destroyWeak(&v49);
          objc_destroyWeak(location);
        }
      }

      else
      {
        updateThrottle2 = [(UIFocusSystem *)self updateThrottle];
        [updateThrottle2 scheduleProgrammaticFocusUpdate];

        if ([v6 resetsUpdateThrottle])
        {
          updateThrottle3 = [(UIFocusSystem *)self updateThrottle];
          [updateThrottle3 reset];
        }
      }

      goto LABEL_27;
    }

    if (!v14 || environment == v14)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE00);
      if ((*CategoryCachedImpl & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = environment;
        if (v25)
        {
          v26 = MEMORY[0x1E696AEC0];
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = [v26 stringWithFormat:@"<%@: %p>", v28, v25];
        }

        else
        {
          v29 = @"(nil)";
        }

        v34 = v29;
        v35 = objc_opt_new();
        v36 = [v35 stringFromReport:v12];
        *location = 138543618;
        *&location[4] = v29;
        v52 = 2114;
        v53 = v36;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Ignoring focus update request for ineligible environment %{public}@.\n%{public}@", location, 0x16u);
      }
    }

    else
    {
      v16 = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DDF8);
      if (*v16)
      {
        v47 = *(v16 + 8);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v30 = environment;
          if (v30)
          {
            v31 = MEMORY[0x1E696AEC0];
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            v46 = [v31 stringWithFormat:@"<%@: %p>", v33, v30];
          }

          else
          {
            v46 = @"(nil)";
          }

          v37 = MEMORY[0x1E696AEC0];
          v38 = v15;
          v45 = v46;
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = [v37 stringWithFormat:@"<%@: %p>", v40, v38];

          v42 = v41;
          v43 = objc_opt_new();
          v44 = [v43 stringFromReport:v12];
          *location = 138543874;
          *&location[4] = v46;
          v52 = 2114;
          v53 = v41;
          v54 = 2114;
          v55 = v44;
          _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "Ignoring focus update request for ineligible environment %{public}@. Using fallback environment %{public}@ instead.\n%{public}@", location, 0x20u);
        }
      }

      v17 = [v6 requestByRedirectingRequestToEnvironment:v15];
      [(UIFocusSystem *)self _requestFocusUpdate:v17];
    }

LABEL_20:
LABEL_27:

    goto LABEL_28;
  }

  v6 = updateCopy;
LABEL_28:
}

void __37__UIFocusSystem__requestFocusUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (void)_focusEnvironmentWillBecomeInvisible:(id)invisible
{
  invisibleCopy = invisible;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    v5 = UIApp;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__UIFocusSystem__focusEnvironmentWillBecomeInvisible___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = invisibleCopy;
    [v5 _performBlockAfterCATransactionCommits:v6];
  }
}

void __54__UIFocusSystem__focusEnvironmentWillBecomeInvisible___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _focusSystemIsValid])
  {
    v2 = [UIFocusSystem focusSystemForEnvironment:*(a1 + 40)];
    if (v2 == *(a1 + 32))
    {
      v6 = v2;
      IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(*(a1 + 40), 0);

      if ((IsEligibleForFocusOcclusion & 1) == 0)
      {
        v4 = *(a1 + 32);
        v5 = *(a1 + 40);

        [v4 _focusEnvironmentWillDisappear:v5 remainingInHierarchy:1];
      }
    }

    else
    {
    }
  }
}

- (void)_focusEnvironmentWillDisappear:(id)disappear remainingInHierarchy:(BOOL)hierarchy
{
  v62 = *MEMORY[0x1E69E9840];
  disappearCopy = disappear;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    if (hierarchy || !dyld_program_sdk_at_least())
    {
      v10 = 0;
    }

    else
    {
      focusedItem = [(UIFocusSystem *)self focusedItem];
      if (focusedItem)
      {
        v10 = [(UIFocusSystem *)self _focusedItemIsContainedInEnvironment:disappearCopy includeSelf:1];
      }

      else
      {
        v10 = 0;
      }
    }

    if (*__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE08))
    {
      v11 = objc_opt_new();
    }

    else
    {
      v11 = 0;
    }

    v55 = 0;
    v12 = [(UIFocusSystem *)self _isEnvironmentEligibleForFocusUpdate:disappearCopy fallbackToEnvironment:&v55 debugReport:v11];
    v13 = v55;
    if (v12)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __69__UIFocusSystem__focusEnvironmentWillDisappear_remainingInHierarchy___block_invoke;
      v52[3] = &unk_1E71087B0;
      v53 = disappearCopy;
      selfCopy = self;
      _UIFocusEnvironmentEnumerateAncestorEnvironments(v53, v52);
      objc_storeStrong(&self->_disappearingFocusEnvironment, disappear);
    }

    else if (v13)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE10);
      if (*CategoryCachedImpl)
      {
        v25 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          log = v25;
          v26 = disappearCopy;
          if (v26)
          {
            v27 = MEMORY[0x1E696AEC0];
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
          }

          else
          {
            v30 = @"(nil)";
          }

          v38 = MEMORY[0x1E696AEC0];
          v39 = v13;
          v48 = v30;
          v49 = v30;
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v38 stringWithFormat:@"<%@: %p>", v41, v39];

          v43 = v42;
          v47 = objc_opt_new();
          v44 = [v47 stringFromReport:v11];
          *buf = 138543874;
          v57 = v48;
          v58 = 2114;
          v59 = v42;
          v60 = 2114;
          v61 = v44;
          v25 = log;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Ignoring focus update request for disappearing focus environment %{public}@. Using fallback environment %{public}@ instead.\n%{public}@", buf, 0x20u);
        }
      }

      [(UIFocusSystem *)self requestFocusUpdateToEnvironment:v13];
    }

    else
    {
      v15 = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE18);
      if (*v15)
      {
        v31 = *(v15 + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = disappearCopy;
          if (v32)
          {
            v33 = MEMORY[0x1E696AEC0];
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v33 stringWithFormat:@"<%@: %p>", v35, v32];
          }

          else
          {
            v36 = @"(nil)";
          }

          loga = v36;
          v45 = objc_opt_new();
          v46 = [v45 stringFromReport:v11];
          *buf = 138543618;
          v57 = v36;
          v58 = 2114;
          v59 = v46;
          _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Ignoring focus update request for disappearing focus environment %{public}@.\n%{public}@", buf, 0x16u);
        }
      }
    }

    objc_storeWeak(&self->_deepestPreferredFocusEnvironment, 0);
    if (!v10 || ![(UIFocusSystem *)self _isEnabled])
    {
      goto LABEL_35;
    }

    if ((*&self->_flags & 2) == 0)
    {
      v16 = self->_pendingFocusUpdateRequest;
      [(UIFocusSystem *)self _dropFocusAndStartDeferring:0 suppressUpdate:1];
      pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
      self->_pendingFocusUpdateRequest = v16;

LABEL_35:
      goto LABEL_36;
    }

    if (dyld_program_sdk_at_least() && (_UIIsPrivateMainBundle() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      focusedItem2 = [(UIFocusSystem *)self focusedItem];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:834 description:{@"The newly focused item or one of its parent environments is getting removed from the hierarchy in response of that item becoming focused. This is a client bug that leaves the focus system in an undefined state. Focused item: %@; environment being removed: %@.", focusedItem2, disappearCopy}];

      goto LABEL_35;
    }

    if (dyld_program_sdk_at_least() && _UIIsPrivateMainBundle())
    {
      if (!os_variant_has_internal_diagnostics())
      {
        v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DE20) + 8);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        v19 = v18;
        focusedItem3 = [(UIFocusSystem *)self focusedItem];
        *buf = 138412546;
        v57 = focusedItem3;
        v58 = 2112;
        v59 = disappearCopy;
        v21 = "The newly focused item or one of its parent environments is getting removed from the hierarchy in response of that item becoming focused. This is a client bug that leaves the focus system in an undefined state. Focused item: %@; environment being removed: %@. This is a hard assert for other clients and requires immediate attention.";
        goto LABEL_31;
      }

      v19 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      focusedItem3 = [(UIFocusSystem *)self focusedItem];
      *buf = 138412546;
      v57 = focusedItem3;
      v58 = 2112;
      v59 = disappearCopy;
      v37 = "The newly focused item or one of its parent environments is getting removed from the hierarchy in response of that item becoming focused. This is a client bug that leaves the focus system in an undefined state. Focused item: %@; environment being removed: %@. This is a hard assert for other clients and requires immediate attention.";
    }

    else
    {
      if (!os_variant_has_internal_diagnostics())
      {
        v22 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DE28) + 8);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        v19 = v22;
        focusedItem3 = [(UIFocusSystem *)self focusedItem];
        *buf = 138412546;
        v57 = focusedItem3;
        v58 = 2112;
        v59 = disappearCopy;
        v21 = "The newly focused item or one of its parent environments is getting removed from the hierarchy in response of that item becoming focused. This is a client bug that leaves the focus system in an undefined state. Focused item: %@; environment being removed: %@. This will become an assert in a future version.";
LABEL_31:
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
LABEL_32:

LABEL_33:
        goto LABEL_35;
      }

      v19 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      focusedItem3 = [(UIFocusSystem *)self focusedItem];
      *buf = 138412546;
      v57 = focusedItem3;
      v58 = 2112;
      v59 = disappearCopy;
      v37 = "The newly focused item or one of its parent environments is getting removed from the hierarchy in response of that item becoming focused. This is a client bug that leaves the focus system in an undefined state. Focused item: %@; environment being removed: %@. This will become an assert in a future version.";
    }

    _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, v37, buf, 0x16u);
    goto LABEL_32;
  }

LABEL_36:
}

void __69__UIFocusSystem__focusEnvironmentWillDisappear_remainingInHierarchy___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (!v5)
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0 && ([v5 allowsWeakReference] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__UIFocusSystem__focusEnvironmentWillDisappear_remainingInHierarchy___block_invoke_2;
    block[3] = &unk_1E70F3590;
    v12 = v5;
    if (__allFocusSystems_block_invoke_once != -1)
    {
      dispatch_once(&__allFocusSystems_block_invoke_once, block);
    }

    goto LABEL_12;
  }

  v6 = v5;
  if (*(a1 + 32) != v6)
  {
    v7 = [[_UIFocusUpdateRequest alloc] initWithEnvironment:v6];
    [(_UIFocusUpdateRequest *)v7 setAllowsFocusingCurrentItem:1];
    [*(a1 + 40) _requestFocusUpdate:v7];
    v8 = *(*(a1 + 40) + 8);
    v9 = v8;
    if (v8)
    {
      v10 = [v8 environment];

      if (v10 == v6)
      {
        *a3 = 1;
      }
    }
  }

LABEL_13:
}

void __69__UIFocusSystem__focusEnvironmentWillDisappear_remainingInHierarchy___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &__allFocusSystems_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Focus system attempting to use a deallocating focus environment. Offending object: %@", &v4, 0xCu);
  }
}

- (void)_focusEnvironmentDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    if ((*&self->_flags & 2) == 0 || ([(UIFocusSystem *)self _focusedItemOrDeferralTarget], v4 = objc_claimAutoreleasedReturnValue(), HaveCommonHierarchy = _UIFocusEnvironmentsHaveCommonHierarchy(visibleCopy, v4), v4, !HaveCommonHierarchy))
    {
      [(UIFocusSystem *)self _focusEnvironmentDidAppear:visibleCopy];
    }
  }
}

- (void)_focusEnvironmentDidAppear:(id)appear
{
  appearCopy = appear;
  if ([(UIFocusSystem *)self _focusSystemIsValid])
  {
    if ([(NSHashTable *)self->_focusItemAncestorCache containsObject:appearCopy])
    {
      [(UIFocusSystem *)self _clearFocusItemAncestorCache];
    }

    if ([(UIFocusSystem *)self _effectiveFocusDeferralBehavior]&& (*&self->_flags & 2) == 0)
    {
      if (appearCopy)
      {
        v5 = _UIFocusEnvironmentRootAncestorEnvironment(appearCopy);
      }

      else
      {
        v5 = 0;
      }

      if (v5 != self)
      {
        goto LABEL_29;
      }

      objc_storeWeak(&self->_deepestPreferredFocusEnvironment, 0);
      _focusItemForValidation = [(UIFocusSystem *)self _focusItemForValidation];
      v7 = _focusItemForValidation;
      if (!_focusItemForValidation)
      {
        if (!self->_pendingFocusUpdateRequest && [(UIFocusSystem *)self _isEnabled])
        {
          [(UIFocusSystem *)self requestFocusUpdateToEnvironment:self];
        }

        goto LABEL_28;
      }

      v8 = _UIFocusEnvironmentFirstCommonAncestor(_focusItemForValidation, appearCopy);
      v9 = v8;
      if (v8 && v8 != v7)
      {
        if (!_UIFocusItemIsViewOrRespondsToSelector(appearCopy))
        {
          goto LABEL_18;
        }

        focusItemContainer = [v9 focusItemContainer];
        coordinateSpace = [focusItemContainer coordinateSpace];

        v12 = _UIFocusItemFrameInCoordinateSpace(appearCopy, coordinateSpace);
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = _UIFocusItemFrameInCoordinateSpace(v7, coordinateSpace);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v36.origin.x = v12;
        v36.origin.y = v14;
        v36.size.width = v16;
        v36.size.height = v18;
        if (!CGRectIsNull(v36))
        {
          v37.origin.x = v19;
          v37.origin.y = v21;
          v37.size.width = v23;
          v37.size.height = v25;
          if (!CGRectIsNull(v37))
          {
            if (_UIRectSmartIntersectsRect(v12, v14, v16, v18, v19, v21, v23, v25))
            {

LABEL_18:
              p_appearingFocusEnvironment = &self->_appearingFocusEnvironment;
              appearingFocusEnvironment = self->_appearingFocusEnvironment;
              if (appearingFocusEnvironment)
              {
                v28 = _UIFocusEnvironmentFirstCommonAncestor(appearingFocusEnvironment, v9);

                objc_storeStrong(p_appearingFocusEnvironment, v28);
                v9 = v28;
              }

              else
              {
                pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
                objc_storeStrong(&self->_appearingFocusEnvironment, v9);
                if (!pendingFocusUpdateRequest)
                {
                  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &_focusEnvironmentDidAppear____s_category);
                  if (*CategoryCachedImpl)
                  {
                    v32 = *(CategoryCachedImpl + 8);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(location[0]) = 0;
                      _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Scheduling focused item validation for appearing environment.", location, 2u);
                    }
                  }

                  objc_initWeak(location, self);
                  v31 = UIApp;
                  v33[0] = MEMORY[0x1E69E9820];
                  v33[1] = 3221225472;
                  v33[2] = __44__UIFocusSystem__focusEnvironmentDidAppear___block_invoke;
                  v33[3] = &unk_1E70F5A28;
                  objc_copyWeak(&v34, location);
                  [v31 _performBlockAfterCATransactionCommits:v33];
                  objc_destroyWeak(&v34);
                  objc_destroyWeak(location);
                }
              }

              goto LABEL_27;
            }
          }
        }
      }

LABEL_27:

LABEL_28:
LABEL_29:
    }
  }
}

void __44__UIFocusSystem__focusEnvironmentDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (BOOL)_isEnvironmentEligibleForFocusUpdate:(id)update fallbackToEnvironment:(id *)environment debugReport:(id)report
{
  updateCopy = update;
  reportCopy = report;
  if (![(UIFocusSystem *)self _isEnabled])
  {
    v10 = [_UIDebugIssue issueWithDescription:@"Focus is not currently enabled in this environment's focus system, updates will be delayed."];
    [reportCopy addIssue:v10];
  }

  _topEnvironment = [(UIFocusSystem *)self _topEnvironment];
  v12 = _topEnvironment;
  if (!_topEnvironment)
  {
    _focusItemForValidation = [_UIDebugIssue issueWithDescription:@"The current first responder is not a focus environment, no focus updates are allowed as that would force the first responder to change."];
    [reportCopy addIssue:_focusItemForValidation];
    v23 = 0;
LABEL_22:

    goto LABEL_23;
  }

  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(_topEnvironment, updateCopy);
  if (v12 != updateCopy)
  {
    v14 = IsAncestorOfEnvironment;
    _focusItemForValidation = [(UIFocusSystem *)self _focusItemForValidation];
    v16 = self->_pendingFocusUpdateRequest;
    v17 = v16;
    if (v16)
    {
      if (_focusItemForValidation)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14;
      }

      if (v18 != 1 || ([(_UIFocusUpdateRequest *)v16 environment], v19 = objc_claimAutoreleasedReturnValue(), v20 = _UIFocusEnvironmentIsAncestorOfEnvironment(updateCopy, v19), v19, (v20 & 1) == 0))
      {
        v21 = @"An ancestor of this environment has already requested a focus update, which takes priority.";
LABEL_12:
        v22 = [_UIDebugIssue issueWithDescription:v21];
        [reportCopy addIssue:v22];

LABEL_13:
        v23 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (_focusItemForValidation)
    {
      if ((_UIFocusEnvironmentIsAncestorOfEnvironment(updateCopy, _focusItemForValidation) & 1) == 0)
      {
        v21 = @"This environment does not contain the currently focused item.";
        goto LABEL_12;
      }
    }

    else if (((v12 != self) & v14) == 0)
    {
      if (v12 == self)
      {
        v25 = @"Nothing is currently focused, so this environment's request will be ignored and focus will be reset to the focus system's preferred focused item.";
      }

      else
      {
        v25 = @"This environment is not inside the current first responder.";
      }

      v26 = [_UIDebugIssue issueWithDescription:v25];
      [reportCopy addIssue:v26];

      if (environment)
      {
        v27 = v12;
        v23 = 0;
        *environment = v12;
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v23 = 1;
    goto LABEL_21;
  }

  v23 = 1;
LABEL_23:

  return v23;
}

- (BOOL)_isEnvironmentLocked:(id)locked
{
  lockedCopy = locked;
  treeLock = [(UIFocusSystem *)self treeLock];
  v6 = treeLock;
  if (treeLock)
  {
    v7 = [treeLock isEnvironmentLocked:lockedCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_lockEnvironment:(id)environment
{
  environmentCopy = environment;
  treeLock = [(UIFocusSystem *)self treeLock];
  v5 = treeLock;
  if (treeLock)
  {
    [treeLock lockEnvironmentTree:environmentCopy];
  }
}

- (void)_unlockEnvironment:(id)environment
{
  environmentCopy = environment;
  treeLock = [(UIFocusSystem *)self treeLock];
  v5 = treeLock;
  if (!treeLock || [treeLock unlockEnvironmentTree:environmentCopy])
  {
    [(UIFocusSystem *)self _reevaluateLockedEnvironments];
  }
}

- (BOOL)_updateFocusWithContext:(id)context report:(id)report
{
  v45 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  reportCopy = report;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1315 description:@"Attempting to initiate a focus update with a nil context."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
  [contextCopy _willUpdateFocusFromFocusedItem:WeakRetained];
  v10 = [contextCopy _isValidInFocusSystem:self];
  shouldLog = [reportCopy shouldLog];
  if (v10)
  {
    if (shouldLog)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE88);
      if (*CategoryCachedImpl)
      {
        v37 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = v37;
          v39 = +[(_UIDebugReportFormatter *)_UIFocusUpdateReportFormatter];
          v40 = [v39 stringFromReport:reportCopy];
          v41 = 138543618;
          v42 = contextCopy;
          v43 = 2114;
          v44 = v40;
          _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, "Updating focus with context %{public}@:\n%{public}@", &v41, 0x16u);
        }
      }
    }

    flags = self->_flags;
    if ((*&flags & 2) != 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1336 description:@"_ignoreFocusUpdateIfNeeded should never be YES at the beginning of a focus update."];

      flags = self->_flags;
    }

    self->_flags = (*&flags | 2);
    if ((*&flags & 0x400) != 0)
    {
      delegate = [(UIFocusSystem *)self delegate];
      [delegate _focusSystem:self willUpdateFocusInContext:contextCopy];
    }

    [(UIFocusSystem *)self _sendWillUpdateFocusNotificationsInContext:contextCopy];
    objc_storeWeak(&self->_previousFocusedItem, WeakRetained);
    nextFocusedItem = [contextCopy nextFocusedItem];
    objc_storeWeak(&self->_focusedItem, nextFocusedItem);
    objc_storeWeak(&self->_deepestPreferredFocusEnvironment, 0);
    pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
    self->_pendingFocusUpdateRequest = 0;

    appearingFocusEnvironment = self->_appearingFocusEnvironment;
    self->_appearingFocusEnvironment = 0;

    [(UIFocusSystem *)self _clearFocusItemAncestorCache];
    [(UIFocusSystem *)self _sendDidUpdateFocusNotificationsInContext:contextCopy];
    if ((*(&self->_flags + 1) & 8) != 0)
    {
      delegate2 = [(UIFocusSystem *)self delegate];
      [delegate2 _focusSystem:self didUpdateFocusInContext:contextCopy];
    }

    _focusCasting = [(UIFocusSystem *)self _focusCasting];

    if (_focusCasting)
    {
      _focusCasting2 = [(UIFocusSystem *)self _focusCasting];
      [_focusCasting2 updateFocusCastingWithContext:contextCopy];
    }

    [(UIFocusSystem *)self _didFinishUpdatingFocusInContext:contextCopy];
    [contextCopy _didUpdateFocus];
    *&self->_flags &= ~2u;
    if (nextFocusedItem && nextFocusedItem != WeakRetained)
    {
      _focusMovement = [contextCopy _focusMovement];
      if (_focusMovement)
      {
        _isDeferredUpdate = 1;
      }

      else
      {
        _isDeferredUpdate = [contextCopy _isDeferredUpdate];
      }

      [(UIFocusSystem *)self _tickHasSeenFocusedItemTimer:_isDeferredUpdate];
    }

    v28 = objc_loadWeakRetained(&self->_previousFocusedItem);
    _previouslyFocusedGroupIdentifier = [contextCopy _previouslyFocusedGroupIdentifier];
    v30 = _previouslyFocusedGroupIdentifier;
    if (v28 && _previouslyFocusedGroupIdentifier)
    {
      _nextFocusedGroupIdentifier = [contextCopy _nextFocusedGroupIdentifier];
      v32 = _nextFocusedGroupIdentifier;
      if (!_nextFocusedGroupIdentifier || ([_nextFocusedGroupIdentifier isEqualToString:v30] & 1) == 0)
      {
        _focusGroupHistory = [(UIFocusSystem *)self _focusGroupHistory];
        [_focusGroupHistory setLastFocusedItem:v28 forGroupIdentifier:v30];
      }
    }
  }

  else if (shouldLog)
  {
    v23 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE78) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = +[(_UIDebugReportFormatter *)_UIFocusUpdateReportFormatter];
      v26 = [v25 stringFromReport:reportCopy];
      v41 = 138543618;
      v42 = contextCopy;
      v43 = 2114;
      v44 = v26;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Failed to update focus with context %{public}@:\n%{public}@", &v41, 0x16u);
    }
  }

  else
  {
    v27 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DE80) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v41 = 138543362;
      v42 = contextCopy;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "Failed to update focus with context %{public}@. No additional info available.", &v41, 0xCu);
    }
  }

  return v10;
}

- (void)_notifyEnvironment:(id)environment didUpdateFocusInContext:(id)context
{
  environmentCopy = environment;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [environmentCopy _didUpdateFocusInContext:contextCopy];
  }

  else if ((*(&self->_flags + 1) & 0x80) != 0)
  {
    delegate = [(UIFocusSystem *)self delegate];
    [delegate _focusSystem:self environment:environmentCopy didUpdateFocusInContext:contextCopy];
  }
}

- (void)_sendWillUpdateFocusNotificationsInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1425 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__UIFocusSystem__sendWillUpdateFocusNotificationsInContext___block_invoke;
  v8[3] = &unk_1E7108B70;
  v9 = contextCopy;
  v6 = contextCopy;
  [(UIFocusSystem *)self _sendNotificationsForFocusUpdateInContext:v6 usingBlock:v8];
}

void __60__UIFocusSystem__sendWillUpdateFocusNotificationsInContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 _willUpdateFocusInContext:*(a1 + 32)];
  }
}

- (void)_sendDidUpdateFocusNotificationsInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1436 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__UIFocusSystem__sendDidUpdateFocusNotificationsInContext___block_invoke;
  v8[3] = &unk_1E7108B98;
  v8[4] = self;
  v9 = contextCopy;
  v6 = contextCopy;
  [(UIFocusSystem *)self _sendNotificationsForFocusUpdateInContext:v6 usingBlock:v8];
}

- (void)_sendNotificationsForFocusUpdateInContext:(id)context usingBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v9 = blockCopy;
  if (contextCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1446 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1447 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  nextFocusedItem = [contextCopy nextFocusedItem];
  _commonAncestorEnvironment = [contextCopy _commonAncestorEnvironment];
  if (previouslyFocusedItem)
  {
    if ((*(&self->_flags + 1) & 0x20) != 0)
    {
      delegate = [(UIFocusSystem *)self delegate];
      [delegate _focusSystem:self willMessageOldFocusNodes:contextCopy];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__UIFocusSystem__sendNotificationsForFocusUpdateInContext_usingBlock___block_invoke;
    v19[3] = &unk_1E7108BC0;
    v20 = _commonAncestorEnvironment;
    v21 = v9;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(previouslyFocusedItem, v19);
  }

  if (nextFocusedItem)
  {
    if ((*(&self->_flags + 1) & 0x40) != 0)
    {
      delegate2 = [(UIFocusSystem *)self delegate];
      [delegate2 _focusSystem:self willMessageNewFocusNodes:contextCopy];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__UIFocusSystem__sendNotificationsForFocusUpdateInContext_usingBlock___block_invoke_2;
    v17[3] = &unk_1E7108BE8;
    v18 = v9;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(nextFocusedItem, v17);
  }
}

uint64_t __70__UIFocusSystem__sendNotificationsForFocusUpdateInContext_usingBlock___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) != a2)
  {
    return (*(*(result + 40) + 16))();
  }

  *a3 = 1;
  return result;
}

- (void)_performWithoutFocusUpdates:(id)updates
{
  if (updates)
  {
    flags = self->_flags;
    self->_flags = (*&flags | 2);
    (*(updates + 2))(updates, a2);
    self->_flags = (*&self->_flags & 0xFFFFFFFD | (2 * ((*&flags >> 1) & 1)));
  }
}

- (BOOL)_updateFocusImmediatelyWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1501 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  if (*__UILogGetCategoryCachedImpl("UIFocus", &_updateFocusImmediatelyWithContext____s_category))
  {
    _focusMovement = [contextCopy _focusMovement];

    if (_focusMovement)
    {
      _focusMovement = [[_UIFocusUpdateReport alloc] initWithFocusSystem:self];
      [(_UIFocusUpdateReport *)_focusMovement setContext:contextCopy];
    }
  }

  else
  {
    _focusMovement = 0;
  }

  v7 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:contextCopy report:_focusMovement];

  v8 = [(UIFocusSystem *)self _updateFocusWithContext:v7 report:_focusMovement];
  return v8;
}

- (BOOL)_updateFocusImmediatelyToEnvironment:(id)environment startDeferringOnLostFocus:(BOOL)focus suppressLostFocusUpdate:(BOOL)update
{
  environmentCopy = environment;
  if ((*&self->_flags & 2) != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v24 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "UIKit is trying to programatically move focus while inside another focus update. This typically happens when clients are manipulating state in response to a state change callout for the same state.", buf, 2u);
      }
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &_updateFocusImmediatelyToEnvironment_startDeferringOnLostFocus_suppressLostFocusUpdate____s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "UIKit is trying to programatically move focus while inside another focus update. This typically happens when clients are manipulating state in response to a state change callout for the same state.", buf, 2u);
      }
    }
  }

  if ((*&self->_flags & 2) == 0)
  {
    if (!dyld_program_sdk_at_least() || [(UIFocusSystem *)self _isEnabled])
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __104__UIFocusSystem__updateFocusImmediatelyToEnvironment_startDeferringOnLostFocus_suppressLostFocusUpdate___block_invoke;
      v25[3] = &unk_1E70F8A10;
      focusCopy = focus;
      v25[4] = self;
      updateCopy = update;
      v9 = _Block_copy(v25);
      v10 = [(UIFocusSystem *)self _contextForUpdateToEnvironment:environmentCopy allowsOverridingPreferedFocusEnvironments:0 allowsDeferral:1];
      v11 = v10;
      if (environmentCopy && ([v10 nextFocusedItem], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
      {
        _topEnvironment = [(UIFocusSystem *)self _topEnvironment];
        v19 = _topEnvironment;
        if (_topEnvironment == self)
        {

          v19 = 0;
        }

        _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
        v21 = _focusedItemOrDeferralTarget;
        if (v19 && _focusedItemOrDeferralTarget && (_UIFocusEnvironmentIsAncestorOfEnvironment(v19, _focusedItemOrDeferralTarget) & 1) == 0)
        {
          v9[2](v9);
        }
      }

      else
      {
        if (![(UIFocusSystem *)self _isEnabled])
        {
          nextFocusedItem = [v11 nextFocusedItem];
          objc_storeWeak(&self->_previousFocusedItem, nextFocusedItem);

          pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
          self->_pendingFocusUpdateRequest = 0;

          [(UIFocusSystem *)self _setNeedsFocusRestoration];
          v14 = 1;
LABEL_26:

          goto LABEL_27;
        }

        if ([v11 _isValidInFocusSystem:self])
        {
          v13 = [(UIFocusSystem *)self _configureFocusDeferralIfNecessaryForContext:v11 report:0];

          if ([(UIFocusSystem *)self _updateFocusImmediatelyWithContext:v13])
          {
            if (![(UIFocusSystem *)self _hasValidItemForCurrentDeferralState])
            {
              v9[2](v9);
            }

            v14 = 1;
          }

          else
          {
            v14 = 0;
          }

          v11 = v13;
          goto LABEL_26;
        }
      }

      v14 = 0;
      goto LABEL_26;
    }

    v17 = self->_pendingFocusUpdateRequest;
    self->_pendingFocusUpdateRequest = 0;

    [(UIFocusSystem *)self _cancelPendingFocusRestoration];
  }

  v14 = 0;
LABEL_27:

  return v14;
}

uint64_t __104__UIFocusSystem__updateFocusImmediatelyToEnvironment_startDeferringOnLostFocus_suppressLostFocusUpdate___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 40) == 1)
  {
    result = [*(result + 32) _effectiveFocusDeferralBehavior];
    if (result)
    {
      result = [*(v1 + 32) _resetFocusDeferral];
    }
  }

  if ((*(v1 + 41) & 1) == 0)
  {
    v2 = *(v1 + 32);

    return [v2 requestFocusUpdateToEnvironment:v2];
  }

  return result;
}

- (id)_contextForUpdateToEnvironment:(id)environment allowsOverridingPreferedFocusEnvironments:(BOOL)environments allowsDeferral:(BOOL)deferral
{
  deferralCopy = deferral;
  environmentsCopy = environments;
  environmentCopy = environment;
  if (environmentCopy)
  {
    v9 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:self environment:environmentCopy];
  }

  else
  {
    v9 = [_UIFocusUpdateRequest requestForRemovingFocusInFocusSystem:self];
  }

  v10 = v9;
  [(_UIFocusUpdateRequest *)v9 setAllowsOverridingPreferedFocusEnvironments:environmentsCopy];
  [(_UIFocusUpdateRequest *)v10 setAllowsDeferral:deferralCopy];
  v11 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:v10];

  return v11;
}

- (BOOL)_performFocusMovement:(id)movement
{
  movementCopy = movement;
  _movementPerformer = [(UIFocusSystem *)self _movementPerformer];
  v6 = [_movementPerformer performFocusMovement:movementCopy];

  return v6;
}

- (id)_closestFocusableItemToPoint:(CGPoint)point inEnvironment:(id)environment constrainedToRect:(CGRect)rect distanceMeasuringUnitPoint:(CGPoint)unitPoint itemFilter:(id)filter
{
  y = unitPoint.y;
  x = unitPoint.x;
  height = rect.size.height;
  width = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  v14 = point.y;
  v15 = point.x;
  environmentCopy = environment;
  filterCopy = filter;
  focusItemContainer = [environmentCopy focusItemContainer];
  if (focusItemContainer)
  {
    focusItemContainer2 = [(UIFocusSystem *)self focusItemContainer];
    coordinateSpace = [focusItemContainer2 coordinateSpace];

    coordinateSpace2 = [focusItemContainer coordinateSpace];
    [coordinateSpace2 convertPoint:coordinateSpace toCoordinateSpace:{v15, v14}];
    v24 = v23;
    v26 = v25;
    [coordinateSpace2 convertRect:coordinateSpace toCoordinateSpace:{v13, v12, width, height}];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = [[_UIFocusMap alloc] initWithFocusSystem:self rootEnvironment:environmentCopy coordinateSpace:coordinateSpace searchInfo:0 ignoresRootContainerClippingRect:1];
    v36 = [(_UIFocusMap *)v35 _closestFocusableItemToPoint:filterCopy inRect:v24 itemFilter:v26 distanceMeasuringUnitPoint:v28, v30, v32, v34, x, y];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (BOOL)_focusedItemIsContainedInEnvironment:(id)environment includeSelf:(BOOL)self
{
  environmentCopy = environment;
  if (_UIFocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic())
  {
    if (!self && (a2 = objc_loadWeakRetained(&self->_focusedItem), a2 == environmentCopy))
    {
      IsAncestorOfEnvironment = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(environmentCopy, WeakRetained);

      if (self)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!environmentCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1704 description:{@"Invalid parameter not satisfying: %@", @"environment != nil"}];
    }

    [(UIFocusSystem *)self _buildFocusItemAncestorCacheIfNecessary];
    if (self)
    {
      IsAncestorOfEnvironment = [(NSHashTable *)self->_focusItemAncestorCache containsObject:environmentCopy];
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_focusedItem);
      if (v10 == environmentCopy)
      {
        IsAncestorOfEnvironment = 0;
      }

      else
      {
        IsAncestorOfEnvironment = [(NSHashTable *)self->_focusItemAncestorCache containsObject:environmentCopy];
      }
    }
  }

LABEL_16:

  return IsAncestorOfEnvironment;
}

void __46__UIFocusSystem__reevaluateLockedEnvironments__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (void)_handleFocusMovementAction:(id)action
{
  [(UIFocusSystem *)self setPendingFocusMovementAction:action];
  if ([(UIFocusSystem *)self waitingForFocusMovementAction])
  {
    [(UIFocusSystem *)self _setEnabled:1];

    [(UIFocusSystem *)self setWaitingForFocusMovementAction:0];
  }
}

- (UIFocusEnvironment)_deepestPreferredFocusEnvironment
{
  _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
  v4 = _focusedItemOrDeferralTarget;
  if (_focusedItemOrDeferralTarget)
  {
    v5 = _focusedItemOrDeferralTarget;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_deepestPreferredFocusEnvironment);

    if (!WeakRetained)
    {
      v7 = objc_alloc_init(_UIDeepestPreferredEnvironmentSearch);
      v8 = [(_UIDeepestPreferredEnvironmentSearch *)v7 deepestPreferredFocusEnvironmentForEnvironment:self];
      objc_storeWeak(&self->_deepestPreferredFocusEnvironment, v8);
    }

    v5 = objc_loadWeakRetained(&self->_deepestPreferredFocusEnvironment);
  }

  v9 = v5;

  return v9;
}

- (BOOL)_shouldReverseLayoutDirectionForEnvironment:(id)environment
{
  if ((*(&self->_flags + 2) & 0x20) == 0)
  {
    return 0;
  }

  selfCopy = self;
  environmentCopy = environment;
  delegate = [(UIFocusSystem *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _focusSystem:selfCopy shouldReverseLayoutDirectionForEnvironment:environmentCopy];

  return selfCopy;
}

- (BOOL)_shouldReverseLinearWrappingForEnvironment:(id)environment
{
  if ((*(&self->_flags + 2) & 0x40) == 0)
  {
    return 0;
  }

  selfCopy = self;
  environmentCopy = environment;
  delegate = [(UIFocusSystem *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _focusSystem:selfCopy shouldReverseLinearWrappingForEnvironment:environmentCopy];

  return selfCopy;
}

- (BOOL)_uiktest_updateFocusToItem:(id)item
{
  selfCopy = self;
  v4 = [(UIFocusSystem *)self _simulatedNonDeferredProgrammaticFocusUpdateToEnvironment:item];
  LOBYTE(selfCopy) = [(UIFocusSystem *)selfCopy _updateFocusWithContext:v4 report:0];

  return selfCopy;
}

- (void)_uiktest_disableFocusDeferral
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1826 description:@"This method is only to be used during UIKit tests."];
}

- (void)_uiktest_disableThrottle
{
  [(_UIFocusUpdateThrottle *)self->_updateThrottle teardown];
  updateThrottle = self->_updateThrottle;
  self->_updateThrottle = 0;
}

- (BOOL)_uiktest_performFocusMovement:(id)movement withSearchInfo:(id)info
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1847 description:@"This method is only to be used during UIKit tests."];

  return 0;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFBF | v5);
    if (objc_opt_respondsToSelector())
    {
      v6 = 128;
    }

    else
    {
      v6 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFF7F | v6);
    if (objc_opt_respondsToSelector())
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFEFF | v7);
    if (objc_opt_respondsToSelector())
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFDFF | v8);
    if (objc_opt_respondsToSelector())
    {
      v9 = 1024;
    }

    else
    {
      v9 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFBFF | v9);
    if (objc_opt_respondsToSelector())
    {
      v10 = 2048;
    }

    else
    {
      v10 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v10);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4096;
    }

    else
    {
      v11 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFEFFF | v11);
    if (objc_opt_respondsToSelector())
    {
      v12 = 0x2000;
    }

    else
    {
      v12 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFDFFF | v12);
    if (objc_opt_respondsToSelector())
    {
      v13 = 0x4000;
    }

    else
    {
      v13 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFBFFF | v13);
    if (objc_opt_respondsToSelector())
    {
      v14 = 0x8000;
    }

    else
    {
      v14 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFF7FFF | v14);
    if (objc_opt_respondsToSelector())
    {
      v15 = 0x10000;
    }

    else
    {
      v15 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFEFFFF | v15);
    if (objc_opt_respondsToSelector())
    {
      v16 = 0x20000;
    }

    else
    {
      v16 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFDFFFF | v16);
    if (objc_opt_respondsToSelector())
    {
      v17 = 0x40000;
    }

    else
    {
      v17 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFBFFFF | v17);
    if (objc_opt_respondsToSelector())
    {
      v18 = 0x80000;
    }

    else
    {
      v18 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFF7FFFF | v18);
    if (objc_opt_respondsToSelector())
    {
      v19 = 0x100000;
    }

    else
    {
      v19 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFEFFFFF | v19);
    if (objc_opt_respondsToSelector())
    {
      v20 = 0x200000;
    }

    else
    {
      v20 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFDFFFFF | v20);
    if (objc_opt_respondsToSelector())
    {
      v21 = 0x400000;
    }

    else
    {
      v21 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFBFFFFF | v21);
    if (objc_opt_respondsToSelector())
    {
      v22 = 0x800000;
    }

    else
    {
      v22 = 0;
    }

    self->_flags = (*&self->_flags & 0xFF7FFFFF | v22);
  }
}

- (BOOL)_shouldRestoreFocusInContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1888 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  delegate = [(UIFocusSystem *)self delegate];
  v7 = delegate;
  if (delegate && (*(&self->_flags + 1) & 2) != 0)
  {
    IsAncestorOfEnvironment = [delegate _focusSystem:self shouldRestoreFocusInContext:contextCopy];
  }

  else
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(self, nextFocusedItem);
  }

  return IsAncestorOfEnvironment;
}

- (void)_didFinishUpdatingFocusInContext:(id)context
{
  contextCopy = context;
  v11 = contextCopy;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem.m" lineNumber:1900 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    contextCopy = 0;
  }

  _sourceItemInfo = [contextCopy _sourceItemInfo];
  [_sourceItemInfo invalidateFocusedRegion];

  _destinationItemInfo = [v11 _destinationItemInfo];
  [_destinationItemInfo invalidateFocusedRegion];

  delegate = [(UIFocusSystem *)self delegate];
  v9 = delegate;
  if (delegate && (*(&self->_flags + 1) & 0x10) != 0)
  {
    [delegate _focusSystem:self didFinishUpdatingFocusInContext:v11];
  }
}

- (BOOL)_isScrollingScrollableContainer:(id)container targetContentOffset:(CGPoint *)offset
{
  containerCopy = container;
  delegate = [(UIFocusSystem *)self delegate];
  v8 = delegate;
  if (delegate && (*(&self->_flags + 2) & 0x80) != 0)
  {
    v9 = [delegate _focusSystem:self isScrollingScrollableContainer:containerCopy targetContentOffset:offset];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_handleFailedFocusMovementRequest:(id)request withPerformer:(id)performer
{
  if ((*(&self->_flags + 2) & 0x10) == 0)
  {
    return 0;
  }

  selfCopy = self;
  requestCopy = request;
  delegate = [(UIFocusSystem *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _focusSystem:selfCopy handleFailedMovementRequest:requestCopy];

  return selfCopy;
}

- (void)setBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (self->_behavior != behaviorCopy)
  {
    v6 = behaviorCopy;
    objc_storeStrong(&self->_behavior, behavior);
    [(UIFocusSystem *)self _focusBehaviorDidChange];
    behaviorCopy = v6;
  }
}

void __43__UIFocusSystem__updateFocusUpdateThrottle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusIfNeeded];
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  if (os_variant_has_internal_diagnostics() && (*&self->_flags & 1) != 0)
  {
    v11 = [v3 appendObject:@"YES" withName:@"TEARDOWN RECEIVED"];
  }

  v4 = [v3 appendBool:self->_enabled withName:@"enabled"];
  WeakRetained = objc_loadWeakRetained(&self->_focusedItem);
  v6 = [v3 appendObject:WeakRetained withName:@"focusedItem"];

  pendingFocusUpdateRequest = self->_pendingFocusUpdateRequest;
  if (pendingFocusUpdateRequest)
  {
    v8 = [v3 appendObject:pendingFocusUpdateRequest withName:@"pendingFocusUpdateRequest"];
  }

  if (*__UILogGetCategoryCachedImpl("UIFocus", &description___s_category))
  {
    v12 = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_deferredFocusUpdateTarget);
      if (v13)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v14 stringWithFormat:@"<%@: %p>", v16, v13];
      }

      else
      {
        v17 = @"(nil)";
      }

      v19 = [v3 appendObject:v17 withName:@"deferredFocusUpdateTarget"];
    }

    else
    {
      v18 = objc_loadWeakRetained(&self->_focusedItem);
      if (v18)
      {
      }

      else if ([(UIFocusSystem *)self _effectiveFocusDeferralBehavior])
      {
        v22 = [v3 appendObject:@"nil" withName:@"deferredFocusUpdateTarget"];
      }
    }

    treeLock = self->_treeLock;
    if (treeLock)
    {
      v21 = [v3 appendObject:treeLock withName:@"treeLock"];
    }
  }

  build = [v3 build];

  return build;
}

+ (void)registerURL:(NSURL *)soundFileURL forSoundIdentifier:(UIFocusSoundIdentifier)identifier
{
  v12 = soundFileURL;
  v7 = identifier;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusSystem+UIKitAdditions.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"soundFileURL"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIFocusSystem+UIKitAdditions.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_3:
  if ([(NSString *)v7 isEqual:@"UIFocusSoundIdentifierDefault"])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIFocusSystem+UIKitAdditions.m" lineNumber:31 description:@"UIFocusSoundIdentifierDefault is reserved for system use."];
  }

  if ([(NSString *)v7 isEqual:@"UIFocusSoundIdentifierNone"])
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"UIFocusSystem+UIKitAdditions.m" lineNumber:32 description:@"UIFocusSoundIdentifierNone is reserved for system use."];
  }

  [_UIFocusSoundGenerator registerURL:v12 forIdentifier:v7];
}

- (UIFocusSystem)_preferredFirstResponderFocusSystem
{
  focusedItem = [(UIFocusSystem *)self focusedItem];
  v4 = [(UIFocusSystem *)self _preferredFirstResponderFocusSystemForFocusedItem:focusedItem];

  return v4;
}

- (id)_preferredFirstResponderFocusSystemForFocusedItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    selfCopy = self;
    goto LABEL_27;
  }

  v6 = _UIHostedFocusSystemsForHostEnvironment(itemCopy);
  if ([v6 count] == 1)
  {
    anyObject = [v6 anyObject];
    focusedItem = [anyObject focusedItem];
    if (!anyObject)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ([v6 count] < 2)
    {
      anyObject = 0;
      focusedItem = 0;
LABEL_25:
      selfCopy2 = self;
      goto LABEL_26;
    }

    selfCopy3 = self;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      focusedItem = 0;
      anyObject = 0;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          focusedItem2 = [v15 focusedItem];
          if (focusedItem2)
          {
            if (anyObject)
            {

              goto LABEL_21;
            }

            anyObject = v15;
            v17 = focusedItem2;

            focusedItem = v17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      focusedItem = 0;
LABEL_21:
      anyObject = 0;
    }

    self = selfCopy3;
    if (!anyObject)
    {
      goto LABEL_25;
    }
  }

  if (!focusedItem)
  {
    goto LABEL_25;
  }

  selfCopy2 = [anyObject _preferredFirstResponderFocusSystemForFocusedItem:focusedItem];
LABEL_26:
  selfCopy = selfCopy2;

LABEL_27:

  return selfCopy;
}

- (UIResponder)_preferredFirstResponder
{
  v3 = objc_getAssociatedObject(self, &_overridePreferredFirstResponderKey);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_27;
  }

  focusedItem = [(UIFocusSystem *)self focusedItem];
  _focusedItemOrDeferralTarget = [(UIFocusSystem *)self _focusedItemOrDeferralTarget];
  v8 = _focusedItemOrDeferralTarget;
  if (focusedItem)
  {
    v9 = 1;
  }

  else
  {
    v9 = _focusedItemOrDeferralTarget == 0;
  }

  v10 = !v9;
  if (v9)
  {
    if (focusedItem)
    {
LABEL_14:
      v11 = [(UIFocusSystem *)self _preferredFirstResponderFocusSystemForFocusedItem:focusedItem];
      v12 = v11;
      if (v11 == self || ([(UIFocusSystem *)v11 _preferredFirstResponder], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = _UIFirstResponderCandidateForEnvironment(focusedItem);
      }

      if (v10)
      {
        v13 = _UIFocusEnvironmentContainingView(focusedItem);
        _window = [v13 _window];

        if (!_window || ([UIApp _physicalKeyboardEventForWindow:_window], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, objc_setAssociatedObject(self, &_overridePreferredFirstResponderKey, v5, 0x301), objc_msgSend(v5, "_keyboardShortcutInvocationForKeyboardEvent:", v16), v17 = objc_claimAutoreleasedReturnValue(), objc_setAssociatedObject(self, &_overridePreferredFirstResponderKey, 0, 0x301), v16, !v17))
        {

          v17 = 0;
          v5 = 0;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (_UIFocusItemIsViewOrRespondsToSelector(_focusedItemOrDeferralTarget) && [v8 _wantsKeyCommandsWhenDeferred])
    {
      focusedItem = v8;
      goto LABEL_14;
    }

    focusedItem = 0;
  }

  v5 = 0;
LABEL_26:

LABEL_27:

  return v5;
}

- (BOOL)_safari_moveFocusToNextGroup
{
  _UIFocusSystemAssertIfNotSafari();
  v3 = [[_UIFocusMovementInfo alloc] initWithHeading:16 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:0 looping:1 groupFilter:2 inputType:5];
  v4 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:self];
  [(_UIFocusMovementRequest *)v4 setMovementInfo:v3];
  LOBYTE(self) = [(UIFocusSystem *)self _performFocusMovement:v4];

  return self;
}

- (BOOL)_safari_moveFocusToPreviousGroup
{
  _UIFocusSystemAssertIfNotSafari();
  v3 = [[_UIFocusMovementInfo alloc] initWithHeading:32 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:0 looping:1 groupFilter:2 inputType:5];
  v4 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:self];
  [(_UIFocusMovementRequest *)v4 setMovementInfo:v3];
  LOBYTE(self) = [(UIFocusSystem *)self _performFocusMovement:v4];

  return self;
}

@end