@interface RBSProcessIntPredicate
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessIntPredicate)initWithIdentifier:(unint64_t)a3;
- (RBSProcessIntPredicate)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation RBSProcessIntPredicate

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = RBSProcessIntPredicate;
  v3 = [(RBSProcessPredicateImpl *)&v6 hash];
  v4 = 0xBF58476D1CE4E5B9 * (self->_identifier ^ (self->_identifier >> 30));
  return v3 ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27)));
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@ %llu>", v4, self->_identifier];

  return v5;
}

- (RBSProcessIntPredicate)initWithIdentifier:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RBSProcessIntPredicate;
  result = [(RBSProcessIntPredicate *)&v5 init];
  if (result)
  {
    result->_identifier = a3;
  }

  return result;
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
      v6 = identifier == [(RBSProcessIntPredicate *)v4 identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (RBSProcessIntPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSProcessIntPredicate;
  v5 = [(RBSProcessIntPredicate *)&v7 init];
  if (v5)
  {
    v5->_identifier = [v4 decodeUInt64ForKey:@"_identifier"];
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

@end