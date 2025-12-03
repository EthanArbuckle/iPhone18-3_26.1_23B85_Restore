@interface INUpdateMediaAffinityIntentHandler
- (void)handleUpdateMediaAffinity:(id)affinity completion:(id)completion;
- (void)resolveMediaItemsForUpdateMediaAffinity:(id)affinity withCompletion:(id)completion;
@end

@implementation INUpdateMediaAffinityIntentHandler

- (void)resolveMediaItemsForUpdateMediaAffinity:(id)affinity withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  affinityCopy = affinity;
  selfCopy = self;
  INUpdateMediaAffinityIntentHandler.resolveMediaItems(for:with:)(affinityCopy, sub_266227BA0, v7);
}

- (void)handleUpdateMediaAffinity:(id)affinity completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  affinityCopy = affinity;
  selfCopy = self;
  sub_266226A98(affinityCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end