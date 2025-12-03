@interface PXUpdateUtilitiesOrderAction
- (PXFastEnumeration)orderedCollections;
- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)library;
- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)library orderedCollections:(id)collections;
- (void)performAction:(id)action;
- (void)setOrderedCollections:(id)collections;
@end

@implementation PXUpdateUtilitiesOrderAction

- (PXFastEnumeration)orderedCollections
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setOrderedCollections:(id)collections
{
  v5 = OBJC_IVAR___PXUpdateUtilitiesOrderAction_orderedCollections;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = collections;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)library orderedCollections:(id)collections
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateUtilitiesOrderAction_undoOrderedUtilityTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateUtilitiesOrderAction_redoOrderedUtilityTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateUtilitiesOrderAction_orderedCollections) = collections;
  v6.receiver = self;
  v6.super_class = PXUpdateUtilitiesOrderAction;
  swift_unknownObjectRetain();
  return [(PXPhotosAction *)&v6 initWithPhotoLibrary:library];
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A42AB81C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PXUpdateUtilitiesOrderAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end