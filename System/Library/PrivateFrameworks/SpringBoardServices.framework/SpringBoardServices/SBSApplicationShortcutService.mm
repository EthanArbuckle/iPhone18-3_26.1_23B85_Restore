@interface SBSApplicationShortcutService
- (id)applicationShortcutItemsOfTypes:(unint64_t)types forBundleIdentifier:(id)identifier;
- (void)fetchApplicationShortcutItemsOfTypes:(unint64_t)types forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)fetchDynamicApplicationShortcutItemsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchDynamicApplicationShortcutItemsWithCompletionHandler:(id)handler;
- (void)updateDynamicApplicationShortcutItems:(id)items forBundleIdentifier:(id)identifier;
@end

@implementation SBSApplicationShortcutService

- (void)fetchApplicationShortcutItemsOfTypes:(unint64_t)types forBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    identifierCopy = identifier;
    callbackQueue = [(SBSAbstractFacilityService *)self callbackQueue];
    client = [(SBSAbstractApplicationService *)self client];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __112__SBSApplicationShortcutService_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke;
    v13[3] = &unk_1E73609A0;
    v14 = callbackQueue;
    v15 = handlerCopy;
    v12 = callbackQueue;
    [client fetchApplicationShortcutItemsOfTypes:types forBundleIdentifier:identifierCopy withCompletionHandler:v13];
  }
}

void __112__SBSApplicationShortcutService_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __112__SBSApplicationShortcutService_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)applicationShortcutItemsOfTypes:(unint64_t)types forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  client = [(SBSAbstractApplicationService *)self client];
  v8 = [client applicationShortcutItemsOfTypes:types forBundleIdentifier:identifierCopy];

  return v8;
}

- (void)updateDynamicApplicationShortcutItems:(id)items forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemsCopy = items;
  client = [(SBSAbstractApplicationService *)self client];
  [client updateDynamicApplicationShortcutItems:itemsCopy bundleIdentifier:identifierCopy];
}

- (void)fetchDynamicApplicationShortcutItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__SBSApplicationShortcutService_fetchDynamicApplicationShortcutItemsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E73609C8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(SBSApplicationShortcutService *)self fetchApplicationShortcutItemsOfTypes:2 forBundleIdentifier:0 withCompletionHandler:v6];
}

void __91__SBSApplicationShortcutService_fetchDynamicApplicationShortcutItemsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dynamicApplicationShortcutItems];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchDynamicApplicationShortcutItemsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__SBSApplicationShortcutService_fetchDynamicApplicationShortcutItemsForBundleIdentifier_completionHandler___block_invoke;
  v8[3] = &unk_1E73609C8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(SBSApplicationShortcutService *)self fetchApplicationShortcutItemsOfTypes:2 forBundleIdentifier:identifier withCompletionHandler:v8];
}

void __107__SBSApplicationShortcutService_fetchDynamicApplicationShortcutItemsForBundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dynamicApplicationShortcutItems];
  (*(v2 + 16))(v2, v3);
}

@end