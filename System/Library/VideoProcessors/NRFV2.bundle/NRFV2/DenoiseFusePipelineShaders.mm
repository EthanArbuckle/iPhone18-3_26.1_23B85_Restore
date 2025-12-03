@interface DenoiseFusePipelineShaders
- (DenoiseFusePipelineShaders)initWithMetal:(id)metal;
@end

@implementation DenoiseFusePipelineShaders

- (DenoiseFusePipelineShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v17.receiver = self;
  v17.super_class = DenoiseFusePipelineShaders;
  v6 = [(DenoiseFusePipelineShaders *)&v17 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"kernelPickRandomSamples", 0);
  pickRandomSamples = v6->_pickRandomSamples;
  v6->_pickRandomSamples = v7;

  if (!v6->_pickRandomSamples)
  {
    sub_29587F920();
LABEL_10:
    v15 = 0;
    goto LABEL_6;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v9, @"adjustEvmPyramidColor", 0);
  adjustEvmPyramidColor = v6->_adjustEvmPyramidColor;
  v6->_adjustEvmPyramidColor = v10;

  if (!v6->_adjustEvmPyramidColor)
  {
    sub_29587F894();
    goto LABEL_10;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v12, @"stationaryDownsampleForInference", 0);
  downsampleInference = v6->_downsampleInference;
  v6->_downsampleInference = v13;

  if (!v6->_downsampleInference)
  {
    sub_29587F808();
    goto LABEL_10;
  }

LABEL_5:
  v15 = v6;
LABEL_6:

  return v15;
}

@end