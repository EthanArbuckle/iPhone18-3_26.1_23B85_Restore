@interface TSCH3DFill
+ (id)fill;
+ (id)fillWithIdentifier:(id)identifier;
+ (id)fillWithLightingModel:(id)model identifier:(id)identifier;
+ (id)fillWithSageFillData:(id)data;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)lightingModelWithSageFillData:(id)data;
- (BOOL)hasCompleteData;
- (BOOL)identifierReferencesUnavailableLocalBundle;
- (BOOL)isEqual:(id)equal;
- (TSCH3DFill)init;
- (TSCH3DFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCH3DFill)initWithLightingModel:(id)model identifier:(id)identifier;
- (TSCH3DLightingModel)lightingModel;
- (float)percentageValue;
- (id)convertForChartSeriesType:(id)type context:(id)context;
- (id)convertToSimpleTSDFillWithSize:(unint64_t)size context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lightenByPercent:(float)percent;
- (id)p_convertToTSDFillWithSize:(unint64_t)size technique:(unint64_t)technique context:(id)context;
- (id)p_imageFillForRect:(CGRect)rect context:(CGContext *)context;
- (id)p_imageFillForSize:(CGSize)size context:(id)context;
- (id)p_lazyLightingModel;
- (id)referenceColor;
- (id)renderingLightingModelWithLightings:(id)lightings;
- (id)representativeDiffuseColor;
- (id)swatchFillWithSize:(CGSize)size scaleFactor:(double)factor;
- (unint64_t)hash;
- (void)assignQuicklookColorToMaterialDiffuseColorForLightingModel:(id)model;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)nonatomicallyClearLightingModel;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context offset:(CGPoint)offset;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setFallbackFill:(id)fill;
@end

@implementation TSCH3DFill

- (id)convertForChartSeriesType:(id)type context:(id)context
{
  contextCopy = context;
  if (objc_msgSend_sceneObjectClass(type, v7, v8, v9, v10))
  {
    selfCopy = self;
  }

  else
  {
    if (contextCopy)
    {
      objc_msgSend_convertToSimpleTSDFillWithSize_context_(self, v11, v12, v13, v14, 512, contextCopy);
    }

    else
    {
      objc_msgSend_convertToSimpleTSDFillWithSize_context_(self, v11, v12, v13, v14, 256, 0);
    }
    selfCopy = ;
  }

  v16 = selfCopy;

  return v16;
}

- (id)swatchFillWithSize:(CGSize)size scaleFactor:(double)factor
{
  swatchFill = self->_swatchFill;
  if (!swatchFill)
  {
    width = size.width;
    objc_opt_class();
    v12 = objc_msgSend_dataWithFillSetIdentifier_isLowRes_(TSCH3DSageFillData, v8, v9, v10, v11, self->_identifier, 1);
    v13 = TSUCheckedDynamicCast();

    objc_opt_class();
    v14 = objc_opt_class();
    v19 = objc_msgSend_fillWithSageFillData_(v14, v15, v16, v17, v18, v13);
    v20 = TSUCheckedDynamicCast();

    objc_opt_class();
    v24 = objc_msgSend_convertToSimpleTSDFillWithSize_context_(v20, v21, width * factor, v22, v23, (width * factor), 0);
    v25 = TSUCheckedDynamicCast();
    v26 = self->_swatchFill;
    self->_swatchFill = v25;

    swatchFill = self->_swatchFill;
  }

  return swatchFill;
}

+ (id)fillWithLightingModel:(id)model identifier:(id)identifier
{
  modelCopy = model;
  identifierCopy = identifier;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithLightingModel_identifier_(v8, v9, v10, v11, v12, modelCopy, identifierCopy);

  return v13;
}

+ (id)fill
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DFill)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DFill;
  return [(TSCH3DFill *)&v3 init];
}

+ (id)fillWithIdentifier:(id)identifier
{
  v7 = objc_msgSend_dataWithFillSetIdentifier_(TSCH3DSageFillData, a2, v3, v4, v5, identifier);
  v12 = objc_msgSend_fillWithSageFillData_(self, v8, v9, v10, v11, v7);

  return v12;
}

