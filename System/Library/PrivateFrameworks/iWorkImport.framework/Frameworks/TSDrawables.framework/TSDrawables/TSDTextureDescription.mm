@interface TSDTextureDescription
+ (TSDTextureDescription)descriptionWithSession:(id)session;
+ (TSDTextureDescription)descriptionWithTextureDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (TSDAnimationSession)session;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)reset;
@end

@implementation TSDTextureDescription

+ (TSDTextureDescription)descriptionWithSession:(id)session
{
  sessionCopy = session;
  v4 = objc_alloc_init(TSDTextureDescription);
  objc_msgSend_setSession_(v4, v5, sessionCopy);
  objc_msgSend_setStage_(v4, v6, 0);
  objc_msgSend_setDeliveryStyle_(v4, v7, 0);
  objc_msgSend_setByGlyphStyle_(v4, v8, 0);
  objc_msgSend_setChildRepByGlyphStyle_(v4, v9, 0);
  shouldForceTextureGeneration = objc_msgSend_shouldForceTextureGeneration(sessionCopy, v10, v11);
  objc_msgSend_setShouldForceTextureGeneration_(v4, v13, shouldForceTextureGeneration);
  shouldUseSourceImage = objc_msgSend_shouldUseSourceImage(sessionCopy, v14, v15);

  objc_msgSend_setShouldUseSourceImage_(v4, v17, shouldUseSourceImage);

  return v4;
}

