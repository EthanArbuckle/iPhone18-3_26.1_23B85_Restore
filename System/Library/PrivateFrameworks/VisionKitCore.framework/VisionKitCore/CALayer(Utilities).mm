@interface CALayer(Utilities)
- (VKAutoFadeOutLayer)vk_autoFadeOutShapePointLayer;
- (VKQuad)vk_quadFromConvertingRect:()Utilities toLayer:;
- (id)vk_autoFadeOutShapeRectLayer;
- (id)vk_quadFromConvertingBoundsToLayer:()Utilities;
@end

@implementation CALayer(Utilities)

- (id)vk_quadFromConvertingBoundsToLayer:()Utilities
{
  v4 = a3;
  [self bounds];
  v5 = [self vk_quadFromConvertingRect:v4 toLayer:?];

  return v5;
}

- (VKQuad)vk_quadFromConvertingRect:()Utilities toLayer:
{
  v12 = a7;
  v13 = [[VKQuad alloc] initWithRect:a2, a3, a4, a5];
  [(VKQuad *)v13 topLeft];
  [self convertPoint:v12 toLayer:?];
  v15 = v14;
  v17 = v16;
  [(VKQuad *)v13 topRight];
  [self convertPoint:v12 toLayer:?];
  v19 = v18;
  v21 = v20;
  [(VKQuad *)v13 bottomLeft];
  [self convertPoint:v12 toLayer:?];
  v23 = v22;
  v25 = v24;
  [(VKQuad *)v13 bottomRight];
  [self convertPoint:v12 toLayer:?];
  v27 = v26;
  v29 = v28;

  v30 = [[VKQuad alloc] initWithBottomLeft:v23 bottomRight:v25 topLeft:v27 topRight:v29, v15, v17, v19, v21];

  return v30;
}

- (VKAutoFadeOutLayer)vk_autoFadeOutShapePointLayer
{
  v2 = objc_alloc_init(VKAutoFadeOutLayer);
  vk_randomColor = [MEMORY[0x1E69DC888] vk_randomColor];
  v4 = [vk_randomColor colorWithAlphaComponent:0.8];
  -[VKAutoFadeOutLayer setBackgroundColor:](v2, "setBackgroundColor:", [v4 CGColor]);

  [(VKAutoFadeOutLayer *)v2 setBounds:VKMRectWithOriginAndSize(v5, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 10.0, 10.0)];
  [self addSublayer:v2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CALayer_Utilities__vk_autoFadeOutShapePointLayer__block_invoke;
  v8[3] = &unk_1E7BE4208;
  v6 = v2;
  v9 = v6;
  vk_dispatchMainAfterDelay(v8, 1.0);

  return v6;
}

- (id)vk_autoFadeOutShapeRectLayer
{
  vk_autoFadeOutShapePointLayer = [self vk_autoFadeOutShapePointLayer];
  [vk_autoFadeOutShapePointLayer setBorderColor:{objc_msgSend(vk_autoFadeOutShapePointLayer, "backgroundColor")}];
  [vk_autoFadeOutShapePointLayer setBorderWidth:2.0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [vk_autoFadeOutShapePointLayer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  return vk_autoFadeOutShapePointLayer;
}

@end