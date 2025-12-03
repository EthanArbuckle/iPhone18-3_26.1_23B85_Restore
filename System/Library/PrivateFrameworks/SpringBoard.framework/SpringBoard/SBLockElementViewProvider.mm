@interface SBLockElementViewProvider
+ (BOOL)deviceSupportsElement;
+ (void)registerElementForRecording;
- (BOOL)_activelyWantsMatching;
- (BOOL)_canApplyRequestedState:(unint64_t)state;
- (BOOL)_isSecurelyRenderingInJindo;
- (BOOL)_treatCustomAsLarge;
- (BOOL)_treatsAsAmbientSearching;
- (BOOL)_useSecureElementHostStates;
- (BOOL)isIndicatorVisibilityRequired;
- (CGSize)_elementSizeLeading:(BOOL)leading forLayoutMode:(int64_t)mode;
- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode;
- (NSArray)recordableConfigurations;
- (NSDictionary)preferredComponentStates;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBBiometricAuthenticationIndicatorHost)indicatorHost;
- (SBLockElementViewProvider)init;
- (SBSecureFlipBookElementHost)secureElementHost;
- (id)leadingLock;
- (id)trailingContentView;
- (int64_t)_resolvedEventForState:(int64_t)state;
- (int64_t)elementOrientation;
- (int64_t)preferredLayoutMode;
- (int64_t)systemApertureCustomLayout;
- (unint64_t)_nextSecureStateForState:(unint64_t)state;
- (unint64_t)_nextSecureStateForState:(unint64_t)state from:(unint64_t)from;
- (unint64_t)_secureStateContainsSecureFrames:(unint64_t)frames;
- (void)_deferSecureState:(unint64_t)state completion:(id)completion;
- (void)_forceSleepSecureState;
- (void)_reconcileAppliedSecureState;
- (void)_reconcileDeferredSecureState;
- (void)_reconcileNotifiedSecureState;
- (void)_reconcileRequestedSecureState;
- (void)_requestSecureState:(unint64_t)state completion:(id)completion;
- (void)_setAcquiring:(BOOL)acquiring;
- (void)_toggleUnlockMode;
- (void)_updateAllowsBioUnlock;
- (void)_updateRequiredPriorityAssertion;
- (void)_updateTrailingGlyph;
- (void)_updateTrailingPackageVisibility;
- (void)_updateUnlockModeForState;
- (void)_updateVisibilityAssertion;
- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator;
- (void)handleBiometricEvent:(int64_t)event;
- (void)init;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews;
- (void)recordingModeChanged;
- (void)setActiveComponentStates:(id)states;
- (void)setAppliedComponentStates:(id)states;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setBloomed:(BOOL)bloomed;
- (void)setEmpty:(BOOL)empty;
- (void)setIsForCapture:(BOOL)capture;
- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (void)shake;
- (void)systemApertureElementAssertionAcquired;
@end

@implementation SBLockElementViewProvider

- (int64_t)elementOrientation
{
  obstructionEdge = [(SBLockElementViewProvider *)self obstructionEdge];
  if (obstructionEdge > 3)
  {
    return 1;
  }

  else
  {
    return qword_21F8A5AC8[obstructionEdge];
  }
}

- (void)_updateUnlockModeForState
{
  _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
  v4 = _requestedSecureState;
  if (_requestedSecureState - 5 <= 4)
  {
    v4 = qword_21F8A5AA0[_requestedSecureState - 5];
  }

  if (self->_isInBloomMode && [(SBLockElementViewProvider *)self _activelyWantsMatching])
  {
    if (self->_isAcquiring)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }
  }

  [(SBLockElementViewProvider *)self _requestSecureState:v4];
}

- (BOOL)_treatCustomAsLarge
{
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];

  return [(SBLockElementViewProvider *)self _secureStateIsLarge:_appliedSecureState];
}

- (int64_t)systemApertureCustomLayout
{
  if ([(SBLockElementViewProvider *)self _isShowingInLandscape])
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_activelyWantsMatching
{
  if (![(SBLockElementViewProvider *)self _allowsBiometricUnlock]|| ![(SBUIBiometricResource *)self->_sharedResource isMatchingAllowed]|| ([(SBUIBiometricResource *)self->_sharedResource isMatchingEnabled]& 1) == 0 && !self->_isAuthenticated)
  {
    return 0;
  }

  sharedResource = self->_sharedResource;

  return [(SBUIBiometricResource *)sharedResource isPearlDetectEnabled];
}

- (BOOL)_useSecureElementHostStates
{
  secureElementHost = [(SBLockElementViewProvider *)self secureElementHost];
  if (secureElementHost)
  {
    v4 = !self->_isForCapture;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SBSecureFlipBookElementHost)secureElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_secureElementHost);

  return WeakRetained;
}

- (SBBiometricAuthenticationIndicatorHost)indicatorHost
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorHost);

  return WeakRetained;
}

- (void)_updateTrailingPackageVisibility
{
  trailingContentView = self->_trailingContentView;
  if (self->_isForCapture)
  {
    isEmpty = 0;
  }

  else if ([(SBLockElementViewProvider *)self _allowsBiometricUnlock])
  {
    isEmpty = self->_isEmpty;
  }

  else
  {
    isEmpty = 1;
  }

  [(SBLockElementTrailingContentView *)trailingContentView setHidden:isEmpty];
}

