@interface PXResetTransientCollectionSortOrderAction
+ (BOOL)canPerformOnCollection:(id)a3;
- (PXResetTransientCollectionSortOrderAction)initWithCollection:(id)a3;
- (PXResetTransientCollectionSortOrderAction)initWithPhotoLibrary:(id)a3;
@end

@implementation PXResetTransientCollectionSortOrderAction

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

- (PXResetTransientCollectionSortOrderAction)initWithCollection:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedMediaTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_undoOrderedUtilityTypes) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___PXResetTransientCollectionSortOrderAction_collection) = a3;
  v4 = a3;
  result = [v4 photoLibrary];
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

- (PXResetTransientCollectionSortOrderAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end