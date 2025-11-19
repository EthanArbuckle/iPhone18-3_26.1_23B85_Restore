@interface _UILightBoxView
- (_TtC5UIKit15_UILightBoxView)initWithCoder:(id)a3;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
@end

@implementation _UILightBoxView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UILightBoxView();
  v2 = v4.receiver;
  [(_UILightEffectTransitionView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit15_UILightBoxView_lightSourceView];
  [v2 bounds];
  v6 = CGRectInset(v5, -*&v2[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset], -*&v2[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset]);
  [v3 setFrame_];
}

- (void)didAddSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for _UILightBoxView();
  v4 = a3;
  v5 = v6.receiver;
  [(UIView *)&v6 didAddSubview:v4];
  [v5 bringSubviewToFront_];
}

- (_TtC5UIKit15_UILightBoxView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end