@interface PFParallaxLayoutHelper
+ (CGRect)inflatePersonFaceRect:(CGRect)result;
+ (double)closeupZoomPercentWithLayoutType:(unint64_t)type;
+ (double)scoreBonusAdaptiveWithLayoutType:(unint64_t)type;
+ (double)scoreBonusInactiveWithLayoutType:(unint64_t)type;
+ (double)scoreBonusOverlapStretchWithLayoutType:(unint64_t)type;
+ (double)scoreBonusOverlapTargetWithLayoutType:(unint64_t)type;
+ (double)scoreBonusZoomHeadroomWithLayoutType:(unint64_t)type;
+ (double)scoreBonusZoomNoneWithLayoutType:(unint64_t)type;
+ (double)scoreBonusZoomTargetWithLayoutType:(unint64_t)type;
+ (double)targetZoomFactorLimitWithLayoutType:(unint64_t)type;
+ (double)targetZoomPercentWithLayoutType:(unint64_t)type;
- (BOOL)canInflate;
- (CGRect)initialRect;
- (CGRect)pixelEffectiveAcceptable;
- (CGRect)pixelEffectivePreferred;
- (CGRect)pixelValidBounds;
- (CGRect)unsafeAreaInImageSpaceWithVisibleFrame:(CGRect)frame;
- (CGSize)extendedImageSize;
- (CGSize)imageSizeWithHeadroomStrategy:(unint64_t)strategy;
- (CGSize)originalImageSize;
- (double)computeCropScoreForIntermediate:(id)intermediate;
- (double)initWithPosterClassification:(double)classification initialRect:(double)rect imageSize:(double)size effectiveAcceptableRect:(double)acceptableRect effectivePreferredRect:(double)preferredRect validBoundsNormalized:(uint64_t)normalized headroomFeasible:(uint64_t)feasible hasTopEdgeContact:(char)self0 computeSpatial:(char)self1 spatialPadding:(char)self2 layoutType:(uint64_t)self3 allowedLayoutStrategies:(uint64_t)self4 layoutConfiguration:(double)self5;
- (double)scoreAdjustmentWithUnscoredIntermediate:(id)intermediate unsafeAreaOverlap:(double)overlap timeBottomOverlap:(double)bottomOverlap timeTopOverlap:(double)topOverlap;
- (id)_pickBestLayout:(id)layout allowHeadroom:(BOOL)headroom;
- (id)bestLayout:(id)layout;
- (id)intermediateWithAdaptiveStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)intermediateWithHeadroomStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)intermediateWithInactiveStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)intermediateWithOverlapStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)intermediateWithParallaxStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)intermediateWithSpatialStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)intermediateWithZoomStrategy:(unint64_t)strategy intermediate:(id)intermediate;
- (id)scoreIntermediate:(id)intermediate;
@end

@implementation PFParallaxLayoutHelper

- (CGRect)pixelEffectivePreferred
{
  x = self->_pixelEffectivePreferred.origin.x;
  y = self->_pixelEffectivePreferred.origin.y;
  width = self->_pixelEffectivePreferred.size.width;
  height = self->_pixelEffectivePreferred.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pixelEffectiveAcceptable
{
  x = self->_pixelEffectiveAcceptable.origin.x;
  y = self->_pixelEffectiveAcceptable.origin.y;
  width = self->_pixelEffectiveAcceptable.size.width;
  height = self->_pixelEffectiveAcceptable.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pixelValidBounds
{
  x = self->_pixelValidBounds.origin.x;
  y = self->_pixelValidBounds.origin.y;
  width = self->_pixelValidBounds.size.width;
  height = self->_pixelValidBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)originalImageSize
{
  width = self->_originalImageSize.width;
  height = self->_originalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)initialRect
{
  x = self->_initialRect.origin.x;
  y = self->_initialRect.origin.y;
  width = self->_initialRect.size.width;
  height = self->_initialRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)scoreAdjustmentWithUnscoredIntermediate:(id)intermediate unsafeAreaOverlap:(double)overlap timeBottomOverlap:(double)bottomOverlap timeTopOverlap:(double)topOverlap
{
  intermediateCopy = intermediate;
  [PFParallaxLayoutHelper scoreBonusZoomTargetWithLayoutType:self->_layoutType];
  v11 = v10;
  [PFParallaxLayoutHelper scoreBonusZoomHeadroomWithLayoutType:self->_layoutType];
  if (v11 < v12)
  {
    v11 = v12;
  }

  [PFParallaxLayoutHelper scoreBonusZoomNoneWithLayoutType:self->_layoutType];
  if (v11 >= v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  +[PFParallaxLayoutHelper scoreBonusOverlapAvoid];
  v16 = v15;
  [PFParallaxLayoutHelper scoreBonusOverlapTargetWithLayoutType:self->_layoutType];
  if (v16 < v17)
  {
    v16 = v17;
  }

  [PFParallaxLayoutHelper scoreBonusOverlapStretchWithLayoutType:self->_layoutType];
  if (v16 >= v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  [PFParallaxLayoutHelper scoreBonusInactiveWithLayoutType:self->_layoutType];
  v21 = v20;
  [PFParallaxLayoutHelper scoreBonusAdaptiveWithLayoutType:self->_layoutType];
  v23 = v22;
  if ([intermediateCopy zoomStrategy] != 4 || (v24 = 0.0, objc_msgSend(intermediateCopy, "overlapStrategy") != 5))
  {
    v25 = 0.0;
    if ([intermediateCopy zoomStrategy] == 2)
    {
      [PFParallaxLayoutHelper scoreBonusZoomTargetWithLayoutType:self->_layoutType];
      v25 = v26 + 0.0;
    }

    if ([intermediateCopy zoomStrategy] == 4)
    {
      [PFParallaxLayoutHelper scoreBonusZoomHeadroomWithLayoutType:self->_layoutType];
      v25 = v25 + v27;
    }

    if ([intermediateCopy zoomStrategy] == 3)
    {
      [PFParallaxLayoutHelper scoreBonusZoomTargetWithLayoutType:self->_layoutType];
      v29 = v28;
      [PFParallaxLayoutHelper scoreBonusZoomHeadroomWithLayoutType:self->_layoutType];
      v25 = v25 + (v29 + v30) * 0.5;
    }

    if ([intermediateCopy zoomStrategy] == 1)
    {
      [PFParallaxLayoutHelper scoreBonusZoomNoneWithLayoutType:self->_layoutType];
      v25 = v25 + v31;
    }

    if ([intermediateCopy overlapStrategy] == 3)
    {
      +[PFParallaxLayoutHelper scoreBonusOverlapAvoid];
      v25 = v25 + v32 * (1.0 - overlap);
    }

    overlapStrategy = [intermediateCopy overlapStrategy];
    if (bottomOverlap > 0.0 && overlapStrategy == 2)
    {
      v34 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
      [v34 maxBottomOverlap];
      v36 = v35;

      if (v36 > bottomOverlap)
      {
        [PFParallaxLayoutHelper scoreBonusOverlapTargetWithLayoutType:self->_layoutType];
        v25 = v25 + v37;
      }
    }

    if ([intermediateCopy overlapStrategy] == 5)
    {
      [PFParallaxLayoutHelper scoreBonusOverlapStretchWithLayoutType:self->_layoutType];
      v25 = v25 + v38;
    }

    if ([intermediateCopy inactiveStrategy] == 2)
    {
      [PFParallaxLayoutHelper scoreBonusInactiveWithLayoutType:self->_layoutType];
      v25 = v25 + v39;
    }

    if ([intermediateCopy adaptiveStrategy] == 2)
    {
      [PFParallaxLayoutHelper scoreBonusAdaptiveWithLayoutType:self->_layoutType];
      v25 = v25 + v40;
    }

    v24 = v25 / (v14 + v19 + v21 + v23);
  }

  return v24;
}

- (id)scoreIntermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  [(PFParallaxLayoutHelper *)self computeCropScoreForIntermediate:intermediateCopy];
  v100 = v5;
  [intermediateCopy visibleRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PFParallaxLayoutHelper *)self unsafeAreaInImageSpaceWithVisibleFrame:?];
  v101 = v15;
  v102 = v14;
  v103 = v16;
  v106 = v17;
  layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [layoutConfiguration timeOverlapCheckBottom];
  v98 = v7 + v19 * v11;
  r1 = v9 + v20 * v13;
  v104 = v13 * v22;
  v105 = v11 * v21;

  layoutConfiguration2 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [layoutConfiguration2 timeOverlapCheckTop];
  v94 = v25;
  v96 = v24;
  v91 = v27;
  v92 = v26;

  [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if ([(PFParallaxLayoutHelper *)self canInflate])
  {
    v36 = objc_opt_class();
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    [v36 inflatePersonFaceRect:?];
    v29 = v37;
    v31 = v38;
    v33 = v39;
    v35 = v40;
  }

  v117.origin.x = v98;
  v117.origin.y = r1;
  v117.size.height = v104;
  v117.size.width = v105;
  v123.origin.x = v29;
  v123.origin.y = v31;
  v123.size.width = v33;
  v123.size.height = v35;
  v118 = CGRectIntersection(v117, v123);
  if (v118.size.width == 0.0 || v118.size.height == 0.0 || (v118.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v41 = v118.size.width == *MEMORY[0x1E69BDDB0]) : (v41 = 0), v41))
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v118.size.width * v118.size.height;
  }

  v99 = v42;
  v43 = v7 + v96 * v11;
  v44 = v9 + v94 * v13;
  v45 = v11 * v92;
  v46 = v13 * v91;
  v47 = v104 == 0.0 || v105 == 0.0;
  v48 = v105 * v104;
  if (v47 || (v104 == *(MEMORY[0x1E69BDDB0] + 8) ? (v49 = v105 == *MEMORY[0x1E69BDDB0]) : (v49 = 0), v50 = v105 * v104, v49))
  {
    v50 = 0.0;
  }

  v97 = v50;
  v51 = v45;
  v52 = v13 * v91;
  v124.origin.x = v29;
  v124.origin.y = v31;
  v124.size.width = v33;
  v124.size.height = v35;
  v119 = CGRectIntersection(*&v43, v124);
  if (v119.size.width == 0.0 || v119.size.height == 0.0 || (v119.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v53 = v119.size.width == *MEMORY[0x1E69BDDB0]) : (v53 = 0), v53))
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v119.size.width * v119.size.height;
  }

  v95 = v54;
  v55 = v106;
  v56 = v46 == 0.0 || v45 == 0.0;
  if (v56)
  {
    v57 = v45 * v46;
LABEL_39:
    v59 = 0.0;
    goto LABEL_40;
  }

  v58 = v46 == *(MEMORY[0x1E69BDDB0] + 8) && v45 == *MEMORY[0x1E69BDDB0];
  v57 = v45 * v46;
  v59 = v45 * v46;
  if (v58)
  {
    goto LABEL_39;
  }

