@interface UserDefaultsObserver
- (_TtC8SPShared20UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UserDefaultsObserver

- (void)dealloc
{
  selfCopy = self;
  sub_2644BD594();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for UserDefaultsObserver();
  [(UserDefaultsObserver *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v8 = sub_2644EB22C();
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
  sub_2644EB6AC();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(&self->super.isa + OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_notify);
  v12 = *&self->defaults[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_notify];

  v13(v8, v10);

LABEL_8:
  sub_2644BD848(v15);
}

- (_TtC8SPShared20UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end