- (TSCH3DFill)initWithLightingModel:(id)model identifier:(id)identifier
{
  modelCopy = model;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = TSCH3DFill;
  v9 = [(TSCH3DFill *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lightingModel, model);
    objc_storeStrong(&v10->_identifier, identifier);
    if (!v10->_lightingModel && !v10->_identifier)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DFill initWithLightingModel:identifier:]");
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 119, 0, "must either have lighting model or identifier");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v20 = v15;
  if (v15)
  {
    if (*(v15 + 8))
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DFill copyWithZone:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 127, 0, "expected nil value for '%{public}s'", "result->_lightingModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
    }

    objc_storeStrong(v20 + 1, self->_lightingModel);
    if (v20[2])
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "[TSCH3DFill copyWithZone:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 130, 0, "expected nil value for '%{public}s'", "result->_identifier");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    }

    objc_storeStrong(v20 + 2, self->_identifier);
    if (v20[4])
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "[TSCH3DFill copyWithZone:]");
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v66, v67, v68, v69, v60, v65, 133, 0, "expected nil value for '%{public}s'", "result->_percentage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
    }

    objc_storeStrong(v20 + 4, self->_percentage);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  v6 = TSUSpecificCast();
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_msgSend_percentageValue(self, v5, v7, v8, v9);
  v11 = *&v10;
  objc_msgSend_percentageValue(v6, v12, v10, v13, v14);
  if (v11 != *&v16)
  {
    goto LABEL_4;
  }

  identifier = self->_identifier;
  v22 = v6[2];
  if (identifier)
  {
    if (v22)
    {
      isEqual = objc_msgSend_isEqual_(identifier, v15, v16, v17, v18);
LABEL_17:
      v19 = isEqual;
      goto LABEL_5;
    }
  }

  else if (!v22)
  {
    if (!self->_lightingModel)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DFill isEqual:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 162, 0, "invalid nil value for '%{public}s'", "_lightingModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    v39 = v6[1];
    if (!v39)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCH3DFill isEqual:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 163, 0, "invalid nil value for '%{public}s'", "other->_lightingModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
      v39 = v6[1];
    }

    isEqual = objc_msgSend_isEqual_(self->_lightingModel, v15, v16, v17, v18, v39);
    goto LABEL_17;
  }

LABEL_4:
  v19 = 0;
LABEL_5:

LABEL_7:
  return v19;
}

- (unint64_t)hash
{
  objc_msgSend_percentageValue(self, a2, v2, v3, v4);
  v21 = vdupq_lane_s32(v6, 0);
  v10 = objc_msgSend_hashVec4_(TSCH3DVector, v7, *v21.i64, v8, v9, &v21);
  v15 = objc_msgSend_hash(self->_identifier, v11, v12, v13, v14) + v10;
  return v15 + objc_msgSend_hash(self->_lightingModel, v16, v17, v18, v19);
}

- (BOOL)hasCompleteData
{
  v5 = objc_msgSend_lightingModel(self, a2, v2, v3, v4);
  hasCompleteData = objc_msgSend_hasCompleteData(v5, v6, v7, v8, v9);

  return hasCompleteData;
}

- (id)lightenByPercent:(float)percent
{
  objc_msgSend_percentageValue(self, a2, *&percent, v3, v4);
  LODWORD(v10) = 1.0;
  if (*&v8 != 1.0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v10, v9, "[TSCH3DFill lightenByPercent:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
    objc_msgSend_percentageValue(self, v18, v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v23, v22, percent, v24, v12, v17, 190, 0, "cannot lighten already lightened fill %f new %f", v22, percent);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_copy(self, v7, v8, v10, v9);
  *&v30 = percent;
  v34 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v31, v30, v32, v33);
  objc_msgSend_setPercentage_(v29, v35, v36, v37, v38, v34);

  return v29;
}

- (float)percentageValue
{
  percentage = self->_percentage;
  if (!percentage)
  {
    return 1.0;
  }

  objc_msgSend_floatValue(percentage, a2, v2, v3, v4);
  return result;
}

- (void)nonatomicallyClearLightingModel
{
  if ((objc_msgSend_isStoredInLocalBundle(self->_identifier, a2, v2, v3, v4) & 1) != 0 || objc_msgSend_isOnDemandResource(self->_identifier, v6, v7, v8, v9))
  {
    lightingModel = self->_lightingModel;
    self->_lightingModel = 0;

    cachedImageFill = self->_cachedImageFill;
    self->_cachedImageFill = 0;
  }
}

