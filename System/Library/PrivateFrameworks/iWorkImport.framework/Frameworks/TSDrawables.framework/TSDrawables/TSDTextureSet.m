@interface TSDTextureSet
+ (id)newFlattenedTextureFromTextures:(id)a3 newRect:(CGRect)a4;
- (BOOL)canReuseMetalTexturesWith:(id)a3;
- (BOOL)containsFinalTextures;
- (BOOL)hasTexture:(id)a3 beenFlattenedForKey:(id)a4;
- (BOOL)isFlippedVertically;
- (BOOL)isImageSource;
- (BOOL)isRenderable;
- (BOOL)p_areAttributes:(id)a3 equalToAttributes:(id)a4;
- (BOOL)shouldAnimateBackgroundTexturesWithStage:(int64_t)a3 isBuildIn:(BOOL)a4;
- (CALayer)layer;
- (CGPoint)center;
- (CGPoint)originalPosition;
- (CGRect)boundingRect;
- (CGRect)boundingRectForStage:(int64_t)a3 isBuildIn:(BOOL)a4 isContentBuild:(BOOL)a5;
- (CGRect)frame;
- (CGRect)p_frameAtEventIndex:(unint64_t)a3;
- (NSArray)visibleTextures;
- (NSArray)visibleTexturesIncludingCaptions;
- (TSDRep)rep;
- (TSDTextureSet)init;
- (double)hdrHeadroom;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)finalTexturesForStage:(int64_t)a3;
- (id)firstVisibleTextureForTextureType:(int64_t)a3;
- (id)p_insertNewFlattenedTextureWithArray:(id)a3 rect:(CGRect)a4 stage:(int64_t)a5 insertAfter:(id)a6 flattenKey:(id)a7;
- (id)viewLayerAtEventIndex:(unint64_t)a3;
- (id)visibleTexturesBeforeStage:(int64_t)a3 isBuildIn:(BOOL)a4 isContentBuild:(BOOL)a5 shouldFlatten:(BOOL)a6 flattenKey:(id)a7;
- (id)visibleTexturesForStage:(int64_t)a3 isBuildIn:(BOOL)a4 isContentBuild:(BOOL)a5 shouldFlatten:(BOOL)a6 flattenKey:(id)a7 shouldIncludeCaptions:(BOOL)a8;
- (id)visibleTexturesWithTextureType:(int64_t)a3;
- (int64_t)stageIndexForTexture:(id)a3;
- (void)addFinalTexture:(id)a3 forStage:(int64_t)a4;
- (void)addPerspectiveLayerToTexture:(id)a3 withShowSize:(CGSize)a4;
- (void)adjustAnchorPointRelativeToCenterOfRotationAtEventIndex:(unint64_t)a3;
- (void)applyActionEffect:(id)a3 viewScale:(double)a4 isMagicMove:(BOOL)a5 shouldBake:(BOOL)a6 applyScaleOnly:(BOOL)a7 ignoreScale:(BOOL)a8 shouldCheckActionKeys:(BOOL)a9 eventIndex:(unint64_t)a10;
- (void)clearLiveMetalTextureCaches;
- (void)dealloc;
- (void)evictRenderedResources;
- (void)flattenToFinalTexturesForMagicMove;
- (void)hideLayersOfFinalTexturesAtEventIndex:(unint64_t)a3;
- (void)p_addRenderable:(id)a3 forStage:(int64_t)a4 shouldAdjustBounds:(BOOL)a5;
- (void)p_applyPositionFromAttributes:(id)a3 viewScale:(double)a4 eventIndex:(unint64_t)a5;
- (void)p_getComponentsOpacity:(double *)a3 scale:(double *)a4 angle:(double *)a5 fromAttributes:(id)a6 shouldApplyOpacity:(BOOL *)a7 shouldApplyAngle:(BOOL *)a8 shouldApplyScale:(BOOL *)a9;
- (void)p_resetAttributesWithViewScale:(double)a3 eventIndex:(unint64_t)a4;
- (void)p_setLayerGeometryWithLayer:(id)a3;
- (void)removeAllPerspectiveLayers;
- (void)removeRenderable:(id)a3;
- (void)renderIntoContext:(CGContext *)a3 eventIndex:(unint64_t)a4 requiresTransparentBackground:(BOOL)a5;
- (void)renderLayerContentsIfNeeded;
- (void)resetAnchorPointAtEventIndex:(unint64_t)a3;
- (void)resetLayers;
- (void)resetToOriginalSourceAtEventIndex:(unint64_t)a3;
- (void)setBitmapRenderingQualityInfo:(id)a3;
- (void)setBoundingRect:(CGRect)a3;
- (void)setBoundingRect:(CGRect)a3 forStage:(int64_t)a4;
- (void)setIsBaked:(BOOL)a3;
- (void)setLayerGeometryAtEventIndex:(unint64_t)a3;
- (void)setTextureOpacity:(double)a3;
- (void)teardown;
@end

@implementation TSDTextureSet

- (TSDTextureSet)init
{
  v33.receiver = self;
  v33.super_class = TSDTextureSet;
  v2 = [(TSDTextureSet *)&v33 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxStageIndex = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(v3 + 32);
    *(v3 + 32) = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = *(v3 + 16);
    *(v3 + 16) = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = *(v3 + 24);
    *(v3 + 24) = v8;

    v12 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v10, v11);
    v13 = *(v3 + 64);
    *(v3 + 64) = v12;

    v16 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v14, v15);
    v17 = *(v3 + 128);
    *(v3 + 128) = v16;

    v18 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v19 = *(v3 + 8);
    *(v3 + 8) = v18;

    v20 = *(v3 + 8);
    v22 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v21, v3);
    objc_msgSend_setValue_forKey_(v20, v23, v22, @"kTSDTextureLayerKeyTextureSet");

    v24 = *(MEMORY[0x277CBF398] + 16);
    *(v3 + 232) = *MEMORY[0x277CBF398];
    *(v3 + 248) = v24;
    v25 = *(v3 + 232);
    *&v24 = *(v3 + 240);
    v26 = *(v3 + 248);
    v27 = *(v3 + 256);
    MidX = CGRectGetMidX(*(&v24 - 8));
    MidY = CGRectGetMidY(*(v3 + 232));
    *(v3 + 200) = MidX;
    *(v3 + 208) = MidY;
    objc_msgSend_setFrame_(*(v3 + 8), v30, v31, *(v3 + 232), *(v3 + 240), *(v3 + 248), *(v3 + 256));
    *(v3 + 176) = 0x3FF0000000000000;
    *(v3 + 80) = -1;
    *(v3 + 106) = 1;
    *(v3 + 96) = 0;
    __dmb(0xBu);
  }

  return v3;
}

- (void)teardown
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_allTextures;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_teardown(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)clearLiveMetalTextureCaches
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_allTextures;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_clearLiveMetalTextureCache(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDTextureSet;
  [(TSDTextureSet *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = self->_allTextures;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v74, v78, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v75;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v75 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v74 + 1) + 8 * i);
        if (objc_msgSend_containsObject_(self->_animatableTextures, v14, v18, v74))
        {
          v20 = objc_msgSend_stageIndexForTexture_(self, v19, v18);
          v23 = objc_msgSend_copy(v18, v21, v22);
          objc_msgSend_addRenderable_forStage_(v10, v24, v23, v20);
        }

        else if (objc_msgSend_containsObject_(self->_titleAndCaptionTextures, v19, v18))
        {
          v23 = objc_msgSend_copy(v18, v25, v26);
          objc_msgSend_addRenderable_(v10, v27, v23);
        }

        else
        {
          v28 = objc_msgSend_stageIndexForTexture_(self, v25, v18);
          v23 = objc_msgSend_copy(v18, v29, v30);
          objc_msgSend_addFinalTexture_forStage_(v10, v31, v23, v28);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v74, v78, 16);
    }

    while (v15);
  }

  objc_msgSend_setAlternateLayer_(v10, v32, self->_alternateLayer);
  objc_msgSend_setBoundingRectForStageMap_(v10, v33, self->_boundingRectForStageMap);
  objc_msgSend_frame(self->_layer, v34, v35);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v46 = objc_msgSend_layer(v10, v44, v45);
  objc_msgSend_setFrame_(v46, v47, v48, v37, v39, v41, v43);

  objc_msgSend_opacity(self->_layer, v49, v50);
  LODWORD(v37) = v51;
  v54 = objc_msgSend_layer(v10, v52, v53);
  LODWORD(v55) = LODWORD(v37);
  objc_msgSend_setOpacity_(v54, v56, v57, v55);

  objc_msgSend_setTextureOpacity_(v10, v58, v59, self->_textureOpacity);
  objc_msgSend_setTextureAngle_(v10, v60, v61, self->_textureAngle);
  objc_msgSend_setOriginalPosition_(v10, v62, v63, self->_originalPosition.x, self->_originalPosition.y);
  objc_msgSend_setCenter_(v10, v64, v65, self->_center.x, self->_center.y);
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  objc_msgSend_setRep_(v10, v67, WeakRetained);

  objc_msgSend_setTextureDescription_(v10, v68, self->_textureDescription);
  objc_msgSend_setColorSpace_(v10, v69, self->_colorSpace);
  objc_msgSend_setObjectType_(v10, v70, self->_objectType);
  objc_msgSend_setContainsContentBuildTextures_(v10, v71, self->_containsContentBuildTextures);
  objc_msgSend_setShouldUseFloatingPointTextures_(v10, v72, self->_shouldUseFloatingPointTextures);
  return v10;
}

- (CALayer)layer
{
  alternateLayer = self->_alternateLayer;
  if (!alternateLayer)
  {
    alternateLayer = self->_layer;
  }

  return alternateLayer;
}

- (BOOL)isFlippedVertically
{
  if (!self->_isFlippedHorizontally)
  {
    return 0;
  }

  textureAngle = self->_textureAngle;
  return fabs(textureAngle + -3.14159265) < 0.00999999978 || textureAngle == 3.14159265;
}

