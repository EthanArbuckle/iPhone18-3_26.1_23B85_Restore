@interface PXRearrangeTransientCollectionListAction
+ (BOOL)canPerformOnCollection:(id)collection;
- (PHObject)targetObject;
- (PXFastEnumeration)movedObjects;
- (PXRearrangeTransientCollectionListAction)initWithCollectionList:(id)list movedObjects:(id)objects targetObject:(id)object;
- (PXRearrangeTransientCollectionListAction)initWithPhotoLibrary:(id)library;
- (void)performAction:(id)action;
- (void)setMovedObjects:(id)objects;
- (void)setTargetObject:(id)object;
@end

@implementation PXRearrangeTransientCollectionListAction

- (PXFastEnumeration)movedObjects
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMovedObjects:(id)objects
{
  v5 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_movedObjects;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = objects;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PHObject)targetObject
{
  v3 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_targetObject;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTargetObject:(id)object
{
  v5 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_targetObject;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = object;
  objectCopy = object;
}

+ (BOOL)canPerformOnCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isUtilitiesFolder])
  {
    px_isMediaTypesFolder = 1;
  }

  else
  {
    px_isMediaTypesFolder = [collectionCopy px_isMediaTypesFolder];
  }

  return px_isMediaTypesFolder;
}

- (PXRearrangeTransientCollectionListAction)initWithCollectionList:(id)list movedObjects:(id)objects targetObject:(id)object
{
  listCopy = list;
  swift_unknownObjectRetain();
  objectCopy = object;
  return PXRearrangeTransientCollectionListAction.init(collectionList:movedObjects:targetObject:)(listCopy, objects, object);
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A4A2F494(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PXRearrangeTransientCollectionListAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end