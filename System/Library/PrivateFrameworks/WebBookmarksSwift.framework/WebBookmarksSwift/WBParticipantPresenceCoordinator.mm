@interface WBParticipantPresenceCoordinator
- (WBParticipantPresenceCoordinator)init;
- (WBParticipantPresenceCoordinatorDelegate)delegate;
- (void)getActiveParticipantsInTabGroupWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getActiveParticipantsInTabWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getCurrentConnectionStateWithCompletionHandler:(id)handler;
- (void)getCurrentLocationIdentifiersForParticipantIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getTabGroupIdentifierForParticipantIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getTabIdentifierForParticipantIdentifier:(id)identifier completionHandler:(id)handler;
- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabGroupWithIdentifier:(id)identifier;
- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabWithIdentifier:(id)identifier;
@end

@implementation WBParticipantPresenceCoordinator

- (WBParticipantPresenceCoordinator)init
{
  v7.receiver = self;
  v7.super_class = WBParticipantPresenceCoordinator;
  v2 = [(WBParticipantPresenceCoordinator *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_WBParticipantPresenceCoordinator);
    internalCoordinator = v2->_internalCoordinator;
    v2->_internalCoordinator = v3;

    [(_WBParticipantPresenceCoordinator *)v2->_internalCoordinator setDelegate:v2];
    v5 = v2;
  }

  return v2;
}

- (void)getTabGroupIdentifierForParticipantIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy length])
  {
    internalCoordinator = self->_internalCoordinator;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __100__WBParticipantPresenceCoordinator_getTabGroupIdentifierForParticipantIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_279E7D6C0;
    v10 = handlerCopy;
    [(_WBParticipantPresenceCoordinator *)internalCoordinator getTabGroupIdentifierForParticipantIdentifier:identifierCopy completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __100__WBParticipantPresenceCoordinator_getTabGroupIdentifierForParticipantIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__WBParticipantPresenceCoordinator_getTabGroupIdentifierForParticipantIdentifier_completionHandler___block_invoke_2;
  v6[3] = &unk_279E7D698;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)getTabIdentifierForParticipantIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy length])
  {
    internalCoordinator = self->_internalCoordinator;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __95__WBParticipantPresenceCoordinator_getTabIdentifierForParticipantIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_279E7D6C0;
    v10 = handlerCopy;
    [(_WBParticipantPresenceCoordinator *)internalCoordinator getTabIdentifierForParticipantIdentifier:identifierCopy completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __95__WBParticipantPresenceCoordinator_getTabIdentifierForParticipantIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__WBParticipantPresenceCoordinator_getTabIdentifierForParticipantIdentifier_completionHandler___block_invoke_2;
  v6[3] = &unk_279E7D698;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)getCurrentLocationIdentifiersForParticipantIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy length])
  {
    internalCoordinator = self->_internalCoordinator;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __108__WBParticipantPresenceCoordinator_getCurrentLocationIdentifiersForParticipantIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_279E7D710;
    v10 = handlerCopy;
    [(_WBParticipantPresenceCoordinator *)internalCoordinator getCurrentLocationIdentifiersForParticipantIdentifier:identifierCopy completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __108__WBParticipantPresenceCoordinator_getCurrentLocationIdentifiersForParticipantIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__WBParticipantPresenceCoordinator_getCurrentLocationIdentifiersForParticipantIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_279E7D6E8;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)getActiveParticipantsInTabGroupWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  internalCoordinator = self->_internalCoordinator;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__WBParticipantPresenceCoordinator_getActiveParticipantsInTabGroupWithIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_279E7D738;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(_WBParticipantPresenceCoordinator *)internalCoordinator getActiveParticipantsInTabGroupWithIdentifier:identifier completionHandler:v9];
}

void __100__WBParticipantPresenceCoordinator_getActiveParticipantsInTabGroupWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__WBParticipantPresenceCoordinator_getActiveParticipantsInTabGroupWithIdentifier_completionHandler___block_invoke_2;
  v6[3] = &unk_279E7D698;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)getActiveParticipantsInTabWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  internalCoordinator = self->_internalCoordinator;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__WBParticipantPresenceCoordinator_getActiveParticipantsInTabWithIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_279E7D738;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(_WBParticipantPresenceCoordinator *)internalCoordinator getActiveParticipantsInTabWithIdentifier:identifier completionHandler:v9];
}

void __95__WBParticipantPresenceCoordinator_getActiveParticipantsInTabWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__WBParticipantPresenceCoordinator_getActiveParticipantsInTabWithIdentifier_completionHandler___block_invoke_2;
  v6[3] = &unk_279E7D698;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)getCurrentConnectionStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalCoordinator = self->_internalCoordinator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__WBParticipantPresenceCoordinator_getCurrentConnectionStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E7D760;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(_WBParticipantPresenceCoordinator *)internalCoordinator getCurrentConnectionStateWithCompletionHandler:v7];
}

void __83__WBParticipantPresenceCoordinator_getCurrentConnectionStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__WBParticipantPresenceCoordinator_getCurrentConnectionStateWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_279E7D698;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabGroupWithIdentifier:(id)identifier
{
  participantsCopy = participants;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained participantPresenceCoordinator:self didUpdateActiveParticipants:participantsCopy inTabGroupWithIdentifier:identifierCopy];
  }
}

- (void)participantPresenceCoordinator:(id)coordinator didUpdateActiveParticipants:(id)participants inTabWithIdentifier:(id)identifier
{
  participantsCopy = participants;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained participantPresenceCoordinator:self didUpdateActiveParticipants:participantsCopy inTabWithIdentifier:identifierCopy];
  }
}

- (WBParticipantPresenceCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end