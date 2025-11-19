@interface MCActionTrigger
+ (id)actionTriggerForTargetPlugObjectID:(id)a3 withActionKey:(id)a4;
- (MCActionTrigger)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCActionTrigger

+ (id)actionTriggerForTargetPlugObjectID:(id)a3 withActionKey:(id)a4
{
  v6 = objc_alloc_init(MCActionTrigger);
  [(MCAction *)v6 setTargetObjectID:a3];
  [(MCActionTrigger *)v6 setActionKey:a4];

  return v6;
}

- (MCActionTrigger)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCActionTrigger;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_actionKey = [a3 objectForKey:@"actionKey"];
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
  v3 = [(MCAction *)&v7 imprint];
  v4 = v3;
  actionKey = self->_actionKey;
  if (actionKey)
  {
    [v3 setObject:actionKey forKey:@"actionKey"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCActionTrigger;
  [(MCAction *)&v6 _copySelfToSnapshot:?];
  actionKey = self->_actionKey;
  if (actionKey)
  {
    *(a3 + 3) = [(NSString *)actionKey copy];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCActionTrigger;
  return [-[MCAction description](&v3 "description")];
}

@end