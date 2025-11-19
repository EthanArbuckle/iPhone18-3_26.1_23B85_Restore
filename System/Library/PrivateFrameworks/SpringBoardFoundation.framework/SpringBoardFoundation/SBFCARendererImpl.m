@interface SBFCARendererImpl
+ (id)_actuallyRenderImage:(CGImage *)a3 requiresBGRA:(BOOL)a4 downsampleFactor:(double)a5 layerCustomizer:(id)a6;
+ (id)luminanceTreatmentFilters;
+ (id)renderMaterialImage:(CGImage *)a3 recipeName:(id)a4 containingBundle:(id)a5 weighting:(double)a6 downsampleFactor:(double)a7 scaleAdjustment:(id)a8;
+ (id)renderTreatedWallpaperImage:(CGImage *)a3 needsLuminanceTreatment:(BOOL)a4 needsDimmingTreatment:(BOOL)a5 downsampleFactor:(double)a6 averageColor:(id)a7;
@end

@implementation SBFCARendererImpl

+ (id)renderTreatedWallpaperImage:(CGImage *)a3 needsLuminanceTreatment:(BOOL)a4 needsDimmingTreatment:(BOOL)a5 downsampleFactor:(double)a6 averageColor:(id)a7
{
  v12 = a7;
  if (*MEMORY[0x1E69DDA98] && [*MEMORY[0x1E69DDA98] isFrontBoard])
  {
    +[SBFCARendererImpl renderTreatedWallpaperImage:needsLuminanceTreatment:needsDimmingTreatment:downsampleFactor:averageColor:];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __125__SBFCARendererImpl_renderTreatedWallpaperImage_needsLuminanceTreatment_needsDimmingTreatment_downsampleFactor_averageColor___block_invoke;
  v17[3] = &unk_1E807FE98;
  v20 = a4;
  v21 = a5;
  v18 = v12;
  v19 = a1;
  v13 = v12;
  v14 = MEMORY[0x1BFB4D9B0](v17);
  v15 = [a1 _actuallyRenderImage:a3 requiresBGRA:0 downsampleFactor:v14 layerCustomizer:a6];

  return v15;
}

void __125__SBFCARendererImpl_renderTreatedWallpaperImage_needsLuminanceTreatment_needsDimmingTreatment_downsampleFactor_averageColor___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  components[2] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    [v11 setAllowsGroupBlending:0];
    v13 = MEMORY[0x1E69798C8];
    if (*(a1 + 49) == 1)
    {
      v14 = objc_alloc_init(MEMORY[0x1E6979398]);
      SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, 0.1);
      [v14 setBackgroundColor:SRGB];
      CGColorRelease(SRGB);
      [v14 setCompositingFilter:*v13];
      [v12 addSublayer:v14];
    }

    if (*(a1 + 48) == 1)
    {
      v16 = [MEMORY[0x1E6979310] layer];
      [v16 setFrame:{a3, a4, a5, a6}];
      v17 = [*(a1 + 40) luminanceTreatmentFilters];
      [v16 setFilters:v17];

      [v12 addSublayer:v16];
    }

    if (*(a1 + 49) == 1)
    {
      v18 = [MEMORY[0x1E6979398] layer];
      v31 = 0.0;
      components[0] = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      [*(a1 + 32) getRed:components green:&v31 blue:&v30 alpha:&v29];
      v19 = [MEMORY[0x1E69DC888] colorWithRed:v31 * -0.589999974 + components[0] * -0.300000012 + v30 * -0.109999999 + v29 * 0.0 + 1.0 green:v31 * -0.589999974 + components[0] * -0.300000012 + v30 * -0.109999999 + v29 * 0.0 + 1.0 blue:v31 * -0.589999974 + components[0] * -0.300000012 + v30 * -0.109999999 + v29 * 0.0 + 1.0 alpha:v31 * 0.0 + components[0] * 0.0 + v30 * 0.0 + v29 * 0.5 + 0.0];
      v20 = [v19 CGColor];

      [v18 setBackgroundColor:v20];
      [v18 setFrame:{a3, a4, a5, a6}];
      [v18 setCompositingFilter:*MEMORY[0x1E6979CA8]];
      [v12 addSublayer:v18];
    }

    if (*(a1 + 48) == 1)
    {
      v21 = [MEMORY[0x1E6979380] layer];
      v22 = [&unk_1F3D3ED48 count];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v22, MEMORY[0x1E695E9C0]);
      v24 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
      if (v22)
      {
        v25 = &qword_1BEAD3D98;
        do
        {
          components[0] = 0.0;
          components[1] = *v25;
          v26 = CGColorCreate(v24, components);
          if (v26)
          {
            v27 = v26;
            CFArrayAppendValue(Mutable, v26);
            CFRelease(v27);
          }

          ++v25;
          --v22;
        }

        while (v22);
      }

      [v21 setColors:Mutable];
      CFRelease(Mutable);
      CGColorSpaceRelease(v24);
      [v21 setLocations:&unk_1F3D3ED48];
      [v21 setStartPoint:{0.5, 0.0}];
      [v21 setEndPoint:{0.5, 1.0}];
      v28 = [MEMORY[0x1E6979378] filterWithType:*v13];
      [v21 setCompositingFilter:v28];
      [v21 setFrame:{a3, a4, a5, a6}];
      [v12 addSublayer:v21];
    }

    [v12 setShouldRasterize:*(a1 + 49)];
  }
}

