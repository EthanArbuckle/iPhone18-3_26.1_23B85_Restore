@interface ToneMappingShaders
- (ToneMappingShaders)initWithMetal:(id)a3;
@end

@implementation ToneMappingShaders

- (ToneMappingShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = ToneMappingShaders;
  v5 = [(ToneMappingShaders *)&v69 init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v7 = objc_opt_new();
  if (!v7)
  {
    sub_2958BF414();
LABEL_45:

    v66 = 0;
    goto LABEL_24;
  }

  v8 = objc_msgSend_computePipelineStateFor_constants_(v4, v6, @"blackSubtractAndAddingContrast", 0);
  blackSubtractAndAddingContrast = v5->_blackSubtractAndAddingContrast;
  v5->_blackSubtractAndAddingContrast = v8;

  if (!v5->_blackSubtractAndAddingContrast)
  {
    sub_2958BF388();
    goto LABEL_45;
  }

  v11 = objc_msgSend_computePipelineStateFor_constants_(v4, v10, @"calculateBlackWhiteStrengthCenter", 0);
  calculateBlackWhiteStrengthCenter = v5->_calculateBlackWhiteStrengthCenter;
  v5->_calculateBlackWhiteStrengthCenter = v11;

  if (!v5->_calculateBlackWhiteStrengthCenter)
  {
    sub_2958BF2FC();
    goto LABEL_45;
  }

  v68 = 0;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v13, &v68, 53, 1);
  v15 = objc_msgSend_computePipelineStateFor_constants_(v4, v14, @"LTM", v7);
  ltmApply = v5->_ltmApply;
  v5->_ltmApply = v15;

  if (!v5->_ltmApply)
  {
    sub_2958BF270();
    goto LABEL_45;
  }

  v68 = 1;
  objc_msgSend_setConstantValue_type_atIndex_(v7, v17, &v68, 53, 1);
  v19 = objc_msgSend_computePipelineStateFor_constants_(v4, v18, @"LTM", v7);
  ltmApplyBG = v5->_ltmApplyBG;
  v5->_ltmApplyBG = v19;

  if (!v5->_ltmApplyBG)
  {
    sub_2958BF1E4();
    goto LABEL_45;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(v4, v21, @"srlGlobalSparseHistogram", 0);
  srlGlobalHistogram = v5->_srlGlobalHistogram;
  v5->_srlGlobalHistogram = v22;

  if (!v5->_srlGlobalHistogram)
  {
    sub_2958BF158();
    goto LABEL_45;
  }

  v25 = objc_msgSend_computePipelineStateFor_constants_(v4, v24, @"srlFaceSparseHistogram", 0);
  srlFaceHistogram = v5->_srlFaceHistogram;
  v5->_srlFaceHistogram = v25;

  if (!v5->_srlFaceHistogram)
  {
    sub_2958BF0CC();
    goto LABEL_45;
  }

  v28 = objc_msgSend_computePipelineStateFor_constants_(v4, v27, @"srlCalcCoefficients", 0);
  srlCalcCoefficients = v5->_srlCalcCoefficients;
  v5->_srlCalcCoefficients = v28;

  if (!v5->_srlCalcCoefficients)
  {
    sub_2958BF040();
    goto LABEL_45;
  }

  v31 = objc_msgSend_computePipelineStateFor_constants_(v4, v30, @"srlApply", 0);
  srlApply = v5->_srlApply;
  v5->_srlApply = v31;

  if (!v5->_srlApply)
  {
    sub_2958BEFB4();
    goto LABEL_45;
  }

  v34 = objc_msgSend_computePipelineStateFor_constants_(v4, v33, @"sffTestFace", 0);
  sffTestFace = v5->_sffTestFace;
  v5->_sffTestFace = v34;

  if (!v5->_sffTestFace)
  {
    sub_2958BEF28();
    goto LABEL_45;
  }

  v37 = objc_msgSend_computePipelineStateFor_constants_(v4, v36, @"sffFillFace", 0);
  sffFillFace = v5->_sffFillFace;
  v5->_sffFillFace = v37;

  if (!v5->_sffFillFace)
  {
    sub_2958BEE9C();
    goto LABEL_45;
  }

  v40 = objc_msgSend_computePipelineStateFor_constants_(v4, v39, @"mstmCombineAndDownsampleMask", 0);
  mstmCombineAndDownsampleMask = v5->_mstmCombineAndDownsampleMask;
  v5->_mstmCombineAndDownsampleMask = v40;

  if (!v5->_mstmCombineAndDownsampleMask)
  {
    sub_2958BEE10();
    goto LABEL_45;
  }

  v43 = objc_msgSend_computePipelineStateFor_constants_(v4, v42, @"mstmDownsampleMask", 0);
  mstmDownsampleMask = v5->_mstmDownsampleMask;
  v5->_mstmDownsampleMask = v43;

  if (!v5->_mstmDownsampleMask)
  {
    sub_2958BED84();
    goto LABEL_45;
  }

  v46 = objc_msgSend_computePipelineStateFor_constants_(v4, v45, @"mstmsDownsampleInitial", 0);
  mstmDownsampleInitial = v5->_mstmDownsampleInitial;
  v5->_mstmDownsampleInitial = v46;

  if (!v5->_mstmDownsampleInitial)
  {
    sub_2958BECF8();
    goto LABEL_45;
  }

  v49 = objc_msgSend_computePipelineStateFor_constants_(v4, v48, @"mstmsDownsampleSubsequent", 0);
  mstmDownsampleSubsequent = v5->_mstmDownsampleSubsequent;
  v5->_mstmDownsampleSubsequent = v49;

  if (!v5->_mstmDownsampleSubsequent)
  {
    sub_2958BEC6C();
    goto LABEL_45;
  }

  v52 = objc_msgSend_computePipelineStateFor_constants_(v4, v51, @"mstmsRemixIntermediate", 0);
  mstmPyramidRemixIntermediate = v5->_mstmPyramidRemixIntermediate;
  v5->_mstmPyramidRemixIntermediate = v52;

  if (!v5->_mstmPyramidRemixIntermediate)
  {
    sub_2958BEBE0();
    goto LABEL_45;
  }

  v55 = objc_msgSend_computePipelineStateFor_constants_(v4, v54, @"mstmsRemixFinal", 0);
  mstmPyramidRemixFinal = v5->_mstmPyramidRemixFinal;
  v5->_mstmPyramidRemixFinal = v55;

  if (!v5->_mstmPyramidRemixFinal)
  {
    sub_2958BEB54();
    goto LABEL_45;
  }

  v58 = objc_msgSend_computePipelineStateFor_constants_(v4, v57, @"mstmsDiffusionOdd", 0);
  mstmDiffusionOdd = v5->_mstmDiffusionOdd;
  v5->_mstmDiffusionOdd = v58;

  if (!v5->_mstmDiffusionOdd)
  {
    sub_2958BEAC8();
    goto LABEL_45;
  }

  v61 = objc_msgSend_computePipelineStateFor_constants_(v4, v60, @"mstmsDiffusionEven", 0);
  mstmDiffusionEven = v5->_mstmDiffusionEven;
  v5->_mstmDiffusionEven = v61;

  if (!v5->_mstmDiffusionEven)
  {
    sub_2958BEA3C();
    goto LABEL_45;
  }

  v64 = objc_msgSend_computePipelineStateFor_constants_(v4, v63, @"mstmsApply", 0);
  mstmsApply = v5->_mstmsApply;
  v5->_mstmsApply = v64;

  if (!v5->_mstmsApply)
  {
    sub_2958BE9B0();
    goto LABEL_45;
  }

LABEL_23:
  v66 = v5;
LABEL_24:

  return v66;
}

@end