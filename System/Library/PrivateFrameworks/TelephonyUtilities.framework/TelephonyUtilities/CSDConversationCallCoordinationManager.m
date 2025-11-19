@interface CSDConversationCallCoordinationManager
- (CSDConversationCallCoordinationManager)initWithConversationManager:(id)a3 sharePlayAvailabilityManager:(id)a4 compositeContainerProvider:(id)a5 relaySupportEnabled:(BOOL)a6 serverBag:(id)a7 queue:(id)a8;
- (void)activeActivitySessionContainersWithCompletionHandler:(id)a3;
- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)a3 onContainerWithID:(NSUUID *)a4 completionHandler:(id)a5;
- (void)handleCallChangedWithCall:(id)a3;
@end

@implementation CSDConversationCallCoordinationManager

- (void)handleCallChangedWithCall:(id)a3
{
  v3 = a3;

  ConversationCallCoordinationManager.handleCallChanged(call:)(v3);
}

- (void)activeActivitySessionContainersWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_10044D610(&unk_100581508, v5);
}

- (CSDConversationCallCoordinationManager)initWithConversationManager:(id)a3 sharePlayAvailabilityManager:(id)a4 compositeContainerProvider:(id)a5 relaySupportEnabled:(BOOL)a6 serverBag:(id)a7 queue:(id)a8
{
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100344E1C(a3, a4, a5, a6, a7, a8);
}

- (void)handleActivitySessionCreationRequestWithActivity:(TUConversationActivity *)a3 onContainerWithID:(NSUUID *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;

  sub_10044D610(&unk_1005814F0, v9);
}

@end