@interface PISegmentationInwardFillProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
@end

@implementation PISegmentationInwardFillProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = [a3 objectAtIndexedSubscript:0];
  v10 = [v8 metalCommandBuffer];
  v11 = [v9 metalTexture];
  v12 = [v8 metalTexture];

  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v12 == 0;
  v15 = !v14;
  if (v14)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x1E69B3A48] invalidError:@"Metal unavailable" object:0];
    }
  }

  else
  {
    [PIParallaxInwardFillKernel fillSourceTexture:v11 intoDestinationTexture:v12 withCommandBuffer:v10];
  }

  return v15;
}

@end