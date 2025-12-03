@interface _UIGroupCompletion
- (void)_performAllCompletions;
- (void)addCompletion:(id)completion;
- (void)addNonIncrementingCompletion:(id)completion;
- (void)complete;
- (void)replaceCompletion:(id)completion;
@end

@implementation _UIGroupCompletion

- (void)_performAllCompletions
{
  v25 = *MEMORY[0x1E69E9840];
  self->_isCompleting = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_completions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v19 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  completions = self->_completions;
  self->_completions = 0;

  self->_isCompleting = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_scheduledCompletions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(_UIGroupCompletion *)self addCompletion:*(*(&v15 + 1) + 8 * v13++), v15];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  scheduledCompletions = self->_scheduledCompletions;
  self->_scheduledCompletions = 0;
}

- (void)complete
{
  refCount = self->_refCount;
  if (refCount)
  {
    v3 = refCount - 1;
    self->_refCount = v3;
    if (!v3)
    {
      [(_UIGroupCompletion *)self _performAllCompletions];
    }
  }
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_isCompleting)
  {
    scheduledCompletions = self->_scheduledCompletions;
    if (!scheduledCompletions)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = self->_scheduledCompletions;
      self->_scheduledCompletions = array;

      completionCopy = v9;
      scheduledCompletions = self->_scheduledCompletions;
    }

    v8 = _Block_copy(completionCopy);
    [(NSMutableArray *)scheduledCompletions addObject:v8];
  }

  else
  {
    [(_UIGroupCompletion *)self addNonIncrementingCompletion:completionCopy];
    [(_UIGroupCompletion *)self increment];
  }
}

- (void)replaceCompletion:(id)completion
{
  completionCopy = completion;
  aBlock = completionCopy;
  if (self->_isCompleting)
  {
    scheduledCompletions = self->_scheduledCompletions;
    if (!scheduledCompletions)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = self->_scheduledCompletions;
      self->_scheduledCompletions = array;

      completionCopy = aBlock;
      scheduledCompletions = self->_scheduledCompletions;
    }

    v8 = _Block_copy(completionCopy);
    [(NSMutableArray *)scheduledCompletions addObject:v8];
  }

  else
  {
    completions = self->_completions;
    self->_completions = 0;

    [(_UIGroupCompletion *)self addNonIncrementingCompletion:aBlock];
    [(_UIGroupCompletion *)self increment];
  }
}

- (void)addNonIncrementingCompletion:(id)completion
{
  completionCopy = completion;
  completions = self->_completions;
  aBlock = completionCopy;
  if (!completions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = array;

    completionCopy = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)completions addObject:v8];
}

@end