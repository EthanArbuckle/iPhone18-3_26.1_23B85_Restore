@interface VKCStickerEffect
+ (VKCStickerEffect)effectWithType:(unint64_t)a3;
+ (id)comicEffect;
+ (id)effectFromInternalEffect:(id)a3;
+ (id)iridescentEffect;
+ (id)noneEffect;
+ (id)puffyEffect;
+ (id)strokeEffect;
+ (int)internalIridescenceFromVKC:(unint64_t)a3;
+ (unint64_t)vkcIridescenceFromInternal:(int)a3;
- (BOOL)requiresDeviceMotion;
- (CGPoint)shadowOffset;
- (CGPoint)shadowParallax;
- (VKCStickerEffectInternal)internalEffect;
- (id)description;
- (id)initInternal;
- (void)applyToImage:(id)a3 completion:(id)a4;
- (void)applyToImageSequence:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
@end

@implementation VKCStickerEffect

+ (VKCStickerEffect)effectWithType:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v3 = [a1 strokeEffect];
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  switch(a3)
  {
    case 2uLL:
      v3 = [a1 comicEffect];
      break;
    case 3uLL:
      v3 = [a1 puffyEffect];
      break;
    case 4uLL:
      v3 = [a1 iridescentEffect];
      break;
    default:
LABEL_8:
      v3 = [a1 noneEffect];
      break;
  }

LABEL_11:

  return v3;
}

- (id)description
{
  v2 = [(VKCStickerEffect *)self internalEffect];
  v3 = [v2 description];

  return v3;
}

- (VKCStickerEffectInternal)internalEffect
{
  v3 = objc_alloc_init(VKCStickerEffectInternal);
  [(VKCStickerEffectInternal *)v3 setIsStroked:[(VKCStickerEffect *)self isStroked]];
  [(VKCStickerEffect *)self strokeRadius];
  *&v4 = v4;
  [(VKCStickerEffectInternal *)v3 setStrokeRadius:v4];
  [(VKCStickerEffect *)self strokeBlurRadius];
  [(VKCStickerEffectInternal *)v3 setStrokeBlurRadius:?];
  [(VKCStickerEffect *)self smallStrokeRadiusMultiplier];
  [(VKCStickerEffectInternal *)v3 setSmallStrokeRadiusMultiplier:?];
  [(VKCStickerEffect *)self smallShadowSizeMultiplier];
  [(VKCStickerEffectInternal *)v3 setSmallShadowSizeMultiplier:?];
  [(VKCStickerEffect *)self smallShadowAlphaMultiplier];
  [(VKCStickerEffectInternal *)v3 setSmallShadowAlphaMultiplier:?];
  [(VKCStickerEffectInternal *)v3 setForceSmallStrokeRadiusMultiplier:[(VKCStickerEffect *)self forceSmallStrokeRadiusMultiplier]];
  [(VKCStickerEffectInternal *)v3 setType:[(VKCStickerEffect *)self type]];
  [(VKCStickerEffectInternal *)v3 setIsPuffy:[(VKCStickerEffect *)self isPuffy]];
  [(VKCStickerEffect *)self normalsRadius];
  *&v5 = v5;
  [(VKCStickerEffectInternal *)v3 setNormalsRadius:v5];
  [(VKCStickerEffectInternal *)v3 setIsBrushed:[(VKCStickerEffect *)self isBrushed]];
  [(VKCStickerEffectInternal *)v3 setApplyBrushBeforeStroke:[(VKCStickerEffect *)self applyBrushBeforeStroke]];
  [(VKCStickerEffectInternal *)v3 setApplyIridescenceBeforeStroke:[(VKCStickerEffect *)self applyIridescenceBeforeStroke]];
  [(VKCStickerEffect *)self shadowRadius];
  *&v6 = v6;
  [(VKCStickerEffectInternal *)v3 setShadowRadius:v6];
  [(VKCStickerEffect *)self shadowOffset];
  v15 = v7;
  [(VKCStickerEffect *)self shadowOffset];
  v8.f64[0] = v15;
  v8.f64[1] = v9;
  [(VKCStickerEffectInternal *)v3 setShadowOffset:COERCE_DOUBLE(vcvt_f32_f64(v8))];
  [(VKCStickerEffect *)self shadowParallax];
  v16 = v10;
  [(VKCStickerEffect *)self shadowParallax];
  v11.f64[0] = v16;
  v11.f64[1] = v12;
  [(VKCStickerEffectInternal *)v3 setShadowParallax:COERCE_DOUBLE(vcvt_f32_f64(v11))];
  v13 = [(VKCStickerEffect *)self isComicEnabled]|| [(VKCStickerEffect *)self isInkEnabled];
  [(VKCStickerEffectInternal *)v3 setIsComicEnabled:v13];
  if ([(VKCStickerEffectInternal *)v3 isComicEnabled])
  {
    if ([(VKCStickerEffect *)self isComicEnabled])
    {
      [(VKCStickerEffectInternal *)v3 applyComicParameters];
    }

    else
    {
      [(VKCStickerEffectInternal *)v3 applyComicInkParameters];
    }
  }

  [(VKCStickerEffectInternal *)v3 setIsCurlEnabled:[(VKCStickerEffect *)self isCurlEnabled]];
  -[VKCStickerEffectInternal setIridescence:](v3, "setIridescence:", [objc_opt_class() internalIridescenceFromVKC:{-[VKCStickerEffect iridescence](self, "iridescence")}]);

  return v3;
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = VKCStickerEffect;
  return [(VKCStickerEffect *)&v3 init];
}

