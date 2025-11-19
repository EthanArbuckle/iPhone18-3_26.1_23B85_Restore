@interface RCCloudKitContainerUtilities
+ (CKContainerOptions)containerOptions;
+ (id)createContainer;
- (RCCloudKitContainerUtilities)init;
@end

@implementation RCCloudKitContainerUtilities

+ (CKContainerOptions)containerOptions
{
  v2 = [objc_allocWithZone(CKContainerOptions) init];
  [v2 setApplicationBundleIdentifierOverride:RCVoiceMemosBundleID];

  return v2;
}

+ (id)createContainer
{
  v2 = sub_100034164();

  return v2;
}

- (RCCloudKitContainerUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CloudKitContainerUtilities();
  return [(RCCloudKitContainerUtilities *)&v3 init];
}

@end