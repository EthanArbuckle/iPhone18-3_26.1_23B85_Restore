@interface MCAnimationPathExpression
+ (id)animationPathWithKey:(id)key andExpression:(id)expression;
- (MCAnimationPathExpression)initWithImprint:(id)imprint;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
@end

@implementation MCAnimationPathExpression

+ (id)animationPathWithKey:(id)key andExpression:(id)expression
{
  v5 = [MCAnimationPathExpression animationPathWithKey:key];
  [v5 setExpression:expression];
  return v5;
}

- (MCAnimationPathExpression)initWithImprint:(id)imprint
{
  v6.receiver = self;
  v6.super_class = MCAnimationPathExpression;
  v4 = [(MCAnimationPath *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->mExpression = [imprint objectForKey:@"expression"];
  }

  return v4;
}

- (void)demolish
{
  self->mExpression = 0;
  v3.receiver = self;
  v3.super_class = MCAnimationPathExpression;
  [(MCAnimationPath *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationPathExpression;
  imprint = [(MCAnimationPath *)&v7 imprint];
  v4 = imprint;
  mExpression = self->mExpression;
  if (mExpression)
  {
    [imprint setObject:mExpression forKey:@"expression"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCAnimationPathExpression;
  [(MCAnimationPath *)&v6 _copySelfToSnapshot:?];
  mExpression = self->mExpression;
  if (mExpression)
  {
    *(snapshot + 3) = [(NSString *)mExpression copy];
  }
}

@end