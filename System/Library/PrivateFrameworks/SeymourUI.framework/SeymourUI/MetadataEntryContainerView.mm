@interface MetadataEntryContainerView
- (UIView)viewForFirstBaselineLayout;
- (UIView)viewForLastBaselineLayout;
- (_TtC9SeymourUI26MetadataEntryContainerView)initWithCoder:(id)a3;
- (_TtC9SeymourUI26MetadataEntryContainerView)initWithFrame:(CGRect)a3;
@end

@implementation MetadataEntryContainerView

- (UIView)viewForFirstBaselineLayout
{
  v2 = self;
  v3 = sub_20BC2172C();

  return v3;
}

- (UIView)viewForLastBaselineLayout
{
  v2 = self;
  v3 = sub_20BC2180C();

  return v3;
}

- (_TtC9SeymourUI26MetadataEntryContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_layout) = 0x4024000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_views) = MEMORY[0x277D84F90];
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26MetadataEntryContainerView_onAction);
  *v3 = 0;
  v3[1] = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI26MetadataEntryContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end