@interface SHSheetMutableSceneClientSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SHSheetMutableSceneClientSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHSheetSceneClientSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end