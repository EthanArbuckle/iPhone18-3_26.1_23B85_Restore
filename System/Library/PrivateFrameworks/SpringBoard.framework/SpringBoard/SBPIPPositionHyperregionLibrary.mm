@interface SBPIPPositionHyperregionLibrary
- (CGRect)_insetRectForEdgeInsets:(UIEdgeInsets)insets pipSize:(CGSize)size containerBounds:(CGRect)bounds;
- (CGRect)_validatedInsetRectWithinContainerBoundsWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (CGRect)_validatedMinimumPaddingAndEdgeInsetInsetRect:(SBPIPPositionGeometryContext *)rect;
- (CGRect)_validatedStashedToStashedMaximumumRectWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (NSString)description;
- (SBPIPPositionHyperregionLibrary)init;
- (id)_allUnifiedRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)_containerInsetRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)_cornersRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)_lastKnownRegionForType:(int64_t)type;
- (id)_offscreenCornersRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)_stashedLeftRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)_stashedRightRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry;
- (id)regionWithType:(int64_t)type geometry:(SBPIPPositionGeometryContext *)geometry;
- (void)_resetLastKnownRegions;
@end

@implementation SBPIPPositionHyperregionLibrary

- (SBPIPPositionHyperregionLibrary)init
{
  v5.receiver = self;
  v5.super_class = SBPIPPositionHyperregionLibrary;
  v2 = [(SBPIPPositionHyperregionLibrary *)&v5 init];
  if (v2)
  {
    if (__sb__runningInSpringBoard())
    {
      v2->_isPad = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v2->_isPad = [currentDevice userInterfaceIdiom] == 1;
    }
  }

  return v2;
}

- (NSString)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v22.receiver = self;
  v22.super_class = SBPIPPositionHyperregionLibrary;
  v4 = [(SBPIPPositionHyperregionLibrary *)&v22 description];
  v5 = vdupq_n_s64(&stru_283094718);
  v6 = *&self->_lastGeometryContext.offscreenCorners;
  v7 = vbslq_s8(vceqzq_s64(*&self->_lastCornersRegion), v5, *&self->_lastCornersRegion);
  v8 = vbslq_s8(vceqzq_s64(*&self->_lastStashedRightRegion), v5, *&self->_lastStashedRightRegion);
  v9 = vbslq_s8(vceqzq_s64(*&self->_lastContainerInsetRegion), v5, *&self->_lastContainerInsetRegion);
  v23[0] = @"Corners";
  v23[1] = @"Stashed Left";
  v23[2] = @"Stashed Right";
  v23[3] = @"Offscreen Corners";
  v24[0] = v7;
  v24[1] = v8;
  v23[4] = @"Container Inset";
  v23[5] = @"Unified";
  v24[2] = v9;
  v23[6] = @"Geometry";
  v10 = *&self->_lastGeometryContext.stashedMinimumPadding.bottom;
  v21[10] = *&self->_lastGeometryContext.stashedMinimumPadding.top;
  v21[11] = v10;
  v21[12] = v6;
  v11 = *&self->_lastGeometryContext.edgeInsets.bottom;
  v21[6] = *&self->_lastGeometryContext.edgeInsets.top;
  v21[7] = v11;
  v12 = *&self->_lastGeometryContext.minimumPadding.bottom;
  v21[8] = *&self->_lastGeometryContext.minimumPadding.top;
  v21[9] = v12;
  pipAnchorPointOffset = self->_lastGeometryContext.pipAnchorPointOffset;
  v21[2] = self->_lastGeometryContext.pipStashedSize;
  v21[3] = pipAnchorPointOffset;
  size = self->_lastGeometryContext.containerBounds.size;
  v21[4] = self->_lastGeometryContext.containerBounds.origin;
  v21[5] = size;
  pipLastSteadySize = self->_lastGeometryContext.pipLastSteadySize;
  v21[0] = self->_lastGeometryContext.pipCurrentSize;
  v21[1] = pipLastSteadySize;
  v16 = SBPIPPositionGeometryContextDescription(v21);
  v25 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v18 = [v17 description];
  v19 = [v3 stringWithFormat:@"%@\n%@", v4, v18];

  return v19;
}

