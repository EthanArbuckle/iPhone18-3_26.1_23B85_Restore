@interface PKTexturedCardView
- (id)_initWithPixelFormat:(void *)format renderer:;
- (uint64_t)_updatePaused;
- (void)_setDeviceAttitude:(uint64_t)attitude;
- (void)_updateDrawableSize;
- (void)_updateMotionEnabled;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)motionManager:(id)manager didReceiveMotion:(id)motion;
- (void)renderLoop:(id)loop drawAtTime:(double)time;
- (void)setMotionEnabled:(BOOL)enabled;
- (void)setPaused:(BOOL)paused;
@end

@implementation PKTexturedCardView

- (uint64_t)_updatePaused
{
  if (result)
  {
    v1 = result;
    if (*(result + 409) == 1 && (*(result + 408) & 1) == 0)
    {
      result = [(PKTexturedCardRenderer *)*(result + 440) isInvalidated];
      v2 = result;
    }

    else
    {
      v2 = 1;
    }

    if (*(v1 + 410) != v2)
    {
      *(v1 + 410) = v2;
      v3 = *(v1 + 432);

      return [v3 setPaused:?];
    }
  }

  return result;
}

- (void)_updateMotionEnabled
{
  if (self)
  {
    if (*(self + 450) == 1 && (*(self + 449) & 1) == 0 && [*(self + 432) isRunnable])
    {
      v2 = *(self + 408) ^ 1;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 & 1;
    if (*(self + 411) != v3)
    {
      *(self + 411) = v3;
      v4 = *(self + 411);
      v5 = +[PKMotionManager sharedManager];
      v6 = v5;
      if (v4 == 1)
      {
        [v5 registerClient:self];
      }

      else
      {
        [v5 unregisterClient:self];
      }
    }
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = PKTexturedCardView;
  [(PKTexturedCardView *)&v6 didMoveToWindow];
  window = [(PKTexturedCardView *)self window];
  renderLoop = self->_renderLoop;
  windowScene = [window windowScene];
  [(PKRenderLoop *)renderLoop attachToWindowScene:windowScene];

  [(PKTexturedCardView *)&self->super.super.super.isa _updateDrawableSize];
}

- (void)_updateDrawableSize
{
  if (self)
  {
    [self bounds];
    screen = [self[54] screen];
    v3 = screen;
    if (screen)
    {
      [screen scale];
    }

    PKSizeRoundToPixelWithScale();
    [self[54] setDrawableSize:?];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKTexturedCardView;
  [(PKTexturedCardView *)&v4 layoutSubviews];
  layer = [(PKMetalRenderLoop *)self->_renderLoop layer];
  [(PKTexturedCardView *)self bounds];
  [layer setFrame:?];

  [(PKTexturedCardView *)&self->super.super.super.isa _updateDrawableSize];
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(PKTexturedCardView *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = PKTexturedCardView;
  [(PKTexturedCardView *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    v13 = v3;
    v14 = v2;
    self->_invalidated = 1;
    if (self->_effectiveMotionEnabled)
    {
      v9 = +[PKMotionManager sharedManager];
      [v9 unregisterClient:self];
    }

    [(PKRenderLoop *)self->_renderLoop invalidate:v5];
    [(PKRenderLoop *)self->_renderLoop setDelegate:0];
    layer = [(PKMetalRenderLoop *)self->_renderLoop layer];
    [layer removeFromSuperlayer];

    renderLoop = self->_renderLoop;
    self->_renderLoop = 0;

    [(PKTexturedCardRenderer *)self->_renderer invalidate];
    renderer = self->_renderer;
    self->_renderer = 0;
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(PKTexturedCardView *)self _updatePaused];

    [(PKTexturedCardView *)self _updateMotionEnabled];
  }
}

- (void)setMotionEnabled:(BOOL)enabled
{
  if (self->_motionEnabled != enabled)
  {
    self->_motionEnabled = enabled;
    [(PKTexturedCardView *)self _updateMotionEnabled];
  }
}

- (id)_initWithPixelFormat:(void *)format renderer:
{
  formatCopy = format;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = PKTexturedCardView;
    self = objc_msgSendSuper2(&v15, sel_initWithFrame_, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
    if (self)
    {
      selfCopy = MTLCreateSystemDefaultDevice();
      if (!selfCopy)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"could not create metal device"];
      }

      v7 = [[PKMetalRenderLoop alloc] initWithPixelFormat:a2 forDevice:selfCopy];
      v8 = self[54];
      self[54] = v7;

      v9 = self[54];
      if (v9)
      {
        [v9 setDelegate:self];
        if (formatCopy)
        {
          v10 = (formatCopy)[2](formatCopy, self[54]);
        }

        else
        {
          v10 = 0;
        }

        objc_storeStrong(self + 55, v10);
        if (formatCopy)
        {
        }

        v11 = self[54];
        if (self[55])
        {
          layer = [v11 layer];
          [layer setOpaque:0];
          layer2 = [self layer];
          [layer2 addSublayer:layer];

          *(self + 26) = xmmword_25E0D5B90;
          [(PKTexturedCardView *)self _setDeviceAttitude:?];
          *(self + 409) = 1;
          *(self + 410) = [self[54] isPaused];
          [(PKTexturedCardView *)self _updatePaused];
          goto LABEL_14;
        }

        [v11 invalidate];
      }

      layer = selfCopy;
      selfCopy = self;
      self = 0;
LABEL_14:
    }
  }

  return self;
}

- (void)_setDeviceAttitude:(uint64_t)attitude
{
  if (attitude)
  {
    v3 = vmulq_f32(a2, xmmword_25E0D5BF0);
    v4 = vnegq_f32(v3);
    v5 = vtrn2q_s32(v3, vtrn1q_s32(v3, v4));
    v6 = vrev64q_s32(v3);
    v6.i32[0] = v4.i32[1];
    v6.i32[3] = v4.i32[2];
    v7 = vaddq_f32(vmlaq_f32(vmulq_f32(v3, vdupq_n_s32(0x3F74C5EFu)), 0, v6), vmlaq_f32(vmulq_f32(vextq_s8(v3, v4, 8uLL), 0), vdupq_n_s32(0x3E95F619u), vextq_s8(v5, v5, 8uLL)));
    if (*(attitude + 448) == 1)
    {
      v8 = vmulq_f32(v7, xmmword_25E0D5BF0);
      v9 = vnegq_f32(v8);
      v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
      v11 = vmulq_f32(vextq_s8(v8, v9, 8uLL), 0);
      v12 = vrev64q_s32(v8);
      v12.i32[0] = v9.i32[1];
      v12.i32[3] = v9.i32[2];
      v13 = vaddq_f32(v12, vmlaq_f32(v11, 0, vextq_s8(v10, v10, 8uLL)));
      v14 = vnegq_f32(v13);
      v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
      v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v7.f32, 1), vextq_s8(v15, v15, 8uLL), v7.f32[0]);
      v17 = vrev64q_s32(v13);
      v17.i32[0] = v14.i32[1];
      v17.i32[3] = v14.i32[2];
      v65 = v7;
      v18 = acosf(COERCE_FLOAT(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v7, 3), v17, v7, 2), v16).i32[2]));
      if (v18 <= 0.0785398163)
      {
        v42 = v65;
      }

      else
      {
        v19 = 0.0785398163 / v18;
        v20 = vmulq_f32(v65, xmmword_25E0D5B90);
        v21 = vextq_s8(v20, v20, 8uLL);
        *v20.f32 = vadd_f32(*v20.f32, *v21.f32);
        v20.f32[0] = vaddv_f32(*v20.f32);
        v21.i64[0] = 0;
        v22 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v20, v21)), 0), vnegq_f32(v65), v65);
        v23 = 1.0;
        v24 = 1.0 - v19;
        v25 = vsubq_f32(xmmword_25E0D5B90, v22);
        v26 = vmulq_f32(v25, v25);
        v64 = v22;
        v27 = vaddq_f32(v22, xmmword_25E0D5B90);
        v28 = vmulq_f32(v27, v27);
        v29 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)))));
        v30 = v29 + v29;
        v31 = (v29 + v29) == 0.0;
        v32 = 1.0;
        if (!v31)
        {
          v32 = sinf(v30) / v30;
        }

        v33 = v32;
        v34 = vrecpe_f32(LODWORD(v32));
        v35 = vmul_f32(v34, vrecps_f32(LODWORD(v33), v34));
        LODWORD(v36) = vmul_f32(v35, vrecps_f32(LODWORD(v33), v35)).u32[0];
        if ((v24 * v30) != 0.0)
        {
          v62 = v36;
          v35.f32[0] = sinf(v24 * v30);
          v36 = v62;
          v23 = v35.f32[0] / (v24 * v30);
        }

        v35.f32[0] = v24 * (v36 * v23);
        v37 = vdupq_lane_s32(v35, 0);
        v38 = v30 * v19;
        v39 = 1.0;
        if (v38 != 0.0)
        {
          v61 = v37;
          v63 = v36;
          v40 = sinf(v38);
          v37 = v61;
          v36 = v63;
          v39 = v40 / v38;
        }

        v41 = vmulq_n_f32(v64, (v36 * v39) * v19);
        v42 = xmmword_25E0D5B90;
        v43 = vmlaq_f32(v41, xmmword_25E0D5B90, v37);
        v44 = vmulq_f32(v43, v43);
        v45 = vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
        if (vaddv_f32(v45) != 0.0)
        {
          v46 = vadd_f32(v45, vdup_lane_s32(v45, 1)).u32[0];
          v47 = vrsqrte_f32(v46);
          v48 = vmul_f32(v47, vrsqrts_f32(v46, vmul_f32(v47, v47)));
          v42 = vmulq_n_f32(v43, vmul_f32(v48, vrsqrts_f32(v46, vmul_f32(v48, v48))).f32[0]);
        }
      }
    }

    else
    {
      v42 = v7;
    }

    v66 = v42;
    [(PKTexturedCardRenderer *)*(attitude + 440) setRotation:v42];
    v49 = *(attitude + 416);
    v50 = vmulq_f32(v49, xmmword_25E0D5BF0);
    v51 = vmulq_f32(v49, v49);
    *v51.i8 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
    v51.i32[0] = vadd_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u32[0];
    v52 = vrecpe_f32(v51.u32[0]);
    v53 = vmul_f32(v52, vrecps_f32(v51.u32[0], v52));
    v54 = vmulq_n_f32(v50, vmul_f32(v53, vrecps_f32(v51.u32[0], v53)).f32[0]);
    v55 = vnegq_f32(v66);
    v56 = vtrn2q_s32(v66, vtrn1q_s32(v66, v55));
    v57 = vrev64q_s32(v66);
    v57.i32[0] = v55.i32[1];
    v57.i32[3] = v55.i32[2];
    v58 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v66, v55, 8uLL), *v54.f32, 1), vextq_s8(v56, v56, 8uLL), v54.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v66, v54, 3), v57, v54, 2));
    v59 = vmulq_f32(v58, v58);
    v60 = atan2f(sqrtf(v59.f32[2] + vaddv_f32(*v59.f32)), v58.f32[3]);
    if (fabsf(v60 + v60) > 0.0008)
    {
      *(attitude + 409) = 1;

      [(PKTexturedCardView *)attitude _updatePaused];
    }
  }
}

- (void)renderLoop:(id)loop drawAtTime:(double)time
{
  [PKTexturedCardRenderer renderAtTime:?];
  self->_draw &= v5 ^ 1;
  *&v6 = [(PKTexturedCardRenderer *)self->_renderer rotation];
  *&self->_anon_1a0[4] = v6;

  [(PKTexturedCardView *)self _updatePaused];
}

- (void)motionManager:(id)manager didReceiveMotion:(id)motion
{
  attitude = [motion attitude];
  [attitude quaternion];
  v6.f64[1] = v5;
  v8.f64[1] = v7;
  [(PKTexturedCardView *)self _setDeviceAttitude:v6)];
}

@end