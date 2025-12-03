@interface PRQuickActionControlConfiguration
- (PRQuickActionControlConfiguration)initWithCategory:(int64_t)category;
- (PRQuickActionControlConfiguration)initWithCoder:(id)coder;
- (PRQuickActionControlConfiguration)initWithControlIdentity:(id)identity type:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRQuickActionControlConfiguration

- (PRQuickActionControlConfiguration)initWithCategory:(int64_t)category
{
  v8.receiver = self;
  v8.super_class = PRQuickActionControlConfiguration;
  v4 = [(PRQuickActionControlConfiguration *)&v8 init];
  v5 = v4;
  if (v4)
  {
    identity = v4->_identity;
    v4->_category = category;
    v4->_identity = 0;

    v5->_type = 0;
  }

  return v5;
}

- (PRQuickActionControlConfiguration)initWithControlIdentity:(id)identity type:(unint64_t)type
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = PRQuickActionControlConfiguration;
  v8 = [(PRQuickActionControlConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_category = 3;
    objc_storeStrong(&v8->_identity, identity);
    v9->_type = type;
  }

  return v9;
}

- (PRQuickActionControlConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"category"];
  v6 = objc_opt_self();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"identity"];

  v8 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5 == 3)
  {
    v9 = [(PRQuickActionControlConfiguration *)self initWithControlIdentity:v7 type:v8];
  }

  else
  {
    v9 = [(PRQuickActionControlConfiguration *)self initWithCategory:v5];
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PRQuickActionControlConfiguration category](self forKey:{"category"), @"category"}];
  identity = [(PRQuickActionControlConfiguration *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  [coderCopy encodeInteger:-[PRQuickActionControlConfiguration type](self forKey:{"type"), @"type"}];
}

@end