+ (TSDTextureDescription)descriptionWithTextureDescription:(id)description
{
  v3 = objc_msgSend_copy(description, a2, description);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDTextureDescription, a2, zone);
  v7 = objc_msgSend_init(v4, v5, v6);
  v10 = objc_msgSend_session(self, v8, v9);
  objc_msgSend_setSession_(v7, v11, v10);

  isMagicMove = objc_msgSend_isMagicMove(self, v12, v13);
  objc_msgSend_setIsMagicMove_(v7, v15, isMagicMove);
  v18 = objc_msgSend_includesActionBuilds(self, v16, v17);
  objc_msgSend_setIncludesActionBuilds_(v7, v19, v18);
  shouldAddFinal = objc_msgSend_shouldAddFinal(self, v20, v21);
  objc_msgSend_setShouldAddFinal_(v7, v23, shouldAddFinal);
  shouldAddMagicMoveObjectOnly = objc_msgSend_shouldAddMagicMoveObjectOnly(self, v24, v25);
  objc_msgSend_setShouldAddMagicMoveObjectOnly_(v7, v27, shouldAddMagicMoveObjectOnly);
  shouldAddMasks = objc_msgSend_shouldAddMasks(self, v28, v29);
  objc_msgSend_setShouldAddMasks_(v7, v31, shouldAddMasks);
  shouldAddVideoBackgroundFill = objc_msgSend_shouldAddVideoBackgroundFill(self, v32, v33);
  objc_msgSend_setShouldAddVideoBackgroundFill_(v7, v35, shouldAddVideoBackgroundFill);
  shouldDistortToFit = objc_msgSend_shouldDistortToFit(self, v36, v37);
  objc_msgSend_setShouldDistortToFit_(v7, v39, shouldDistortToFit);
  shouldNotAddContainedReps = objc_msgSend_shouldNotAddContainedReps(self, v40, v41);
  objc_msgSend_setShouldNotAddContainedReps_(v7, v43, shouldNotAddContainedReps);
  shouldNotAddShapeAttributes = objc_msgSend_shouldNotAddShapeAttributes(self, v44, v45);
  objc_msgSend_setShouldNotAddShapeAttributes_(v7, v47, shouldNotAddShapeAttributes);
  shouldNotAddText = objc_msgSend_shouldNotAddText(self, v48, v49);
  objc_msgSend_setShouldNotAddText_(v7, v51, shouldNotAddText);
  shouldSeparateReflection = objc_msgSend_shouldSeparateReflection(self, v52, v53);
  objc_msgSend_setShouldSeparateReflection_(v7, v55, shouldSeparateReflection);
  shouldSeparateShadow = objc_msgSend_shouldSeparateShadow(self, v56, v57);
  objc_msgSend_setShouldSeparateShadow_(v7, v59, shouldSeparateShadow);
  shouldSeparateStroke = objc_msgSend_shouldSeparateStroke(self, v60, v61);
  objc_msgSend_setShouldSeparateStroke_(v7, v63, shouldSeparateStroke);
  shouldAddParameterizedStroke = objc_msgSend_shouldAddParameterizedStroke(self, v64, v65);
  objc_msgSend_setShouldAddParameterizedStroke_(v7, v67, shouldAddParameterizedStroke);
  shouldSeparateGroupedTextures = objc_msgSend_shouldSeparateGroupedTextures(self, v68, v69);
  objc_msgSend_setShouldSeparateGroupedTextures_(v7, v71, shouldSeparateGroupedTextures);
  shouldReverseStrokeDrawing = objc_msgSend_shouldReverseStrokeDrawing(self, v72, v73);
  objc_msgSend_setShouldReverseStrokeDrawing_(v7, v75, shouldReverseStrokeDrawing);
  shouldSeparateText = objc_msgSend_shouldSeparateText(self, v76, v77);
  objc_msgSend_setShouldSeparateText_(v7, v79, shouldSeparateText);
  shouldForceTextureGeneration = objc_msgSend_shouldForceTextureGeneration(self, v80, v81);
  objc_msgSend_setShouldForceTextureGeneration_(v7, v83, shouldForceTextureGeneration);
  shouldIgnoreScaleInSourceImage = objc_msgSend_shouldIgnoreScaleInSourceImage(self, v84, v85);
  objc_msgSend_setShouldIgnoreScaleInSourceImage_(v7, v87, shouldIgnoreScaleInSourceImage);
  shouldUseSourceImage = objc_msgSend_shouldUseSourceImage(self, v88, v89);
  objc_msgSend_setShouldUseSourceImage_(v7, v91, shouldUseSourceImage);
  v94 = objc_msgSend_stage(self, v92, v93);
  objc_msgSend_setStage_(v7, v95, v94);
  v98 = objc_msgSend_deliveryStyle(self, v96, v97);
  objc_msgSend_setDeliveryStyle_(v7, v99, v98);
  v102 = objc_msgSend_byGlyphStyle(self, v100, v101);
  objc_msgSend_setByGlyphStyle_(v7, v103, v102);
  v106 = objc_msgSend_childRepByGlyphStyle(self, v104, v105);
  objc_msgSend_setChildRepByGlyphStyle_(v7, v107, v106);
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v8 = objc_msgSend_session(self, v6, v7);
    v13 = objc_msgSend_session(v5, v9, v10);
    if (v8 == v13
      && (isMagicMove = objc_msgSend_isMagicMove(self, v11, v12), isMagicMove == objc_msgSend_isMagicMove(v5, v15, v16))
      && (v19 = objc_msgSend_includesActionBuilds(self, v17, v18), v19 == objc_msgSend_includesActionBuilds(v5, v20, v21))
      && (shouldAddFinal = objc_msgSend_shouldAddFinal(self, v22, v23), shouldAddFinal == objc_msgSend_shouldAddFinal(v5, v25, v26))
      && (shouldAddMagicMoveObjectOnly = objc_msgSend_shouldAddMagicMoveObjectOnly(self, v27, v28), shouldAddMagicMoveObjectOnly == objc_msgSend_shouldAddMagicMoveObjectOnly(v5, v30, v31))
      && (shouldAddMasks = objc_msgSend_shouldAddMasks(self, v32, v33), shouldAddMasks == objc_msgSend_shouldAddMasks(v5, v35, v36))
      && (shouldAddVideoBackgroundFill = objc_msgSend_shouldAddVideoBackgroundFill(self, v37, v38), shouldAddVideoBackgroundFill == objc_msgSend_shouldAddVideoBackgroundFill(v5, v40, v41))
      && (shouldDistortToFit = objc_msgSend_shouldDistortToFit(self, v42, v43), shouldDistortToFit == objc_msgSend_shouldDistortToFit(v5, v45, v46))
      && (shouldNotAddContainedReps = objc_msgSend_shouldNotAddContainedReps(self, v47, v48), shouldNotAddContainedReps == objc_msgSend_shouldNotAddContainedReps(v5, v50, v51))
      && (shouldNotAddShapeAttributes = objc_msgSend_shouldNotAddShapeAttributes(self, v52, v53), shouldNotAddShapeAttributes == objc_msgSend_shouldNotAddShapeAttributes(v5, v55, v56))
      && (shouldNotAddText = objc_msgSend_shouldNotAddText(self, v57, v58), shouldNotAddText == objc_msgSend_shouldNotAddText(v5, v60, v61))
      && (shouldSeparateReflection = objc_msgSend_shouldSeparateReflection(self, v62, v63), shouldSeparateReflection == objc_msgSend_shouldSeparateReflection(v5, v65, v66))
      && (shouldSeparateShadow = objc_msgSend_shouldSeparateShadow(self, v67, v68), shouldSeparateShadow == objc_msgSend_shouldSeparateShadow(v5, v70, v71))
      && (shouldSeparateStroke = objc_msgSend_shouldSeparateStroke(self, v72, v73), shouldSeparateStroke == objc_msgSend_shouldSeparateStroke(v5, v75, v76))
      && (shouldAddParameterizedStroke = objc_msgSend_shouldAddParameterizedStroke(self, v77, v78), shouldAddParameterizedStroke == objc_msgSend_shouldAddParameterizedStroke(v5, v80, v81))
      && (shouldSeparateGroupedTextures = objc_msgSend_shouldSeparateGroupedTextures(self, v82, v83), shouldSeparateGroupedTextures == objc_msgSend_shouldSeparateGroupedTextures(v5, v85, v86))
      && (shouldReverseStrokeDrawing = objc_msgSend_shouldReverseStrokeDrawing(self, v87, v88), shouldReverseStrokeDrawing == objc_msgSend_shouldReverseStrokeDrawing(v5, v90, v91))
      && (shouldSeparateText = objc_msgSend_shouldSeparateText(self, v92, v93), shouldSeparateText == objc_msgSend_shouldSeparateText(v5, v95, v96))
      && (shouldForceTextureGeneration = objc_msgSend_shouldForceTextureGeneration(self, v97, v98), shouldForceTextureGeneration == objc_msgSend_shouldForceTextureGeneration(v5, v100, v101))
      && (shouldIgnoreScaleInSourceImage = objc_msgSend_shouldIgnoreScaleInSourceImage(self, v102, v103), shouldIgnoreScaleInSourceImage == objc_msgSend_shouldIgnoreScaleInSourceImage(v5, v105, v106))
      && (shouldUseSourceImage = objc_msgSend_shouldUseSourceImage(self, v107, v108), shouldUseSourceImage == objc_msgSend_shouldUseSourceImage(v5, v110, v111))
      && (v114 = objc_msgSend_stage(self, v112, v113), v114 == objc_msgSend_stage(v5, v115, v116))
      && (v119 = objc_msgSend_deliveryStyle(self, v117, v118), v119 == objc_msgSend_deliveryStyle(v5, v120, v121))
      && (v124 = objc_msgSend_byGlyphStyle(self, v122, v123), v124 == objc_msgSend_byGlyphStyle(v5, v125, v126)))
    {
      v129 = objc_msgSend_childRepByGlyphStyle(self, v127, v128);
      v132 = v129 == objc_msgSend_childRepByGlyphStyle(v5, v130, v131);
    }

    else
    {
      v132 = 0;
    }
  }

  else
  {
    v132 = 0;
  }

  return v132;
}

