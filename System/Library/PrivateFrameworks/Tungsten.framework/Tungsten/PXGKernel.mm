@interface PXGKernel
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)gridSizeForThreadGroupSize:(SEL)size imageSize:(id *)imageSize;
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)groupSizeForImageSize:(SEL)size pipelineState:(id *)state;
+ (id)pipelineStateForFunctionWithName:(id)name constants:(id)constants key:(id)key device:(id)device;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale;
@end

@implementation PXGKernel

+ (id)pipelineStateForFunctionWithName:(id)name constants:(id)constants key:(id)key device:(id)device
{
  nameCopy = name;
  constantsCopy = constants;
  keyCopy = key;
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = objc_getAssociatedObject(deviceCopy, a2);
  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_setAssociatedObject(deviceCopy, a2, v16, 0x301);
  }

  v17 = [v16 objectForKey:keyCopy];
  if (!v17)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = 0;
    v19 = [deviceCopy newDefaultLibraryWithBundle:v18 error:&v27];
    v20 = v27;

    if (v19)
    {
      v26 = v20;
      v24 = constantsCopy;
      v21 = [v19 newFunctionWithName:nameCopy constantValues:constantsCopy error:&v26];
      v22 = v26;

      if (v21)
      {
        v25 = v22;
        v17 = [deviceCopy newComputePipelineStateWithFunction:v21 error:&v25];
        v20 = v25;

        if (v17)
        {
          [v16 setObject:v17 forKey:keyCopy];
        }

        else
        {
          NSLog(&cfstr_CouldNotLoadMe.isa, v20);
          v17 = 0;
        }
      }

      else
      {
        NSLog(&cfstr_CouldNotLoadMe_1.isa, nameCopy, v22);
        v17 = 0;
        v20 = v22;
      }

      constantsCopy = v24;
    }

    else
    {
      NSLog(&cfstr_CouldNotLoadMe.isa, v20);
      v17 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v17;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)gridSizeForThreadGroupSize:(SEL)size imageSize:(id *)imageSize
{
  v5 = (a5->var1 + imageSize->var1 - 1) / imageSize->var1;
  retstr->var0 = (a5->var0 + imageSize->var0 - 1) / imageSize->var0;
  retstr->var1 = v5;
  retstr->var2 = 1;
  return result;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)groupSizeForImageSize:(SEL)size pipelineState:(id *)state
{
  v21 = a5;
  threadExecutionWidth = [v21 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v21 maxTotalThreadsPerThreadgroup];
  v9 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  if (threadExecutionWidth <= maxTotalThreadsPerThreadgroup)
  {
    v13 = 2 * threadExecutionWidth;
    v14 = -1;
    v15 = -1;
    v16 = threadExecutionWidth;
    v11 = threadExecutionWidth;
    v10 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    do
    {
      var1 = state->var1;
      if (v16 <= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = v16;
      }

      if ((var1 + v9 - 1) / v9 * v9 * (state->var0 + v16 - 1) / v16 * v16 - var1 * state->var0 <= v14)
      {
        v19 = v17 / v18;
        if (v19 <= v15)
        {
          v10 = v9;
          v11 = v16;
          v15 = v19;
          v14 = (var1 + v9 - 1) / v9 * v9 * (state->var0 + v16 - 1) / v16 * v16 - var1 * state->var0;
        }
      }

      v16 += threadExecutionWidth;
      v9 = maxTotalThreadsPerThreadgroup / v13;
      v13 += threadExecutionWidth;
    }

    while (v16 <= maxTotalThreadsPerThreadgroup);
  }

  else
  {
    v10 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v11 = threadExecutionWidth;
  }

  retstr->var0 = v11;
  retstr->var1 = v10;
  retstr->var2 = 1;

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGKernel.m" lineNumber:91 description:{@"Method %s is a responsibility of subclass %@", "-[PXGKernel encodeToCommandBuffer:sourceTexture:destinationTexture:targetScale:]", v15}];

  abort();
}

@end