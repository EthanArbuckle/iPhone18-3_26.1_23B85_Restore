@interface PXCMMEngineDrivenLayout
+ (id)_additionalTileKinds;
- (BOOL)_getAdditionalTileIdentifierForEditorial:(PXTileIdentifier *)editorial group:(unint64_t *)group layoutGeometryKind:(int64_t)kind indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getAdditionalTileIdentifierForGrid:(PXTileIdentifier *)grid group:(unint64_t *)group layoutGeometryKind:(int64_t)kind indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getAssetStatusTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)_getDuplicateTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)getAdditionalAccessoryTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileKind:(unint64_t)kind contentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path;
- (BOOL)getAdditionalTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group layoutGeometryKind:(unint64_t)kind indexPath:(PXSimpleIndexPath *)path;
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (BOOL)headerViewIsVisible;
- (CGRect)_bannerFrame;
- (CGRect)_headerFrame;
- (CGRect)_placeholderFrame;
- (CGRect)_sectionHeaderTileFrame;
- (CGRect)_statusFooterFrame;
- (CGRect)contentBounds;
- (CGSize)_preferredSelectionBadgeSize;
- (PXCMMEngineDrivenLayout)initWithDataSource:(id)source;
- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)snapshot;
- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)snapshot configuration:(id)configuration;
- (PXTileIdentifier)_identifierForUniqueTileWithKind:(SEL)kind;
- (PXTileIdentifier)_placeholderTileIdentifier;
- (UIEdgeInsets)reviewSafeAreaInsets;
- (double)zPositionOffsetForKind:(unint64_t)kind;
- (unint64_t)_editorialGeneratorGeometryKindForTileKind:(unint64_t)kind;
- (unint64_t)_generatorGeometryKindForTileKind:(unint64_t)kind;
- (unint64_t)_gridGeneratorGeometryKindForTileKind:(unint64_t)kind;
- (void)_invalidateAssetStatusBadgeTiles;
- (void)_invalidateBanner;
- (void)_invalidateHeader;
- (void)_invalidateSectionHeaders;
- (void)_invalidateStatusFooter;
- (void)adjustGeometry:(PXTileGeometry *)geometry forAdditionalTileWithKind:(unint64_t)kind indexPath:(PXSimpleIndexPath *)path;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)setFooterBottomInset:(double)inset;
- (void)setHasFloatingBanner:(BOOL)banner;
- (void)setHasFloatingSectionHeaders:(BOOL)headers;
- (void)setHeaderFooterSideInset:(double)inset;
- (void)setHeaderTopInset:(double)inset;
- (void)setPlaceholderMode:(int64_t)mode;
- (void)setVisibleOrigin:(CGPoint)origin;
@end

@implementation PXCMMEngineDrivenLayout

- (UIEdgeInsets)reviewSafeAreaInsets
{
  top = self->_reviewSafeAreaInsets.top;
  left = self->_reviewSafeAreaInsets.left;
  bottom = self->_reviewSafeAreaInsets.bottom;
  right = self->_reviewSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)adjustGeometry:(PXTileGeometry *)geometry forAdditionalTileWithKind:(unint64_t)kind indexPath:(PXSimpleIndexPath *)path
{
  layoutType = [(PXCMMEngineDrivenLayout *)self layoutType];
  if ((layoutType - 2) >= 3)
  {
    if (layoutType == 1)
    {
      if (kind != 1)
      {
        return;
      }

      goto LABEL_5;
    }

    if (layoutType)
    {
      return;
    }
  }

  if (kind != 2)
  {
    return;
  }

LABEL_5:
  y = geometry->frame.origin.y;
  if ([(PXCMMEngineDrivenLayout *)self hasFloatingSectionHeaders])
  {
    [(PXTilingLayout *)self contentInset];
    v12 = v11;
    [(PXTilingLayout *)self visibleOrigin];
    if (v12 + v13 > y)
    {
      geometry->zPosition = 40.0;
      [(PXTilingLayout *)self contentInset];
      v15 = v14;
      [(PXTilingLayout *)self visibleOrigin];
      v17 = v15 + v16 - y;
      geometry->center.y = geometry->center.y + v17;
      geometry->frame.origin.y = geometry->frame.origin.y + v17;
      v18 = [MEMORY[0x1E696AC88] px_indexPathForItem:0 inSection:path->section + 1 withKind:kind];
      layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
      v20 = layoutSnapshot;
      if (layoutSnapshot)
      {
        [layoutSnapshot geometryForItem:v18];
      }

      [(PXTilingLayout *)self coordinateSpaceIdentifier];
      PXRectWithCenterAndSize();
    }
  }
}

