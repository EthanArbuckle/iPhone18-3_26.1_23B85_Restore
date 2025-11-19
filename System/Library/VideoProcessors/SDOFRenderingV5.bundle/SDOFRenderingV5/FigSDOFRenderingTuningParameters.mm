@interface FigSDOFRenderingTuningParameters
- (FigSDOFRenderingTuningParameters)init;
- (FigSDOFRenderingTuningParameters)initWithTuningDictionary:(id)a3;
- (float)maximumSimulatedAperture;
- (float)minimumSimulatedAperture;
- (float)simulatedAperture;
- (id)parameterSetForMode:(int)a3;
- (int)calculateDynamicTuningParamsForSampleBuffer:(opaqueCMSampleBuffer *)a3 dynamicParams:(const dynamic_tuning_parameters *)a4 outSegmentationFusionConfig:(segmentation_fusion_params *)a5 outSimpleLensModelConfig:(simple_lens_model_params *)a6 outBlurmapRefinementConfig:(blurmap_refinement_params *)a7;
- (int)calculateXHLRBParamsForSampleBuffer:(opaqueCMSampleBuffer *)a3 tuningParams:(id)a4 outParams:(xhlrb_control_params *)a5;
- (int)gainMapHeadroomForSampleBuffer:(opaqueCMSampleBuffer *)a3 headroom:(float *)a4;
@end

@implementation FigSDOFRenderingTuningParameters

- (id)parameterSetForMode:(int)a3
{
  if (!a3)
  {
    v4 = 8;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (int)calculateDynamicTuningParamsForSampleBuffer:(opaqueCMSampleBuffer *)a3 dynamicParams:(const dynamic_tuning_parameters *)a4 outSegmentationFusionConfig:(segmentation_fusion_params *)a5 outSimpleLensModelConfig:(simple_lens_model_params *)a6 outBlurmapRefinementConfig:(blurmap_refinement_params *)a7
{
  v11 = CMGetAttachment(a3, *MEMORY[0x29EDBFF98], 0);
  v14 = v11;
  if (!v11)
  {
    sub_295EB4B00();
LABEL_12:
    v42 = -12780;
    goto LABEL_8;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x29EDC0868], v13);
  v19 = v15;
  if (v15)
  {
    objc_msgSend_floatValue(v15, v16, v17, v18);
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = objc_msgSend_objectForKeyedSubscript_(v14, v16, *MEMORY[0x29EDC0558], v18);
  if (!v22)
  {
    sub_295EB4A70(v19);
    goto LABEL_12;
  }

  v25 = v22;
  v26 = objc_msgSend_objectForKeyedSubscript_(v14, v23, *MEMORY[0x29EDC04D0], v24);
  if (!v26)
  {
    sub_295EB49D8(v19, v25);
    goto LABEL_12;
  }

  v30 = v26;
  objc_msgSend_floatValue(v25, v27, v28, v29);
  v32 = v31;
  objc_msgSend_floatValue(v30, v33, v34, v35);
  v44[0] = v32 * v36;
  v44[1] = v21;
  v37 = sub_295EB13B4(&a4->segmentationFusionAdditiveMaxBlur.brightLightExposureLevel, v44);
  v38 = sub_295EB13B4(&a4->segmentationFusionSubtractiveMaxBlur.brightLightExposureLevel, v44);
  v39 = sub_295EB13B4(&a4->disparityScalingFactor.brightLightExposureLevel, v44);
  v40 = sub_295EB13B4(&a4->hairAdditiveMaxBlur.brightLightExposureLevel, v44);
  v41 = sub_295EB13B4(&a4->hairSubtractiveMaxBlur.brightLightExposureLevel, v44);
  a5->additiveMaxBlur = v37;
  a5->subtractiveMaxBlur = v38;
  a6->disparityScalingFactor = v39;
  a7->hairParams.fusion.additiveMaxBlur = v40;
  a7->hairParams.fusion.subtractiveMaxBlur = v41;

  v42 = 0;
LABEL_8:

  return v42;
}

- (int)gainMapHeadroomForSampleBuffer:(opaqueCMSampleBuffer *)a3 headroom:(float *)a4
{
  if (!a3)
  {
    sub_295EB4EC0();
    return -12780;
  }

  if (!a4)
  {
    sub_295EB4E48();
    return -12780;
  }

  v5 = CMGetAttachment(a3, @"AttachedMedia", 0);
  if (!v5)
  {
    sub_295EB4DD0();
    return -12783;
  }

  Value = CFDictionaryGetValue(v5, @"GainMap");
  if (!Value)
  {
    sub_295EB4D58();
    return -12783;
  }

  v7 = CMGetAttachment(Value, *MEMORY[0x29EDBFF98], 0);
  if (!v7)
  {
    sub_295EB4CE0();
    return -12784;
  }

  v8 = v7;
  v9 = CFDictionaryGetValue(v7, @"GainMapVersion");
  v10 = CFDictionaryGetValue(v8, @"GainMapHeadroom");
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v9))
  {
    v12 = CFNumberGetTypeID();
    if (v12 == CFGetTypeID(v10))
    {
      if (FigCFNumberGetSInt32() >= 0x20000)
      {
        FigCFNumberGetFloat32();
        result = 0;
        *a4 = v14;
        return result;
      }

      sub_295EB4C68();
    }

    else
    {
      sub_295EB4BF0();
    }
  }

  else
  {
    sub_295EB4B78();
  }

  return -12780;
}

