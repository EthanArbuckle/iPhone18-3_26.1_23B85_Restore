@interface SessionBurnBarView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI18SessionBurnBarView)initWithCoder:(id)a3;
- (_TtC9SeymourUI18SessionBurnBarView)initWithFrame:(CGRect)a3;
@end

@implementation SessionBurnBarView

- (CGSize)intrinsicContentSize
{
  v2 = MEMORY[0x277D77260];
  if (qword_27C760680 != -1)
  {
    swift_once();
  }

  v3 = *v2;
  v4 = *&qword_27C763270;
  if (qword_27C760688 != -1)
  {
    v6 = *v2;
    swift_once();
    v3 = v6;
  }

  v5 = v4 + *&qword_27C763278;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_TtC9SeymourUI18SessionBurnBarView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar;
  type metadata accessor for BurnBar();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI18SessionBurnBarView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end