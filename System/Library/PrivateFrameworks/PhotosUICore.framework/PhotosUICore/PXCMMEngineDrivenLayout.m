@interface PXCMMEngineDrivenLayout
+ (id)_additionalTileKinds;
- (BOOL)_getAdditionalTileIdentifierForEditorial:(PXTileIdentifier *)a3 group:(unint64_t *)a4 layoutGeometryKind:(int64_t)a5 indexPath:(PXSimpleIndexPath *)a6;
- (BOOL)_getAdditionalTileIdentifierForGrid:(PXTileIdentifier *)a3 group:(unint64_t *)a4 layoutGeometryKind:(int64_t)a5 indexPath:(PXSimpleIndexPath *)a6;
- (BOOL)_getAssetStatusTileIdentifier:(PXTileIdentifier *)a3 outGeometry:(PXTileGeometry *)a4 group:(unint64_t *)a5 userData:(id *)a6 forContentTileGeometry:(const PXTileGeometry *)a7 indexPath:(PXSimpleIndexPath *)a8;
- (BOOL)_getDuplicateTileIdentifier:(PXTileIdentifier *)a3 outGeometry:(PXTileGeometry *)a4 group:(unint64_t *)a5 userData:(id *)a6 forContentTileGeometry:(const PXTileGeometry *)a7 indexPath:(PXSimpleIndexPath *)a8;
- (BOOL)getAdditionalAccessoryTileIdentifier:(PXTileIdentifier *)a3 outGeometry:(PXTileGeometry *)a4 group:(unint64_t *)a5 userData:(id *)a6 forTileKind:(unint64_t)a7 contentTileGeometry:(const PXTileGeometry *)a8 indexPath:(PXSimpleIndexPath *)a9;
- (BOOL)getAdditionalTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4 layoutGeometryKind:(unint64_t)a5 indexPath:(PXSimpleIndexPath *)a6;
- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6;
- (BOOL)headerViewIsVisible;
- (CGRect)_bannerFrame;
- (CGRect)_headerFrame;
- (CGRect)_placeholderFrame;
- (CGRect)_sectionHeaderTileFrame;
- (CGRect)_statusFooterFrame;
- (CGRect)contentBounds;
- (CGSize)_preferredSelectionBadgeSize;
- (PXCMMEngineDrivenLayout)initWithDataSource:(id)a3;
- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)a3;
- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)a3 configuration:(id)a4;
- (PXTileIdentifier)_identifierForUniqueTileWithKind:(SEL)a3;
- (PXTileIdentifier)_placeholderTileIdentifier;
- (UIEdgeInsets)reviewSafeAreaInsets;
- (double)zPositionOffsetForKind:(unint64_t)a3;
- (unint64_t)_editorialGeneratorGeometryKindForTileKind:(unint64_t)a3;
- (unint64_t)_generatorGeometryKindForTileKind:(unint64_t)a3;
- (unint64_t)_gridGeneratorGeometryKindForTileKind:(unint64_t)a3;
- (void)_invalidateAssetStatusBadgeTiles;
- (void)_invalidateBanner;
- (void)_invalidateHeader;
- (void)_invalidateSectionHeaders;
- (void)_invalidateStatusFooter;
- (void)adjustGeometry:(PXTileGeometry *)a3 forAdditionalTileWithKind:(unint64_t)a4 indexPath:(PXSimpleIndexPath *)a5;
- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5;
- (void)setFooterBottomInset:(double)a3;
- (void)setHasFloatingBanner:(BOOL)a3;
- (void)setHasFloatingSectionHeaders:(BOOL)a3;
- (void)setHeaderFooterSideInset:(double)a3;
- (void)setHeaderTopInset:(double)a3;
- (void)setPlaceholderMode:(int64_t)a3;
- (void)setVisibleOrigin:(CGPoint)a3;
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

