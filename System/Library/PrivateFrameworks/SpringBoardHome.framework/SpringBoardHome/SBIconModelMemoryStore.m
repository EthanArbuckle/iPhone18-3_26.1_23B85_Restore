@interface SBIconModelMemoryStore
- (SBIconModelMemoryStore)initWithCurrentState:(id)a3 desiredState:(id)a4;
- (id)loadCurrentIconState:(id *)a3;
- (id)loadDesiredIconState:(id *)a3;
@end

@implementation SBIconModelMemoryStore

- (SBIconModelMemoryStore)initWithCurrentState:(id)a3 desiredState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBIconModelMemoryStore;
  v8 = [(SBIconModelMemoryStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBIconModelMemoryStore *)v8 setCurrentState:v6];
    [(SBIconModelMemoryStore *)v9 setDesiredState:v7];
  }

  return v9;
}

- (id)loadCurrentIconState:(id *)a3
{
  currentState = self->_currentState;
  if (currentState)
  {
    v4 = [(NSDictionary *)currentState copy];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelMemoryStoreErrorDomain" code:1 userInfo:0];
    v7 = v6;
    v4 = 0;
    *a3 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)loadDesiredIconState:(id *)a3
{
  desiredState = self->_desiredState;
  if (desiredState)
  {
    v4 = [(NSDictionary *)desiredState copy];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBIconModelMemoryStoreErrorDomain" code:1 userInfo:0];
    v7 = v6;
    v4 = 0;
    *a3 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end