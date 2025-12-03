@interface _UIDatePickerCalendarTimeLabelStateMachineContext
- (BOOL)currentSateCanTransitionWithEvents:(id)events;
- (_UIDatePickerCalendarTimeLabelStateMachineContext)initWithUpdateHandler:(id)handler;
- (void)_updateFromState:(unint64_t)state;
@end

@implementation _UIDatePickerCalendarTimeLabelStateMachineContext

- (_UIDatePickerCalendarTimeLabelStateMachineContext)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDatePickerCalendarTimeLabelStateMachine.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"updateHandler"}];
  }

  v12.receiver = self;
  v12.super_class = _UIDatePickerCalendarTimeLabelStateMachineContext;
  v6 = [(_UIDatePickerCalendarTimeLabelStateMachineContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_currentState = 1;
    v8 = _Block_copy(handlerCopy);
    updateHandler = v7->_updateHandler;
    v7->_updateHandler = v8;
  }

  return v7;
}

- (void)_updateFromState:(unint64_t)state
{
  if (self->_currentState != state)
  {
    self->_lastDistinctState = state;
  }

  self->_previousState = state;
  (*(self->_updateHandler + 2))();
}

- (BOOL)currentSateCanTransitionWithEvents:(id)events
{
  eventsCopy = events;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  currentState = self->_currentState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88___UIDatePickerCalendarTimeLabelStateMachineContext_currentSateCanTransitionWithEvents___block_invoke;
  v7[3] = &unk_1E71015B8;
  v7[4] = &v8;
  v7[5] = currentState;
  [eventsCopy enumerateIndexesUsingBlock:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

@end