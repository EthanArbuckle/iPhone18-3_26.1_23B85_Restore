@interface UIScene
+ (BKSAnimationFenceHandle)_synchronizedDrawingFence;
+ (id)_connectionOptionsForScene:(id)scene withSpecification:(id)specification transitionContext:(id)context actions:(id)actions sceneSession:(id)session;
+ (id)_persistenceIdentifierForScene:(id)scene;
+ (id)_sceneForFBSScene:(id)scene;
+ (id)_sceneForFBSScene:(id)scene create:(BOOL)create withSession:(id)session connectionOptions:(id)options;
+ (id)_sceneForFBSScene:(id)scene usingPredicate:(id)predicate;
+ (id)_scenesIncludingInternal:(BOOL)internal;
+ (id)_synchronizeDrawingAndReturnFence;
+ (int64_t)_activationStateFromSceneSettings:(id)settings;
+ (void)_enumerateAllWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows asCopy:(BOOL)copy withBlock:(id)block;
+ (void)_registerSceneComponentClass:(Class)class withKey:(id)key predicate:(id)predicate;
- (BKSAnimationFenceHandle)_synchronizedDrawingFence;
- (BOOL)_canDynamicallySpecifySupportedInterfaceOrientations;
- (BOOL)_discardSessionOnUserDisconnect;
- (BOOL)_hasSettingsScene;
- (BOOL)_isActive;
- (BOOL)_isEligibleForSuspension;
- (BOOL)_isRunningInTaskSwitcher;
- (BOOL)_isSuspendedEventsOnly;
- (BOOL)_isSuspendedUnderLock;
- (BOOL)_isTargetOfKeyboardEventDeferringEnvironment;
- (BOOL)_sceneSessionRoleIsCarPlayOrNonInteractiveExternal;
- (BOOL)_shouldAllowFencing;
- (BOOL)_shouldDeferInitialWindowUpdateBeforeConnectionAndTrackIfNeeded:(id)needed;
- (CGRect)_boundsForInterfaceOrientation:(int64_t)orientation;
- (CGRect)_referenceBounds;
- (NSArray)_allWindows;
- (NSArray)_visibleWindows;
- (NSArray)_windows;
- (NSSet)_destructionConditions;
- (NSSet)destructionConditions;
- (NSString)_identifier;
- (NSString)_persistenceIdentifier;
- (NSString)_sceneIdentifier;
- (UIApplicationSceneClientSettings)_effectiveUIClientSettings;
- (UIApplicationSceneSettings)_effectiveUISettings;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation;
- (UIPointerLockState)pointerLockState;
- (UIScene)_settingsScene;
- (UIScene)initWithSession:(UISceneSession *)session connectionOptions:(UISceneConnectionOptions *)connectionOptions;
- (UISceneActivationState)activationState;
- (UISceneSystemProtectionManager)systemProtectionManager;
- (_UIApplicationSceneDisplayClientComponent)_displayClientComponent;
- (_UIApplicationSceneKeyboardClientComponent)_keyboardClientComponent;
- (_UIChildRemoteContentRegistry)_childRemoteContentRegistry;
- (_UICornerInsets)_safeAreaCornerInsets;
- (_UICornerInsets)_safeAreaCornerInsetsForInterfaceOrientation:(SEL)orientation;
- (_UIEventDeferringManager)_eventDeferringManager;
- (_UIHDRUsageCoordinatorSceneComponent)_hdrUsageCoordinatorSceneComponent;
- (_UIHomeAffordanceNotifying)_existingHomeAffordanceSceneNotifier;
- (_UIHomeAffordanceNotifying)_homeAffordanceSceneNotifier;
- (_UIKeyWindowSceneObserver)_keyWindowSceneObserver;
- (_UIPhysicalButtonInteractionArbiter)_physicalButtonInteractionArbiter;
- (_UIRenderingEnvironmentSceneComponent)_renderingEnvironmentSceneComponentRegisteringIfNecessary:(void *)necessary;
- (_UISceneDestructionClientComponent)_sceneDestructionClientComponent;
- (_UISceneHostingViewControllerPreferencePropagationClientComponent)_viewControllerAppearanceComponent;
- (_UISceneIntelligenceSupportClientComponent)_intelligenceComponent;
- (_UISystemIconAppearanceSceneComponent)_systemIconAppearanceSceneComponent;
- (id)_actionsWithSubstitutionsForTransitionActions:(id)actions forFBSScene:(id)scene fromTransitionContext:(id)context;
- (id)_allWindowsForInvalidation;
- (id)_backlightSceneEnvironment;
- (id)_currentOpenApplicationEndpoint;
- (id)_eventDeferringComponent;
- (id)_interfaceProtectionComponent;
- (id)_synchronizeDrawingAndReturnFence;
- (id)_topVisibleWindowEnumeratingAsCopy:(BOOL)copy passingTest:(id)test;
- (id)_windowHostingScene;
- (id)carPlaySession;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)focusSystemManager;
- (id)mainMenu;
- (id)renderingEnvironment;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)systemShellHostingEnvironment;
- (id)ui_safeArea;
- (void)__captureWindow:(id)window;
- (void)__releaseWindow:(id)window;
- (void)_applyOverrideSettings:(id)settings forActions:(id)actions;
- (void)_calculateFlattenedBSActionResponders;
- (void)_calculateFlattenedBSActionSubstitutionProviders;
- (void)_calculateFlattenedDiffActions;
- (void)_completeStateRestoration;
- (void)_computeMetrics:(BOOL)metrics;
- (void)_computeMetricsForWindows:(id)windows animated:(BOOL)animated;
- (void)_emitSceneSettingsUpdateResponseForCompletion:(id)completion afterSceneUpdateWork:(id)work;
- (void)_enableOverrideSettingsForActions:(id)actions;
- (void)_enqueuePostSettingsUpdateResponseBlock:(id)block inPhase:(id)phase;
- (void)_enumerateWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows asCopy:(BOOL)copy stopped:(BOOL *)stopped withBlock:(id)block;
- (void)_extendStateRestoration;
- (void)_getDefaultAudioSessionFromMainThreadWithCompletionHandler:(id)handler;
- (void)_guardedSetOverrideSettings:(id)settings;
- (void)_initializeSceneComponents;
- (void)_invalidate;
- (void)_noteDisplayIdentityDidChangeWithConfiguration:(id)configuration;
- (void)_performDeferredInitialWindowUpdateForConnection;
- (void)_performSystemSnapshotWithActions:(id)actions;
- (void)_prepareCommonStateForActionRespondingFromTransitionContext:(id)context;
- (void)_refreshActivationConditions;
- (void)_registerBSActionResponderArray:(id)array forKey:(id)key;
- (void)_registerSceneActionsHandlerArray:(id)array forKey:(id)key;
- (void)_registerSceneComponent:(id)component forKey:(id)key;
- (void)_registerSettingsDiffActionArray:(id)array forKey:(id)key;
- (void)_removeInheritingScene:(id)scene;
- (void)_scheduleSceneEventResponseWithResponseBlock:(id)block;
- (void)_setDestructionConditions:(id)conditions;
- (void)_setDiscardSessionOnUserDisconnect:(BOOL)disconnect;
- (void)_setInvolvedInMediaPlayback:(BOOL)playback;
- (void)_setSettingsScene:(id)scene;
- (void)_setShouldHoldSceneEventResponses:(BOOL)responses;
- (void)_synchronizeDrawing;
- (void)_synchronizeDrawingUsingFence:(id)fence;
- (void)_synchronizeDrawingWithFence:(id)fence;
- (void)_systemShellOwnsInterfaceOrientation;
- (void)_targetOfKeyboardEventDeferringEnvironmentDidUpdate:(_DWORD *)update;
- (void)_unregisterBSActionResponderArray:(id)array;
- (void)_unregisterSceneComponentForKey:(id)key;
- (void)_unregisterSettingsDiffActionArrayForKey:(id)key;
- (void)_updateSceneTraitsAndPushTraitsToScreen:(BOOL)screen callParentWillTransitionToTraitCollection:(BOOL)collection;
- (void)_updateUIClientSettingsWithUITransitionBlock:(id)block;
- (void)getDefaultAudioSessionWithCompletionHandler:(void *)handler;
- (void)openURL:(NSURL *)url options:(UISceneOpenExternalURLOptions *)options completionHandler:(void *)completion;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didReceiveActions:(id)actions fromTransitionContext:(id)context;
- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion;
- (void)setActivationConditions:(UISceneActivationConditions *)activationConditions;
- (void)setDelegate:(id)delegate;
- (void)setDestructionConditions:(id)conditions;
- (void)setSubtitle:(NSString *)subtitle;
- (void)setTitle:(NSString *)title;
@end

@implementation UIScene

- (UIScene)_settingsScene
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_settingsScene);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
}

- (UISceneActivationState)activationState
{
  if (!_uiScenes || ![_uiScenes containsObject:self])
  {
    return -1;
  }

  if (![(UIScene *)self _hasLifecycle])
  {
    return 0;
  }

  _lifecycleMonitor = [(UIScene *)self _lifecycleMonitor];
  currentActivationState = [_lifecycleMonitor currentActivationState];

  return currentActivationState;
}

- (UIApplicationSceneSettings)_effectiveUISettings
{
  v2 = __UISceneEffectiveSettings(self);
  if ([v2 isUISubclass])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIApplicationSceneClientSettings)_effectiveUIClientSettings
{
  v2 = __UISceneEffectiveClientSettings(&self->super.super.isa);
  if ([v2 isUISubclass])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIApplicationSceneDisplayClientComponent)_displayClientComponent
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (id)ui_safeArea
{
  _FBSScene = [(UIScene *)self _FBSScene];
  ui_safeArea = [_FBSScene ui_safeArea];

  return ui_safeArea;
}

- (_UISceneHostingViewControllerPreferencePropagationClientComponent)_viewControllerAppearanceComponent
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (BOOL)_hasSettingsScene
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsScene);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)_isActive
{
  _effectiveSettings = [(UIScene *)self _effectiveSettings];
  IsForegroundActive = _UISceneLifecycleStateIsForegroundActive(_effectiveSettings);

  return IsForegroundActive;
}

- (_UIHomeAffordanceNotifying)_homeAffordanceSceneNotifier
{
  if (!_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    goto LABEL_6;
  }

  v3 = _UIApplicationSupportsHomeAffordanceObservation();
  _existingHomeAffordanceSceneNotifier = 0;
  if (self && v3)
  {
    if (![(UIScene *)self _hostsWindows]|| [(UIScene *)self _hasInvalidated])
    {
LABEL_6:
      _existingHomeAffordanceSceneNotifier = 0;
      goto LABEL_7;
    }

    _existingHomeAffordanceSceneNotifier = [(UIScene *)self _existingHomeAffordanceSceneNotifier];
    if (!_existingHomeAffordanceSceneNotifier)
    {
      _existingHomeAffordanceSceneNotifier = [[_UIHomeAffordanceSceneNotifier alloc] initWithScene:self];
      [(UIScene *)self _registerSceneComponent:_existingHomeAffordanceSceneNotifier forKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
    }
  }

LABEL_7:

  return _existingHomeAffordanceSceneNotifier;
}

- (_UIApplicationSceneKeyboardClientComponent)_keyboardClientComponent
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (BOOL)_canDynamicallySpecifySupportedInterfaceOrientations
{
  _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
  v3 = [_effectiveUISettings interfaceOrientationMode] == 1;

  return v3;
}

- (BOOL)_isTargetOfKeyboardEventDeferringEnvironment
{
  IsPossibleForScene = _UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(self);
  if (IsPossibleForScene)
  {
    IsPossibleForScene = [(UIScene *)self _allowsEventUIWindowRouting];
    if (IsPossibleForScene)
    {
      return (*(&self->_sceneFlags + 3) >> 1) & 1;
    }
  }

  return IsPossibleForScene;
}

- (_UIEventDeferringManager)_eventDeferringManager
{
  v42 = *MEMORY[0x1E69E9840];
  if (!_UIEventDeferringManagerIsAvailableForScene(self))
  {
    v10 = 0;
    goto LABEL_42;
  }

  selfCopy = self;
  v4 = selfCopy;
  if (!+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled") || ((v5 = -[UIScene _hasSettingsScene](selfCopy, "_hasSettingsScene"), v6 = [UIApp isFrontBoard], -[UIScene _screen](selfCopy, "_screen"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_userInterfaceIdiom"), v7, v8 != 3) ? (v9 = v6) : (v9 = 0), !v5 && (v4 = selfCopy, !v9)))
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_38:
    v32 = objc_opt_class();
    Name = class_getName(v32);
    v34 = *(__UILogGetCategoryCachedImpl("EventDeferring", &_eventDeferringManager___s_category) + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315650;
      v37 = "[UIScene(EventDeferring) _eventDeferringManager]";
      v38 = 2082;
      v39 = Name;
      v40 = 2050;
      v41 = selfCopy;
      _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "%s: No viable event deferring manager found for scene, returning nil: <%{public}s: %{public}p>", &v36, 0x20u);
    }

    v10 = 0;
    goto LABEL_41;
  }

  if ([(UIScene *)selfCopy _allowsEventUIWindowRouting])
  {
    v11 = selfCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  _sceneForKeyboardDisplay = [(UIScene *)v12 _sceneForKeyboardDisplay];
  v14 = _sceneForKeyboardDisplay;
  v4 = selfCopy;
  if (v12)
  {
    v4 = selfCopy;
    if (v12 == _sceneForKeyboardDisplay)
    {
      v15 = +[UIWindowScene _keyWindowScene];
      v16 = v15;
      if (v5)
      {
        _settingsScene = [(UIScene *)selfCopy _settingsScene];
        v18 = _settingsScene;
        if (_settingsScene == v12)
        {
          v19 = 0;
        }

        else if (_UIEventDeferringManagerIsAvailableForScene(_settingsScene))
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v4 = v19;
      }

      else
      {
        if (v15)
        {
          v20 = v6;
        }

        else
        {
          v20 = 0;
        }

        v4 = selfCopy;
        if (v20 != 1)
        {
          goto LABEL_36;
        }

        _screen = [(UIScene *)v12 _screen];
        screen = [v16 screen];

        if (_screen == screen || (-[UIScene _screen](v12, "_screen"), v23 = objc_claimAutoreleasedReturnValue(), [v23 displayConfiguration], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "identity"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "rootIdentity"), v26 = objc_claimAutoreleasedReturnValue(), v25, v24, v23, objc_msgSend(v16, "screen"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "displayConfiguration"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "identity"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "rootIdentity"), v30 = objc_claimAutoreleasedReturnValue(), v29, v28, v27, LODWORD(v27) = objc_msgSend(v26, "isEqual:", v30), v30, v26, v27))
        {
          if (_UIEventDeferringManagerIsAvailableForScene(v16))
          {
            v31 = v16;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v4 = v31;
        v18 = selfCopy;
      }

LABEL_36:
    }
  }

  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_9:
  v10 = [(UIScene *)v4 _sceneComponentForKey:_UIEventDeferringSceneComponentKey];
  if (!v10)
  {
    v10 = [[_UIEventDeferringManager alloc] initWithScene:v4];
    [(UIScene *)v4 _registerSceneComponent:v10 forKey:_UIEventDeferringSceneComponentKey];
  }

LABEL_41:

LABEL_42:

  return v10;
}

- (BOOL)_shouldAllowFencing
{
  if (![(UIScene *)self _hostsWindows]|| [(UIScene *)self _isReadyForSuspension])
  {
    return 0;
  }

  _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
  isForeground = [_effectiveUISettings isForeground];

  return isForeground;
}

- (_UIHomeAffordanceNotifying)_existingHomeAffordanceSceneNotifier
{
  if (!_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    goto LABEL_6;
  }

  v3 = _UIApplicationSupportsHomeAffordanceObservation();
  v4 = 0;
  if (self && v3)
  {
    if (![(UIScene *)self _hostsWindows]|| [(UIScene *)self _hasInvalidated])
    {
LABEL_6:
      v4 = 0;
      goto LABEL_7;
    }

    v4 = [(UIScene *)self _sceneComponentForKey:@"_UIHomeAffordanceSceneNotifierComponentKey"];
  }

LABEL_7:

  return v4;
}

- (BOOL)_sceneSessionRoleIsCarPlayOrNonInteractiveExternal
{
  session = [(UIScene *)self session];
  role = [session role];

  if ([role isEqualToString:@"UIWindowSceneSessionRoleCarPlay"] & 1) != 0 || (objc_msgSend(role, "isEqualToString:", @"UIWindowSceneSessionRoleExternalDisplayNonInteractive"))
  {
    v5 = 1;
  }

  else
  {
    if ([(UIScene *)self _hostsWindows])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    _traitCollection = [(UIScene *)selfCopy _traitCollection];
    v5 = [_traitCollection userInterfaceIdiom] == 3;
  }

  return v5;
}

- (void)_calculateFlattenedBSActionSubstitutionProviders
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_flattenedBSActionResponders;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          _UIActionTypesForSubstitution = [v9 _UIActionTypesForSubstitution];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __59__UIScene__calculateFlattenedBSActionSubstitutionProviders__block_invoke;
          v13[3] = &unk_1E70F43F0;
          v14 = dictionary;
          v15 = v9;
          [_UIActionTypesForSubstitution enumerateIndexesUsingBlock:v13];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = [dictionary copy];
  flattenedBSActionSubstitutionProvidersByActionType = self->_flattenedBSActionSubstitutionProvidersByActionType;
  self->_flattenedBSActionSubstitutionProvidersByActionType = v11;
}

