@interface UIORequestEditMenuPresentationAction
@end

@implementation UIORequestEditMenuPresentationAction

void __69___UIORequestEditMenuPresentationAction_performActionFromConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[_UIEditMenuPresentationServer sharedPresentationServer];
  v4 = [*(a1 + 32) configuration];
  v5 = [*(a1 + 32) originContext];
  [v6 presentEditMenuWithConfiguration:v4 originContext:v5 inDisplayDelegate:v3 forConnection:*(a1 + 40)];
}

@end