- (void)setTextureOpacity:(double)a3
{
  self->_textureOpacity = a3;
  *&a3 = a3;
  objc_msgSend_setOpacity_(self->_layer, a2, v3, a3);
}

- (CGRect)boundingRectForStage:(int64_t)a3 isBuildIn:(BOOL)a4 isContentBuild:(BOOL)a5
{
  v6 = a4;
  boundingRectForStageMap = self->_boundingRectForStageMap;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3);
  v12 = objc_msgSend_objectForKey_(boundingRectForStageMap, v11, v10);

  if (v12 || (objc_msgSend_objectForKey_(self->_boundingRectForStageMap, v13, &unk_28859C388), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    objc_msgSend_CGRectValue(v12, v13, v14);
  }

  else
  {
    objc_msgSend_boundingRect(self, v13, v14);
  }

  x = v16;
  y = v17;
  width = v18;
  height = v19;
  if (a3)
  {
    v24 = 0;
  }

  else
  {
    v24 = v6;
  }

  if (v24 || a5)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    v25 = v12;
    goto LABEL_15;
  }

  if (self->_maxStageIndex == a3)
  {
LABEL_12:
    v25 = objc_msgSend_objectForKey_(self->_boundingRectForStageMap, v15, &unk_28859C388);

    if (v25)
    {
      objc_msgSend_CGRectValue(v25, v15, v26);
      v48.origin.x = v27;
      v48.origin.y = v28;
      v48.size.width = v29;
      v48.size.height = v30;
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v44 = CGRectUnion(v43, v48);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
    }

    if (v6)
    {
LABEL_15:
      v31 = !v6;
      if (a3)
      {
        v31 = 0;
      }

      if (v31 || self->_maxStageIndex == a3)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v25 = v12;
  }

  if (!a3 && !v6)
  {
LABEL_24:
    v32 = objc_msgSend_objectForKey_(self->_boundingRectForStageMap, v15, &unk_28859C3A0);

    if (v32)
    {
      objc_msgSend_CGRectValue(v32, v33, v34);
      v49.origin.x = v35;
      v49.origin.y = v36;
      v49.size.width = v37;
      v49.size.height = v38;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectUnion(v45, v49);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v25 = v32;
    }

    else
    {
      v25 = 0;
    }
  }

LABEL_27:

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (void)p_addRenderable:(id)a3 forStage:(int64_t)a4 shouldAdjustBounds:(BOOL)a5
{
  v5 = a5;
  v103 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!objc_msgSend_textureType(v8, v9, v10))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDTextureSet p_addRenderable:forStage:shouldAdjustBounds:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTextureSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 251, 0, "Unknown texture type! Probably because it wasn't set! Go do that!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (objc_msgSend_textureType(v8, v11, v12) == 15)
  {
    v22 = 0;
    v23 = 24;
  }

  else
  {
    v24 = objc_msgSend_textureType(v8, v20, v21);
    v23 = 24;
    if (v24 == 16)
    {
      v22 = 0;
    }

    else
    {
      v23 = 32;
      v22 = v5;
    }
  }

  objc_msgSend_addObject_(*(&self->super.isa + v23), v20, v8);
  objc_msgSend_addObject_(self->_allTextures, v25, v8);
  objc_msgSend_setParent_(v8, v26, self);
  v28 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v27, a4);
  objc_msgSend_setObject_forKey_(self->_textureToStageIndexMap, v29, v28, v8);
  if (v22)
  {
    objc_msgSend_frame(v8, v30, v31);
    v106.origin.x = v32;
    v106.origin.y = v33;
    v106.size.width = v34;
    v106.size.height = v35;
    self->_boundingRect = CGRectUnion(self->_boundingRect, v106);
    objc_msgSend_setFrame_(self->_layer, v36, v37);
  }

  v38 = objc_msgSend_objectForKey_(self->_boundingRectForStageMap, v30, v28);
  v97 = a4;
  v95 = v38;
  if (v38)
  {
    objc_msgSend_CGRectValue(v38, v39, v40);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
  }

  else
  {
    v42 = *MEMORY[0x277CBF398];
    v44 = *(MEMORY[0x277CBF398] + 8);
    v46 = *(MEMORY[0x277CBF398] + 16);
    v48 = *(MEMORY[0x277CBF398] + 24);
  }

  objc_msgSend_frame(v8, v39, v40);
  v107.origin.x = v49;
  v107.origin.y = v50;
  v107.size.width = v51;
  v107.size.height = v52;
  v104.origin.x = v42;
  v104.origin.y = v44;
  v104.size.width = v46;
  v104.size.height = v48;
  v105 = CGRectUnion(v104, v107);
  boundingRectForStageMap = self->_boundingRectForStageMap;
  v56 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v54, v55, v105.origin.x, v105.origin.y, v105.size.width, v105.size.height);
  v96 = v28;
  objc_msgSend_setObject_forKey_(boundingRectForStageMap, v57, v56, v28);

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v60 = objc_msgSend_sublayers(self->_layer, v58, v59);
  v63 = objc_msgSend_copy(v60, v61, v62);

  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v98, v102, 16);
  if (v65)
  {
    v67 = v65;
    v68 = *v99;
    while (2)
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v99 != v68)
        {
          objc_enumerationMutation(v63);
        }

        v70 = *(*(&v98 + 1) + 8 * i);
        v71 = objc_msgSend_valueForKey_(v70, v66, @"kTSDTextureLayerKeyTexturedRectangle");
        v74 = objc_msgSend_nonretainedObjectValue(v71, v72, v73);

        v77 = objc_msgSend_textureType(v74, v75, v76);
        if (v77 > objc_msgSend_textureType(v8, v78, v79))
        {
          layer = self->_layer;
          v87 = objc_msgSend_layer(v8, v80, v81);
          objc_msgSend_insertSublayer_below_(layer, v88, v87, v70);

          goto LABEL_23;
        }
      }

      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v98, v102, 16);
      if (v67)
      {
        continue;
      }

      break;
    }
  }

  v82 = self->_layer;
  v63 = objc_msgSend_layer(v8, v83, v84);
  objc_msgSend_addSublayer_(v82, v85, v63);
LABEL_23:

  MidX = CGRectGetMidX(self->_boundingRect);
  MidY = CGRectGetMidY(self->_boundingRect);
  self->_center.x = MidX;
  self->_center.y = MidY;
  if (self->_maxStageIndex < v97)
  {
    self->_maxStageIndex = v97;
  }

  v93 = objc_msgSend_copy(self->_boundingRectForStageMap, v90, v91);
  origBoundingRectForStageMap = self->_origBoundingRectForStageMap;
  self->_origBoundingRectForStageMap = v93;
}

- (void)addFinalTexture:(id)a3 forStage:(int64_t)a4
{
  v35 = a3;
  objc_msgSend_addObject_(self->_allTextures, v6, v35);
  objc_msgSend_setParent_(v35, v7, self);
  textureToStageIndexMap = self->_textureToStageIndexMap;
  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, a4);
  objc_msgSend_setObject_forKey_(textureToStageIndexMap, v11, v10, v35);

  finalTextures = self->_finalTextures;
  if (!finalTextures)
  {
    v14 = objc_opt_new();
    v15 = self->_finalTextures;
    self->_finalTextures = v14;

    finalTextures = self->_finalTextures;
  }

  objc_msgSend_addObject_(finalTextures, v12, v35);
  objc_msgSend_frame(v35, v16, v17);
  v37.origin.x = v18;
  v37.origin.y = v19;
  v37.size.width = v20;
  v37.size.height = v21;
  self->_boundingRect = CGRectUnion(self->_boundingRect, v37);
  objc_msgSend_setFrame_(self->_layer, v22, v23);
  layer = self->_layer;
  v27 = objc_msgSend_layer(v35, v25, v26);
  objc_msgSend_addSublayer_(layer, v28, v27);

  MidX = CGRectGetMidX(self->_boundingRect);
  MidY = CGRectGetMidY(self->_boundingRect);
  self->_center.x = MidX;
  self->_center.y = MidY;
  v33 = objc_msgSend_layer(v35, v31, v32);
  objc_msgSend_setHidden_(v33, v34, 1);
}

- (BOOL)containsFinalTextures
{
  v4 = objc_msgSend_count(self->_allTextures, a2, v2);
  v7 = objc_msgSend_count(self->_animatableTextures, v5, v6);
  return v4 != objc_msgSend_count(self->_titleAndCaptionTextures, v8, v9) + v7;
}

- (void)flattenToFinalTexturesForMagicMove
{
  v83 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_containsFinalTextures(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDTextureSet flattenToFinalTexturesForMagicMove]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTextureSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 337, 0, "No final textures to flatten for Magic Move.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v12 = self->_animatableTextures;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v76, v82, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v77;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v77 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v76 + 1) + 8 * i);
        objc_msgSend_teardown(v20, v15, v16);
        objc_msgSend_removeObject_(self->_allTextures, v21, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v76, v82, 16);
    }

    while (v17);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v22 = self->_finalTextures;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v72, v81, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v73;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v73 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = objc_msgSend_layer(*(*(&v72 + 1) + 8 * j), v25, v26);
        objc_msgSend_setHidden_(v30, v31, 0);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v72, v81, 16);
    }

    while (v27);
  }

  if (objc_msgSend_count(self->_finalTextures, v32, v33) < 2)
  {
    v63 = objc_msgSend_mutableCopy(self->_finalTextures, v34, v35);
    animatableTextures = self->_animatableTextures;
    self->_animatableTextures = v63;

    v67 = objc_msgSend_array(MEMORY[0x277CBEB18], v65, v66);
    finalTextures = self->_finalTextures;
    self->_finalTextures = v67;
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v40 = self->_finalTextures;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v68, v80, 16);
    if (v42)
    {
      v45 = v42;
      v46 = *v69;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v69 != v46)
          {
            objc_enumerationMutation(v40);
          }

          objc_msgSend_frame(*(*(&v68 + 1) + 8 * k), v43, v44, v68);
          v86.origin.x = v48;
          v86.origin.y = v49;
          v86.size.width = v50;
          v86.size.height = v51;
          v84.origin.x = x;
          v84.origin.y = y;
          v84.size.width = width;
          v84.size.height = height;
          v85 = CGRectUnion(v84, v86);
          x = v85.origin.x;
          y = v85.origin.y;
          width = v85.size.width;
          height = v85.size.height;
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v68, v80, 16);
      }

      while (v45);
    }

    v52 = objc_opt_class();
    finalTextures = objc_msgSend_newFlattenedTextureFromTextures_newRect_(v52, v53, self->_finalTextures, x, y, width, height);
    objc_msgSend_setOffset_(finalTextures, v55, v56, x, y);
    objc_msgSend_setTextureType_(finalTextures, v57, 5);
    v60 = objc_msgSend_array(MEMORY[0x277CBEB18], v58, v59);
    v61 = self->_animatableTextures;
    self->_animatableTextures = v60;

    objc_msgSend_addRenderable_(self, v62, finalTextures);
  }
}

