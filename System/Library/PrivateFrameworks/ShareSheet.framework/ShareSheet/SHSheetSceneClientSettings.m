@interface SHSheetSceneClientSettings
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SHSheetSceneClientSettings

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SHSheetMutableSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end