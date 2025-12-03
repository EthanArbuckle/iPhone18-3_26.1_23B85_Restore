@interface MPAnimationTrigger
+ (id)animationTrigger;
- (MPAnimationTrigger)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setAnimationAttributes:(id)attributes;
- (void)setAnimationKey:(id)key;
@end

@implementation MPAnimationTrigger

+ (id)animationTrigger
{
  v2 = objc_alloc_init(MPAnimationTrigger);

  return v2;
}

- (MPAnimationTrigger)init
{
  v3.receiver = self;
  v3.super_class = MPAnimationTrigger;
  result = [(MPAction *)&v3 init];
  if (result)
  {
    result->_animationKey = 0;
    result->_animationAttributes = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPAnimationTrigger;
  [(MPAction *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPAnimationTrigger;
  v4 = [(MPAction *)&v6 copyWithZone:zone];
  [v4 setAnimationKey:self->_animationKey];
  [v4 setAnimationAttributes:self->_animationAttributes];
  return v4;
}

- (void)setAnimationKey:(id)key
{
  animationKey = self->_animationKey;
  if (animationKey)
  {

    self->_animationKey = 0;
  }

  v6 = [key copy];
  self->_animationKey = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setAnimationKey:v6];
  }
}

- (void)setAnimationAttributes:(id)attributes
{
  animationAttributes = self->_animationAttributes;
  if (animationAttributes)
  {

    self->_animationAttributes = 0;
  }

  v6 = [attributes mutableCopy];
  self->_animationAttributes = v6;
  action = self->super._action;
  if (action)
  {

    [(MCAction *)action setAnimationAttributes:v6];
  }
}

- (void)setAction:(id)action
{
  v5.receiver = self;
  v5.super_class = MPAnimationTrigger;
  [(MPAction *)&v5 setAction:action];
  action = self->super._action;
  if (action)
  {
    [(MCAction *)action setAnimationKey:self->_animationKey];
    [(MCAction *)self->super._action setAnimationAttributes:self->_animationAttributes];
  }
}

@end