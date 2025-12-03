@interface LearnedNRTuningParams
- (int)readPlist:(id)plist;
@end

@implementation LearnedNRTuningParams

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v5 = [GainValueArray alloc];
  v8 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v6, @"ReadNoiseModulation", v7);
  v11 = objc_msgSend_initWithArray_(v5, v9, v8, v10);
  readNoiseModulationTuning = self->readNoiseModulationTuning;
  self->readNoiseModulationTuning = v11;

  v13 = [GainValueArray alloc];
  v16 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v14, @"ShotNoiseModulation", v15);
  v19 = objc_msgSend_initWithArray_(v13, v17, v16, v18);
  shotNoiseModulationTuning = self->shotNoiseModulationTuning;
  self->shotNoiseModulationTuning = v19;

  v21 = [GainValueArray alloc];
  v24 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v22, @"LumaAddBackWeight", v23);
  v27 = objc_msgSend_initWithArray_(v21, v25, v24, v26);
  lumaAddBackTuning = self->lumaAddBackTuning;
  self->lumaAddBackTuning = v27;

  v29 = [GainValueArray alloc];
  v32 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v30, @"LumaAddBackBand0Weight", v31);
  v35 = objc_msgSend_initWithArray_(v29, v33, v32, v34);
  lumaAddBackBand0Tuning = self->lumaAddBackBand0Tuning;
  self->lumaAddBackBand0Tuning = v35;

  v37 = [GainValueArray alloc];
  v40 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v38, @"LumaAddBackClipToSNR", v39);

  v43 = objc_msgSend_initWithArray_(v37, v41, v40, v42);
  lumaAddBackClipToSNRTuning = self->lumaAddBackClipToSNRTuning;
  self->lumaAddBackClipToSNRTuning = v43;

  if (!self->readNoiseModulationTuning)
  {
    sub_295876FA0(&v46);
    return v46;
  }

  if (!self->shotNoiseModulationTuning)
  {
    sub_295876EF4(&v46);
    return v46;
  }

  if (!self->lumaAddBackTuning)
  {
    sub_295876E48(&v46);
    return v46;
  }

  if (!self->lumaAddBackBand0Tuning)
  {
    sub_295876D9C(&v46);
    return v46;
  }

  if (!self->lumaAddBackClipToSNRTuning)
  {
    sub_295876CF0(&v46);
    return v46;
  }

  return 0;
}

@end