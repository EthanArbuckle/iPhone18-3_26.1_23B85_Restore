@interface VELensFlareMitigationConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (VELensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
- (void)downloadAssetWithCompletionHandler:(id)handler;
@end

@implementation VELensFlareMitigationConfiguration

- (VELensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v19.receiver = self;
  v19.super_class = VELensFlareMitigationConfiguration;
  v12 = [(VELensFlareMitigationConfiguration *)&v19 init];
  if (!v12)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_11:
    v17 = 0;
    goto LABEL_6;
  }

  if ((width - 4097) <= 0xFFFFFFFFFFFFEFFFLL)
  {
    NSLog(&cfstr_InvalidInputWi.isa);
    goto LABEL_11;
  }

  if ((height - 2161) <= 0xFFFFFFFFFFFFF78FLL)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_11;
  }

  if (![VELensFlareMitigationConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidVe_4.isa, revision);
    goto LABEL_11;
  }

  v12->_usePrecomputedFlow = flow;
  v12->_qualityPrioritization = prioritization;
  v12->_frameWidth = width;
  v12->_frameHeight = height;
  v12->_revision = revision;
  v13 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v12->_framePreferredPixelFormats;
  v12->_framePreferredPixelFormats = v13;

  v15 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v12->_frameSupportedPixelFormats;
  v12->_frameSupportedPixelFormats = v15;

  v17 = v12;
LABEL_6:

  return v17;
}

+ (int64_t)defaultRevision
{
  v2 = +[VELensFlareMitigationConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[VELensFlareMitigationConfiguration supportedRevisions];
  LOBYTE(revision) = [v4 containsIndex:revision];

  return revision;
}

- (void)downloadAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x277D045C0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__VELensFlareMitigationConfiguration_downloadAssetWithCompletionHandler___block_invoke;
  v6[3] = &unk_279E171B8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 downloadAssetWithCompletionHandler:v6];
}

uint64_t __73__VELensFlareMitigationConfiguration_downloadAssetWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end