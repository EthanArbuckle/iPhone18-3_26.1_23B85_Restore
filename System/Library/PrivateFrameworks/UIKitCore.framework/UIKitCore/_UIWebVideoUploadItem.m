@interface _UIWebVideoUploadItem
- (id)displayImage;
@end

@implementation _UIWebVideoUploadItem

- (id)displayImage
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[_UIWebFileUploadItem filePath](self, "filePath")}];

  return iconForVideoFile(v2);
}

@end