- (BOOL)isImageSource
{
  v19 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_count(self->_allTextures, a2, v2))
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_allTextures;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v15;
    isImageSource = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if (isImageSource)
        {
          isImageSource = objc_msgSend_isImageSource(*(*(&v14 + 1) + 8 * i), v7, v8, v14);
        }

        else
        {
          isImageSource = 0;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
    }

    while (v9);
  }

  else
  {
    isImageSource = 1;
  }

  return isImageSource;
}

- (void)renderLayerContentsIfNeeded
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_allTextures;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_renderLayerContentsIfNeeded(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (NSArray)visibleTextures
{
  v3 = 32;
  if (self->_shouldIncludeFinalTexturesInVisibleSet)
  {
    v3 = 16;
  }

  v4 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], a2, *(&self->super.isa + v3));
  v6 = v4;
  if (self->_shouldIncludeFinalTexturesInVisibleSet)
  {
    objc_msgSend_removeObjectsInArray_(v4, v5, self->_titleAndCaptionTextures);
  }

  return v6;
}

- (NSArray)visibleTexturesIncludingCaptions
{
  v4 = objc_msgSend_visibleTextures(self, a2, v2);
  v7 = objc_msgSend_titleAndCaptionTextures(self, v5, v6);
  v9 = objc_msgSend_arrayByAddingObjectsFromArray_(v4, v8, v7);

  return v9;
}

- (id)visibleTexturesForStage:(int64_t)a3 isBuildIn:(BOOL)a4 isContentBuild:(BOOL)a5 shouldFlatten:(BOOL)a6 flattenKey:(id)a7 shouldIncludeCaptions:(BOOL)a8
{
  v8 = a8;
  v9 = a6;
  v83 = a5;
  v85 = a4;
  v12 = a7;
  v84 = objc_msgSend_array(MEMORY[0x277CBEB18], v13, v14);
  v17 = self->_animatableTextures;
  v80 = v12;
  HIDWORD(v79) = v9;
  if (v8)
  {
    v18 = objc_msgSend_titleAndCaptionTextures(self, v15, v16);
    v20 = objc_msgSend_arrayByAddingObjectsFromArray_(v17, v19, v18);

    v17 = v20;
  }

  v21 = MEMORY[0x277CBF398];
  v22 = objc_msgSend_count(v17, v15, v16);
  if (objc_msgSend_count(v17, v23, v24))
  {
    v27 = 0;
    isIncomingContent = 0;
    v29 = -1;
    v30 = 1;
    v31 = 1;
    do
    {
      v32 = objc_msgSend_objectAtIndex_(v17, v25, v27);
      v34 = objc_msgSend_stageIndexForTexture_(self, v33, v32);
      if (v22 >= v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v22;
      }

      if (v29 <= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v29;
      }

      if (v34 == -1)
      {
        v38 = v29;
        v37 = v22;
        v39 = v31;
      }

      else
      {
        v39 = 0;
      }

      if (v34 == -2)
      {
        v31 = 0;
      }

      else
      {
        v29 = v38;
        v22 = v37;
        v31 = v39;
      }

      if (isIncomingContent)
      {
        isIncomingContent = 1;
      }

      else
      {
        isIncomingContent = objc_msgSend_isIncomingContent(v32, v35, v36);
      }

      v27 = v30;
      v42 = objc_msgSend_count(v17, v40, v41) > v30++;
    }

    while (v42);
    v43 = v31 ^ 1;
  }

  else
  {
    isIncomingContent = 0;
    v43 = 0;
    v29 = -1;
  }

  x = *v21;
  y = v21[1];
  width = v21[2];
  height = v21[3];
  if (objc_msgSend_count(v17, v25, v26))
  {
    v50 = 0;
    v51 = 0;
    v53 = v29 != a3 || v29 == -1;
    v55 = v22 == a3 && v22 != -1;
    LODWORD(v79) = v55;
    v56 = 1;
    v82 = v83 || v53;
    v81 = v43 | v83;
    while (1)
    {
      v57 = objc_msgSend_objectAtIndex_(v17, v48, v50, v79);
      if ((objc_msgSend_isFlattenedRepresentation(v57, v58, v59) & 1) == 0)
      {
        v63 = objc_msgSend_stageIndexForTexture_(self, v60, v57);
        if (v63 == a3)
        {
          if (v83)
          {
            if (isIncomingContent)
            {
              goto LABEL_63;
            }
          }

          else if ((objc_msgSend_isIncomingContent(v57, v61, v62) & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        if (v63 == -1 && v85 && v22 == a3 && objc_msgSend_count(v17, v61, v62) != a3)
        {
          goto LABEL_63;
        }

        v64 = v85;
        if (v63 != -1)
        {
          v64 = 1;
        }

        if (((v64 | v82) & 1) == 0 || !((v63 != -1) | v81 & 1) || v63 == -2 && !v85 && v29 == a3 && objc_msgSend_count(v17, v61, v62) != a3)
        {
LABEL_63:
          if (!v51)
          {
            v51 = v57;
          }

          if (objc_msgSend_textureType(v57, v61, v62) == 5)
          {
            v67 = v57;

            v51 = v67;
          }

          objc_msgSend_addObject_(v84, v66, v57);
          objc_msgSend_frame(v57, v68, v69);
          v89.origin.x = v70;
          v89.origin.y = v71;
          v89.size.width = v72;
          v89.size.height = v73;
          v87.origin.x = x;
          v87.origin.y = y;
          v87.size.width = width;
          v87.size.height = height;
          v88 = CGRectUnion(v87, v89);
          x = v88.origin.x;
          y = v88.origin.y;
          width = v88.size.width;
          height = v88.size.height;
          goto LABEL_68;
        }

        v65 = v63 != -2 || !v85;
        if (v65)
        {
          if (v63 != -2)
          {
            goto LABEL_68;
          }
        }

        else if (v79)
        {
          goto LABEL_63;
        }

        if (objc_msgSend_count(v17, v61, v62) == 1)
        {
          goto LABEL_63;
        }
      }

LABEL_68:

      v50 = v56;
      v42 = objc_msgSend_count(v17, v74, v75) > v56++;
      if (!v42)
      {
        goto LABEL_71;
      }
    }
  }

  v51 = 0;
LABEL_71:
  if ((v79 & 0x100000000) != 0 && objc_msgSend_count(v84, v48, v49) >= 2 && v51)
  {
    v77 = objc_msgSend_p_insertNewFlattenedTextureWithArray_rect_stage_insertAfter_flattenKey_(self, v76, v84, a3, v51, v80, x, y, width, height);
  }

  return v84;
}

- (id)visibleTexturesBeforeStage:(int64_t)a3 isBuildIn:(BOOL)a4 isContentBuild:(BOOL)a5 shouldFlatten:(BOOL)a6 flattenKey:(id)a7
{
  v82 = a5;
  v8 = a4;
  v11 = a7;
  if (objc_msgSend_containsFinalTextures(self, v12, v13))
  {
    v16 = objc_msgSend_finalTexturesForStage_(self, v14, a3 - 1);
    goto LABEL_66;
  }

  v79 = a6;
  v80 = v11;
  v83 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15);
  v17 = MEMORY[0x277CBF398];
  v20 = objc_msgSend_count(self->_animatableTextures, v18, v19);
  if (objc_msgSend_count(self->_animatableTextures, v21, v22))
  {
    v25 = 0;
    LOBYTE(isIncomingContent) = 0;
    v27 = -1;
    v28 = 1;
    v29 = 1;
    while (1)
    {
      v30 = objc_msgSend_objectAtIndex_(self->_animatableTextures, v23, v25);
      v32 = objc_msgSend_stageIndexForTexture_(self, v31, v30);
      if (v32 == -2)
      {
        v29 = 0;
        if ((isIncomingContent & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v20 >= v32)
        {
          v35 = v32;
        }

        else
        {
          v35 = v20;
        }

        if (v27 <= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v27;
        }

        if (v32 != -1)
        {
          v27 = v36;
          v20 = v35;
          v29 = 0;
        }

        if ((isIncomingContent & 1) == 0)
        {
LABEL_17:
          isIncomingContent = objc_msgSend_isIncomingContent(v30, v33, v34);
          goto LABEL_18;
        }
      }

      isIncomingContent = 1;
LABEL_18:

      v25 = v28;
      v39 = objc_msgSend_count(self->_animatableTextures, v37, v38) > v28++;
      if (!v39)
      {
        v40 = v29 ^ 1;
        goto LABEL_21;
      }
    }
  }

  v40 = 0;
  isIncomingContent = 0;
  v27 = -1;
LABEL_21:
  x = *v17;
  y = v17[1];
  width = v17[2];
  height = v17[3];
  if (objc_msgSend_count(self->_animatableTextures, v23, v24))
  {
    v47 = 0;
    v49 = v27 > a3 && v27 != -1;
    v51 = v20 < a3 && v20 != -1 && v8;
    v77 = v51;
    v78 = v49;
    v52 = 1;
    v81 = v40 | v82;
    do
    {
      v53 = objc_msgSend_objectAtIndex_(self->_animatableTextures, v45, v47);
      if ((objc_msgSend_isFlattenedRepresentation(v53, v54, v55) & 1) == 0)
      {
        v57 = objc_msgSend_stageIndexForTexture_(self, v56, v53);
        v60 = v57;
        if (v8)
        {
          if (v57 < a3 && v57 != -1)
          {
            goto LABEL_56;
          }
        }

        else if (v57 > a3)
        {
          goto LABEL_56;
        }

        v62 = v57 != -1 || v8;
        if (((!v82 | v62 & isIncomingContent) & 1) == 0 || !((v57 != -1) | v81 & 1) || v57 == -1 && v8 && v20 < a3 && v20 != objc_msgSend_count(self->_animatableTextures, v58, v59))
        {
          goto LABEL_56;
        }

        if ((v62 | v82))
        {
          if (v60 != -2 || v8 || v27 <= a3)
          {
            if (v60 != -2 || !v77)
            {
              goto LABEL_57;
            }
          }

          else if (v27 == objc_msgSend_count(self->_animatableTextures, v58, v59) && !v77)
          {
            goto LABEL_57;
          }

LABEL_56:
          objc_msgSend_addObject_(v83, v58, v53);
          objc_msgSend_frame(v53, v63, v64);
          v87.origin.x = v65;
          v87.origin.y = v66;
          v87.size.width = v67;
          v87.size.height = v68;
          v85.origin.x = x;
          v85.origin.y = y;
          v85.size.width = width;
          v85.size.height = height;
          v86 = CGRectUnion(v85, v87);
          x = v86.origin.x;
          y = v86.origin.y;
          width = v86.size.width;
          height = v86.size.height;
          goto LABEL_57;
        }

        if (v78)
        {
          goto LABEL_56;
        }
      }

LABEL_57:

      v47 = v52;
      v39 = objc_msgSend_count(self->_animatableTextures, v69, v70) > v52++;
    }

    while (v39);
  }

  if (v79)
  {
    v16 = v83;
    v11 = v80;
    if (objc_msgSend_count(v83, v45, v46) >= 2)
    {
      v73 = objc_msgSend_firstObject(v83, v71, v72);
      v75 = objc_msgSend_p_insertNewFlattenedTextureWithArray_rect_stage_insertAfter_flattenKey_(self, v74, v83, a3, v73, v80, x, y, width, height);
    }
  }

  else
  {
    v11 = v80;
    v16 = v83;
  }

LABEL_66:

  return v16;
}

- (BOOL)shouldAnimateBackgroundTexturesWithStage:(int64_t)a3 isBuildIn:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_count(self->_animatableTextures, a2, a3);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_animatableTextures;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
    v14 = -1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_stageIndexForTexture_(self, v11, *(*(&v20 + 1) + 8 * i), v20);
        if (v7 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v7;
        }

        if (v14 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        if (v16 < 0xFFFFFFFFFFFFFFFELL)
        {
          v14 = v18;
          v7 = v17;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v20, v24, 16);
    }

    while (v12);
  }

  else
  {
    v14 = -1;
  }

  if (v4)
  {
    return v7 >= a3;
  }

  else
  {
    return v14 <= a3;
  }
}

- (id)p_insertNewFlattenedTextureWithArray:(id)a3 rect:(CGRect)a4 stage:(int64_t)a5 insertAfter:(id)a6 flattenKey:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v100 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  if (objc_msgSend_count(v15, v18, v19) <= 1)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDTextureSet p_insertNewFlattenedTextureWithArray:rect:stage:insertAfter:flattenKey:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTextureSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 611, 0, "Can't flatten without textures.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (!v16)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDTextureSet p_insertNewFlattenedTextureWithArray:rect:stage:insertAfter:flattenKey:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTextureSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 612, 0, "Can't insert flattened texture without a place to insert.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v35 = self->_allTextures;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v94, v99, 16);
  if (v37)
  {
    v40 = v37;
    v41 = *v95;
    while (2)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v95 != v41)
        {
          objc_enumerationMutation(v35);
        }

        v43 = *(*(&v94 + 1) + 8 * i);
        if (objc_msgSend_isFlattenedRepresentation(v43, v38, v39))
        {
          v44 = v43;

          if (v44)
          {
            objc_msgSend_removeObjectForKey_(self->_textureToStageIndexMap, v45, v44);
            objc_msgSend_removeObject_(self->_allTextures, v46, v44);
            objc_msgSend_removeObject_(self->_animatableTextures, v47, v44);
            objc_msgSend_teardown(v44, v48, v49);
          }

          goto LABEL_16;
        }
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v94, v99, 16);
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v44 = 0;
LABEL_16:
  v50 = objc_opt_class();
  v52 = objc_msgSend_newFlattenedTextureFromTextures_newRect_(v50, v51, v15, x, y, width, height);
  objc_msgSend_setOffset_(v52, v53, v54, x, y);
  objc_msgSend_setParent_(v52, v55, self);
  objc_msgSend_setIsFlattenedRepresentation_(v52, v56, 1);
  textureToStageIndexMap = self->_textureToStageIndexMap;
  v59 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v58, a5);
  objc_msgSend_setObject_forKey_(textureToStageIndexMap, v60, v59, v52);

  flattenKeyToFlattenedTextureMap = self->_flattenKeyToFlattenedTextureMap;
  if (!flattenKeyToFlattenedTextureMap)
  {
    v64 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v61, v62);
    v65 = self->_flattenKeyToFlattenedTextureMap;
    self->_flattenKeyToFlattenedTextureMap = v64;

    flattenKeyToFlattenedTextureMap = self->_flattenKeyToFlattenedTextureMap;
  }

  v66 = objc_msgSend_copy(v15, v61, v62);
  objc_msgSend_setObject_forKey_(flattenKeyToFlattenedTextureMap, v67, v66, v17);

  allTextures = self->_allTextures;
  v70 = objc_msgSend_indexOfObject_(allTextures, v69, v16);
  objc_msgSend_insertObject_atIndex_(allTextures, v71, v52, v70 + 1);
  animatableTextures = self->_animatableTextures;
  v74 = objc_msgSend_indexOfObject_(animatableTextures, v73, v16);
  objc_msgSend_insertObject_atIndex_(animatableTextures, v75, v52, v74 + 1);
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v76 = v15;
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v90, v98, 16);
  if (v78)
  {
    v81 = v78;
    v82 = *v91;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v91 != v82)
        {
          objc_enumerationMutation(v76);
        }

        v84 = objc_msgSend_layer(*(*(&v90 + 1) + 8 * j), v79, v80, v90);
        objc_msgSend_setHidden_(v84, v85, 1);
      }

      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v79, &v90, v98, 16);
    }

    while (v81);
  }

  objc_msgSend_removeAllObjects(v76, v86, v87);
  objc_msgSend_addObject_(v76, v88, v52);

  return v52;
}