LABEL_40:
  v93 = v59;
  v61 = v101;
  v60 = v102;
  v62 = v103;
  v125.origin.x = v29;
  v125.origin.y = v31;
  v125.size.width = v33;
  v125.size.height = v35;
  v120 = CGRectIntersection(*(&v55 - 3), v125);
  if (v120.size.width == 0.0 || v120.size.height == 0.0 || (v120.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v63 = v120.size.width == *MEMORY[0x1E69BDDB0]) : (v63 = 0), v63))
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v120.size.width * v120.size.height;
  }

  v65 = v106 == 0.0 || v103 == 0.0;
  if (v65)
  {
    v66 = v103 * v106;
LABEL_58:
    v68 = 0.0;
    goto LABEL_59;
  }

  v67 = v106 == *(MEMORY[0x1E69BDDB0] + 8) && v103 == *MEMORY[0x1E69BDDB0];
  v66 = v103 * v106;
  v68 = v103 * v106;
  if (v67)
  {
    goto LABEL_58;
  }

LABEL_59:
  [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
  v126.origin.x = v69;
  v126.origin.y = v70;
  v126.size.width = v71;
  v126.size.height = v72;
  v121.origin.y = v101;
  v121.origin.x = v102;
  v121.size.width = v103;
  v121.size.height = v106;
  v122 = CGRectIntersection(v121, v126);
  if (v122.size.width == 0.0 || v122.size.height == 0.0 || (v122.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v73 = v122.size.width == *MEMORY[0x1E69BDDB0]) : (v73 = 0), v73))
  {
    v74 = 0.0;
  }

  else
  {
    v74 = v122.size.width * v122.size.height;
  }

  if (v65 || (v106 == *(MEMORY[0x1E69BDDB0] + 8) ? (v75 = v103 == *MEMORY[0x1E69BDDB0]) : (v75 = 0), v76 = v66, v75))
  {
    v76 = 0.0;
  }

  if (v47 || (v104 == *(MEMORY[0x1E69BDDB0] + 8) ? (v77 = v105 == *MEMORY[0x1E69BDDB0]) : (v77 = 0), v77))
  {
    v48 = 0.0;
  }

  if (v56 || (v46 == *(MEMORY[0x1E69BDDB0] + 8) ? (v78 = v45 == *MEMORY[0x1E69BDDB0]) : (v78 = 0), v78))
  {
    v57 = 0.0;
  }

  if (v65 || (v106 == *(MEMORY[0x1E69BDDB0] + 8) ? (v79 = v103 == *MEMORY[0x1E69BDDB0]) : (v79 = 0), v79))
  {
    v66 = 0.0;
  }

  if (v57 >= 1.0)
  {
    v80 = v95 / v93;
  }

  else
  {
    v80 = 1.0;
  }

  if (v48 >= 1.0)
  {
    v81 = v99 / v97;
  }

  else
  {
    v81 = 1.0;
  }

  if (v66 >= 1.0)
  {
    v82 = v64 / v68;
  }

  else
  {
    v82 = 1.0;
  }

  v83 = v74 / v76;
  [(PFParallaxLayoutHelper *)self scoreAdjustmentWithUnscoredIntermediate:intermediateCopy unsafeAreaOverlap:v82 timeBottomOverlap:v81 timeTopOverlap:v80];
  v85 = (v100 + v84) * 0.5;
  v86 = [PFParallaxIntermediateLayout alloc];
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __44__PFParallaxLayoutHelper_scoreIntermediate___block_invoke;
  v107[3] = &unk_1E7B65848;
  v110 = v100;
  v111 = v85;
  v112 = v81;
  v113 = v80;
  v114 = v82;
  v115 = v83;
  v108 = intermediateCopy;
  selfCopy = self;
  v87 = intermediateCopy;
  v88 = [(PFParallaxIntermediateLayout *)v86 initWithConfiguration:v107];

  return v88;
}

