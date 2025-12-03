@interface RBSProcessPredicateImpl
- (BOOL)matchesProcess:(id)process;
- (NSString)description;
- (id)processIdentifier;
- (id)processIdentifiers;
- (unint64_t)hash;
@end

@implementation RBSProcessPredicateImpl

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (id)processIdentifiers
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  processIdentifier = v3;

  processIdentifiers = [(RBSProcessPredicateImpl *)processIdentifier processIdentifiers];
  if (processIdentifiers)
  {
    processIdentifiers4 = processIdentifiers;
  }

  else
  {
    v7 = selfCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    processIdentifiers2 = [(RBSProcessPredicateImpl *)v9 processIdentifiers];
    v11 = processIdentifiers2;
    if (processIdentifiers2)
    {
      processIdentifiers4 = processIdentifiers2;
    }

    else
    {
      v12 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      processIdentifiers3 = [(RBSProcessPredicateImpl *)v14 processIdentifiers];
      v16 = processIdentifiers3;
      if (processIdentifiers3)
      {
        processIdentifiers4 = processIdentifiers3;
      }

      else
      {
        v17 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        processIdentifiers4 = [(RBSProcessPredicateImpl *)v19 processIdentifiers];
      }
    }

    if (processIdentifiers4)
    {
      goto LABEL_23;
    }

    processIdentifier = [(RBSProcessPredicateImpl *)v7 processIdentifier];
    if (processIdentifier)
    {
      v21 = MEMORY[0x1E695DFD8];
      v22 = [RBSProcessIdentifier identifierForIdentifier:processIdentifier];
      processIdentifiers4 = [v21 setWithObject:v22];
    }

    else
    {
      processIdentifiers4 = 0;
    }
  }

LABEL_23:

  return processIdentifiers4;
}

- (id)processIdentifier
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [(RBSProcessPredicateImpl *)v4 identifier];
  v6 = identifier;
  if (identifier)
  {
    processIdentifier4 = identifier;
  }

  else
  {
    v8 = selfCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    processIdentifier = [(RBSProcessPredicateImpl *)v10 processIdentifier];
    v12 = processIdentifier;
    if (processIdentifier)
    {
      processIdentifier4 = processIdentifier;
    }

    else
    {
      v13 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      processIdentifier2 = [(RBSProcessPredicateImpl *)v15 processIdentifier];
      v17 = processIdentifier2;
      if (processIdentifier2)
      {
        processIdentifier4 = processIdentifier2;
      }

      else
      {
        v18 = v13;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        processIdentifier3 = [(RBSProcessPredicateImpl *)v20 processIdentifier];
        v22 = processIdentifier3;
        if (processIdentifier3)
        {
          processIdentifier4 = processIdentifier3;
        }

        else
        {
          v23 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          processIdentifier4 = [(RBSProcessPredicateImpl *)v25 processIdentifier];
        }
      }
    }
  }

  return processIdentifier4;
}

- (NSString)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [objc_opt_class() description];
  v4 = [v2 initWithFormat:@"<%@>", v3];

  return v4;
}

- (BOOL)matchesProcess:(id)process
{
  OUTLINED_FUNCTION_1();
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_1_1(v3);
  return 0;
}

@end