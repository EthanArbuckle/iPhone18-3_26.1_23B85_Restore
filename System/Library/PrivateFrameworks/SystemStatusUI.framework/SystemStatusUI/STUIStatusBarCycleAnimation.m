@interface STUIStatusBarCycleAnimation
- (STUIStatusBarCycleAnimation)initWithLayerAnimations:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_sendCompletionsWithFinished:(BOOL)a3;
- (void)_startAnimations;
- (void)_stopAnimations;
- (void)_stopStoppingAnimations;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)resumePersistentAnimation;
- (void)start;
- (void)stopWithCompletionHandler:(id)a3;
@end

@implementation STUIStatusBarCycleAnimation

- (STUIStatusBarCycleAnimation)initWithLayerAnimations:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STUIStatusBarCycleAnimation;
  v5 = [(STUIStatusBarCycleAnimation *)&v11 init];
  layerAnimations = v5->_layerAnimations;
  v5->_layerAnimations = v4;
  v7 = v4;

  v8 = [MEMORY[0x277CBEB18] array];
  completionHandlers = v5->_completionHandlers;
  v5->_completionHandlers = v8;

  v5->_visible = 1;
  return v5;
}

- (void)dealloc
{
  [(STUIStatusBarCycleAnimation *)self _stopAnimations];
  v3.receiver = self;
  v3.super_class = STUIStatusBarCycleAnimation;
  [(STUIStatusBarCycleAnimation *)&v3 dealloc];
}

- (void)start
{
  if (self->_visible)
  {
    state = self->_state;
    if (state == 2)
    {
      [(STUIStatusBarCycleAnimation *)self _stopStoppingAnimations];
      v4 = [(STUIStatusBarCycleAnimation *)self mainLayerAnimation];
      v5 = [v4 animation];
      v6 = [v4 layer];
      v7 = [v4 key];
      [v6 removeAnimationForKey:v7];
      [v6 addAnimation:v5 forKey:v7];
      [(STUIStatusBarCycleAnimation *)self _sendCompletionsWithFinished:0];
    }

    else if (!state)
    {
      [(STUIStatusBarCycleAnimation *)self _startAnimations];
    }
  }

  self->_state = 1;
}

- (void)stopWithCompletionHandler:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_visible)
  {
    self->_state = 0;
LABEL_7:
    (*(v4 + 2))(v4, 1);
    goto LABEL_8;
  }

  state = self->_state;
  if (state == 2)
  {
    completionHandlers = self->_completionHandlers;
    v23 = _Block_copy(v4);
    [(NSMutableArray *)completionHandlers addObject:v23];

    goto LABEL_8;
  }

  if (state != 1)
  {
    if (state)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v41 = [(STUIStatusBarCycleAnimation *)self mainLayerAnimation];
  v7 = [v41 animation];
  v40 = [v41 layer];
  v39 = [v41 key];
  v8 = [v7 copy];
  [v7 beginTime];
  v10 = v9;
  v11 = CACurrentMediaTime();
  [v7 duration];
  v13 = v12;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = (v11 - v10) / v12;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v51 = __57__STUIStatusBarCycleAnimation_stopWithCompletionHandler___block_invoke;
  v52 = &unk_279D38CC0;
  v55 = &v64;
  v56 = &v68;
  v58 = v12;
  v38 = v7;
  v53 = v38;
  v54 = self;
  v57 = &v60;
  v59 = v10;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = self->_stoppingLayerAnimations;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v46 objects:v73 count:16];
  if (v15)
  {
    v16 = *v47;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v46 + 1) + 8 * i) originalAnimation];
        [v19 duration];
        v21 = v20;

        if (v17 < v21)
        {
          v17 = v21;
        }
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v46 objects:v73 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 0.0;
  }

  v51(v50);
  if (v17 > 0.0)
  {
    v24 = v17 + v11 - v61[3];
    if (v24 > 0.0)
    {
      v69[3] = ceil(v24 / v13) + v69[3];
      v51(v50);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = self->_stoppingLayerAnimations;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v42 objects:v72 count:16];
  if (v26)
  {
    v27 = *v43;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v42 + 1) + 8 * j);
        v30 = [v29 originalAnimation];
        v31 = v61[3];
        [v30 duration];
        [v30 setBeginTime:v31 - v32];
        v33 = [v29 layer];
        v34 = [v29 key];
        [v33 addAnimation:v30 forKey:v34];
      }

      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v42 objects:v72 count:16];
    }

    while (v26);
  }

  v35 = v65[3];
  *&v35 = v35;
  [v8 setRepeatCount:v35];
  [v8 setDelegate:self];
  [v40 removeAnimationForKey:v39];
  [v40 addAnimation:v8 forKey:v39];
  v36 = self->_completionHandlers;
  v37 = _Block_copy(v5);
  [(NSMutableArray *)v36 addObject:v37];

  self->_state = 2;
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

LABEL_8:
}

double __57__STUIStatusBarCycleAnimation_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = ceil(*(*(*(a1 + 56) + 8) + 24));
  v2 = *(a1 + 72);
  if ([*(a1 + 32) autoreverses])
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) * 0.5;
    v2 = v2 + v2;
    if (*(*(a1 + 40) + 8) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = ceil(*(*(*(a1 + 48) + 8) + 24));
    }
  }

  result = *(a1 + 80) + *(*(*(a1 + 48) + 8) + 24) * v2;
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (void)resumePersistentAnimation
{
  self->_visible = 1;
  if (self->_state == 1)
  {
    [(STUIStatusBarCycleAnimation *)self _startAnimations];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  [(STUIStatusBarCycleAnimation *)self _stopAnimations:a3];
  if (self->_state == 2)
  {
    self->_state = 0;

    [(STUIStatusBarCycleAnimation *)self _sendCompletionsWithFinished:1];
  }
}

- (void)_startAnimations
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_layerAnimations;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 animation];
        [v8 setBeginTime:CACurrentMediaTime()];
        LODWORD(v9) = 2139095040;
        [v8 setRepeatCount:v9];
        v10 = [v7 layer];
        v11 = [v7 key];
        [v10 addAnimation:v8 forKey:v11];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (void)_stopAnimations
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_layerAnimations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 layer];
        v10 = [v8 key];
        [v9 removeAnimationForKey:v10];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(STUIStatusBarCycleAnimation *)self _stopStoppingAnimations];
}

- (void)_stopStoppingAnimations
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_stoppingLayerAnimations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 layer];
        v10 = [v8 key];
        [v9 removeAnimationForKey:v10];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  stoppingLayerAnimations = self->_stoppingLayerAnimations;
  self->_stoppingLayerAnimations = MEMORY[0x277CBEBF8];
}

- (void)_sendCompletionsWithFinished:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_completionHandlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_completionHandlers removeAllObjects];
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarCycleAnimation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarCycleAnimation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarCycleAnimation *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarCycleAnimation *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [(STUIStatusBarCycleAnimation *)self state];
  if (v8 > 2)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_279D38CE0[v8];
  }

  [v7 appendString:v9 withName:@"state"];
  v10 = [(STUIStatusBarCycleAnimation *)self layerAnimations];
  [v7 appendArraySection:v10 withName:@"layerAnimations" skipIfEmpty:1];

  return v7;
}

@end