@interface SHSheetMutableSceneClientSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SHSheetMutableSceneClientSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHSheetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end