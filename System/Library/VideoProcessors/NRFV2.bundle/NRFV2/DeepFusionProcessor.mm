@interface DeepFusionProcessor
- (BOOL)isIntermediateVersionCompatible;
- (DeepFusionProcessor)init;
- (DeepFusionProcessor)initWithContext:(id)context;
- (IBPDeepFusionProcessorDelegate)delegate;
- (int)_commonInitWithContext:(id)context;
- (int)addBuffer:(__CVBuffer *)buffer metadata:(id)metadata type:(int)type;
- (int)getTuning:(id)tuning;
- (int)prepareToProcess:(unsigned int)process prepareDescriptor:(id)descriptor;
- (int)prewarmWithTuningParameters:(id)parameters;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)setupWithOptions:(id)options;
@end

@implementation DeepFusionProcessor

- (DeepFusionProcessor)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = DeepFusionProcessor;
  v5 = [(DeepFusionProcessor *)&v11 init];
  v8 = v5;
  if (!v5)
  {
    sub_295888FE4();
LABEL_7:
    v9 = 0;
    goto LABEL_4;
  }

  if (objc_msgSend__commonInitWithContext_(v5, v6, contextCopy, v7))
  {
    sub_295888F84();
    goto LABEL_7;
  }

  v9 = v8;
LABEL_4:

  return v9;
}

- (int)_commonInitWithContext:(id)context
{
  contextCopy = context;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  objc_storeStrong(&self->_metal, context);
  if (!self->_metal)
  {
    sub_295889868(&v94 + 1);
LABEL_34:
    v91 = HIDWORD(v94);
    goto LABEL_18;
  }

  self->_networkVersion = objc_msgSend_networkVersion(DeepFusionCommon, v6, v7, v8);
  v12 = FigCapturePlatformSupportsUniversalLossyCompression() == 0;
  self->_allocatorForceSize = 0;
  self->_allocatorWireMemory = 0;
  *&self->_compressionLevel = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), 0x1FFFFFFFFLL, 0x200000001);
  if (!self->_isShaderHarvesting)
  {
    v13 = objc_msgSend_allocator(self->_metal, v9, v10, v11);

    if (v13)
    {
      sub_295889078(&v94 + 1);
      goto LABEL_34;
    }

    v14 = objc_alloc(MEMORY[0x29EDC0A20]);
    v18 = objc_msgSend_device(self->_metal, v15, v16, v17);
    v20 = objc_msgSend_initWithDevice_allocatorType_(v14, v19, v18, self->_allocatorType);
    objc_msgSend_setAllocator_(self->_metal, v21, v20, v22);

    v26 = objc_msgSend_allocator(self->_metal, v23, v24, v25);

    if (!v26)
    {
      sub_2958890C8(&v94 + 1);
      goto LABEL_34;
    }
  }

  self->_allocatorSetupComplete = 0;
  v27 = [ToneMappingStage alloc];
  v29 = objc_msgSend_initWithContext_mtlSuballocatorID_(v27, v28, self->_metal, 0);
  toneMappingStage = self->_toneMappingStage;
  self->_toneMappingStage = v29;

  if (!self->_toneMappingStage)
  {
    sub_2958897CC(&v94 + 1);
    goto LABEL_34;
  }

  v31 = [SemanticStylesStage alloc];
  v34 = objc_msgSend_initWithMetalContext_(v31, v32, self->_metal, v33);
  semanticStylesStage = self->_semanticStylesStage;
  self->_semanticStylesStage = v34;

  if (!self->_semanticStylesStage)
  {
    sub_295889730(&v94 + 1);
    goto LABEL_34;
  }

  v36 = [TextureUtils alloc];
  v39 = objc_msgSend_initWithMetalContext_(v36, v37, self->_metal, v38);
  textureUtils = self->_textureUtils;
  self->_textureUtils = v39;

  if (!self->_textureUtils)
  {
    sub_295889694(&v94 + 1);
    goto LABEL_34;
  }

  v41 = [RegDense alloc];
  v43 = objc_msgSend_initWithMetalContext_bicubicWarping_(v41, v42, self->_metal, 1);
  regDense = self->_regDense;
  self->_regDense = v43;

  if (!self->_regDense)
  {
    sub_2958895F8(&v94 + 1);
    goto LABEL_34;
  }

  v45 = [DeepFusionPreEspressoStage alloc];
  v47 = objc_msgSend_initWithContext_networkVersion_(v45, v46, contextCopy, self->_networkVersion);
  preEspressoStage = self->_preEspressoStage;
  self->_preEspressoStage = v47;

  if (!self->_preEspressoStage)
  {
    sub_29588955C(&v94 + 1);
    goto LABEL_34;
  }

  v49 = [TiledFusionStage alloc];
  v51 = objc_msgSend_initWithContext_preEspressoStage_networkVersion_(v49, v50, contextCopy, self->_preEspressoStage, self->_networkVersion);
  tiledFusionStage = self->_tiledFusionStage;
  self->_tiledFusionStage = v51;

  v55 = self->_tiledFusionStage;
  if (!v55)
  {
    sub_2958894C0(&v94 + 1);
    goto LABEL_34;
  }

  objc_msgSend_setIsHarvesting_(v55, v53, self->_isShaderHarvesting, v54);
  objc_msgSend_compileShaders(self->_tiledFusionStage, v56, v57, v58);
  LODWORD(v94) = 65792;
  v93 = 0x100000100000001;
  v59 = [AMBNRStage alloc];
  v61 = objc_msgSend_initWithContext_denoisingOptions_(v59, v60, self->_metal, &v93);
  ambnrStage = self->_ambnrStage;
  self->_ambnrStage = v61;

  v65 = self->_ambnrStage;
  if (!v65)
  {
    sub_295889424(&v94 + 1);
    goto LABEL_34;
  }

  objc_msgSend_setInputPyramidGenerationEnabled_(v65, v63, 0, v64, v93, v94);
  objc_msgSend_setUpsampleOffsetEnabled_(self->_ambnrStage, v66, 0, v67);
  v68 = [OutliersRemovalStage alloc];
  v71 = objc_msgSend_initWithMetalContext_(v68, v69, self->_metal, v70);
  outliersRemovalStage = self->_outliersRemovalStage;
  self->_outliersRemovalStage = v71;

  if (!self->_outliersRemovalStage)
  {
    sub_295889388(&v94 + 1);
    goto LABEL_34;
  }

  v73 = [SyntheticLongStage alloc];
  v76 = objc_msgSend_initWithMetalContext_(v73, v74, self->_metal, v75);
  syntheticLongStage = self->_syntheticLongStage;
  self->_syntheticLongStage = v76;

  if (!self->_syntheticLongStage)
  {
    sub_2958892EC(&v94 + 1);
    goto LABEL_34;
  }

  v78 = [ColorCubeCorrectionStage alloc];
  v81 = objc_msgSend_init_(v78, v79, contextCopy, v80);
  ColorCubeCorrectionStage = self->_ColorCubeCorrectionStage;
  self->_ColorCubeCorrectionStage = v81;

  if (!self->_ColorCubeCorrectionStage)
  {
    sub_295889250(&v94 + 1);
    goto LABEL_34;
  }

  *&self->_applyColorCubeFixOverride = 0x200000002;
  v84 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v83, @"copyTexture", 0);
  copyTextureKernel = self->_copyTextureKernel;
  self->_copyTextureKernel = v84;

  if (!self->_copyTextureKernel)
  {
    sub_2958891B4(&v94 + 1);
    goto LABEL_34;
  }

  v86 = [ColorConvertStage alloc];
  v89 = objc_msgSend_initWithMetalContext_(v86, v87, contextCopy, v88);
  colorConvertStage = self->_colorConvertStage;
  self->_colorConvertStage = v89;

  if (!self->_colorConvertStage)
  {
    sub_295889164(&v94 + 1);
    goto LABEL_34;
  }

  v91 = 0;
LABEL_18:

  return v91;
}

- (int)prewarmWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = objc_msgSend_prewarmShaders_(ToneMappingStage, v5, self->_metal, v6);
  if (v7)
  {
    sub_295889904(v7, &v27);
LABEL_17:
    v25 = v27;
    goto LABEL_9;
  }

  v10 = objc_msgSend_prewarmShaders_(SubjectRelightingStage, v8, self->_metal, v9);
  if (v10)
  {
    sub_2958899A0(v10, &v27);
    goto LABEL_17;
  }

  v13 = objc_msgSend_prewarmShaders_(SemanticStylesStage, v11, self->_metal, v12);
  if (v13)
  {
    sub_295889A3C(v13, &v27);
    goto LABEL_17;
  }

  v16 = objc_msgSend_prewarmShaders_(RegDense, v14, self->_metal, v15);
  if (v16)
  {
    sub_295889AD8(v16, &v27);
    goto LABEL_17;
  }

  v19 = objc_msgSend_prewarmShaders_(SyntheticLongStage, v17, self->_metal, v18);
  if (v19)
  {
    sub_295889B74(v19, &v27);
    goto LABEL_17;
  }

  v22 = objc_msgSend_prewarmShaders_(PyramidStage_NRF, v20, self->_metal, v21);
  if (v22)
  {
    sub_295889C10(v22, &v27);
    goto LABEL_17;
  }

  v24 = objc_msgSend_prewarmShaders_tuningParameters_plistEntryName_(DenoiseRemixStage, v23, self->_metal, parametersCopy, @"DeepFusionParameters");
  if (v24)
  {
    sub_295889CAC(v24, &v27);
    goto LABEL_17;
  }

  v25 = 0;
LABEL_9:

  return v25;
}

