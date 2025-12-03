@interface WFHarnessActionCondition
- (WFHarnessActionCondition)initWithSelector:(id)selector eventClass:(Class)class eventHandler:(id)handler;
- (void)evaluateWithEvent:(id)event context:(id)context withResponse:(id)response;
@end

@implementation WFHarnessActionCondition

- (void)evaluateWithEvent:(id)event context:(id)context withResponse:(id)response
{
  eventCopy = event;
  contextCopy = context;
  responseCopy = response;
  if (eventCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (responseCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"event"}];

  if (!contextCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (responseCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"responseBlock"}];

LABEL_4:
  eventHandler = [(WFHarnessActionCondition *)self eventHandler];
  (eventHandler)[2](eventHandler, eventCopy, contextCopy, responseCopy);
}

- (WFHarnessActionCondition)initWithSelector:(id)selector eventClass:(Class)class eventHandler:(id)handler
{
  selectorCopy = selector;
  handlerCopy = handler;
  if (selectorCopy)
  {
    if (class)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"eventClass"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"selector"}];

  if (!class)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFHarnessActionCondition;
  v12 = [(WFHarnessActionCondition *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selector, selector);
    objc_storeStrong(&v13->_eventClass, class);
    v14 = _Block_copy(handlerCopy);
    eventHandler = v13->_eventHandler;
    v13->_eventHandler = v14;

    v16 = v13;
  }

  return v13;
}

@end