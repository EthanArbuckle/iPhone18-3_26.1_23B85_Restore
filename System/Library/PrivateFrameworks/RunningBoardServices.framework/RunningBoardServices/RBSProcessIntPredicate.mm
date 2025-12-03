@interface RBSProcessIntPredicate
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (RBSProcessIntPredicate)initWithIdentifier:(unint64_t)identifier;
- (RBSProcessIntPredicate)initWithRBSXPCCoder:(id)coder;
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

- (RBSProcessIntPredicate)initWithIdentifier:(unint64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RBSProcessIntPredicate;
  result = [(RBSProcessIntPredicate *)&v5 init];
  if (result)
  {
    result->_identifier = identifier;
  }

  return result;
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
      v6 = identifier == [(RBSProcessIntPredicate *)equalCopy identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (RBSProcessIntPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSProcessIntPredicate;
  v5 = [(RBSProcessIntPredicate *)&v7 init];
  if (v5)
  {
    v5->_identifier = [coderCopy decodeUInt64ForKey:@"_identifier"];
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

@end