- (id)_backlightSceneEnvironment
{
  _FBSScene = [(UIScene *)self _FBSScene];
  backlightSceneEnvironment = [_FBSScene backlightSceneEnvironment];

  return backlightSceneEnvironment;
}

- (void)_calculateFlattenedDiffActions
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_initialSettingsDiffActions mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [(NSDictionary *)self->_registeredComponents allValues];
  v5 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 _settingsDiffActionsForScene:self];
          [v3 addObjectsFromArray:v10];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  additionalSettingsDiffActions = self->_additionalSettingsDiffActions;
  if (additionalSettingsDiffActions)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues2 = [(NSDictionary *)additionalSettingsDiffActions allValues];
    v13 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(allValues2);
          }

          [v3 addObjectsFromArray:*(*(&v19 + 1) + 8 * j)];
        }

        v14 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }

  v17 = [v3 arrayByAddingObjectsFromArray:self->_finalSettingsDiffActions];
  flattenedDiffActions = self->_flattenedDiffActions;
  self->_flattenedDiffActions = v17;
}

void __59__UIScene__calculateFlattenedBSActionSubstitutionProviders__block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 arrayByAddingObject:*(a1 + 40)];
  }

  else
  {
    v10[0] = *(a1 + 40);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v8 setObject:v7 forKey:v9];
}

- (void)_calculateFlattenedBSActionResponders
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_initialSceneBSActionHandlers mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [(NSDictionary *)self->_registeredComponents allValues];
  v5 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 _actionHandlersForScene:self];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v10 = [v9 _actionRespondersForScene:self];
        }

        v11 = v10;
        [v3 addObjectsFromArray:v10];
      }

      v6 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  additionalBSActionResponders = self->_additionalBSActionResponders;
  if (additionalBSActionResponders)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues2 = [(NSDictionary *)additionalBSActionResponders allValues];
    v14 = [allValues2 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(allValues2);
          }

          [v3 addObjectsFromArray:*(*(&v20 + 1) + 8 * j)];
        }

        v15 = [allValues2 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v18 = [v3 arrayByAddingObjectsFromArray:self->_finalSceneBSActionHandlers];
  flattenedBSActionResponders = self->_flattenedBSActionResponders;
  self->_flattenedBSActionResponders = v18;

  [(UIScene *)self _calculateFlattenedBSActionSubstitutionProviders];
}

- (void)_initializeSceneComponents
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__UIScene__initializeSceneComponents__block_invoke;
  v2[3] = &unk_1E70F3E78;
  v2[4] = self;
  __UISceneAccessClassComponentArray(0, v2);
}

- (void)_systemShellOwnsInterfaceOrientation
{
  if (result)
  {
    _effectiveUISettings = [result _effectiveUISettings];
    interfaceOrientationMode = [_effectiveUISettings interfaceOrientationMode];

    return ((interfaceOrientationMode - 1) < 2);
  }

  return result;
}

- (NSString)_sceneIdentifier
{
  sceneIdentifier = self->_sceneIdentifier;
  if (!sceneIdentifier)
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    identifier = [_FBSScene identifier];
    v6 = self->_sceneIdentifier;
    self->_sceneIdentifier = identifier;

    sceneIdentifier = self->_sceneIdentifier;
    if (!sceneIdentifier)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v9 = self->_sceneIdentifier;
      self->_sceneIdentifier = uUIDString;

      sceneIdentifier = self->_sceneIdentifier;
    }
  }

  return sceneIdentifier;
}

- (NSString)_persistenceIdentifier
{
  persistenceIdentifier = self->_persistenceIdentifier;
  if (!persistenceIdentifier)
  {
    session = [(UIScene *)self session];
    persistentIdentifier = [session persistentIdentifier];
    v6 = self->_persistenceIdentifier;
    self->_persistenceIdentifier = persistentIdentifier;

    persistenceIdentifier = self->_persistenceIdentifier;
    if (!persistenceIdentifier)
    {
      _FBSScene = [(UIScene *)self _FBSScene];
      uiSettings = [_FBSScene uiSettings];
      persistenceIdentifier = [uiSettings persistenceIdentifier];
      v10 = self->_persistenceIdentifier;
      self->_persistenceIdentifier = persistenceIdentifier;

      persistenceIdentifier = self->_persistenceIdentifier;
    }
  }

  return persistenceIdentifier;
}

void __37__UIScene__initializeSceneComponents__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"_UISceneComponentClassPredicate"];
        v10 = [*(a1 + 32) session];
        v11 = [v9 evaluateWithObject:v10];

        if (v11)
        {
          v12 = [v8 objectForKeyedSubscript:@"_UISceneComponentClass"];
          v13 = [v8 objectForKeyedSubscript:@"_UISceneComponentKeyname"];
          v14 = *(a1 + 32);
          v15 = [[v12 alloc] initWithScene:v14];
          [v14 _registerSceneComponent:v15 forKey:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

- (BOOL)_isSuspendedEventsOnly
{
  _effectiveSettings = [(UIScene *)self _effectiveSettings];
  IsSEO = _UISceneLifecycleStateIsSEO(_effectiveSettings);

  return IsSEO;
}

- (void)_performDeferredInitialWindowUpdateForConnection
{
  v14 = *MEMORY[0x1E69E9840];
  sceneFlags = self->_sceneFlags;
  if ((*&sceneFlags & 0x20000) == 0)
  {
    self->_sceneFlags = (*&sceneFlags | 0x20000);
    if (![(UIScene *)self _subclassTracksWindowsNeedingDeferredInitialUpdates])
    {
      if ([(UIScene *)self _hostsWindows])
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        _allWindows = [(UIScene *)self _allWindows];
        v5 = [_allWindows countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v10;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v10 != v7)
              {
                objc_enumerationMutation(_allWindows);
              }

              [*(*(&v9 + 1) + 8 * i) _executeDeferredOrientationUpdate];
            }

            v6 = [_allWindows countByEnumeratingWithState:&v9 objects:v13 count:16];
          }

          while (v6);
        }
      }
    }
  }
}

