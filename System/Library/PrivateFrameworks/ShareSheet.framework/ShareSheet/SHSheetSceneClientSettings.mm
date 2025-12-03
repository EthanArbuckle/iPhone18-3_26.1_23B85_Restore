@interface SHSheetSceneClientSettings
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SHSheetSceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SHSheetMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end