- (BOOL)_getAdditionalTileIdentifierForEditorial:(PXTileIdentifier *)editorial group:(unint64_t *)group layoutGeometryKind:(int64_t)kind indexPath:(PXSimpleIndexPath *)path
{
  if (kind != 1)
  {
    PXAssertGetLog();
  }

  v6 = *&path->dataSourceIdentifier;
  v7 = *&path->item;
  *&editorial->length = xmmword_1A5380DB0;
  *&editorial->index[1] = v6;
  *&editorial->index[3] = v7;
  *&editorial->index[5] = 0u;
  *&editorial->index[7] = 0u;
  editorial->index[9] = 0;
  *group = 42;
  return 1;
}

- (BOOL)_getAdditionalTileIdentifierForGrid:(PXTileIdentifier *)grid group:(unint64_t *)group layoutGeometryKind:(int64_t)kind indexPath:(PXSimpleIndexPath *)path
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 8439962;
  if (kind == 1)
  {
    v7 = 0;
  }

  else
  {
    if (kind != 2)
    {
      PXAssertGetLog();
    }

    v6 = 8439963;
    v7 = 42;
  }

  v8 = *&path->dataSourceIdentifier;
  v9 = *&path->item;
  grid->length = 5;
  grid->index[0] = v6;
  *&grid->index[1] = v8;
  *&grid->index[3] = v9;
  *&grid->index[5] = 0u;
  *&grid->index[7] = 0u;
  grid->index[9] = 0;
  *group = v7;
  return 1;
}

- (BOOL)getAdditionalTileIdentifier:(PXTileIdentifier *)identifier group:(unint64_t *)group layoutGeometryKind:(unint64_t)kind indexPath:(PXSimpleIndexPath *)path
{
  layoutType = [(PXCMMEngineDrivenLayout *)self layoutType];
  if ((layoutType - 2) < 3 || layoutType == 0)
  {
    v13 = *&path->item;
    v16 = *&path->dataSourceIdentifier;
    v17 = v13;
    return [(PXCMMEngineDrivenLayout *)self _getAdditionalTileIdentifierForGrid:identifier group:group layoutGeometryKind:kind indexPath:&v16];
  }

  else if (layoutType == 1)
  {
    v15 = *&path->item;
    v16 = *&path->dataSourceIdentifier;
    v17 = v15;
    return [(PXCMMEngineDrivenLayout *)self _getAdditionalTileIdentifierForEditorial:identifier group:group layoutGeometryKind:kind indexPath:&v16];
  }

  else
  {
    return 0;
  }
}

- (double)zPositionOffsetForKind:(unint64_t)kind
{
  if (kind == 8439952)
  {
    return 35.0;
  }

  if (kind == 8439964)
  {
    return 30.0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PXCMMEngineDrivenLayout;
  [(PXAssetsTilingLayout *)&v6 zPositionOffsetForKind:?];
  return result;
}

- (BOOL)_getAssetStatusTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  if (tileGeometry->hidden)
  {
    return 0;
  }

  v25 = v13;
  v26 = v12;
  v27 = v11;
  v28 = v10;
  v29 = v8;
  v30 = v9;
  delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
  v20 = *&path->item;
  v24[0] = *&path->dataSourceIdentifier;
  v24[1] = v20;
  v21 = [delegate engineDrivenLayout:self shouldShowStatusBadgeAtIndexPath:v24];

  if (v21)
  {
    v22 = *&path->dataSourceIdentifier;
    v23 = *&path->item;
    *&identifier->length = xmmword_1A5380DC0;
    *&identifier->index[1] = v22;
    *&identifier->index[3] = v23;
    *&identifier->index[5] = 0u;
    *&identifier->index[7] = 0u;
    identifier->index[9] = 0;
    [(PXCMMEngineDrivenLayout *)self _preferredSelectionBadgeSize];
    CGRectGetMaxX(tileGeometry->frame);
    CGRectGetMaxY(tileGeometry->frame);
    [(PXTilingLayout *)self coordinateSpaceIdentifier];
    PXRectGetCenter();
  }

  return 0;
}

