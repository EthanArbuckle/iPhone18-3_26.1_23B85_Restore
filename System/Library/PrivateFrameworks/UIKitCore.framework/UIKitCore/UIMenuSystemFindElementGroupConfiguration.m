@interface UIMenuSystemFindElementGroupConfiguration
- (BOOL)isEqual:(id)a3;
- (UIMenuSystemFindElementGroupConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UIMenuSystemFindElementGroupConfiguration

- (UIMenuSystemFindElementGroupConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UIMenuSystemFindElementGroupConfiguration;
  result = [(UIMenuSystemFindElementGroupConfiguration *)&v3 init];
  if (result)
  {
    result->_style = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_style == v4->_style;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_opt_new();
  *(result + 1) = self->_style;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  style = self->_style;
  if (style > 3)
  {
    v6 = @"?";
  }

  else
  {
    v6 = off_1E712AB68[style];
  }

  [v3 appendString:v6 withName:@"style"];
  v7 = [v4 build];

  return v7;
}

@end