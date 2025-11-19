@interface SearchUIPasteItemHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIPasteItemHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v7 = a5;
  v8 = a3;
  v11 = objc_opt_new();
  v9 = [v8 copyableItems];

  [v11 setCopyableItems:v9];
  v10 = [SearchUICommandHandler handlerForCommand:v11 environment:v7];

  [v10 executeWithTriggerEvent:a4];
}

@end