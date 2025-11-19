@interface KeyValueStoreCustomObserver
- (_TtC14bluetoothuserd27KeyValueStoreCustomObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation KeyValueStoreCustomObserver

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.isa) + 0xE0);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for KeyValueStoreCustomObserver();
  [(KeyValueStoreCustomObserver *)&v4 dealloc];
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
    memset(v14, 0, sizeof(v14));
    v13 = self;
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
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100072BE0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  (*((swift_isaMask & self->super.isa) + 0x108))(2, v12);

LABEL_8:
  sub_10000CA00(v14);
}

- (_TtC14bluetoothuserd27KeyValueStoreCustomObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end