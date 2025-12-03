@interface MCAnimationTrigger
+ (id)animationTriggerForTargetPlugObjectID:(id)d withAnimationKey:(id)key;
- (MCAnimationTrigger)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCAnimationTrigger

+ (id)animationTriggerForTargetPlugObjectID:(id)d withAnimationKey:(id)key
{
  v6 = objc_alloc_init(MCAnimationTrigger);
  [(MCAction *)v6 setTargetObjectID:d];
  [(MCAnimationTrigger *)v6 setAnimationKey:key];

  return v6;
}

- (MCAnimationTrigger)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCAnimationTrigger;
  v4 = [(MCAction *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->_animationKey = [imprint objectForKey:@"animationKey"];
    v4->_animationAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(imprint, "objectForKey:", @"animationAttributes"}];
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
  imprint = [(MCAction *)&v8 imprint];
  v4 = imprint;
  animationKey = self->_animationKey;
  if (animationKey)
  {
    [imprint setObject:animationKey forKey:@"animationKey"];
  }

  animationAttributes = self->_animationAttributes;
  if (animationAttributes)
  {
    [v4 setObject:animationAttributes forKey:@"animationAttributes"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = MCAnimationTrigger;
  [(MCAction *)&v7 _copySelfToSnapshot:snapshot];
  animationKey = self->_animationKey;
  if (animationKey)
  {
    *(snapshot + 4) = [(NSString *)animationKey copy];
  }

  animationAttributes = self->_animationAttributes;
  if (animationAttributes)
  {
    *(snapshot + 3) = [(NSMutableDictionary *)animationAttributes copy];
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