@interface SBStartupTransitionContextPersistence
- (SBStartupTransitionContextPersistence)initWithBootDefaults:(id)defaults loginSession:(BOOL)session;
- (id)readTransitionContext;
- (void)saveContext:(id)context;
@end

@implementation SBStartupTransitionContextPersistence

- (SBStartupTransitionContextPersistence)initWithBootDefaults:(id)defaults loginSession:(BOOL)session
{
  defaultsCopy = defaults;
  v11.receiver = self;
  v11.super_class = SBStartupTransitionContextPersistence;
  v8 = [(SBStartupTransitionContextPersistence *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bootDefaults, defaults);
    v9->_loginSession = session;
  }

  return v9;
}

- (void)saveContext:(id)context
{
  bootDefaults = self->_bootDefaults;
  if (context)
  {
    _representation = [context _representation];
    [(SBBootDefaults *)bootDefaults setBootTransitionContext:_representation];
  }

  else
  {
    v4 = self->_bootDefaults;

    [(SBBootDefaults *)v4 setBootTransitionContext:?];
  }
}

- (id)readTransitionContext
{
  bootTransitionContext = [(SBBootDefaults *)self->_bootDefaults bootTransitionContext];
  v4 = [[SBStartupTransitionContext alloc] _initWithRepresentation:bootTransitionContext loginSession:self->_loginSession];

  return v4;
}

@end