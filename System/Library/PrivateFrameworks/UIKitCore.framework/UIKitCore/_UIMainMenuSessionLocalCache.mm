@interface _UIMainMenuSessionLocalCache
- (UIResponder)firstResponder;
- (_UIMainMenuSessionLocalCache)initWithBaseMenuBookkeeping:(id)bookkeeping;
@end

@implementation _UIMainMenuSessionLocalCache

- (_UIMainMenuSessionLocalCache)initWithBaseMenuBookkeeping:(id)bookkeeping
{
  bookkeepingCopy = bookkeeping;
  v5 = [(_UIMainMenuSessionLocalCache *)self init];
  if (v5)
  {
    v6 = [bookkeepingCopy copy];
    elementBookkeeping = v5->_elementBookkeeping;
    v5->_elementBookkeeping = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    validatedMenuLeavesForIdentifiers = v5->_validatedMenuLeavesForIdentifiers;
    v5->_validatedMenuLeavesForIdentifiers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    menuStates = v5->_menuStates;
    v5->_menuStates = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    deferredElementStates = v5->_deferredElementStates;
    v5->_deferredElementStates = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    commandStates = v5->_commandStates;
    v5->_commandStates = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    pendingDeferredElementRequestHandlers = v5->_pendingDeferredElementRequestHandlers;
    v5->_pendingDeferredElementRequestHandlers = dictionary5;
  }

  return v5;
}

- (UIResponder)firstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponder);

  return WeakRetained;
}

@end