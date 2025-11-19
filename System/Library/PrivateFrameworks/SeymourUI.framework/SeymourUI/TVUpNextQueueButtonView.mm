@interface TVUpNextQueueButtonView
- (CGSize)intrinsicContentSize;
- (NSArray)preferredFocusEnvironments;
- (_TtC9SeymourUI23TVUpNextQueueButtonView)initWithCoder:(id)a3;
- (_TtC9SeymourUI23TVUpNextQueueButtonView)initWithFrame:(CGRect)a3;
@end

@implementation TVUpNextQueueButtonView

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_button);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v6 = sub_20C13CC54();

  return v6;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_20C0BCFF8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC9SeymourUI23TVUpNextQueueButtonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_layout) = 0x4050800000000000;
  v3 = OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_buttonContentView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for TVUpNextQueueButtonContentView()) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI23TVUpNextQueueButtonView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end