- (int64_t)preferredLayoutMode
{
  [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
  if (self->_alwaysUseCustomLayoutMode)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (!self->_isEmpty)
  {
    if ([(SBLockElementViewProvider *)self _appliedSecureState]|| ![(SBLockElementViewProvider *)self _notifiedSecureState])
    {
      _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
    }

    else
    {
      _appliedSecureState = [(SBLockElementViewProvider *)self _notifiedSecureState];
    }

    if (_appliedSecureState - 5 >= 5)
    {
      if (!_appliedSecureState)
      {
        if (self->_isForCapture)
        {
          return 3;
        }

        else
        {
          return -1;
        }
      }
    }

    else
    {
      return 3;
    }
  }

  return v3;
}

- (void)_updateVisibilityAssertion
{
  indicatorHost = [(SBLockElementViewProvider *)self indicatorHost];
  [indicatorHost preferredVisibilityStateDidInvalidateForSpecifier:self];
}

- (void)_reconcileRequestedSecureState
{
  v57 = *MEMORY[0x277D85DE8];
  if (self->_isElementRegistered)
  {
    _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
    if (_requestedSecureState != [(SBLockElementViewProvider *)self _appliedSecureState])
    {
      _notifiedSecureState = [(SBLockElementViewProvider *)self _notifiedSecureState];
      if (_notifiedSecureState == [(SBLockElementViewProvider *)self _appliedSecureState])
      {
        _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
        if (_currentSecureState == [(SBLockElementViewProvider *)self _appliedSecureState])
        {
          platformElementHost = [(SBSystemApertureProvidedContentElement *)self platformElementHost];
          v7 = SBLockElementFlipBookStateLocked;
          v8 = &SBPearlElementFlipBookStateResting;
          v9 = SBPearlElementFlipBookStateResting;
          v10 = [(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState]];
          v11 = v10;
          v12 = -1;
          v13 = 1;
          if (v10 <= 4)
          {
            if (v10 > 1)
            {
              if (v10 != 2)
              {
                if (v10 == 3)
                {
                  v42 = 0;
                  v14 = &SBLockElementFlipBookStateUnlocked;
                  v13 = 2;
                }

                else
                {
                  v42 = 1;
                  v14 = &SBLockElementFlipBookStateError;
                  v13 = 3;
                }

                goto LABEL_52;
              }

              v42 = 0;
              v14 = &SBLockElementFlipBookStateUnlockedSecure;
              goto LABEL_47;
            }

            if (v10)
            {
              if (v10 == 1)
              {
                v42 = 0;
                v14 = &SBLockElementFlipBookStateLocked;
LABEL_47:
                v13 = v10;
                goto LABEL_52;
              }

LABEL_70:
              v42 = 0;
              goto LABEL_53;
            }

            v42 = 0;
            v14 = &SBLockElementFlipBookStateSleep;
LABEL_52:
            v28 = *v14;

            v29 = *v8;
            v9 = v29;
            v7 = v28;
LABEL_53:
            v30 = SBLogSystemApertureLockElement();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
              if (_appliedSecureState - 1 > 8)
              {
                v32 = @"Sleep";
              }

              else
              {
                v32 = off_2783ABF90[_appliedSecureState - 1];
              }

              if (v11 - 1 > 8)
              {
                v33 = @"Sleep";
              }

              else
              {
                v33 = off_2783ABF90[v11 - 1];
              }

              *buf = 138412546;
              v52 = v32;
              v53 = 2112;
              v54 = v33;
              _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Applied requested state: %@ -> %@", buf, 0x16u);
            }

            self->_notifiedSecureState = v11;
            if ([(SBLockElementViewProvider *)self _useSecureElementHostStates])
            {
              objc_storeStrong(&self->_leadingViewFlipBookState, v7);
              objc_storeStrong(&self->_trailingViewFlipBookState, v9);
              v34 = SBLogSystemApertureLockElement();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                leadingViewFlipBookState = self->_leadingViewFlipBookState;
                trailingViewFlipBookState = self->_trailingViewFlipBookState;
                *buf = 138412546;
                v52 = leadingViewFlipBookState;
                v53 = 2112;
                v54 = trailingViewFlipBookState;
                _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "Requesting Jindo-managed state: leading: %@, trailing: %@", buf, 0x16u);
              }
            }

            else
            {
              v37 = dispatch_group_create();
              dispatch_group_enter(v37);
              leadingLock = self->_leadingLock;
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke;
              v49[3] = &unk_2783A9398;
              v39 = v37;
              v50 = v39;
              [(SBUIProudLockIconView *)leadingLock setState:v13 animated:1 completion:v49];
              dispatch_group_enter(v39);
              trailingContentView = self->_trailingContentView;
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_2;
              v47[3] = &unk_2783A9398;
              v34 = v39;
              v48 = v34;
              [(SBLockElementTrailingContentView *)trailingContentView setState:v12 animated:1 completion:v47];
              if (v42)
              {
                dispatch_group_enter(v34);
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_3;
                v46[3] = &unk_2783A8C18;
                v46[4] = self;
                v44[0] = MEMORY[0x277D85DD0];
                v44[1] = 3221225472;
                v44[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_4;
                v44[3] = &unk_2783A8C18;
                v45 = v34;
                [platformElementHost performAction:v46 withCompletionUponAnimationSettling:v44];
              }

              [(SBLockElementViewProvider *)self _reconcileNotifiedSecureState];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_5;
              block[3] = &unk_2783A8C18;
              block[4] = self;
              dispatch_group_notify(v34, MEMORY[0x277D85CD0], block);
            }

            WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
            [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
            [(SBLockElementViewProvider *)self _updateRequiredPriorityAssertion];

            goto LABEL_68;
          }

          if (v10 > 6)
          {
            switch(v10)
            {
              case 7:
                v42 = 0;
                v8 = &SBPearlElementFlipBookStateRestingScaled;
                v14 = &SBLockElementFlipBookStateUnlockedScaledSecure;
                break;
              case 8:
                v42 = 0;
                v8 = &SBPearlElementFlipBookStateRestingScaled;
                v14 = &SBLockElementFlipBookStateUnlockedScaled;
                break;
              case 9:
                v42 = 1;
                v8 = &SBPearlElementFlipBookStateError;
                v14 = &SBLockElementFlipBookStateErrorScaled;
                v13 = 13;
LABEL_43:
                v12 = 1;
                goto LABEL_52;
              default:
                goto LABEL_70;
            }

            v13 = 12;
            goto LABEL_52;
          }

          if (v10 == 5)
          {
            v42 = 0;
            v12 = 0;
            v8 = &SBPearlElementFlipBookStateSearching;
            v14 = &SBLockElementFlipBookStateLockedScaled;
            v13 = 11;
            goto LABEL_52;
          }

          v42 = 0;
          v8 = &SBPearlElementFlipBookStateFailed;
          v14 = &SBLockElementFlipBookStateLockedScaled;
          v13 = 11;
          goto LABEL_43;
        }

        platformElementHost = SBLogSystemApertureLockElement();
        if (os_log_type_enabled(platformElementHost, OS_LOG_TYPE_INFO))
        {
          v17 = [(SBLockElementViewProvider *)self _requestedSecureState]- 1;
          if (v17 > 8)
          {
            v18 = @"Sleep";
          }

          else
          {
            v18 = off_2783ABF90[v17];
          }

          v24 = [(SBLockElementViewProvider *)self _currentSecureState]- 1;
          if (v24 > 8)
          {
            v25 = @"Sleep";
          }

          else
          {
            v25 = off_2783ABF90[v24];
          }

          _appliedSecureState2 = [(SBLockElementViewProvider *)self _appliedSecureState];
          if (_appliedSecureState2 - 1 > 8)
          {
            v27 = @"Sleep";
          }

          else
          {
            v27 = off_2783ABF90[_appliedSecureState2 - 1];
          }

          *buf = 138412802;
          v52 = v18;
          v53 = 2112;
          v54 = v25;
          v55 = 2112;
          v56 = v27;
          v23 = "Cannot apply requested state: %@ (waiting for '%@ -> %@' to finish)";
LABEL_37:
          _os_log_impl(&dword_21ED4E000, platformElementHost, OS_LOG_TYPE_INFO, v23, buf, 0x20u);
        }
      }

      else
      {
        platformElementHost = SBLogSystemApertureLockElement();
        if (os_log_type_enabled(platformElementHost, OS_LOG_TYPE_INFO))
        {
          v15 = [(SBLockElementViewProvider *)self _requestedSecureState]- 1;
          if (v15 > 8)
          {
            v16 = @"Sleep";
          }

          else
          {
            v16 = off_2783ABF90[v15];
          }

          v19 = [(SBLockElementViewProvider *)self _currentSecureState]- 1;
          if (v19 > 8)
          {
            v20 = @"Sleep";
          }

          else
          {
            v20 = off_2783ABF90[v19];
          }

          _notifiedSecureState2 = [(SBLockElementViewProvider *)self _notifiedSecureState];
          if (_notifiedSecureState2 - 1 > 8)
          {
            v22 = @"Sleep";
          }

          else
          {
            v22 = off_2783ABF90[_notifiedSecureState2 - 1];
          }

          *buf = 138412802;
          v52 = v16;
          v53 = 2112;
          v54 = v20;
          v55 = 2112;
          v56 = v22;
          v23 = "Cannot apply requested state: %@ (waiting for '%@ -> %@' to start)";
          goto LABEL_37;
        }
      }

LABEL_68:
    }
  }
}

