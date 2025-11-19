@interface RBSProcessIdentifiersPredicate
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessIdentifiersPredicate)initWithIdentifiers:(id)a3;
- (RBSProcessIdentifiersPredicate)initWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessIdentifiersPredicate

- (RBSProcessIdentifiersPredicate)initWithIdentifiers:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(RBSProcessIdentifiersPredicate *)a2 initWithIdentifiers:?];
  }

  v8.receiver = self;
  v8.super_class = RBSProcessIdentifiersPredicate;
  v6 = [(RBSProcessCollectionPredicateImpl *)&v8 initWithIdentifiers:v5];

  return v6;
}

- (BOOL)matchesProcess:(id)a3
{
  identifiers = self->super._identifiers;
  v4 = [a3 instance];
  v5 = [v4 identifier];
  LOBYTE(identifiers) = [(NSSet *)identifiers containsObject:v5];

  return identifiers;
}

- (RBSProcessIdentifiersPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_identifiers"];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = RBSProcessIdentifiersPredicate;
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
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Identifier.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];
}

@end