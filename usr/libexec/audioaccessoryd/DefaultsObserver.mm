@interface DefaultsObserver
- (_TtC15audioaccessoryd16DefaultsObserver)init;
- (_TtC15audioaccessoryd16DefaultsObserver)initWithKeys:(id)a3 defaults:(id)a4 notificationBlock:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)start;
- (void)stop;
@end

@implementation DefaultsObserver

- (_TtC15audioaccessoryd16DefaultsObserver)initWithKeys:(id)a3 defaults:(id)a4 notificationBlock:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_monitoredKeys) = v8;
  *(v9 + 16) = v7;
  *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_defaults) = a4;
  v10 = (self + OBJC_IVAR____TtC15audioaccessoryd16DefaultsObserver_notify);
  *v10 = sub_100172758;
  v10[1] = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DefaultsObserver();
  v11 = a4;
  return [(DefaultsObserver *)&v13 init];
}

- (void)dealloc
{
  v2 = self;
  DefaultsObserver.stop()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DefaultsObserver();
  [(DefaultsObserver *)&v3 dealloc];
}

- (void)start
{
  v2 = self;
  DefaultsObserver.start()();
}

- (void)stop
{
  v2 = self;
  DefaultsObserver.stop()();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v15, 0, sizeof(v15));
    v14 = self;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:

    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = self;
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