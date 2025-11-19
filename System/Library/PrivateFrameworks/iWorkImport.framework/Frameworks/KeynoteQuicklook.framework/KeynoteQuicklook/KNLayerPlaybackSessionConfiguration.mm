@interface KNLayerPlaybackSessionConfiguration
- (CGSize)boundsSize;
- (KNLayerPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment;
- (KNLayerPlaybackSessionConfiguration)initWithLayerHost:(id)a3 isMetalEnabled:(BOOL)a4 isSceneRenderingEnabled:(BOOL)a5 isHDREnabled:(BOOL)a6;
- (id)description;
@end

@implementation KNLayerPlaybackSessionConfiguration

- (KNLayerPlaybackSessionConfiguration)initWithLayerHost:(id)a3 isMetalEnabled:(BOOL)a4 isSceneRenderingEnabled:(BOOL)a5 isHDREnabled:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v11 = a3;
  v51.receiver = self;
  v51.super_class = KNLayerPlaybackSessionConfiguration;
  v12 = [(KNPlaybackSessionConfiguration *)&v51 initSuperclass];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 4, a3);
    v16 = objc_msgSend_screenEnvironment(v11, v14, v15);
    v19 = objc_msgSend_copy(v16, v17, v18);
    v20 = v13[2];
    v13[2] = v19;

    if (a6)
    {
      v23 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v21, v22);
      isHDRCapable = objc_msgSend_isHDRCapable(v23, v24, v25);
      objc_msgSend_setSupportsHDR_(v13, v27, isHDRCapable);
    }

    else
    {
      objc_msgSend_setSupportsHDR_(v13, v21, 0);
    }

    *(v13 + 24) = v8;
    *(v13 + 25) = v7;
    v30 = objc_msgSend_rootLayer(v13[4], v28, v29);
    objc_msgSend_bounds(v30, v31, v32);
    v13[5] = v33;
    v13[6] = v34;

    if (v8)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[KNLayerPlaybackSessionConfiguration initWithLayerHost:isMetalEnabled:isSceneRenderingEnabled:isHDREnabled:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 319, 0, "Metal should not be enabled on a platform that does not support it.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    }

    if (v7)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[KNLayerPlaybackSessionConfiguration initWithLayerHost:isMetalEnabled:isSceneRenderingEnabled:isHDREnabled:]");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 320, 0, "Scene rendering should not be enabled on a platform that does not support it.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    }
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  objc_msgSend_addField_format_(v5, v6, @"layerHost", @"%@", self->_layerHost);
  objc_msgSend_addField_format_(v5, v7, @"screenEnvironment", @"%@", self->_screenEnvironment);
  objc_msgSend_addField_format_(v5, v8, @"isMetalEnabled", @"%d", self->_isMetalEnabled);
  objc_msgSend_addField_format_(v5, v9, @"isSceneRenderingEnabled", @"%d", self->_isSceneRenderingEnabled);
  v12 = objc_msgSend_descriptionString(v5, v10, v11);

  return v12;
}

- (KNLayerPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNLayerPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 376, 0, "updating configuration should be done on the main thread");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  screenEnvironment = self->_screenEnvironment;
  v14 = objc_msgSend_screenEnvironment(self->_layerHost, v4, v5);
  if (objc_msgSend_isEqual_(screenEnvironment, v15, v14))
  {
    v18 = objc_msgSend_rootLayer(self->_layerHost, v16, v17);
    objc_msgSend_bounds(v18, v19, v20);
    v22 = v21;
    v24 = v23;
    width = self->_boundsSize.width;
    height = self->_boundsSize.height;

    if (v22 == width && v24 == height)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v28 = [KNLayerPlaybackSessionConfiguration alloc];
  isHDREnabled = objc_msgSend_initWithLayerHost_isMetalEnabled_isSceneRenderingEnabled_isHDREnabled_(v28, v29, self->_layerHost, self->_isMetalEnabled, self->_isSceneRenderingEnabled, 0);
  if (isHDREnabled)
  {
    goto LABEL_14;
  }

  v32 = MEMORY[0x277D81150];
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[KNLayerPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]");
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 393, 0, "Unable to create a new configuration from an existing configuration with a new screen environment. Continuing to use the existing configuration.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
LABEL_13:
  isHDREnabled = self;
LABEL_14:

  return isHDREnabled;
}

- (CGSize)boundsSize
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end