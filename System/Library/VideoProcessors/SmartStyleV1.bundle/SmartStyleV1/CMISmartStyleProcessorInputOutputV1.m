@interface CMISmartStyleProcessorInputOutputV1
- (CGRect)deltaMapRegionToRenderRect;
- (CGRect)inputCropRectWithinPrimaryCaptureRect;
- (CGRect)inputLinearCropRect;
- (CGRect)inputPersonMaskCropRect;
- (CGRect)inputReferenceForDeltaMapComputationCropRect;
- (CGRect)inputSkinMaskCropRect;
- (CGRect)inputSkyMaskCropRect;
- (CGRect)inputUnstyledCropRect;
- (CGRect)inputUnstyledThumbnailCropRect;
- (CGRect)outputDeltaMapCropRect;
- (CGRect)outputRenderRect;
- (CGRect)outputStyledCropRect;
- (CGRect)primaryCaptureRect;
- (CMISmartStyleProcessorInputOutputV1)init;
- (__n128)setSpotlightAffineTransform:(__n128)a3;
- (__n128)spotlightAffineTransform;
- (void)dealloc;
- (void)setInputDeltaMapPixelBuffer:(__CVBuffer *)a3;
- (void)setInputGainMapPixelBuffer:(__CVBuffer *)a3;
- (void)setInputLearningTargetPixelBuffer:(__CVBuffer *)a3;
- (void)setInputLearningTargetThumbnailPixelBuffer:(__CVBuffer *)a3;
- (void)setInputLinearPixelBuffer:(__CVBuffer *)a3;
- (void)setInputPersonMaskPixelBuffer:(__CVBuffer *)a3;
- (void)setInputReferenceForDeltaMapComputationPixelBuffer:(__CVBuffer *)a3;
- (void)setInputSRLPixelBuffer:(__CVBuffer *)a3;
- (void)setInputSkinMaskPixelBuffer:(__CVBuffer *)a3;
- (void)setInputSkyMaskPixelBuffer:(__CVBuffer *)a3;
- (void)setInputSmartStyle:(id)a3;
- (void)setInputStyleCoefficientsPixelBuffer:(__CVBuffer *)a3;
- (void)setInputUnstyledPixelBuffer:(__CVBuffer *)a3;
- (void)setInputUnstyledThumbnailPixelBuffer:(__CVBuffer *)a3;
- (void)setOutputDeltaMapPixelBuffer:(__CVBuffer *)a3;
- (void)setOutputGainMapPixelBuffer:(__CVBuffer *)a3;
- (void)setOutputLearnedStyleCoefficientsPixelBuffer:(__CVBuffer *)a3;
- (void)setOutputSmallLightMapPixelBuffer:(__CVBuffer *)a3;
- (void)setOutputSmallLinearLightMapPixelBuffer:(__CVBuffer *)a3;
- (void)setOutputStyledPixelBuffer:(__CVBuffer *)a3;
@end

@implementation CMISmartStyleProcessorInputOutputV1

- (CMISmartStyleProcessorInputOutputV1)init
{
  v7.receiver = self;
  v7.super_class = CMISmartStyleProcessorInputOutputV1;
  v2 = [(CMISmartStyleProcessorInputOutputV1 *)&v7 init];
  v3 = v2;
  if (v2)
  {
    LODWORD(v2[1].super.isa) = 1065353216;
    v2[1]._globalLinearSystemMixFactor = 1.0;
    v2->_outputSRLCurveParameter = -1.0;
    outputSRLStats = v2->_outputSRLStats;
    v2->_outputSRLStats = 0;

    v3->_personMasksValidHint = -1.0;
    v5 = v3;
  }

  else
  {
    [CMISmartStyleProcessorInputOutputV1 init];
  }

  return v3;
}

