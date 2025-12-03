@interface MTAllPropertyChangesQueryObserver
- (id)addResultsChangedHandler:(id)handler;
- (void)controllerDidChangeContent:(id)content;
- (void)notifyObservers;
- (void)startObserving;
@end

@implementation MTAllPropertyChangesQueryObserver

- (void)startObserving
{
  v3.receiver = self;
  v3.super_class = MTAllPropertyChangesQueryObserver;
  [(MTBaseQueryObserver *)&v3 startObserving];
  [(MTAllPropertyChangesQueryObserver *)self notifyObservers];
}

- (void)notifyObservers
{
  if (!self->_inCallback)
  {
    self->_inCallback = 1;
    handlers = [(MTBaseQueryObserver *)self handlers];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__MTAllPropertyChangesQueryObserver_notifyObservers__block_invoke;
    v4[3] = &unk_1E856B328;
    v4[4] = self;
    [handlers enumerateKeysAndObjectsUsingBlock:v4];

    self->_inCallback = 0;
  }
}

void __52__MTAllPropertyChangesQueryObserver_notifyObservers__block_invoke(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  [*(a1 + 32) results:v4];
}

- (id)addResultsChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v7.receiver = self;
  v7.super_class = MTAllPropertyChangesQueryObserver;
  v5 = [(MTBaseQueryObserver *)&v7 addResultsChangedHandler:v4];

  return v5;
}

- (void)controllerDidChangeContent:(id)content
{
  delegate = [content delegate];

  if (delegate)
  {

    [(MTAllPropertyChangesQueryObserver *)self notifyObservers];
  }
}

@end