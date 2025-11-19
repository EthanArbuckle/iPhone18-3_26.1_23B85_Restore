@interface INUpdateMediaAffinityIntentHandler
- (void)handleUpdateMediaAffinity:(id)a3 completion:(id)a4;
- (void)resolveMediaItemsForUpdateMediaAffinity:(id)a3 withCompletion:(id)a4;
@end

@implementation INUpdateMediaAffinityIntentHandler

- (void)resolveMediaItemsForUpdateMediaAffinity:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  INUpdateMediaAffinityIntentHandler.resolveMediaItems(for:with:)(v8, sub_266227BA0, v7);
}

- (void)handleUpdateMediaAffinity:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_266226A98(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end