+ (id)renderMaterialImage:(CGImage *)a3 recipeName:(id)a4 containingBundle:(id)a5 weighting:(double)a6 downsampleFactor:(double)a7 scaleAdjustment:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a8;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __112__SBFCARendererImpl_renderMaterialImage_recipeName_containingBundle_weighting_downsampleFactor_scaleAdjustment___block_invoke;
  v22[3] = &unk_1E807FEC0;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = MEMORY[0x1BFB4D9B0](v22);
  v20 = [a1 _actuallyRenderImage:a3 requiresBGRA:0 downsampleFactor:v19 layerCustomizer:a7];

  return v20;
}

void __112__SBFCARendererImpl_renderMaterialImage_recipeName_containingBundle_weighting_downsampleFactor_scaleAdjustment___block_invoke(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v12 = getMTMaterialLayerClass_softClass;
  v19 = getMTMaterialLayerClass_softClass;
  if (!getMTMaterialLayerClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getMTMaterialLayerClass_block_invoke;
    v15[3] = &unk_1E807F028;
    v15[4] = &v16;
    __getMTMaterialLayerClass_block_invoke(v15);
    v12 = v17[3];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);
  v14 = objc_alloc_init(v12);
  [v14 setRecipeName:a1[4] fromBundle:a1[5]];
  [v14 setWeighting:1.0];
  [v14 setBackdropScaleAdjustment:a1[6]];
  [v14 setFrame:{a3, a4, a5, a6}];
  [v11 addSublayer:v14];
  if (!v14)
  {
    __112__SBFCARendererImpl_renderMaterialImage_recipeName_containingBundle_weighting_downsampleFactor_scaleAdjustment___block_invoke_cold_1();
  }
}

