@interface CXScreenSharingRequestMetadata
+ (CXScreenSharingRequestMetadata)metadataWithTUScreenSharingRequestMetadata:(id)a3;
- (TUScreenSharingRequestMetadata)tuMetadata;
@end

@implementation CXScreenSharingRequestMetadata

+ (CXScreenSharingRequestMetadata)metadataWithTUScreenSharingRequestMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CXScreenSharingRequestMetadata);
  v5 = [v3 bundleIdentifier];
  [v4 setBundleIdentifier:v5];

  v6 = [v3 appName];
  [v4 setAppName:v6];

  v7 = [v3 sceneID];

  [v4 setSceneID:v7];

  return v4;
}

- (TUScreenSharingRequestMetadata)tuMetadata
{
  v3 = objc_alloc_init(TUScreenSharingRequestMetadata);
  v4 = [(CXScreenSharingRequestMetadata *)self bundleIdentifier];
  [v3 setBundleIdentifier:v4];

  v5 = [(CXScreenSharingRequestMetadata *)self appName];
  [v3 setAppName:v5];

  v6 = [(CXScreenSharingRequestMetadata *)self sceneID];
  [v3 setSceneID:v6];

  return v3;
}

@end