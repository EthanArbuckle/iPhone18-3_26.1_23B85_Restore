@interface GradientSectionDecorationView
- (void)applyLayoutAttributes:(id)attributes;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation GradientSectionDecorationView

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  GradientSectionDecorationView.willMove(toSuperview:)(superview);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  GradientSectionDecorationView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  GradientSectionDecorationView.layoutSubviews()();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  GradientSectionDecorationView.apply(_:)(attributesCopy);
}

@end