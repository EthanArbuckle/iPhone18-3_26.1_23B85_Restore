@interface SFFPlist
- (int)readPlist:(id)plist;
@end

@implementation SFFPlist

- (int)readPlist:(id)plist
{
  v21 = 0;
  plistCopy = plist;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v5, @"MaxFaceLength", &v21, 0.0);
  v6 = v21;
  self->maxFaceLength = v7;
  v22 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v8, @"MaxBoundsRatio", &v22, 0.0);
  v9 = v22;
  self->maxBoundsRatio = v10;
  v23 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v11, @"MaxMeanSkinMaskValue", &v23, 0.0);
  v12 = v23;
  self->maxMeanSkinMaskValue = v13;
  v24 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v14, @"FeatherRate", &v24, 0.0);
  v15 = v24;
  self->featherRate = v16;
  v25 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v17, @"FeatherOffset", &v25, 0.0);
  v19 = v18;

  if ((v25 & v15 & v12 & v9) & v6)
  {
    result = 0;
  }

  else
  {
    result = 25;
  }

  self->featherOffset = v19;
  return result;
}

@end