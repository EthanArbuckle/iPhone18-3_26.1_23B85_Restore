@interface RBSProcessStringPredicate
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessStringPredicate)initWithIdentifier:(id)a3;
- (RBSProcessStringPredicate)initWithRBSXPCCoder:(id)a3;
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

- (RBSProcessStringPredicate)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [RBSProcessStringPredicate initWithIdentifier:];
  }

  v9.receiver = self;
  v9.super_class = RBSProcessStringPredicate;
  v5 = [(RBSProcessStringPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      identifier = self->_identifier;
      v8 = [(RBSProcessStringPredicate *)v4 identifier];
      v9 = v8;
      if (identifier == v8)
      {
        v6 = 1;
      }

      else
      {
        if (identifier)
        {
          v10 = v8 == 0;
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
          v6 = [(NSString *)identifier isEqual:v8];
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

- (RBSProcessStringPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSProcessStringPredicate;
  v5 = [(RBSProcessStringPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)matchesProcess:(id)a3
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