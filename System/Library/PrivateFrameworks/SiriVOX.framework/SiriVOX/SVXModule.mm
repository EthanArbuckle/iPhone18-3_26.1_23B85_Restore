@interface SVXModule
- (SVXModule)initWithIdentifier:(id)identifier instanceClass:(Class)class instanceContext:(id)context preferences:(id)preferences analytics:(id)analytics performer:(id)performer;
- (id)description;
@end

@implementation SVXModule

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = SVXModule;
  v4 = [(SVXModule *)&v10 description];
  identifier = self->_identifier;
  v6 = NSStringFromClass(self->_instanceClass);
  instanceContext = self->_instanceContext;
  v8 = [v3 stringWithFormat:@"%@ {identifier = %@, instanceClass = %@, instanceContext = %@, performer = %@}", v4, identifier, v6, instanceContext, self->_performer];

  return v8;
}

- (SVXModule)initWithIdentifier:(id)identifier instanceClass:(Class)class instanceContext:(id)context preferences:(id)preferences analytics:(id)analytics performer:(id)performer
{
  identifierCopy = identifier;
  contextCopy = context;
  preferencesCopy = preferences;
  analyticsCopy = analytics;
  obj = performer;
  performerCopy = performer;
  if (identifierCopy)
  {
    if (class)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

    if (class)
    {
LABEL_3:
      if (contextCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"instanceClass != Nil"}];

  if (contextCopy)
  {
LABEL_4:
    if (preferencesCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];

  if (preferencesCopy)
  {
LABEL_5:
    if (analyticsCopy)
    {
      goto LABEL_6;
    }

LABEL_14:
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"analytics != nil"}];

    if (performerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];

  if (!analyticsCopy)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (performerCopy)
  {
    goto LABEL_7;
  }

LABEL_15:
  currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"performer != nil"}];

LABEL_7:
  v31.receiver = self;
  v31.super_class = SVXModule;
  v18 = [(SVXModule *)&v31 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_instanceContext, context);
    objc_storeStrong(&v18->_preferences, preferences);
    objc_storeStrong(&v18->_analytics, analytics);
    objc_storeStrong(&v18->_performer, obj);
    v18->_instanceClass = class;
  }

  return v18;
}

@end