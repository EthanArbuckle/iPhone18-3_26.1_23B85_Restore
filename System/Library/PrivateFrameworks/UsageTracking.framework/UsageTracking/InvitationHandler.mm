@interface InvitationHandler
- (_TtC18UsageTrackingAgent17InvitationHandler)init;
- (void)manager:(id)manager incomingInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation;
- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation;
- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation;
@end

@implementation InvitationHandler

- (void)manager:(id)manager incomingInvitation:(id)invitation
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = manager;
    v10 = *(v8 + 8);
    managerCopy = manager;
    invitationCopy = invitation;
    selfCopy = self;
    v10(v14, invitationCopy, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (void)manager:(id)manager senderDidCancelInvitation:(id)invitation
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = manager;
    v10 = *(v8 + 16);
    managerCopy = manager;
    invitationCopy = invitation;
    selfCopy = self;
    v10(v14, invitationCopy, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (void)manager:(id)manager receiverDidAcceptInvitation:(id)invitation
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = manager;
    v10 = *(v8 + 24);
    managerCopy = manager;
    invitationCopy = invitation;
    selfCopy = self;
    v10(v14, invitationCopy, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (void)manager:(id)manager receiverDidDeclineInvitation:(id)invitation
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = manager;
    v10 = *(v8 + 32);
    managerCopy = manager;
    invitationCopy = invitation;
    selfCopy = self;
    v10(v14, invitationCopy, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (_TtC18UsageTrackingAgent17InvitationHandler)init
{
  *&self->delegate[OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for InvitationHandler();
  return [(InvitationHandler *)&v4 init];
}

@end