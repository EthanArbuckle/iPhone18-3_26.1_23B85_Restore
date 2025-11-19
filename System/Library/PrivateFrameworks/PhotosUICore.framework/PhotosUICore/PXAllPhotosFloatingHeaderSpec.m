@interface PXAllPhotosFloatingHeaderSpec
- (PXAllPhotosFloatingHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5;
@end

@implementation PXAllPhotosFloatingHeaderSpec

- (PXAllPhotosFloatingHeaderSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 variant:(int64_t)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = PXAllPhotosFloatingHeaderSpec;
  if ([(PXCuratedLibrarySectionHeaderLayoutSpec *)&v10 initWithExtendedTraitCollection:v8 options:a4 variant:a5])
  {
    [v8 contentSizeCategory];
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