void __44__PFParallaxLayoutHelper_scoreIntermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 visibleRect];
  [v4 setVisibleRect:?];
  [*(a1 + 32) salientContentRect];
  [v4 setSalientContentRect:?];
  [*(a1 + 32) adaptiveVisibleRect];
  [v4 setAdaptiveVisibleRect:?];
  [*(a1 + 32) inactiveRect];
  [v4 setInactiveRect:?];
  [*(a1 + 32) spatialVisibleRect];
  [v4 setSpatialVisibleRect:?];
  [*(a1 + 32) spatialAdaptiveVisibleRect];
  [v4 setSpatialAdaptiveVisibleRect:?];
  [*(a1 + 32) adaptiveInactiveTopRect];
  [v4 setAdaptiveInactiveTopRect:?];
  [v4 setZoomStrategy:{objc_msgSend(*(a1 + 32), "zoomStrategy")}];
  [v4 setOverlapStrategy:{objc_msgSend(*(a1 + 32), "overlapStrategy")}];
  [v4 setParallaxStrategy:{objc_msgSend(*(a1 + 32), "parallaxStrategy")}];
  [v4 setInactiveStrategy:{objc_msgSend(*(a1 + 32), "inactiveStrategy")}];
  [v4 setHeadroomStrategy:{objc_msgSend(*(a1 + 32), "headroomStrategy")}];
  [v4 setAdaptiveStrategy:{objc_msgSend(*(a1 + 32), "adaptiveStrategy")}];
  [v4 setSpatialStrategy:{objc_msgSend(*(a1 + 32), "spatialStrategy")}];
  [v4 setCropScore:*(a1 + 48)];
  [v4 setLayoutScore:*(a1 + 56)];
  [v4 setTimeBottomOverlap:*(a1 + 64)];
  [v4 setTimeTopOverlap:*(a1 + 72)];
  [v4 setUnsafeAreaOverlap:*(a1 + 80)];
  [v4 setUninflatedUnsafeAreaOverlap:*(a1 + 88)];
  [v4 setHasTopEdgeContact:{objc_msgSend(*(a1 + 40), "hasTopEdgeContact")}];
  [*(a1 + 32) maxClockShift];
  [v4 setMaxClockShift:?];
  [*(a1 + 32) zoomFactor];
  [v4 setZoomFactor:?];
}

- (id)intermediateWithSpatialStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  v7 = intermediateCopy;
  if (strategy)
  {
    if (strategy == 1)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __71__PFParallaxLayoutHelper_intermediateWithSpatialStrategy_intermediate___block_invoke_2;
      v37[3] = &__block_descriptor_40_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
      v37[4] = 1;
      v8 = [intermediateCopy updateWithConfiguration:v37];
    }

    else
    {
      v8 = intermediateCopy;
      if (strategy == 2)
      {
        [intermediateCopy visibleRect];
        v35 = v10;
        v36 = v9;
        v12 = v11;
        v14 = v13;
        [v7 adaptiveVisibleRect];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
        v24 = v23;
        v26 = v25;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        [(PFParallaxLayoutHelper *)self spatialPadding];
        [PFParallaxLayoutUtilities computeSpatialFrameForVisibleRect:v36 adaptiveVisibleRect:v35 spatialPaddingPercentage:v12 effectiveImageRect:v14, v16, v18, v20, v22, v27, 0, 0, v24, v26];
        [v7 visibleRect];
        v29 = v28 - *(&v51 + 1);
        [v7 visibleRect];
        v31 = v30;
        [v7 visibleRect];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __71__PFParallaxLayoutHelper_intermediateWithSpatialStrategy_intermediate___block_invoke;
        v38[3] = &unk_1E7B65820;
        v44 = v55;
        v45 = v56;
        v46 = v57;
        v47 = v58;
        v40 = v51;
        v41 = v52;
        v42 = v53;
        v43 = v54;
        v48 = 2;
        v39 = v7;
        v49 = v31 + v32 - (*(&v51 + 1) - *(&v52 + 1));
        v50 = v29;
        v8 = [v7 updateWithConfiguration:v38];
      }
    }

    intermediateCopy = v8;
    v33 = intermediateCopy;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void __71__PFParallaxLayoutHelper_intermediateWithSpatialStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setSpatialVisibleRect:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  [v4 setSpatialAdaptiveVisibleRect:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
  [v4 setVisibleRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v4 setAdaptiveVisibleRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [v4 setSpatialStrategy:*(a1 + 168)];
  if ([*(a1 + 32) layoutVariant] == 3)
  {
    [v4 maxClockShift];
    [v4 setMaxClockShift:v3 - *(a1 + 176) + *(a1 + 184)];
  }
}

- (id)intermediateWithAdaptiveStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  if ([intermediateCopy overlapStrategy] == 5)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__PFParallaxLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke;
    v25[3] = &unk_1E7B657F8;
    v26 = intermediateCopy;
    strategy = [v26 updateWithConfiguration:v25];
  }

  else
  {
    [intermediateCopy visibleRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [intermediateCopy headroomStrategy]);
    if (strategy)
    {
      if (strategy == 2)
      {
        v17 = v15;
        v18 = v16;
        [intermediateCopy visibleRect];
        [PFParallaxLayoutUtilities adaptiveFrameForVisibleFrame:self->_layoutConfiguration essentialRect:self->_classification originalImageSize:v17 layoutConfiguration:v18 classification:*&self->_allowedClockStretch maxClockStretchOverride:?];
        v8 = v19;
        v10 = v20;
        v12 = v21;
        v14 = v22;
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __72__PFParallaxLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke_2;
      v24[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
      v24[4] = v8;
      v24[5] = v10;
      v24[6] = v12;
      v24[7] = v14;
      v24[8] = strategy;
      v24[9] = 0;
      strategy = [intermediateCopy updateWithConfiguration:v24];
    }
  }

  return strategy;
}

void __72__PFParallaxLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 visibleRect];
  [v3 setAdaptiveVisibleRect:?];
  [v3 setAdaptiveStrategy:1];
}

void __72__PFParallaxLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setAdaptiveVisibleRect:{v3, v4, v5, v6}];
  [v7 setAdaptiveStrategy:*(a1 + 64)];
  [v7 setMaxClockShift:*(a1 + 72)];
}

- (id)intermediateWithHeadroomStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  v42 = *MEMORY[0x1E69E9840];
  intermediateCopy = intermediate;
  v7 = intermediateCopy;
  if (strategy)
  {
    if (strategy == 2)
    {
      [intermediateCopy visibleRect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v9 = v20 * 1.35;
      [(PFParallaxLayoutHelper *)self originalImageSize];
      if (v9 >= v21)
      {
        [v7 visibleRect];
        v27 = v25;
        v28 = v26;
        if (v25 == 0.0 || v26 == 0.0 || (v25 == *MEMORY[0x1E69BDDB0] ? (v29 = v26 == *(MEMORY[0x1E69BDDB0] + 8)) : (v29 = 0), v29))
        {
          v30 = 1.0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 134218496;
            v37 = v27;
            v38 = 2048;
            v39 = v28;
            v40 = 2048;
            v41 = 0x3FF0000000000000;
            _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
          }
        }

        else
        {
          v30 = fabs(v25 / v26);
        }

        [(PFParallaxLayoutHelper *)self originalImageSize];
        v8 = v31 / v30;
        [(PFParallaxLayoutHelper *)self originalImageSize];
        v9 = v32;
        [v7 visibleRect];
        v10 = v17 + (v8 - v33) * -0.5;
        v11 = 0.0;
        if (v10 < 0.0)
        {
          v10 = 0.0;
        }
      }

      else
      {
        v8 = v19 * 1.35;
        [v7 visibleRect];
        v23 = v15 - v22 * 0.35 * 0.5;
        [v7 visibleRect];
        v10 = v17 - v24 * 0.35 * 0.5;
        if (v23 >= 0.0)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0.0;
        }

        if (v10 < 0.0)
        {
          v10 = 0.0;
        }
      }
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      if (strategy == 1)
      {
        [intermediateCopy visibleRect];
        v9 = v12;
        v8 = v13;
      }
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __72__PFParallaxLayoutHelper_intermediateWithHeadroomStrategy_intermediate___block_invoke;
    v35[3] = &__block_descriptor_72_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
    *&v35[4] = v11;
    *&v35[5] = v10;
    *&v35[6] = v9;
    *&v35[7] = v8;
    v35[8] = strategy;
    strategy = [v7 updateWithConfiguration:v35];
  }

  return strategy;
}