- (void)_reconcileAppliedSecureState
{
  v33 = *MEMORY[0x277D85DE8];
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  if (_appliedSecureState != [(SBLockElementViewProvider *)self _currentSecureState])
  {
    _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
    v5 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v6 = [v5 isEqualToString:self->_leadingViewFlipBookState];

    v7 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v8 = [v7 isEqualToString:self->_trailingViewFlipBookState];

    if (!_useSecureElementHostStates || (v6 & v8) != 0)
    {
      v9 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(SBLockElementViewProvider *)self _currentSecureState]- 1;
        if (v10 > 8)
        {
          v11 = @"Sleep";
        }

        else
        {
          v11 = off_2783ABF90[v10];
        }

        _appliedSecureState2 = [(SBLockElementViewProvider *)self _appliedSecureState];
        if (_appliedSecureState2 - 1 > 8)
        {
          v13 = @"Sleep";
        }

        else
        {
          v13 = off_2783ABF90[_appliedSecureState2 - 1];
        }

        *buf = 138412546;
        v30 = v11;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Applied state finished: %@ -> %@", buf, 0x16u);
      }

      v14 = self->_stateCompletions;
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      stateCompletions = self->_stateCompletions;
      self->_stateCompletions = v15;

      self->_currentSecureState = self->_appliedSecureState;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = v14;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          v21 = 0;
          do
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            (*(*(*(&v24 + 1) + 8 * v21) + 16))(*(*(&v24 + 1) + 8 * v21));
            ++v21;
          }

          while (v19 != v21);
          v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v19);
      }

      _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState == 4)
      {
        v23 = 1;
      }

      else
      {
        if (_requestedSecureState != 9)
        {
LABEL_24:
          [(SBLockElementViewProvider *)self _reconcileDeferredSecureState];
          [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
          [(SBLockElementViewProvider *)self _updateVisibilityAssertion];
          [(SBLockElementViewProvider *)self _updateRequiredPriorityAssertion];

          return;
        }

        v23 = 6;
      }

      [(SBLockElementViewProvider *)self _requestSecureState:v23];
      goto LABEL_24;
    }
  }
}

- (id)leadingLock
{
  leadingLock = self->_leadingLock;
  if (!leadingLock)
  {
    v4 = objc_alloc(MEMORY[0x277D67D88]);
    [(SBLockElementViewProvider *)self _elementSizeLeading:1 forLayoutMode:1];
    BSRectWithSize();
    v5 = [v4 initWithFrame:?];
    v6 = v5;
    if (self->_isAuthenticated)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [v5 setState:v7 animated:0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SWIPE_UP_TO_UNLOCK" value:&stru_283094718 table:@"CoverSheetCommon"];
    [v6 setAccessibilityLabel:v9];

    v10 = self->_leadingLock;
    self->_leadingLock = v6;

    leadingLock = self->_leadingLock;
  }

  return leadingLock;
}

+ (BOOL)deviceSupportsElement
{
  if (deviceSupportsElement_onceToken != -1)
  {
    +[SBLockElementViewProvider deviceSupportsElement];
  }

  return deviceSupportsElement_isJindo;
}

- (void)_reconcileDeferredSecureState
{
  v18 = *MEMORY[0x277D85DE8];
  _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  _appliedSecureState2 = [(SBLockElementViewProvider *)self _appliedSecureState];
  _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
  _deferredSecureState = [(SBLockElementViewProvider *)self _deferredSecureState];
  _requestedSecureState2 = [(SBLockElementViewProvider *)self _requestedSecureState];
  if (_requestedSecureState == _appliedSecureState && _appliedSecureState2 == _currentSecureState && _deferredSecureState != _requestedSecureState2)
  {
    v9 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SBLockElementViewProvider *)self _requestedSecureState]- 1;
      if (v10 > 8)
      {
        v11 = @"Sleep";
      }

      else
      {
        v11 = off_2783ABF90[v10];
      }

      _deferredSecureState2 = [(SBLockElementViewProvider *)self _deferredSecureState];
      if (_deferredSecureState2 - 1 > 8)
      {
        v13 = @"Sleep";
      }

      else
      {
        v13 = off_2783ABF90[_deferredSecureState2 - 1];
      }

      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Promoting deferred secure state: %@ -> %@", &v14, 0x16u);
    }

    self->_requestedSecureState = [(SBLockElementViewProvider *)self _deferredSecureState];
    [(NSMutableArray *)self->_stateCompletions addObjectsFromArray:self->_deferredStateCompletions];
    [(NSMutableArray *)self->_deferredStateCompletions removeAllObjects];
  }
}

- (void)_forceSleepSecureState
{
  v8[2] = *MEMORY[0x277D85DE8];
  if ([(SBLockElementViewProvider *)self _useSecureElementHostStates])
  {
    v3 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Force-resetting state machine to Sleep", v6, 2u);
    }

    self->_currentSecureState = 0;
    self->_appliedSecureState = 0;
    self->_notifiedSecureState = 0;
    v7[0] = SBLockElementLeadingFlipBookName;
    v7[1] = SBLockElementTrailingFlipBookName;
    v8[0] = SBLockElementFlipBookStateSleep;
    v8[1] = SBPearlElementFlipBookStateResting;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
    activeComponentStates = self->_activeComponentStates;
    self->_activeComponentStates = v4;
  }
}

