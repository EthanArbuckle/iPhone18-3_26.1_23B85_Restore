@interface AnimatedBackgroundView
- (void)layoutSubviews;
@end

@implementation AnimatedBackgroundView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnimatedBackgroundView();
  v2 = v4.receiver;
  [(AnimatedBackgroundView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientLayer];
  [*&v2[OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_gradientView] bounds];
  [v3 setFrame_];
}

@end