- (id)regionWithType:(int64_t)type geometry:(SBPIPPositionGeometryContext *)geometry
{
  if (type <= 0)
  {
    [SBPIPPositionHyperregionLibrary regionWithType:a2 geometry:self];
  }

  v7 = *&geometry->stashedMinimumPadding.bottom;
  v80 = *&geometry->stashedMinimumPadding.top;
  v81 = v7;
  v82 = *&geometry->offscreenCorners;
  v8 = *&geometry->edgeInsets.bottom;
  v76 = *&geometry->edgeInsets.top;
  v77 = v8;
  v9 = *&geometry->minimumPadding.bottom;
  v78 = *&geometry->minimumPadding.top;
  v79 = v9;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v73 = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  origin = geometry->containerBounds.origin;
  v75 = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v71 = pipLastSteadySize;
  v13 = *&self->_lastGeometryContext.stashedMinimumPadding.bottom;
  v69[10] = *&self->_lastGeometryContext.stashedMinimumPadding.top;
  v69[11] = v13;
  v69[12] = *&self->_lastGeometryContext.offscreenCorners;
  v14 = *&self->_lastGeometryContext.edgeInsets.bottom;
  v69[6] = *&self->_lastGeometryContext.edgeInsets.top;
  v69[7] = v14;
  v15 = *&self->_lastGeometryContext.minimumPadding.bottom;
  v69[8] = *&self->_lastGeometryContext.minimumPadding.top;
  v69[9] = v15;
  v16 = self->_lastGeometryContext.pipAnchorPointOffset;
  v69[2] = self->_lastGeometryContext.pipStashedSize;
  v69[3] = v16;
  v17 = self->_lastGeometryContext.containerBounds.size;
  v69[4] = self->_lastGeometryContext.containerBounds.origin;
  v69[5] = v17;
  v18 = self->_lastGeometryContext.pipLastSteadySize;
  v69[0] = self->_lastGeometryContext.pipCurrentSize;
  v69[1] = v18;
  if ((SBPIPPositionGeometryContextIsEqualToContext(&pipCurrentSize, v69) & 1) == 0)
  {
    self->_lastGeometryContext.pipCurrentSize = geometry->pipCurrentSize;
    v19 = geometry->pipLastSteadySize;
    v20 = geometry->pipStashedSize;
    v21 = geometry->containerBounds.origin;
    self->_lastGeometryContext.pipAnchorPointOffset = geometry->pipAnchorPointOffset;
    self->_lastGeometryContext.containerBounds.origin = v21;
    self->_lastGeometryContext.pipLastSteadySize = v19;
    self->_lastGeometryContext.pipStashedSize = v20;
    v22 = geometry->containerBounds.size;
    v23 = *&geometry->edgeInsets.top;
    v24 = *&geometry->minimumPadding.top;
    *&self->_lastGeometryContext.edgeInsets.bottom = *&geometry->edgeInsets.bottom;
    *&self->_lastGeometryContext.minimumPadding.top = v24;
    self->_lastGeometryContext.containerBounds.size = v22;
    *&self->_lastGeometryContext.edgeInsets.top = v23;
    v25 = *&geometry->minimumPadding.bottom;
    v26 = *&geometry->stashedMinimumPadding.top;
    v27 = *&geometry->offscreenCorners;
    *&self->_lastGeometryContext.stashedMinimumPadding.bottom = *&geometry->stashedMinimumPadding.bottom;
    *&self->_lastGeometryContext.offscreenCorners = v27;
    *&self->_lastGeometryContext.minimumPadding.bottom = v25;
    *&self->_lastGeometryContext.stashedMinimumPadding.top = v26;
    [(SBPIPPositionHyperregionLibrary *)self _resetLastKnownRegions];
  }

  v28 = [(SBPIPPositionHyperregionLibrary *)self _lastKnownRegionForType:type];
  if (!v28)
  {
    if (type > 3)
    {
      switch(type)
      {
        case 4:
          v49 = *&geometry->stashedMinimumPadding.bottom;
          v80 = *&geometry->stashedMinimumPadding.top;
          v81 = v49;
          v82 = *&geometry->offscreenCorners;
          v50 = *&geometry->edgeInsets.bottom;
          v76 = *&geometry->edgeInsets.top;
          v77 = v50;
          v51 = *&geometry->minimumPadding.bottom;
          v78 = *&geometry->minimumPadding.top;
          v79 = v51;
          v52 = geometry->pipAnchorPointOffset;
          pipStashedSize = geometry->pipStashedSize;
          v73 = v52;
          v53 = geometry->containerBounds.size;
          origin = geometry->containerBounds.origin;
          v75 = v53;
          v54 = geometry->pipLastSteadySize;
          pipCurrentSize = geometry->pipCurrentSize;
          v71 = v54;
          v35 = [(SBPIPPositionHyperregionLibrary *)self _offscreenCornersRegionWithGeometry:&pipCurrentSize];
          v36 = 248;
          goto LABEL_19;
        case 5:
          v61 = *&geometry->stashedMinimumPadding.bottom;
          v80 = *&geometry->stashedMinimumPadding.top;
          v81 = v61;
          v82 = *&geometry->offscreenCorners;
          v62 = *&geometry->edgeInsets.bottom;
          v76 = *&geometry->edgeInsets.top;
          v77 = v62;
          v63 = *&geometry->minimumPadding.bottom;
          v78 = *&geometry->minimumPadding.top;
          v79 = v63;
          v64 = geometry->pipAnchorPointOffset;
          pipStashedSize = geometry->pipStashedSize;
          v73 = v64;
          v65 = geometry->containerBounds.size;
          origin = geometry->containerBounds.origin;
          v75 = v65;
          v66 = geometry->pipLastSteadySize;
          pipCurrentSize = geometry->pipCurrentSize;
          v71 = v66;
          v35 = [(SBPIPPositionHyperregionLibrary *)self _containerInsetRegionWithGeometry:&pipCurrentSize];
          v36 = 256;
          goto LABEL_19;
        case 6:
          v37 = *&geometry->stashedMinimumPadding.bottom;
          v80 = *&geometry->stashedMinimumPadding.top;
          v81 = v37;
          v82 = *&geometry->offscreenCorners;
          v38 = *&geometry->edgeInsets.bottom;
          v76 = *&geometry->edgeInsets.top;
          v77 = v38;
          v39 = *&geometry->minimumPadding.bottom;
          v78 = *&geometry->minimumPadding.top;
          v79 = v39;
          v40 = geometry->pipAnchorPointOffset;
          pipStashedSize = geometry->pipStashedSize;
          v73 = v40;
          v41 = geometry->containerBounds.size;
          origin = geometry->containerBounds.origin;
          v75 = v41;
          v42 = geometry->pipLastSteadySize;
          pipCurrentSize = geometry->pipCurrentSize;
          v71 = v42;
          v35 = [(SBPIPPositionHyperregionLibrary *)self _allUnifiedRegionWithGeometry:&pipCurrentSize];
          v36 = 264;
          goto LABEL_19;
      }
    }

    else
    {
      switch(type)
      {
        case 1:
          v43 = *&geometry->stashedMinimumPadding.bottom;
          v80 = *&geometry->stashedMinimumPadding.top;
          v81 = v43;
          v82 = *&geometry->offscreenCorners;
          v44 = *&geometry->edgeInsets.bottom;
          v76 = *&geometry->edgeInsets.top;
          v77 = v44;
          v45 = *&geometry->minimumPadding.bottom;
          v78 = *&geometry->minimumPadding.top;
          v79 = v45;
          v46 = geometry->pipAnchorPointOffset;
          pipStashedSize = geometry->pipStashedSize;
          v73 = v46;
          v47 = geometry->containerBounds.size;
          origin = geometry->containerBounds.origin;
          v75 = v47;
          v48 = geometry->pipLastSteadySize;
          pipCurrentSize = geometry->pipCurrentSize;
          v71 = v48;
          v35 = [(SBPIPPositionHyperregionLibrary *)self _cornersRegionWithGeometry:&pipCurrentSize];
          v36 = 224;
          goto LABEL_19;
        case 2:
          v55 = *&geometry->stashedMinimumPadding.bottom;
          v80 = *&geometry->stashedMinimumPadding.top;
          v81 = v55;
          v82 = *&geometry->offscreenCorners;
          v56 = *&geometry->edgeInsets.bottom;
          v76 = *&geometry->edgeInsets.top;
          v77 = v56;
          v57 = *&geometry->minimumPadding.bottom;
          v78 = *&geometry->minimumPadding.top;
          v79 = v57;
          v58 = geometry->pipAnchorPointOffset;
          pipStashedSize = geometry->pipStashedSize;
          v73 = v58;
          v59 = geometry->containerBounds.size;
          origin = geometry->containerBounds.origin;
          v75 = v59;
          v60 = geometry->pipLastSteadySize;
          pipCurrentSize = geometry->pipCurrentSize;
          v71 = v60;
          v35 = [(SBPIPPositionHyperregionLibrary *)self _stashedLeftRegionWithGeometry:&pipCurrentSize];
          v36 = 232;
          goto LABEL_19;
        case 3:
          v29 = *&geometry->stashedMinimumPadding.bottom;
          v80 = *&geometry->stashedMinimumPadding.top;
          v81 = v29;
          v82 = *&geometry->offscreenCorners;
          v30 = *&geometry->edgeInsets.bottom;
          v76 = *&geometry->edgeInsets.top;
          v77 = v30;
          v31 = *&geometry->minimumPadding.bottom;
          v78 = *&geometry->minimumPadding.top;
          v79 = v31;
          v32 = geometry->pipAnchorPointOffset;
          pipStashedSize = geometry->pipStashedSize;
          v73 = v32;
          v33 = geometry->containerBounds.size;
          origin = geometry->containerBounds.origin;
          v75 = v33;
          v34 = geometry->pipLastSteadySize;
          pipCurrentSize = geometry->pipCurrentSize;
          v71 = v34;
          v35 = [(SBPIPPositionHyperregionLibrary *)self _stashedRightRegionWithGeometry:&pipCurrentSize];
          v36 = 240;
LABEL_19:
          v67 = *(&self->super.isa + v36);
          *(&self->super.isa + v36) = v35;

          break;
      }
    }

    v28 = [(SBPIPPositionHyperregionLibrary *)self _lastKnownRegionForType:type];
  }

  return v28;
}

