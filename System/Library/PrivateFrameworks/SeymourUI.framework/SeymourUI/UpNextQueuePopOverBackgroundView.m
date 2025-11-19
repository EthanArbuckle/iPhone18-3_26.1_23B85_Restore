@interface UpNextQueuePopOverBackgroundView
+ (UIEdgeInsets)contentViewInsets;
- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithCoder:(id)a3;
- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithFrame:(CGRect)a3;
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

- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UpNextQueuePopOverBackgroundView();
  v7 = [(UIPopoverBackgroundView *)&v9 initWithFrame:x, y, width, height];
  [(UpNextQueuePopOverBackgroundView *)v7 setAlpha:0.0];
  return v7;
}

- (_TtC9SeymourUI32UpNextQueuePopOverBackgroundView)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end