- (id)_windowHostingScene
{
  if ([(UIScene *)self _hostsWindows])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_UISceneIntelligenceSupportClientComponent)_intelligenceComponent
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (id)_interfaceProtectionComponent
{
  if (self)
  {
    _FBSScene = [self _FBSScene];
    v2 = objc_opt_class();
    v3 = [_FBSScene componentForExtension:v2 ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UISceneSystemProtectionManager)systemProtectionManager
{
  _interfaceProtectionComponent = [(UIScene *)self _interfaceProtectionComponent];
  v3 = _interfaceProtectionComponent;
  if (_interfaceProtectionComponent)
  {
    v4 = *(_interfaceProtectionComponent + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (_UIHDRUsageCoordinatorSceneComponent)_hdrUsageCoordinatorSceneComponent
{
  v3 = [(UIScene *)self _sceneComponentForKey:_UIHDRUsageCoordinatorSceneComponentKey];
  if (!v3)
  {
    v3 = [[_UIHDRUsageCoordinatorSceneComponent alloc] initWithScene:self];
    [(UIScene *)self _registerSceneComponent:v3 forKey:_UIHDRUsageCoordinatorSceneComponentKey];
  }

  return v3;
}

- (BKSAnimationFenceHandle)_synchronizedDrawingFence
{
  if ([(UIScene *)self _shouldAllowFencing])
  {
    v2 = +[UIScene _synchronizedDrawingFence];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BKSAnimationFenceHandle)_synchronizedDrawingFence
{
  if ([UIApp _isActivating])
  {
    v2 = 0;
  }

  else
  {
    v2 = [UIApp _systemAnimationFenceCreatingIfNecessary:1];
    if (v2)
    {
      [UIWindow _synchronizeDrawingWithFence:v2 preCommitHandler:0];
    }
  }

  return v2;
}

- (_UIChildRemoteContentRegistry)_childRemoteContentRegistry
{
  if (!self->_childRemoteContentRegistry)
  {
    _FBSScene = [(UIScene *)self _FBSScene];

    if (_FBSScene)
    {
      v4 = [_UIChildRemoteContentRegistry alloc];
      _FBSScene2 = [(UIScene *)self _FBSScene];
      v6 = [(_UIChildRemoteContentRegistry *)v4 initWithParentScene:_FBSScene2];
      childRemoteContentRegistry = self->_childRemoteContentRegistry;
      self->_childRemoteContentRegistry = v6;
    }
  }

  v8 = self->_childRemoteContentRegistry;

  return v8;
}

- (id)succinctDescriptionBuilder
{
  session = [(UIScene *)self session];
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  role = [session role];
  [v4 appendString:role withName:@"role"];

  persistentIdentifier = [session persistentIdentifier];
  [v4 appendString:persistentIdentifier withName:@"persistentIdentifier"];

  activationState = [(UIScene *)self activationState];
  if (activationState > UISceneActivationStateBackground)
  {
    v8 = @"UISceneActivationStateUnattached";
  }

  else
  {
    v8 = off_1E70F4500[activationState];
  }

  [v4 appendString:v8 withName:@"activationState"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIScene *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (_UIPhysicalButtonInteractionArbiter)_physicalButtonInteractionArbiter
{
  if (_UIPhysicalButtonInteractionArbiterIsAvailableForScene(self))
  {
    _existingPhysicalButtonInteractionArbiter = [(UIScene *)self _existingPhysicalButtonInteractionArbiter];
    if (!_existingPhysicalButtonInteractionArbiter)
    {
      _existingPhysicalButtonInteractionArbiter = [[_UIPhysicalButtonInteractionArbiter alloc] initWithScene:self];
      [(UIScene *)self _registerSceneComponent:_existingPhysicalButtonInteractionArbiter forKey:@"_UIPhysicalButtonInteractionArbiterComponentKey"];
    }
  }

  else
  {
    _existingPhysicalButtonInteractionArbiter = 0;
  }

  return _existingPhysicalButtonInteractionArbiter;
}

- (NSArray)_windows
{
  if ([(UIScene *)self _hostsWindows])
  {
    v3 = [(UIScene *)self _allWindowsIncludingInternalWindows:0 onlyVisibleWindows:0];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)_refreshActivationConditions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__UIScene__refreshActivationConditions__block_invoke;
  v2[3] = &unk_1E70F44D8;
  v2[4] = self;
  [(UIScene *)self _updateUIClientSettingsWithBlock:v2];
}

void __39__UIScene__refreshActivationConditions__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = objc_alloc_init(UISceneActivationConditions);
  LOBYTE(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(*(a1 + 32) + 48);
    v10 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v10];
    v8 = v10;
    if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [v8 localizedDescription];
      *buf = 136315394;
      v12 = "[UIScene _refreshActivationConditions]_block_invoke";
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Unable to encode activation conditions %@", buf, 0x16u);
    }
  }

  [v3 setActivationConditionsData:v6];
}

- (id)renderingEnvironment
{
  _FBSScene = [(UIScene *)self _FBSScene];
  renderingEnvironment = [_FBSScene renderingEnvironment];

  return renderingEnvironment;
}

- (void)_invalidate
{
  v64 = *MEMORY[0x1E69E9840];
  sceneFlags = self->_sceneFlags;
  if ((*&sceneFlags & 0x40000) == 0)
  {
    self->_sceneFlags = (*&sceneFlags | 0x40000);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    _allWindowsForInvalidation = [(UIScene *)self _allWindowsForInvalidation];
    v5 = [_allWindowsForInvalidation countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v57;
      do
      {
        v8 = 0;
        do
        {
          if (*v57 != v7)
          {
            objc_enumerationMutation(_allWindowsForInvalidation);
          }

          v9 = *(*(&v56 + 1) + 8 * v8);
          if (v9)
          {
            v10 = *(v9 + 824);
          }

          else
          {
            v10 = 0;
          }

          v11 = v10;

          if (v11 == self)
          {
            [(UIScene *)self _zombifyWindow:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v12 = [_allWindowsForInvalidation countByEnumeratingWithState:&v56 objects:v63 count:16];
        v6 = v12;
      }

      while (v12);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    allValues = [(NSDictionary *)self->_registeredComponents allValues];
    v14 = [allValues countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v53;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(allValues);
          }

          v18 = *(*(&v52 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v18 _sceneWillInvalidate:self];
          }

          [v18 _setScene:0];
        }

        v15 = [allValues countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v15);
    }

    registeredComponents = self->_registeredComponents;
    self->_registeredComponents = 0;

    [(UIScene *)self _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:0 asCopy:1 stopped:0 withBlock:&__block_literal_global_171];
    if ([(UIScene *)self _allowsEventUIWindowRouting])
    {
      [UIApp _cancelAllInputsOnEventRoutingScene:self];
    }

    [(UIScene *)self _prepareForSuspend];
    if (_uiScenes)
    {
      [_uiScenes removeObject:self];
    }

    [(UISceneSession *)self->_session _setScene:0];
    kdebug_trace();
    if ((*&self->_sceneFlags & 4) != 0)
    {
      delegate = [(UIScene *)self delegate];
      [delegate sceneDidDisconnect:self];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UISceneDidDisconnectNotification" object:self];

    if ([(UIScene *)self _hasLifecycle])
    {
      v22 = +[_UISceneLifecycleMultiplexer sharedInstance];
      v23 = [v22 isTrackingScene:self];

      if (v23)
      {
        [(UIScene *)self _setIsRespondingToLifecycleEvent:1];
        v24 = +[_UISceneLifecycleMultiplexer sharedInstance];
        _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
        [v24 uiScene:self transitionedFromState:_effectiveUISettings withTransitionContext:0];

        [(UIScene *)self _setIsRespondingToLifecycleEvent:0];
      }
    }

    scene = self->_scene;
    if (scene)
    {
      specification = [(FBSScene *)scene specification];
      disconnectionHandlers = [specification disconnectionHandlers];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v29 = disconnectionHandlers;
      v30 = [v29 countByEnumeratingWithState:&v48 objects:v61 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v49;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v49 != v32)
            {
              objc_enumerationMutation(v29);
            }

            (*(*(*(&v48 + 1) + 8 * j) + 16))();
          }

          v31 = [v29 countByEnumeratingWithState:&v48 objects:v61 count:16];
        }

        while (v31);
      }
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    _allWindowsForInvalidation2 = [(UIScene *)self _allWindowsForInvalidation];
    v35 = [_allWindowsForInvalidation2 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v45;
      do
      {
        v38 = 0;
        do
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(_allWindowsForInvalidation2);
          }

          v39 = *(*(&v44 + 1) + 8 * v38);
          if (v39)
          {
            v40 = *(v39 + 824);
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;

          if (v41 == self)
          {
            [(UIScene *)self _detachWindow:v39];
            [(UIWindow *)v39 __setWindowHostingScene:?];
          }

          ++v38;
        }

        while (v36 != v38);
        v42 = [_allWindowsForInvalidation2 countByEnumeratingWithState:&v44 objects:v60 count:16];
        v36 = v42;
      }

      while (v42);
    }

    v43 = self->_scene;
    self->_scene = 0;

    kdebug_trace();
  }
}

- (UIScene)initWithSession:(UISceneSession *)session connectionOptions:(UISceneConnectionOptions *)connectionOptions
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = session;
  v9 = connectionOptions;
  v77.receiver = self;
  v77.super_class = UIScene;
  v10 = [(UIScene *)&v77 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_58;
  }

  v74 = a2;
  *&v10->_sceneFlags |= 0x2000u;
  _hostsWindows = [objc_opt_class() _hostsWindows];
  if (_hostsWindows)
  {
    v13 = 0x8000;
  }

  else
  {
    v13 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFF7FFF | v13);
  if (_hostsWindows)
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = 0x10000;
    }

    else
    {
      v14 = 0;
    }

    v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFEFFFF | v14);
  }

  if ([objc_opt_class() _supportsEventUIWindowRouting])
  {
    v15 = 0x1000000;
  }

  else
  {
    v15 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFE7BFFFF | v15);
  _fbsScene = [(UISceneConnectionOptions *)v9 _fbsScene];
  scene = v11->_scene;
  v11->_scene = _fbsScene;

  v75 = v9;
  _specification = [(UISceneConnectionOptions *)v9 _specification];
  objc_storeStrong(&v11->_session, session);
  _effectiveUIClientSettings = [(UIScene *)v11 _effectiveUIClientSettings];
  activationConditionsData = [_effectiveUIClientSettings activationConditionsData];

  if (!activationConditionsData)
  {
    goto LABEL_19;
  }

  v76 = 0;
  v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:activationConditionsData error:&v76];
  v22 = v76;
  if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [v22 localizedDescription];
    *buf = 136315394;
    v79 = "[UIScene initWithSession:connectionOptions:]";
    v80 = 2112;
    v81 = localizedDescription;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Unable to decode activation conditions %@", buf, 0x16u);
  }

  if (v21)
  {
    v23 = 0;
    v24 = v21;
  }

  else
  {
LABEL_19:
    v24 = objc_opt_new();
    v21 = 0;
    v23 = 1;
  }

  objc_storeStrong(&v11->_activationConditions, v24);
  if (v23)
  {
  }

  [(UISceneActivationConditions *)v11->_activationConditions _setUIScene:v11];
  configuration = [(UISceneSession *)v8 configuration];
  delegateClass = [configuration delegateClass];

  configuration2 = [(UISceneSession *)v8 configuration];
  if (!configuration2)
  {
    goto LABEL_26;
  }

  v28 = configuration2[9];

  if (v28)
  {
    configuration2 = [(UISceneSession *)v8 configuration];
    if (configuration2)
    {
      delegateClass = configuration2[9];
    }

    else
    {
      delegateClass = 0;
    }

LABEL_26:
  }

  if (delegateClass)
  {
    if (([delegateClass conformsToProtocol:&unk_1F0089778] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v74 object:v11 file:@"UIScene.m" lineNumber:408 description:@"representation's delegateClass must conform to UISceneDelegate protocol"];
    }

    v29 = objc_alloc_init(delegateClass);
  }

  else
  {
    v29 = 0;
  }

  objc_storeStrong(&v11->_delegate, v29);
  if (delegateClass)
  {
  }

  oldSettings = v11->_oldSettings;
  v11->_oldSettings = 0;

  _UISceneInspectDelegateSuport(&v11->_sceneFlags, v11->_delegate);
  initialSettingsDiffActions = [_specification initialSettingsDiffActions];
  initialSettingsDiffActions = v11->_initialSettingsDiffActions;
  v11->_initialSettingsDiffActions = initialSettingsDiffActions;

  finalSettingsDiffActions = [_specification finalSettingsDiffActions];
  finalSettingsDiffActions = v11->_finalSettingsDiffActions;
  v11->_finalSettingsDiffActions = finalSettingsDiffActions;

  additionalSettingsDiffActions = v11->_additionalSettingsDiffActions;
  v36 = MEMORY[0x1E695E0F8];
  v11->_additionalSettingsDiffActions = MEMORY[0x1E695E0F8];

  v37 = [(NSArray *)v11->_initialSettingsDiffActions arrayByAddingObjectsFromArray:v11->_finalSettingsDiffActions];
  flattenedDiffActions = v11->_flattenedDiffActions;
  v11->_flattenedDiffActions = v37;

  initialActionHandlers = [_specification initialActionHandlers];
  initialSceneBSActionHandlers = v11->_initialSceneBSActionHandlers;
  v11->_initialSceneBSActionHandlers = initialActionHandlers;

  finalActionHandlers = [_specification finalActionHandlers];
  finalSceneBSActionHandlers = v11->_finalSceneBSActionHandlers;
  v11->_finalSceneBSActionHandlers = finalActionHandlers;

  additionalBSActionResponders = v11->_additionalBSActionResponders;
  v11->_additionalBSActionResponders = v36;

  v44 = [(NSArray *)v11->_initialSceneBSActionHandlers arrayByAddingObjectsFromArray:v11->_finalSceneBSActionHandlers];
  flattenedBSActionResponders = v11->_flattenedBSActionResponders;
  v11->_flattenedBSActionResponders = v44;

  lifecycleMonitorClass = [_specification lifecycleMonitorClass];
  if (lifecycleMonitorClass)
  {
    v47 = lifecycleMonitorClass;
    v48 = objc_opt_self();
    v49 = [v47 isSubclassOfClass:v48];

    if ((v49 & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v71 = objc_opt_self();
      v72 = NSStringFromClass(v71);
      [currentHandler2 handleFailureInMethod:v74 object:v11 file:@"UIScene.m" lineNumber:428 description:{@"Lifecycle monitor must at least be a %@", v72}];
    }

    v50 = [[v47 alloc] initWithScene:v11];
    lifecycleMonitor = v11->_lifecycleMonitor;
    v11->_lifecycleMonitor = v50;
  }

  [(UIScene *)v11 setTitle:&stru_1EFB14550];
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  inheritingScenes = v11->_inheritingScenes;
  v11->_inheritingScenes = weakObjectsPointerArray;

  isUIKitManaged = [_specification isUIKitManaged];
  if (isUIKitManaged)
  {
    v55 = 512;
  }

  else
  {
    v55 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFFFDFF | v55);
  if (isUIKitManaged)
  {
    [(FBSScene *)v11->_scene setDelegate:v11];
  }

  if ([_specification isInternal])
  {
    v56 = 1024;
  }

  else
  {
    v56 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFFFBFF | v56);
  if ([_specification affectsAppLifecycleIfInternal])
  {
    v57 = 2048;
  }

  else
  {
    v57 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFFF7FF | v57);
  if ([_specification affectsScreenOrientation])
  {
    v58 = 4096;
  }

  else
  {
    v58 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFFEFFF | v58);
  v59 = +[_UIApplicationConfigurationLoader sharedLoader];
  applicationInitializationContext = [v59 applicationInitializationContext];
  defaultSceneToken = [applicationInitializationContext defaultSceneToken];
  identityToken = [(FBSScene *)v11->_scene identityToken];
  if ([defaultSceneToken isEqual:identityToken])
  {
    v63 = 0x4000;
  }

  else
  {
    v63 = 0;
  }

  v11->_sceneFlags = (*&v11->_sceneFlags & 0xFFFFBFFF | v63);

  v64 = v11;
  v65 = _uiScenes;
  if (!_uiScenes)
  {
    v66 = objc_opt_new();
    v67 = _uiScenes;
    _uiScenes = v66;

    v65 = _uiScenes;
  }

  [v65 insertObject:v64 atIndex:0];

  _UISceneUpdateSystemShellManagesKeyboardFocusIfNeededFromScene(v64);
  v9 = v75;
LABEL_58:

  return v11;
}

- (void)setDelegate:(id)delegate
{
  v5 = delegate;
  if (self->_delegate != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_delegate, delegate);
    _UISceneInspectDelegateSuport(&self->_sceneFlags, self->_delegate);
    v5 = v6;
  }
}

- (id)_currentOpenApplicationEndpoint
{
  identityToken = [(FBSScene *)self->_scene identityToken];
  v3 = identityToken;
  if (identityToken)
  {
    v4 = UIApp;
    stringRepresentation = [identityToken stringRepresentation];
    v6 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
    v7 = [v4 _currentOpenApplicationEndpointForEnvironment:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)openURL:(NSURL *)url options:(UISceneOpenExternalURLOptions *)options completionHandler:(void *)completion
{
  v8 = MEMORY[0x1E695DF90];
  v9 = completion;
  v10 = options;
  v11 = url;
  dictionary = [v8 dictionary];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[UISceneOpenExternalURLOptions universalLinksOnly](v10, "universalLinksOnly")}];
  [dictionary setValue:v12 forKey:@"UIApplicationOpenURLOptionUniversalLinksOnly"];

  eventAttribution = [(UISceneOpenExternalURLOptions *)v10 eventAttribution];

  [dictionary setValue:eventAttribution forKey:@"UIApplicationOpenExternalURLOptionsEventAttributionKey"];
  v14 = UIApp;
  _currentOpenApplicationEndpoint = [(UIScene *)self _currentOpenApplicationEndpoint];
  [v14 _openURL:v11 options:dictionary openApplicationEndpoint:_currentOpenApplicationEndpoint completionHandler:v9];
}

- (void)setTitle:(NSString *)title
{
  v4 = title;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  if (([(__CFString *)v5 isEqualToString:self->_title]& 1) == 0)
  {
    objc_storeStrong(&self->_title, v5);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __20__UIScene_setTitle___block_invoke;
    v6[3] = &unk_1E70F44D8;
    v7 = v5;
    [(UIScene *)self _updateUIClientSettingsWithBlock:v6];
  }
}