- (int)setupWithOptions:(id)options
{
  optionsCopy = options;
  v7 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, @"TuningParameters", v6);
  Tuning = objc_msgSend_getTuning_(self, v8, v7, v9);

  if (Tuning)
  {
    sub_295889D48(Tuning, v76);
LABEL_24:
    v59 = 0;
    v63 = v76[0];
    goto LABEL_20;
  }

  v14 = objc_msgSend_applyOverrides(self, v11, v12, v13);
  if (v14)
  {
    sub_295889DE4(v14, v76);
    goto LABEL_24;
  }

  p_lscGainsPlist = &self->_lscGainsPlist;
  v16 = [LSCGainsPlist alloc];
  v19 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v17, *MEMORY[0x29EDC0288], v18);
  v21 = objc_msgSend_initWithDictionary_metal_(v16, v20, v19, self->_metal);
  lscGainsPlist = self->_lscGainsPlist;
  self->_lscGainsPlist = v21;

  if (!self->_lscGainsPlist)
  {
    sub_295889EE0(v76);
    goto LABEL_24;
  }

  v26 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v23, v24, v25);
  objc_msgSend_setStfTuningParameters_(self->_toneMappingStage, v27, v26, v28);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_tuningParams;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v72, v71, 16);
  if (v68)
  {
    v65 = optionsCopy;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v67 = *v73;
    do
    {
      v35 = 0;
      v36 = v34;
      do
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v34 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParams, v30, *(*(&v72 + 1) + 8 * v35), v31, v65);

        v37 = v34[1];
        v38 = *(v37 + 79);
        if (*(v37 + 80))
        {
          v69 = @"DeepFusionParameters";
          v70 = *(v34[1] + 80);
          v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v30, &v70, &v69, 1);
          objc_msgSend_stfTuningParameters(p_lscGainsPlist[17], v40, v41, v42);
          v44 = v43 = p_lscGainsPlist;
          v47 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v45, v33, v46);
          objc_msgSend_setObject_forKey_(v44, v48, v39, v47);

          p_lscGainsPlist = v43;
          v33 = (v33 + 1);
        }

        v49 = v38 | v32 & 1;
        v32 = v49 & 1;
        ++v35;
        v36 = v34;
      }

      while (v68 != v35);
      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v72, v71, 16);
    }

    while (v68);
    optionsCopy = v65;
  }

  else
  {
    v49 = 0;
    v34 = 0;
  }

  objc_msgSend_setEnableSTF_(p_lscGainsPlist[17], v50, v49 & 1, v51);
  v55 = objc_msgSend_allValues(self->_tuningParams, v52, v53, v54);
  v59 = objc_msgSend_firstObject(v55, v56, v57, v58);

  if (v59)
  {
    *(p_lscGainsPlist + 38) = *(v59[1] + 72);
    v62 = objc_msgSend_setMaskedSkyCubeVersion_(p_lscGainsPlist[69], v60, *(v59[1] + 124), v61);
  }

  else
  {
    v62 = objc_msgSend_setMaskedSkyCubeVersion_(p_lscGainsPlist[69], v60, 0, v61);
  }

  v63 = v62;
  if (v62)
  {
    sub_295889E80();
  }

LABEL_20:

  return v63;
}

- (int)addBuffer:(__CVBuffer *)buffer metadata:(id)metadata type:(int)type
{
  p_EVM_EV0_motionScore = &self->_EVM_EV0_motionScore;
  metadataCopy = metadata;
  if (CVPixelBufferIsPlanar(buffer))
  {
    v11 = objc_msgSend_fillPaddedAreaInFrame_useSeparateCommandQueue_(*(p_EVM_EV0_motionScore + 27), v10, buffer, 0);
    if (v11)
    {
      v100 = v11;
      sub_295889F7C();
      goto LABEL_71;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v14 = 0;
  v15 = 588;
  v16 = 589;
  if (PixelFormatType <= 1278226487)
  {
    if (PixelFormatType <= 762865199)
    {
      if (PixelFormatType != 642527288)
      {
        v17 = 645424688;
        goto LABEL_12;
      }

LABEL_18:
      v16 = 0;
      v18 = 0;
      v14 = 1;
      v15 = 10;
      if (!metadataCopy)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    if (PixelFormatType != 762865200)
    {
      v17 = 796419632;
      goto LABEL_12;
    }

    v18 = 0;
    goto LABEL_21;
  }

  if (PixelFormatType <= 2019963439)
  {
    if (PixelFormatType == 1278226488)
    {
      goto LABEL_18;
    }

    v17 = 1885745712;
LABEL_12:
    v18 = 0;
    if (PixelFormatType != v17)
    {
LABEL_73:
      v16 = 0;
      v15 = 0;
      v14 = 1;
      v18 = 1;
      if (!metadataCopy)
      {
        goto LABEL_46;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v18 = 0;
  if (PixelFormatType == 2088265264)
  {
LABEL_21:
    if (!metadataCopy)
    {
      goto LABEL_46;
    }

    goto LABEL_22;
  }

  if (PixelFormatType != 2019963440)
  {
    goto LABEL_73;
  }

  v14 = 0;
  v18 = 0;
  v15 = 576;
  v16 = 578;
  if (!metadataCopy)
  {
    goto LABEL_46;
  }

LABEL_22:
  v104 = v15;
  v105 = v18;
  v106 = v14;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v25 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v21, @"ReferenceMetadata", v22);
  if (v25)
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v23, @"MotionScores", v24);
    objc_msgSend_floatValue(v26, v27, v28, v29);
    *p_EVM_EV0_motionScore = v30;

    objc_storeStrong(&self->_ev0MetadataDict, v25);
    v31 = sub_29582075C(self->_ev0MetadataDict, &self->_ev0Metadata, WidthOfPlane, HeightOfPlane, 1);
    if (v31)
    {
      v100 = v31;
      sub_295889FDC(v31, v25);
      goto LABEL_71;
    }
  }

  v107 = v25;
  v34 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v23, @"SifrMetadata", v24);
  if (v34)
  {
    objc_storeStrong(&self->_sifrMetadataDict, v34);
    v35 = sub_29582075C(self->_sifrMetadataDict, &self->_sifrMetadata, WidthOfPlane, HeightOfPlane, 1);
    if (v35)
    {
      v100 = v35;
      sub_29588A054(v35, v34, v107);
      goto LABEL_71;
    }
  }

  typeCopy = type;
  v38 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v32, @"LongMetadata", v33);
  if (v38)
  {
    objc_storeStrong(&self->_longMetadataDict, v38);
    v39 = sub_29582075C(self->_longMetadataDict, &self->_longMetadata, WidthOfPlane, HeightOfPlane, 1);
    if (v39)
    {
      v100 = v39;
      sub_29588A0DC(v39, v38, v34, v107);
      goto LABEL_71;
    }
  }

  v42 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v36, @"SyntheticLong", v37);
  if (v42)
  {
    objc_storeStrong(p_EVM_EV0_motionScore + 1, v42);
    v45 = objc_msgSend_objectForKeyedSubscript_(*(p_EVM_EV0_motionScore + 1), v43, @"syntheticLongPedestal", v44);
    objc_msgSend_floatValue(v45, v46, v47, v48);
    *(p_EVM_EV0_motionScore + 158) = v49;

    v50 = p_EVM_EV0_motionScore[158];
    if (v50 < 0.0 || v50 > 1.0)
    {
      p_EVM_EV0_motionScore[158] = 0.0;
    }
  }

  v102 = v38;
  v51 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v40, @"SyntheticReference", v41);
  v54 = v51;
  if (v51)
  {
    v55 = objc_msgSend_objectForKeyedSubscript_(v51, v52, @"Mode", v53);
    *(p_EVM_EV0_motionScore + 1) = objc_msgSend_intValue(v55, v56, v57, v58);

    v61 = objc_msgSend_objectForKeyedSubscript_(v54, v59, @"syntheticReferencePedestal", v60);
    objc_msgSend_floatValue(v61, v62, v63, v64);
    *(p_EVM_EV0_motionScore + 157) = v65;

    v66 = p_EVM_EV0_motionScore[157];
    if (v66 < 0.0 || v66 > 1.0)
    {
      p_EVM_EV0_motionScore[157] = 0.0;
    }
  }

  v67 = v34;
  v70 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v52, *MEMORY[0x29EDC01A8], v53);
  if (v70)
  {
    objc_storeStrong(&self->_nrfStatus, v70);
  }

  v71 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v68, *MEMORY[0x29EDC0190], v69);

  if (v71)
  {
    objc_storeStrong(&self->_nrfInputBracketCount, v71);
  }

  v74 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v72, *MEMORY[0x29EDC0198], v73);

  if (v74)
  {
    objc_storeStrong(&self->_nrfRegisteredBracketCount, v74);
  }

  v15 = v104;
  if (!self->_sensorID)
  {
    ev0MetadataDict = self->_ev0MetadataDict;
    if (ev0MetadataDict)
    {
      v78 = objc_msgSend_objectForKeyedSubscript_(ev0MetadataDict, v75, *MEMORY[0x29EDC06E0], v76);
      sensorID = self->_sensorID;
      self->_sensorID = v78;

      v82 = objc_msgSend_objectForKeyedSubscript_(self->_ev0MetadataDict, v80, *MEMORY[0x29EDC0630], v81);
      portType = self->_portType;
      self->_portType = v82;
    }
  }

  type = typeCopy;
  v18 = v105;
  v14 = v106;
LABEL_46:
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        if (v18)
        {
          sub_29588A478(&v108);
          goto LABEL_89;
        }

        v86 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v87 = *(p_EVM_EV0_motionScore + 19);
        *(p_EVM_EV0_motionScore + 19) = v86;

        if (!*(p_EVM_EV0_motionScore + 19))
        {
          sub_29588A3DC(&v108);
          goto LABEL_89;
        }

        goto LABEL_70;
      }

      goto LABEL_72;
    }

    if (v18)
    {
      sub_29588A958(&v108);
      goto LABEL_89;
    }

    if (v14)
    {
      sub_29588A8BC(&v108);
      goto LABEL_89;
    }

    *(p_EVM_EV0_motionScore + 13) = buffer;
    v95 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
    v96 = *(p_EVM_EV0_motionScore + 14);
    *(p_EVM_EV0_motionScore + 14) = v95;

    v98 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v97, buffer, v16, 7, 1);
    v99 = *(p_EVM_EV0_motionScore + 15);
    *(p_EVM_EV0_motionScore + 15) = v98;

    if (!*(p_EVM_EV0_motionScore + 14))
    {
      sub_29588A820(&v108);
      goto LABEL_89;
    }

    if (!*(p_EVM_EV0_motionScore + 15))
    {
      sub_29588A784(&v108);
      goto LABEL_89;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        if (v18)
        {
          sub_29588A6E8(&v108);
          goto LABEL_89;
        }

        if (v14)
        {
          sub_29588A64C(&v108);
          goto LABEL_89;
        }

        *(p_EVM_EV0_motionScore + 16) = buffer;
        v88 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v89 = *(p_EVM_EV0_motionScore + 17);
        *(p_EVM_EV0_motionScore + 17) = v88;

        v91 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v90, buffer, v16, 7, 1);
        v92 = *(p_EVM_EV0_motionScore + 18);
        *(p_EVM_EV0_motionScore + 18) = v91;

        if (!*(p_EVM_EV0_motionScore + 17))
        {
          sub_29588A5B0(&v108);
          goto LABEL_89;
        }

        if (!*(p_EVM_EV0_motionScore + 18))
        {
          sub_29588A514(&v108);
          goto LABEL_89;
        }

        break;
      case 3:
        if (v18)
        {
          sub_29588A340(&v108);
          goto LABEL_89;
        }

        v93 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v94 = *(p_EVM_EV0_motionScore + 20);
        *(p_EVM_EV0_motionScore + 20) = v93;

        if (!*(p_EVM_EV0_motionScore + 20))
        {
          sub_29588A2A4(&v108);
          goto LABEL_89;
        }

        break;
      case 4:
        if (v18)
        {
          sub_29588A208(&v108);
          goto LABEL_89;
        }

        v84 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v13, buffer, v15, 7, 0);
        v85 = *(p_EVM_EV0_motionScore + 21);
        *(p_EVM_EV0_motionScore + 21) = v84;

        if (!*(p_EVM_EV0_motionScore + 21))
        {
          sub_29588A16C(&v108);
LABEL_89:
          v100 = v108;
          goto LABEL_71;
        }

        break;
      default:
