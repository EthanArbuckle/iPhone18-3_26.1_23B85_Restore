@interface UpNextQueuePopOverBackgroundView
+ (UIEdgeInsets)contentViewInsets;
- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithCoder:(id)coder;
- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation UpNextQueuePopOverBackgroundView

+ (UIEdgeInsets)contentViewInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UpNextQueuePopOverBackgroundView();
  height = [(UIPopoverBackgroundView *)&v9 initWithFrame:x, y, width, height];
  [(UpNextQueuePopOverBackgroundView *)height setAlpha:0.0];
  return height;
}

- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end