- (void)setSubtitle:(NSString *)subtitle
{
  v4 = subtitle;
  if (!v4)
  {
    v4 = &stru_1EFB14550;
  }

  obj = v4;
  if (([(__CFString *)v4 isEqualToString:self->_subtitle]& 1) == 0)
  {
    objc_storeStrong(&self->_subtitle, obj);
  }
}

- (void)setActivationConditions:(UISceneActivationConditions *)activationConditions
{
  v5 = activationConditions;
  v6 = self->_activationConditions;
  if (v6 != v5)
  {
    v8 = v5;
    v7 = [(UISceneActivationConditions *)v6 isEqual:v5];
    [(UISceneActivationConditions *)self->_activationConditions _setUIScene:0];
    [(UISceneActivationConditions *)v8 _setUIScene:self];
    objc_storeStrong(&self->_activationConditions, activationConditions);
    v5 = v8;
    if (!v7)
    {
      [(UIScene *)self _refreshActivationConditions];
      v5 = v8;
    }
  }
}

- (NSSet)_destructionConditions
{
  _sceneDestructionClientComponent = [(UIScene *)self _sceneDestructionClientComponent];
  destructionConditions = [(_UISceneDestructionClientComponent *)_sceneDestructionClientComponent destructionConditions];

  if (destructionConditions)
  {
    _UISceneDestructionConditionsSetFromSuperSet(destructionConditions);
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;

  return v4;
}

- (void)_setDestructionConditions:(id)conditions
{
  conditionsCopy = conditions;
  _sceneDestructionClientComponent = [(UIScene *)self _sceneDestructionClientComponent];
  [(_UISceneDestructionClientComponent *)_sceneDestructionClientComponent setDestructionConditions:conditionsCopy];
}

- (NSSet)destructionConditions
{
  _sceneDestructionClientComponent = [(UIScene *)self _sceneDestructionClientComponent];
  destructionConditions = [(_UISceneDestructionClientComponent *)_sceneDestructionClientComponent destructionConditions];
  v4 = destructionConditions;
  if (destructionConditions)
  {
    v5 = destructionConditions;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (void)setDestructionConditions:(id)conditions
{
  conditionsCopy = conditions;
  _sceneDestructionClientComponent = [(UIScene *)self _sceneDestructionClientComponent];
  [(_UISceneDestructionClientComponent *)_sceneDestructionClientComponent setDestructionConditions:conditionsCopy];
}

+ (id)_sceneForFBSScene:(id)scene
{
  v3 = [self _sceneForFBSScene:scene create:0 withSession:0 connectionOptions:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)_sceneForFBSScene:(id)scene usingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [self _sceneForFBSScene:scene];
  LODWORD(self) = [predicateCopy evaluateWithObject:v7];

  if (self)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)_identifier
{
  _persistenceIdentifier = [(UIScene *)self _persistenceIdentifier];
  v4 = _persistenceIdentifier;
  if (_persistenceIdentifier)
  {
    _sceneIdentifier = _persistenceIdentifier;
  }

  else
  {
    _sceneIdentifier = [(UIScene *)self _sceneIdentifier];
  }

  v6 = _sceneIdentifier;

  return v6;
}

- (void)_setDiscardSessionOnUserDisconnect:(BOOL)disconnect
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__UIScene__setDiscardSessionOnUserDisconnect___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  disconnectCopy = disconnect;
  [(UIScene *)self _updateUIClientSettingsWithBlock:v3];
}

- (BOOL)_discardSessionOnUserDisconnect
{
  _effectiveUIClientSettings = [(UIScene *)self _effectiveUIClientSettings];
  discardSessionOnUserDisconnect = [_effectiveUIClientSettings discardSessionOnUserDisconnect];

  return discardSessionOnUserDisconnect;
}

- (void)_registerSettingsDiffActionArray:(id)array forKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  keyCopy = key;
  if (!os_variant_has_internal_diagnostics() || !_UIIsPrivateMainBundle() || ![arrayCopy containsObject:self])
  {
    goto LABEL_4;
  }

  _UIIsPrivateMainBundle();
  if (!dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }

      if (self)
      {
        v27 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        selfCopy = [v27 stringWithFormat:@"<%@: %p>", v30, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v32 = selfCopy;
      v33 = 2080;
      v34 = "[UIScene _registerSettingsDiffActionArray:forKey:]";
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_registerSettingsDiffActionArray_forKey____s_category) + 8);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_20:

        goto LABEL_4;
      }

      if (self)
      {
        v22 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        selfCopy = [v22 stringWithFormat:@"<%@: %p>", v25, selfCopy2];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v32 = selfCopy;
      v33 = 2080;
      v34 = "[UIScene _registerSettingsDiffActionArray:forKey:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    goto LABEL_20;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  if (self)
  {
    v16 = MEMORY[0x1E696AEC0];
    selfCopy3 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    selfCopy3 = [v16 stringWithFormat:@"<%@: %p>", v19, selfCopy3];
  }

  else
  {
    selfCopy3 = @"(nil)";
  }

  [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:729 description:{@"BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle.", selfCopy3, "-[UIScene _registerSettingsDiffActionArray:forKey:]"}];

LABEL_4:
  v9 = [(NSDictionary *)self->_additionalSettingsDiffActions mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  [v12 setObject:arrayCopy forKey:keyCopy];
  v13 = [v12 copy];
  additionalSettingsDiffActions = self->_additionalSettingsDiffActions;
  self->_additionalSettingsDiffActions = v13;

  [(UIScene *)self _calculateFlattenedDiffActions];
}

- (void)_unregisterSettingsDiffActionArrayForKey:(id)key
{
  additionalSettingsDiffActions = self->_additionalSettingsDiffActions;
  keyCopy = key;
  v6 = [(NSDictionary *)additionalSettingsDiffActions mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v11 = v8;

  [v11 removeObjectForKey:keyCopy];
  v9 = [v11 copy];
  v10 = self->_additionalSettingsDiffActions;
  self->_additionalSettingsDiffActions = v9;

  [(UIScene *)self _calculateFlattenedDiffActions];
}

- (void)_registerSceneActionsHandlerArray:(id)array forKey:(id)key
{
  v29 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  keyCopy = key;
  if (!os_variant_has_internal_diagnostics() || !_UIIsPrivateMainBundle() || ![arrayCopy containsObject:self])
  {
    goto LABEL_4;
  }

  _UIIsPrivateMainBundle();
  if (!dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      if (self)
      {
        v21 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        selfCopy = [v21 stringWithFormat:@"<%@: %p>", v24, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v26 = selfCopy;
      v27 = 2080;
      v28 = "[UIScene _registerSceneActionsHandlerArray:forKey:]";
      _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &_registerSceneActionsHandlerArray_forKey____s_category) + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_4;
      }

      if (self)
      {
        v16 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        selfCopy = [v16 stringWithFormat:@"<%@: %p>", v19, selfCopy2];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v26 = selfCopy;
      v27 = 2080;
      v28 = "[UIScene _registerSceneActionsHandlerArray:forKey:]";
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  if (self)
  {
    v10 = MEMORY[0x1E696AEC0];
    selfCopy3 = self;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    selfCopy3 = [v10 stringWithFormat:@"<%@: %p>", v13, selfCopy3];
  }

  else
  {
    selfCopy3 = @"(nil)";
  }

  [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:746 description:{@"BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle.", selfCopy3, "-[UIScene _registerSceneActionsHandlerArray:forKey:]"}];

LABEL_4:
  [(UIScene *)self _registerBSActionResponderArray:arrayCopy forKey:keyCopy];
}

- (void)_registerBSActionResponderArray:(id)array forKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  keyCopy = key;
  if (!os_variant_has_internal_diagnostics() || !_UIIsPrivateMainBundle() || ![arrayCopy containsObject:self])
  {
    goto LABEL_4;
  }

  _UIIsPrivateMainBundle();
  if (!dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_20;
      }

      if (self)
      {
        v27 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        selfCopy = [v27 stringWithFormat:@"<%@: %p>", v30, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v32 = selfCopy;
      v33 = 2080;
      v34 = "[UIScene _registerBSActionResponderArray:forKey:]";
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_registerBSActionResponderArray_forKey____s_category) + 8);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_20:

        goto LABEL_4;
      }

      if (self)
      {
        v22 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        selfCopy = [v22 stringWithFormat:@"<%@: %p>", v25, selfCopy2];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v32 = selfCopy;
      v33 = 2080;
      v34 = "[UIScene _registerBSActionResponderArray:forKey:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    goto LABEL_20;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  if (self)
  {
    v16 = MEMORY[0x1E696AEC0];
    selfCopy3 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    selfCopy3 = [v16 stringWithFormat:@"<%@: %p>", v19, selfCopy3];
  }

  else
  {
    selfCopy3 = @"(nil)";
  }

  [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:751 description:{@"BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle.", selfCopy3, "-[UIScene _registerBSActionResponderArray:forKey:]"}];

LABEL_4:
  v9 = [(NSDictionary *)self->_additionalBSActionResponders mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  [v12 setObject:arrayCopy forKey:keyCopy];
  v13 = [v12 copy];
  additionalBSActionResponders = self->_additionalBSActionResponders;
  self->_additionalBSActionResponders = v13;

  [(UIScene *)self _calculateFlattenedBSActionResponders];
}

- (void)_unregisterBSActionResponderArray:(id)array
{
  additionalBSActionResponders = self->_additionalBSActionResponders;
  arrayCopy = array;
  v6 = [(NSDictionary *)additionalBSActionResponders mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v11 = v8;

  [v11 removeObjectForKey:arrayCopy];
  v9 = [v11 copy];
  v10 = self->_additionalBSActionResponders;
  self->_additionalBSActionResponders = v9;

  [(UIScene *)self _calculateFlattenedBSActionResponders];
}

+ (void)_registerSceneComponentClass:(Class)class withKey:(id)key predicate:(id)predicate
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  predicateCopy = predicate;
  if (([(objc_class *)class conformsToProtocol:&unk_1EFE5A310]& 1) != 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __58__UIScene__registerSceneComponentClass_withKey_predicate___block_invoke;
    v30[3] = &unk_1E70F41A8;
    classCopy = class;
    v24 = predicateCopy;
    v11 = predicateCopy;
    v31 = v11;
    v25 = keyCopy;
    v12 = keyCopy;
    v32 = v12;
    __UISceneAccessClassComponentArray(1, v30);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [self _scenesIncludingInternal:1];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          session = [v18 session];
          v20 = [v11 evaluateWithObject:session];

          if (v20)
          {
            v21 = [[class alloc] initWithScene:v18];
            [v18 _registerSceneComponent:v21 forKey:v12];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v15);
    }

    predicateCopy = v24;
    keyCopy = v25;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = NSStringFromClass(class);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:798 description:{@"Attempted to register UIScene component class %@, which does not conform to _UISceneComponentProviding", v23}];
  }
}

void __58__UIScene__registerSceneComponentClass_withKey_predicate___block_invoke(void *a1, void *a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9[0] = a1[6];
  v8[0] = @"_UISceneComponentClass";
  v8[1] = @"_UISceneComponentClassPredicate";
  v4 = a1[4];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v8[2] = @"_UISceneComponentKeyname";
  v6 = a1[5];
  v9[1] = v5;
  v9[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v3 addObject:v7];

  if (!v4)
  {
  }
}

- (void)_registerSceneComponent:(id)component forKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  keyCopy = key;
  if (self != componentCopy)
  {
    goto LABEL_2;
  }

  _UIIsPrivateMainBundle();
  if (!dyld_program_sdk_at_least())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_18;
      }

      if (self)
      {
        v27 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        selfCopy = [v27 stringWithFormat:@"<%@: %p>", v30, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v32 = selfCopy;
      v33 = 2080;
      v34 = "[UIScene _registerSceneComponent:forKey:]";
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    else
    {
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &_registerSceneComponent_forKey____s_category) + 8);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        goto LABEL_2;
      }

      if (self)
      {
        v22 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        selfCopy = [v22 stringWithFormat:@"<%@: %p>", v25, selfCopy2];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138412546;
      v32 = selfCopy;
      v33 = 2080;
      v34 = "[UIScene _registerSceneComponent:forKey:]";
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle. This will become an assert in a future version.", buf, 0x16u);
    }

    goto LABEL_18;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  if (self)
  {
    v16 = MEMORY[0x1E696AEC0];
    selfCopy3 = self;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    selfCopy3 = [v16 stringWithFormat:@"<%@: %p>", v19, selfCopy3];
  }

  else
  {
    selfCopy3 = @"(nil)";
  }

  [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:817 description:{@"BUG IN CLIENT OF UIKIT: %@ %s: Registering the scene itself results in a retain cycle.", selfCopy3, "-[UIScene _registerSceneComponent:forKey:]"}];

LABEL_2:
  v9 = [(NSDictionary *)self->_registeredComponents mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  [v12 setObject:componentCopy forKey:keyCopy];
  v13 = [v12 copy];
  registeredComponents = self->_registeredComponents;
  self->_registeredComponents = v13;

  [(UIScene *)self _calculateFlattenedDiffActions];
  [(UIScene *)self _calculateFlattenedBSActionResponders];
  [(UIScene *)componentCopy _setScene:self];
}

- (void)_unregisterSceneComponentForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSDictionary *)self->_registeredComponents objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 _setScene:0];
    v6 = [(NSDictionary *)self->_registeredComponents mutableCopy];
    [v6 removeObjectForKey:keyCopy];
    v7 = [v6 copy];
    registeredComponents = self->_registeredComponents;
    self->_registeredComponents = v7;

    [(UIScene *)self _calculateFlattenedDiffActions];
    [(UIScene *)self _calculateFlattenedBSActionResponders];
  }
}

- (void)_updateUIClientSettingsWithUITransitionBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"updaterBlock"}];
  }

  scene = self->_scene;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__UIScene__updateUIClientSettingsWithUITransitionBlock___block_invoke;
  v9[3] = &unk_1E70F41D0;
  v10 = blockCopy;
  v11 = a2;
  v9[4] = self;
  v7 = blockCopy;
  [(FBSScene *)scene updateUIClientSettingsWithTransitionBlock:v9];
}

