@interface SBDisplayItemLayoutAttributes
+ (double)normalizedPointForPoint:(CGFloat)a3 inBounds:(CGFloat)a4;
+ (id)layoutAttributesWithProtobufRepresentation:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (CGSize)_sizeForAttributedSize:(SBDisplayItemAttributedSize *)a3 inBounds:(CGRect)a4 defaultSize:(CGSize)a5 screenEdgePadding:(double)a6;
- (NSString)debugDescription;
- (SBDisplayItemLayoutAttributes)init;
- (SBPBDisplayItemLayoutAttributes)protobufRepresentation;
- (double)attributedSize;
- (double)attributedUserSizeBeforeOverlapping;
- (double)attributesByModifyingNormalizedCenter:(double)a3;
- (double)attributesByModifyingUnoccludedPeekingCenter:(double)a3;
- (double)centerInBounds:(double)a3;
- (double)normalizedCenter;
- (double)sizeInBounds:(uint64_t)a1 defaultSize:screenEdgePadding:;
- (double)slideOverConfiguration;
- (double)unoccludedPeekingCenter;
- (double)userSizeBeforeOverlappingInBounds:(uint64_t)a1 defaultSize:screenEdgePadding:;
- (id)_initWithContentOrientation:(int64_t)a3 lastInteractionTime:(int64_t)a4 sizingPolicy:(int64_t)a5 attributedSize:(SBDisplayItemAttributedSize *)a6 tileConfiguration:(SBDisplayItemTileConfiguration *)a7 slideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)a8 normalizedCenter:(CGPoint)a9 cascaded:(BOOL)a10 occlusionState:(int64_t)a11 attributedUserSizeBeforeOverlapping:(SBDisplayItemAttributedSize *)a12 unoccludedPeekingCenter:(CGPoint)a13 positionIsSystemManaged:(BOOL)a14 version:(int64_t)a15;
- (id)attributesByModifyingAttributedSize:(id)a1;
- (id)attributesByModifyingAttributedUserSizeBeforeOverlapping:(id)a1;
- (id)attributesByModifyingContentOrientation:(id)a1;
- (id)attributesByModifyingLastInteractionTime:(id)a1;
- (id)attributesByModifyingOcclusionState:(id)a1;
- (id)attributesByModifyingSizingPolicy:(id)a1;
- (id)attributesByModifyingSlideOverConfiguration:(id)a1;
- (id)attributesByModifyingTileConfiguration:(id)a1;
- (id)attributesByModifyingVersion:(id)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithPlistRepresentation:(void *)a1;
- (id)plistRepresentation;
- (id)succinctDescription;
- (uint64_t)initWithContentOrientation:(uint64_t)a3 lastInteractionTime:(uint64_t)a4 sizingPolicy:(uint64_t)a5 attributedSize:(char)a6 normalizedCenter:(double)a7 cascaded:(double)a8;
- (uint64_t)initWithContentOrientation:(uint64_t)result lastInteractionTime:sizingPolicy:attributedSize:tileConfiguration:slideOverConfiguration:normalizedCenter:cascaded:occlusionState:attributedUserSizeBeforeOverlapping:unoccludedPeekingCenter:positionIsSystemManaged:;
- (uint64_t)isCascaded;
- (uint64_t)isPositionSystemManaged;
- (uint64_t)tileConfiguration;
- (unsigned)attributesByModifyingCascaded:(unsigned __int8 *)a1;
- (unsigned)attributesByModifyingPositionIsSystemManaged:(unsigned __int8 *)a1;
- (void)_appendPropertiesToBuilder:(id)a3;
@end

@implementation SBDisplayItemLayoutAttributes

