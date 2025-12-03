@interface DeepFusionNoiseTuningParameters
- (int)readPlist:(id)plist;
@end

@implementation DeepFusionNoiseTuningParameters

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v5 = [GainValueArray alloc];
  v8 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v6, @"LSCAmpFactor", v7);
  v11 = objc_msgSend_initWithArray_(v5, v9, v8, v10);
  LSCAmpFactor = self->LSCAmpFactor;
  self->LSCAmpFactor = v11;

  v13 = [GainValueArray alloc];
  v16 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v14, @"EV0FusionTarget", v15);
  v19 = objc_msgSend_initWithArray_(v13, v17, v16, v18);
  ev0FusionTarget = self->ev0FusionTarget;
  self->ev0FusionTarget = v19;

  v21 = [GainValueArray alloc];
  v24 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v22, @"LongFusionTarget", v23);
  v27 = objc_msgSend_initWithArray_(v21, v25, v24, v26);
  longFusionTarget = self->longFusionTarget;
  self->longFusionTarget = v27;

  v29 = [GainValueArray alloc];
  v32 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v30, @"LumaPowerDenomNoiseFactor", v31);
  v35 = objc_msgSend_initWithArray_(v29, v33, v32, v34);
  lumaPowerDenom = self->lumaPowerDenom;
  self->lumaPowerDenom = v35;

  if ((objc_msgSend_isValid(self->LSCAmpFactor, v37, v38, v39) & 1) == 0)
  {
    sub_2958AADBC();
LABEL_13:
    Plist = -1;
    goto LABEL_8;
  }

  if ((objc_msgSend_isValid(self->ev0FusionTarget, v40, v41, v42) & 1) == 0)
  {
    sub_2958AAE14();
    goto LABEL_13;
  }

  if ((objc_msgSend_isValid(self->longFusionTarget, v43, v44, v45) & 1) == 0)
  {
    sub_2958AAE6C();
    goto LABEL_13;
  }

  if ((objc_msgSend_isValid(self->lumaPowerDenom, v46, v47, v48) & 1) == 0)
  {
    sub_2958AAEC4();
    goto LABEL_13;
  }

  v49 = objc_opt_new();
  ref = self->ref;
  self->ref = v49;

  v51 = self->ref;
  v54 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v52, @"Reference", v53);
  Plist = objc_msgSend_readPlist_(v51, v55, v54, v56);

  if (Plist)
  {
    sub_2958AAF1C();
  }

  else
  {
    v58 = objc_opt_new();
    sl = self->sl;
    self->sl = v58;

    v60 = self->sl;
    v63 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v61, @"SyntheticLong", v62);
    Plist = objc_msgSend_readPlist_(v60, v64, v63, v65);

    if (Plist)
    {
      sub_2958AAF74();
    }
  }

LABEL_8:

  return Plist;
}

@end