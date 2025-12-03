@interface PXMonthChapterSectionConfigurator
- (PXMonthChapterSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec;
- (id)updatedHeaderLayout:(id)layout withHeaderStyle:(int64_t)style forAssetSectionLayout:(id)sectionLayout;
- (void)configureAssetSectionLayout:(id)layout;
@end

@implementation PXMonthChapterSectionConfigurator

- (id)updatedHeaderLayout:(id)layout withHeaderStyle:(int64_t)style forAssetSectionLayout:(id)sectionLayout
{
  layoutCopy = layout;
  sectionLayoutCopy = sectionLayout;
  v9 = layoutCopy;
  objc_opt_class();
  v10 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_alloc_init(PXCuratedLibraryChapterHeaderLayout);
  }

  assetCollectionReference = [sectionLayoutCopy assetCollectionReference];
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setAssetCollectionReference:assetCollectionReference];

  if (sectionLayoutCopy)
  {
    [sectionLayoutCopy sectionIndexPath];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v15[0] = v16;
  v15[1] = v17;
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setSectionIndexPath:v15];
  cardBodySpec = [(PXMonthChapterSectionConfigurator *)self cardBodySpec];
  [cardBodySpec padding];
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setPadding:?];

  chapterHeaderSpec = [(PXMonthChapterSectionConfigurator *)self chapterHeaderSpec];
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setSpec:chapterHeaderSpec];

  return v10;
}

- (void)configureAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  headerLayout = [layoutCopy headerLayout];
  v7 = [(PXMonthChapterSectionConfigurator *)self updatedHeaderLayout:headerLayout withHeaderStyle:2 forAssetSectionLayout:layoutCopy];

  [layoutCopy setPadding:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  [layoutCopy setMode:0];
  [layoutCopy setWantsShadow:0];
  [layoutCopy setHeaderLayoutGuide:0];
  assetsSectionLayoutSpec = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  [layoutCopy setSpec:assetsSectionLayoutSpec];

  [layoutCopy setHeaderLayout:v7];
  [layoutCopy setBodyContentLayout:0 wantsDecoration:0];
}

- (PXMonthChapterSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec
{
  collectionCopy = collection;
  v13.receiver = self;
  v13.super_class = PXMonthChapterSectionConfigurator;
  v7 = [(PXAssetsSectionConfigurator *)&v13 initWithExtendedTraitCollection:collectionCopy assetsSectionLayoutSpec:spec];
  if (v7)
  {
    v8 = [[PXCuratedLibraryChapterHeaderLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy];
    chapterHeaderSpec = v7->_chapterHeaderSpec;
    v7->_chapterHeaderSpec = v8;

    v10 = [[PXMonthCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:collectionCopy];
    cardBodySpec = v7->_cardBodySpec;
    v7->_cardBodySpec = v10;
  }

  return v7;
}

@end