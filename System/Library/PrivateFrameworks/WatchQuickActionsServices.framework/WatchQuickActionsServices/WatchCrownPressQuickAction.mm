@interface WatchCrownPressQuickAction
- (WatchCrownPressQuickAction)initWithLocalizedTitle:(id)title completionHandler:(id)handler;
@end

@implementation WatchCrownPressQuickAction

- (WatchCrownPressQuickAction)initWithLocalizedTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__WatchCrownPressQuickAction_initWithLocalizedTitle_completionHandler___block_invoke;
  v11[3] = &unk_279E65E40;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = WatchCrownPressQuickAction;
  v7 = handlerCopy;
  v8 = [(WatchQuickAction *)&v10 initWithLocalizedTitle:title activationCallback:v11];

  return v8;
}

void __71__WatchCrownPressQuickAction_initWithLocalizedTitle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[WatchQuickActionsServices sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__WatchCrownPressQuickAction_initWithLocalizedTitle_completionHandler___block_invoke_2;
  v7[3] = &unk_279E65980;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 requestCrownPressWithCompletionHandler:v7];
}

uint64_t __71__WatchCrownPressQuickAction_initWithLocalizedTitle_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end