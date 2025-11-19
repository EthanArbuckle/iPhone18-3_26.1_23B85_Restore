@interface UITextItemInteractionHandler
@end

@implementation UITextItemInteractionHandler

void *__57___UITextItemInteractionHandler_contextMenuConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) menu];
  v3 = v2;
  if (!v2)
  {
    v3 = *(a1 + 40);
  }

  v4 = v3;

  return v3;
}

id __57___UITextItemInteractionHandler_contextMenuConfiguration__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setView:*(a1 + 32)];
  [*(a1 + 32) frame];
  [v2 setPreferredContentSize:{v3, v4}];

  return v2;
}

void __46___UITextItemInteractionHandler_primaryAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v3 = [v2 preferredMenuExpression];

  if (v3 >= 2)
  {
    if (v3 != 2)
    {
      return;
    }

    v8 = [*(a1 + 32) item];
    v6 = [v8 editMenuInteraction];
    v7 = [*(a1 + 32) _editMenuConfiguration];
    [v6 presentEditMenuWithConfiguration:v7];
  }

  else
  {
    v4 = [*(a1 + 32) item];
    v5 = [v4 contextMenuInteraction];
    [v5 _setFallbackDriverStyle:1];

    v8 = [*(a1 + 32) item];
    v6 = [v8 contextMenuInteraction];
    v7 = [*(a1 + 32) item];
    [v7 location];
    [v6 _presentMenuAtLocation:?];
  }
}

@end