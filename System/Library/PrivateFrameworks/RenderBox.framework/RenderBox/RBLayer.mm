@interface RBLayer
+ (id)defaultValueForKey:(id)a3;
+ (void)willEnterForeground;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor;
- (BOOL)_willMoveSubsurface:(unsigned int)a3;
- (BOOL)displayHeadroomMayHaveChanged;
- (BOOL)displayWithBounds:(CGRect)a3 callback:(id)a4;
- (BOOL)isDrawableAvailable;
- (NSDictionary)statistics;
- (RBDevice)device;
- (RBLayer)init;
- (RBLayer)initWithCoder:(id)a3;
- (RBLayer)initWithLayer:(id)a3;
- (double)effectiveDisplayHeadroom;
- (id).cxx_construct;
- (id)actionForKey:(id)a3;
- (id)statisticsHandler;
- (uint64_t)_statisticsMask;
- (uint64_t)_updateSubsurface:(uint64_t)result;
- (uint64_t)updateColor;
- (uint64_t)waitUntilAsyncRenderingCompleted;
- (void)_clearSubsurface;
- (void)_commandBufferError:(id)a3 failedBefore:(BOOL)a4;
- (void)_moveSubsurface:(void *)a3;
- (void)_renderForegroundInContext:(CGContext *)a3;
- (void)copyImageInRect:(CGRect)a3 options:(id)a4 completionQueue:(id)a5 handler:(id)a6;
- (void)dealloc;
- (void)display;
- (void)displayIfNeeded;
- (void)drawInDisplayList:(id)a3;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)rb_init;
- (void)renderInContext:(CGContext *)a3;
- (void)resetStatistics:(unint64_t)a3 alpha:(double)a4;
- (void)setAsynchronousGroup:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContents:(id)a3;
- (void)setDevice:(id)a3;
- (void)setMaxDrawableCount:(int64_t)a3;
- (void)setPixelFormat:(unint64_t)a3;
- (void)setStatisticsHandler:(id)a3;
- (void)setSubsurface:(int)a3 rotated:(uint64_t)a4 bounds:(double)a5 contentsScale:(float)a6 contentHeadroom:(float)a7 displayHeadroom:;
- (void)updateColor;
- (void)updateDisplayHeadroom:(char)a3 contentHeadroom:(float)a4 contentsLayer:(float)a5 locked:;
- (void)waitUntilAsyncRenderingCompleted;
@end

@implementation RBLayer

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 19) = 0;
  *(self + 160) = 0;
  *(self + 13) = 0;
  *(self + 161) = 0;
  return self;
}

- (RBLayer)init
{
  v5.receiver = self;
  v5.super_class = RBLayer;
  v2 = [(RBLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RBLayer *)v2 rb_init];
  }

  return v3;
}

- (void)rb_init
{
  if (a1)
  {
    *(a1 + 180) = 0;
    *(a1 + 184) = 0;
    *(a1 + 188) = 1065353216;
    *(a1 + 192) = 0;
    *(a1 + 175) = 1;
    *(a1 + 176) = 1;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 174) = 1;
    *(a1 + 200) = 3;
    *(a1 + 177) = 1;
    os_unfair_lock_lock(v2);
    v3 = *(v2 + 16);
    if (*(v2 + 24) < (v3 + 1))
    {
      RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(v2 + 8, v3 + 1);
      v3 = *(v2 + 16);
    }

    *(*(v2 + 8) + 8 * v3) = a1;
    ++*(v2 + 16);

    os_unfair_lock_unlock(v2);
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(v3 + 8);
    while (*v6 != self)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = *(v3 + 8);
  }

  v7 = *(v3 + 8) + 8 * v4;
  if (v6 != v7)
  {
    v8 = *v6;
    *v6 = *(v7 - 8);
    *(v7 - 8) = v8;
    --*(v3 + 16);
  }

LABEL_9:
  os_unfair_lock_unlock(v3);
  v10 = RB::SurfacePool::shared(v9);
  RB::SurfacePool::unwatch_queues(v10, &self->super);
  os_unfair_lock_lock(&self->_lock._lock);
  self->_deallocating.__a_.__a_value = 1;
  p = self->_drawable._p;
  if (p)
  {
    RB::Drawable::set_statistics_handler(p, 0);
  }

  v12 = self->_surface_client._p;
  if (v12)
  {
    RB::SharedSurfaceClient::invalidate(v12);
  }

  os_unfair_lock_unlock(&self->_lock._lock);
  v13.receiver = self;
  v13.super_class = RBLayer;
  [(RBLayer *)&v13 dealloc];
}

- (void)display
{
  v4.receiver = self;
  v4.super_class = RBLayer;
  [(RBLayer *)&v4 setContents:0];
  if ((*(self + 172) & 2) != 0 && !+[RBDevice isRunningInBackground])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __18__RBLayer_display__block_invoke;
    v3[3] = &unk_1E744CF80;
    v3[4] = self;
    [(RBLayer *)self bounds];
    [(RBLayer *)self displayWithBounds:v3 callback:?];
  }

  else
  {
    *(self + 172) |= 4u;
  }
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)clearColor
{
  red = self->_clearColor.red;
  green = self->_clearColor.green;
  blue = self->_clearColor.blue;
  alpha = self->_clearColor.alpha;
  result.var3 = alpha;
  result.var2 = blue;
  result.var1 = green;
  result.var0 = red;
  return result;
}

- (void)updateColor
{
  if (a1)
  {
    {
      v3 = RB::debug_BOOL("RB_COLOR_LAYERS", v2);
      [RBLayer updateColor]::color_layers = v3 & ((v3 & 0x100) >> 8);
    }

    if ([RBLayer updateColor]::color_layers == 1 && pthread_main_np())
    {
      {
        _MergedGlobals_6 = CGColorCreateSRGB(1.0, 0.0, 0.5, 1.0);
      }

      {
        qword_1ED6D53F0 = CGColorCreateSRGB(0.5, 0.0, 1.0, 1.0);
      }

      {
        {
          qword_1ED6D53F8 = CGColorCreateSRGB(0.0, 1.0, 0.5, 1.0);
        }
      }

      [(RBLayer *)a1 updateColor];
    }
  }
}

- (void)_clearSubsurface
{
  if (a1)
  {
    if (*(a1 + 104))
    {
      RB::SharedSubsurface::reset((a1 + 104));
      *(a1 + 172) &= ~0x40u;
      *(a1 + 88) = 0;
      *(a1 + 174) = 1;
      [*(a1 + 80) removeFromSuperlayer];

      *(a1 + 80) = 0;
    }
  }
}

- (id)statisticsHandler
{
  os_unfair_lock_lock(&self->_lock._lock);
  p = self->_drawable._p;
  if (p)
  {
    atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    os_unfair_lock_unlock(&self->_lock._lock);
    RB::Drawable::statistics_handler(p, &v6);
    if (v6)
    {
      v4 = *(v6 + 16);
      if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBDrawable statisticsHandler];
      }
    }

    else
    {
      v4 = 0;
    }

    if (atomic_fetch_add_explicit(p + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDrawable initWithDevice:];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock._lock);
    return 0;
  }

  return v4;
}

+ (void)willEnterForeground
{
  v0 = objc_opt_self();
  v13 = 0;
  v14 = 0;
  v15 = 0;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if ((*(*v3 + 172) & 2) != 0 && (v5[172] & 4) != 0)
      {
        v6 = v5;
        v7 = v14;
        if (v15 < v14 + 1)
        {
          RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(&v13, v14 + 1);
          v7 = v14;
        }

        v8 = v13;
        v8[v7] = v6;
        ++v14;
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  os_unfair_lock_unlock(v1);
  v9 = v13;
  if (v14)
  {
    v10 = 8 * v14;
    do
    {
      [*v9 setNeedsSynchronousUpdate:1];
      [*v9 setNeedsDisplay];
      v11 = *v9++;
      v11[172] &= ~4u;
      v10 -= 8;
    }

    while (v10);
    v9 = v13;
    if (v14)
    {
      for (i = 0; i < v14; ++i)
      {
      }

      v9 = v13;
    }
  }

  if (v9)
  {
    free(v9);
  }
}

- (RBLayer)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RBLayer;
  v3 = [(RBLayer *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RBLayer *)v3 rb_init];
  }

  return v4;
}

