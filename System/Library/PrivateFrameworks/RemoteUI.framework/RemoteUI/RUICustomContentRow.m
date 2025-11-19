@interface RUICustomContentRow
- (_TtC8RemoteUI19RUICustomContentRow)init;
- (_TtC8RemoteUI19RUICustomContentRow)initWithAttributes:(id)a3 parent:(id)a4;
- (id)subElementWithID:(id)a3;
- (id)tableCell;
- (void)prepareToPreload;
@end

@implementation RUICustomContentRow

- (id)subElementWithID:(id)a3
{
  if (a3)
  {
    v3 = self;
    v4 = sub_21BA87CBC();
    v6 = v5;
    v7 = *(**&v3[OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_childElementDirectory] + 120);
    v8 = v3;
    v9 = v7(v4, v6);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)tableCell
{
  v2 = self;
  v3 = sub_21BA4D09C();

  return v3;
}

- (void)prepareToPreload
{
  v2 = self;
  sub_21BA4D208();
}

- (_TtC8RemoteUI19RUICustomContentRow)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_cell) = 0;
  v3 = OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow_childElementDirectory;
  type metadata accessor for ElementDirectory();
  *(&self->super.super.super.super.isa + v3) = sub_21BA52ABC();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8RemoteUI19RUICustomContentRow____lazy_storage___contentLoader) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RUICustomContentRow();
  return [(RUISwiftUITableViewRow *)&v5 init];
}

- (_TtC8RemoteUI19RUICustomContentRow)initWithAttributes:(id)a3 parent:(id)a4
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
  return RUICustomContentRow.init(attributes:parent:)(v5, a4);
}

@end