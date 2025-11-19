@interface ToneMapSmoothingBandData
- (int)readPlist:(id)a3;
@end

@implementation ToneMapSmoothingBandData

- (int)readPlist:(id)a3
{
  v4 = a3;
  v5 = [GainValueArray alloc];
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v6, @"MaskedDetailMix", v7);
  v11 = objc_msgSend_initWithArray_(v5, v9, v8, v10);
  maskedDetailMix = self->maskedDetailMix;
  self->maskedDetailMix = v11;

  if (self->maskedDetailMix)
  {
    v13 = [GainValueArray alloc];
    v16 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"UnmaskedDetailMix", v15);
    v19 = objc_msgSend_initWithArray_(v13, v17, v16, v18);
    unmaskedDetailMix = self->unmaskedDetailMix;
    self->unmaskedDetailMix = v19;

    if (self->unmaskedDetailMix)
    {
      v23 = objc_msgSend_objectForKeyedSubscript_(v4, v21, @"SkyMaskedDetailMix", v22);

      if (v23)
      {
        v26 = [GainValueArray alloc];
        v29 = objc_msgSend_objectForKeyedSubscript_(v4, v27, @"SkyMaskedDetailMix", v28);
        v32 = objc_msgSend_initWithArray_(v26, v30, v29, v31);
        skyMaskedDetailMix = self->skyMaskedDetailMix;
        self->skyMaskedDetailMix = v32;
      }

      v34 = objc_msgSend_objectForKeyedSubscript_(v4, v24, @"Feature1MaskedDetailMix", v25);

      if (v34)
      {
        v35 = [GainValueArray alloc];
        v38 = objc_msgSend_objectForKeyedSubscript_(v4, v36, @"Feature1MaskedDetailMix", v37);
        v41 = objc_msgSend_initWithArray_(v35, v39, v38, v40);
        v42 = self->skyMaskedDetailMix;
        self->skyMaskedDetailMix = v41;
      }

      if (self->skyMaskedDetailMix)
      {
        v43 = 0;
      }

      else
      {
        sub_2958ACC48(&v45);
        v43 = v45;
      }
    }

    else
    {
      sub_2958ACCE4(&v46);
      v43 = v46;
    }
  }

  else
  {
    sub_2958ACD80(&v47);
    v43 = v47;
  }

  return v43;
}

@end