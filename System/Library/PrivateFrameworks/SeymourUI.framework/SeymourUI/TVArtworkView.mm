@interface TVArtworkView
- (CGSize)intrinsicContentSize;
- (UIImage)stackImage;
- (_TtC9SeymourUI13TVArtworkView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setStackImage:(id)a3;
@end

@implementation TVArtworkView

- (UIImage)stackImage
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TVArtworkView();
  v2 = [(_UIStackedImageContainerView *)&v4 stackImage];

  return v2;
}

- (void)setStackImage:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BAEF770(a3);
}

- (_TtC9SeymourUI13TVArtworkView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = objc_allocWithZone(type metadata accessor for TVArtworkView());
  v8 = sub_20BAEFC6C(0, v6, v7, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)layoutSubviews
{
  v2 = self;
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