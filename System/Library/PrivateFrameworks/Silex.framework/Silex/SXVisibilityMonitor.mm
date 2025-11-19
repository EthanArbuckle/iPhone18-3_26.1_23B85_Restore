@interface SXVisibilityMonitor
- (BOOL)appeared;
- (SXVisibilityMonitor)initWithObject:(id)a3 visiblePercentageProvider:(id)a4;
- (id)object;
- (void)determineVisiblePercentage;
- (void)didAppear;
- (void)didDisappear;
- (void)lock;
- (void)onDidAppear:(id)a3;
- (void)onDidDisappear:(id)a3;
- (void)onVisiblePercentageChange:(id)a3;
- (void)onWillAppear:(id)a3;
- (void)onWillDisappear:(id)a3;
- (void)setVisiblePercentage:(double)a3;
- (void)unlock;
- (void)willAppear;
- (void)willDisappear;
@end

@implementation SXVisibilityMonitor

- (SXVisibilityMonitor)initWithObject:(id)a3 visiblePercentageProvider:(id)a4
{
  v60[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = SXVisibilityMonitor;
  v8 = [(SXVisibilityMonitor *)&v56 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    willAppearBlocks = v8->_willAppearBlocks;
    v8->_willAppearBlocks = v9;

    v11 = [MEMORY[0x1E695DF70] array];
    didAppearBlocks = v8->_didAppearBlocks;
    v8->_didAppearBlocks = v11;

    v13 = [MEMORY[0x1E695DF70] array];
    visiblePercentageBlocks = v8->_visiblePercentageBlocks;
    v8->_visiblePercentageBlocks = v13;

    v15 = [MEMORY[0x1E695DF70] array];
    willDisappearBlocks = v8->_willDisappearBlocks;
    v8->_willDisappearBlocks = v15;

    v17 = [MEMORY[0x1E695DF70] array];
    didDisappearBlocks = v8->_didDisappearBlocks;
    v8->_didDisappearBlocks = v17;

    objc_storeStrong(&v8->_visiblePercentageProvider, a4);
    objc_storeWeak(&v8->_object, v6);
    v8->_state = 0;
    v19 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"appearing"];
    appearingState = v8->_appearingState;
    v8->_appearingState = v19;

    v21 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"appeared"];
    appearedState = v8->_appearedState;
    v8->_appearedState = v21;

    v23 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"disappearing"];
    disappearingState = v8->_disappearingState;
    v8->_disappearingState = v23;

    v25 = [objc_alloc(MEMORY[0x1E69B6918]) initWithName:@"disappeared"];
    disappearedState = v8->_disappearedState;
    v8->_disappearedState = v25;

    v27 = [(NFStateMachineState *)v8->_appearingState onDidEnter:&__block_literal_global_32];
    v28 = [(NFStateMachineState *)v8->_appearedState onDidEnter:&__block_literal_global_14];
    v29 = [(NFStateMachineState *)v8->_disappearingState onDidEnter:&__block_literal_global_16];
    v30 = [(NFStateMachineState *)v8->_disappearedState onDidEnter:&__block_literal_global_18_0];
    v31 = objc_alloc(MEMORY[0x1E69B6910]);
    v32 = MEMORY[0x1E695DFD8];
    v60[0] = v8->_disappearedState;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    v34 = [v32 setWithArray:v33];
    v35 = [v31 initWithName:@"appearing" transitionFromStates:v34 toState:v8->_appearingState];

    v36 = objc_alloc(MEMORY[0x1E69B6910]);
    v37 = MEMORY[0x1E695DFD8];
    v38 = v8->_disappearingState;
    v59[0] = v8->_appearingState;
    v59[1] = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
    v40 = [v37 setWithArray:v39];
    v41 = [v36 initWithName:@"appeared" transitionFromStates:v40 toState:v8->_appearedState];

    v42 = objc_alloc(MEMORY[0x1E69B6910]);
    v43 = MEMORY[0x1E695DFD8];
    v58 = v8->_appearedState;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    v45 = [v43 setWithArray:v44];
    v46 = [v42 initWithName:@"disappearing" transitionFromStates:v45 toState:v8->_disappearingState];

    v47 = objc_alloc(MEMORY[0x1E69B6910]);
    v48 = MEMORY[0x1E695DFD8];
    v49 = v8->_disappearingState;
    v57[0] = v8->_appearingState;
    v57[1] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v51 = [v48 setWithArray:v50];
    v52 = [v47 initWithName:@"disappeared" transitionFromStates:v51 toState:v8->_disappearedState];

    v53 = [objc_alloc(MEMORY[0x1E69B6908]) initWithState:v8->_disappearedState withOwner:v8];
    stateMachine = v8->_stateMachine;
    v8->_stateMachine = v53;

    [(NFStateMachine *)v8->_stateMachine addState:v8->_appearedState];
    [(NFStateMachine *)v8->_stateMachine addEvent:v35];
    [(NFStateMachine *)v8->_stateMachine addEvent:v41];
    [(NFStateMachine *)v8->_stateMachine addEvent:v46];
    [(NFStateMachine *)v8->_stateMachine addEvent:v52];
    [(NFStateMachine *)v8->_stateMachine activate];
  }

  return v8;
}