void __72__PFParallaxLayoutHelper_intermediateWithHeadroomStrategy_intermediate___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setHeadroomStrategy:*(a1 + 8)];
}

- (id)intermediateWithInactiveStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  [intermediateCopy visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *&v137 = v7;
  *(&v137 + 1) = v9;
  *&v138 = v11;
  *(&v138 + 1) = v13;
  [intermediateCopy adaptiveVisibleRect];
  if (strategy)
  {
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v26 = *(MEMORY[0x1E695F050] + 16);
    v25 = *(MEMORY[0x1E695F050] + 24);
    if (strategy != 2)
    {
      v27 = 0;
      if (strategy == 1)
      {
        v28 = *(MEMORY[0x1E695F050] + 24);
        v29 = v18;
        v30 = v15;
        v31 = v21;
        [intermediateCopy visibleRect];
        v21 = v31;
        v19 = v30;
        v22 = v29;
        v34 = v33;
        v36 = v35;
        v27 = v37;
        v25 = v28;
      }

      else
      {
        v36 = 0;
        v34 = 0;
        v32 = 0;
      }

      goto LABEL_12;
    }

    v101 = v21;
    v102 = v15;
    v103 = v18;
    v104 = *(MEMORY[0x1E695F050] + 24);
    v117 = v16;
    v105 = *MEMORY[0x1E695F050];
    [(PFParallaxLayoutHelper *)self originalImageSize];
    v39 = v38;
    v41 = v40;
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    v113 = v43;
    v115 = v42;
    v109 = v45;
    v111 = v44;
    layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
    [layoutConfiguration unsafeRect];
    v99 = v41;
    v100 = v39;
    +[PFParallaxLayoutUtilities computeInactiveAvoidingRectForVisibleRect:acceptableFrame:unsafeRect:imageSize:considerHeadroom:newVisibleRect:](PFParallaxLayoutUtilities, "computeInactiveAvoidingRectForVisibleRect:acceptableFrame:unsafeRect:imageSize:considerHeadroom:newVisibleRect:", [intermediateCopy headroomStrategy] == 2, &v137, v8, v10, v12, v14, v115, v113, v111, v109, v47, v48, v49, v50, v39, v41);
    v116 = v51;
    v34 = v52;
    v36 = v53;
    v27 = v54;

    if ([intermediateCopy adaptiveStrategy] == 2)
    {
      [intermediateCopy adaptiveVisibleRect];
      v20 = v117;
      if (!CGRectIsNull(v140))
      {
        [intermediateCopy visibleRect];
        v56 = v55;
        v58 = v57;
        v118 = v36;
        v60 = v59;
        v62 = v61;
        [intermediateCopy adaptiveVisibleRect];
        [PFParallaxLayoutUtilities topFrameForVisibleRect:v56 adaptiveRect:v58, v60, v62, v63, v64, v65, v66];
        v110 = v68;
        v112 = v67;
        v107 = v70;
        v108 = v69;
        v135 = 0u;
        v136 = 0u;
        [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
        v114 = v34;
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v106 = v77;
        layoutConfiguration2 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
        [layoutConfiguration2 unsafeRect];
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v86 = v85;
        v87 = [intermediateCopy headroomStrategy] == 2;
        v88 = v72;
        v34 = v114;
        [PFParallaxLayoutUtilities computeInactiveAvoidingRectForVisibleRect:v87 acceptableFrame:&v135 unsafeRect:v112 imageSize:v110 considerHeadroom:v108 newVisibleRect:v107, v88, v74, v76, v106, v80, v82, v84, v86, v100, v99];
        v23 = v89;
        v24 = v90;
        v26 = v91;
        v93 = v92;

        [intermediateCopy adaptiveVisibleRect];
        v95 = v94;
        v96 = *(&v135 + 1) + *(&v136 + 1);
        [intermediateCopy visibleRect];
        v25 = v93;
        v32 = v116;
        v36 = v118;
        v22 = v96 - v97;
        v20 = v95;
        v19 = v135;
        v21 = v136;
        goto LABEL_12;
      }

      v23 = v105;
    }

    else
    {
      v23 = v105;
      v20 = v117;
    }

    v22 = v103;
    v25 = v104;
    v32 = v116;
    v21 = v101;
    v19 = v102;
LABEL_12:
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __72__PFParallaxLayoutHelper_intermediateWithInactiveStrategy_intermediate___block_invoke;
    v119[3] = &__block_descriptor_168_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
    v120 = v137;
    v121 = v138;
    v122 = v32;
    v123 = v34;
    v124 = v36;
    v125 = v27;
    v126 = v23;
    v127 = v24;
    v128 = v26;
    v129 = v25;
    v130 = v19;
    v131 = v20;
    v132 = v21;
    v133 = v22;
    strategyCopy = strategy;
    strategy = [intermediateCopy updateWithConfiguration:v119];
  }

  return strategy;
}

void __72__PFParallaxLayoutHelper_intermediateWithInactiveStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setInactiveRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v7 setAdaptiveInactiveTopRect:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
  [v7 setAdaptiveVisibleRect:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
  [v7 setInactiveStrategy:*(a1 + 160)];
}

- (id)intermediateWithParallaxStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  v7 = intermediateCopy;
  if (!strategy)
  {
    goto LABEL_26;
  }

  if (strategy != 2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (strategy == 1)
    {
      [intermediateCopy visibleRect];
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  [(PFParallaxLayoutHelper *)self initialRect];
  if (v16 < 1.0)
  {
    [(PFParallaxLayoutHelper *)self initialRect];
    if (v17 < 1.0)
    {
      _PFAssertContinueHandler();
    }

    strategy = 0;
    goto LABEL_26;
  }

  layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [layoutConfiguration parallaxPaddingPct];
  v46 = v20;
  v47 = v19;

  -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
  v48 = v22;
  v49 = v21;
  v23 = *MEMORY[0x1E695EFF8];
  v24 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 visibleRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = 0;
  v34 = 0.0;
  do
  {
    v35 = v26;
    v36 = v28;
    v37 = v30;
    v38 = v32;
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        MaxX = CGRectGetMaxX(*&v35);
        v59.origin.x = v23;
        v59.origin.y = v24;
        v59.size.height = v48;
        v59.size.width = v49;
        MaxY = CGRectGetMaxX(v59);
        goto LABEL_15;
      }

      MaxX = CGRectGetMaxY(*&v35);
      v61.origin.x = v23;
      v61.origin.y = v24;
      v61.size.height = v48;
      v61.size.width = v49;
      MaxY = CGRectGetMaxY(v61);
LABEL_18:
      v41 = v32;
      v42 = v46;
      goto LABEL_19;
    }

    if (v33)
    {
      MaxX = -CGRectGetMinY(*&v35);
      v60.origin.x = v23;
      v60.origin.y = v24;
      v60.size.height = v48;
      v60.size.width = v49;
      MaxY = -CGRectGetMinY(v60);
      goto LABEL_18;
    }

    MaxX = -CGRectGetMinX(*&v35);
    v58.origin.x = v23;
    v58.origin.y = v24;
    v58.size.height = v48;
    v58.size.width = v49;
    MaxY = -CGRectGetMinX(v58);
LABEL_15:
    v41 = v30;
    v42 = v47;
LABEL_19:
    if (MaxX + v41 * v42 > MaxY)
    {
      v43 = (MaxX - (MaxY + v42 * (MaxX - v41)) / (v42 + 1.0)) / v41;
      if (v43 > v34)
      {
        v34 = v43;
      }
    }

    ++v33;
  }

  while (v33 != 4);
  v62.origin.x = v26;
  v62.origin.y = v28;
  v62.size.width = v30;
  v62.size.height = v32;
  *&v12 = CGRectInset(v62, v30 * v34, v32 * v34);
LABEL_24:
  v11 = v12;
  v10 = v13;
  v9 = v14;
  v8 = v15;
LABEL_25:
  v44 = [PFParallaxIntermediateLayout alloc];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __72__PFParallaxLayoutHelper_intermediateWithParallaxStrategy_intermediate___block_invoke;
  v50[3] = &unk_1E7B65790;
  v52 = v11;
  v53 = v10;
  v54 = v9;
  v55 = v8;
  v51 = v7;
  strategyCopy = strategy;
  strategy = [(PFParallaxIntermediateLayout *)v44 initWithConfiguration:v50];

LABEL_26:

  return strategy;
}

