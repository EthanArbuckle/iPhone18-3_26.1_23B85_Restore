@interface PXAllPhotosFloatingHeaderSpec
- (PXAllPhotosFloatingHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant;
@end

@implementation PXAllPhotosFloatingHeaderSpec

- (PXAllPhotosFloatingHeaderSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options variant:(int64_t)variant
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = PXAllPhotosFloatingHeaderSpec;
  if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)&v10 initWithExtendedTraitCollection:collectionCopy options:options variant:variant])
  {
    [collectionCopy contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  return 0;
}

uint64_t __81__PXAllPhotosFloatingHeaderSpec_initWithExtendedTraitCollection_options_variant___block_invoke(uint64_t a1)
{
  if (MEMORY[0x1A590D320]())
  {
    return 2;
  }

  else
  {
    return [*(a1 + 32) userInterfaceIdiom] == 4;
  }
}

@end