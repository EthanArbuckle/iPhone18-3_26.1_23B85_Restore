@interface SINoOpScaler
- (BOOL)scaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)createScaledImage:(__CVBuffer *)image;
@end

@implementation SINoOpScaler

- (BOOL)scaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
{
  if (image)
  {
    [SINoOpScaler scaleImage:outputBuffer:];
  }

  return 0;
}

- (__CVBuffer)createScaledImage:(__CVBuffer *)image
{
  v12 = *MEMORY[0x277D85DE8];
  if (image)
  {
    if (![(SIBaseScaler *)self _imageConformsToOutput:?])
    {
      [SINoOpScaler createScaledImage:];
    }

    v4 = *MEMORY[0x277D85DE8];

    return CVPixelBufferRetain(image);
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136380931;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SINoOpScaler.m";
      v10 = 1025;
      v11 = 27;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Error! Scaler gets nil input. ***", &v8, 0x12u);
    }

    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (void)scaleImage:outputBuffer:.cold.1()
{
  v0 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_0(&dword_21DE0D000, v1, v2, " %{private}s:%{private}d *** Scaling not implemented. ***", v3, v4, v5, v6, 3u);
  }

  abort();
}

- (void)createScaledImage:.cold.1()
{
  v0 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_0(&dword_21DE0D000, v1, v2, " %{private}s:%{private}d *** Image scaling not supported. ***", v3, v4, v5, v6, 3u);
  }

  abort();
}

@end