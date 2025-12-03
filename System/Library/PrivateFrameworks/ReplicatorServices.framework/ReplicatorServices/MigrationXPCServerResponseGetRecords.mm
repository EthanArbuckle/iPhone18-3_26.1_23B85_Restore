@interface MigrationXPCServerResponseGetRecords
- (_TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords)init;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation MigrationXPCServerResponseGetRecords

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MigrationXPCServerResponseGetRecords.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
}

- (_TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end