@interface PKDataReleaseElementsTransactionCell
- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)dataReleaseConfiguration;
- (void)setDataReleaseConfiguration:(id)a3;
@end

@implementation PKDataReleaseElementsTransactionCell

- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)dataReleaseConfiguration
{
  v3 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setDataReleaseConfiguration:(id)a3
{
  v5 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8);
  v9[4] = sub_1BD91B3E0();
  __swift_allocate_boxed_opaque_existential_1(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8);
  sub_1BD91B444();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FD10](v9);
}

- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1BE052434();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration) = 0;
    a4 = sub_1BE052404();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration) = 0;
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKDataReleaseElementsTransactionCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(PKDataReleaseElementsTransactionCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end