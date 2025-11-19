@interface IFSessionService.Server
- (void)currentSessionIDForUserID:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)sendWithMessageData:(id)a3 with:(id)a4;
@end

@implementation IFSessionService.Server

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
  v5 = self;

  sub_223657B98(v5);

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(IFSessionService.Server *)&v6 dealloc];
}

- (void)sendWithMessageData:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_223727358();
  v10 = v9;

  _Block_copy(v6);
  sub_223660770(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_223661270(v8, v10);
}

- (void)currentSessionIDForUserID:(id)a3 reply:(id)a4
{
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  sub_2237273E8();
  _Block_copy(v12);
  v13 = self;
  sub_223660A08(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v7 + 8))(v11, v6);
}

@end