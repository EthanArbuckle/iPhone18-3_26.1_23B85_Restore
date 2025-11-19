@interface PXGKernel
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)gridSizeForThreadGroupSize:(SEL)a3 imageSize:(id *)a4;
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)groupSizeForImageSize:(SEL)a3 pipelineState:(id *)a4;
+ (id)pipelineStateForFunctionWithName:(id)a3 constants:(id)a4 key:(id)a5 device:(id)a6;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6;
@end

@implementation PXGKernel

+ (id)pipelineStateForFunctionWithName:(id)a3 constants:(id)a4 key:(id)a5 device:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a1;
  objc_sync_enter(v15);
  v16 = objc_getAssociatedObject(v14, a2);
  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_setAssociatedObject(v14, a2, v16, 0x301);
  }

  v17 = [v16 objectForKey:v13];
  if (!v17)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = 0;
    v19 = [v14 newDefaultLibraryWithBundle:v18 error:&v27];
    v20 = v27;

    if (v19)
    {
      v26 = v20;
      v24 = v12;
      v21 = [v19 newFunctionWithName:v11 constantValues:v12 error:&v26];
      v22 = v26;

      if (v21)
      {
        v25 = v22;
        v17 = [v14 newComputePipelineStateWithFunction:v21 error:&v25];
        v20 = v25;

        if (v17)
        {
          [v16 setObject:v17 forKey:v13];
        }

        else
        {
          NSLog(&cfstr_CouldNotLoadMe.isa, v20);
          v17 = 0;
        }
      }

      else
      {
        NSLog(&cfstr_CouldNotLoadMe_1.isa, v11, v22);
        v17 = 0;
        v20 = v22;
      }

      v12 = v24;
    }

    else
    {
      NSLog(&cfstr_CouldNotLoadMe.isa, v20);
      v17 = 0;
    }
  }

  objc_sync_exit(v15);

  return v17;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)gridSizeForThreadGroupSize:(SEL)a3 imageSize:(id *)a4
{
  v5 = (a5->var1 + a4->var1 - 1) / a4->var1;
  retstr->var0 = (a5->var0 + a4->var0 - 1) / a4->var0;
  retstr->var1 = v5;
  retstr->var2 = 1;
  return result;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)groupSizeForImageSize:(SEL)a3 pipelineState:(id *)a4
{
  v21 = a5;
  v7 = [v21 threadExecutionWidth];
  v8 = [v21 maxTotalThreadsPerThreadgroup];
  v9 = v8 / v7;
  if (v7 <= v8)
  {
    v13 = 2 * v7;
    v14 = -1;
    v15 = -1;
    v16 = v7;
    v11 = v7;
    v10 = v8 / v7;
    do
    {
      var1 = a4->var1;
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

      if ((var1 + v9 - 1) / v9 * v9 * (a4->var0 + v16 - 1) / v16 * v16 - var1 * a4->var0 <= v14)
      {
        v19 = v17 / v18;
        if (v19 <= v15)
        {
          v10 = v9;
          v11 = v16;
          v15 = v19;
          v14 = (var1 + v9 - 1) / v9 * v9 * (a4->var0 + v16 - 1) / v16 * v16 - var1 * a4->var0;
        }
      }

      v16 += v7;
      v9 = v8 / v13;
      v13 += v7;
    }

    while (v16 <= v8);
  }

  else
  {
    v10 = v8 / v7;
    v11 = v7;
  }

  retstr->var0 = v11;
  retstr->var1 = v10;
  retstr->var2 = 1;

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 handleFailureInMethod:a2 object:self file:@"PXGKernel.m" lineNumber:91 description:{@"Method %s is a responsibility of subclass %@", "-[PXGKernel encodeToCommandBuffer:sourceTexture:destinationTexture:targetScale:]", v15}];

  abort();
}

@end