@interface NSArray(UIKitConvenienceAdditions)
- (id)_ui_firstObject;
- (id)_ui_onlyObject;
@end

@implementation NSArray(UIKitConvenienceAdditions)

- (id)_ui_firstObject
{
  v2 = [self count];
  if (v2)
  {
    v2 = [self objectAtIndex:0];
  }

  return v2;
}

- (id)_ui_onlyObject
{
  if ([self count] == 1)
  {
    lastObject = [self lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end