- (RBLayer)initWithLayer:(id)a3
{
  v9.receiver = self;
  v9.super_class = RBLayer;
  v4 = [(RBLayer *)&v9 initWithLayer:?];
  v5 = v4;
  if (v4)
  {
    v6 = *(a3 + 7);
    p = v4->_device._p;
    if (p != v6)
    {

      v5->_device._p = v6;
    }

    v5->_rendersAsynchronously = *(a3 + 173);
    v5->_colorMode = *(a3 + 45);
    v5->_HDRMode = *(a3 + 46);
    v5->_displayHeadroomLimit = *(a3 + 47);
    v5->_pixelFormat = 0;
    v5->_promotesFramebuffer = *(a3 + 175);
    v5->_clearsBackground = *(a3 + 176);
    v5->_clearColor = *(a3 + 13);
    v5->_maxDrawableCount = *(a3 + 25);
    v5->_allowsPackedDrawable = *(a3 + 177);
    v5->_allowsBottomLeftOrigin = *(a3 + 178);
  }

  return v5;
}

+ (id)defaultValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"opaque"])
  {
    return MEMORY[0x1E695E118];
  }

  if ([a3 isEqualToString:@"needsLayoutOnGeometryChange"])
  {
    return MEMORY[0x1E695E110];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___RBLayer;
  return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
}

