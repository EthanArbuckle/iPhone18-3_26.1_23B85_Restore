@interface MotionDetectionShaders
- (MotionDetectionShaders)initWithMetal:(id)metal;
@end

@implementation MotionDetectionShaders

- (MotionDetectionShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v38.receiver = self;
  v38.super_class = MotionDetectionShaders;
  v6 = [(MotionDetectionShaders *)&v38 init];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"kernelMotionDetectGenClippingMapAndDownscale", 0);
  motionDetectGenClippingMapAndDownscale = v6->_motionDetectGenClippingMapAndDownscale;
  v6->_motionDetectGenClippingMapAndDownscale = v7;

  if (!v6->_motionDetectGenClippingMapAndDownscale)
  {
    sub_295894DC4();
LABEL_24:
    v36 = 0;
    goto LABEL_13;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v9, @"kernelMotionDetectGenClippingMapAndDownscaleLinear", 0);
  motionDetectGenClippingMapAndDownscaleLinear = v6->_motionDetectGenClippingMapAndDownscaleLinear;
  v6->_motionDetectGenClippingMapAndDownscaleLinear = v10;

  if (!v6->_motionDetectGenClippingMapAndDownscaleLinear)
  {
    sub_295894D38();
    goto LABEL_24;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v12, @"motionDetectGradient", 0);
  motionDetectGradient = v6->_motionDetectGradient;
  v6->_motionDetectGradient = v13;

  if (!v6->_motionDetectGradient)
  {
    sub_295894CAC();
    goto LABEL_24;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v15, @"motionDetectWarp", 0);
  motionDetectWarp = v6->_motionDetectWarp;
  v6->_motionDetectWarp = v16;

  if (!v6->_motionDetectWarp)
  {
    sub_295894C20();
    goto LABEL_24;
  }

  v19 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v18, @"motionDetectDilate", 0);
  motionDetectDilate = v6->_motionDetectDilate;
  v6->_motionDetectDilate = v19;

  if (!v6->_motionDetectDilate)
  {
    sub_295894B94();
    goto LABEL_24;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v21, @"motionDetectDiffGradient", 0);
  motionDetectDiffGradient = v6->_motionDetectDiffGradient;
  v6->_motionDetectDiffGradient = v22;

  if (!v6->_motionDetectDiffGradient)
  {
    sub_295894B08();
    goto LABEL_24;
  }

  v25 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v24, @"motionDetectMaxTileAvg", 0);
  motionDetectMaxTileAvg = v6->_motionDetectMaxTileAvg;
  v6->_motionDetectMaxTileAvg = v25;

  if (!v6->_motionDetectMaxTileAvg)
  {
    sub_295894A7C();
    goto LABEL_24;
  }

  v28 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v27, @"motionDetectLLDownscale", 0);
  motionDetectLLDownscale = v6->_motionDetectLLDownscale;
  v6->_motionDetectLLDownscale = v28;

  if (!v6->_motionDetectLLDownscale)
  {
    sub_2958949F0();
    goto LABEL_24;
  }

  v31 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v30, @"motionDetectLL", 0);
  motionDetectLL = v6->_motionDetectLL;
  v6->_motionDetectLL = v31;

  if (!v6->_motionDetectLL)
  {
    sub_295894964();
    goto LABEL_24;
  }

  v34 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v33, @"motionDetectLLSumReduce", 0);
  motionDetectLLSumReduce = v6->_motionDetectLLSumReduce;
  v6->_motionDetectLLSumReduce = v34;

  if (!v6->_motionDetectLLSumReduce)
  {
    sub_2958948D8();
    goto LABEL_24;
  }

LABEL_12:
  v36 = v6;
LABEL_13:

  return v36;
}

@end