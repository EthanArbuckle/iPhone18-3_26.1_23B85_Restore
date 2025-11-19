@interface _PIDynamicGuidedProcessorKernel
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation _PIDynamicGuidedProcessorKernel

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"imageExtents"];
  if (!v7)
  {
    __assert_rtn("+[_PIDynamicGuidedProcessorKernel roiForInput:arguments:outputRect:]", "PIParallaxStyleRecipe.m", 731, "arguments[@imageExtents]");
  }

  v8 = [v6 objectForKeyedSubscript:@"imageExtents"];
  if ([v8 count] <= a3)
  {
    __assert_rtn("+[_PIDynamicGuidedProcessorKernel roiForInput:arguments:outputRect:]", "PIParallaxStyleRecipe.m", 732, "(int)[(NSArray *)arguments[@imageExtents] count] > input");
  }

  v9 = [v6 objectForKeyedSubscript:@"imageExtents"];
  v10 = [v9 objectAtIndexedSubscript:a3];
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

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3)
  {
    if (a3 != 1)
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

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 metalCommandBuffer];
  v12 = [v11 device];
  v13 = [v10 objectAtIndexedSubscript:0];
  v14 = [v10 objectAtIndexedSubscript:1];

  [v13 region];
  v16 = v15;
  [v13 region];
  v18 = v17;
  v19 = [v9 objectForKeyedSubscript:@"guidedFilterEpsilon"];

  [v19 floatValue];
  v21 = v20;

  LOBYTE(v31) = 1;
  LODWORD(v22) = v21;
  v23 = [MEMORY[0x1E6974620] filterDescriptorWithWidth:v16 height:v18 arrayLength:1 kernelSpatialDiameter:3 kernelTemporalDiameter:1 epsilon:1 sourceChannels:v22 guideChannels:3 preallocateIntermediates:v31];
  v24 = [objc_alloc(MEMORY[0x1E6974618]) initWithDevice:v12 filterDescriptor:v23];
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = [v13 metalTexture];
  [v25 addObject:v27];

  v28 = [v8 metalTexture];

  [v26 addObject:v28];
  v29 = [v14 metalTexture];
  [v24 encodeToCommandBuffer:v11 sourceTextureArray:v25 guidanceTexture:v29 constraintsTextureArray:0 numberOfIterations:1 destinationTextureArray:v26];

  return 1;
}

@end