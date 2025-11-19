@interface SIVideoToolboxScaler
- (__CVBuffer)createScaledImage:(__CVBuffer *)a3;
- (void)dealloc;
@end

@implementation SIVideoToolboxScaler

- (__CVBuffer)createScaledImage:(__CVBuffer *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
      v13 = 1025;
      v14 = 92;
      v8 = " %{private}s:%{private}d *** Error! Scaler gets nil input. ***";
LABEL_14:
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
    }

LABEL_15:

    result = 0;
LABEL_16:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  [(SIBaseScaler *)self algorithmKey];
  kdebug_trace();
  if (![(SIBaseScaler *)self _imageConformsToOutput:a3])
  {
    pixelBufferOut = 0;
    if (CVPixelBufferPoolCreatePixelBuffer(0, self->_pool, &pixelBufferOut))
    {
      v7 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
        v13 = 1025;
        v14 = 109;
        v8 = " %{private}s:%{private}d *** Failure to create pixel buffer for downscaling ***";
        goto LABEL_14;
      }
    }

    else
    {
      if (!VTPixelTransferSessionTransferImage(self->_session, a3, pixelBufferOut))
      {
        [(SIBaseScaler *)self outputResolution];
        [(SIBaseScaler *)self outputResolution];
        [(SIBaseScaler *)self algorithmKey];
        kdebug_trace();
        result = pixelBufferOut;
        goto LABEL_16;
      }

      v7 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
        v13 = 1025;
        v14 = 112;
        v8 = " %{private}s:%{private}d *** Failure to perform downscaling/conversion via pixel transfer ***";
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  [(SIBaseScaler *)self outputResolution];
  [(SIBaseScaler *)self outputResolution];
  [(SIBaseScaler *)self algorithmKey];
  kdebug_trace();
  v5 = *MEMORY[0x277D85DE8];

  return CVPixelBufferRetain(a3);
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_pool);
  session = self->_session;
  if (session)
  {
    VTPixelTransferSessionInvalidate(session);
    CFRelease(self->_session);
  }

  v4.receiver = self;
  v4.super_class = SIVideoToolboxScaler;
  [(SIVideoToolboxScaler *)&v4 dealloc];
}

@end