@interface SBDisplayItemLayoutAttributes
+ (double)normalizedPointForPoint:(CGFloat)point inBounds:(CGFloat)bounds;
+ (id)layoutAttributesWithProtobufRepresentation:(uint64_t)representation;
- (BOOL)isEqual:(id)equal;
- (CGSize)_sizeForAttributedSize:(SBDisplayItemAttributedSize *)size inBounds:(CGRect)bounds defaultSize:(CGSize)defaultSize screenEdgePadding:(double)padding;
- (NSString)debugDescription;
- (SBDisplayItemLayoutAttributes)init;
- (SBPBDisplayItemLayoutAttributes)protobufRepresentation;
- (double)attributedSize;
- (double)attributedUserSizeBeforeOverlapping;
- (double)attributesByModifyingNormalizedCenter:(double)center;
- (double)attributesByModifyingUnoccludedPeekingCenter:(double)center;
- (double)centerInBounds:(double)bounds;
- (double)normalizedCenter;
- (double)sizeInBounds:(uint64_t)bounds defaultSize:screenEdgePadding:;
- (double)slideOverConfiguration;
- (double)unoccludedPeekingCenter;
- (double)userSizeBeforeOverlappingInBounds:(uint64_t)bounds defaultSize:screenEdgePadding:;
- (id)_initWithContentOrientation:(int64_t)orientation lastInteractionTime:(int64_t)time sizingPolicy:(int64_t)policy attributedSize:(SBDisplayItemAttributedSize *)size tileConfiguration:(SBDisplayItemTileConfiguration *)configuration slideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)overConfiguration normalizedCenter:(CGPoint)center cascaded:(BOOL)self0 occlusionState:(int64_t)self1 attributedUserSizeBeforeOverlapping:(SBDisplayItemAttributedSize *)self2 unoccludedPeekingCenter:(CGPoint)self3 positionIsSystemManaged:(BOOL)self4 version:(int64_t)self5;
- (id)attributesByModifyingAttributedSize:(id)size;
- (id)attributesByModifyingAttributedUserSizeBeforeOverlapping:(id)overlapping;
- (id)attributesByModifyingContentOrientation:(id)orientation;
- (id)attributesByModifyingLastInteractionTime:(id)time;
- (id)attributesByModifyingOcclusionState:(id)state;
- (id)attributesByModifyingSizingPolicy:(id)policy;
- (id)attributesByModifyingSlideOverConfiguration:(id)configuration;
- (id)attributesByModifyingTileConfiguration:(id)configuration;
- (id)attributesByModifyingVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithPlistRepresentation:(void *)representation;
- (id)plistRepresentation;
- (id)succinctDescription;
- (uint64_t)initWithContentOrientation:(uint64_t)orientation lastInteractionTime:(uint64_t)time sizingPolicy:(uint64_t)policy attributedSize:(char)size normalizedCenter:(double)center cascaded:(double)cascaded;
- (uint64_t)initWithContentOrientation:(uint64_t)result lastInteractionTime:sizingPolicy:attributedSize:tileConfiguration:slideOverConfiguration:normalizedCenter:cascaded:occlusionState:attributedUserSizeBeforeOverlapping:unoccludedPeekingCenter:positionIsSystemManaged:;
- (uint64_t)isCascaded;
- (uint64_t)isPositionSystemManaged;
- (uint64_t)tileConfiguration;
- (unsigned)attributesByModifyingCascaded:(unsigned __int8 *)cascaded;
- (unsigned)attributesByModifyingPositionIsSystemManaged:(unsigned __int8 *)managed;
- (void)_appendPropertiesToBuilder:(id)builder;
@end

@implementation SBDisplayItemLayoutAttributes

