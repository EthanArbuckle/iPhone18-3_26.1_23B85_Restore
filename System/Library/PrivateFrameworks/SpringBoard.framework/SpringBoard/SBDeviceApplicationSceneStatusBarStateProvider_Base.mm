@interface SBDeviceApplicationSceneStatusBarStateProvider_Base
- (BOOL)_statusBarAppearsOutsideOfAJailedApp;
- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)orientation;
- (BOOL)_suppressInheritedPartStyles;
- (BOOL)sceneWantsDeviceOrientationEventsEnabled;
- (BOOL)statusBarHidden;
- (CGRect)statusBarAvoidanceFrame;
- (FBScene)sceneToHandleStatusBarTapIfExists;
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)statusBarSceneIdentifier;
- (SBDeviceApplicationSceneHandle)classicApplicationSceneHandleIfExists;
- (SBDeviceApplicationSceneStatusBarBreadcrumbProvider)breadcrumbProvider;
- (SBDeviceApplicationSceneStatusBarStateProvider_Base)init;
- (_UIStatusBarData)overlayStatusBarData;
- (double)_statusBarAlpha;
- (double)statusBarAlpha;
- (id)_allObservers;
- (id)_statusBarPartStyles;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)statusBarPartStyles;
- (id)succinctDescription;
- (int64_t)_defaultStatusBarStyle;
- (int64_t)_fallbackInterfaceOrientation;
- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation;
- (int64_t)_statusBarStyle;
- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited;
- (int64_t)defaultStatusBarStyle;
- (int64_t)statusBarOrientation;
- (int64_t)statusBarStyle;
- (int64_t)statusBarStyleForPartWithIdentifier:(id)identifier;
- (void)addStatusBarObserver:(id)observer;
- (void)enumerateObserversWithBlock:(id)block;
- (void)removeStatusBarObserver:(id)observer;
@end

@implementation SBDeviceApplicationSceneStatusBarStateProvider_Base

- (int64_t)statusBarStyle
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    return 1;
  }

  return [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarStyle];
}

- (int64_t)statusBarOrientation
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    if (__sb__runningInSpringBoard())
    {
      if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
      {
        return 1;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        return 1;
      }
    }
  }

  _fallbackInterfaceOrientation = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _fallbackInterfaceOrientation];

  return [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarOrientationGivenFallbackOrientation:_fallbackInterfaceOrientation];
}

- (int64_t)defaultStatusBarStyle
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    return 1;
  }

  return [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _defaultStatusBarStyle];
}

- (double)statusBarAlpha
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    return 1.0;
  }

  [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAlpha];
  return result;
}

- (BOOL)statusBarHidden
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    return 0;
  }

  _fallbackInterfaceOrientation = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _fallbackInterfaceOrientation];

  return [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarHiddenGivenFallbackOrientation:_fallbackInterfaceOrientation];
}

- (id)statusBarPartStyles
{
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    _statusBarPartStyles = 0;
  }

  else
  {
    _statusBarPartStyles = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarPartStyles];
  }

  return _statusBarPartStyles;
}

- (SBDeviceApplicationSceneStatusBarStateProvider_Base)init
{
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneStatusBarStateProvider_Base;
  v2 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    observers = v2->_observers;
    v2->_observers = array;
  }

  return v2;
}

- (void)addStatusBarObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__SBDeviceApplicationSceneStatusBarStateProvider_Base_addStatusBarObserver___block_invoke;
    v9[3] = &unk_2783B1590;
    v7 = observerCopy;
    v10 = v7;
    if (([(NSMutableArray *)observers bs_containsObjectPassingTest:v9]& 1) == 0)
    {
      v8 = [[_SBDeviceApplicationSceneStatusBarStateProviderObserverRecord alloc] initWithObserver:v7 andFlags:_SBDeviceApplicationSceneStatusBarStateObserverFlagsForObserver(v7)];
      [(NSMutableArray *)self->_observers addObject:v8];
    }
  }
}

- (void)removeStatusBarObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBDeviceApplicationSceneStatusBarStateProvider_Base_removeStatusBarObserver___block_invoke;
  v8[3] = &unk_2783B1590;
  v6 = observerCopy;
  v9 = v6;
  v7 = [(NSMutableArray *)observers bs_firstObjectPassingTest:v8];
  if (v7)
  {
    [(NSMutableArray *)self->_observers removeObject:v7];
  }
}

- (void)enumerateObserversWithBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v7 = [(NSMutableArray *)self->_observers copy];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          observer = [v12 observer];
          flags = [v12 flags];
          if (observer)
          {
            v3 = v3 & 0xFFFFFFFF00000000 | flags;
            blockCopy[2](blockCopy, observer, v3);
          }

          else
          {
            [array addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)selfCopy->_observers removeObjectsInArray:array];
  }
}

- (int64_t)statusBarStyleForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarAppearsOutsideOfAJailedApp])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _statusBarStyleForPartWithIdentifier:identifierCopy suppressingInherited:0];
  }

  return v5;
}

- (NSSet)backgroundActivitiesToSuppress
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:142 description:@"subclasses must override!"];

  v5 = MEMORY[0x277CBEB98];

  return [v5 set];
}

- (CGRect)statusBarAvoidanceFrame
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:148 description:@"subclasses must override!"];

  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)sceneWantsDeviceOrientationEventsEnabled
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:154 description:@"subclasses must override!"];

  return 0;
}

- (_UIStatusBarData)overlayStatusBarData
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:159 description:@"subclasses must override!"];

  return 0;
}

- (SBDeviceApplicationSceneStatusBarBreadcrumbProvider)breadcrumbProvider
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:164 description:@"subclasses must override!"];

  return 0;
}

- (NSString)statusBarSceneIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:169 description:@"subclasses must override!"];

  return 0;
}

- (SBDeviceApplicationSceneHandle)classicApplicationSceneHandleIfExists
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:174 description:@"subclasses must override!"];

  return 0;
}

- (FBScene)sceneToHandleStatusBarTapIfExists
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:179 description:@"subclasses must override!"];

  return 0;
}

- (int64_t)_statusBarStyle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:186 description:@"subclasses must override!"];

  return 4;
}

- (int64_t)_defaultStatusBarStyle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:191 description:@"subclasses must override!"];

  return 4;
}

- (id)_statusBarPartStyles
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:196 description:@"subclasses must override!"];

  return 0;
}

- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:201 description:@"subclasses must override!"];

  return 4;
}

- (double)_statusBarAlpha
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:206 description:@"subclasses must override!"];

  return 0.0;
}

- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)orientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:211 description:@"subclasses must override!"];

  return 0;
}

- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:216 description:@"subclasses must override!"];

  return 0;
}

- (BOOL)_suppressInheritedPartStyles
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:221 description:@"subclasses must override!"];

  return 0;
}

- (BOOL)_statusBarAppearsOutsideOfAJailedApp
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:226 description:@"subclasses must override!"];

  return 0;
}

- (int64_t)_fallbackInterfaceOrientation
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSceneStatusBarStateProvider_Base.m" lineNumber:231 description:@"subclasses must override!"];

  return 0;
}

- (id)_allObservers
{
  _observerRecords = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self _observerRecords];
  v3 = [_observerRecords bs_map:&__block_literal_global_97];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__SBDeviceApplicationSceneStatusBarStateProvider_Base_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

@end