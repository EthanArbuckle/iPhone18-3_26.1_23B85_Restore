@interface _UITabSidebarDropContext
+ (id)contextWithGroup:(id)group proposedIndexPath:(id)path insertionIndex:(int64_t)index;
- (UITabGroup)activeTabGroup;
@end

@implementation _UITabSidebarDropContext

+ (id)contextWithGroup:(id)group proposedIndexPath:(id)path insertionIndex:(int64_t)index
{
  pathCopy = path;
  groupCopy = group;
  v9 = objc_opt_new();
  objc_storeWeak((v9 + 8), groupCopy);

  v10 = *(v9 + 16);
  *(v9 + 16) = pathCopy;

  *(v9 + 24) = index;

  return v9;
}

- (UITabGroup)activeTabGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTabGroup);

  return WeakRetained;
}

@end