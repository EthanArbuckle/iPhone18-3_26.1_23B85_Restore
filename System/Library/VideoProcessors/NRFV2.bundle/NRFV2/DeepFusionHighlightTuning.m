@interface DeepFusionHighlightTuning
- (int)readPlist:(id)a3;
@end

@implementation DeepFusionHighlightTuning

- (int)readPlist:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"RedBoost", v6);
  objc_msgSend_floatValue(v7, v8, v9, v10);
  self->redBoost = v11;

  v14 = objc_msgSend_objectForKeyedSubscript_(v4, v12, @"BlueBoost", v13);
  objc_msgSend_floatValue(v14, v15, v16, v17);
  self->blueBoost = v18;

  v21 = objc_msgSend_objectForKeyedSubscript_(v4, v19, @"GreenBoost", v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  self->greenBoost = v25;

  v28 = objc_msgSend_objectForKeyedSubscript_(v4, v26, @"SaturationSlope", v27);
  objc_msgSend_floatValue(v28, v29, v30, v31);
  self->saturationSlope = v32;

  v35 = objc_msgSend_objectForKeyedSubscript_(v4, v33, @"SaturationMid", v34);
  objc_msgSend_floatValue(v35, v36, v37, v38);
  self->saturationMid = v39;

  v42 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"PixelRecalculationLimit", v41);
  objc_msgSend_floatValue(v42, v43, v44, v45);
  self->pixelRecalculationLimit = v46;

  v49 = objc_msgSend_objectForKeyedSubscript_(v4, v47, @"RecalcAlphaSlope", v48);
  objc_msgSend_floatValue(v49, v50, v51, v52);
  self->recalcAlphaSlope = v53;

  v56 = objc_msgSend_objectForKeyedSubscript_(v4, v54, @"RecalcAlphaMid", v55);

  objc_msgSend_floatValue(v56, v57, v58, v59);
  self->recalcAlphaMid = v60;

  return 0;
}

@end