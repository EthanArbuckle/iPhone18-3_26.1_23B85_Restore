@interface _UIMainMenuDeferredElementState
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIMainMenuDeferredElementState)initWithCoder:(id)a3;
- (id)_initWithProvidedElements:(id)a3 childMenuStates:(id)a4 fulfilledDeferredElementStates:(id)a5 commandStates:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuDeferredElementState

- (id)_initWithProvidedElements:(id)a3 childMenuStates:(id)a4 fulfilledDeferredElementStates:(id)a5 commandStates:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _UIMainMenuDeferredElementState;
  v15 = [(_UIMainMenuDeferredElementState *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_providedElements, a3);
    objc_storeStrong(p_isa + 1, a4);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 3, a6);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  providedElements = self->_providedElements;
  v5 = a3;
  [v5 encodeObject:providedElements forKey:@"ProvidedElements"];
  [v5 encodeObject:self->_childMenuStates forKey:@"ChildMenuStates"];
  [v5 encodeObject:self->_fulfilledDeferredElementStates forKey:@"FulfilledDeferredElementStates"];
  [v5 encodeObject:self->_commandStates forKey:@"CommandStates"];
}

- (_UIMainMenuDeferredElementState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuDeferredElementState *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"ProvidedElements"];
    providedElements = v5->_providedElements;
    v5->_providedElements = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_self();
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = [v14 setWithObjects:{v15, v16, v17, 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"ChildMenuStates"];
    childMenuStates = v5->_childMenuStates;
    v5->_childMenuStates = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_self();
    v23 = objc_opt_self();
    v24 = objc_opt_self();
    v25 = [v21 setWithObjects:{v22, v23, v24, 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"FulfilledDeferredElementStates"];
    fulfilledDeferredElementStates = v5->_fulfilledDeferredElementStates;
    v5->_fulfilledDeferredElementStates = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_self();
    v30 = objc_opt_self();
    v31 = objc_opt_self();
    v32 = [v28 setWithObjects:{v29, v30, v31, 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"CommandStates"];
    commandStates = v5->_commandStates;
    v5->_commandStates = v33;
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
      providedElements = v7->_providedElements;
      v9 = self->_providedElements;
      v10 = providedElements;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_28;
        }

        v12 = [(NSArray *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      childMenuStates = v7->_childMenuStates;
      v9 = self->_childMenuStates;
      v14 = childMenuStates;
      v11 = v14;
      if (v9 == v14)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v14)
        {
          goto LABEL_28;
        }

        v12 = [(NSArray *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_29;
        }
      }

      fulfilledDeferredElementStates = v7->_fulfilledDeferredElementStates;
      v9 = self->_fulfilledDeferredElementStates;
      v16 = fulfilledDeferredElementStates;
      v11 = v16;
      if (v9 == v16)
      {

LABEL_23:
        commandStates = self->_commandStates;
        v18 = v7->_commandStates;
        v9 = commandStates;
        v19 = v18;
        v11 = v19;
        if (v9 == v19)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v19)
          {
            LOBYTE(v12) = [(NSArray *)v9 isEqual:v19];
          }
        }

        goto LABEL_28;
      }

      LOBYTE(v12) = 0;
      if (v9 && v16)
      {
        v12 = [(NSArray *)v9 isEqual:v16];

        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    LOBYTE(v12) = 0;
  }

LABEL_30:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_providedElements hash];
  v4 = [(NSDictionary *)self->_childMenuStates hash]^ v3;
  v5 = [(NSDictionary *)self->_fulfilledDeferredElementStates hash];
  return v4 ^ v5 ^ [(NSDictionary *)self->_commandStates hash];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_providedElements withName:@"providedElements"];
  v5 = [v3 appendObject:self->_childMenuStates withName:@"childMenuStates"];
  v6 = [v3 appendObject:self->_fulfilledDeferredElementStates withName:@"fulfilledDeferredElementStates"];
  v7 = [v3 appendObject:self->_commandStates withName:@"commandStates"];
  v8 = [v3 build];

  return v8;
}

@end