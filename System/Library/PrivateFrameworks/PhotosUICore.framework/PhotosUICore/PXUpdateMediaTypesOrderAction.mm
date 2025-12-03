@interface PXUpdateMediaTypesOrderAction
- (PXFastEnumeration)orderedCollections;
- (PXUpdateMediaTypesOrderAction)initWithPhotoLibrary:(id)library;
- (PXUpdateMediaTypesOrderAction)initWithPhotoLibrary:(id)library orderedCollections:(id)collections;
- (void)performAction:(id)action;
- (void)setOrderedCollections:(id)collections;
@end

@implementation PXUpdateMediaTypesOrderAction

- (PXFastEnumeration)orderedCollections
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setOrderedCollections:(id)collections
{
  v5 = OBJC_IVAR___PXUpdateMediaTypesOrderAction_orderedCollections;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = collections;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PXUpdateMediaTypesOrderAction)initWithPhotoLibrary:(id)library orderedCollections:(id)collections
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateMediaTypesOrderAction_undoOrderedMediaTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateMediaTypesOrderAction_redoOrderedMediaTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateMediaTypesOrderAction_orderedCollections) = collections;
  v6.receiver = self;
  v6.super_class = PXUpdateMediaTypesOrderAction;
  swift_unknownObjectRetain();
  return [(PXPhotosAction *)&v6 initWithPhotoLibrary:library];
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A3DBAC50(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PXUpdateMediaTypesOrderAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end