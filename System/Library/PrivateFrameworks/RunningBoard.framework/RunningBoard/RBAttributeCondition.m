@interface RBAttributeCondition
- (id)description;
@end

@implementation RBAttributeCondition

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  name = self->_name;
  if (self->_value)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v8 = [v3 initWithFormat:@"<%@| name:%@ value:%@>", v4, self->_name, v7];

  return v8;
}

@end