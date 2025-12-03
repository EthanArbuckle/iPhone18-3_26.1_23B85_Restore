@interface _UserDefaultsObserver
- (_TtC18PodcastsFoundation21_UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)userDefaultsDidChange:(id)change;
@end

@implementation _UserDefaultsObserver

- (void)userDefaultsDidChange:(id)change
{
  v4 = sub_1D91766AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D917666C();
  selfCopy = self;
  sub_1D8D808E0();

  (*(v5 + 8))(v8, v4);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  _UserDefaultsObserver.endObserving()();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(_UserDefaultsObserver *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_1D917820C();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1D917928C();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1D914AADC();
    sub_1D917805C();
  }

LABEL_7:
  sub_1D914A8B0(v10, v12, v17, context);

  sub_1D8D64450(v17);
}

- (_TtC18PodcastsFoundation21_UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end