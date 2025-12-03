@interface RBSProcessPlatformPredicate
- (BOOL)isEqual:(id)equal;
- (RBSProcessPlatformPredicate)initWithPlatform:(int)platform;
- (RBSProcessPlatformPredicate)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
@end

@implementation RBSProcessPlatformPredicate

- (RBSProcessPlatformPredicate)initWithPlatform:(int)platform
{
  if (platform)
  {
    v7.receiver = self;
    v7.super_class = RBSProcessPlatformPredicate;
    v4 = [(RBSProcessPlatformPredicate *)&v7 init];
    if (v4)
    {
      v4->_platform = platform;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = RBSProcessPlatformPredicate;
  return [(RBSProcessPredicateImpl *)&v3 hash]^ self->_platform;
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
    v6 = v5 == objc_opt_class() && self->_platform == equalCopy->_platform;
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

- (RBSProcessPlatformPredicate)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RBSProcessPlatformPredicate;
  v5 = [(RBSProcessPlatformPredicate *)&v7 init];
  if (v5)
  {
    v5->_platform = [coderCopy decodeInt64ForKey:@"_platform"];
  }

  return v5;
}

@end