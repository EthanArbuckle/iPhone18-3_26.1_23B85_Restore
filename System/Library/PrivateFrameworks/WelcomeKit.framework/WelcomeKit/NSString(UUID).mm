@interface NSString(UUID)
+ (id)wl_uniqueIdentifier;
- (id)wl_stringByAppendingRelativePath:()UUID;
@end

@implementation NSString(UUID)

+ (id)wl_uniqueIdentifier
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = [v0 UUIDString];

  return v1;
}

- (id)wl_stringByAppendingRelativePath:()UUID
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [a1 pathComponents];
  v7 = [v5 pathComponents];

  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  v9 = [v4 pathWithComponents:v8];

  return v9;
}

@end