@interface UIMenuSystemFindElementGroupConfiguration
- (BOOL)isEqual:(id)equal;
- (UIMenuSystemFindElementGroupConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_style == equalCopy->_style;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
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
  build = [v4 build];

  return build;
}

@end