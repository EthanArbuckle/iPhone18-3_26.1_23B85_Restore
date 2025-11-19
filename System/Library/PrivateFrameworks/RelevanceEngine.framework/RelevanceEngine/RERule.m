@interface RERule
- (BOOL)isEqual:(id)a3;
- (RERule)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RERule

- (RERule)init
{
  v3.receiver = self;
  v3.super_class = RERule;
  result = [(RERule *)&v3 init];
  if (result)
  {
    result->_priority = 1000.0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_priority == v4->_priority;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = LODWORD(self->_priority);
  return result;
}

@end