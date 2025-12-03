@interface VEOpticalFlowConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (VEOpticalFlowConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
- (void)updateOpticalFlowDimensions;
@end

@implementation VEOpticalFlowConfiguration

- (void)updateOpticalFlowDimensions
{
  [MEMORY[0x277D045E0] getFlowBufferDimensionsFromFrameWidth:self->_frameWidth frameHeight:self->_frameHeight revision:self->_revision];
  self->_flowBufferWidth = v3;
  self->_flowBufferHeight = v4;
}

+ (int64_t)defaultRevision
{
  v2 = +[VEOpticalFlowConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[VEOpticalFlowConfiguration supportedRevisions];
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

- (VEOpticalFlowConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v18.receiver = self;
  v18.super_class = VEOpticalFlowConfiguration;
  v10 = [(VEOpticalFlowConfiguration *)&v18 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if ((width - 4097) <= 0xFFFFFFFFFFFFEFFFLL)
  {
    NSLog(&cfstr_InvalidInputWi.isa);
LABEL_13:
    v16 = 0;
    goto LABEL_9;
  }

  if ((height - 2161) <= 0xFFFFFFFFFFFFF78FLL)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_13;
  }

  if (![VEOpticalFlowConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidVe_1.isa, revision);
    goto LABEL_13;
  }

  v10->_frameWidth = width;
  v10->_frameHeight = height;
  v10->_qualityPrioritization = prioritization;
  v10->_revision = revision;
  if (revision == -1)
  {
    v11 = 1278226536;
  }

  else
  {
    v11 = 843264104;
  }

  v10->_flowBufferPixelFormat = v11;
  v12 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v10->_framePreferredPixelFormats;
  v10->_framePreferredPixelFormats = v12;

  v14 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v10->_frameSupportedPixelFormats;
  v10->_frameSupportedPixelFormats = v14;

  [(VEOpticalFlowConfiguration *)v10 updateOpticalFlowDimensions];
  v16 = v10;
LABEL_9:

  return v16;
}

@end