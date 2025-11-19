@interface PXEditorialSectionBodyLayout
- (CGRect)sectionRect;
@end

@implementation PXEditorialSectionBodyLayout

- (CGRect)sectionRect
{
  if ([(PXEditorialSectionBodyLayout *)self disableClipping])
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXEditorialSectionBodyLayout;
    [(PXDayAssetsSectionBodyLayout *)&v7 sectionRect];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end