- (BOOL)_getDuplicateTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forContentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  if (tileGeometry->hidden)
  {
    return 0;
  }

  v37 = v11;
  v38 = v10;
  v39 = v8;
  v40 = v9;
  delegate = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
  v21 = *&path->item;
  v36[0] = *&path->dataSourceIdentifier;
  v36[1] = v21;
  v22 = [delegate engineDrivenLayout:self shouldShowDimmingOverlayAtIndexPath:v36];

  if (!v22)
  {
    return 0;
  }

  v23 = *&path->dataSourceIdentifier;
  v24 = *&path->item;
  *&identifier->length = xmmword_1A5380DD0;
  *&identifier->index[1] = v23;
  *&identifier->index[3] = v24;
  *&identifier->index[5] = 0u;
  *&identifier->index[7] = 0u;
  identifier->index[9] = 0;
  origin = tileGeometry->frame.origin;
  size = tileGeometry->frame.size;
  v27 = tileGeometry->size;
  geometry->center = tileGeometry->center;
  geometry->size = v27;
  geometry->frame.origin = origin;
  geometry->frame.size = size;
  v28 = *&tileGeometry->transform.a;
  v29 = *&tileGeometry->transform.c;
  v30 = *&tileGeometry->alpha;
  *&geometry->transform.tx = *&tileGeometry->transform.tx;
  *&geometry->alpha = v30;
  *&geometry->transform.a = v28;
  *&geometry->transform.c = v29;
  v31 = *&tileGeometry->hidden;
  v32 = *&tileGeometry->contentSize.height;
  v33 = *&tileGeometry->contentsRect.size.height;
  *&geometry->contentsRect.origin.y = *&tileGeometry->contentsRect.origin.y;
  *&geometry->contentsRect.size.height = v33;
  *&geometry->hidden = v31;
  *&geometry->contentSize.height = v32;
  zPosition = tileGeometry->zPosition;
  [(PXCMMEngineDrivenLayout *)self zPositionOffsetForKind:8439952];
  geometry->zPosition = zPosition + v35;
  if (group)
  {
    *group = 0;
  }

  if (data)
  {
    *data = 0;
  }

  return 1;
}

- (BOOL)getAdditionalAccessoryTileIdentifier:(PXTileIdentifier *)identifier outGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileKind:(unint64_t)kind contentTileGeometry:(const PXTileGeometry *)tileGeometry indexPath:(PXSimpleIndexPath *)path
{
  if (kind == 8439964)
  {
    v11 = *&path->item;
    v12 = *&path->dataSourceIdentifier;
    v13 = v11;
    return [(PXCMMEngineDrivenLayout *)self _getAssetStatusTileIdentifier:identifier outGeometry:geometry group:group userData:data forContentTileGeometry:tileGeometry indexPath:&v12];
  }

  else if (kind == 8439952)
  {
    v9 = *&path->item;
    v12 = *&path->dataSourceIdentifier;
    v13 = v9;
    return [(PXCMMEngineDrivenLayout *)self _getDuplicateTileIdentifier:identifier outGeometry:geometry group:group userData:data forContentTileGeometry:tileGeometry indexPath:&v12];
  }

  else
  {
    return 0;
  }
}

