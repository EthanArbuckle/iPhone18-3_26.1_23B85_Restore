@interface SIPeopleSegmentationData
- (CGSize)_resolutionByConfig:(id)config;
- (SIPeopleSegmentationData)initWithConfig:(id)config;
- (SIPeopleSegmentationData)initWithOutputSemanticBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
@end

@implementation SIPeopleSegmentationData

- (SIPeopleSegmentationData)initWithConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = SIPeopleSegmentationData;
  v5 = [(SIPeopleSegmentationData *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(SIPeopleSegmentationData *)v5 _resolutionByConfig:configCopy];
    v6->_segmentation = SICreateCVPixelBuffer(v7, v8, 0x4C303038u, 1);
    v9 = v6;
  }

  return v6;
}

- (SIPeopleSegmentationData)initWithOutputSemanticBuffer:(__CVBuffer *)buffer
{
  v7.receiver = self;
  v7.super_class = SIPeopleSegmentationData;
  v4 = [(SIPeopleSegmentationData *)&v7 init];
  if (v4)
  {
    v4->_segmentation = CVPixelBufferRetain(buffer);
    v5 = v4;
  }

  return v4;
}

- (CGSize)_resolutionByConfig:(id)config
{
  networkModeEnum = [config networkModeEnum];
  v4 = 256.0;
  if (networkModeEnum == 1)
  {
    v5 = 192.0;
  }

  else
  {
    v5 = 256.0;
  }

  if (networkModeEnum != 1)
  {
    v4 = 192.0;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_segmentation);
  v3.receiver = self;
  v3.super_class = SIPeopleSegmentationData;
  [(SIPeopleSegmentationData *)&v3 dealloc];
}

@end