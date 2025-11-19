@interface SREMusicMetadata
- (SREMusicMetadata)init;
@end

@implementation SREMusicMetadata

- (SREMusicMetadata)init
{
  v3.receiver = self;
  v3.super_class = SREMusicMetadata;
  return [(SREMusicMetadata *)&v3 init];
}

@end