id __56__UIScene__updateUIClientSettingsWithUITransitionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isUISubclass] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"UIScene.m" lineNumber:880 description:{@"Invalid parameter not satisfying: %@", @"[mutableClientSettings isUISubclass]"}];
  }

  v4 = v3;
  v5 = +[(FBSSceneTransitionContext *)UIApplicationSceneTransitionContext];
  v6 = [*(a1 + 32) _effectiveUISettings];
  if ([v6 isForeground] && (objc_msgSend(*(a1 + 32), "_isReadyForSuspension") & 1) == 0)
  {
    v7 = [*(a1 + 32) _isConnected];
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*(a1 + 40) + 16))();
  if (v7 && v8)
  {
    v9 = [*(a1 + 32) _synchronizedDrawingFence];
    [v5 setAnimationFence:v9];
  }

  return v5;
}

- (void)_synchronizeDrawing
{
  if ([(UIScene *)self _shouldAllowFencing])
  {

    +[UIScene _synchronizeDrawing];
  }
}

- (id)_synchronizeDrawingAndReturnFence
{
  _synchronizedDrawingFence = [(UIScene *)self _synchronizedDrawingFence];
  cAFenceHandle = [_synchronizedDrawingFence CAFenceHandle];
  v4 = [cAFenceHandle copy];

  [_synchronizedDrawingFence invalidate];

  return v4;
}

- (void)_synchronizeDrawingUsingFence:(id)fence
{
  fenceCopy = fence;
  if ([(UIScene *)self _shouldAllowFencing])
  {
    [UIScene _synchronizeDrawingUsingFence:fenceCopy];
  }
}

+ (id)_synchronizeDrawingAndReturnFence
{
  _synchronizedDrawingFence = [self _synchronizedDrawingFence];
  cAFenceHandle = [_synchronizedDrawingFence CAFenceHandle];
  v4 = [cAFenceHandle copy];

  [_synchronizedDrawingFence invalidate];

  return v4;
}

- (void)_synchronizeDrawingWithFence:(id)fence
{
  fenceCopy = fence;
  if ([(UIScene *)self _shouldAllowFencing])
  {
    [UIScene _synchronizeDrawingWithFence:fenceCopy];
  }
}

- (void)_noteDisplayIdentityDidChangeWithConfiguration:(id)configuration
{
  v43 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ([(UIScene *)self _hostsWindows])
  {
    selfCopy = self;
    _oldSettings = [(UIScene *)selfCopy _oldSettings];
    displayIdentity = [_oldSettings displayIdentity];

    v8 = [UIScreen _screenWithFBSDisplayIdentity:displayIdentity];
    _FBSScene = [(UIScene *)selfCopy _FBSScene];
    if (configurationCopy)
    {
      +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", configurationCopy, [UIApp _hasCalledRunWithMainScene]);
    }

    v10 = [UIScreen _screenForScene:_FBSScene];
    if (v8 != v10)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = objc_opt_new();
      v13 = v12;
      if (v8)
      {
        [v12 setObject:v8 forKey:@"_UIWindowHostingSceneOldScreenUserInfoKey"];
      }

      v29 = _FBSScene;
      if (v10)
      {
        [v13 setObject:v10 forKey:@"_UIWindowHostingSceneNewScreenUserInfoKey"];
      }

      v30 = configurationCopy;
      [defaultCenter postNotificationName:@"_UIWindowHostingSceneWillMoveToScreenNotification" object:selfCopy userInfo:{v13, v13, defaultCenter}];
      allValues = [(NSDictionary *)selfCopy->_registeredComponents allValues];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = [allValues countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(allValues);
            }

            v19 = *(*(&v37 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 _windowHostingScene:selfCopy willMoveFromScreen:v8 toScreen:v10];
            }
          }

          v16 = [allValues countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v16);
      }

      if (*(&selfCopy->_sceneFlags + 2))
      {
        [(UIScene *)selfCopy _screenDidChangeFromScreen:v8 toScreen:v10];
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = allValues;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v25 _windowHostingScene:selfCopy didMoveFromScreen:v8 toScreen:v10];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v22);
      }

      [v28 postNotificationName:@"_UIWindowHostingSceneDidMoveToScreenNotification" object:selfCopy userInfo:v27];
      _FBSScene = v29;
      configurationCopy = v30;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__UIScene__noteDisplayIdentityDidChangeWithConfiguration___block_invoke;
    v31[3] = &unk_1E70F3590;
    v32 = displayIdentity;
    v26 = displayIdentity;
    [(UIScene *)selfCopy _enqueuePostSettingsUpdateResponseBlock:v31 inPhase:@"_UIScenePostSettingsUpdateResponsePhaseScreenDisconnect"];
  }
}

uint64_t __58__UIScene__noteDisplayIdentityDidChangeWithConfiguration___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [UIScreen _FBSDisplayIdentityDisconnected:?];
  }

  return result;
}

