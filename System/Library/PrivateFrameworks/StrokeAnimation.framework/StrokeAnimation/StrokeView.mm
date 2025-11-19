@interface StrokeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SAStrokeAnimatingDelegate)interactionDelegate;
- (void)_didTapView:(id)a3;
- (void)endAnimation;
- (void)layoutSubviews;
- (void)setInteractionDelegate:(id)a3;
- (void)startAnimationRepeating:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateWithData:(id)a3;
@end

@implementation StrokeView

- (void)_didTapView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26BC95DF0(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  StrokeView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v6 = StrokeView.sizeThatFits(_:)(__PAIR128__(v5, *&width));

  v7 = v6.width;
  height = v6.height;
  result.height = height;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  StrokeView.traitCollectionDidChange(_:)(v9);
}

- (void)updateWithData:(id)a3
{
  v4 = a3;
  v5._underlyingObject = self;
  underlyingObject = v5._underlyingObject;
  v5.super.isa = v4;
  StrokeView.update(with:)(v5);
}

- (SAStrokeAnimatingDelegate)interactionDelegate
{
  v2 = StrokeView.interactionDelegate.getter();

  return v2;
}

- (void)setInteractionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  StrokeView.interactionDelegate.setter();
}

- (void)startAnimationRepeating:(BOOL)a3
{
  v3 = self;
  StrokeView.startAnimationRepeating(_:)(0);
}

- (void)endAnimation
{
  v2 = self;
  StrokeView.endAnimation()();
}

@end