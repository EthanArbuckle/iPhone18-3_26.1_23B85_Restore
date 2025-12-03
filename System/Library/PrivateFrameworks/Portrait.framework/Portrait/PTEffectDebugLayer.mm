@interface PTEffectDebugLayer
- (PTEffectDebugLayer)initWithMetalContext:(id)context effectRelighting:(id)relighting effectDescritor:(id)descritor renderState:(id)state util:(id)util colorConversion:(id)conversion msrColorPyramid:(id)pyramid vfxRenderEffect:(id)self0 depthConverter:(id)self1 disparityFixedFocus:(id)self2 faceDisparityArray:(id)self3 focusDisparityRaw:(id)self4 focusDisparityModifiers:(id)self5;
- (void)renderDebugInformation:(int64_t)information effectRenderRequest:(id)request reactionStates:(id)states disparity:(id)disparity disparityCentered:(id)centered normal:(id)normal diffuse:(id)diffuse temporalFilter:(id)self0 humanDetections:(id)self1 transform:(CGAffineTransform *)self2 fNumber:(float)self3 focusDisparityRaw:(id)self4 useDisparityBufferForReactions:(id)self5 outColor:(id)self6;
- (void)renderThumbnailsWithDisparity:(id)disparity disparityCentered:(id)centered normal:(id)normal temporalFilter:(id)filter outYUV:(id)v;
@end

@implementation PTEffectDebugLayer

- (PTEffectDebugLayer)initWithMetalContext:(id)context effectRelighting:(id)relighting effectDescritor:(id)descritor renderState:(id)state util:(id)util colorConversion:(id)conversion msrColorPyramid:(id)pyramid vfxRenderEffect:(id)self0 depthConverter:(id)self1 disparityFixedFocus:(id)self2 faceDisparityArray:(id)self3 focusDisparityRaw:(id)self4 focusDisparityModifiers:(id)self5
{
  contextCopy = context;
  relightingCopy = relighting;
  relightingCopy2 = relighting;
  descritorCopy = descritor;
  descritorCopy2 = descritor;
  stateCopy = state;
  stateCopy2 = state;
  utilCopy = util;
  utilCopy2 = util;
  conversionCopy = conversion;
  pyramidCopy = pyramid;
  effectCopy = effect;
  converterCopy = converter;
  focusCopy = focus;
  arrayCopy = array;
  rawCopy = raw;
  modifiersCopy = modifiers;
  v43.receiver = self;
  v43.super_class = PTEffectDebugLayer;
  v26 = [(PTEffectDebugLayer *)&v43 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_metalContext, context);
    objc_storeStrong(&v27->_effectRelighting, relightingCopy);
    objc_storeStrong(&v27->_effectDescritor, descritorCopy);
    objc_storeStrong(&v27->_renderState, stateCopy);
    objc_storeStrong(&v27->_util, utilCopy);
    objc_storeStrong(&v27->_colorConversion, conversion);
    objc_storeStrong(&v27->_msrColorPyramid, pyramid);
    objc_storeStrong(&v27->_disparityFixedFocus, focus);
    objc_storeStrong(&v27->_faceDisparityArray, array);
    objc_storeStrong(&v27->_focusDisparityRaw, raw);
    objc_storeStrong(&v27->_focusDisparityModifier, modifiers);
    objc_storeStrong(&v27->_vfxRenderEffect, effect);
    objc_storeStrong(&v27->_depthConverter, converter);
    *&v27->_width = 0x3800000063;
    v28 = v27;
  }

  return v27;
}

