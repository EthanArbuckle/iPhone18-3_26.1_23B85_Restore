@interface TestPLCloudSharedAlbum
- (id)cloudGUID;
@end

@implementation TestPLCloudSharedAlbum

- (id)cloudGUID
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

@end