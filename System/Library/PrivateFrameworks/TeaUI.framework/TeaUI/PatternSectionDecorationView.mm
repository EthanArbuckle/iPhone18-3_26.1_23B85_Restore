@interface PatternSectionDecorationView
- (void)applyLayoutAttributes:(id)attributes;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PatternSectionDecorationView

- (void)layoutSubviews
{
  selfCopy = self;
  PatternSectionDecorationView.layoutSubviews()();
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  selfCopy = self;
  PatternSectionDecorationView.willMove(toSuperview:)(superview);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  PatternSectionDecorationView.didMoveToSuperview()();
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  PatternSectionDecorationView.apply(_:)(attributesCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PatternSectionDecorationView.traitCollectionDidChange(_:)(v9);
}

@end