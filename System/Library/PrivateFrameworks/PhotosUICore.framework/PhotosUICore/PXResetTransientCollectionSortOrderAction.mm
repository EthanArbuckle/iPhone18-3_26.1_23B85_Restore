@interface PXResetTransientCollectionSortOrderAction
+ (BOOL)canPerformOnCollection:(id)collection;
- (PXResetTransientCollectionSortOrderAction)initWithCollection:(id)collection;
- (PXResetTransientCollectionSortOrderAction)initWithPhotoLibrary:(id)library;
@end

@implementation PXResetTransientCollectionSortOrderAction

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

- (PXResetTransientCollectionSortOrderAction)initWithCollection:(id)collection
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_collection) = collection;
  collectionCopy = collection;
  result = [collectionCopy photoLibrary];
  if (result)
  {
    v6 = result;
    v8.receiver = self;
    v8.super_class = PXResetTransientCollectionSortOrderAction;
    v7 = [(PXPhotosAction *)&v8 initWithPhotoLibrary:result];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PXResetTransientCollectionSortOrderAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end