@interface NSMutableDictionary(VideosUICore)
- (void)vui_setObjectIfNotNil:()VideosUICore forKey:;
- (void)vui_setOrRemoveObject:()VideosUICore forKey:;
@end

@implementation NSMutableDictionary(VideosUICore)

- (void)vui_setObjectIfNotNil:()VideosUICore forKey:
{
  if (a3)
  {
    if (a4)
    {
      return [self setObject:? forKey:?];
    }
  }

  return self;
}

- (void)vui_setOrRemoveObject:()VideosUICore forKey:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if (v7)
    {
      [self setObject:v7 forKey:v6];
    }

    else
    {
      [self removeObjectForKey:v6];
    }
  }
}

@end