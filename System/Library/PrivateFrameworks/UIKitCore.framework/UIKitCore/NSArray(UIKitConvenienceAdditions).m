@interface NSArray(UIKitConvenienceAdditions)
- (id)_ui_firstObject;
- (id)_ui_onlyObject;
@end

@implementation NSArray(UIKitConvenienceAdditions)

- (id)_ui_firstObject
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 objectAtIndex:0];
  }

  return v2;
}

- (id)_ui_onlyObject
{
  if ([a1 count] == 1)
  {
    v2 = [a1 lastObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end