- (id)actionForKey:(id)a3
{
  if ([a3 isEqualToString:@"contents"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"sublayers"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = RBLayer;
  return [(RBLayer *)&v6 actionForKey:a3];
}

- (void)setDevice:(id)a3
{
  os_unfair_lock_lock(&self->_lock._lock);
  p = self->_device._p;
  if (p != a3)
  {

    self->_device._p = a3;
  }

  os_unfair_lock_unlock(&self->_lock._lock);
}

- (RBDevice)device
{
  os_unfair_lock_lock(&self->_lock._lock);
  p = self->_device._p;
  os_unfair_lock_unlock(&self->_lock._lock);
  return p;
}

- (void)setAsynchronousGroup:(id)a3
{
  p = self->_async_group._p;
  if (p != a3)
  {

    self->_async_group._p = a3;
  }
}

- (BOOL)isDrawableAvailable
{
  if (+[RBDevice isRunningInBackground])
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock._lock);
  v3 = [(RBLayer *)self needsSynchronousUpdate]|| !self->_queueLayer._p || CAImageQueueCollect() != 0;
  os_unfair_lock_unlock(&self->_lock._lock);
  return v3;
}

- (void)setPixelFormat:(unint64_t)a3
{
  if (RB::pixel_format_traits(a3, a2)[3])
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  self->_pixelFormat = v5;
}

- (void)setMaxDrawableCount:(int64_t)a3
{
  v3 = 2;
  if (a3 > 2)
  {
    v3 = a3;
  }

  if (v3 >= 3)
  {
    v3 = 3;
  }

  self->_maxDrawableCount = v3;
}

- (BOOL)displayWithBounds:(CGRect)a3 callback:(id)a4
{
  width = a3.size.width;
  height = a3.size.height;
  v156 = *MEMORY[0x1E69E9840];
  if ((*(self + 172) & 2) != 0)
  {
    y = a3.origin.y;
    x = a3.origin.x;
    if (!+[RBDevice isRunningInBackground])
    {
      os_unfair_lock_lock(&self->_lock._lock);
      v9 = current_device_locked(self);
      if (v9)
      {

        v9 = v9;
        os_unfair_lock_unlock(&self->_lock._lock);
        if (v9)
        {
          [(RBLayer *)self contentsScale];
          v10.f64[0] = width;
          v10.f64[1] = height;
          v107 = v11;
          v105 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vmulq_n_f64(v10, v11))));
          v12 = vclez_s32(v105);
          if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) == 0)
          {
            v13 = [(RBLayer *)self allowsDisplayCompositing];
            if ([(RBLayer *)self rendersAsynchronously])
            {
              v14 = [(RBLayer *)self needsSynchronousUpdate];
              self->_needsSynchronousUpdate = 0;
              if (v14)
              {
                v103 = 0;
                p = 0;
              }

              else
              {
                p = self->_async_group._p;
                if (p)
                {

                  p = p;
                }

                v103 = 1;
              }
            }

            else
            {
              v103 = 0;
              p = 0;
              self->_needsSynchronousUpdate = 0;
            }

            v104 = p;
            {
              v98 = RB::debug_BOOL("RB_DISABLE_SUBSURFACE", v97);
              [RBLayer displayWithBounds:callback:]::disable_subsurfaces = v98 & ((v98 & 0x100) >> 8);
            }

            if (![(RBLayer *)self allowsPackedDrawable]|| [(RBLayer *)self _statisticsMask]|| p || ([RBLayer displayWithBounds:callback:]::disable_subsurfaces & 1) != 0 || ((v16 = [(RBDecodedFontMetadata *)v9 fontUID], v17 = RB::Device::shared_surfaces(v16), v18 = vcgt_s32(vdup_lane_s32(v105, 1), v105).u8[0], v19 = vrev64_s32(v105), (v18 & 1) == 0) ? (v20 = 0) : (v20 = -1), !RB::SharedSurfaceGroup::preflight_subsurface(v17, vadd_s32(vbsl_s8(vdup_n_s32(v20), v19, v105), 0x200000002))))
            {
              if (((self->_queueLayer._p != 0) & v13) == 1)
              {
                os_unfair_lock_lock(&self->_lock._lock);
                RotationFlags = CAImageQueueGetRotationFlags();
                os_unfair_lock_unlock(&self->_lock._lock);
                v22 = 0;
              }

              else
              {
                v22 = 0;
                RotationFlags = 0;
              }
            }

            else
            {
              if (v18)
              {
                RotationFlags = 4;
              }

              else
              {
                RotationFlags = 0;
              }

              v22 = 1;
            }

            if ([(RBLayer *)self allowsBottomLeftOrigin]&& ![(RBLayer *)self contentsAreFlipped])
            {
              v25 = v107;
              d = -v107;
              v23 = -x;
              v24 = y + height;
            }

            else
            {
              v23 = -x;
              v24 = -y;
              v25 = v107;
              d = v107;
            }

            v154 = 0uLL;
            ty = v25 * v24;
            tx = v23 * v25;
            if (RotationFlags)
            {
              if (([RBLayer displayWithBounds:callback:]::inverses[RotationFlags & 7] & 4) != 0)
              {
                v31 = vmulq_n_f64(xmmword_195E42760, v105.i32[1]);
                v29 = xmmword_195E45590;
                v30 = xmmword_195E42770;
                v32 = vrev64_s32(v105);
              }

              else
              {
                v29 = xmmword_195E42770;
                v30 = xmmword_195E42760;
                v31 = 0uLL;
                v32 = v105;
              }

              v108 = *&v32;
              if (([RBLayer displayWithBounds:callback:]::inverses[RotationFlags & 7] & 2) != 0)
              {
                v34.f64[0] = NAN;
                v34.f64[1] = NAN;
                v31 = vaddq_f64(vmlaq_n_f64(v31, v30, v105.i32[0]), vbslq_s8(vnegq_f64(v34), 0, v29));
                v30 = vnegq_f64(v30);
              }

              if ([RBLayer displayWithBounds:callback:]::inverses[RotationFlags & 7])
              {
                v31 = vmlaq_f64(vmlaq_n_f64(v31, v29, v105.i32[1]), 0, v30);
                v29 = vnegq_f64(v29);
              }

              *&t1.b = v154;
              t1.a = v107;
              t1.d = d;
              t1.tx = tx;
              t1.ty = ty;
              *&t2.a = v30;
              *&t2.c = v29;
              *&t2.tx = v31;
              CGAffineTransformConcat(&v155, &t1, &t2);
              v154 = *&v155.b;
              a = v155.a;
              d = v155.d;
              tx = v155.tx;
              ty = v155.ty;
            }

            else
            {
              a = v25;
              v108 = *&v105;
            }

            v106 = [(RBLayer *)self promotesFramebuffer];
            v35 = [(RBLayer *)self colorMode];
            v101 = RotationFlags;
            v100 = v35;
            RB::ColorMode::ColorMode(&t1, v35);
            v36 = objc_opt_new();
            [v36 setProfile:2];
            [v36 setDefaultColorSpace:rb_color_space(BYTE1(t1.a) | 0x100u)];
            v37.i32[0] = 0;
            v38 = vceq_s32(*&v108, 0x8000000080000000);
            v39 = vdup_lane_s32(vcgt_s32(v37, vpmin_u32(v38, v38)), 0);
            v40 = vbsl_s8(v39, vneg_f32(0x80000000800000), vcvt_f32_s32(*&v108));
            v41 = vand_s8(0x100000001000000, v39);
            [v36 setContentRect:{*v41.i32, *&v41.i32[1], *v40.i32, *&v40.i32[1]}];
            *&v155.b = v154;
            v155.a = a;
            v155.d = d;
            v155.tx = tx;
            v155.ty = ty;
            [v36 concat:&v155];
            v42 = RBDeviceSwapCurrent(v9);
            (*(a4 + 2))(a4, v36);
            RBDeviceSwapCurrent(v42);
            v43 = [v36 _rb_contents];
            if (v43)
            {
              v45 = RB::DisplayList::Layer::color_info((v43 + 320), v44);
              v46 = v45;
              _S12 = v45 >> 16;
              _H0 = WORD2(v45);
              __asm { FCVT            S11, H0 }
            }

            else
            {
              v46 = 0;
              _S11 = 0.0;
              LOWORD(_S12) = 0;
            }

            v54 = [(RBLayer *)self HDRMode];
            v55 = v54;
            if (v54)
            {
              v56 = 0.0;
              if (v54 == 1)
              {
                __asm
                {
                  FCVT            S11, H12
                  FCMP            H12, #0
                }

                if (!_ZF)
                {
                  v22 = 0;
                }

LABEL_64:
                if (v106)
                {
                  RB::ColorMode::merge_depth(&t1, v46);
                }

                v60 = [(RBLayer *)self isOpaque];
                if (v60)
                {
                  v61 = 2;
                }

                else
                {
                  v61 = 3;
                }

                if (v13)
                {
                  v62 = v61 | 4;
                }

                else
                {
                  v62 = v61;
                }

                v63 = [(RBLayer *)self clearsBackground];
                v64 = v63;
                if (v63)
                {
                  v65 = 2;
                }

                else
                {
                  v65 = 1;
                }

                v99 = v65;
                v102 = 0u;
                if (v63)
                {
                  [(RBLayer *)self clearColor];
                  __asm { FMOV            V4.4S, #1.0 }

                  _Q4.i64[0] = __PAIR64__(v67, v66);
                  _Q4.i32[2] = v68;
                  v71 = vmulq_n_f32(_Q4, v70);
                  if (v60)
                  {
                    v72 = -1;
                  }

                  else
                  {
                    v72 = 0;
                  }

                  v102 = vbslq_s8(vdupq_n_s32(v72), _Q4, v71);
                }

                v73 = [(RBLayer *)self pixelFormat];
                LODWORD(t2.a) = 0;
                if (!v73)
                {
                  v74 = [(RBDecodedFontMetadata *)v9 fontUID];
                  v73 = RB::ColorMode::pixel_format(&t1, v74, v62, &t2);
                }

                valid = [(RBDecodedFontMetadata *)v9 fontUID];
                if ((v73 & 0x80000000) != 0)
                {
                  valid = RB::Device::valid_texture_size_nonnative(valid, v73, *&v108);
                  if ((valid & 1) == 0)
                  {
                    goto LABEL_84;
                  }
                }

                else
                {
                  v76 = (valid + 336);
                  v77 = vld1_dup_f32(v76);
                  v78 = vand_s8(vcge_s32(v77, *&v108), vcgtz_s32(*&v108));
                  if ((vpmin_u32(v78, v78).u32[0] & 0x80000000) == 0)
                  {
LABEL_84:
                    v79 = RB::error_log(valid);
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
                    {
                      v81 = RB::pixel_format_name(v73, v80);
                      [(RBLayer *)v81 displayWithBounds:v79 callback:v108];
                    }

                    v8 = 0;
                    goto LABEL_141;
                  }
                }

                if (v22)
                {
                  if (v64)
                  {
                    v82 = 7;
                  }

                  else
                  {
                    v82 = 3;
                  }

                  if (v103 && self->_subsurface._surface)
                  {
                    v82 |= 8u;
                  }

                  v83 = self;
                  v142[0] = MEMORY[0x1E69E9820];
                  v142[1] = 3321888768;
                  v142[2] = __38__RBLayer_displayWithBounds_callback___block_invoke;
                  v142[3] = &__block_descriptor_92_e8_32c29_ZTSN2RB8objc_ptrIP7RBLayerEE_e9_v16__0_v8l;
                  v143 = v83;
                  v149 = v101;
                  v144 = x;
                  v145 = y;
                  v146 = width;
                  v147 = height;
                  v148 = v107;
                  v150 = _S11;
                  v151 = v56;
                  v155.a = 0.0;
                  os_unfair_lock_lock(&self->_lock._lock);
                  if (!self->_surface_client._p)
                  {
                    operator new();
                  }

                  RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=(&v155, &self->_surface_client);
                  os_unfair_lock_unlock(&self->_lock._lock);
                  v84 = [(RBDecodedFontMetadata *)v9 fontUID];
                  v85 = RB::Device::shared_surfaces(v84);
                  v86 = v107;
                  v13 = v13;
                  if (RB::SharedSurfaceGroup::add_subsurface(v85, *&v155.a, v73, SBYTE2(t1.a), LODWORD(t2.a), v36, v82, v142, v56, vadd_s32(*&v108, 0x200000002), v86, v102))
                  {
                    os_unfair_lock_lock(&self->_lock._lock);
                    *(self + 172) |= 0x40u;
                    if ((v82 & 8) != 0)
                    {
                      self->_pending_async_surface = v85;
                    }

                    [(RBLayer *)self updateColor];
                    os_unfair_lock_unlock(&self->_lock._lock);
                    RBXMLRecorderMarkFrame(self, v36, SBYTE2(t1.a), SLODWORD(v108), SHIDWORD(v108));
                    if (*&v155.a && atomic_fetch_add_explicit((*&v155.a + 8), 0xFFFFFFFF, memory_order_release) == 1)
                    {
                      [RBLayer displayWithBounds:callback:];
                    }

                    v87 = v83;
LABEL_140:

                    v8 = 1;
LABEL_141:

                    goto LABEL_142;
                  }

                  if (*&v155.a && atomic_fetch_add_explicit((*&v155.a + 8), 0xFFFFFFFF, memory_order_release) == 1)
                  {
                    [RBLayer displayWithBounds:callback:];
                    v13 = v13;
                  }
                }

                os_unfair_lock_lock(&self->_lock._lock);
                [(RBLayer *)self _clearSubsurface];
                ensure_drawable_locked(self);
                v88 = self->_queueLayer._p;
                if (v88)
                {
                  [(RBImageQueueLayer *)v88 contentsScale];
                  if (v89 == v107)
                  {
                    goto LABEL_113;
                  }

                  [(RBImageQueueLayer *)self->_queueLayer._p setContentsScale:v107];
                }

                else
                {
                  v90 = [RBImageQueueLayer initWithSlots:?];

                  self->_queueLayer._p = v90;
                  [(RBImageQueueLayer *)v90 setContentsScale:v107];
                  [(RBLayer *)self insertSublayer:self->_queueLayer._p atIndex:0];
                }

                v103 = 0;
LABEL_113:
                [(RBImageQueueLayer *)self->_queueLayer._p setPosition:x, y];
                [(RBImageQueueLayer *)self->_queueLayer._p setAllowsDisplayCompositing:v13];
                if (v101)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = v13 ^ 1;
                }

                if (v91 && [(RBLayer *)self contentsAreFlipped])
                {
                  LODWORD(t2.a) |= 0x80u;
                }

                v111 = self;
                v92 = self->_queueLayer._p;
                v93 = self->_drawable._p;
                if (v93)
                {
                  atomic_fetch_add_explicit(v93 + 2, 1u, memory_order_relaxed);
                }

                [(RBLayer *)self updateColor];
                os_unfair_lock_unlock(&self->_lock._lock);
                v134[0] = MEMORY[0x1E69E9820];
                v134[1] = 3321888768;
                v134[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_28;
                v134[3] = &__block_descriptor_69_e8_32c40_ZTSN2RB8objc_ptrIP17RBImageQueueLayerEE48c29_ZTSN2RB8objc_ptrIP7RBLayerEE_e9_v16__0_v8l;
                v135 = v92;
                v141 = v60;
                v136 = v108;
                v138 = v101;
                v137 = v111;
                v139 = v56;
                v140 = _S11;
                v94 = v103;
                if (!v104)
                {
                  v94 = 1;
                }

                if (v94)
                {
                  if (v104)
                  {
                    v95 = [(RBLayerGroup *)v104 beginInstance];
LABEL_128:
                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3321888768;
                    block[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_30;
                    block[3] = &unk_1F0A3EEB8;
                    v115 = v108;
                    v129 = v91;
                    v116 = v9;
                    v117 = v92;
                    v118 = v73;
                    a_low = LODWORD(t1.a);
                    v123 = v56;
                    v124 = _S11;
                    v119 = v111;
                    v125 = LODWORD(t2.a);
                    v120 = v104;
                    v126 = v95;
                    if (v93)
                    {
                      atomic_fetch_add_explicit(v93 + 2, 1u, memory_order_relaxed);
                    }

                    v121 = v93;
                    v131 = v103;
                    v127 = v100;
                    v132 = v60;
                    v133 = v106;
                    v128 = v99;
                    v113 = v102;
                    v122 = v36;
                    v114 = v134;
                    RB::Drawable::begin_frame(v93);
                    if (v103)
                    {
                      dispatch_async([(RBDevice *)v9 queue], block);
                      [(RBLayer *)self updateDisplayHeadroom:0 contentHeadroom:0.0 contentsLayer:0.0 locked:?];
                    }

                    else
                    {
                      dispatch_sync([(RBDevice *)v9 queue], block);
                    }

                    RBXMLRecorderMarkFrame(self, v36, SBYTE2(t1.a), SLODWORD(v108), SHIDWORD(v108));

                    if (v121 && atomic_fetch_add_explicit(v121 + 2, 0xFFFFFFFF, memory_order_release) == 1)
                    {
                      [RBDrawable initWithDevice:];
                    }

                    if (v93 && atomic_fetch_add_explicit(v93 + 2, 0xFFFFFFFF, memory_order_release) == 1)
                    {
                      [RBDrawable initWithDevice:];
                    }

                    v87 = v111;
                    goto LABEL_140;
                  }
                }

                else
                {
                }

                v104 = 0;
                v95 = 0;
                goto LABEL_128;
              }

              if (v54 != 3)
              {
                _S11 = 0.0;
                goto LABEL_64;
              }
            }

            v56 = 0.0;
            if (!v54 && *&_S12 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v57 = [(RBLayer *)self effectiveDisplayHeadroom];
              v56 = *&v57;
            }

            if (v46 == 4)
            {
              if (v55)
              {
                v58 = _S11;
              }

              else
              {
                v58 = v56;
              }

              v46 = RB::headroom_color_depth(v54, v58);
            }

            goto LABEL_64;
          }

          [(RBLayer *)self setContents:0];
          v8 = 1;
LABEL_142:

          return v8;
        }
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock._lock);
      }

      v8 = 0;
      goto LABEL_142;
    }
  }

  return 0;
}

