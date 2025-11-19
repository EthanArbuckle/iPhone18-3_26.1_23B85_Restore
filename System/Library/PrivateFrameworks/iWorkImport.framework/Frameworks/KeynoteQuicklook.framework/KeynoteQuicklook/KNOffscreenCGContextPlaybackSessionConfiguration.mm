@interface KNOffscreenCGContextPlaybackSessionConfiguration
- (CGSize)boundsSize;
- (KNOffscreenCGContextPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment;
- (KNOffscreenCGContextPlaybackSessionConfiguration)initWithOffscreenCGContextBoundsSize:(CGSize)a3 isHDREnabled:(BOOL)a4;
- (id)description;
@end

@implementation KNOffscreenCGContextPlaybackSessionConfiguration

- (KNOffscreenCGContextPlaybackSessionConfiguration)initWithOffscreenCGContextBoundsSize:(CGSize)a3 isHDREnabled:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v17.receiver = self;
  v17.super_class = KNOffscreenCGContextPlaybackSessionConfiguration;
  v7 = [(KNPlaybackSessionConfiguration *)&v17 initSuperclass];
  v10 = v7;
  if (v7)
  {
    v7->_boundsSize.width = width;
    v7->_boundsSize.height = height;
    if (a4)
    {
      v11 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v8, v9);
      isHDRCapable = objc_msgSend_isHDRCapable(v11, v12, v13);
      objc_msgSend_setSupportsHDR_(v10, v15, isHDRCapable);
    }

    else
    {
      objc_msgSend_setSupportsHDR_(v7, v8, 0);
    }
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277D811A8]);
  v5 = objc_msgSend_initWithObject_(v3, v4, self);
  v6 = NSStringFromCGSize(self->_boundsSize);
  objc_msgSend_addField_format_(v5, v7, @"boundsSize", @"%@", v6);

  v10 = objc_msgSend_descriptionString(v5, v8, v9);

  return v10;
}

- (KNOffscreenCGContextPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNOffscreenCGContextPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 538, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[KNOffscreenCGContextPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
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