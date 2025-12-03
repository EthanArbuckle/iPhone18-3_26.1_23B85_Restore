@interface SKStateMachine
+ (SKStateMachine)machineWithStateTransitionTable:(id)table startState:(id)state startEvent:(id)event;
- (BOOL)finished;
- (BOOL)nextWithError:(id *)error;
- (BOOL)runWithError:(id *)error;
@end

@implementation SKStateMachine

+ (SKStateMachine)machineWithStateTransitionTable:(id)table startState:(id)state startEvent:(id)event
{
  eventCopy = event;
  stateCopy = state;
  tableCopy = table;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setState:stateCopy];

  [v10 setEvent:eventCopy];
  [v10 setTable:tableCopy];

  return v10;
}

- (BOOL)nextWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  table = [(SKStateMachine *)self table];
  state = [(SKStateMachine *)self state];
  event = [(SKStateMachine *)self event];
  v9 = [table entryForState:state event:event];

  if (v9)
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      state2 = [(SKStateMachine *)self state];
      event2 = [(SKStateMachine *)self event];
      nextState = [v9 nextState];
      v29 = 136315906;
      v30 = "[SKStateMachine nextWithError:]";
      v31 = 2112;
      v32 = state2;
      v33 = 2112;
      v34 = event2;
      v35 = 2112;
      v36 = nextState;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEBUG, "%s: State transition (%@,%@)->%@", &v29, 0x2Au);
    }

    action = [v9 action];
    if (action)
    {
      v15 = action;
      selector = [v9 selector];

      if (selector)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SKStateMachine.m" lineNumber:140 description:{@"Should have either action or selector, not both"}];

LABEL_7:
        v18 = 0;
LABEL_14:
        [(SKStateMachine *)self setEvent:v18];
        nextState2 = [v9 nextState];
        [(SKStateMachine *)self setState:nextState2];

        v21 = 1;
        goto LABEL_15;
      }
    }

    action2 = [v9 action];

    if (action2)
    {
      action3 = [v9 action];
      v18 = (action3)[2](action3, error);
    }

    else
    {
      if (![v9 selector])
      {
        goto LABEL_7;
      }

      table2 = [(SKStateMachine *)self table];
      selectorTarget = [table2 selectorTarget];
      v24 = [selectorTarget methodForSelector:{objc_msgSend(v9, "selector")}];

      action3 = [(SKStateMachine *)self table];
      selectorTarget2 = [action3 selectorTarget];
      v18 = v24(selectorTarget2, [v9 selector], error);
    }

    if (!v18)
    {
      v21 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = [SKError failWithSKErrorCode:102 error:error];
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)finished
{
  state = [(SKStateMachine *)self state];
  v3 = state == 0;

  return v3;
}

- (BOOL)runWithError:(id *)error
{
  do
  {
    finished = [(SKStateMachine *)self finished];
  }

  while (!finished && [(SKStateMachine *)self nextWithError:error]);
  return finished;
}

@end