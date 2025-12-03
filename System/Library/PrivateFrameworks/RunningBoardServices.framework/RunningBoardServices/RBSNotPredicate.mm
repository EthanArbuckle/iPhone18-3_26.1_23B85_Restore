@interface RBSNotPredicate
- (BOOL)isEqual:(id)equal;
- (RBSNotPredicate)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (id)initNotWithPredicate:(id *)predicate;
@end

@implementation RBSNotPredicate

- (RBSNotPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSNotPredicate;
  v5 = [(RBSNotPredicate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;
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

  predicate = self->_predicate;
  v8 = equalCopy->_predicate;
  if (predicate == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (predicate)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(RBSProcessPredicateImpl *)predicate isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@ [%@]>", v4, self->_predicate];

  return v5;
}

- (id)initNotWithPredicate:(id *)predicate
{
  v4 = a2;
  if (predicate)
  {
    v7.receiver = predicate;
    v7.super_class = RBSNotPredicate;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    predicate = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return predicate;
}

@end