- (SBLockElementViewProvider)init
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D67DF0]);
  v31.receiver = self;
  v31.super_class = SBLockElementViewProvider;
  v5 = [(SBSystemApertureProvidedContentElement *)&v31 initWithIdentifier:self contentProvider:v4];
  if (v5)
  {
    if (([objc_opt_class() deviceSupportsElement] & 1) == 0)
    {
      [(SBLockElementViewProvider *)a2 init];
    }

    v5->_alwaysUseCustomLayoutMode = _os_feature_enabled_impl();
    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    sharedResource = v5->_sharedResource;
    v5->_sharedResource = mEMORY[0x277D67C98];

    [(SBUIBiometricResource *)v5->_sharedResource addObserver:v5];
    v5->_allowsBioUnlock = [(SBLockElementViewProvider *)v5 _activelyWantsMatching];
    objc_storeStrong(&v5->_contentProvider, v4);
    v5->_isForCapture = 0;
    v5->_isElementRegistered = 0;
    v5->_currentSecureState = 0;
    v5->_notifiedSecureState = 0;
    v5->_appliedSecureState = 0;
    v5->_requestedSecureState = 0;
    v5->_deferredSecureState = 0;
    objc_storeStrong(&v5->_leadingViewFlipBookState, SBLockElementFlipBookStateSleep);
    objc_storeStrong(&v5->_trailingViewFlipBookState, SBPearlElementFlipBookStateResting);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stateCompletions = v5->_stateCompletions;
    v5->_stateCompletions = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferredStateCompletions = v5->_deferredStateCompletions;
    v5->_deferredStateCompletions = v10;

    [(SBLockElementViewProvider *)v5 _updateTrailingGlyph];
    v12 = objc_alloc(MEMORY[0x277D67E10]);
    leadingLock = [(SBLockElementViewProvider *)v5 leadingLock];
    v14 = [v12 initWithView:leadingLock];
    lockProvider = v5->_lockProvider;
    v5->_lockProvider = v14;

    v16 = objc_alloc(MEMORY[0x277D67E10]);
    trailingContentView = [(SBLockElementViewProvider *)v5 trailingContentView];
    v18 = [v16 initWithView:trailingContentView];
    trailingPackageProvider = v5->_trailingPackageProvider;
    v5->_trailingPackageProvider = v18;

    [(SBUISystemApertureContentProvider *)v5->_contentProvider setLeadingContentViewProvider:v5->_lockProvider];
    [(SBUISystemApertureContentProvider *)v5->_contentProvider setTrailingContentViewProvider:v5->_trailingPackageProvider];
    v20 = objc_opt_new();
    flipBookConfiguration = v5->_flipBookConfiguration;
    v5->_flipBookConfiguration = v20;

    v22 = v5->_flipBookConfiguration;
    v23 = [SBLockElementFlipBookDescription alloc];
    leadingLock2 = [(SBLockElementViewProvider *)v5 leadingLock];
    v25 = [(SBLockElementFlipBookDescription *)v23 initWithViewProvider:v5 lockView:leadingLock2];
    v32[0] = v25;
    v26 = [SBLockElementPearlFlipBookDescription alloc];
    trailingContentView2 = [(SBLockElementViewProvider *)v5 trailingContentView];
    v28 = [(SBLockElementPearlFlipBookDescription *)v26 initWithViewProvider:v5 contentView:trailingContentView2];
    v32[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [(SBLockElementFlipBookConfiguration *)v22 configureLayoutMode:3 withDescriptions:v29];
  }

  return v5;
}

uint64_t __50__SBLockElementViewProvider_deviceSupportsElement__block_invoke()
{
  result = SBSIsSystemApertureAvailable();
  deviceSupportsElement_isJindo = result;
  return result;
}

