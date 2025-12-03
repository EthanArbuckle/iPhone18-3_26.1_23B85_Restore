@interface VisionCoreSparseOpticalFlowResult
- (VisionCoreSparseOpticalFlowResult)initWithQuadUUID:(id)d srcKeypoints:(id)keypoints dstKeypoints:(id)dstKeypoints;
@end

@implementation VisionCoreSparseOpticalFlowResult

- (VisionCoreSparseOpticalFlowResult)initWithQuadUUID:(id)d srcKeypoints:(id)keypoints dstKeypoints:(id)dstKeypoints
{
  dCopy = d;
  keypointsCopy = keypoints;
  dstKeypointsCopy = dstKeypoints;
  v19.receiver = self;
  v19.super_class = VisionCoreSparseOpticalFlowResult;
  v12 = [(VisionCoreSparseOpticalFlowResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    v14 = [keypointsCopy copy];
    srcPts = v13->_srcPts;
    v13->_srcPts = v14;

    v16 = [dstKeypointsCopy copy];
    dstPts = v13->_dstPts;
    v13->_dstPts = v16;
  }

  return v13;
}

@end