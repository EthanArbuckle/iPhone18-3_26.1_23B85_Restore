@interface PKCategoryVisualizationCardView
- (PKCategoryVisualizationCardView)initWithFrame:(CGRect)frame;
- (double)_updateCircles;
- (float)_calculateNewCirclePositions;
- (id)rendererState;
- (unint64_t)_updateRenderPassDescriptorWithDrawable:(void *)drawable;
- (void)_createMetalResourcesWithTextures:(uint64_t)textures;
- (void)_empty;
- (void)_startMotionUpdates;
- (void)_stopMotionUpdates;
- (void)_updateMotionEnabled;
- (void)_updatePausedState;
- (void)_updateTextureAndBlurShader;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)motionManager:(id)manager didReceiveMotion:(id)motion;
- (void)renderLoop:(id)loop drawAtTime:(double)time;
- (void)renderLoop:(id)loop drawableSizeDidChange:(CGSize)change;
- (void)renderWithTextures:(id)textures rendererState:(id)state;
- (void)setBlurDisabled:(BOOL)disabled;
- (void)setMagnitudes:(id)magnitudes withStyle:(int64_t)style;
- (void)setMotionEnabled:(BOOL)enabled;
- (void)setPaused:(BOOL)paused;
@end

@implementation PKCategoryVisualizationCardView

- (void)_updateTextureAndBlurShader
{
  if (self)
  {
    if ((*(self + 584) & 1) == 0)
    {
      v2 = *(self + 408);
      if (v2)
      {
        [v2 drawableSize];
        v5 = v3;
        v6 = v4;
        if (v3 <= 0.0 || v4 <= 0.0)
        {
          v8 = 1.0;
        }

        else
        {
          v8 = v4 / v3;
        }

        v9 = 1.0 / v8;
        LODWORD(v10) = 0;
        *(&v10 + 1) = v9;
        *(self + 624) = xmmword_25E0D5B80;
        *(self + 640) = v10;
        *(self + 656) = xmmword_25E0D5F30;
        *(self + 672) = xmmword_25E0D5B90;
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v13 = v12 * 50.0;

        v14 = v13;
        v15 = v14 / v8;
        v16 = (v14 / v8);
        v17 = (v5 + v16 * 2.0);
        v18 = (v6 + v14 * 2.0);
        device = [*(self + 408) device];
        v20 = *(self + 472);
        if (!v20 || [v20 width] != v17 || objc_msgSend(*(self + 472), "height") != v18)
        {
          v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:objc_msgSend(*(self + 408) width:"pixelFormat") height:v17 mipmapped:v18, 0];
          [v21 setUsage:5];
          v22 = [device newTextureWithDescriptor:v21];
          v23 = *(self + 472);
          *(self + 472) = v22;
        }

        if (*(self + 10786))
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v13;
        }

        v25 = OUTLINED_FUNCTION_2_0();
        if (v25)
        {
          device2 = [v25 device];
          v27 = device2;
          if (device2 == device)
          {
            [OUTLINED_FUNCTION_2_0() sigma];
            v29 = v28;

            if (v24 == v29)
            {
LABEL_22:
              [OUTLINED_FUNCTION_2_0() setEdgeMode:1];
              v35 = v15;
              v36 = v13;
              v37 = 0;
              [OUTLINED_FUNCTION_2_0() setOffset:&v35];
              v34 = OUTLINED_FUNCTION_2_0();
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v17 - v16 * 2.0);
              v39 = (v18 - v14 * 2.0);
              v40 = 1;
              [v34 setClipRect:&v35];

              return;
            }
          }

          else
          {
          }
        }

        v30 = objc_alloc(MEMORY[0x277CD7520]);
        *&v31 = v24;
        v32 = [v30 initWithDevice:device sigma:v31];
        v33 = *(self + 560);
        *(self + 560) = v32;

        goto LABEL_22;
      }
    }
  }
}

- (void)_updatePausedState
{
  if (self)
  {
    if (*(self + 584))
    {
      v2 = 1;
    }

    else
    {
      v2 = (*(self + 587) & 1) != 0 || *(self + 10768) ? 0 : *(self + 10785);
    }

    v3 = v2 & 1;
    if (*(self + 585) != v3)
    {
      *(self + 585) = v3;
      [*(self + 408) setPaused:*(self + 585)];
      [(PKCategoryVisualizationCardView *)self _updateMotionEnabled];
      if ((*(self + 585) & 1) == 0 && *(self + 568) == 1)
      {
        *(self + 568) = 0;
        v5 = *(self + 576);
        if (v5 == 2)
        {

          [(PKCategoryVisualizationCardView *)self _empty];
        }

        else
        {
          if (v5 == 1)
          {
            if ((*(self + 10772) & 1) == 0)
            {
              *(self + 10772) = 1;
              *(self + 788) = 869711765;
              *(self + 792) = 1097859072;
            }
          }

          else if (v5)
          {
            return;
          }

          [(PKCategoryVisualizationCardView *)self _updateCircles];
        }
      }
    }
  }
}

