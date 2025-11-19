@interface VFXREWorldSimulation
- (BOOL)wantsCollisionPlanes;
- (VFXREWorldSimulation)initWithCommandQueue:(id)a3;
- (id).cxx_construct;
- (id)_sceneForCollisionPlanes;
- (id)recycleBuffersGetCompletion;
- (uint64_t)addCollisionPlaneWithExtents:(uint64_t)a3 transform:(uint64_t)a4;
- (uint64_t)updateCollisionPlane:(uint64_t)a3 extents:(uint64_t)a4 transform:(double)a5;
- (void)addSecondaryPointOfView:(id)a3;
- (void)beginFrameWithEncoder:(id)a3 frameIndex:(unint64_t)a4;
- (void)dealloc;
- (void)endFrame;
- (void)enumerateDrawCallsForNode:(id)a3 usingBlock:(id)a4;
- (void)enumerateSecondaryPointOfViewsUsingBlock:(id)a3;
- (void)removeCollisionPlane:(unint64_t)a3;
- (void)setWorld:(id)a3;
- (void)updateCollisionPlane:(unint64_t)a3 collideOutsideExtents:(BOOL)a4;
- (void)updateWithDeltaTime:(double)a3;
@end

@implementation VFXREWorldSimulation

- (VFXREWorldSimulation)initWithCommandQueue:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VFXREWorldSimulation;
  v5 = [(VFXREWorldSimulation *)&v12 init];
  if (v5)
  {
    v13 = @"kVFXRendererInitOptionForRERendering";
    v14[0] = MEMORY[0x1E695E118];
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v14, &v13, 1);
    v8 = objc_msgSend_rendererWithCommandQueue_options_(VFXRenderer, v7, a3, v6);
    v5->_renderer = v8;
    objc_msgSend_setRendererKind_(v8, v9, 6, v10);
    v5->_transientDrawCall = objc_alloc_init(VFXDrawCall);
    v5->_transientPass = sub_1AF1D6224();
    v5->_systemTime = 0.0;
    operator new();
  }

  return 0;
}

- (void)setWorld:(id)a3
{
  objc_msgSend_flush(VFXTransaction, a2, a3, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v6, 1, v7);
  self->_world = a3;
  v8 = a3;
  v12 = objc_msgSend_rootNode(self->_world, v9, v10, v11);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v16 = objc_msgSend_rootNode(self->_world, v13, v14, v15);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1AF325410;
  v33[3] = &unk_1E7A7E710;
  v33[4] = &v34;
  objc_msgSend_enumerateChildNodesUsingBlock_(v16, v17, v33, v18);
  if ((v35[3] & 1) == 0)
  {
    v22 = objc_msgSend_node(VFXNode, v19, v20, v21);
    v26 = objc_msgSend_camera(VFXCamera, v23, v24, v25);
    objc_msgSend_setCamera_(v22, v27, v26, v28);
    objc_msgSend_addChildNode_(v12, v29, v22, v30);
  }

  objc_msgSend_setWorld_(self->_renderer, v19, self->_world, v21);
  objc_msgSend_setImmediateMode_(VFXTransaction, v31, 0, v32);
  _Block_object_dispose(&v34, 8);
}

- (void)addSecondaryPointOfView:(id)a3
{
  v6 = objc_msgSend_camera(a3, a2, a3, v3);
  if (v6 && (objc_msgSend_usesOrthographicProjection(v6, v7, v8, v9) & 1) == 0)
  {
    secondaryPovs = self->_secondaryPovs;

    objc_msgSend_addObject_(secondaryPovs, v10, a3, v11);
  }
}

- (void)enumerateSecondaryPointOfViewsUsingBlock:(id)a3
{
  secondaryPovs = self->_secondaryPovs;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF325528;
  v5[3] = &unk_1E7A7F050;
  v5[4] = a3;
  objc_msgSend_enumerateObjectsUsingBlock_(secondaryPovs, a2, v5, v3);
}

