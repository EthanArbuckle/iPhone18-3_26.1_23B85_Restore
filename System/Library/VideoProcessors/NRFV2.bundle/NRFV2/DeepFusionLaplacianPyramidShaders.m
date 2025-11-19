@interface DeepFusionLaplacianPyramidShaders
- (DeepFusionLaplacianPyramidShaders)initWithMetal:(id)a3;
@end

@implementation DeepFusionLaplacianPyramidShaders

- (DeepFusionLaplacianPyramidShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = DeepFusionLaplacianPyramidShaders;
  v6 = [(DeepFusionLaplacianPyramidShaders *)&v32 init];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(v4, v5, @"boxPyramid5x5", 0);
  krnBoxPyramid5x5 = v6->_krnBoxPyramid5x5;
  v6->_krnBoxPyramid5x5 = v7;

  if (!v6->_krnBoxPyramid5x5)
  {
    sub_2958C8460();
LABEL_20:
    v30 = 0;
    goto LABEL_11;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(v4, v9, @"bilinearPyramid", 0);
  krnBilinearPyramid = v6->_krnBilinearPyramid;
  v6->_krnBilinearPyramid = v10;

  if (!v6->_krnBilinearPyramid)
  {
    sub_2958C83D4();
    goto LABEL_20;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(v4, v12, @"gaussianPyramid5SeparableH", 0);
  krnGaussianPyramid5SeparableH = v6->_krnGaussianPyramid5SeparableH;
  v6->_krnGaussianPyramid5SeparableH = v13;

  if (!v6->_krnGaussianPyramid5SeparableH)
  {
    sub_2958C8348();
    goto LABEL_20;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(v4, v15, @"gaussianPyramid5SeparableV", 0);
  krnGaussianPyramid5SeparableV = v6->_krnGaussianPyramid5SeparableV;
  v6->_krnGaussianPyramid5SeparableV = v16;

  if (!v6->_krnGaussianPyramid5SeparableV)
  {
    sub_2958C82BC();
    goto LABEL_20;
  }

  v19 = objc_msgSend_computePipelineStateFor_constants_(v4, v18, @"laplacianPyramidSubtractionPass", 0);
  krnLaplacianPyramidSubtractionPass = v6->_krnLaplacianPyramidSubtractionPass;
  v6->_krnLaplacianPyramidSubtractionPass = v19;

  if (!v6->_krnLaplacianPyramidSubtractionPass)
  {
    sub_2958C8230();
    goto LABEL_20;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(v4, v21, @"laplacianPyramidGaussianH", 0);
  krnLaplacianGaussianH = v6->_krnLaplacianGaussianH;
  v6->_krnLaplacianGaussianH = v22;

  if (!v6->_krnLaplacianGaussianH)
  {
    sub_2958C81A4();
    goto LABEL_20;
  }

  v25 = objc_msgSend_computePipelineStateFor_constants_(v4, v24, @"laplacianPyramidGaussianV", 0);
  krnLaplacianGaussianV = v6->_krnLaplacianGaussianV;
  v6->_krnLaplacianGaussianV = v25;

  if (!v6->_krnLaplacianGaussianV)
  {
    sub_2958C8118();
    goto LABEL_20;
  }

  v28 = objc_msgSend_computePipelineStateFor_constants_(v4, v27, @"laplacianPyramidGaussianVLap", 0);
  krnLaplacianGaussianVLap = v6->_krnLaplacianGaussianVLap;
  v6->_krnLaplacianGaussianVLap = v28;

  if (!v6->_krnLaplacianGaussianVLap)
  {
    sub_2958C808C();
    goto LABEL_20;
  }

LABEL_10:
  v30 = v6;
LABEL_11:

  return v30;
}

@end