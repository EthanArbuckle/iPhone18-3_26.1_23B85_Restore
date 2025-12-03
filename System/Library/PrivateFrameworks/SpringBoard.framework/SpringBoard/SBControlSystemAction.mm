@interface SBControlSystemAction
- (SBControlSystemAction)initWithConfiguredAction:(id)action instanceIdentity:(id)identity;
- (id)acquireContentVisibilityAssertionForReason:(uint64_t)reason;
- (id)iconView;
- (id)newExecutor;
- (id)newSimplePreviewElement;
- (uint64_t)properties;
- (uint64_t)removeObserver:(uint64_t)result;
- (void)addObserver:(uint64_t)observer;
- (void)controlInstanceDescriptorDidChange:(id)change;
- (void)controlInstanceViewModelDidChange:(id)change;
- (void)dealloc;
- (void)setProperties:(uint64_t)properties;
- (void)type;
@end

@implementation SBControlSystemAction

- (id)newSimplePreviewElement
{
  v3 = [SBSystemActionSimpleControlPreviewElement alloc];

  return [(SBSystemActionSimpleControlPreviewElement *)v3 initWithSystemAction:self];
}

- (SBControlSystemAction)initWithConfiguredAction:(id)action instanceIdentity:(id)identity
{
  actionCopy = action;
  identityCopy = identity;
  v35.receiver = self;
  v35.super_class = SBControlSystemAction;
  v8 = [(SBSystemAction *)&v35 initWithConfiguredAction:actionCopy instanceIdentity:identityCopy];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CFA258]);
    extensionBundleIdentifier = [actionCopy extensionBundleIdentifier];
    containerBundleIdentifier = [actionCopy containerBundleIdentifier];
    v12 = [v9 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

    v13 = objc_alloc(MEMORY[0x277CFA228]);
    kind = [actionCopy kind];
    intent = [actionCopy intent];
    v16 = [v13 initWithExtensionIdentity:v12 kind:kind intent:intent];

    v17 = objc_alloc(MEMORY[0x277CFA230]);
    hostIdentifier = [identityCopy hostIdentifier];
    configurationIdentifier = [identityCopy configurationIdentifier];
    v20 = [v17 initWithControl:v16 contentType:0 hostIdentifier:hostIdentifier configurationIdentifier:configurationIdentifier];

    controlType = [actionCopy controlType];
    unsignedIntegerValue = [controlType unsignedIntegerValue];

    v23 = [MEMORY[0x277CFA528] instanceOfType:unsignedIntegerValue instanceIdentity:v20];
    [v23 modifyConfiguration:&__block_literal_global_245];
    [v23 registerObserver:v8];
    [v23 activate];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __67__SBControlSystemAction_initWithConfiguredAction_instanceIdentity___block_invoke_2;
    v33[3] = &unk_2783BB068;
    v24 = v23;
    v34 = v24;
    v25 = MEMORY[0x223D6F7F0](v33);
    controlInstance = v8->_controlInstance;
    v8->_controlInstance = v24;
    v27 = v24;

    v28 = MEMORY[0x223D6F7F0](v25);
    actionBlock = v8->_actionBlock;
    v8->_actionBlock = v28;

    v30 = [SBControlSystemActionProperties propertiesForControlInstance:v27];
    properties = v8->_properties;
    v8->_properties = v30;
  }

  return v8;
}

void __67__SBControlSystemAction_initWithConfiguredAction_instanceIdentity___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setCanAppearInSecureEnvironment:1];
  [v2 setPreferredColorScheme:2];
  [v2 setLaunchOrigin:*MEMORY[0x277D67060]];
}

void __67__SBControlSystemAction_initWithConfiguredAction_instanceIdentity___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBControlSystemAction_initWithConfiguredAction_instanceIdentity___block_invoke_3;
  v7[3] = &unk_2783A9FC8;
  v8 = v4;
  v6 = v4;
  [v5 performControlActionWithCompletion:v7];
}

- (void)dealloc
{
  [(BSCompoundAssertion *)self->_contentVisibilityAssertions invalidate];
  v3.receiver = self;
  v3.super_class = SBControlSystemAction;
  [(SBControlSystemAction *)&v3 dealloc];
}

uint64_t __68__SBControlSystemAction_acquireContentVisibilityAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isActive])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);

  return [v4 setVisibility:v3];
}

- (id)newExecutor
{
  v3 = [SBBlockSystemActionExecutor alloc];

  return [(SBBlockSystemActionExecutor *)v3 initWithSystemAction:self];
}

- (void)controlInstanceDescriptorDidChange:(id)change
{
  v4 = [SBControlSystemActionProperties propertiesForControlInstance:change];
  [(SBControlSystemAction *)self setProperties:v4];
}

- (void)addObserver:(uint64_t)observer
{
  v3 = a2;
  if (observer)
  {
    v4 = *(observer + 72);
    v7 = v3;
    if (!v4)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = *(observer + 72);
      *(observer + 72) = weakObjectsHashTable;

      v4 = *(observer + 72);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (uint64_t)removeObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 72) removeObject:a2];
  }

  return result;
}

- (void)type
{
  if (result)
  {
    configuredAction = [result configuredAction];
    controlType = [configuredAction controlType];
    unsignedIntegerValue = [controlType unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  return result;
}

- (id)iconView
{
  if (self)
  {
    self = [self[7] iconView];
    v1 = vars8;
  }

  return self;
}

- (id)acquireContentVisibilityAssertionForReason:(uint64_t)reason
{
  v3 = a2;
  if (reason)
  {
    v4 = *(reason + 64);
    if (!v4)
    {
      v5 = *(reason + 56);
      v6 = MEMORY[0x277CF0BD0];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __68__SBControlSystemAction_acquireContentVisibilityAssertionForReason___block_invoke;
      v13[3] = &unk_2783BB090;
      v14 = v5;
      v9 = v5;
      v10 = [v6 assertionWithIdentifier:v8 stateDidChangeHandler:v13];
      v11 = *(reason + 64);
      *(reason + 64) = v10;

      v4 = *(reason + 64);
    }

    reason = [v4 acquireForReason:v3];
  }

  return reason;
}

- (void)setProperties:(uint64_t)properties
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (properties)
  {
    v5 = *(properties + 88);
    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong((properties + 88), a2);
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [*(properties + 72) copy];
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

            [*(*(&v11 + 1) + 8 * v10++) controlSystemAction:properties propertiesDidChange:v5];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)controlInstanceViewModelDidChange:(id)change
{
  v4 = [SBControlSystemActionProperties propertiesForControlInstance:change];
  [(SBControlSystemAction *)self setProperties:v4];
}

- (uint64_t)properties
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

@end