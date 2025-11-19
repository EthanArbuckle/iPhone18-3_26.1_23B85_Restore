@interface _UIPopoverGlassBackground
- (UIPopoverPresentationController)presentationController;
- (UITraitCollection)traitCollectionForGlassContent;
- (_UIPopoverGlassBackground)initWithCoder:(id)a3;
- (void)setGlassContentTraitCollection:(id)a3;
- (void)setShapePath:(id)a3;
- (void)set_traitCollectionForGlassContent:(id)a3;
@end

@implementation _UIPopoverGlassBackground

- (void)setShapePath:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIPopoverGlassBackground_shapePath);
  *(self + OBJC_IVAR____UIPopoverGlassBackground_shapePath) = a3;
  v5 = a3;
  v6 = self;

  sub_188F8F55C();
}

- (void)set_traitCollectionForGlassContent:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIPopoverGlassBackground__traitCollectionForGlassContent);
  *(self + OBJC_IVAR____UIPopoverGlassBackground__traitCollectionForGlassContent) = a3;
  v3 = a3;
}

- (UITraitCollection)traitCollectionForGlassContent
{
  v2 = [(_UIPopoverGlassBackground *)self _traitCollectionForGlassContent];

  return v2;
}

- (UIPopoverPresentationController)presentationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIPopoverGlassBackground)initWithCoder:(id)a3
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

- (void)setGlassContentTraitCollection:(id)a3
{
  v4 = a3;
  v6 = self;
  [(_UIPopoverGlassBackground *)v6 set_traitCollectionForGlassContent:v4];
  v5 = [(_UIPopoverGlassBackground *)v6 presentationController];
  [(UIPopoverPresentationController *)v5 _traitCollectionForGlassContentDidChange];
}

@end