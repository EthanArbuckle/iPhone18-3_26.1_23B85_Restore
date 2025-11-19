@interface WFHarnessActionCondition
- (WFHarnessActionCondition)initWithSelector:(id)a3 eventClass:(Class)a4 eventHandler:(id)a5;
- (void)evaluateWithEvent:(id)a3 context:(id)a4 withResponse:(id)a5;
@end

@implementation WFHarnessActionCondition

- (void)evaluateWithEvent:(id)a3 context:(id)a4 withResponse:(id)a5
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  if (v15)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"event"}];

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"responseBlock"}];

LABEL_4:
  v11 = [(WFHarnessActionCondition *)self eventHandler];
  (v11)[2](v11, v15, v9, v10);
}

- (WFHarnessActionCondition)initWithSelector:(id)a3 eventClass:(Class)a4 eventHandler:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"eventClass"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"selector"}];

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFHarnessActionCondition.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = WFHarnessActionCondition;
  v12 = [(WFHarnessActionCondition *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_selector, a3);
    objc_storeStrong(&v13->_eventClass, a4);
    v14 = _Block_copy(v11);
    eventHandler = v13->_eventHandler;
    v13->_eventHandler = v14;

    v16 = v13;
  }

  return v13;
}

@end