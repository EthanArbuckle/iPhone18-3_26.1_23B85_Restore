@interface RBSProcessStringPredicate
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (RBSProcessStringPredicate)initWithIdentifier:(id)identifier;
- (RBSProcessStringPredicate)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
@end

@implementation RBSProcessStringPredicate

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = RBSProcessStringPredicate;
  v3 = [(RBSProcessPredicateImpl *)&v5 hash];
  return [(NSString *)self->_identifier hash]^ v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@ %@>", v4, self->_identifier];

  return v5;
}

- (RBSProcessStringPredicate)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [RBSProcessStringPredicate initWithIdentifier:];
  }

  v9.receiver = self;
  v9.super_class = RBSProcessStringPredicate;
  v5 = [(RBSProcessStringPredicate *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      identifier = self->_identifier;
      identifier = [(RBSProcessStringPredicate *)equalCopy identifier];
      v9 = identifier;
      if (identifier == identifier)
      {
        v6 = 1;
      }

      else
      {
        if (identifier)
        {
          v10 = identifier == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          v6 = 0;
        }

        else
        {
          v6 = [(NSString *)identifier isEqual:identifier];
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (RBSProcessStringPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSProcessStringPredicate;
  v5 = [(RBSProcessStringPredicate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)matchesProcess:(id)process
{
  OUTLINED_FUNCTION_1();
  v3 = objc_opt_class();
  OUTLINED_FUNCTION_1_1(v3);
  return 0;
}

- (void)initWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

@end