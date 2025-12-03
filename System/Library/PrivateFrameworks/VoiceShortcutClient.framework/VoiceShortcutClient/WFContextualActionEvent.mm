@interface WFContextualActionEvent
- (WFContextualActionEvent)initWithAction:(id)action contentTypes:(id)types containerName:(id)name surface:(unint64_t)surface;
@end

@implementation WFContextualActionEvent

- (WFContextualActionEvent)initWithAction:(id)action contentTypes:(id)types containerName:(id)name surface:(unint64_t)surface
{
  actionCopy = action;
  typesCopy = types;
  nameCopy = name;
  if (!actionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v20.receiver = self;
  v20.super_class = WFContextualActionEvent;
  v15 = [(WFContextualActionEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_action, action);
    objc_storeStrong(&v16->_contentTypes, types);
    objc_storeStrong(&v16->_containerName, name);
    v16->_surface = surface;
    v17 = v16;
  }

  return v16;
}

@end