@interface _UserDefaultsObserver
- (_TtC18PodcastsFoundation21_UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)userDefaultsDidChange:(id)a3;
@end

@implementation _UserDefaultsObserver

- (void)userDefaultsDidChange:(id)a3
{
  v4 = sub_1D91766AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D917666C();
  v9 = self;
  sub_1D8D808E0();

  (*(v5 + 8))(v8, v4);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  _UserDefaultsObserver.endObserving()();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(_UserDefaultsObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_1D917820C();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v15 = a5;
    v16 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1D917928C();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1D914AADC();
    sub_1D917805C();
  }

LABEL_7:
  sub_1D914A8B0(v10, v12, v17, a6);

  sub_1D8D64450(v17);
}

- (_TtC18PodcastsFoundation21_UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end