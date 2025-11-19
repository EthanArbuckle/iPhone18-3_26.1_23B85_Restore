@interface PXUpdateUtilitiesOrderAction
- (PXFastEnumeration)orderedCollections;
- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)a3;
- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)a3 orderedCollections:(id)a4;
- (void)performAction:(id)a3;
- (void)setOrderedCollections:(id)a3;
@end

@implementation PXUpdateUtilitiesOrderAction

- (PXFastEnumeration)orderedCollections
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setOrderedCollections:(id)a3
{
  v5 = OBJC_IVAR___PXUpdateUtilitiesOrderAction_orderedCollections;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)a3 orderedCollections:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateUtilitiesOrderAction_undoOrderedUtilityTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateUtilitiesOrderAction_redoOrderedUtilityTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateUtilitiesOrderAction_orderedCollections) = a4;
  v6.receiver = self;
  v6.super_class = PXUpdateUtilitiesOrderAction;
  swift_unknownObjectRetain();
  return [(PXPhotosAction *)&v6 initWithPhotoLibrary:a3];
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A42AB81C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end