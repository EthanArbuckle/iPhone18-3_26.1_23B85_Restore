@interface PLFileBackedThumbnailVirtualResource
- (int64_t)dataLength;
@end

@implementation PLFileBackedThumbnailVirtualResource

- (int64_t)dataLength
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileURL = [(PLVirtualResource *)self fileURL];
  path = [fileURL path];
  v6 = [defaultManager attributesOfItemAtPath:path error:0];
  fileSize = [v6 fileSize];

  return fileSize;
}

@end