LABEL_72:
        v100 = FigSignalErrorAtGM();
        goto LABEL_71;
    }
  }

LABEL_70:
  v100 = 0;
LABEL_71:

  return v100;
}

- (int)prepareToProcess:(unsigned int)process prepareDescriptor:(id)descriptor
{
  p_applyColorCubeFixOverride = &self->_applyColorCubeFixOverride;
  descriptorCopy = descriptor;
  *(p_applyColorCubeFixOverride + 1) = objc_msgSend_width(descriptorCopy, v7, v8, v9);
  v13 = objc_msgSend_height(descriptorCopy, v10, v11, v12);

  v17 = (*(p_applyColorCubeFixOverride + 1) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(p_applyColorCubeFixOverride + 2) = v13;
  *(p_applyColorCubeFixOverride + 3) = v17;
  *(p_applyColorCubeFixOverride + 4) = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (!self->_allocatorSetupComplete)
  {
    compressionLevel = self->_compressionLevel;
    allocatorType = self->_allocatorType;
    if (allocatorType == 1 && (compressionLevel & 0x80000000) == 0)
    {
      sub_29588AB34(&v71);
      return v71;
    }

    allocatorForceSize = self->_allocatorForceSize;
    v21 = objc_opt_new();
    v24 = v21;
    if (!v21)
    {
      sub_29588AA98(&v71);
      goto LABEL_31;
    }

    v25 = 90177536;
    if (allocatorType == 2)
    {
      v25 = 93323264;
    }

    if (compressionLevel > 0)
    {
      v25 = 76546048;
    }

    if (!compressionLevel)
    {
      v25 = 96122961;
    }

    if (allocatorForceSize)
    {
      objc_msgSend_setMemSize_(v21, v22, allocatorForceSize, v23);
    }

    else
    {
      objc_msgSend_setMemSize_(v21, v22, v25, v23);
    }

    objc_msgSend_setWireMemory_(v24, v26, self->_allocatorWireMemory, v27);
    objc_msgSend_setCompressionLevel_(v24, v28, self->_compressionLevel, v29);
    objc_msgSend_setLabel_(v24, v30, @"FigMetalAllocator_DeepFusion", v31);
    v35 = objc_msgSend_allocator(self->_metal, v32, v33, v34);
    v38 = objc_msgSend_setupWithDescriptor_(v35, v36, v24, v37);

    if (v38)
    {
      sub_29588A9F4();
      goto LABEL_33;
    }

    self->_allocatorSetupComplete = 1;
  }

  if (!objc_msgSend_buffer(*(p_applyColorCubeFixOverride + 77), v14, v15, v16))
  {
    goto LABEL_20;
  }

  v42 = objc_msgSend_device(self->_metal, v39, v40, v41);
  v46 = objc_msgSend_buffer(*(p_applyColorCubeFixOverride + 77), v43, v44, v45);
  IOSurface = CVPixelBufferGetIOSurface(v46);
  v24 = objc_msgSend_newBufferWithIOSurface_(v42, v48, IOSurface, v49);

  if (!v24)
  {
    sub_29588ABFC(&v71);
LABEL_31:
    v38 = v71;
    goto LABEL_33;
  }

  v53 = objc_msgSend_allocator(self->_metal, v50, v51, v52);
  v38 = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v53, v54, v24, 0);

  if (v38)
  {
    sub_29588ABD0();
LABEL_33:

    return v38;
  }

LABEL_20:
  if (*(p_applyColorCubeFixOverride + 15))
  {
    goto LABEL_23;
  }

  v55 = [ToneMappingCurves alloc];
  v58 = objc_msgSend_initWithWithContext_(v55, v56, self->_metal, v57);
  v59 = *(p_applyColorCubeFixOverride + 15);
  *(p_applyColorCubeFixOverride + 15) = v58;

  if (!*(p_applyColorCubeFixOverride + 15))
  {
    sub_29588AD58(&v71);
    return v71;
  }

  v63 = objc_msgSend_enableSTF(*(p_applyColorCubeFixOverride + 16), v60, v61, v62);
  objc_msgSend_setEnableSTF_(*(p_applyColorCubeFixOverride + 15), v64, v63, v65);
LABEL_23:
  ResourcesForWidth_height_srlVersion = objc_msgSend_allocateResourcesForWidth_height_srlVersion_(*(p_applyColorCubeFixOverride + 16), v39, *(p_applyColorCubeFixOverride + 3), *(p_applyColorCubeFixOverride + 4), p_applyColorCubeFixOverride[36]);
  if (ResourcesForWidth_height_srlVersion)
  {
    v38 = ResourcesForWidth_height_srlVersion;
    sub_29588AC98();
  }

  else
  {
    v38 = objc_msgSend_initializePyramids(*(p_applyColorCubeFixOverride + 21), v67, v68, v69);
    if (v38)
    {
      sub_29588ACF8();
    }
  }

  return v38;
}

- (BOOL)isIntermediateVersionCompatible
{
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_nrfSyntheticLongIntermediateMetadataDict, a2, @"IntermediateVersion", v2);
  v7 = objc_msgSend_intValue(v3, v4, v5, v6);

  return v7 == objc_msgSend_intermediateVersion(DeepFusionCommon, v8, v9, v10);
}

- (int)process
{
  v879 = 0;
  v880 = 0;
  v877 = 0;
  v878 = 0;
  v876 = 0;
  memset(v875, 0, sizeof(v875));
  v871 = 0;
  v872 = 0;
  v3 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParams, a2, self->_sensorID, v2);
  v857 = v3;
  if (!v3 || !*(v3 + 48))
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    v854 = 0;
    v845 = 0;
    v851 = 0;
    v847 = 0;
LABEL_181:
    v848 = 0;
LABEL_183:
    v242 = 0;
    v243 = 0;
    v849 = 0;
