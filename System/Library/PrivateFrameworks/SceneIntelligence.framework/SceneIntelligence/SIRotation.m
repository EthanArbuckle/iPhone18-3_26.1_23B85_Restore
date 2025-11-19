@interface SIRotation
- (BOOL)rotateAndCropImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (BOOL)rotateImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (CGRect)getCenterCropSrcSize:(CGSize)a3 dstSize:(CGSize)a4;
- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)a3;
- (__CVBuffer)_createCVPixelBufferWithResolution:(CGSize)a3 pixelFormat:(unsigned int)a4;
- (__CVBuffer)rotateAndCropImage:(__CVBuffer *)a3;
- (__CVBuffer)rotateImage:(__CVBuffer *)a3;
- (id)getInputRotateOrientation;
- (void)dealloc;
@end

@implementation SIRotation

- (CGRect)getCenterCropSrcSize:(CGSize)a3 dstSize:(CGSize)a4
{
  v4 = (a3.width - a4.width) * 0.5;
  v5 = (a3.height - a4.height) * 0.5;
  v6 = floor(v4 + 0.0);
  v7 = floor(v5 + 0.0);
  v8 = floor(a3.width - v4 * 2.0);
  v9 = floor(a3.height - v5 * 2.0);
  v10 = v6;
  v11 = v7;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  pixelRotationSessionOut = 0;
  if (VTPixelRotationSessionCreate(0, &pixelRotationSessionOut))
  {
    v3 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v9 = 1025;
      v10 = 75;
      _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to create vtImageRotationSession ***", buf, 0x12u);
    }

    result = 0;
  }

  else
  {
    result = pixelRotationSessionOut;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)rotateImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136380931;
      v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v16 = 1025;
      v17 = 81;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Recieved null image ***", &v14, 0x12u);
    }

    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(SIRotation *)self getInputRotateOrientation];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CE2850]];

  v9 = VTPixelRotationSessionRotateImage(self->_sessionRotate, a3, a4);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136380931;
      v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v16 = 1025;
      v17 = 85;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to perform rotation via pixel transfer ***", &v14, 0x12u);
    }

LABEL_8:
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (__CVBuffer)rotateImage:(__CVBuffer *)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    pixelBufferOut = 0;
    if (CVPixelBufferPoolCreatePixelBuffer(0, self->_pixelBufferCreatePool, &pixelBufferOut))
    {
      v5 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
        v13 = 1025;
        v14 = 98;
        _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to create pixel buffer for rotation ***", buf, 0x12u);
      }
    }

    else
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = [(SIRotation *)self getInputRotateOrientation];
      [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CE2850]];

      if (!VTPixelRotationSessionRotateImage(self->_sessionRotate, v3, pixelBufferOut))
      {
        v3 = pixelBufferOut;
        goto LABEL_10;
      }

      v7 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
        v13 = 1025;
        v14 = 103;
        _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to perform rotation via pixel transfer ***", buf, 0x12u);
      }
    }

    v3 = 0;
LABEL_10:
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (__CVBuffer)rotateAndCropImage:(__CVBuffer *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_10;
  }

  Width = CVPixelBufferGetWidth(a3);
  [(SIRotation *)self getCenterCropSrcSize:Width dstSize:CVPixelBufferGetHeight(a3), self->_outputResolution.width, self->_outputResolution.height];
  v6 = self->_outputResolution.width;
  height = self->_outputResolution.height;
  pixelBufferOut = 0;
  if (!CVPixelBufferPoolCreatePixelBuffer(0, self->_pixelBufferCreatePool, &pixelBufferOut))
  {
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    sessionRotate = self->_sessionRotate;
    if (!VTPixelRotationSessionRotateSubImage())
    {
      result = pixelBufferOut;
      goto LABEL_11;
    }

    v8 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136380931;
    v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v18 = 1025;
    v19 = 129;
    v9 = " %{private}s:%{private}d *** Failure to perform rotation and crop via pixel transfer ***";
    goto LABEL_8;
  }

  v8 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v18 = 1025;
    v19 = 126;
    v9 = " %{private}s:%{private}d *** Failure to create pixel buffer for rotation ***";
LABEL_8:
    _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
  }

LABEL_9:

LABEL_10:
  result = 0;
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)rotateAndCropImage:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_8;
  }

  Width = CVPixelBufferGetWidth(a3);
  [(SIRotation *)self getCenterCropSrcSize:Width dstSize:CVPixelBufferGetHeight(a3), self->_outputResolution.width, self->_outputResolution.height];
  if (v8 == self->_outputResolution.width && v7 == self->_outputResolution.height)
  {
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    sessionRotate = self->_sessionRotate;
    if (!VTPixelRotationSessionRotateSubImage())
    {
      result = 1;
      goto LABEL_9;
    }

    v9 = __SceneIntelligenceLogSharedInstance();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 136380931;
    v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v18 = 1025;
    v19 = 151;
    v10 = " %{private}s:%{private}d *** Failure to perform rotation and crop via pixel transfer ***";
    goto LABEL_6;
  }

  v9 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v16 = 136380931;
    v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v18 = 1025;
    v19 = 145;
    v10 = " %{private}s:%{private}d *** Wrong crop size for rotation ***";
LABEL_6:
    _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, v10, &v16, 0x12u);
  }

LABEL_7:

LABEL_8:
  result = 0;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (__CVBuffer)_createCVPixelBufferWithResolution:(CGSize)a3 pixelFormat:(unsigned int)a4
{
  height = a3.height;
  width = a3.width;
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = *MEMORY[0x277CC4DE8];
  v18[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, a4, v7, &pixelBufferOut))
  {
    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v15 = 1025;
      v16 = 166;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not create pixel buffer for rotation ***", buf, 0x12u);
    }

    v9 = 0;
  }

  else
  {
    v9 = pixelBufferOut;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)getInputRotateOrientation
{
  v3 = *MEMORY[0x277CE2A20];
  rotationDegree = self->_rotationDegree;
  switch(rotationDegree)
  {
    case 90:
      v5 = MEMORY[0x277CE2A38];
      break;
    case 270:
      v5 = MEMORY[0x277CE2A30];
      break;
    case 180:
      v5 = MEMORY[0x277CE2A28];
      break;
    default:
      goto LABEL_8;
  }

  v6 = *v5;

  v3 = v6;
LABEL_8:

  return v3;
}

- (void)dealloc
{
  VTPixelRotationSessionInvalidate(self->_sessionRotate);
  CFRelease(self->_sessionRotate);
  self->_sessionRotate = 0;
  CVPixelBufferPoolRelease(self->_pixelBufferCreatePool);
  v3.receiver = self;
  v3.super_class = SIRotation;
  [(SIRotation *)&v3 dealloc];
}

@end