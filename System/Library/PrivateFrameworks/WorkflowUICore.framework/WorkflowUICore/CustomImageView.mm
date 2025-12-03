@interface CustomImageView
- (CGSize)intrinsicContentSize;
- (_TtC14WorkflowUICoreP33_05C30733584E7BCE9234AF268964879815CustomImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation CustomImageView

- (CGSize)intrinsicContentSize
{
  v2 = sub_274B331C8();
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC14WorkflowUICoreP33_05C30733584E7BCE9234AF268964879815CustomImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  imageCopy = image;
  highlightedImageCopy = highlightedImage;
  return sub_274B33258(image, highlightedImage);
}

@end