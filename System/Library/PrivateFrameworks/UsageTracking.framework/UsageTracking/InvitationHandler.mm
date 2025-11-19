@interface InvitationHandler
- (_TtC18UsageTrackingAgent17InvitationHandler)init;
- (void)manager:(id)a3 incomingInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4;
- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4;
- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4;
@end

@implementation InvitationHandler

- (void)manager:(id)a3 incomingInvitation:(id)a4
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = a3;
    v10 = *(v8 + 8);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v14, v12, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (void)manager:(id)a3 senderDidCancelInvitation:(id)a4
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = a3;
    v10 = *(v8 + 16);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v14, v12, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (void)manager:(id)a3 receiverDidAcceptInvitation:(id)a4
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = a3;
    v10 = *(v8 + 24);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v14, v12, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_1000208BC(v14);
  }
}

- (void)manager:(id)a3 receiverDidDeclineInvitation:(id)a4
{
  v7 = self + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v14[3] = sub_100035288();
    v14[4] = &off_100087088;
    v14[0] = a3;
    v10 = *(v8 + 32);
    v11 = a3;
    v12 = a4;
    v13 = self;
    v10(v14, v12, ObjectType, v8);
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