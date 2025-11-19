@interface WOMetadataSavingDelegate
- (WOMetadataProvider)metadataProvider;
- (WOMetadataSavingDelegate)init;
@end

@implementation WOMetadataSavingDelegate

- (WOMetadataProvider)metadataProvider
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (WOMetadataSavingDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end