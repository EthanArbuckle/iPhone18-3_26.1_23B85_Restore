@interface _UIViewBackingObserver
+ (id)sharedObserver;
- (id)additionalBlocks;
- (void)observe:(id)observe forKeyPath:(id)path once:(id)once;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _UIViewBackingObserver

+ (id)sharedObserver
{
  if (qword_1ED49E108 != -1)
  {
    dispatch_once(&qword_1ED49E108, &__block_literal_global_265);
  }

  v3 = _MergedGlobals_1115;

  return v3;
}

- (void)observe:(id)observe forKeyPath:(id)path once:(id)once
{
  onceCopy = once;
  if (self->_observerBlock)
  {
    pathCopy = path;
    observeCopy = observe;
    v11 = objc_alloc_init(_UIViewBackingObserver);
    additionalObservers = [(_UIViewBackingObserver *)self additionalObservers];
    [additionalObservers addObject:v11];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50___UIViewBackingObserver_observe_forKeyPath_once___block_invoke;
    v17[3] = &unk_1E70FCE28;
    v17[4] = self;
    v18 = v11;
    v19 = onceCopy;
    observeCopy2 = v11;
    [(_UIViewBackingObserver *)observeCopy2 observe:observeCopy forKeyPath:pathCopy once:v17];
  }

  else
  {
    pathCopy2 = path;
    observeCopy2 = observe;
    v15 = _Block_copy(onceCopy);
    observerBlock = self->_observerBlock;
    self->_observerBlock = v15;

    [(_UIViewBackingObserver *)observeCopy2 addObserver:self forKeyPath:pathCopy2 options:0 context:&_UIViewBackingObserverContext];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &_UIViewBackingObserverContext)
  {
    [object removeObserver:self forKeyPath:path context:&_UIViewBackingObserverContext];
    v9 = _Block_copy(self->_observerBlock);
    observerBlock = self->_observerBlock;
    self->_observerBlock = 0;

    v9[2]();
  }
}

- (id)additionalBlocks
{
  additionalObservers = self->_additionalObservers;
  if (!additionalObservers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_additionalObservers;
    self->_additionalObservers = v4;

    additionalObservers = self->_additionalObservers;
  }

  return additionalObservers;
}

@end