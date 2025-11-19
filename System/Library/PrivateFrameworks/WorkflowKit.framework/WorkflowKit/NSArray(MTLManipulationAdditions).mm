@interface NSArray(MTLManipulationAdditions)
- (id)mtl_arrayByRemovingFirstObject;
- (id)mtl_arrayByRemovingLastObject;
- (id)mtl_arrayByRemovingObject:()MTLManipulationAdditions;
@end

@implementation NSArray(MTLManipulationAdditions)

- (id)mtl_arrayByRemovingLastObject
{
  if ([a1 count])
  {
    v2 = [a1 subarrayWithRange:{0, objc_msgSend(a1, "count") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)mtl_arrayByRemovingFirstObject
{
  if ([a1 count])
  {
    v2 = [a1 subarrayWithRange:{1, objc_msgSend(a1, "count") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)mtl_arrayByRemovingObject:()MTLManipulationAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObject:v4];

  return v5;
}

@end