- (void)dealloc
{
  inputUnstyledPixelBuffer = self->_inputUnstyledPixelBuffer;
  if (inputUnstyledPixelBuffer)
  {
    CFRelease(inputUnstyledPixelBuffer);
  }

  inputUnstyledThumbnailPixelBuffer = self->_inputUnstyledThumbnailPixelBuffer;
  if (inputUnstyledThumbnailPixelBuffer)
  {
    CFRelease(inputUnstyledThumbnailPixelBuffer);
  }

  inputLearningTargetPixelBuffer = self->_inputLearningTargetPixelBuffer;
  if (inputLearningTargetPixelBuffer)
  {
    CFRelease(inputLearningTargetPixelBuffer);
  }

  inputLearningTargetThumbnailPixelBuffer = self->_inputLearningTargetThumbnailPixelBuffer;
  if (inputLearningTargetThumbnailPixelBuffer)
  {
    CFRelease(inputLearningTargetThumbnailPixelBuffer);
  }

  inputLinearPixelBuffer = self->_inputLinearPixelBuffer;
  if (inputLinearPixelBuffer)
  {
    CFRelease(inputLinearPixelBuffer);
  }

  inputGainMapPixelBuffer = self->_inputGainMapPixelBuffer;
  if (inputGainMapPixelBuffer)
  {
    CFRelease(inputGainMapPixelBuffer);
  }

  inputPersonMaskPixelBuffer = self->_inputPersonMaskPixelBuffer;
  if (inputPersonMaskPixelBuffer)
  {
    CFRelease(inputPersonMaskPixelBuffer);
  }

  inputSkinMaskPixelBuffer = self->_inputSkinMaskPixelBuffer;
  if (inputSkinMaskPixelBuffer)
  {
    CFRelease(inputSkinMaskPixelBuffer);
  }

  inputSkyMaskPixelBuffer = self->_inputSkyMaskPixelBuffer;
  if (inputSkyMaskPixelBuffer)
  {
    CFRelease(inputSkyMaskPixelBuffer);
  }

  inputSRLPixelBuffer = self->_inputSRLPixelBuffer;
  if (inputSRLPixelBuffer)
  {
    CFRelease(inputSRLPixelBuffer);
  }

  inputStyleCoefficientsPixelBuffer = self->_inputStyleCoefficientsPixelBuffer;
  if (inputStyleCoefficientsPixelBuffer)
  {
    CFRelease(inputStyleCoefficientsPixelBuffer);
  }

  inputDeltaMapPixelBuffer = self->_inputDeltaMapPixelBuffer;
  if (inputDeltaMapPixelBuffer)
  {
    CFRelease(inputDeltaMapPixelBuffer);
  }

  inputReferenceForDeltaMapComputationPixelBuffer = self->_inputReferenceForDeltaMapComputationPixelBuffer;
  if (inputReferenceForDeltaMapComputationPixelBuffer)
  {
    CFRelease(inputReferenceForDeltaMapComputationPixelBuffer);
  }

  outputStyledPixelBuffer = self->_outputStyledPixelBuffer;
  if (outputStyledPixelBuffer)
  {
    CFRelease(outputStyledPixelBuffer);
  }

  outputGainMapPixelBuffer = self->_outputGainMapPixelBuffer;
  if (outputGainMapPixelBuffer)
  {
    CFRelease(outputGainMapPixelBuffer);
  }

  outputSmallLightMapPixelBuffer = self->_outputSmallLightMapPixelBuffer;
  if (outputSmallLightMapPixelBuffer)
  {
    CFRelease(outputSmallLightMapPixelBuffer);
  }

  outputSmallLinearLightMapPixelBuffer = self->_outputSmallLinearLightMapPixelBuffer;
  if (outputSmallLinearLightMapPixelBuffer)
  {
    CFRelease(outputSmallLinearLightMapPixelBuffer);
  }

  outputDeltaMapPixelBuffer = self->_outputDeltaMapPixelBuffer;
  if (outputDeltaMapPixelBuffer)
  {
    CFRelease(outputDeltaMapPixelBuffer);
  }

  outputLearnedStyleCoefficientsPixelBuffer = self->_outputLearnedStyleCoefficientsPixelBuffer;
  if (outputLearnedStyleCoefficientsPixelBuffer)
  {
    CFRelease(outputLearnedStyleCoefficientsPixelBuffer);
  }

  v22.receiver = self;
  v22.super_class = CMISmartStyleProcessorInputOutputV1;
  [(CMISmartStyleProcessorInputOutputV1 *)&v22 dealloc];
}

- (void)setInputSmartStyle:(id)a3
{
  v5 = a3;
  if ([v5 smartStyleVersion] == 1)
  {
    objc_storeStrong(&self->_inputSmartStyle, a3);
  }
}

- (void)setInputUnstyledPixelBuffer:(__CVBuffer *)a3
{
  inputUnstyledPixelBuffer = self->_inputUnstyledPixelBuffer;
  self->_inputUnstyledPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputUnstyledPixelBuffer)
  {

    CFRelease(inputUnstyledPixelBuffer);
  }
}

- (void)setInputUnstyledThumbnailPixelBuffer:(__CVBuffer *)a3
{
  inputUnstyledThumbnailPixelBuffer = self->_inputUnstyledThumbnailPixelBuffer;
  self->_inputUnstyledThumbnailPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputUnstyledThumbnailPixelBuffer)
  {

    CFRelease(inputUnstyledThumbnailPixelBuffer);
  }
}

- (void)setInputLearningTargetPixelBuffer:(__CVBuffer *)a3
{
  inputLearningTargetPixelBuffer = self->_inputLearningTargetPixelBuffer;
  self->_inputLearningTargetPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputLearningTargetPixelBuffer)
  {

    CFRelease(inputLearningTargetPixelBuffer);
  }
}

