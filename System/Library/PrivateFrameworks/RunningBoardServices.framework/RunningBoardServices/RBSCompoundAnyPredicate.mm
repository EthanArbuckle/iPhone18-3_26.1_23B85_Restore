@interface RBSCompoundAnyPredicate
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (RBSCompoundAnyPredicate)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (id)processIdentifier;
- (id)processIdentifiers;
- (void)initWithPredicates:(void *)predicates;
@end

@implementation RBSCompoundAnyPredicate

- (id)processIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = self->_predicates;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        processIdentifier = [*(*(&v15 + 1) + 8 * i) processIdentifier];
        v9 = processIdentifier;
        if (processIdentifier)
        {
          if (v5)
          {
            v10 = rbs_general_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 0;
              _os_log_impl(&dword_18E8AD000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get processIdentifier for predicate with multiple possibilities", v14, 2u);
            }

            v11 = 0;
            goto LABEL_17;
          }

          v5 = processIdentifier;
        }
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v5 = v5;
  v11 = v5;
LABEL_17:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)processIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_predicates;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        processIdentifiers = [*(*(&v13 + 1) + 8 * i) processIdentifiers];
        v9 = processIdentifiers;
        if (processIdentifiers)
        {
          if (v5)
          {
            v10 = [v5 setByAddingObjectsFromSet:processIdentifiers];

            v5 = v10;
          }

          else
          {
            v5 = processIdentifiers;
          }
        }
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)matchesProcess:(id)process
{
  v16 = *MEMORY[0x1E69E9840];
  processCopy = process;
  if ([(NSSet *)self->_predicates count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_predicates;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) matchesProcess:{processCopy, v11}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (RBSCompoundAnyPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RBSCompoundAnyPredicate;
  v5 = [(RBSCompoundAnyPredicate *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"_predicates"];
    predicates = v5->_predicates;
    v5->_predicates = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_11;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  predicates = self->_predicates;
  v8 = equalCopy->_predicates;
  if (predicates == v8)
  {
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (predicates)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    Count = CFSetGetCount(predicates);
    if (Count == CFSetGetCount(v8))
    {
      v6 = [(NSSet *)predicates isEqualToSet:v8];
      goto LABEL_12;
    }
  }

LABEL_3:
  v6 = 0;
LABEL_12:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  allObjects = [(NSSet *)self->_predicates allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];
  v7 = [v3 initWithFormat:@"<%@ [%@]>", v4, v6];

  return v7;
}

- (void)initWithPredicates:(void *)predicates
{
  v3 = a2;
  if (predicates)
  {
    v7.receiver = predicates;
    v7.super_class = RBSCompoundAnyPredicate;
    predicates = objc_msgSendSuper2(&v7, sel_init);
    if (predicates)
    {
      v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
      v5 = predicates[1];
      predicates[1] = v4;
    }
  }

  return predicates;
}

@end