@interface PXStoryNullSongResource
- (NSString)description;
- (PXStoryNullSongResource)init;
@end

@implementation PXStoryNullSongResource

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"No Music"];

  return v2;
}

- (PXStoryNullSongResource)init
{
  v7.receiver = self;
  v7.super_class = PXStoryNullSongResource;
  v2 = [(PXStoryNullSongResource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = @"PXStoryNullSongResource";

    asset = v3->_asset;
    v3->_resourceKind = 2;
    v3->_asset = 0;
  }

  return v3;
}

@end