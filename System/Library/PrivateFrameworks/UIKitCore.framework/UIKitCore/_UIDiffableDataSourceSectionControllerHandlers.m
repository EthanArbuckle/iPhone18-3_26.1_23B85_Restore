@interface _UIDiffableDataSourceSectionControllerHandlers
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIDiffableDataSourceSectionControllerHandlers

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(_UIDiffableDataSourceSectionControllerHandlers *)self shouldExpandItemHandler];
  v6 = [v5 copy];
  [v4 setShouldExpandItemHandler:v6];

  v7 = [(_UIDiffableDataSourceSectionControllerHandlers *)self willExpandItemHandler];
  v8 = [v7 copy];
  [v4 setWillExpandItemHandler:v8];

  v9 = [(_UIDiffableDataSourceSectionControllerHandlers *)self shouldCollapseItemHandler];
  v10 = [v9 copy];
  [v4 setShouldCollapseItemHandler:v10];

  v11 = [(_UIDiffableDataSourceSectionControllerHandlers *)self willCollapseItemHandler];
  v12 = [v11 copy];
  [v4 setWillCollapseItemHandler:v12];

  v13 = [(_UIDiffableDataSourceSectionControllerHandlers *)self childSnapshotForExpandingParentHandler];
  v14 = [v13 copy];
  [v4 setChildSnapshotForExpandingParentHandler:v14];

  return v4;
}

@end