- (id)_lastKnownRegionForType:(int64_t)type
{
  if ((type - 1) <= 5)
  {
    self = *(&self->_lastGeometryContext.orientation + type);
  }

  return self;
}

- (void)_resetLastKnownRegions
{
  lastCornersRegion = self->_lastCornersRegion;
  self->_lastCornersRegion = 0;

  lastStashedLeftRegion = self->_lastStashedLeftRegion;
  self->_lastStashedLeftRegion = 0;

  lastStashedRightRegion = self->_lastStashedRightRegion;
  self->_lastStashedRightRegion = 0;

  lastOffscreenCorners = self->_lastOffscreenCorners;
  self->_lastOffscreenCorners = 0;

  lastContainerInsetRegion = self->_lastContainerInsetRegion;
  self->_lastContainerInsetRegion = 0;

  lastAllUnified = self->_lastAllUnified;
  self->_lastAllUnified = 0;
}

- (id)_cornersRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v39[4] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D76000]) initWithDimensions:2];
  v39[0] = v5;
  v6 = [objc_alloc(MEMORY[0x277D76000]) initWithDimensions:2];
  v39[1] = v6;
  v7 = [objc_alloc(MEMORY[0x277D76000]) initWithDimensions:2];
  v39[2] = v7;
  v8 = [objc_alloc(MEMORY[0x277D76000]) initWithDimensions:2];
  v39[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];

  v10 = *&geometry->stashedMinimumPadding.bottom;
  v38[10] = *&geometry->stashedMinimumPadding.top;
  v38[11] = v10;
  v38[12] = *&geometry->offscreenCorners;
  v11 = *&geometry->edgeInsets.bottom;
  v38[6] = *&geometry->edgeInsets.top;
  v38[7] = v11;
  v12 = *&geometry->minimumPadding.bottom;
  v38[8] = *&geometry->minimumPadding.top;
  v38[9] = v12;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v38[2] = geometry->pipStashedSize;
  v38[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v38[4] = geometry->containerBounds.origin;
  v38[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v38[0] = geometry->pipCurrentSize;
  v38[1] = pipLastSteadySize;
  [(SBPIPPositionHyperregionLibrary *)self _validatedInsetRectWithinContainerBoundsWithGeometry:v38];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v31 = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v21 = CGRectGetMaxY(v44);
  [(SBPIPPositionHyperregionLibrary *)self _insetRectForEdgeInsets:geometry->edgeInsets.top pipSize:geometry->edgeInsets.left containerBounds:geometry->edgeInsets.bottom, geometry->edgeInsets.right, geometry->pipCurrentSize.width, geometry->pipCurrentSize.height, *&geometry->containerBounds.origin.x, *&geometry->containerBounds.origin.y, *&geometry->containerBounds.size.width, *&geometry->containerBounds.size.height];
  if (SBRectContainsPoint())
  {
    v22 = MaxY;
  }

  else
  {
    v22 = y;
  }

  v33 = v22;
  v23 = SBRectContainsPoint();
  if (v23)
  {
    v24 = v31;
  }

  else
  {
    v24 = MaxX;
  }

  if (!v23)
  {
    v21 = y;
  }

  v25 = [v9 objectAtIndexedSubscript:0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke;
  v37[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v37[4] = x;
  *&v37[5] = y;
  [v25 _mutateValue:v37];

  v26 = [v9 objectAtIndexedSubscript:1];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke_2;
  v36[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v36[4] = x;
  *&v36[5] = v33;
  [v26 _mutateValue:v36];

  v27 = [v9 objectAtIndexedSubscript:2];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke_3;
  v35[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v35[4] = v24;
  *&v35[5] = v21;
  [v27 _mutateValue:v35];

  v28 = [v9 objectAtIndexedSubscript:3];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke_4;
  v34[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v34[4] = MaxX;
  *&v34[5] = y;
  [v28 _mutateValue:v34];

  v29 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:2];
  [v29 _setRegions:v9];

  return v29;
}

double __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __62__SBPIPPositionHyperregionLibrary__cornersRegionWithGeometry___block_invoke_4(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (id)_offscreenCornersRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  if (geometry->offscreenCorners == -1)
  {
    [(SBPIPPositionHyperregionLibrary *)a2 _offscreenCornersRegionWithGeometry:?];
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  offscreenCorners = geometry->offscreenCorners;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v6 = *&geometry->minimumPadding.top;
  v34 = *&geometry->minimumPadding.bottom;
  v7 = *&geometry->stashedMinimumPadding.bottom;
  v35 = *&geometry->stashedMinimumPadding.top;
  v36 = v7;
  v37 = *&geometry->offscreenCorners;
  origin = geometry->containerBounds.origin;
  size = geometry->containerBounds.size;
  v9 = *&geometry->edgeInsets.bottom;
  v31 = *&geometry->edgeInsets.top;
  v32 = v9;
  v33 = v6;
  pipCurrentSize = geometry->pipCurrentSize;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v28 = pipAnchorPointOffset;
  v29 = origin;
  v22 = __71__SBPIPPositionHyperregionLibrary__offscreenCornersRegionWithGeometry___block_invoke;
  v23 = &unk_2783BDBA0;
  v25 = pipCurrentSize;
  v12 = v4;
  v24 = v12;
  v13 = &v20;
  if (offscreenCorners)
  {
    v14 = 0;
    v38 = 0;
    v15 = vcnt_s8(offscreenCorners);
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.i32[0];
    do
    {
      if (((1 << v14) & offscreenCorners) != 0)
      {
        (v22)(v13);
        if (v38)
        {
          break;
        }

        --v16;
      }

      if (v14 > 0x3E)
      {
        break;
      }

      ++v14;
    }

    while (v16 > 0);
  }

  v17 = objc_alloc(MEMORY[0x277D76010]);
  v18 = [v17 initWithDimensions:{2, v20, v21}];
  [v18 _setRegions:v12];

  return v18;
}

void __71__SBPIPPositionHyperregionLibrary__offscreenCornersRegionWithGeometry___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x277D76000]) initWithDimensions:2];
  v5 = *(a1 + 64);
  v6 = *(a1 + 56) * 0.5;
  if (a2 == 8 || a2 == 2)
  {
    v7 = v6 + CGRectGetMaxX(*(a1 + 104)) + *(a1 + 192);
  }

  else
  {
    v7 = CGRectGetMinX(*(a1 + 104)) - *(a1 + 192) - v6;
  }

  v8 = v5 * 0.5;
  if (a2 == 8 || a2 == 4)
  {
    v9 = v8 + CGRectGetMaxY(*(a1 + 104)) + *(a1 + 184);
  }

  else
  {
    v9 = CGRectGetMinY(*(a1 + 104)) - *(a1 + 168) - v8;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SBPIPPositionHyperregionLibrary__offscreenCornersRegionWithGeometry___block_invoke_2;
  v10[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v10[4] = v7;
  *&v10[5] = v9;
  [v4 _mutateValue:v10];
  [*(a1 + 32) addObject:v4];
}

double __71__SBPIPPositionHyperregionLibrary__offscreenCornersRegionWithGeometry___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (id)_stashedLeftRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:2];
  v6 = *&geometry->stashedMinimumPadding.bottom;
  v25[10] = *&geometry->stashedMinimumPadding.top;
  v25[11] = v6;
  v25[12] = *&geometry->offscreenCorners;
  v7 = *&geometry->edgeInsets.bottom;
  v25[6] = *&geometry->edgeInsets.top;
  v25[7] = v7;
  v8 = *&geometry->minimumPadding.bottom;
  v25[8] = *&geometry->minimumPadding.top;
  v25[9] = v8;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v25[2] = geometry->pipStashedSize;
  v25[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v25[4] = geometry->containerBounds.origin;
  v25[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v25[0] = geometry->pipCurrentSize;
  v25[1] = pipLastSteadySize;
  [(SBPIPPositionHyperregionLibrary *)self _validatedMinimumPaddingAndEdgeInsetInsetRect:v25];
  v13 = v12;
  v15 = v14;
  v16 = geometry->pipCurrentSize.width * -0.5;
  v17 = CGRectGetMinX(geometry->containerBounds) + v16;
  v28.size.width = 0.0;
  v28.origin.x = v17;
  v28.origin.y = v13;
  v28.size.height = v15;
  MaxX = CGRectGetMaxX(v28);
  v29.size.width = 0.0;
  v29.origin.x = v17;
  v29.origin.y = v13;
  v29.size.height = v15;
  MaxY = CGRectGetMaxY(v29);
  v20 = [objc_alloc(MEMORY[0x277D76008]) initWithDimensions:2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__SBPIPPositionHyperregionLibrary__stashedLeftRegionWithGeometry___block_invoke;
  v24[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v24[4] = v17;
  *&v24[5] = v13;
  v24[6] = 0;
  *&v24[7] = v15;
  [v20 _mutateMinimumPoint:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__SBPIPPositionHyperregionLibrary__stashedLeftRegionWithGeometry___block_invoke_2;
  v23[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v23[4] = MaxX;
  *&v23[5] = MaxY;
  [v20 _mutateMaximumPoint:v23];
  v26[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v5 _setRegions:v21];

  return v5;
}

double __66__SBPIPPositionHyperregionLibrary__stashedLeftRegionWithGeometry___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __66__SBPIPPositionHyperregionLibrary__stashedLeftRegionWithGeometry___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (id)_stashedRightRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:2];
  v6 = *&geometry->stashedMinimumPadding.bottom;
  v25[10] = *&geometry->stashedMinimumPadding.top;
  v25[11] = v6;
  v25[12] = *&geometry->offscreenCorners;
  v7 = *&geometry->edgeInsets.bottom;
  v25[6] = *&geometry->edgeInsets.top;
  v25[7] = v7;
  v8 = *&geometry->minimumPadding.bottom;
  v25[8] = *&geometry->minimumPadding.top;
  v25[9] = v8;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v25[2] = geometry->pipStashedSize;
  v25[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v25[4] = geometry->containerBounds.origin;
  v25[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v25[0] = geometry->pipCurrentSize;
  v25[1] = pipLastSteadySize;
  [(SBPIPPositionHyperregionLibrary *)self _validatedMinimumPaddingAndEdgeInsetInsetRect:v25];
  v13 = v12;
  v15 = v14;
  v16 = geometry->pipCurrentSize.width * 0.5;
  v17 = v16 + CGRectGetMaxX(geometry->containerBounds);
  v28.size.width = 0.0;
  v28.origin.x = v17;
  v28.origin.y = v13;
  v28.size.height = v15;
  MaxX = CGRectGetMaxX(v28);
  v29.size.width = 0.0;
  v29.origin.x = v17;
  v29.origin.y = v13;
  v29.size.height = v15;
  MaxY = CGRectGetMaxY(v29);
  v20 = [objc_alloc(MEMORY[0x277D76008]) initWithDimensions:2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__SBPIPPositionHyperregionLibrary__stashedRightRegionWithGeometry___block_invoke;
  v24[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v24[4] = v17;
  *&v24[5] = v13;
  v24[6] = 0;
  *&v24[7] = v15;
  [v20 _mutateMinimumPoint:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__SBPIPPositionHyperregionLibrary__stashedRightRegionWithGeometry___block_invoke_2;
  v23[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v23[4] = MaxX;
  *&v23[5] = MaxY;
  [v20 _mutateMaximumPoint:v23];
  v26[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v5 _setRegions:v21];

  return v5;
}

double __67__SBPIPPositionHyperregionLibrary__stashedRightRegionWithGeometry___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __67__SBPIPPositionHyperregionLibrary__stashedRightRegionWithGeometry___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (id)_containerInsetRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:2];
  v6 = *&geometry->stashedMinimumPadding.bottom;
  v23[10] = *&geometry->stashedMinimumPadding.top;
  v23[11] = v6;
  v23[12] = *&geometry->offscreenCorners;
  v7 = *&geometry->edgeInsets.bottom;
  v23[6] = *&geometry->edgeInsets.top;
  v23[7] = v7;
  v8 = *&geometry->minimumPadding.bottom;
  v23[8] = *&geometry->minimumPadding.top;
  v23[9] = v8;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v23[2] = geometry->pipStashedSize;
  v23[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v23[4] = geometry->containerBounds.origin;
  v23[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v23[0] = geometry->pipCurrentSize;
  v23[1] = pipLastSteadySize;
  [(SBPIPPositionHyperregionLibrary *)self _validatedInsetRectWithinContainerBoundsWithGeometry:v23];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  v18 = [objc_alloc(MEMORY[0x277D76008]) initWithDimensions:2];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__SBPIPPositionHyperregionLibrary__containerInsetRegionWithGeometry___block_invoke;
  v22[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v22[4] = x;
  *&v22[5] = y;
  *&v22[6] = width;
  *&v22[7] = height;
  [v18 _mutateMinimumPoint:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__SBPIPPositionHyperregionLibrary__containerInsetRegionWithGeometry___block_invoke_2;
  v21[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v21[4] = MaxX;
  *&v21[5] = MaxY;
  [v18 _mutateMaximumPoint:v21];
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v5 _setRegions:v19];

  return v5;
}

double __69__SBPIPPositionHyperregionLibrary__containerInsetRegionWithGeometry___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __69__SBPIPPositionHyperregionLibrary__containerInsetRegionWithGeometry___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (id)_allUnifiedRegionWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D76010]) initWithDimensions:2];
  v6 = *&geometry->stashedMinimumPadding.bottom;
  v23[10] = *&geometry->stashedMinimumPadding.top;
  v23[11] = v6;
  v23[12] = *&geometry->offscreenCorners;
  v7 = *&geometry->edgeInsets.bottom;
  v23[6] = *&geometry->edgeInsets.top;
  v23[7] = v7;
  v8 = *&geometry->minimumPadding.bottom;
  v23[8] = *&geometry->minimumPadding.top;
  v23[9] = v8;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  v23[2] = geometry->pipStashedSize;
  v23[3] = pipAnchorPointOffset;
  size = geometry->containerBounds.size;
  v23[4] = geometry->containerBounds.origin;
  v23[5] = size;
  pipLastSteadySize = geometry->pipLastSteadySize;
  v23[0] = geometry->pipCurrentSize;
  v23[1] = pipLastSteadySize;
  [(SBPIPPositionHyperregionLibrary *)self _validatedStashedToStashedMaximumumRectWithGeometry:v23];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxY = CGRectGetMaxY(v27);
  v18 = [objc_alloc(MEMORY[0x277D76008]) initWithDimensions:2];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__SBPIPPositionHyperregionLibrary__allUnifiedRegionWithGeometry___block_invoke;
  v22[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v22[4] = x;
  *&v22[5] = y;
  *&v22[6] = width;
  *&v22[7] = height;
  [v18 _mutateMinimumPoint:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__SBPIPPositionHyperregionLibrary__allUnifiedRegionWithGeometry___block_invoke_2;
  v21[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v21[4] = MaxX;
  *&v21[5] = MaxY;
  [v18 _mutateMaximumPoint:v21];
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v5 _setRegions:v19];

  return v5;
}

double __65__SBPIPPositionHyperregionLibrary__allUnifiedRegionWithGeometry___block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

double __65__SBPIPPositionHyperregionLibrary__allUnifiedRegionWithGeometry___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 8) = result;
  return result;
}

- (CGRect)_validatedInsetRectWithinContainerBoundsWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v99 = *MEMORY[0x277D85DE8];
  width = geometry->pipCurrentSize.width;
  height = geometry->pipCurrentSize.height;
  x = geometry->containerBounds.origin.x;
  y = geometry->containerBounds.origin.y;
  v11 = geometry->containerBounds.size.width;
  v10 = geometry->containerBounds.size.height;
  [(SBPIPPositionHyperregionLibrary *)self _insetRectForEdgeInsets:geometry->edgeInsets.top pipSize:geometry->edgeInsets.left containerBounds:geometry->edgeInsets.bottom, geometry->edgeInsets.right, geometry->pipCurrentSize.width, height, *&x, *&y, *&v11, *&v10];
  v83 = v13;
  v84 = v12;
  v81 = v15;
  v82 = v14;
  v16 = __sb__runningInSpringBoard();
  v17 = v16;
  if (v16)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_22;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v17)
      {
        goto LABEL_22;
      }

LABEL_12:

      goto LABEL_22;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      goto LABEL_12;
    }
  }

  v100.origin.y = v83;
  v100.origin.x = v84;
  v100.size.height = v81;
  v100.size.width = v82;
  IsNull = CGRectIsNull(v100);
  v19 = IsNull;
  if (v17)
  {
    if (!IsNull)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v19)
    {
      goto LABEL_22;
    }
  }

  top = geometry->minimumPadding.top;
  left = geometry->minimumPadding.left;
  bottom = geometry->minimumPadding.bottom;
  right = geometry->minimumPadding.right;
  orientation = geometry->orientation;
  if ((orientation - 3) > 1)
  {
    if (orientation == 1)
    {
      top = geometry->edgeInsets.top;
    }

    else
    {
      bottom = geometry->edgeInsets.bottom;
    }
  }

  else if (orientation == 3)
  {
    left = geometry->edgeInsets.left;
  }

  else
  {
    right = geometry->edgeInsets.right;
  }

  v101.origin.x = x + left;
  v101.origin.y = y + top;
  v101.size.width = v11 - (right + left);
  v101.size.height = v10 - (bottom + top);
  v102 = CGRectInset(v101, width * 0.5, height * 0.5);
  v83 = v102.origin.y;
  v84 = v102.origin.x;
  v81 = v102.size.height;
  v82 = v102.size.width;
LABEL_22:
  [(SBPIPPositionHyperregionLibrary *)self _insetRectForEdgeInsets:geometry->minimumPadding.top pipSize:geometry->minimumPadding.left containerBounds:geometry->minimumPadding.bottom, geometry->minimumPadding.right, width, height, *&x, *&y, *&v11, *&v10];
  v76 = v11;
  v77 = v10;
  v79 = x;
  v80 = y;
  v78.width = width;
  v78.height = height;
  v25 = v103.origin.x;
  v26 = v103.origin.y;
  v27 = v103.size.width;
  v28 = v103.size.height;
  v118.origin.y = v83;
  v118.origin.x = v84;
  v118.size.height = v81;
  v118.size.width = v82;
  v104 = CGRectIntersection(v103, v118);
  v29 = v104.origin.x;
  v30 = v104.origin.y;
  v31 = v104.size.width;
  v32 = v104.size.height;
  v33 = CGRectIsNull(v104);
  v72 = v28;
  v73 = v27;
  if (v33)
  {
    v34 = v28;
  }

  else
  {
    v34 = v32;
  }

  if (v33)
  {
    v35 = v27;
  }

  else
  {
    v35 = v31;
  }

  v74 = v26;
  v75 = v25;
  if (v33)
  {
    v36 = v26;
  }

  else
  {
    v36 = v30;
  }

  if (v33)
  {
    v37 = v25;
  }

  else
  {
    v37 = v29;
  }

  v38 = v37;
  v39 = v36;
  v40 = v35;
  v41 = v34;
  if (CGRectIsNull(*(&v34 - 3)))
  {
    v70 = v30;
    [(SBPIPPositionHyperregionLibrary *)self _insetRectForEdgeInsets:*MEMORY[0x277D768C8] pipSize:*(MEMORY[0x277D768C8] + 8) containerBounds:*(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), v78, *&v79, *&v80, *&v76, *&v77];
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v41 = v45;
    v46 = SBLogPIP();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v109.origin.y = v83;
      v109.origin.x = v84;
      v109.size.height = v81;
      v109.size.width = v82;
      v58 = NSStringFromRect(v109);
      v110.origin.y = v74;
      v110.origin.x = v75;
      v110.size.height = v72;
      v110.size.width = v73;
      v59 = NSStringFromRect(v110);
      v60 = NSStringFromSize(v78);
      v111.origin.x = v79;
      v111.origin.y = v80;
      v111.size.width = v76;
      v111.size.height = v77;
      v61 = NSStringFromRect(v111);
      v62 = NSStringFromUIEdgeInsets(geometry->minimumPadding);
      v112.origin.x = v38;
      v112.origin.y = v39;
      v112.size.width = v40;
      v112.size.height = v41;
      v63 = NSStringFromRect(v112);
      *buf = 134219522;
      selfCopy3 = self;
      v87 = 2114;
      v88 = v58;
      v89 = 2114;
      v90 = v59;
      v91 = 2114;
      v92 = v60;
      v93 = 2114;
      v94 = v61;
      v95 = 2114;
      v96 = v62;
      v97 = 2114;
      v98 = v63;
      _os_log_error_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_ERROR, "[%p][Layout][Insets] Position Hyperregion Library falling back to maximum rect size as inset rect is still too small. Desired inset rect: %{public}@, minimum inset rect: %{public}@, pipSize: %{public}@, bounds: %{public}@, minimumPadding: %{public}@, using: %{public}@", buf, 0x48u);
    }

    v47 = v29;
    v48 = v70;
LABEL_42:

    goto LABEL_44;
  }

  v71 = v29;
  v105.origin.x = v29;
  v105.origin.y = v30;
  v105.size.width = v31;
  v105.size.height = v32;
  v48 = v30;
  if (CGRectIsNull(v105))
  {
    v46 = SBLogPIP();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v113.origin.y = v83;
      v113.origin.x = v84;
      v113.size.height = v81;
      v113.size.width = v82;
      v64 = NSStringFromRect(v113);
      v114.origin.y = v74;
      v114.origin.x = v75;
      v114.size.height = v72;
      v114.size.width = v73;
      v65 = NSStringFromRect(v114);
      v66 = NSStringFromSize(v78);
      v115.origin.x = v79;
      v115.origin.y = v80;
      v115.size.width = v76;
      v115.size.height = v77;
      v67 = NSStringFromRect(v115);
      v68 = NSStringFromUIEdgeInsets(geometry->minimumPadding);
      v116.origin.x = v38;
      v116.origin.y = v39;
      v116.size.width = v40;
      v116.size.height = v41;
      v69 = NSStringFromRect(v116);
      *buf = 134219522;
      selfCopy3 = self;
      v87 = 2114;
      v88 = v64;
      v89 = 2114;
      v90 = v65;
      v91 = 2114;
      v92 = v66;
      v93 = 2114;
      v94 = v67;
      v95 = 2114;
      v96 = v68;
      v97 = 2114;
      v98 = v69;
      _os_log_error_impl(&dword_21ED4E000, v46, OS_LOG_TYPE_ERROR, "[%p][Layout][Insets] Position Hyperregion Library couldn't satisfy required edge insets. Desired inset rect: %{public}@, minimum inset rect: %{public}@, pipSize: %{public}@, bounds: %{public}@, minimumPadding: %{public}@, using: %{public}@", buf, 0x48u);
    }

    v47 = v71;
    goto LABEL_42;
  }

  v47 = v71;
LABEL_44:
  v49 = SBLogPIP();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v106.origin.x = v38;
    v106.origin.y = v39;
    v106.size.width = v40;
    v106.size.height = v41;
    v54 = NSStringFromRect(v106);
    v55 = NSStringFromUIEdgeInsets(geometry->edgeInsets);
    v107.origin.y = v74;
    v107.origin.x = v75;
    v107.size.height = v72;
    v107.size.width = v73;
    v56 = NSStringFromRect(v107);
    v108.origin.x = v47;
    v108.origin.y = v48;
    v108.size.width = v31;
    v108.size.height = v32;
    v57 = NSStringFromRect(v108);
    *buf = 134219010;
    selfCopy3 = self;
    v87 = 2114;
    v88 = v54;
    v89 = 2114;
    v90 = v55;
    v91 = 2114;
    v92 = v56;
    v93 = 2114;
    v94 = v57;
    _os_log_debug_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEBUG, "[%p][Layout][Insets] Validated inset rect: validatedInsetRect%{public}@\t for edgeInsets{%{public}@} minimumInsetRect{%{public}@} insetsIntersection{%{public}@}", buf, 0x34u);
  }

  v50 = v38;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  result.size.height = v53;
  result.size.width = v52;
  result.origin.y = v51;
  result.origin.x = v50;
  return result;
}

