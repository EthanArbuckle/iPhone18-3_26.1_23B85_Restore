@interface SIIOUtility
@end

@implementation SIIOUtility

uint64_t __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) BOOLValue])
  {
    return 1;
  }

  if ([*(a1 + 40) BOOLValue])
  {
    if ([*(a1 + 48) BOOLValue])
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if ([*(a1 + 56) BOOLValue])
    {
      return 1;
    }

    if (*(a1 + 64) != 1)
    {
      __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke_cold_1();
    }

    return *(a1 + 72) / *(a1 + 80);
  }
}

void __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke_cold_1()
{
  v0 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v1, v2, " %{private}s:%{private}d *** Pixel format not supported by SIRawImageInfo ***", v3, v4, v5, v6, 3u);
  }

  abort();
}

@end