@interface PosterRackOffsetMenuButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithCoder:(id)coder;
- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithFrame:(CGRect)frame;
@end

@implementation PosterRackOffsetMenuButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  [(PosterRackOffsetMenuButton *)&v7 menuAttachmentPointForConfiguration:configuration];
  v6 = v5 + -8.0;
  result.y = v6;
  result.x = v4;
  return result;
}

- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  return [(PosterRackOffsetMenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11PosterBoard26PosterRackOffsetMenuButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PosterRackOffsetMenuButton();
  coderCopy = coder;
  v5 = [(PosterRackOffsetMenuButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end