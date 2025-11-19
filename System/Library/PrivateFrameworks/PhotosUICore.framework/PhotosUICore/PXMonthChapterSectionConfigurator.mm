@interface PXMonthChapterSectionConfigurator
- (PXMonthChapterSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4;
- (id)updatedHeaderLayout:(id)a3 withHeaderStyle:(int64_t)a4 forAssetSectionLayout:(id)a5;
- (void)configureAssetSectionLayout:(id)a3;
@end

@implementation PXMonthChapterSectionConfigurator

- (id)updatedHeaderLayout:(id)a3 withHeaderStyle:(int64_t)a4 forAssetSectionLayout:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v7;
  objc_opt_class();
  v10 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_alloc_init(PXCuratedLibraryChapterHeaderLayout);
  }

  v11 = [v8 assetCollectionReference];
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setAssetCollectionReference:v11];

  if (v8)
  {
    [v8 sectionIndexPath];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v15[0] = v16;
  v15[1] = v17;
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setSectionIndexPath:v15];
  v12 = [(PXMonthChapterSectionConfigurator *)self cardBodySpec];
  [v12 padding];
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setPadding:?];

  v13 = [(PXMonthChapterSectionConfigurator *)self chapterHeaderSpec];
  [(PXCuratedLibraryChapterHeaderLayout *)v10 setSpec:v13];

  return v10;
}

- (void)configureAssetSectionLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 headerLayout];
  v7 = [(PXMonthChapterSectionConfigurator *)self updatedHeaderLayout:v5 withHeaderStyle:2 forAssetSectionLayout:v4];

  [v4 setPadding:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  [v4 setMode:0];
  [v4 setWantsShadow:0];
  [v4 setHeaderLayoutGuide:0];
  v6 = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  [v4 setSpec:v6];

  [v4 setHeaderLayout:v7];
  [v4 setBodyContentLayout:0 wantsDecoration:0];
}

- (PXMonthChapterSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PXMonthChapterSectionConfigurator;
  v7 = [(PXAssetsSectionConfigurator *)&v13 initWithExtendedTraitCollection:v6 assetsSectionLayoutSpec:a4];
  if (v7)
  {
    v8 = [[PXCuratedLibraryChapterHeaderLayoutSpec alloc] initWithExtendedTraitCollection:v6];
    chapterHeaderSpec = v7->_chapterHeaderSpec;
    v7->_chapterHeaderSpec = v8;

    v10 = [[PXMonthCardSectionBodyLayoutSpec alloc] initWithExtendedTraitCollection:v6];
    cardBodySpec = v7->_cardBodySpec;
    v7->_cardBodySpec = v10;
  }

  return v7;
}

@end