- (id)p_lazyLightingModel
{
  lightingModel = self->_lightingModel;
  if (!lightingModel)
  {
    v4 = objc_opt_class();
    v9 = objc_msgSend_dataWithFillSetIdentifier_(TSCH3DSageFillData, v5, v6, v7, v8, self->_identifier);
    v14 = objc_msgSend_lightingModelWithSageFillData_(v4, v10, v11, v12, v13, v9);
    objc_msgSend_nonatomicallySetLightingModel_(self, v15, v16, v17, v18, v14);

    objc_msgSend_assignQuicklookColorToMaterialDiffuseColorForLightingModel_(self, v19, v20, v21, v22, self->_lightingModel);
    lightingModel = self->_lightingModel;
    if (!lightingModel)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DFill p_lazyLightingModel]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 222, 0, "invalid nil value for '%{public}s'", "_lightingModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      lightingModel = self->_lightingModel;
    }
  }

  return lightingModel;
}

- (BOOL)identifierReferencesUnavailableLocalBundle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_lightingModel || (identifier = selfCopy->_identifier) == 0 || (objc_msgSend_isStoredInLocalBundle(identifier, v3, v4, v5, v6) & 1) != 0)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = objc_msgSend_isOnDemandResource(selfCopy->_identifier, v10, v11, v12, v13) ^ 1;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (TSCH3DLightingModel)lightingModel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_p_lazyLightingModel(selfCopy, v3, v4, v5, v6);
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)renderingLightingModelWithLightings:(id)lightings
{
  lightingsCopy = lightings;
  v9 = objc_msgSend_lightingModel(self, v5, v6, v7, v8);
  v14 = objc_msgSend_lightingModelWithLightings_(v9, v10, v11, v12, v13, lightingsCopy);

  objc_msgSend_assignQuicklookColorToMaterialDiffuseColorForLightingModel_(self, v15, v16, v17, v18, v14);
  percentage = self->_percentage;
  isOpaque = objc_msgSend_isOpaque(self, v20, v21, v22, v23);
  v29 = objc_msgSend_renderingLightingModelWithLightingModel_percentage_hasTransparency_(TSCH3DRenderingLightingModel, v25, v26, v27, v28, v14, percentage, isOpaque ^ 1u);

  return v29;
}

