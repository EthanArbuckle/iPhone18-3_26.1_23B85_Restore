@interface NSObject(SystemApertureUIAdditions)
- (id)uniqueElementIdentifier;
@end

@implementation NSObject(SystemApertureUIAdditions)

- (id)uniqueElementIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, "com.apple.SystemAperture.elementUniqueIdentifier");
  objc_sync_exit(selfCopy);

  return v2;
}

@end