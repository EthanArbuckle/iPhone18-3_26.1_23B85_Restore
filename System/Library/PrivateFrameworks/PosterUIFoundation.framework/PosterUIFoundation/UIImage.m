@interface UIImage
@end

@implementation UIImage

void __56__UIImage_PosterUIFoundation__pui_fallbackSnapshotImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCA80] defaultFormat];
  [v0 setPreferredRange:0x7FFFLL];
  [v0 setOpaque:0];
  v1 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{1.0, 1.0}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__UIImage_PosterUIFoundation__pui_fallbackSnapshotImage__block_invoke_2;
  v9[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  __asm { FMOV            V0.2D, #1.0 }

  v10 = _Q0;
  v7 = [v1 imageWithActions:v9];
  v8 = pui_fallbackSnapshotImage_fallbackSnapshotImage;
  pui_fallbackSnapshotImage_fallbackSnapshotImage = v7;
}

void __56__UIImage_PosterUIFoundation__pui_fallbackSnapshotImage__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v4 = a2;
  v3 = [v2 clearColor];
  [v3 setFill];

  BSRectWithSize();
  [v4 fillRect:?];
}

uint64_t __73__UIImage_PosterUIFoundation__pui_determineProminentColorWithCompletion___block_invoke()
{
  pui_determineProminentColorWithCompletion__service = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __73__UIImage_PosterUIFoundation__pui_determineProminentColorWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 resultForAnalysis:@"PUIAnalysis_DETERMINE_PROMINENT_COLOR"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__UIImage_PosterUIFoundation__pui_determineProminentColorWithCompletion___block_invoke_3;
  block[3] = &unk_1E7854720;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end