LABEL_186:
    v858 = 0;
    goto LABEL_165;
  }

  p_EVM_EV0_motionScore = &self->_EVM_EV0_motionScore;
  v848 = objc_msgSend_getTextureForPortType_(self->_lscGainsPlist, v4, self->_portType, v5);
  v847 = objc_msgSend_getTextureMaxValueForPortType_(self->_lscGainsPlist, v7, self->_portType, v8);
  if (!v848)
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    v854 = 0;
    v845 = 0;
    v851 = 0;
    goto LABEL_181;
  }

  v849 = objc_opt_new();
  if (!v849)
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    v854 = 0;
    v845 = 0;
    v851 = 0;
    goto LABEL_183;
  }

  if (!self->_referenceLumaTex)
  {
    goto LABEL_184;
  }

  if (!self->_referenceChromaTex)
  {
    goto LABEL_184;
  }

  if (!self->_ev0MetadataDict)
  {
    goto LABEL_184;
  }

  if (!self->_longLumaTex)
  {
    goto LABEL_184;
  }

  if (!self->_longChromaTex)
  {
    goto LABEL_184;
  }

  if (!self->_referenceFusionMapTex)
  {
    goto LABEL_184;
  }

  if (!self->_longFusionMapTex)
  {
    goto LABEL_184;
  }

  nrfSyntheticLongIntermediateMetadataDict = self->_nrfSyntheticLongIntermediateMetadataDict;
  if (!nrfSyntheticLongIntermediateMetadataDict)
  {
    goto LABEL_184;
  }

  sifrMetadataDict = self->_sifrMetadataDict;
  p_sifrMetadata = &self->_sifrMetadata;
  p_ev0Metadata = &self->_ev0Metadata;
  if (!sifrMetadataDict)
  {
    p_sifrMetadata = &self->_ev0Metadata;
  }

  v855 = p_sifrMetadata;
  v841 = sifrMetadataDict && self->_sifrMetadata.isEVMFrame;
  v14 = objc_msgSend_objectForKeyedSubscript_(nrfSyntheticLongIntermediateMetadataDict, v9, @"SyntheticLongUsedRealLong", v10);
  v850 = objc_msgSend_BOOLValue(v14, v15, v16, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(self->_nrfSyntheticLongIntermediateMetadataDict, v18, @"ev0count", v19);
  v846 = objc_msgSend_intValue(v20, v21, v22, v23);

  if (v846 <= 0 || (objc_msgSend_isIntermediateVersionCompatible(self, v24, v25, v26) & 1) == 0)
  {
    goto LABEL_184;
  }

  if (objc_msgSend_skinMask(self->_inferenceResults, v27, v28, v29))
  {
    metal = self->_metal;
    v34 = objc_msgSend_skinMask(self->_inferenceResults, v30, v31, v32);
    v851 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metal, v35, v34, 10, 7, 0);
    if (!v851)
    {
LABEL_184:
      FigDebugAssert3();
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
      v854 = 0;
      v845 = 0;
      v851 = 0;
      goto LABEL_185;
    }
  }

  else
  {
    v851 = 0;
  }

  if (objc_msgSend_personMask(self->_inferenceResults, v30, v31, v32))
  {
    v39 = self->_metal;
    v40 = objc_msgSend_personMask(self->_inferenceResults, v36, v37, v38);
    v845 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v39, v41, v40, 25, 7, 0);
    if (!v845)
    {
      FigDebugAssert3();
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
      v854 = 0;
      v845 = 0;
LABEL_185:
      v242 = 0;
      v243 = 0;
      goto LABEL_186;
    }
  }

  else
  {
    v845 = 0;
  }

  if (objc_msgSend_skyMask(self->_inferenceResults, v36, v37, v38))
  {
    v49 = self->_metal;
    v50 = objc_msgSend_skyMask(self->_inferenceResults, v46, v47, v48);
    v854 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v49, v51, v50, 10, 7, 0);
    if (!v854)
    {
      FigDebugAssert3();
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
      v854 = 0;
      goto LABEL_185;
    }
  }

  else
  {
    v854 = 0;
  }

  for (i = 0; i != 32; i += 8)
  {
    v53 = *(v875 + i);
    *(v875 + i) = 0;
  }

  for (j = 0; ; ++j)
  {
    v58 = objc_msgSend_lowResPersonInstanceMasks(self->_inferenceResults, v54, v55, v56);
    v62 = objc_msgSend_count(v58, v59, v60, v61);

    if (v62 <= j)
    {
      break;
    }

    v66 = objc_msgSend_lowResPersonInstanceMasks(self->_inferenceResults, v63, v64, v65);
    v69 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, j, v68);

    if (v69)
    {
      v71 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v70, v69, 25, 1, 0);
      v72 = *(v875 + j);
      *(v875 + j) = v71;

      if (!v71)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v73 = *(v875 + j);
      *(v875 + j) = 0;
    }
  }

  v74 = objc_msgSend_allocator(self->_metal, v63, v64, v65);
  v858 = objc_msgSend_newTextureDescriptor(v74, v75, v76, v77);

  if (!v858)
  {
LABEL_38:
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    goto LABEL_185;
  }

  v81 = v857;
  if (*(*(v857 + 8) + 78) == 1)
  {
    v81 = v857;
    if (objc_msgSend_skyMask(self->_inferenceResults, v78, v79, v80))
    {
      v82 = objc_msgSend_buffer(self->_output, v78, v79, v80);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(v82, 0);
      v87 = objc_msgSend_buffer(self->_output, v84, v85, v86);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(v87, 0);
      inferenceResults = self->_inferenceResults;
      v93 = *(*(*(v857 + 8) + 24) + 36) ? objc_msgSend_skinMask(inferenceResults, v88, v89, v90) : objc_msgSend_skyMask(inferenceResults, v88, v89, v90);
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_regularizeLocalToneCurves_mask_tcrParams_imageDims_(self->_toneMappingCurves, v94, &v855->ltmCurves, v93, *(*(v857 + 8) + 24), COERCE_DOUBLE(__PAIR64__(HeightOfPlane, WidthOfPlane)));
      v81 = v857;
      if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
      {
        FigDebugAssert3();
        goto LABEL_95;
      }
    }
  }

  if (sifrMetadataDict)
  {
    if (self->_SyntheticReferenceMode != 1)
    {
      v95 = *(v81 + 48);
      if (*p_EVM_EV0_motionScore > *(v95 + 12))
      {
        if (self->_networkVersion != 2 || (exposure_time = self->_ev0Metadata.exposureParams.exposure_time, v96 = *p_EVM_EV0_motionScore, (exposure_time * v96) < sub_29584472C(*(v95 + 16), 0.0)))
        {
          *obj = 0;
          v868 = 0;
          width = self->_width;
          v99 = objc_msgSend_desc(v858, v78, v79, v80);
          objc_msgSend_setWidth_(v99, v100, width, v101);

          height = self->_height;
          v106 = objc_msgSend_desc(v858, v103, v104, v105);
          objc_msgSend_setHeight_(v106, v107, height, v108);

          v112 = objc_msgSend_desc(v858, v109, v110, v111);
          objc_msgSend_setPixelFormat_(v112, v113, 25, v114);

          v118 = objc_msgSend_desc(v858, v115, v116, v117);
          objc_msgSend_setUsage_(v118, v119, 7, v120);

          objc_msgSend_setLabel_(v858, v121, 0, v122);
          v126 = objc_msgSend_allocator(self->_metal, v123, v124, v125);
          *obj = objc_msgSend_newTextureWithDescriptor_(v126, v127, v858, v128);

          if (!*obj)
          {
            goto LABEL_222;
          }

          v132 = self->_width;
          v133 = objc_msgSend_desc(v858, v129, v130, v131);
          objc_msgSend_setWidth_(v133, v134, v132 >> 1, v135);

          v136 = self->_height;
          v140 = objc_msgSend_desc(v858, v137, v138, v139);
          objc_msgSend_setHeight_(v140, v141, v136 >> 1, v142);

          v146 = objc_msgSend_desc(v858, v143, v144, v145);
          objc_msgSend_setPixelFormat_(v146, v147, 65, v148);

          v152 = objc_msgSend_desc(v858, v149, v150, v151);
          objc_msgSend_setUsage_(v152, v153, 7, v154);

          objc_msgSend_setLabel_(v858, v155, 0, v156);
          v160 = objc_msgSend_allocator(self->_metal, v157, v158, v159);
          v163 = objc_msgSend_newTextureWithDescriptor_(v160, v161, v858, v162);
          v164 = v868;
          v868 = v163;

          if (!v163)
          {
            goto LABEL_222;
          }

          v168 = objc_msgSend_width(self->_referenceFusionMapTex, v165, v166, v167);
          v172 = objc_msgSend_desc(v858, v169, v170, v171);
          objc_msgSend_setWidth_(v172, v173, v168, v174);

          v178 = objc_msgSend_height(self->_referenceFusionMapTex, v175, v176, v177);
          v182 = objc_msgSend_desc(v858, v179, v180, v181);
          objc_msgSend_setHeight_(v182, v183, v178, v184);

          v188 = objc_msgSend_pixelFormat(self->_referenceFusionMapTex, v185, v186, v187);
          v192 = objc_msgSend_desc(v858, v189, v190, v191);
          objc_msgSend_setPixelFormat_(v192, v193, v188, v194);

          v198 = objc_msgSend_desc(v858, v195, v196, v197);
          objc_msgSend_setUsage_(v198, v199, 7, v200);

          objc_msgSend_setLabel_(v858, v201, 0, v202);
          v206 = objc_msgSend_allocator(self->_metal, v203, v204, v205);
          v209 = objc_msgSend_newTextureWithDescriptor_(v206, v207, v858, v208);
          v210 = v876;
          v876 = v209;

          if (!v209)
          {
LABEL_222:
            FigDebugAssert3();
            isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
            goto LABEL_223;
          }

          v840 = v209;
          v211 = sub_295820670(&self->_sifrMetadata.exposureParams, &self->_ev0Metadata.exposureParams, 1);
          v212 = *(MEMORY[0x29EDCA928] + 16);
          v864 = *MEMORY[0x29EDCA928];
          v865 = v212;
          v866 = *(MEMORY[0x29EDCA928] + 32);
          v213 = objc_opt_new();
          objc_storeStrong(v213 + 2, self->_referenceLumaTex);
          objc_storeStrong(v213 + 3, self->_referenceChromaTex);
          v214 = objc_opt_new();
          objc_storeStrong((v214 + 16), self->_longLumaTex);
          v852 = v214;
          objc_storeStrong((v214 + 24), self->_longChromaTex);
          v215 = objc_opt_new();
          objc_storeStrong(v215 + 2, *obj);
          objc_storeStrong(v215 + 3, v868);
          regDense = self->_regDense;
          v220 = objc_msgSend_width(v213[2], v217, v218, v219);
          v224 = objc_msgSend_height(v213[2], v221, v222, v223);
          v226 = objc_msgSend_prepareWithImageWidth_imageHeight_(regDense, v225, v220, v224);
          isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v226;
          if (v226)
          {
            v831 = v836;
            LODWORD(v828) = v226;
            FigDebugAssert3();
            v240 = 4;
            v235 = v840;
            goto LABEL_64;
          }

          *&v228 = v211;
          v229 = objc_msgSend_runWithReferenceImage_nonReferenceImage_warpedImage_relativeBrightness_homography_regDenseParams_alwaysDense_refWeightsLevel_nonRefWeightsLevel_(self->_regDense, v227, v213, v852, v215, &v864, 0, 1, v228, 0, 0);
          if (v229)
          {
            goto LABEL_225;
          }

          objc_storeStrong((v852 + 16), self->_longLumaTex);
          v230 = *(v852 + 24);
          *(v852 + 24) = 0;

          objc_storeStrong(v215 + 2, *obj);
          v231 = v215[3];
          v215[3] = 0;

          v229 = objc_msgSend_warpAdditionalImage_warpedImage_homography_hybridReg_alwaysDense_(self->_regDense, v232, self->_longFusionMapTex, v840, &v864, 0, 1);
          if (v229)
          {
LABEL_225:
            v831 = v836;
            LODWORD(v828) = v229;
            FigDebugAssert3();
            isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
            v240 = 4;
            v235 = v840;
            goto LABEL_64;
          }

          longFusionMapTex = self->_longFusionMapTex;
          v234 = longFusionMapTex;
          objc_storeStrong(&self->_longFusionMapTex, v209);
          v235 = v234;

          longRealLongFusionMapTex = self->_longRealLongFusionMapTex;
          if (longRealLongFusionMapTex)
          {
            v239 = objc_msgSend_warpAdditionalImage_warpedImage_homography_hybridReg_alwaysDense_(self->_regDense, v236, longRealLongFusionMapTex, v235, &v864, 0, 1);
            if (v239)
            {
              v831 = v836;
              LODWORD(v828) = v239;
              FigDebugAssert3();
              isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
              v240 = 4;
              goto LABEL_63;
            }

            objc_storeStrong(&self->_longRealLongFusionMapTex, longFusionMapTex);
          }

          objc_msgSend_reset(self->_regDense, v236, longRealLongFusionMapTex, v237);
          v240 = 0;
          isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = 0;
LABEL_63:

LABEL_64:
          if (v240)
          {

            v242 = 0;
            v243 = 0;
            goto LABEL_165;
          }

          v81 = v857;
          isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v241, *obj, self->_longLumaTex);
          if (!isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
          {
            isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v244, v868, self->_longChromaTex);
            if (!isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
            {
              FigMetalDecRef();
              FigMetalDecRef();

              goto LABEL_69;
            }
          }

          FigDebugAssert3();

LABEL_223:
          goto LABEL_95;
        }
      }
    }
  }