- (uint64_t)_statisticsMask
{
  v1 = a1;
  if (a1)
  {
    os_unfair_lock_lock(a1 + 12);
    v2 = *(v1 + 64);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2[2], 1u, memory_order_relaxed);
      os_unfair_lock_unlock((v1 + 48));
      v1 = RB::Drawable::statistics_mask(v2);
      if (atomic_fetch_add_explicit(&v2[2], 0xFFFFFFFF, memory_order_release) == 1)
      {
        __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 48));
      return 0;
    }
  }

  return v1;
}

- (void)setSubsurface:(int)a3 rotated:(uint64_t)a4 bounds:(double)a5 contentsScale:(float)a6 contentHeadroom:(float)a7 displayHeadroom:
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    *(a1 + 172) &= ~0x40u;
    *(a1 + 88) = 0;
    [(RBLayer *)a1 _updateSubsurface:a2];
    v24 = vmlaq_n_f64(vmulq_n_f64(xmmword_195E42760, *a4), xmmword_195E42770, *(a4 + 8));
    if (a3)
    {
      v14 = [a1 contentsAreFlipped];
      v15 = *(a4 + 16);
      if (v14)
      {
        v16 = xmmword_195E42770;
        v17 = xmmword_195E42760;
        v18 = vdupq_lane_s64(v15, 0);
        v19 = v24;
      }

      else
      {
        v18 = vdupq_lane_s64(v15, 0);
        v19 = vmlaq_n_f64(vmlaq_n_f64(v24, xmmword_195E42760, *&v15), xmmword_195E42770, *(&v15 + 1));
        v16 = xmmword_195E455A0;
        v17 = xmmword_195E45590;
      }

      v20.f64[0] = NAN;
      v20.f64[1] = NAN;
      v24 = vmlaq_f64(vaddq_f64(vbslq_s8(vnegq_f64(v20), 0, v16), v19), v17, v18);
      [*(a1 + 80) setContentsScale:{a5, vnegq_f64(v17), *&v16}];
    }

    else
    {
      [*(a1 + 80) setContentsScale:{a5, 0, 0x3FF0000000000000, 0x3FF0000000000000, 0}];
    }

    v21 = *(a1 + 80);
    v25[0] = v23;
    v25[1] = v22;
    v25[2] = v24;
    [v21 setAffineTransform:v25];
    [(RBLayer *)a1 updateDisplayHeadroom:1 contentHeadroom:a7 contentsLayer:a6 locked:?];
    os_unfair_lock_unlock((a1 + 48));
  }
}

