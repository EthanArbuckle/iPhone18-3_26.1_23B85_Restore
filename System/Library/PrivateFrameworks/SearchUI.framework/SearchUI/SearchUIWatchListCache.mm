@interface SearchUIWatchListCache
- (SearchUIWatchListCache)init;
- (void)computeObjectForKey:(id)key completionHandler:(id)handler;
- (void)getButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style completion:(id)completion;
@end

@implementation SearchUIWatchListCache

- (SearchUIWatchListCache)init
{
  v3.receiver = self;
  v3.super_class = SearchUIWatchListCache;
  return [(TLKAsyncCache *)&v3 init];
}

- (void)getButtonsForWatchListIdentifier:(id)identifier type:(int)type isHorizontallySrollingStyle:(BOOL)style completion:(id)completion
{
  styleCopy = style;
  v7 = *&type;
  completionCopy = completion;
  identifierCopy = identifier;
  v12 = objc_opt_new();
  [v12 setIdentifier:identifierCopy];

  [v12 setType:v7];
  [v12 setIsHorizontallySrollingStyle:styleCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__SearchUIWatchListCache_getButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke;
  v14[3] = &unk_1E85B2AC8;
  v15 = completionCopy;
  v13 = completionCopy;
  [(TLKAsyncCache *)self getObjectForKey:v12 completionHandler:v14];
}

void __103__SearchUIWatchListCache_getButtonsForWatchListIdentifier_type_isHorizontallySrollingStyle_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 state];
  v4 = [v3 buttonModels];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v6, v4, v5);
}

- (void)computeObjectForKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  identifier = [keyCopy identifier];
  type = [keyCopy type];
  isHorizontallySrollingStyle = [keyCopy isHorizontallySrollingStyle];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__SearchUIWatchListCache_computeObjectForKey_completionHandler___block_invoke;
  v11[3] = &unk_1E85B2AF0;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [SearchUIWatchListUtilities computeButtonsForWatchListIdentifier:identifier type:type isHorizontallySrollingStyle:isHorizontallySrollingStyle completion:v11];
}

void __64__SearchUIWatchListCache_computeObjectForKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_opt_new();
  [v10 setButtonModels:v8];

  [v10 setState:v9];
  [v10 setError:v7];

  (*(*(a1 + 32) + 16))();
}

@end