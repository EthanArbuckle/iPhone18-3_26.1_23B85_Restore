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
      return [a1 setObject:? forKey:?];
    }
  }

  return a1;
}

- (void)vui_setOrRemoveObject:()VideosUICore forKey:
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if (v7)
    {
      [a1 setObject:v7 forKey:v6];
    }

    else
    {
      [a1 removeObjectForKey:v6];
    }
  }
}

@end