@interface PXUpdateBookmarksOrderAction
- (PXFastEnumeration)orderedCollections;
- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)a3;
- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)a3 orderedCollections:(id)a4;
- (void)performAction:(id)a3;
- (void)setOrderedCollections:(id)a3;
@end

@implementation PXUpdateBookmarksOrderAction

- (PXFastEnumeration)orderedCollections
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setOrderedCollections:(id)a3
{
  v5 = OBJC_IVAR___PXUpdateBookmarksOrderAction_orderedCollections;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)a3 orderedCollections:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateBookmarksOrderAction_undoOrderedBookmarks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateBookmarksOrderAction_redoOrderedBookmarks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXUpdateBookmarksOrderAction_orderedCollections) = a4;
  v6.receiver = self;
  v6.super_class = PXUpdateBookmarksOrderAction;
  swift_unknownObjectRetain();
  return [(PXPhotosAction *)&v6 initWithPhotoLibrary:a3];
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  sub_1A43223D4(self);
}

- (PXUpdateBookmarksOrderAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end