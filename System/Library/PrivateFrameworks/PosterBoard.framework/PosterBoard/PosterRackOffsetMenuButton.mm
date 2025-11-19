@interface PosterRackOffsetMenuButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithCoder:(id)a3;
- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithFrame:(CGRect)a3;
@end

@implementation PosterRackOffsetMenuButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  [(PosterRackOffsetMenuButton *)&v7 menuAttachmentPointForConfiguration:a3];
  v6 = v5 + -8.0;
  result.y = v6;
  result.x = v4;
  return result;
}

- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  return [(PosterRackOffsetMenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  v4 = a3;
  v5 = [(PosterRackOffsetMenuButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end