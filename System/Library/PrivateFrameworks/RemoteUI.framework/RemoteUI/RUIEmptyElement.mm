@interface RUIEmptyElement
- (_TtC8RemoteUI15RUIEmptyElement)init;
- (_TtC8RemoteUI15RUIEmptyElement)initWithAttributes:(id)attributes parent:(id)parent;
@end

@implementation RUIEmptyElement

- (_TtC8RemoteUI15RUIEmptyElement)initWithAttributes:(id)attributes parent:(id)parent
{
  if (attributes)
  {
    v5 = sub_21BA87BCC();
  }

  else
  {
    v5 = 0;
  }

  parentCopy = parent;
  return sub_21BA4245C(v5, parent);
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