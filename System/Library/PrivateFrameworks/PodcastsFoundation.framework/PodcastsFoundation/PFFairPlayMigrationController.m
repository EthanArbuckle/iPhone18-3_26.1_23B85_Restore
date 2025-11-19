@interface PFFairPlayMigrationController
+ (PFFairPlayMigrationController)sharedInstance;
- (PFFairPlayMigrationController)init;
@end

@implementation PFFairPlayMigrationController

+ (PFFairPlayMigrationController)sharedInstance
{
  if (qword_1EDCD2910 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD2918;

  return v3;
}

- (PFFairPlayMigrationController)init
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(type metadata accessor for CoreDataKeyRequestStorage()) init];
  v3 = [objc_allocWithZone(type metadata accessor for FairPlayInvalidationManager()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(type metadata accessor for SecureDownloadRenewalManager());

  v6 = sub_1D8EA7FB0(v2, v3, v4, [v5 init]);

  swift_deallocPartialClassInstance();
  return v6;
}

@end