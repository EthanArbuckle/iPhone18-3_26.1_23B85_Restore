@interface GrayGhostDetectionShaders
- (GrayGhostDetectionShaders)initWithMetal:(id)metal;
@end

@implementation GrayGhostDetectionShaders

- (GrayGhostDetectionShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v11.receiver = self;
  v11.super_class = GrayGhostDetectionShaders;
  v6 = [(GrayGhostDetectionShaders *)&v11 init];
  if (v6 && (objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"computeGrayGhostCount", 0), v7 = objc_claimAutoreleasedReturnValue(), computeGrayGhostCount = v6->_computeGrayGhostCount, v6->_computeGrayGhostCount = v7, computeGrayGhostCount, !v6->_computeGrayGhostCount))
  {
    sub_29589CDA4();
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

@end