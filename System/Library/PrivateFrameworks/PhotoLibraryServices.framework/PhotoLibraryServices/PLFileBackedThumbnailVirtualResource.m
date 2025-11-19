@interface PLFileBackedThumbnailVirtualResource
- (int64_t)dataLength;
@end

@implementation PLFileBackedThumbnailVirtualResource

- (int64_t)dataLength
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLVirtualResource *)self fileURL];
  v5 = [v4 path];
  v6 = [v3 attributesOfItemAtPath:v5 error:0];
  v7 = [v6 fileSize];

  return v7;
}

@end