- (void)setInputLearningTargetThumbnailPixelBuffer:(__CVBuffer *)a3
{
  inputLearningTargetThumbnailPixelBuffer = self->_inputLearningTargetThumbnailPixelBuffer;
  self->_inputLearningTargetThumbnailPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputLearningTargetThumbnailPixelBuffer)
  {

    CFRelease(inputLearningTargetThumbnailPixelBuffer);
  }
}

- (void)setInputLinearPixelBuffer:(__CVBuffer *)a3
{
  inputLinearPixelBuffer = self->_inputLinearPixelBuffer;
  self->_inputLinearPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputLinearPixelBuffer)
  {

    CFRelease(inputLinearPixelBuffer);
  }
}

- (void)setInputGainMapPixelBuffer:(__CVBuffer *)a3
{
  inputGainMapPixelBuffer = self->_inputGainMapPixelBuffer;
  self->_inputGainMapPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputGainMapPixelBuffer)
  {

    CFRelease(inputGainMapPixelBuffer);
  }
}

- (void)setInputDeltaMapPixelBuffer:(__CVBuffer *)a3
{
  inputDeltaMapPixelBuffer = self->_inputDeltaMapPixelBuffer;
  self->_inputDeltaMapPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputDeltaMapPixelBuffer)
  {

    CFRelease(inputDeltaMapPixelBuffer);
  }
}

- (void)setInputReferenceForDeltaMapComputationPixelBuffer:(__CVBuffer *)a3
{
  inputReferenceForDeltaMapComputationPixelBuffer = self->_inputReferenceForDeltaMapComputationPixelBuffer;
  self->_inputReferenceForDeltaMapComputationPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputReferenceForDeltaMapComputationPixelBuffer)
  {

    CFRelease(inputReferenceForDeltaMapComputationPixelBuffer);
  }
}

- (void)setInputPersonMaskPixelBuffer:(__CVBuffer *)a3
{
  inputPersonMaskPixelBuffer = self->_inputPersonMaskPixelBuffer;
  self->_inputPersonMaskPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputPersonMaskPixelBuffer)
  {

    CFRelease(inputPersonMaskPixelBuffer);
  }
}

- (void)setInputSkinMaskPixelBuffer:(__CVBuffer *)a3
{
  inputSkinMaskPixelBuffer = self->_inputSkinMaskPixelBuffer;
  self->_inputSkinMaskPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputSkinMaskPixelBuffer)
  {

    CFRelease(inputSkinMaskPixelBuffer);
  }
}

- (void)setInputSkyMaskPixelBuffer:(__CVBuffer *)a3
{
  inputSkyMaskPixelBuffer = self->_inputSkyMaskPixelBuffer;
  self->_inputSkyMaskPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputSkyMaskPixelBuffer)
  {

    CFRelease(inputSkyMaskPixelBuffer);
  }
}

- (void)setInputSRLPixelBuffer:(__CVBuffer *)a3
{
  inputSRLPixelBuffer = self->_inputSRLPixelBuffer;
  self->_inputSRLPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputSRLPixelBuffer)
  {

    CFRelease(inputSRLPixelBuffer);
  }
}

- (void)setInputStyleCoefficientsPixelBuffer:(__CVBuffer *)a3
{
  inputStyleCoefficientsPixelBuffer = self->_inputStyleCoefficientsPixelBuffer;
  self->_inputStyleCoefficientsPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (inputStyleCoefficientsPixelBuffer)
  {

    CFRelease(inputStyleCoefficientsPixelBuffer);
  }
}

- (void)setOutputStyledPixelBuffer:(__CVBuffer *)a3
{
  outputStyledPixelBuffer = self->_outputStyledPixelBuffer;
  self->_outputStyledPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (outputStyledPixelBuffer)
  {

    CFRelease(outputStyledPixelBuffer);
  }
}

- (void)setOutputGainMapPixelBuffer:(__CVBuffer *)a3
{
  outputGainMapPixelBuffer = self->_outputGainMapPixelBuffer;
  self->_outputGainMapPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (outputGainMapPixelBuffer)
  {

    CFRelease(outputGainMapPixelBuffer);
  }
}

- (void)setOutputSmallLightMapPixelBuffer:(__CVBuffer *)a3
{
  outputSmallLightMapPixelBuffer = self->_outputSmallLightMapPixelBuffer;
  self->_outputSmallLightMapPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (outputSmallLightMapPixelBuffer)
  {

    CFRelease(outputSmallLightMapPixelBuffer);
  }
}

- (void)setOutputSmallLinearLightMapPixelBuffer:(__CVBuffer *)a3
{
  outputSmallLinearLightMapPixelBuffer = self->_outputSmallLinearLightMapPixelBuffer;
  self->_outputSmallLinearLightMapPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (outputSmallLinearLightMapPixelBuffer)
  {

    CFRelease(outputSmallLinearLightMapPixelBuffer);
  }
}