- (id)p_convertToTSDFillWithSize:(unint64_t)size technique:(unint64_t)technique context:(id)context
{
  contextCopy = context;
  sizeCopy = 512;
  if (size < 0x200)
  {
    sizeCopy = size;
  }

  if (sizeCopy <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = sizeCopy;
  }

  __asm { FMOV            V0.4S, #1.0 }

  v141 = _Q0;
  v148[0] = _Q0;
  v19 = objc_msgSend_lightingModel(self, v8, *_Q0.i64, v10, v11);
  v24 = objc_msgSend_representativeMaterialLightenedByPercentage_(v19, v20, v21, v22, v23, self->_percentage);

  objc_opt_class();
  v25 = TSUDynamicCast();
  v30 = v25;
  if (v25)
  {
    objc_msgSend_color(v25, v26, v27, v28, v29);
    v141 = v146;
    v148[0] = v146;
  }

  techniqueCopy = technique;
  objc_opt_class();
  v35 = objc_msgSend_firstTexture(v30, v31, v32, v33, v34);
  v36 = TSUDynamicCast();

  v139 = v36;
  v41 = objc_msgSend_data(v36, v37, v38, v39, v40);
  v46 = objc_msgSend_databufferForDataCache_(v41, v42, v43, v44, v45, 0);

  if (v46)
  {
    v135 = v46;
    v136 = v30;
    objc_msgSend_dataWithSizeGreaterOrEqualTo_(v46, v47, v48, v49, v50, v13);
    v55 = objc_msgSend_components(v46, v51, v52, v53, v54);
    sub_276171178(__p, 4 * v146.i32[3] * v146.i32[2] * v147);
    v60 = __p[0];
    v61 = v146.i64[0];
    if (v55 != 4)
    {
      goto LABEL_12;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v58 = 0x200000001;
    v57 = vbicq_s8(xmmword_2764D64A0, vceqq_f32(v141, _Q0));
    v57.i32[0] = vaddvq_s32(v57);
    if ((v57.i8[0] & 0xF) != 0 || (objc_msgSend_percentageValue(self, v56, *v57.i64, COERCE_DOUBLE(0x200000001), v59), LODWORD(v58) = 1.0, *v57.i32 != 1.0))
    {
LABEL_12:
      v63 = v146.i32[3] * v146.i32[2];
      v64 = v63 * v147;
      if (v63 * v147)
      {
        v65 = v55 - 3;
        v140 = vdupq_n_s32(0x437F0000u);
        selfCopy = self;
        do
        {
          __dst = -16777216;
          if (v55 == 1)
          {
            v66 = 255;
          }

          else
          {
            if (v55 != 2)
            {
              if (v65 >= 2)
              {
                v69 = MEMORY[0x277D81150];
                v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, -5.48612928e303, *&v58, v59, "[TSCH3DFill p_convertToTSDFillWithSize:technique:context:]");
                v71 = v65;
                v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v77, v78, v79, v80, v70, v76, 324, 0, "Incorrect # of components");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
                v65 = v71;
                self = selfCopy;
              }

              memcpy(&__dst, v61, v55);
              v85.i32[0] = __dst;
              v68 = vmovl_u8(v85);
              goto LABEL_22;
            }

            v66 = v61[1];
            HIBYTE(__dst) = v61[1];
          }

          LOBYTE(v58) = *v61;
          v67 = v58;
          v67.i16[1] = v66;
          *v68.i8 = vzip1_s16(v67, v67);
          v68.i8[4] = *v61;
LABEL_22:
          v143 = vdivq_f32(vmulq_f32(v141, vcvtq_f32_u32(vmovl_u16((v68.i64[0] & 0xFF00FF00FF00FFLL)))), v140);
          objc_msgSend_percentageValue(self, v56, *v143.i64, *v140.i64, *v141.i64);
          objc_msgSend_lightenDiffuseFragmentColor_byPercent_(TSCH3DLightenShaderEffect, v86, v87, v88, v89, &v143);
          v90 = 0;
          --v64;
          do
          {
            LODWORD(v58) = 1132396544;
            *v57.i32 = v142[v90] * 255.0;
            v60[v90++] = *v57.i32;
          }

          while (v90 != 4);
          v60 += 4;
          v61 += v55;
        }

        while (v64);
      }

      v61 = __p[0];
    }

    v91 = sub_2761E72B0(v146.i64, v56, v143.i64, *v57.i64, *&v58, v59);
    v94 = sub_2761D82BC(v61, &v143, 4, v91, v92, v93);
    v99 = objc_msgSend_identifier(self, v95, v96, v97, v98);
    v104 = objc_msgSend_textureSetFilename(v99, v100, v101, v102, v103);
    if (objc_msgSend_length(v104, v105, v106, v107, v108))
    {
      v113 = objc_msgSend_identifier(self, v109, v110, v111, v112);
      v118 = objc_msgSend_textureSetFilename(v113, v114, v115, v116, v117);
    }

    else
    {
      v118 = @"texture-fill.png";
    }

    v46 = v135;
    if (contextCopy)
    {
      objc_msgSend_dataFromNSData_filename_context_(MEMORY[0x277D80828], v126, v127, v128, v129, v94, v118, contextCopy);
    }

    else
    {
      objc_msgSend_readOnlyDataFromNSData_filename_(MEMORY[0x277D80828], v126, v127, v128, v129, v94, v118);
    }
    v130 = ;
    v131 = objc_alloc(MEMORY[0x277D802C0]);
    v125 = objc_msgSend_initWithImageData_technique_tintColor_size_(v131, v132, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), v133, v130, techniqueCopy, 0);

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v30 = v136;
    v119 = v139;
  }

  else
  {
    v119 = v139;
    objc_msgSend_percentageValue(self, v47, v48, v49, v50);
    objc_msgSend_lightenDiffuseFragmentColor_byPercent_(TSCH3DLightenShaderEffect, v120, v121, v122, v123, v148);
    v125 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D801F8], v124, v146.f32[0], v146.f32[1], v146.f32[2], v146.f32[3]);
  }

  return v125;
}

- (id)convertToSimpleTSDFillWithSize:(unint64_t)size context:(id)context
{
  v7 = objc_msgSend_p_convertToTSDFillWithSize_technique_context_(self, a2, v4, v5, v6, size, 3, context);

  return v7;
}

