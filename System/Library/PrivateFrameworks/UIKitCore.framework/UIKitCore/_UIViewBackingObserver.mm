@interface _UIViewBackingObserver
+ (id)sharedObserver;
- (id)additionalBlocks;
- (void)observe:(id)a3 forKeyPath:(id)a4 once:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (void)observe:(id)a3 forKeyPath:(id)a4 once:(id)a5
{
  v8 = a5;
  if (self->_observerBlock)
  {
    v9 = a4;
    v10 = a3;
    v11 = objc_alloc_init(_UIViewBackingObserver);
    v12 = [(_UIViewBackingObserver *)self additionalObservers];
    [v12 addObject:v11];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50___UIViewBackingObserver_observe_forKeyPath_once___block_invoke;
    v17[3] = &unk_1E70FCE28;
    v17[4] = self;
    v18 = v11;
    v19 = v8;
    v13 = v11;
    [(_UIViewBackingObserver *)v13 observe:v10 forKeyPath:v9 once:v17];
  }

  else
  {
    v14 = a4;
    v13 = a3;
    v15 = _Block_copy(v8);
    observerBlock = self->_observerBlock;
    self->_observerBlock = v15;

    [(_UIViewBackingObserver *)v13 addObserver:self forKeyPath:v14 options:0 context:&_UIViewBackingObserverContext];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &_UIViewBackingObserverContext)
  {
    [a4 removeObserver:self forKeyPath:a3 context:&_UIViewBackingObserverContext];
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