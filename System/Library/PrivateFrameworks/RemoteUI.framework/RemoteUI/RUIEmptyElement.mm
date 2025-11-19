@interface RUIEmptyElement
- (_TtC8RemoteUI15RUIEmptyElement)init;
- (_TtC8RemoteUI15RUIEmptyElement)initWithAttributes:(id)a3 parent:(id)a4;
@end

@implementation RUIEmptyElement

- (_TtC8RemoteUI15RUIEmptyElement)initWithAttributes:(id)a3 parent:(id)a4
{
  if (a3)
  {
    v5 = sub_21BA87BCC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a4;
  return sub_21BA4245C(v5, a4);
}

- (_TtC8RemoteUI15RUIEmptyElement)init
{
  v3 = OBJC_IVAR____TtC8RemoteUI15RUIEmptyElement__view;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for RUIEmptyElement();
  return [(RUIElement *)&v5 init];
}

@end