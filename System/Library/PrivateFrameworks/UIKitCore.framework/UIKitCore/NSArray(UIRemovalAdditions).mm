@interface NSArray(UIRemovalAdditions)
- (id)ui_arrayByRemovingLastObjectEqualTo:()UIRemovalAdditions;
@end

@implementation NSArray(UIRemovalAdditions)

- (id)ui_arrayByRemovingLastObjectEqualTo:()UIRemovalAdditions
{
  v5 = [self count];
  v12.location = 0;
  v12.length = v5;
  LastIndexOfValue = CFArrayGetLastIndexOfValue(self, v12, a3);
  if (LastIndexOfValue != -1)
  {
    v7 = LastIndexOfValue;
    v8 = [self subarrayWithRange:{0, LastIndexOfValue}];
    if (v5 != v7 + 1)
    {
      v8 = [v8 arrayByAddingObjectsFromArray:{objc_msgSend(self, "subarrayWithRange:", v7 + 1, v5 - (v7 + 1))}];
    }

    if (v8)
    {
      return v8;
    }
  }

  selfCopy = self;

  return selfCopy;
}

@end