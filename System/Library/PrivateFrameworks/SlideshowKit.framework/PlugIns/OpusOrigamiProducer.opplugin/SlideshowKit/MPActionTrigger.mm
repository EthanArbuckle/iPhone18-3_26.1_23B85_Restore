@interface MPActionTrigger
+ (id)actionTrigger;
- (MPActionTrigger)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setActionKey:(id)key;
@end

@implementation MPActionTrigger

+ (id)actionTrigger
{
  v2 = objc_alloc_init(MPActionTrigger);

  return v2;
}

- (MPActionTrigger)init
{
  v3.receiver = self;
  v3.super_class = MPActionTrigger;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_actionKey = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPActionTrigger;
  [(MPAction *)&v3 dealloc];
}

- (void)setActionKey:(id)key
{
  actionKey = self->_actionKey;
  if (actionKey)
  {

    self->_actionKey = 0;
  }

  self->_actionKey = [key copy];
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setActionKey:key];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPActionTrigger;
  v4 = [(MPAction *)&v6 copyWithZone:zone];
  [v4 setActionKey:self->_actionKey];
  return v4;
}

- (void)setAction:(id)action
{
  v5.receiver = self;
  v5.super_class = MPActionTrigger;
  [(MPAction *)&v5 setAction:action];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setActionKey:self->_actionKey];
  }
}

@end