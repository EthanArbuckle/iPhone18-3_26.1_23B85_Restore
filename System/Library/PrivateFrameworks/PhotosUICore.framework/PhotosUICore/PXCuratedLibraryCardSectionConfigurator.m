@interface PXCuratedLibraryCardSectionConfigurator
- (PXCuratedLibraryCardSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4;
- (UIEdgeInsets)containerInsets;
- (id)createCardSpecWithExtendedTraitCollection:(id)a3;
- (void)configureAssetSectionLayout:(id)a3;
@end

@implementation PXCuratedLibraryCardSectionConfigurator

- (void)configureAssetSectionLayout:(id)a3
{
  v4 = a3;
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  v6 = [v4 headerLayout];
  v7 = [(PXCuratedLibraryAssetsSectionConfigurator *)self updatedHeaderLayout:v6 withHeaderStyle:2 forAssetSectionLayout:v4];

  v8 = [v4 bodyContentLayout];
  objc_opt_class();
  v9 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_alloc_init(PXCuratedLibraryCardSectionBodyLayout);

    [(PXCuratedLibraryCardSectionBodyLayout *)v9 setContentSource:v9];
  }

  v36 = [v4 section];
  v10 = [v4 selectionSnapshot];
  v11 = [v10 selectedIndexPaths];
  v12 = [v10 dataSource];
  v39 = [v12 identifier];
  v40 = [v4 section];
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v41 = vnegq_f64(v13);
  -[PXCuratedLibraryCardSectionBodyLayout setIsSelected:](v9, "setIsSelected:", [v11 containsIndexPath:&v39]);

  v14 = [(PXCuratedLibraryCardSectionConfigurator *)self cardSpec];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setSpec:v14];

  -[PXCuratedLibraryCardSectionBodyLayout setIsSkimming:](v9, "setIsSkimming:", [v4 isSkimming]);
  v15 = [v4 skimmingIndexPaths];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setSkimmingIndexPaths:v15];

  -[PXCuratedLibraryCardSectionBodyLayout setMaxSkimmingIndex:](v9, "setMaxSkimmingIndex:", [v4 maxSkimmingIndex]);
  -[PXCuratedLibraryCardSectionBodyLayout setCurrentSkimmingIndex:](v9, "setCurrentSkimmingIndex:", [v4 currentSkimmingIndex]);
  if ([v4 showsSkimmingInteraction])
  {
    [(PXCuratedLibraryCardSectionBodyLayout *)v9 assetFrame];
    v17 = v16;
    v19 = v18;
    [v5 skimmingScale];
    v21 = (1.0 - v20) * 0.5;
    v22 = v17 * v21;
    v23 = v19 * v21;
  }

  else
  {
    v23 = *off_1E7721FA8;
    v22 = *(off_1E7721FA8 + 1);
  }

  [v4 setPadding:{v23, v22}];
  if ([v4 showsSkimmingSlideshow] && (objc_msgSend(v4, "showsSkimmingInteraction") & 1) == 0)
  {
    v35 = [(PXCuratedLibraryCardSectionBodyLayout *)v9 dataSource];
    v24 = [v35 identifier];
    v25 = [(PXCuratedLibraryCardSectionBodyLayout *)v9 section];
    v39 = v24;
    v40 = v25;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v34 = vnegq_f64(v26);
    v41 = v34;
    v27 = [v4 dataSource];
    v37[0] = [v27 identifier];
    v37[1] = [v4 section];
    v38 = v34;
    v28 = [v4 createCuratedLibraryLayoutSkimmingSlideshowAnimationFromSectionIndexPath:&v39 toSectionIndexPath:v37];
  }

  v29 = [v4 dataSource];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setDataSource:v29 section:v36];

  -[PXCuratedLibraryCardSectionBodyLayout setZoomLevel:](v9, "setZoomLevel:", [v4 zoomLevel]);
  v30 = [v4 inlinePlaybackController];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setInlinePlaybackController:v30];

  v31 = v9;
  [v4 setMode:4];
  [v4 setWantsShadow:1];
  v32 = [(PXCuratedLibraryCardSectionBodyLayout *)v31 assetLayoutGuide];
  [v4 setHeaderLayoutGuide:v32];

  v33 = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  [v4 setSpec:v33];

  [v4 setHeaderLayout:v7];
  [v4 setBodyContentLayout:v31 wantsDecoration:1];
}

- (UIEdgeInsets)containerInsets
{
  v2 = [(PXCuratedLibraryCardSectionConfigurator *)self cardSpec];
  [v2 padding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)createCardSpecWithExtendedTraitCollection:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryCardSectionConfigurator.m" lineNumber:33 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryCardSectionConfigurator createCardSpecWithExtendedTraitCollection:]", v8}];

  abort();
}

- (PXCuratedLibraryCardSectionConfigurator)initWithExtendedTraitCollection:(id)a3 assetsSectionLayoutSpec:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryCardSectionConfigurator;
  v7 = [(PXAssetsSectionConfigurator *)&v12 initWithExtendedTraitCollection:v6 assetsSectionLayoutSpec:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(PXCuratedLibraryCardSectionConfigurator *)v7 createCardSpecWithExtendedTraitCollection:v6];
    cardSpec = v8->_cardSpec;
    v8->_cardSpec = v9;
  }

  return v8;
}

@end