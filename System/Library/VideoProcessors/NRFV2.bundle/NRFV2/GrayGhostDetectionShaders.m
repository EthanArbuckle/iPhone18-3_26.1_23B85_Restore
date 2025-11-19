@interface GrayGhostDetectionShaders
- (GrayGhostDetectionShaders)initWithMetal:(id)a3;
@end

@implementation GrayGhostDetectionShaders

- (GrayGhostDetectionShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GrayGhostDetectionShaders;
  v6 = [(GrayGhostDetectionShaders *)&v11 init];
  if (v6 && (objc_msgSend_computePipelineStateFor_constants_(v4, v5, @"computeGrayGhostCount", 0), v7 = objc_claimAutoreleasedReturnValue(), computeGrayGhostCount = v6->_computeGrayGhostCount, v6->_computeGrayGhostCount = v7, computeGrayGhostCount, !v6->_computeGrayGhostCount))
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