- (double)_updateCircles
{
  v69 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_48;
  }

  v3 = result;
  v4 = *(result + 110);
  v5 = *(result + 75);
  if (v5)
  {
    v6 = 0;
    v7 = *(result + 76);
    do
    {
      v8 = *v7++;
      a2.n128_f64[0] = v8;
      if (v8 > 0.0)
      {
        ++v6;
      }

      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  *(result + 1344) = v6;
  MEMORY[0x28223BE20](a2);
  if (!v4)
  {
    v49 = vcvts_n_f32_u32(arc4random(), 0x20uLL) * 6.28318531;
    v59 = v49;
    OUTLINED_FUNCTION_3_0();
    v52 = v51 / v50;
    v58 = v52;
    if (v50)
    {
      goto LABEL_11;
    }

LABEL_43:
    v11 = 0;
    v48 = 1;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_3_0();
  v58 = 0.0;
  v59 = 0.0;
  if (!v10)
  {
    goto LABEL_43;
  }

LABEL_11:
  v56[1] = v56;
  v11 = 0;
  v12 = 0;
  v13 = (v3 + v9);
  v60 = &v55;
  v14 = vdup_n_s32(0x2F800000u);
  v63 = vdupq_n_s64(0x3FB999999999999AuLL);
  v57 = vdupq_n_s64(0x3FD999999999999AuLL);
  __asm { FMOV            V0.2D, #2.0 }

  v62 = _Q0;
  __asm { FMOV            V0.2D, #-1.0 }

  v61 = _Q0;
  do
  {
    v21 = *(v13[1].i64[0] + 8 * v12);
    if (v21 <= 0.0)
    {
      goto LABEL_39;
    }

    v22 = v21 * 80.0;
    v23 = v22 > 1.0 || v22 <= 0.0;
    v24 = vcvtad_u64_f64(v22);
    if (!v23)
    {
      v24 = 1;
    }

    v25 = v24 >= 88 - v11 ? 88 - v11 : v24;
    if (!v25)
    {
      goto LABEL_39;
    }

    if (!v4)
    {
      v39 = __sincosf_stret(v59 + (v12 * v58));
      v30 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v39), v57));
      goto LABEL_34;
    }

    v26 = v13[18].i64[0];
    if (!v26)
    {
      v30 = 0;
LABEL_34:
      v40 = &v60[28 * v11];
      do
      {
        v64 = *(*&v3[v2 + 3] + 16 * v12);
        v41 = v30;
        if (v4)
        {
          v42 = arc4random();
          v41 = vadd_f32(v30, vcvt_f32_f64(vmulq_f64(vmlaq_f64(v61, v62, vcvtq_f64_f32(vmul_f32(vcvt_f32_u32(__PAIR64__(arc4random(), v42)), v14))), v63)));
        }

        v43 = (vcvts_n_f32_u32(arc4random(), 0x20uLL) * 0.12) + 0.04;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v2 = 74;
        v44 = CFAbsoluteTimeGetCurrent() - v3[74];
        *(v40 - 7) = v41;
        *(v40 - 5) = 0;
        *(v40 - 3) = v43;
        *(v40 - 1) = 0x3F8000003DCCCCCDLL;
        *v40 = v44;
        v45 = v65;
        *(v40 + 1) = v64;
        v46 = v66;
        *(v40 + 5) = v45;
        *(v40 + 9) = v46;
        v47 = v68;
        *(v40 + 13) = v67;
        *(v40 + 17) = v47;
        ++v11;
        v40 += 28;
        --v25;
      }

      while (v25);
      goto LABEL_38;
    }

    v27 = 0;
    v28 = *(v13[1].i64[1] + 16 * v12);
    v29 = v13 + 22;
    v30 = 0;
    do
    {
      v31 = v29[-1];
      if ((vminvq_u32(vceqq_f32(v31, v28)) & 0x80000000) != 0)
      {
        v32 = *v29[-3].f32;
        v33 = &v54[112 * v11];
        *v33 = v32;
        v34 = *(&v29[-3] + 8);
        *(v33 + 3) = v29[-2].i64[1];
        *(v33 + 8) = v34;
        v35 = *v29;
        v36 = v29[1];
        *(v33 + 2) = v31;
        *(v33 + 3) = v35;
        v37 = v29[2];
        v38 = v29[3];
        *(v33 + 4) = v36;
        *(v33 + 5) = v37;
        *(v33 + 6) = v38;
        ++v11;
        v30 = vadd_f32(v30, v32);
        if (++v27 >= v25)
        {
          break;
        }
      }

      v29 += 7;
      --v26;
    }

    while (v26);
    if (v27)
    {
      v28.f32[0] = v27;
      v30 = vdiv_f32(v30, vdup_lane_s32(*v28.f32, 0));
    }

    v23 = v25 > v27;
    v25 -= v27;
    if (v23)
    {
      goto LABEL_34;
    }

LABEL_38:
    if (v11 > 0x57)
    {
      goto LABEL_41;
    }

LABEL_39:
    ++v12;
    v13 = &v3[v2];
  }

  while (v12 < v13->i64[1]);
  if (v11)
  {
LABEL_41:
    qsort(v54, v11, 0x70uLL, PKCompareCircleDataByCreated);
    v48 = 0;
    v2 = 74;
    goto LABEL_45;
  }

  v48 = 1;
LABEL_45:
  result = memcpy(&v3[v2 + 38], v54, 112 * v11);
  *(v3 + 110) = v11;
  if (!v4 && (v48 & 1) == 0)
  {
    *(v3 + 2692) += 210;
    result = [(PKCategoryVisualizationCardView *)v3 _updatePausedState];
  }

LABEL_48:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = PKCategoryVisualizationCardView;
  [(PKCategoryVisualizationCardView *)&v20 layoutSubviews];
  [(PKCategoryVisualizationCardView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layer = [(PKMetalRenderLoop *)self->_renderLoop layer];
  [layer setFrame:{v4, v6, v8, v10}];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];

  PKSizeRoundToPixelWithScale();
  v14 = v13;
  v16 = v15;
  [(PKMetalRenderLoop *)self->_renderLoop drawableSize];
  if (v18 != v14 || v17 != v16)
  {
    [(PKMetalRenderLoop *)self->_renderLoop setDrawableSize:v14, v16];
  }
}

- (void)_updateMotionEnabled
{
  if (self)
  {
    v2 = *(self + 10784) == 1 && (*(self + 585) & 1) == 0 ? [*(self + 408) effectiveIsPaused] ^ 1 : 0;
    if (*(self + 586) != v2)
    {
      *(self + 586) = v2;
      if (*(self + 586) == 1)
      {

        [(PKCategoryVisualizationCardView *)self _startMotionUpdates];
      }

      else
      {

        [(PKCategoryVisualizationCardView *)self _stopMotionUpdates];
      }
    }
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = PKCategoryVisualizationCardView;
  [(PKCategoryVisualizationCardView *)&v6 didMoveToWindow];
  window = [(PKCategoryVisualizationCardView *)self window];
  renderLoop = self->_renderLoop;
  windowScene = [window windowScene];
  [(PKRenderLoop *)renderLoop attachToWindowScene:windowScene];

  [(PKCategoryVisualizationCardView *)self _updateMotionEnabled];
}

- (float)_calculateNewCirclePositions
{
  if (!self)
  {
    return result;
  }

  v3 = (self + 592);
  v4 = *(self + 880);
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = 0;
  v6 = *(self + 10752) * -0.14 + 1.5;
  __asm { FMOV            V3.2S, #-4.0 }

  v12 = vdup_n_s32(0x3D4CCCCDu);
  v13 = vdup_n_s32(0x3A83126Fu);
  v14 = vdup_n_s32(0x3F5C28F6u);
  v15 = vdup_n_s32(0xBE4CCCCD);
  do
  {
    v16 = &v3[14 * v5];
    v17 = v16 + 38;
    v18 = v16[38];
    v19 = v16[39];
    v20 = v16[40].f32[0];
    v21 = v16[40].f32[1];
    v22 = v16[41].f32[0];
    v23 = *v16[42].f32;
    v2.f32[0] = (v20 * v21) * v6;
    v24 = &v3[42];
    v25 = 0;
    v26 = v5;
    do
    {
      if (!v26)
      {
        goto LABEL_16;
      }

      v27 = v24[-1].f32[0] * v24[-1].f32[1];
      v28 = vminvq_u32(vceqq_f32(v23, *v24));
      v29 = vsub_f32(v18, *v24[-2].f32);
      v30 = sqrtf(vaddv_f32(vmul_f32(v29, v29))) - (v2.f32[0] + v27);
      v31 = v30;
      if ((v28 & 0x80000000) != 0 && v31 > 0.1)
      {
        v25 = vmla_f32(v25, v15, vmul_n_f32(v29, (v2.f32[0] * v27) / (v30 * v30)));
        goto LABEL_16;
      }

      if ((v28 & 0x80000000) != 0 && v30 < 0.0)
      {
        v32 = v30 * v30;
LABEL_15:
        v25 = vmla_f32(v25, 0x3F0000003F000000, vmul_n_f32(v29, v32 * 600.0));
        goto LABEL_16;
      }

      if ((v28 & 0x80000000) == 0 && v31 < 0.08)
      {
        v33 = v31 + -0.08;
        v32 = v33 * v33;
        goto LABEL_15;
      }

LABEL_16:
      --v26;
      v24 += 7;
      --v4;
    }

    while (v4);
    v34 = vaddv_f32(vmul_f32(v18, v18));
    if (v34 > 0.3)
    {
      v35 = v34 + -0.3;
      v25 = vmla_f32(v25, _D3, vmul_n_f32(v18, v35));
    }

    v2 = vmla_f32(vdiv_f32(vmul_f32(vmla_f32(v25, v12, v3[1271]), v13), vdup_lane_s32(v2, 0)), v14, v19);
    v36 = vadd_f32(v18, v2);
    v37 = v21;
    v38 = (v22 - v21);
    if (v22 == 1.0)
    {
      v39 = 0.04;
    }

    else
    {
      v39 = 0.125;
    }

    v40 = v37 + v38 * v39;
    *&v41 = (v20 * v40) * 0.85;
    v42 = *&v41;
    LODWORD(v43) = 0;
    HIDWORD(v43) = v41;
    *&v44 = 0;
    *(&v44 + 1) = v41;
    *&v45 = v36;
    *(&v45 + 1) = 0x3F80000000000000;
    *v17 = v36;
    v17[1] = v2;
    v17[2].f32[1] = v40;
    *v17[6].f32 = LODWORD(v42);
    *v17[8].f32 = v43;
    *v17[10].f32 = v44;
    *v17[12].f32 = v45;
    ++v5;
    v3 = (self + 592);
    v4 = *(self + 880);
  }

  while (v5 < v4);
LABEL_23:
  v46 = v3[24].f32[1] + 0.075;
  v3[24].f32[1] = fminf(v46, v3[25].f32[0]);
  *&v47 = 0;
  v48 = *(self + 788);
  v49 = *(self + 792);
  LODWORD(v50) = 0;
  HIDWORD(v50) = 0;
  *(&v50 + 4) = LODWORD(v48);
  *(&v47 + 1) = LODWORD(v48);
  *(self + 816) = LODWORD(v48);
  *(self + 832) = v50;
  *(self + 848) = v47;
  *(self + 864) = xmmword_25E0D5B90;
  if (v48 == v49)
  {
    *(self + 10772) = 0;
  }

  v51 = 0.75;
  if (!*(self + 10752))
  {
    v51 = 0.5;
  }

  result = *(self + 752) * 0.95 + v51 * 0.05;
  *(self + 752) = result;
  return result;
}

- (PKCategoryVisualizationCardView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PKCategoryVisualizationCardView;
  result = [(PKCategoryVisualizationCardView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_needsDraw = 1;
  }

  return result;
}

- (void)dealloc
{
  PKCategoryVisualizationRendererStateDestroy(&self->_state);
  [(PKCategoryVisualizationCardView *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKCategoryVisualizationCardView;
  [(PKCategoryVisualizationCardView *)&v3 dealloc];
}

- (void)renderWithTextures:(id)textures rendererState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!self->_invalidated)
  {
    texturesCopy = textures;
    PKCategoryVisualizationRendererStateDestroy(&self->_state);
    if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = *&self->_anon_268[24];
      v24 = *&self->_anon_268[8];
      v25 = v9;
      v10 = *&self->_anon_268[56];
      v26 = *&self->_anon_268[40];
      v27 = v10;
      memcpy(v22, stateCopy + 16, sizeof(v22));
      PKCategoryVisualizationRendererStateCopy(v22, v23);
      memcpy(&self->_state, v23, 0x27D0uLL);
      v11 = v25;
      *&self->_anon_268[8] = v24;
      *&self->_anon_268[24] = v11;
      v12 = v27;
      *&self->_anon_268[40] = v26;
      *&self->_anon_268[56] = v12;
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v14 = [(NSArray *)self->_bucketColors count];
      v15 = malloc_type_malloc(8 * v14, 0x657EB5BFuLL);
      bzero(v15, 8 * v14);
      v16 = malloc_type_malloc(16 * v14, 0x1000040451B5BE8uLL);
      bucketColors = self->_bucketColors;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__PKCategoryVisualizationCardView_renderWithTextures_rendererState___block_invoke;
      v19[3] = &__block_descriptor_10224_e24_v32__0__UIColor_8Q16_B24l;
      *&v19[4] = Current;
      v19[5] = v14;
      v19[6] = v15;
      v19[7] = v16;
      bzero(v20, 0x2798uLL);
      v18 = vdup_n_s32(0xBBA3D70A);
      v20[1267] = v18;
      v21 = 0u;
      [(NSArray *)bucketColors enumerateObjectsUsingBlock:v19];
      self->_state.startTime = Current;
      self->_state.bucketCount = v14;
      self->_state.magnitudeForBucket = v15;
      *self->_anon_268 = v16;
      bzero(&self->_anon_268[8], 0x2798uLL);
      *&self->_anon_268[10144] = v18;
      *&self->_anon_268[10152] = 0u;
    }

    [(PKCategoryVisualizationCardView *)self _createMetalResourcesWithTextures:texturesCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

float32x4_t __68__PKCategoryVisualizationCardView_renderWithTextures_rendererState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [a2 getRed:&v11 green:&v10 blue:&v9 alpha:&v8];
  v5.f64[0] = v11;
  v6.f64[0] = v9;
  v5.f64[1] = v10;
  v6.f64[1] = v8;
  result = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v6);
  *(*(a1 + 56) + 16 * a3) = result;
  return result;
}

- (id)rendererState
{
  v3 = [PKPassFaceViewCategoryVisualizationRendererState alloc];
  memcpy(v6, &self->_state, sizeof(v6));
  v4 = [(PKPassFaceViewCategoryVisualizationRendererState *)v3 initWithCurrentRendererState:v6];

  return v4;
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKRenderLoop *)self->_renderLoop setDelegate:0];
    [(PKRenderLoop *)self->_renderLoop invalidate];
    layer = [(PKMetalRenderLoop *)self->_renderLoop layer];
    [layer removeFromSuperlayer];

    renderLoop = self->_renderLoop;
    self->_renderLoop = 0;

    commandQueue = self->_commandQueue;
    self->_commandQueue = 0;

    overlayTextureLoader = self->_overlayTextureLoader;
    self->_overlayTextureLoader = 0;

    overlayNormalTextureLoader = self->_overlayNormalTextureLoader;
    self->_overlayNormalTextureLoader = 0;

    texture = self->_texture;
    self->_texture = 0;

    overlayTexture = self->_overlayTexture;
    self->_overlayTexture = 0;

    overlayNormalTexture = self->_overlayNormalTexture;
    self->_overlayNormalTexture = 0;

    overlayPipelineState = self->_overlayPipelineState;
    self->_overlayPipelineState = 0;

    circlePipelineState = self->_circlePipelineState;
    self->_circlePipelineState = 0;

    circleOutlinePipelineState = self->_circleOutlinePipelineState;
    self->_circleOutlinePipelineState = 0;

    vertexCoordsBuffer = self->_vertexCoordsBuffer;
    self->_vertexCoordsBuffer = 0;

    textureCoordsBuffer = self->_textureCoordsBuffer;
    self->_textureCoordsBuffer = 0;

    circleUniformsBuffer = self->_circleUniformsBuffer;
    self->_circleUniformsBuffer = 0;

    circleDataBuffer = self->_circleDataBuffer;
    self->_circleDataBuffer = 0;

    singleCircleDataBuffer = self->_singleCircleDataBuffer;
    self->_singleCircleDataBuffer = 0;

    blurShader = self->_blurShader;
    self->_blurShader = 0;

    if (self->_effectiveMotionEnabled)
    {

      [(PKCategoryVisualizationCardView *)self _stopMotionUpdates];
    }
  }
}

- (void)setMagnitudes:(id)magnitudes withStyle:(int64_t)style
{
  v28 = *MEMORY[0x277D85DE8];
  magnitudesCopy = magnitudes;
  v7 = magnitudesCopy;
  if (!self->_invalidated)
  {
    v9 = [magnitudesCopy copy];
    magnitudes = self->_magnitudes;
    self->_magnitudes = v9;

    bucketCount = self->_state.bucketCount;
    if (bucketCount)
    {
      bzero(self->_state.magnitudeForBucket, 8 * bucketCount);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = self->_magnitudes;
    v13 = [(NSSet *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          [v17 magnitude];
          v19 = fmin(fmax(v18, 0.0), 1.0);
          bucket = [v17 bucket];
          v21 = v19 <= 0.0 || bucket < 1;
          if (!v21 && bucket < self->_state.bucketCount)
          {
            self->_state.magnitudeForBucket[bucket] = fmin(fmax(v19 + self->_state.magnitudeForBucket[bucket], 0.0), 1.0);
          }
        }

        v14 = [(NSSet *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    self->_needsDraw = 1;
    [(PKCategoryVisualizationCardView *)self _updatePausedState];
    if (!self->_emptying)
    {
      if ((style - 1) > 1 || !self->_effectivePaused)
      {
        self->_hasPendingUpdate = 0;
        if (style == 2)
        {
          [(PKCategoryVisualizationCardView *)self _empty];
          goto LABEL_2;
        }

        if (style == 1)
        {
          if ((self->_anon_268[10156] & 1) == 0)
          {
            self->_anon_268[10156] = 1;
            v22.n128_u64[0] = 0x4170000033D6BF95;
            *&self->_anon_268[172] = 0x4170000033D6BF95;
          }
        }

        else if (style)
        {
          goto LABEL_2;
        }

        [(PKCategoryVisualizationCardView *)self _updateCircles];
        goto LABEL_2;
      }

      self->_hasPendingUpdate = 1;
      self->_pendingUpdateStyle = style;
    }
  }

LABEL_2:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setMotionEnabled:(BOOL)enabled
{
  if (self->_motionEnabled != enabled)
  {
    self->_motionEnabled = enabled;
    [(PKCategoryVisualizationCardView *)self _updateMotionEnabled];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(PKCategoryVisualizationCardView *)self _updatePausedState];
  }
}

- (void)setBlurDisabled:(BOOL)disabled
{
  if (self->_blurDisabled != disabled)
  {
    self->_blurDisabled = disabled;
    [(PKCategoryVisualizationCardView *)self _updateTextureAndBlurShader];
  }
}

- (void)renderLoop:(id)loop drawAtTime:(double)time
{
  if ([(PKMetalRenderLoop *)self->_renderLoop isDrawableAvailable:loop])
  {
    currentDrawable = [(PKMetalRenderLoop *)self->_renderLoop currentDrawable];
    if (currentDrawable && [(PKCategoryVisualizationCardView *)self _updateRenderPassDescriptorWithDrawable:currentDrawable])
    {
      *&v7 = [(PKCategoryVisualizationCardView *)self _calculateNewCirclePositions];
      contents = [(MTLBuffer *)self->_circleUniformsBuffer contents];
      *contents = *&self->_anon_268[8];
      v9 = *&self->_anon_268[72];
      v11 = *&self->_anon_268[24];
      v10 = *&self->_anon_268[40];
      contents[3] = *&self->_anon_268[56];
      contents[4] = v9;
      contents[1] = v11;
      contents[2] = v10;
      v12 = *&self->_anon_268[136];
      v14 = *&self->_anon_268[88];
      v13 = *&self->_anon_268[104];
      contents[7] = *&self->_anon_268[120];
      contents[8] = v12;
      contents[5] = v14;
      contents[6] = v13;
      memcpy([(MTLBuffer *)self->_circleDataBuffer contents], &self->_anon_268[280], 112 * *&self->_anon_268[264]);
      contents2 = [(MTLBuffer *)self->_singleCircleDataBuffer contents];
      v17 = *&self->_anon_268[168];
      v16 = *&self->_anon_268[184];
      *contents2 = *&self->_anon_268[152];
      contents2[1] = v17;
      contents2[2] = v16;
      v18 = *&self->_anon_268[248];
      v20 = *&self->_anon_268[200];
      v19 = *&self->_anon_268[216];
      contents2[5] = *&self->_anon_268[232];
      contents2[6] = v18;
      contents2[3] = v20;
      contents2[4] = v19;
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      if (self->_overlayTextureLoader || self->_overlayNormalTextureLoader)
      {
        device = [(PKMetalRenderLoop *)self->_renderLoop device];
        blitCommandEncoder = [commandBuffer blitCommandEncoder];
        overlayTextureLoader = self->_overlayTextureLoader;
        if (overlayTextureLoader)
        {
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __57__PKCategoryVisualizationCardView_renderLoop_drawAtTime___block_invoke;
          v38[3] = &unk_279A00520;
          v38[4] = self;
          v39 = device;
          v40 = blitCommandEncoder;
          [(PKTextureLoader *)overlayTextureLoader tiling:1 read:v38];
          v25 = self->_overlayTextureLoader;
          self->_overlayTextureLoader = 0;
        }

        overlayNormalTextureLoader = self->_overlayNormalTextureLoader;
        if (overlayNormalTextureLoader)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __57__PKCategoryVisualizationCardView_renderLoop_drawAtTime___block_invoke_49;
          v35[3] = &unk_279A00520;
          v35[4] = self;
          v36 = device;
          v37 = blitCommandEncoder;
          [(PKTextureLoader *)overlayNormalTextureLoader tiling:1 read:v35];
          v27 = self->_overlayNormalTextureLoader;
          self->_overlayNormalTextureLoader = 0;
        }

        [blitCommandEncoder endEncoding];
      }

      if (!self->_overlayTexture || !self->_overlayNormalTexture)
      {
        [(PKCategoryVisualizationCardView *)self invalidate];
LABEL_26:

        goto LABEL_21;
      }

      v28 = [commandBuffer renderCommandEncoderWithDescriptor:self->_renderPassDescriptor];
      [v28 setRenderPipelineState:self->_circlePipelineState];
      [v28 setVertexBuffer:self->_vertexCoordsBuffer offset:0 atIndex:0];
      [v28 setVertexBuffer:self->_textureCoordsBuffer offset:0 atIndex:1];
      [v28 setVertexBuffer:self->_circleUniformsBuffer offset:0 atIndex:2];
      [v28 setVertexBuffer:self->_circleDataBuffer offset:0 atIndex:3];
      if (*&self->_anon_268[264])
      {
        [v28 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:?];
      }

      if (*&self->_anon_268[172] != *&self->_anon_268[176])
      {
        [v28 setRenderPipelineState:self->_circleOutlinePipelineState];
        [v28 setVertexBuffer:self->_singleCircleDataBuffer offset:0 atIndex:3];
        [v28 drawPrimitives:4 vertexStart:0 vertexCount:4];
      }

      [v28 endEncoding];

      blurShader = self->_blurShader;
      texture = self->_texture;
      texture = [currentDrawable texture];
      [(MPSUnaryImageKernel *)blurShader encodeToCommandBuffer:commandBuffer sourceTexture:texture destinationTexture:texture];

      v32 = [commandBuffer renderCommandEncoderWithDescriptor:self->_secondRenderPassDescriptor];
      [v32 setRenderPipelineState:self->_overlayPipelineState];
      [v32 setVertexBuffer:self->_vertexCoordsBuffer offset:0 atIndex:0];
      [v32 setVertexBuffer:self->_textureCoordsBuffer offset:0 atIndex:1];
      [v32 setFragmentBuffer:self->_circleUniformsBuffer offset:0 atIndex:0];
      [v32 setFragmentTexture:self->_overlayTexture atIndex:0];
      [v32 setFragmentTexture:self->_overlayNormalTexture atIndex:1];
      [v32 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v32 endEncoding];
      [commandBuffer presentDrawable:currentDrawable];
      [commandBuffer commit];
      if (self->_needsDraw)
      {
        self->_needsDraw = 0;
        v33 = *&self->_anon_268[10152];
        if (!v33)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v33 = *&self->_anon_268[10152];
        if (!v33)
        {
          goto LABEL_25;
        }
      }

      v34 = v33 - 1;
      *&self->_anon_268[10152] = v34;
      if (!v34)
      {
LABEL_27:
        [(PKCategoryVisualizationCardView *)self _updatePausedState];
      }

LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
    currentDrawable = 0;
  }

LABEL_21:
}

void __57__PKCategoryVisualizationCardView_renderLoop_drawAtTime___block_invoke(uint64_t a1, uint64_t a2)
{
  DefaultPrivate2DTexture = PKTextureLoaderResultCreateDefaultPrivate2DTexture(a2, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(v4 + 480);
  *(v4 + 480) = DefaultPrivate2DTexture;

  if (!*(*(a1 + 32) + 480))
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "PKCategoryVisualizationCardView: could not load overlay texture.", v7, 2u);
    }
  }
}

void __57__PKCategoryVisualizationCardView_renderLoop_drawAtTime___block_invoke_49(uint64_t a1, uint64_t a2)
{
  DefaultPrivate2DTexture = PKTextureLoaderResultCreateDefaultPrivate2DTexture(a2, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(v4 + 488);
  *(v4 + 488) = DefaultPrivate2DTexture;

  if (!*(*(a1 + 32) + 488))
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25E0A9000, v6, OS_LOG_TYPE_DEFAULT, "PKCategoryVisualizationCardView: could not load overlay normal texture.", v7, 2u);
    }
  }
}

id __69__PKCategoryVisualizationCardView__createMetalResourcesWithTextures___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v6 newFunctionWithName:a2];
  [v5 setVertexFunction:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) newFunctionWithName:v7 constantValues:*(a1 + 48) error:0];

  [v9 setFragmentFunction:v10];
  v11 = [*(a1 + 56) newRenderPipelineStateWithDescriptor:*(a1 + 32) error:0];

  return v11;
}

