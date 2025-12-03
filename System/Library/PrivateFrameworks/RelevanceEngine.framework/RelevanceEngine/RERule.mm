@interface RERule
- (BOOL)isEqual:(id)equal;
- (RERule)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_priority == equalCopy->_priority;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = LODWORD(self->_priority);
  return result;
}

@end