+ (id)_actuallyRenderImage:(CGImage *)a3 requiresBGRA:(BOOL)a4 downsampleFactor:(double)a5 layerCustomizer:(id)a6
{
  v41[2] = *MEMORY[0x1E69E9840];
  v8 = a6;
  if (*MEMORY[0x1E69DDA98] && [*MEMORY[0x1E69DDA98] isFrontBoard])
  {
    +[SBFCARendererImpl _actuallyRenderImage:requiresBGRA:downsampleFactor:layerCustomizer:];
  }

  if (!a3)
  {
    +[SBFCARendererImpl _actuallyRenderImage:requiresBGRA:downsampleFactor:layerCustomizer:];
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v11 = Height / a5;
  if ((Width / a5))
  {
    v12 = (Height / a5) == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = SBLogWallpaper();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBFCARendererImpl _actuallyRenderImage:v14 requiresBGRA:Width / a5 downsampleFactor:v11 layerCustomizer:?];
    }

    v13 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E6979398] layer];
    v15 = [MEMORY[0x1E6979398] layer];
    [v14 setContents:a3];
    [v15 addSublayer:v14];
    v37 = v15;
    [v15 setFrame:{0.0, 0.0, Width / a5, v11}];
    [v14 setFrame:0.0, 0.0, Width, Height];
    memset(&v39, 0, sizeof(v39));
    CGAffineTransformMakeScale(&v39, 1.0 / a5, -1.0 / a5);
    v38 = v39;
    [v14 setAffineTransform:&v38];
    [v14 setPosition:Width / a5 * 0.5, v11 * 0.5];
    if (v8)
    {
      v8[2](v8, v14, 0.0, 0.0, Width, Height);
    }

    v16 = MTLCreateSystemDefaultDevice();
    *&v38.a = 1;
    v13 = [MEMORY[0x1E696CDE8] bs_IOSurfaceWithWidth:(Width / a5) height:v11 options:&v38];
    v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:80 width:(Width / a5) height:v11 mipmapped:0];
    [v17 setUsage:4];
    v36 = [v16 newTextureWithDescriptor:v17 iosurface:v13 plane:0];
    v18 = MGGetBoolAnswer();
    v19 = MEMORY[0x1E695F110];
    if (!v18)
    {
      v19 = MEMORY[0x1E695F1C0];
    }

    v20 = CGColorSpaceCreateWithName(*v19);
    v35 = v16;
    v21 = [v16 newCommandQueue];
    if (objc_opt_respondsToSelector())
    {
      v22 = [MEMORY[0x1E698E698] serial];
      v23 = [v22 serviceClass:33];
      v24 = BSDispatchQueueCreate();

      [v21 setSubmissionQueue:v24];
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [MEMORY[0x1E698E698] serial];
      v26 = [v25 serviceClass:33];
      v27 = BSDispatchQueueCreate();

      [v21 setCompletionQueue:v27];
    }

    v28 = *MEMORY[0x1E6979F10];
    v40[0] = *MEMORY[0x1E6979F08];
    v40[1] = v28;
    v41[0] = v20;
    v41[1] = v21;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v30 = [MEMORY[0x1E6979428] rendererWithMTLTexture:v36 options:v29];
    [v30 setLayer:v37];
    [v30 setBounds:{0.0, 0.0, Width / a5, v11}];
    [MEMORY[0x1E6979518] flush];
    [v30 beginFrameAtTime:0 timeStamp:0.0];
    [v30 render];
    [v30 endFrame];
    v31 = [v21 commandBuffer];
    [v31 enqueue];
    [v31 commit];
    [v31 waitUntilCompleted];
    v32 = CGColorSpaceCopyPropertyList(v20);
    if (v32)
    {
      v33 = v32;
      IOSurfaceSetValue(v13, *MEMORY[0x1E696CEE0], v32);
      CFRelease(v33);
    }

    CGColorSpaceRelease(v20);
  }

  return v13;
}

+ (id)luminanceTreatmentFilters
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = SBFBundle();
  if (!v2)
  {
    +[SBFCARendererImpl luminanceTreatmentFilters];
  }

  v3 = v2;
  v4 = [v2 URLForResource:@"WallpaperLuminanceMap" withExtension:@"png"];
  if (!v4)
  {
    +[SBFCARendererImpl luminanceTreatmentFilters];
  }

  v5 = v4;
  v6 = CGImageSourceCreateWithURL(v4, 0);
  if (!v6)
  {
LABEL_12:
    +[SBFCARendererImpl luminanceTreatmentFilters];
  }

  v7 = v6;
  if (!CGImageSourceGetCount(v6))
  {
    CFRelease(v7);
    goto LABEL_12;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
  CFRelease(v7);
  if (!ImageAtIndex)
  {
    goto LABEL_12;
  }

  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C70]];
  [v9 setValue:ImageAtIndex forKey:@"inputColorMap"];

  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
  [v10 setValue:&unk_1F3D3F358 forKey:@"inputAmount"];
  v13[0] = v10;
  v13[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  return v11;
}

+ (void)_actuallyRenderImage:(double)a3 requiresBGRA:downsampleFactor:layerCustomizer:.cold.2(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromCGSize(*&a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1BEA11000, a1, OS_LOG_TYPE_ERROR, "Image output size (%@) is invalid. Not rendering image", &v5, 0xCu);
}

@end