LABEL_69:
  self->_preEspressoMetaData.combo = v850 ^ 1u;
  v245 = *&v855->exposureParams.gain;
  v246 = *&v855->exposureParams.ispGainRangeExpansionFactor;
  *&self->_preEspressoMetaData.refExposure.blue_combo_gain = *&v855->exposureParams.blue_combo_gain;
  *&self->_preEspressoMetaData.refExposure.ispGainRangeExpansionFactor = v246;
  *&self->_preEspressoMetaData.refExposure.gain = v245;
  v247 = *&v855->exposureParams.exposure_time;
  v248 = *&v855->exposureParams.read_noise_1x;
  v249 = *&v855->exposureParams.lsModulationWeight;
  *&self->_preEspressoMetaData.refExposure.ltm_locked = *&v855->exposureParams.ltm_locked;
  *&self->_preEspressoMetaData.refExposure.read_noise_1x = v248;
  *&self->_preEspressoMetaData.refExposure.lsModulationWeight = v249;
  *&self->_preEspressoMetaData.refExposure.exposure_time = v247;
  v250 = *&self->_ev0Metadata.exposureParams.ispGainRangeExpansionFactor;
  *&self->_preEspressoMetaData.syntheticLongExposure.exposure_time = *&self->_ev0Metadata.exposureParams.exposure_time;
  v251 = *&self->_ev0Metadata.exposureParams.lsModulationWeight;
  *&self->_preEspressoMetaData.syntheticLongExposure.read_noise_1x = *&self->_ev0Metadata.exposureParams.read_noise_1x;
  *&self->_preEspressoMetaData.syntheticLongExposure.lsModulationWeight = v251;
  *&self->_preEspressoMetaData.syntheticLongExposure.ltm_locked = *&self->_ev0Metadata.exposureParams.ltm_locked;
  v252 = *&self->_ev0Metadata.exposureParams.blue_combo_gain;
  *&self->_preEspressoMetaData.syntheticLongExposure.gain = *&self->_ev0Metadata.exposureParams.gain;
  *&self->_preEspressoMetaData.syntheticLongExposure.blue_combo_gain = v252;
  *&self->_preEspressoMetaData.syntheticLongExposure.ispGainRangeExpansionFactor = v250;
  v253 = *&self->_longMetadata.exposureParams.lsModulationWeight;
  *&self->_preEspressoMetaData.longExposure.read_noise_1x = *&self->_longMetadata.exposureParams.read_noise_1x;
  *&self->_preEspressoMetaData.longExposure.lsModulationWeight = v253;
  *&self->_preEspressoMetaData.longExposure.ltm_locked = *&self->_longMetadata.exposureParams.ltm_locked;
  v254 = *&self->_longMetadata.exposureParams.blue_combo_gain;
  *&self->_preEspressoMetaData.longExposure.gain = *&self->_longMetadata.exposureParams.gain;
  *&self->_preEspressoMetaData.longExposure.blue_combo_gain = v254;
  v255 = *&self->_longMetadata.exposureParams.exposure_time;
  *&self->_preEspressoMetaData.longExposure.ispGainRangeExpansionFactor = *&self->_longMetadata.exposureParams.ispGainRangeExpansionFactor;
  *&self->_preEspressoMetaData.longExposure.exposure_time = v255;
  gain = self->_preEspressoMetaData.syntheticLongExposure.gain;
  *&v255 = gain * self->_preEspressoMetaData.syntheticLongExposure.exposure_time;
  v853 = objc_msgSend_modelForEIT_(*(v81 + 48), v78, v79, v80, *&v255, v828, v831);
  self->_networkVersion;
  v869[0] = sub_295820670(&v855->exposureParams, &self->_ev0Metadata.exposureParams, 2);
  *&v869[1] = gain;
  v259 = objc_msgSend_objectAtIndexedSubscript_(v847, v257, 1, v258);
  objc_msgSend_floatValue(v259, v260, v261, v262);
  v869[2] = v263;

  p_preEspressoMetaData = &self->_preEspressoMetaData;
  v266 = objc_msgSend_noiseTuningForModel_(*(v857 + 48), v264, v853, v265);
  v267 = v266;
  if (!v266)
  {
    goto LABEL_190;
  }

  v268 = &OBJC_IVAR___DeepFusionNoiseTuningPlist_slEV0;
  if (v850)
  {
    v268 = &OBJC_IVAR___DeepFusionNoiseTuningPlist_slEV0Long;
  }

  objc_storeStrong(&v871, *(v266 + *v268));
  if (!v871)
  {
LABEL_190:
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();

LABEL_95:
    v242 = 0;
    v243 = 0;
    goto LABEL_165;
  }

  v271 = objc_msgSend_objectAtIndexedSubscript_(*(*(v857 + 48) + 56), v269, v853, v270);
  v272 = v872;
  v872 = v271;

  if (self->_preEspressoMetaData.combo == 1)
  {
    v273 = NAN;
  }

  else
  {
    v273 = sub_295820670(&v855->exposureParams, &self->_longMetadata.exposureParams, 2);
  }

  v873 = v273;
  v874[0] = 1065353216;
  v874[1] = sqrtf(v846);

  v274 = sub_295820700(&self->_preEspressoMetaData.syntheticLongExposure, &self->_preEspressoMetaData.refExposure);
  v278 = objc_msgSend_desc(v858, v275, v276, v277);
  objc_msgSend_setUsage_(v278, v279, 7, v280);

  v284 = objc_msgSend_desc(v858, v281, v282, v283);
  objc_msgSend_setPixelFormat_(v284, v285, 25, v286);

  v287 = self->_width;
  v291 = objc_msgSend_desc(v858, v288, v289, v290);
  objc_msgSend_setWidth_(v291, v292, v287, v293);

  v294 = self->_height;
  v298 = objc_msgSend_desc(v858, v295, v296, v297);
  objc_msgSend_setHeight_(v298, v299, v294, v300);

  objc_msgSend_setLabel_(v858, v301, 0, v302);
  v306 = objc_msgSend_allocator(self->_metal, v303, v304, v305);
  v309 = objc_msgSend_newTextureWithDescriptor_(v306, v307, v858, v308);
  v310 = v878;
  v878 = v309;

  if (!v878)
  {
    goto LABEL_204;
  }

  v314 = objc_msgSend_desc(v858, v311, v312, v313);
  objc_msgSend_setPixelFormat_(v314, v315, 65, v316);

  v317 = self->_width;
  v321 = objc_msgSend_desc(v858, v318, v319, v320);
  objc_msgSend_setWidth_(v321, v322, v317 >> 1, v323);

  v324 = self->_height;
  v328 = objc_msgSend_desc(v858, v325, v326, v327);
  objc_msgSend_setHeight_(v328, v329, v324 >> 1, v330);

  objc_msgSend_setLabel_(v858, v331, 0, v332);
  v336 = objc_msgSend_allocator(self->_metal, v333, v334, v335);
  v339 = objc_msgSend_newTextureWithDescriptor_(v336, v337, v858, v338);
  v340 = v877;
  v877 = v339;

  if (!v877)
  {
    goto LABEL_204;
  }

  *&v343 = sub_29584472C(*(*(v857 + 48) + 24), gain);
  v344 = LODWORD(v343);
  if (*&v343 > 0.0)
  {
    if (objc_msgSend_filterChroma_outChroma_alpha_(self->_preEspressoStage, v341, self->_referenceChromaTex, v877, v343))
    {
      goto LABEL_204;
    }

    if (objc_msgSend_copyTexture_outTex_(self->_textureUtils, v345, v877, self->_referenceChromaTex))
    {
      goto LABEL_204;
    }

    LODWORD(v347) = v344;
    if (objc_msgSend_filterChroma_outChroma_alpha_(self->_preEspressoStage, v346, self->_longChromaTex, v877, v347) || objc_msgSend_copyTexture_outTex_(self->_textureUtils, v348, v877, self->_longChromaTex))
    {
      goto LABEL_204;
    }
  }

  tiledFusionStage = self->_tiledFusionStage;
  referenceLumaTex = self->_referenceLumaTex;
  longChromaTex = self->_longChromaTex;
  longLumaTex = self->_longLumaTex;
  referenceChromaTex = self->_referenceChromaTex;
  v352 = self->_longFusionMapTex;
  referenceFusionMapTex = self->_referenceFusionMapTex;
  v353 = self->_longRealLongFusionMapTex;
  v355 = v877;
  v354 = v878;
  v356 = *(v857 + 48);
  v357 = objc_msgSend_objectAtIndexedSubscript_(v847, v341, 1, v342);
  objc_msgSend_floatValue(v357, v358, v359, v360);
  LODWORD(v362) = v361;
  *&v363 = *p_EVM_EV0_motionScore;
  LODWORD(v364) = v869[0];
  BYTE2(v835) = v850;
  BYTE1(v835) = LOBYTE(self->_ev0Metadata.faces[1].rect.origin.y);
  LOBYTE(v835) = v841;
  *&v365 = gain;
  *&v366 = v274;
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_runWithReferenceLuma_referenceChroma_longLuma_longChroma_preFusionMap_slFusionMap_slQuantBounds_longFusionMap_skinMask_skyMask_lscGains_totalGain_outLuma_outChroma_deferredProcessingPlist_lscGainGreenMax_EVM_EV0_motionScore_eitRatio_aeShutterTimeRatio_hasSIFR_isStationary_isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams_(tiledFusionStage, v367, referenceLumaTex, referenceChromaTex, longLumaTex, longChromaTex, referenceFusionMapTex, v352, v365, v362, v363, v364, v366, v855->faces[0].rect.origin.x, v855->faces[0].rect.size.width, *&v855->faces[0].confidence, v874, v353, v851, v854, v848, v354, v355, v356, v835, v869, v853, self->_sidecar, &self->_intermediateEncodingParameters);

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    FigDebugAssert3();
    goto LABEL_95;
  }

  v368 = self->_referenceLumaTex;
  self->_referenceLumaTex = 0;

  v369 = self->_referenceChromaTex;
  self->_referenceChromaTex = 0;

  v370 = self->_longLumaTex;
  self->_longLumaTex = 0;

  v371 = self->_longChromaTex;
  self->_longChromaTex = 0;

  if (!self->_referenceBuffer)
  {
    goto LABEL_204;
  }

  v375 = objc_msgSend_device(self->_metal, v372, v373, v374);
  IOSurface = CVPixelBufferGetIOSurface(self->_referenceBuffer);
  v379 = objc_msgSend_newBufferWithIOSurface_(v375, v377, IOSurface, v378);

  if (!v379)
  {
    goto LABEL_197;
  }

  v383 = objc_msgSend_allocator(self->_metal, v380, v381, v382);
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v383, v384, v379, 1);

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    FigSignalErrorAtGM();
LABEL_203:

    goto LABEL_95;
  }

  if (!self->_longBuffer)
  {
LABEL_201:
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    goto LABEL_203;
  }

  v388 = objc_msgSend_device(self->_metal, v385, v386, v387);
  v389 = CVPixelBufferGetIOSurface(self->_longBuffer);
  v392 = objc_msgSend_newBufferWithIOSurface_(v388, v390, v389, v391);

  if (!v392)
  {
LABEL_197:
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    v379 = 0;
    goto LABEL_203;
  }

  v396 = objc_msgSend_allocator(self->_metal, v393, v394, v395);
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_addExternalMetalBuffer_atSubAllocatorID_(v396, v397, v392, 2);

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    FigSignalErrorAtGM();
    v379 = v392;
    goto LABEL_203;
  }

  if (objc_msgSend_linearOutputPixelBuffer(self->_output, v398, v399, v400))
  {
    v401 = objc_msgSend_linearOutputMetadata(self->_output, v42, v43, v44);

    if (!v401)
    {
      goto LABEL_204;
    }

    v405 = objc_msgSend_linearOutputMetadata(self->_output, v402, v403, v404);
    objc_msgSend_setObject_forKeyedSubscript_(v405, v406, *MEMORY[0x29EDB9670], *MEMORY[0x29EDB9658]);

    v410 = objc_msgSend_linearOutputMetadata(self->_output, v407, v408, v409);
    objc_msgSend_setObject_forKeyedSubscript_(v410, v411, *MEMORY[0x29EDB9628], *MEMORY[0x29EDB9608]);

    v412 = sub_295820670(&v855->exposureParams, &self->_ev0Metadata.exposureParams, 2);
    ltm_soft_gain = v855->exposureParams.ltm_soft_gain;
    isp_digital_gain = v855->exposureParams.isp_digital_gain;
    if ((*(*(v857 + 8) + 79) & 1) == 0)
    {
      v415 = sub_2958378A4(&v855->ltmCurves.ltmLut.version);
      v419 = objc_msgSend_linearOutputMetadata(self->_output, v416, v417, v418);
      objc_msgSend_setObject_forKeyedSubscript_(v419, v420, v415, *MEMORY[0x29EDC0590]);
    }

    v421 = sub_29583794C(&self->_ev0Metadata.ltmCurves.globalLtmLut.lutEntryCount);
    v425 = objc_msgSend_linearOutputMetadata(self->_output, v422, v423, v424);
    objc_msgSend_setObject_forKeyedSubscript_(v425, v426, v421, *MEMORY[0x29EDC0528]);

    v427 = sub_29583794C(&self->_ev0Metadata.ltmCurves.gtcLut.lutEntryCount);
    v431 = objc_msgSend_linearOutputMetadata(self->_output, v428, v429, v430);
    objc_msgSend_setObject_forKeyedSubscript_(v431, v432, v427, *MEMORY[0x29EDC0538]);

    *&v433 = ltm_soft_gain;
    v437 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v434, v435, v436, v433);
    v441 = objc_msgSend_linearOutputMetadata(self->_output, v438, v439, v440);
    objc_msgSend_setObject_forKeyedSubscript_(v441, v442, v437, *MEMORY[0x29EDC0170]);

    *&v443 = v412;
    v447 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v444, v445, v446, v443);
    v451 = objc_msgSend_linearOutputMetadata(self->_output, v448, v449, v450);
    objc_msgSend_setObject_forKeyedSubscript_(v451, v452, v447, *MEMORY[0x29EDC0168]);

    *&v453 = isp_digital_gain;
    v457 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v454, v455, v456, v453);
    v461 = objc_msgSend_linearOutputMetadata(self->_output, v458, v459, v460);
    objc_msgSend_setObject_forKeyedSubscript_(v461, v462, v457, *MEMORY[0x29EDC0148]);

    colorConvertStage = self->_colorConvertStage;
    v465 = v877;
    v464 = v878;
    v469 = objc_msgSend_linearOutputPixelBuffer(self->_output, v466, v467, v468);
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_extractLinearBufferWithLumaInput_chromaInput_inputIsLinear_removeChromaBias_lumaPedestal_exposureParams_ccm_output_(colorConvertStage, v470, v464, v465, 0, 0, &v855->exposureParams, v469, 0.0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32));
    if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
    {
      goto LABEL_95;
    }
  }

  v471 = objc_msgSend_desc(v858, v42, v43, v44);
  objc_msgSend_setUsage_(v471, v472, 7, v473);

  v477 = objc_msgSend_desc(v858, v474, v475, v476);
  objc_msgSend_setPixelFormat_(v477, v478, 25, v479);

  v480 = self->_width;
  v484 = objc_msgSend_desc(v858, v481, v482, v483);
  objc_msgSend_setWidth_(v484, v485, v480, v486);

  v487 = self->_height;
  v491 = objc_msgSend_desc(v858, v488, v489, v490);
  objc_msgSend_setHeight_(v491, v492, v487, v493);

  objc_msgSend_setLabel_(v858, v494, 0, v495);
  v499 = objc_msgSend_allocator(self->_metal, v496, v497, v498);
  v502 = objc_msgSend_newTextureWithDescriptor_(v499, v500, v858, v501);
  v503 = v880;
  v880 = v502;

  if (!v880)
  {
    goto LABEL_204;
  }

  v507 = objc_msgSend_allocator(self->_metal, v504, v505, v506);
  v379 = objc_msgSend_newTextureDescriptor_(v507, v508, 1, v509);

  if (!v379)
  {
    goto LABEL_201;
  }

  v513 = objc_msgSend_desc(v379, v510, v511, v512);
  objc_msgSend_setUsage_(v513, v514, 7, v515);

  v519 = objc_msgSend_desc(v379, v516, v517, v518);
  objc_msgSend_setPixelFormat_(v519, v520, 65, v521);

  v522 = self->_width;
  v526 = objc_msgSend_desc(v379, v523, v524, v525);
  objc_msgSend_setWidth_(v526, v527, v522 >> 1, v528);

  v529 = self->_height;
  v533 = objc_msgSend_desc(v379, v530, v531, v532);
  objc_msgSend_setHeight_(v533, v534, v529 >> 1, v535);

  objc_msgSend_setLabel_(v379, v536, 0, v537);
  v541 = objc_msgSend_allocator(self->_metal, v538, v539, v540);
  v543 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v541, v542, v379, 1);
  v544 = v879;
  v879 = v543;

  if (!v879)
  {
    goto LABEL_201;
  }

  objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurves, v545, &v855->ltmCurves, &self->_ev0Metadata.ltmCurves, 0, v855->faces[0].rect.origin.x, v855->faces[0].rect.size.width, *&v855->faces[0].confidence);
  v546 = objc_alloc_init(ToneMappingBuffers);
  objc_storeStrong(&v546->inLumaTex, v878);
  objc_storeStrong(&v546->inChromaTex, v877);
  localGainMapTex = v546->localGainMapTex;
  v546->localGainMapTex = 0;

  objc_storeStrong(&v546->outLumaTex, v880);
  objc_storeStrong(&v546->outChromaTex, v879);
  objc_storeStrong(&v546->curves, self->_toneMappingCurves);
  objc_storeStrong(&v546->skinMask, v851);
  objc_storeStrong(&v546->personMask, v845);
  objc_storeStrong(&v546->skyMask, v854);
  v551 = objc_msgSend_faceLandmarks(self->_inferenceResults, v548, v549, v550);
  faceLandmarks = v546->faceLandmarks;
  v546->faceLandmarks = v551;

  v556 = objc_msgSend_skinToneClassificationsForFaces(self->_inferenceResults, v553, v554, v555);
  skinToneClassification = v546->skinToneClassification;
  v546->skinToneClassification = v556;

  v561 = objc_msgSend_lowResPersonInstanceConfidences(self->_inferenceResults, v558, v559, v560);
  maskConfidences = v546->maskConfidences;
  v546->maskConfidences = v561;

  for (k = 0; k != 4; ++k)
  {
    objc_storeStrong(&v546->instanceMasks[k], *(v875 + k * 8));
  }

  BYTE4(v829) = 0;
  LODWORD(v829) = 4;
  LODWORD(v565) = 1.0;
  v566 = v857;
  if (objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v564, v546, 0, *(v857 + 8), v855, p_ev0Metadata, 0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v565, v855->faces[0].rect.origin.x, v855->faces[0].rect.size.width, *&v855->faces[0].confidence, v829))
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();

    goto LABEL_203;
  }

  v570 = *(v857 + 16);
  if (v570)
  {
    semanticStyleProperties = self->_semanticStyleProperties;
    if (semanticStyleProperties)
    {
      semanticStylesStage = self->_semanticStylesStage;
      v573 = objc_msgSend_smartCameraSceneType(self->_inferenceResults, v567, v568, v569);
      LOBYTE(v833) = 0;
      isLowLight = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(semanticStylesStage, v574, semanticStyleProperties, v570, v855, v573, v880, v879, 0, 0, v845, v851, v854, v833);

      v566 = v857;
      if (isLowLight)
      {
        goto LABEL_204;
      }
    }
  }

  v576 = *(v566 + 8);
  if (v576 && *(v576 + 120) == 1)
  {
    if (self->_applyColorCubeFixOverride)
    {
      v577 = 2;
    }

    else
    {
      v577 = 0xFFFFFFFFLL;
    }
  }

  else if (self->_applyColorCubeFixOverride == 1)
  {
    v577 = 2;
    if (!v576)
    {
LABEL_117:
      if (self->_applyColorCube2FixOverride == 1)
      {
        goto LABEL_116;
      }

      goto LABEL_118;
    }
  }

  else
  {
    v577 = 0xFFFFFFFFLL;
    if (!v576)
    {
      goto LABEL_117;
    }
  }

  if ((*(v576 + 121) & 1) == 0)
  {
    goto LABEL_117;
  }

  if (self->_applyColorCube2FixOverride)
  {
LABEL_116:
    v577 = 3;
    v842 = 1;
    goto LABEL_119;
  }