- (void)dealloc
{
  transientPass = self->_transientPass;
  if (transientPass)
  {
    CFRelease(transientPass);
    self->_transientPass = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXREWorldSimulation;
  [(VFXREWorldSimulation *)&v4 dealloc];
}

- (void)updateWithDeltaTime:(double)a3
{
  objc_msgSend_flush(VFXTransaction, a2, v3, v4);
  systemTime = self->_systemTime;
  if (systemTime == 0.0)
  {
    v11 = CACurrentMediaTime();
  }

  else
  {
    v11 = systemTime + a3;
  }

  self->_systemTime = v11;
  renderer = self->_renderer;

  objc_msgSend_updateAtTime_(renderer, v7, v8, v9);
}

- (void)enumerateDrawCallsForNode:(id)a3 usingBlock:(id)a4
{
  v7 = objc_msgSend__engineContext(self->_renderer, a2, a3, a4, a4, self->_transientDrawCall, self->_transientPass);
  v15[3] = sub_1AF12E2AC(v7);
  v15[4] = objc_msgSend_worldRef(self->_world, v8, v9, v10);
  v15[5] = objc_msgSend_nodeRef(a3, v11, v12, v13);
  objc_msgSend_enumerateDrawCallsUsingBlock_context_(a3, v14, a4, v15);
}

- (void)beginFrameWithEncoder:(id)a3 frameIndex:(unint64_t)a4
{
  v4 = objc_msgSend__engineContext(self->_renderer, a2, a3, a4);
  v5 = sub_1AF12E2AC(v4);
  objc_msgSend_frameConstantBufferPool(v5, v6, v7, v8);
  operator new();
}

- (void)endFrame
{
  v4 = objc_msgSend__engineContext(self->_renderer, a2, v2, v3);
  v5 = sub_1AF12E2AC(v4);

  MEMORY[0x1EEE66B58](v5, sel_endExternalFrame, v6, v7);
}

- (id)recycleBuffersGetCompletion
{
  v5 = objc_msgSend__engineContext(self->_renderer, a2, v2, v3);
  v9 = sub_1AF130C80(v5, v6, v7, v8);
  v13 = objc_msgSend_presentationScene(self->_world, v10, v11, v12);

  return MEMORY[0x1EEE66B58](v13, sel_recycleBuffersGetCompletionWithRenderer_, v9, v14);
}

- (id)_sceneForCollisionPlanes
{
  v4 = objc_msgSend_world(self, a2, v2, v3);

  return objc_msgSend_presentationScene(v4, v5, v6, v7);
}

- (uint64_t)addCollisionPlaneWithExtents:(uint64_t)a3 transform:(uint64_t)a4
{
  v4 = objc_msgSend__sceneForCollisionPlanes(a1, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v4, sel_createCollisionPlane_transform_, v5, v6);
}

- (uint64_t)updateCollisionPlane:(uint64_t)a3 extents:(uint64_t)a4 transform:(double)a5
{
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL), vnegq_f32(a7)), a8, vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL));
  v10 = vmulq_f32(a6, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v11 = (v10.f32[2] + vaddv_f32(*v10.f32)) < 0.0;
  v12 = 1.0;
  if (v11)
  {
    v12 = -1.0;
  }

  v13 = vmulq_f32(a6, a6);
  v14 = vmulq_f32(a7, a7);
  v15 = vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8));
  v16 = vextq_s8(v13, v13, 8uLL);
  *v16.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v16.f32, *&vextq_s8(v14, v14, 8uLL)), v15));
  v17 = vmulq_f32(a8, a8);
  v16.i32[2] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32));
  v18 = vmulq_n_f32(v16, v12);
  v19 = vcltzq_f32(v18);
  v20 = vmvnq_s8(vorrq_s8(v19, vcgezq_f32(v18)));
  v20.i32[3] = v20.i32[2];
  v20.i32[0] = vmaxvq_u32(v20);
  v19.i32[0] = -1;
  v21 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v20, v19), 0), v18, 0);
  v22 = vceqzq_f32(v21);
  v22.i32[3] = v22.i32[2];
  if ((vmaxvq_u32(v22) & 0x80000000) != 0)
  {
    v23 = objc_msgSend__sceneForCollisionPlanes(a1, a2, a3, a4, 0, 0);
  }

  else
  {
    v23 = objc_msgSend__sceneForCollisionPlanes(a1, a2, a3, a4, *&v21);
  }

  return MEMORY[0x1EEE66B58](v23, sel_updateCollisionPlane_scale_orientation_position_, a3, v24);
}

- (void)removeCollisionPlane:(unint64_t)a3
{
  v5 = objc_msgSend__sceneForCollisionPlanes(self, a2, a3, v3);

  MEMORY[0x1EEE66B58](v5, sel_destroyCollisionPlane_, a3, v6);
}

- (BOOL)wantsCollisionPlanes
{
  v4 = objc_msgSend_world(self, a2, v2, v3);
  v8 = objc_msgSend_scene(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_wantsCollisionPlanes, v9, v10);
}

- (void)updateCollisionPlane:(unint64_t)a3 collideOutsideExtents:(BOOL)a4
{
  v4 = a4;
  v6 = objc_msgSend__sceneForCollisionPlanes(self, a2, a3, a4);

  MEMORY[0x1EEE66B58](v6, sel_updateCollisionPlane_collideOutsideExtents_, a3, v4);
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end