void __41__PKCategoryVisualizationCardView__empty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    __41__PKCategoryVisualizationCardView__empty__block_invoke_cold_1(WeakRetained, a1);
    WeakRetained = v3;
  }
}

void __41__PKCategoryVisualizationCardView__empty__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    __41__PKCategoryVisualizationCardView__empty__block_invoke_2_cold_1(WeakRetained, v2);
    WeakRetained = v3;
  }
}

- (void)motionManager:(id)manager didReceiveMotion:(id)motion
{
  attitude = [motion attitude];
  [attitude quaternion];
  v7.f64[1] = v6;
  v9.f64[1] = v8;
  v40 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v7);

  v10 = vmulq_f32(v40, xmmword_25E0D5BF0);
  v11 = vnegq_f32(v10);
  v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
  v38 = vextq_s8(v12, v12, 8uLL);
  v39 = vmulq_f32(vextq_s8(v10, v11, 8uLL), 0);
  v13 = vrev64q_s32(v10);
  v13.i32[0] = v11.i32[1];
  v13.i32[3] = v11.i32[2];
  v41 = v10;
  v37 = v13;
  v14 = vaddq_f32(vmlaq_f32(v10, 0, v13), vmlaq_f32(v39, 0, v38));
  v15 = vmulq_f32(v14, v14);
  v16 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v17 = xmmword_25E0D5B90;
  if (vaddv_f32(v16) != 0.0)
  {
    v18 = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
    v19 = vrsqrte_f32(v18);
    v20 = vmul_f32(v19, vrsqrts_f32(v18, vmul_f32(v19, v19)));
    v17 = vmulq_n_f32(v14, vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).f32[0]);
  }

  *v21.i64 = simd_matrix4x4(v17);
  p_state = &self->_state;
  p_state[423].magnitudeForBucket = vneg_f32(*&vmlaq_f32(vaddq_f32(v23, vmlaq_f32(vmulq_f32(v21, 0), 0, v22)), 0, v24));
  v26 = vaddq_f32(vmlaq_f32(vmulq_f32(v41, vdupq_n_s32(0x3F74C5EFu)), 0, v37), vmlaq_f32(v39, vdupq_n_s32(0x3E95F619u), v38));
  v27 = vmulq_f32(v26, v26);
  v28 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v29 = xmmword_25E0D5B90;
  if (vaddv_f32(v28) != 0.0)
  {
    v30 = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
    v31 = vrsqrte_f32(v30);
    v32 = vmul_f32(v31, vrsqrts_f32(v30, vmul_f32(v31, v31)));
    v29 = vmulq_n_f32(v26, vmul_f32(v32, vrsqrts_f32(v30, vmul_f32(v32, v32))).f32[0]);
  }

  *&v33 = simd_matrix4x4(v29);
  *&p_state[4].startTime = v33;
  *&p_state[4].magnitudeForBucket = v34;
  *&p_state[5].bucketCount = v35;
  *&p_state[6].startTime = v36;
}