LABEL_118:
  v842 = 0;
LABEL_119:
  v578 = self->_metal;
  v579 = objc_msgSend_buffer(self->_output, v567, v568, v569);
  v243 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v578, v580, v579, 10, 7, 0);
  if (!v243)
  {
LABEL_204:
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    goto LABEL_95;
  }

  v584 = self->_metal;
  v585 = objc_msgSend_buffer(self->_output, v581, v582, v583);
  v242 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v584, v586, v585, 30, 7, 1);
  if (!v242)
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    v242 = 0;
    goto LABEL_165;
  }

  v590 = objc_msgSend_allocator(self->_metal, v587, v588, v589);
  v593 = objc_msgSend_newTextureDescriptor_(v590, v591, 2, v592);

  if (!v593)
  {
    FigDebugAssert3();
    v816 = FigSignalErrorAtGM();
    goto LABEL_163;
  }

  v597 = objc_msgSend_desc(v593, v594, v595, v596);
  objc_msgSend_setUsage_(v597, v598, 7, v599);

  v603 = objc_msgSend_desc(v593, v600, v601, v602);
  objc_msgSend_setPixelFormat_(v603, v604, 10, v605);

  v606 = self->_width;
  v610 = objc_msgSend_desc(v593, v607, v608, v609);
  objc_msgSend_setWidth_(v610, v611, v606 >> 1, v612);

  v613 = self->_height;
  v617 = objc_msgSend_desc(v593, v614, v615, v616);
  objc_msgSend_setHeight_(v617, v618, v613 >> 1, v619);

  objc_msgSend_setLabel_(v593, v620, 0, v621);
  v844 = v242;
  v856 = v243;
  v625 = objc_msgSend_allocator(self->_metal, v622, v623, v624);
  *&v864 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v625, v626, v593, 2);

  if (!v864)
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    v627 = 0;
    v628 = 0;
