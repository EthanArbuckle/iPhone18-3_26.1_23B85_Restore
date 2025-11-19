@interface VEOpticalFlowConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (int64_t)defaultRevision;
- (VEOpticalFlowConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 qualityPrioritization:(int64_t)a5 revision:(int64_t)a6;
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
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[VEOpticalFlowConfiguration supportedRevisions];
  v5 = [v4 containsIndex:a3];
  if (a3 == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (VEOpticalFlowConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 qualityPrioritization:(int64_t)a5 revision:(int64_t)a6
{
  v18.receiver = self;
  v18.super_class = VEOpticalFlowConfiguration;
  v10 = [(VEOpticalFlowConfiguration *)&v18 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if ((a3 - 4097) <= 0xFFFFFFFFFFFFEFFFLL)
  {
    NSLog(&cfstr_InvalidInputWi.isa);
LABEL_13:
    v16 = 0;
    goto LABEL_9;
  }

  if ((a4 - 2161) <= 0xFFFFFFFFFFFFF78FLL)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_13;
  }

  if (![VEOpticalFlowConfiguration isSupportedRevision:a6])
  {
    NSLog(&cfstr_ErrorInvalidVe_1.isa, a6);
    goto LABEL_13;
  }

  v10->_frameWidth = a3;
  v10->_frameHeight = a4;
  v10->_qualityPrioritization = a5;
  v10->_revision = a6;
  if (a6 == -1)
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