- (void)shake
{
  if ([(SBLockElementViewProvider *)self _treatCustomAsLarge])
  {
    v3 = 9;
  }

  else
  {
    v3 = 4;
  }

  [(SBLockElementViewProvider *)self _requestSecureState:v3];
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets
{
  if (self->_isEmpty)
  {
    top = *MEMORY[0x277D75060];
    v5 = *(MEMORY[0x277D75060] + 8);
    bottom = *(MEMORY[0x277D75060] + 16);
    v7 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    trailing = outsets.trailing;
    bottom = outsets.bottom;
    leading = outsets.leading;
    top = outsets.top;
    if ([(SBLockElementViewProvider *)self layoutMode:mode]== 3 && [(SBLockElementViewProvider *)self _treatCustomAsLarge])
    {
      if ([(SBLockElementViewProvider *)self _treatsAsAmbientSearching])
      {
        bottom = -16.0;
      }

      else
      {
        bottom = -14.0;
      }

      top = -1.0;
      v7 = -40.0;
      v5 = -40.0;
    }

    else
    {
      v12 = 0.0;
      if (self->_isAuthenticated)
      {
        leadingLock = [(SBLockElementViewProvider *)self leadingLock];
        traitCollection = [leadingLock traitCollection];
        layoutDirection = [traitCollection layoutDirection];

        v12 = 0.666666;
        if (layoutDirection == 1)
        {
          v12 = 2.0;
        }
      }

      v16 = leading - v12;
      _isShowingInLandscape = [(SBLockElementViewProvider *)self _isShowingInLandscape];
      v5 = v16 + -4.0;
      if (_isShowingInLandscape)
      {
        v7 = trailing + -4.0;
      }

      else
      {
        v7 = trailing;
      }

      if (!_isShowingInLandscape)
      {
        v5 = v16;
      }
    }
  }

  v18 = top;
  v19 = bottom;
  result.trailing = v7;
  result.bottom = v19;
  result.leading = v5;
  result.top = v18;
  return result;
}

- (void)setAuthenticated:(BOOL)authenticated
{
  if (self->_isAuthenticated != authenticated)
  {
    authenticatedCopy = authenticated;
    self->_isAuthenticated = authenticated;
    if (authenticated)
    {
      v5 = [(SBLockElementViewProvider *)self _resolvedEventForState:2];
    }

    else
    {
      v5 = 1;
    }

    [(SBLockElementViewProvider *)self handleBiometricEvent:v5];
    if (!self->_isInBloomMode)
    {
      WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
      [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
    }

    if (authenticatedCopy)
    {
      if (self->_hasActiveUnlockAttempt)
      {
        v7 = 6;
      }

      else
      {
        v7 = 0;
      }

      [(SBLockElementViewProvider *)self handleBiometricEvent:v7];
      self->_hasActiveUnlockAttempt = 0;
    }

    else
    {

      [(SBLockElementViewProvider *)self _setAcquiring:0];
    }
  }
}

- (void)_updateAllowsBioUnlock
{
  _activelyWantsMatching = [(SBLockElementViewProvider *)self _activelyWantsMatching];
  if (self->_allowsBioUnlock == _activelyWantsMatching)
  {
    if (self->_allowsBioUnlock && !self->_isAuthenticated)
    {

      [(SBLockElementViewProvider *)self handleBiometricEvent:21];
    }
  }

  else
  {
    self->_allowsBioUnlock = _activelyWantsMatching;
    if (_activelyWantsMatching)
    {
      v4 = 21;
    }

    else
    {
      v4 = 0;
    }

    [(SBLockElementViewProvider *)self handleBiometricEvent:v4];
    if (!self->_allowsBioUnlock)
    {

      [(SBLockElementViewProvider *)self _updateTrailingPackageVisibility];
    }
  }
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_isEmpty != empty)
  {
    if (self->_isElementRegistered)
    {
      [(SBLockElementViewProvider *)a2 setEmpty:?];
    }

    self->_isEmpty = empty;
  }
}

- (void)setBloomed:(BOOL)bloomed
{
  if (self->_isInBloomMode != bloomed)
  {
    self->_isInBloomMode = bloomed;
    [(SBLockElementViewProvider *)self _updateUnlockModeForState];
  }
}

- (BOOL)_treatsAsAmbientSearching
{
  _treatAsAmbient = [(SBLockElementViewProvider *)self _treatAsAmbient];
  if (_treatAsAmbient)
  {
    LOBYTE(_treatAsAmbient) = self->_layoutMode == 3;
  }

  return _treatAsAmbient;
}

- (void)setIsForCapture:(BOOL)capture
{
  captureCopy = capture;
  self->_isForCapture = capture;
  [(SBUIProudLockIconView *)self->_leadingLock setIsForCapture:?];
  trailingContentView = self->_trailingContentView;

  [(SBLockElementTrailingContentView *)trailingContentView setIsForCapture:captureCopy];
}

- (BOOL)_isSecurelyRenderingInJindo
{
  activeComponentStates = self->_activeComponentStates;
  if (activeComponentStates)
  {
    LOBYTE(activeComponentStates) = [(NSDictionary *)activeComponentStates count]!= 0;
  }

  return activeComponentStates;
}

- (void)_updateRequiredPriorityAssertion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState]];
  if ([(SBLockElementViewProvider *)self _useSecureElementHostStates]&& ([(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:v3]|| [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _appliedSecureState]]))
  {
    if (self->_requiredPriorityAssertion)
    {
      return;
    }

    v4 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState - 1 > 8)
      {
        v6 = @"Sleep";
      }

      else
      {
        v6 = off_2783ABF90[_requestedSecureState - 1];
      }

      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Taking priority assertion, requested = %@", &v13, 0xCu);
    }

    platformElementHost = [(SBSystemApertureProvidedContentElement *)self platformElementHost];
    v11 = [platformElementHost requestRequiredPriorityAssertionWithReason:@"Lock Element Secure State"];
    requiredPriorityAssertion = self->_requiredPriorityAssertion;
    self->_requiredPriorityAssertion = v11;
  }

  else
  {
    if (!self->_requiredPriorityAssertion)
    {
      return;
    }

    v7 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _requestedSecureState2 = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState2 - 1 > 8)
      {
        v9 = @"Sleep";
      }

      else
      {
        v9 = off_2783ABF90[_requestedSecureState2 - 1];
      }

      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Dropping priority assertion, requested = %@", &v13, 0xCu);
    }

    [(SAInvalidatable *)self->_requiredPriorityAssertion invalidateWithReason:@"Lock ELement no longer in secure state"];
    platformElementHost = self->_requiredPriorityAssertion;
    self->_requiredPriorityAssertion = 0;
  }
}

- (unint64_t)_secureStateContainsSecureFrames:(unint64_t)frames
{
  if (frames > 8)
  {
    return 1;
  }

  else
  {
    return qword_21F8A58C8[frames];
  }
}

- (unint64_t)_nextSecureStateForState:(unint64_t)state
{
  _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];

  return [(SBLockElementViewProvider *)self _nextSecureStateForState:state from:_currentSecureState];
}

- (unint64_t)_nextSecureStateForState:(unint64_t)state from:(unint64_t)from
{
  if (self->_isForCapture)
  {
    return state;
  }

  result = 3;
  if (from <= 4)
  {
    if (from <= 2)
    {
      if (from)
      {
        if (from != 1)
        {
          return result;
        }

        if (state < 0xA)
        {
          v5 = &unk_21F8A5960;
          return v5[state];
        }
      }

      else if (state < 0xA)
      {
        v5 = &unk_21F8A5910;
        return v5[state];
      }

      return 3;
    }

    if (from == 3)
    {
      if (state < 0xA)
      {
        v5 = &unk_21F8A59B0;
        return v5[state];
      }
    }

    else if (state < 0xA)
    {
      v5 = &unk_21F8A5A00;
      return v5[state];
    }

    return 8;
  }

  if (from <= 7)
  {
    if (from - 5 >= 2)
    {
      if (from != 7)
      {
        return result;
      }
    }

    else if (state < 0xA)
    {
      v5 = &unk_21F8A5A50;
      return v5[state];
    }

    return 8;
  }

  v6 = 5;
  stateCopy = 5;
  if (state != 4)
  {
    stateCopy = state;
  }

  if (state != 9)
  {
    v6 = stateCopy;
  }

  v8 = 5;
  if (state == 9)
  {
    v8 = 9;
  }

  if (from != 9)
  {
    v8 = 3;
  }

  if (from == 8)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

- (void)_reconcileNotifiedSecureState
{
  v21 = *MEMORY[0x277D85DE8];
  _notifiedSecureState = [(SBLockElementViewProvider *)self _notifiedSecureState];
  if (_notifiedSecureState != [(SBLockElementViewProvider *)self _appliedSecureState])
  {
    _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
    v5 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v6 = [v5 isEqualToString:self->_leadingViewFlipBookState];

    v7 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v8 = [v7 isEqualToString:self->_trailingViewFlipBookState];

    if (_useSecureElementHostStates && v6 && v8 != 0)
    {
      v10 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        leadingViewFlipBookState = self->_leadingViewFlipBookState;
        trailingViewFlipBookState = self->_trailingViewFlipBookState;
        v17 = 138412546;
        v18 = leadingViewFlipBookState;
        v19 = 2112;
        v20 = trailingViewFlipBookState;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Requested Jindo-managed state begun: leading: %@, trailing: %@", &v17, 0x16u);
      }

      _notifiedSecureState2 = [(SBLockElementViewProvider *)self _notifiedSecureState];
      if (_notifiedSecureState2 == 9 || _notifiedSecureState2 == 4)
      {
        elementHost = [(SBLockElementViewProvider *)self elementHost];
        [elementHost elementRequestsNegativeResponse:self];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    self->_appliedSecureState = self->_notifiedSecureState;
    [(SBLockElementViewProvider *)self _updateTrailingPackageVisibility];
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
    [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
    v16 = [(SBLockElementViewProvider *)self _secureStateIsLarge:[(SBLockElementViewProvider *)self _appliedSecureState]];
    if (v16 != [(SBLockElementViewProvider *)self _secureStateIsLarge:[(SBLockElementViewProvider *)self _currentSecureState]])
    {
      [WeakRetained preferredPromotionDidInvalidateForLayoutSpecifier:self];
    }
  }
}

void __59__SBLockElementViewProvider__reconcileRequestedSecureState__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) elementHost];
  [v2 elementRequestsNegativeResponse:*(a1 + 32)];
}

