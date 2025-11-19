@interface VELensFlareMitigationConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (int64_t)defaultRevision;
- (VELensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7;
- (void)downloadAssetWithCompletionHandler:(id)a3;
@end

@implementation VELensFlareMitigationConfiguration

- (VELensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7
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

  if ((a3 - 4097) <= 0xFFFFFFFFFFFFEFFFLL)
  {
    NSLog(&cfstr_InvalidInputWi.isa);
    goto LABEL_11;
  }

  if ((a4 - 2161) <= 0xFFFFFFFFFFFFF78FLL)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_11;
  }

  if (![VELensFlareMitigationConfiguration isSupportedRevision:a7])
  {
    NSLog(&cfstr_ErrorInvalidVe_4.isa, a7);
    goto LABEL_11;
  }

  v12->_usePrecomputedFlow = a5;
  v12->_qualityPrioritization = a6;
  v12->_frameWidth = a3;
  v12->_frameHeight = a4;
  v12->_revision = a7;
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
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[VELensFlareMitigationConfiguration supportedRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

- (void)downloadAssetWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D045C0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__VELensFlareMitigationConfiguration_downloadAssetWithCompletionHandler___block_invoke;
  v6[3] = &unk_279E171B8;
  v7 = v3;
  v5 = v3;
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