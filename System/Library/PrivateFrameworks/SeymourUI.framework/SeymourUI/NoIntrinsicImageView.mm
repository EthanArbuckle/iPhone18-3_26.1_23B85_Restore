@interface NoIntrinsicImageView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithCoder:(id)coder;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithFrame:(CGRect)frame;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)image;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation NoIntrinsicImageView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoIntrinsicImageView();
  return [(NoIntrinsicImageView *)&v5 initWithImage:image];
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoIntrinsicImageView();
  return [(NoIntrinsicImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoIntrinsicImageView();
  return [(NoIntrinsicImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoIntrinsicImageView();
  coderCopy = coder;
  v5 = [(NoIntrinsicImageView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end