- (id)p_imageFillForSize:(CGSize)size context:(id)context
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v8 = vcvtpd_u64_f64(width);
  v9 = vcvtpd_u64_f64(height);
  if ((v8 & (v8 - 1)) != 0 && v8)
  {
    do
    {
      v10 = v8;
      v11 = v8 & -v8;
      v8 ^= v11;
    }

    while (v11 != v10);
    v8 = 2 * v10;
  }

  if ((v9 & (v9 - 1)) != 0 && v9)
  {
    do
    {
      v12 = v9;
      v13 = v9 & -v9;
      v9 ^= v13;
    }

    while (v13 != v12);
    v9 = 2 * v12;
  }

  v14 = v8;
  v15 = v9;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedImageFill = selfCopy->_cachedImageFill;
  if (!cachedImageFill || (selfCopy->_cachedImageFillSize.width == v14 ? (v18 = selfCopy->_cachedImageFillSize.height == v15) : (v18 = 0), !v18))
  {
    selfCopy->_cachedImageFill = 0;

    if (v8 <= v9)
    {
      v23 = v9;
    }

    else
    {
      v23 = v8;
    }

    selfCopy->_cachedImageFillSize.width = v14;
    selfCopy->_cachedImageFillSize.height = v15;
    v24 = objc_msgSend_p_convertToTSDFillWithSize_technique_context_(selfCopy, v19, v20, v21, v22, v23, 3, contextCopy);
    v25 = selfCopy->_cachedImageFill;
    selfCopy->_cachedImageFill = v24;

    cachedImageFill = selfCopy->_cachedImageFill;
  }

  v26 = cachedImageFill;
  objc_sync_exit(selfCopy);

  return v26;
}

- (id)p_imageFillForRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  TSDCGContextAssociatedScreenScale();
  v11 = v8;
  if (v8 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DFill p_imageFillForRect:context:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 390, 0, "invalid screen scale %f", *&v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (width >= height)
  {
    v27 = width;
  }

  else
  {
    v27 = height;
  }

  v28 = v27 * v11;

  return MEMORY[0x2821F9670](self, sel_p_imageFillForSize_context_, v28, v28, v10);
}

- (void)setFallbackFill:(id)fill
{
  fillCopy = fill;
  if (self->_fallbackFill != fillCopy)
  {
    v6 = fillCopy;
    objc_storeStrong(&self->_fallbackFill, fill);
    fillCopy = v6;
  }
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_msgSend_p_imageFillForRect_context_(self, a2, rect.origin.x, rect.origin.y, rect.size.width);
  objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v8, x, y, width, height);
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  v12 = objc_msgSend_p_imageFillForRect_context_(self, a2, bounds.origin.x, bounds.origin.y, bounds.size.width, context, bounds.size.height);
  objc_msgSend_paintPath_inContext_(v12, v8, v9, v10, v11, path, context);
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_p_imageFillForRect_context_(self, a2, rect.origin.x, rect.origin.y, rect.size.width);
  objc_msgSend_drawSwatchInRect_inContext_(v10, v9, x, y, width, context, height);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context offset:(CGPoint)offset
{
  BoundingBox = CGPathGetBoundingBox(path);
  v13 = objc_msgSend_p_imageFillForRect_context_(self, v8, BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, context, BoundingBox.size.height);
  objc_msgSend_paintPath_inContext_(v13, v9, v10, v11, v12, path, context);
}

- (id)referenceColor
{
  v5 = objc_msgSend_p_iconFill(self, a2, v2, v3, v4);
  v10 = objc_msgSend_referenceColor(v5, v6, v7, v8, v9);

  return v10;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSCH3DFill alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, archive, unarchiverCopy);

  return v11;
}

- (TSCH3DFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v43.receiver = self;
  v43.super_class = TSCH3DFill;
  v7 = [(TSCH3DFill *)&v43 init];
  if (v7)
  {
    if (!google::protobuf::internal::ExtensionSet::Has((archive + 16)))
    {
      lightingModel = v7;
      v7 = 0;
LABEL_12:

      goto LABEL_13;
    }

    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    v9 = [TSCH3DFillSetIdentifier alloc];
    v14 = objc_msgSend_initWithArchive_unarchiver_(v9, v10, v11, v12, v13, Message, unarchiverCopy);
    identifier = v7->_identifier;
    v7->_identifier = v14;

    if (!v7->_identifier && (*(Message + 16) & 2) != 0)
    {
      if (v7->_lightingModel)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCH3DFill(PersistenceAdditions) initWithArchive:unarchiver:]");
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 463, 0, "expected nil value for '%{public}s'", "_lightingModel");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
      }

      v35 = [TSCH3DLightingModel alloc];
      if (*(Message + 32))
      {
        v40 = objc_msgSend_initWithArchive_unarchiver_(v35, v36, v37, v38, v39, *(Message + 32), unarchiverCopy);
      }

      else
      {
        v40 = objc_msgSend_initWithArchive_unarchiver_(v35, v36, v37, v38, v39, &qword_2812F1278, unarchiverCopy);
      }

      lightingModel = v7->_lightingModel;
      v7->_lightingModel = v40;
      goto LABEL_12;
    }
  }