- (CGRect)_validatedMinimumPaddingAndEdgeInsetInsetRect:(SBPIPPositionGeometryContext *)rect
{
  v79 = *MEMORY[0x277D85DE8];
  width = rect->pipStashedSize.width;
  height = rect->pipStashedSize.height;
  [(SBPIPPositionHyperregionLibrary *)self _insetRectForEdgeInsets:rect->stashedMinimumPadding.top pipSize:rect->stashedMinimumPadding.left containerBounds:rect->stashedMinimumPadding.bottom, rect->stashedMinimumPadding.right, width, height, *&rect->containerBounds.origin.x, *&rect->containerBounds.origin.y, *&rect->containerBounds.size.width, *&rect->containerBounds.size.height];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBPIPPositionHyperregionLibrary *)self _insetRectForEdgeInsets:rect->edgeInsets.top pipSize:rect->edgeInsets.left containerBounds:rect->edgeInsets.bottom, rect->edgeInsets.right, width, height, *&rect->containerBounds.origin.x, *&rect->containerBounds.origin.y, *&rect->containerBounds.size.width, *&rect->containerBounds.size.height];
  v92.origin.x = v15;
  v92.origin.y = v16;
  v92.size.width = v17;
  v92.size.height = v18;
  v80.origin.x = v8;
  v80.origin.y = v10;
  v80.size.width = v12;
  v80.size.height = v14;
  y = v92.origin.y;
  x = v92.origin.x;
  v51 = v92.size.height;
  v52 = v92.size.width;
  v81 = CGRectIntersection(v80, v92);
  v19 = v81.origin.x;
  v20 = v81.origin.y;
  v21 = v81.size.width;
  v22 = v81.size.height;
  IsNull = CGRectIsNull(v81);
  if (IsNull)
  {
    v24 = v8;
  }

  else
  {
    v24 = v19;
  }

  v62 = v24;
  if (IsNull)
  {
    v25 = v10;
  }

  else
  {
    v25 = v20;
  }

  v61 = v25;
  if (IsNull)
  {
    v26 = v12;
  }

  else
  {
    v26 = v21;
  }

  v60 = v26;
  if (IsNull)
  {
    v27 = v14;
  }

  else
  {
    v27 = v22;
  }

  v59 = v27;
  v82.origin.x = v19;
  v82.origin.y = v20;
  v82.size.width = v21;
  v82.size.height = v22;
  if (CGRectIsNull(v82))
  {
    v28 = SBLogPIP();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v88.origin.y = y;
      v88.origin.x = x;
      v88.size.height = v51;
      v88.size.width = v52;
      v45 = NSStringFromRect(v88);
      v89.origin.x = v8;
      v89.origin.y = v10;
      v89.size.width = v12;
      v89.size.height = v14;
      v46 = NSStringFromRect(v89);
      v47 = NSStringFromSize(rect->pipCurrentSize);
      v48 = NSStringFromRect(rect->containerBounds);
      v49 = NSStringFromUIEdgeInsets(rect->stashedMinimumPadding);
      v90.origin.y = v61;
      v90.origin.x = v62;
      v90.size.height = v59;
      v90.size.width = v60;
      v50 = NSStringFromRect(v90);
      *buf = 134219522;
      selfCopy2 = self;
      v65 = 2114;
      v66 = v45;
      v67 = 2114;
      v68 = v46;
      v69 = 2114;
      v70 = v47;
      v71 = 2114;
      v72 = v48;
      v73 = 2114;
      v74 = v49;
      v75 = 2114;
      v76 = v50;
      _os_log_error_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_ERROR, "[%p][Layout][Insets] Position Hyperregion Library couldn't satisfy required edge insets. Desired inset rect: %{public}@, stashed minimum inset rect: %{public}@, pipSize: %{public}@, bounds: %{public}@, minimumPadding: %{public}@, using: %{public}@", buf, 0x48u);
    }
  }

  if (v59 / v14 >= 0.7)
  {
    v31 = 0;
    v57 = v59;
    v58 = v61;
    v56 = v60;
    v33 = v62;
  }

  else
  {
    if (self->_isPad)
    {
      v29 = v61;
    }

    else
    {
      v29 = v10;
    }

    if (self->_isPad)
    {
      v30 = v59;
    }

    else
    {
      v30 = v14;
    }

    v57 = v30;
    v58 = v29;
    v31 = !self->_isPad;
    v32 = v60;
    if (!self->_isPad)
    {
      v32 = v12;
    }

    v56 = v32;
    v33 = v62;
    if (!self->_isPad)
    {
      v33 = v8;
    }
  }

  v55 = v33;
  v34 = SBLogPIP();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v83.origin.x = v55;
    v83.size.width = v56;
    v83.size.height = v57;
    v83.origin.y = v58;
    v39 = NSStringFromRect(v83);
    v40 = NSStringFromUIEdgeInsets(rect->edgeInsets);
    v84.origin.x = v8;
    v84.origin.y = v10;
    v84.size.width = v12;
    v84.size.height = v14;
    v41 = NSStringFromRect(v84);
    v85.origin.y = y;
    v85.origin.x = x;
    v85.size.height = v51;
    v85.size.width = v52;
    v42 = NSStringFromRect(v85);
    v86.origin.x = v19;
    v86.origin.y = v20;
    v86.size.width = v21;
    v86.size.height = v22;
    v43 = NSStringFromRect(v86);
    v87.origin.y = v61;
    v87.origin.x = v62;
    v87.size.height = v59;
    v87.size.width = v60;
    v44 = NSStringFromRect(v87);
    *buf = 134219778;
    selfCopy2 = self;
    v65 = 2114;
    v66 = v39;
    v67 = 2114;
    v68 = v40;
    v69 = 2114;
    v70 = v41;
    v71 = 2114;
    v72 = v42;
    v73 = 2114;
    v74 = v43;
    v75 = 2114;
    v76 = v44;
    v77 = 1024;
    v78 = v31;
    _os_log_debug_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEBUG, "[%p][Layout][Insets] Validated container inset rect for stashed-sized PIP: validatedInsetRect%{public}@\t for edgeInsets{%{public}@} minimumPaddingRect{%{public}@} insetRect{%{public}@} intersection{%{public}@} validatedRect{%{public}@} shouldIgnoreInsetRect{%{BOOL}u}", buf, 0x4Eu);
  }

  v35 = v55;
  v36 = v56;
  v38 = v57;
  v37 = v58;
  result.size.height = v38;
  result.size.width = v36;
  result.origin.y = v37;
  result.origin.x = v35;
  return result;
}

