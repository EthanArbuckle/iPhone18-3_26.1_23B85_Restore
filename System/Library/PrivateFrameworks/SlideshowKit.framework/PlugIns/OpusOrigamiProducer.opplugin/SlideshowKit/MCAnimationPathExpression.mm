@interface MCAnimationPathExpression
+ (id)animationPathWithKey:(id)a3 andExpression:(id)a4;
- (MCAnimationPathExpression)initWithImprint:(id)a3;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)demolish;
@end

@implementation MCAnimationPathExpression

+ (id)animationPathWithKey:(id)a3 andExpression:(id)a4
{
  v5 = [MCAnimationPathExpression animationPathWithKey:a3];
  [v5 setExpression:a4];
  return v5;
}

- (MCAnimationPathExpression)initWithImprint:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCAnimationPathExpression;
  v4 = [(MCAnimationPath *)&v6 initWithImprint:?];
  if (v4)
  {
    v4->mExpression = [a3 objectForKey:@"expression"];
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
  v3 = [(MCAnimationPath *)&v7 imprint];
  v4 = v3;
  mExpression = self->mExpression;
  if (mExpression)
  {
    [v3 setObject:mExpression forKey:@"expression"];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCAnimationPathExpression;
  [(MCAnimationPath *)&v6 _copySelfToSnapshot:?];
  mExpression = self->mExpression;
  if (mExpression)
  {
    *(a3 + 3) = [(NSString *)mExpression copy];
  }
}

@end