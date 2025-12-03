@interface RadialGradientSectionDecorationView
- (void)applyLayoutAttributes:(id)attributes;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation RadialGradientSectionDecorationView

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  RadialGradientSectionDecorationView.willMove(toSuperview:)(superview);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  RadialGradientSectionDecorationView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  RadialGradientSectionDecorationView.layoutSubviews()();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  RadialGradientSectionDecorationView.apply(_:)(attributesCopy);
}

@end