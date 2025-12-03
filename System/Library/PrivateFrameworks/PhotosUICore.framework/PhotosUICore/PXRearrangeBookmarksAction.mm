@interface PXRearrangeBookmarksAction
- (PXFastEnumeration)movedObjects;
- (PXRearrangeBookmarksAction)initWithCollectionList:(id)list movedObjects:(id)objects targetObject:(id)object;
- (PXRearrangeBookmarksAction)initWithPhotoLibrary:(id)library;
- (void)performAction:(id)action;
@end

@implementation PXRearrangeBookmarksAction

- (PXFastEnumeration)movedObjects
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (PXRearrangeBookmarksAction)initWithCollectionList:(id)list movedObjects:(id)objects targetObject:(id)object
{
  listCopy = list;
  swift_unknownObjectRetain();
  objectCopy = object;
  return PXRearrangeBookmarksAction.init(collectionList:movedObjects:targetObject:)(listCopy, objects, object);
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  sub_1A3E7A614(self);
}

- (PXRearrangeBookmarksAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end