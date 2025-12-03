@interface _UIStateMachine
- (_UIStateMachine)initWithSpec:(void *)spec initialState:(unint64_t)state;
- (_UIStateMachine)initWithStates:(unint64_t)states events:(unint64_t)events initialState:(unint64_t)state;
- (void)dealloc;
- (void)setStateChangeObserver:(unint64_t)observer observer:(id)a4;
- (void)setStaticTransitionFromState:(unint64_t)state withEvent:(unint64_t)event toState:(unint64_t)toState;
- (void)setTransitionHandlerForState:(unint64_t)state withEvent:(unint64_t)event transitionHandler:(id)handler postTransitionHandler:(id)transitionHandler;
@end

@implementation _UIStateMachine

- (_UIStateMachine)initWithSpec:(void *)spec initialState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = _UIStateMachine;
  result = [(_UIStateMachine *)&v7 init];
  if (result)
  {
    result->_spec = spec;
    result->_state = state;
    result->_externalSpec = 1;
  }

  return result;
}

- (_UIStateMachine)initWithStates:(unint64_t)states events:(unint64_t)events initialState:(unint64_t)state
{
  eventsCopy = events;
  statesCopy = states;
  v12.receiver = self;
  v12.super_class = _UIStateMachine;
  v8 = [(_UIStateMachine *)&v12 init];
  if (v8)
  {
    v9 = 24 * eventsCopy + 8;
    v10 = malloc_type_calloc(1uLL, v9 * statesCopy + 32, 0x9F77A0CDuLL);
    v10->var0.var0 = v9;
    v10->var0.var1 = statesCopy;
    v10->var0.var2 = eventsCopy;
    v8->_spec = v10;
    v8->_state = state;
    v8->_externalSpec = 0;
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_externalSpec)
  {
    spec = self->_spec;
    if (spec->var0.var1)
    {
      v4 = 0;
      var2 = spec->var2;
      do
      {
        var0 = spec->var0.var0;
        v7 = spec->var0.var0 * v4;
        v8 = *(&var2->var0 + v7);
        *(&var2->var0 + v7) = 0;

        if (spec->var0.var2)
        {
          v9 = 0;
          v10 = (&spec->var2[2].var0 + var0 * v4);
          do
          {
            v11 = *v10;
            *v10 = 0;

            v12 = *(v10 - 1);
            *(v10 - 1) = 0;

            ++v9;
            v10 += 3;
          }

          while (v9 < spec->var0.var2);
        }

        ++v4;
      }

      while (v4 < spec->var0.var1);
    }

    free(spec);
  }

  v13.receiver = self;
  v13.super_class = _UIStateMachine;
  [(_UIStateMachine *)&v13 dealloc];
}

- (void)setTransitionHandlerForState:(unint64_t)state withEvent:(unint64_t)event transitionHandler:(id)handler postTransitionHandler:(id)transitionHandler
{
  spec = self->_spec;
  if (spec->var0.var1 <= state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIStateMachine(Legacy) setTransitionHandlerForState:withEvent:transitionHandler:postTransitionHandler:]"];
    [currentHandler handleFailureInFunction:v18 file:@"_UIStateMachine.m" lineNumber:201 description:{@"Attempting to set transition handler with invalid fromState. State (@lu) is out of range for the initialized stateCount (%lu)", state, self->_spec->var0.var1}];

    spec = self->_spec;
  }

  if (spec->var0.var2 <= event)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIStateMachine(Legacy) setTransitionHandlerForState:withEvent:transitionHandler:postTransitionHandler:]"];
    [currentHandler2 handleFailureInFunction:v20 file:@"_UIStateMachine.m" lineNumber:202 description:{@"Attempting to set transition handler with invalid event. State (@lu) is out of range for the initialized eventCount (%lu)", event, self->_spec->var0.var2}];

    spec = self->_spec;
  }

  v12 = spec + 24 * event + spec->var0.var0 * state;
  v13 = _Block_copy(transitionHandler);
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  v15 = _Block_copy(handler);
  v16 = *(v12 + 48);
  *(v12 + 48) = v15;

  *(v12 + 56) = 16842752;
}

- (void)setStaticTransitionFromState:(unint64_t)state withEvent:(unint64_t)event toState:(unint64_t)toState
{
  toStateCopy = toState;
  spec = self->_spec;
  if (spec->var0.var1 <= state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIStateMachine(Legacy) setStaticTransitionFromState:withEvent:toState:]"];
    [currentHandler handleFailureInFunction:v14 file:@"_UIStateMachine.m" lineNumber:212 description:{@"Attempting to set static transition with invalid fromState. State (@lu) is out of range for the initialized stateCount (%lu)", state, self->_spec->var0.var1}];

    spec = self->_spec;
  }

  if (spec->var0.var2 <= event)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIStateMachine(Legacy) setStaticTransitionFromState:withEvent:toState:]"];
    [currentHandler2 handleFailureInFunction:v16 file:@"_UIStateMachine.m" lineNumber:213 description:{@"Attempting to set static transition with invalid event. State (@lu) is out of range for the initialized eventCount (%lu)", event, self->_spec->var0.var2}];

    spec = self->_spec;
  }

  v10 = spec + 24 * event + spec->var0.var0 * state;
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(v10 + 48);
  *(v10 + 48) = 0;

  *(v10 + 56) = toStateCopy;
}

- (void)setStateChangeObserver:(unint64_t)observer observer:(id)a4
{
  v4 = self->_spec + self->_spec->var0.var0 * observer;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___UIStateMachine_Legacy__setStateChangeObserver_observer___block_invoke;
  aBlock[3] = &unk_1E712A528;
  aBlock[4] = a4;
  v5 = _Block_copy(aBlock);
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;
}

@end