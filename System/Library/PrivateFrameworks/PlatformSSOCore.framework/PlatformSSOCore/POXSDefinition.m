@interface POXSDefinition
- (POXSDefinition)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation POXSDefinition

- (POXSDefinition)init
{
  v6.receiver = self;
  v6.super_class = POXSDefinition;
  v2 = [(POXSDefinition *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    types = v2->_types;
    v2->_types = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableDictionary *)self->_types mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end