@interface NSArray(MTLManipulationAdditions)
- (id)mtl_arrayByRemovingFirstObject;
- (id)mtl_arrayByRemovingLastObject;
- (id)mtl_arrayByRemovingObject:()MTLManipulationAdditions;
@end

@implementation NSArray(MTLManipulationAdditions)

- (id)mtl_arrayByRemovingLastObject
{
  if ([self count])
  {
    selfCopy = [self subarrayWithRange:{0, objc_msgSend(self, "count") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)mtl_arrayByRemovingFirstObject
{
  if ([self count])
  {
    selfCopy = [self subarrayWithRange:{1, objc_msgSend(self, "count") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)mtl_arrayByRemovingObject:()MTLManipulationAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObject:v4];

  return v5;
}

@end