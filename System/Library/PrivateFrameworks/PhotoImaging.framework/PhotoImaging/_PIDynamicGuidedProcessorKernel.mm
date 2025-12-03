@interface _PIDynamicGuidedProcessorKernel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation _PIDynamicGuidedProcessorKernel

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  argumentsCopy = arguments;
  v7 = [argumentsCopy objectForKeyedSubscript:@"imageExtents"];
  if (!v7)
  {
    __assert_rtn("+[_PIDynamicGuidedProcessorKernel roiForInput:arguments:outputRect:]", "PIParallaxStyleRecipe.m", 731, "arguments[@imageExtents]");
  }

  v8 = [argumentsCopy objectForKeyedSubscript:@"imageExtents"];
  if ([v8 count] <= input)
  {
    __assert_rtn("+[_PIDynamicGuidedProcessorKernel roiForInput:arguments:outputRect:]", "PIParallaxStyleRecipe.m", 732, "(int)[(NSArray *)arguments[@imageExtents] count] > input");
  }

  v9 = [argumentsCopy objectForKeyedSubscript:@"imageExtents"];
  v10 = [v9 objectAtIndexedSubscript:input];
  [v10 CGRectValue];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index)
  {
    if (index != 1)
    {
      __assert_rtn("+[_PIDynamicGuidedProcessorKernel formatForInputAtIndex:]", "PIParallaxStyleRecipe.m", 720, "0");
    }

    v3 = MEMORY[0x1E695F8A8];
  }

  else
  {
    v3 = MEMORY[0x1E695F930];
  }

  return *v3;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  outputCopy = output;
  argumentsCopy = arguments;
  inputsCopy = inputs;
  metalCommandBuffer = [outputCopy metalCommandBuffer];
  device = [metalCommandBuffer device];
  v13 = [inputsCopy objectAtIndexedSubscript:0];
  v14 = [inputsCopy objectAtIndexedSubscript:1];

  [v13 region];
  v16 = v15;
  [v13 region];
  v18 = v17;
  v19 = [argumentsCopy objectForKeyedSubscript:@"guidedFilterEpsilon"];

  [v19 floatValue];
  v21 = v20;

  LOBYTE(v31) = 1;
  LODWORD(v22) = v21;
  v23 = [MEMORY[0x1E6974620] filterDescriptorWithWidth:v16 height:v18 arrayLength:1 kernelSpatialDiameter:3 kernelTemporalDiameter:1 epsilon:1 sourceChannels:v22 guideChannels:3 preallocateIntermediates:v31];
  v24 = [objc_alloc(MEMORY[0x1E6974618]) initWithDevice:device filterDescriptor:v23];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  metalTexture = [v13 metalTexture];
  [v25 addObject:metalTexture];

  metalTexture2 = [outputCopy metalTexture];

  [v26 addObject:metalTexture2];
  metalTexture3 = [v14 metalTexture];
  [v24 encodeToCommandBuffer:metalCommandBuffer sourceTextureArray:v25 guidanceTexture:metalTexture3 constraintsTextureArray:0 numberOfIterations:1 destinationTextureArray:v26];

  return 1;
}

@end