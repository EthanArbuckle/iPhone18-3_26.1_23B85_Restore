@interface NSObject(SystemApertureUIAdditions)
- (id)uniqueElementIdentifier;
@end

@implementation NSObject(SystemApertureUIAdditions)

- (id)uniqueElementIdentifier
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, "com.apple.SystemAperture.elementUniqueIdentifier");
  objc_sync_exit(v1);

  return v2;
}

@end