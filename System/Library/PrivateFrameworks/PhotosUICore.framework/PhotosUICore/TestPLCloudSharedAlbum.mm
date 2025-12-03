@interface TestPLCloudSharedAlbum
- (id)cloudGUID;
@end

@implementation TestPLCloudSharedAlbum

- (id)cloudGUID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

@end