- (double)attributedSize
{
  if (self)
  {
    v2 = *(self + 176);
    *a2 = *(self + 160);
    *(a2 + 16) = v2;
    v3 = *(self + 192);
    *(a2 + 32) = v3;
    *(a2 + 48) = *(self + 208);
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
  if (self)
  {
    v2 = *(self + 120);
    v3 = *(self + 136);
    *a2 = v2;
    *(a2 + 16) = v3;
    *(a2 + 32) = *(self + 152);
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

+ (double)normalizedPointForPoint:(CGFloat)point inBounds:(CGFloat)bounds
{
  objc_opt_self();
  v13.origin.x = point;
  v13.origin.y = bounds;
  v13.size.width = a5;
  v13.size.height = a6;
  v11 = self / CGRectGetWidth(v13);
  v14.origin.x = point;
  v14.origin.y = bounds;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetHeight(v14);
  return v11;
}

- (id)_initWithContentOrientation:(int64_t)orientation lastInteractionTime:(int64_t)time sizingPolicy:(int64_t)policy attributedSize:(SBDisplayItemAttributedSize *)size tileConfiguration:(SBDisplayItemTileConfiguration *)configuration slideOverConfiguration:(SBDisplayItemSlideOverConfiguration *)overConfiguration normalizedCenter:(CGPoint)center cascaded:(BOOL)self0 occlusionState:(int64_t)self1 attributedUserSizeBeforeOverlapping:(SBDisplayItemAttributedSize *)self2 unoccludedPeekingCenter:(CGPoint)self3 positionIsSystemManaged:(BOOL)self4 version:(int64_t)self5
{
  y = peekingCenter.y;
  x = peekingCenter.x;
  v22 = center.y;
  v23 = center.x;
  v61.receiver = self;
  v61.super_class = SBDisplayItemLayoutAttributes;
  v25 = [(SBDisplayItemLayoutAttributes *)&v61 init];
  v26 = v25;
  if (v25)
  {
    *(v25 + 3) = orientation;
    *(v25 + 4) = time;
    *(v25 + 5) = policy;
    private_opaqueSize = size->_private_opaqueSize;
    origin = size->referenceBounds.origin;
    size = size->referenceBounds.size;
    *(v25 + 26) = size->semanticSizeType;
    *(v25 + 11) = origin;
    *(v25 + 12) = size;
    *(v25 + 10) = private_opaqueSize;
    v30 = *&configuration->tileRole;
    *(v25 + 14) = *&configuration->customSize.height;
    *(v25 + 6) = v30;
    v31 = *&overConfiguration->corner;
    v32 = overConfiguration->size;
    *(v25 + 19) = *&overConfiguration->isActive;
    *(v25 + 136) = v32;
    *(v25 + 120) = v31;
    *(v25 + 8) = v23;
    *(v25 + 9) = v22;
    *(v25 + 7) = state;
    v33 = overlapping->_private_opaqueSize;
    v34 = overlapping->referenceBounds.origin;
    v35 = overlapping->referenceBounds.size;
    *(v25 + 33) = overlapping->semanticSizeType;
    *(v25 + 248) = v35;
    *(v25 + 232) = v34;
    *(v25 + 216) = v33;
    *(v25 + 10) = x;
    *(v25 + 11) = y;
    v25[17] = managed;
    *(v25 + 6) = version;
    v25[16] = cascaded;
    builder = [MEMORY[0x277CF0C40] builder];
    v37 = [builder appendInteger:*(v26 + 3)];
    v38 = [builder appendInteger:*(v26 + 4)];
    v39 = [builder appendInteger:*(v26 + 5)];
    v40 = [builder appendCGSize:{v26[20], v26[21]}];
    v41 = [builder appendCGRect:{v26[22], v26[23], v26[24], v26[25]}];
    v42 = [builder appendInteger:*(v26 + 26)];
    v43 = [builder appendInteger:*(v26 + 12)];
    v44 = [builder appendCGSize:{v26[13], v26[14]}];
    v45 = [builder appendInteger:*(v26 + 15)];
    v46 = [builder appendCGFloat:v26[16]];
    v47 = [builder appendCGSize:{v26[17], v26[18]}];
    v48 = [builder appendBool:*(v26 + 152)];
    v49 = [builder appendBool:*(v26 + 153)];
    v50 = [builder appendBool:*(v26 + 154)];
    v51 = [builder appendCGPoint:{v26[8], v26[9]}];
    v52 = [builder appendBool:*(v26 + 16)];
    v53 = [builder appendInteger:*(v26 + 7)];
    v54 = [builder appendCGSize:{v26[27], v26[28]}];
    v55 = [builder appendCGRect:{v26[29], v26[30], v26[31], v26[32]}];
    v56 = [builder appendInteger:*(v26 + 33)];
    v57 = [builder appendCGPoint:{v26[10], v26[11]}];
    v58 = [builder appendBool:*(v26 + 17)];
    v59 = [builder appendInteger:*(v26 + 6)];
    *(v26 + 1) = [builder hash];
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy && [(SBDisplayItemLayoutAttributes *)equalCopy sb_isDisplayItemLayoutAttributes])
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
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendBodySectionWithName:&stru_283094718 multilinePrefix:&stru_283094718 block:&v7];
  build = [v4 build];

  return build;
}

+ (id)layoutAttributesWithProtobufRepresentation:(uint64_t)representation
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v49 = 0uLL;
    v50 = 0;
    preferredTileRole = [(SBPBDisplayItemLayoutAttributes *)v2 preferredTileRole];
    tileConfigurationCustomSizeWidth = [(SBPBDisplayItemLayoutAttributes *)v2 tileConfigurationCustomSizeWidth];
    tileConfigurationCustomSizeHeight = [(SBPBDisplayItemLayoutAttributes *)v2 tileConfigurationCustomSizeHeight];
    SBDisplayItemTileConfigurationMake(preferredTileRole, &v49, tileConfigurationCustomSizeWidth, tileConfigurationCustomSizeHeight);
    slideOverConfiguration = [(SBPBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    slideOverCorner = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverCorner];
    slideOverYOffsetFromCorner = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverYOffsetFromCorner];
    slideOverSizeWidth = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverSizeWidth];
    slideOverSizeHeight = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverSizeHeight];
    slideOverIsActive = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverIsActive];
    slideOverIsStashed = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverIsStashed];
    slideOverDodgesDock = [(SBPBSlideOverConfiguration *)slideOverConfiguration slideOverDodgesDock];
    SBDisplayItemSlideOverConfigurationMake(slideOverCorner, slideOverIsActive, slideOverIsStashed, slideOverDodgesDock, &v46, slideOverYOffsetFromCorner, slideOverSizeWidth, slideOverSizeHeight);
    sizeWidth = [(SBPBDisplayItemLayoutAttributes *)v2 sizeWidth];
    sizeHeight = [(SBPBDisplayItemLayoutAttributes *)v2 sizeHeight];
    referenceBoundsWidthForSize = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsWidthForSize];
    referenceBoundsHeightForSize = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsHeightForSize];
    semanticSizeTypeForSize = [(SBPBDisplayItemLayoutAttributes *)v2 semanticSizeTypeForSize];
    userSizeBeforeOverlappingInBoundsWidth = [(SBPBDisplayItemLayoutAttributes *)v2 userSizeBeforeOverlappingInBoundsWidth];
    userSizeBeforeOverlappingInBoundsHeight = [(SBPBDisplayItemLayoutAttributes *)v2 userSizeBeforeOverlappingInBoundsHeight];
    referenceBoundsWidthBeforeOverlapping = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsWidthBeforeOverlapping];
    referenceBoundsHeightBeforeOverlapping = [(SBPBDisplayItemLayoutAttributes *)v2 referenceBoundsHeightBeforeOverlapping];
    semanticSizeTypeBeforeOverlapping = [(SBPBDisplayItemLayoutAttributes *)v2 semanticSizeTypeBeforeOverlapping];
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = referenceBoundsWidthBeforeOverlapping;
    v52.size.height = referenceBoundsHeightBeforeOverlapping;
    IsEmpty = CGRectIsEmpty(v52);
    if (IsEmpty)
    {
      v23 = referenceBoundsWidthForSize;
    }

    else
    {
      v23 = referenceBoundsWidthBeforeOverlapping;
    }

    if (IsEmpty)
    {
      v24 = referenceBoundsHeightForSize;
    }

    else
    {
      v24 = referenceBoundsHeightBeforeOverlapping;
    }

    v25 = [SBDisplayItemLayoutAttributes alloc];
    contentOrientation = [(SBPBDisplayItemLayoutAttributes *)v2 contentOrientation];
    lastInteractionTime = [(SBPBDisplayItemLayoutAttributes *)v2 lastInteractionTime];
    sizingPolicy = [(SBPBDisplayItemLayoutAttributes *)v2 sizingPolicy];
    centerX = [(SBPBDisplayItemLayoutAttributes *)v2 centerX];
    centerY = [(SBPBDisplayItemLayoutAttributes *)v2 centerY];
    cascaded = [(SBPBDisplayItemLayoutAttributes *)v2 cascaded];
    IsSystem = [(SBPBDisplayItemLayoutAttributes *)v2 positionIsSystemManaged];
    version = [(SBPBDisplayItemLayoutAttributes *)v2 version];
    *v45 = sizeWidth;
    *&v45[1] = sizeHeight;
    v45[2] = 0;
    v45[3] = 0;
    *&v45[4] = referenceBoundsWidthForSize;
    *&v45[5] = referenceBoundsHeightForSize;
    v45[6] = semanticSizeTypeForSize;
    v43 = v49;
    v44 = v50;
    v41[0] = v46;
    v41[1] = v47;
    v42 = v48;
    *v40 = userSizeBeforeOverlappingInBoundsWidth;
    *&v40[1] = userSizeBeforeOverlappingInBoundsHeight;
    v40[2] = 0;
    v40[3] = 0;
    *&v40[4] = v23;
    *&v40[5] = v24;
    v40[6] = semanticSizeTypeBeforeOverlapping;
    LOBYTE(v37) = IsSystem;
    LOBYTE(v36) = cascaded;
    v34 = [(SBDisplayItemLayoutAttributes *)v25 _initWithContentOrientation:contentOrientation lastInteractionTime:lastInteractionTime sizingPolicy:sizingPolicy attributedSize:v45 tileConfiguration:&v43 slideOverConfiguration:v41 normalizedCenter:centerX cascaded:centerY occlusionState:0.0 attributedUserSizeBeforeOverlapping:0.0 unoccludedPeekingCenter:v36 positionIsSystemManaged:0 version:v40, v37, version];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDisplayItemLayoutAttributes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDisplayItemLayoutAttributes *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(SBDisplayItemLayoutAttributes *)self _appendPropertiesToBuilder:v4];

  return v4;
}

