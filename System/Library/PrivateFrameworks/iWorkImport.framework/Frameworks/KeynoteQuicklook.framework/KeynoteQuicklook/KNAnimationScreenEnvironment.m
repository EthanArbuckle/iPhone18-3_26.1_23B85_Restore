@interface KNAnimationScreenEnvironment
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsHDR;
- (KNAnimationScreenEnvironment)init;
- (double)currentEDRHeadroom;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setColorSpace:(CGColorSpace *)a3;
@end

@implementation KNAnimationScreenEnvironment

- (KNAnimationScreenEnvironment)init
{
  v3.receiver = self;
  v3.super_class = KNAnimationScreenEnvironment;
  result = [(KNAnimationScreenEnvironment *)&v3 init];
  if (result)
  {
    result->_pixelAspectRatio = 1.0;
  }

  return result;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = KNAnimationScreenEnvironment;
  [(KNAnimationScreenEnvironment *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v8 = objc_msgSend_colorSpace(self, v6, v7);
  objc_msgSend_addField_format_(v5, v9, @"colorSpace", @"%@", v8);
  if (objc_msgSend_hasActiveSceneCaptureState(self, v10, v11))
  {
    objc_msgSend_addField_format_(v5, v12, @"hasActiveSceneCaptureState", @"%@", @"YES");
  }

  else
  {
    objc_msgSend_addField_format_(v5, v12, @"hasActiveSceneCaptureState", @"%@", @"NO");
  }

  objc_msgSend_pixelAspectRatio(self, v13, v14);
  objc_msgSend_addField_format_(v5, v15, @"pixelAspectRatio", @"%f", v16);
  if (objc_msgSend_shouldDisableHDRSupport(self, v17, v18))
  {
    objc_msgSend_addField_format_(v5, v19, @"shouldDisableHDRSupport", @"%@", @"YES");
  }

  else
  {
    objc_msgSend_addField_format_(v5, v19, @"shouldDisableHDRSupport", @"%@", @"NO");
  }

  if (objc_msgSend_supportsHDR(self, v20, v21))
  {
    objc_msgSend_addField_format_(v5, v22, @"supportsHDR", @"%@", @"YES");
  }

  else
  {
    objc_msgSend_addField_format_(v5, v22, @"supportsHDR", @"%@", @"NO");
  }

  if (objc_msgSend_isPQReferenceMode(self, v23, v24))
  {
    objc_msgSend_addField_format_(v5, v25, @"isPQReferenceMode", @"%@", @"YES");
  }

  else
  {
    objc_msgSend_addField_format_(v5, v25, @"isPQReferenceMode", @"%@", @"NO");
  }

  objc_msgSend_currentEDRHeadroom(self, v26, v27);
  objc_msgSend_addField_format_(v5, v28, @"currentEDRHeadroom", @"%f", v29);
  v32 = objc_msgSend_descriptionString(v5, v30, v31);

  return v32;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v28) = 1;
  }

  else
  {
    v4 = a3;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5 && (v8 = objc_msgSend_colorSpace(self, v6, v7), v8 == objc_msgSend_colorSpace(v5, v9, v10)) && (hasActiveSceneCaptureState = objc_msgSend_hasActiveSceneCaptureState(self, v11, v12), hasActiveSceneCaptureState == objc_msgSend_hasActiveSceneCaptureState(v5, v14, v15)) && (objc_msgSend_pixelAspectRatio(self, v16, v17), v19 = v18, objc_msgSend_pixelAspectRatio(v5, v20, v21), v19 == v24))
    {
      shouldDisableHDRSupport = objc_msgSend_shouldDisableHDRSupport(self, v22, v23);
      v28 = shouldDisableHDRSupport ^ objc_msgSend_shouldDisableHDRSupport(v5, v26, v27) ^ 1;
    }

    else
    {
      LOBYTE(v28) = 0;
    }
  }

  return v28;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v6 = objc_msgSend_colorSpace(self, v4, v5);
  objc_msgSend_addObject_(v3, v7, v6);
  hasActiveSceneCaptureState = objc_msgSend_hasActiveSceneCaptureState(self, v8, v9);
  objc_msgSend_addBool_(v3, v11, hasActiveSceneCaptureState);
  v14 = objc_msgSend_uiScreen(self, v12, v13);
  objc_msgSend_addObject_(v3, v15, v14);

  v16 = MEMORY[0x277CCABB0];
  objc_msgSend_pixelAspectRatio(self, v17, v18);
  v21 = objc_msgSend_numberWithDouble_(v16, v19, v20);
  objc_msgSend_addObject_(v3, v22, v21);

  shouldDisableHDRSupport = objc_msgSend_shouldDisableHDRSupport(self, v23, v24);
  objc_msgSend_addBool_(v3, v26, shouldDisableHDRSupport);
  v29 = objc_msgSend_hashValue(v3, v27, v28);

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(KNAnimationScreenEnvironment);
  v7 = objc_msgSend_colorSpace(self, v5, v6);
  objc_msgSend_setColorSpace_(v4, v8, v7);
  hasActiveSceneCaptureState = objc_msgSend_hasActiveSceneCaptureState(self, v9, v10);
  objc_msgSend_setHasActiveSceneCaptureState_(v4, v12, hasActiveSceneCaptureState);
  v15 = objc_msgSend_uiScreen(self, v13, v14);
  objc_msgSend_setUiScreen_(v4, v16, v15);

  objc_msgSend_pixelAspectRatio(self, v17, v18);
  objc_msgSend_setPixelAspectRatio_(v4, v19, v20);
  shouldDisableHDRSupport = objc_msgSend_shouldDisableHDRSupport(self, v21, v22);
  objc_msgSend_setShouldDisableHDRSupport_(v4, v24, shouldDisableHDRSupport);
  return v4;
}

- (void)setColorSpace:(CGColorSpace *)a3
{
  if (self->_colorSpace != a3)
  {
    CGColorSpaceRetain(a3);
    CGColorSpaceRelease(self->_colorSpace);
    self->_colorSpace = a3;
  }
}

- (double)currentEDRHeadroom
{
  uiScreen = self->_uiScreen;
  if (!uiScreen)
  {
    return 1.0;
  }

  objc_msgSend_currentEDRHeadroom(uiScreen, a2, v2);
  return result;
}

- (BOOL)supportsHDR
{
  if (objc_msgSend_shouldDisableHDRSupport(self, a2, v2) & 1) != 0 || (objc_msgSend_hasActiveSceneCaptureState(self, v4, v5))
  {
    LOBYTE(uiScreen) = 0;
  }

  else
  {
    uiScreen = self->_uiScreen;
    if (uiScreen)
    {
      objc_msgSend_potentialEDRHeadroom(uiScreen, v6, v7);
      LOBYTE(uiScreen) = v9 > 2.0;
    }
  }

  return uiScreen;
}

@end