@interface TCRPlist
- (int)readPlist:(id)plist;
@end

@implementation TCRPlist

- (int)readPlist:(id)plist
{
  v29 = 0;
  plistCopy = plist;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v5, @"GlobalAlpha", &v29, 0.0);
  v6 = v29;
  self->globalAlpha = v7;
  v30 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v8, @"LocalAlpha", &v30, 0.0);
  v9 = v30;
  self->localAlpha = v10;
  v31 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v11, @"ThresholdMask", &v31, 0.0);
  v12 = v31;
  self->thresholdMask = v13;
  v32 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v14, @"ThresholdNumMaskTiles", &v32, 0.0);
  v15 = v32;
  self->thresholdNumMaskTiles = v16;
  v33 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v17, @"EdgeMaskT0", &v33, 0.0);
  v18 = v33;
  self->edgeMaskT0 = v19;
  v34 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v20, @"EdgeMaskT1", &v34, 0.0);
  v21 = v34;
  self->edgeMaskT1 = v22;
  v35 = 0;
  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(plistCopy, v23, @"ExtraMaskAlpha", &v35, 0.0);
  v24 = v35;
  self->extraMaskAlpha = v25;
  v36 = 0;
  v27 = objc_msgSend_cmi_intValueForKey_defaultValue_found_(plistCopy, v26, @"MaskType", 0, &v36);

  if ((v36 & v24 & v21 & v18 & v15 & v12 & v9) & v6)
  {
    result = 0;
  }

  else
  {
    result = 25;
  }

  self->maskType = v27;
  return result;
}

@end