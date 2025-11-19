@interface SBMainDisplayInterfaceOrientationAggregator
- (NSArray)interfaceOrientationSources;
- (SBMainDisplayInterfaceOrientationAggregator)init;
- (id)_highestSourceAtOrBelow:(double)a3 amongSources:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)highestActiveInterfaceOrientationSourceBelow:(double)a3;
- (id)highestActiveInterfaceOrientationSourceIgnoringSourcesAbove:(double)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_layoutOrientation;
- (int64_t)activeInterfaceOrientationAtOrBelow:(double)a3;
- (int64_t)activeInterfaceOrientationBelow:(double)a3;
- (void)dealloc;
@end

@implementation SBMainDisplayInterfaceOrientationAggregator

- (SBMainDisplayInterfaceOrientationAggregator)init
{
  v9.receiver = self;
  v9.super_class = SBMainDisplayInterfaceOrientationAggregator;
  v2 = [(SBMainDisplayInterfaceOrientationAggregator *)&v9 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v7, &location);
    v4 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandle = v2->_stateCaptureHandle;
    v2->_stateCaptureHandle = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

id __51__SBMainDisplayInterfaceOrientationAggregator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureHandle invalidate];
  v3.receiver = self;
  v3.super_class = SBMainDisplayInterfaceOrientationAggregator;
  [(SBMainDisplayInterfaceOrientationAggregator *)&v3 dealloc];
}

- (NSArray)interfaceOrientationSources
{
  v3 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v4 = [v3 bs_objectsOfClass:objc_opt_class()];

  v5 = [v4 mutableCopy];
  [(SBMainDisplayInterfaceOrientationAggregator *)self _sortSources:v5];

  return v5;
}

- (int64_t)activeInterfaceOrientationBelow:(double)a3
{
  v3 = [(SBMainDisplayInterfaceOrientationAggregator *)self highestActiveInterfaceOrientationSourceBelow:a3];
  v4 = [v3 activeInterfaceOrientation];

  return v4;
}

- (int64_t)activeInterfaceOrientationAtOrBelow:(double)a3
{
  v3 = [(SBMainDisplayInterfaceOrientationAggregator *)self highestActiveInterfaceOrientationSourceIgnoringSourcesAbove:a3];
  v4 = [v3 activeInterfaceOrientation];

  return v4;
}

- (id)highestActiveInterfaceOrientationSourceIgnoringSourcesAbove:(double)a3
{
  v5 = [(SBMainDisplayInterfaceOrientationAggregator *)self interfaceOrientationSources];
  v6 = [(SBMainDisplayInterfaceOrientationAggregator *)self _highestSourceAtOrBelow:v5 amongSources:a3];

  return v6;
}

- (id)highestActiveInterfaceOrientationSourceBelow:(double)a3
{
  v4 = a3 + -0.01;
  v5 = [(SBMainDisplayInterfaceOrientationAggregator *)self interfaceOrientationSources];
  v6 = [(SBMainDisplayInterfaceOrientationAggregator *)self _highestSourceAtOrBelow:v5 amongSources:v4];

  return v6;
}

- (int64_t)_layoutOrientation
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];
  v4 = [v3 switcherController];
  v5 = [v4 layoutState];
  v6 = [v5 interfaceOrientation];

  return v6;
}

