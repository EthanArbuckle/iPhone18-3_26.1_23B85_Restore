@interface _UITabSidebarDropContext
+ (id)contextWithGroup:(id)a3 proposedIndexPath:(id)a4 insertionIndex:(int64_t)a5;
- (UITabGroup)activeTabGroup;
@end

@implementation _UITabSidebarDropContext

+ (id)contextWithGroup:(id)a3 proposedIndexPath:(id)a4 insertionIndex:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  objc_storeWeak((v9 + 8), v8);

  v10 = *(v9 + 16);
  *(v9 + 16) = v7;

  *(v9 + 24) = a5;

  return v9;
}

- (UITabGroup)activeTabGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTabGroup);

  return WeakRetained;
}

@end