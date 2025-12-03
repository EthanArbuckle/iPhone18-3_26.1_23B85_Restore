@interface CNContact(TUHandle)
+ (id)tu_contactHandlesForHandle:()TUHandle;
@end

@implementation CNContact(TUHandle)

+ (id)tu_contactHandlesForHandle:()TUHandle
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
  value = [v3 value];
  if ([value length])
  {
    [v4 addObject:value];
  }

  normalizedValue = [v3 normalizedValue];
  if ([normalizedValue length])
  {
    [v4 addObject:normalizedValue];
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

@end