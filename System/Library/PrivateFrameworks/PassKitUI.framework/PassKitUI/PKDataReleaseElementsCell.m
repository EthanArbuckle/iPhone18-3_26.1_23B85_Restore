@interface PKDataReleaseElementsCell
- (_TtC9PassKitUI25PKDataReleaseElementsCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI25PKDataReleaseElementsCell)initWithFrame:(CGRect)a3;
- (_TtC9PassKitUI34PKIdentityDataReleaseConfiguration)dataReleaseConfiguration;
- (void)setDataReleaseConfiguration:(id)a3;
@end

@implementation PKDataReleaseElementsCell

- (_TtC9PassKitUI34PKIdentityDataReleaseConfiguration)dataReleaseConfiguration
{
  v3 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setDataReleaseConfiguration:(id)a3
{
  v5 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248);
  v9[4] = sub_1BD7546EC();
  __swift_allocate_boxed_opaque_existential_1(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258);
  sub_1BD754750();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FEF0](v9);
}

- (_TtC9PassKitUI25PKDataReleaseElementsCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(PKDataReleaseElementsCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI25PKDataReleaseElementsCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(PKDataReleaseElementsCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end