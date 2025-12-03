@interface _UILightEffectTransitionView
- (_TtC5UIKit28_UILightEffectTransitionView)initWithCoder:(id)coder;
- (_TtC5UIKit28_UILightEffectTransitionView)initWithFrame:(CGRect)frame;
- (void)_didRemoveSubview:(id)subview;
- (void)layoutSubviews;
@end

@implementation _UILightEffectTransitionView

- (void)_didRemoveSubview:(id)subview
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _UILightEffectTransitionView();
  v4 = v7.receiver;
  subviewCopy = subview;
  [(UIView *)&v7 _didRemoveSubview:subviewCopy];
  if (subviewCopy)
  {
    swift_beginAccess();
    v6 = sub_188DD15C0(subviewCopy);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188DEE4D0();
}

- (_TtC5UIKit28_UILightEffectTransitionView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_activationTransition;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = self + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_deactivationTransition;
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit28_UILightEffectTransitionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end