- (id)_allWindowsForInvalidation
{
  if ([(UIScene *)self _hostsWindows])
  {
    v3 = [(UIScene *)self _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)_visibleWindows
{
  if ([(UIScene *)self _hostsWindows])
  {
    v3 = [(UIScene *)self _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (NSArray)_allWindows
{
  if ([(UIScene *)self _hostsWindows])
  {
    v3 = [(UIScene *)self _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

+ (void)_enumerateAllWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows asCopy:(BOOL)copy withBlock:(id)block
{
  copyCopy = copy;
  visibleWindowsCopy = visibleWindows;
  windowsCopy = windows;
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  _unsafeScenesIncludingInternal = [self _unsafeScenesIncludingInternal];
  if (blockCopy && _unsafeScenesIncludingInternal)
  {
    if (copyCopy)
    {
      v12 = [_unsafeScenesIncludingInternal copy];
    }

    else
    {
      v12 = _unsafeScenesIncludingInternal;
    }

    v13 = v12;
    objc_opt_class();
    v24 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
LABEL_8:
      v18 = 0;
      while (1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        if (objc_opt_isKindOfClass())
        {
          [v19 _enumerateWindowsIncludingInternalWindows:windowsCopy onlyVisibleWindows:visibleWindowsCopy asCopy:copyCopy stopped:&v24 withBlock:{blockCopy, v20}];
          if (v24)
          {
            break;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v16)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }
}

- (void)_enumerateWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows asCopy:(BOOL)copy stopped:(BOOL *)stopped withBlock:(id)block
{
  visibleWindowsCopy = visibleWindows;
  windowsCopy = windows;
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(UIScene *)self _hostsWindows])
  {
    v21 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(UIScene *)self _allWindowsIncludingInternalWindows:windowsCopy onlyVisibleWindows:visibleWindowsCopy, 0];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          blockCopy[2](blockCopy, *(*(&v17 + 1) + 8 * i), &v21);
          if (v21 == 1)
          {
            if (stopped)
            {
              *stopped = 1;
            }

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (id)_topVisibleWindowEnumeratingAsCopy:(BOOL)copy passingTest:(id)test
{
  copyCopy = copy;
  testCopy = test;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  if ([(UIScene *)self _hostsWindows])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UIScene__topVisibleWindowEnumeratingAsCopy_passingTest___block_invoke;
    v9[3] = &unk_1E70F4240;
    v11 = &v12;
    v10 = testCopy;
    [(UIScene *)self _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 asCopy:copyCopy stopped:0 withBlock:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__UIScene__topVisibleWindowEnumeratingAsCopy_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40) || ([v8 windowLevel], v5 = v4, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "windowLevel"), v5 > v6))
  {
    v7 = *(a1 + 32);
    if (!v7 || (*(v7 + 16))(v7, v8))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

- (BOOL)_shouldDeferInitialWindowUpdateBeforeConnectionAndTrackIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(UIScene *)self _hostsWindows])
  {
    v5 = [(UIScene *)self _shouldDeferInitialWindowUpdateBeforeConnection:neededCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)_referenceBounds
{
  if ([(UIScene *)self _hostsWindows])
  {
    _screen = [(UIScene *)self _screen];
    [_screen _referenceBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_boundsForInterfaceOrientation:(int64_t)orientation
{
  if ([(UIScene *)self _hostsWindows])
  {
    [(UIScene *)self _referenceBounds];
    v9 = v5;
    v10 = v6;
    Height = v7;
    v12 = v8;
    if ((orientation - 3) <= 1)
    {
      Width = CGRectGetWidth(*&v5);
      v18.origin.x = v9;
      v18.origin.y = v10;
      v18.size.width = Height;
      v18.size.height = v12;
      Height = CGRectGetHeight(v18);
      v12 = Width;
    }
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    Height = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v9;
  v15 = v10;
  v16 = Height;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_computeMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  _allWindows = [(UIScene *)self _allWindows];
  [(UIScene *)self _computeMetricsForWindows:_allWindows animated:metricsCopy];
}

- (void)_computeMetricsForWindows:(id)windows animated:(BOOL)animated
{
  v16 = *MEMORY[0x1E69E9840];
  windowsCopy = windows;
  if ([(UIScene *)self _hostsWindows])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = windowsCopy;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) _sceneBoundsDidChange];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (_UICornerInsets)_safeAreaCornerInsets
{
  retstr->bottomRight = 0u;
  retstr->topRight = 0u;
  retstr->topLeft = 0u;
  retstr->bottomLeft = 0u;
  return self;
}

- (_UICornerInsets)_safeAreaCornerInsetsForInterfaceOrientation:(SEL)orientation
{
  retstr->bottomRight = 0u;
  retstr->topRight = 0u;
  retstr->topLeft = 0u;
  retstr->bottomLeft = 0u;
  return self;
}

- (void)__captureWindow:(id)window
{
  windowCopy = window;
  if ([(UIScene *)self _hostsWindows])
  {
    [(UIWindow *)windowCopy __setWindowHostingScene:?];
  }
}

- (void)__releaseWindow:(id)window
{
  windowCopy = window;
  _hostsWindows = [(UIScene *)self _hostsWindows];
  v5 = windowCopy;
  if (_hostsWindows)
  {
    v6 = windowCopy ? *(windowCopy + 103) : 0;
    v7 = v6;

    v5 = windowCopy;
    if (v7 == self)
    {
      [(UIWindow *)windowCopy __setWindowHostingScene:?];
      v5 = windowCopy;
    }
  }
}

- (void)_updateSceneTraitsAndPushTraitsToScreen:(BOOL)screen callParentWillTransitionToTraitCollection:(BOOL)collection
{
  collectionCopy = collection;
  screenCopy = screen;
  v47 = *MEMORY[0x1E69E9840];
  if ([(UIScene *)self _hostsWindows])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;
  if (v8)
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    settings = [_FBSScene settings];
    isUISubclass = [settings isUISubclass];

    if (isUISubclass)
    {
      uiSettings = [_FBSScene uiSettings];
      userInterfaceStyle = [uiSettings userInterfaceStyle];

      if (screenCopy && [(UIScene *)self _pushesTraitCollectionToScreen])
      {
        _screen = [(UIScene *)v8 _screen];
        [_screen _setUserInterfaceStyleIfNecessary:userInterfaceStyle firstTimeOnly:0];
      }

      v15 = *(__UILogGetCategoryCachedImpl("InterfaceStyle", &_MergedGlobals_45) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (screenCopy)
        {
          v16 = @"Push";
        }

        else
        {
          v16 = @"Not push";
        }

        if (self)
        {
          v17 = MEMORY[0x1E696AEC0];
          selfCopy2 = self;
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          selfCopy2 = [v17 stringWithFormat:@"<%@: %p>", v20, selfCopy2];
        }

        else
        {
          selfCopy2 = @"(nil)";
        }

        v25 = selfCopy2;
        _persistenceIdentifier = [(UIScene *)self _persistenceIdentifier];
        *buf = 138544130;
        v40 = v16;
        v41 = 2050;
        v42 = userInterfaceStyle;
        v43 = 2114;
        v44 = selfCopy2;
        v45 = 2114;
        v46 = _persistenceIdentifier;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ traits update to screen for new style %{public}ld, %{public}@ (%{public}@)", buf, 0x2Au);
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    _allWindows = [(UIScene *)self _allWindows];
    v28 = [_allWindows countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v35;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(_allWindows);
          }

          v32 = *(*(&v34 + 1) + 8 * i);
          if (collectionCopy)
          {
            _traitCollection = [(UIScene *)v8 _traitCollection];
            [v32 _parentWillTransitionToTraitCollection:_traitCollection];
          }

          [v32 _updateWindowTraits];
        }

        v29 = [_allWindows countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v22 = *(__UILogGetCategoryCachedImpl("TraitCollection", &qword_1ED49C368) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      *buf = 138543362;
      v40 = objc_opt_class();
      v24 = v40;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Can't update scene traits, %{public}@ does not conform to _UISceneUIWindowHosting", buf, 0xCu);
    }
  }
}

- (void)_targetOfKeyboardEventDeferringEnvironmentDidUpdate:(_DWORD *)update
{
  v24 = *MEMORY[0x1E69E9840];
  if (update && _UISceneSystemShellManagesKeyboardFocusIsPossibleForScene(update) && [update _allowsEventUIWindowRouting])
  {
    v4 = update[52];
    v5 = a2 ? 0x2000000 : 0;
    update[52] = v4 & 0xFDFFFFFF | v5;
    _UISceneUpdateSystemShellManagesKeyboardFocusIfNeededFromScene(update);
    v6 = (v4 & 0x2000000) != 0 ? a2 : 1;
    v7 = (v4 & 0x2000000) != 0 ? 0 : a2;
    if (a2 != (v4 & 0x2000000u) >> 25)
    {
      v8 = objc_opt_class();
      Name = class_getName(v8);
      _FBSScene = [update _FBSScene];
      identityToken = [_FBSScene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      uTF8String = [stringRepresentation UTF8String];

      v14 = *(__UILogGetCategoryCachedImpl("KeyWindow", &_targetOfKeyboardEventDeferringEnvironmentDidUpdate____s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17[0] = 67240962;
        v17[1] = a2;
        v18 = 2082;
        v19 = Name;
        v20 = 2050;
        updateCopy = update;
        v22 = 2080;
        v23 = uTF8String;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Scene target of keyboard event deferring environment did change: %{public}d; scene: %{public}s: %{public}p; scene identity: %s", v17, 0x26u);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v16 = defaultCenter;
      if ((v6 & 1) == 0)
      {
        [defaultCenter postNotificationName:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:update];
      }

      if (v7)
      {
        [v16 postNotificationName:@"_UISceneDidBecomeTargetOfKeyboardEventDeferringEnvironmentNotification" object:update];
      }
    }
  }
}

+ (id)_sceneForFBSScene:(id)scene create:(BOOL)create withSession:(id)session connectionOptions:(id)options
{
  createCopy = create;
  v71 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  if (!sceneCopy)
  {
    v16 = 0;
    goto LABEL_33;
  }

  v14 = _uiScenes;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __66__UIScene__sceneForFBSScene_create_withSession_connectionOptions___block_invoke;
  v68[3] = &unk_1E70F44A8;
  v15 = sceneCopy;
  v69 = v15;
  v16 = [v14 bs_firstObjectPassingTest:v68];
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = !createCopy;
  }

  if (!v17)
  {
    specification = [v15 specification];
    if (([objc_msgSend(specification "uiSceneMinimumClass")] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = NSStringFromClass([specification uiSceneMinimumClass]);
      v46 = NSStringFromClass(self);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:1479 description:{@"Attempting to initialize instance with a scene specification without a valid minimumClass (is %@, should be %@)", v45, v46}];
    }

    configuration = [sessionCopy configuration];
    sceneClass = [configuration sceneClass];
    if (!sceneClass)
    {
      sceneClass = [specification uiSceneMinimumClass];
    }

    if ((-[objc_class isSubclassOfClass:](sceneClass, "isSubclassOfClass:", [specification uiSceneMinimumClass]) & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v53 = NSStringFromClass(sceneClass);
      role = [sessionCopy role];
      v48 = NSStringFromClass([specification uiSceneMinimumClass]);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:1483 description:{@"description specified a class of %@, but systemType %@ requires a minimum class of %@", v53, role, v48}];
    }

    if (([(objc_class *)sceneClass isSubclassOfClass:self]& 1) != 0)
    {
      if (optionsCopy)
      {
LABEL_14:
        v21 = [[sceneClass alloc] initWithSession:sessionCopy connectionOptions:optionsCopy];
        configuration2 = [sessionCopy configuration];
        if (UIApp)
        {
          v23 = [*(UIApp + 240) count] != 0;
        }

        else
        {
          v23 = 0;
        }

        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __66__UIScene__sceneForFBSScene_create_withSession_connectionOptions___block_invoke_2;
        v65[3] = &unk_1E70F4278;
        v54 = configuration2;
        v66 = v54;
        v67 = v23;
        [v21 _updateUIClientSettingsWithBlock:v65];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__UIScene__sceneForFBSScene_create_withSession_connectionOptions___block_invoke_3;
        aBlock[3] = &unk_1E70F42A0;
        v63 = a2;
        selfCopy = self;
        v24 = specification;
        v61 = v24;
        v16 = v21;
        v62 = v16;
        v25 = _Block_copy(aBlock);
        coreSceneComponentClassDictionary = [v24 coreSceneComponentClassDictionary];
        [coreSceneComponentClassDictionary enumerateKeysAndObjectsUsingBlock:v25];

        baseSceneComponentClassDictionary = [v24 baseSceneComponentClassDictionary];
        v52 = v25;
        [baseSceneComponentClassDictionary enumerateKeysAndObjectsUsingBlock:v25];

        [v16 _initializeSceneComponents];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"_UISceneDidInitializeSceneComponentsNotification" object:v16];

        connectionHandlers = [v24 connectionHandlers];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v30 = [connectionHandlers countByEnumeratingWithState:&v56 objects:v70 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v57;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v57 != v32)
              {
                objc_enumerationMutation(connectionHandlers);
              }

              (*(*(*(&v56 + 1) + 8 * i) + 16))();
            }

            v31 = [connectionHandlers countByEnumeratingWithState:&v56 objects:v70 count:16];
          }

          while (v31);
        }

        [v16 _readySceneForConnection];
        identifier = [v15 identifier];
        if ((v16[208] & 2) != 0)
        {
          kdebug_trace();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v16;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          if (v35)
          {
            v37 = v36;
            v38 = _UISetCurrentFallbackEnvironment(v36);
            delegate = [v16 delegate];
            [delegate scene:v16 willConnectToSession:sessionCopy options:optionsCopy];

            _UIRestorePreviousFallbackEnvironment(v38);
          }

          else
          {
            delegate2 = [v16 delegate];
            [delegate2 scene:v16 willConnectToSession:sessionCopy options:optionsCopy];
          }
        }

        kdebug_trace();
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 postNotificationName:@"UISceneWillConnectNotification" object:v16];

        [v16 _performDeferredInitialWindowUpdateForConnection];
        session = [v16 session];
        [session _setScene:v16];

        [(UISceneConnectionOptions *)optionsCopy performPostConnectionCleanup];
        goto LABEL_32;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = NSStringFromSelector(a2);
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:1484 description:{@"Called %@, on class of %@, but attempted to construct a UIScene instance of class %@", v50, self, sceneClass}];

      if (optionsCopy)
      {
        goto LABEL_14;
      }
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:1485 description:@"UISceneConnectionOptions cannot be nil when creating a new UIScene!"];

    goto LABEL_14;
  }

LABEL_32:

LABEL_33:

  return v16;
}

uint64_t __66__UIScene__sceneForFBSScene_create_withSession_connectionOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _FBSScene];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __66__UIScene__sceneForFBSScene_create_withSession_connectionOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if ([v3 _fromPlist])
  {
    if ([*(a1 + 32) _isDefault])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  [v5 setSceneActivationBias:v4];
  [v5 setIdleTimerDisabled:*(a1 + 40)];
}

void __66__UIScene__sceneForFBSScene_create_withSession_connectionOptions___block_invoke_3(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = a2;
  if (([(objc_class *)a3 conformsToProtocol:&unk_1EFE5A310]& 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = NSStringFromClass(a3);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v6 handleFailureInMethod:v7 object:v8 file:@"UIScene.m" lineNumber:1511 description:{@"class: %@ included in component class dictionary of %@ but does not conform to _UISceneComponentProviding!", v9, v11}];
  }

  v12 = [[a3 alloc] initWithScene:*(a1 + 40)];
  [*(a1 + 40) _registerSceneComponent:v12 forKey:v5];
}

+ (id)_scenesIncludingInternal:(BOOL)internal
{
  internalCopy = internal;
  v5 = objc_opt_self();

  v6 = _uiScenes;
  if (!_uiScenes)
  {
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (!internalCopy)
  {
    v7 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__UIScene__scenesIncludingInternal___block_invoke_2;
    v12[3] = &__block_descriptor_41_e34_B24__0__UIScene_8__NSDictionary_16l;
    v13 = v5 == self;
    v12[4] = self;
    v8 = v12;
    goto LABEL_7;
  }

  if (v5 != self)
  {
    v7 = MEMORY[0x1E696AE18];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__UIScene__scenesIncludingInternal___block_invoke;
    v14[3] = &__block_descriptor_40_e37_B24__0___NSObject__8__NSDictionary_16l;
    v14[4] = self;
    v8 = v14;
LABEL_7:
    v10 = [v7 predicateWithBlock:v8];
    v9 = [v6 filteredArrayUsingPredicate:v10];

    goto LABEL_8;
  }

  v9 = [_uiScenes copy];
LABEL_8:

  return v9;
}

uint64_t __36__UIScene__scenesIncludingInternal___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __36__UIScene__scenesIncludingInternal___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isInternal])
  {
    isKindOfClass = 0;
  }

  else if (*(a1 + 40))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)_connectionOptionsForScene:(id)scene withSpecification:(id)specification transitionContext:(id)context actions:(id)actions sceneSession:(id)session
{
  v87 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  specificationCopy = specification;
  contextCopy = context;
  actionsCopy = actions;
  sessionCopy = session;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = [MEMORY[0x1E695DFA8] set];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__8;
  v83 = __Block_byref_object_dispose__8;
  v42 = actionsCopy;
  v84 = v42;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__8;
  v77 = __Block_byref_object_dispose__8;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__8;
  v71 = __Block_byref_object_dispose__8;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__8;
  v65 = __Block_byref_object_dispose__8;
  v66 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__UIScene__connectionOptionsForScene_withSpecification_transitionContext_actions_sceneSession___block_invoke;
  aBlock[3] = &unk_1E70F4318;
  v57 = &v79;
  v40 = sceneCopy;
  v52 = v40;
  v18 = sessionCopy;
  v53 = v18;
  v41 = contextCopy;
  v54 = v41;
  v19 = dictionary;
  v55 = v19;
  v20 = v17;
  v56 = v20;
  v58 = &v73;
  v59 = &v67;
  v60 = &v61;
  v21 = _Block_copy(aBlock);
  if ([v80[5] count])
  {
    initialActionHandlers = [specificationCopy initialActionHandlers];
    finalActionHandlers = [specificationCopy finalActionHandlers];
    v24 = [initialActionHandlers arrayByAddingObjectsFromArray:finalActionHandlers];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v47 objects:v86 count:16];
    if (v26)
    {
      v27 = *v48;
LABEL_4:
      v28 = 0;
      while (1)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v21[2](v21, *(*(&v47 + 1) + 8 * v28));
        if (![v80[5] count])
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [v25 countByEnumeratingWithState:&v47 objects:v86 count:16];
          if (v26)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  [specificationCopy _transitionContextHandlers];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v29 = v44 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v85 count:16];
  if (v30)
  {
    v31 = *v44;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v21[2](v21, *(*(&v43 + 1) + 8 * i));
      }

      v30 = [v29 countByEnumeratingWithState:&v43 objects:v85 count:16];
    }

    while (v30);
  }

  v33 = objc_alloc_init(_UISceneConnectionOptionsContext);
  v34 = [v19 copy];
  [(_UISceneConnectionOptionsContext *)v33 setLaunchOptionsDictionary:v34];

  [(_UISceneConnectionOptionsContext *)v33 setUnprocessedActions:v80[5]];
  [(UIBackgroundConfiguration *)v33 _setBackgroundColor:?];
  if (v33)
  {
    objc_setProperty_nonatomic_copy(v33, v35, v20, 32);
  }

  v36 = v68[5];
  if (v36 && [v36 count])
  {
    v37 = [v68[5] copy];
    [(_UISceneConnectionOptionsContext *)v33 setRequestedSceneConfigurations:v37];
  }

  v38 = [v62[5] copy];
  [(_UICollectionLayoutItemSolver *)v33 setSolveResult:v38];

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  return v33;
}

void __95__UIScene__connectionOptionsForScene_withSpecification_transitionContext_actions_sceneSession___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v51 = v3;
    v50 = [v3 _launchOptionsFromActions:*(*(*(a1 + 72) + 8) + 40) forFBSScene:*(a1 + 32) uiSceneSession:*(a1 + 40) transitionContext:*(a1 + 48)];
    v4 = [v50 launchOptionsDictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v5 = [v4 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v53;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v53 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          v11 = [*(a1 + 56) objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [MEMORY[0x1E695DFD8] set];
          }

          v14 = v13;

          v15 = [v4 objectForKeyedSubscript:v10];
          v16 = [v14 setByAddingObjectsFromSet:v15];
          [*(a1 + 56) setObject:v16 forKeyedSubscript:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v7);
    }

    if (v50)
    {
      v17 = v50[4];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v3 = v51;
    if (v18)
    {
      v19 = *(a1 + 64);
      if (v50)
      {
        v20 = v50[4];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      [v19 unionSet:v21];
    }

    if (v50)
    {
      v22 = v50[5];
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v23)
    {
      if (v50)
      {
        v24 = v50[5];
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;
      v26 = *(*(a1 + 80) + 8);
      v29 = *(v26 + 40);
      v27 = (v26 + 40);
      v28 = v29;
      if (v29)
      {
        [v28 applyValuesFromOtherStorage:v25];
      }

      else
      {
        objc_storeStrong(v27, v24);
      }
    }

    v30 = [v50 requestedSceneConfigurations];
    v31 = [v30 count];

    if (v31)
    {
      v32 = *(*(*(a1 + 88) + 8) + 40);
      v33 = [v50 requestedSceneConfigurations];
      v34 = v33;
      if (v32)
      {
        [v32 unionSet:v33];
      }

      else
      {
        v35 = [v33 mutableCopy];
        v36 = *(*(a1 + 88) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;
      }
    }

    if (v50)
    {
      v38 = v50[6];
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    if (v39)
    {
      v40 = *(*(*(a1 + 96) + 8) + 40);
      if (v50)
      {
        v41 = v50[6];
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;
      v43 = v42;
      if (v40)
      {
        [v40 applySettings:v42];
      }

      else
      {
        v44 = [v42 mutableCopy];
        v45 = *(*(a1 + 96) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;
      }
    }

    v47 = [v50 unprocessedActions];
    v48 = *(*(a1 + 72) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;
  }
}

+ (id)_persistenceIdentifierForScene:(id)scene
{
  sceneCopy = scene;
  settings = [sceneCopy settings];
  isUISubclass = [settings isUISubclass];

  if (!isUISubclass || ([sceneCopy uiSettings], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "persistenceIdentifier"), identifier = objc_claimAutoreleasedReturnValue(), v6, !identifier))
  {
    identifier = [sceneCopy identifier];
  }

  return identifier;
}

- (void)_setInvolvedInMediaPlayback:(BOOL)playback
{
  if (playback)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_sceneFlags = (*&self->_sceneFlags & 0xFF7FFFFF | v3);
}

- (BOOL)_isEligibleForSuspension
{
  _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
  isForeground = [_effectiveUISettings isForeground];

  return isForeground ^ 1;
}

- (void)_setSettingsScene:(id)scene
{
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_settingsScene);

  if (WeakRetained != sceneCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UISceneWillChangeSettingsSceneNotification" object:self];
    v6 = objc_loadWeakRetained(&self->_settingsScene);
    [v6 _removeInheritingScene:self];

    if (sceneCopy == self)
    {
      v7 = 0;
    }

    else
    {
      v7 = sceneCopy;
    }

    v8 = objc_storeWeak(&self->_settingsScene, v7);
    [(UIScene *)v7 _addInheritingScene:self];

    [defaultCenter postNotificationName:@"_UISceneDidChangeSettingsSceneNotification" object:self];
  }
}

- (void)_enqueuePostSettingsUpdateResponseBlock:(id)block inPhase:(id)phase
{
  blockCopy = block;
  phaseCopy = phase;
  if ((*(&self->_sceneFlags + 2) & 0x10) != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *v25 = 0;
        _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Attempted to enqueue post settings update response block while processing current response blocks", v25, 2u);
      }
    }

    else
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C370) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Attempted to enqueue post settings update response block while processing current response blocks", buf, 2u);
      }
    }
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v9 = pthread_main_np();
  if (has_internal_diagnostics)
  {
    if (v9 != 1)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *v23 = 0;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Attempting to enqueue a post settings update response block from a background thread.", v23, 2u);
      }
    }
  }

  else if (v9 != 1)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49C378) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Attempting to enqueue a post settings update response block from a background thread.", v22, 2u);
    }
  }

  postSettingsUpdateResponseBlocks = self->_postSettingsUpdateResponseBlocks;
  if (postSettingsUpdateResponseBlocks)
  {
    v11 = [(NSMutableDictionary *)postSettingsUpdateResponseBlocks objectForKeyedSubscript:phaseCopy];
    v12 = v11;
    v13 = MEMORY[0x1E695E0F0];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = _Block_copy(blockCopy);
    v16 = [v14 arrayByAddingObject:v15];

    [(NSMutableDictionary *)self->_postSettingsUpdateResponseBlocks setObject:v16 forKeyedSubscript:phaseCopy];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_emitSceneSettingsUpdateResponseForCompletion:(id)completion afterSceneUpdateWork:(id)work
{
  v46 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  workCopy = work;
  objc_initWeak(&location, self);
  postSettingsUpdateResponseBlocks = self->_postSettingsUpdateResponseBlocks;
  if (!postSettingsUpdateResponseBlocks)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = self->_postSettingsUpdateResponseBlocks;
    self->_postSettingsUpdateResponseBlocks = dictionary;
  }

  if (workCopy)
  {
    v11 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = _UISetCurrentFallbackEnvironment(self);
      workCopy[2](workCopy);
      _UIRestorePreviousFallbackEnvironment(v13);
    }

    else
    {
      workCopy[2](workCopy);
    }
  }

  v14 = MEMORY[0x1E695E0F0];
  if (!postSettingsUpdateResponseBlocks)
  {
    v15 = self->_postSettingsUpdateResponseBlocks;
    v16 = self->_postSettingsUpdateResponseBlocks;
    self->_postSettingsUpdateResponseBlocks = 0;

    *&self->_sceneFlags |= 0x100000u;
    v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"_UIScenePostSettingsUpdateResponsePhaseDefault"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v18)
    {
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v17);
          }

          (*(*(*(&v41 + 1) + 8 * i) + 16))();
        }

        v18 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v18);
    }

    v21 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"_UIScenePostSettingsUpdateResponsePhaseSnapshot"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v22)
    {
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v21);
          }

          (*(*(*(&v41 + 1) + 8 * j) + 16))();
        }

        v22 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v22);
    }

    v25 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"_UIScenePostSettingsUpdateResponsePhaseContextMutation"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v26)
    {
      v27 = *v42;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(v25);
          }

          (*(*(*(&v41 + 1) + 8 * k) + 16))();
        }

        v26 = [v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v26);
    }

    v29 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"_UIScenePostSettingsUpdateResponsePhaseScreenDisconnect"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v30)
    {
      v31 = *v42;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(v29);
          }

          (*(*(*(&v41 + 1) + 8 * m) + 16))();
        }

        v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v30);
    }

    *&self->_sceneFlags &= ~0x100000u;
    v33 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"_UIScenePostSettingsUpdateResponsePhaseAfterCommit"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v14;
    }

    v14 = v35;
  }

  v36 = UIApp;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __78__UIScene__emitSceneSettingsUpdateResponseForCompletion_afterSceneUpdateWork___block_invoke;
  v38[3] = &unk_1E70F35B8;
  v38[4] = self;
  v37 = v14;
  v39 = v37;
  [v36 _performBlockAfterCATransactionCommits:v38];

  objc_destroyWeak(&location);
}

