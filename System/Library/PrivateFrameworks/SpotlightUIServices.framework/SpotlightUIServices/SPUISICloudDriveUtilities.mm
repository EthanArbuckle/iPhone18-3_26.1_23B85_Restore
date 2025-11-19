@interface SPUISICloudDriveUtilities
+ (BOOL)isLoggedIntoICloudDrive;
+ (NSString)icloudDriveBundleId_objc;
+ (id)filterResultsForAccounts;
- (SPUISICloudDriveUtilities)init;
@end

@implementation SPUISICloudDriveUtilities

+ (NSString)icloudDriveBundleId_objc
{
  v2 = sub_26B8C7E84();

  return v2;
}

+ (BOOL)isLoggedIntoICloudDrive
{
  swift_getObjCClassMetadata();
  v2 = *(sub_26B8BDF3C() + 16);

  return v2 != 0;
}

+ (id)filterResultsForAccounts
{
  sub_26B8C0840(0, &qword_2804251B0, 0x277D65918);
  v2 = sub_26B8C7EE4();

  return v2;
}

- (SPUISICloudDriveUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SPUISICloudDriveUtilities();
  return [(SPUISICloudDriveUtilities *)&v3 init];
}

@end