- (BOOL)hasTexture:(id)a3 beenFlattenedForKey:(id)a4
{
  flattenKeyToFlattenedTextureMap = self->_flattenKeyToFlattenedTextureMap;
  v6 = a3;
  v8 = objc_msgSend_objectForKey_(flattenKeyToFlattenedTextureMap, v7, a4);
  LOBYTE(flattenKeyToFlattenedTextureMap) = objc_msgSend_containsObject_(v8, v9, v6);

  return flattenKeyToFlattenedTextureMap;
}

- (void)removeRenderable:(id)a3
{
  allTextures = self->_allTextures;
  v5 = a3;
  objc_msgSend_removeObject_(allTextures, v6, v5);
  objc_msgSend_removeObject_(self->_animatableTextures, v7, v5);
  v12 = objc_msgSend_layer(v5, v8, v9);

  objc_msgSend_removeFromSuperlayer(v12, v10, v11);
}

- (id)firstVisibleTextureForTextureType:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_animatableTextures;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_textureType(v12, v7, v8, v15) == a3)
        {
          v13 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)visibleTexturesWithTextureType:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_animatableTextures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_textureType(v14, v9, v10, v16) == a3)
        {
          objc_msgSend_addObject_(v5, v9, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v16, v20, 16);
    }

    while (v11);
  }

  return v5;
}

+ (id)newFlattenedTextureFromTextures:(id)a3 newRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = objc_msgSend_copy(a3, a2, a3);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2766AC66C;
  v19[3] = &unk_27A6CCB60;
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  v20 = v8;
  v9 = v8;
  v10 = MEMORY[0x277C9C8B0](v19);
  TSUCeilSize();
  v12 = v11;
  v14 = v13;
  v15 = [TSDTexturedRectangle alloc];
  v17 = objc_msgSend_initWithSize_offset_renderBlock_(v15, v16, v10, v12, v14, x, y);

  return v17;
}

- (int64_t)stageIndexForTexture:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_textureToStageIndexMap, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_integerValue(v3, v4, v5);
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)finalTexturesForStage:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_finalTextures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_stageIndexForTexture_(self, v9, v13, v15) == a3)
        {
          objc_msgSend_addObject_(v5, v9, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v19, 16);
    }

    while (v10);
  }

  return v5;
}

- (void)hideLayersOfFinalTexturesAtEventIndex:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_finalTextures;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v13, v17, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_viewLayerAtEventIndex_(*(*(&v13 + 1) + 8 * v10), v7, a3, v13);
        objc_msgSend_setHidden_(v11, v12, 1);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v13, v17, 16);
    }

    while (v8);
  }
}

- (void)setLayerGeometryAtEventIndex:(unint64_t)a3
{
  v5 = objc_msgSend_viewLayerAtEventIndex_(self, a2, a3);
  objc_msgSend_p_setLayerGeometryWithLayer_(self, v4, v5);
}

