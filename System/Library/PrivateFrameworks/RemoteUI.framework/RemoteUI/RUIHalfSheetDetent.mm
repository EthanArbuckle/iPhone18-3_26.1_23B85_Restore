@interface RUIHalfSheetDetent
+ (BOOL)shouldUsePadHeightForTraitCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (RUIHalfSheetDetent)init;
@end

@implementation RUIHalfSheetDetent

- (RUIHalfSheetDetent)init
{
  v3 = [(_UISheetDetent *)RUIHalfSheetDetent _detentWithContainerViewBlock:&__block_literal_global_4];

  return v3;
}

double __26__RUIHalfSheetDetent_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v4 = [RUIHalfSheetDetent shouldUsePadHeightForTraitCollection:v3];

  if (v4)
  {
    v5 = 648.0;
  }

  else
  {
    [v2 safeAreaInsets];
    v5 = 500.0 - v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)shouldUsePadHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy horizontalSizeClass] == 2 && objc_msgSend(collectionCopy, "userInterfaceIdiom") == 1;

  return v4;
}

@end