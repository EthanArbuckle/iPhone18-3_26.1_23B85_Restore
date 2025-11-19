@interface VESuperResolutionConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (BOOL)isSupportedScaleFactor:(int64_t)a3;
+ (int64_t)defaultRevision;
- (VESuperResolutionConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(int64_t)a5 inputType:(int64_t)a6 usePrecomputedFlow:(BOOL)a7 qualityPrioritization:(int64_t)a8 revision:(int64_t)a9;
- (void)downloadAssetWithCompletionHandler:(id)a3;
@end

@implementation VESuperResolutionConfiguration

- (VESuperResolutionConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(int64_t)a5 inputType:(int64_t)a6 usePrecomputedFlow:(BOOL)a7 qualityPrioritization:(int64_t)a8 revision:(int64_t)a9
{
  v22.receiver = self;
  v22.super_class = VESuperResolutionConfiguration;
  v15 = [(VESuperResolutionConfiguration *)&v22 init];
  if (!v15)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_15;
  }

  if (a6 == 1)
  {
    if ((a3 - 1441) <= 0xFFFFFFFFFFFFFA5FLL)
    {
LABEL_4:
      NSLog(&cfstr_InvalidInputWi.isa);
LABEL_15:
      v20 = 0;
      goto LABEL_10;
    }
  }

  else if ((a3 - 1921) <= 0xFFFFFFFFFFFFF87FLL)
  {
    goto LABEL_4;
  }

  if ((a4 - 1081) <= 0xFFFFFFFFFFFFFBC7)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_15;
  }

  if (![VESuperResolutionConfiguration isSupportedRevision:a9])
  {
    NSLog(&cfstr_ErrorInvalidVe.isa, a9);
    goto LABEL_15;
  }

  if (![VESuperResolutionConfiguration isSupportedScaleFactor:a5])
  {
    NSLog(&cfstr_ErrorInvalidVe_0.isa, a5);
    goto LABEL_15;
  }

  v15->_frameHeight = a4;
  v15->_inputType = a6;
  v15->_usePrecomputedFlow = a7;
  v15->_qualityPrioritization = a8;
  v15->_frameWidth = a3;
  v15->_scaleFactor = a5;
  v15->_revision = a9;
  v16 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v15->_framePreferredPixelFormats;
  v15->_framePreferredPixelFormats = v16;

  v18 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v15->_frameSupportedPixelFormats;
  v15->_frameSupportedPixelFormats = v18;

  v20 = v15;
LABEL_10:

  return v20;
}

+ (int64_t)defaultRevision
{
  v2 = +[VESuperResolutionConfiguration supportedRevisions];
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[VESuperResolutionConfiguration supportedRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

- (void)downloadAssetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D04620];
  inputType = self->_inputType;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__VESuperResolutionConfiguration_downloadAssetWithCompletionHandler___block_invoke;
  v8[3] = &unk_279E170F0;
  v9 = v4;
  v7 = v4;
  [v5 downloadMobileAssetWithInputType:inputType withCompletionHandler:v8];
}

uint64_t __69__VESuperResolutionConfiguration_downloadAssetWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)isSupportedScaleFactor:(int64_t)a3
{
  v4 = +[VESuperResolutionConfiguration supportedScaleFactors];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end