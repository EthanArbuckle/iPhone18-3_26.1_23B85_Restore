@interface RBSProcessPlatformPredicate
- (BOOL)isEqual:(id)a3;
- (RBSProcessPlatformPredicate)initWithPlatform:(int)a3;
- (RBSProcessPlatformPredicate)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation RBSProcessPlatformPredicate

- (RBSProcessPlatformPredicate)initWithPlatform:(int)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = RBSProcessPlatformPredicate;
    v4 = [(RBSProcessPlatformPredicate *)&v7 init];
    if (v4)
    {
      v4->_platform = a3;
    }

    self = v4;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = RBSProcessPlatformPredicate;
  return [(RBSProcessPredicateImpl *)&v3 hash]^ self->_platform;
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
    v6 = v5 == objc_opt_class() && self->_platform == v4->_platform;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %d>", v4, self->_platform];

  return v5;
}

- (RBSProcessPlatformPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSProcessPlatformPredicate;
  v5 = [(RBSProcessPlatformPredicate *)&v7 init];
  if (v5)
  {
    v5->_platform = [v4 decodeInt64ForKey:@"_platform"];
  }

  return v5;
}

@end