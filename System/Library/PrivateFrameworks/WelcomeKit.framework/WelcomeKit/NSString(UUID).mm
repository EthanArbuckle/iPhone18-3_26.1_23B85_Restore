@interface NSString(UUID)
+ (id)wl_uniqueIdentifier;
- (id)wl_stringByAppendingRelativePath:()UUID;
@end

@implementation NSString(UUID)

+ (id)wl_uniqueIdentifier
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)wl_stringByAppendingRelativePath:()UUID
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  pathComponents = [self pathComponents];
  pathComponents2 = [v5 pathComponents];

  v8 = [pathComponents arrayByAddingObjectsFromArray:pathComponents2];
  v9 = [v4 pathWithComponents:v8];

  return v9;
}

@end