- (BOOL)_canApplyRequestedState:(unint64_t)state
{
  _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  v7 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState] from:[(SBLockElementViewProvider *)self _appliedSecureState]]];
  v8 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _nextSecureStateForState:state from:[(SBLockElementViewProvider *)self _appliedSecureState]]];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  return _requestedSecureState == _appliedSecureState || v10;
}

- (void)_deferSecureState:(unint64_t)state completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (state - 1 > 8)
    {
      v8 = @"Sleep";
    }

    else
    {
      v8 = off_2783ABF90[state - 1];
    }

    _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
    if (_currentSecureState - 1 > 8)
    {
      v10 = @"Sleep";
    }

    else
    {
      v10 = off_2783ABF90[_currentSecureState - 1];
    }

    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Deferring requested secure state: %@ (still waiting for secure state: %@)", &v13, 0x16u);
  }

  self->_deferredSecureState = state;
  if (completionCopy)
  {
    deferredStateCompletions = self->_deferredStateCompletions;
    v12 = MEMORY[0x223D6F7F0](completionCopy);
    [(NSMutableArray *)deferredStateCompletions addObject:v12];
  }
}

- (void)_requestSecureState:(unint64_t)state completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!self->_isEmpty)
  {
    if ([(SBLockElementViewProvider *)self _requestedSecureState]== state)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else if ([(SBLockElementViewProvider *)self _canApplyRequestedState:state])
    {
      v7 = SBLogSystemApertureLockElement();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
        if (_requestedSecureState - 1 > 8)
        {
          v9 = @"Sleep";
        }

        else
        {
          v9 = off_2783ABF90[_requestedSecureState - 1];
        }

        if (state - 1 > 8)
        {
          v10 = @"Sleep";
        }

        else
        {
          v10 = off_2783ABF90[state - 1];
        }

        v16 = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Requesting secure state: %@ -> %@", &v16, 0x16u);
      }

      self->_requestedSecureState = state;
      self->_deferredSecureState = state;
      if (completionCopy)
      {
        stateCompletions = self->_stateCompletions;
        v12 = MEMORY[0x223D6F7F0](completionCopy);
        [(NSMutableArray *)stateCompletions addObject:v12];
      }

      _useSecureElementHostStates = [(SBLockElementViewProvider *)self _useSecureElementHostStates];
      [(SBLockElementViewProvider *)self _updateVisibilityAssertion];
      [(SBLockElementViewProvider *)self _updateRequiredPriorityAssertion];
      if (_useSecureElementHostStates)
      {
        secureElementHost = [(SBLockElementViewProvider *)self secureElementHost];
        [secureElementHost preferredRecordedStateDidInvalidateForLayoutSpecifier:self];

        WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
        [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
      }

      else
      {
        [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
      }
    }

    else
    {
      [(SBLockElementViewProvider *)self _deferSecureState:state completion:completionCopy];
    }
  }
}

