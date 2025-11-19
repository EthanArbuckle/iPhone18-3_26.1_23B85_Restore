@interface RBSProcessBundleIdentifiersPredicate
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessBundleIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (RBSProcessBundleIdentifiersPredicate)initWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessBundleIdentifiersPredicate

- (RBSProcessBundleIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(RBSProcessBundleIdentifiersPredicate *)a2 initWithIdentifiers:?];
  }

  v8.receiver = self;
  v8.super_class = RBSProcessBundleIdentifiersPredicate;
  v6 = [(RBSProcessCollectionPredicateImpl *)&v8 initWithIdentifiers:v5];

  return v6;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  v6 = [v5 embeddedApplicationIdentifier];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v4 bundle];
    v7 = [v8 identifier];

    if (!v7)
    {
      v9 = 0;
      goto LABEL_5;
    }
  }

  v9 = [(NSSet *)self->super._identifiers containsObject:v7];

LABEL_5:
  return v9;
}

- (RBSProcessBundleIdentifiersPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_identifiers"];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = RBSProcessBundleIdentifiersPredicate;
    self = [(RBSProcessCollectionPredicateImpl *)&v9 initWithIdentifiers:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initWithIdentifiers:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Bundles.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];
}

@end