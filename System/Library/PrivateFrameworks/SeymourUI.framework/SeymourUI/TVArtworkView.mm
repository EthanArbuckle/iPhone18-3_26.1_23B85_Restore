@interface TVArtworkView
- (CGSize)intrinsicContentSize;
- (UIImage)stackImage;
- (_TtC9SeymourUI13TVArtworkView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setStackImage:(id)image;
@end

@implementation TVArtworkView

- (UIImage)stackImage
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TVArtworkView();
  stackImage = [(_UIStackedImageContainerView *)&v4 stackImage];

  return stackImage;
}

- (void)setStackImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_20BAEF770(image);
}

- (_TtC9SeymourUI13TVArtworkView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v5 = objc_allocWithZone(type metadata accessor for TVArtworkView());
  v8 = sub_20BAEFC6C(0, v6, v7, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BAEFF38();
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

@end