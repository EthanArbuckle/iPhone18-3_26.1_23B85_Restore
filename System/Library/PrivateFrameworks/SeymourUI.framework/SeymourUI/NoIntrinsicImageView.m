@interface NoIntrinsicImageView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithCoder:(id)a3;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithFrame:(CGRect)a3;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)a3;
- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
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

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoIntrinsicImageView();
  return [(NoIntrinsicImageView *)&v5 initWithImage:a3];
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoIntrinsicImageView();
  return [(NoIntrinsicImageView *)&v7 initWithImage:a3 highlightedImage:a4];
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NoIntrinsicImageView();
  return [(NoIntrinsicImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI20NoIntrinsicImageView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoIntrinsicImageView();
  v4 = a3;
  v5 = [(NoIntrinsicImageView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end