- (void)p_setLayerGeometryWithLayer:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_rep(self, v5, v6);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDTextureSet p_setLayerGeometryWithLayer:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTextureSet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 750, 0, "invalid nil value for '%{public}s'", "rep");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_canvas(v9, v7, v8);
  objc_msgSend_viewScale(v17, v18, v19);

  if (self->_isMagicMove)
  {
    objc_msgSend_frameForMagicMove(v9, v20, v21);
  }

  else
  {
    v22 = *(MEMORY[0x277CD9DE8] + 80);
    v104[4] = *(MEMORY[0x277CD9DE8] + 64);
    v104[5] = v22;
    v23 = *(MEMORY[0x277CD9DE8] + 112);
    v104[6] = *(MEMORY[0x277CD9DE8] + 96);
    v104[7] = v23;
    v24 = *(MEMORY[0x277CD9DE8] + 16);
    v104[0] = *MEMORY[0x277CD9DE8];
    v104[1] = v24;
    v25 = *(MEMORY[0x277CD9DE8] + 48);
    v104[2] = *(MEMORY[0x277CD9DE8] + 32);
    v104[3] = v25;
    objc_msgSend_setTransform_(v4, v20, v104);
    v28 = objc_msgSend_layout(v9, v26, v27);
    v31 = objc_msgSend_geometry(v28, v29, v30);
    objc_msgSend_frame(v31, v32, v33);
    TSUMultiplyRectScalar();

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v36 = objc_msgSend_sublayers(v4, v34, v35);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v100, v106, 16);
    if (v38)
    {
      v41 = v38;
      x = *MEMORY[0x277CBF398];
      y = *(MEMORY[0x277CBF398] + 8);
      width = *(MEMORY[0x277CBF398] + 16);
      height = *(MEMORY[0x277CBF398] + 24);
      v46 = *v101;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v101 != v46)
          {
            objc_enumerationMutation(v36);
          }

          objc_msgSend_frame(*(*(&v100 + 1) + 8 * i), v39, v40);
          v110.origin.x = v48;
          v110.origin.y = v49;
          v110.size.width = v50;
          v110.size.height = v51;
          v108.origin.x = x;
          v108.origin.y = y;
          v108.size.width = width;
          v108.size.height = height;
          v109 = CGRectUnion(v108, v110);
          x = v109.origin.x;
          y = v109.origin.y;
          width = v109.size.width;
          height = v109.size.height;
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v100, v106, 16);
      }

      while (v41);
    }
  }

  TSURectWithSize();
  objc_msgSend_setBounds_(v4, v52, v53);
  TSUCenterOfRect();
  objc_msgSend_setPosition_(v4, v54, v55);
  v56 = v9;
  v59 = objc_msgSend_parentRep(v56, v57, v58);

  v62 = v56;
  if (v59)
  {
    v63 = v56;
    do
    {
      v62 = objc_msgSend_parentRep(v63, v60, v61);

      v66 = objc_msgSend_parentRep(v62, v64, v65);

      v63 = v62;
    }

    while (v66);
  }

  objc_msgSend_centerForRotation(v62, v60, v61);
  v69 = objc_msgSend_layout(v62, v67, v68);
  v72 = v69;
  if (v69)
  {
    objc_msgSend_transformInRoot(v69, v70, v71);
  }

  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  self->_center.x = v75;
  self->_center.y = v76;
  layer = self->_layer;
  if (layer == v4)
  {
    objc_msgSend_frame(layer, v73, v74);
    TSUCenterOfRect();
    self->_originalPosition.x = v82;
    self->_originalPosition.y = v83;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v80 = objc_msgSend_objectEnumerator(self->_eventIndexToViewLayerMap, v84, v85);
    v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v86, &v96, v105, 16);
    if (v87)
    {
      v90 = v87;
      v91 = *v97;
      do
      {
        for (j = 0; j != v90; ++j)
        {
          if (*v97 != v91)
          {
            objc_enumerationMutation(v80);
          }

          v93 = *(*(&v96 + 1) + 8 * j);
          objc_msgSend_frame(self->_layer, v88, v89);
          objc_msgSend_setFrame_(v93, v94, v95);
        }

        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v88, &v96, v105, 16);
      }

      while (v90);
    }
  }

  else
  {
    objc_msgSend_frame(v4, v73, v74);
    TSUCenterOfRect();
    v80 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v78, v79);
    objc_msgSend_setValue_forKey_(v4, v81, v80, @"kTSDTextureLayerKeyOriginalPosition");
  }
}

- (void)adjustAnchorPointRelativeToCenterOfRotationAtEventIndex:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_allTextures;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_adjustAnchorRelativeToCenterOfRotation_atEventIndex_(*(*(&v12 + 1) + 8 * v11++), v8, a3, self->_center.x, self->_center.y, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)resetAnchorPointAtEventIndex:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_allTextures;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_resetAnchorPointAtEventIndex_(*(*(&v11 + 1) + 8 * v10++), v7, a3, v11);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (void)p_resetAttributesWithViewScale:(double)a3 eventIndex:(unint64_t)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_viewLayerAtEventIndex_(self, a2, a4, a3);
  v9 = v6;
  if (v6 == self->_layer)
  {
    objc_msgSend_setPosition_(v6, v7, v8, self->_originalPosition.x, self->_originalPosition.y);
  }

  else
  {
    v10 = objc_msgSend_valueForKey_(v6, v7, @"kTSDTextureLayerKeyOriginalPosition");
    objc_msgSend_CGPointValue(v10, v11, v12);
    objc_msgSend_setPosition_(v9, v13, v14);
  }

  textureOpacity = self->_textureOpacity;
  *&textureOpacity = textureOpacity;
  objc_msgSend_setOpacity_(v9, v15, v16, textureOpacity);
  v90 = *(MEMORY[0x277CD9DE8] + 80);
  v92 = *(MEMORY[0x277CD9DE8] + 64);
  v102 = v92;
  v103 = v90;
  v86 = *(MEMORY[0x277CD9DE8] + 112);
  v88 = *(MEMORY[0x277CD9DE8] + 96);
  v104 = v88;
  v105 = v86;
  v83 = *(MEMORY[0x277CD9DE8] + 16);
  v84 = *MEMORY[0x277CD9DE8];
  *&v100.a = *MEMORY[0x277CD9DE8];
  *&v100.c = v83;
  v81 = *(MEMORY[0x277CD9DE8] + 48);
  v82 = *(MEMORY[0x277CD9DE8] + 32);
  *&v100.tx = v82;
  v101 = v81;
  v85 = v9;
  objc_msgSend_setTransform_(v9, v18, &v100);
  if (self->_alternateLayer)
  {
    objc_msgSend_position(self->_layer, v19, v20);
    objc_msgSend_setPosition_(self->_alternateLayer, v21, v22);
    LODWORD(v23) = 1.0;
    objc_msgSend_setOpacity_(self->_alternateLayer, v24, v25, v23);
    alternateLayer = self->_alternateLayer;
    v102 = v92;
    v103 = v90;
    v104 = v88;
    v105 = v86;
    *&v100.a = v84;
    *&v100.c = v83;
    *&v100.tx = v82;
    v101 = v81;
    objc_msgSend_setTransform_(alternateLayer, v27, &v100);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v28 = self->_allTextures;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v96, v106, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v97;
    v91 = *(MEMORY[0x277CBF2C0] + 16);
    v93 = *MEMORY[0x277CBF2C0];
    v89 = *(MEMORY[0x277CBF2C0] + 32);
    v87 = v28;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v97 != v33)
        {
          objc_enumerationMutation(v28);
        }

        v35 = *(*(&v96 + 1) + 8 * i);
        v38 = objc_msgSend_viewLayerAtEventIndex_(v35, v31, a4);
        *&v100.a = v93;
        *&v100.c = v91;
        *&v100.tx = v89;
        if (self->_isMagicMove && self->_textureAngle != 0.0 && objc_msgSend_textureType(v35, v36, v37) != 11 && objc_msgSend_textureType(v35, v36, v39) != 3)
        {
          x = self->_center.x;
          v42 = objc_msgSend_layer(v35, v36, v40);
          objc_msgSend_position(v42, v43, v44);
          v46 = x - v45;
          y = self->_center.y;
          v50 = objc_msgSend_layer(v35, v48, v49);
          objc_msgSend_position(v50, v51, v52);
          *&v95.a = v93;
          *&v95.c = v91;
          *&v95.tx = v89;
          CGAffineTransformTranslate(&v100, &v95, v46, y - v53);

          v54 = -self->_textureAngle;
          v94 = v100;
          CGAffineTransformRotate(&v95, &v94, v54);
          v100 = v95;
          v57 = objc_msgSend_layer(v35, v55, v56);
          objc_msgSend_position(v57, v58, v59);
          v61 = v60 - self->_center.x;
          v64 = objc_msgSend_layer(v35, v62, v63);
          objc_msgSend_position(v64, v65, v66);
          v68 = v67 - self->_center.y;
          v94 = v100;
          CGAffineTransformTranslate(&v95, &v94, v61, v68);
          v100 = v95;

          v28 = v87;
        }

        v95 = v100;
        objc_msgSend_setAffineTransform_(v38, v36, &v95);
        v71 = objc_msgSend_layer(v35, v69, v70);

        if (v38 == v71)
        {
          objc_msgSend_originalPosition(v35, v72, v73);
          objc_msgSend_setPosition_(v38, v79, v80);
        }

        else
        {
          v74 = objc_msgSend_valueForKey_(v38, v72, @"kTSDTextureLayerKeyOriginalPosition");
          objc_msgSend_CGPointValue(v74, v75, v76);
          objc_msgSend_setPosition_(v38, v77, v78);
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v96, v106, 16);
    }

    while (v32);
  }
}

- (void)p_applyPositionFromAttributes:(id)a3 viewScale:(double)a4 eventIndex:(unint64_t)a5
{
  v7 = a3;
  v23 = objc_msgSend_viewLayerAtEventIndex_(self, v8, a5);
  v10 = objc_msgSend_valueForKey_(v7, v9, @"New Position Delta");

  if (v10)
  {
    objc_msgSend_CGPointValue(v10, v11, v12);
    TSUMultiplyPointScalar();
    if (v23 != self->_layer)
    {
      v14 = objc_msgSend_valueForKey_(v23, v13, @"kTSDTextureLayerKeyOriginalPosition");
      objc_msgSend_CGPointValue(v14, v15, v16);
    }

    TSUAddPoints();
    objc_msgSend_setPosition_(v23, v17, v18);
    if (self->_alternateLayer)
    {
      objc_msgSend_position(v23, v19, v20);
      objc_msgSend_setPosition_(self->_alternateLayer, v21, v22);
    }
  }
}