- (CGSize)_preferredSelectionBadgeSize
{
  +[PXCMMAssetStatusBadgeView preferredSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)_editorialGeneratorGeometryKindForTileKind:(unint64_t)kind
{
  v8 = *MEMORY[0x1E69E9840];
  if (kind == 8439963)
  {
    return 1;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    kindCopy = kind;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unrecognized grid geometry tile kind: %lu", &v6, 0xCu);
  }

  return -1;
}

- (unint64_t)_gridGeneratorGeometryKindForTileKind:(unint64_t)kind
{
  v8 = *MEMORY[0x1E69E9840];
  if (kind == 8439963)
  {
    return 2;
  }

  if (kind == 8439962)
  {
    return 1;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    kindCopy = kind;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unrecognized grid geometry tile kind: %lu", &v6, 0xCu);
  }

  return -1;
}

- (unint64_t)_generatorGeometryKindForTileKind:(unint64_t)kind
{
  layoutType = [(PXCMMEngineDrivenLayout *)self layoutType];
  if ((layoutType - 2) < 3 || layoutType == 0)
  {

    return [(PXCMMEngineDrivenLayout *)self _gridGeneratorGeometryKindForTileKind:kind];
  }

  else if (layoutType == 1)
  {

    return [(PXCMMEngineDrivenLayout *)self _editorialGeneratorGeometryKindForTileKind:kind];
  }

  else
  {
    return -1;
  }
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  blockCopy = block;
  v100 = 0;
  [(PXCMMEngineDrivenLayout *)self _headerFrame];
  v105.origin.x = v13;
  v105.origin.y = v14;
  v105.size.width = v15;
  v105.size.height = v16;
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  if (!CGRectIntersectsRect(v101, v105))
  {
    goto LABEL_5;
  }

  v17 = *(off_1E7722248 + 9);
  v96 = *(off_1E7722248 + 8);
  v97 = v17;
  v18 = *(off_1E7722248 + 11);
  v98 = *(off_1E7722248 + 10);
  v99 = v18;
  v19 = *(off_1E7722248 + 5);
  v92 = *(off_1E7722248 + 4);
  v93 = v19;
  v20 = *(off_1E7722248 + 7);
  v94 = *(off_1E7722248 + 6);
  v95 = v20;
  v21 = *(off_1E7722248 + 1);
  v88 = *off_1E7722248;
  v89 = v21;
  v22 = *(off_1E7722248 + 3);
  v90 = *(off_1E7722248 + 2);
  v91 = v22;
  v86 = 0;
  v87 = 0;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  [(PXCMMEngineDrivenLayout *)self _headerTileIdentifier];
  v80 = 0;
  v64 = v83;
  v65 = v84;
  v66 = v85;
  *&v67 = v86;
  v62 = v81;
  v63 = v82;
  if ([(PXCMMEngineDrivenLayout *)self getGeometry:&v88 group:&v87 userData:&v80 forTileWithIdentifier:&v62])
  {
    v23 = blockCopy[2];
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v79 = v86;
    v74 = v81;
    v75 = v82;
    v70 = v96;
    v71 = v97;
    v72 = v98;
    v73 = v99;
    v66 = v92;
    v67 = v93;
    v68 = v94;
    v69 = v95;
    v62 = v88;
    v63 = v89;
    v64 = v90;
    v65 = v91;
    v23(blockCopy, &v74, &v62, v87, v80, &v100);
  }

  if ((v100 & 1) == 0)
  {
LABEL_5:
    [(PXCMMEngineDrivenLayout *)self _bannerFrame];
    v106.origin.x = v24;
    v106.origin.y = v25;
    v106.size.width = v26;
    v106.size.height = v27;
    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = width;
    v102.size.height = height;
    if (CGRectIntersectsRect(v102, v106))
    {
      v28 = *(off_1E7722248 + 9);
      v96 = *(off_1E7722248 + 8);
      v97 = v28;
      v29 = *(off_1E7722248 + 11);
      v98 = *(off_1E7722248 + 10);
      v99 = v29;
      v30 = *(off_1E7722248 + 5);
      v92 = *(off_1E7722248 + 4);
      v93 = v30;
      v31 = *(off_1E7722248 + 7);
      v94 = *(off_1E7722248 + 6);
      v95 = v31;
      v32 = *(off_1E7722248 + 1);
      v88 = *off_1E7722248;
      v89 = v32;
      v33 = *(off_1E7722248 + 3);
      v90 = *(off_1E7722248 + 2);
      v91 = v33;
      v86 = 0;
      v87 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      [(PXCMMEngineDrivenLayout *)self _bannerTileIdentifier];
      v61 = 0;
      v64 = v83;
      v65 = v84;
      v66 = v85;
      *&v67 = v86;
      v62 = v81;
      v63 = v82;
      if ([(PXCMMEngineDrivenLayout *)self getGeometry:&v88 group:&v87 userData:&v61 forTileWithIdentifier:&v62])
      {
        v34 = blockCopy[2];
        v76 = v83;
        v77 = v84;
        v78 = v85;
        v79 = v86;
        v74 = v81;
        v75 = v82;
        v70 = v96;
        v71 = v97;
        v72 = v98;
        v73 = v99;
        v66 = v92;
        v67 = v93;
        v68 = v94;
        v69 = v95;
        v62 = v88;
        v63 = v89;
        v64 = v90;
        v65 = v91;
        v34(blockCopy, &v74, &v62, v87, v61, &v100);
      }
    }
  }

  if ((v100 & 1) == 0)
  {
    [(PXCMMEngineDrivenLayout *)self _statusFooterFrame];
    v107.origin.x = v35;
    v107.origin.y = v36;
    v107.size.width = v37;
    v107.size.height = v38;
    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    if (CGRectIntersectsRect(v103, v107))
    {
      v39 = *(off_1E7722248 + 9);
      v96 = *(off_1E7722248 + 8);
      v97 = v39;
      v40 = *(off_1E7722248 + 11);
      v98 = *(off_1E7722248 + 10);
      v99 = v40;
      v41 = *(off_1E7722248 + 5);
      v92 = *(off_1E7722248 + 4);
      v93 = v41;
      v42 = *(off_1E7722248 + 7);
      v94 = *(off_1E7722248 + 6);
      v95 = v42;
      v43 = *(off_1E7722248 + 1);
      v88 = *off_1E7722248;
      v89 = v43;
      v44 = *(off_1E7722248 + 3);
      v90 = *(off_1E7722248 + 2);
      v91 = v44;
      v86 = 0;
      v87 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
      [(PXCMMEngineDrivenLayout *)self _statusFooterTileIdentifier];
      v60 = 0;
      v64 = v83;
      v65 = v84;
      v66 = v85;
      *&v67 = v86;
      v62 = v81;
      v63 = v82;
      if ([(PXCMMEngineDrivenLayout *)self getGeometry:&v88 group:&v87 userData:&v60 forTileWithIdentifier:&v62])
      {
        v45 = blockCopy[2];
        v76 = v83;
        v77 = v84;
        v78 = v85;
        v79 = v86;
        v74 = v81;
        v75 = v82;
        v70 = v96;
        v71 = v97;
        v72 = v98;
        v73 = v99;
        v66 = v92;
        v67 = v93;
        v68 = v94;
        v69 = v95;
        v62 = v88;
        v63 = v89;
        v64 = v90;
        v65 = v91;
        v45(blockCopy, &v74, &v62, v87, v60, &v100);
      }
    }
  }

  placeholderMode = [(PXCMMEngineDrivenLayout *)self placeholderMode];
  if ((v100 & 1) == 0)
  {
    if (placeholderMode)
    {
      [(PXCMMEngineDrivenLayout *)self _placeholderFrame];
      v108.origin.x = v47;
      v108.origin.y = v48;
      v108.size.width = v49;
      v108.size.height = v50;
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      if (CGRectIntersectsRect(v104, v108))
      {
        v51 = *(off_1E7722248 + 9);
        v96 = *(off_1E7722248 + 8);
        v97 = v51;
        v52 = *(off_1E7722248 + 11);
        v98 = *(off_1E7722248 + 10);
        v99 = v52;
        v53 = *(off_1E7722248 + 5);
        v92 = *(off_1E7722248 + 4);
        v93 = v53;
        v54 = *(off_1E7722248 + 7);
        v94 = *(off_1E7722248 + 6);
        v95 = v54;
        v55 = *(off_1E7722248 + 1);
        v88 = *off_1E7722248;
        v89 = v55;
        v56 = *(off_1E7722248 + 3);
        v90 = *(off_1E7722248 + 2);
        v91 = v56;
        v86 = 0;
        v87 = 0;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v81 = 0u;
        [(PXCMMEngineDrivenLayout *)self _placeholderTileIdentifier];
        v59 = 0;
        v64 = v83;
        v65 = v84;
        v66 = v85;
        *&v67 = v86;
        v62 = v81;
        v63 = v82;
        if ([(PXCMMEngineDrivenLayout *)self getGeometry:&v88 group:&v87 userData:&v59 forTileWithIdentifier:&v62])
        {
          v57 = blockCopy[2];
          v76 = v83;
          v77 = v84;
          v78 = v85;
          v79 = v86;
          v74 = v81;
          v75 = v82;
          v70 = v96;
          v71 = v97;
          v72 = v98;
          v73 = v99;
          v66 = v92;
          v67 = v93;
          v68 = v94;
          v69 = v95;
          v62 = v88;
          v63 = v89;
          v64 = v90;
          v65 = v91;
          v57(blockCopy, &v74, &v62, v87, v59, &v100);
        }
      }
    }
  }

  if ((v100 & 1) == 0)
  {
    v58.receiver = self;
    v58.super_class = PXCMMEngineDrivenLayout;
    [(PXEngineDrivenAssetsTilingLayout *)&v58 enumerateTilesInRect:optionsCopy withOptions:blockCopy usingBlock:x, y, width, height];
  }
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  length = identifier->length;
  v12 = *(off_1E7722248 + 9);
  v67 = *(off_1E7722248 + 8);
  v68 = v12;
  v13 = *(off_1E7722248 + 11);
  v69 = *(off_1E7722248 + 10);
  v70 = v13;
  v14 = *(off_1E7722248 + 5);
  v63 = *(off_1E7722248 + 4);
  v64 = v14;
  v15 = *(off_1E7722248 + 7);
  v65 = *(off_1E7722248 + 6);
  v66 = v15;
  v16 = *(off_1E7722248 + 1);
  v59 = *off_1E7722248;
  v60 = v16;
  v17 = *(off_1E7722248 + 3);
  v61 = *(off_1E7722248 + 2);
  v62 = v17;
  if (length - 3 > 2)
  {
    goto LABEL_3;
  }

  v18 = identifier->index[1];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_3;
  }

  v23 = identifier->index[0];
  _additionalTileKinds = [objc_opt_class() _additionalTileKinds];
  if ([_additionalTileKinds containsIndex:v23])
  {
    dataSource = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
    identifier = [dataSource identifier];

    if (v18 == identifier)
    {
      if (v23 == 8439963)
      {
        v27 = 42;
      }

      else
      {
        v27 = 0;
      }

      v28 = [(PXCMMEngineDrivenLayout *)self _generatorGeometryKindForTileKind:v23, identifier->index[3], identifier->index[4], identifier->index[1], identifier->index[2]];
      v29 = [MEMORY[0x1E696AC88] px_indexPathForItem:v46 inSection:v47 withKind:v28];
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v49 = 0u;
      layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
      v31 = layoutSnapshot;
      if (layoutSnapshot)
      {
        [layoutSnapshot geometryForItem:v29];
      }

      else
      {
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
      }

      v21 = v49 != 0x7FFFFFFFFFFFFFFFLL;
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(PXTilingLayout *)self coordinateSpaceIdentifier];
        PXRectWithCenterAndSize();
      }

      if (!geometry)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else
  {
  }

  if (v23 > 8439981)
  {
    if (v23 != 8439982)
    {
      if (v23 != 8439984)
      {
        goto LABEL_3;
      }

      dataSource2 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
      identifier2 = [dataSource2 identifier];

      if (v18 != identifier2)
      {
        goto LABEL_3;
      }

      if ([(PXCMMEngineDrivenLayout *)self placeholderMode])
      {
        [(PXCMMEngineDrivenLayout *)self _placeholderFrame];
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    dataSource3 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
    identifier3 = [dataSource3 identifier];

    if (v18 == identifier3)
    {
      if (self->_statusFooterHeight > 0.0)
      {
        [(PXCMMEngineDrivenLayout *)self _statusFooterFrame];
LABEL_30:
        [(PXTilingLayout *)self coordinateSpaceIdentifier];
        *(&v67 + 1) = 0;
        DWORD1(v67) = 0;
        PXRectGetCenter();
      }

LABEL_31:
      v27 = 0;
      v21 = 0;
      if (!geometry)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

LABEL_3:
    v48.receiver = self;
    v48.super_class = PXCMMEngineDrivenLayout;
    v19 = *&identifier->index[5];
    v51 = *&identifier->index[3];
    v52 = v19;
    v53 = *&identifier->index[7];
    *&v54 = identifier->index[9];
    v20 = *&identifier->index[1];
    v49 = *&identifier->length;
    v50 = v20;
    return [(PXEngineDrivenAssetsTilingLayout *)&v48 getGeometry:geometry group:group userData:data forTileWithIdentifier:&v49];
  }

  if (v23 == 8439980)
  {
    dataSource4 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
    identifier4 = [dataSource4 identifier];

    if (v18 == identifier4)
    {
      if (self->_headerHeight > 0.0)
      {
        [(PXCMMEngineDrivenLayout *)self _headerFrame];
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_3;
  }

  if (v23 != 8439981)
  {
    goto LABEL_3;
  }

  dataSource5 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
  identifier5 = [dataSource5 identifier];

  if (v18 != identifier5)
  {
    goto LABEL_3;
  }

  if (self->_bannerHeight > 0.0)
  {
    [(PXCMMEngineDrivenLayout *)self _bannerFrame];
    [(PXTilingLayout *)self coordinateSpaceIdentifier];
    *(&v67 + 1) = 0;
    DWORD1(v67) = 0;
    PXRectGetCenter();
  }

  v21 = 0;
  v27 = 41;
  if (!geometry)
  {
    goto LABEL_38;
  }

LABEL_37:
  v40 = v68;
  *&geometry->hidden = v67;
  *&geometry->contentSize.height = v40;
  v41 = v70;
  *&geometry->contentsRect.origin.y = v69;
  *&geometry->contentsRect.size.height = v41;
  v42 = v64;
  *&geometry->transform.a = v63;
  *&geometry->transform.c = v42;
  v43 = v66;
  *&geometry->transform.tx = v65;
  *&geometry->alpha = v43;
  v44 = v60;
  geometry->frame.origin = v59;
  geometry->frame.size = v44;
  v45 = v62;
  geometry->center = v61;
  geometry->size = v45;
LABEL_38:
  if (group)
  {
    *group = v27;
  }

  if (data)
  {
    *data = 0;
  }

  return v21;
}

- (CGRect)_placeholderFrame
{
  [(PXCMMEngineDrivenLayout *)self _headerFrame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  if (CGRectIsEmpty(v16))
  {
    MinX = *MEMORY[0x1E695F058];
    MaxY = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    headerHeight = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(PXTilingLayout *)self referenceSize];
    headerHeight = self->_headerHeight;
    if (v12 > v11)
    {
      PXEdgeInsetsInsetSize();
    }

    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MinX = CGRectGetMinX(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MaxY = CGRectGetMaxY(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v9 = CGRectGetWidth(v19);
  }

  v13 = MinX;
  v14 = MaxY;
  v15 = headerHeight;
  result.size.height = v15;
  result.size.width = v9;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_sectionHeaderTileFrame
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  if (![(PXCMMEngineDrivenLayout *)self placeholderMode])
  {
    v7 = [(PXCMMEngineDrivenLayout *)self _generatorGeometryKindForTileKind:8439963];
    v8 = [MEMORY[0x1E696AC88] px_indexPathForItem:0 inSection:0 withKind:v7];
    layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
    v10 = layoutSnapshot;
    if (layoutSnapshot)
    {
      [layoutSnapshot geometryForItem:v8];
    }

    PXRectWithCenterAndSize();
  }

  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (PXTileIdentifier)_placeholderTileIdentifier
{
  placeholderMode = [(PXCMMEngineDrivenLayout *)self placeholderMode];
  if ((placeholderMode - 1) >= 2)
  {
    if (!placeholderMode)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a3 object:self file:@"PXCMMEngineDrivenLayout.m" lineNumber:312 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v6 = 0;
  }

  else
  {
    v6 = 8439984;
  }

  return [(PXCMMEngineDrivenLayout *)self _identifierForUniqueTileWithKind:v6];
}

- (CGRect)_statusFooterFrame
{
  p_statusFooterHeight = &self->_statusFooterHeight;
  if (self->_statusFooterHeight <= 0.0)
  {
    v13 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    p_statusFooterHeight = (MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(PXCMMEngineDrivenLayout *)self contentBounds];
    MaxY = CGRectGetMaxY(v17);
    [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
    v6 = MaxY - v5 - *p_statusFooterHeight;
    [(PXCMMEngineDrivenLayout *)self footerBottomInset];
    v8 = v6 - v7;
    [(PXCMMEngineDrivenLayout *)self contentBounds];
    v10 = v9;
    [(PXCMMEngineDrivenLayout *)self headerFooterSideInset];
    v12 = fmax(v10 + v11 * -2.0, 0.0);
    [(PXCMMEngineDrivenLayout *)self headerFooterSideInset];
  }

  v14 = *p_statusFooterHeight;
  v15 = v8;
  v16 = v12;
  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v13;
  return result;
}

- (CGRect)_bannerFrame
{
  [(PXCMMEngineDrivenLayout *)self _headerFrame];
  x = v17.origin.x;
  width = v17.size.width;
  MaxY = CGRectGetMaxY(v17);
  bannerHeight = self->_bannerHeight;
  if (self->_hasFloatingBanner)
  {
    [(PXTilingLayout *)self contentInset];
    v8 = v7;
    [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
    v10 = v8 + v9;
    [(PXTilingLayout *)self visibleOrigin];
    if (v10 + v11 > MaxY)
    {
      [(PXTilingLayout *)self visibleOrigin];
      MaxY = MaxY + v10 + v12 - MaxY;
    }
  }

  v13 = x;
  v14 = MaxY;
  v15 = width;
  v16 = bannerHeight;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_headerFrame
{
  [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
  v4 = v3;
  [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
  v6 = v4 + v5;
  [(PXCMMEngineDrivenLayout *)self contentBounds];
  v8 = v7;
  [(PXCMMEngineDrivenLayout *)self headerFooterSideInset];
  v10 = fmax(v8 + v9 * -2.0 - v6, 0.0);
  [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
  v12 = v11;
  [(PXCMMEngineDrivenLayout *)self headerFooterSideInset];
  v14 = v12 + v13;
  [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
  v16 = v15;
  [(PXCMMEngineDrivenLayout *)self headerTopInset];
  v18 = v16 + v17;
  headerHeight = self->_headerHeight;
  v20 = v14;
  v21 = v10;
  result.size.height = headerHeight;
  result.size.width = v21;
  result.origin.y = v18;
  result.origin.x = v20;
  return result;
}

- (PXTileIdentifier)_identifierForUniqueTileWithKind:(SEL)kind
{
  dataSource = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
  identifier = [dataSource identifier];

  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  retstr->length = 5;
  retstr->index[0] = a4;
  retstr->index[1] = identifier;
  retstr->index[2] = 0;
  retstr->index[3] = 0;
  retstr->index[4] = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

- (void)_invalidateAssetStatusBadgeTiles
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTilesInGroup:48];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)_invalidateStatusFooter
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXCMMEngineDrivenLayout *)self _statusFooterTileIdentifier];
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTileWithIdentifier:v4];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)_invalidateBanner
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTilesInGroup:41];
  [(PXTilingLayoutInvalidationContext *)v3 setTag:@"PXCMMBannerTileGroupInvalidationTag"];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)_invalidateHeader
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXCMMEngineDrivenLayout *)self _headerTileIdentifier];
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTileWithIdentifier:v4];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)_invalidateSectionHeaders
{
  v3 = objc_alloc_init(PXTilingLayoutInvalidationContext);
  [(PXTilingLayoutInvalidationContext *)v3 invalidateTilesInGroup:42];
  [(PXTilingLayoutInvalidationContext *)v3 setTag:@"PXCMMSectionHeaderTileGroupInvalidation"];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)setHeaderFooterSideInset:(double)inset
{
  if (self->_headerFooterSideInset != inset)
  {
    self->_headerFooterSideInset = inset;
    [(PXCMMEngineDrivenLayout *)self _invalidateHeader];
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];

    [(PXCMMEngineDrivenLayout *)self _invalidateStatusFooter];
  }
}

- (void)setFooterBottomInset:(double)inset
{
  if (self->_footerBottomInset != inset)
  {
    self->_footerBottomInset = inset;
    [(PXCMMEngineDrivenLayout *)self _invalidateStatusFooter];
  }
}

- (void)setHeaderTopInset:(double)inset
{
  if (self->_headerTopInset != inset)
  {
    self->_headerTopInset = inset;
    [(PXCMMEngineDrivenLayout *)self _invalidateHeader];
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];

    [(PXCMMEngineDrivenLayout *)self _invalidateStatusFooter];
  }
}

- (void)setHasFloatingSectionHeaders:(BOOL)headers
{
  if (self->_hasFloatingSectionHeaders != headers)
  {
    self->_hasFloatingSectionHeaders = headers;
    [(PXCMMEngineDrivenLayout *)self _invalidateSectionHeaders];
  }
}

- (void)setHasFloatingBanner:(BOOL)banner
{
  if (self->_hasFloatingBanner != banner)
  {
    self->_hasFloatingBanner = banner;
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];
  }
}

- (BOOL)headerViewIsVisible
{
  [(PXTilingLayout *)self visibleRect];
  [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
  PXEdgeInsetsInsetRect();
}

- (void)setVisibleOrigin:(CGPoint)origin
{
  v4.receiver = self;
  v4.super_class = PXCMMEngineDrivenLayout;
  [(PXTilingLayout *)&v4 setVisibleOrigin:origin.x, origin.y];
  if ([(PXCMMEngineDrivenLayout *)self hasFloatingSectionHeaders])
  {
    [(PXCMMEngineDrivenLayout *)self _invalidateSectionHeaders];
  }

  if ([(PXCMMEngineDrivenLayout *)self hasFloatingBanner])
  {
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];
  }
}

- (CGRect)contentBounds
{
  layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
  v4 = layoutSnapshot;
  if (layoutSnapshot)
  {
    [layoutSnapshot contentRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  if ([(PXCMMEngineDrivenLayout *)self placeholderMode])
  {
    [(PXTilingLayout *)self referenceSize];
    if (v14 > v13)
    {
      PXEdgeInsetsInsetSize();
    }

    v12 = v12 + self->_headerHeight;
  }

  v15 = v6;
  v16 = v8;
  v17 = v10;
  v18 = v12;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setPlaceholderMode:(int64_t)mode
{
  if (self->_placeholderMode != mode)
  {
    self->_placeholderMode = mode;
    v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v5 invalidateContentBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)snapshot configuration:(id)configuration
{
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = PXCMMEngineDrivenLayout;
  v7 = [(PXEngineDrivenAssetsTilingLayout *)&v18 initWithLayoutEngineSnapshot:snapshot];
  if (v7)
  {
    v7->_layoutType = [configurationCopy layoutType];
    [configurationCopy headerHeight];
    v7->_headerHeight = v8;
    [configurationCopy bannerHeight];
    v7->_bannerHeight = v9;
    [configurationCopy statusFooterHeight];
    v7->_statusFooterHeight = v10;
    v11 = objc_alloc_init(PXCMMAssetStatusBadgeTileUserData);
    copiedUserData = v7->__copiedUserData;
    v7->__copiedUserData = v11;

    [(PXCMMAssetStatusBadgeTileUserData *)v7->__copiedUserData setStatus:2];
    v13 = objc_alloc_init(PXCMMAssetStatusBadgeTileUserData);
    failedUserData = v7->__failedUserData;
    v7->__failedUserData = v13;

    [(PXCMMAssetStatusBadgeTileUserData *)v7->__failedUserData setStatus:-1];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    [indexSet addIndex:8439952];
    [indexSet addIndex:8439964];
    v16 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:indexSet];
    [(PXAssetsTilingLayout *)v7 setAdditionalAccessoryTileKinds:v16];
  }

  return v7;
}

- (PXCMMEngineDrivenLayout)initWithDataSource:(id)source
{
  sourceCopy = source;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMEngineDrivenLayout.m" lineNumber:67 description:{@"%s is not available as initializer", "-[PXCMMEngineDrivenLayout initWithDataSource:]"}];

  abort();
}

- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMEngineDrivenLayout.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXCMMEngineDrivenLayout initWithLayoutEngineSnapshot:]"}];

  abort();
}

+ (id)_additionalTileKinds
{
  if (_additionalTileKinds_onceToken != -1)
  {
    dispatch_once(&_additionalTileKinds_onceToken, &__block_literal_global_26724);
  }

  v3 = _additionalTileKinds_additionalTileKinds;

  return v3;
}

void __47__PXCMMEngineDrivenLayout__additionalTileKinds__block_invoke()
{
  v2 = [MEMORY[0x1E696AD50] indexSetWithIndex:8439962];
  [v2 addIndex:8439963];
  v0 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:v2];
  v1 = _additionalTileKinds_additionalTileKinds;
  _additionalTileKinds_additionalTileKinds = v0;
}

@end