- (void)adjustGeometry:(PXTileGeometry *)a3 forAdditionalTileWithKind:(unint64_t)a4 indexPath:(PXSimpleIndexPath *)a5
{
  v9 = [(PXCMMEngineDrivenLayout *)self layoutType];
  if ((v9 - 2) >= 3)
  {
    if (v9 == 1)
    {
      if (a4 != 1)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v9)
    {
      return;
    }
  }

  if (a4 != 2)
  {
    return;
  }

LABEL_5:
  y = a3->frame.origin.y;
  if ([(PXCMMEngineDrivenLayout *)self hasFloatingSectionHeaders])
  {
    [(PXTilingLayout *)self contentInset];
    v12 = v11;
    [(PXTilingLayout *)self visibleOrigin];
    if (v12 + v13 > y)
    {
      a3->zPosition = 40.0;
      [(PXTilingLayout *)self contentInset];
      v15 = v14;
      [(PXTilingLayout *)self visibleOrigin];
      v17 = v15 + v16 - y;
      a3->center.y = a3->center.y + v17;
      a3->frame.origin.y = a3->frame.origin.y + v17;
      v18 = [MEMORY[0x1E696AC88] px_indexPathForItem:0 inSection:a5->section + 1 withKind:a4];
      v19 = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
      v20 = v19;
      if (v19)
      {
        [v19 geometryForItem:v18];
      }

      [(PXTilingLayout *)self coordinateSpaceIdentifier];
      PXRectWithCenterAndSize();
    }
  }
}

- (BOOL)_getAdditionalTileIdentifierForEditorial:(PXTileIdentifier *)a3 group:(unint64_t *)a4 layoutGeometryKind:(int64_t)a5 indexPath:(PXSimpleIndexPath *)a6
{
  if (a5 != 1)
  {
    PXAssertGetLog();
  }

  v6 = *&a6->dataSourceIdentifier;
  v7 = *&a6->item;
  *&a3->length = xmmword_1A5380DB0;
  *&a3->index[1] = v6;
  *&a3->index[3] = v7;
  *&a3->index[5] = 0u;
  *&a3->index[7] = 0u;
  a3->index[9] = 0;
  *a4 = 42;
  return 1;
}

- (BOOL)_getAdditionalTileIdentifierForGrid:(PXTileIdentifier *)a3 group:(unint64_t *)a4 layoutGeometryKind:(int64_t)a5 indexPath:(PXSimpleIndexPath *)a6
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 8439962;
  if (a5 == 1)
  {
    v7 = 0;
  }

  else
  {
    if (a5 != 2)
    {
      PXAssertGetLog();
    }

    v6 = 8439963;
    v7 = 42;
  }

  v8 = *&a6->dataSourceIdentifier;
  v9 = *&a6->item;
  a3->length = 5;
  a3->index[0] = v6;
  *&a3->index[1] = v8;
  *&a3->index[3] = v9;
  *&a3->index[5] = 0u;
  *&a3->index[7] = 0u;
  a3->index[9] = 0;
  *a4 = v7;
  return 1;
}

- (BOOL)getAdditionalTileIdentifier:(PXTileIdentifier *)a3 group:(unint64_t *)a4 layoutGeometryKind:(unint64_t)a5 indexPath:(PXSimpleIndexPath *)a6
{
  v11 = [(PXCMMEngineDrivenLayout *)self layoutType];
  if ((v11 - 2) < 3 || v11 == 0)
  {
    v13 = *&a6->item;
    v16 = *&a6->dataSourceIdentifier;
    v17 = v13;
    return [(PXCMMEngineDrivenLayout *)self _getAdditionalTileIdentifierForGrid:a3 group:a4 layoutGeometryKind:a5 indexPath:&v16];
  }

  else if (v11 == 1)
  {
    v15 = *&a6->item;
    v16 = *&a6->dataSourceIdentifier;
    v17 = v15;
    return [(PXCMMEngineDrivenLayout *)self _getAdditionalTileIdentifierForEditorial:a3 group:a4 layoutGeometryKind:a5 indexPath:&v16];
  }

  else
  {
    return 0;
  }
}

