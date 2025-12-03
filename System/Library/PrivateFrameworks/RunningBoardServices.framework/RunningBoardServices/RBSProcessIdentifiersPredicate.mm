@interface RBSProcessIdentifiersPredicate
- (BOOL)matchesProcess:(id)process;
- (RBSProcessIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (RBSProcessIdentifiersPredicate)initWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessIdentifiersPredicate

- (RBSProcessIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    [(RBSProcessIdentifiersPredicate *)a2 initWithIdentifiers:?];
  }

  v8.receiver = self;
  v8.super_class = RBSProcessIdentifiersPredicate;
  v6 = [(RBSProcessCollectionPredicateImpl *)&v8 initWithIdentifiers:identifiersCopy];

  return v6;
}

- (BOOL)matchesProcess:(id)process
{
  identifiers = self->super._identifiers;
  instance = [process instance];
  identifier = [instance identifier];
  LOBYTE(identifiers) = [(NSSet *)identifiers containsObject:identifier];

  return identifiers;
}

- (RBSProcessIdentifiersPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_identifiers"];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = RBSProcessIdentifiersPredicate;
    self = [(RBSProcessCollectionPredicateImpl *)&v9 initWithIdentifiers:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithIdentifiers:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Identifier.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];
}

@end