@interface VKCStickerEffect
+ (VKCStickerEffect)effectWithType:(unint64_t)type;
+ (id)comicEffect;
+ (id)effectFromInternalEffect:(id)effect;
+ (id)iridescentEffect;
+ (id)noneEffect;
+ (id)puffyEffect;
+ (id)strokeEffect;
+ (int)internalIridescenceFromVKC:(unint64_t)c;
+ (unint64_t)vkcIridescenceFromInternal:(int)internal;
- (BOOL)requiresDeviceMotion;
- (CGPoint)shadowOffset;
- (CGPoint)shadowParallax;
- (VKCStickerEffectInternal)internalEffect;
- (id)description;
- (id)initInternal;
- (void)applyToImage:(id)image completion:(id)completion;
- (void)applyToImageSequence:(id)sequence progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation VKCStickerEffect

+ (VKCStickerEffect)effectWithType:(unint64_t)type
{
  if (type <= 1)
  {
    if (type == 1)
    {
      strokeEffect = [self strokeEffect];
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  switch(type)
  {
    case 2uLL:
      strokeEffect = [self comicEffect];
      break;
    case 3uLL:
      strokeEffect = [self puffyEffect];
      break;
    case 4uLL:
      strokeEffect = [self iridescentEffect];
      break;
    default:
LABEL_8:
      strokeEffect = [self noneEffect];
      break;
  }

LABEL_11:

  return strokeEffect;
}

- (id)description
{
  internalEffect = [(VKCStickerEffect *)self internalEffect];
  v3 = [internalEffect description];

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
  isInkEnabled = [(VKCStickerEffect *)self isComicEnabled]|| [(VKCStickerEffect *)self isInkEnabled];
  [(VKCStickerEffectInternal *)v3 setIsComicEnabled:isInkEnabled];
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
  v4 = [self effectFromInternalEffect:v3];

  return v4;
}

+ (id)strokeEffect
{
  v3 = +[VKCStickerEffectInternal strokeEffect];
  v4 = [self effectFromInternalEffect:v3];

  return v4;
}

+ (id)comicEffect
{
  v3 = +[VKCStickerEffectInternal comicEffect];
  v4 = [self effectFromInternalEffect:v3];

  return v4;
}

+ (id)puffyEffect
{
  v3 = +[VKCStickerEffectInternal puffyEffect];
  v4 = [self effectFromInternalEffect:v3];

  return v4;
}

+ (id)iridescentEffect
{
  v3 = +[VKCStickerEffectInternal iridescentEffect];
  v4 = [self effectFromInternalEffect:v3];

  return v4;
}

+ (unint64_t)vkcIridescenceFromInternal:(int)internal
{
  v3 = (internal - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)internalIridescenceFromVKC:(unint64_t)c
{
  if (c - 1 < 4)
  {
    return c;
  }

  else
  {
    return 0;
  }
}

+ (id)effectFromInternalEffect:(id)effect
{
  effectCopy = effect;
  initInternal = [[VKCStickerEffect alloc] initInternal];
  [initInternal setType:{objc_msgSend(effectCopy, "type")}];
  [initInternal setIsStroked:{objc_msgSend(effectCopy, "isStroked")}];
  [effectCopy strokeRadius];
  [initInternal setStrokeRadius:v5];
  [effectCopy strokeBlurRadius];
  [initInternal setStrokeBlurRadius:?];
  [effectCopy smallStrokeRadiusMultiplier];
  [initInternal setSmallStrokeRadiusMultiplier:?];
  [effectCopy smallShadowSizeMultiplier];
  [initInternal setSmallShadowSizeMultiplier:?];
  [effectCopy smallShadowAlphaMultiplier];
  [initInternal setSmallShadowAlphaMultiplier:?];
  [initInternal setForceSmallStrokeRadiusMultiplier:{objc_msgSend(effectCopy, "forceSmallStrokeRadiusMultiplier")}];
  [initInternal setIsPuffy:{objc_msgSend(effectCopy, "isPuffy")}];
  [effectCopy normalsRadius];
  [initInternal setNormalsRadius:v6];
  [initInternal setIsBrushed:{objc_msgSend(effectCopy, "isBrushed")}];
  [initInternal setApplyBrushBeforeStroke:{objc_msgSend(effectCopy, "applyBrushBeforeStroke")}];
  [initInternal setApplyIridescenceBeforeStroke:{objc_msgSend(effectCopy, "applyIridescenceBeforeStroke")}];
  [effectCopy shadowRadius];
  [initInternal setShadowRadius:v7];
  [effectCopy shadowOffset];
  v9 = v8;
  [effectCopy shadowOffset];
  [initInternal setShadowOffset:{v9, v10}];
  [effectCopy shadowParallax];
  v12 = v11;
  [effectCopy shadowParallax];
  [initInternal setShadowParallax:{v12, v13}];
  [initInternal setIsComicEnabled:{objc_msgSend(effectCopy, "isComicEnabled")}];
  [initInternal setIsCurlEnabled:{objc_msgSend(effectCopy, "isCurlEnabled")}];
  iridescence = [effectCopy iridescence];

  [initInternal setIridescence:{+[VKCStickerEffect vkcIridescenceFromInternal:](VKCStickerEffect, "vkcIridescenceFromInternal:", iridescence)}];

  return initInternal;
}

- (BOOL)requiresDeviceMotion
{
  internalEffect = [(VKCStickerEffect *)self internalEffect];
  requiresDeviceMotion = [internalEffect requiresDeviceMotion];

  return requiresDeviceMotion;
}

- (void)applyToImage:(id)image completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__VKCStickerEffect_applyToImage_completion___block_invoke;
  v10[3] = &unk_1E7BE50D8;
  v10[4] = self;
  v11 = imageCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = imageCopy;
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

- (void)applyToImageSequence:(id)sequence progressHandler:(id)handler completionHandler:(id)completionHandler
{
  sequenceCopy = sequence;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__VKCStickerEffect_applyToImageSequence_progressHandler_completionHandler___block_invoke;
  v15[3] = &unk_1E7BE5150;
  v15[4] = self;
  v16 = sequenceCopy;
  v17 = handlerCopy;
  v18 = completionHandlerCopy;
  v12 = completionHandlerCopy;
  v13 = handlerCopy;
  v14 = sequenceCopy;
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