@interface CSDConversationCallCoordinationManager
- (CSDConversationCallCoordinationManager)initWithConversationManager:(id)manager sharePlayAvailabilityManager:(id)availabilityManager compositeContainerProvider:(id)provider relaySupportEnabled:(BOOL)enabled serverBag:(id)bag queue:(id)queue;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity onContainerWithID:(NSUUID *)d completionHandler:(id)handler;
- (void)handleCallChangedWithCall:(id)call;
@end

@implementation CSDConversationCallCoordinationManager

- (void)handleCallChangedWithCall:(id)call
{
  callCopy = call;

  ConversationCallCoordinationManager.handleCallChanged(call:)(callCopy);
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10044D610(&unk_100581508, v5);
}

- (CSDConversationCallCoordinationManager)initWithConversationManager:(id)manager sharePlayAvailabilityManager:(id)availabilityManager compositeContainerProvider:(id)provider relaySupportEnabled:(BOOL)enabled serverBag:(id)bag queue:(id)queue
{
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100344E1C(manager, availabilityManager, provider, enabled, bag, queue);
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)activity onContainerWithID:(NSUUID *)d completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = activity;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  activityCopy = activity;
  dCopy = d;

  sub_10044D610(&unk_1005814F0, v9);
}

@end