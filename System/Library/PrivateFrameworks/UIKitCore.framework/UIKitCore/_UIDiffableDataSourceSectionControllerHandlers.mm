@interface _UIDiffableDataSourceSectionControllerHandlers
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIDiffableDataSourceSectionControllerHandlers

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  shouldExpandItemHandler = [(_UIDiffableDataSourceSectionControllerHandlers *)self shouldExpandItemHandler];
  v6 = [shouldExpandItemHandler copy];
  [v4 setShouldExpandItemHandler:v6];

  willExpandItemHandler = [(_UIDiffableDataSourceSectionControllerHandlers *)self willExpandItemHandler];
  v8 = [willExpandItemHandler copy];
  [v4 setWillExpandItemHandler:v8];

  shouldCollapseItemHandler = [(_UIDiffableDataSourceSectionControllerHandlers *)self shouldCollapseItemHandler];
  v10 = [shouldCollapseItemHandler copy];
  [v4 setShouldCollapseItemHandler:v10];

  willCollapseItemHandler = [(_UIDiffableDataSourceSectionControllerHandlers *)self willCollapseItemHandler];
  v12 = [willCollapseItemHandler copy];
  [v4 setWillCollapseItemHandler:v12];

  childSnapshotForExpandingParentHandler = [(_UIDiffableDataSourceSectionControllerHandlers *)self childSnapshotForExpandingParentHandler];
  v14 = [childSnapshotForExpandingParentHandler copy];
  [v4 setChildSnapshotForExpandingParentHandler:v14];

  return v4;
}

@end