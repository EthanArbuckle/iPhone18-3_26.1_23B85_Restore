@interface PXAssetsDataSourceChangeTransitionCoordinator
- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7;
- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)a3 fromGeometry:(PXTileGeometry *)a4 fromUserData:(id)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (PXAssetsDataSourceChangeTransitionCoordinator)initWithTilingChange:(id)a3 changeHistory:(id)a4;
- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)a3 animationType:(int64_t)a4 fromGeometry:(PXTileGeometry *)a5 fromUserData:(id)a6 toGeometry:(PXTileGeometry *)a7 toUserData:(id)a8;
- (void)_updateAnimationDelay;
- (void)setDelayInsertions:(BOOL)a3;
- (void)setTreatRemovalsAsDeletes:(BOOL)a3;
@end

@implementation PXAssetsDataSourceChangeTransitionCoordinator

- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)a3 fromGeometry:(PXTileGeometry *)a4 fromUserData:(id)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  v12 = a5;
  v13 = a7;
  v95.receiver = self;
  v95.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v14 = *&a3->index[5];
  v63 = *&a3->index[3];
  v64 = v14;
  v65 = *&a3->index[7];
  *&v66 = a3->index[9];
  v15 = *&a3->index[1];
  origin = *&a3->length;
  v62 = v15;
  v16 = *&a4->contentSize.height;
  v91 = *&a4->hidden;
  v92 = v16;
  v17 = *&a4->contentsRect.size.height;
  v93 = *&a4->contentsRect.origin.y;
  v94 = v17;
  v18 = *&a4->transform.c;
  v87 = *&a4->transform.a;
  v88 = v18;
  v19 = *&a4->alpha;
  v89 = *&a4->transform.tx;
  v90 = v19;
  size = a4->frame.size;
  v84.origin = a4->frame.origin;
  v84.size = size;
  v21 = a4->size;
  center = a4->center;
  v86 = v21;
  v22 = *&a6->contentSize.height;
  v80 = *&a6->hidden;
  v81 = v22;
  v23 = *&a6->contentsRect.size.height;
  v82 = *&a6->contentsRect.origin.y;
  v83 = v23;
  v24 = *&a6->transform.c;
  v76 = *&a6->transform.a;
  v77 = v24;
  v25 = *&a6->alpha;
  v78 = *&a6->transform.tx;
  v79 = v25;
  v26 = a6->frame.size;
  v73.origin = a6->frame.origin;
  v73.size = v26;
  v27 = a6->size;
  v74 = a6->center;
  v75 = v27;
  v28 = [(PXAssetsTileTransitionCoordinator *)&v95 useDoubleSidedAnimationForUpdatedTileWithIdentifier:&origin fromGeometry:&v84 fromUserData:v12 toGeometry:&v73 toUserData:v13];
  if (a3->length - 3 <= 2 && a3->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = a3->index[0];
    if (v29 == 6332437)
    {
      v28 = a4->size.height != a6->size.height || a4->size.width != a6->size.width;
    }

    else if (v29 == 6332435)
    {
      v30 = v13;
      if (v28)
      {
        v28 = 1;
      }

      else
      {
        v31 = [v12 badgeOptions];
        v28 = v31 != [v30 badgeOptions];
      }
    }
  }

  v32 = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
  [v32 visibleRect];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = +[PXTilingCoordinateSpaceConverter defaultConverter];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  center = 0u;
  v86 = 0;
  memset(&v84, 0, sizeof(v84));
  v42 = [v32 coordinateSpaceIdentifier];
  if (v41)
  {
    v43 = *&a4->contentSize.height;
    v80 = *&a4->hidden;
    v81 = v43;
    v44 = *&a4->contentsRect.size.height;
    v82 = *&a4->contentsRect.origin.y;
    v83 = v44;
    v45 = *&a4->transform.c;
    v76 = *&a4->transform.a;
    v77 = v45;
    v46 = *&a4->alpha;
    v78 = *&a4->transform.tx;
    v79 = v46;
    v47 = a4->frame.size;
    v73.origin = a4->frame.origin;
    v73.size = v47;
    v48 = a4->size;
    v74 = a4->center;
    v75 = v48;
    [v41 convertTileGeometry:&v73 toCoordinateSpaceIdentifier:v42];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0;
    memset(&v73, 0, sizeof(v73));
    v49 = [v32 coordinateSpaceIdentifier];
    v50 = *&a6->contentSize.height;
    v69 = *&a6->hidden;
    v70 = v50;
    v51 = *&a6->contentsRect.size.height;
    v71 = *&a6->contentsRect.origin.y;
    v72 = v51;
    v52 = *&a6->transform.c;
    v65 = *&a6->transform.a;
    v66 = v52;
    v53 = *&a6->alpha;
    v67 = *&a6->transform.tx;
    v68 = v53;
    v54 = a6->frame.size;
    origin = a6->frame.origin;
    v62 = v54;
    v55 = a6->size;
    v63 = a6->center;
    v64 = v55;
    [v41 convertTileGeometry:&origin toCoordinateSpaceIdentifier:v49];
    y = v73.origin.y;
    x = v73.origin.x;
    height = v73.size.height;
    width = v73.size.width;
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    center = 0u;
    v86 = 0;
    memset(&v84, 0, sizeof(v84));
    [v32 coordinateSpaceIdentifier];
    memset(&v73, 0, sizeof(v73));
    v74 = 0u;
    v75 = 0;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    height = 0.0;
    width = 0.0;
    y = 0.0;
    v82 = 0u;
    v83 = 0u;
    x = 0.0;
  }

  v96.origin.x = v34;
  v96.origin.y = v36;
  v96.size.width = v38;
  v96.size.height = v40;
  if (CGRectIntersectsRect(v96, *&x) && (v97.origin.x = v34, v97.origin.y = v36, v97.size.width = v38, v97.size.height = v40, !CGRectIntersectsRect(v97, v84)))
  {
    v102.origin.x = v34;
    v102.origin.y = v36;
    v102.size.width = v38;
    v102.size.height = v40;
    v103 = CGRectInset(v102, -(v84.size.width * 0.5 + 500.0), -(v84.size.height * 0.5 + 500.0));
    if (!CGRectContainsPoint(v103, center))
    {
      PXRectClampPoint();
    }
  }

  else
  {
    v98.origin.x = v34;
    v98.origin.y = v36;
    v98.size.width = v38;
    v98.size.height = v40;
    if (CGRectIntersectsRect(v98, v84))
    {
      v99.origin.x = v34;
      v99.origin.y = v36;
      v99.size.width = v38;
      v99.size.height = v40;
      if (!CGRectIntersectsRect(v99, v73))
      {
        v100.origin.x = v34;
        v100.origin.y = v36;
        v100.size.width = v38;
        v100.size.height = v40;
        v101 = CGRectInset(v100, -(v73.size.width * 0.5 + 500.0), -(v73.size.height * 0.5 + 500.0));
        if (!CGRectContainsPoint(v101, v74))
        {
          PXRectClampPoint();
        }
      }
    }
  }

  return v28;
}

- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7
{
  v64 = a7;
  if ([(NSMutableDictionary *)self->_overrideFinalGeometryByTileIdentifier count])
  {
    overrideFinalGeometryByTileIdentifier = self->_overrideFinalGeometryByTileIdentifier;
    v13 = *&a5->index[5];
    center = *&a5->index[3];
    v75 = v13;
    v76 = *&a5->index[7];
    *&v77 = a5->index[9];
    v14 = *&a5->index[1];
    origin = *&a5->length;
    v73 = v14;
    v15 = [MEMORY[0x1E696B098] valueWithPXTileIdentifier:&origin];
    v16 = [(NSMutableDictionary *)overrideFinalGeometryByTileIdentifier objectForKeyedSubscript:v15];

    v17 = v16 != 0;
    if (v16)
    {
      [v16 PXTileGeometryValue];
      v18 = v81;
      *&a3->hidden = v80;
      *&a3->contentSize.height = v18;
      v19 = v83;
      *&a3->contentsRect.origin.y = v82;
      *&a3->contentsRect.size.height = v19;
      v20 = v77;
      *&a3->transform.a = v76;
      *&a3->transform.c = v20;
      v21 = v79;
      *&a3->transform.tx = v78;
      *&a3->alpha = v21;
      v22 = v73;
      a3->frame.origin = origin;
      a3->frame.size = v22;
      v23 = v75;
      a3->center = center;
      a3->size = v23;
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = 0x7FFFFFFFFFFFFFFFLL;
  if (a5->length - 3 <= 2 && a5->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = a5->index[0];
  }

  v25 = [(PXAssetsTileTransitionCoordinator *)self _kindsCoveringContentTiles];
  v26 = [v25 containsIndex:v24];

  v27 = [(PXAssetsTileTransitionCoordinator *)self _kindsCenteredOnContentTiles];
  v28 = [v27 containsIndex:v24];

  if ((v26 & 1) == 0 && !v28 || (v62 = *&a5->index[1], -[PXAssetsTileTransitionCoordinator _toLayout](self, "_toLayout", a5->index[3], a5->index[4]), v29 = objc_claimAutoreleasedReturnValue(), [v29 dataSource], v30 = objc_claimAutoreleasedReturnValue(), v63 = a4, v31 = objc_msgSend(v30, "identifier"), v30, v29, v32 = v62 == v31, a4 = v63, !v32))
  {
    if (v17)
    {
LABEL_18:
      v51 = 1;
      v49 = v64;
      goto LABEL_21;
    }

LABEL_20:
    v65.receiver = self;
    v65.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
    v52 = *&a5->index[5];
    v68 = *&a5->index[3];
    v69 = v52;
    v70 = *&a5->index[7];
    v71 = a5->index[9];
    v53 = *&a5->index[1];
    v66 = *&a5->length;
    v67 = v53;
    v54 = *&a6->contentSize.height;
    v80 = *&a6->hidden;
    v81 = v54;
    v55 = *&a6->contentsRect.size.height;
    v82 = *&a6->contentsRect.origin.y;
    v83 = v55;
    v56 = *&a6->transform.c;
    v76 = *&a6->transform.a;
    v77 = v56;
    v57 = *&a6->alpha;
    v78 = *&a6->transform.tx;
    v79 = v57;
    size = a6->frame.size;
    origin = a6->frame.origin;
    v73 = size;
    v59 = a6->size;
    center = a6->center;
    v75 = v59;
    v49 = v64;
    v51 = [(PXAssetsTileTransitionCoordinator *)&v65 getFinalGeometry:a3 finalUserData:a4 forDisappearingTileWithIdentifier:&v66 fromGeometry:&origin fromUserData:v64];
    goto LABEL_21;
  }

  v33 = *(off_1E7722248 + 9);
  v80 = *(off_1E7722248 + 8);
  v81 = v33;
  v34 = *(off_1E7722248 + 11);
  v82 = *(off_1E7722248 + 10);
  v83 = v34;
  v35 = *(off_1E7722248 + 5);
  v76 = *(off_1E7722248 + 4);
  v77 = v35;
  v36 = *(off_1E7722248 + 7);
  v78 = *(off_1E7722248 + 6);
  v79 = v36;
  v37 = *(off_1E7722248 + 1);
  origin = *off_1E7722248;
  v73 = v37;
  v38 = *(off_1E7722248 + 3);
  center = *(off_1E7722248 + 2);
  v75 = v38;
  v39 = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
  v66 = xmmword_1A5380D20;
  v67 = v62;
  v68 = v61;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v40 = [v39 getGeometry:&origin group:0 userData:0 forTileWithIdentifier:&v66];

  if (!v40)
  {
    a4 = v63;
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  *&v79 = 0;
  v41 = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
  [v41 zPositionOffsetForKind:v24];
  *(&v79 + 1) = v42 + *(&v79 + 1);

  if (v28)
  {
    v75 = a6->size;
    PXRectWithCenterAndSize();
  }

  v43 = v81;
  *&a3->hidden = v80;
  *&a3->contentSize.height = v43;
  v44 = v83;
  *&a3->contentsRect.origin.y = v82;
  *&a3->contentsRect.size.height = v44;
  v45 = v77;
  *&a3->transform.a = v76;
  *&a3->transform.c = v45;
  v46 = v79;
  *&a3->transform.tx = v78;
  *&a3->alpha = v46;
  v47 = v73;
  a3->frame.origin = origin;
  a3->frame.size = v47;
  v48 = v75;
  a3->center = center;
  a3->size = v48;
  v49 = v64;
  v50 = v64;
  *v63 = v64;
  v51 = 1;
LABEL_21:

  return v51;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  v12 = a7;
  if ([(NSMutableDictionary *)self->_overrideInitialGeometryByTileIdentifier count])
  {
    overrideInitialGeometryByTileIdentifier = self->_overrideInitialGeometryByTileIdentifier;
    v14 = *&a5->index[5];
    center = *&a5->index[3];
    size = v14;
    v72 = *&a5->index[7];
    *&v73 = a5->index[9];
    v15 = *&a5->index[1];
    origin = *&a5->length;
    v69 = v15;
    v16 = [MEMORY[0x1E696B098] valueWithPXTileIdentifier:&origin];
    v17 = [(NSMutableDictionary *)overrideInitialGeometryByTileIdentifier objectForKeyedSubscript:v16];

    v18 = v17 != 0;
    if (v17)
    {
      [v17 PXTileGeometryValue];
      v19 = v77;
      *&a3->hidden = v76;
      *&a3->contentSize.height = v19;
      v20 = v79;
      *&a3->contentsRect.origin.y = v78;
      *&a3->contentsRect.size.height = v20;
      v21 = v73;
      *&a3->transform.a = v72;
      *&a3->transform.c = v21;
      v22 = v75;
      *&a3->transform.tx = v74;
      *&a3->alpha = v22;
      v23 = v69;
      a3->frame.origin = origin;
      a3->frame.size = v23;
      v24 = size;
      a3->center = center;
      a3->size = v24;
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (a5->length - 3 <= 2 && a5->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = a5->index[0];
  }

  v26 = [(PXAssetsTileTransitionCoordinator *)self _kindsCoveringContentTiles];
  v27 = [v26 containsIndex:v25];

  v28 = [(PXAssetsTileTransitionCoordinator *)self _kindsCenteredOnContentTiles];
  v29 = [v28 containsIndex:v25];

  if ((v27 & 1) != 0 || v29)
  {
    memset(v67, 0, sizeof(v67));
    v59 = *&a5->index[1];
    v30 = [(PXAssetsTileTransitionCoordinator *)self _changeDetails:a5->index[3]];
    origin = v59;
    v69 = v57;
    [off_1E77218B0 indexPathAfterRevertingChanges:v30 fromIndexPath:&origin hasIncrementalChanges:0 objectChanged:0];

    if (*off_1E7721F68)
    {
      v60 = a4;
      v58 = *(v67 + 8);
      v40 = *(&v67[1] + 1);
      v41 = *(off_1E7722248 + 9);
      v76 = *(off_1E7722248 + 8);
      v77 = v41;
      v42 = *(off_1E7722248 + 11);
      v78 = *(off_1E7722248 + 10);
      v79 = v42;
      v43 = *(off_1E7722248 + 5);
      v72 = *(off_1E7722248 + 4);
      v73 = v43;
      v44 = *(off_1E7722248 + 7);
      v74 = *(off_1E7722248 + 6);
      v75 = v44;
      v45 = *(off_1E7722248 + 1);
      origin = *off_1E7722248;
      v69 = v45;
      v46 = *(off_1E7722248 + 3);
      center = *(off_1E7722248 + 2);
      size = v46;
      v47 = [(PXAssetsTileTransitionCoordinator *)self _fromLayout];
      v62 = xmmword_1A5380D20;
      *v63 = 0;
      *&v63[8] = v58;
      *&v63[24] = v40;
      v64 = 0u;
      v65 = 0u;
      v66 = 0;
      v48 = [v47 getGeometry:&origin group:0 userData:0 forTileWithIdentifier:&v62];

      if (v48)
      {
        *&v75 = 0;
        *(&v75 + 1) = *&a6->zPosition;
        if (v29)
        {
          size = a6->size;
          PXRectWithCenterAndSize();
        }

        v49 = v77;
        *&a3->hidden = v76;
        *&a3->contentSize.height = v49;
        v50 = v79;
        *&a3->contentsRect.origin.y = v78;
        *&a3->contentsRect.size.height = v50;
        v51 = v73;
        *&a3->transform.a = v72;
        *&a3->transform.c = v51;
        v52 = v75;
        *&a3->transform.tx = v74;
        *&a3->alpha = v52;
        v53 = v69;
        a3->frame.origin = origin;
        a3->frame.size = v53;
        v54 = size;
        a3->center = center;
        a3->size = v54;
        v55 = v12;
        *v60 = v12;
      }

      else
      {
        a4 = v60;
        if (!v18)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      v39 = 1;
      goto LABEL_20;
    }
  }

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_13:
  v61.receiver = self;
  v61.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v31 = *&a5->index[5];
  *&v63[16] = *&a5->index[3];
  v64 = v31;
  v65 = *&a5->index[7];
  v66 = a5->index[9];
  v32 = *&a5->index[1];
  v62 = *&a5->length;
  *v63 = v32;
  v33 = *&a6->contentSize.height;
  v76 = *&a6->hidden;
  v77 = v33;
  v34 = *&a6->contentsRect.size.height;
  v78 = *&a6->contentsRect.origin.y;
  v79 = v34;
  v35 = *&a6->transform.c;
  v72 = *&a6->transform.a;
  v73 = v35;
  v36 = *&a6->alpha;
  v74 = *&a6->transform.tx;
  v75 = v36;
  v37 = a6->frame.size;
  origin = a6->frame.origin;
  v69 = v37;
  v38 = a6->size;
  center = a6->center;
  size = v38;
  v39 = [(PXAssetsTileTransitionCoordinator *)&v61 getInitialGeometry:a3 initialUserData:a4 forAppearingTileWithIdentifier:&v62 toGeometry:&origin toUserData:v12];
LABEL_20:

  return v39;
}

- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)a3 animationType:(int64_t)a4 fromGeometry:(PXTileGeometry *)a5 fromUserData:(id)a6 toGeometry:(PXTileGeometry *)a7 toUserData:(id)a8
{
  v53.receiver = self;
  v53.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v11 = *&a3->index[5];
  v51[2] = *&a3->index[3];
  v51[3] = v11;
  v51[4] = *&a3->index[7];
  v52 = a3->index[9];
  v12 = *&a3->index[1];
  v51[0] = *&a3->length;
  v51[1] = v12;
  v13 = *&a5->contentSize.height;
  v50[8] = *&a5->hidden;
  v50[9] = v13;
  v14 = *&a5->contentsRect.size.height;
  v50[10] = *&a5->contentsRect.origin.y;
  v50[11] = v14;
  v15 = *&a5->transform.c;
  v50[4] = *&a5->transform.a;
  v50[5] = v15;
  v16 = *&a5->alpha;
  v50[6] = *&a5->transform.tx;
  v50[7] = v16;
  size = a5->frame.size;
  v50[0] = a5->frame.origin;
  v50[1] = size;
  v18 = a5->size;
  v50[2] = a5->center;
  v50[3] = v18;
  v19 = *&a7->contentSize.height;
  v46 = *&a7->hidden;
  v47 = v19;
  v20 = *&a7->contentsRect.size.height;
  v48 = *&a7->contentsRect.origin.y;
  v49 = v20;
  v21 = *&a7->transform.c;
  v42 = *&a7->transform.a;
  v43 = v21;
  v22 = *&a7->alpha;
  v44 = *&a7->transform.tx;
  v45 = v22;
  v23 = a7->frame.size;
  origin = a7->frame.origin;
  v39 = v23;
  v24 = a7->size;
  center = a7->center;
  v41 = v24;
  v25 = [(PXAssetsTileTransitionCoordinator *)&v53 optionsForAnimatingTileWithIdentifier:v51 animationType:a4 fromGeometry:v50 fromUserData:a6 toGeometry:&origin toUserData:a8];
  if (a3->length - 3 <= 2)
  {
    v26 = a3->index[1];
    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = a3->index[2];
      v27 = a3->index[3];
      v29 = a3->index[4];
      LOBYTE(v51[0]) = 0;
      if (a4 == 1)
      {
        v33 = [(PXAssetsTileTransitionCoordinator *)self _changeDetails];
        *&origin.x = v26;
        *&origin.y = v28;
        *&v39.width = v27;
        *&v39.height = v29;
        [off_1E77218B0 indexPathAfterRevertingChanges:v33 fromIndexPath:&origin hasIncrementalChanges:v51 objectChanged:0];

        if (v51[0])
        {
          v34 = &OBJC_IVAR___PXAssetsDataSourceChangeTransitionCoordinator__insertAnimationOptions;
LABEL_9:
          v35 = *(&self->super.super.isa + *v34);
LABEL_16:

          v25 = v35;
          goto LABEL_17;
        }
      }

      else
      {
        if (a4 != 3)
        {
          goto LABEL_17;
        }

        v30 = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
        v31 = [v30 dataSource];
        v32 = [v31 identifier];

        if (v26 == v32)
        {
          LOBYTE(v51[0]) = 1;
        }

        else
        {
          v36 = [(PXAssetsTileTransitionCoordinator *)self _changeDetails];
          *&origin.x = v26;
          *&origin.y = v28;
          *&v39.width = v27;
          *&v39.height = v29;
          [off_1E77218B0 indexPathAfterApplyingChanges:v36 toIndexPath:&origin hasIncrementalChanges:v51 objectChanged:0];

          if ((v51[0] & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (![(PXAssetsTileTransitionCoordinator *)self treatRemovalsAsDeletes])
        {
          goto LABEL_17;
        }

        if (a3->length == 5 && a3->index[0] == 6432423)
        {
          v34 = &OBJC_IVAR___PXAssetsDataSourceChangeTransitionCoordinator__deleteAnimationOptions;
          goto LABEL_9;
        }
      }

LABEL_15:
      v35 = 0;
      goto LABEL_16;
    }
  }

LABEL_17:

  return v25;
}

- (void)setDelayInsertions:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXAssetsTileTransitionCoordinator *)self delayInsertions];
  v6.receiver = self;
  v6.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  [(PXAssetsTileTransitionCoordinator *)&v6 setDelayInsertions:v3];
  if (v5 != v3)
  {
    [(PXAssetsDataSourceChangeTransitionCoordinator *)self _updateAnimationDelay];
  }
}

- (void)setTreatRemovalsAsDeletes:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXAssetsTileTransitionCoordinator *)self treatRemovalsAsDeletes];
  v6.receiver = self;
  v6.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  [(PXAssetsTileTransitionCoordinator *)&v6 setTreatRemovalsAsDeletes:v3];
  if (v5 != v3)
  {
    [(PXAssetsDataSourceChangeTransitionCoordinator *)self _updateAnimationDelay];
  }
}

- (void)_updateAnimationDelay
{
  v3 = [(PXAssetsTileTransitionCoordinator *)self treatRemovalsAsDeletes];
  v4 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
  v5 = v4;
  if (v3)
  {
    v6 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
    [v6 duration];
    [v5 setDelay:v7 * 0.5];
  }

  else
  {
    [v4 setDelay:0.0];
  }

  v8 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
  v9 = [v8 copy];
  insertAnimationOptions = self->_insertAnimationOptions;
  self->_insertAnimationOptions = v9;

  if ([(PXAssetsTileTransitionCoordinator *)self delayInsertions])
  {
    v11 = self->_insertAnimationOptions;
    v13 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
    [v13 duration];
    [(PXBasicTileAnimationOptions *)v11 setDelay:v12 * 0.5];
  }
}

- (PXAssetsDataSourceChangeTransitionCoordinator)initWithTilingChange:(id)a3 changeHistory:(id)a4
{
  v13.receiver = self;
  v13.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v4 = [(PXAssetsTileTransitionCoordinator *)&v13 initWithTilingChange:a3 changeHistory:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    overrideInitialGeometryByTileIdentifier = v4->_overrideInitialGeometryByTileIdentifier;
    v4->_overrideInitialGeometryByTileIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    overrideFinalGeometryByTileIdentifier = v4->_overrideFinalGeometryByTileIdentifier;
    v4->_overrideFinalGeometryByTileIdentifier = v7;

    v9 = [(PXAssetsTileTransitionCoordinator *)v4 _basicAnimationOptions];
    v10 = [v9 copy];
    deleteAnimationOptions = v4->_deleteAnimationOptions;
    v4->_deleteAnimationOptions = v10;

    [(PXBasicTileAnimationOptions *)v4->_deleteAnimationOptions setStyle:1];
    [(PXAssetsDataSourceChangeTransitionCoordinator *)v4 _updateAnimationDelay];
  }

  return v4;
}

@end