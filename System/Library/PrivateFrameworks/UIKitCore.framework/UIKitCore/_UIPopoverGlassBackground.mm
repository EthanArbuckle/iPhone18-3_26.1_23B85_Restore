@interface _UIPopoverGlassBackground
- (UIPopoverPresentationController)presentationController;
- (UITraitCollection)traitCollectionForGlassContent;
- (_UIPopoverGlassBackground)initWithCoder:(id)coder;
- (void)setGlassContentTraitCollection:(id)collection;
- (void)setShapePath:(id)path;
- (void)set_traitCollectionForGlassContent:(id)content;
@end

@implementation _UIPopoverGlassBackground

- (void)setShapePath:(id)path
{
  v4 = *(self + OBJC_IVAR____UIPopoverGlassBackground_shapePath);
  *(self + OBJC_IVAR____UIPopoverGlassBackground_shapePath) = path;
  pathCopy = path;
  selfCopy = self;

  sub_188F8F55C();
}

- (void)set_traitCollectionForGlassContent:(id)content
{
  v4 = *(self + OBJC_IVAR____UIPopoverGlassBackground__traitCollectionForGlassContent);
  *(self + OBJC_IVAR____UIPopoverGlassBackground__traitCollectionForGlassContent) = content;
  contentCopy = content;
}

- (UITraitCollection)traitCollectionForGlassContent
{
  _traitCollectionForGlassContent = [(_UIPopoverGlassBackground *)self _traitCollectionForGlassContent];

  return _traitCollectionForGlassContent;
}

- (UIPopoverPresentationController)presentationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIPopoverGlassBackground)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____UIPopoverGlassBackground____lazy_storage___hostingView) = 0;
  v4 = OBJC_IVAR____UIPopoverGlassBackground_shapePath;
  *(self + v4) = [objc_allocWithZone(UIBezierPath) init];
  *(self + OBJC_IVAR____UIPopoverGlassBackground__traitCollectionForGlassContent) = 0;
  swift_unknownObjectWeakInit();
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)setGlassContentTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  [(_UIPopoverGlassBackground *)selfCopy set_traitCollectionForGlassContent:collectionCopy];
  presentationController = [(_UIPopoverGlassBackground *)selfCopy presentationController];
  [(UIPopoverPresentationController *)presentationController _traitCollectionForGlassContentDidChange];
}

@end