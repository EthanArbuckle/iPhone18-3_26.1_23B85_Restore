@interface MCActionTrigger
+ (id)actionTriggerForTargetPlugObjectID:(id)d withActionKey:(id)key;
- (MCActionTrigger)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCActionTrigger

+ (id)actionTriggerForTargetPlugObjectID:(id)d withActionKey:(id)key
{
  v6 = objc_alloc_init(MCActionTrigger);
  [(MCAction *)v6 setTargetObjectID:d];
  [(MCActionTrigger *)v6 setActionKey:key];

  return v6;
}

- (MCActionTrigger)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCActionTrigger;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_actionKey = [imprint objectForKey:@"actionKey"];
  }

  return v4;
}

- (void)demolish
{
  self->_actionKey = 0;
  v3.receiver = self;
  v3.super_class = MCActionTrigger;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCActionTrigger;
  imprint = [(MCAction *)&v7 imprint];
  v4 = imprint;
  actionKey = self->_actionKey;
  if (actionKey)
  {
    [imprint setObject:actionKey forKey:@"actionKey"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCActionTrigger;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  actionKey = self->_actionKey;
  if (actionKey)
  {
    *(snapshot + 3) = [(NSString *)actionKey copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCActionTrigger;
  return [-[MCAction description](&v3 "description")];
}

@end