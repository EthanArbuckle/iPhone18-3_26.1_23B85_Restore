@interface UIDynamicsDebug
- (UIDynamicAnimator)animator;
- (UIDynamicsDebug)init;
- (UIDynamicsDebug)initWithAnimator:(id)animator;
- (void)_setupDebugViewIfNeccessary;
- (void)_teardownDebugView;
- (void)captureDebugInformation;
- (void)dealloc;
- (void)glkView:(id)view drawInRect:(CGRect)rect;
- (void)setEnabled:(BOOL)enabled;
- (void)setNeedsDisplay;
@end

@implementation UIDynamicsDebug

- (UIDynamicsDebug)initWithAnimator:(id)animator
{
  animatorCopy = animator;
  if (!animatorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDynamicsDebug.mm" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"animator"}];
  }

  v10.receiver = self;
  v10.super_class = UIDynamicsDebug;
  v6 = [(UIDynamicsDebug *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_animator, animatorCopy);
    *&v7->_showPhysics = 257;
    v7->_showFields = 1;
  }

  return v7;
}

- (UIDynamicsDebug)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIDynamicsDebug init]"];
  [v3 raise:*MEMORY[0x1E695D940] format:{@"Don't call %@.", v4}];

  return 0;
}

- (void)dealloc
{
  [(UIDynamicsDebug *)self _teardownDebugView];
  v3.receiver = self;
  v3.super_class = UIDynamicsDebug;
  [(UIDynamicsDebug *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  animator = [(UIDynamicsDebug *)self animator];
  _referenceSystemType = [animator _referenceSystemType];

  if (_referenceSystemType)
  {
    self->_enabled = enabledCopy;
    if (enabledCopy)
    {

      [(UIDynamicsDebug *)self _setupDebugViewIfNeccessary];
    }

    else if (self->_debugView)
    {

      [(UIDynamicsDebug *)self _teardownDebugView];
    }
  }

  else
  {
    NSLog(&cfstr_DynamicsDebugR.isa);
  }
}

- (void)captureDebugInformation
{
  v2 = &self->_anon_5208c[167796];
  if (self->_enabled)
  {
    [(GLKView *)self->_debugView frame];
    Width = CGRectGetWidth(v29);
    [*(v2 + 30) frame];
    Height = CGRectGetHeight(v30);
    [*(v2 + 30) frame];
    v16 = CGRectGetWidth(v31);
    [*(v2 + 30) frame];
    v15 = CGRectGetHeight(v32);
    animator = [(UIDynamicsDebug *)self animator];
    _world = [animator _world];
    PKGet_PTM_RATIO();
    v6.f64[0] = Width;
    v6.f64[1] = Height;
    __asm { FMOV            V1.2D, #0.5 }

    *&_Q1.f64[0] = vcvt_f32_f64(vdivq_f64(xmmword_18A678B70, vmulq_f64(v6, _Q1)));
    v12.f64[0] = v15;
    v12.f64[1] = v16;
    __asm { FMOV            V2.2D, #-0.5 }

    *&_Q2.f64[0] = vcvt_f32_f64(vmulq_f64(v12, _Q2));
    v14 = vmul_f32(*&_Q2.f64[0], 0);
    v19 = LODWORD(_Q1.f64[0]);
    v21 = 0;
    v22 = HIDWORD(_Q1.f64[0]);
    v20 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1065353216;
    v26 = vadd_f32(vadd_f32(v14, vmul_f32(vrev64_s32(*&_Q2.f64[0]), *&_Q1.f64[0])), 0);
    v27 = vaddv_f32(v14) + 0.0;
    v28 = v27 + 1.0;
    [_world debugDraw:&v19 matrix:v2[225] showsPhysics:v2[226] showsOutlineInterior:v2[227] showsFields:?];
  }
}

- (void)setNeedsDisplay
{
  v2 = &self->_anon_5208c[167796];
  if (self->_enabled)
  {
    superview = [(GLKView *)self->_debugView superview];
    [superview bringSubviewToFront:*(v2 + 30)];

    v4 = *(v2 + 30);

    [v4 setNeedsDisplay];
  }
}

- (void)_setupDebugViewIfNeccessary
{
  v2 = &self->_anon_5208c[167796];
  if (!self->_debugView)
  {
    animator = [(UIDynamicsDebug *)self animator];
    v5 = *(v2 + 27);
    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:2];
      v7 = *(v2 + 27);
      *(v2 + 27) = v6;

      v5 = *(v2 + 27);
    }

    [MEMORY[0x1E6977FE8] setCurrentContext:v5];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v8 = _MergedGlobals_1076;
    v29 = _MergedGlobals_1076;
    if (!_MergedGlobals_1076)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = ___ZL15getGLKViewClassv_block_invoke;
      v24 = &unk_1E7106BC8;
      v25 = &v26;
      ___ZL15getGLKViewClassv_block_invoke(&v21);
      v8 = v27[3];
    }

    v9 = v8;
    _Block_object_dispose(&v26, 8);
    v10 = [v8 alloc];
    [animator _referenceSystemBounds];
    v11 = [v10 initWithFrame:*(v2 + 27) context:?];
    v12 = *(v2 + 30);
    *(v2 + 30) = v11;

    [*(v2 + 30) setUserInteractionEnabled:0];
    [*(v2 + 30) setOpaque:0];
    [*(v2 + 30) setEnableSetNeedsDisplay:1];
    [*(v2 + 30) setDrawableColorFormat:0];
    [*(v2 + 30) setDrawableDepthFormat:2];
    [*(v2 + 30) setDrawableStencilFormat:1];
    [*(v2 + 30) setDelegate:self];
    [*(v2 + 30) setAutoresizingMask:18];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v13 = qword_1ED49DB58;
    v29 = qword_1ED49DB58;
    if (!qword_1ED49DB58)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = ___ZL21getGLKBaseEffectClassv_block_invoke;
      v24 = &unk_1E7106BC8;
      v25 = &v26;
      ___ZL21getGLKBaseEffectClassv_block_invoke(&v21);
      v13 = v27[3];
    }

    v14 = v13;
    _Block_object_dispose(&v26, 8);
    v15 = objc_opt_new();
    v16 = *(v2 + 26);
    *(v2 + 26) = v15;

    glGenBuffers(1, &self->_vertexBuffer);
    glBindBuffer(0x8892u, self->_vertexBuffer);
    glBufferData(0x8892u, 504000, 0, 0x88E8u);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 2, 0x1406u, 0, 12, 0);
    glEnableVertexAttribArray(2u);
    glVertexAttribPointer(2u, 4, 0x1401u, 1u, 12, 8);
    glBlendColor(0.0, 0.0, 0.0, 1.0);
    glBlendFunc(1u, 0x303u);
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    *&v18 = v18;
    glLineWidth(*&v18);

    if ([animator _referenceSystemType] == 1)
    {
      referenceView = [animator referenceView];
      [referenceView addSubview:*(v2 + 30)];
    }

    else
    {
      referenceView = [animator _referenceSystem];
      collectionView = [referenceView collectionView];
      [collectionView addSubview:*(v2 + 30)];
    }
  }
}