- (double)zPositionOffsetForKind:(unint64_t)a3
{
  if (a3 == 8439952)
  {
    return 35.0;
  }

  if (a3 == 8439964)
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

- (BOOL)_getAssetStatusTileIdentifier:(PXTileIdentifier *)a3 outGeometry:(PXTileGeometry *)a4 group:(unint64_t *)a5 userData:(id *)a6 forContentTileGeometry:(const PXTileGeometry *)a7 indexPath:(PXSimpleIndexPath *)a8
{
  if (a7->hidden)
  {
    return 0;
  }

  v25 = v13;
  v26 = v12;
  v27 = v11;
  v28 = v10;
  v29 = v8;
  v30 = v9;
  v19 = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
  v20 = *&a8->item;
  v24[0] = *&a8->dataSourceIdentifier;
  v24[1] = v20;
  v21 = [v19 engineDrivenLayout:self shouldShowStatusBadgeAtIndexPath:v24];

  if (v21)
  {
    v22 = *&a8->dataSourceIdentifier;
    v23 = *&a8->item;
    *&a3->length = xmmword_1A5380DC0;
    *&a3->index[1] = v22;
    *&a3->index[3] = v23;
    *&a3->index[5] = 0u;
    *&a3->index[7] = 0u;
    a3->index[9] = 0;
    [(PXCMMEngineDrivenLayout *)self _preferredSelectionBadgeSize];
    CGRectGetMaxX(a7->frame);
    CGRectGetMaxY(a7->frame);
    [(PXTilingLayout *)self coordinateSpaceIdentifier];
    PXRectGetCenter();
  }

  return 0;
}

- (BOOL)_getDuplicateTileIdentifier:(PXTileIdentifier *)a3 outGeometry:(PXTileGeometry *)a4 group:(unint64_t *)a5 userData:(id *)a6 forContentTileGeometry:(const PXTileGeometry *)a7 indexPath:(PXSimpleIndexPath *)a8
{
  if (a7->hidden)
  {
    return 0;
  }

  v37 = v11;
  v38 = v10;
  v39 = v8;
  v40 = v9;
  v20 = [(PXEngineDrivenAssetsTilingLayout *)self delegate];
  v21 = *&a8->item;
  v36[0] = *&a8->dataSourceIdentifier;
  v36[1] = v21;
  v22 = [v20 engineDrivenLayout:self shouldShowDimmingOverlayAtIndexPath:v36];

  if (!v22)
  {
    return 0;
  }

  v23 = *&a8->dataSourceIdentifier;
  v24 = *&a8->item;
  *&a3->length = xmmword_1A5380DD0;
  *&a3->index[1] = v23;
  *&a3->index[3] = v24;
  *&a3->index[5] = 0u;
  *&a3->index[7] = 0u;
  a3->index[9] = 0;
  origin = a7->frame.origin;
  size = a7->frame.size;
  v27 = a7->size;
  a4->center = a7->center;
  a4->size = v27;
  a4->frame.origin = origin;
  a4->frame.size = size;
  v28 = *&a7->transform.a;
  v29 = *&a7->transform.c;
  v30 = *&a7->alpha;
  *&a4->transform.tx = *&a7->transform.tx;
  *&a4->alpha = v30;
  *&a4->transform.a = v28;
  *&a4->transform.c = v29;
  v31 = *&a7->hidden;
  v32 = *&a7->contentSize.height;
  v33 = *&a7->contentsRect.size.height;
  *&a4->contentsRect.origin.y = *&a7->contentsRect.origin.y;
  *&a4->contentsRect.size.height = v33;
  *&a4->hidden = v31;
  *&a4->contentSize.height = v32;
  zPosition = a7->zPosition;
  [(PXCMMEngineDrivenLayout *)self zPositionOffsetForKind:8439952];
  a4->zPosition = zPosition + v35;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return 1;
}

- (BOOL)getAdditionalAccessoryTileIdentifier:(PXTileIdentifier *)a3 outGeometry:(PXTileGeometry *)a4 group:(unint64_t *)a5 userData:(id *)a6 forTileKind:(unint64_t)a7 contentTileGeometry:(const PXTileGeometry *)a8 indexPath:(PXSimpleIndexPath *)a9
{
  if (a7 == 8439964)
  {
    v11 = *&a9->item;
    v12 = *&a9->dataSourceIdentifier;
    v13 = v11;
    return [(PXCMMEngineDrivenLayout *)self _getAssetStatusTileIdentifier:a3 outGeometry:a4 group:a5 userData:a6 forContentTileGeometry:a8 indexPath:&v12];
  }

  else if (a7 == 8439952)
  {
    v9 = *&a9->item;
    v12 = *&a9->dataSourceIdentifier;
    v13 = v9;
    return [(PXCMMEngineDrivenLayout *)self _getDuplicateTileIdentifier:a3 outGeometry:a4 group:a5 userData:a6 forContentTileGeometry:a8 indexPath:&v12];
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

- (unint64_t)_editorialGeneratorGeometryKindForTileKind:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 == 8439963)
  {
    return 1;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unrecognized grid geometry tile kind: %lu", &v6, 0xCu);
  }

  return -1;
}

- (unint64_t)_gridGeneratorGeometryKindForTileKind:(unint64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 == 8439963)
  {
    return 2;
  }

  if (a3 == 8439962)
  {
    return 1;
  }

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unrecognized grid geometry tile kind: %lu", &v6, 0xCu);
  }

  return -1;
}

