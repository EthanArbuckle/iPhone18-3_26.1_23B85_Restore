@interface VEMotionBlurConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (VEMotionBlurConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
@end

@implementation VEMotionBlurConfiguration

- (VEMotionBlurConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v19.receiver = self;
  v19.super_class = VEMotionBlurConfiguration;
  v12 = [(VEMotionBlurConfiguration *)&v19 init];
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

  if (![VEMotionBlurConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidVe_3.isa, revision);
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
  v2 = +[VEMotionBlurConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[VEMotionBlurConfiguration supportedRevisions];
  LOBYTE(revision) = [v4 containsIndex:revision];

  return revision;
}

@end