@interface CXScreenSharingRequestMetadata
+ (CXScreenSharingRequestMetadata)metadataWithTUScreenSharingRequestMetadata:(id)metadata;
- (TUScreenSharingRequestMetadata)tuMetadata;
@end

@implementation CXScreenSharingRequestMetadata

+ (CXScreenSharingRequestMetadata)metadataWithTUScreenSharingRequestMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = objc_alloc_init(CXScreenSharingRequestMetadata);
  bundleIdentifier = [metadataCopy bundleIdentifier];
  [v4 setBundleIdentifier:bundleIdentifier];

  appName = [metadataCopy appName];
  [v4 setAppName:appName];

  sceneID = [metadataCopy sceneID];

  [v4 setSceneID:sceneID];

  return v4;
}

- (TUScreenSharingRequestMetadata)tuMetadata
{
  v3 = objc_alloc_init(TUScreenSharingRequestMetadata);
  bundleIdentifier = [(CXScreenSharingRequestMetadata *)self bundleIdentifier];
  [v3 setBundleIdentifier:bundleIdentifier];

  appName = [(CXScreenSharingRequestMetadata *)self appName];
  [v3 setAppName:appName];

  sceneID = [(CXScreenSharingRequestMetadata *)self sceneID];
  [v3 setSceneID:sceneID];

  return v3;
}

@end