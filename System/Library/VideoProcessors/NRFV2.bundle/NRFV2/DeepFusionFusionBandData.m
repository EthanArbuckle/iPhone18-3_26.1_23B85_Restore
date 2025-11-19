@interface DeepFusionFusionBandData
- (int)readPlist:(id)a3;
@end

@implementation DeepFusionFusionBandData

- (int)readPlist:(id)a3
{
  v4 = a3;
  v5 = [GainValueArray alloc];
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v6, @"ChromaGlobal", v7);
  v11 = objc_msgSend_initWithArray_(v5, v9, v8, v10);
  chromaGlobal = self->chromaGlobal;
  self->chromaGlobal = v11;

  if ((objc_msgSend_isValid(self->chromaGlobal, v13, v14, v15) & 1) == 0)
  {
    sub_2958AB07C();
LABEL_15:
    v71 = -1;
    goto LABEL_8;
  }

  v16 = [GainValueArray alloc];
  v19 = objc_msgSend_objectForKeyedSubscript_(v4, v17, @"LSCAmp", v18);
  v22 = objc_msgSend_initWithArray_(v16, v20, v19, v21);
  lscAmp = self->lscAmp;
  self->lscAmp = v22;

  if ((objc_msgSend_isValid(self->lscAmp, v24, v25, v26) & 1) == 0)
  {
    sub_2958AB0D4();
    goto LABEL_15;
  }

  v27 = [GainValueArray alloc];
  v30 = objc_msgSend_objectForKeyedSubscript_(v4, v28, @"LSCOffset", v29);
  v33 = objc_msgSend_initWithArray_(v27, v31, v30, v32);
  lscOffset = self->lscOffset;
  self->lscOffset = v33;

  if ((objc_msgSend_isValid(self->lscOffset, v35, v36, v37) & 1) == 0)
  {
    sub_2958AB12C();
    goto LABEL_15;
  }

  v38 = [GainValueArray alloc];
  v41 = objc_msgSend_objectForKeyedSubscript_(v4, v39, @"LumaMid", v40);
  v44 = objc_msgSend_initWithArray_(v38, v42, v41, v43);
  lumaMid = self->lumaMid;
  self->lumaMid = v44;

  if ((objc_msgSend_isValid(self->lumaMid, v46, v47, v48) & 1) == 0)
  {
    sub_2958AB184();
    goto LABEL_15;
  }

  v49 = [GainValueArray alloc];
  v52 = objc_msgSend_objectForKeyedSubscript_(v4, v50, @"LumaSlope", v51);
  v55 = objc_msgSend_initWithArray_(v49, v53, v52, v54);
  lumaSlope = self->lumaSlope;
  self->lumaSlope = v55;

  if ((objc_msgSend_isValid(self->lumaSlope, v57, v58, v59) & 1) == 0)
  {
    sub_2958AB1DC();
    goto LABEL_15;
  }

  v60 = [GainValueArray alloc];
  v63 = objc_msgSend_objectForKeyedSubscript_(v4, v61, @"HighlightFusionAlpha", v62);
  v66 = objc_msgSend_initWithArray_(v60, v64, v63, v65);
  highlightFusionAlpha = self->highlightFusionAlpha;
  self->highlightFusionAlpha = v66;

  if ((objc_msgSend_isValid(self->highlightFusionAlpha, v68, v69, v70) & 1) == 0)
  {
    sub_2958AB234();
    goto LABEL_15;
  }

  v71 = 0;
LABEL_8:

  return v71;
}

@end