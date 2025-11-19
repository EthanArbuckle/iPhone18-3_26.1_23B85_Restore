@interface NoiseModelPlist
- (int)readPlist:(id)a3;
@end

@implementation NoiseModelPlist

- (int)readPlist:(id)a3
{
  v4 = a3;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v5, @"BandFactorC", 0, 0.0);
  self->bandFactorC = v6;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v7, @"BandFactorY", 0, 0.0);
  self->bandFactorY = v8;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v9, @"BiasFactor", 0, 0.0);
  self->biasFactor = v10;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v11, @"GammaC", 0, 0.0);
  self->gammaC = v12;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v13, @"GammaY", 0, 0.0);
  self->gammaY = v14;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v15, @"SlopeFactor", 0, 0.0);
  self->slopeFactor = v16;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v17, @"BaseSigma", 0, 0.0);
  self->baseSigma = v18;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v4, v19, @"BaseSigmaC", 0, 0.0);
  self->baseSigmaC = v20;
  v23 = objc_msgSend_objectForKeyedSubscript_(v4, v21, @"NoiseModelVariant", v22);

  variant = self->variant;
  self->variant = v23;

  return 0;
}

@end