LABEL_212:
    v242 = v844;
    goto LABEL_213;
  }

  v627 = objc_opt_new();
  v628 = objc_opt_new();
  isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_allocatePyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal_(PyramidStorage_NRF, v629, LOWORD(self->_width), LOWORD(self->_height), 0, 4, 7, 0, @"sharpeningInPyramid", 25, 65, v627, self->_metal);
  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams || (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_allocatePyramidWithWidth_height_allocLevel0_levels_texUsage_mtlSubAllocatorID_label_lumaFormat_chromaFormat_outPyramid_metal_(PyramidStorage_NRF, v630, LOWORD(self->_width), LOWORD(self->_height), 0, 4, 7, 2, @"sharpeningLowVarPyramid", 25, 65, v628, self->_metal)) != 0 || (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v627, v631, v880, v879, 0, self->_metal)) != 0 || (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v628, v632, v878, v877, 0, self->_metal)) != 0)
  {
    FigDebugAssert3();
LABEL_213:

    v243 = v856;
    goto LABEL_165;
  }

  BYTE4(v832) = v850;
  LODWORD(v832) = v853;
  *&v634 = gain;
  if (objc_msgSend_computeAMBNRDenoiseBoostMap_longFusionMap_ev0FusionMap_ev0Metadata_longMetadata_numEV0_deferredProcessingPlist_espressoModel_isSyntheticLongWithRealLong_totalGain_(self->_tiledFusionStage, v633, v864, self->_longRealLongFusionMapTex, self->_longFusionMapTex, p_ev0Metadata, &self->_longMetadata, v846, v634, *(v857 + 48), v832))
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    goto LABEL_213;
  }

  objc_storeStrong(v849 + 2, v856);
  if (v577 == -1)
  {
    v635 = v242;
  }

  else
  {
    v635 = 0;
  }

  objc_storeStrong(v849 + 3, v635);
  if (objc_msgSend_setResourcesWithOutput_inputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(self->_ambnrStage, v636, v849, v627, 0, v628, v864) || objc_msgSend_pyramidDownscale_(self->_syntheticLongStage, v637, v627, v638) || (v642 = *(v857 + 40), v643 = *(v857 + 32), ambnrStage = self->_ambnrStage, v645 = *(v857 + 56), LOWORD(v834) = objc_msgSend_defringingEnabled(v645, v639, v640, v641), LOBYTE(v830) = 0, objc_msgSend_runWithExposure_staticScene_dasPlist_nmPlist_defringingTuning_greenGhostBrightLightTuning_greenGhostEnabled_skinMask_skyMask_maskExtent_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_defringeEnabled_isLowLight_gainMap_(ambnrStage, v646, &self->_ev0Metadata.exposureParams, 0, v642, v643, v645, 0, self->_ev0Metadata.ROI.origin.x, self->_ev0Metadata.ROI.origin.y, self->_ev0Metadata.ROI.size.width, self->_ev0Metadata.ROI.size.height, v830, v851, v854, 0, 0, 0, v834, 0)))
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
    goto LABEL_212;
  }

  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v647, v628, self->_metal);
  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v648, v627, self->_metal);
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  if (v876)
  {
    FigMetalDecRef();
  }

  objc_msgSend_allocator(self->_metal, v649, v650, v651);
  v243 = v856;
  v652 = v242 = v844;
  v655 = objc_msgSend_usedSize_(v652, v653, 0, v654);

  if (v655)
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = -1;
    goto LABEL_165;
  }

  v659 = objc_msgSend_allocator(self->_metal, v656, v657, v658);
  objc_msgSend_purgeResources_(v659, v660, 0, v661);

  if (v577 != -1)
  {
    ColorCubeCorrectionStage = self->_ColorCubeCorrectionStage;
    v666 = v849[3];
    if (v842)
    {
      fixed = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(ColorCubeCorrectionStage, v662, v856, v666, v854, v844, v577);
    }

    else
    {
      fixed = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(ColorCubeCorrectionStage, v662, v856, v666, 0, v844, v577);
    }

    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = fixed;
    if (fixed)
    {
      goto LABEL_165;
    }

    FigMetalDecRef();
  }

  if (*(*(v857 + 40) + 41) != 1)
  {
    goto LABEL_148;
  }

  v668 = objc_msgSend_desc(v858, v662, v663, v664);
  objc_msgSend_setUsage_(v668, v669, 7, v670);

  v674 = objc_msgSend_desc(v858, v671, v672, v673);
  objc_msgSend_setPixelFormat_(v674, v675, 10, v676);

  v677 = self->_width;
  v681 = objc_msgSend_desc(v858, v678, v679, v680);
  objc_msgSend_setWidth_(v681, v682, v677, v683);

  v684 = self->_height;
  v688 = objc_msgSend_desc(v858, v685, v686, v687);
  objc_msgSend_setHeight_(v688, v689, v684, v690);

  objc_msgSend_setLabel_(v858, v691, 0, v692);
  v696 = objc_msgSend_allocator(self->_metal, v693, v694, v695);
  v868 = objc_msgSend_newTextureWithDescriptor_(v696, v697, v858, v698);

  if (v868 && (LODWORD(v700) = *(*(v857 + 40) + 44), objc_msgSend_runWithInput_output_gamma_(self->_outliersRemovalStage, v699, v856, v868, v700), objc_msgSend_commandQueue(self->_metal, v701, v702, v703), v704 = objc_claimAutoreleasedReturnValue(), objc_msgSend_commandBuffer(v704, v705, v706, v707), v708 = objc_claimAutoreleasedReturnValue(), v704, v708))
  {
    v712 = objc_msgSend_computeCommandEncoder(v708, v709, v710, v711);
    objc_msgSend_setComputePipelineState_(v712, v713, self->_copyTextureKernel, v714);
    objc_msgSend_setTexture_atIndex_(v712, v715, v868, 0);
    objc_msgSend_setTexture_atIndex_(v712, v716, v856, 1);
    v720 = objc_msgSend_width(v856, v717, v718, v719);
    v724 = objc_msgSend_height(v856, v721, v722, v723);
    *&v864 = v720;
    *(&v864 + 1) = v724;
    *&v865 = 1;
    *obj = vdupq_n_s64(0x20uLL);
    *&obj[16] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v712, v725, &v864, obj);
    objc_msgSend_endEncoding(v712, v726, v727, v728);
    objc_msgSend_commit(v708, v729, v730, v731);
    if (v868)
    {
      FigMetalDecRef();

LABEL_148:
      objc_msgSend_waitForSchedule(self->_metal, v662, v663, v664);
      nrfStatus = self->_nrfStatus;
      if (nrfStatus)
      {
        v736 = objc_msgSend_metadata(self->_output, v732, v733, v734);
        objc_msgSend_setObject_forKeyedSubscript_(v736, v737, nrfStatus, *MEMORY[0x29EDC01A8]);
      }

      nrfInputBracketCount = self->_nrfInputBracketCount;
      if (nrfInputBracketCount)
      {
        v739 = objc_msgSend_metadata(self->_output, v732, v733, v734);
        objc_msgSend_setObject_forKeyedSubscript_(v739, v740, nrfInputBracketCount, *MEMORY[0x29EDC0190]);
      }

      nrfRegisteredBracketCount = self->_nrfRegisteredBracketCount;
      if (nrfRegisteredBracketCount)
      {
        v742 = objc_msgSend_metadata(self->_output, v732, v733, v734);
        objc_msgSend_setObject_forKeyedSubscript_(v742, v743, nrfRegisteredBracketCount, *MEMORY[0x29EDC0198]);
      }

      SRLStatus = objc_msgSend_getSRLStatus(self->_toneMappingStage, v732, v733, v734);
      v747 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v745, SRLStatus, v746);
      v751 = objc_msgSend_metadata(self->_output, v748, v749, v750);
      objc_msgSend_setObject_forKeyedSubscript_(v751, v752, v747, *MEMORY[0x29EDC01A0]);

      output = self->_output;
      if (*(*(v857 + 8) + 79) == 1)
      {
        if (objc_msgSend_linearOutputPixelBuffer(output, v753, v754, v755))
        {
          v760 = objc_msgSend_getSTFLTM_asNSData(self->_toneMappingStage, v757, v758, v759);
          v764 = objc_msgSend_linearOutputMetadata(self->_output, v761, v762, v763);
          objc_msgSend_setObject_forKeyedSubscript_(v764, v765, v760, *MEMORY[0x29EDC0590]);
        }

        v766 = objc_msgSend_metadata(self->_output, v757, v758, v759);
        objc_msgSend_setObject_forKeyedSubscript_(v766, v767, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC0230]);

        v768 = MEMORY[0x29EDBA070];
        v772 = objc_msgSend_stfStillApplied(self->_toneMappingStage, v769, v770, v771);
        v775 = objc_msgSend_numberWithBool_(v768, v773, v772, v774);
        v779 = objc_msgSend_metadata(self->_output, v776, v777, v778);
        objc_msgSend_setObject_forKeyedSubscript_(v779, v780, v775, *MEMORY[0x29EDC0220]);

        if (!objc_msgSend_stfStillApplied(self->_toneMappingStage, v781, v782, v783))
        {
          goto LABEL_161;
        }

        v787 = MEMORY[0x29EDBA070];
        STFStillCorrectionStrength = objc_msgSend_getSTFStillCorrectionStrength_(self->_toneMappingStage, v784, 1, v786);
        v791 = objc_msgSend_numberWithInt_(v787, v789, STFStillCorrectionStrength, v790);
        v795 = objc_msgSend_metadata(self->_output, v792, v793, v794);
        objc_msgSend_setObject_forKeyedSubscript_(v795, v796, v791, *MEMORY[0x29EDC0228]);

        v797 = MEMORY[0x29EDBA070];
        v801 = objc_msgSend_stfStillAnalyticsVersion(self->_toneMappingStage, v798, v799, v800);
        v804 = objc_msgSend_numberWithUnsignedInt_(v797, v802, v801, v803);
        v808 = objc_msgSend_metadata(self->_output, v805, v806, v807);
        objc_msgSend_setObject_forKeyedSubscript_(v808, v809, v804, *MEMORY[0x29EDC0218]);
      }

      else
      {
        v804 = objc_msgSend_metadata(output, v753, v754, v755);
        objc_msgSend_setObject_forKeyedSubscript_(v804, v810, MEMORY[0x29EDB8EA8], *MEMORY[0x29EDC0230]);
      }

LABEL_161:
      v811 = objc_msgSend_allocator(self->_metal, v784, v785, v786);
      v815 = objc_msgSend_usedSizeAll(v811, v812, v813, v814);

      if (!v815)
      {
        isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = 0;
        goto LABEL_165;
      }

      v816 = FigSignalErrorAtGM();
LABEL_163:
      isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = v816;
      goto LABEL_165;
    }

    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
  }

  else
  {
    FigDebugAssert3();
    isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams = FigSignalErrorAtGM();
  }

