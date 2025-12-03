@interface NavigationBarSubtitleView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC5UIKit25NavigationBarSubtitleView)initWithFrame:(CGRect)frame;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)layoutSubviews;
@end

@implementation NavigationBarSubtitleView

- (_TtC5UIKit25NavigationBarSubtitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_188CE260C(width, height, priority, fittingPriority);
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
  selfCopy = self;
  sub_188CE3BF4();
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationBarSubtitleView();
  viewCopy = view;
  v5 = v8.receiver;
  [(UIView *)&v8 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
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