- (void)_createMetalResourcesWithTextures:(uint64_t)textures
{
  v3 = a2;
  if (textures && (*(textures + 584) & 1) == 0)
  {
    v4 = OUTLINED_FUNCTION_1_0();
    if (v4)
    {
      device = [v4 device];
    }

    else
    {
      device = MTLCreateSystemDefaultDevice();
      if (!device)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"could not create metal device"];
      }

      OUTLINED_FUNCTION_0_2([[PKMetalRenderLoop alloc] initWithPixelFormat:80 forDevice:device], 408);
      [*(textures + 408) setColorSpace:PKColorSpaceStandardRGB()];
      [OUTLINED_FUNCTION_1_0() setFramebufferOnly:0];
      v6 = OUTLINED_FUNCTION_1_0();
      LODWORD(v7) = 30.0;
      LODWORD(v8) = 30.0;
      LODWORD(v9) = 30.0;
      [v6 setPreferredFrameRateRange:{v7, v8, v9}];
      [OUTLINED_FUNCTION_1_0() setDelegate:textures];
      [OUTLINED_FUNCTION_1_0() setPaused:*(textures + 585)];
      OUTLINED_FUNCTION_0_2([device newCommandQueue], 448);
      layer = [OUTLINED_FUNCTION_1_0() layer];
      [layer setOpaque:0];
      layer2 = [textures layer];
      [layer2 addSublayer:layer];

      [textures setNeedsLayout];
    }

    OUTLINED_FUNCTION_0_2([device newBufferWithBytes:&textureCoords length:32 options:0], 528);
    OUTLINED_FUNCTION_0_2([device newBufferWithBytes:&vertexCoords length:64 options:0], 520);
    OUTLINED_FUNCTION_0_2([device newBufferWithLength:144 options:0], 536);
    OUTLINED_FUNCTION_0_2([device newBufferWithLength:9856 options:0], 544);
    OUTLINED_FUNCTION_0_2([device newBufferWithLength:112 options:0], 552);
    v12 = PKPassKitUIFoundationBundle();
    v13 = [device newDefaultLibraryWithBundle:v12 error:0];
    v14 = [v12 pathForResource:@"CategoryVisualizationCardView" ofType:@"pipelinelib"];
    v15 = 0;
    if (v14)
    {
      v15 = [device newPipelineLibraryWithFilePath:v14 error:0];
    }

    v16 = objc_alloc_init(MEMORY[0x277CD6F78]);
    [v16 setPipelineLibrary:v15];
    v17 = objc_alloc_init(MEMORY[0x277CD6D70]);
    v37 = 0;
    [v17 setConstantValue:&v37 type:53 atIndex:0];
    [v16 colorAttachments];
    v18 = v31 = v14;
    v19 = [v18 objectAtIndexedSubscript:0];
    [v19 setPixelFormat:objc_msgSend(*(textures + 408), "pixelFormat")];
    [v19 setBlendingEnabled:1];
    [v19 setRgbBlendOperation:0];
    [v19 setSourceRGBBlendFactor:4];
    [v19 setDestinationRGBBlendFactor:5];
    [v19 setAlphaBlendOperation:0];
    [v19 setSourceAlphaBlendFactor:4];
    [v19 setDestinationAlphaBlendFactor:5];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __69__PKCategoryVisualizationCardView__createMetalResourcesWithTextures___block_invoke;
    v32[3] = &unk_279A005B8;
    v33 = v16;
    v34 = v13;
    v35 = v17;
    v36 = device;
    v20 = device;
    v30 = v17;
    v21 = v13;
    v22 = v16;
    v23 = MEMORY[0x25F8AAFE0](v32);
    v24 = (v23)[2](v23, @"circleVertex", @"circleFragment");
    OUTLINED_FUNCTION_0_2(v24, 504);
    v25 = (v23)[2](v23, @"circleOutlineVertex", @"circleOutlineFragment");
    OUTLINED_FUNCTION_0_2(v25, 512);
    v26 = (v23)[2](v23, @"overlayVertex", @"overlayFragment");
    OUTLINED_FUNCTION_0_2(v26, 496);
    v27 = [[PKTextureLoadDescriptor alloc] initForDevice:v20];
    overlayMaterialPropertyImage = [v3 overlayMaterialPropertyImage];
    OUTLINED_FUNCTION_0_2([v27 createLoaderForCGImage:{objc_msgSend(overlayMaterialPropertyImage, "imageRef")}], 456);

    normalMaterialPropertyImage = [v3 normalMaterialPropertyImage];
    OUTLINED_FUNCTION_0_2([v27 createLoaderForCGImage:{objc_msgSend(normalMaterialPropertyImage, "imageRef")}], 464);

    [(PKCategoryVisualizationCardView *)textures _updateTextureAndBlurShader];
    *(textures + 587) = 1;
    [(PKCategoryVisualizationCardView *)textures _updatePausedState];
  }
}

