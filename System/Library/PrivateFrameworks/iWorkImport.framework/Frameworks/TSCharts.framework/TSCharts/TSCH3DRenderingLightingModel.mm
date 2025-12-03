@interface TSCH3DRenderingLightingModel
+ (id)p_lightingModelFromFill:(id)fill lightings:(id)lightings returningTransparency:(BOOL *)transparency;
+ (id)renderingLightingModelWithFill:(id)fill lightings:(id)lightings;
+ (id)renderingLightingModelWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency;
- (TSCH3DRenderingLightingModel)initWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency;
- (void)affect:(id)affect states:(id)states scene:(id)scene texturePool:(id)pool;
@end

@implementation TSCH3DRenderingLightingModel

+ (id)p_lightingModelFromFill:(id)fill lightings:(id)lightings returningTransparency:(BOOL *)transparency
{
  fillCopy = fill;
  lightingsCopy = lightings;
  v13 = objc_msgSend_lightingModel(TSCH3DFixedFunctionLightingModel, v9, v10, v11, v12);
  v18 = objc_msgSend_materials(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_diffuse(v18, v19, v20, v21, v22);
  if (transparency)
  {
    *transparency = 0;
  }

  objc_opt_class();
  v24 = TSUDynamicCast();
  v29 = v24;
  if (v24)
  {
    v30 = objc_msgSend_color(v24, v25, v26, v27, v28);
    sub_27635A61C(v30, &v141);
    v139 = v141;

    *&v141 = 0;
    v145 = 0;
    v146 = 0;
    TSURGBToHSB();
    v143 = 0.0;
    v144 = 0.0;
    v142 = 0.0;
    TSUHSBToRGB();
    v31 = v144;
    v32 = v143;
    v33 = v142;
    v34 = *(&v139 + 3);
    goto LABEL_14;
  }

  objc_opt_class();
  v35 = TSUDynamicCast();
  v40 = v35;
  if (!v35)
  {
    objc_opt_class();
    v140 = TSUDynamicCast();
    if (v140)
    {
      v46 = MEMORY[0x277D81150];
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "+[TSCH3DRenderingLightingModel p_lightingModelFromFill:lightings:returningTransparency:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRenderingLightingModel.mm");
      v52 = v46;
      v53 = v136;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v54, v55, v56, v57, v136, v51, 78, 0, "TSCH3DFill is handled separately %@", v140);
    }

    else
    {
      if (!objc_msgSend_isNullFill_(TSCHStyleUtilities, v42, v43, v44, v45, fillCopy))
      {
        v138 = objc_msgSend_textureWithTSDFill_(TSCH3DTSDFillTexture, v58, v59, v60, v61, fillCopy);
        v118 = objc_msgSend_tiling(TSCH3DImageTextureTiling, v114, v115, v116, v117);
        objc_opt_class();
        v119 = TSUDynamicCast();
        v124 = v119;
        if (v119)
        {
          v125 = objc_msgSend_technique(v119, v120, v121, v122, v123) == 2;
          objc_msgSend_setMode_(v118, v126, v127, v128, v129, v125);
          if (v118)
          {
            objc_msgSend_scale(v118, v130, v131, v132, v133);
            LODWORD(v135) = HIDWORD(v146);
            LODWORD(v134) = v146;
          }

          else
          {
            v146 = 0;
            v134 = 0.0;
            v135 = 0.0;
          }

          *&v135 = -*&v135;
          HIDWORD(v146) = LODWORD(v135);
          *&v141 = __PAIR64__(LODWORD(v135), LODWORD(v134));
          objc_msgSend_setScale_(v118, v130, v134, v135, v133, &v141);
          if (transparency)
          {
            *&v141 = objc_opt_class();
            BYTE8(v141) = 0;
            *transparency = sub_27635A6DC(&v141, v124);
          }
        }

        objc_msgSend_addTexture_tiling_(v23, v120, v121, v122, v123, v138, v118);

        goto LABEL_12;
      }

      v62 = MEMORY[0x277D81150];
      v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "+[TSCH3DRenderingLightingModel p_lightingModelFromFill:lightings:returningTransparency:]");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRenderingLightingModel.mm");
      v67 = v62;
      v53 = v137;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v68, v69, v70, v71, v137, v51, 80, 0, "Null fill is handled separately %@", 0);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
