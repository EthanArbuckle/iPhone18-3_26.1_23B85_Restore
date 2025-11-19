@interface PlayButton
- (void)layoutSubviews;
@end

@implementation PlayButton

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for PlayButton();
  v2 = v6.receiver;
  [(PlayButton *)&v6 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView;
  v4 = [*&v2[OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView] layer];
  [v2 bounds];
  [v4 setCornerRadius_];

  [*&v2[v3] setClipsToBounds_];
}

@end