LABEL_165:
  if (dword_2A18C2398)
  {
    LODWORD(v868) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v817 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v818 = v868;
    v819 = v817;
    if (os_log_type_enabled(v819, type))
    {
      v823 = v818;
    }

    else
    {
      v823 = v818 & 0xFFFFFFFE;
    }

    if (v823)
    {
      v824 = objc_msgSend_description(self, v820, v821, v822);
      v825 = "failed";
      *obj = 136315907;
      *&obj[4] = "[DeepFusionProcessor process]";
      *&obj[12] = 2113;
      *&obj[14] = v824;
      if (!isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
      {
        v825 = "succeeded";
      }

      *&obj[22] = 2081;
      v861 = v825;
      v862 = 1026;
      v863 = isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams == 0;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams)
  {
    objc_msgSend_waitForIdle(self->_metal, v42, v43, v44);
  }

  for (m = 24; m != -8; m -= 8)
  {
  }

  return isSyntheticLongWithRealLong_colorCorrection_espressoModel_noiseEstimationParams_espressoModelForTuning_sideCar_intermediateEncodingParams;
}

- (int)purgeResources
{
  p_lscGainsPlist = &self->_lscGainsPlist;
  lscGainsPlist = self->_lscGainsPlist;
  self->_lscGainsPlist = 0;

  v4 = p_lscGainsPlist[16];
  p_lscGainsPlist[16] = 0;

  return 0;
}

- (int)resetState
{
  p_nrfSyntheticLongIntermediateMetadataDict = &self->_nrfSyntheticLongIntermediateMetadataDict;
  sensorID = self->_sensorID;
  self->_sensorID = 0;

  v5 = p_nrfSyntheticLongIntermediateMetadataDict[13];
  p_nrfSyntheticLongIntermediateMetadataDict[13] = 0;

  v6 = p_nrfSyntheticLongIntermediateMetadataDict[14];
  p_nrfSyntheticLongIntermediateMetadataDict[14] = 0;

  v7 = p_nrfSyntheticLongIntermediateMetadataDict[16];
  p_nrfSyntheticLongIntermediateMetadataDict[16] = 0;

  v8 = p_nrfSyntheticLongIntermediateMetadataDict[17];
  p_nrfSyntheticLongIntermediateMetadataDict[17] = 0;

  v9 = p_nrfSyntheticLongIntermediateMetadataDict[18];
  p_nrfSyntheticLongIntermediateMetadataDict[18] = 0;

  v10 = p_nrfSyntheticLongIntermediateMetadataDict[19];
  p_nrfSyntheticLongIntermediateMetadataDict[19] = 0;

  v11 = p_nrfSyntheticLongIntermediateMetadataDict[20];
  p_nrfSyntheticLongIntermediateMetadataDict[20] = 0;

  ev0MetadataDict = self->_ev0MetadataDict;
  self->_ev0MetadataDict = 0;

  bzero(&self->_ev0Metadata, 0x36A70uLL);
  sifrMetadataDict = self->_sifrMetadataDict;
  self->_sifrMetadataDict = 0;

  bzero(&self->_sifrMetadata, 0x36A70uLL);
  longMetadataDict = self->_longMetadataDict;
  self->_longMetadataDict = 0;

  bzero(&self->_longMetadata, 0x36A70uLL);
  v15 = *p_nrfSyntheticLongIntermediateMetadataDict;
  *p_nrfSyntheticLongIntermediateMetadataDict = 0;

  v16 = p_nrfSyntheticLongIntermediateMetadataDict[1];
  p_nrfSyntheticLongIntermediateMetadataDict[1] = 0;

  v17 = p_nrfSyntheticLongIntermediateMetadataDict[2];
  p_nrfSyntheticLongIntermediateMetadataDict[2] = 0;

  v18 = p_nrfSyntheticLongIntermediateMetadataDict[3];
  p_nrfSyntheticLongIntermediateMetadataDict[3] = 0;

  v19 = p_nrfSyntheticLongIntermediateMetadataDict[4];
  p_nrfSyntheticLongIntermediateMetadataDict[4] = 0;

  v20 = p_nrfSyntheticLongIntermediateMetadataDict[21];
  p_nrfSyntheticLongIntermediateMetadataDict[21] = 0;

  objc_msgSend_reset(p_nrfSyntheticLongIntermediateMetadataDict[23], v21, v22, v23);
  v24 = p_nrfSyntheticLongIntermediateMetadataDict[5];
  p_nrfSyntheticLongIntermediateMetadataDict[5] = 0;

  v28 = objc_msgSend_allocator(self->_metal, v25, v26, v27);
  objc_msgSend_reset(v28, v29, v30, v31);

  v35 = objc_msgSend_allocator(self->_metal, v32, v33, v34);
  objc_msgSend_purgeResources_(v35, v36, 0, v37);

  v41 = objc_msgSend_allocator(self->_metal, v38, v39, v40);
  objc_msgSend_purgeResources_(v41, v42, 1, v43);

  v47 = objc_msgSend_allocator(self->_metal, v44, v45, v46);
  objc_msgSend_purgeResources_(v47, v48, 2, v49);

  return 0;
}

- (IBPDeepFusionProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)getTuning:(id)tuning
{
  tuningCopy = tuning;
  v5 = objc_opt_new();
  tuningParams = self->_tuningParams;
  selfCopy = self;
  self->_tuningParams = v5;

  v9 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v7, @"DefaultSensorIDs", v8);
  v10 = v9;
  if (!v9)
  {
    sub_2958ACAF4();
LABEL_38:
    v113 = -1;
    goto LABEL_39;
  }

  v115 = v9;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v11 = v9;
  v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v126, v125, 16);
  if (!v119)
  {
    goto LABEL_26;
  }

  v117 = v11;
  v118 = *v127;
  while (2)
  {
    for (i = 0; i != v119; ++i)
    {
      if (*v127 != v118)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v126 + 1) + 8 * i);
      v17 = objc_msgSend_objectForKeyedSubscript_(v11, v13, v16, v14);
      v20 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v18, v16, v19);
      v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, v17, v22);
      v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"DeepFusionParameters", v25);

      if (v26)
      {
        v124 = v17;
        v27 = tuningCopy;
        v28 = objc_opt_new();
        v29 = objc_opt_new();
        v32 = objc_msgSend_objectForKeyedSubscript_(v26, v30, @"ToneMapping", v31);
        v35 = objc_msgSend_objectForKeyedSubscript_(v32, v33, @"DefaultParameters", v34);
        Plist = objc_msgSend_readPlist_(v29, v36, v35, v37);

        if (Plist)
        {
          sub_2958AC8F4(Plist, v29, v28);
          v10 = v115;
          tuningCopy = v27;
LABEL_33:
          v95 = v117;
          v17 = v124;
          goto LABEL_37;
        }

        v123 = v29;
        objc_storeStrong(v28 + 1, v29);
        v41 = objc_msgSend_objectForKeyedSubscript_(v26, v39, @"SemanticStyles", v40);
        v44 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"DefaultParameters", v43);

        if (v44)
        {
          v45 = objc_opt_new();
          v48 = objc_msgSend_objectForKeyedSubscript_(v26, v46, @"SemanticStyles", v47);
          v51 = objc_msgSend_objectForKeyedSubscript_(v48, v49, @"DefaultParameters", v50);
          v54 = objc_msgSend_readPlist_(v45, v52, v51, v53);

          tuningCopy = v27;
          if (v54)
          {
            sub_2958AC98C(v54, v45, v123, v28);
LABEL_32:
            v10 = v115;
            goto LABEL_33;
          }
        }

        else
        {
          v45 = 0;
          tuningCopy = v27;
        }

        v122 = v45;
        objc_storeStrong(v28 + 2, v45);
        v55 = objc_opt_new();
        v58 = objc_msgSend_objectForKeyedSubscript_(v26, v56, @"NoiseModel", v57);
        v61 = objc_msgSend_objectForKeyedSubscript_(v58, v59, @"DefaultParameters", v60);
        v64 = objc_msgSend_readPlist_(v55, v62, v61, v63);

        if (v64)
        {
          FigDebugAssert3();
          FigSignalErrorAtGM();
        }

        else
        {
          objc_storeStrong(v28 + 4, v55);
          v65 = objc_opt_new();
          v68 = objc_msgSend_objectForKeyedSubscript_(v26, v66, @"DenoiseAndSharpening", v67);
          v69 = v65;
          objc_msgSend_objectForKeyedSubscript_(v68, v70, @"DefaultParameters", v71);
          v73 = v72 = v28;
          v76 = objc_msgSend_readPlist_(v69, v74, v73, v75);

          if (!v76)
          {
            v121 = v69;
            objc_storeStrong((v72 + 40), v69);
            v77 = objc_opt_new();
            v80 = objc_msgSend_objectForKeyedSubscript_(v26, v78, @"DeferredProcessing", v79);
            v83 = objc_msgSend_readPlist_(v77, v81, v80, v82);

            v17 = v124;
            if (v83)
            {
              FigDebugAssert3();
              FigSignalErrorAtGM();

              v10 = v115;
              v95 = v117;
            }

            else
            {
              v120 = v55;
              objc_storeStrong((v72 + 48), v77);
              v86 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v84, v16, v85);
              v89 = objc_msgSend_objectForKeyedSubscript_(v86, v87, v124, v88);
              v92 = objc_msgSend_objectForKeyedSubscript_(v89, v90, @"ChromaticDefringing", v91);

              v95 = v117;
              if (!v92)
              {
LABEL_20:
                v104 = tuningCopy;
                v105 = selfCopy->_tuningParams;
                v130[0] = 0;
                v106 = objc_msgSend_scannerWithString_(MEMORY[0x29EDBA0E0], v93, v124, v94);
                v109 = objc_msgSend_scanHexInt_(v106, v107, v130, v108);

                if (v109)
                {
                  v112 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v110, v130[0], v111);
                }

                else
                {
                  v112 = 0;
                }

                objc_msgSend_setObject_forKeyedSubscript_(v105, v110, v72, v112);

                tuningCopy = v104;
                v11 = v117;
                goto LABEL_24;
              }

              v96 = [VideoDefringingTuningParameters alloc];
              v99 = objc_msgSend_initWithTuningParameters_(v96, v97, v92, v98);
              v102 = v99;
              if (v99)
              {
                if (!objc_msgSend_selectParametersForTuningMode_(v99, v100, 0, v101))
                {
                  v103 = *(v72 + 56);
                  *(v72 + 56) = v102;

                  goto LABEL_20;
                }

                sub_2958ACA34();
              }

              else
              {
                sub_2958ACA94();
              }

              v10 = v115;
            }

LABEL_37:

            goto LABEL_38;
          }

          FigDebugAssert3();
          FigSignalErrorAtGM();
        }

        goto LABEL_32;
      }

LABEL_24:
    }

    v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v126, v125, 16);
    if (v119)
    {
      continue;
    }

    break;
  }

LABEL_26:

  v113 = 0;
  v10 = v115;
LABEL_39:

  return v113;
}

- (DeepFusionProcessor)init
{
  v15.receiver = self;
  v15.super_class = DeepFusionProcessor;
  v2 = [(DeepFusionProcessor *)&v15 init];
  if (v2)
  {
    v3 = MEMORY[0x29EDB9F48];
    v4 = objc_opt_class();
    v7 = objc_msgSend_bundleForClass_(v3, v5, v4, v6);
    v8 = objc_alloc(MEMORY[0x29EDC0A40]);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v8, v9, v7, 0);
    v2->_isShaderHarvesting = 1;
    if (objc_msgSend__commonInitWithContext_(v2, v11, inited, v12))
    {
      sub_295808C24();
      FigDebugAssert3();
      v13 = 0;
    }

    else
    {
      v13 = v2;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end