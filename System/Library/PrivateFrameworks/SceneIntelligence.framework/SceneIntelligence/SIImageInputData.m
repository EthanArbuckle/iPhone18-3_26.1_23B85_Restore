@interface SIImageInputData
- (BOOL)copyDataTo:(id)a3;
- (SIImageInputData)init;
- (__n128)deviceFromCamera;
- (__n128)deviceTransform;
- (__n128)setDeviceFromCamera:(__n128)a3;
- (__n128)setDeviceTransform:(__n128)a3;
- (__n128)setWorldFromDevice:(__n128)a3;
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

- (BOOL)copyDataTo:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    [(SIImageInputData *)self worldFromDevice];
    [v4 setWorldFromDevice:?];
    [(SIImageInputData *)self deviceTransform];
    [v4 setDeviceTransform:?];
    if (![v4 inputImageBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputImageBuffer](self, "inputImageBuffer"), objc_msgSend(v4, "inputImageBuffer")) & 1) == 0)
    {
      Width = CVPixelBufferGetWidth([(SIImageInputData *)self inputImageBuffer]);
      Height = CVPixelBufferGetHeight([(SIImageInputData *)self inputImageBuffer]);
      PixelFormatType = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputImageBuffer]);
      v8 = [(SIImageInputData *)self isIOSurfaceBacked];
      v9 = SIPixelFormatToStr(PixelFormatType);
      v10 = [v9 isEqualToString:@"444f"];
      v11 = [(SIImageInputData *)self inputImageBuffer];
      if (v10)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v11, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(v11);
      }

      v15 = BytesPerRowOfPlane;

      v16 = SICreateCVPixelBufferWithCustomStride(Width, Height, PixelFormatType, v15, v8);
      [v4 setInputImageBuffer:v16];
      CVPixelBufferRelease(v16);
    }

    if (!SIPixelBufferCopy(-[SIImageInputData inputImageBuffer](self, "inputImageBuffer"), [v4 inputImageBuffer]))
    {
      if ([(SIImageInputData *)self inputDepthBuffer])
      {
        if (![v4 inputDepthBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputDepthBuffer](self, "inputDepthBuffer"), objc_msgSend(v4, "inputDepthBuffer")) & 1) == 0)
        {
          v20 = CVPixelBufferGetWidth([(SIImageInputData *)self inputDepthBuffer]);
          v21 = CVPixelBufferGetHeight([(SIImageInputData *)self inputDepthBuffer]);
          v22 = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputDepthBuffer]);
          v23 = [(SIImageInputData *)self isIOSurfaceBacked];
          BytesPerRow = CVPixelBufferGetBytesPerRow([(SIImageInputData *)self inputDepthBuffer]);
          v25 = SICreateCVPixelBufferWithCustomStride(v20, v21, v22, BytesPerRow, v23);
          [v4 setInputDepthBuffer:v25];
          CVPixelBufferRelease(v25);
        }

        if (SIPixelBufferCopy(-[SIImageInputData inputDepthBuffer](self, "inputDepthBuffer"), [v4 inputDepthBuffer]))
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
        [v4 setInputDepthBuffer:0];
      }

      if ([(SIImageInputData *)self inputNormalBuffer])
      {
        if (![v4 inputNormalBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputNormalBuffer](self, "inputNormalBuffer"), objc_msgSend(v4, "inputNormalBuffer")) & 1) == 0)
        {
          v26 = CVPixelBufferGetWidth([(SIImageInputData *)self inputNormalBuffer]);
          v27 = CVPixelBufferGetHeight([(SIImageInputData *)self inputNormalBuffer]);
          v28 = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputNormalBuffer]);
          v29 = [(SIImageInputData *)self isIOSurfaceBacked];
          v30 = CVPixelBufferGetBytesPerRow([(SIImageInputData *)self inputNormalBuffer]);
          v31 = SICreateCVPixelBufferWithCustomStride(v26, v27, v28, v30, v29);
          [v4 setInputNormalBuffer:v31];
          CVPixelBufferRelease(v31);
        }

        if (SIPixelBufferCopy(-[SIImageInputData inputNormalBuffer](self, "inputNormalBuffer"), [v4 inputNormalBuffer]))
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
        [v4 setInputNormalBuffer:0];
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
  result = *(a1 + 64);
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  v4 = *(a1 + 112);
  return result;
}

- (__n128)setDeviceTransform:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (__n128)worldFromDevice
{
  result = *(a1 + 128);
  v2 = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 176);
  return result;
}

- (__n128)setWorldFromDevice:(__n128)a3
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)deviceFromCamera
{
  result = *(a1 + 192);
  v2 = *(a1 + 208);
  v3 = *(a1 + 224);
  v4 = *(a1 + 240);
  return result;
}

- (__n128)setDeviceFromCamera:(__n128)a3
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  result[15] = a5;
  return result;
}

@end