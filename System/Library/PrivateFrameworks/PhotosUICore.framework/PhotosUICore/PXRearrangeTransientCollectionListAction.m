@interface PXRearrangeTransientCollectionListAction
+ (BOOL)canPerformOnCollection:(id)a3;
- (PHObject)targetObject;
- (PXFastEnumeration)movedObjects;
- (PXRearrangeTransientCollectionListAction)initWithCollectionList:(id)a3 movedObjects:(id)a4 targetObject:(id)a5;
- (PXRearrangeTransientCollectionListAction)initWithPhotoLibrary:(id)a3;
- (void)performAction:(id)a3;
- (void)setMovedObjects:(id)a3;
- (void)setTargetObject:(id)a3;
@end

@implementation PXRearrangeTransientCollectionListAction

- (PXFastEnumeration)movedObjects
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMovedObjects:(id)a3
{
  v5 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_movedObjects;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PHObject)targetObject
{
  v3 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_targetObject;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTargetObject:(id)a3
{
  v5 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_targetObject;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
}

+ (BOOL)canPerformOnCollection:(id)a3
{
  v3 = a3;
  if ([v3 px_isUtilitiesFolder])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 px_isMediaTypesFolder];
  }

  return v4;
}

- (PXRearrangeTransientCollectionListAction)initWithCollectionList:(id)a3 movedObjects:(id)a4 targetObject:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  return PXRearrangeTransientCollectionListAction.init(collectionList:movedObjects:targetObject:)(v7, a4, a5);
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A4A2F494(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (PXRearrangeTransientCollectionListAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end