- (id)description
{
  v3 = objc_opt_new();
  if (objc_msgSend_isMagicMove(self, v4, v5))
  {
    objc_msgSend_addObject_(v3, v6, @"isMagicMove");
  }

  if (objc_msgSend_includesActionBuilds(self, v6, v7))
  {
    objc_msgSend_addObject_(v3, v8, @"_includesActionBuilds");
  }

  if (objc_msgSend_shouldAddFinal(self, v8, v9))
  {
    objc_msgSend_addObject_(v3, v10, @"shouldAddFinal");
  }

  if (objc_msgSend_shouldAddMagicMoveObjectOnly(self, v10, v11))
  {
    objc_msgSend_addObject_(v3, v12, @"shouldAddMagicMoveObjectOnly");
  }

  if (objc_msgSend_shouldAddMasks(self, v12, v13))
  {
    objc_msgSend_addObject_(v3, v14, @"shouldAddMasks");
  }

  if (objc_msgSend_shouldAddVideoBackgroundFill(self, v14, v15))
  {
    objc_msgSend_addObject_(v3, v16, @"shouldAddVideoBackgroundFill");
  }

  if (objc_msgSend_shouldDistortToFit(self, v16, v17))
  {
    objc_msgSend_addObject_(v3, v18, @"shouldDistortToFit");
  }

  if (objc_msgSend_shouldForceTextureGeneration(self, v18, v19))
  {
    objc_msgSend_addObject_(v3, v20, @"shouldForceTextureGeneration");
  }

  if (objc_msgSend_shouldNotAddContainedReps(self, v20, v21))
  {
    objc_msgSend_addObject_(v3, v22, @"shouldNotAddContainedReps");
  }

  if (objc_msgSend_shouldNotAddShapeAttributes(self, v22, v23))
  {
    objc_msgSend_addObject_(v3, v24, @"shouldNotAddShapeAttributes");
  }

  if (objc_msgSend_shouldNotAddText(self, v24, v25))
  {
    objc_msgSend_addObject_(v3, v26, @"shouldNotAddText");
  }

  if (objc_msgSend_shouldSeparateReflection(self, v26, v27))
  {
    objc_msgSend_addObject_(v3, v28, @"shouldSeparateReflection");
  }

  if (objc_msgSend_shouldSeparateShadow(self, v28, v29))
  {
    objc_msgSend_addObject_(v3, v30, @"shouldSeparateShadow");
  }

  if (objc_msgSend_shouldSeparateStroke(self, v30, v31))
  {
    objc_msgSend_addObject_(v3, v32, @"shouldSeparateStroke");
  }

  if (objc_msgSend_shouldAddParameterizedStroke(self, v32, v33))
  {
    objc_msgSend_addObject_(v3, v34, @"shouldAddParameterizedStroke");
  }

  if (objc_msgSend_shouldSeparateGroupedTextures(self, v34, v35))
  {
    objc_msgSend_addObject_(v3, v36, @"shouldSeparateGroupedTextures");
  }

  if (objc_msgSend_shouldReverseStrokeDrawing(self, v36, v37))
  {
    objc_msgSend_addObject_(v3, v38, @"shouldReverseStrokeDrawing");
  }

  if (objc_msgSend_shouldSeparateText(self, v38, v39))
  {
    objc_msgSend_addObject_(v3, v40, @"shouldSeparateText");
  }

  if (objc_msgSend_shouldIgnoreScaleInSourceImage(self, v40, v41))
  {
    objc_msgSend_addObject_(v3, v42, @"shouldIgnoreScaleInSourceImage");
  }

  if (objc_msgSend_shouldUseSourceImage(self, v42, v43))
  {
    objc_msgSend_addObject_(v3, v44, @"shouldUseSourceImage");
  }

  if (objc_msgSend_deliveryStyle(self, v44, v45))
  {
    v48 = MEMORY[0x277CCACA8];
    v49 = objc_msgSend_deliveryStyle(self, v46, v47);
    v51 = objc_msgSend_stringWithFormat_(v48, v50, @"tds: %ld", v49);
    objc_msgSend_addObject_(v3, v52, v51);
  }

  if (objc_msgSend_byGlyphStyle(self, v46, v47))
  {
    v55 = MEMORY[0x277CCACA8];
    v56 = objc_msgSend_byGlyphStyle(self, v53, v54);
    v58 = objc_msgSend_stringWithFormat_(v55, v57, @"glyph: %ld", v56);
    objc_msgSend_addObject_(v3, v59, v58);
  }

  if (objc_msgSend_childRepByGlyphStyle(self, v53, v54))
  {
    v62 = MEMORY[0x277CCACA8];
    v63 = objc_msgSend_childRepByGlyphStyle(self, v60, v61);
    v65 = objc_msgSend_stringWithFormat_(v62, v64, @"child rep glyph: %ld", v63);
    objc_msgSend_addObject_(v3, v66, v65);
  }

  v67 = MEMORY[0x277CCACA8];
  v68 = objc_msgSend_stage(self, v60, v61);
  v70 = objc_msgSend_stringWithFormat_(v67, v69, @"stage: %ld", v68);
  objc_msgSend_addObject_(v3, v71, v70);

  v74 = objc_msgSend_session(self, v72, v73);

  if (v74)
  {
    v77 = MEMORY[0x277CCACA8];
    v78 = objc_msgSend_session(self, v75, v76);
    v80 = objc_msgSend_stringWithFormat_(v77, v79, @"session: %p", v78);
    objc_msgSend_addObject_(v3, v81, v80);
  }

  v82 = MEMORY[0x277CCACA8];
  v89.receiver = self;
  v89.super_class = TSDTextureDescription;
  v83 = [(TSDTextureDescription *)&v89 description];
  v85 = objc_msgSend_componentsJoinedByString_(v3, v84, @",");
  v87 = objc_msgSend_stringWithFormat_(v82, v86, @"%@: {%@}", v83, v85);

  return v87;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_session(self, a2, v2);
  isMagicMove = objc_msgSend_isMagicMove(self, v5, v6);
  shouldAddMagicMoveObjectOnly = objc_msgSend_shouldAddMagicMoveObjectOnly(self, v8, v9);
  v13 = 2;
  if (!shouldAddMagicMoveObjectOnly)
  {
    v13 = 0;
  }

  v14 = v13 | isMagicMove;
  if (objc_msgSend_shouldDistortToFit(self, v11, v12))
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  shouldForceTextureGeneration = objc_msgSend_shouldForceTextureGeneration(self, v15, v16);
  v21 = 8;
  if (!shouldForceTextureGeneration)
  {
    v21 = 0;
  }

  v22 = v14 | v17 | v21;
  if (objc_msgSend_shouldNotAddContainedReps(self, v19, v20))
  {
    v25 = 16;
  }

  else
  {
    v25 = 0;
  }

  shouldNotAddShapeAttributes = objc_msgSend_shouldNotAddShapeAttributes(self, v23, v24);
  v29 = 32;
  if (!shouldNotAddShapeAttributes)
  {
    v29 = 0;
  }

  v30 = v25 | v29;
  shouldNotAddText = objc_msgSend_shouldNotAddText(self, v27, v28);
  v34 = 64;
  if (!shouldNotAddText)
  {
    v34 = 0;
  }

  v35 = v22 | v30 | v34;
  if (objc_msgSend_shouldSeparateReflection(self, v32, v33))
  {
    v38 = 128;
  }

  else
  {
    v38 = 0;
  }

  shouldSeparateShadow = objc_msgSend_shouldSeparateShadow(self, v36, v37);
  v42 = 256;
  if (!shouldSeparateShadow)
  {
    v42 = 0;
  }

  v43 = v38 | v42;
  shouldSeparateStroke = objc_msgSend_shouldSeparateStroke(self, v40, v41);
  v47 = 512;
  if (!shouldSeparateStroke)
  {
    v47 = 0;
  }

  v48 = v43 | v47;
  shouldAddParameterizedStroke = objc_msgSend_shouldAddParameterizedStroke(self, v45, v46);
  v52 = 1024;
  if (!shouldAddParameterizedStroke)
  {
    v52 = 0;
  }

  v53 = v35 | v48 | v52;
  if (objc_msgSend_shouldReverseStrokeDrawing(self, v50, v51))
  {
    v56 = 2048;
  }

  else
  {
    v56 = 0;
  }

  shouldSeparateText = objc_msgSend_shouldSeparateText(self, v54, v55);
  v60 = 4096;
  if (!shouldSeparateText)
  {
    v60 = 0;
  }

  v61 = v56 | v60;
  shouldIgnoreScaleInSourceImage = objc_msgSend_shouldIgnoreScaleInSourceImage(self, v58, v59);
  v65 = 0x2000;
  if (!shouldIgnoreScaleInSourceImage)
  {
    v65 = 0;
  }

  v66 = v61 | v65;
  shouldAddMasks = objc_msgSend_shouldAddMasks(self, v63, v64);
  v70 = 0x4000;
  if (!shouldAddMasks)
  {
    v70 = 0;
  }

  v71 = v66 | v70;
  shouldAddVideoBackgroundFill = objc_msgSend_shouldAddVideoBackgroundFill(self, v68, v69);
  v75 = 0x8000;
  if (!shouldAddVideoBackgroundFill)
  {
    v75 = 0;
  }

  v76 = v53 | v71 | v75;
  if (objc_msgSend_shouldAddFinal(self, v73, v74))
  {
    v79 = 0x10000;
  }

  else
  {
    v79 = 0;
  }

  shouldUseSourceImage = objc_msgSend_shouldUseSourceImage(self, v77, v78);
  v83 = 0x20000;
  if (!shouldUseSourceImage)
  {
    v83 = 0;
  }

  v84 = v79 | v83;
  v85 = objc_msgSend_includesActionBuilds(self, v81, v82);
  v88 = 0x40000;
  if (!v85)
  {
    v88 = 0;
  }

  v89 = v76 | v84 | v88 | (objc_msgSend_deliveryStyle(self, v86, v87) << 19);
  v92 = v89 | (objc_msgSend_byGlyphStyle(self, v90, v91) << 20);
  shouldSeparateGroupedTextures = objc_msgSend_shouldSeparateGroupedTextures(self, v93, v94);
  v98 = 0x400000;
  if (!shouldSeparateGroupedTextures)
  {
    v98 = 0;
  }

  v99 = v92 | v98 | (objc_msgSend_childRepByGlyphStyle(self, v96, v97) << 23);
  v102 = v99 | (objc_msgSend_stage(self, v100, v101) << 24);

  return v102 ^ v4;
}

- (void)reset
{
  objc_storeWeak(&self->_session, 0);
  *&self->_byGlyphStyle = 0;
  *&self->_isMagicMove = 0;
  *&self->_shouldNotAddText = 0;
  *&self->_shouldIgnoreScaleInSourceImage = 0;
  self->_stage = 0;
  self->_deliveryStyle = 0;
}

- (TSDAnimationSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end