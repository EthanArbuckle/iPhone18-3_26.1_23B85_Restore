@interface ColorCubeCorrectionShaders
- (ColorCubeCorrectionShaders)initWithMetal:(id)metal;
@end

@implementation ColorCubeCorrectionShaders

- (ColorCubeCorrectionShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v15.receiver = self;
  v15.super_class = ColorCubeCorrectionShaders;
  v6 = [(ColorCubeCorrectionShaders *)&v15 init];
  if (!v6)
  {
    sub_29588AF2C();
    goto LABEL_10;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"red_face_fix", 0);
  colorCubeCorrectionComputePipeline = v6->colorCubeCorrectionComputePipeline;
  v6->colorCubeCorrectionComputePipeline = v7;

  if (!v6->colorCubeCorrectionComputePipeline)
  {
    sub_29588AE90(&v16);
    goto LABEL_9;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v9, @"maskedCubeApply", 0);
  maskedColorCubeCorrectionComputePipeline = v6->maskedColorCubeCorrectionComputePipeline;
  v6->maskedColorCubeCorrectionComputePipeline = v10;

  if (!v6->maskedColorCubeCorrectionComputePipeline)
  {
    sub_29588ADF4(&v16);
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