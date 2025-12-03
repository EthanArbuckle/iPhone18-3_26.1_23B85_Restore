@interface MCAnimationPath
+ (id)animationPathWithKey:(id)key;
- (MCAnimationPath)initWithImprint:(id)imprint;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
@end

@implementation MCAnimationPath

+ (id)animationPathWithKey:(id)key
{
  v4 = objc_alloc_init(self);
  [v4 setKey:key];

  return v4;
}

- (MCAnimationPath)initWithImprint:(id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationPath;
  v4 = [(MCObjectLight *)&v7 initWithImprint:?];
  if (v4)
  {
    v4->mKey = [imprint objectForKey:@"key"];
    v5 = [imprint objectForKey:@"isTriggered"];
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
  imprint = [(MCObjectLight *)&v7 imprint];
  v4 = imprint;
  mKey = self->mKey;
  if (mKey)
  {
    [imprint setObject:mKey forKey:@"key"];
  }

  if (self->mIsTriggered)
  {
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isTriggered"}];
  }

  return v4;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  mKey = self->mKey;
  if (mKey)
  {
    *(snapshot + 2) = [(NSString *)mKey copy];
  }

  *(snapshot + 8) = self->mIsTriggered;
  *(snapshot + 9) = 1;
}

@end