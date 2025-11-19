@interface SUIPerformAppBrowseFilterCommand
- (_TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand)init;
- (_TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUIPerformAppBrowseFilterCommand

- (_TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand)init
{
  v2 = self + OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID;
  *v2 = 0;
  v2[8] = 1;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v3 = [(SUIPerformAppBrowseFilterCommand *)&v6 init];
  v4 = v3 + OBJC_IVAR____TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand_categoryID;
  swift_beginAccess();
  *v4 = 0;
  v4[8] = 1;
  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26B93AE5C(v4);
}

- (id)copyWithZone:(void *)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for SUIPerformAppBrowseFilterCommand();
  v4 = v11.receiver;
  [(SSPerformEntityQueryCommand *)&v11 copyWithZone:a3];
  sub_26B9ACAD4();
  swift_unknownObjectRelease();
  v5 = swift_dynamicCast();
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x58))(v5);
  (*((*v6 & *v10) + 0x60))(v7, v8 & 1);

  return v10;
}

- (_TtC17SpotlightUIShared32SUIPerformAppBrowseFilterCommand)initWithProtobuf:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end