id __64__SXVisibilityMonitor_initWithObject_visiblePercentageProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 setState:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 willAppearBlocks];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * i) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E69B68F8] asVoid];

  return v10;
}

id __64__SXVisibilityMonitor_initWithObject_visiblePercentageProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 setState:2];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 didAppearBlocks];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * i) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E69B68F8] asVoid];

  return v10;
}

id __64__SXVisibilityMonitor_initWithObject_visiblePercentageProvider___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 setState:3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 willDisappearBlocks];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * i) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E69B68F8] asVoid];

  return v10;
}

id __64__SXVisibilityMonitor_initWithObject_visiblePercentageProvider___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 setState:4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 didDisappearBlocks];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * i) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E69B68F8] asVoid];

  return v10;
}

- (void)lock
{
  v3 = [(SXVisibilityMonitor *)self lockCount]+ 1;

  [(SXVisibilityMonitor *)self setLockCount:v3];
}

- (void)unlock
{
  v3 = [(SXVisibilityMonitor *)self lockCount]- 1;

  [(SXVisibilityMonitor *)self setLockCount:v3];
}

- (BOOL)appeared
{
  v2 = self;
  v3 = [(SXVisibilityMonitor *)self stateMachine];
  v4 = [v3 state];
  v5 = [(SXVisibilityMonitor *)v2 appearedState];
  LOBYTE(v2) = v4 == v5;

  return v2;
}

- (void)onWillAppear:(id)a3
{
  v4 = a3;
  v6 = [(SXVisibilityMonitor *)self willAppearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onDidAppear:(id)a3
{
  v4 = a3;
  v6 = [(SXVisibilityMonitor *)self didAppearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onVisiblePercentageChange:(id)a3
{
  v4 = a3;
  v6 = [(SXVisibilityMonitor *)self visiblePercentageBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onWillDisappear:(id)a3
{
  v4 = a3;
  v6 = [(SXVisibilityMonitor *)self willDisappearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)onDidDisappear:(id)a3
{
  v4 = a3;
  v6 = [(SXVisibilityMonitor *)self didDisappearBlocks];
  v5 = MEMORY[0x1DA716BE0](v4);

  [v6 addObject:v5];
}

- (void)willAppear
{
  v3 = [(SXVisibilityMonitor *)self stateMachine];
  v2 = [v3 fireEventWithName:@"appearing" withContext:0];
}

- (void)didAppear
{
  v3 = [(SXVisibilityMonitor *)self stateMachine];
  v2 = [v3 fireEventWithName:@"appeared" withContext:0];
}

- (void)willDisappear
{
  v3 = [(SXVisibilityMonitor *)self stateMachine];
  v2 = [v3 fireEventWithName:@"disappearing" withContext:0];
}

- (void)didDisappear
{
  v3 = [(SXVisibilityMonitor *)self stateMachine];
  v2 = [v3 fireEventWithName:@"disappeared" withContext:0];
}

- (void)determineVisiblePercentage
{
  if ([(SXVisibilityMonitor *)self locked])
  {
    return;
  }

  v3 = [(SXVisibilityMonitor *)self visiblePercentageProvider];
  v4 = [(SXVisibilityMonitor *)self object];
  [v3 visiblePercentageOfObject:v4];
  v6 = v5;

  [(SXVisibilityMonitor *)self setVisiblePercentage:v6];
  v7 = [(SXVisibilityMonitor *)self stateMachine];
  v8 = [v7 state];
  v9 = [(SXVisibilityMonitor *)self appearedState];
  if (v8 != v9 || v6 >= 1.0)
  {

    goto LABEL_8;
  }

  if (v6 < 0.0)
  {
LABEL_8:
    v10 = [(SXVisibilityMonitor *)self stateMachine];
    v11 = [v10 state];
    v12 = [(SXVisibilityMonitor *)self disappearedState];
    if (v11 == v12 && v6 <= 1.0)
    {

      if (v6 > 0.0)
      {
        [(SXVisibilityMonitor *)self willAppear];
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

  [(SXVisibilityMonitor *)self willDisappear];
LABEL_13:
  v13 = [(SXVisibilityMonitor *)self stateMachine];
  v14 = [v13 state];
  v15 = [(SXVisibilityMonitor *)self disappearedState];

  if (v14 == v15 || v6 > 0.0)
  {
    v16 = [(SXVisibilityMonitor *)self stateMachine];
    v17 = [v16 state];
    v18 = [(SXVisibilityMonitor *)self appearedState];

    if (v17 != v18 && v6 >= 1.0)
    {

      [(SXVisibilityMonitor *)self didAppear];
    }
  }

  else
  {

    [(SXVisibilityMonitor *)self didDisappear];
  }
}

- (void)setVisiblePercentage:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_visiblePercentage != a3)
  {
    self->_visiblePercentage = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(SXVisibilityMonitor *)self visiblePercentageBlocks];
    v5 = [v4 copy];

    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * i) + 16))(a3);
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end