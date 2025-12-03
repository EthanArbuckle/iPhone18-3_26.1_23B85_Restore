@interface _PXSelectionCoordinatorState
- (_PXSelectionCoordinatorState)initWithSelectionSnapshot:(id)snapshot;
@end

@implementation _PXSelectionCoordinatorState

- (_PXSelectionCoordinatorState)initWithSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v9.receiver = self;
  v9.super_class = _PXSelectionCoordinatorState;
  v6 = [(_PXSelectionCoordinatorState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectionSnapshot, snapshot);
  }

  return v7;
}

@end