- (void)_teardownDebugView
{
  v3 = &self->_anon_5208c[167796];
  [MEMORY[0x1E6977FE8] setCurrentContext:self->_ctx];
  glDeleteBuffers(1, &self->_vertexBuffer);
  [*(v3 + 30) removeFromSuperview];
  v4 = *(v3 + 30);
  *(v3 + 30) = 0;

  v5 = *(v3 + 26);
  *(v3 + 26) = 0;

  v6 = MEMORY[0x1E6977FE8];

  [v6 setCurrentContext:0];
}

- (void)glkView:(id)view drawInRect:(CGRect)rect
{
  v5 = [(UIDynamicsDebug *)self animator:view];
  _world = [v5 _world];
  debugDrawPacket = [_world debugDrawPacket];

  v9 = *debugDrawPacket;
  v8 = *(debugDrawPacket + 8);
  v10 = *(debugDrawPacket + 24);
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(0x4100u);
  if (v8 != v9)
  {
    v11 = (v8 - v9) >> 3;
    [(GLKBaseEffect *)self->_effect prepareToDraw];
    if (v11 >= 0xA410)
    {
      v11 = 42000;
    }

    if (v11 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = &self->_vertices[1];
    v15 = v10 + 8;
    v12.i32[0] = 1.0;
    v16 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v17 = *(v15 + 4);
      v18 = LODWORD(v17);
      if (LODWORD(v17) > 0x3F800000)
      {
        v17 = 1.0;
      }

      if (v18 < 0)
      {
        v17 = 0.0;
      }

      v19 = *(v15 - 8);
      v20 = LODWORD(v19);
      if (LODWORD(v19) > 0x3F800000)
      {
        v19 = 1.0;
      }

      if (v20 < 0)
      {
        v19 = 0.0;
      }

      *&v21 = (v17 * v19) * 255.0;
      v22 = *&v21;
      v21.i32[0] = LODWORD(v14->position.x);
      v23 = vmovl_u8(v21);
      v23.i16[0] = v22;
      LOBYTE(v14->position.x) = v22;
      v24 = *(v15 - 4);
      v25 = LODWORD(v24);
      if (LODWORD(v24) > 0x3F800000)
      {
        v24 = 1.0;
      }

      if (v25 < 0)
      {
        v24 = 0.0;
      }

      v23.i16[1] = ((v17 * v24) * 255.0);
      LODWORD(v14->position.x) = vuzp1_s8(*v23.i8, v12).u32[0];
      v26 = *v15;
      v15 += 16;
      v27 = *&v26;
      v28 = v26;
      if (v26 > 0x3F800000)
      {
        v27 = 1.0;
      }

      if (v28 < 0)
      {
        v27 = 0.0;
      }

      v29.f32[0] = v17 * v27;
      v29.f32[1] = v17;
      LODWORD(v14->position.x) = vuzp1_s8(vzip1_s32(*v23.i8, vuzp1_s16(vmovn_s64(vcvtq_s64_f64(vmulq_f64(vcvtq_f64_f32(v29), v16))), v12)), v12).u32[0];
      v30 = *v9++;
      v14[-1] = v30;
      v14 = (v14 + 12);
      --v13;
    }

    while (v13);
    glBufferSubData(0x8892u, 0, 12 * v11, self->_vertices);

    glDrawArrays(1u, 0, v11);
  }
}

- (UIDynamicAnimator)animator
{
  WeakRetained = objc_loadWeakRetained(&self->_animator);

  return WeakRetained;
}

@end