uint64_t __60__SBMainDisplayInterfaceOrientationAggregator__sortSources___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 orientationSourceLevel];
  v6 = v5;
  [v4 orientationSourceLevel];
  v8 = v7;

  v9 = -1;
  if (v8 <= v6)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (id)_highestSourceAtOrBelow:(double)a3 amongSources:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    [v6 orientationSourceLevel];
    v8 = v7;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          [v14 orientationSourceLevel];
          v16 = v15;
          if ([v14 isActive])
          {
            v17 = v16 < v8;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 <= a3)
          {
            v19 = v14;

            v6 = v19;
            v8 = v16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(SBMainDisplayInterfaceOrientationAggregator *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [SBApp activeInterfaceOrientation];
  v3 = BSInterfaceOrientationDescription();
  v4 = [v2 appendObject:v3 withName:@"orientation"];

  return v2;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBMainDisplayInterfaceOrientationAggregator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBMainDisplayInterfaceOrientationAggregator *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) interfaceOrientationSources];
  v4 = [v3 valueForKey:@"orientationSourceDescription"];
  v5 = [*(a1 + 32) activeMultilinePrefix];
  [v2 appendArraySection:v4 withName:@"active orientation sources" multilinePrefix:v5 skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [v6 activeMultilinePrefix];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v30[3] = &unk_2783A92D8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v31 = v8;
  v32 = v9;
  [v6 appendBodySectionWithName:@"notions of interface orientation" multilinePrefix:v7 block:v30];

  v10 = *(a1 + 32);
  v11 = [v10 activeMultilinePrefix];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v28[3] = &unk_2783A8C18;
  v29 = *(a1 + 32);
  [v10 appendBodySectionWithName:@"notions of device orientation" multilinePrefix:v11 block:v28];

  v12 = objc_opt_class();
  v13 = +[SBUIController sharedInstance];
  v14 = [v13 window];
  v15 = [v14 rootViewController];
  v16 = SBSafeCast(v12, v15);

  v17 = *(a1 + 32);
  v18 = [v16 _autorotationPreventionReasons];
  v19 = [*(a1 + 32) activeMultilinePrefix];
  [v17 appendArraySection:v18 withName:@"home screen autorotation prevention reasons" multilinePrefix:v19 skipIfEmpty:1];

  v20 = [*(a1 + 32) appendBool:objc_msgSend(SBApp withName:{"wantsOrientationEvents"), @"springBoardWantsOrientationEvents"}];
  v21 = *(a1 + 32);
  v22 = +[SBOrientationLockManager sharedInstance];
  v23 = [v21 appendObject:v22 withName:@"orientationLockManager"];

  v24 = *(a1 + 32);
  v25 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  v26 = [v25 bs_filter:&__block_literal_global_80_0];
  v27 = [*(a1 + 32) activeMultilinePrefix];
  [v24 appendArraySection:v26 withName:@"disabled main screen active orientation windows" multilinePrefix:v27 skipIfEmpty:1];
}

void __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [SBApp activeInterfaceOrientation];
  v3 = BSInterfaceOrientationDescription();
  v4 = [v2 appendObject:v3 withName:@"activeInterfaceOrientation"];

  v5 = *(a1 + 32);
  [SBApp statusBarOrientationForEmbeddedDisplay];
  v6 = BSInterfaceOrientationDescription();
  v7 = [v5 appendObject:v6 withName:@"statusBarOrientation"];

  v8 = *(a1 + 32);
  SBSystemGestureOrientation();
  v9 = BSInterfaceOrientationDescription();
  v10 = [v8 appendObject:v9 withName:@"systemGestureOrientation"];

  v11 = *(a1 + 32);
  [*(a1 + 40) _layoutOrientation];
  v13 = BSInterfaceOrientationDescription();
  v12 = [v11 appendObject:v13 withName:@"layoutOrientation"];
}

void __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75418] currentDevice];
  [v3 orientation];
  v4 = BSDeviceOrientationDescription();
  v5 = [v2 appendObject:v4 withName:@"uiDeviceOrientation"];

  v6 = *(a1 + 32);
  BKHIDServicesGetNonFlatDeviceOrientation();
  v7 = BSDeviceOrientationDescription();
  v8 = [v6 appendObject:v7 withName:@"bksNonFlatDeviceOrientation"];

  v9 = *(a1 + 32);
  BKHIDServicesGetCurrentDeviceOrientation();
  v10 = BSDeviceOrientationDescription();
  v11 = [v9 appendObject:v10 withName:@"bksCurrentDeviceOrientation"];

  IsOrientationLockedWithOrientation = BKSHIDServicesIsOrientationLockedWithOrientation();
  v13 = *(a1 + 32);
  if (IsOrientationLockedWithOrientation)
  {
    v14 = BSDeviceOrientationDescription();
    v15 = [v13 appendObject:v14 withName:@"bksLockedOrientation"];
  }

  else
  {
    v16 = [v13 appendObject:@"(unlocked)" withName:@"bksLockedOrientation"];
  }
}

uint64_t __85__SBMainDisplayInterfaceOrientationAggregator_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isDisablingInterfaceOrientationChanges];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end