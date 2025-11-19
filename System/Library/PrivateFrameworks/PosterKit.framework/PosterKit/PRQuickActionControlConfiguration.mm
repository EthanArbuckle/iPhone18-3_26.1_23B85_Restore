@interface PRQuickActionControlConfiguration
- (PRQuickActionControlConfiguration)initWithCategory:(int64_t)a3;
- (PRQuickActionControlConfiguration)initWithCoder:(id)a3;
- (PRQuickActionControlConfiguration)initWithControlIdentity:(id)a3 type:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRQuickActionControlConfiguration

- (PRQuickActionControlConfiguration)initWithCategory:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = PRQuickActionControlConfiguration;
  v4 = [(PRQuickActionControlConfiguration *)&v8 init];
  v5 = v4;
  if (v4)
  {
    identity = v4->_identity;
    v4->_category = a3;
    v4->_identity = 0;

    v5->_type = 0;
  }

  return v5;
}

- (PRQuickActionControlConfiguration)initWithControlIdentity:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PRQuickActionControlConfiguration;
  v8 = [(PRQuickActionControlConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_category = 3;
    objc_storeStrong(&v8->_identity, a3);
    v9->_type = a4;
  }

  return v9;
}

- (PRQuickActionControlConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"category"];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"identity"];

  v8 = [v4 decodeIntegerForKey:@"type"];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[PRQuickActionControlConfiguration category](self forKey:{"category"), @"category"}];
  v4 = [(PRQuickActionControlConfiguration *)self identity];
  [v5 encodeObject:v4 forKey:@"identity"];

  [v5 encodeInteger:-[PRQuickActionControlConfiguration type](self forKey:{"type"), @"type"}];
}

@end