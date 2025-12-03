@interface PGSocialGroupPersistenceActions
- (PGSocialGroupPersistenceActions)init;
- (int64_t)currentAutomaticSocialGroupsToModifyCount;
- (int64_t)newAutomaticSocialGroupsToCreateCount;
- (int64_t)outdatedAutomaticSocialGroupsToDeleteCount;
- (int64_t)socialGroupsSkippedBecauseNoCommonAssetsCount;
@end

@implementation PGSocialGroupPersistenceActions

- (int64_t)socialGroupsSkippedBecauseNoCommonAssetsCount
{
  v3 = OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

- (int64_t)newAutomaticSocialGroupsToCreateCount
{
  v3 = OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

- (int64_t)currentAutomaticSocialGroupsToModifyCount
{
  selfCopy = self;
  sub_22F3230C0();
  v4 = v3;

  return v4;
}

- (int64_t)outdatedAutomaticSocialGroupsToDeleteCount
{
  v2 = *(&self->super.isa + OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete);
  if ((v2 & 0xC000000000000001) == 0)
  {
    return *(v2 + 16);
  }

  selfCopy = self;
  v4 = sub_22F741A00();

  return v4;
}

- (PGSocialGroupPersistenceActions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end