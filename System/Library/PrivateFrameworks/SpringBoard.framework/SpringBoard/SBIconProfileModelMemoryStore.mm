@interface SBIconProfileModelMemoryStore
- (SBIconProfileModelMemoryStore)initWithCurrentState:(id)state desiredState:(id)desiredState;
- (SBIconProfileModelMemoryStore)initWithITunesRepresentation:(id)representation;
- (id)loadCurrentIconState:(id *)state;
- (id)loadDesiredIconState:(id *)state;
@end

@implementation SBIconProfileModelMemoryStore

- (SBIconProfileModelMemoryStore)initWithITunesRepresentation:(id)representation
{
  v4 = [SBIconStateArchiver rootArchiveFromITunesRepresentation:representation];
  v5 = [SBIconStateArchiver modernizeRootArchive:v4];

  if (v5)
  {
    self = [(SBIconProfileModelMemoryStore *)self initWithCurrentState:v5 desiredState:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SBIconProfileModelMemoryStore)initWithCurrentState:(id)state desiredState:(id)desiredState
{
  stateCopy = state;
  desiredStateCopy = desiredState;
  v11.receiver = self;
  v11.super_class = SBIconProfileModelMemoryStore;
  v8 = [(SBIconProfileModelMemoryStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBIconProfileModelMemoryStore *)v8 setCurrentState:stateCopy];
    [(SBIconProfileModelMemoryStore *)v9 setDesiredState:desiredStateCopy];
  }

  return v9;
}

- (id)loadCurrentIconState:(id *)state
{
  v3 = [(NSDictionary *)self->_currentState copy];

  return v3;
}

- (id)loadDesiredIconState:(id *)state
{
  v3 = [(NSDictionary *)self->_desiredState copy];

  return v3;
}

@end