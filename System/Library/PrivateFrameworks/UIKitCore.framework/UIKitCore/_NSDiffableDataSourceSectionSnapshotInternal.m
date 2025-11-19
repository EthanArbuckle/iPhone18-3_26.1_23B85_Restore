@interface _NSDiffableDataSourceSectionSnapshotInternal
- (BOOL)containsItem:(id)a3;
- (BOOL)isExpanded:(id)a3;
- (id)childrenOfParent:(id)a3;
- (id)childrenOfParent:(id)a3 recursive:(BOOL)a4;
- (id)items;
- (id)parentOfChild:(id)a3;
- (id)visibleItems;
- (void)appendItems:(id)a3;
- (void)appendItems:(id)a3 intoParent:(id)a4;
- (void)collapseItems:(id)a3;
- (void)deleteItems:(id)a3;
- (void)expandItems:(id)a3;
- (void)insertItems:(id)a3 afterItem:(id)a4;
- (void)insertItems:(id)a3 beforeItem:(id)a4;
@end

@implementation _NSDiffableDataSourceSectionSnapshotInternal

- (void)appendItems:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 appendItems:a3];
}

- (void)appendItems:(id)a3 intoParent:(id)a4
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v4 appendItems:a3 intoParent:a4];
}

- (void)insertItems:(id)a3 beforeItem:(id)a4
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v4 insertItems:a3 beforeItem:a4];
}

- (void)insertItems:(id)a3 afterItem:(id)a4
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v4 insertItems:a3 afterItem:a4];
}

- (void)deleteItems:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 deleteItems:a3];
}

- (void)expandItems:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 expandItems:a3];
}

- (void)collapseItems:(id)a3
{
  v3.receiver = self;
  v3.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  [(NSDiffableDataSourceSectionSnapshot *)&v3 collapseItems:a3];
}

- (BOOL)containsItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  return [(NSDiffableDataSourceSectionSnapshot *)&v4 containsItem:a3];
}

- (BOOL)isExpanded:(id)a3
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  return [(NSDiffableDataSourceSectionSnapshot *)&v4 isExpanded:a3];
}

- (id)items
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v2 = [(NSDiffableDataSourceSectionSnapshot *)&v4 items];

  return v2;
}

- (id)visibleItems
{
  v4.receiver = self;
  v4.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v2 = [(NSDiffableDataSourceSectionSnapshot *)&v4 visibleItems];

  return v2;
}

- (id)childrenOfParent:(id)a3 recursive:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v4 = [(NSDiffableDataSourceSectionSnapshot *)&v6 childrenOfParent:a3 recursive:a4];

  return v4;
}

- (id)childrenOfParent:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v3 = [(NSDiffableDataSourceSectionSnapshot *)&v5 childrenOfParent:a3];

  return v3;
}

- (id)parentOfChild:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NSDiffableDataSourceSectionSnapshotInternal;
  v3 = [(NSDiffableDataSourceSectionSnapshot *)&v5 parentOfChild:a3];

  return v3;
}

@end