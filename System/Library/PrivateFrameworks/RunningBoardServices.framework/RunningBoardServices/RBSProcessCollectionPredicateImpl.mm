@interface RBSProcessCollectionPredicateImpl
- (BOOL)isEqual:(id)equal;
- (RBSProcessCollectionPredicateImpl)initWithIdentifiers:(id)identifiers;
- (id)description;
@end

@implementation RBSProcessCollectionPredicateImpl

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_identifiers];

  return v5;
}

- (RBSProcessCollectionPredicateImpl)initWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    [RBSProcessCollectionPredicateImpl initWithIdentifiers:];
  }

  v9.receiver = self;
  v9.super_class = RBSProcessCollectionPredicateImpl;
  v5 = [(RBSProcessCollectionPredicateImpl *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    identifiers = v5->_identifiers;
    v5->_identifiers = v6;
  }

  return v5;
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

  identifiers = self->_identifiers;
  v8 = equalCopy->_identifiers;
  if (identifiers == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (identifiers)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSSet *)identifiers isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (void)initWithIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"identifiers" object:? file:? lineNumber:? description:?];
}

@end