- (void)_stopMotionUpdates
{
  if (self && (*(self + 584) & 1) == 0)
  {
    v2 = +[PKMotionManager sharedManager];
    [v2 unregisterClient:self];
  }
}

- (void)_empty
{
  if (val && (val[588] & 1) == 0 && *(val + 110) && (val[584] & 1) == 0)
  {
    val[588] = 1;
    objc_initWeak(&location, val);
    v2 = val + 288;
    if (*(val + 110))
    {
      v3 = 0;
      v4 = MEMORY[0x277D85CD0];
      do
      {
        v5 = dispatch_time(0, ((v3 * 1.5 / -80.0 + 1.5) * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__PKCategoryVisualizationCardView__empty__block_invoke;
        block[3] = &unk_279A003F0;
        objc_copyWeak(v10, &location);
        v10[1] = v3;
        dispatch_after(v5, v4, block);
        objc_destroyWeak(v10);
        ++v3;
      }

      while (v3 < *(v2 + 74));
    }

    v6 = dispatch_time(0, 3000000000);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__PKCategoryVisualizationCardView__empty__block_invoke_2;
    v7[3] = &unk_2799FFB98;
    objc_copyWeak(&v8, &location);
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_startMotionUpdates
{
  if (self && (*(self + 584) & 1) == 0)
  {
    v2 = +[PKMotionManager sharedManager];
    [v2 registerClient:self];
  }
}

- (void)renderLoop:(id)loop drawableSizeDidChange:(CGSize)change
{
  [(PKCategoryVisualizationCardView *)self _updateTextureAndBlurShader];
  self->_needsDraw = 1;

  [(PKCategoryVisualizationCardView *)self _updatePausedState];
}

- (unint64_t)_updateRenderPassDescriptorWithDrawable:(void *)drawable
{
  drawableCopy = drawable;
  if (drawable)
  {
    texture = [a2 texture];
    width = [texture width];
    height = [texture height];
    if (*(drawableCopy + 432) != width || *(drawableCopy + 440) != height)
    {
      *(drawableCopy + 432) = width;
      *(drawableCopy + 440) = height;
      v6 = *(drawableCopy + 416);
      *(drawableCopy + 416) = 0;

      v7 = *(drawableCopy + 424);
      *(drawableCopy + 424) = 0;

      width = *(drawableCopy + 432);
    }

    if (!width || !*(drawableCopy + 440))
    {
      goto LABEL_17;
    }

    v8 = *(drawableCopy + 424);
    v9 = v8;
    if (!v8)
    {
      OUTLINED_FUNCTION_0_2(objc_alloc_init(MEMORY[0x277CD6F50]), 424);
      v9 = *(drawableCopy + 424);
    }

    colorAttachments = [v9 colorAttachments];
    v11 = [colorAttachments objectAtIndexedSubscript:0];
    v12 = v11;
    if (!v8)
    {
      [v11 setLoadAction:1];
      [v12 setStoreAction:1];
    }

    [v12 setTexture:texture];
    v13 = *(drawableCopy + 424);

    if (v13)
    {
      v14 = *(drawableCopy + 416);
      v15 = v14;
      if (!v14)
      {
        OUTLINED_FUNCTION_0_2(objc_alloc_init(MEMORY[0x277CD6F50]), 416);
        v15 = *(drawableCopy + 416);
      }

      colorAttachments2 = [v15 colorAttachments];
      v17 = [colorAttachments2 objectAtIndexedSubscript:0];
      v18 = v17;
      if (!v14)
      {
        [v17 setLoadAction:2];
        [v18 setClearColor:{1.0, 1.0, 1.0, 1.0}];
        [v18 setStoreAction:1];
      }

      [v18 setTexture:*(drawableCopy + 472)];
      drawableCopy = *(drawableCopy + 416) != 0;
    }

    else
    {
LABEL_17:
      drawableCopy = 0;
    }
  }

  return drawableCopy;
}

uint64_t __41__PKCategoryVisualizationCardView__empty__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  *(a1 + 592 + 112 * *(a2 + 40) + 328) = 0x40000000;
  *(a1 + 587) = 1;
  return [(PKCategoryVisualizationCardView *)a1 _updatePausedState];
}

uint64_t __41__PKCategoryVisualizationCardView__empty__block_invoke_2_cold_1(uint64_t a1, __n128 a2)
{
  *(a1 + 588) = 0;
  *(a1 + 880) = 0;
  [(PKCategoryVisualizationCardView *)a1 _updateCircles];
  *(a1 + 587) = 1;

  return [(PKCategoryVisualizationCardView *)a1 _updatePausedState];
}

@end