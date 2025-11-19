@interface WarpShaders
- (WarpShaders)initWithMetal:(id)a3;
@end

@implementation WarpShaders

- (WarpShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = WarpShaders;
  v6 = [(WarpShaders *)&v15 init];
  if (!v6)
  {
    sub_2958B0DDC();
    goto LABEL_10;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(v4, v5, @"warpCompute", 0);
  warpComputePipeline = v6->warpComputePipeline;
  v6->warpComputePipeline = v7;

  if (!v6->warpComputePipeline)
  {
    sub_2958B0D40(&v16);
    goto LABEL_9;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(v4, v9, @"warpComputeYCbCr", 0);
  warpComputePipelineYCbCr = v6->warpComputePipelineYCbCr;
  v6->warpComputePipelineYCbCr = v10;

  if (!v6->warpComputePipelineYCbCr)
  {
    sub_2958B0CA4(&v16);
LABEL_9:
    if (!v16)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v12 = v6;
LABEL_5:
  v13 = v12;

  return v13;
}

@end