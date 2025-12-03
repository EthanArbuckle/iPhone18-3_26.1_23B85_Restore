@interface NSDictionary(RTExtensions)
- (id)objectForKey:()RTExtensions defaultObject:;
@end

@implementation NSDictionary(RTExtensions)

- (id)objectForKey:()RTExtensions defaultObject:
{
  v6 = a4;
  v7 = [self objectForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

@end