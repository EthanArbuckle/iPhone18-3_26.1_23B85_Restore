@interface PKDataReleaseElementsTransactionCell
- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)dataReleaseConfiguration;
- (void)setDataReleaseConfiguration:(id)configuration;
@end

@implementation PKDataReleaseElementsTransactionCell

- (_TtC9PassKitUI45PKIdentityDataReleaseTransactionConfiguration)dataReleaseConfiguration
{
  v3 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setDataReleaseConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = configuration;
  configurationCopy = configuration;
  selfCopy = self;

  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58ED8);
  v9[4] = sub_1BD91B3E0();
  __swift_allocate_boxed_opaque_existential_1(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EE8);
  sub_1BD91B444();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FD10](v9);
}

- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1BE052434();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration) = 0;
    identifier = sub_1BE052404();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration) = 0;
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKDataReleaseElementsTransactionCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC9PassKitUI36PKDataReleaseElementsTransactionCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI36PKDataReleaseElementsTransactionCell_dataReleaseConfiguration) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(PKDataReleaseElementsTransactionCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end