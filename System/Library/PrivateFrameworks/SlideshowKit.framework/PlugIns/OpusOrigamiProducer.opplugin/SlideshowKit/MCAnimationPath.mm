@interface MCAnimationPath
+ (id)animationPathWithKey:(id)a3;
- (MCAnimationPath)initWithImprint:(id)a3;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
@end

@implementation MCAnimationPath

+ (id)animationPathWithKey:(id)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setKey:a3];

  return v4;
}

- (MCAnimationPath)initWithImprint:(id)a3
{
  v7.receiver = self;
  v7.super_class = MCAnimationPath;
  v4 = [(MCObjectLight *)&v7 initWithImprint:?];
  if (v4)
  {
    v4->mKey = [a3 objectForKey:@"key"];
    v5 = [a3 objectForKey:@"isTriggered"];
    if (v5)
    {
      LOBYTE(v5) = [v5 BOOLValue];
    }

    v4->mIsTriggered = v5;
  }

  return v4;
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationPath;
  v3 = [(MCObjectLight *)&v7 imprint];
  v4 = v3;
  mKey = self->mKey;
  if (mKey)
  {
    [v3 setObject:mKey forKey:@"key"];
  }

  if (self->mIsTriggered)
  {
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isTriggered"}];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)a3
{
  mKey = self->mKey;
  if (mKey)
  {
    *(a3 + 2) = [(NSString *)mKey copy];
  }

  *(a3 + 8) = self->mIsTriggered;
  *(a3 + 9) = 1;
}

@end