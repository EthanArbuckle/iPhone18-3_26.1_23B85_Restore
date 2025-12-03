@interface RBSProcessBundleIdentifiersPredicate
- (BOOL)matchesProcess:(id)process;
- (RBSProcessBundleIdentifiersPredicate)initWithIdentifiers:(id)identifiers;
- (RBSProcessBundleIdentifiersPredicate)initWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessBundleIdentifiersPredicate

- (RBSProcessBundleIdentifiersPredicate)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    [(RBSProcessBundleIdentifiersPredicate *)a2 initWithIdentifiers:?];
  }

  v8.receiver = self;
  v8.super_class = RBSProcessBundleIdentifiersPredicate;
  v6 = [(RBSProcessCollectionPredicateImpl *)&v8 initWithIdentifiers:identifiersCopy];

  return v6;
}

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
  identity = [processCopy identity];
  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
  if (embeddedApplicationIdentifier)
  {
    identifier = embeddedApplicationIdentifier;
  }

  else
  {
    bundle = [processCopy bundle];
    identifier = [bundle identifier];

    if (!identifier)
    {
      v9 = 0;
      goto LABEL_5;
    }
  }

  v9 = [(NSSet *)self->super._identifiers containsObject:identifier];

LABEL_5:
  return v9;
}

- (RBSProcessBundleIdentifiersPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_identifiers"];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = RBSProcessBundleIdentifiersPredicate;
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
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Bundles.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"identifiers"}];
}

@end