void __72__PFParallaxLayoutHelper_intermediateWithParallaxStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [*(a1 + 32) salientContentRect];
  [v7 setSalientContentRect:?];
  [*(a1 + 32) inactiveRect];
  [v7 setInactiveRect:?];
  [v7 setZoomStrategy:{objc_msgSend(*(a1 + 32), "zoomStrategy")}];
  [v7 setOverlapStrategy:{objc_msgSend(*(a1 + 32), "overlapStrategy")}];
  [v7 setParallaxStrategy:*(a1 + 72)];
  [v7 setInactiveStrategy:{objc_msgSend(*(a1 + 32), "inactiveStrategy")}];
  [v7 setHeadroomStrategy:{objc_msgSend(*(a1 + 32), "headroomStrategy")}];
}

- (id)intermediateWithOverlapStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  v7 = intermediateCopy;
  v8 = 0.0;
  if (strategy > 2)
  {
    if (strategy - 3 >= 2)
    {
      height = 0.0;
      width = 0.0;
      y = 0.0;
      x = 0.0;
      if (strategy == 5)
      {
        [intermediateCopy visibleRect];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
        MaxY = CGRectGetMaxY(v112);
        if ([(PFParallaxLayoutHelper *)self canInflate])
        {
          v44 = objc_opt_class();
          [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
          [v44 inflatePersonFaceRect:?];
          MaxY = CGRectGetMaxY(v113);
        }

        layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
        [layoutConfiguration timeOverlapCheckBottom];
        v47 = v46;
        v49 = v48;
        [v7 visibleRect];
        v52 = v50 + v47 * v51;
        v53 = v49 * v51;

        v54 = v52 + v53 * 0.5 - MaxY;
        v55 = 0.0;
        v56 = fmax(v54, 0.0);
        [(PFParallaxLayoutConfiguration *)self->_layoutConfiguration maxStrechAmountNormalized];
        v58 = v42 * v57;
        [(PFParallaxLayoutHelper *)self allowedClockStretch];
        v60 = v56 - v58 * v59;
        if (v60 >= 0.0)
        {
          v55 = v60;
        }

        v114.origin.x = v36;
        v114.origin.y = v38;
        v114.size.width = v40;
        v114.size.height = v42;
        v115 = CGRectOffset(v114, 0.0, -v55);
        x = v115.origin.x;
        y = v115.origin.y;
        width = v115.size.width;
        height = v115.size.height;
        v61 = v56 - v55;
        if ([(PFParallaxLayoutHelper *)self classification]== 1 || [(PFParallaxLayoutHelper *)self classification]== 2)
        {
          [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
          v63 = v62;
          v65 = v64;
          v67 = v66;
          v101 = v68;
          layoutConfiguration2 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
          [PFParallaxLayoutUtilities widgetZoneAdjustmentForVisibleFrame:layoutConfiguration2 essentialRect:x layoutConfiguration:y, width, height, v63, v65, v67, v101];
          v71 = v70;

          v116.origin.x = x;
          v116.origin.y = y;
          v116.size.width = width;
          v116.size.height = height;
          v117 = CGRectOffset(v116, 0.0, -v71);
          x = v117.origin.x;
          y = v117.origin.y;
          width = v117.size.width;
          height = v117.size.height;
          v61 = v61 - v71;
        }

        -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
        v118.size.width = v72;
        v118.size.height = v73;
        v118.origin.x = 0.0;
        v118.origin.y = 0.0;
        v121.origin.x = x;
        v121.origin.y = y;
        v121.size.width = width;
        v121.size.height = height;
        if (!CGRectContainsRect(v118, v121))
        {
          goto LABEL_53;
        }

        v8 = v61 / height * 1.08;
        [(PFParallaxLayoutHelper *)self allowedClockStretch];
        if (v8 > v74)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_26;
    }

    [intermediateCopy visibleRect];
    v14 = v29;
    v16 = v30;
    v18 = v31;
    v20 = v32;
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    v21 = CGRectGetMaxY(v107);
    if ([(PFParallaxLayoutHelper *)self canInflate])
    {
      v33 = objc_opt_class();
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      [v33 inflatePersonFaceRect:?];
      v21 = CGRectGetMaxY(v108);
    }

    [(PFParallaxLayoutHelper *)self unsafeAreaInImageSpaceWithVisibleFrame:v14, v16, v18, v20];
    MinY = CGRectGetMinY(v109);
    goto LABEL_12;
  }

  if (!strategy)
  {
    goto LABEL_54;
  }

  if (strategy == 1)
  {
    [intermediateCopy visibleRect];
    goto LABEL_25;
  }

  height = 0.0;
  width = 0.0;
  y = 0.0;
  x = 0.0;
  if (strategy == 2)
  {
    [intermediateCopy visibleRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    v21 = CGRectGetMaxY(v105);
    if ([(PFParallaxLayoutHelper *)self canInflate])
    {
      v22 = objc_opt_class();
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      [v22 inflatePersonFaceRect:?];
      v21 = CGRectGetMaxY(v106);
    }

    layoutConfiguration3 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
    [layoutConfiguration3 timeOverlapCheckBottom];
    v25 = v16 + v24 * v20;
    v27 = v20 * v26;

    MinY = v25 + v27 * 0.5;
LABEL_12:
    v34 = v21 - MinY;
    v8 = 0.0;
    v110.origin.x = v14;
    v110.origin.y = v16;
    v110.size.width = v18;
    v110.size.height = v20;
    v111 = CGRectOffset(v110, 0.0, v34);
LABEL_25:
    x = v111.origin.x;
    y = v111.origin.y;
    width = v111.size.width;
    height = v111.size.height;
  }

LABEL_26:
  v99 = v8;
  v100 = y;
  v102 = height;
  v75 = x;
  v76 = width;
  -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
  v78 = v77;
  v80 = v79;
  [(PFParallaxLayoutHelper *)self pixelValidBounds];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  if ([v7 headroomStrategy] == 2 || (v119.origin.x = v82, v119.origin.y = v84, v119.size.width = v86, v119.size.height = v88, CGRectIsNull(v119)))
  {
    v82 = 0.0;
    v84 = 0.0;
  }

  else
  {
    v78 = v86;
    v80 = v88;
  }

  v89 = v76;
  v90 = v102 + v100;
  if (v76 + v75 >= v82 + v78)
  {
    v91 = v82 + v78;
  }

  else
  {
    v91 = v76 + v75;
  }

  if (v82 >= v91)
  {
    v91 = v82;
  }

  if (v90 >= v84 + v80)
  {
    v92 = v84 + v80;
  }

  else
  {
    v92 = v102 + v100;
  }

  if (v84 >= v92)
  {
    v92 = v84;
  }

  v93 = v75 + v91 - (v76 + v75);
  v94 = v100 + v92 - v90;
  if (v93 >= v82 + v78)
  {
    v93 = v82 + v78;
  }

  if (v82 >= v93)
  {
    v95 = v82;
  }

  else
  {
    v95 = v93;
  }

  if (v94 >= v84 + v80)
  {
    v96 = v84 + v80;
  }

  else
  {
    v96 = v94;
  }

  if (v84 >= v96)
  {
    v97 = v84;
  }

  else
  {
    v97 = v96;
  }

  v120.origin.x = v82;
  v120.origin.y = v84;
  v120.size.width = v78;
  v120.size.height = v80;
  v122.origin.x = v95;
  v122.origin.y = v97;
  v122.size.width = v89;
  v122.size.height = v102;
  if (CGRectContainsRect(v120, v122))
  {
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __71__PFParallaxLayoutHelper_intermediateWithOverlapStrategy_intermediate___block_invoke;
    v103[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
    *&v103[4] = v95;
    *&v103[5] = v97;
    *&v103[6] = v89;
    *&v103[7] = v102;
    v103[8] = strategy;
    *&v103[9] = v99;
    strategy = [v7 updateWithConfiguration:v103];
    goto LABEL_54;
  }

LABEL_53:
  strategy = 0;
LABEL_54:

  return strategy;
}

void __71__PFParallaxLayoutHelper_intermediateWithOverlapStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setOverlapStrategy:*(a1 + 64)];
  [v7 setMaxClockShift:*(a1 + 72)];
}

- (id)bestLayout:(id)layout
{
  v29 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = MEMORY[0x1E695E0F0];
  v7 = [v5 initWithArray:MEMORY[0x1E695E0F0]];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v6];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = layoutCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 spatialStrategy] == 2)
        {
          v15 = v8;
        }

        else
        {
          v15 = v7;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v16 = [(PFParallaxLayoutHelper *)self _pickBestLayout:v7 allowHeadroom:1];
  if ([(PFParallaxLayoutHelper *)self computeSpatial])
  {
    [v16 adaptiveVisibleRect];
    v19 = ceil(v17 + v18);
    [(PFParallaxLayoutHelper *)self originalImageSize];
    v21 = [(PFParallaxLayoutHelper *)self _pickBestLayout:v8 allowHeadroom:v19 > v20 + -1.0];
  }

  else
  {
    v21 = v16;
  }

  v22 = v21;

  return v22;
}

