@interface _UIWebImageUploadItem
- (id)displayImage;
@end

@implementation _UIWebImageUploadItem

- (id)displayImage
{
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[_UIWebFileUploadItem filePath](self, "filePath")}];

  return iconForImageFile(v2);
}

@end