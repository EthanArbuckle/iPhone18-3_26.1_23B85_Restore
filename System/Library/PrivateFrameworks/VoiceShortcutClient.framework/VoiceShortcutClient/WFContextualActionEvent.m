@interface WFContextualActionEvent
- (WFContextualActionEvent)initWithAction:(id)a3 contentTypes:(id)a4 containerName:(id)a5 surface:(unint64_t)a6;
@end

@implementation WFContextualActionEvent

- (WFContextualActionEvent)initWithAction:(id)a3 contentTypes:(id)a4 containerName:(id)a5 surface:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!v12)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFContextualActionEvent.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"action"}];
  }

  v20.receiver = self;
  v20.super_class = WFContextualActionEvent;
  v15 = [(WFContextualActionEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_action, a3);
    objc_storeStrong(&v16->_contentTypes, a4);
    objc_storeStrong(&v16->_containerName, a5);
    v16->_surface = a6;
    v17 = v16;
  }

  return v16;
}

@end