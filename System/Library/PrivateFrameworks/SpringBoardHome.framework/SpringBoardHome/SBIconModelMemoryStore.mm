@interface SBIconModelMemoryStore
- (SBIconModelMemoryStore)initWithCurrentState:(id)state desiredState:(id)desiredState;
- (id)loadCurrentIconState:(id *)state;
- (id)loadDesiredIconState:(id *)state;
@end

@implementation SBIconModelMemoryStore

- (SBIconModelMemoryStore)initWithCurrentState:(id)state desiredState:(id)desiredState
{
  stateCopy = state;
  desiredStateCopy = desiredState;
  v11.receiver = self;
  v11.super_class = SBIconModelMemoryStore;
  v8 = [(SBIconModelMemoryStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBIconModelMemoryStore *)v8 setCurrentState:stateCopy];
    [(SBIconModelMemoryStore *)v9 setDesiredState:desiredStateCopy];
  }

  return v9;
}

- (id)loadCurrentIconState:(id *)state
{
  currentState = self->_currentState;
  if (currentState)
  {
    v4 = [(NSDictionary *)currentState copy];
  }

  else if (state)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelMemoryStoreErrorDomain" code:1 userInfo:0];
    v7 = v6;
    v4 = 0;
    *state = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)loadDesiredIconState:(id *)state
{
  desiredState = self->_desiredState;
  if (desiredState)
  {
    v4 = [(NSDictionary *)desiredState copy];
  }

  else if (state)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelMemoryStoreErrorDomain" code:1 userInfo:0];
    v7 = v6;
    v4 = 0;
    *state = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end