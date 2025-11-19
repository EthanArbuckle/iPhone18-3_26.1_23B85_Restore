@interface SVXModule
- (SVXModule)initWithIdentifier:(id)a3 instanceClass:(Class)a4 instanceContext:(id)a5 preferences:(id)a6 analytics:(id)a7 performer:(id)a8;
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

- (SVXModule)initWithIdentifier:(id)a3 instanceClass:(Class)a4 instanceContext:(id)a5 preferences:(id)a6 analytics:(id)a7 performer:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  obj = a8;
  v17 = a8;
  if (v13)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

    if (a4)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"instanceClass != Nil"}];

  if (v14)
  {
LABEL_4:
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];

  if (v15)
  {
LABEL_5:
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_14:
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"analytics != nil"}];

    if (v17)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_13:
  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];

  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v17)
  {
    goto LABEL_7;
  }

LABEL_15:
  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"SVXModule.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"performer != nil"}];

LABEL_7:
  v31.receiver = self;
  v31.super_class = SVXModule;
  v18 = [(SVXModule *)&v31 init];
  if (v18)
  {
    v19 = [v13 copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_instanceContext, a5);
    objc_storeStrong(&v18->_preferences, a6);
    objc_storeStrong(&v18->_analytics, a7);
    objc_storeStrong(&v18->_performer, obj);
    v18->_instanceClass = a4;
  }

  return v18;
}

@end