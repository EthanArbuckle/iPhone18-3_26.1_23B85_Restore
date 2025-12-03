@interface PISegmentationInwardFillProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation PISegmentationInwardFillProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  outputCopy = output;
  v9 = [inputs objectAtIndexedSubscript:0];
  metalCommandBuffer = [outputCopy metalCommandBuffer];
  metalTexture = [v9 metalTexture];
  metalTexture2 = [outputCopy metalTexture];

  if (metalCommandBuffer)
  {
    v13 = metalTexture == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || metalTexture2 == 0;
  v15 = !v14;
  if (v14)
  {
    if (error)
    {
      *error = [MEMORY[0x1E69B3A48] invalidError:@"Metal unavailable" object:0];
    }
  }

  else
  {
    [PIParallaxInwardFillKernel fillSourceTexture:metalTexture intoDestinationTexture:metalTexture2 withCommandBuffer:metalCommandBuffer];
  }

  return v15;
}

@end