- (void)handleBiometricEvent:(int64_t)event
{
  if (event > 7)
  {
    if (event <= 11)
    {
      if (event != 8 && event != 10)
      {
        if (event != 11)
        {
          return;
        }

        event = 5;
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (event != 12)
    {
      if (event != 13)
      {
        if (event != 21)
        {
          return;
        }

        goto LABEL_17;
      }

LABEL_23:
      event = 9;
      goto LABEL_7;
    }

    event = 8;
    goto LABEL_7;
  }

  if (event > 2)
  {
    if (event != 3)
    {
      if (event == 5)
      {
LABEL_19:
        v3 = 1;
        goto LABEL_18;
      }

      if (event != 7)
      {
        return;
      }

      if (!self->_isInBloomMode)
      {
LABEL_17:
        v3 = 0;
LABEL_18:
        [(SBLockElementViewProvider *)self _setAcquiring:v3];
        return;
      }

      goto LABEL_23;
    }

    event = 4;
LABEL_7:
    [(SBLockElementViewProvider *)self _requestSecureState:event];
    return;
  }

  if (event == 1)
  {
    goto LABEL_7;
  }

  if (event == 2)
  {
    event = 3;
    goto LABEL_7;
  }
}

- (void)_setAcquiring:(BOOL)acquiring
{
  if (acquiring)
  {
    requiresSecureIndicator = 1;
  }

  else
  {
    requiresSecureIndicator = [(SBUIBiometricResource *)self->_sharedResource requiresSecureIndicator];
  }

  if (self->_isAcquiring != requiresSecureIndicator)
  {
    self->_isAcquiring = requiresSecureIndicator;

    [(SBLockElementViewProvider *)self _updateUnlockModeForState];
  }
}

- (void)systemApertureElementAssertionAcquired
{
  self->_isElementRegistered = 1;
  if (!self->_isAuthenticated)
  {
    [(SBLockElementViewProvider *)self _requestSecureState:1];
  }

  [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
}

- (CGSize)_elementSizeLeading:(BOOL)leading forLayoutMode:(int64_t)mode
{
  if ((mode + 1) >= 4)
  {
    v5 = 0.0;
    v4 = 0.0;
    if (mode == 3)
    {
      leadingCopy = leading;
      if ([(SBLockElementViewProvider *)self _treatCustomAsLarge:0.0])
      {
        v4 = 37.0;
        v5 = 23.0;
        if (leadingCopy)
        {
          v4 = 17.3333333;
        }

        else
        {
          v5 = 37.0;
        }
      }

      else
      {
        v4 = 12.0;
        v5 = 15.0;
      }
    }
  }

  else
  {
    v4 = 12.0;
    v5 = 15.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)trailingContentView
{
  trailingContentView = self->_trailingContentView;
  if (!trailingContentView)
  {
    v4 = [SBLockElementTrailingContentView alloc];
    [(SBLockElementViewProvider *)self _elementSizeLeading:0 forLayoutMode:1];
    BSRectWithSize();
    v5 = [(SBLockElementTrailingContentView *)v4 initWithFrame:?];
    v6 = self->_trailingContentView;
    self->_trailingContentView = v5;

    trailingContentView = self->_trailingContentView;
  }

  return trailingContentView;
}

- (void)setLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  layoutMode = self->_layoutMode;
  if (layoutMode != mode)
  {
    self->_priorLayoutMode = layoutMode;
    if (mode <= 0)
    {
      [(SBLockElementViewProvider *)self _forceSleepSecureState];
    }
  }

  self->_layoutMode = mode;
}

- (CGSize)sizeThatFitsSize:(CGSize)size forProvidedView:(id)view inLayoutMode:(int64_t)mode
{
  [(SBLockElementViewProvider *)self _elementSizeLeading:self->_leadingLock == view forLayoutMode:mode, size.width, size.height];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  [subviewsCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layoutMode = [(SBLockElementViewProvider *)self layoutMode];
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  CGRectGetWidth(v35);
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  CGRectGetHeight(v36);
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  Width = CGRectGetWidth(v37);
  v15 = layoutMode == 3 || Width > 200.0;
  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 1;
  }

  [(SBLockElementViewProvider *)self _elementSizeLeading:1 forLayoutMode:v16];
  v19 = v18;
  v20 = v17;
  if (v15)
  {
    v21 = v17;
  }

  else
  {
    v21 = 12.0;
  }

  [(SBLockElementViewProvider *)self _elementSizeLeading:0 forLayoutMode:v16];
  [(SBUIProudLockIconView *)self->_leadingLock setOverrideSize:v19 offset:v20 extent:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v21];
  leadingLock = self->_leadingLock;
  BSRectWithSize();
  [(SBUIProudLockIconView *)leadingLock setBounds:?];
  trailingContentView = self->_trailingContentView;
  BSRectWithSize();
  [(SBLockElementTrailingContentView *)trailingContentView setBounds:?];
  UIRectGetCenter();
  if (layoutMode != 3 || ![(SBLockElementViewProvider *)self _isShowingInLandscape])
  {
    leadingLock = [(SBLockElementViewProvider *)self leadingLock];
    traitCollection = [leadingLock traitCollection];
    [traitCollection layoutDirection];

    leadingLock2 = [(SBLockElementViewProvider *)self leadingLock];
    traitCollection2 = [leadingLock2 traitCollection];
    [traitCollection2 layoutDirection];
  }

  v28 = self->_leadingLock;
  UIPointRoundToViewScale();
  [(SBUIProudLockIconView *)v28 setCenter:?];
  v29 = self->_trailingContentView;
  UIPointRoundToViewScale();
  v31 = v30;
  v33 = v32;

  [(SBLockElementTrailingContentView *)v29 setCenter:v31, v33];
}

- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change
{
  [(SBLockElementViewProvider *)self _updateAllowsBioUnlock:resource];

  [(SBLockElementViewProvider *)self _updateTrailingGlyph];
}

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  resourceCopy = resource;
  if (self->_sharedResource == resourceCopy)
  {
    v11 = resourceCopy;
    switch(event)
    {
      case 4uLL:
        selfCopy8 = self;
        v8 = 6;
        goto LABEL_4;
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 0xBuLL:
        [(SBLockElementViewProvider *)self _updateAllowsBioUnlock];
        goto LABEL_6;
      case 9uLL:
      case 0xAuLL:
      case 0xFuLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x17uLL:
      case 0x18uLL:
        goto LABEL_3;
      case 0xCuLL:
        selfCopy8 = self;
        v8 = 4;
        goto LABEL_4;
      case 0xDuLL:
        if (self->_hasActiveUnlockAttempt || self->_isAuthenticated)
        {
          break;
        }

        self->_hasActiveUnlockAttempt = 1;
        selfCopy8 = self;
        v8 = 5;
        goto LABEL_4;
      case 0xEuLL:
      case 0x16uLL:
        selfCopy8 = self;
        v8 = 21;
        goto LABEL_4;
      case 0x15uLL:
        mEMORY[0x277D67D38] = [MEMORY[0x277D67D38] sharedInstance];
        isPhoneUnlockEnabledAndRequirementsMet = [mEMORY[0x277D67D38] isPhoneUnlockEnabledAndRequirementsMet];

        resourceCopy = v11;
        if (isPhoneUnlockEnabledAndRequirementsMet)
        {
          break;
        }

LABEL_3:
        self->_hasActiveUnlockAttempt = 0;
        selfCopy8 = self;
        v8 = 7;
        goto LABEL_4;
      case 0x22uLL:
        selfCopy8 = self;
        v8 = 8;
        goto LABEL_4;
      case 0x23uLL:
        selfCopy8 = self;
        v8 = 9;
        goto LABEL_4;
      case 0x24uLL:
        selfCopy8 = self;
        v8 = 10;
LABEL_4:
        [(SBLockElementViewProvider *)selfCopy8 handleBiometricEvent:v8];
LABEL_6:
        resourceCopy = v11;
        break;
      default:
        break;
    }
  }
}

- (void)contentProviderWillTransitionToSize:(CGSize)size inContainerView:(id)view transitionCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  v9 = self->_alwaysUseCustomLayoutMode && [(SBLockElementViewProvider *)self _treatCustomAsLarge];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v14[3] = &unk_2783A9F58;
  v15 = v9;
  v14[4] = self;
  [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2;
  v11[3] = &unk_2783ABF70;
  v11[4] = self;
  v12 = viewCopy;
  v13 = v9;
  v10 = viewCopy;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
}

uint64_t __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(*(a1 + 32) + 296) _shouldReverseLayoutDirection];
    [*(*(a1 + 32) + 296) bounds];
    v4 = v3;
    [*(*(a1 + 32) + 296) setSauiBlurRadius:*MEMORY[0x277D6B8D8]];
    [*(*(a1 + 32) + 296) setAlpha:0.0];
    v5 = *(*(a1 + 32) + 296);
    CGAffineTransformMakeScale(&t1, 0.0, 1.0);
    v6 = -v4;
    if (v2)
    {
      v6 = v4;
    }

    CGAffineTransformMakeTranslation(&v8, v6 * 0.5, 0.0);
    CGAffineTransformConcat(&v10, &t1, &v8);
    [v5 setTransform:&v10];
  }

  [*(a1 + 32) _updateLeadingPackageVisibility];
  return [*(a1 + 32) _updateTrailingPackageVisibility];
}

uint64_t __103__SBLockElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) layoutHostContainerViewDidLayoutSubviews:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 296) setSauiBlurRadius:0.0];
    [*(*(a1 + 32) + 296) setAlpha:1.0];
    v3 = *(*(a1 + 32) + 296);
    CGAffineTransformMakeScale(&v4, 1.0, 1.0);
    return [v3 setTransform:&v4];
  }

  return result;
}

