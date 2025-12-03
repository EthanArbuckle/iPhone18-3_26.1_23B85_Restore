@interface ColorSectionDecorationView
- (void)applyLayoutAttributes:(id)attributes;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation ColorSectionDecorationView

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  ColorSectionDecorationView.willMove(toSuperview:)(superview);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  ColorSectionDecorationView.didMoveToSuperview()();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  ColorSectionDecorationView.apply(_:)(attributesCopy);
}

@end