- (void)p_getComponentsOpacity:(double *)a3 scale:(double *)a4 angle:(double *)a5 fromAttributes:(id)a6 shouldApplyOpacity:(BOOL *)a7 shouldApplyAngle:(BOOL *)a8 shouldApplyScale:(BOOL *)a9
{
  v14 = a6;
  if (v14)
  {
    v36 = v14;
    v16 = objc_msgSend_valueForKey_(v14, v15, @"sfx-action-color-alpha");
    v19 = v16;
    if (a3)
    {
      if (v16)
      {
        objc_msgSend_floatValue(v16, v17, v18);
        *a3 = (v20 / 100.0);
        if (a7)
        {
          *a7 = 1;
        }
      }
    }

    v21 = objc_msgSend_valueForKey_(v36, v17, @"sfx-action-rotation-angle");
    v25 = objc_msgSend_valueForKey_(v36, v22, @"sfx-action-rotation-direction");
    if (a5 && v21)
    {
      objc_msgSend_floatValue(v21, v23, v24);
      *a5 = v27 * 0.0174532925;
      if (v25 && objc_msgSend_intValue(v25, v23, v26) == 32)
      {
        *a5 = -*a5;
      }

      if (a8)
      {
        *a8 = 1;
      }
    }

    v28 = objc_msgSend_valueForKey_(v36, v23, @"sfx-action-scale-size");
    v31 = v28;
    if (a4 && v28)
    {
      objc_msgSend_floatValue(v28, v29, v30);
      v33 = v32;
      v34 = v32 == 0.0;
      v35 = 0.00001;
      if (!v34)
      {
        v35 = v33;
      }

      *a4 = v35;
      if (a9)
      {
        *a9 = 1;
      }
    }

    v14 = v36;
  }
}

- (BOOL)p_areAttributes:(id)a3 equalToAttributes:(id)a4
{
  v15 = 1.0;
  v13 = 1.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  v10 = 1.0;
  v6 = a4;
  objc_msgSend_p_getComponentsOpacity_scale_angle_fromAttributes_shouldApplyOpacity_shouldApplyAngle_shouldApplyScale_(self, v7, &v15, &v13, &v14, a3, 0, 0, 0);
  objc_msgSend_p_getComponentsOpacity_scale_angle_fromAttributes_shouldApplyOpacity_shouldApplyAngle_shouldApplyScale_(self, v8, &v12, &v10, &v11, v6, 0, 0, 0);

  return v15 == v12 && v13 == v10 && v14 == v11;
}

- (void)applyActionEffect:(id)a3 viewScale:(double)a4 isMagicMove:(BOOL)a5 shouldBake:(BOOL)a6 applyScaleOnly:(BOOL)a7 ignoreScale:(BOOL)a8 shouldCheckActionKeys:(BOOL)a9 eventIndex:(unint64_t)a10
{
  v10 = a9;
  v13 = a6;
  v14 = a5;
  v145 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v20 = v17;
  if (!v13)
  {
LABEL_7:
    v106 = v10;
    v23 = 0x277CD9000uLL;
    objc_msgSend_begin(MEMORY[0x277CD9FF0], v18, v19);
    objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v24, 1);
    if (!v20 && !v14)
    {
      objc_msgSend_p_resetAttributesWithViewScale_eventIndex_(self, v25, a10, a4);
LABEL_54:
      objc_msgSend_commit(*(v23 + 4080), v26, v27);
      goto LABEL_55;
    }

    v142 = 1.0;
    angle = 0.0;
    sx = 1.0;
    v139 = 0;
    v138 = 0;
    objc_msgSend_p_getComponentsOpacity_scale_angle_fromAttributes_shouldApplyOpacity_shouldApplyAngle_shouldApplyScale_(self, v25, &v142, &sx, &angle, v20, &v139, &v138, &v139 + 1);
    if ((v138 & 1) != 0 || (v139 & 0x100) != 0 || self->_isMagicMove)
    {
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = sub_2766AE010;
      v130[3] = &unk_27A6CCB88;
      v131 = a7;
      v132 = v13;
      v133 = v14;
      v134 = v138;
      v135 = v10;
      *&v130[5] = angle;
      *&v130[6] = sx;
      v136 = a8;
      v137 = HIBYTE(v139);
      v130[4] = self;
      v130[7] = a10;
      v28 = MEMORY[0x277C9C8B0](v130);
      v29 = v28;
      if (self->_alternateLayer)
      {
        (*(v28 + 16))(v28, 0);
        v31 = objc_msgSend_valueForKey_(self->_alternateLayer, v30, @"kTSDTextureSetAlternateLayerKeyHidden");
        v33 = objc_msgSend_valueForKey_(self->_alternateLayer, v32, @"kTSDTextureSetAlternateLayerKeyMirror");
        v36 = v33;
        if (v31 && v33)
        {
          v37 = v20;
          v38 = objc_msgSend_nonretainedObjectValue(v31, v34, v35);
          v43 = objc_msgSend_nonretainedObjectValue(v36, v39, v40);
          if (v38)
          {
            objc_msgSend_transform(v38, v41, v42);
          }

          else
          {
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v121 = 0u;
            memset(&v120, 0, sizeof(v120));
          }

          v116 = v122;
          v117 = v123;
          v118 = v124;
          v119 = v125;
          v114 = v120;
          v115 = v121;
          objc_msgSend_setTransform_(v43, v41, &v114);

          v20 = v37;
        }

        v49 = 1;
      }

      else
      {
        v103 = v14;
        v105 = v20;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        obj = self->_allTextures;
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v126, v144, 16);
        v104 = v13;
        if (v45)
        {
          v47 = v45;
          v48 = *v127;
          v49 = 1;
          v50 = v10;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v127 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v52 = *(*(&v126 + 1) + 8 * i);
              v53 = objc_msgSend_viewLayerAtEventIndex_(v52, v46, a10);
              (v29)[2](v29, v52, v53);
              if (v50)
              {
                v56 = objc_msgSend_layer(v52, v54, v55);
                v58 = objc_msgSend_valueForKey_(v56, v57, @"apple:action-motion-path");
                v59 = v58 == 0;

                v49 &= v59;
                v50 = v106;
              }
            }

            v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v126, v144, 16);
          }

          while (v47);
        }

        else
        {
          v49 = 1;
        }

        v13 = v104;
        if (v103)
        {
          v20 = v105;
          v23 = 0x277CD9000;
          if (v138 == 1)
          {
            self->_textureAngle = self->_textureAngle - angle;
          }
        }

        else
        {
          v20 = v105;
          v23 = 0x277CD9000;
        }
      }

      self->_isBaked = v13;
    }

    else
    {
      v49 = 1;
    }

    if (v139 == 1)
    {
      v60 = objc_msgSend_viewLayerAtEventIndex_(self, v26, a10);
      HIDWORD(v61) = HIDWORD(v142);
      *&v61 = v142;
      objc_msgSend_setOpacity_(v60, v62, v63, v61);

      if ((v49 & 1) == 0)
      {
LABEL_40:
        if (!v13)
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else if ((v49 & 1) == 0)
    {
      goto LABEL_40;
    }

    objc_msgSend_p_applyPositionFromAttributes_viewScale_eventIndex_(self, v26, v20, a10, a4);
    if (!v13)
    {
      goto LABEL_54;
    }

LABEL_44:
    v64 = objc_msgSend_copy(self->_origBoundingRectForStageMap, v26, v27);
    boundingRectForStageMap = self->_boundingRectForStageMap;
    self->_boundingRectForStageMap = v64;

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v68 = objc_msgSend_copy(self->_boundingRectForStageMap, v66, v67);
    v71 = objc_msgSend_keyEnumerator(v68, v69, v70);

    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v110, v143, 16);
    if (v73)
    {
      v75 = v73;
      v76 = *v111;
      v77 = MEMORY[0x277CBF2C0];
      do
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v111 != v76)
          {
            objc_enumerationMutation(v71);
          }

          v79 = *(*(&v110 + 1) + 8 * j);
          v80 = objc_msgSend_objectForKey_(self->_boundingRectForStageMap, v74, v79);
          v83 = v80;
          if (v80)
          {
            objc_msgSend_CGRectValue(v80, v81, v82);
            v85 = v84;
            v87 = v86;
            v89 = v88;
            v91 = v90;
            v92 = v77[1];
            *&v114.a = *v77;
            *&v114.c = v92;
            *&v114.tx = v77[2];
            x = self->_center.x;
            y = self->_center.y;
            *&v109.a = *&v114.a;
            *&v109.c = v92;
            *&v109.tx = *&v114.tx;
            CGAffineTransformTranslate(&v114, &v109, x, y);
            v108 = v114;
            CGAffineTransformScale(&v109, &v108, sx, sx);
            v114 = v109;
            v108 = v109;
            CGAffineTransformRotate(&v109, &v108, angle);
            v114 = v109;
            v108 = v109;
            CGAffineTransformTranslate(&v109, &v108, -x, -y);
            v114 = v109;
            v146.origin.x = v85;
            v146.origin.y = v87;
            v146.size.width = v89;
            v146.size.height = v91;
            v147 = CGRectApplyAffineTransform(v146, &v109);
            v95 = v147.origin.x;
            v96 = v147.origin.y;
            width = v147.size.width;
            height = v147.size.height;
            v101 = objc_msgSend_intValue(v79, v99, v100);
            objc_msgSend_setBoundingRect_forStage_(self, v102, v101, v95, v96, width, height);
          }
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v110, v143, 16);
      }

      while (v75);
    }

    goto LABEL_54;
  }

  if (!self->_isBaked || (v19 = self->_bakedAttributes) == 0 || !objc_msgSend_isEqualToDictionary_(v17, v18, v19))
  {
    v21 = objc_msgSend_copy(v20, v18, v19);
    bakedAttributes = self->_bakedAttributes;
    self->_bakedAttributes = v21;

    goto LABEL_7;
  }

  objc_msgSend_p_applyPositionFromAttributes_viewScale_eventIndex_(self, v18, v20, a10, a4);
