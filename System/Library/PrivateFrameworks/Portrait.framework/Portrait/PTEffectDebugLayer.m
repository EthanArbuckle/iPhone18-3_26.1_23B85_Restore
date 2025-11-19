@interface PTEffectDebugLayer
- (PTEffectDebugLayer)initWithMetalContext:(id)a3 effectRelighting:(id)a4 effectDescritor:(id)a5 renderState:(id)a6 util:(id)a7 colorConversion:(id)a8 msrColorPyramid:(id)a9 vfxRenderEffect:(id)a10 depthConverter:(id)a11 disparityFixedFocus:(id)a12 faceDisparityArray:(id)a13 focusDisparityRaw:(id)a14 focusDisparityModifiers:(id)a15;
- (void)renderDebugInformation:(int64_t)a3 effectRenderRequest:(id)a4 reactionStates:(id)a5 disparity:(id)a6 disparityCentered:(id)a7 normal:(id)a8 diffuse:(id)a9 temporalFilter:(id)a10 humanDetections:(id)a11 transform:(CGAffineTransform *)a12 fNumber:(float)a13 focusDisparityRaw:(id)a14 useDisparityBufferForReactions:(id)a15 outColor:(id)a16;
- (void)renderThumbnailsWithDisparity:(id)a3 disparityCentered:(id)a4 normal:(id)a5 temporalFilter:(id)a6 outYUV:(id)a7;
@end

@implementation PTEffectDebugLayer

- (PTEffectDebugLayer)initWithMetalContext:(id)a3 effectRelighting:(id)a4 effectDescritor:(id)a5 renderState:(id)a6 util:(id)a7 colorConversion:(id)a8 msrColorPyramid:(id)a9 vfxRenderEffect:(id)a10 depthConverter:(id)a11 disparityFixedFocus:(id)a12 faceDisparityArray:(id)a13 focusDisparityRaw:(id)a14 focusDisparityModifiers:(id)a15
{
  v42 = a3;
  v31 = a4;
  v41 = a4;
  v32 = a5;
  v40 = a5;
  v33 = a6;
  v39 = a6;
  v34 = a7;
  v38 = a7;
  v37 = a8;
  v36 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v43.receiver = self;
  v43.super_class = PTEffectDebugLayer;
  v26 = [(PTEffectDebugLayer *)&v43 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_metalContext, a3);
    objc_storeStrong(&v27->_effectRelighting, v31);
    objc_storeStrong(&v27->_effectDescritor, v32);
    objc_storeStrong(&v27->_renderState, v33);
    objc_storeStrong(&v27->_util, v34);
    objc_storeStrong(&v27->_colorConversion, a8);
    objc_storeStrong(&v27->_msrColorPyramid, a9);
    objc_storeStrong(&v27->_disparityFixedFocus, a12);
    objc_storeStrong(&v27->_faceDisparityArray, a13);
    objc_storeStrong(&v27->_focusDisparityRaw, a14);
    objc_storeStrong(&v27->_focusDisparityModifier, a15);
    objc_storeStrong(&v27->_vfxRenderEffect, a10);
    objc_storeStrong(&v27->_depthConverter, a11);
    *&v27->_width = 0x3800000063;
    v28 = v27;
  }

  return v27;
}

- (void)renderDebugInformation:(int64_t)a3 effectRenderRequest:(id)a4 reactionStates:(id)a5 disparity:(id)a6 disparityCentered:(id)a7 normal:(id)a8 diffuse:(id)a9 temporalFilter:(id)a10 humanDetections:(id)a11 transform:(CGAffineTransform *)a12 fNumber:(float)a13 focusDisparityRaw:(id)a14 useDisparityBufferForReactions:(id)a15 outColor:(id)a16
{
  v20 = a6;
  v56 = a7;
  v55 = a8;
  v21 = a10;
  v54 = a11;
  v22 = [a16 asYUV];
  v23 = PTDefaultsPublicGetDictionary();
  v24 = [v23 objectForKeyedSubscript:@"PTEffectDebug"];
  v25 = v24;
  if (a3 || [v24 intValue])
  {
    v26 = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!v26)
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PTEffectDebugLayer renderDebugInformation:v27 effectRenderRequest:? reactionStates:? disparity:? disparityCentered:? normal:? diffuse:? temporalFilter:? humanDetections:? transform:? fNumber:? focusDisparityRaw:? useDisparityBufferForReactions:? outColor:?];
      }
    }

    v28 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [v28 setLabel:@"PTEffectDebugLayer renderDebugInformation"];

    if (a3 == 1 || [v25 intValue])
    {
      [(PTEffectDebugLayer *)self renderThumbnailsWithDisparity:v20 disparityCentered:v56 normal:v55 temporalFilter:v21 outYUV:v22];
    }

    v52 = v21;
    v53 = v20;
    v29 = [v23 objectForKeyedSubscript:@"PTEffectShowFaceRects"];
    v30 = v29;
    if (a3 == 2 || (v51 = [v29 intValue], a3 == 1) || v51)
    {
      v31 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v32 = [v22 texLuma];
      [v54 renderDebugRects:v31 outTexture:v32 debugFaceRects:a3 == 2];

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
            v42 = [v22 width];
            v43 = v42 / [v22 height];
            util = self->_util;
            v45 = [(PTMetalContext *)self->_metalContext commandBuffer];
            v46 = [v22 width];
            v47 = [v22 height];
            v48.i64[0] = v46;
            v48.i64[1] = v47;
            v49.f32[0] = *&v58 - v41;
            v49.f32[1] = *(&v58 + 1) - (v41 * v43);
            v59 = COERCE_DOUBLE(vcvt_s32_f32(vmul_f32(v49, vcvt_f32_f64(vcvtq_f64_u64(v48)))));
            [v22 width];
            [v22 height];
            v50 = [v22 texLuma];
            [(PTUtil *)util renderRect:v45 rect:0 color:v50 fill:v59 outTexture:v57];
          }

          v34 += 18;
          --v35;
        }

        while (v35);
      }
    }

    [(PTMetalContext *)self->_metalContext commitAndWaitUntilScheduled];
    ++renderDebugInformation_effectRenderRequest_reactionStates_disparity_disparityCentered_normal_diffuse_temporalFilter_humanDetections_transform_fNumber_focusDisparityRaw_useDisparityBufferForReactions_outColor__frameIndex;

    v21 = v52;
    v20 = v53;
  }
}

- (void)renderThumbnailsWithDisparity:(id)a3 disparityCentered:(id)a4 normal:(id)a5 temporalFilter:(id)a6 outYUV:(id)a7
{
  v27 = a3;
  v9 = a7;
  if ([v27 width])
  {
    v10 = [v27 height];
    v11 = ((v10 / [v27 width]) * self->_width);
    util = self->_util;
    v13 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [(PTUtil *)util renderDisparity:v13 inDisparity:v27 outYUV:v9 region:(v11 << 48) | (LOWORD(self->_width) << 32) drawLegend:0];

    v14 = self->_util;
    v15 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v25 = COERCE_DOUBLE(vcvt_s32_f32(vcvt_f32_s32(*&self->_width)));
    v16 = [v9 texLuma];
    [(PTUtil *)v14 renderRect:v15 rect:1 color:v16 fill:v25 outTexture:0.0];

    v17 = self->_util;
    v18 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v26 = COERCE_DOUBLE(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(*&self->_width), 0x4000000040000000)));
    v19 = [v9 texLuma];
    __asm { FMOV            V1.4S, #1.0 }

    [(PTUtil *)v17 renderRect:v18 rect:1 color:v19 fill:v26 outTexture:*&_Q1];
  }
}

@end