LABEL_13:

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  sub_27643A9A8();
  v5 = google::protobuf::internal::ExtensionSet::MutableMessage();
  objc_msgSend_saveToArchive_archiver_(self->_identifier, v6, v7, v8, v9, v5, archiverCopy);
  if ((objc_msgSend_isStoredInLocalBundle(self->_identifier, v10, v11, v12, v13) & 1) == 0 && (objc_msgSend_isOnDemandResource(self->_identifier, v14, v15, v16, v17) & 1) == 0)
  {
    lightingModel = self->_lightingModel;
    if (!lightingModel)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "[TSCH3DFill(PersistenceAdditions) saveToArchive:archiver:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFill.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 497, 0, "invalid nil value for '%{public}s'", "_lightingModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
      lightingModel = self->_lightingModel;
    }

    *(v5 + 16) |= 2u;
    v38 = *(v5 + 32);
    if (!v38)
    {
      v39 = *(v5 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = sub_2764475B8(v39);
      *(v5 + 32) = v38;
    }

    objc_msgSend_saveToArchive_archiver_(lightingModel, v18, v19, v20, v21, v38, archiverCopy);
  }
}

+ (id)fillWithSageFillData:(id)data
{
  dataCopy = data;
  v9 = objc_msgSend_fill(TSCH3DFill, v5, v6, v7, v8);
  v14 = objc_msgSend_lightingModelWithSageFillData_(self, v10, v11, v12, v13, dataCopy);
  objc_msgSend_nonatomicallySetLightingModel_(v9, v15, v16, v17, v18, v14);

  v23 = objc_msgSend_fillSetIdentifier(dataCopy, v19, v20, v21, v22);
  objc_msgSend_setIdentifier_(v9, v24, v25, v26, v27, v23);

  return v9;
}

+ (id)lightingModelWithSageFillData:(id)data
{
  dataCopy = data;
  v8 = objc_msgSend_lightingModel(TSCH3DFixedFunctionLightingModel, v4, v5, v6, v7);
  v182 = v8;
  v13 = objc_msgSend_materials(v8, v9, v10, v11, v12);
  v186 = objc_msgSend_diffuse(v13, v14, v15, v16, v17);
  objc_msgSend_diffuse(dataCopy, v18, v19, v20, v21);
  v187.i64[0] = __PAIR64__(LODWORD(v23), LODWORD(v22));
  v187.i64[1] = __PAIR64__(v25, LODWORD(v24));
  objc_msgSend_setColor_(v186, v26, v22, v23, v24, &v187);
  v185 = objc_msgSend_specular(v13, v27, v28, v29, v30);
  objc_msgSend_specular(dataCopy, v31, v32, v33, v34);
  v187.i64[0] = __PAIR64__(LODWORD(v36), LODWORD(v35));
  v187.i64[1] = __PAIR64__(v38, LODWORD(v37));
  objc_msgSend_setColor_(v185, v39, v35, v36, v37, &v187);
  v184 = objc_msgSend_emissive(v13, v40, v41, v42, v43);
  objc_msgSend_emissive(dataCopy, v44, v45, v46, v47);
  v187.i64[0] = __PAIR64__(LODWORD(v49), LODWORD(v48));
  v187.i64[1] = __PAIR64__(v51, LODWORD(v50));
  objc_msgSend_setColor_(v184, v52, v48, v49, v50, &v187);
  v183 = objc_msgSend_shininess(v13, v53, v54, v55, v56);
  objc_msgSend_shininess(dataCopy, v57, v58, v59, v60);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i32[0] = LODWORD(v66);
  v67 = vzip1q_s32(_Q1, _Q1);
  v67.i32[2] = LODWORD(v66);
  v187 = v67;
  objc_msgSend_setColor_(v183, v68, v66, *v67.i64, v69, &v187);
  if (objc_msgSend_hasAppAssets(MEMORY[0x277D812E8], v70, v71, v72, v73))
  {
    v79 = objc_msgSend_layerCount(dataCopy, v74, v75, v76, v77);
    if (v79)
    {
      for (i = 0; i != v79; ++i)
      {
        if (objc_msgSend_isLayerEnabledForIndex_(dataCopy, v78, v80, v81, v82, i))
        {
          v84 = objc_msgSend_textureForIndex_(dataCopy, v78, v80, v81, v82, i);
          if (v84)
          {
            v85 = dataCopy;
            v90 = objc_msgSend_tiling(TSCH3DImageTextureTiling, v86, v87, v88, v89);
            objc_msgSend_layerScaleForIndex_(v85, v91, v92, v93, v94, i);
            v187.i32[0] = LODWORD(v95);
            v187.i32[1] = LODWORD(v95);
            objc_msgSend_setScale_(v90, v96, v95, v97, v98, &v187);
            objc_msgSend_layerRotationForIndex_(v85, v99, v100, v101, v102, i);
            objc_msgSend_setRotation_(v90, v103, v104, v105, v106);

            v111 = objc_msgSend_layerTilingModeForIndex_(v85, v107, v108, v109, v110, i);
            objc_msgSend_setMode_(v90, v112, v113, v114, v115, v111);
            if (objc_msgSend_layerIsEnvironmentMapForIndex_(v85, v116, v117, v118, v119, i))
            {
              v125 = objc_msgSend_layerBlendModeForIndex_(v85, v120, v121, v122, v123, i);
              if ((v125 - 1) >= 2)
              {
                v129 = MEMORY[0x277D81150];
                v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v126, v127, v128, "+[TSCH3DFill(ImportAdditions) lightingModelWithSageFillData:]");
                v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, v132, v133, v134, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillImportExportAdditions.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v136, v137, v138, v139, v130, v135, 96, 0, "unsupported blend mode for environment texture");

                v8 = v182;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141, v142, v143);
              }

              v144 = objc_msgSend_material(TSCH3DEnvironmentMaterial, v124, v126, v127, v128);
              objc_msgSend_setDecalMode_(v144, v145, v146, v147, v148, v125 == 2);
              objc_msgSend_addTexture_tiling_(v144, v149, v150, v151, v152, v84, v90);
              v157 = objc_msgSend_environment(v8, v153, v154, v155, v156);
              objc_msgSend_addMaterial_(v157, v158, v159, v160, v161, v144);
            }

            else
            {
              if (objc_msgSend_layerBlendModeForIndex_(v85, v120, v121, v122, v123, i) != 1)
              {
                v166 = MEMORY[0x277D81150];
                v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v162, v163, v164, v165, "+[TSCH3DFill(ImportAdditions) lightingModelWithSageFillData:]");
                v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, v169, v170, v171, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DFillImportExportAdditions.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v173, v174, v175, v176, v167, v172, 103, 0, "unsupported blend mode for diffuse texture");

                v8 = v182;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178, v179, v180);
              }

              objc_msgSend_addTexture_tiling_(v186, v162, v163, v164, v165, v84, v90);
            }
          }
        }
      }
    }
  }

  return v8;
}

