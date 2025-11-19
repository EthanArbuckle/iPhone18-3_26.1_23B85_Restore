@interface SBIconProfileModelMemoryStore
- (SBIconProfileModelMemoryStore)initWithCurrentState:(id)a3 desiredState:(id)a4;
- (SBIconProfileModelMemoryStore)initWithITunesRepresentation:(id)a3;
- (id)loadCurrentIconState:(id *)a3;
- (id)loadDesiredIconState:(id *)a3;
@end

@implementation SBIconProfileModelMemoryStore

- (SBIconProfileModelMemoryStore)initWithITunesRepresentation:(id)a3
{
  v4 = [SBIconStateArchiver rootArchiveFromITunesRepresentation:a3];
  v5 = [SBIconStateArchiver modernizeRootArchive:v4];

  if (v5)
  {
    self = [(SBIconProfileModelMemoryStore *)self initWithCurrentState:v5 desiredState:0];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBIconProfileModelMemoryStore)initWithCurrentState:(id)a3 desiredState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBIconProfileModelMemoryStore;
  v8 = [(SBIconProfileModelMemoryStore *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SBIconProfileModelMemoryStore *)v8 setCurrentState:v6];
    [(SBIconProfileModelMemoryStore *)v9 setDesiredState:v7];
  }

  return v9;
}

- (id)loadCurrentIconState:(id *)a3
{
  v3 = [(NSDictionary *)self->_currentState copy];

  return v3;
}

- (id)loadDesiredIconState:(id *)a3
{
  v3 = [(NSDictionary *)self->_desiredState copy];

  return v3;
}

@end