- (unint64_t)_generatorGeometryKindForTileKind:(unint64_t)a3
{
  v5 = [(PXCMMEngineDrivenLayout *)self layoutType];
  if ((v5 - 2) < 3 || v5 == 0)
  {

    return [(PXCMMEngineDrivenLayout *)self _gridGeneratorGeometryKindForTileKind:a3];
  }

  else if (v5 == 1)
  {

    return [(PXCMMEngineDrivenLayout *)self _editorialGeneratorGeometryKindForTileKind:a3];
  }

  else
  {
    return -1;
  }
}

- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
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
    v23 = v12[2];
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
    v23(v12, &v74, &v62, v87, v80, &v100);
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
        v34 = v12[2];
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
        v34(v12, &v74, &v62, v87, v61, &v100);
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
        v45 = v12[2];
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
        v45(v12, &v74, &v62, v87, v60, &v100);
      }
    }
  }

  v46 = [(PXCMMEngineDrivenLayout *)self placeholderMode];
  if ((v100 & 1) == 0)
  {
    if (v46)
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
          v57 = v12[2];
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
          v57(v12, &v74, &v62, v87, v59, &v100);
        }
      }
    }
  }

  if ((v100 & 1) == 0)
  {
    v58.receiver = self;
    v58.super_class = PXCMMEngineDrivenLayout;
    [(PXEngineDrivenAssetsTilingLayout *)&v58 enumerateTilesInRect:v11 withOptions:v12 usingBlock:x, y, width, height];
  }
}

- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6
{
  length = a6->length;
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

  v18 = a6->index[1];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_3;
  }

  v23 = a6->index[0];
  v24 = [objc_opt_class() _additionalTileKinds];
  if ([v24 containsIndex:v23])
  {
    v25 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
    v26 = [v25 identifier];

    if (v18 == v26)
    {
      if (v23 == 8439963)
      {
        v27 = 42;
      }

      else
      {
        v27 = 0;
      }

      v28 = [(PXCMMEngineDrivenLayout *)self _generatorGeometryKindForTileKind:v23, a6->index[3], a6->index[4], a6->index[1], a6->index[2]];
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
      v30 = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
      v31 = v30;
      if (v30)
      {
        [v30 geometryForItem:v29];
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

      if (!a3)
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

      v34 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
      v35 = [v34 identifier];

      if (v18 != v35)
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

    v38 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
    v39 = [v38 identifier];

    if (v18 == v39)
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
      if (!a3)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

LABEL_3:
    v48.receiver = self;
    v48.super_class = PXCMMEngineDrivenLayout;
    v19 = *&a6->index[5];
    v51 = *&a6->index[3];
    v52 = v19;
    v53 = *&a6->index[7];
    *&v54 = a6->index[9];
    v20 = *&a6->index[1];
    v49 = *&a6->length;
    v50 = v20;
    return [(PXEngineDrivenAssetsTilingLayout *)&v48 getGeometry:a3 group:a4 userData:a5 forTileWithIdentifier:&v49];
  }

  if (v23 == 8439980)
  {
    v36 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
    v37 = [v36 identifier];

    if (v18 == v37)
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

  v32 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
  v33 = [v32 identifier];

  if (v18 != v33)
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
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_37:
  v40 = v68;
  *&a3->hidden = v67;
  *&a3->contentSize.height = v40;
  v41 = v70;
  *&a3->contentsRect.origin.y = v69;
  *&a3->contentsRect.size.height = v41;
  v42 = v64;
  *&a3->transform.a = v63;
  *&a3->transform.c = v42;
  v43 = v66;
  *&a3->transform.tx = v65;
  *&a3->alpha = v43;
  v44 = v60;
  a3->frame.origin = v59;
  a3->frame.size = v44;
  v45 = v62;
  a3->center = v61;
  a3->size = v45;
LABEL_38:
  if (a4)
  {
    *a4 = v27;
  }

  if (a5)
  {
    *a5 = 0;
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
    v9 = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
    v10 = v9;
    if (v9)
    {
      [v9 geometryForItem:v8];
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
  v5 = [(PXCMMEngineDrivenLayout *)self placeholderMode];
  if ((v5 - 1) >= 2)
  {
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a3 object:self file:@"PXCMMEngineDrivenLayout.m" lineNumber:312 description:@"Code which should be unreachable has been reached"];

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

- (PXTileIdentifier)_identifierForUniqueTileWithKind:(SEL)a3
{
  v6 = [(PXEngineDrivenAssetsTilingLayout *)self dataSource];
  v7 = [v6 identifier];

  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  retstr->length = 5;
  retstr->index[0] = a4;
  retstr->index[1] = v7;
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

- (void)setHeaderFooterSideInset:(double)a3
{
  if (self->_headerFooterSideInset != a3)
  {
    self->_headerFooterSideInset = a3;
    [(PXCMMEngineDrivenLayout *)self _invalidateHeader];
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];

    [(PXCMMEngineDrivenLayout *)self _invalidateStatusFooter];
  }
}

- (void)setFooterBottomInset:(double)a3
{
  if (self->_footerBottomInset != a3)
  {
    self->_footerBottomInset = a3;
    [(PXCMMEngineDrivenLayout *)self _invalidateStatusFooter];
  }
}

- (void)setHeaderTopInset:(double)a3
{
  if (self->_headerTopInset != a3)
  {
    self->_headerTopInset = a3;
    [(PXCMMEngineDrivenLayout *)self _invalidateHeader];
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];

    [(PXCMMEngineDrivenLayout *)self _invalidateStatusFooter];
  }
}

- (void)setHasFloatingSectionHeaders:(BOOL)a3
{
  if (self->_hasFloatingSectionHeaders != a3)
  {
    self->_hasFloatingSectionHeaders = a3;
    [(PXCMMEngineDrivenLayout *)self _invalidateSectionHeaders];
  }
}

- (void)setHasFloatingBanner:(BOOL)a3
{
  if (self->_hasFloatingBanner != a3)
  {
    self->_hasFloatingBanner = a3;
    [(PXCMMEngineDrivenLayout *)self _invalidateBanner];
  }
}

- (BOOL)headerViewIsVisible
{
  [(PXTilingLayout *)self visibleRect];
  [(PXCMMEngineDrivenLayout *)self reviewSafeAreaInsets];
  PXEdgeInsetsInsetRect();
}

- (void)setVisibleOrigin:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = PXCMMEngineDrivenLayout;
  [(PXTilingLayout *)&v4 setVisibleOrigin:a3.x, a3.y];
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
  v3 = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
  v4 = v3;
  if (v3)
  {
    [v3 contentRect];
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

- (void)setPlaceholderMode:(int64_t)a3
{
  if (self->_placeholderMode != a3)
  {
    self->_placeholderMode = a3;
    v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v5 invalidateContentBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = PXCMMEngineDrivenLayout;
  v7 = [(PXEngineDrivenAssetsTilingLayout *)&v18 initWithLayoutEngineSnapshot:a3];
  if (v7)
  {
    v7->_layoutType = [v6 layoutType];
    [v6 headerHeight];
    v7->_headerHeight = v8;
    [v6 bannerHeight];
    v7->_bannerHeight = v9;
    [v6 statusFooterHeight];
    v7->_statusFooterHeight = v10;
    v11 = objc_alloc_init(PXCMMAssetStatusBadgeTileUserData);
    copiedUserData = v7->__copiedUserData;
    v7->__copiedUserData = v11;

    [(PXCMMAssetStatusBadgeTileUserData *)v7->__copiedUserData setStatus:2];
    v13 = objc_alloc_init(PXCMMAssetStatusBadgeTileUserData);
    failedUserData = v7->__failedUserData;
    v7->__failedUserData = v13;

    [(PXCMMAssetStatusBadgeTileUserData *)v7->__failedUserData setStatus:-1];
    v15 = [MEMORY[0x1E696AD50] indexSet];
    [v15 addIndex:8439952];
    [v15 addIndex:8439964];
    v16 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexSet:v15];
    [(PXAssetsTilingLayout *)v7 setAdditionalAccessoryTileKinds:v16];
  }

  return v7;
}

- (PXCMMEngineDrivenLayout)initWithDataSource:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMEngineDrivenLayout.m" lineNumber:67 description:{@"%s is not available as initializer", "-[PXCMMEngineDrivenLayout initWithDataSource:]"}];

  abort();
}

- (PXCMMEngineDrivenLayout)initWithLayoutEngineSnapshot:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMEngineDrivenLayout.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXCMMEngineDrivenLayout initWithLayoutEngineSnapshot:]"}];

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