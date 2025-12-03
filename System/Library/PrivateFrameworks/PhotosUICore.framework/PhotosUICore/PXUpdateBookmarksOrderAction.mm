@interface PXUpdateBookmarksOrderAction
- (PXFastEnumeration)orderedCollections;
- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)library;
- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)library orderedCollections:(id)collections;
- (void)performAction:(id)action;
- (void)setOrderedCollections:(id)collections;
@end

@implementation PXUpdateBookmarksOrderAction

- (PXFastEnumeration)orderedCollections
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setOrderedCollections:(id)collections
{
  v5 = OBJC_IVAR___PXUpdateBookmarksOrderAction_orderedCollections;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = collections;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)library orderedCollections:(id)collections
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateBookmarksOrderAction_undoOrderedBookmarks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateBookmarksOrderAction_redoOrderedBookmarks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateBookmarksOrderAction_orderedCollections) = collections;
  v6.receiver = self;
  v6.super_class = PXUpdateBookmarksOrderAction;
  swift_unknownObjectRetain();
  return [(PXPhotosAction *)&v6 initWithPhotoLibrary:library];
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  sub_1A43223D4(self);
}

- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end