- (id)_pickBestLayout:(id)layout allowHeadroom:(BOOL)headroom
{
  v97 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  if (![layoutCopy count])
  {
    _PFAssertFailHandler();
  }

  v7 = [layoutCopy objectAtIndexedSubscript:0];
  [v7 cropScore];
  v9 = v8;
  v10 = v7;
  layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [v10 clockOverlapAcceptabilityForLayoutConfiguration:layoutConfiguration inflated:1];
  v89 = v12;

  layoutConfiguration2 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [v10 clockOverlapAcceptabilityForLayoutConfiguration:layoutConfiguration2 inflated:0];
  v88 = v14;

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v15 = layoutCopy;
  v16 = [v15 countByEnumeratingWithState:&v92 objects:v96 count:16];
  v84 = v10;
  if (!v16)
  {
    v85 = v10;
    v86 = 0;
    v18 = 0;
    v90 = v10;
    goto LABEL_85;
  }

  v17 = v16;
  v86 = 0;
  v18 = 0;
  v19 = *v93;
  v20 = 0.5;
  v85 = v10;
  v90 = v10;
  v87 = v15;
  do
  {
    v21 = 0;
    do
    {
      if (*v93 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v92 + 1) + 8 * v21);
      if ((v9 >= v20 || [*(*(&v92 + 1) + 8 * v21) zoomStrategy] == 1) && (headroom || objc_msgSend(v22, "headroomStrategy") != 2))
      {
        [v22 cropScore];
        if (v23 >= 0.45 || v9 <= 0.45)
        {
          if ([v22 zoomStrategy] == 5)
          {
            if ([v22 headroomStrategy] == 1)
            {
              if (v18)
              {
                [v22 visibleRect];
                v25 = v24;
                [v18 visibleRect];
                if (v25 > v26)
                {
                  v27 = v22;

                  v18 = v27;
                }
              }

              else
              {
                v18 = v22;
              }
            }
          }

          else if ([v22 adaptiveStrategy] == 2)
          {
            if ([v22 zoomStrategy] != 3)
            {
              [v22 adaptiveHeadroom];
              v29 = v28;
              +[PFParallaxLayoutUtilities adaptiveLayoutVerticalPriorityThreshold];
              if (v29 >= v30)
              {
                if (!v86)
                {
                  v86 = v22;
                  goto LABEL_13;
                }

                headroomStrategy = [v22 headroomStrategy];
                if (headroomStrategy == [v86 headroomStrategy])
                {
                  [v22 adaptiveHeadroom];
                  v33 = v32;
                  [v86 adaptiveHeadroom];
                  if (v33 <= v34)
                  {
                    goto LABEL_13;
                  }
                }

                else if ([v22 headroomStrategy] != 1)
                {
                  goto LABEL_13;
                }

                v60 = v22;

                v86 = v60;
              }
            }
          }

          else
          {
            if ([v22 overlapStrategy] != 5 || objc_msgSend(v22, "zoomStrategy") == 4)
            {
              v35 = v18;
              layoutConfiguration3 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
              [v22 clockOverlapAcceptabilityForLayoutConfiguration:layoutConfiguration3 inflated:1];
              v38 = v37;

              selfCopy = self;
              layoutConfiguration4 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
              [v22 clockOverlapAcceptabilityForLayoutConfiguration:layoutConfiguration4 inflated:0];
              v42 = v41;

              v43 = v89;
              v44 = vabdd_f64(v38, v89);
              v45 = vabdd_f64(v42, v88) <= 0.00000999999975 && v44 <= 0.00000999999975;
              [v22 layoutScore];
              v47 = v46;
              [v90 layoutScore];
              v49 = v38 >= 0.5;
              if (v38 >= v42)
              {
                v50 = v38;
              }

              else
              {
                v50 = v42;
              }

              if (v89 < v88)
              {
                v43 = v88;
              }

              v20 = 0.5;
              if (v89 >= 0.5 != v38 >= 0.5)
              {
LABEL_38:
                self = selfCopy;
                if (v49)
                {
                  goto LABEL_39;
                }

LABEL_40:
                v18 = v35;
                v15 = v87;
                goto LABEL_13;
              }

              if (v38 < 0.5 || v44 <= 0.00000999999975)
              {
                if (v89 >= 0.5)
                {
                  v49 = v47 > v48;
                  goto LABEL_38;
                }

                v49 = v47 > v48;
                if (v38 >= 0.5)
                {
                  goto LABEL_38;
                }

                v57 = v48;
                headroomStrategy2 = [v22 headroomStrategy];
                if (headroomStrategy2 == [v90 headroomStrategy])
                {
                  v49 = v42 >= 0.5;
                  if (v88 < 0.5 == v49)
                  {
                    goto LABEL_38;
                  }

                  v59 = v47 > v57;
                  if (!v45)
                  {
                    v59 = v50 > v43;
                  }

                  self = selfCopy;
                  if (!v59)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  self = selfCopy;
                  [(PFParallaxLayoutHelper *)selfCopy spatialPadding];
                  v62 = v61;
                  headroomStrategy3 = [v22 headroomStrategy];
                  v64 = v62 <= 0.0;
                  if (headroomStrategy3 != 1)
                  {
                    v64 = v47 > v57;
                  }

                  if (!v64)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else
              {
                self = selfCopy;
                if (v38 <= v89)
                {
                  goto LABEL_40;
                }
              }

LABEL_39:
              v51 = v22;

              v88 = v42;
              v89 = v38;
              v90 = v51;
              goto LABEL_40;
            }

            if ([(PFParallaxLayoutHelper *)self classification]== 1 || [(PFParallaxLayoutHelper *)self classification]== 2 || [(PFParallaxLayoutHelper *)self classification]== 5)
            {
              v52 = 1;
            }

            else
            {
              if ([v22 zoomStrategy] == 3)
              {
                goto LABEL_13;
              }

              v52 = 0;
            }

            [v22 maxClockShift];
            v54 = v53;
            [(PFParallaxLayoutHelper *)self allowedClockStretch];
            if (v54 > v55)
            {
              goto LABEL_13;
            }

            if (!v85)
            {
              v85 = v22;
              goto LABEL_13;
            }

            if ([v22 zoomStrategy] != 3 || objc_msgSend(v85, "zoomStrategy") == 3)
            {
              if ([v22 zoomStrategy] != 3 && objc_msgSend(v85, "zoomStrategy") == 3)
              {
                v56 = v22;

LABEL_81:
                v85 = v56;
                goto LABEL_13;
              }

              if (v52)
              {
                [v22 layoutScore];
                v66 = v65;
                v67 = v85;
                [v85 layoutScore];
              }

              else
              {
                [v22 maxClockShift];
                v66 = v69;
                v67 = v85;
                [v85 maxClockShift];
              }

              if (v66 > v68)
              {
                v56 = v22;

                goto LABEL_81;
              }
            }
          }
        }
      }

LABEL_13:
      ++v21;
    }

    while (v17 != v21);
    v70 = [v15 countByEnumeratingWithState:&v92 objects:v96 count:16];
    v17 = v70;
  }

  while (v70);
LABEL_85:

  if (([(PFParallaxLayoutHelper *)self allowedLayoutStrategies]& 2) != 0)
  {
    if (v86)
    {
      layoutConfiguration5 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
      v74 = [v86 clockOverlapAcceptableForLayoutConfiguration:layoutConfiguration5];
    }

    else
    {
      v74 = 0;
    }

    if ([(PFParallaxLayoutHelper *)self classification]== 3 || [(PFParallaxLayoutHelper *)self classification]== 4)
    {
      v74 = 0;
    }

    v72 = v85;
    if (v85)
    {
      [v85 maxClockShift];
      v76 = v75 > 0.0;
    }

    else
    {
      v76 = 0;
    }

    v77 = v86;
    if (v18)
    {
      v77 = v18;
    }

    v78 = 4;
    if (!v18)
    {
      v78 = 2;
    }

    if ((v18 != 0) | v74 & 1)
    {
      v79 = v77;
    }

    else
    {
      v79 = v85;
    }

    if ((v18 != 0) | v74 & 1)
    {
      v71 = v78;
    }

    else
    {
      v71 = 3;
    }

    if ((v18 != 0) | v74 & 1 || v76)
    {
      v80 = v79;

      v90 = v80;
    }

    else
    {
      v71 = 1;
    }
  }

  else
  {
    v71 = 1;
    v72 = v85;
  }

  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __56__PFParallaxLayoutHelper__pickBestLayout_allowHeadroom___block_invoke;
  v91[3] = &__block_descriptor_40_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
  v91[4] = v71;
  v81 = [v90 updateWithConfiguration:v91];

  v82 = v81;
  return v81;
}

- (id)intermediateWithZoomStrategy:(unint64_t)strategy intermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  [intermediateCopy visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = 0;
  if (strategy <= 1)
  {
    if (!strategy)
    {
      goto LABEL_61;
    }

    if (strategy == 1)
    {
      [intermediateCopy visibleRect];
      v8 = v16;
      v10 = v17;
      v12 = v18;
      v14 = v19;
    }

    goto LABEL_9;
  }

  if (strategy - 2 < 2)
  {
    [intermediateCopy visibleRect];
    if (v21 < 1.0 || ([(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable], v22 < 1.0))
    {
      [intermediateCopy visibleRect];
      if (v23 < 1.0)
      {
        goto LABEL_18;
      }

      goto LABEL_60;
    }

    [(PFParallaxLayoutHelper *)self pixelEffectivePreferred];
    v28 = v27;
    [intermediateCopy visibleRect];
    layoutType = self->_layoutType;
    v31 = v28 / v30;
    if (strategy == 2)
    {
      [PFParallaxLayoutHelper targetZoomPercentWithLayoutType:layoutType];
    }

    else
    {
      [PFParallaxLayoutHelper closeupZoomPercentWithLayoutType:layoutType];
    }

    v33 = v32 / v31;
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    v36 = v34 + v35 * 0.5;
LABEL_30:
    if (v33 >= 1.0)
    {
      [PFParallaxLayoutHelper targetZoomFactorLimitWithLayoutType:self->_layoutType];
      if (v33 >= v49)
      {
        v20 = v49;
      }

      else
      {
        v20 = v33;
      }

      [intermediateCopy visibleRect];
      v12 = v50 * (1.0 / v20);
      v14 = v51 * (1.0 / v20);
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      v54 = v52 + v53 * 0.5;
      [intermediateCopy visibleRect];
      v57 = v55 + v56 * 0.5 - v36;
      [intermediateCopy visibleRect];
      v82 = v36 + v57 / v58 * v14 + v14 * -0.5;
      v83 = v54 + v12 * -0.5;
      -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [intermediateCopy headroomStrategy]);
      v81 = v59;
      v61 = v60;
      [(PFParallaxLayoutHelper *)self pixelValidBounds];
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      if ([intermediateCopy headroomStrategy] == 2 || (v88.origin.x = v63, v88.origin.y = v65, v88.size.width = v67, v88.size.height = v69, CGRectIsNull(v88)))
      {
        v63 = 0.0;
        v65 = 0.0;
        v70 = v81;
      }

      else
      {
        v70 = v67;
        v61 = v69;
      }

      v71 = v14 + v82;
      if (v12 + v83 >= v63 + v70)
      {
        v72 = v63 + v70;
      }

      else
      {
        v72 = v12 + v83;
      }

      if (v63 >= v72)
      {
        v72 = v63;
      }

      if (v71 >= v65 + v61)
      {
        v73 = v65 + v61;
      }

      else
      {
        v73 = v14 + v82;
      }

      if (v65 >= v73)
      {
        v73 = v65;
      }

      v74 = v83 + v72 - (v12 + v83);
      v75 = v82 + v73 - v71;
      if (v74 >= v63 + v70)
      {
        v74 = v63 + v70;
      }

      v8 = v63 >= v74 ? v63 : v74;
      v76 = v75 >= v65 + v61 ? v65 + v61 : v75;
      v10 = v65 >= v76 ? v65 : v76;
      v77 = v63;
      v78 = v65;
      v79 = v61;
      v89.origin.x = v8;
      v89.origin.y = v10;
      v89.size.width = v12;
      v89.size.height = v14;
      if (CGRectContainsRect(*(&v70 - 2), v89))
      {
        goto LABEL_10;
      }
    }

    goto LABEL_60;
  }

  if (strategy != 4)
  {
    if (strategy == 5)
    {
      goto LABEL_61;
    }

LABEL_9:
    v20 = 1.0;
LABEL_10:
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __68__PFParallaxLayoutHelper_intermediateWithZoomStrategy_intermediate___block_invoke;
    v84[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
    *&v84[4] = v8;
    *&v84[5] = v10;
    *&v84[6] = v12;
    *&v84[7] = v14;
    v84[8] = strategy;
    *&v84[9] = v20;
    v15 = [intermediateCopy updateWithConfiguration:v84];
    goto LABEL_61;
  }

  [intermediateCopy visibleRect];
  if (v24 >= 1.0)
  {
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    if (v25 >= 1.0)
    {
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      MaxY = CGRectGetMaxY(v86);
      if ([(PFParallaxLayoutHelper *)self canInflate])
      {
        v38 = objc_opt_class();
        [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
        [v38 inflatePersonFaceRect:?];
        MaxY = CGRectGetMaxY(v87);
      }

      -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [intermediateCopy headroomStrategy]);
      v40 = v39;
      v41 = (v39 - MaxY) / v39;
      layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
      [layoutConfiguration timeOverlapCheckBottom];
      v45 = 1.0 - (v43 + v44 * 0.5);

      v46 = v45 / v41;
      v47 = (1.0 - v45) / (1.0 - v41);
      v48 = v45 / v41 <= v47;
      if (v45 / v41 < v47)
      {
        v46 = (1.0 - v45) / (1.0 - v41);
      }

      v33 = v46 * 1.03;
      if (v48)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v40;
      }

      goto LABEL_30;
    }
  }

  [intermediateCopy visibleRect];
  if (v26 < 1.0)
  {
LABEL_18:
    _PFAssertContinueHandler();
  }

LABEL_60:
  v15 = 0;
LABEL_61:

  return v15;
}

void __68__PFParallaxLayoutHelper_intermediateWithZoomStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setZoomStrategy:*(a1 + 64)];
  [v7 setZoomFactor:*(a1 + 72)];
}

