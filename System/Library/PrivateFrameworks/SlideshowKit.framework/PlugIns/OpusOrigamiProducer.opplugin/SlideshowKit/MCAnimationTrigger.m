@interface MCAnimationTrigger
+ (id)animationTriggerForTargetPlugObjectID:(id)a3 withAnimationKey:(id)a4;
- (MCAnimationTrigger)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCAnimationTrigger

+ (id)animationTriggerForTargetPlugObjectID:(id)a3 withAnimationKey:(id)a4
{
  v6 = objc_alloc_init(MCAnimationTrigger);
  [(MCAction *)v6 setTargetObjectID:a3];
  [(MCAnimationTrigger *)v6 setAnimationKey:a4];

  return v6;
}

- (MCAnimationTrigger)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCAnimationTrigger;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_animationKey = [a3 objectForKey:@"animationKey"];
    v4->_animationAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectForKey:", @"animationAttributes"}];
  }

  return v4;
}

- (void)demolish
{
  self->_animationKey = 0;

  self->_animationAttributes = 0;
  v3.receiver = self;
  v3.super_class = MCAnimationTrigger;
  [(MCAction *)&v3 demolish];
}

- (id)imprint
{
  v8.receiver = self;
  v8.super_class = MCAnimationTrigger;
  v3 = [(MCAction *)&v8 imprint];
  v4 = v3;
  animationKey = self->_animationKey;
  if (animationKey)
  {
    [v3 setObject:animationKey forKey:@"animationKey"];
  }

  animationAttributes = self->_animationAttributes;
  if (animationAttributes)
  {
    [v4 setObject:animationAttributes forKey:@"animationAttributes"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = MCAnimationTrigger;
  [(MCAction *)&v7 _copySelfToSnapshot:a3];
  animationKey = self->_animationKey;
  if (animationKey)
  {
    *(a3 + 4) = [(NSString *)animationKey copy];
  }

  animationAttributes = self->_animationAttributes;
  if (animationAttributes)
  {
    *(a3 + 3) = [(NSMutableDictionary *)animationAttributes copy];
  }

  objc_sync_exit(self);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCAnimationTrigger;
  return [-[MCAction description](&v3 "description")];
}

@end