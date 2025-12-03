@interface BlinkDetectionShaders
- (BlinkDetectionShaders)initWithMetal:(id)metal;
@end

@implementation BlinkDetectionShaders

- (BlinkDetectionShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v12.receiver = self;
  v12.super_class = BlinkDetectionShaders;
  v6 = [(BlinkDetectionShaders *)&v12 init];
  if (v6)
  {
    v7 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v5, @"BlinkDetection", 0);
    blinkDetectionComputePipeline = v6->blinkDetectionComputePipeline;
    v6->blinkDetectionComputePipeline = v7;

    v9 = v6;
    if (!v6->blinkDetectionComputePipeline)
    {
      sub_295894138(v6, &v13);
      v9 = v13;
    }
  }

  else
  {
    sub_2958941E8();
    v9 = 0;
  }

  v10 = v9;

  return v10;
}

@end