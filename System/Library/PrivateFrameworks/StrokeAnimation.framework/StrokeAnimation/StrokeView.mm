@interface StrokeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SAStrokeAnimatingDelegate)interactionDelegate;
- (void)_didTapView:(id)view;
- (void)endAnimation;
- (void)layoutSubviews;
- (void)setInteractionDelegate:(id)delegate;
- (void)startAnimationRepeating:(BOOL)repeating;
- (void)traitCollectionDidChange:(id)change;
- (void)updateWithData:(id)data;
@end

@implementation StrokeView

- (void)_didTapView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_26BC95DF0(viewCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  StrokeView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v6 = StrokeView.sizeThatFits(_:)(__PAIR128__(v5, *&width));

  v7 = v6.width;
  height = v6.height;
  result.height = height;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  StrokeView.traitCollectionDidChange(_:)(v9);
}

- (void)updateWithData:(id)data
{
  dataCopy = data;
  v5._underlyingObject = self;
  underlyingObject = v5._underlyingObject;
  v5.super.isa = dataCopy;
  StrokeView.update(with:)(v5);
}

- (SAStrokeAnimatingDelegate)interactionDelegate
{
  v2 = StrokeView.interactionDelegate.getter();

  return v2;
}

- (void)setInteractionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  StrokeView.interactionDelegate.setter();
}

- (void)startAnimationRepeating:(BOOL)repeating
{
  selfCopy = self;
  StrokeView.startAnimationRepeating(_:)(0);
}

- (void)endAnimation
{
  selfCopy = self;
  StrokeView.endAnimation()();
}

@end