@interface ClearRecentCollectionAssetsAction
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation ClearRecentCollectionAssetsAction

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A4557E54(sub_1A3D7A9AC, v5);
}

- (void)performUndo:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A455855C(v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end