- (CGRect)_validatedStashedToStashedMaximumumRectWithGeometry:(SBPIPPositionGeometryContext *)geometry
{
  v6 = *&geometry->minimumPadding.bottom;
  v7 = *&geometry->stashedMinimumPadding.bottom;
  v8 = *&geometry->offscreenCorners;
  v52 = *&geometry->stashedMinimumPadding.top;
  v53 = v7;
  v54 = v8;
  size = geometry->containerBounds.size;
  v10 = *&geometry->edgeInsets.bottom;
  v11 = *&geometry->minimumPadding.top;
  v48 = *&geometry->edgeInsets.top;
  v49 = v10;
  v50 = v11;
  v51 = v6;
  pipLastSteadySize = geometry->pipLastSteadySize;
  pipAnchorPointOffset = geometry->pipAnchorPointOffset;
  origin = geometry->containerBounds.origin;
  pipStashedSize = geometry->pipStashedSize;
  v45 = pipAnchorPointOffset;
  width = geometry->pipLastSteadySize.width;
  v46 = origin;
  v47 = size;
  pipCurrentSize = geometry->pipCurrentSize;
  v43 = pipLastSteadySize;
  [(SBPIPPositionHyperregionLibrary *)self _validatedMinimumPaddingAndEdgeInsetInsetRect:&pipCurrentSize];
  v17 = v16;
  height = v18;
  v20 = width * 0.5;
  v21 = CGRectGetMinX(geometry->containerBounds) - width * 0.5;
  v22 = width + CGRectGetWidth(geometry->containerBounds);
  v23 = __sb__runningInSpringBoard();
  if (!v23)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if (![currentDevice userInterfaceIdiom] && SBFEffectiveHomeButtonType() == 2)
    {
      p_orientation = &geometry->orientation;
      v27 = geometry->orientation - 3;

      if (v27 >= 2)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_13:

    goto LABEL_19;
  }

  v24 = v23;
  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    goto LABEL_19;
  }

  if (SBFEffectiveHomeButtonType() != 2)
  {
    if (v24)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  p_orientation = &geometry->orientation;
  orientation = geometry->orientation;
  if (v24)
  {
    if ((orientation - 3) > 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if ((orientation - 3) > 1)
  {
    goto LABEL_19;
  }

LABEL_15:
  orientation = *p_orientation;
LABEL_16:
  if (orientation == 3)
  {
    v21 = v20;
  }

  v22 = CGRectGetWidth(geometry->containerBounds);
LABEL_19:
  x = geometry->pipAnchorPointOffset.x;
  y = geometry->pipAnchorPointOffset.y;
  if (x != *MEMORY[0x277CBF348] || y != *(MEMORY[0x277CBF348] + 8))
  {
    v30 = -fabs(x);
    v31 = -fabs(y);
    v55.origin.x = v21;
    v55.origin.y = v17;
    v55.size.width = v22;
    v55.size.height = height;
    v56 = CGRectInset(v55, v30, v31);
    v21 = v56.origin.x;
    v17 = v56.origin.y;
    v22 = v56.size.width;
    height = v56.size.height;
  }

  v32 = *&geometry->stashedMinimumPadding.bottom;
  v52 = *&geometry->stashedMinimumPadding.top;
  v53 = v32;
  v54 = *&geometry->offscreenCorners;
  v33 = *&geometry->edgeInsets.bottom;
  v48 = *&geometry->edgeInsets.top;
  v49 = v33;
  v34 = *&geometry->minimumPadding.bottom;
  v50 = *&geometry->minimumPadding.top;
  v51 = v34;
  v35 = geometry->pipAnchorPointOffset;
  pipStashedSize = geometry->pipStashedSize;
  v45 = v35;
  v36 = geometry->containerBounds.size;
  v46 = geometry->containerBounds.origin;
  v47 = v36;
  v37 = geometry->pipLastSteadySize;
  pipCurrentSize = geometry->pipCurrentSize;
  v43 = v37;
  [(SBPIPPositionHyperregionLibrary *)self _validatedInsetRectWithinContainerBoundsWithGeometry:&pipCurrentSize];
  v59.origin.x = v38;
  v59.origin.y = v39;
  v59.size.width = v40;
  v59.size.height = v41;
  v57.origin.x = v21;
  v57.origin.y = v17;
  v57.size.width = v22;
  v57.size.height = height;
  return CGRectUnion(v57, v59);
}

- (CGRect)_insetRectForEdgeInsets:(UIEdgeInsets)insets pipSize:(CGSize)size containerBounds:(CGRect)bounds
{
  v5 = insets.top + bounds.origin.y;
  v6 = bounds.size.width - (insets.left + insets.right);
  v7.size.height = bounds.size.height - (insets.top + insets.bottom);
  v7.origin.x = insets.left + bounds.origin.x;
  v7.origin.y = v5;
  v7.size.width = v6;
  return CGRectInset(v7, size.width * 0.5, size.height * 0.5);
}

- (void)regionWithType:(uint64_t)a1 geometry:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPPositionHyperregionLibrary.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"regionType > 0"}];
}

- (void)_offscreenCornersRegionWithGeometry:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPPositionHyperregionLibrary.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"geometry.offscreenCorners != UIRectCornerAllCorners"}];
}

@end