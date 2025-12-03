@interface _VFGeneratorObservable
- (_VFGeneratorObservable)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector;
- (id)subscribe:(id)subscribe;
- (void)_scheduleNextResultForObserver:(id)observer;
- (void)_updateState;
@end

@implementation _VFGeneratorObservable

- (_VFGeneratorObservable)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector
{
  stateCopy = state;
  conditionCopy = condition;
  nextStateCopy = nextState;
  selectorCopy = selector;
  v26.receiver = self;
  v26.super_class = _VFGeneratorObservable;
  v14 = [(_VFGeneratorObservable *)&v26 init];
  if (v14)
  {
    v15 = objc_alloc_init(VFCancelationToken);
    cancelable = v14->_cancelable;
    v14->_cancelable = v15;

    v17 = [stateCopy copyWithZone:0];
    state = v14->_state;
    v14->_state = v17;

    v19 = MEMORY[0x2743C3100](conditionCopy);
    condition = v14->_condition;
    v14->_condition = v19;

    v21 = MEMORY[0x2743C3100](nextStateCopy);
    nextStateForState = v14->_nextStateForState;
    v14->_nextStateForState = v21;

    v23 = MEMORY[0x2743C3100](selectorCopy);
    resultFromState = v14->_resultFromState;
    v14->_resultFromState = v23;
  }

  return v14;
}

- (id)subscribe:(id)subscribe
{
  [(_VFGeneratorObservable *)self _scheduleNextResultForObserver:subscribe];
  v4 = objc_alloc_init(VFCancelationToken);
  [(VFCancelationToken *)v4 addCancelable:self->_cancelable];

  return v4;
}

- (void)_scheduleNextResultForObserver:(id)observer
{
  observerCopy = observer;
  if ([(_VFGeneratorObservable *)self _isFinished])
  {
    [observerCopy observerDidComplete];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57___VFGeneratorObservable__scheduleNextResultForObserver___block_invoke;
    v10[3] = &unk_279E346E0;
    v10[4] = self;
    v11 = observerCopy;
    v5 = MEMORY[0x2743C3100](v10);
    v5[2](v5, v6, v7, v8, v9);
  }
}

- (void)_updateState
{
  state = self->_state;
  v4 = (*(self->_nextStateForState + 2))();
  v5 = self->_state;
  self->_state = v4;

  MEMORY[0x2821F96F8]();
}

@end