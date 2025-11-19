@interface _UIMainMenuState
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIMainMenuState)initWithCoder:(id)a3;
- (id)_initWithChildMenuStates:(id)a3 fulfilledDeferredElementStates:(id)a4 commandStates:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuState

- (id)_initWithChildMenuStates:(id)a3 fulfilledDeferredElementStates:(id)a4 commandStates:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIMainMenuState;
  v12 = [(_UIMainMenuState *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_childMenuStates, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  childMenuStates = self->_childMenuStates;
  v5 = a3;
  [v5 encodeObject:childMenuStates forKey:@"ChildMenuStates"];
  [v5 encodeObject:self->_fulfilledDeferredElementStates forKey:@"FulfilledDeferredElementStates"];
  [v5 encodeObject:self->_commandStates forKey:@"CommandStates"];
}

- (_UIMainMenuState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuState *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = [v6 setWithObjects:{v7, v8, v9, 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"ChildMenuStates"];
    childMenuStates = v5->_childMenuStates;
    v5->_childMenuStates = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = [v13 setWithObjects:{v14, v15, v16, 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"FulfilledDeferredElementStates"];
    fulfilledDeferredElementStates = v5->_fulfilledDeferredElementStates;
    v5->_fulfilledDeferredElementStates = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_self();
    v22 = objc_opt_self();
    v23 = objc_opt_self();
    v24 = [v20 setWithObjects:{v21, v22, v23, 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"CommandStates"];
    commandStates = v5->_commandStates;
    v5->_commandStates = v25;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      childMenuStates = v7->_childMenuStates;
      v9 = self->_childMenuStates;
      v10 = childMenuStates;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_22;
        }

        v12 = [(NSDictionary *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      fulfilledDeferredElementStates = v7->_fulfilledDeferredElementStates;
      v9 = self->_fulfilledDeferredElementStates;
      v14 = fulfilledDeferredElementStates;
      v11 = v14;
      if (v9 == v14)
      {

LABEL_17:
        commandStates = self->_commandStates;
        v16 = v7->_commandStates;
        v9 = commandStates;
        v17 = v16;
        v11 = v17;
        if (v9 == v17)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v17)
          {
            LOBYTE(v12) = [(NSDictionary *)v9 isEqual:v17];
          }
        }

        goto LABEL_22;
      }

      LOBYTE(v12) = 0;
      if (v9 && v14)
      {
        v12 = [(NSDictionary *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    LOBYTE(v12) = 0;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_childMenuStates hash];
  v4 = [(NSDictionary *)self->_fulfilledDeferredElementStates hash]^ v3;
  return v4 ^ [(NSDictionary *)self->_commandStates hash];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_childMenuStates withName:@"childMenuStates"];
  v5 = [v3 appendObject:self->_fulfilledDeferredElementStates withName:@"fulfilledDeferredElementStates"];
  v6 = [v3 appendObject:self->_commandStates withName:@"commandStates"];
  v7 = [v3 build];

  return v7;
}

@end