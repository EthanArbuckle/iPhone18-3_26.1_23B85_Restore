@interface GlobalDistortionCorrectionShaders
- (GlobalDistortionCorrectionShaders)initWithMetal:(id)metal;
@end

@implementation GlobalDistortionCorrectionShaders

- (GlobalDistortionCorrectionShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v26.receiver = self;
  v26.super_class = GlobalDistortionCorrectionShaders;
  v6 = [(GlobalDistortionCorrectionShaders *)&v26 init];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"kernelGlobalDistortionCorrectionHWCSC", 0);
  kernelGlobalDistortionCorrectionHWCSC = v6->_kernelGlobalDistortionCorrectionHWCSC;
  v6->_kernelGlobalDistortionCorrectionHWCSC = v7;

  if (!v6->_kernelGlobalDistortionCorrectionHWCSC)
  {
    sub_2958C2B5C();
LABEL_16:
    v24 = 0;
    goto LABEL_9;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v9, @"kernelGlobalDistortionCorrectionCopy", 0);
  kernelGlobalDistortionCorrectionCopy = v6->_kernelGlobalDistortionCorrectionCopy;
  v6->_kernelGlobalDistortionCorrectionCopy = v10;

  if (!v6->_kernelGlobalDistortionCorrectionCopy)
  {
    sub_2958C2AD0();
    goto LABEL_16;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v12, @"kernelGlobalDistortionCorrectionSWCSCtoLinearRGB", 0);
  kernelGlobalDistortionCorrectionSWCSCtoLinearRGB = v6->_kernelGlobalDistortionCorrectionSWCSCtoLinearRGB;
  v6->_kernelGlobalDistortionCorrectionSWCSCtoLinearRGB = v13;

  if (!v6->_kernelGlobalDistortionCorrectionSWCSCtoLinearRGB)
  {
    sub_2958C2A44();
    goto LABEL_16;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v15, @"kernelGlobalDistortionCorrectionLinearRGB", 0);
  kernelGlobalDistortionCorrectionLinearRGB = v6->_kernelGlobalDistortionCorrectionLinearRGB;
  v6->_kernelGlobalDistortionCorrectionLinearRGB = v16;

  if (!v6->_kernelGlobalDistortionCorrectionLinearRGB)
  {
    sub_2958C29B8();
    goto LABEL_16;
  }

  v19 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v18, @"kernelPack10BitY", 0);
  kernelPack10BitY = v6->_kernelPack10BitY;
  v6->_kernelPack10BitY = v19;

  if (!v6->_kernelPack10BitY)
  {
    sub_2958C292C();
    goto LABEL_16;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v21, @"kernelPack10BitCbCr", 0);
  kernelPack10BitCbCr = v6->_kernelPack10BitCbCr;
  v6->_kernelPack10BitCbCr = v22;

  if (!v6->_kernelPack10BitCbCr)
  {
    sub_2958C28A0();
    goto LABEL_16;
  }

LABEL_8:
  v24 = v6;
LABEL_9:

  return v24;
}

@end