- (BOOL)canInflate
{
  classification = [(PFParallaxLayoutHelper *)self classification];
  if (classification != 1)
  {
    LOBYTE(classification) = [(PFParallaxLayoutHelper *)self classification]== 2;
  }

  return classification;
}

- (double)computeCropScoreForIntermediate:(id)intermediate
{
  intermediateCopy = intermediate;
  -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [intermediateCopy headroomStrategy]);
  v6 = v5;
  v8 = v7;
  [intermediateCopy visibleRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v6;
  v18 = v8;
  [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(PFParallaxLayoutHelper *)self pixelEffectivePreferred];
  [PFCropUtilities scoreForCropRect:v17 sourcePixelWidth:v18 sourcePixelHeight:v10 sourceEssentialAreaRect:v12 sourceSecondaryEssentialAreaRect:v14, v16, v20, v22, v24, v26, v27, v28, v29, v30];
  return result;
}

- (CGRect)unsafeAreaInImageSpaceWithVisibleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutConfiguration = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [layoutConfiguration unsafeRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = x + v9 * width;
  v17 = y + v11 * height;
  v18 = width * v13;
  v19 = height * v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGSize)imageSizeWithHeadroomStrategy:(unint64_t)strategy
{
  if (strategy)
  {
    if (strategy == 2)
    {
      [(PFParallaxLayoutHelper *)self extendedImageSize];
    }

    else if (strategy == 1)
    {
      [(PFParallaxLayoutHelper *)self originalImageSize];
    }
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)extendedImageSize
{
  width = self->_originalImageSize.width;
  v3 = self->_originalImageSize.height * 1.35;
  result.height = v3;
  result.width = width;
  return result;
}

- (double)initWithPosterClassification:(double)classification initialRect:(double)rect imageSize:(double)size effectiveAcceptableRect:(double)acceptableRect effectivePreferredRect:(double)preferredRect validBoundsNormalized:(uint64_t)normalized headroomFeasible:(uint64_t)feasible hasTopEdgeContact:(char)self0 computeSpatial:(char)self1 spatialPadding:(char)self2 layoutType:(uint64_t)self3 allowedLayoutStrategies:(uint64_t)self4 layoutConfiguration:(double)self5
{
  v39 = a30;
  v47.receiver = self;
  v47.super_class = PFParallaxLayoutHelper;
  v40 = objc_msgSendSuper2(&v47, sel_init);
  *(v40 + 2) = feasible;
  v40[10] = a2;
  v40[11] = classification;
  v40[12] = rect;
  v40[13] = size;
  v40[8] = acceptableRect;
  v40[9] = preferredRect;
  v41 = *MEMORY[0x1E695EFF8];
  v42 = *(MEMORY[0x1E695EFF8] + 8);
  v40[14] = *MEMORY[0x1E695EFF8] + a25 * acceptableRect;
  v40[15] = v42 + a26 * preferredRect;
  v40[16] = acceptableRect * a27;
  v40[17] = preferredRect * a28;
  v40[18] = v41 + a17 * acceptableRect;
  v40[19] = v42 + a18 * preferredRect;
  v40[20] = acceptableRect * a19;
  v40[21] = preferredRect * a20;
  v40[22] = v41 + a21 * acceptableRect;
  v40[23] = v42 + a22 * preferredRect;
  v40[24] = acceptableRect * a23;
  v40[25] = preferredRect * a24;
  v43 = *(v40 + 7);
  *(v40 + 7) = v39;

  *(v40 + 3) = type;
  *(v40 + 8) = contact;
  *(v40 + 9) = spatial;
  *(v40 + 4) = a29;
  *(v40 + 10) = padding;
  v40[5] = 1.0;
  *(v40 + 6) = strategies;
  return v40;
}

+ (CGRect)inflatePersonFaceRect:(CGRect)result
{
  v3 = result.size.height * 1.5;
  result.size.height = v3;
  return result;
}

+ (double)scoreBonusOverlapStretchWithLayoutType:(unint64_t)type
{
  result = dbl_1B36A1EA0[type == 1];
  if (type == 2)
  {
    return 0.0;
  }

  return result;
}

+ (double)scoreBonusAdaptiveWithLayoutType:(unint64_t)type
{
  result = dbl_1B36A1EB0[type == 1];
  if (type == 2)
  {
    return 0.0;
  }

  return result;
}

+ (double)scoreBonusInactiveWithLayoutType:(unint64_t)type
{
  if (type == 3)
  {
    return *&_scoreBonusInactive;
  }

  result = 0.0;
  if (!type)
  {
    return *&_scoreBonusInactive;
  }

  return result;
}

+ (double)scoreBonusOverlapTargetWithLayoutType:(unint64_t)type
{
  if (type == 3)
  {
    return *&_scoreBonusOverlapTarget;
  }

  result = 0.25;
  if (!type)
  {
    return *&_scoreBonusOverlapTarget;
  }

  return result;
}

+ (double)scoreBonusZoomNoneWithLayoutType:(unint64_t)type
{
  result = 0.2;
  if (type - 1 >= 2)
  {
    return 0.0;
  }

  return result;
}

+ (double)scoreBonusZoomTargetWithLayoutType:(unint64_t)type
{
  if (type != 3 && type)
  {
    return 0.1;
  }

  else
  {
    return *&_scoreBonusZoomTarget;
  }
}

+ (double)scoreBonusZoomHeadroomWithLayoutType:(unint64_t)type
{
  if (type == 3)
  {
    return *&_scoreBonusZoomHeadroom;
  }

  result = 0.0;
  if (!type)
  {
    return *&_scoreBonusZoomHeadroom;
  }

  return result;
}

+ (double)targetZoomFactorLimitWithLayoutType:(unint64_t)type
{
  if (type == 2)
  {
    return 1.0;
  }

  if (type)
  {
    return 1.2;
  }

  return *&_targetZoomFactorLimit;
}

+ (double)closeupZoomPercentWithLayoutType:(unint64_t)type
{
  result = 0.2;
  if (type - 1 >= 2)
  {
    return 0.75;
  }

  return result;
}

+ (double)targetZoomPercentWithLayoutType:(unint64_t)type
{
  if (type != 3 && type)
  {
    return 0.1;
  }

  else
  {
    return *&_targetZoomPercent;
  }
}

@end