- (void)updateDisplayHeadroom:(char)a3 contentHeadroom:(float)a4 contentsLayer:(float)a5 locked:
{
  if (!a1)
  {
    return;
  }

  [a1 displayHeadroomLimit];
  v11 = fmaxf(v10, 1.0);
  if (v11 >= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (a2)
  {
    v13 = [a1 HDRMode];
    v14 = v13;
    v16 = a4 != 0.0 || v13 == 3;
    if (v16)
    {
      v17 = v12 > 1.0;
    }

    else
    {
      v17 = a5 > 1.0;
    }

    v18 = [a2 wantsExtendedDynamicRangeContent];
    if (v18 != v17)
    {
      [a2 setWantsExtendedDynamicRangeContent:v17];
    }

    if (v18 | v17)
    {
      v19 = MEMORY[0x1E69792E0];
      if (!v16)
      {
        v19 = MEMORY[0x1E69792D8];
      }

      if (v17)
      {
        v20 = v12;
      }

      else
      {
        v19 = MEMORY[0x1E69792D0];
        v20 = 0.0;
      }

      [a2 setToneMapMode:{*v19, v12}];
      [a2 setContentsMaximumDesiredEDR:v20];
    }

    v21 = v12 > 1.0 && v16;
    if (v14)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (a3)
    {
      goto LABEL_31;
    }

LABEL_33:
    v23 = (a1 + 48);
    os_unfair_lock_lock((a1 + 48));
    goto LABEL_34;
  }

  v22 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  v23 = 0;
LABEL_34:
  if (v22 != (*(a1 + 172) & 1))
  {
    [(CALayer *)a1 observeDisplayHeadroomChanges:v22];
    *(a1 + 172) = *(a1 + 172) & 0xFE | v22;
  }

  if (a2)
  {
    *(a1 + 164) = a4;
    *(a1 + 168) = v12;
  }

  if ((a3 & 1) == 0)
  {

    os_unfair_lock_unlock(v23);
  }
}

void __38__RBLayer_displayWithBounds_callback___block_invoke_30(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v2 = *(a1 + 56);
  if (*(a1 + 144))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_autoreleasePoolPush();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3321888768;
  v35 = __38__RBLayer_displayWithBounds_callback___block_invoke_2;
  v36 = &unk_1F0A3EDF0;
  v5 = *(a1 + 64);
  v37 = &v47;
  v38 = v5;
  v6 = COERCE_DOUBLE(vbsl_s8(vdup_n_s32(v3), (*&vadd_s32(v2, 0x1F0000001FLL) & 0xFFFFFFE0FFFFFFE0), v2));
  v39 = *(a1 + 72);
  v40 = v6;
  v7 = *(a1 + 88);
  v41 = *(a1 + 80);
  v46 = *(a1 + 145);
  v44 = *(a1 + 120);
  v42 = v7;
  v45 = *(a1 + 128);
  v43 = *(a1 + 56);
  v8 = *(a1 + 88);
  if ((v8[172] & 0x10) != 0)
  {
    v35(v34);
    if (!v48[3])
    {
      [(RBLayerGroup *)*(a1 + 96) endInstance:?];
      RB::Drawable::cancel_frame(*(a1 + 104));
      goto LABEL_24;
    }

    v8 = *(a1 + 88);
  }

  v9 = *(a1 + 149);
  v10 = [v8 name];
  v11 = [(RBDecodedFontMetadata *)*(a1 + 64) fontUID];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"RBLayer";
  }

  RB::RenderFrame::RenderFrame(v51, v11, *(a1 + 104), 1, v12, v9 ^ 1u);
  v13 = *(a1 + 80);
  v14 = *(a1 + 147);
  v15 = *(a1 + 146);
  v16 = *(a1 + 145);
  HasExtendedRange = RBColorModeHasExtendedRange(*(a1 + 136));
  RB::RenderParams::RenderParams(&v31, v51, v13, v14, v15, v16, HasExtendedRange, v6);
  if (*(a1 + 150))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v32 = (2 * *(a1 + 128)) & 8 | v32 & 0xE3 | v18 | (16 * *(a1 + 151));
  v19 = [*(a1 + 112) _rb_contents];
  if (!v19)
  {
    v19 = RB::DisplayList::Contents::empty_contents(0);
  }

  RB::DisplayList::render(v19, &v31, v34, *(a1 + 140), 0, 0, v33, *(a1 + 120), *(a1 + 32));
  v20 = v48[3];
  v21 = *(a1 + 96);
  if (*(a1 + 149) != 1 || v21)
  {
    v22 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_3;
    v29[3] = &unk_1E744CFA8;
    v29[4] = *(a1 + 48);
    v29[5] = v20;
    if (v21)
    {
      [(RBLayerGroup *)v21 addHandler:v29 forInstance:*(a1 + 132)];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3321888768;
      v26[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_4;
      v26[3] = &__block_descriptor_44_e8_32c35_ZTSN2RB8objc_ptrIP12RBLayerGroupEE_e5_v8__0l;
      v27 = *(a1 + 96);
      v28 = *(a1 + 132);

      v22 = v26;
    }
  }

  else
  {
    v22 = v30;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_36;
    v30[3] = &unk_1E744CFA8;
    v30[4] = *(a1 + 48);
    v30[5] = v20;
  }

  RB::RenderFrame::add_scheduled_handler(v51, v22);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3321888768;
  v24[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_40;
  v24[3] = &__block_descriptor_40_e8_32c29_ZTSN2RB8objc_ptrIP7RBLayerEE_e17_v16__0__NSError_8l;
  v25 = *(a1 + 88);
  RB::RenderFrame::add_completed_handler(v51, v24);
  if ((*(v51[0] + 340) & 2) != 0)
  {
    v23 = *(a1 + 112);
    if (v52 != v23)
    {

      v52 = v23;
    }
  }

  RB::RenderFrame::~RenderFrame(v51);
LABEL_24:

  objc_autoreleasePoolPop(v4);
  _Block_object_dispose(&v47, 8);
}

uint64_t __38__RBLayer_displayWithBounds_callback___block_invoke_2(uint64_t a1)
{
  v2 = [(RBDecodedFontMetadata *)*(a1 + 40) fontUID];
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (!v3)
  {
    if (__38__RBLayer_displayWithBounds_callback___block_invoke_2_cold_1(a1, v2, a1 + 32, &v6))
    {
      return 0;
    }

    v3 = v6;
  }

  v4 = *(a1 + 101) | 0x100;

  return RB::Surface::texture(v3, v2, v4);
}

void __38__RBLayer_displayWithBounds_callback___block_invoke_36(_anonymous_namespace_ *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_2_37;
  v3[3] = &unk_1E744CFA8;
  v4 = *(a1 + 2);
  dispatch_async(v2, v3);
}

uint64_t __38__RBLayer_displayWithBounds_callback___block_invoke_2_37(uint64_t a1)
{
  [MEMORY[0x1E6979518] activateBackground:1];
  (*(*(a1 + 32) + 16))();
  v2 = MEMORY[0x1E6979518];

  return [v2 flush];
}

void __38__RBLayer_displayWithBounds_callback___block_invoke_40(uint64_t a1, id a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 161);
  *(v2 + 161) = a2 != 0;
  if (a2)
  {
    v5 = a2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __38__RBLayer_displayWithBounds_callback___block_invoke_2_41;
    block[3] = &__block_descriptor_49_e8_32c29_ZTSN2RB8objc_ptrIP7RBLayerEE40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_e5_v8__0l;
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = v3 & 1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_commandBufferError:(id)a3 failedBefore:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v7 = [a3 domain];
    if ([v7 isEqual:*MEMORY[0x1E6973F68]])
    {
      v8 = [a3 code];
      if (v8 - 1 >= 2)
      {
        if (v8 == 7)
        {
          v10 = RB::misc_log(7);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 134217984;
            v12 = self;
            _os_log_impl(&dword_195CE8000, v10, OS_LOG_TYPE_DEFAULT, "RBLayer %p: access error, redraw when visible", &v11, 0xCu);
          }

          *(self + 172) |= 4u;
        }
      }

      else
      {
        v9 = RB::misc_log(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 134218240;
          v12 = self;
          v13 = 1024;
          v14 = v4;
          _os_log_impl(&dword_195CE8000, v9, OS_LOG_TYPE_DEFAULT, "RBLayer %p: error, failed before %{BOOL}d", &v11, 0x12u);
        }

        if (!v4)
        {
          [(RBLayer *)self setNeedsDisplay];
        }
      }
    }
  }
}