LABEL_55:
}

- (void)setBoundingRect:(CGRect)a3
{
  self->_boundingRect = a3;
  MidX = CGRectGetMidX(a3);
  MidY = CGRectGetMidY(self->_boundingRect);
  self->_center.x = MidX;
  self->_center.y = MidY;
}

- (void)setBoundingRect:(CGRect)a3 forStage:(int64_t)a4
{
  boundingRectForStageMap = self->_boundingRectForStageMap;
  v9 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], a2, a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v6, a4);
  objc_msgSend_setObject_forKey_(boundingRectForStageMap, v8, v9, v7);
}

- (CGRect)frame
{
  objc_msgSend_frame(self->_layer, a2, v2);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setIsBaked:(BOOL)a3
{
  if (self->_isBaked && !a3)
  {
    bakedAttributes = self->_bakedAttributes;
    self->_bakedAttributes = 0;
  }

  self->_isBaked = a3;
}

- (void)setBitmapRenderingQualityInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_bitmapRenderingQualityInfo = v4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_allTextures;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_setBitmapRenderingQualityInfo_(*(*(&v12 + 1) + 8 * v11++), v8, v4, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v16, 16);
    }

    while (v9);
  }
}

- (CGRect)p_frameAtEventIndex:(unint64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  objc_msgSend_frame(self, a2, a3);
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if ((objc_msgSend_masksToBounds(self->_layer, v13, v14) & 1) == 0)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = self->_allTextures;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v33, v37, 16);
    if (v17)
    {
      v19 = v17;
      v20 = *v34;
      do
      {
        v21 = 0;
        do
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = objc_msgSend_viewLayerAtEventIndex_(*(*(&v33 + 1) + 8 * v21), v18, a3, v33);
          objc_msgSend_frame(v22, v23, v24);
          v42.origin.x = v25;
          v42.origin.y = v26;
          v42.size.width = v27;
          v42.size.height = v28;
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          v40 = CGRectUnion(v39, v42);
          x = v40.origin.x;
          y = v40.origin.y;
          width = v40.size.width;
          height = v40.size.height;

          ++v21;
        }

        while (v19 != v21);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v33, v37, 16);
      }

      while (v19);
    }
  }

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)renderIntoContext:(CGContext *)a3 eventIndex:(unint64_t)a4 requiresTransparentBackground:(BOOL)a5
{
  v5 = a5;
  v64 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_viewLayerAtEventIndex_(self, a2, a4);
  if (objc_msgSend_isHidden(v9, v10, v11))
  {
    goto LABEL_27;
  }

  objc_msgSend_p_frameAtEventIndex_(self, v12, a4);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGContextSaveGState(a3);
  objc_msgSend_frame(v9, v21, v22);
  v24 = v23;
  objc_msgSend_frame(v9, v25, v26);
  CGContextTranslateCTM(a3, v24, v27);
  objc_msgSend_opacity(v9, v28, v29);
  if (v30 == 1.0)
  {
    if (!v5)
    {
      v31 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    CGContextSetAlpha(a3, v30);
  }

  v65.origin.x = v14;
  v65.origin.y = v16;
  v65.size.width = v18;
  v65.size.height = v20;
  CGContextBeginTransparencyLayerWithRect(a3, v65, 0);
  v31 = 1;
LABEL_6:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v53 = self;
  v32 = self->_allTextures;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v58, v63, 16);
  if (v34)
  {
    v37 = v34;
    v38 = 0;
    v39 = *v59;
    do
    {
      v40 = 0;
      do
      {
        if (*v59 != v39)
        {
          objc_enumerationMutation(v32);
        }

        v41 = *(*(&v58 + 1) + 8 * v40);
        if (!v31 || objc_msgSend_textureType(*(*(&v58 + 1) + 8 * v40), v35, v36) != 15 && objc_msgSend_textureType(v41, v35, v36) != 16)
        {
          objc_msgSend_renderIntoContext_eventIndex_shouldApplyAlpha_shouldClipToBounds_(v41, v35, a3, a4, 1, v38 & 1);
          v38 |= objc_msgSend_textureType(v41, v42, v43) == 6;
        }

        ++v40;
      }

      while (v37 != v40);
      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v58, v63, 16);
    }

    while (v37);
  }

  if (v31)
  {
    CGContextEndTransparencyLayer(a3);
    CGContextSetAlpha(a3, 1.0);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v46 = objc_msgSend_titleAndCaptionTextures(v53, v44, v45);
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v54, v62, 16);
    if (v48)
    {
      v50 = v48;
      v51 = *v55;
      do
      {
        v52 = 0;
        do
        {
          if (*v55 != v51)
          {
            objc_enumerationMutation(v46);
          }

          objc_msgSend_renderIntoContext_eventIndex_shouldApplyAlpha_shouldClipToBounds_(*(*(&v54 + 1) + 8 * v52++), v49, a3, a4, 1, 0);
        }

        while (v50 != v52);
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v54, v62, 16);
      }

      while (v50);
    }
  }

  CGContextRestoreGState(a3);
LABEL_27:
}

- (BOOL)isRenderable
{
  v19 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_count(self->_allTextures, a2, v2))
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_allTextures;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v15;
    isRenderable = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        if (isRenderable)
        {
          isRenderable = objc_msgSend_isRenderable(*(*(&v14 + 1) + 8 * i), v7, v8, v14);
        }

        else
        {
          isRenderable = 0;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
    }

    while (v9);
  }

  else
  {
    isRenderable = 1;
  }

  return isRenderable;
}

- (void)evictRenderedResources
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_animatableTextures;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_evictRenderedResources(*(*(&v10 + 1) + 8 * v9++), v5, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)resetToOriginalSourceAtEventIndex:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_isBaked)
  {
    self->_isBaked = 0;
    bakedAttributes = self->_bakedAttributes;
    self->_bakedAttributes = 0;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_allTextures;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
    if (v8)
    {
      v10 = v8;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          objc_msgSend_resetToSourceImageAtEventIndex_(v13, v9, a3, v18);
          objc_msgSend_releaseMetalTexture(v13, v14, v15);
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v18, v22, 16);
      }

      while (v10);
    }
  }

  if (!a3)
  {
    v16 = objc_msgSend_copy(self->_origBoundingRectForStageMap, a2, a3);
    boundingRectForStageMap = self->_boundingRectForStageMap;
    self->_boundingRectForStageMap = v16;
  }
}

- (void)resetLayers
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend_setSublayers_(self->_layer, a2, 0);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_allTextures;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v3);
        }

        layer = self->_layer;
        v12 = objc_msgSend_layer(*(*(&v14 + 1) + 8 * v10), v6, v7, v14);
        objc_msgSend_addSublayer_(layer, v13, v12);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v14, v18, 16);
    }

    while (v8);
  }
}

- (void)addPerspectiveLayerToTexture:(id)a3 withShowSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v62 = a3;
  v9 = objc_msgSend_layer(v62, v7, v8);
  v12 = objc_msgSend_superlayer(v9, v10, v11);
  v15 = objc_msgSend_layer(self, v13, v14);

  if (v12 == v15)
  {
    v18 = objc_msgSend_layer(v62, v16, v17);
    v19 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v22 = objc_msgSend_layer(self, v20, v21);
    objc_msgSend_frame(v22, v23, v24);
    TSUSubtractPoints();
    v26 = v25;
    v28 = v27;

    v31 = objc_msgSend_layer(self, v29, v30);
    objc_msgSend_bounds(v31, v32, v33);
    v35 = v26 / v34;

    v38 = objc_msgSend_layer(self, v36, v37);
    objc_msgSend_bounds(v38, v39, v40);
    v42 = v28 / v41;

    objc_msgSend_setAnchorPoint_(v19, v43, v44, v35, v42);
    objc_msgSend_setPosition_(v19, v45, v46, v26, v28);
    v49 = objc_msgSend_layer(self, v47, v48);
    objc_msgSend_bounds(v49, v50, v51);
    objc_msgSend_setBounds_(v19, v52, v53);

    objc_msgSend_setName_(v19, v54, @"Perspective layer");
    v57 = objc_msgSend_layer(self, v55, v56);
    objc_msgSend_replaceSublayer_with_(v57, v58, v18, v19);

    objc_msgSend_addSublayer_(v19, v59, v18);
    objc_msgSend_tsd_addPerspectiveSublayerProjectionUsingScreenSize_(v19, v60, v61, width, height);
  }
}

- (void)removeAllPerspectiveLayers
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = self->_allTextures;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v33, v37, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v34;
    do
    {
      v9 = 0;
      v32 = v7;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = objc_msgSend_layer(*(*(&v33 + 1) + 8 * v9), v5, v6);
        v13 = objc_msgSend_superlayer(v10, v11, v12);
        v16 = objc_msgSend_name(v13, v14, v15);
        isEqualToString = objc_msgSend_isEqualToString_(v16, v17, @"Perspective layer");

        if (isEqualToString)
        {
          v22 = objc_msgSend_superlayer(v13, v19, v20);
          if (!v22)
          {
            v23 = MEMORY[0x277D81150];
            v24 = v8;
            objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDTextureSet removeAllPerspectiveLayers]");
            v26 = v25 = v2;
            v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDTextureSet.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v26, v28, 1246, 0, "invalid nil value for '%{public}s'", "parentLayer");

            v8 = v24;
            v7 = v32;

            v2 = v25;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
          }

          objc_msgSend_replaceSublayer_with_(v22, v21, v13, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v33, v37, 16);
    }

    while (v7);
  }
}