- (id)representativeDiffuseColor
{
  v6 = objc_msgSend_lightingModel(self, a2, v2, v3, v4);
  v11 = objc_msgSend_materials(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_diffuse(v11, v12, v13, v14, v15);
  v21 = v16;
  if (v16)
  {
    objc_msgSend_color(v16, v17, v18, v19, v20);
  }

  else
  {
    v86 = 0;
    v89 = 0;
  }

  v22 = objc_msgSend_identifier(self, v17, v18, v19, v20, v86);
  v27 = objc_msgSend_loadPropertiesDictionary(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_objectForKey_(v27, v28, v29, v30, v31, @"SFCTextureLayersArrayKey");
  objc_opt_class();
  v37 = objc_msgSend_firstObject(v32, v33, v34, v35, v36);
  v38 = TSUDynamicCast();

  v43 = objc_msgSend_objectForKey_(v38, v39, v40, v41, v42, @"SFCTextureLayerImageKey");
  v48 = objc_msgSend_sharedInstance(TSCHAssetColorMap, v44, v45, v46, v47);
  v53 = objc_msgSend_identifier(self, v49, v50, v51, v52);
  v58 = objc_msgSend_colorForFilename_fillSetIdentifier_(v48, v54, v55, v56, v57, v43, v53);

  objc_msgSend_redComponent(v58, v59, v60, v61, v62);
  v64 = v63;
  objc_msgSend_greenComponent(v58, v65, v63, v66, v67);
  v69 = v68;
  objc_msgSend_blueComponent(v58, v70, v68, v71, v72);
  v74 = v73;
  objc_msgSend_alphaComponent(v58, v75, v73, v76, v77);
  *&v79 = v64 * v87;
  *&v80 = v69 * v88;
  *&v81 = v74 * *&v89;
  *&v82 = v78 * *(&v89 + 1);
  v84 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v83, *&v79, *&v80, *&v81, *&v82, __PAIR64__(v80, v79), __PAIR64__(v82, v81));

  return v84;
}

- (void)assignQuicklookColorToMaterialDiffuseColorForLightingModel:(id)model
{
  v8 = objc_msgSend_materials(model, a2, v3, v4, v5);
  if (v8 && (objc_msgSend_isStoredInLocalBundle(self->_identifier, v7, v9, v10, v11) & 1) == 0)
  {
    v16 = objc_msgSend_diffuse(v8, v12, v13, v14, v15);
    v21 = v16;
    if (v16)
    {
      objc_msgSend_color(v16, v17, v18, v19, v20);
    }

    else
    {
      v130 = 0uLL;
    }

    v127 = objc_msgSend_loadPropertiesDictionary(self->_identifier, v17, v18, v19, v20);
    v128 = objc_msgSend_objectForKey_(v127, v22, v23, v24, v25, @"SFCTextureLayersArrayKey");
    if (v128)
    {
      objc_opt_class();
      v34 = objc_msgSend_objectAtIndexedSubscript_(v128, v30, v31, v32, v33, 0);
      v35 = TSUCheckedDynamicCast();
      v40 = objc_msgSend_objectForKey_(v35, v36, v37, v38, v39, @"SFCTextureLayerImageKey");

      if (v40)
      {
        v41 = MEMORY[0x277D812E8];
        v42 = objc_msgSend_textureSetFilename(self->_identifier, v26, v27, v28, v29);
        v47 = objc_msgSend_locatorForSageChartTextureSet_image_(v41, v43, v44, v45, v46, v42, v40);

        if (v47)
        {
          objc_opt_class();
          v52 = objc_msgSend_quicklookAssetMap(MEMORY[0x277D812E8], v48, v49, v50, v51);
          v57 = objc_msgSend_assetMap(v52, v53, v54, v55, v56);
          v62 = objc_msgSend_objectForKey_(v57, v58, v59, v60, v61, v47);
          v63 = TSUDynamicCast();

          if (v63)
          {
            objc_msgSend_redComponent(v63, v64, v65, v66, v67);
            v69 = v68;
            v70 = *&v130;
            objc_msgSend_greenComponent(v63, v71, v68, v72, v73);
            v75 = v74;
            v76 = *(&v130 + 1);
            objc_msgSend_blueComponent(v63, v77, v74, v78, v79);
            v125 = v80;
            v124 = DWORD2(v130);
            objc_msgSend_alphaComponent(v63, v81, *(&v130 + 1), v82, v83);
            *&v84 = v69 * v70;
            *&v85 = v75 * v76;
            *&v130 = __PAIR64__(v85, v84);
            v86.i32[0] = v124;
            v87.f64[0] = v125;
            v86.i32[1] = *(&v130 | 0xC);
            v87.f64[1] = v88;
            *(&v130 + 1) = vcvt_f32_f64(vmulq_f64(v87, vcvtq_f64_f32(v86)));
            sub_2761E990C(&v130, &v129);
            _Q0 = v129;
          }

          else
          {
            NSLog(&cfstr_Tsch3dfillFail.isa, v47);
            __asm { FMOV            V0.4S, #1.0 }
          }

          v126 = _Q0;
LABEL_17:
          v129 = v130;
          objc_msgSend_setColor_(v21, v89, *&v130, v90, v91, &v129);
          v104 = objc_msgSend_emissive(v8, v100, v101, v102, v103);
          v129 = xmmword_2764D5F20;
          objc_msgSend_setColor_(v104, v105, 0.0, v106, v107, &v129);

          v112 = objc_msgSend_specular(v8, v108, v109, v110, v111);
          v129 = v126;
          objc_msgSend_setColor_(v112, v113, *&v126, v114, v115, &v129);

          v120 = objc_msgSend_shininess(v8, v116, v117, v118, v119);
          v129 = xmmword_2764D64B0;
          objc_msgSend_setColor_(v120, v121, 0.0000000134110482, v122, v123, &v129);

          goto LABEL_18;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v93 = objc_msgSend_textureSetFilename(self->_identifier, v26, v27, v28, v29);

    __asm { FMOV            V0.4S, #1.0 }

    v126 = _Q0;
    if (v93)
    {
      v99 = objc_msgSend_textureSetFilename(self->_identifier, v89, *&_Q0, v90, v91);
      NSLog(&cfstr_Tsch3dfillFail_0.isa, v99);
    }

    v63 = 0;
    v47 = 0;
    goto LABEL_17;
  }

LABEL_18:
}

@end