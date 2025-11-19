@interface MPActionTrigger
+ (id)actionTrigger;
- (MPActionTrigger)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setAction:(id)a3;
- (void)setActionKey:(id)a3;
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

- (void)setActionKey:(id)a3
{
  actionKey = self->_actionKey;
  if (actionKey)
  {

    self->_actionKey = 0;
  }

  self->_actionKey = [a3 copy];
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setActionKey:a3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPActionTrigger;
  v4 = [(MPAction *)&v6 copyWithZone:a3];
  [v4 setActionKey:self->_actionKey];
  return v4;
}

- (void)setAction:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPActionTrigger;
  [(MPAction *)&v5 setAction:a3];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setActionKey:self->_actionKey];
  }
}

@end