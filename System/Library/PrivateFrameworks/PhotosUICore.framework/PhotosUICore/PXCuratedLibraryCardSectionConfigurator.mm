@interface PXCuratedLibraryCardSectionConfigurator
- (PXCuratedLibraryCardSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec;
- (UIEdgeInsets)containerInsets;
- (id)createCardSpecWithExtendedTraitCollection:(id)collection;
- (void)configureAssetSectionLayout:(id)layout;
@end

@implementation PXCuratedLibraryCardSectionConfigurator

- (void)configureAssetSectionLayout:(id)layout
{
  layoutCopy = layout;
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  headerLayout = [layoutCopy headerLayout];
  v7 = [(PXCuratedLibraryAssetsSectionConfigurator *)self updatedHeaderLayout:headerLayout withHeaderStyle:2 forAssetSectionLayout:layoutCopy];

  bodyContentLayout = [layoutCopy bodyContentLayout];
  objc_opt_class();
  v9 = bodyContentLayout;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_alloc_init(PXCuratedLibraryCardSectionBodyLayout);

    [(PXCuratedLibraryCardSectionBodyLayout *)v9 setContentSource:v9];
  }

  section = [layoutCopy section];
  selectionSnapshot = [layoutCopy selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  dataSource = [selectionSnapshot dataSource];
  identifier = [dataSource identifier];
  section2 = [layoutCopy section];
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v41 = vnegq_f64(v13);
  -[PXCuratedLibraryCardSectionBodyLayout setIsSelected:](v9, "setIsSelected:", [selectedIndexPaths containsIndexPath:&identifier]);

  cardSpec = [(PXCuratedLibraryCardSectionConfigurator *)self cardSpec];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setSpec:cardSpec];

  -[PXCuratedLibraryCardSectionBodyLayout setIsSkimming:](v9, "setIsSkimming:", [layoutCopy isSkimming]);
  skimmingIndexPaths = [layoutCopy skimmingIndexPaths];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setSkimmingIndexPaths:skimmingIndexPaths];

  -[PXCuratedLibraryCardSectionBodyLayout setMaxSkimmingIndex:](v9, "setMaxSkimmingIndex:", [layoutCopy maxSkimmingIndex]);
  -[PXCuratedLibraryCardSectionBodyLayout setCurrentSkimmingIndex:](v9, "setCurrentSkimmingIndex:", [layoutCopy currentSkimmingIndex]);
  if ([layoutCopy showsSkimmingInteraction])
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

  [layoutCopy setPadding:{v23, v22}];
  if ([layoutCopy showsSkimmingSlideshow] && (objc_msgSend(layoutCopy, "showsSkimmingInteraction") & 1) == 0)
  {
    dataSource2 = [(PXCuratedLibraryCardSectionBodyLayout *)v9 dataSource];
    identifier2 = [dataSource2 identifier];
    section3 = [(PXCuratedLibraryCardSectionBodyLayout *)v9 section];
    identifier = identifier2;
    section2 = section3;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v34 = vnegq_f64(v26);
    v41 = v34;
    dataSource3 = [layoutCopy dataSource];
    v37[0] = [dataSource3 identifier];
    v37[1] = [layoutCopy section];
    v38 = v34;
    v28 = [layoutCopy createCuratedLibraryLayoutSkimmingSlideshowAnimationFromSectionIndexPath:&identifier toSectionIndexPath:v37];
  }

  dataSource4 = [layoutCopy dataSource];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setDataSource:dataSource4 section:section];

  -[PXCuratedLibraryCardSectionBodyLayout setZoomLevel:](v9, "setZoomLevel:", [layoutCopy zoomLevel]);
  inlinePlaybackController = [layoutCopy inlinePlaybackController];
  [(PXCuratedLibraryCardSectionBodyLayout *)v9 setInlinePlaybackController:inlinePlaybackController];

  v31 = v9;
  [layoutCopy setMode:4];
  [layoutCopy setWantsShadow:1];
  assetLayoutGuide = [(PXCuratedLibraryCardSectionBodyLayout *)v31 assetLayoutGuide];
  [layoutCopy setHeaderLayoutGuide:assetLayoutGuide];

  assetsSectionLayoutSpec = [(PXAssetsSectionConfigurator *)self assetsSectionLayoutSpec];
  [layoutCopy setSpec:assetsSectionLayoutSpec];

  [layoutCopy setHeaderLayout:v7];
  [layoutCopy setBodyContentLayout:v31 wantsDecoration:1];
}

- (UIEdgeInsets)containerInsets
{
  cardSpec = [(PXCuratedLibraryCardSectionConfigurator *)self cardSpec];
  [cardSpec padding];
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

- (id)createCardSpecWithExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryCardSectionConfigurator.m" lineNumber:33 description:{@"Method %s is a responsibility of subclass %@", "-[PXCuratedLibraryCardSectionConfigurator createCardSpecWithExtendedTraitCollection:]", v8}];

  abort();
}

- (PXCuratedLibraryCardSectionConfigurator)initWithExtendedTraitCollection:(id)collection assetsSectionLayoutSpec:(id)spec
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryCardSectionConfigurator;
  v7 = [(PXAssetsSectionConfigurator *)&v12 initWithExtendedTraitCollection:collectionCopy assetsSectionLayoutSpec:spec];
  v8 = v7;
  if (v7)
  {
    v9 = [(PXCuratedLibraryCardSectionConfigurator *)v7 createCardSpecWithExtendedTraitCollection:collectionCopy];
    cardSpec = v8->_cardSpec;
    v8->_cardSpec = v9;
  }

  return v8;
}

@end