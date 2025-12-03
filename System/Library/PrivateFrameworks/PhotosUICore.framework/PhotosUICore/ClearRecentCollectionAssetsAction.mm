@interface ClearRecentCollectionAssetsAction
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation ClearRecentCollectionAssetsAction

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A4557E54(sub_1A3D7A9AC, v5);
}

- (void)performUndo:(id)undo
{
  v4 = _Block_copy(undo);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A455855C(v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end