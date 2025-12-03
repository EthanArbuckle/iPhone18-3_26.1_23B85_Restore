@interface NSOrderedCollectionChange(SafariCoreExtras)
- (id)safari_changeRemovingAssociatedIndex;
@end

@implementation NSOrderedCollectionChange(SafariCoreExtras)

- (id)safari_changeRemovingAssociatedIndex
{
  v2 = objc_alloc(objc_opt_class());
  object = [self object];
  v4 = [v2 initWithObject:object type:objc_msgSend(self index:{"changeType"), objc_msgSend(self, "index")}];

  return v4;
}

@end