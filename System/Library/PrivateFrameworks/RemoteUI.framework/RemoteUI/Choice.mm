@interface Choice
- (RUIElement)parent;
- (_TtC8RemoteUI6Choice)init;
- (_TtC8RemoteUI6Choice)initWithAttributes:(id)attributes parent:(id)parent;
- (id)staticValues;
- (void)pageDidChange;
- (void)startActivityIndicator;
- (void)stopActivityIndicator;
- (void)tappedWithSender:(id)sender;
@end

@implementation Choice

- (RUIElement)parent
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x198);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)startActivityIndicator
{
  selfCopy = self;
  sub_21BA0B9AC();
}

- (void)stopActivityIndicator
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8RemoteUI6Choice_activityIndicatorCount);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC8RemoteUI6Choice_activityIndicatorCount) = (v5 & ~(v5 >> 63));
    if (v5 <= 0)
    {
      v6 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x120);
      selfCopy = self;
      v7 = v6();
      v7();
    }
  }
}

- (void)pageDidChange
{
  selfCopy = self;
  sub_21BA0BB68();
}

- (void)tappedWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21BA8846C();
    selfCopy2 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = (*((*MEMORY[0x277D85000] & self->super.super.isa) + 0xF0))(selfCopy2);
  if (v6)
  {
    v7 = v6;
    v6(self);
    sub_21B946D98(v7);
  }

  sub_21B9ABAAC(v8, &qword_27CD9E7C0);
}

- (id)staticValues
{
  if (sub_21BA0D3A8())
  {
    sub_21BA0DB6C();
    v2 = sub_21BA87EFC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC8RemoteUI6Choice)initWithAttributes:(id)attributes parent:(id)parent
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8RemoteUI6Choice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end