@interface DefaultsObserver
- (_TtC15audioaccessoryd16DefaultsObserver)init;
- (_TtC15audioaccessoryd16DefaultsObserver)initWithKeys:(id)keys defaults:(id)defaults notificationBlock:(id)block;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)start;
- (void)stop;
@end

@implementation DefaultsObserver

- (_TtC15audioaccessoryd16DefaultsObserver)initWithKeys:(id)keys defaults:(id)defaults notificationBlock:(id)block
{
  v7 = _Block_copy(block);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys) = v8;
  *(v9 + 16) = v7;
  *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults) = defaults;
  v10 = (self + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify);
  *v10 = sub_100172758;
  v10[1] = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DefaultsObserver();
  defaultsCopy = defaults;
  return [(DefaultsObserver *)&v13 init];
}

- (void)dealloc
{
  selfCopy = self;
  DefaultsObserver.stop()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for DefaultsObserver();
  [(DefaultsObserver *)&v3 dealloc];
}

- (void)start
{
  selfCopy = self;
  DefaultsObserver.start()();
}

- (void)stop
{
  selfCopy = self;
  DefaultsObserver.stop()();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v15, 0, sizeof(v15));
    selfCopy = self;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:

    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify);
  v12 = *&self->defaults[OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify];

  v13(v8, v10);

LABEL_8:
  sub_100102AE0(v15);
}

- (_TtC15audioaccessoryd16DefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end