- (double)attributedSize
{
  if (a1)
  {
    v2 = *(a1 + 176);
    *a2 = *(a1 + 160);
    *(a2 + 16) = v2;
    v3 = *(a1 + 192);
    *(a2 + 32) = v3;
    *(a2 + 48) = *(a1 + 208);
  }

  else
  {
    *(a2 + 48) = 0;
    *&v3 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *&v3;
}

- (SBDisplayItemLayoutAttributes)init
{
  v4[0] = 0;
  v4[1] = 0;
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = v2;
  v7 = 0;
  return [(SBDisplayItemLayoutAttributes *)self initWithContentOrientation:0 lastInteractionTime:0 sizingPolicy:v4 attributedSize:0 normalizedCenter:0.0 cascaded:0.0];
}

- (uint64_t)tileConfiguration
{
  if (result)
  {
    *a2 = *(result + 96);
    *(a2 + 16) = *(result + 112);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (double)slideOverConfiguration
{
  if (a1)
  {
    v2 = *(a1 + 120);
    v3 = *(a1 + 136);
    *a2 = v2;
    *(a2 + 16) = v3;
    *(a2 + 32) = *(a1 + 152);
  }

  else
  {
    *(a2 + 32) = 0;
    *&v2 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v2;
}

+ (double)normalizedPointForPoint:(CGFloat)a3 inBounds:(CGFloat)a4
{
  objc_opt_self();
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  v11 = a1 / CGRectGetWidth(v13);
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetHeight(v14);
  return v11;
}

- (id)_initWithContentOrientation:(int64_t)a3 lastInteractionTime:(int64_t)a4 sizingPolicy:(int64_t)a5 attributedSize:(SBDisplayItemAttributedSize *)a6 tileConfiguration:(SBDisplayItemTileConfiguration *)a7 slideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)a8 normalizedCenter:(CGPoint)a9 cascaded:(BOOL)a10 occlusionState:(int64_t)a11 attributedUserSizeBeforeOverlapping:(SBDisplayItemAttributedSize *)a12 unoccludedPeekingCenter:(CGPoint)a13 positionIsSystemManaged:(BOOL)a14 version:(int64_t)a15
{
  y = a13.y;
  x = a13.x;
  v22 = a9.y;
  v23 = a9.x;
  v61.receiver = self;
  v61.super_class = SBDisplayItemLayoutAttributes;
  v25 = [(SBDisplayItemLayoutAttributes *)&v61 init];
  v26 = v25;
  if (v25)
  {
    *(v25 + 3) = a3;
    *(v25 + 4) = a4;
    *(v25 + 5) = a5;
    private_opaqueSize = a6->_private_opaqueSize;
    origin = a6->referenceBounds.origin;
    size = a6->referenceBounds.size;
    *(v25 + 26) = a6->semanticSizeType;
    *(v25 + 11) = origin;
    *(v25 + 12) = size;
    *(v25 + 10) = private_opaqueSize;
    v30 = *&a7->tileRole;
    *(v25 + 14) = *&a7->customSize.height;
    *(v25 + 6) = v30;
    v31 = *&a8->corner;
    v32 = a8->size;
    *(v25 + 19) = *&a8->isActive;
    *(v25 + 136) = v32;
    *(v25 + 120) = v31;
    *(v25 + 8) = v23;
    *(v25 + 9) = v22;
    *(v25 + 7) = a11;
    v33 = a12->_private_opaqueSize;
    v34 = a12->referenceBounds.origin;
    v35 = a12->referenceBounds.size;
    *(v25 + 33) = a12->semanticSizeType;
    *(v25 + 248) = v35;
    *(v25 + 232) = v34;
    *(v25 + 216) = v33;
    *(v25 + 10) = x;
    *(v25 + 11) = y;
    v25[17] = a14;
    *(v25 + 6) = a15;
    v25[16] = a10;
    v36 = [MEMORY[0x277CF0C40] builder];
    v37 = [v36 appendInteger:*(v26 + 3)];
    v38 = [v36 appendInteger:*(v26 + 4)];
    v39 = [v36 appendInteger:*(v26 + 5)];
    v40 = [v36 appendCGSize:{v26[20], v26[21]}];
    v41 = [v36 appendCGRect:{v26[22], v26[23], v26[24], v26[25]}];
    v42 = [v36 appendInteger:*(v26 + 26)];
    v43 = [v36 appendInteger:*(v26 + 12)];
    v44 = [v36 appendCGSize:{v26[13], v26[14]}];
    v45 = [v36 appendInteger:*(v26 + 15)];
    v46 = [v36 appendCGFloat:v26[16]];
    v47 = [v36 appendCGSize:{v26[17], v26[18]}];
    v48 = [v36 appendBool:*(v26 + 152)];
    v49 = [v36 appendBool:*(v26 + 153)];
    v50 = [v36 appendBool:*(v26 + 154)];
    v51 = [v36 appendCGPoint:{v26[8], v26[9]}];
    v52 = [v36 appendBool:*(v26 + 16)];
    v53 = [v36 appendInteger:*(v26 + 7)];
    v54 = [v36 appendCGSize:{v26[27], v26[28]}];
    v55 = [v36 appendCGRect:{v26[29], v26[30], v26[31], v26[32]}];
    v56 = [v36 appendInteger:*(v26 + 33)];
    v57 = [v36 appendCGPoint:{v26[10], v26[11]}];
    v58 = [v36 appendBool:*(v26 + 17)];
    v59 = [v36 appendInteger:*(v26 + 6)];
    *(v26 + 1) = [v36 hash];
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBDisplayItemLayoutAttributes alloc];
  contentOrientation = self->_contentOrientation;
  lastInteractionTime = self->_lastInteractionTime;
  cascaded = self->_cascaded;
  version = self->_version;
  occlusionState = self->_occlusionState;
  positionIsSystemManaged = self->_positionIsSystemManaged;
  sizingPolicy = self->_sizingPolicy;
  origin = self->_attributedSize.referenceBounds.origin;
  v24[0] = self->_attributedSize._private_opaqueSize;
  v24[1] = origin;
  v24[2] = self->_attributedSize.referenceBounds.size;
  semanticSizeType = self->_attributedSize.semanticSizeType;
  tileConfiguration = self->_tileConfiguration;
  size = self->_slideOverConfiguration.size;
  v21[0] = *&self->_slideOverConfiguration.corner;
  v21[1] = size;
  v22 = *&self->_slideOverConfiguration.isActive;
  x = self->_normalizedCenter.x;
  size.width = self->_normalizedCenter.y;
  v15 = self->_attributedUserSizeBeforeOverlapping.referenceBounds.origin;
  v19[0] = self->_attributedUserSizeBeforeOverlapping._private_opaqueSize;
  v19[1] = v15;
  v19[2] = self->_attributedUserSizeBeforeOverlapping.referenceBounds.size;
  v20 = self->_attributedUserSizeBeforeOverlapping.semanticSizeType;
  LOBYTE(v18) = positionIsSystemManaged;
  LOBYTE(v17) = cascaded;
  return [(SBDisplayItemLayoutAttributes *)v4 _initWithContentOrientation:contentOrientation lastInteractionTime:lastInteractionTime sizingPolicy:sizingPolicy attributedSize:v24 tileConfiguration:&tileConfiguration slideOverConfiguration:v21 normalizedCenter:x cascaded:size.width occlusionState:self->_unoccludedPeekingCenter.x attributedUserSizeBeforeOverlapping:self->_unoccludedPeekingCenter.y unoccludedPeekingCenter:v17 positionIsSystemManaged:occlusionState version:v19, v18, version];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    if (v4 && [(SBDisplayItemLayoutAttributes *)v4 sb_isDisplayItemLayoutAttributes])
    {
      v6 = v5;
      v7 = v6;
      if (self->_lastInteractionTime != v6->_lastInteractionTime)
      {
        goto LABEL_20;
      }

      if (self->_sizingPolicy != v6->_sizingPolicy)
      {
        goto LABEL_20;
      }

      origin = self->_attributedSize.referenceBounds.origin;
      private_opaqueSize = self->_attributedSize._private_opaqueSize;
      v21 = origin;
      size = self->_attributedSize.referenceBounds.size;
      semanticSizeType = self->_attributedSize.semanticSizeType;
      v9 = v6->_attributedSize.referenceBounds.origin;
      v16 = v6->_attributedSize._private_opaqueSize;
      v17 = v9;
      v18 = v6->_attributedSize.referenceBounds.size;
      v19 = v6->_attributedSize.semanticSizeType;
      if (!SBEqualDisplayItemAttributedSizes(&private_opaqueSize, &v16))
      {
        goto LABEL_20;
      }

      v10 = 0;
      if (self->_normalizedCenter.x != v7->_normalizedCenter.x || self->_normalizedCenter.y != v7->_normalizedCenter.y)
      {
        goto LABEL_21;
      }

      if (self->_cascaded != v7->_cascaded)
      {
        goto LABEL_20;
      }

      private_opaqueSize = *&self->_tileConfiguration.tileRole;
      v21.x = self->_tileConfiguration.customSize.height;
      v16 = *&v7->_tileConfiguration.tileRole;
      v17.x = v7->_tileConfiguration.customSize.height;
      if (!SBEqualDisplayItemTileConfigurations(&private_opaqueSize, &v16))
      {
        goto LABEL_20;
      }

      v11 = self->_slideOverConfiguration.size;
      private_opaqueSize = *&self->_slideOverConfiguration.corner;
      v21 = v11;
      size.width = *&self->_slideOverConfiguration.isActive;
      v12 = v7->_slideOverConfiguration.size;
      v16 = *&v7->_slideOverConfiguration.corner;
      v17 = v12;
      v18.width = *&v7->_slideOverConfiguration.isActive;
      if (!SBEqualDisplayItemSlideOverConfigurations(&private_opaqueSize, &v16))
      {
        goto LABEL_20;
      }

      if (self->_occlusionState != v7->_occlusionState)
      {
        goto LABEL_20;
      }

      v13 = self->_attributedUserSizeBeforeOverlapping.referenceBounds.origin;
      private_opaqueSize = self->_attributedUserSizeBeforeOverlapping._private_opaqueSize;
      v21 = v13;
      size = self->_attributedUserSizeBeforeOverlapping.referenceBounds.size;
      semanticSizeType = self->_attributedUserSizeBeforeOverlapping.semanticSizeType;
      v14 = v7->_attributedUserSizeBeforeOverlapping.referenceBounds.origin;
      v16 = v7->_attributedUserSizeBeforeOverlapping._private_opaqueSize;
      v17 = v14;
      v18 = v7->_attributedUserSizeBeforeOverlapping.referenceBounds.size;
      v19 = v7->_attributedUserSizeBeforeOverlapping.semanticSizeType;
      if (!SBEqualDisplayItemAttributedSizes(&private_opaqueSize, &v16))
      {
        goto LABEL_20;
      }

      v10 = 0;
      if (self->_unoccludedPeekingCenter.x != v7->_unoccludedPeekingCenter.x || self->_unoccludedPeekingCenter.y != v7->_unoccludedPeekingCenter.y)
      {
        goto LABEL_21;
      }

      if (self->_positionIsSystemManaged == v7->_positionIsSystemManaged)
      {
        v10 = self->_version == v7->_version;
      }

      else
      {
LABEL_20:
        v10 = 0;
      }

LABEL_21:

      goto LABEL_22;
    }

    v10 = 0;
  }

LABEL_22:

  return v10;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __49__SBDisplayItemLayoutAttributes_debugDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendBodySectionWithName:&stru_283094718 multilinePrefix:&stru_283094718 block:&v7];
  v5 = [v4 build];

  return v5;
}

+ (id)layoutAttributesWithProtobufRepresentation:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v49 = 0uLL;
    v50 = 0;
    v3 = [(SBPBDisplayItemLayoutAttributes *)v2 preferredTileRole];
    v4 = [(SBPBDisplayItemLayoutAttributes *)v2 tileConfigurationCustomSizeWidth];
    v5 = [(SBPBDisplayItemLayoutAttributes *)v2 tileConfigurationCustomSizeHeight];
    SBDisplayItemTileConfigurationMake(v3, &v49, v4, v5);
    v6 = [(SBPBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v7 = [(SBPBSlideOverConfiguration *)v6 slideOverCorner];
    v8 = [(SBPBSlideOverConfiguration *)v6 slideOverYOffsetFromCorner];
    v9 = [(SBPBSlideOverConfiguration *)v6 slideOverSizeWidth];
    v10 = [(SBPBSlideOverConfiguration *)v6 slideOverSizeHeight];
    v11 = [(SBPBSlideOverConfiguration *)v6 slideOverIsActive];
    v12 = [(SBPBSlideOverConfiguration *)v6 slideOverIsStashed];
    v13 = [(SBPBSlideOverConfiguration *)v6 slideOverDodgesDock];
    SBDisplayItemSlideOverConfigurationMake(v7, v11, v12, v13, &v46, v8, v9, v10);
    v39 = [(SBPBDisplayItemLayoutAttributes *)v2 sizeWidth];
    v38 = [(SBPBDisplayItemLayoutAttributes *)v2 sizeHeight];
    v14 = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsWidthForSize];
    v15 = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsHeightForSize];
    v16 = [(SBPBDisplayItemLayoutAttributes *)v2 semanticSizeTypeForSize];
    v17 = [(SBPBDisplayItemLayoutAttributes *)v2 userSizeBeforeOverlappingInBoundsWidth];
    v18 = [(SBPBDisplayItemLayoutAttributes *)v2 userSizeBeforeOverlappingInBoundsHeight];
    v19 = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsWidthBeforeOverlapping];
    v20 = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsHeightBeforeOverlapping];
    v21 = [(SBPBDisplayItemLayoutAttributes *)v2 semanticSizeTypeBeforeOverlapping];
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = v19;
    v52.size.height = v20;
    IsEmpty = CGRectIsEmpty(v52);
    if (IsEmpty)
    {
      v23 = v14;
    }

    else
    {
      v23 = v19;
    }

    if (IsEmpty)
    {
      v24 = v15;
    }

    else
    {
      v24 = v20;
    }

    v25 = [SBDisplayItemLayoutAttributes alloc];
    v26 = [(SBPBDisplayItemLayoutAttributes *)v2 contentOrientation];
    v27 = [(SBPBDisplayItemLayoutAttributes *)v2 lastInteractionTime];
    v28 = [(SBPBDisplayItemLayoutAttributes *)v2 sizingPolicy];
    v29 = [(SBPBDisplayItemLayoutAttributes *)v2 centerX];
    v30 = [(SBPBDisplayItemLayoutAttributes *)v2 centerY];
    v31 = [(SBPBDisplayItemLayoutAttributes *)v2 cascaded];
    IsSystem = [(SBPBDisplayItemLayoutAttributes *)v2 positionIsSystemManaged];
    v33 = [(SBPBDisplayItemLayoutAttributes *)v2 version];
    *v45 = v39;
    *&v45[1] = v38;
    v45[2] = 0;
    v45[3] = 0;
    *&v45[4] = v14;
    *&v45[5] = v15;
    v45[6] = v16;
    v43 = v49;
    v44 = v50;
    v41[0] = v46;
    v41[1] = v47;
    v42 = v48;
    *v40 = v17;
    *&v40[1] = v18;
    v40[2] = 0;
    v40[3] = 0;
    *&v40[4] = v23;
    *&v40[5] = v24;
    v40[6] = v21;
    LOBYTE(v37) = IsSystem;
    LOBYTE(v36) = v31;
    v34 = [(SBDisplayItemLayoutAttributes *)v25 _initWithContentOrientation:v26 lastInteractionTime:v27 sizingPolicy:v28 attributedSize:v45 tileConfiguration:&v43 slideOverConfiguration:v41 normalizedCenter:v29 cascaded:v30 occlusionState:0.0 attributedUserSizeBeforeOverlapping:0.0 unoccludedPeekingCenter:v36 positionIsSystemManaged:0 version:v40, v37, v33];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)succinctDescription
{
  v2 = [(SBDisplayItemLayoutAttributes *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDisplayItemLayoutAttributes *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(SBDisplayItemLayoutAttributes *)self _appendPropertiesToBuilder:v4];

  return v4;
}

- (void)_appendPropertiesToBuilder:(id)a3
{
  v4 = a3;
  v5 = BSInterfaceOrientationDescription();
  [v4 appendString:v5 withName:@"contentOrientation"];

  lastInteractionTime = self->_lastInteractionTime;
  if (lastInteractionTime)
  {
    v7 = [v4 appendInteger:lastInteractionTime withName:@"lastInteractionTime"];
  }

  else
  {
    [v4 appendString:@"never" withName:@"lastInteractionTime"];
  }

  v8 = NSStringFromDisplayItemSizingPolicy(self->_sizingPolicy);
  [v4 appendString:v8 withName:@"sizingPolicy"];

  v10 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = self->_attributedSize._private_opaqueSize.width == *MEMORY[0x277CBF3A8] && self->_attributedSize._private_opaqueSize.height == v9;
  if (v11 && !self->_attributedSize.semanticSizeType)
  {
    [v4 appendString:@"unspecified" withName:@"size"];
  }

  else
  {
    origin = self->_attributedSize.referenceBounds.origin;
    private_opaqueSize = self->_attributedSize._private_opaqueSize;
    v28 = origin;
    size = self->_attributedSize.referenceBounds.size;
    semanticSizeType = self->_attributedSize.semanticSizeType;
    v13 = SBDisplayItemAttributedSizeDescription(&private_opaqueSize);
    [v4 appendString:v13 withName:@"size"];
  }

  x = self->_normalizedCenter.x;
  y = self->_normalizedCenter.y;
  if (x == 0.0 && y == 0.0)
  {
    v16 = @"unspecified";
  }

  else
  {
    v16 = NSStringFromCGPoint(*&x);
  }

  [v4 appendString:v16 withName:@"center"];
  private_opaqueSize = *&self->_tileConfiguration.tileRole;
  v28.x = self->_tileConfiguration.customSize.height;
  v17 = SBStringFromDisplayItemTileConfiguration(&private_opaqueSize);
  [v4 appendString:v17 withName:@"tileConfiguration"];

  v18 = self->_slideOverConfiguration.size;
  private_opaqueSize = *&self->_slideOverConfiguration.corner;
  v28 = v18;
  size.width = *&self->_slideOverConfiguration.isActive;
  v19 = NSStringFromDisplayItemSlideOverConfiguration(&private_opaqueSize);
  [v4 appendString:v19 withName:@"slideOverConfiguration"];

  v20 = [v4 appendBool:self->_cascaded withName:@"cascaded"];
  v21 = SBOcclusionStateDescription(self->_occlusionState);
  [v4 appendString:v21 withName:@"occlusionState"];

  if (self->_attributedUserSizeBeforeOverlapping._private_opaqueSize.width == v10 && self->_attributedUserSizeBeforeOverlapping._private_opaqueSize.height == v9 && !self->_attributedUserSizeBeforeOverlapping.semanticSizeType)
  {
    [v4 appendString:@"unspecified" withName:@"userConfiguredSizeBeforeOverlapping"];
  }

  else
  {
    v22 = self->_attributedUserSizeBeforeOverlapping.referenceBounds.origin;
    private_opaqueSize = self->_attributedUserSizeBeforeOverlapping._private_opaqueSize;
    v28 = v22;
    size = self->_attributedUserSizeBeforeOverlapping.referenceBounds.size;
    semanticSizeType = self->_attributedUserSizeBeforeOverlapping.semanticSizeType;
    v23 = SBDisplayItemAttributedSizeDescription(&private_opaqueSize);
    [v4 appendString:v23 withName:@"userConfiguredSizeBeforeOverlapping"];
  }

  v24 = [v4 appendBool:self->_positionIsSystemManaged withName:@"positionIsSystemManaged"];
  if (self->_unoccludedPeekingCenter.x == 0.0 && self->_unoccludedPeekingCenter.y == 0.0)
  {
    [v4 appendString:@"unspecified" withName:@"unoccludedPeekingCenter"];
  }

  else
  {
    v25 = [v4 appendPoint:@"unoccludedPeekingCenter" withName:?];
  }

  v26 = [v4 appendInteger:self->_version withName:@"version"];
}

- (CGSize)_sizeForAttributedSize:(SBDisplayItemAttributedSize *)a3 inBounds:(CGRect)a4 defaultSize:(CGSize)a5 screenEdgePadding:(double)a6
{
  height = a5.height;
  width = a5.width;
  v8 = a4.size.height;
  v9 = a4.size.width;
  v11 = a4.size.height;
  v12 = a4.size.width;
  if (!CGRectIsEmpty(a3->referenceBounds))
  {
    v12 = a3->referenceBounds.size.width;
    v11 = a3->referenceBounds.size.height;
  }

  if (BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat())
  {
    v13 = v12 * a3->_private_opaqueSize.width;
    v14 = v11 * a3->_private_opaqueSize.height;
  }

  else
  {
    v13 = a3->_private_opaqueSize.width;
    v14 = a3->_private_opaqueSize.height;
  }

  if (BSFloatEqualToFloat() && BSFloatEqualToFloat())
  {
    semanticSizeType = a3->semanticSizeType;
    if (semanticSizeType <= 4)
    {
      if (semanticSizeType == 4)
      {
        v16 = width;
      }

      else
      {
        v16 = v13;
      }

      if (semanticSizeType == 3)
      {
        v16 = v9;
        v17 = v8;
      }

      else
      {
        v17 = v14;
      }

      if (semanticSizeType == 2)
      {
        v18 = v8;
      }

      else
      {
        v18 = v14;
      }

      if (semanticSizeType == 1)
      {
        v19 = v9;
      }

      else
      {
        v19 = v13;
      }

      if (semanticSizeType == 1)
      {
        v18 = v14;
      }

      if (semanticSizeType <= 2)
      {
        v13 = v19;
      }

      else
      {
        v13 = v16;
      }

      if (semanticSizeType <= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = v17;
      }
    }

    else if (semanticSizeType <= 6)
    {
      if (semanticSizeType == 6)
      {
        v20 = width;
      }

      else
      {
        v20 = v13;
      }

      if (semanticSizeType == 6)
      {
        v21 = height;
      }

      else
      {
        v21 = v14;
      }

      if (semanticSizeType == 5)
      {
        v14 = height;
      }

      else
      {
        v13 = v20;
        v14 = v21;
      }
    }

    else
    {
      switch(semanticSizeType)
      {
        case 7:
          v13 = v9 + a6 * -2.0;
          break;
        case 8:
          v14 = v8 + a6 * -2.0;
          break;
        case 9:
          v13 = v9 - a6 * 2.0;
          v14 = v8 - a6 * 2.0;
          break;
      }
    }

    goto LABEL_50;
  }

  if (!BSFloatLessThanFloat() || !BSFloatGreaterThanFloat() || (BSFloatGreaterThanFloat() & 1) == 0)
  {
LABEL_50:
    width = v9;
    height = v8;
  }

  v22 = fmax(v13, 0.0);
  if (width <= v22)
  {
    v22 = width;
  }

  v23 = fmax(v14, 0.0);
  if (height <= v23)
  {
    v23 = height;
  }

  result.height = v23;
  result.width = v22;
  return result;
}

- (double)attributedUserSizeBeforeOverlapping
{
  if (a1)
  {
    v2 = *(a1 + 232);
    *a2 = *(a1 + 216);
    *(a2 + 16) = v2;
    v3 = *(a1 + 248);
    *(a2 + 32) = v3;
    *(a2 + 48) = *(a1 + 264);
  }

  else
  {
    *(a2 + 48) = 0;
    *&v3 = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *&v3;
}

- (uint64_t)initWithContentOrientation:(uint64_t)a3 lastInteractionTime:(uint64_t)a4 sizingPolicy:(uint64_t)a5 attributedSize:(char)a6 normalizedCenter:(double)a7 cascaded:(double)a8
{
  if (result)
  {
    v15 = result;
    SBDisplayItemTileConfigurationMakeNotTiled(v27);
    SBDisplayItemSlideOverConfigurationNone(v26);
    v22[0] = 0;
    v22[1] = 0;
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v23 = *MEMORY[0x277CBF3A0];
    v24 = v16;
    v25 = 0;
    v17 = *(a5 + 16);
    v20[0] = *a5;
    v20[1] = v17;
    v20[2] = *(a5 + 32);
    v21 = *(a5 + 48);
    LOBYTE(v19) = 1;
    LOBYTE(v18) = a6;
    return [v15 _initWithContentOrientation:a2 lastInteractionTime:a3 sizingPolicy:a4 attributedSize:v20 tileConfiguration:v27 slideOverConfiguration:v26 normalizedCenter:a7 cascaded:a8 occlusionState:0.0 attributedUserSizeBeforeOverlapping:0.0 unoccludedPeekingCenter:v18 positionIsSystemManaged:0 version:{v22, v19, 1000}];
  }

  return result;
}

- (uint64_t)initWithContentOrientation:(uint64_t)result lastInteractionTime:sizingPolicy:attributedSize:tileConfiguration:slideOverConfiguration:normalizedCenter:cascaded:occlusionState:attributedUserSizeBeforeOverlapping:unoccludedPeekingCenter:positionIsSystemManaged:
{
  if (result)
  {
    OUTLINED_FUNCTION_16();
    LOBYTE(v6) = v1;
    return [v2 _initWithContentOrientation:v3 lastInteractionTime:v6 sizingPolicy:v5 attributedSize:v4 tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
  }

  return result;
}

- (double)sizeInBounds:(uint64_t)a1 defaultSize:screenEdgePadding:
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_18();
  }

  v1 = *(a1 + 176);
  v3[0] = *(a1 + 160);
  v3[1] = v1;
  v3[2] = *(a1 + 192);
  v4 = *(a1 + 208);
  [a1 _sizeForAttributedSize:v3 inBounds:? defaultSize:? screenEdgePadding:?];
  return result;
}

- (double)centerInBounds:(double)a3
{
  if (a1)
  {
    return a4 * *(a1 + 64);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

- (double)userSizeBeforeOverlappingInBounds:(uint64_t)a1 defaultSize:screenEdgePadding:
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_18();
  }

  v1 = *(a1 + 232);
  v3[0] = *(a1 + 216);
  v3[1] = v1;
  v3[2] = *(a1 + 248);
  v4 = *(a1 + 264);
  [a1 _sizeForAttributedSize:v3 inBounds:? defaultSize:? screenEdgePadding:?];
  return result;
}

- (id)attributesByModifyingContentOrientation:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v4 + 24) == v5)
    {
      a1 = v2;
    }

    else
    {
      v6 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_4_7();
      a1 = [v7 _initWithContentOrientation:v1 lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingLastInteractionTime:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 32) == v4)
    {
      a1 = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_2_16();
      a1 = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingSizingPolicy:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 40) == v4)
    {
      a1 = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_4_7();
      a1 = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingAttributedSize:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    v6 = *v5 == *(v4 + 160) && v5[1] == *(v4 + 168);
    if (v6 && CGRectEqualToRect(*(v2 + 16), *(v1 + 176)) && *(v2 + 48) == *(v1 + 208))
    {
      a1 = v1;
    }

    else
    {
      v7 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_2_16();
      a1 = [v8 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingTileConfiguration:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    v31 = *v4;
    v32 = *(v4 + 2);
    v23 = *(v5 + 96);
    v24 = *(v5 + 112);
    if (SBEqualDisplayItemTileConfigurations(&v31, &v23))
    {
      a1 = v1;
    }

    else
    {
      v6 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      v29 = *v2;
      v30 = *(v2 + 2);
      v7 = *(v1 + 136);
      v27 = *(v1 + 120);
      v28 = v7;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12_1();
      a1 = OUTLINED_FUNCTION_17(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, v25, v26);
    }

    v3 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingSlideOverConfiguration:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    v5 = *(v4 + 16);
    v32[0] = *v4;
    v32[1] = v5;
    v33 = *(v4 + 32);
    v7 = *(v6 + 136);
    v25 = *(v6 + 120);
    v26 = v7;
    v27 = *(v6 + 152);
    if (SBEqualDisplayItemSlideOverConfigurations(v32, &v25))
    {
      a1 = v1;
    }

    else
    {
      v8 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      v30 = *(v1 + 96);
      v31 = *(v1 + 112);
      v9 = v2[1];
      v28 = *v2;
      v29 = v9;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_12_1();
      a1 = OUTLINED_FUNCTION_17(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
    }

    v3 = vars8;
  }

  return a1;
}

- (double)attributesByModifyingNormalizedCenter:(double)a3
{
  if (a1)
  {
    if (a2 == a1[8] && a3 == a1[9])
    {
      a1 = a1;
    }

    else
    {
      v7 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_2_16();
      a1 = [v8 _initWithContentOrientation:a2 lastInteractionTime:a3 sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return a1;
}

- (unsigned)attributesByModifyingCascaded:(unsigned __int8 *)a1
{
  if (a1)
  {
    v3 = a2;
    if (a1[16] == a2)
    {
      a1 = a1;
    }

    else
    {
      v4 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_16();
      LOBYTE(v9) = v3;
      a1 = [v5 _initWithContentOrientation:v9 lastInteractionTime:v6 sizingPolicy:v7 attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingOcclusionState:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 56) == v4)
    {
      a1 = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_4_7();
      a1 = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingAttributedUserSizeBeforeOverlapping:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    v6 = *v5 == *(v4 + 216) && v5[1] == *(v4 + 224);
    if (v6 && CGRectEqualToRect(*(v2 + 16), *(v1 + 232)) && *(v2 + 48) == *(v1 + 264))
    {
      a1 = v1;
    }

    else
    {
      v7 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_2_16();
      a1 = [v8 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return a1;
}

- (double)attributesByModifyingUnoccludedPeekingCenter:(double)a3
{
  if (a1)
  {
    if (a2 == a1[10] && a3 == a1[11])
    {
      a1 = a1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2_16();
      a1 = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return a1;
}

- (unsigned)attributesByModifyingPositionIsSystemManaged:(unsigned __int8 *)a1
{
  if (a1)
  {
    if (a1[17] == a2)
    {
      a1 = a1;
    }

    else
    {
      v3 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_2_16();
      a1 = [v4 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)attributesByModifyingVersion:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 48) == v4)
    {
      a1 = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_2_16();
      a1 = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return a1;
}

- (id)initWithPlistRepresentation:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);

  if (v5)
  {
    v104 = v2;
    objc_opt_class();
    [v5 objectForKey:@"contentOrientation"];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9_2();
    v8 = SBSafeCast(v6, v7);

    v103 = v8;
    if (v8)
    {
      v100 = [v8 integerValue];
    }

    else
    {
      v100 = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"lastInteractionTime"];
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_9_2();
    v12 = SBSafeCast(v10, v11);

    v102 = v12;
    if (v12)
    {
      v99 = [v12 integerValue];
    }

    else
    {
      v99 = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"sizingPolicy"];
    objc_claimAutoreleasedReturnValue();
    v13 = OUTLINED_FUNCTION_9_2();
    v15 = SBSafeCast(v13, v14);

    v101 = v15;
    if (v15)
    {
      v97 = [v15 integerValue];
    }

    else
    {
      v97 = 0;
    }

    v16 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    objc_opt_class();
    [v5 objectForKey:@"size"];
    objc_claimAutoreleasedReturnValue();
    v18 = OUTLINED_FUNCTION_9_2();
    v20 = SBSafeCast(v18, v19);

    size.width = 0.0;
    size.height = 0.0;
    v106.width = v16;
    v106.height = v17;
    if (v20)
    {
      v106.width = v16;
      v106.height = v17;
      if (CGSizeMakeWithDictionaryRepresentation(v20, &size))
      {
        v106 = size;
      }
    }

    v21 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v24 = *(MEMORY[0x277CBF3A0] + 24);
    objc_opt_class();
    [v5 objectForKey:@"referenceBounds"];
    objc_claimAutoreleasedReturnValue();
    v25 = OUTLINED_FUNCTION_9_2();
    v27 = SBSafeCast(v25, v26);

    memset(&rect, 0, sizeof(rect));
    *&v105[16] = v23;
    *&v105[24] = v24;
    *v105 = v21;
    *&v105[8] = v22;
    if (v27)
    {
      *&v105[16] = v23;
      *&v105[24] = v24;
      *v105 = v21;
      *&v105[8] = v22;
      if (CGRectMakeWithDictionaryRepresentation(v27, &rect))
      {
        *v105 = rect;
      }
    }

    v96 = v27;
    objc_opt_class();
    [v5 objectForKey:@"semanticSizeType"];
    objc_claimAutoreleasedReturnValue();
    v28 = OUTLINED_FUNCTION_9_2();
    v30 = SBSafeCast(v28, v29);

    v95 = v30;
    if (v30)
    {
      v92 = [v30 integerValue];
    }

    else
    {
      v92 = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"preferredTileRole"];
    objc_claimAutoreleasedReturnValue();
    v31 = OUTLINED_FUNCTION_9_2();
    v33 = SBSafeCast(v31, v32);

    v94 = v33;
    if (v33)
    {
      v33 = [v33 integerValue];
    }

    width = 1.79769313e308;
    height = 1.79769313e308;
    v36 = objc_opt_class();
    v37 = [v5 objectForKey:@"customTileConfigSize"];
    v38 = SBSafeCast(v36, v37);

    v127.width = 0.0;
    v127.height = 0.0;
    v93 = v38;
    if (v38 && CGSizeMakeWithDictionaryRepresentation(v38, &v127))
    {
      width = v127.width;
      height = v127.height;
    }

    v125 = 0uLL;
    v126 = 0;
    SBDisplayItemTileConfigurationMake(v33, &v125, width, height);
    objc_opt_class();
    [v5 objectForKey:@"slideOverCorner"];
    objc_claimAutoreleasedReturnValue();
    v39 = OUTLINED_FUNCTION_9_2();
    v41 = SBSafeCast(v39, v40);

    v91 = v41;
    if (v41)
    {
      v42 = [v41 integerValue];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v5 objectForKey:@"slideOverYOffsetFromCorner"];
    [v43 floatValue];
    v45 = v44;

    v46 = objc_opt_class();
    v47 = [v5 objectForKey:@"slideOverConfigSize"];
    v48 = SBSafeCast(v46, v47);

    v124.height = 0.0;
    v124.width = 0.0;
    v90 = v48;
    if (v48 && CGSizeMakeWithDictionaryRepresentation(v48, &v124))
    {
      v16 = v124.width;
      v17 = v124.height;
    }

    v49 = [v5 objectForKey:@"slideOverIsActive"];
    v50 = v49 != 0;

    v51 = [v5 objectForKey:@"slideOverIsStashed"];
    v52 = v51 != 0;

    v53 = [v5 objectForKey:@"slideOverDodgesDock"];
    v54 = v53 != 0;

    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    SBDisplayItemSlideOverConfigurationMake(v42, v50, v52, v54, &v121, v45, v16, v17);
    objc_opt_class();
    [v5 objectForKey:@"center"];
    objc_claimAutoreleasedReturnValue();
    v55 = OUTLINED_FUNCTION_9_2();
    v57 = SBSafeCast(v55, v56);

    point.x = 0.0;
    point.y = 0.0;
    x = 0.0;
    if (v57)
    {
      y = 0.0;
      if (CGPointMakeWithDictionaryRepresentation(v57, &point))
      {
        x = point.x;
        y = point.y;
      }
    }

    else
    {
      y = 0.0;
    }

    objc_opt_class();
    [v5 objectForKey:@"cascaded"];
    objc_claimAutoreleasedReturnValue();
    v60 = OUTLINED_FUNCTION_9_2();
    v62 = SBSafeCast(v60, v61);

    if (v62)
    {
      v88 = [v62 BOOLValue];
    }

    else
    {
      v88 = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"userConfiguredSizeBeforeOverlapping"];
    objc_claimAutoreleasedReturnValue();
    v63 = OUTLINED_FUNCTION_9_2();
    v65 = SBSafeCast(v63, v64);

    v119.width = 0.0;
    v119.height = 0.0;
    v67 = v106.height;
    v66 = v106.width;
    v98 = v20;
    if (v20)
    {
      v67 = v106.height;
      v66 = v106.width;
      if (CGSizeMakeWithDictionaryRepresentation(v65, &v119))
      {
        v66 = v119.width;
        v67 = v119.height;
      }
    }

    v89 = v65;
    objc_opt_class();
    [v5 objectForKey:@"referenceBoundsBeforeOverlapping"];
    objc_claimAutoreleasedReturnValue();
    v68 = OUTLINED_FUNCTION_9_2();
    v70 = SBSafeCast(v68, v69);

    memset(&v118, 0, sizeof(v118));
    if (v70 && CGRectMakeWithDictionaryRepresentation(v70, &v118))
    {
      v21 = v118.origin.x;
      v22 = v118.origin.y;
      v23 = v118.size.width;
      v24 = v118.size.height;
    }

    v130.origin.x = v21;
    v130.origin.y = v22;
    v130.size.width = v23;
    v130.size.height = v24;
    if (CGRectIsEmpty(v130))
    {
      v21 = *v105;
      v22 = *&v105[8];
      v23 = *&v105[16];
      v24 = *&v105[24];
    }

    objc_opt_class();
    [v5 objectForKey:@"semanticSizeTypeBeforeOverlapping"];
    objc_claimAutoreleasedReturnValue();
    v71 = OUTLINED_FUNCTION_9_2();
    v73 = SBSafeCast(v71, v72);

    if (v73)
    {
      v74 = [v73 integerValue];
    }

    else
    {
      v74 = 0;
    }

    v75 = objc_opt_class();
    v76 = [v5 objectForKey:@"positionIsSystemManaged"];
    v77 = SBSafeCast(v75, v76);

    if (v77)
    {
      v78 = [v77 BOOLValue];
    }

    else
    {
      v78 = 0;
    }

    v79 = objc_opt_class();
    v80 = [v5 objectForKey:@"version"];
    v81 = SBSafeCast(v79, v80);

    if (v81)
    {
      v82 = [v81 integerValue];
    }

    else
    {
      v82 = 0;
    }

    v83 = *MEMORY[0x277CBF348];
    v84 = *(MEMORY[0x277CBF348] + 8);
    v112 = v106;
    v113 = *v105;
    v114 = *&v105[8];
    v115 = *&v105[16];
    v116 = *&v105[24];
    v117 = v92;
    v110 = v125;
    v111 = v126;
    v108[0] = v121;
    v108[1] = v122;
    v109 = v123;
    *v107 = v66;
    *&v107[1] = v67;
    *&v107[2] = v21;
    *&v107[3] = v22;
    *&v107[4] = v23;
    *&v107[5] = v24;
    v107[6] = v74;
    LOBYTE(v87) = v78;
    LOBYTE(v86) = v88;
    v2 = [v104 _initWithContentOrientation:v100 lastInteractionTime:v99 sizingPolicy:v97 attributedSize:&v112 tileConfiguration:&v110 slideOverConfiguration:v108 normalizedCenter:x cascaded:y occlusionState:v83 attributedUserSizeBeforeOverlapping:v84 unoccludedPeekingCenter:v86 positionIsSystemManaged:0 version:{v107, v87, v82}];

    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)plistRepresentation
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 24)];
    if (v3)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
    if (v4)
    {
      [v2 setObject:v4 forKey:@"lastInteractionTime"];
    }

    v40 = v3;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    if (v5)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v39 = v5;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(a1 + 160));
    if (DictionaryRepresentation)
    {
      v7 = DictionaryRepresentation;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v7);
    }

    v8 = CGRectCreateDictionaryRepresentation(*(a1 + 176));
    if (v8)
    {
      v9 = v8;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v9);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 208)];
    if (v10)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v38 = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 96)];
    if (v11)
    {
      [v2 setObject:v11 forKey:@"preferredTileRole"];
    }

    v12 = CGSizeCreateDictionaryRepresentation(*(a1 + 104));
    if (v12)
    {
      v13 = v12;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v13);
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 120)];
    if (v14)
    {
      [v2 setObject:v14 forKey:@"slideOverCorner"];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 128)];
    if (v15)
    {
      [v2 setObject:v15 forKey:@"slideOverYOffsetFromCorner"];
    }

    v16 = CGSizeCreateDictionaryRepresentation(*(a1 + 136));
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v17);
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 152)];
    v19 = v18 != 0;

    v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
    OUTLINED_FUNCTION_14_0();

    v21 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 153)];
    v22 = v21 != 0;

    v23 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    OUTLINED_FUNCTION_14_0();

    v24 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 154)];
    v25 = v24 != 0;

    v26 = [MEMORY[0x277CCABB0] numberWithBool:v25];
    OUTLINED_FUNCTION_14_0();

    v27 = CGPointCreateDictionaryRepresentation(*(a1 + 64));
    if (v27)
    {
      v28 = v27;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v28);
    }

    v29 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 16)];
    [v2 setObject:v29 forKey:@"cascaded"];
    v30 = CGSizeCreateDictionaryRepresentation(*(a1 + 216));
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v31);
    }

    v32 = CGRectCreateDictionaryRepresentation(*(a1 + 232));
    if (v32)
    {
      v33 = v32;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v33);
    }

    v34 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 264)];
    if (v34)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v35 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 17)];
    [v2 setObject:v35 forKey:@"positionIsSystemManaged"];
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    [v2 setObject:v36 forKey:@"version"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (SBPBDisplayItemLayoutAttributes)protobufRepresentation
{
  if (a1)
  {
    v2 = objc_alloc_init(SBPBDisplayItemLayoutAttributes);
    [(SBPBDisplayItemLayoutAttributes *)v2 setContentOrientation:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setLastInteractionTime:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setSizingPolicy:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setSizeWidth:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setSizeHeight:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setReferenceBoundsWidthForSize:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setReferenceBoundsHeightForSize:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setSemanticSizeTypeForSize:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setPreferredTileRole:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setTileConfigurationCustomSizeWidth:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setTileConfigurationCustomSizeHeight:?];
    v3 = objc_alloc_init(SBPBSlideOverConfiguration);
    [(SBPBSlideOverConfiguration *)v3 setSlideOverCorner:?];
    [(SBPBSlideOverConfiguration *)v3 setSlideOverYOffsetFromCorner:?];
    [(SBPBSlideOverConfiguration *)v3 setSlideOverSizeWidth:?];
    [(SBPBSlideOverConfiguration *)v3 setSlideOverSizeHeight:?];
    [(SBPBSlideOverConfiguration *)v3 setSlideOverIsActive:?];
    [(SBPBSlideOverConfiguration *)v3 setSlideOverIsStashed:?];
    [(SBPBSlideOverConfiguration *)v3 setSlideOverDodgesDock:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setSlideOverConfiguration:v3];
    [(SBPBDisplayItemLayoutAttributes *)v2 setCenterX:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setCenterY:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setUserSizeBeforeOverlappingInBoundsWidth:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setUserSizeBeforeOverlappingInBoundsHeight:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setReferenceBoundsWidthBeforeOverlapping:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setReferenceBoundsHeightBeforeOverlapping:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setSemanticSizeTypeBeforeOverlapping:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setPositionIsSystemManaged:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setVersion:?];
    [(SBPBDisplayItemLayoutAttributes *)v2 setCascaded:?];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (double)normalizedCenter
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

- (uint64_t)isCascaded
{
  if (a1)
  {
    v1 = *(a1 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (double)unoccludedPeekingCenter
{
  if (a1)
  {
    return *(a1 + 80);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

- (uint64_t)isPositionSystemManaged
{
  if (a1)
  {
    v1 = *(a1 + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end