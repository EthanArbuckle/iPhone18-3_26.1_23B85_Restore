@interface DaemonXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13SiriTTSDaemon17DaemonXPCListener)init;
- (void)dealloc;
@end

@implementation DaemonXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000017A8(connectionCopy);

  return v9 & 1;
}

- (_TtC13SiriTTSDaemon17DaemonXPCListener)init
{
  static Constants.MachServiceName.getter();
  v3 = objc_allocWithZone(NSXPCListener);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithMachServiceName:v4];

  *(&self->super.isa + OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener) = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DaemonXPCListener();
  v6 = [(DaemonXPCListener *)&v8 init];
  [*(&v6->super.isa + OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener) setDelegate:v6];
  return v6;
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener);
  selfCopy = self;
  [v4 setDelegate:0];
  [*(&self->super.isa + v3) invalidate];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DaemonXPCListener();
  [(DaemonXPCListener *)&v6 dealloc];
}

@end