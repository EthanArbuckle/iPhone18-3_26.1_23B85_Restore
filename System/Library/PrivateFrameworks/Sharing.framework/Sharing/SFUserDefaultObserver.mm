@interface SFUserDefaultObserver
- (_TtC7Sharing21SFUserDefaultObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SFUserDefaultObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage);
  if (v4)
  {
    v5 = *(&self->super.isa + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key);
    v6 = *&self->defaultChangedHandler[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
    selfCopy = self;
    v8 = v4;

    v9 = sub_1A99767E0();

    [v8 removeObserver:selfCopy forKeyPath:v9 context:0];
  }

  else
  {
    selfCopy2 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(SFUserDefaultObserver *)&v11 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_1A9976820();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1A99771B0();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1A97AFD7C(&qword_1EB3B1160, type metadata accessor for NSKeyValueChangeKey);
    sub_1A9976700();
  }

LABEL_7:
  _s7Sharing21SFUserDefaultObserverC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyf6ChangeH0aypGSgSvSgtF_0(v9, v11);

  sub_1A97B06FC(v16, &qword_1EB3B0BA0, &unk_1A99923D0);
}

- (_TtC7Sharing21SFUserDefaultObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end