- (BOOL)isIndicatorVisibilityRequired
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_isForCapture)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v4 = [(SBLockElementViewProvider *)self _nextSecureStateForState:[(SBLockElementViewProvider *)self _requestedSecureState]];
    _requestedSecureState = [(SBLockElementViewProvider *)self _requestedSecureState];
    _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
    v7 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:v4];
    _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
    _currentSecureState2 = [(SBLockElementViewProvider *)self _currentSecureState];
    v10 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _appliedSecureState]];
    v11 = [(SBLockElementViewProvider *)self _secureStateContainsSecureFrames:[(SBLockElementViewProvider *)self _currentSecureState]];
    v12 = v11;
    v23 = v7;
    v14 = _requestedSecureState != _currentSecureState && v7 != 0;
    if (_appliedSecureState != _currentSecureState2 && v10 != 0)
    {
      v14 = 1;
    }

    if (v11)
    {
      v2 = 1;
    }

    else
    {
      v2 = v14;
    }

    v16 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = _requestedSecureState != _currentSecureState;
      if (v2)
      {
        v18 = "required";
      }

      else
      {
        v18 = "dropped";
      }

      _requestedSecureState2 = [(SBLockElementViewProvider *)self _requestedSecureState];
      if (_requestedSecureState2 - 1 > 8)
      {
        v20 = @"Sleep";
      }

      else
      {
        v20 = off_2783ABF90[_requestedSecureState2 - 1];
      }

      if (v4 - 1 > 8)
      {
        v21 = @"Sleep";
      }

      else
      {
        v21 = off_2783ABF90[v4 - 1];
      }

      *buf = 136316930;
      v25 = v18;
      v26 = 1024;
      v27 = v17;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      v32 = 1024;
      v33 = v23 != 0;
      v34 = 1024;
      v35 = _appliedSecureState == _currentSecureState2;
      v36 = 1024;
      v37 = v10 != 0;
      v38 = 1024;
      v39 = v12 != 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "visibility assertion %s (requested pending: %d (request: %@, next: %@, secure: %d), applied settled: %d (next secure: %d), current secure: %d)", buf, 0x3Eu);
    }
  }

  return v2;
}

+ (void)registerElementForRecording
{
  v4 = objc_alloc_init(SBLockElementViewProvider);
  [(SBLockElementViewProvider *)v4 setIsForCapture:1];
  [(SBLockElementViewProvider *)v4 setEmpty:0];
  systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
  v3 = [systemApertureControllerForMainDisplay registerElement:v4];

  [(SBLockElementViewProvider *)v4 setElementAssertion:v3];
}

- (NSArray)recordableConfigurations
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_flipBookConfiguration;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)recordingModeChanged
{
  secureElementHost = [(SBLockElementViewProvider *)self secureElementHost];
  isInRecordingMode = [secureElementHost isInRecordingMode];

  if ((isInRecordingMode & 1) == 0)
  {
    [(SAInvalidatable *)self->_elementAssertion invalidateWithReason:@"recording mode changed"];
    elementAssertion = self->_elementAssertion;
    self->_elementAssertion = 0;
  }
}

- (NSDictionary)preferredComponentStates
{
  v8[2] = *MEMORY[0x277D85DE8];
  [(SBLockElementViewProvider *)self _reconcileRequestedSecureState];
  leadingViewFlipBookState = self->_leadingViewFlipBookState;
  v7[0] = SBLockElementLeadingFlipBookName;
  v7[1] = SBLockElementTrailingFlipBookName;
  trailingViewFlipBookState = self->_trailingViewFlipBookState;
  v8[0] = leadingViewFlipBookState;
  v8[1] = trailingViewFlipBookState;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)setAppliedComponentStates:(id)states
{
  v13 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  objc_storeStrong(&self->_appliedComponentStates, states);
  v6 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v8 = [(NSDictionary *)self->_appliedComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Jindo-managed state begun: leading: %@, trailing: %@", &v9, 0x16u);
  }

  [(SBLockElementViewProvider *)self _reconcileNotifiedSecureState];
}

- (void)setActiveComponentStates:(id)states
{
  v15 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  _isSecurelyRenderingInJindo = [(SBLockElementViewProvider *)self _isSecurelyRenderingInJindo];
  [(SBUIProudLockIconView *)self->_leadingLock setIsSecurelyRenderingInJindo:_isSecurelyRenderingInJindo];
  [(SBLockElementTrailingContentView *)self->_trailingContentView setIsSecurelyRenderingInJindo:_isSecurelyRenderingInJindo];
  v6 = [statesCopy copy];

  activeComponentStates = self->_activeComponentStates;
  self->_activeComponentStates = v6;

  v8 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementLeadingFlipBookName];
    v10 = [(NSDictionary *)self->_activeComponentStates objectForKeyedSubscript:SBLockElementTrailingFlipBookName];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Jindo-managed state reached: leading: %@, trailing: %@", &v11, 0x16u);
  }

  [(SBLockElementViewProvider *)self _reconcileAppliedSecureState];
}

- (void)_toggleUnlockMode
{
  _currentSecureState = [(SBLockElementViewProvider *)self _currentSecureState];
  if (_currentSecureState <= 9)
  {
    v4 = qword_21F8A5AE8[_currentSecureState];

    [(SBLockElementViewProvider *)self _requestSecureState:v4];
  }
}

- (void)_updateTrailingGlyph
{
  _appliedSecureState = [(SBLockElementViewProvider *)self _appliedSecureState];
  v4 = 1;
  if (_appliedSecureState > 6)
  {
    if ((_appliedSecureState - 7) >= 2)
    {
      if (_appliedSecureState != 9)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_3:
    v4 = -1;
    goto LABEL_8;
  }

  if (_appliedSecureState != 5)
  {
    if (_appliedSecureState != 6)
    {
      return;
    }

    goto LABEL_8;
  }

  if (![(SBLockElementViewProvider *)self _activelyWantsMatching])
  {
    goto LABEL_3;
  }

  if (self->_isAuthenticated)
  {
    return;
  }

  v4 = 0;
LABEL_8:
  trailingContentView = self->_trailingContentView;

  [(SBLockElementTrailingContentView *)trailingContentView setState:v4 animated:1];
}

- (int64_t)_resolvedEventForState:(int64_t)state
{
  if ([(SBLockElementViewProvider *)self _treatCustomAsLarge]&& (state - 1) < 3)
  {
    return state + 10;
  }

  else
  {
    return state;
  }
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (void)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBLockElementViewProvider.m" lineNumber:110 description:@"It's probably not beneficial to use this when unsupported."];
}

- (void)setEmpty:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLockElementViewProvider.m" lineNumber:232 description:@"setEmpty should be changed when SBLockElementViewProvider is not registered with Jindo"];
}

@end