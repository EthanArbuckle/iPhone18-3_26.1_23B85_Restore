@interface MPGenericAction
+ (id)genericAction;
- (MPGenericAction)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setAttributes:(id)a3;
@end

@implementation MPGenericAction

+ (id)genericAction
{
  v2 = objc_alloc_init(MPGenericAction);

  return v2;
}

- (MPGenericAction)init
{
  v3.receiver = self;
  v3.super_class = MPGenericAction;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_attributes = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPGenericAction;
  [(MPAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPGenericAction;
  v4 = [(MPAction *)&v6 copyWithZone:a3];
  [v4 setAttributes:self->_attributes];
  return v4;
}

- (void)setAttributes:(id)a3
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  v6 = [a3 mutableCopy];
  self->_attributes = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setAttributes:v6];
  }
}

- (void)setAction:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPGenericAction;
  [(MPAction *)&v5 setAction:a3];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setAttributes:self->_attributes];
  }
}

@end