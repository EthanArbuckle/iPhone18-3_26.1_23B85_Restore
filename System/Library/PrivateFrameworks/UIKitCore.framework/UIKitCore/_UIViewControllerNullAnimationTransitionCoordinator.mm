@interface _UIViewControllerNullAnimationTransitionCoordinator
- (BOOL)_animateAlongsideTransitionInView:(id)a3 systemAnimation:(BOOL)a4 systemCompletion:(BOOL)a5 animation:(id)a6 completion:(id)a7;
- (CGAffineTransform)targetTransform;
- (id)_alongsideAnimations:(BOOL)a3;
- (id)_alongsideCompletions:(BOOL)a3;
- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4;
- (void)_runAlongsideAnimations;
- (void)_runAlongsideCompletions;
- (void)_runAlongsideCompletionsAfterCommit;
- (void)_runAlongsideCompletionsAndClearAlongsideAnimations;
@end

@implementation _UIViewControllerNullAnimationTransitionCoordinator

- (void)_runAlongsideAnimations
{
  v3 = 0;
  v4 = 0;
  self->_transitionIsInFlight = 1;
  do
  {
    v5 = v4;
    v6 = v3;
    v4 = [(_UIViewControllerNullAnimationTransitionCoordinator *)self _alongsideAnimations:0];

    if (!v4)
    {
      break;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78___UIViewControllerNullAnimationTransitionCoordinator__runAlongsideAnimations__block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [(_UIViewControllerNullAnimationTransitionCoordinator *)self _applyBlocks:v4 releaseBlocks:v8];
    v3 = 1;
  }

  while ((v6 & 1) == 0);
  alongsideAnimations = self->_alongsideAnimations;
  self->_alongsideAnimations = 0;
}

- (void)_runAlongsideCompletionsAfterCommit
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __90___UIViewControllerNullAnimationTransitionCoordinator__runAlongsideCompletionsAfterCommit__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v2];
}

- (void)_runAlongsideCompletions
{
  v3 = [(_UIViewControllerNullAnimationTransitionCoordinator *)self _alongsideCompletions:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79___UIViewControllerNullAnimationTransitionCoordinator__runAlongsideCompletions__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(_UIViewControllerNullAnimationTransitionCoordinator *)self _applyBlocks:v3 releaseBlocks:v4];
}

- (CGAffineTransform)targetTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (BOOL)_animateAlongsideTransitionInView:(id)a3 systemAnimation:(BOOL)a4 systemCompletion:(BOOL)a5 animation:(id)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a6;
  v12 = a7;
  transitionIsInFlight = self->_transitionIsInFlight;
  if (v11 && !self->_transitionIsInFlight)
  {
    v14 = [(_UIViewControllerNullAnimationTransitionCoordinator *)self _alongsideAnimations:1];
    v15 = _Block_copy(v11);
    [v14 addObject:v15];
  }

  if (v12)
  {
    v16 = [(_UIViewControllerNullAnimationTransitionCoordinator *)self _alongsideCompletions:1];
    v17 = _Block_copy(v12);
    [v16 addObject:v17];
  }

  return v11 == 0 || !transitionIsInFlight;
}

- (id)_alongsideAnimations:(BOOL)a3
{
  alongsideAnimations = self->_alongsideAnimations;
  if (alongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_alongsideAnimations;
    self->_alongsideAnimations = v6;

    alongsideAnimations = self->_alongsideAnimations;
  }

  return alongsideAnimations;
}

- (id)_alongsideCompletions:(BOOL)a3
{
  alongsideCompletions = self->_alongsideCompletions;
  if (alongsideCompletions)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_alongsideCompletions;
    self->_alongsideCompletions = v6;

    alongsideCompletions = self->_alongsideCompletions;
  }

  return alongsideCompletions;
}

- (void)_runAlongsideCompletionsAndClearAlongsideAnimations
{
  alongsideAnimations = self->_alongsideAnimations;
  self->_alongsideAnimations = 0;

  [(_UIViewControllerNullAnimationTransitionCoordinator *)self _runAlongsideCompletions];
}

- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v7[2](v7);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v16;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 = _Block_copy(*(*(&v15 + 1) + 8 * v13));

          (*(v11 + 2))(v11, self);
          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

@end