- (void)_appendPropertiesToBuilder:(id)builder
{
  builderCopy = builder;
  v5 = BSInterfaceOrientationDescription();
  [builderCopy appendString:v5 withName:@"contentOrientation"];

  lastInteractionTime = self->_lastInteractionTime;
  if (lastInteractionTime)
  {
    v7 = [builderCopy appendInteger:lastInteractionTime withName:@"lastInteractionTime"];
  }

  else
  {
    [builderCopy appendString:@"never" withName:@"lastInteractionTime"];
  }

  v8 = NSStringFromDisplayItemSizingPolicy(self->_sizingPolicy);
  [builderCopy appendString:v8 withName:@"sizingPolicy"];

  v10 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = self->_attributedSize._private_opaqueSize.width == *MEMORY[0x277CBF3A8] && self->_attributedSize._private_opaqueSize.height == v9;
  if (v11 && !self->_attributedSize.semanticSizeType)
  {
    [builderCopy appendString:@"unspecified" withName:@"size"];
  }

  else
  {
    origin = self->_attributedSize.referenceBounds.origin;
    private_opaqueSize = self->_attributedSize._private_opaqueSize;
    v28 = origin;
    size = self->_attributedSize.referenceBounds.size;
    semanticSizeType = self->_attributedSize.semanticSizeType;
    v13 = SBDisplayItemAttributedSizeDescription(&private_opaqueSize);
    [builderCopy appendString:v13 withName:@"size"];
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

  [builderCopy appendString:v16 withName:@"center"];
  private_opaqueSize = *&self->_tileConfiguration.tileRole;
  v28.x = self->_tileConfiguration.customSize.height;
  v17 = SBStringFromDisplayItemTileConfiguration(&private_opaqueSize);
  [builderCopy appendString:v17 withName:@"tileConfiguration"];

  v18 = self->_slideOverConfiguration.size;
  private_opaqueSize = *&self->_slideOverConfiguration.corner;
  v28 = v18;
  size.width = *&self->_slideOverConfiguration.isActive;
  v19 = NSStringFromDisplayItemSlideOverConfiguration(&private_opaqueSize);
  [builderCopy appendString:v19 withName:@"slideOverConfiguration"];

  v20 = [builderCopy appendBool:self->_cascaded withName:@"cascaded"];
  v21 = SBOcclusionStateDescription(self->_occlusionState);
  [builderCopy appendString:v21 withName:@"occlusionState"];

  if (self->_attributedUserSizeBeforeOverlapping._private_opaqueSize.width == v10 && self->_attributedUserSizeBeforeOverlapping._private_opaqueSize.height == v9 && !self->_attributedUserSizeBeforeOverlapping.semanticSizeType)
  {
    [builderCopy appendString:@"unspecified" withName:@"userConfiguredSizeBeforeOverlapping"];
  }

  else
  {
    v22 = self->_attributedUserSizeBeforeOverlapping.referenceBounds.origin;
    private_opaqueSize = self->_attributedUserSizeBeforeOverlapping._private_opaqueSize;
    v28 = v22;
    size = self->_attributedUserSizeBeforeOverlapping.referenceBounds.size;
    semanticSizeType = self->_attributedUserSizeBeforeOverlapping.semanticSizeType;
    v23 = SBDisplayItemAttributedSizeDescription(&private_opaqueSize);
    [builderCopy appendString:v23 withName:@"userConfiguredSizeBeforeOverlapping"];
  }

  v24 = [builderCopy appendBool:self->_positionIsSystemManaged withName:@"positionIsSystemManaged"];
  if (self->_unoccludedPeekingCenter.x == 0.0 && self->_unoccludedPeekingCenter.y == 0.0)
  {
    [builderCopy appendString:@"unspecified" withName:@"unoccludedPeekingCenter"];
  }

  else
  {
    v25 = [builderCopy appendPoint:@"unoccludedPeekingCenter" withName:?];
  }

  v26 = [builderCopy appendInteger:self->_version withName:@"version"];
}

- (CGSize)_sizeForAttributedSize:(SBDisplayItemAttributedSize *)size inBounds:(CGRect)bounds defaultSize:(CGSize)defaultSize screenEdgePadding:(double)padding
{
  height = defaultSize.height;
  width = defaultSize.width;
  v8 = bounds.size.height;
  v9 = bounds.size.width;
  v11 = bounds.size.height;
  v12 = bounds.size.width;
  if (!CGRectIsEmpty(size->referenceBounds))
  {
    v12 = size->referenceBounds.size.width;
    v11 = size->referenceBounds.size.height;
  }

  if (BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat())
  {
    v13 = v12 * size->_private_opaqueSize.width;
    v14 = v11 * size->_private_opaqueSize.height;
  }

  else
  {
    v13 = size->_private_opaqueSize.width;
    v14 = size->_private_opaqueSize.height;
  }

  if (BSFloatEqualToFloat() && BSFloatEqualToFloat())
  {
    semanticSizeType = size->semanticSizeType;
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
          v13 = v9 + padding * -2.0;
          break;
        case 8:
          v14 = v8 + padding * -2.0;
          break;
        case 9:
          v13 = v9 - padding * 2.0;
          v14 = v8 - padding * 2.0;
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
  if (self)
  {
    v2 = *(self + 232);
    *a2 = *(self + 216);
    *(a2 + 16) = v2;
    v3 = *(self + 248);
    *(a2 + 32) = v3;
    *(a2 + 48) = *(self + 264);
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

- (uint64_t)initWithContentOrientation:(uint64_t)orientation lastInteractionTime:(uint64_t)time sizingPolicy:(uint64_t)policy attributedSize:(char)size normalizedCenter:(double)center cascaded:(double)cascaded
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
    v17 = *(policy + 16);
    v20[0] = *policy;
    v20[1] = v17;
    v20[2] = *(policy + 32);
    v21 = *(policy + 48);
    LOBYTE(v19) = 1;
    LOBYTE(v18) = size;
    return [v15 _initWithContentOrientation:a2 lastInteractionTime:orientation sizingPolicy:time attributedSize:v20 tileConfiguration:v27 slideOverConfiguration:v26 normalizedCenter:center cascaded:cascaded occlusionState:0.0 attributedUserSizeBeforeOverlapping:0.0 unoccludedPeekingCenter:v18 positionIsSystemManaged:0 version:{v22, v19, 1000}];
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

- (double)sizeInBounds:(uint64_t)bounds defaultSize:screenEdgePadding:
{
  if (!bounds)
  {
    return OUTLINED_FUNCTION_18();
  }

  v1 = *(bounds + 176);
  v3[0] = *(bounds + 160);
  v3[1] = v1;
  v3[2] = *(bounds + 192);
  v4 = *(bounds + 208);
  [bounds _sizeForAttributedSize:v3 inBounds:? defaultSize:? screenEdgePadding:?];
  return result;
}

- (double)centerInBounds:(double)bounds
{
  if (self)
  {
    return a4 * *(self + 64);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

- (double)userSizeBeforeOverlappingInBounds:(uint64_t)bounds defaultSize:screenEdgePadding:
{
  if (!bounds)
  {
    return OUTLINED_FUNCTION_18();
  }

  v1 = *(bounds + 232);
  v3[0] = *(bounds + 216);
  v3[1] = v1;
  v3[2] = *(bounds + 248);
  v4 = *(bounds + 264);
  [bounds _sizeForAttributedSize:v3 inBounds:? defaultSize:? screenEdgePadding:?];
  return result;
}

- (id)attributesByModifyingContentOrientation:(id)orientation
{
  if (orientation)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v4 + 24) == v5)
    {
      orientation = v2;
    }

    else
    {
      v6 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_4_7();
      orientation = [v7 _initWithContentOrientation:v1 lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return orientation;
}

- (id)attributesByModifyingLastInteractionTime:(id)time
{
  if (time)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 32) == v4)
    {
      time = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_2_16();
      time = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return time;
}

- (id)attributesByModifyingSizingPolicy:(id)policy
{
  if (policy)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 40) == v4)
    {
      policy = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_4_7();
      policy = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return policy;
}

- (id)attributesByModifyingAttributedSize:(id)size
{
  if (size)
  {
    OUTLINED_FUNCTION_19();
    v6 = *v5 == *(v4 + 160) && v5[1] == *(v4 + 168);
    if (v6 && CGRectEqualToRect(*(v2 + 16), *(v1 + 176)) && *(v2 + 48) == *(v1 + 208))
    {
      size = v1;
    }

    else
    {
      v7 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_2_16();
      size = [v8 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return size;
}

- (id)attributesByModifyingTileConfiguration:(id)configuration
{
  if (configuration)
  {
    OUTLINED_FUNCTION_19();
    v31 = *v4;
    v32 = *(v4 + 2);
    v23 = *(v5 + 96);
    v24 = *(v5 + 112);
    if (SBEqualDisplayItemTileConfigurations(&v31, &v23))
    {
      configuration = v1;
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
      configuration = OUTLINED_FUNCTION_17(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, v25, v26);
    }

    v3 = vars8;
  }

  return configuration;
}

- (id)attributesByModifyingSlideOverConfiguration:(id)configuration
{
  if (configuration)
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
      configuration = v1;
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
      configuration = OUTLINED_FUNCTION_17(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
    }

    v3 = vars8;
  }

  return configuration;
}

- (double)attributesByModifyingNormalizedCenter:(double)center
{
  if (self)
  {
    if (a2 == self[8] && center == self[9])
    {
      self = self;
    }

    else
    {
      v7 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_2_16();
      self = [v8 _initWithContentOrientation:a2 lastInteractionTime:center sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return self;
}

- (unsigned)attributesByModifyingCascaded:(unsigned __int8 *)cascaded
{
  if (cascaded)
  {
    v3 = a2;
    if (cascaded[16] == a2)
    {
      cascaded = cascaded;
    }

    else
    {
      v4 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_16();
      LOBYTE(v9) = v3;
      cascaded = [v5 _initWithContentOrientation:v9 lastInteractionTime:v6 sizingPolicy:v7 attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return cascaded;
}

- (id)attributesByModifyingOcclusionState:(id)state
{
  if (state)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 56) == v4)
    {
      state = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_4_7();
      state = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return state;
}

- (id)attributesByModifyingAttributedUserSizeBeforeOverlapping:(id)overlapping
{
  if (overlapping)
  {
    OUTLINED_FUNCTION_19();
    v6 = *v5 == *(v4 + 216) && v5[1] == *(v4 + 224);
    if (v6 && CGRectEqualToRect(*(v2 + 16), *(v1 + 232)) && *(v2 + 48) == *(v1 + 264))
    {
      overlapping = v1;
    }

    else
    {
      v7 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_2_16();
      overlapping = [v8 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return overlapping;
}

- (double)attributesByModifyingUnoccludedPeekingCenter:(double)center
{
  if (self)
  {
    if (a2 == self[10] && center == self[11])
    {
      self = self;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_2_16();
      self = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v3 = vars8;
  }

  return self;
}

- (unsigned)attributesByModifyingPositionIsSystemManaged:(unsigned __int8 *)managed
{
  if (managed)
  {
    if (managed[17] == a2)
    {
      managed = managed;
    }

    else
    {
      v3 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_2_16();
      managed = [v4 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return managed;
}

- (id)attributesByModifyingVersion:(id)version
{
  if (version)
  {
    OUTLINED_FUNCTION_1_2();
    if (*(v3 + 48) == v4)
    {
      version = v1;
    }

    else
    {
      v5 = [SBDisplayItemLayoutAttributes alloc];
      OUTLINED_FUNCTION_0_28();
      OUTLINED_FUNCTION_2_16();
      version = [v6 _initWithContentOrientation:? lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:? version:?];
    }

    v2 = vars8;
  }

  return version;
}

- (id)initWithPlistRepresentation:(void *)representation
{
  if (!representation)
  {
    return 0;
  }

  representationCopy = representation;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);

  if (v5)
  {
    v104 = representationCopy;
    objc_opt_class();
    [v5 objectForKey:@"contentOrientation"];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9_2();
    v8 = SBSafeCast(v6, v7);

    v103 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"lastInteractionTime"];
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_9_2();
    v12 = SBSafeCast(v10, v11);

    v102 = v12;
    if (v12)
    {
      integerValue2 = [v12 integerValue];
    }

    else
    {
      integerValue2 = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"sizingPolicy"];
    objc_claimAutoreleasedReturnValue();
    v13 = OUTLINED_FUNCTION_9_2();
    v15 = SBSafeCast(v13, v14);

    v101 = v15;
    if (v15)
    {
      integerValue3 = [v15 integerValue];
    }

    else
    {
      integerValue3 = 0;
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
      integerValue4 = [v30 integerValue];
    }

    else
    {
      integerValue4 = 0;
    }

    objc_opt_class();
    [v5 objectForKey:@"preferredTileRole"];
    objc_claimAutoreleasedReturnValue();
    v31 = OUTLINED_FUNCTION_9_2();
    integerValue5 = SBSafeCast(v31, v32);

    v94 = integerValue5;
    if (integerValue5)
    {
      integerValue5 = [integerValue5 integerValue];
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
    SBDisplayItemTileConfigurationMake(integerValue5, &v125, width, height);
    objc_opt_class();
    [v5 objectForKey:@"slideOverCorner"];
    objc_claimAutoreleasedReturnValue();
    v39 = OUTLINED_FUNCTION_9_2();
    v41 = SBSafeCast(v39, v40);

    v91 = v41;
    if (v41)
    {
      integerValue6 = [v41 integerValue];
    }

    else
    {
      integerValue6 = 0;
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
    SBDisplayItemSlideOverConfigurationMake(integerValue6, v50, v52, v54, &v121, v45, v16, v17);
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
      bOOLValue = [v62 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
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
      integerValue7 = [v73 integerValue];
    }

    else
    {
      integerValue7 = 0;
    }

    v75 = objc_opt_class();
    v76 = [v5 objectForKey:@"positionIsSystemManaged"];
    v77 = SBSafeCast(v75, v76);

    if (v77)
    {
      bOOLValue2 = [v77 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v79 = objc_opt_class();
    v80 = [v5 objectForKey:@"version"];
    v81 = SBSafeCast(v79, v80);

    if (v81)
    {
      integerValue8 = [v81 integerValue];
    }

    else
    {
      integerValue8 = 0;
    }

    v83 = *MEMORY[0x277CBF348];
    v84 = *(MEMORY[0x277CBF348] + 8);
    v112 = v106;
    v113 = *v105;
    v114 = *&v105[8];
    v115 = *&v105[16];
    v116 = *&v105[24];
    v117 = integerValue4;
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
    v107[6] = integerValue7;
    LOBYTE(v87) = bOOLValue2;
    LOBYTE(v86) = bOOLValue;
    representationCopy = [v104 _initWithContentOrientation:integerValue lastInteractionTime:integerValue2 sizingPolicy:integerValue3 attributedSize:&v112 tileConfiguration:&v110 slideOverConfiguration:v108 normalizedCenter:x cascaded:y occlusionState:v83 attributedUserSizeBeforeOverlapping:v84 unoccludedPeekingCenter:v86 positionIsSystemManaged:0 version:{v107, v87, integerValue8}];

    v9 = representationCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)plistRepresentation
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 24)];
    if (v3)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 32)];
    if (v4)
    {
      [v2 setObject:v4 forKey:@"lastInteractionTime"];
    }

    v40 = v3;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 40)];
    if (v5)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v39 = v5;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(self + 160));
    if (DictionaryRepresentation)
    {
      v7 = DictionaryRepresentation;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v7);
    }

    v8 = CGRectCreateDictionaryRepresentation(*(self + 176));
    if (v8)
    {
      v9 = v8;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v9);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 208)];
    if (v10)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v38 = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 96)];
    if (v11)
    {
      [v2 setObject:v11 forKey:@"preferredTileRole"];
    }

    v12 = CGSizeCreateDictionaryRepresentation(*(self + 104));
    if (v12)
    {
      v13 = v12;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v13);
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 120)];
    if (v14)
    {
      [v2 setObject:v14 forKey:@"slideOverCorner"];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 128)];
    if (v15)
    {
      [v2 setObject:v15 forKey:@"slideOverYOffsetFromCorner"];
    }

    v16 = CGSizeCreateDictionaryRepresentation(*(self + 136));
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v17);
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 152)];
    v19 = v18 != 0;

    v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
    OUTLINED_FUNCTION_14_0();

    v21 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 153)];
    v22 = v21 != 0;

    v23 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    OUTLINED_FUNCTION_14_0();

    v24 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 154)];
    v25 = v24 != 0;

    v26 = [MEMORY[0x277CCABB0] numberWithBool:v25];
    OUTLINED_FUNCTION_14_0();

    v27 = CGPointCreateDictionaryRepresentation(*(self + 64));
    if (v27)
    {
      v28 = v27;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v28);
    }

    v29 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 16)];
    [v2 setObject:v29 forKey:@"cascaded"];
    v30 = CGSizeCreateDictionaryRepresentation(*(self + 216));
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v31);
    }

    v32 = CGRectCreateDictionaryRepresentation(*(self + 232));
    if (v32)
    {
      v33 = v32;
      OUTLINED_FUNCTION_14_0();
      CFRelease(v33);
    }

    v34 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 264)];
    if (v34)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v35 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 17)];
    [v2 setObject:v35 forKey:@"positionIsSystemManaged"];
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:*(self + 48)];
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
  if (self)
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
  if (self)
  {
    return *(self + 64);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

- (uint64_t)isCascaded
{
  if (self)
  {
    v1 = *(self + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (double)unoccludedPeekingCenter
{
  if (self)
  {
    return *(self + 80);
  }

  else
  {
    return OUTLINED_FUNCTION_18();
  }
}

- (uint64_t)isPositionSystemManaged
{
  if (self)
  {
    v1 = *(self + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end