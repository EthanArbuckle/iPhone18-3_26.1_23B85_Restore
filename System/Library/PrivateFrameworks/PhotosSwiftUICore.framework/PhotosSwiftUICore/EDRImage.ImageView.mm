@interface EDRImage.ImageView
- (_TtCV17PhotosSwiftUICore8EDRImage9ImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)layoutSubviews;
@end

@implementation EDRImage.ImageView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1C11D1930();
}

- (_TtCV17PhotosSwiftUICore8EDRImage9ImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  imageCopy = image;
  highlightedImageCopy = highlightedImage;
  return sub_1C11D1AA8(image, highlightedImage);
}

@end