void __78__UIScene__emitSceneSettingsUpdateResponseForCompletion_afterSceneUpdateWork___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 208) |= 0x100000u;
  v2 = *(a1 + 40);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 208) &= ~0x100000u;
}

- (void)_guardedSetOverrideSettings:(id)settings
{
  settingsCopy = settings;
  if ((*(&self->_sceneFlags + 2) & 8) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIScene.m" lineNumber:1953 description:@"Attempted to set an override settings outside _enableOverrideSettingsForActions:"];
  }

  overrideSettings = self->_overrideSettings;
  self->_overrideSettings = settingsCopy;

  if ([(UIScene *)self _hostsWindows])
  {
    selfCopy = self;
    _effectiveSettings = [(UIScene *)selfCopy _effectiveSettings];
    _UIWindowHostingScenePerformUpdateWithEffectiveSettings(selfCopy, _effectiveSettings);
  }
}

- (void)_enableOverrideSettingsForActions:(id)actions
{
  *&self->_sceneFlags |= 0x80000u;
  (*(actions + 2))(actions, self);
  *&self->_sceneFlags &= ~0x80000u;
  overrideSettings = self->_overrideSettings;
  self->_overrideSettings = 0;

  _hostsWindows = [(UIScene *)self _hostsWindows];
  if (self && _hostsWindows)
  {
    selfCopy = self;
    _effectiveSettings = [(UIScene *)selfCopy _effectiveSettings];
    _UIWindowHostingScenePerformUpdateWithEffectiveSettings(selfCopy, _effectiveSettings);
  }
}

- (void)_applyOverrideSettings:(id)settings forActions:(id)actions
{
  settingsCopy = settings;
  actionsCopy = actions;
  if (settingsCopy)
  {
    [(UIScene *)self _guardedSetOverrideSettings:settingsCopy];
  }

  else if ((*(&self->_sceneFlags + 2) & 8) != 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Attempted to perform actions without override settings within _enableOverrideSettingsForActions! This is probably a visiual glitch, please explicitly specify settings for these actions!", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_applyOverrideSettings_forActions____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Attempted to perform actions without override settings within _enableOverrideSettingsForActions! This is probably a visiual glitch, please explicitly specify settings for these actions!", v10, 2u);
      }
    }
  }

  actionsCopy[2](actionsCopy, self);
}

- (void)_performSystemSnapshotWithActions:(id)actions
{
  v4 = MEMORY[0x1E696AD88];
  actionsCopy = actions;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter postNotificationName:@"UISceneWillBeginSystemSnapshotSequence" object:self];
  [(UIScene *)self _enableOverrideSettingsForActions:actionsCopy];

  [defaultCenter postNotificationName:@"UISceneDidCompleteSystemSnapshotSequence" object:self];
}

+ (int64_t)_activationStateFromSceneSettings:(id)settings
{
  settingsCopy = settings;
  v4 = settingsCopy;
  if (settingsCopy)
  {
    if (_UISceneLifecycleStateIsSEO(settingsCopy))
    {
      underLock = [v4 underLock];
    }

    else
    {
      underLock = 0;
    }

    if (([v4 isForeground] & 1) != 0 || !(underLock & 1 | ((_UISceneLifecycleStateIsSEO(v4) & 1) == 0)))
    {
      v6 = ([v4 deactivationReasons] & 0xFFFFFFFFFFFFFEFFLL) != 0;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (BOOL)_isRunningInTaskSwitcher
{
  _effectiveSettings = [(UIScene *)self _effectiveSettings];
  v3 = ([_effectiveSettings deactivationReasons] >> 3) & 1;

  return v3;
}

- (BOOL)_isSuspendedUnderLock
{
  _effectiveSettings = [(UIScene *)self _effectiveSettings];
  underLock = [_effectiveSettings underLock];

  return underLock;
}

- (void)scene:(id)scene didUpdateWithDiff:(id)diff transitionContext:(id)context completion:(id)completion
{
  sceneCopy = scene;
  diffCopy = diff;
  contextCopy = context;
  completionCopy = completion;
  if (([UIApp _hasCalledRunWithMainScene] & 1) == 0 && scene_didUpdateWithDiff_transitionContext_completion__once != -1)
  {
    dispatch_once(&scene_didUpdateWithDiff_transitionContext_completion__once, &__block_literal_global_216);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__UIScene_scene_didUpdateWithDiff_transitionContext_completion___block_invoke_218;
  v20[3] = &unk_1E70F4378;
  v20[4] = self;
  v15 = sceneCopy;
  v21 = v15;
  v16 = diffCopy;
  v22 = v16;
  v17 = contextCopy;
  v23 = v17;
  v24 = a2;
  [(UIScene *)self _emitSceneSettingsUpdateResponseForCompletion:completionCopy afterSceneUpdateWork:v20];
  if (completionCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__UIScene_scene_didUpdateWithDiff_transitionContext_completion___block_invoke_2;
    v18[3] = &unk_1E70F0F78;
    v19 = completionCopy;
    [(UIScene *)self _scheduleSceneEventResponseWithResponseBlock:v18];
  }
}

void __64__UIScene_scene_didUpdateWithDiff_transitionContext_completion___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("ApplicationLifecycle", &_UISceneComponentKeynameKey_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_FAULT, "Invalid system behavior. A scene update was received prior to finishing initial application activation.", v1, 2u);
  }
}

void __64__UIScene_scene_didUpdateWithDiff_transitionContext_completion___block_invoke_218(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  *(*(a1 + 32) + 208) |= 0x200000u;
  v2 = *(*(a1 + 32) + 200);
  v3 = [*(a1 + 40) settings];
  v4 = *(a1 + 48);
  v5 = [v2 displayIdentity];
  v6 = [*(a1 + 40) settings];
  v7 = [v6 displayConfiguration];

  if (v4)
  {
    v8 = [v7 identity];
    v9 = [v5 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 32) _noteDisplayIdentityDidChangeWithConfiguration:v7];
    }
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 56) actions];
  v12 = [v10 _actionsWithSubstitutionsForTransitionActions:v11 forFBSScene:*(a1 + 40) fromTransitionContext:*(a1 + 56)];

  [*(a1 + 32) scene:*(a1 + 40) didReceiveActions:v12 fromTransitionContext:*(a1 + 56)];
  if (v2)
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "interfaceOrientation")}];
    [v13 _setCachedInterfaceOrientation:v15];

    v7 = v14;
  }

  v29 = v12;
  v30 = v7;
  if ([v3 isUISubclass])
  {
    v16 = [objc_opt_class() _activationStateFromSceneSettings:v2];
    v17 = [objc_opt_class() _activationStateFromSceneSettings:v3];
    v18 = _UISceneLifecycleCompositeActionMaskHighestLifecycleActionType(_UISceneLifecycleCompositeActionMaskFromStateToState__staticStateMap[4 * v16 + 5 + v17]);
  }

  else
  {
    v18 = 0;
  }

  v31 = v5;
  v19 = *(a1 + 56);
  if (v19 && ([v19 isUISubclass] & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"UIScene.m" lineNumber:2178 description:{@"transitionContext is of an unexpected class : %@", *(a1 + 56), v12, v30, v5}];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [*(a1 + 32) _settingsDiffActions];
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v32 + 1) + 8 * i) _performActionsForUIScene:*(a1 + 32) withUpdatedFBSScene:*(a1 + 40) settingsDiff:*(a1 + 48) fromSettings:v2 transitionContext:*(a1 + 56) lifecycleActionType:v18];
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  v25 = *(a1 + 32);
  v26 = *(v25 + 200);
  *(v25 + 200) = v3;
  v27 = v3;

  [*(a1 + 32) _setCachedInterfaceOrientation:0];
  *(*(a1 + 32) + 208) &= ~0x200000u;

  kdebug_trace();
}

void __64__UIScene_scene_didUpdateWithDiff_transitionContext_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E699FCE8]);
  (*(v1 + 16))(v1, v2);
}

- (void)_setShouldHoldSceneEventResponses:(BOOL)responses
{
  v5 = _holdSceneEventResponsesQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__UIScene__setShouldHoldSceneEventResponses___block_invoke;
  v6[3] = &unk_1E70F35E0;
  responsesCopy = responses;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

void __45__UIScene__setShouldHoldSceneEventResponses___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  if (v2 == 1)
  {
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      v6 = *(a1 + 32);
      v7 = *(v6 + 216);
      *(v6 + 216) = v5;
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__UIScene__setShouldHoldSceneEventResponses___block_invoke_2;
    v10[3] = &unk_1E70F43A0;
    v10[4] = v3;
    [v4 enumerateObjectsUsingBlock:v10];
    v8 = *(a1 + 32);
    v9 = *(v8 + 216);
    *(v8 + 216) = 0;
  }
}

void __45__UIScene__setShouldHoldSceneEventResponses___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = UIApp;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _FBSScene];
  [v2 _scheduleSceneEventResponseForScene:v5 withResponseBlock:v4];
}

- (void)_scheduleSceneEventResponseWithResponseBlock:(id)block
{
  blockCopy = block;
  v5 = _holdSceneEventResponsesQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__UIScene__scheduleSceneEventResponseWithResponseBlock___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(v5, v7);
}

void __56__UIScene__scheduleSceneEventResponseWithResponseBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[27];
  if (v3)
  {
    v5 = _Block_copy(*(a1 + 40));
    [v3 addObject:?];
  }

  else
  {
    v4 = UIApp;
    v5 = [v2 _FBSScene];
    [v4 _scheduleSceneEventResponseForScene:? withResponseBlock:?];
  }
}

