@interface NavigationBarSubtitleView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC5UIKit25NavigationBarSubtitleView)initWithFrame:(CGRect)a3;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)layoutSubviews;
@end

@implementation NavigationBarSubtitleView

- (_TtC5UIKit25NavigationBarSubtitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content;
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = -1;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for NavigationBarSubtitleView();
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_188CE260C(width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188CE3BF4();
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationBarSubtitleView();
  v4 = a3;
  v5 = v8.receiver;
  [(UIView *)&v8 _intrinsicContentSizeInvalidatedForChildView:v4];
  v6 = *&v5[OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler];
  if (v6)
  {

    v6(v7);

    sub_188A55B8C(v6);
  }

  else
  {
  }
}

@end