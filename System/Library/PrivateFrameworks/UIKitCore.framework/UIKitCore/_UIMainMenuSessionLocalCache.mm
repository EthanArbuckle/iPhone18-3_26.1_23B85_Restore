@interface _UIMainMenuSessionLocalCache
- (UIResponder)firstResponder;
- (_UIMainMenuSessionLocalCache)initWithBaseMenuBookkeeping:(id)a3;
@end

@implementation _UIMainMenuSessionLocalCache

- (_UIMainMenuSessionLocalCache)initWithBaseMenuBookkeeping:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuSessionLocalCache *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    elementBookkeeping = v5->_elementBookkeeping;
    v5->_elementBookkeeping = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    validatedMenuLeavesForIdentifiers = v5->_validatedMenuLeavesForIdentifiers;
    v5->_validatedMenuLeavesForIdentifiers = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    menuStates = v5->_menuStates;
    v5->_menuStates = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    deferredElementStates = v5->_deferredElementStates;
    v5->_deferredElementStates = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    commandStates = v5->_commandStates;
    v5->_commandStates = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    pendingDeferredElementRequestHandlers = v5->_pendingDeferredElementRequestHandlers;
    v5->_pendingDeferredElementRequestHandlers = v16;
  }

  return v5;
}

- (UIResponder)firstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponder);

  return WeakRetained;
}

@end