- (id)viewLayerAtEventIndex:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (a3 == 0x7FFFFFFF || (objc_msgSend_currentThread(MEMORY[0x277CCACC8], v5, v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_threadDictionary(v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v10, v11, @"kTSDTexturePreCachingOperation"), v12 = objc_claimAutoreleasedReturnValue(), v12, v10, v7, !v12))
  {
    v17 = v4->_layer;
  }

  else
  {
    eventIndexToViewLayerMap = v4->_eventIndexToViewLayerMap;
    v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, a3);
    v17 = objc_msgSend_objectForKey_(eventIndexToViewLayerMap, v16, v15);

    if (!v17)
    {
      v17 = objc_msgSend_layer(MEMORY[0x277CD9ED0], v18, v19);
      objc_msgSend_opacity(v4->_layer, v20, v21);
      objc_msgSend_setOpacity_(v17, v22, v23);
      objc_msgSend_bounds(v4->_layer, v24, v25);
      objc_msgSend_setBounds_(v17, v26, v27);
      objc_msgSend_anchorPoint(v4->_layer, v28, v29);
      objc_msgSend_setAnchorPoint_(v17, v30, v31);
      objc_msgSend_position(v4->_layer, v32, v33);
      objc_msgSend_setPosition_(v17, v34, v35);
      layer = v4->_layer;
      if (layer)
      {
        objc_msgSend_transform(layer, v36, v37);
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
      }

      v47[4] = v52;
      v47[5] = v53;
      v47[6] = v54;
      v47[7] = v55;
      v47[0] = v48;
      v47[1] = v49;
      v47[2] = v50;
      v47[3] = v51;
      objc_msgSend_setTransform_(v17, v36, v47);
      v42 = v4->_eventIndexToViewLayerMap;
      if (!v42)
      {
        v43 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v40, v41);
        v44 = v4->_eventIndexToViewLayerMap;
        v4->_eventIndexToViewLayerMap = v43;

        v42 = v4->_eventIndexToViewLayerMap;
      }

      v45 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v40, a3);
      objc_msgSend_setObject_forKey_(v42, v46, v17, v45);
    }
  }

  objc_sync_exit(v4);

  return v17;
}

- (id)description
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_frame(self, v6, v7);
  v9 = v8;
  objc_msgSend_frame(self, v10, v11);
  v13 = v12;
  objc_msgSend_frame(self, v14, v15);
  v17 = v16;
  objc_msgSend_frame(self, v18, v19);
  v21 = v20;
  v24 = objc_msgSend_count(self->_allTextures, v22, v23);
  v26 = objc_msgSend_stringWithFormat_(v3, v25, @"<%@: %p frame(%.1f,%.1f,%.1f,%.1f) count(%ld) layer: %@ \nviewLayers:%@ \ntextures:\n", v5, self, v9, v13, v17, v21, v24, self->_layer, self->_eventIndexToViewLayerMap);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_allTextures;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v45, v49, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v46;
    do
    {
      v32 = 0;
      v33 = v26;
      do
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v45 + 1) + 8 * v32);
        v35 = objc_msgSend_objectForKey_(self->_textureToStageIndexMap, v29, v34);
        v38 = objc_msgSend_integerValue(v35, v36, v37);

        if (objc_msgSend_containsObject_(self->_finalTextures, v39, v34))
        {
          objc_msgSend_stringByAppendingFormat_(v33, v40, @"    Stage %ld: %@ %@\n", v38, v34, @"Final Texture");
        }

        else
        {
          objc_msgSend_stringByAppendingFormat_(v33, v40, @"    Stage %ld: %@ %@\n", v38, v34, &stru_28857D120);
        }
        v26 = ;

        ++v32;
        v33 = v26;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v45, v49, 16);
    }

    while (v30);
  }

  if (self->_flattenKeyToFlattenedTextureMap)
  {
    v42 = objc_msgSend_stringByAppendingFormat_(v26, v41, @"flattenKeyToFlattenedTextureMap: %@", self->_flattenKeyToFlattenedTextureMap);

    v26 = v42;
  }

  return v26;
}

- (BOOL)canReuseMetalTexturesWith:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_textureDescription(v4, v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained(&self->_rep), objc_msgSend_rep(v4, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v13, v10, v9, v10 != v13))
  {
LABEL_3:
    LOBYTE(v16) = 0;
    goto LABEL_4;
  }

  objectType = self->_objectType;
  if (objectType >= 4)
  {
    if (objectType - 4 >= 2)
    {
      if (objectType == 7)
      {
        v30 = objc_msgSend_stage(self->_textureDescription, v14, v15);
        LOBYTE(v30) = v30 == objc_msgSend_stage(v7, v31, v32) + 1;
        shouldSeparateText = objc_msgSend_shouldSeparateText(self->_textureDescription, v33, v34);
        LOBYTE(v16) = v30 & (shouldSeparateText ^ objc_msgSend_shouldSeparateText(v7, v36, v37) ^ 1);
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    isEqual = objc_msgSend_isEqual_(self->_textureDescription, v14, v7);
    if (self->_textureAngle == 0.0 && (objc_msgSend_textureAngle(v4, v19, v20), v22 == 0.0))
    {
      v23 = 1;
    }

    else
    {
      isMagicMove = objc_msgSend_isMagicMove(self->_textureDescription, v19, v20);
      v23 = isMagicMove ^ objc_msgSend_isMagicMove(v7, v39, v40) ^ 1;
    }

    if (objc_msgSend_containsFinalTextures(self, v19, v20))
    {
      v43 = 0;
    }

    else
    {
      v43 = objc_msgSend_containsFinalTextures(v4, v41, v42) ^ 1;
    }

    v44 = objc_msgSend_stage(self->_textureDescription, v41, v42);
    v47 = v23 & (v43 | (v44 == objc_msgSend_stage(v7, v45, v46)));
    if (isEqual)
    {
      LOBYTE(v16) = v47;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    if (objc_msgSend_isEqual_(self->_textureDescription, v14, v7))
    {
      LOBYTE(v16) = 1;
      goto LABEL_4;
    }

    textureDescription = self->_textureDescription;
    if (!textureDescription && v7 || textureDescription && !v7)
    {
      goto LABEL_3;
    }

    objc_opt_class();
    v25 = objc_loadWeakRetained(&self->_rep);
    v26 = TSUDynamicCast();

    if (self->_textureAngle == 0.0 && (objc_msgSend_textureAngle(v4, v27, v28), v29 == 0.0))
    {
      v16 = 1;
    }

    else
    {
      v48 = objc_msgSend_isMagicMove(self->_textureDescription, v27, v28);
      v16 = v48 ^ objc_msgSend_isMagicMove(v7, v49, v50) ^ 1;
    }

    v53 = objc_loadWeakRetained(&self->_rep);
    if (v53)
    {
      shouldNotAddText = objc_msgSend_shouldNotAddText(self->_textureDescription, v51, v52);
      if (shouldNotAddText != objc_msgSend_shouldNotAddText(v7, v55, v56) || (shouldNotAddContainedReps = objc_msgSend_shouldNotAddContainedReps(self->_textureDescription, v57, v58), shouldNotAddContainedReps != objc_msgSend_shouldNotAddContainedReps(v7, v60, v61)) || (v64 = objc_msgSend_byGlyphStyle(self->_textureDescription, v62, v63), v64 != objc_msgSend_byGlyphStyle(v7, v65, v66)) || (v69 = objc_msgSend_deliveryStyle(self->_textureDescription, v67, v68), v69 != objc_msgSend_deliveryStyle(v7, v70, v71)))
      {
        v72 = objc_loadWeakRetained(&self->_rep);
        v75 = objc_msgSend_childReps(v72, v73, v74);
        v78 = objc_msgSend_count(v75, v76, v77) == 0;

        v16 &= v78;
      }
    }

    if (v26 && v16)
    {
      v83 = objc_msgSend_reflection(v26, v79, v80);
      if (v83)
      {
        shouldSeparateReflection = objc_msgSend_shouldSeparateReflection(self->_textureDescription, v81, v82);
        v120 = shouldSeparateReflection ^ objc_msgSend_shouldSeparateReflection(v7, v85, v86);
      }

      else
      {
        LOBYTE(v120) = 0;
      }

      v89 = objc_msgSend_styledInfo(v26, v87, v88);
      v94 = objc_msgSend_shadow(v89, v90, v91);
      if (v94)
      {
        v95 = objc_msgSend_shadow(v89, v92, v93);
        if (objc_msgSend_isEnabled(v95, v96, v97))
        {
          shouldSeparateShadow = objc_msgSend_shouldSeparateShadow(self->_textureDescription, v98, v99);
          v103 = shouldSeparateShadow ^ objc_msgSend_shouldSeparateShadow(v7, v101, v102);
        }

        else
        {
          LOBYTE(v103) = 0;
        }
      }

      else
      {
        LOBYTE(v103) = 0;
      }

      objc_opt_class();
      v104 = objc_loadWeakRetained(&self->_rep);
      v107 = objc_msgSend_layout(v104, v105, v106);
      v110 = objc_msgSend_stroke(v107, v108, v109);
      v111 = TSUDynamicCast();

      if (v111 && objc_msgSend_shouldRender(v111, v112, v113))
      {
        shouldSeparateStroke = objc_msgSend_shouldSeparateStroke(self->_textureDescription, v114, v115);
        v119 = shouldSeparateStroke ^ objc_msgSend_shouldSeparateStroke(v7, v117, v118) ^ 1;
      }

      else
      {
        LOBYTE(v119) = 1;
      }

      LOBYTE(v16) = ((v120 | v103) ^ 1) & v119;
    }
  }

LABEL_4:

  return v16 & 1;
}

- (double)hdrHeadroom
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stateLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_allTextures;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v15;
    v10 = 1.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_hdrHeadroom(*(*(&v14 + 1) + 8 * i), v6, v7, v14);
        if (v10 < v12)
        {
          v10 = v12;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v14, v18, 16);
    }

    while (v8);
  }

  else
  {
    v10 = 1.0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
  return v10;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)originalPosition
{
  x = self->_originalPosition.x;
  y = self->_originalPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (TSDRep)rep
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);

  return WeakRetained;
}

@end