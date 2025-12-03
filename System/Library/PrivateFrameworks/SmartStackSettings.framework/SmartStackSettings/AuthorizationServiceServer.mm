@interface AuthorizationServiceServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation AuthorizationServiceServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
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

  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_26A08AB08(connectionCopy);

  return v10 & 1;
}

@end