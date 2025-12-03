@interface AuthorizationServiceServer.ClientConnection
- (void)dealloc;
- (void)subscribeToDescriptorCollection:(id)collection;
@end

@implementation AuthorizationServiceServer.ClientConnection

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_subscribeTask))
  {
    selfCopy = self;

    sub_26A09E074();
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(AuthorizationServiceServer.ClientConnection *)&v6 dealloc];
}

- (void)subscribeToDescriptorCollection:(id)collection
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(collection);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  sub_26A08866C(sub_26A08ADD0, v6);
}

@end