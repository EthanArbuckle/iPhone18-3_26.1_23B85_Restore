@interface MPGenericAction
+ (id)genericAction;
- (MPGenericAction)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setAttributes:(id)attributes;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPGenericAction;
  v4 = [(MPAction *)&v6 copyWithZone:zone];
  [v4 setAttributes:self->_attributes];
  return v4;
}

- (void)setAttributes:(id)attributes
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  v6 = [attributes mutableCopy];
  self->_attributes = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setAttributes:v6];
  }
}

- (void)setAction:(id)action
{
  v5.receiver = self;
  v5.super_class = MPGenericAction;
  [(MPAction *)&v5 setAction:action];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setAttributes:self->_attributes];
  }
}

@end