- (float)simulatedAperture
{
  standardParameters = self->_standardParameters;
  if (standardParameters)
  {
    objc_msgSend_simpleLensModelConfig(standardParameters, a2, v2, v3, 0, 0, 0);
  }

  return 0.0;
}

- (float)minimumSimulatedAperture
{
  standardParameters = self->_standardParameters;
  if (!standardParameters)
  {
    return 0.0;
  }

  objc_msgSend_simpleLensModelConfig(standardParameters, a2, v2, v3, 0, 0, 0, 0, 0, 0, 0);
  return v6;
}

- (float)maximumSimulatedAperture
{
  standardParameters = self->_standardParameters;
  if (standardParameters)
  {
    objc_msgSend_simpleLensModelConfig(standardParameters, a2, v2, v3, 0, 0, 0, 0);
  }

  return 0.0;
}

- (FigSDOFRenderingTuningParameters)init
{
  v7.receiver = self;
  v7.super_class = FigSDOFRenderingTuningParameters;
  v2 = [(FigSDOFRenderingTuningParameters *)&v7 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = objc_alloc_init(FigSDOFRenderingTuningParametersSet);
  standardParameters = v2->_standardParameters;
  v2->_standardParameters = v3;

  if (!v2->_standardParameters)
  {
    fig_log_get_emitter();
    sub_295EADC88();
    FigDebugAssert3();
LABEL_6:
    v5 = 0;
    goto LABEL_4;
  }

  v5 = v2;
LABEL_4:

  return v5;
}

- (FigSDOFRenderingTuningParameters)initWithTuningDictionary:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_init(self, v5, v6, v7);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [FigSDOFRenderingTuningParametersSet alloc];
  v11 = objc_msgSend_initWithTuningDictionary_suffix_(v9, v10, v4, 0);
  v12 = v8[1];
  v8[1] = v11;

  if (!v8[1])
  {
    fig_log_get_emitter();
    sub_295EADC88();
    FigDebugAssert3();
LABEL_6:
    v17 = 0;
    goto LABEL_4;
  }

  v13 = [FigSDOFRenderingTuningParametersSet alloc];
  v15 = objc_msgSend_initWithTuningDictionary_suffix_(v13, v14, v4, @"NMP");
  v16 = v8[2];
  v8[2] = v15;

  v17 = v8;
LABEL_4:

  return v17;
}

- (int)calculateXHLRBParamsForSampleBuffer:(opaqueCMSampleBuffer *)a3 tuningParams:(id)a4 outParams:(xhlrb_control_params *)a5
{
  v13 = a4;
  v17 = v13;
  rect = *MEMORY[0x29EDB90E0];
  rect_16 = *(MEMORY[0x29EDB90E0] + 16);
  v28 = v13;
  if (v13)
  {
    objc_msgSend_simpleLensModelConfig(v13, v14, v15, v16);
    objc_msgSend_xhlrbControlConfig(v17, v18, v19, v20);
    *&a5->var0 = 0;
    *&a5->var2 = 0;
    sub_295EADC50();
    sub_295EADCE4();
  }

  else
  {
    sub_295EADC98();
    a3 = 0;
    v8 = 0;
    sub_295EADCE4();
    *&a5->var0 = 0;
    *&a5->var2 = 0;
  }

  return 0;
}

@end