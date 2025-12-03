@interface RBSProcessIdentifierPredicate
- (BOOL)isEqual:(id)equal;
- (RBSProcessIdentifierPredicate)initWithIdentifier:(id)identifier;
- (RBSProcessIdentifierPredicate)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
@end

@implementation RBSProcessIdentifierPredicate

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = RBSProcessIdentifierPredicate;
  v3 = [(RBSProcessPredicateImpl *)&v5 hash];
  return [(RBSProcessIdentifier *)self->_identifier hash]^ v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_identifier];

  return v5;
}

- (RBSProcessIdentifierPredicate)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(RBSProcessIdentifierPredicate *)a2 initWithIdentifier:?];
  }

  v10.receiver = self;
  v10.super_class = RBSProcessIdentifierPredicate;
  v7 = [(RBSProcessIdentifierPredicate *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_identifier, identifier);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  identifier = self->_identifier;
  v8 = equalCopy->_identifier;
  if (identifier == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (identifier)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(RBSProcessIdentifier *)identifier isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (RBSProcessIdentifierPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSProcessIdentifierPredicate;
  v5 = [(RBSProcessIdentifierPredicate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)initWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Identifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end