@interface SKStateMachine
+ (SKStateMachine)machineWithStateTransitionTable:(id)a3 startState:(id)a4 startEvent:(id)a5;
- (BOOL)finished;
- (BOOL)nextWithError:(id *)a3;
- (BOOL)runWithError:(id *)a3;
@end

@implementation SKStateMachine

+ (SKStateMachine)machineWithStateTransitionTable:(id)a3 startState:(id)a4 startEvent:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(objc_opt_class());
  [v10 setState:v8];

  [v10 setEvent:v7];
  [v10 setTable:v9];

  return v10;
}

- (BOOL)nextWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = [(SKStateMachine *)self table];
  v7 = [(SKStateMachine *)self state];
  v8 = [(SKStateMachine *)self event];
  v9 = [v6 entryForState:v7 event:v8];

  if (v9)
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(SKStateMachine *)self state];
      v12 = [(SKStateMachine *)self event];
      v13 = [v9 nextState];
      v29 = 136315906;
      v30 = "[SKStateMachine nextWithError:]";
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_DEBUG, "%s: State transition (%@,%@)->%@", &v29, 0x2Au);
    }

    v14 = [v9 action];
    if (v14)
    {
      v15 = v14;
      v16 = [v9 selector];

      if (v16)
      {
        v17 = [MEMORY[0x277CCA890] currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"SKStateMachine.m" lineNumber:140 description:{@"Should have either action or selector, not both"}];

LABEL_7:
        v18 = 0;
LABEL_14:
        [(SKStateMachine *)self setEvent:v18];
        v26 = [v9 nextState];
        [(SKStateMachine *)self setState:v26];

        v21 = 1;
        goto LABEL_15;
      }
    }

    v19 = [v9 action];

    if (v19)
    {
      v20 = [v9 action];
      v18 = (v20)[2](v20, a3);
    }

    else
    {
      if (![v9 selector])
      {
        goto LABEL_7;
      }

      v22 = [(SKStateMachine *)self table];
      v23 = [v22 selectorTarget];
      v24 = [v23 methodForSelector:{objc_msgSend(v9, "selector")}];

      v20 = [(SKStateMachine *)self table];
      v25 = [v20 selectorTarget];
      v18 = v24(v25, [v9 selector], a3);
    }

    if (!v18)
    {
      v21 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = [SKError failWithSKErrorCode:102 error:a3];
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)finished
{
  v2 = [(SKStateMachine *)self state];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)runWithError:(id *)a3
{
  do
  {
    v5 = [(SKStateMachine *)self finished];
  }

  while (!v5 && [(SKStateMachine *)self nextWithError:a3]);
  return v5;
}

@end