- (void)renderDebugInformation:(int64_t)information effectRenderRequest:(id)request reactionStates:(id)states disparity:(id)disparity disparityCentered:(id)centered normal:(id)normal diffuse:(id)diffuse temporalFilter:(id)self0 humanDetections:(id)self1 transform:(CGAffineTransform *)self2 fNumber:(float)self3 focusDisparityRaw:(id)self4 useDisparityBufferForReactions:(id)self5 outColor:(id)self6
{
  disparityCopy = disparity;
  centeredCopy = centered;
  normalCopy = normal;
  filterCopy = filter;
  detectionsCopy = detections;
  asYUV = [color asYUV];
  v23 = PTDefaultsPublicGetDictionary();
  v24 = [v23 objectForKeyedSubscript:@"PTEffectDebug"];
  v25 = v24;
  if (information || [v24 intValue])
  {
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer)
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PTEffectDebugLayer renderDebugInformation:v27 effectRenderRequest:? reactionStates:? disparity:? disparityCentered:? normal:? diffuse:? temporalFilter:? humanDetections:? transform:? fNumber:? focusDisparityRaw:? useDisparityBufferForReactions:? outColor:?];
      }
    }

    commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer2 setLabel:@"PTEffectDebugLayer renderDebugInformation"];

    if (information == 1 || [v25 intValue])
    {
      [(PTEffectDebugLayer *)self renderThumbnailsWithDisparity:disparityCopy disparityCentered:centeredCopy normal:normalCopy temporalFilter:filterCopy outYUV:asYUV];
    }

    v52 = filterCopy;
    v53 = disparityCopy;
    v29 = [v23 objectForKeyedSubscript:@"PTEffectShowFaceRects"];
    v30 = v29;
    if (information == 2 || (v51 = [v29 intValue], information == 1) || v51)
    {
      commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
      texLuma = [asYUV texLuma];
      [detectionsCopy renderDebugRects:commandBuffer3 outTexture:texLuma debugFaceRects:information == 2];

      effectRelighting = self->_effectRelighting;
      if (effectRelighting)
      {
        v34 = ([(PTEffectRelighting *)effectRelighting smoothFaceRects]+ 56);
        v35 = 4;
        __asm { FMOV            V0.4S, #1.0 }

        v57 = *&_Q0;
        do
        {
          if (v34[14] > 0.0)
          {
            v58 = *(v34 - 1);
            v41 = *v34;
            width = [asYUV width];
            v43 = width / [asYUV height];
            util = self->_util;
            commandBuffer4 = [(PTMetalContext *)self->_metalContext commandBuffer];
            width2 = [asYUV width];
            height = [asYUV height];
            v48.i64[0] = width2;
            v48.i64[1] = height;
            v49.f32[0] = *&v58 - v41;
            v49.f32[1] = *(&v58 + 1) - (v41 * v43);
            v59 = COERCE_DOUBLE(vcvt_s32_f32(vmul_f32(v49, vcvt_f32_f64(vcvtq_f64_u64(v48)))));
            [asYUV width];
            [asYUV height];
            texLuma2 = [asYUV texLuma];
            [(PTUtil *)util renderRect:commandBuffer4 rect:0 color:texLuma2 fill:v59 outTexture:v57];
          }

          v34 += 18;
          --v35;
        }

        while (v35);
      }
    }

    [(PTMetalContext *)self->_metalContext commitAndWaitUntilScheduled];
    ++renderDebugInformation_effectRenderRequest_reactionStates_disparity_disparityCentered_normal_diffuse_temporalFilter_humanDetections_transform_fNumber_focusDisparityRaw_useDisparityBufferForReactions_outColor__frameIndex;

    filterCopy = v52;
    disparityCopy = v53;
  }
}

- (void)renderThumbnailsWithDisparity:(id)disparity disparityCentered:(id)centered normal:(id)normal temporalFilter:(id)filter outYUV:(id)v
{
  disparityCopy = disparity;
  vCopy = v;
  if ([disparityCopy width])
  {
    height = [disparityCopy height];
    v11 = ((height / [disparityCopy width]) * self->_width);
    util = self->_util;
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
    [(PTUtil *)util renderDisparity:commandBuffer inDisparity:disparityCopy outYUV:vCopy region:(v11 << 48) | (LOWORD(self->_width) << 32) drawLegend:0];

    v14 = self->_util;
    commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v25 = COERCE_DOUBLE(vcvt_s32_f32(vcvt_f32_s32(*&self->_width)));
    texLuma = [vCopy texLuma];
    [(PTUtil *)v14 renderRect:commandBuffer2 rect:1 color:texLuma fill:v25 outTexture:0.0];

    v17 = self->_util;
    commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v26 = COERCE_DOUBLE(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(*&self->_width), 0x4000000040000000)));
    texLuma2 = [vCopy texLuma];
    __asm { FMOV            V1.4S, #1.0 }

    [(PTUtil *)v17 renderRect:commandBuffer3 rect:1 color:texLuma2 fill:v26 outTexture:*&_Q1];
  }
}

@end