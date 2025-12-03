@interface SearchUIPasteItemHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIPasteItemHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  commandCopy = command;
  v11 = objc_opt_new();
  copyableItems = [commandCopy copyableItems];

  [v11 setCopyableItems:copyableItems];
  v10 = [SearchUICommandHandler handlerForCommand:v11 environment:environmentCopy];

  [v10 executeWithTriggerEvent:event];
}

@end