- (void)setOutputLearnedStyleCoefficientsPixelBuffer:(__CVBuffer *)a3
{
  outputLearnedStyleCoefficientsPixelBuffer = self->_outputLearnedStyleCoefficientsPixelBuffer;
  self->_outputLearnedStyleCoefficientsPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (outputLearnedStyleCoefficientsPixelBuffer)
  {

    CFRelease(outputLearnedStyleCoefficientsPixelBuffer);
  }
}

- (void)setOutputDeltaMapPixelBuffer:(__CVBuffer *)a3
{
  outputDeltaMapPixelBuffer = self->_outputDeltaMapPixelBuffer;
  self->_outputDeltaMapPixelBuffer = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (outputDeltaMapPixelBuffer)
  {

    CFRelease(outputDeltaMapPixelBuffer);
  }
}

- (CGRect)inputUnstyledCropRect
{
  x = self->_inputUnstyledCropRect.origin.x;
  y = self->_inputUnstyledCropRect.origin.y;
  width = self->_inputUnstyledCropRect.size.width;
  height = self->_inputUnstyledCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputUnstyledThumbnailCropRect
{
  x = self->_inputUnstyledThumbnailCropRect.origin.x;
  y = self->_inputUnstyledThumbnailCropRect.origin.y;
  width = self->_inputUnstyledThumbnailCropRect.size.width;
  height = self->_inputUnstyledThumbnailCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputLinearCropRect
{
  x = self->_inputLinearCropRect.origin.x;
  y = self->_inputLinearCropRect.origin.y;
  width = self->_inputLinearCropRect.size.width;
  height = self->_inputLinearCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputPersonMaskCropRect
{
  x = self->_inputPersonMaskCropRect.origin.x;
  y = self->_inputPersonMaskCropRect.origin.y;
  width = self->_inputPersonMaskCropRect.size.width;
  height = self->_inputPersonMaskCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputSkinMaskCropRect
{
  x = self->_inputSkinMaskCropRect.origin.x;
  y = self->_inputSkinMaskCropRect.origin.y;
  width = self->_inputSkinMaskCropRect.size.width;
  height = self->_inputSkinMaskCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputSkyMaskCropRect
{
  x = self->_inputSkyMaskCropRect.origin.x;
  y = self->_inputSkyMaskCropRect.origin.y;
  width = self->_inputSkyMaskCropRect.size.width;
  height = self->_inputSkyMaskCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outputStyledCropRect
{
  x = self->_outputStyledCropRect.origin.x;
  y = self->_outputStyledCropRect.origin.y;
  width = self->_outputStyledCropRect.size.width;
  height = self->_outputStyledCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)deltaMapRegionToRenderRect
{
  x = self->_deltaMapRegionToRenderRect.origin.x;
  y = self->_deltaMapRegionToRenderRect.origin.y;
  width = self->_deltaMapRegionToRenderRect.size.width;
  height = self->_deltaMapRegionToRenderRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outputDeltaMapCropRect
{
  x = self->_outputDeltaMapCropRect.origin.x;
  y = self->_outputDeltaMapCropRect.origin.y;
  width = self->_outputDeltaMapCropRect.size.width;
  height = self->_outputDeltaMapCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputReferenceForDeltaMapComputationCropRect
{
  x = self->_inputReferenceForDeltaMapComputationCropRect.origin.x;
  y = self->_inputReferenceForDeltaMapComputationCropRect.origin.y;
  width = self->_inputReferenceForDeltaMapComputationCropRect.size.width;
  height = self->_inputReferenceForDeltaMapComputationCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)primaryCaptureRect
{
  x = self->_primaryCaptureRect.origin.x;
  y = self->_primaryCaptureRect.origin.y;
  width = self->_primaryCaptureRect.size.width;
  height = self->_primaryCaptureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputCropRectWithinPrimaryCaptureRect
{
  x = self->_inputCropRectWithinPrimaryCaptureRect.origin.x;
  y = self->_inputCropRectWithinPrimaryCaptureRect.origin.y;
  width = self->_inputCropRectWithinPrimaryCaptureRect.size.width;
  height = self->_inputCropRectWithinPrimaryCaptureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outputRenderRect
{
  x = self->_outputRenderRect.origin.x;
  y = self->_outputRenderRect.origin.y;
  width = self->_outputRenderRect.size.width;
  height = self->_outputRenderRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)spotlightAffineTransform
{
  result = *(a1 + 688);
  v2 = *(a1 + 704);
  v3 = *(a1 + 720);
  return result;
}

- (__n128)setSpotlightAffineTransform:(__n128)a3
{
  result[43] = a2;
  result[44] = a3;
  result[45] = a4;
  return result;
}

@end