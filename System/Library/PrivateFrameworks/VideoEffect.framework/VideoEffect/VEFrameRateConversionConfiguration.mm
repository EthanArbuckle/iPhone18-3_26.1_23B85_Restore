@interface VEFrameRateConversionConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (VEFrameRateConversionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
@end

@implementation VEFrameRateConversionConfiguration

- (VEFrameRateConversionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v19.receiver = self;
  v19.super_class = VEFrameRateConversionConfiguration;
  v12 = [(VEFrameRateConversionConfiguration *)&v19 init];
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

  if (![VEFrameRateConversionConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidVe_2.isa, revision);
    goto LABEL_11;
  }

  v12->_frameWidth = width;
  v12->_frameHeight = height;
  v12->_usePrecomputedFlow = flow;
  v12->_qualityPrioritization = prioritization;
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
  v2 = +[VEFrameRateConversionConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[VEFrameRateConversionConfiguration supportedRevisions];
  v5 = [v4 containsIndex:revision];
  if (revision == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end