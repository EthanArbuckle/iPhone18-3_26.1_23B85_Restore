@interface PXRearrangeBookmarksAction
- (PXFastEnumeration)movedObjects;
- (PXRearrangeBookmarksAction)initWithCollectionList:(id)a3 movedObjects:(id)a4 targetObject:(id)a5;
- (PXRearrangeBookmarksAction)initWithPhotoLibrary:(id)a3;
- (void)performAction:(id)a3;
@end

@implementation PXRearrangeBookmarksAction

- (PXFastEnumeration)movedObjects
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (PXRearrangeBookmarksAction)initWithCollectionList:(id)a3 movedObjects:(id)a4 targetObject:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  return PXRearrangeBookmarksAction.init(collectionList:movedObjects:targetObject:)(v7, a4, a5);
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  sub_1A3E7A614(self);
}

- (PXRearrangeBookmarksAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end