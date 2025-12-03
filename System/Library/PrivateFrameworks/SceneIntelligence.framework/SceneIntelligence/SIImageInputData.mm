@interface SIImageInputData
- (BOOL)copyDataTo:(id)to;
- (SIImageInputData)init;
- (__n128)deviceFromCamera;
- (__n128)deviceTransform;
- (__n128)setDeviceFromCamera:(__n128)camera;
- (__n128)setDeviceTransform:(__n128)transform;
- (__n128)setWorldFromDevice:(__n128)device;
- (__n128)worldFromDevice;
@end

@implementation SIImageInputData

- (SIImageInputData)init
{
  v11.receiver = self;
  v11.super_class = SIImageInputData;
  v2 = [(SIImageInputData *)&v11 init];
  if (v2)
  {
    v3 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    inputImagePixelBuffer = v2->_inputImagePixelBuffer;
    v2->_inputImagePixelBuffer = v3;

    v5 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    inputNormalBuffer = v2->_inputNormalBuffer;
    v2->_inputNormalBuffer = v5;

    v7 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    inputDepthBuffer = v2->_inputDepthBuffer;
    v2->_inputDepthBuffer = v7;

    v2->_inputImageLuxValue = -1;
    v9 = v2;
  }

  return v2;
}

- (BOOL)copyDataTo:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self)
  {
    [(SIImageInputData *)self worldFromDevice];
    [toCopy setWorldFromDevice:?];
    [(SIImageInputData *)self deviceTransform];
    [toCopy setDeviceTransform:?];
    if (![toCopy inputImageBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputImageBuffer](self, "inputImageBuffer"), objc_msgSend(toCopy, "inputImageBuffer")) & 1) == 0)
    {
      Width = CVPixelBufferGetWidth([(SIImageInputData *)self inputImageBuffer]);
      Height = CVPixelBufferGetHeight([(SIImageInputData *)self inputImageBuffer]);
      PixelFormatType = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputImageBuffer]);
      isIOSurfaceBacked = [(SIImageInputData *)self isIOSurfaceBacked];
      v9 = SIPixelFormatToStr(PixelFormatType);
      v10 = [v9 isEqualToString:@"444f"];
      inputImageBuffer = [(SIImageInputData *)self inputImageBuffer];
      if (v10)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(inputImageBuffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(inputImageBuffer);
      }

      v15 = BytesPerRowOfPlane;

      v16 = SICreateCVPixelBufferWithCustomStride(Width, Height, PixelFormatType, v15, isIOSurfaceBacked);
      [toCopy setInputImageBuffer:v16];
      CVPixelBufferRelease(v16);
    }

    if (!SIPixelBufferCopy(-[SIImageInputData inputImageBuffer](self, "inputImageBuffer"), [toCopy inputImageBuffer]))
    {
      if ([(SIImageInputData *)self inputDepthBuffer])
      {
        if (![toCopy inputDepthBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputDepthBuffer](self, "inputDepthBuffer"), objc_msgSend(toCopy, "inputDepthBuffer")) & 1) == 0)
        {
          v20 = CVPixelBufferGetWidth([(SIImageInputData *)self inputDepthBuffer]);
          v21 = CVPixelBufferGetHeight([(SIImageInputData *)self inputDepthBuffer]);
          v22 = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputDepthBuffer]);
          isIOSurfaceBacked2 = [(SIImageInputData *)self isIOSurfaceBacked];
          BytesPerRow = CVPixelBufferGetBytesPerRow([(SIImageInputData *)self inputDepthBuffer]);
          v25 = SICreateCVPixelBufferWithCustomStride(v20, v21, v22, BytesPerRow, isIOSurfaceBacked2);
          [toCopy setInputDepthBuffer:v25];
          CVPixelBufferRelease(v25);
        }

        if (SIPixelBufferCopy(-[SIImageInputData inputDepthBuffer](self, "inputDepthBuffer"), [toCopy inputDepthBuffer]))
        {
          v13 = __SceneIntelligenceLogSharedInstance();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v32 = 136380931;
          v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
          v34 = 1025;
          v35 = 88;
          v14 = " %{private}s:%{private}d *** Failed to copy image depth for SIImageInputData ***";
          goto LABEL_13;
        }
      }

      else
      {
        [toCopy setInputDepthBuffer:0];
      }

      if ([(SIImageInputData *)self inputNormalBuffer])
      {
        if (![toCopy inputNormalBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputNormalBuffer](self, "inputNormalBuffer"), objc_msgSend(toCopy, "inputNormalBuffer")) & 1) == 0)
        {
          v26 = CVPixelBufferGetWidth([(SIImageInputData *)self inputNormalBuffer]);
          v27 = CVPixelBufferGetHeight([(SIImageInputData *)self inputNormalBuffer]);
          v28 = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputNormalBuffer]);
          isIOSurfaceBacked3 = [(SIImageInputData *)self isIOSurfaceBacked];
          v30 = CVPixelBufferGetBytesPerRow([(SIImageInputData *)self inputNormalBuffer]);
          v31 = SICreateCVPixelBufferWithCustomStride(v26, v27, v28, v30, isIOSurfaceBacked3);
          [toCopy setInputNormalBuffer:v31];
          CVPixelBufferRelease(v31);
        }

        if (SIPixelBufferCopy(-[SIImageInputData inputNormalBuffer](self, "inputNormalBuffer"), [toCopy inputNormalBuffer]))
        {
          v13 = __SceneIntelligenceLogSharedInstance();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v32 = 136380931;
          v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
          v34 = 1025;
          v35 = 108;
          v14 = " %{private}s:%{private}d *** Failed to copy image depth for SIImageInputData ***";
          goto LABEL_13;
        }
      }

      else
      {
        [toCopy setInputNormalBuffer:0];
      }

      v17 = 1;
      goto LABEL_15;
    }

    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = 136380931;
      v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
      v34 = 1025;
      v35 = 72;
      v14 = " %{private}s:%{private}d *** Failed to copy image input for SIImageInputData ***";
      goto LABEL_13;
    }
  }

  else
  {
    v13 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = 136380931;
      v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
      v34 = 1025;
      v35 = 52;
      v14 = " %{private}s:%{private}d *** Trying to copy a nil SIImageInputData ***";
LABEL_13:
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, v14, &v32, 0x12u);
    }
  }

LABEL_14:

  v17 = 0;
LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (__n128)deviceTransform
{
  result = *(self + 64);
  v2 = *(self + 80);
  v3 = *(self + 96);
  v4 = *(self + 112);
  return result;
}

- (__n128)setDeviceTransform:(__n128)transform
{
  result[4] = a2;
  result[5] = transform;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (__n128)worldFromDevice
{
  result = *(self + 128);
  v2 = *(self + 144);
  v3 = *(self + 160);
  v4 = *(self + 176);
  return result;
}

- (__n128)setWorldFromDevice:(__n128)device
{
  result[8] = a2;
  result[9] = device;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)deviceFromCamera
{
  result = *(self + 192);
  v2 = *(self + 208);
  v3 = *(self + 224);
  v4 = *(self + 240);
  return result;
}

- (__n128)setDeviceFromCamera:(__n128)camera
{
  result[12] = a2;
  result[13] = camera;
  result[14] = a4;
  result[15] = a5;
  return result;
}

@end