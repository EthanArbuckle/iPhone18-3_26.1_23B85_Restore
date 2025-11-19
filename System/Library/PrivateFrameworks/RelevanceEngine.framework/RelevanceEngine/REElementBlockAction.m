@interface REElementBlockAction
- (BOOL)isEqual:(id)a3;
- (REElementBlockAction)initWithAction:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REElementBlockAction

- (REElementBlockAction)initWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REElementBlockAction;
  v5 = [(REElementBlockAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = REElementBlockAction;
  v4 = [(REElementBlockAction *)&v8 copy];
  v5 = [self->_action copy];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[3] == self->_action;

  return v5;
}

@end