- (void)_prepareCommonStateForActionRespondingFromTransitionContext:(id)context
{
  contextCopy = context;
  isUISubclass = [contextCopy isUISubclass];
  v4 = contextCopy;
  if (isUISubclass)
  {
    pasteSharingToken = [contextCopy pasteSharingToken];
    if (pasteSharingToken)
    {
      [UIPasteboard setPasteSharingTokenFromOpenURL:pasteSharingToken];
    }

    v4 = contextCopy;
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  v6 = UIApp;
  actionsCopy = actions;
  sceneCopy = scene;
  if (([v6 _hasCalledRunWithMainScene] & 1) == 0 && scene_didReceiveActions__once != -1)
  {
    dispatch_once(&scene_didReceiveActions__once, &__block_literal_global_227);
  }

  kdebug_trace();
  [(UIScene *)self scene:sceneCopy didReceiveActions:actionsCopy fromTransitionContext:0];

  kdebug_trace();
}

void __35__UIScene_scene_didReceiveActions___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("ApplicationLifecycle", &_UISceneComponentKeynameKey_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_FAULT, "Invalid system behavior. Scene actions were received prior to finishing initial application activation.", v1, 2u);
  }
}

- (void)scene:(id)scene didReceiveActions:(id)actions fromTransitionContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  actionsCopy = actions;
  contextCopy = context;
  if ([actionsCopy count])
  {
    [(UIScene *)self _prepareCommonStateForActionRespondingFromTransitionContext:contextCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _sceneBSActionResponders = [(UIScene *)self _sceneBSActionResponders];
    v12 = [_sceneBSActionResponders countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
LABEL_4:
      v15 = 0;
      v16 = actionsCopy;
      while (1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(_sceneBSActionResponders);
        }

        actionsCopy = [*(*(&v17 + 1) + 8 * v15) _respondToActions:v16 forFBSScene:sceneCopy inUIScene:self fromTransitionContext:contextCopy];

        if (![actionsCopy count])
        {
          break;
        }

        ++v15;
        v16 = actionsCopy;
        if (v13 == v15)
        {
          v13 = [_sceneBSActionResponders countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIScene *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIScene *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  _hostsWindows = [(UIScene *)self _hostsWindows];
  session = [(UIScene *)self session];
  v8 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v8 setActiveMultilinePrefix:prefixCopy];

  role = [session role];
  [v8 appendString:role withName:@"role"];

  activationState = [(UIScene *)self activationState];
  if (activationState > UISceneActivationStateBackground)
  {
    v11 = @"UISceneActivationStateUnattached";
  }

  else
  {
    v11 = off_1E70F4500[activationState];
  }

  [v8 appendString:v11 withName:@"activationState"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__UIScene_descriptionBuilderWithMultilinePrefix___block_invoke;
  v18[3] = &unk_1E70F43C8;
  v12 = v8;
  v22 = has_internal_diagnostics;
  v19 = v12;
  selfCopy = self;
  v21 = session;
  v23 = _hostsWindows;
  v13 = session;
  v14 = [v12 modifyBody:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

void __49__UIScene_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UIScene_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v7[3] = &unk_1E70F43C8;
  v11 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 57);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v7];
}

void __49__UIScene_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 activeMultilinePrefix];
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __49__UIScene_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v49 = &unk_1E70F35B8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v50 = v4;
    v51 = v5;
    [v2 appendBodySectionWithName:@"flags" multilinePrefix:v3 block:&v46];

    v6 = [*(a1 + 40) _FBSScene];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) _FBSScene];
    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v8, v46, v47, v48, v49];
    }

    else
    {
      v12 = @"(nil)";
    }

    v13 = [v7 appendObject:v12 withName:@"fbsScene"];

    v14 = *(a1 + 32);
    v15 = [v6 identifier];
    [v14 appendString:v15 withName:@"fbsScene.identifier"];

    if ([*(a1 + 40) _hasSettingsScene])
    {
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) _settingsScene];
      if (v17)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v18 stringWithFormat:@"<%@: %p>", v20, v17];
      }

      else
      {
        v21 = @"(nil)";
      }

      v22 = [v16 appendObject:v21 withName:@"settingsScene"];
    }

    v23 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 232) withName:@"remoteContentRegistry" skipIfNil:1];
  }

  v24 = [*(a1 + 32) activeMultilinePrefix];
  v25 = *(a1 + 48);
  v26 = [MEMORY[0x1E698E680] builderWithObject:v25];
  [v26 setActiveMultilinePrefix:v24];
  v27 = [v25 persistentIdentifier];
  [v26 appendString:v27 withName:@"persistentIdentifier"];

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = ___UISceneSessionDescriptionWithMultilinePrefix_block_invoke;
  v52[3] = &unk_1E70F35B8;
  v53 = v26;
  v54 = v25;
  v28 = v26;
  v29 = v25;
  v30 = [v28 modifyBody:v52];
  v31 = [v28 build];

  v32 = [*(a1 + 32) appendObject:v31 withName:@"session"];
  v33 = *(a1 + 32);
  v34 = [*(a1 + 40) delegate];
  if (v34)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v35 stringWithFormat:@"<%@: %p>", v37, v34];
  }

  else
  {
    v38 = @"(nil)";
  }

  v39 = [v33 appendObject:v38 withName:@"delegate"];

  [*(a1 + 40) _addSubclassDebugDescriptionWithBuilder:*(a1 + 32)];
  if (*(a1 + 57) == 1)
  {
    v40 = *(a1 + 40);
    v41 = *(a1 + 32);
    v42 = [v40 _screen];
    v43 = [v41 appendObject:v42 withName:@"screen"];

    if (*(a1 + 56))
    {
      [v40 _allWindows];
    }

    else
    {
      [v40 _windows];
    }
    v44 = ;
    v45 = [v44 sortedArrayUsingFunction:_UIWindowCompareWindowsUsingLevel context:0];

    [*(a1 + 32) appendArraySection:v45 withName:@"windows" skipIfEmpty:1];
  }
}

uint64_t __49__UIScene_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 208) >> 10) & 1 withName:@"isInternal"];
  v3 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 208) >> 18) & 1 withName:@"hasInvalidated"];
  v4 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 208) >> 25) & 1 withName:@"isSystemKeyboardFocused"];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v5 _addSubclassFlagsToDebugDescriptionWithBuilder:v6];
}

- (id)_actionsWithSubstitutionsForTransitionActions:(id)actions forFBSScene:(id)scene fromTransitionContext:(id)context
{
  v41 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  contextCopy = context;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = actionsCopy;
  v29 = [actionsCopy countByEnumeratingWithState:&v35 objects:v40 count:16];
  v11 = 0;
  if (v29)
  {
    v28 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        flattenedBSActionSubstitutionProvidersByActionType = self->_flattenedBSActionSubstitutionProvidersByActionType;
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "UIActionType")}];
        v16 = [(NSDictionary *)flattenedBSActionSubstitutionProvidersByActionType objectForKey:v15];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v30 = v11;
          v20 = *v32;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v31 + 1) + 8 * j) _substituteActionsForAction:v13 forFBSScene:sceneCopy inUIScene:self fromTransitionContext:contextCopy];
              if (v22)
              {
                v23 = v22;
                v11 = v30;
                if (!v30)
                {
                  v11 = [obj mutableCopy];
                }

                [v11 removeObject:v13];
                [v11 unionSet:v23];

                goto LABEL_18;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v11 = v30;
        }

LABEL_18:
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = obj;
  }

  v25 = v24;

  return v24;
}

- (void)_removeInheritingScene:(id)scene
{
  sceneCopy = scene;
  inheritingScenes = self->_inheritingScenes;
  if ([(NSPointerArray *)inheritingScenes count])
  {
    v5 = 0;
    while ([(NSPointerArray *)inheritingScenes pointerAtIndex:v5]!= sceneCopy)
    {
      if (++v5 >= [(NSPointerArray *)inheritingScenes count])
      {
        goto LABEL_8;
      }
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)inheritingScenes removePointerAtIndex:v5];
    }
  }

LABEL_8:
}

- (id)mainMenu
{
  _FBSScene = [(UIScene *)self _FBSScene];
  mainMenu = [_FBSScene mainMenu];

  return mainMenu;
}

- (id)_eventDeferringComponent
{
  _FBSScene = [(UIScene *)self _FBSScene];
  _eventDeferringComponent = [_FBSScene _eventDeferringComponent];

  return _eventDeferringComponent;
}

- (void)_getDefaultAudioSessionFromMainThreadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(UIScene *)self _sceneComponentForKey:@"_MRUIAudioSessionSceneComponentKey"];
  v6 = dispatch_get_global_queue(25, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__UIScene_AVAudioSession___getDefaultAudioSessionFromMainThreadWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E70F4A50;
  v10 = v5;
  v11 = handlerCopy;
  v7 = v5;
  v8 = handlerCopy;
  dispatch_async(v6, v9);
}

void __86__UIScene_AVAudioSession___getDefaultAudioSessionFromMainThreadWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v2 && (v3 = NSSelectorFromString(&cfstr_Defaultaudiose.isa), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = [v2 performSelector:v3];
  }

  else
  {
    v4 = 0;
  }

  (*(v1 + 16))(v1, v4);
}

- (void)getDefaultAudioSessionWithCompletionHandler:(void *)handler
{
  v4 = handler;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(UIScene *)self _getDefaultAudioSessionFromMainThreadWithCompletionHandler:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__UIScene_AVAudioSession__getDefaultAudioSessionWithCompletionHandler___block_invoke;
    block[3] = &unk_1E71036E8;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __71__UIScene_AVAudioSession__getDefaultAudioSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _getDefaultAudioSessionFromMainThreadWithCompletionHandler:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (UIPointerLockState)pointerLockState
{
  if (_UIPointerLockStateIsAvailableForScene(self))
  {
    v3 = [(UIScene *)self _sceneComponentForKey:@"_UIPointerLockStateSceneComponentKey"];
    if (!v3)
    {
      v3 = [[UIPointerLockState alloc] initWithScene:self];
      [(UIScene *)self _registerSceneComponent:v3 forKey:@"_UIPointerLockStateSceneComponentKey"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UISystemIconAppearanceSceneComponent)_systemIconAppearanceSceneComponent
{
  v3 = [(UIScene *)self _sceneComponentForKey:@"_UISystemIconAppearanceSceneComponentKey"];
  if (!v3)
  {
    v3 = [[_UISystemIconAppearanceSceneComponent alloc] initWithScene:self];
    [(UIScene *)self _registerSceneComponent:v3 forKey:@"_UISystemIconAppearanceSceneComponentKey"];
  }

  return v3;
}

- (id)carPlaySession
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (_UIKeyWindowSceneObserver)_keyWindowSceneObserver
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _UIKeyWindowSceneObserverForScene(self);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIRenderingEnvironmentSceneComponent)_renderingEnvironmentSceneComponentRegisteringIfNecessary:(void *)necessary
{
  if (necessary)
  {
    v4 = [necessary _sceneComponentForKey:_UIRenderingEnvironmentSceneComponentKey];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 == 0;
    }

    if (!v5)
    {
      v4 = [[_UIRenderingEnvironmentSceneComponent alloc] initWithScene:necessary];
      [necessary _registerSceneComponent:v4 forKey:_UIRenderingEnvironmentSceneComponentKey];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_UISceneDestructionClientComponent)_sceneDestructionClientComponent
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (id)focusSystemManager
{
  _FBSScene = [(UIScene *)self _FBSScene];
  focusSystemManager = [_FBSScene focusSystemManager];

  return focusSystemManager;
}

- (id)systemShellHostingEnvironment
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (void)_extendStateRestoration
{
  v4 = _extendStateRestorationQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__UIScene__UISceneEnhancedStateRestoration_Private___extendStateRestoration__block_invoke;
  v5[3] = &unk_1E70F32F0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void __76__UIScene__UISceneEnhancedStateRestoration_Private___extendStateRestoration__block_invoke(uint64_t a1)
{
  v2 = _sceneToCount;
  if (!_sceneToCount)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v4 = _sceneToCount;
    _sceneToCount = v3;

    v2 = _sceneToCount;
  }

  v5 = [v2 objectForKey:*(a1 + 32)];
  v6 = [v5 integerValue];

  v7 = _sceneToCount;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6 + 1];
  [v7 setObject:v8 forKey:*(a1 + 32)];

  if (!v6)
  {
    kdebug_trace();
    v10 = [_UISceneUserActivityManager _userActivityManagerForScene:*(a1 + 32)];
    if ([v10 _initialRestorationIsFinished])
    {
      if ([v10 _initialRestorationIsFinished])
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UISceneEnhancedStateRestoration.m" lineNumber:50 description:@"Attempt to extend state restoration made after restoration is finalized."];
      }
    }

    else
    {
      [*(a1 + 32) _setShouldHoldSceneEventResponses:1];
    }
  }
}

- (void)_completeStateRestoration
{
  v4 = _extendStateRestorationQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__UIScene__UISceneEnhancedStateRestoration_Private___completeStateRestoration__block_invoke;
  v5[3] = &unk_1E70F32F0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void __78__UIScene__UISceneEnhancedStateRestoration_Private___completeStateRestoration__block_invoke(uint64_t a1)
{
  v2 = [_sceneToCount objectForKey:*(a1 + 32)];
  v3 = [v2 integerValue];

  if (v3 <= 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UISceneEnhancedStateRestoration.m" lineNumber:61 description:@"UIScene._completeStateRestoration called without corresponding call toUIScene._extendStateRestoration"];

    goto LABEL_3;
  }

  if (v3 != 1)
  {
LABEL_3:
    v4 = _sceneToCount;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v4 setObject:v7 forKey:*(a1 + 32)];

    return;
  }

  [_sceneToCount removeObjectForKey:*(a1 + 32)];
  if (![_sceneToCount count])
  {
    v5 = _sceneToCount;
    _sceneToCount = 0;
  }

  [*(a1 + 32) _setShouldHoldSceneEventResponses:0];

  kdebug_trace();
}

@end