- (BOOL)_willMoveSubsurface:(unsigned int)a3
{
  v5 = os_unfair_lock_trylock(&self->_lock._lock);
  if (v5)
  {
    if (self->_deallocating.__a_.__a_value || *&self->_anon_70[32] != a3)
    {
      os_unfair_lock_unlock(&self->_lock._lock);
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)drawInDisplayList:(id)a3
{
  v5 = [(RBLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    [v5 RBLayer:self draw:a3];
  }
}

- (BOOL)displayHeadroomMayHaveChanged
{
  os_unfair_lock_lock(&self->_lock._lock);
  v3 = *(self + 172);
  if (v3)
  {
    v4 = 0.0;
    if (self->_content_headroom > 1.0)
    {
      [(RBLayer *)self displayHeadroomLimit];
      v6 = v5;
      v4 = 1.0;
      if (v5 > 1.0)
      {
        v7 = [(CALayer *)self displayHeadroom];
        if (v7 >= v6)
        {
          v4 = v6;
        }

        else
        {
          v4 = v7;
        }
      }
    }

    dpy_headroom = self->_dpy_headroom;
    if (dpy_headroom != v4)
    {
      content_headroom = self->_content_headroom;
      if (content_headroom > dpy_headroom || content_headroom > v4)
      {
        [(RBLayer *)self setNeedsDisplay];
      }

      self->_dpy_headroom = v4;
    }
  }

  os_unfair_lock_unlock(&self->_lock._lock);
  return v3 & 1;
}

- (void)waitUntilAsyncRenderingCompleted
{
  v3 = pthread_main_np();
  if (!v3 && !self->_deallocating.__a_.__a_value)
  {
    [(RBLayer *)v3 waitUntilAsyncRenderingCompleted];
  }

  os_unfair_lock_lock(&self->_lock._lock);
  pending_async_surface = self->_pending_async_surface;
  if (pending_async_surface)
  {
    v6 = *pending_async_surface;
    if (*pending_async_surface)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  p = self->_drawable._p;
  if (p)
  {
    atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
  }

  os_unfair_lock_unlock(&self->_lock._lock);
  if (pending_async_surface)
  {
    RB::SharedSurfaceGroup::finish_async(pending_async_surface);
  }

  if (p && atomic_fetch_add_explicit(p + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  if (atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBDevice .cxx_destruct];
  }
}

- (void)setContents:(id)a3
{
  os_unfair_lock_lock(&self->_lock._lock);
  p = self->_queueLayer._p;
  self->_queueLayer._p = 0;
  [(RBLayer *)self _clearSubsurface];
  *(self + 172) &= ~4u;
  [(RBLayer *)self updateColor];
  os_unfair_lock_unlock(&self->_lock._lock);
  [(RBImageQueueLayer *)p removeFromSuperlayer];
  v6.receiver = self;
  v6.super_class = RBLayer;
  [(RBLayer *)&v6 setContents:a3];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  os_unfair_lock_lock(&self->_lock._lock);
  if ((*(self + 172) & 2) != 0 && self->_queueLayer._p)
  {
    [(RBLayer *)self bounds];
    v9 = v8;
    v11 = v10;
    os_unfair_lock_unlock(&self->_lock._lock);
    if (width != v9 || height != v11)
    {
      [(RBLayer *)self setNeedsSynchronousUpdate:1];
      [(RBLayer *)self setNeedsDisplay];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock._lock);
  }

  v12.receiver = self;
  v12.super_class = RBLayer;
  [(RBLayer *)&v12 setBounds:x, y, width, height];
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    if ((*(self + 172) & 4) != 0 && !+[RBDevice isRunningInBackground])
    {
      [(RBLayer *)self setNeedsSynchronousUpdate:1];
      [(RBLayer *)self setNeedsDisplay];
      *(self + 172) &= ~4u;
    }

    v5 = 2;
  }

  else
  {
    if ((*(self + 172) & 8) == 0)
    {
      operator new();
    }

    v5 = 0;
  }

  *(self + 172) = *(self + 172) & 0xFD | v5;
  v6.receiver = self;
  v6.super_class = RBLayer;
  [(RBLayer *)&v6 layerDidBecomeVisible:v3];
}

void __33__RBLayer_layerDidBecomeVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(*(a1 + 32));
  if (WeakRetained)
  {
    [MEMORY[0x1E6979518] lock];
    WeakRetained[172] &= ~8u;
    v3 = WeakRetained[172];
    [MEMORY[0x1E6979518] unlock];
    if ((v3 & 2) == 0)
    {
      [WeakRetained setContents:0];
      WeakRetained[172] |= 4u;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    objc_destroyWeak(v4);
    MEMORY[0x19A8C09E0](v4, 0x80C40B8603338);
  }
}

- (void)resetStatistics:(unint64_t)a3 alpha:(double)a4
{
  os_unfair_lock_lock(&self->_lock._lock);
  if (a3)
  {
    ensure_drawable_locked(self);
  }

  p = self->_drawable._p;
  if (p)
  {
    atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    os_unfair_lock_unlock(&self->_lock._lock);
    RB::Drawable::reset_statistics(p, a3, a4);
    if (atomic_fetch_add_explicit(p + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock._lock);
  }
}

- (NSDictionary)statistics
{
  os_unfair_lock_lock(&self->_lock._lock);
  p = self->_drawable._p;
  if (p)
  {
    atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    os_unfair_lock_unlock(&self->_lock._lock);
    v4 = RB::Drawable::statistics_dictionary(p);
    if (atomic_fetch_add_explicit(p + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock._lock);
    return MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (void)setStatisticsHandler:(id)a3
{
  os_unfair_lock_lock(&self->_lock._lock);
  if (a3)
  {
    ensure_drawable_locked(self);
  }

  p = self->_drawable._p;
  if (p)
  {
    atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    os_unfair_lock_unlock(&self->_lock._lock);
    if (a3)
    {
      operator new();
    }

    RB::Drawable::set_statistics_handler(p, 0);
    if (atomic_fetch_add_explicit(p + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __copy_helper_block_e8_48c58_ZTSN2RB8objc_ptrIPU21objcproto10MTLTexture11objc_objectEE56c66_ZTSN2RB8objc_ptrIPU29objcproto18RBDrawableDelegate11objc_objectEE64c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE80c30_ZTSN2RB8objc_ptrIP8NSStringEE120c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE128c40_ZTSN2RB8objc_ptrIU13block_pointerFvvEEE136c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7NSErrorEEE144c55_ZTSN2RB8objc_ptrIPU18objcproto8MTLEvent11objc_objectEE_cold_1();
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock._lock);
  }
}

- (void)copyImageInRect:(CGRect)a3 options:(id)a4 completionQueue:(id)a5 handler:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (+[RBDevice isRunningInBackground])
  {
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke;
    v87[3] = &unk_1E744C698;
    v87[4] = a6;
    v14 = v87;
LABEL_15:
    dispatch_async(a5, v14);
    return;
  }

  v15 = [a4 objectForKeyedSubscript:RBLayerCopyImageScale];
  if (!v15 || ([v15 doubleValue], v17 = v16, v16 <= 0.0))
  {
    [(RBLayer *)self contentsScale];
    v17 = v18;
  }

  v19 = ceil(v17 * width);
  if (v19 <= 0.0 || (v20 = ceil(v17 * height), v20 <= 0.0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_2;
    block[3] = &unk_1E744C698;
    block[4] = a6;
    v14 = block;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_lock._lock);
  v21 = current_device_locked(self);
  if (v21 && (0, (v22 = v21) != 0))
  {
    ensure_drawable_locked(self);
    p = self->_drawable._p;
    if (p)
    {
      atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    }

    v60 = p;
    os_unfair_lock_unlock(&self->_lock._lock);
    v24 = [a4 objectForKeyedSubscript:RBLayerCopyImageColorMode];
    if (v24)
    {
      v25 = [v24 intValue];
    }

    else
    {
      v25 = [(RBLayer *)self colorMode];
    }

    v26 = v25;
    RB::ColorMode::ColorMode(&v84, v25);
    v27 = objc_opt_new();
    [v27 setProfile:2];
    [v27 setDefaultColorSpace:rb_color_space(BYTE1(v84) | 0x100u)];
    [v27 setContentRect:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v19, v20}];
    v78 = v17;
    v79 = 0;
    v80 = 0;
    v81 = v17;
    v82 = x;
    v83 = y;
    [v27 concat:&v78];
    [(RBLayer *)self drawInDisplayList:v27];
    v28 = [a4 objectForKeyedSubscript:RBLayerCopyImagePromotesFramebuffer];
    if (v28)
    {
      v29 = [v28 BOOLValue];
    }

    else
    {
      v29 = [(RBLayer *)self promotesFramebuffer];
    }

    v30 = v29;
    if (v29)
    {
      v31 = [v27 _rb_contents];
      if (v31)
      {
        v33 = RB::DisplayList::Layer::color_info((v31 + 320), v32);
        RB::ColorMode::merge_depth(&v84, v33);
      }
    }

    v34 = [a4 objectForKeyedSubscript:RBLayerCopyImageOpaque];
    if (v34)
    {
      v35 = [v34 BOOLValue];
    }

    else
    {
      v35 = [(RBLayer *)self isOpaque];
    }

    v36 = v35;
    if (v35)
    {
      v37 = 8;
    }

    else
    {
      v37 = 9;
    }

    v38 = [a4 objectForKeyedSubscript:RBLayerCopyImageClearsBackground];
    if (v38)
    {
      v39 = [v38 BOOLValue];
    }

    else
    {
      v39 = [(RBLayer *)self clearsBackground];
    }

    v57 = v30;
    v58 = v36;
    if (v39)
    {
      v40 = [a4 objectForKeyedSubscript:RBLayerCopyImageClearColor];
      if (v40)
      {
        [v40 getValue:&v78 size:16];
        v41 = v26;
        v43 = HIDWORD(v78);
        v42 = LODWORD(v78);
        v45 = *(&v79 + 1);
        v44 = v79;
      }

      else
      {
        [(RBLayer *)self clearColor];
        v41 = v26;
      }

      __asm { FMOV            V4.4S, #1.0 }

      _Q4.i64[0] = __PAIR64__(v43, v42);
      _Q4.i32[2] = v44;
      v46 = 2;
      v47 = [a4 objectForKeyedSubscript:{RBLayerCopyImageDisableIgnoreAlphaBlendModes, vmulq_n_f32(_Q4, v45)}];
    }

    else
    {
      v41 = v26;
      v46 = 0;
      v47 = [a4 objectForKeyedSubscript:{RBLayerCopyImageDisableIgnoreAlphaBlendModes, 0, 0}];
    }

    if (v47)
    {
      v53 = [v47 BOOLValue];
    }

    else
    {
      v53 = 0;
    }

    v59 = a5;
    v54 = [a6 copy];
    v55 = [(RBLayer *)self name];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3321888768;
    v61[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_4;
    v61[3] = &__block_descriptor_131_e16_48c30_ZTSN2RB8objc_ptrIP8RBDeviceEE72c61_ZTSN2RB8objc_ptrIPU28objcproto17OS_dispatch_queue8NSObjectEE80c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE88c40_ZTSN2RB14refcounted_ptrINS_8DrawableEEE96c30_ZTSN2RB8objc_ptrIP8NSStringEE104c36_ZTSN2RB8objc_ptrIP13RBDisplayListEE_e5_v8__0l;
    v63 = v22;
    v74 = v84;
    v71 = v37;
    v64 = v19;
    v65 = v20;
    v66 = v59;
    v67 = v54;
    v75 = v58;
    if (v60)
    {
      atomic_fetch_add_explicit(v60 + 2, 1u, memory_order_relaxed);
    }

    v68 = v60;
    v69 = v55;
    v72 = v41;
    v76 = v57;
    v77 = v53;
    v70 = v27;
    v73 = v46;
    v62 = v56;
    RB::Drawable::begin_frame(v60);
    dispatch_async([(RBDevice *)v22 queue], v61);
    RBXMLRecorderMarkFrame(self, v27, SBYTE2(v84), v19, v20);

    if (v68 && atomic_fetch_add_explicit(v68 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBDrawable initWithDevice:];
    }

    if (v60)
    {
      if (atomic_fetch_add_explicit(v60 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBDrawable initWithDevice:];
      }
    }
  }

  else
  {
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_3;
    v85[3] = &unk_1E744C698;
    v85[4] = a6;
    dispatch_async(a5, v85);
    os_unfair_lock_unlock(&self->_lock._lock);
    v22 = 0;
  }
}

void __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_4(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [(RBDecodedFontMetadata *)*(a1 + 48) fontUID];
  v51 = 0;
  v3 = RB::ColorMode::pixel_format((a1 + 124), v2, *(a1 + 112), &v51);
  v4 = vmovn_s64(vcvtq_s64_f64(*(a1 + 56)));
  v50 = v3;
  v49 = v4;
  v48 = 5;
  v5 = RB::Device::ensure_native_texture(v2, &v50, &v49, &v48);
  v6 = v49;
  v7 = (v2 + 336);
  v8 = vld1_dup_f32(v7);
  v9 = vand_s8(vcge_s32(v8, v49), vcgtz_s32(v49));
  if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) == 0)
  {
    v10 = RB::error_log(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_4_cold_1(v3, v10, *&v4);
    }

    v12 = *(a1 + 72);
    v11 = *(a1 + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_56;
    block[3] = &__block_descriptor_40_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE_e5_v8__0l;
    v47 = v11;
    dispatch_async(v12, block);

    v6 = v49;
  }

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3812000000;
  v44[3] = __Block_byref_object_copy__4;
  v44[4] = __Block_byref_object_dispose__4;
  v45 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_58;
  v38 = &unk_1E744CFF0;
  v39 = v44;
  v40 = v50;
  v41 = v6;
  v42 = v48;
  v43 = v2;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3321888768;
  v31[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_2_60;
  v31[3] = &unk_1F0A3EF50;
  v31[4] = v44;
  v31[5] = v3;
  v31[6] = v4;
  v31[7] = v6;
  v34 = *(a1 + 128);
  v35 = *(a1 + 124);
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  if (*(a1 + 96))
  {
    v13 = *(a1 + 96);
  }

  else
  {
    v13 = @"RBLayer";
  }

  RB::RenderFrame::RenderFrame(v52, v2, *(a1 + 88), 2, v13, 0);
  v14 = *(a1 + 126);
  v15 = *(a1 + 125);
  v16 = *(a1 + 124);
  HasExtendedRange = RBColorModeHasExtendedRange(*(a1 + 116));
  RB::RenderParams::RenderParams(&v28, v52, v3, v14, v15, v16, HasExtendedRange, *&v4);
  if (*(a1 + 128))
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v29 = (2 * v51) & 8 | v29 & 0xC3 | v18 | (16 * *(a1 + 129)) | (32 * *(a1 + 130));
  v19 = [*(a1 + 104) _rb_contents];
  if (v19)
  {
    RB::DisplayList::render(v19, &v28, v36, *(a1 + 120), 0, 0, v30, 0.0, *(a1 + 32));
  }

  if (v37(v36))
  {
    RBStrokeRef::clip(v52);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3321888768;
    v25[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_63;
    v25[3] = &unk_1F0A3EF88;
    v25[4] = v31;
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    RB::RenderFrame::add_completed_handler(v52, v25);
    v20 = &v26;
  }

  else
  {
    v22 = *(a1 + 72);
    v21 = *(a1 + 80);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3321888768;
    v23[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_65;
    v23[3] = &__block_descriptor_40_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE_e5_v8__0l;
    v20 = &v24;
    v24 = v21;
    dispatch_async(v22, v23);
  }

  RB::RenderFrame::~RenderFrame(v52);
  _Block_object_dispose(v44, 8);
}

uint64_t __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_58(void *a1)
{
  result = *(*(a1[4] + 8) + 48);
  if (!result)
  {
    v3 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a1[5] width:a1[6] height:HIDWORD(a1[6]) mipmapped:0];
    [v3 setUsage:a1[7]];
    [v3 setStorageMode:0];
    v4 = *(a1[4] + 8);
    v5 = [*(a1[8] + 24) newTextureWithDescriptor:v3];

    *(v4 + 48) = v5;
    return *(*(a1[4] + 8) + 48);
  }

  return result;
}

void __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_2_60(uint64_t a1, MTLPixelFormat a2)
{
  v3 = *(RB::pixel_format_traits(*(a1 + 40), a2) + 5);
  v26 = HIDWORD(*(a1 + 48));
  v4 = (*(a1 + 48) * v3 + 63) & 0xFFFFFFC0;
  v5 = getpagesize();
  v6 = v4 * v26 + v5 - 1;
  v7 = -v5;
  v8 = mmap(0, v6 & v7, 3, 4098, -1, 0);
  if (v8 == -1)
  {
    return;
  }

  v9 = v8;
  v10 = CGDataProviderCreateWithData(0, v8, v6 & v7, _ZZZZ59__RBLayer_copyImageInRect_options_completionQueue_handler__EUb0_EUb1_EN3__18__invokeIPvPKvmEEDaT_T0_T1_);
  v11 = *(*(*(a1 + 32) + 8) + 48);
  v12 = *(a1 + 56);
  memset(v30, 0, sizeof(v30));
  *&v13 = v12;
  *(&v13 + 1) = SHIDWORD(v12);
  v31 = v13;
  v32 = 1;
  [v11 getBytes:v9 bytesPerRow:v4 fromRegion:v30 mipmapLevel:0];
  v15 = 0;
  v16 = *(a1 + 40);
  v17 = 8;
  if (v16 > 2147483650)
  {
    v19 = 4352;
    if (v16 <= 2147483663)
    {
      if (v16 != 2147483651)
      {
        if (v16 != 2147483653)
        {
          v18 = 0;
          if (v16 == 2147483661)
          {
            v18 = 0;
            if (*(a1 + 80))
            {
              v15 = 4101;
            }

            else
            {
              v15 = 4097;
            }

            v17 = 16;
          }

          goto LABEL_32;
        }

LABEL_27:
        v18 = 0;
        v15 = 4102;
        v17 = 5;
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    if ((v16 - 2147483664) < 2)
    {
      v18 = 0;
      v15 = 1;
      goto LABEL_29;
    }

    if (v16 == 2147483666)
    {
      goto LABEL_25;
    }

    v18 = 0;
    if (v16 != 2147483667)
    {
      goto LABEL_32;
    }

LABEL_24:
    v19 = 4353;
LABEL_25:
    v18 = 1;
    v17 = 16;
    v15 = v19;
    goto LABEL_32;
  }

  if (v16 <= 114)
  {
    if ((v16 - 80) >= 2)
    {
      if (v16 != 43)
      {
        v18 = 0;
        if (v16 != 94)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      goto LABEL_27;
    }

    v18 = 0;
    v15 = 8194;
LABEL_29:
    v17 = 8;
    goto LABEL_32;
  }

  if ((v16 - 554) < 2)
  {
    v18 = 1;
    v15 = 270336;
    goto LABEL_31;
  }

  if (v16 == 115)
  {
    goto LABEL_24;
  }

  v18 = 0;
  if (v16 == 628)
  {
LABEL_16:
    v18 = 0;
    v15 = 204806;
LABEL_31:
    v17 = 10;
  }

LABEL_32:
  v20 = *(a1 + 83);
  LOBYTE(v30[0]) = v20;
  if ((RB::pixel_format_traits(v16, v14)[1] & 0x10) != 0)
  {
    LOBYTE(v30[0]) = v20 & 0xF | 0x10;
  }

  v21 = RB::ColorSpace::cg_color_space(v30, v18);
  v22 = CGImageCreate(*(a1 + 48), HIDWORD(*(a1 + 48)), v17, 8 * v3, v4, v21, v15, v10, 0, 1, kCGRenderingIntentDefault);
  v24 = *(a1 + 64);
  v23 = *(a1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_3_61;
  block[3] = &__block_descriptor_48_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE40c27_ZTSN2RB6cf_ptrIP7CGImageEE_e5_v8__0l;
  v28 = v23;
  if (v22)
  {
    v25 = CFRetain(v22);
  }

  else
  {
    v25 = 0;
  }

  cf = v25;
  dispatch_async(v24, block);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_63(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3321888768;
    block[2] = __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_2_64;
    block[3] = &__block_descriptor_40_e8_32c48_ZTSN2RB8objc_ptrIU13block_pointerFvP7CGImageEEE_e5_v8__0l;
    v8 = v3;
    dispatch_async(v4, block);
  }

  else
  {
    v6 = *(a1 + 4);

    dispatch_async(v5, v6);
  }
}

- (void)displayIfNeeded
{
  if ((*(self + 172) & 0x20) == 0)
  {
    v2.receiver = self;
    v2.super_class = RBLayer;
    [(RBLayer *)&v2 displayIfNeeded];
  }
}

- (void)renderInContext:(CGContext *)a3
{
  *(self + 172) |= 0x20u;
  v4.receiver = self;
  v4.super_class = RBLayer;
  [(RBLayer *)&v4 renderInContext:a3];
  *(self + 172) &= ~0x20u;
}

- (void)_renderForegroundInContext:(CGContext *)a3
{
  [(RBLayer *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  RB::ColorMode::ColorMode(v30, [(RBLayer *)self colorMode]);
  v13 = objc_opt_new();
  [v13 setProfile:3];
  [v13 setDefaultColorSpace:rb_color_space(v30[1] | 0x100u)];
  [v13 setContentRect:{v6, v8, v10, v12}];
  [v13 beginLayer];
  if ([(RBLayer *)self clearsBackground])
  {
    [(RBLayer *)self clearColor];
    v18 = v17;
    if (v17 != 0.0)
    {
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = objc_opt_new();
      v23 = objc_opt_new();
      LODWORD(v24) = v19;
      LODWORD(v25) = v20;
      LODWORD(v26) = v21;
      *&v27 = v18;
      [v22 setColor:{v24, v25, v26, v27}];
      [v23 setRect:{v6, v8, v10, v12}];
      LODWORD(v28) = 1.0;
      [v13 drawShape:v23 fill:v22 alpha:0 blendMode:v28];
    }
  }

  [(RBLayer *)self drawInDisplayList:v13];
  LODWORD(v29) = 1.0;
  [v13 drawLayerWithAlpha:0 blendMode:v29];
  CGContextSaveGState(a3);
  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  CGContextClipToRect(a3, v31);
  if (([(RBLayer *)self contentsAreFlipped]& 1) == 0)
  {
    CGContextTranslateCTM(a3, 0.0, v12);
    CGContextScaleCTM(a3, 1.0, -1.0);
  }

  [v13 renderInContext:a3 options:0];
  CGContextRestoreGState(a3);
}

- (double)effectiveDisplayHeadroom
{
  if (!a1)
  {
    return 0.0;
  }

  [a1 displayHeadroomLimit];
  v2 = *&result;
  LODWORD(result) = 1.0;
  if (v2 > 1.0)
  {
    *&result = [(CALayer *)a1 displayHeadroom];
    if (*&result >= v2)
    {
      *&result = v2;
    }
  }

  return result;
}

void __38__RBLayer_displayWithBounds_callback___block_invoke_28(uint64_t a1, os_unfair_lock_s *this)
{
  v4 = *(a1 + 32);
  if (!v4 || (v5 = *(v4 + 48)) == 0)
  {
    v6 = 0;
    if (this)
    {
      goto LABEL_4;
    }

LABEL_8:
    v9 = RB::SurfacePool::shared(a1);
    RB::SurfacePool::watch_queue(v9, v6, *(a1 + 48));
    *(*(a1 + 48) + 172) |= 0x10u;
    goto LABEL_9;
  }

  v6 = *(v5 + 8);
  if (!this)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (RB::Surface::queue_id(this, v6))
  {
    operator new();
  }

  v7 = RB::SurfacePool::shared(0);
  RB::SurfacePool::dealloc(v7, this, v6);
LABEL_9:
  v10 = RB::SurfacePool::shared(v8);

  RB::SurfacePool::collect_async(v10);
}

- (uint64_t)_updateSubsurface:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!*(result + 104) || a2[5].i32[0] - *(result + 144) >= 0)
    {
      v4 = *(result + 72);
      if (v4)
      {
        [v4 removeFromSuperlayer];

        v3[9] = 0;
      }

      if (&v3[13] != a2)
      {
        RB::SharedSubsurface::~SharedSubsurface(&v3[13]);
        *v5 = *a2;
        v5[1] = a2[1];
        v5[2] = a2[2];
        v5[3] = 0;
        v5[4] = 0;
        v5[5].i32[0] = a2[5].i32[0];
        v5[5].i8[4] = a2[5].i8[4];
        *a2 = 0;
      }

      RB::SharedSubsurface::attach(&v3[13], [(int32x2_t *)v3 context]);
      if (!*&v3[10])
      {
        v6 = objc_opt_new();

        v3[10] = v6;
        [(int32x2_t *)v3 addSublayer:*&v3[10]];
      }

      if (v3[13])
      {
        v7 = *(*&v3[13] + 32);
        v8.i64[0] = v7;
        v8.i64[1] = SHIDWORD(v7);
        v9 = vcvtq_f64_s64(v8);
      }

      else
      {
        v9 = 0uLL;
      }

      __asm { FMOV            V1.2D, #1.0 }

      v15 = vdivq_f64(_Q1, v9);
      *&_Q1.f64[0] = vadd_s32(v3[14], 0x100000001);
      v16.i64[0] = SLODWORD(_Q1.f64[0]);
      v16.i64[1] = SHIDWORD(_Q1.f64[0]);
      v17 = vmulq_f64(v15, vcvtq_f64_s64(v16));
      *&_Q1.f64[0] = vadd_s32(v3[15], 0x100000001);
      v16.i64[0] = SLODWORD(_Q1.f64[0]);
      v16.i64[1] = SHIDWORD(_Q1.f64[0]);
      v21 = v17;
      if (([(int32x2_t *)v3 contentsAreFlipped:vmulq_f64(v15]& 1) == 0)
      {
        v18.f64[0] = v21.f64[0];
        v18.f64[1] = 1.0 - COERCE_DOUBLE(*&vaddq_f64(v21, v20).f64[1]);
        v21 = v18;
      }

      [*&v3[10] setContents:RB::SharedSubsurface::contents(&v3[13])];
      v19 = v3[10];

      return [v19 setContentsRect:{*&v21, *&v20}];
    }
  }

  return result;
}

- (void)_moveSubsurface:(void *)a3
{
  [(RBLayer *)self _updateSubsurface:a3];

  os_unfair_lock_unlock(&self->_lock._lock);
}

- (void)displayWithBounds:(os_log_t)log callback:(double)a4 .cold.1(uint64_t a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 136315650;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = LODWORD(a4);
  *(buf + 9) = 1024;
  *(buf + 5) = HIDWORD(a4);
  _os_log_fault_impl(&dword_195CE8000, log, OS_LOG_TYPE_FAULT, "RBLayer: unable to create texture: %s, [%d, %d]", buf, 0x18u);
}

- (uint64_t)displayWithBounds:(uint64_t)a1 callback:.cold.3(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_2(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_0();
    return (*(v3 + 8))(v4, v5);
  }

  return result;
}

- (uint64_t)updateColor
{
  if (*(a1 + 72))
  {
    v2 = &_MergedGlobals_6;
  }

  else if (*(a1 + 104))
  {
    v2 = &qword_1ED6D53F0;
  }

  else
  {
    v2 = &qword_1ED6D53F0;
    if ((*(a1 + 172) & 0x40) == 0 && !*(a1 + 88))
    {
      v2 = &qword_1ED6D53F8;
    }
  }

  [a1 setBorderColor:*v2];

  return [a1 setBorderWidth:1.0];
}

BOOL __38__RBLayer_displayWithBounds_callback___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 48);
  if (v8 && (v9 = *(v8 + 48)) != 0)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = RB::SurfacePool::shared(a1);
  if (*(a1 + 88) == 0.0)
  {
    v12 = *(a1 + 92);
  }

  else
  {
    v12 = 0.0;
  }

  *(*(*a3 + 8) + 24) = RB::SurfacePool::alloc(v11, a2, *(a1 + 64), *(a1 + 102), 2u, [*(a1 + 72) name], *(a1 + 96), v10, *(a1 + 56), v12, vsub_s32(*(a1 + 56), *(a1 + 80)));
  v13 = *(*(*a3 + 8) + 24);
  *a4 = v13;
  return v13 == 0;
}

- (uint64_t)waitUntilAsyncRenderingCompleted
{
  if (result)
  {
    result = OUTLINED_FUNCTION_0_2(result);
    if (v1)
    {
      OUTLINED_FUNCTION_0();
      return (*(v2 + 8))();
    }
  }

  return result;
}

__n128 __59__RBLayer_copyImageInRect_options_completionQueue_handler___block_invoke_4_cold_1(RB *a1, NSObject *a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *buf = 136315650;
  v7 = RB::pixel_format_name(a1, a2);
  v8 = 1024;
  v9 = LODWORD(a3);
  v10 = 1024;
  v11 = HIDWORD(a3);
  _os_log_fault_impl(&dword_195CE8000, a2, OS_LOG_TYPE_FAULT, "RBLayer: unable to create image texture: %s, [%d, %d]", buf, 0x18u);
  return result;
}

@end