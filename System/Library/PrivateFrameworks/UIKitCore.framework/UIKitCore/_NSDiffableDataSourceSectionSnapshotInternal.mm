@interface _NSDiffableDataSourceSectionSnapshotInternal
- (BOOL)containsItem:(id)item;
- (BOOL)isExpanded:(id)expanded;
- (id)childrenOfParent:(id)parent;
- (id)childrenOfParent:(id)parent recursive:(BOOL)recursive;
- (id)items;
- (id)parentOfChild:(id)child;
- (id)visibleItems;
- (void)appendItems:(id)items;
- (void)appendItems:(id)items intoParent:(id)parent;
- (void)collapseItems:(id)items;
- (void)deleteItems:(id)items;
- (void)expandItems:(id)items;
- (void)insertItems:(id)items afterItem:(id)item;
- (void)insertItems:(id)items beforeItem:(id)item;
@end

@implementation _NSDiffableDataSourceSectionSnapshotInternal

- (void)appendItems:(id)items
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 appendItems:items];
}

- (void)appendItems:(id)items intoParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v4 appendItems:items intoParent:parent];
}

- (void)insertItems:(id)items beforeItem:(id)item
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v4 insertItems:items beforeItem:item];
}

- (void)insertItems:(id)items afterItem:(id)item
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v4 insertItems:items afterItem:item];
}

- (void)deleteItems:(id)items
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 deleteItems:items];
}

- (void)expandItems:(id)items
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 expandItems:items];
}

- (void)collapseItems:(id)items
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 collapseItems:items];
}

- (BOOL)containsItem:(id)item
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  return [(NSDiffableDataSourceSectionSnapshot *)&v4 containsItem:item];
}

- (BOOL)isExpanded:(id)expanded
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  return [(NSDiffableDataSourceSectionSnapshot *)&v4 isExpanded:expanded];
}

- (id)items
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  items = [(NSDiffableDataSourceSectionSnapshot *)&v4 items];

  return items;
}

- (id)visibleItems
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  visibleItems = [(NSDiffableDataSourceSectionSnapshot *)&v4 visibleItems];

  return visibleItems;
}

- (id)childrenOfParent:(id)parent recursive:(BOOL)recursive
{
  v6.receiver = self;
  v6.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v4 = [(NSDiffableDataSourceSectionSnapshot *)&v6 childrenOfParent:parent recursive:recursive];

  return v4;
}

- (id)childrenOfParent:(id)parent
{
  v5.receiver = self;
  v5.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v3 = [(NSDiffableDataSourceSectionSnapshot *)&v5 childrenOfParent:parent];

  return v3;
}

- (id)parentOfChild:(id)child
{
  v5.receiver = self;
  v5.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v3 = [(NSDiffableDataSourceSectionSnapshot *)&v5 parentOfChild:child];

  return v3;
}

@end