@interface IFSessionService.Server
- (void)currentSessionIDForUserID:(id)d reply:(id)reply;
- (void)dealloc;
- (void)sendWithMessageData:(id)data with:(id)with;
@end

@implementation IFSessionService.Server

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
  selfCopy = self;

  sub_223657B98(selfCopy);

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(IFSessionService.Server *)&v6 dealloc];
}

- (void)sendWithMessageData:(id)data with:(id)with
{
  v6 = _Block_copy(with);
  dataCopy = data;
  selfCopy = self;
  v8 = sub_223727358();
  v10 = v9;

  _Block_copy(v6);
  sub_223660770(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_223661270(v8, v10);
}

- (void)currentSessionIDForUserID:(id)d reply:(id)reply
{
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(reply);
  sub_2237273E8();
  _Block_copy(v12);
  selfCopy = self;
  sub_223660A08(v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v7 + 8))(v11, v6);
}

@end