@interface PatchBasedFusionParametersLUTs
- (int)readPlist:(id)a3;
@end

@implementation PatchBasedFusionParametersLUTs

- (int)readPlist:(id)a3
{
  v4 = a3;
  v5 = [GainValueArray alloc];
  v8 = objc_msgSend_valueForKey_(v4, v6, @"BoundsMapLimit", v7);
  v11 = objc_msgSend_initWithArray_(v5, v9, v8, v10);
  boundsMapLimit = self->boundsMapLimit;
  self->boundsMapLimit = v11;

  if (!self->boundsMapLimit)
  {
    sub_2958AD614(&v71);
LABEL_19:
    v69 = v71;
    goto LABEL_10;
  }

  v13 = [GainValueArray alloc];
  v16 = objc_msgSend_valueForKey_(v4, v14, @"ShadowLimit", v15);
  v19 = objc_msgSend_initWithArray_(v13, v17, v16, v18);
  shadowLimit = self->shadowLimit;
  self->shadowLimit = v19;

  if (!self->shadowLimit)
  {
    sub_2958AD578(&v71);
    goto LABEL_19;
  }

  v21 = [GainValueArray alloc];
  v24 = objc_msgSend_valueForKey_(v4, v22, @"LowResMotionThreshold", v23);
  v27 = objc_msgSend_initWithArray_(v21, v25, v24, v26);
  lowResMotionThreshold = self->lowResMotionThreshold;
  self->lowResMotionThreshold = v27;

  if (!self->lowResMotionThreshold)
  {
    sub_2958AD4DC(&v71);
    goto LABEL_19;
  }

  v29 = [GainValueArray alloc];
  v32 = objc_msgSend_valueForKey_(v4, v30, @"BoostedLumaMotionThreshold", v31);
  v35 = objc_msgSend_initWithArray_(v29, v33, v32, v34);
  boostedLumaMotionThreshold = self->boostedLumaMotionThreshold;
  self->boostedLumaMotionThreshold = v35;

  if (!self->boostedLumaMotionThreshold)
  {
    sub_2958AD440(&v71);
    goto LABEL_19;
  }

  v37 = [GainValueArray alloc];
  v40 = objc_msgSend_valueForKey_(v4, v38, @"SADThreshold", v39);
  v43 = objc_msgSend_initWithArray_(v37, v41, v40, v42);
  sadThreshold = self->sadThreshold;
  self->sadThreshold = v43;

  if (!self->sadThreshold)
  {
    sub_2958AD3A4(&v71);
    goto LABEL_19;
  }

  v45 = [GainValueArray alloc];
  v48 = objc_msgSend_valueForKey_(v4, v46, @"NCCLowLimitMatchedTexture", v47);
  v51 = objc_msgSend_initWithArray_(v45, v49, v48, v50);
  nccLowLimitMatchedTexture = self->nccLowLimitMatchedTexture;
  self->nccLowLimitMatchedTexture = v51;

  if (!self->nccLowLimitMatchedTexture)
  {
    sub_2958AD308(&v71);
    goto LABEL_19;
  }

  v53 = [GainValueArray alloc];
  v56 = objc_msgSend_valueForKey_(v4, v54, @"NCCHighLimitMatchedTexture", v55);
  v59 = objc_msgSend_initWithArray_(v53, v57, v56, v58);
  nccHighLimitMatchedTexture = self->nccHighLimitMatchedTexture;
  self->nccHighLimitMatchedTexture = v59;

  if (!self->nccHighLimitMatchedTexture)
  {
    sub_2958AD26C(&v71);
    goto LABEL_19;
  }

  v61 = [GainValueArray alloc];
  v64 = objc_msgSend_valueForKey_(v4, v62, @"FusionBoostMatchedTexture", v63);
  v67 = objc_msgSend_initWithArray_(v61, v65, v64, v66);
  fusionBoostMatchedTexture = self->fusionBoostMatchedTexture;
  self->fusionBoostMatchedTexture = v67;

  if (!self->fusionBoostMatchedTexture)
  {
    sub_2958AD1D0(&v71);
    goto LABEL_19;
  }

  v69 = 0;
LABEL_10:

  return v69;
}

@end