+ (id)noneEffect
{
  v3 = +[VKCStickerEffectInternal noneEffect];
  v4 = [a1 effectFromInternalEffect:v3];

  return v4;
}

+ (id)strokeEffect
{
  v3 = +[VKCStickerEffectInternal strokeEffect];
  v4 = [a1 effectFromInternalEffect:v3];

  return v4;
}

+ (id)comicEffect
{
  v3 = +[VKCStickerEffectInternal comicEffect];
  v4 = [a1 effectFromInternalEffect:v3];

  return v4;
}

+ (id)puffyEffect
{
  v3 = +[VKCStickerEffectInternal puffyEffect];
  v4 = [a1 effectFromInternalEffect:v3];

  return v4;
}

+ (id)iridescentEffect
{
  v3 = +[VKCStickerEffectInternal iridescentEffect];
  v4 = [a1 effectFromInternalEffect:v3];

  return v4;
}

+ (unint64_t)vkcIridescenceFromInternal:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)internalIridescenceFromVKC:(unint64_t)a3
{
  if (a3 - 1 < 4)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (id)effectFromInternalEffect:(id)a3
{
  v3 = a3;
  v4 = [[VKCStickerEffect alloc] initInternal];
  [v4 setType:{objc_msgSend(v3, "type")}];
  [v4 setIsStroked:{objc_msgSend(v3, "isStroked")}];
  [v3 strokeRadius];
  [v4 setStrokeRadius:v5];
  [v3 strokeBlurRadius];
  [v4 setStrokeBlurRadius:?];
  [v3 smallStrokeRadiusMultiplier];
  [v4 setSmallStrokeRadiusMultiplier:?];
  [v3 smallShadowSizeMultiplier];
  [v4 setSmallShadowSizeMultiplier:?];
  [v3 smallShadowAlphaMultiplier];
  [v4 setSmallShadowAlphaMultiplier:?];
  [v4 setForceSmallStrokeRadiusMultiplier:{objc_msgSend(v3, "forceSmallStrokeRadiusMultiplier")}];
  [v4 setIsPuffy:{objc_msgSend(v3, "isPuffy")}];
  [v3 normalsRadius];
  [v4 setNormalsRadius:v6];
  [v4 setIsBrushed:{objc_msgSend(v3, "isBrushed")}];
  [v4 setApplyBrushBeforeStroke:{objc_msgSend(v3, "applyBrushBeforeStroke")}];
  [v4 setApplyIridescenceBeforeStroke:{objc_msgSend(v3, "applyIridescenceBeforeStroke")}];
  [v3 shadowRadius];
  [v4 setShadowRadius:v7];
  [v3 shadowOffset];
  v9 = v8;
  [v3 shadowOffset];
  [v4 setShadowOffset:{v9, v10}];
  [v3 shadowParallax];
  v12 = v11;
  [v3 shadowParallax];
  [v4 setShadowParallax:{v12, v13}];
  [v4 setIsComicEnabled:{objc_msgSend(v3, "isComicEnabled")}];
  [v4 setIsCurlEnabled:{objc_msgSend(v3, "isCurlEnabled")}];
  v14 = [v3 iridescence];

  [v4 setIridescence:{+[VKCStickerEffect vkcIridescenceFromInternal:](VKCStickerEffect, "vkcIridescenceFromInternal:", v14)}];

  return v4;
}

- (BOOL)requiresDeviceMotion
{
  v2 = [(VKCStickerEffect *)self internalEffect];
  v3 = [v2 requiresDeviceMotion];

  return v3;
}

- (void)applyToImage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__VKCStickerEffect_applyToImage_completion___block_invoke;
  v10[3] = &unk_1E7BE50D8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  vk_performBlockOnMainThread(v10);
}

void __44__VKCStickerEffect_applyToImage_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewForRendering];

  if (!v2)
  {
    v3 = [VKCStickerEffectView alloc];
    v4 = MTLCreateSystemDefaultDevice();
    v5 = [(VKCStickerEffectView *)v3 initWithDevice:v4];
    [*(a1 + 32) setViewForRendering:v5];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) viewForRendering];
  [v7 setImage:v6];

  v8 = *(a1 + 32);
  v9 = [v8 viewForRendering];
  [v9 setEffect:v8];

  v10 = [*(a1 + 32) viewForRendering];
  [v10 snapshotWithCompletionHandler:*(a1 + 48)];
}

- (void)applyToImageSequence:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__VKCStickerEffect_applyToImageSequence_progressHandler_completionHandler___block_invoke;
  v15[3] = &unk_1E7BE5150;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __75__VKCStickerEffect_applyToImageSequence_progressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__VKCStickerEffect_applyToImageSequence_progressHandler_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7BE5128;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [VKCStickerEffectVideoProcessor applyEffect:v1 toImageSequence:v2 progressHandler:v3 completionHandler:v4];
}

void __75__VKCStickerEffect_applyToImageSequence_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__VKCStickerEffect_applyToImageSequence_progressHandler_completionHandler___block_invoke_3;
  v10[3] = &unk_1E7BE5100;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  vk_dispatchMainAfterDelay(v10, 0.0);
}

- (CGPoint)shadowOffset
{
  x = self->_shadowOffset.x;
  y = self->_shadowOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shadowParallax
{
  x = self->_shadowParallax.x;
  y = self->_shadowParallax.y;
  result.y = y;
  result.x = x;
  return result;
}

@end