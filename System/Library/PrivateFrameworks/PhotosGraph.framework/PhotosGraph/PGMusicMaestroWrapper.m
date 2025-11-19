@interface PGMusicMaestroWrapper
- (PGMusicMaestroWrapper)init;
@end

@implementation PGMusicMaestroWrapper

- (PGMusicMaestroWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGMusicMaestroWrapper *)&v3 init];
}

@end