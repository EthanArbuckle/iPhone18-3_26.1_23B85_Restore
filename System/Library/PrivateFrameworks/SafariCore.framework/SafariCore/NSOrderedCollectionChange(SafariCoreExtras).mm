@interface NSOrderedCollectionChange(SafariCoreExtras)
- (id)safari_changeRemovingAssociatedIndex;
@end

@implementation NSOrderedCollectionChange(SafariCoreExtras)

- (id)safari_changeRemovingAssociatedIndex
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [a1 object];
  v4 = [v2 initWithObject:v3 type:objc_msgSend(a1 index:{"changeType"), objc_msgSend(a1, "index")}];

  return v4;
}

@end