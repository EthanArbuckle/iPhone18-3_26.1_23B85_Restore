@interface PLKLegibilityImageRenderer
- (id)renderLegibilityImageDecoratingImage:(id)image actions:(id)actions;
- (id)renderLegibilityImageForImage:(id)image legibilityDescriptor:(id)descriptor;
@end

@implementation PLKLegibilityImageRenderer

- (id)renderLegibilityImageForImage:(id)image legibilityDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__PLKLegibilityImageRenderer_renderLegibilityImageForImage_legibilityDescriptor___block_invoke;
  v10[3] = &unk_27835B6C8;
  v11 = descriptorCopy;
  v7 = descriptorCopy;
  v8 = [(PLKLegibilityImageRenderer *)self renderLegibilityImageDecoratingImage:image actions:v10];

  return v8;
}

void __81__PLKLegibilityImageRenderer_renderLegibilityImageForImage_legibilityDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 background];
  [v4 plk_renderWithContext:v3];
}

- (id)renderLegibilityImageDecoratingImage:(id)image actions:(id)actions
{
  imageCopy = image;
  actionsCopy = actions;
  v8 = actionsCopy;
  if (imageCopy && actionsCopy)
  {
    if (renderLegibilityImageDecoratingImage_actions__onceToken != -1)
    {
      [PLKLegibilityImageRenderer renderLegibilityImageDecoratingImage:actions:];
    }

    v9 = PLKLogRendering();
    v10 = v9;
    v11 = renderLegibilityImageDecoratingImage_actions__signpostID;
    if ((renderLegibilityImageDecoratingImage_actions__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PLK:renderLegibilityImageDecoratingImage:actions:", &unk_21E5F550D, buf, 2u);
    }

    format = [(UIGraphicsRenderer *)self format];
    [format bounds];
    [imageCopy size];
    BSRectWithSize();
    UIRectCenteredRect();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__PLKLegibilityImageRenderer_renderLegibilityImageDecoratingImage_actions___block_invoke_2;
    v22[3] = &unk_27835B8E0;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v23 = imageCopy;
    v24 = v8;
    v17 = [(PLKImageRenderer *)self imageWithActions:v22];
    v18 = PLKLogRendering();
    v19 = v18;
    v20 = renderLegibilityImageDecoratingImage_actions__signpostID;
    if ((renderLegibilityImageDecoratingImage_actions__signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E5D5000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLK:renderLegibilityImageDecoratingImage:actions:", &unk_21E5F550D, buf, 2u);
    }
  }

  else
  {
    v17 = objc_opt_new();
  }

  return v17;
}

void __75__PLKLegibilityImageRenderer_renderLegibilityImageDecoratingImage_actions___block_invoke()
{
  v0 = PLKLogRendering();
  renderLegibilityImageDecoratingImage_actions__signpostID = os_signpost_id_generate(v0);
}

void __75__PLKLegibilityImageRenderer_renderLegibilityImageDecoratingImage_actions___block_invoke_2(double *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a2;
  [v7 setContentRect:{v3, v4, v5, v6}];
  [v7 setOverrideCurrentImage:*(a1 + 4)];
  (*(*(a1 + 5) + 16))();
  [v7 setOverrideCurrentImage:0];
}

@end