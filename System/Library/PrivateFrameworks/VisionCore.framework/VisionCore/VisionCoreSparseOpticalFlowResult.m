@interface VisionCoreSparseOpticalFlowResult
- (VisionCoreSparseOpticalFlowResult)initWithQuadUUID:(id)a3 srcKeypoints:(id)a4 dstKeypoints:(id)a5;
@end

@implementation VisionCoreSparseOpticalFlowResult

- (VisionCoreSparseOpticalFlowResult)initWithQuadUUID:(id)a3 srcKeypoints:(id)a4 dstKeypoints:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = VisionCoreSparseOpticalFlowResult;
  v12 = [(VisionCoreSparseOpticalFlowResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    v14 = [v10 copy];
    srcPts = v13->_srcPts;
    v13->_srcPts = v14;

    v16 = [v11 copy];
    dstPts = v13->_dstPts;
    v13->_dstPts = v16;
  }

  return v13;
}

@end