LABEL_12:

    __asm { FMOV            V0.4S, #1.0 }

    v139 = _Q0;
    v31 = 1.0;
    goto LABEL_13;
  }

  v41 = objc_msgSend_firstColor(v35, v36, v37, v38, v39);
  sub_27635A61C(v41, &v141);
  v139 = v141;

  v31 = 0.0;
LABEL_13:

  v34 = 1.0;
  v32 = v31;
  v33 = v31;
LABEL_14:

  if (transparency)
  {
    LODWORD(v82) = HIDWORD(v139);
    LODWORD(v83) = 1065353214;
    *transparency |= *(&v139 + 3) < 1.0;
  }

  v141 = v139;
  objc_msgSend_setColor_(v23, v81, v82, v83, *&v139, &v141);
  v88 = objc_msgSend_emissive(v18, v84, v85, v86, v87);
  v141 = xmmword_2764D5F20;
  objc_msgSend_setColor_(v88, v89, 0.0, v90, v91, &v141);

  v96 = objc_msgSend_specular(v18, v92, v93, v94, v95);
  *&v141 = __PAIR64__(LODWORD(v32), LODWORD(v31));
  *(&v141 + 1) = __PAIR64__(LODWORD(v34), LODWORD(v33));
  objc_msgSend_setColor_(v96, v97, v98, v99, v100, &v141);

  v105 = objc_msgSend_shininess(v18, v101, v102, v103, v104);
  v141 = xmmword_2764D64B0;
  objc_msgSend_setColor_(v105, v106, 0.0000000134110482, v107, v108, &v141);

  objc_msgSend_setLightings_(v13, v109, v110, v111, v112, lightingsCopy);

  return v13;
}

+ (id)renderingLightingModelWithFill:(id)fill lightings:(id)lightings
{
  fillCopy = fill;
  lightingsCopy = lightings;
  if (objc_msgSend_hasNoFill_(TSCHStyleUtilities, v8, v9, v10, v11, fillCopy))
  {
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v13 = TSUDynamicCast();
    v18 = v13;
    if (v13)
    {
      v19 = objc_msgSend_renderingLightingModelWithLightings_(v13, v14, v15, v16, v17, lightingsCopy);
    }

    else
    {
      v25 = 0;
      v18 = objc_msgSend_p_lightingModelFromFill_lightings_returningTransparency_(self, v14, v15, v16, v17, fillCopy, lightingsCopy, &v25);
      v19 = objc_msgSend_renderingLightingModelWithLightingModel_percentage_hasTransparency_(self, v20, v21, v22, v23, v18, 0, v25);
    }

    v12 = v19;
  }

  return v12;
}

+ (id)renderingLightingModelWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency
{
  transparencyCopy = transparency;
  modelCopy = model;
  percentageCopy = percentage;
  v10 = [self alloc];
  hasTransparency = objc_msgSend_initWithLightingModel_percentage_hasTransparency_(v10, v11, v12, v13, v14, modelCopy, percentageCopy, transparencyCopy);

  return hasTransparency;
}

- (TSCH3DRenderingLightingModel)initWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency
{
  modelCopy = model;
  percentageCopy = percentage;
  v14.receiver = self;
  v14.super_class = TSCH3DRenderingLightingModel;
  v11 = [(TSCH3DRenderingLightingModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lightingModel, model);
    objc_storeStrong(&v12->_percentage, percentage);
    v12->_hasTransparency = transparency;
  }

  return v12;
}

- (void)affect:(id)affect states:(id)states scene:(id)scene texturePool:(id)pool
{
  affectCopy = affect;
  statesCopy = states;
  sceneCopy = scene;
  poolCopy = pool;
  v17 = affectCopy;
  v18 = poolCopy;
  lightingModel = self->_lightingModel;
  if (!lightingModel)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DRenderingLightingModel affect:states:scene:texturePool:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRenderingLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 141, 0, "invalid nil value for '%{public}s'", "_lightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    lightingModel = self->_lightingModel;
    v17 = affectCopy;
  }

  objc_msgSend_affect_states_scene_texturePool_percentage_(lightingModel, v13, v14, v15, v16, v17, statesCopy, sceneCopy, v18, self->_percentage);
}

@end