@interface VESuperResolutionConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (BOOL)isSupportedScaleFactor:(int64_t)factor;
+ (int64_t)defaultRevision;
- (VESuperResolutionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height scaleFactor:(int64_t)factor inputType:(int64_t)type usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
- (void)downloadAssetWithCompletionHandler:(id)handler;
@end

@implementation VESuperResolutionConfiguration

- (VESuperResolutionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height scaleFactor:(int64_t)factor inputType:(int64_t)type usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v22.receiver = self;
  v22.super_class = VESuperResolutionConfiguration;
  v15 = [(VESuperResolutionConfiguration *)&v22 init];
  if (!v15)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_15;
  }

  if (type == 1)
  {
    if ((width - 1441) <= 0xFFFFFFFFFFFFFA5FLL)
    {
LABEL_4:
      NSLog(&cfstr_InvalidInputWi.isa);
LABEL_15:
      v20 = 0;
      goto LABEL_10;
    }
  }

  else if ((width - 1921) <= 0xFFFFFFFFFFFFF87FLL)
  {
    goto LABEL_4;
  }

  if ((height - 1081) <= 0xFFFFFFFFFFFFFBC7)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_15;
  }

  if (![VESuperResolutionConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidVe.isa, revision);
    goto LABEL_15;
  }

  if (![VESuperResolutionConfiguration isSupportedScaleFactor:factor])
  {
    NSLog(&cfstr_ErrorInvalidVe_0.isa, factor);
    goto LABEL_15;
  }

  v15->_frameHeight = height;
  v15->_inputType = type;
  v15->_usePrecomputedFlow = flow;
  v15->_qualityPrioritization = prioritization;
  v15->_frameWidth = width;
  v15->_scaleFactor = factor;
  v15->_revision = revision;
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
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[VESuperResolutionConfiguration supportedRevisions];
  LOBYTE(revision) = [v4 containsIndex:revision];

  return revision;
}

- (void)downloadAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277D04620];
  inputType = self->_inputType;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__VESuperResolutionConfiguration_downloadAssetWithCompletionHandler___block_invoke;
  v8[3] = &unk_279E170F0;
  v9 = handlerCopy;
  v7 = handlerCopy;
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

+ (BOOL)isSupportedScaleFactor:(int64_t)factor
{
  v4 = +[VESuperResolutionConfiguration supportedScaleFactors];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:factor];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end