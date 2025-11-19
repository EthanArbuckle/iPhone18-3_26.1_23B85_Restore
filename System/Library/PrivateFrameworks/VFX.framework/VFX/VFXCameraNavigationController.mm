@interface VFXCameraNavigationController
- (BOOL)_computeBoundingSphereOmittingFloorsForNode:(__CFXNode *)a3 sphere:(CFXSphere *)a4;
- (BOOL)_freeCameraActivated;
- (BOOL)_pointOfViewUsesOrthographicProjection;
- (BOOL)enableInertia;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)wantsRedraw;
- (VFXCameraNavigationController)initWithView:(id)a3;
- (__n128)_worldBoundingSphere;
- (double)_defaultTargetForWorld:(void *)a3;
- (float)_cappedTranslationDelta:(float)a3;
- (float)_modeSensitivity;
- (float)_orthographicZoomFactorForProposedZoomFactor:(float)a3;
- (float)_pointOfViewOrthographicScale;
- (float)_targetDistance;
- (float)_translationCoef;
- (float)friction;
- (float)zoomFactor;
- (id).cxx_construct;
- (id)gestureRecognizers;
- (id)pointOfView;
- (uint64_t)cameraAutomaticTargetPoint;
- (uint64_t)cameraTarget;
- (uint64_t)worldFront;
- (unint64_t)_effectiveStickyAxis;
- (void)__didChangePointOfView;
- (void)__willChangePointOfView;
- (void)_computeAutomaticTargetPointIfNeeded;
- (void)_computeStickyAxisIfNeeded:(CGPoint)a3;
- (void)_computeTranslationOrigin3DFromPoint:(CGPoint)a3;
- (void)_handleDoubleTap:(id)a3;
- (void)_handlePan:(id)a3;
- (void)_handlePinch:(id)a3;
- (void)_handleRotation:(id)a3;
- (void)_installFreeViewCameraIfNeeded;
- (void)_prepareFreeViewCamera;
- (void)_resetFreeViewCamera;
- (void)_setPointOfViewOrthographicScale:(float)a3;
- (void)_setupUpVector;
- (void)_startBrowsingIfNeeded:(CGPoint)a3;
- (void)_stopInertia;
- (void)_switchToFreeViewCamera;
- (void)_translateToViewPoint:(CGPoint)a3;
- (void)_willBeginInteraction;
- (void)beginGesture:(id)a3;
- (void)cameraDidChange;
- (void)cameraRotationWillStartForController:(id)a3;
- (void)dealloc;
- (void)focusNode:(id)a3;
- (void)focusNodes:(id)a3;
- (void)panWithGestureRecognizer:(id)a3;
- (void)pinchWithGestureRecognizer:(id)a3;
- (void)rotateOf:(float)a3;
- (void)rotateWithGestureRecognizer:(id)a3;
- (void)setAutomaticCameraTarget:(BOOL)a3;
- (void)setCameraTarget:(VFXCameraNavigationController *)self;
- (void)setEnableFreeCamera:(BOOL)a3;
- (void)setEnableInertia:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFriction:(float)a3;
- (void)setGimbalLockMode:(BOOL)a3;
- (void)setZoomFactor:(float)a3;
- (void)translateByX:(float)a3 Y:(float)a4 Z:(float)a5;
- (void)viewWillDrawAtTime:(double)a3;
- (void)worldDidChange;
- (void)worldWillChange;
- (void)zoomBy:(float)a3 animate:(BOOL)a4;
@end

@implementation VFXCameraNavigationController

- (VFXCameraNavigationController)initWithView:(id)a3
{
  v27.receiver = self;
  v27.super_class = VFXCameraNavigationController;
  v4 = [(VFXCameraNavigationController *)&v27 init];
  v5 = v4;
  if (v4)
  {
    v4->_view = a3;
    v4->_cameraController = objc_alloc_init(VFXCameraController);
    v9 = objc_msgSend_pointOfView(a3, v6, v7, v8);
    objc_msgSend_setPointOfView_(*(v5 + 480), v10, v9, v11);
    objc_msgSend_setInertiaEnabled_(*(v5 + 480), v12, 1, v13);
    objc_msgSend_setInteractionMode_(*(v5 + 480), v14, 1, v15);
    objc_msgSend_setDrivenByDefaultNavigationCameraController_(*(v5 + 480), v16, 1, v17);
    objc_msgSend_setDelegate_(*(v5 + 480), v18, v5, v19);
    *(v5 + 336) = 0;
    *(v5 + 252) = 0;
    *(v5 + 84) = 1065353216;
    *(v5 + 474) = 1;
    *(v5 + 89) = 1;
    *(v5 + 289) = 0;
    *(v5 + 93) = 257;
    *(v5 + 184) = xmmword_1AFE47D60;
    objc_msgSend_worldDidChange(v5, v20, v21, v22);
    objc_msgSend_cameraDidChange(v5, v23, v24, v25);
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->_cameraController, a2, 0, v2);

  v4.receiver = self;
  v4.super_class = VFXCameraNavigationController;
  [(VFXCameraNavigationController *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  self->_enabled = a3;
  v5 = objc_msgSend_gestureRecognizers(self, a2, a3, v3);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_setEnabled_(*(*(&v13 + 1) + 8 * v12++), v8, self->_enabled, v9);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v10);
  }
}

- (BOOL)enableInertia
{
  v4 = objc_msgSend_cameraController(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](v4, sel_inertiaEnabled, v5, v6);
}

- (void)setEnableInertia:(BOOL)a3
{
  v4 = a3;
  v5 = objc_msgSend_cameraController(self, a2, a3, v3);

  objc_msgSend_setInertiaEnabled_(v5, v6, v4, v7);
}

- (float)friction
{
  v4 = objc_msgSend_cameraController(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_inertiaFriction, v5, v6);
  return result;
}

- (void)setFriction:(float)a3
{
  v5 = objc_msgSend_cameraController(self, a2, v3, v4);

  MEMORY[0x1EEE66B58](v5, sel_setInertiaFriction_, v6, v7);
}

- (void)setAutomaticCameraTarget:(BOOL)a3
{
  if (self->_target.hasAutomatic != a3)
  {
    self->_target.hasAutomatic = a3;
    objc_msgSend_invalidateCameraTarget(self, a2, a3, v3);
  }
}

- (uint64_t)cameraTarget
{
  objc_msgSend__computeAutomaticTargetPointIfNeeded(a1, a2, a3, a4);
  v8 = objc_msgSend_cameraController(a1, v5, v6, v7);

  return objc_msgSend_target(v8, v9, v10, v11);
}

- (void)setCameraTarget:(VFXCameraNavigationController *)self
{
  v12 = v3;
  objc_msgSend_setAutomaticCameraTarget_(self, a2, 0, v2);
  v8 = objc_msgSend_cameraController(self, v5, v6, v7);

  objc_msgSend_setTarget_(v8, v9, v10, v11, v12);
}

- (void)setGimbalLockMode:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = objc_msgSend_cameraController(self, a2, a3, v3);

  objc_msgSend_setInteractionMode_(v5, v6, v4, v7);
}

- (BOOL)wantsRedraw
{
  v5 = objc_msgSend_cameraController(self, a2, v2, v3);
  if (objc_msgSend_isInertiaRunning(v5, v6, v7, v8))
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_keyboard.lock);
  size = self->_keyboard.keyDown.__tree_.__size_;
  os_unfair_lock_unlock(&self->_keyboard.lock);
  v14 = objc_msgSend_cameraController(self, v11, v12, v13);
  if (objc_msgSend_interactionMode(v14, v15, v16, v17))
  {
    v18 = 1;
  }

  else
  {
    v18 = size == 0;
  }

  return !v18;
}

- (void)focusNode:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v7, 1);
  objc_msgSend_focusNodes_(self, v5, v4, v6);
}

- (void)focusNodes:(id)a3
{
  if (a3)
  {
    self->_didEverFocusNode = 1;
    objc_msgSend_setAutomaticCameraTarget_(self, a2, 0, v3);
    objc_msgSend__switchToFreeViewCamera(self, v6, v7, v8);
    v12 = objc_msgSend_cameraController(self, v9, v10, v11);
    v16 = objc_msgSend_automaticTarget(v12, v13, v14, v15);
    v20 = objc_msgSend_cameraController(self, v17, v18, v19);
    objc_msgSend_setAutomaticTarget_(v20, v21, 1, v22);
    v26 = objc_msgSend_cameraController(self, v23, v24, v25);
    objc_msgSend_frameNodes_(v26, v27, a3, v28);
    v32 = objc_msgSend_cameraController(self, v29, v30, v31);
    objc_msgSend_setAutomaticTarget_(v32, v33, v16, v34);
    if (objc_msgSend__pointOfViewUsesOrthographicProjection(self, v35, v36, v37))
    {
      originalOrthoScale = self->_originalOrthoScale;
      objc_msgSend__pointOfViewOrthographicScale(self, v38, v39, v40);
      *&v45 = originalOrthoScale / *&v45;

      objc_msgSend_setZoomFactor_(self, v42, v43, v44, v45);
    }
  }
}

- (unint64_t)_effectiveStickyAxis
{
  v2 = *&self->_anon_101[23];
  if (!v2)
  {
    v3 = 280;
    if (self->_stickyAxis.stickyMoveEnabled)
    {
      v3 = 272;
    }

    return *(&self->super.isa + v3);
  }

  return v2;
}

- (void)setEnableFreeCamera:(BOOL)a3
{
  self->_enableFreeCamera = a3;
  if (!a3)
  {
    (MEMORY[0x1EEE66B58])(self, sel__resetFreeViewCamera, a3);
  }
}

- (void)_resetFreeViewCamera
{
  v5 = objc_msgSend_worldRef(self->_freeViewCameraNode, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    sub_1AF1CEA20(v5);
    v13 = objc_msgSend_nodeRef(self->_freeViewCameraNode, v10, v11, v12);
    v17 = objc_msgSend_worldRef(self->_freeViewCameraNode, v14, v15, v16);
    sub_1AF1C3A90(v13, v17);
    sub_1AF1CEA9C(v9);
  }

  objc_msgSend_removeFromParentNode(self->_freeViewCameraNode, v6, v7, v8);

  self->_freeViewCameraNode = 0;
}

- (BOOL)_freeCameraActivated
{
  freeViewCameraNode = self->_freeViewCameraNode;
  if (!freeViewCameraNode)
  {
    return 0;
  }

  v5 = objc_msgSend_view(self, a2, v2, v3);
  v9 = objc_msgSend_renderer(v5, v6, v7, v8);
  return freeViewCameraNode == objc_msgSend_pointOfView(v9, v10, v11, v12);
}

- (void)_prepareFreeViewCamera
{
  v5 = objc_msgSend_view(self, a2, v2, v3);
  v9 = objc_msgSend_renderer(v5, v6, v7, v8);
  v13 = objc_msgSend_pointOfView(v9, v10, v11, v12);
  v17 = v13;
  if (v13 && v13 == self->_freeViewCameraNode)
  {
    return;
  }

  v18 = objc_msgSend_presentationNode(v13, v14, v15, v16);
  if (objc_msgSend_camera(v18, v19, v20, v21))
  {
    v25 = objc_msgSend_camera(v18, v22, v23, v24);
  }

  else
  {
    v25 = objc_msgSend_light(v18, v22, v23, v24);
  }

  objc_msgSend_orthographicScale(v25, v26, v27, v28);
  self->_originalOrthoScale = v32;
  self->_orthographicZoomFactor = 1.0;
  freeViewCameraNode = self->_freeViewCameraNode;
  if (!v17)
  {
    if (freeViewCameraNode)
    {
      goto LABEL_13;
    }

    v34 = objc_msgSend_node(VFXNode, v29, v30, v31);
    goto LABEL_12;
  }

  if (v17 == freeViewCameraNode)
  {
LABEL_17:
    v65 = objc_msgSend_presentationNode(v17, v29, v30, v31);
    objc_msgSend_worldTransform(v65, v66, v67, v68);
    goto LABEL_22;
  }

  if (!freeViewCameraNode)
  {
    v34 = objc_msgSend_copy(v17, v29, v30, v31);
LABEL_12:
    self->_freeViewCameraNode = v34;
  }

LABEL_13:
  if (objc_msgSend_camera(v17, v29, v30, v31))
  {
    v38 = objc_msgSend_camera(v17, v35, v36, v37);
    v42 = objc_msgSend_copy(v38, v39, v40, v41);
LABEL_15:
    v45 = v42;
    goto LABEL_16;
  }

  if (!objc_msgSend_light(v17, v35, v36, v37))
  {
    v42 = objc_msgSend_camera(VFXCamera, v73, v74, v75);
    goto LABEL_15;
  }

  v76 = objc_msgSend_light(v17, v73, v74, v75);
  v45 = objc_msgSend_camera(VFXCamera, v77, v78, v79);
  if (v76)
  {
    objc_msgSend_spotOuterAngle(v76, v43, v80, v44);
    objc_msgSend_setFieldOfView_(v45, v81, v82, v83);
    objc_msgSend_zNear(v76, v84, v85, v86);
    objc_msgSend_setZNear_(v45, v87, v88, v89);
    objc_msgSend_zFar(v76, v90, v91, v92);
    objc_msgSend_setZFar_(v45, v93, v94, v95);
  }

LABEL_16:
  objc_msgSend_setCamera_(self->_freeViewCameraNode, v43, v45, v44);
  objc_msgSend_setLight_(self->_freeViewCameraNode, v46, 0, v47);
  objc_msgSend_setModel_(self->_freeViewCameraNode, v48, 0, v49);
  objc_msgSend_setConstraints_(self->_freeViewCameraNode, v50, 0, v51);
  v55 = objc_msgSend_immediateMode(VFXTransaction, v52, v53, v54);
  objc_msgSend_setImmediateMode_(VFXTransaction, v56, 1, v57);
  objc_msgSend_removeAllAnimations(self->_freeViewCameraNode, v58, v59, v60);
  objc_msgSend_setConstraints_(self->_freeViewCameraNode, v61, 0, v62);
  objc_msgSend_setImmediateMode_(VFXTransaction, v63, v55, v64);
  if (v17)
  {
    goto LABEL_17;
  }

  v69 = VFXMatrix4Identity;
  v70 = qword_1AFE48510;
  v71 = xmmword_1AFE48520;
  v72 = 0.0;
LABEL_22:
  v96 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
  v97 = vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL);
  v98 = vmulq_f32(v69, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v71, v71, 0xCuLL), v71, 8uLL), vnegq_f32(v97)), v96, vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL)));
  if (fabs((v98.f32[2] + vaddv_f32(*v98.f32)) + -1.0) > 0.00001)
  {
    v99 = vnegq_f32(v70);
    v100 = vmlaq_f32(vmulq_f32(v96, v99), v71, v97);
    v101 = vmulq_f32(v69, vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL));
    v133 = (v101.f32[2] + vaddv_f32(*v101.f32)) < 0.0;
    v102 = 1.0;
    if (v133)
    {
      v102 = -1.0;
    }

    v103 = vmulq_f32(v69, v69);
    v104 = vmulq_f32(v70, v70);
    *v99.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v103, v103, 8uLL), *&vextq_s8(v104, v104, 8uLL)), vadd_f32(vzip1_s32(*v103.i8, *v104.f32), vzip2_s32(*v103.i8, *v104.f32))));
    v105 = vmulq_f32(v71, v71);
    v106 = sqrtf(*&v105.i32[2] + vaddv_f32(*v105.i8));
    v107 = vzip2q_s32(v103, v105);
    v108 = vzip1q_s32(vzip1q_s32(v103, v105), v104);
    v109 = vtrn2q_s32(v103, v104);
    v109.i32[2] = v105.i32[1];
    v110 = vaddq_f32(vzip1q_s32(v107, vdupq_laneq_s32(v104, 2)), vaddq_f32(v108, v109));
    v104.i64[0] = 0x80000000800000;
    v104.i64[1] = 0x80000000800000;
    v111 = vcgeq_f32(v104, v110);
    v110.i32[3] = 0;
    v112 = vrsqrteq_f32(v110);
    v113 = vmulq_f32(v112, vrsqrtsq_f32(v110, vmulq_f32(v112, v112)));
    v114 = v111;
    v114.i32[3] = 0;
    v115 = vbslq_s8(vcltzq_s32(v114), v110, vmulq_f32(v113, vrsqrtsq_f32(v110, vmulq_f32(v113, v113))));
    v116 = vmulq_n_f32(v69, v115.f32[0]);
    v117 = vmulq_lane_f32(v70, *v115.f32, 1);
    v118 = vmulq_laneq_f32(v71, v115, 2);
    v119 = vuzp1q_s32(v118, v118);
    v120 = vuzp1q_s32(v117, v117);
    v121 = v116;
    if (v111.i32[0])
    {
      v122 = vmlaq_f32(vmulq_f32(vextq_s8(v119, v118, 0xCuLL), vnegq_f32(v117)), v118, vextq_s8(v120, v117, 0xCuLL));
      v121 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
    }

    v123 = vuzp1q_s32(v116, v116);
    v124 = v117;
    if (v111.i32[1])
    {
      v125 = vmlaq_f32(vmulq_f32(vextq_s8(v123, v116, 0xCuLL), vnegq_f32(v118)), v116, vextq_s8(v119, v118, 0xCuLL));
      v124 = vextq_s8(vuzp1q_s32(v125, v125), v125, 0xCuLL);
    }

    v99.f32[2] = v106;
    if (v111.i32[2])
    {
      v126 = vmlaq_f32(vmulq_f32(vextq_s8(v120, v117, 0xCuLL), vnegq_f32(v116)), v117, vextq_s8(v123, v116, 0xCuLL));
      v118 = vextq_s8(vuzp1q_s32(v126, v126), v126, 0xCuLL);
    }

    v127 = vmulq_n_f32(v99, v102);
    v128 = (*v121.i32 + *&v124.i32[1]) + v118.f32[2];
    if (v128 > 0.0)
    {
      v129 = sqrtf(v128 + 1.0);
      *v130.f32 = vsub_f32(*&vzip2q_s32(v124, vuzp1q_s32(v124, v118)), *&vtrn2q_s32(v118, vzip2q_s32(v118, v121)));
      v130.f32[2] = *&v121.i32[1] - *v124.i32;
      v130.f32[3] = v129 * v129;
      v131 = 0.5 / v129;
LABEL_33:
      v132 = vmulq_n_f32(v130, v131);
LABEL_42:
      v140 = vmulq_f32(v132, v132);
      *v140.i8 = vadd_f32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
      v141 = vdupq_lane_s32(vadd_f32(*v140.i8, vdup_lane_s32(*v140.i8, 1)), 0);
      v142 = vrsqrteq_f32(v141);
      v143 = vmulq_f32(v142, vrsqrtsq_f32(v141, vmulq_f32(v142, v142)));
      v70 = vbslq_s8(vceqzq_f32(v141), v132, vmulq_f32(v132, vmulq_f32(v143, vrsqrtsq_f32(v141, vmulq_f32(v143, v143)))));
      v144 = vabsq_f32(v127);
      v144.i32[3] = 0;
      v143.i64[0] = 0x8000000080000000;
      v143.i64[1] = 0x8000000080000000;
      v69 = vorrq_s8(vandq_s8(v127, v143), vabsq_f32(vmaxnmq_f32(v144, xmmword_1AFE20A30)));
      v71 = vmulq_f32(v70, v70);
      v145 = vmulq_laneq_f32(v70, v70, 3);
      v146 = vmuls_lane_f32(v70.f32[0], *v70.f32, 1);
      v147 = vmuls_lane_f32(v70.f32[1], v70, 2);
      v148 = vmuls_lane_f32(v70.f32[0], v70, 2);
      v149 = vaddq_f32(v69, v69);
      v150.i32[3] = 0;
      v150.f32[0] = (0.5 - v71.f32[1]) - v71.f32[2];
      v150.f32[1] = v146 + v145.f32[2];
      v150.f32[2] = v148 - v145.f32[1];
      v151.i32[3] = 0;
      v71.f32[0] = 0.5 - v71.f32[0];
      v152.i32[3] = 0;
      v152.f32[0] = v146 - v145.f32[2];
      v152.f32[1] = v71.f32[0] - v71.f32[2];
      v152.f32[2] = v147 + v145.f32[0];
      v69.i64[0] = vmulq_n_f32(v150, v149.f32[0]).u64[0];
      v70.i64[0] = vmulq_lane_f32(v152, *v149.f32, 1).u64[0];
      v151.f32[0] = v148 + v145.f32[1];
      v151.f32[1] = v147 - v145.f32[0];
      v151.f32[2] = v71.f32[0] - v71.f32[1];
      v71.i64[0] = vmulq_laneq_f32(v151, v149, 2).u64[0];
      goto LABEL_43;
    }

    v133 = *v121.i32 < *&v124.i32[1] || *v121.i32 < v118.f32[2];
    if (v133)
    {
      if (*&v124.i32[1] <= v118.f32[2])
      {
        v195 = vzip2q_s32(v121, v124).u64[0];
        v196 = __PAIR64__(v121.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v118.f32[2] + 1.0) - *v121.i32) - *&v124.i32[1])));
        v197 = vdup_lane_s32(*v124.i8, 0);
        v198 = vsub_f32(*v121.i8, v197);
        v197.i32[0] = v196.i32[0];
        v197.i32[0] = vmul_f32(v196, v197).u32[0];
        v197.i32[1] = v198.i32[1];
        *v130.f32 = vadd_f32(v195, *v118.f32);
        *&v130.u32[2] = v197;
        v131 = 0.5 / v196.f32[0];
        goto LABEL_33;
      }

      v135 = sqrtf(((*&v124.i32[1] + 1.0) - *v121.i32) - v118.f32[2]);
      v139.f32[0] = *&v121.i32[1] + *v124.i32;
      v134 = vzip2q_s32(v121, v124).u64[0];
      v139.f32[1] = v135 * v135;
      *&v139.u32[2] = vext_s8(vadd_f32(*v118.f32, v134), vsub_f32(*v118.f32, v134), 4uLL);
    }

    else
    {
      v135 = sqrtf(((*v121.i32 + 1.0) - *&v124.i32[1]) - v118.f32[2]);
      v139.f32[0] = v135 * v135;
      v136 = *&v121.i32[1] + *v124.i32;
      v137 = vzip2q_s32(v121, v124).u64[0];
      LODWORD(v138) = vadd_f32(v137, *v118.f32).u32[0];
      HIDWORD(v138) = vsub_f32(v137, *&v118).i32[1];
      v139.f32[1] = v136;
      v139.i64[1] = v138;
    }

    v132 = vmulq_n_f32(v139, 0.5 / v135);
    goto LABEL_42;
  }

LABEL_43:
  objc_msgSend_setTransform_(self->_freeViewCameraNode, v29, v30, v31, *v69.i64, *v70.i64, *v71.i64, v72);
  objc_msgSend_setName_(self->_freeViewCameraNode, v153, @"kVFXFreeViewCameraName", v154);
  v157 = objc_msgSend_stringByAppendingString_(@"kVFXFreeViewCameraName", v155, @"Camera", v156);
  v161 = objc_msgSend_camera(self->_freeViewCameraNode, v158, v159, v160);
  objc_msgSend_setName_(v161, v162, v157, v163);
  v167 = objc_msgSend_view(self, v164, v165, v166);
  if (objc_msgSend__showsAuthoringEnvironment(v167, v168, v169, v170))
  {
    v174 = objc_msgSend_camera(self->_freeViewCameraNode, v171, v172, v173);
    objc_msgSend_setAutomaticallyAdjustsZRange_(v174, v175, 1, v176);
  }

  v177 = objc_msgSend_view(self, v171, v172, v173);
  v181 = objc_msgSend_world(v177, v178, v179, v180);
  v185 = objc_msgSend_worldRef(v181, v182, v183, v184);
  if (v185)
  {
    v189 = v185;
    v190 = objc_msgSend_nodeRef(self->_freeViewCameraNode, v186, v187, v188);
    if (!sub_1AF1C3F64(v190))
    {
      sub_1AF1CEA20(v189);
      v194 = objc_msgSend_nodeRef(self->_freeViewCameraNode, v191, v192, v193);
      sub_1AF1C3CB4(v194, v189);

      sub_1AF1CEA9C(v189);
    }
  }
}

- (void)_installFreeViewCameraIfNeeded
{
  if (objc_msgSend_enableFreeCamera(self, a2, v2, v3))
  {
    v8 = objc_msgSend_view(self, v5, v6, v7);
    v12 = objc_msgSend_renderer(v8, v9, v10, v11);
    if (objc_msgSend_pointOfView(v12, v13, v14, v15) != self->_freeViewCameraNode)
    {
      objc_msgSend_begin(VFXTransaction, v16, v17, v18);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v19, v20, v21, 0.0);
      objc_msgSend_setPointOfView_(v12, v22, self->_freeViewCameraNode, v23);
      freeViewCameraNode = self->_freeViewCameraNode;
      v28 = objc_msgSend_cameraController(self, v25, v26, v27);
      objc_msgSend_setPointOfView_(v28, v29, freeViewCameraNode, v30);

      objc_msgSend_commit(VFXTransaction, v31, v32, v33);
    }
  }
}

- (void)_switchToFreeViewCamera
{
  if (objc_msgSend_enableFreeCamera(self, a2, v2, v3))
  {
    if ((objc_msgSend__freeCameraActivated(self, v5, v6, v7) & 1) == 0)
    {
      objc_msgSend_begin(VFXTransaction, v8, v9, v10);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v26, v27, v28, 0.0);
      objc_msgSend__prepareFreeViewCamera(self, v29, v30, v31);
      objc_msgSend__installFreeViewCameraIfNeeded(self, v32, v33, v34);

      objc_msgSend_commit(VFXTransaction, v35, v36, v37);
    }
  }

  else
  {
    v11 = objc_msgSend_view(self, v5, v6, v7);
    v15 = objc_msgSend_renderer(v11, v12, v13, v14);
    v19 = objc_msgSend_pointOfView(v15, v16, v17, v18);
    v23 = objc_msgSend_cameraController(self, v20, v21, v22);

    objc_msgSend_setPointOfView_(v23, v24, v19, v25);
  }
}

- (float)_cappedTranslationDelta:(float)a3
{
  objc_msgSend__targetDistance(self, a2, v3, v4);
  if (v10 >= 10000000.0)
  {
    v11 = objc_msgSend_cameraController(self, v7, v8, v9);
    objc_msgSend_simdTarget(v11, v12, v13, v14);
    v46 = v15;
    v19 = objc_msgSend_pointOfView(self, v16, v17, v18);
    v23 = objc_msgSend_presentationNode(v19, v20, v21, v22);
    objc_msgSend_worldPosition(v23, v24, v25, v26);
    v47 = vsubq_f32(v46, v27);
    v31 = objc_msgSend_cameraController(self, v28, v29, v30);
    v35 = objc_msgSend_pointOfView(v31, v32, v33, v34);
    objc_msgSend_worldFront(v35, v36, v37, v38);
    v40 = vmulq_f32(v47, v39);
    v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    if (v41 >= 0.0 && a3 < 0.0)
    {
      v43 = 0.0;
    }

    else
    {
      v43 = a3;
    }

    if (v43 > 0.0 && v41 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return v43;
    }
  }

  return a3;
}

- (float)_translationCoef
{
  objc_msgSend__targetDistance(self, a2, v2, v3);
  v5 = v4;
  if (v5 > 10000000.0)
  {
    v5 = 10000000.0;
  }

  return fmax(v5, 0.1) * 0.00999999978;
}

- (float)_targetDistance
{
  v5 = objc_msgSend_cameraController(self, a2, v2, v3);
  objc_msgSend_simdTarget(v5, v6, v7, v8);
  v21 = v9;
  v13 = objc_msgSend_pointOfView(self, v10, v11, v12);
  objc_msgSend_worldPosition(v13, v14, v15, v16);
  v18 = vsubq_f32(v17, v21);
  v19 = vmulq_f32(v18, v18);
  result = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
  if (result <= 0.1)
  {
    return 0.1;
  }

  return result;
}

- (void)rotateOf:(float)a3
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, 0.0);
  if (self->_autoSwitchToFreeCamera || !objc_msgSend_pointOfView(self, v10, v11, v12))
  {
    objc_msgSend__switchToFreeViewCamera(self, v10, v11, v12);
  }

  v13 = objc_msgSend_view(self, v10, v11, v12);
  objc_msgSend_bounds(v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v21 = v17 * 0.5;
  v22 = v19 * 0.5;
  v26 = objc_msgSend_cameraController(self, v23, v24, v25);
  *&v27 = a3;
  objc_msgSend_rollBy_aroundScreenPoint_viewport_(v26, v28, v29, v30, v27, v21, v22, v18, v20);

  objc_msgSend_commit(VFXTransaction, v31, v32, v33);
}

- (void)zoomBy:(float)a3 animate:(BOOL)a4
{
  v5 = a4;
  if (objc_msgSend_pointOfView(self, a2, a4, v4))
  {
    if (v5)
    {
      objc_msgSend_begin(VFXTransaction, v8, v9, v10);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v11, v12, v13, 0.3);
      v17 = objc_msgSend_cameraController(self, v14, v15, v16);
      *&v18 = a3 * -100.0;
      objc_msgSend_translateInCameraSpaceByX_Y_Z_(v17, v19, v20, v21, 0.0, 0.0, v18);

      objc_msgSend_commit(VFXTransaction, v22, v23, v24);
    }

    else
    {
      v25 = objc_msgSend_cameraController(self, v8, v9, v10);

      *&v29 = a3 * -100.0;
      objc_msgSend_translateInCameraSpaceByX_Y_Z_(v25, v26, v27, v28, 0.0, 0.0, v29);
    }
  }
}

- (float)zoomFactor
{
  v5 = objc_msgSend__pointOfViewUsesOrthographicProjection(self, a2, v2, v3);
  v6 = 76;
  if (v5)
  {
    v6 = 84;
  }

  return *(&self->super.isa + v6);
}

- (id)pointOfView
{
  v4 = objc_msgSend_cameraController(self, a2, v2, v3);

  return objc_msgSend_pointOfView(v4, v5, v6, v7);
}

- (float)_orthographicZoomFactorForProposedZoomFactor:(float)a3
{
  objc_msgSend__orthographicScaleForZoomFactor_(self, a2, v3, v4);
  v8 = v7;
  objc_msgSend__worldBoundingSphere(self, v9, v10, v11);
  v16 = v15;
  if (v15 != 0.0)
  {
    v17 = objc_msgSend_view(self, v12, v13, v14);
    objc_msgSend_bounds(v17, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_view(self, v23, v24, v25);
    objc_msgSend_bounds(v26, v27, v28, v29);
    v31 = v30;
    if (v31 >= v22)
    {
      v32 = v30;
    }

    else
    {
      v32 = v22;
    }

    if (v31 >= v22)
    {
      v31 = v22;
    }

    v33 = v31 / fmaxf(v32, 1.0);
    originalOrthoScale = self->_originalOrthoScale;
    v35 = v16 * 10000000.0;
    if (v35 <= originalOrthoScale)
    {
      v37 = self->_originalOrthoScale;
    }

    else
    {
      v36 = v35;
      v37 = v36;
    }

    v38 = v16 * 0.00001 * v33;
    if (v38 <= originalOrthoScale)
    {
      v39 = v38;
      v40 = v39;
    }

    else
    {
      v40 = self->_originalOrthoScale;
    }

    if (v8 <= v37)
    {
      if (v8 < v40)
      {
        return originalOrthoScale / v40;
      }
    }

    else
    {
      return originalOrthoScale / v37;
    }
  }

  return a3;
}

- (void)setZoomFactor:(float)a3
{
  objc_msgSend_zoomFactor(self, a2, v3, v4);
  if (a3 > 0.0 && v10 != a3)
  {
    v12 = objc_msgSend_pointOfView(self, v7, v8, v9);
    if (objc_msgSend__pointOfViewUsesOrthographicProjection(self, v13, v14, v15))
    {
      *&v19 = a3;
      objc_msgSend__orthographicZoomFactorForProposedZoomFactor_(self, v16, v17, v18, v19);
      self->_orthographicZoomFactor = v20;
      objc_msgSend__orthographicScaleForZoomFactor_(self, v21, v22, v23);

      MEMORY[0x1EEE66B58](self, sel__setPointOfViewOrthographicScale_, v24, v25);
    }

    else
    {
      v26 = tan(self->_cameraOriginalFieldOfView * 0.5 / 180.0 * 3.14159265);
      v30 = atan(v26 / a3);
      *&v30 = v30 / 3.14159265 * 180.0 + v30 / 3.14159265 * 180.0;
      v31 = fmin(*&v30, 120.0);
      if (v31 < 1.0)
      {
        v31 = 1.0;
      }

      v32 = v31;
      v33 = objc_msgSend_camera(v12, v27, v28, v29);
      *&v34 = v32;
      objc_msgSend_setFieldOfView_(v33, v35, v36, v37, v34);
      self->_fieldOfViewZoomFactor = a3;
    }
  }
}

- (void)translateByX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v29 = *&a3;
  if (objc_msgSend_pointOfView(self, a2, v5, v6))
  {
    *&v12 = a5;
    objc_msgSend__cappedTranslationDelta_(self, v9, v10, v11, v12);
    v13 = v29;
    v13.f32[1] = a4;
    v13.i32[2] = v14;
    v30 = v13;
    objc_msgSend__translationCoef(self, v15, v16, v17);
    v31 = vmulq_n_f32(v30, v18);
    v22 = objc_msgSend_cameraController(self, v19, v20, v21);
    LODWORD(v27) = v31.i32[1];

    *&v26 = -v31.f32[2];
    objc_msgSend_translateInCameraSpaceByX_Y_Z_(v22, v23, v24, v25, *v31.i64, v27, v26);
  }
}

- (void)cameraRotationWillStartForController:(id)a3
{
  v5 = objc_msgSend_pointOfView(a3, a2, a3, v3);
  if (objc_msgSend_authoringCameraType(v5, v6, v7, v8))
  {

    objc_msgSend__switchToFreeViewCamera(self, v9, v10, v11);
  }
}

- (void)worldWillChange
{
  *&self->_isWorldBoundingSphereComputed = 0;
  v5 = objc_msgSend_cameraController(self, a2, v2, v3);
  objc_msgSend_setSimdTarget_(v5, v6, v7, v8, 0.0);

  MEMORY[0x1EEE66B58](self, sel__resetFreeViewCamera, v9, v10);
}

- (void)worldDidChange
{
  objc_msgSend_invalidateCameraTarget(self, a2, v2, v3);
  v8 = objc_msgSend_view(self, v5, v6, v7);
  v12 = objc_msgSend_renderer(v8, v9, v10, v11);
  v16 = objc_msgSend_pointOfView(v12, v13, v14, v15);
  if (v16)
  {
    v20 = v16;
    v21 = objc_msgSend_cameraController(self, v17, v18, v19);
    objc_msgSend_setPointOfView_(v21, v22, v20, v23);
    self->_cameraTargetComputed = 0;
    v27 = objc_msgSend_cameraController(self, v24, v25, v26);
    objc_msgSend_setSimdTarget_(v27, v28, v29, v30, 0.0);

    objc_msgSend__computeAutomaticTargetPointIfNeeded(self, v31, v32, v33);
  }
}

- (void)viewWillDrawAtTime:(double)a3
{
  v7 = objc_msgSend_immediateMode(VFXTransaction, a2, v3, v4);
  objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
  os_unfair_lock_lock(&self->_drawAtTimeLock);
  v13 = objc_msgSend_cameraController(self, v10, v11, v12);
  if (objc_msgSend_isInertiaRunning(v13, v14, v15, v16))
  {
    v20 = objc_msgSend_view(self, v17, v18, v19);
    v24 = objc_msgSend_world(v20, v21, v22, v23);
    v28 = objc_msgSend_worldRef(v24, v25, v26, v27);
    if (v28)
    {
      v32 = v28;
      sub_1AF1CEA20(v28);
      v36 = objc_msgSend_cameraController(self, v33, v34, v35);
      objc_msgSend_updateInertiaAtTime_(v36, v37, v38, v39, a3);
      sub_1AF1CEA9C(v32);
    }

    else
    {
      v40 = objc_msgSend_cameraController(self, v29, v30, v31);
      objc_msgSend_updateInertiaAtTime_(v40, v41, v42, v43, a3);
    }
  }

  os_unfair_lock_unlock(&self->_drawAtTimeLock);

  objc_msgSend_setImmediateMode_(VFXTransaction, v44, v7, v45);
}

- (void)_setupUpVector
{
  v5 = objc_msgSend_pointOfView(self, a2, v2, v3);
  objc_msgSend_convertVector_fromNode_(v5, v6, 0, v7);
  if ((fabsf(v11.f32[0]) >= 0.001 || fabsf(v11.f32[1]) >= 0.001)
    && (v11.i32[2] = 0, v12 = vmulq_f32(v11, v11), v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32), v13 = vdupq_lane_s32(*v12.f32, 0), v13.i32[3] = 0, v14 = vrsqrteq_f32(v13), v15 = vmulq_f32(v14, vrsqrtsq_f32(v13, vmulq_f32(v14, v14))), v16 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12.f32[0] != 0.0)), 0x1FuLL)), v16.i32[3] = 0, v17 = vbslq_s8(vcltzq_s32(v16), vmulq_f32(v11, vmulq_f32(v15, vrsqrtsq_f32(v13, vmulq_f32(v15, v15)))), v11), v18 = xmmword_1AFE20160, v19 = vmulq_f32(v17, xmmword_1AFE20160), fabsf(v19.f32[2] + vaddv_f32(*v19.f32)) <= 0.99)
    && ((v19.f32[2] + vaddv_f32(*v19.f32)) >= 0.0
      ? (v50 = vaddq_f32(v17, xmmword_1AFE20160), v51 = vmulq_f32(v50, v50), *&v52 = v51.f32[2] + vaddv_f32(*v51.f32), *v51.f32 = vrsqrte_f32(v52), *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))), v53 = vmulq_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]), v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL), vnegq_f32(v17)), v53, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL)), v49 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), v55 = vmulq_f32(v17, v53), v49.f32[3] = v55.f32[2] + vaddv_f32(*v55.f32))
      : COERCE_FLOAT32_T((v21 = vmulq_f32(v17, v17), v20 = vaddv_f32(*v21.f32), v21.i32[1] = 0, *&v22 = v21.f32[2] + v20, v23 = vrsqrte_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v20)), v24 = vmul_f32(v23, vrsqrts_f32(v22, vmul_f32(v23, v23))), v25 = vrsqrte_f32(1065353216), v26 = vmul_f32(v25, vrsqrts_f32(1065353216, vmul_f32(v25, v25))), v27 = vaddq_f32(vmulq_n_f32(v17, vmul_f32(v24, vrsqrts_f32(v22, vmul_f32(v24, v24))).f32[0]), vmulq_n_f32(xmmword_1AFE20160, vmul_f32(v26, vrsqrts_f32(1065353216, vmul_f32(v26, v26))).f32[0])), v28 = vmulq_f32(v27, v27), v29 = v28.f32[2] + vaddv_f32(*v28.f32), v29 <= 1.4211e-14) ? ((v56 = vabsq_f32(v17), v57 = v56.f32[1], v58 = v56.f32[2], v56.f32[0] <= v56.f32[1]) ? (v59 = v56.f32[0] > v56.f32[2]) : (v59 = 1), v59 ? ((v60 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v57 <= v58) ? (v61 = vmulq_f32(v17, xmmword_1AFE213B0)) : (v61 = vmulq_f32(v17, xmmword_1AFE213A0), v18 = xmmword_1AFE20180), v62 = vmlaq_f32(v61, v18, v60)) : (v62 = vmlaq_f32(vmulq_f32(v17, xmmword_1AFE213C0), xmmword_1AFE20150, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL))), v63 = vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), v64 = vmulq_f32(v62, v62), *&v65 = v64.f32[1] + (v64.f32[2] + v64.f32[0]), *v64.f32 = vrsqrte_f32(v65), *v64.f32 = vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))), v49 = vmulq_n_f32(v63, vmul_f32(*v64.f32, vrsqrts_f32(v65, vmul_f32(*v64.f32, *v64.f32))).f32[0]), v49.i32[3] = 0) : (v30 = LODWORD(v29), v31 = vrsqrte_f32(LODWORD(v29)), v32 = vmul_f32(v31, vrsqrts_f32(v30, vmul_f32(v31, v31))), v33 = vmulq_n_f32(v27, vmul_f32(v32, vrsqrts_f32(v30, vmul_f32(v32, v32))).f32[0]), v34 = vaddq_f32(v17, v33), v35 = vmulq_f32(v34, v34), *&v36 = v35.f32[2] + vaddv_f32(*v35.f32), *v35.f32 = vrsqrte_f32(v36), *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))), v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]), v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(v17)), v37, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL)), v39 = vmulq_f32(v17, v37), v40 = vaddq_f32(v33, xmmword_1AFE20160), v41 = vmulq_f32(v40, v40), v21.f32[0] = v41.f32[2] + vaddv_f32(*v41.f32), *v41.f32 = vrsqrte_f32(*v21.f32), *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(*v21.f32, vmul_f32(*v41.f32, *v41.f32))), v42 = vmulq_n_f32(v40, vmul_f32(*v41.f32, vrsqrts_f32(*v21.f32, vmul_f32(*v41.f32, *v41.f32))).f32[0]), v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v33)), v42, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL)), v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v45 = vmulq_f32(v33, v42), v44.f32[3] = v45.f32[2] + vaddv_f32(*v45.f32), v46 = vnegq_f32(v44), v47 = vtrn2q_s32(v44, vtrn1q_s32(v44, v46)), v48 = vrev64q_s32(v44), v48.i32[0] = v46.i32[1], v48.i32[3] = v46.i32[2], v49 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v39.f32[2] + vaddv_f32(*v39.f32)), v48, *v38.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v44, v46, 8uLL), v38.f32[0]), vextq_s8(v47, v47, 8uLL), v38, 2)))),
        v66 = vmulq_f32(v49, xmmword_1AFE21390),
        v67 = vnegq_f32(v66),
        v68 = vtrn2q_s32(v66, vtrn1q_s32(v66, v67)),
        v69 = vmlaq_f32(vextq_s8(v66, v67, 8uLL), 0, vextq_s8(v68, v68, 8uLL)),
        v70 = vrev64q_s32(v66),
        v70.i32[0] = v67.i32[1],
        v70.i32[3] = v67.i32[2],
        v71 = vmlaq_f32(v69, 0, v70),
        v72 = vnegq_f32(v71),
        v73 = vtrn2q_s32(v71, vtrn1q_s32(v71, v72)),
        v74 = vrev64q_s32(v71),
        v74.i32[0] = v72.i32[1],
        v74.i32[3] = v72.i32[2],
        v75 = objc_msgSend_pointOfView(self, v8, v9, v10, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v71, v49, 3), v74, v49, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v71, v72, 8uLL), *v49.f32, 1), vextq_s8(v73, v73, 8uLL), v49.f32[0]))),
        objc_msgSend_worldRight(v75, v76, v77, v78),
        v80 = vmulq_f32(v79, v83),
        fabsf(v80.f32[2] + vaddv_f32(*v80.f32)) <= 0.70711))
  {
    cameraController = self->_cameraController;

    MEMORY[0x1EEE66B58](cameraController, sel_setSimdUp_, v9, v10);
  }

  else
  {
    v81 = self->_cameraController;

    MEMORY[0x1EEE66B58](v81, sel_setUp_, v9, v10);
  }
}

- (void)_willBeginInteraction
{
  if (!self->_cameraTargetComputed)
  {
    v5 = objc_msgSend_cameraController(self, a2, v2, v3);
    if ((objc_msgSend_automaticTarget(v5, v6, v7, v8) & 1) == 0)
    {
      v9 = objc_msgSend_cameraController(self, a2, v2, v3);
      objc_msgSend_simdTarget(v9, v10, v11, v12);
      v14 = vceqzq_f32(v13);
      v14.i32[3] = v14.i32[2];
      if ((vminvq_u32(v14) & 0x80000000) != 0)
      {
        self->_cameraTargetComputed = 1;
        v15 = objc_msgSend_view(self, a2, v2, v3);
        v19 = objc_msgSend_world(v15, v16, v17, v18);
        objc_msgSend__defaultTargetForWorld_(self, v20, v19, v21);
        v46 = v22;
        v26 = objc_msgSend_cameraController(self, v23, v24, v25);
        objc_msgSend_setSimdTarget_(v26, v27, v28, v29, v46);
      }
    }
  }

  objc_msgSend__stopInertia(self, a2, v2, v3);
  v33 = objc_msgSend_pointOfView(self, v30, v31, v32);
  v37 = objc_msgSend_camera(v33, v34, v35, v36);
  objc_msgSend_fieldOfView(v37, v38, v39, v40);
  self->_cameraOriginalFieldOfView = v41;
  self->_fieldOfViewZoomFactor = 1.0;
  objc_msgSend__pointOfViewOrthographicScale(self, v42, v43, v44);
  self->_originalOrthoScale = v45;
  self->_orthographicZoomFactor = 1.0;
}

- (void)cameraDidChange
{
  v5 = objc_msgSend_view(self, a2, v2, v3);
  v9 = objc_msgSend_renderer(v5, v6, v7, v8);
  v13 = objc_msgSend_pointOfView(v9, v10, v11, v12);
  v17 = objc_msgSend_cameraController(self, v14, v15, v16);
  objc_msgSend_setPointOfView_(v17, v18, v13, v19);

  MEMORY[0x1EEE66B58](self, sel__setupUpVector, v20, v21);
}

- (void)_stopInertia
{
  os_unfair_lock_lock(&self->_drawAtTimeLock);
  v6 = objc_msgSend_cameraController(self, v3, v4, v5);
  objc_msgSend_stopInertia(v6, v7, v8, v9);

  os_unfair_lock_unlock(&self->_drawAtTimeLock);
}

- (id)gestureRecognizers
{
  tapGesture = self->_tapGesture;
  if (tapGesture)
  {
    return objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, self->_pressGesture, v2, self->_panGesture, tapGesture, self->_pinchGesture, self->_rotateGesture, 0);
  }

  v6 = objc_alloc_init(MEMORY[0x1E69DCC48]);
  objc_msgSend_setMinimumPressDuration_(v6, v7, v8, v9, 0.0);
  v10 = objc_alloc_init(MEMORY[0x1E69DD060]);
  v11 = objc_alloc_init(MEMORY[0x1E69DCD80]);
  v12 = objc_alloc_init(MEMORY[0x1E69DCD28]);
  objc_msgSend_setAllowedScrollTypesMask_(v12, v13, 3, v14);
  v15 = objc_alloc_init(MEMORY[0x1E69DCE68]);
  objc_msgSend_setNumberOfTapsRequired_(v10, v16, 2, v17);
  objc_msgSend_addTarget_action_(v11, v18, self, sel__handlePinch_);
  objc_msgSend_addTarget_action_(v12, v19, self, sel__handlePan_);
  objc_msgSend_addTarget_action_(v6, v20, self, sel__handlePress_);
  objc_msgSend_addTarget_action_(v15, v21, self, sel__handleRotation_);
  objc_msgSend_addTarget_action_(v10, v22, self, sel__handleDoubleTap_);
  objc_msgSend_setDelegate_(v6, v23, self, v24);
  objc_msgSend_setDelegate_(v12, v25, self, v26);
  objc_msgSend_setDelegate_(v11, v27, self, v28);
  objc_msgSend_setDelegate_(v15, v29, self, v30);
  objc_msgSend_setDelegate_(v10, v31, self, v32);
  objc_msgSend_setDelaysTouchesBegan_(v11, v33, 0, v34);
  objc_msgSend_setDelaysTouchesBegan_(v15, v35, 0, v36);
  objc_msgSend_setDelaysTouchesBegan_(v12, v37, 0, v38);
  objc_msgSend_setDelaysTouchesBegan_(v10, v39, 0, v40);
  objc_msgSend_setDelaysTouchesBegan_(v6, v41, 0, v42);
  objc_msgSend_setCancelsTouchesInView_(v11, v43, 0, v44);
  objc_msgSend_setCancelsTouchesInView_(v15, v45, 0, v46);
  objc_msgSend_setCancelsTouchesInView_(v12, v47, 0, v48);
  objc_msgSend_setCancelsTouchesInView_(v10, v49, 0, v50);
  objc_msgSend_setCancelsTouchesInView_(v6, v51, 0, v52);
  v56 = objc_msgSend_enabled(self, v53, v54, v55);
  objc_msgSend_setEnabled_(v11, v57, v56, v58);
  v62 = objc_msgSend_enabled(self, v59, v60, v61);
  objc_msgSend_setEnabled_(v15, v63, v62, v64);
  v68 = objc_msgSend_enabled(self, v65, v66, v67);
  objc_msgSend_setEnabled_(v12, v69, v68, v70);
  v74 = objc_msgSend_enabled(self, v71, v72, v73);
  objc_msgSend_setEnabled_(v10, v75, v74, v76);
  v80 = objc_msgSend_enabled(self, v77, v78, v79);
  objc_msgSend_setEnabled_(v6, v81, v80, v82);
  self->_pinchGesture = v11;
  self->_panGesture = v12;
  self->_rotateGesture = v15;
  self->_pressGesture = v6;
  self->_tapGesture = v10;
  return objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v83, v6, v84, v12, v10, v11, v15, 0);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = objc_msgSend_enabled(self, a2, a3, a4);
  if (v7)
  {
    pressGesture = self->_pressGesture;
    v9 = pressGesture == a3 || pressGesture == a4;
    LOBYTE(v7) = v9 || (tapGesture = self->_tapGesture, panGesture = self->_panGesture, tapGesture == a3) && (panGesture == a4 || self->_pinchGesture == a4 || self->_rotateGesture == a4) || tapGesture == a4 && panGesture == a3 || tapGesture == a4 && self->_pinchGesture == a3;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v8 = objc_msgSend_enabled(self, a2, a3, v3);
  if (v8)
  {
    objc_msgSend_beginGesture_(self, v6, a3, v7);
  }

  return v8;
}

- (void)_handlePinch:(id)a3
{
  if (objc_msgSend_enabled(self, a2, a3, v3))
  {

    MEMORY[0x1EEE66B58](self, sel_pinchWithGestureRecognizer_, a3, v6);
  }
}

- (void)_handlePan:(id)a3
{
  if (objc_msgSend_enabled(self, a2, a3, v3))
  {

    MEMORY[0x1EEE66B58](self, sel_panWithGestureRecognizer_, a3, v6);
  }
}

- (void)_handleRotation:(id)a3
{
  if (objc_msgSend_enabled(self, a2, a3, v3))
  {

    MEMORY[0x1EEE66B58](self, sel_rotateWithGestureRecognizer_, a3, v6);
  }
}

- (void)_handleDoubleTap:(id)a3
{
  if (objc_msgSend_enabled(self, a2, a3, v3))
  {
    v8 = objc_msgSend_delegate(self, v5, v6, v7);

    MEMORY[0x1EEE66B58](v8, sel_switchToNextCamera, v9, v10);
  }
}

- (void)beginGesture:(id)a3
{
  if (self->_autoSwitchToFreeCamera || !objc_msgSend_pointOfView(self, a2, a3, v3))
  {
    objc_msgSend__switchToFreeViewCamera(self, a2, a3, v3);
  }

  objc_msgSend__willBeginInteraction(self, a2, a3, v3);
  self->_isDraggingWithOneFinger = 0;
  self->_lastGestureFingerCount = 0;
  if (objc_msgSend_numberOfTouches(a3, v6, v7, v8))
  {
    v12 = objc_msgSend_view(self, v9, v10, v11);
    objc_msgSend_locationInView_(a3, v13, v12, v14);
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = 0.0;
    v18 = 0.0;
  }

  self->_lastInputLocation.x = v16;
  self->_lastInputLocation.y = v18;
  self->_lastRotationAngle = 0.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__startBrowsingIfNeeded_(self, v19, v20, v21, v16, v18);
    v22 = 2;
LABEL_13:
    self->_browseMode = v22;
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__startBrowsingIfNeeded_(self, v23, v24, v25, v16, v18);
    if (self->_translationAllowed)
    {
      self->_browseMode = 3;
      v29 = objc_msgSend_view(self, v26, v27, v28);
      objc_msgSend_bounds(v29, v30, v31, v32);
      objc_msgSend__computeTranslationOrigin3DFromPoint_(self, v34, v35, v36, v16, v33 - v18);
    }

    v22 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_zoomFactor(self, v37, v38, v39);
    self->_initialZoom = v40;
  }
}

- (void)rotateWithGestureRecognizer:(id)a3
{
  objc_msgSend_rotation(a3, a2, a3, v3);
  v7 = v6;
  objc_msgSend__stopInertia(self, v8, v9, v10);
  if (objc_msgSend_state(a3, v11, v12, v13) == 1)
  {
    objc_msgSend___willChangePointOfView(self, v14, v15, v16);
  }

  objc_msgSend_begin(VFXTransaction, v14, v15, v16);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v17, v18, v19, 0.0);
  v20 = (v7 - self->_lastRotationAngle) / 3.14159265 * -180.0;
  *&v20 = v20;
  objc_msgSend_rotateOf_(self, v21, v22, v23, v20);
  objc_msgSend_commit(VFXTransaction, v24, v25, v26);
  v27 = v7;
  self->_lastRotationAngle = v27;
  if (objc_msgSend_state(a3, v28, v29, v30) == 4 || objc_msgSend_state(a3, v31, v32, v33) == 3)
  {

    objc_msgSend___didChangePointOfView(self, v31, v32, v33);
  }
}

- (void)pinchWithGestureRecognizer:(id)a3
{
  objc_msgSend__stopInertia(self, a2, a3, v3);
  if (objc_msgSend_state(a3, v6, v7, v8) == 1)
  {
    objc_msgSend___willChangePointOfView(self, v9, v10, v11);
  }

  objc_msgSend_begin(VFXTransaction, v9, v10, v11);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v12, v13, v14, 0.0);
  v15 = fmax(self->_initialZoom, 0.001);
  objc_msgSend_scale(a3, v16, v17, v18);
  v20 = v19 * v15;
  *&v20 = v20;
  objc_msgSend_setZoomFactor_(self, v21, v22, v23, v20);
  objc_msgSend_commit(VFXTransaction, v24, v25, v26);
  if (objc_msgSend_state(a3, v27, v28, v29) == 4 || objc_msgSend_state(a3, v30, v31, v32) == 3)
  {

    objc_msgSend___didChangePointOfView(self, v30, v31, v32);
  }
}

- (void)panWithGestureRecognizer:(id)a3
{
  v6 = objc_msgSend_numberOfTouches(a3, a2, a3, v3);
  if (self->_browseMode != 2)
  {
    v10 = v6;
    v11 = objc_msgSend_view(self, v7, v8, v9);
    objc_msgSend_locationInView_(a3, v12, v11, v13);
    v15 = v14;
    v17 = v16;
    objc_msgSend__stopInertia(self, v18, v19, v20);
    if (objc_msgSend_state(a3, v21, v22, v23) == 1)
    {
      objc_msgSend___willChangePointOfView(self, v24, v25, v26);
    }

    objc_msgSend_begin(VFXTransaction, v24, v25, v26);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v27, v28, v29, 0.0);
    if (objc_msgSend_state(a3, v30, v31, v32) == 3)
    {
      if (self->_isDraggingWithOneFinger)
      {
        v36 = objc_msgSend_view(self, v33, v34, v35);
        objc_msgSend_velocityInView_(a3, v37, v36, v38);
        v42 = objc_msgSend_view(self, v39, v40, v41);
        if (objc_msgSend_preferredFramesPerSecond(v42, v43, v44, v45))
        {
          v49 = objc_msgSend_view(self, v46, v47, v48);
          objc_msgSend_preferredFramesPerSecond(v49, v50, v51, v52);
        }

        v53 = objc_msgSend_cameraController(self, v46, v47, v48);
        v57 = objc_msgSend_view(self, v54, v55, v56);
        objc_msgSend_bounds(v57, v58, v59, v60);
        objc_msgSend_endInteraction_withViewport_velocity_(v53, v61, v62, v63, v15, v17);
        v67 = objc_msgSend_cameraController(self, v64, v65, v66);
        if ((objc_msgSend_isInertiaRunning(v67, v68, v69, v70) & 1) == 0)
        {
          objc_msgSend___didChangePointOfView(self, v33, v34, v35);
        }
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          if (self->_lastGestureFingerCount != 3)
          {
            objc_msgSend_beginGesture_(self, v33, a3, v35);
            self->_lastGestureFingerCount = 3;
          }

          objc_msgSend__translationCoef(self, v33, v34, v35);
          v100 = v99;
          v101 = v17 - self->_lastInputLocation.y;
          *&v101 = v101;
          objc_msgSend__cappedTranslationDelta_(self, v102, v103, v104, v101);
          v106 = v105;
          v110 = objc_msgSend_cameraController(self, v107, v108, v109);
          *&v111 = -(v100 * v106);
          objc_msgSend_translateInCameraSpaceByX_Y_Z_(v110, v112, v113, v114, 0.0, 0.0, v111);
          break;
        case 2:
          if (self->_lastGestureFingerCount != 2)
          {
            objc_msgSend_beginGesture_(self, v33, a3, v35);
            self->_lastGestureFingerCount = 2;
          }

          v91 = objc_msgSend_view(self, v33, v34, v35);
          objc_msgSend_bounds(v91, v92, v93, v94);
          v17 = v95 - v17;
          objc_msgSend__translateToViewPoint_(self, v96, v97, v98, v15, v17);
          break;
        case 1:
          if (self->_lastGestureFingerCount == 1)
          {
            self->_isDraggingWithOneFinger = 1;
            v71 = objc_msgSend_cameraController(self, v33, v34, v35);
            v75 = objc_msgSend_view(self, v72, v73, v74);
            objc_msgSend_bounds(v75, v76, v77, v78);
            v80 = v79;
            v82 = v81;
            objc_msgSend__modeSensitivity(self, v83, v84, v85);
            LODWORD(v87) = v86;
            objc_msgSend_continueInteraction_withViewport_sensitivity_(v71, v88, v89, v90, v15, v17, v80, v82, v87);
          }

          else
          {
            objc_msgSend_beginGesture_(self, v33, a3, v35);
            v118 = objc_msgSend_cameraController(self, v115, v116, v117);
            v122 = objc_msgSend_view(self, v119, v120, v121);
            objc_msgSend_bounds(v122, v123, v124, v125);
            objc_msgSend_beginInteraction_withViewport_(v118, v126, v127, v128, v15, v17);
            self->_lastGestureFingerCount = 1;
          }

          break;
      }
    }

    objc_msgSend_commit(VFXTransaction, v33, v34, v35);
    self->_lastInputLocation.x = v15;
    self->_lastInputLocation.y = v17;
  }
}

- (float)_modeSensitivity
{
  v5 = objc_msgSend_cameraController(self, a2, v2, v3);
  v9 = objc_msgSend_interactionMode(v5, v6, v7, v8);
  if (v9 >= 5)
  {
    if (v9 == 6)
    {

      MEMORY[0x1EEE66B58](self, sel_truckSensitivity, v10, v11);
    }

    else if (v9 == 5)
    {

      MEMORY[0x1EEE66B58](self, sel_panSensitivity, v10, v11);
    }

    else
    {
      return 1.0;
    }
  }

  else
  {

    MEMORY[0x1EEE66B58](self, sel_rotationSensitivity, v10, v11);
  }

  return result;
}

- (uint64_t)worldFront
{
  v4 = objc_msgSend_cameraController(a1, a2, a3, a4);
  v8 = objc_msgSend_pointOfView(v4, v5, v6, v7);

  return objc_msgSend_worldFront(v8, v9, v10, v11);
}

- (void)_startBrowsingIfNeeded:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, 0.0);
  v17 = objc_msgSend_pointOfView(self, v11, v12, v13);
  if (self->_autoSwitchToFreeCamera || !objc_msgSend_pointOfView(self, v14, v15, v16))
  {
    objc_msgSend__prepareFreeViewCamera(self, v14, v15, v16);
  }

  if (!objc_msgSend_parentNode(v17, v14, v15, v16) && v17 != self->_freeViewCameraNode)
  {
    objc_msgSend__installFreeViewCameraIfNeeded(self, v18, v19, v20);
  }

  objc_msgSend_commit(VFXTransaction, v18, v19, v20);
  self->_initialInputLocation.x = x;
  self->_initialInputLocation.y = y;
  v24 = objc_msgSend_pointOfView(self, v21, v22, v23);
  objc_msgSend_convertPosition_toNode_(v24, v25, 0, v26, 0.0);
  *self->_initialPointOfViewWorldPosition = v27;
  objc_msgSend__pointOfViewOrthographicScale(self, v28, v29, v30);
  self->_originalOrthoScale = v31;
  self->_orthographicZoomFactor = 1.0;
}

- (double)_defaultTargetForWorld:(void *)a3
{
  v6 = objc_msgSend_pointOfView(a1, a2, a3, a4);
  objc_msgSend_worldFront(a1, v7, v8, v9);
  v65 = v10;
  v14 = objc_msgSend_presentationObject(v6, v11, v12, v13);
  objc_msgSend_convertPosition_toNode_(v14, v15, 0, v16, 0.0);
  v66 = v17;
  objc_msgSend__worldBoundingSphere(a1, v18, v19, v20);
  v62 = *v21.i64;
  v63 = vsubq_f32(v21, v66);
  v25 = objc_msgSend_camera(v6, v22, v23, v24);
  objc_msgSend_fieldOfView(v25, v26, v27, v28);
  v30 = v29 * 3.14159265 / 180.0;
  v34 = cosf(v30);
  v35 = vmulq_f32(v63, v63);
  *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
  *v35.f32 = vrsqrte_f32(v36);
  *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
  v37 = vmulq_f32(v65, vmulq_n_f32(v63, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]));
  if ((v37.f32[2] + vaddv_f32(*v37.f32)) > v34)
  {
    return v62;
  }

  v39 = objc_msgSend_camera(v6, v31, v32, v33);
  objc_msgSend_zFar(v39, v40, v41, v42);
  *&v64 = vmlaq_n_f32(v66, v65, v43).u64[0];
  v47 = objc_msgSend_rootNode(a3, v44, v45, v46);
  v50 = objc_msgSend_hitTestWithSegmentFromPoint_toPoint_options_(v47, v48, 0, v49, *v66.i64, v64);
  if (objc_msgSend_count(v50, v51, v52, v53))
  {
    Object = objc_msgSend_firstObject(v50, v54, v55, v56);

    objc_msgSend_worldCoordinates(Object, v58, v59, v60);
  }

  else
  {
    objc_msgSend__targetDistance(a1, v54, v55, v56);
    *&result = vmlaq_n_f32(v66, v65, v61).u64[0];
  }

  return result;
}

- (uint64_t)cameraAutomaticTargetPoint
{
  objc_msgSend__computeAutomaticTargetPointIfNeeded(a1, a2, a3, a4);
  v8 = objc_msgSend_cameraController(a1, v5, v6, v7);

  return objc_msgSend_target(v8, v9, v10, v11);
}

- (void)_computeAutomaticTargetPointIfNeeded
{
  if (self->_target.hasAutomatic && !self->_target.automaticLocationUpToDate)
  {
    v5 = objc_msgSend_cameraController(self, a2, v2, v3);
    if ((objc_msgSend_automaticTarget(v5, v6, v7, v8) & 1) == 0)
    {
      self->_target.automaticLocationUpToDate = 1;
      v12 = objc_msgSend_pointOfView(self, v9, v10, v11);
      objc_msgSend_worldFront(self, v13, v14, v15);
      v44 = v16;
      objc_msgSend__targetDistance(self, v17, v18, v19);
      v45 = v20;
      v24 = objc_msgSend_presentationNode(v12, v21, v22, v23);
      objc_msgSend_worldPosition(v24, v25, v26, v27);
      v32 = v31;
      if (self->_didEverFocusNode)
      {
        v34 = v44;
        v33 = v45;
      }

      else
      {
        v46 = v31;
        objc_msgSend__worldBoundingSphere(self, v28, v29, v30);
        v32 = v46;
        v36 = vsubq_f32(v35, v46);
        v37 = vmulq_f32(v44, v36);
        v38 = (v37.f32[2] + vaddv_f32(*v37.f32)) <= 0.5;
        v34 = v44;
        v33 = v45;
        if (!v38)
        {
          v39 = vmulq_f32(v36, v36);
          v33 = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
        }
      }

      *&v47 = vmlaq_n_f32(v32, v34, v33).u64[0];
      v40 = objc_msgSend_cameraController(self, v28, v29, v30);

      objc_msgSend_setSimdTarget_(v40, v41, v42, v43, v47);
    }
  }
}

- (__n128)_worldBoundingSphere
{
  v32[1] = *MEMORY[0x1E69E9840];
  if ((a1[5].i8[11] & 1) == 0)
  {
    v5 = objc_msgSend_view(a1, a2, a3, a4);
    v9 = objc_msgSend_world(v5, v6, v7, v8);
    if (objc_msgSend_rootNode(v9, v10, v11, v12))
    {
      v16 = objc_msgSend_view(a1, v13, v14, v15);
      v20 = objc_msgSend_world(v16, v17, v18, v19);
      v32[0] = objc_msgSend_rootNode(v20, v21, v22, v23);
      v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v32, 1);
      VFXNodeGetBoundingSphere(v25, 0, v26, v27);
      v28.i32[0] = *"(knN";
      v30 = v29;
      v30.i32[3] = 1120403456;
      a1[7] = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(vdupq_laneq_s32(v29, 3), v28)), 0), v29, v30);
      a1[5].i8[11] = 1;
    }
  }

  return a1[7];
}

- (BOOL)_computeBoundingSphereOmittingFloorsForNode:(__CFXNode *)a3 sphere:(CFXSphere *)a4
{
  *a4 = xmmword_1AFE21260;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF36D7D8;
  v6[3] = &unk_1E7A7D938;
  v6[4] = a4;
  sub_1AF1B94AC(a3, v6);
  return *(a4 + 3) >= 0.0;
}

- (void)_computeStickyAxisIfNeeded:(CGPoint)a3
{
  if (self->_stickyAxis.stickyMoveEnabled && !*&self->_anon_101[15])
  {
    y = a3.y;
    v4 = vcvt_f32_f64(vaddq_f64(a3, vcvtq_f64_f32(*&self->_anon_101[7])));
    *&self->_anon_101[7] = v4;
    if (vaddv_f32(vmul_f32(v4, v4)) > 1.0)
    {
      v5 = vdup_n_s32(self->_browseMode == 3);
      v6 = vcvtq_f64_f32(v4);
      v7.i64[0] = v5.u32[0];
      v7.i64[1] = v5.u32[1];
      v8 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), v6, vextq_s8(v6, v6, 8uLL));
      v9 = vabsq_f64(v8);
      if ((vmovn_s64(vcgeq_f64(v9, vdupq_laneq_s64(v9, 1))).u8[0] & 1) != 0 && v8.f64[0] != 0.0)
      {
        v10 = 1;
LABEL_10:
        *&self->_anon_101[15] = v10;
        return;
      }

      if (v8.f64[1] != 0.0)
      {
        v10 = 2;
        goto LABEL_10;
      }
    }
  }
}

- (float)_pointOfViewOrthographicScale
{
  v5 = objc_msgSend_cameraController(self, a2, v2, v3);
  v9 = objc_msgSend_pointOfView(v5, v6, v7, v8);
  v13 = objc_msgSend_camera(v9, v10, v11, v12);
  v17 = objc_msgSend_cameraController(self, v14, v15, v16);
  v21 = objc_msgSend_pointOfView(v17, v18, v19, v20);
  v25 = objc_msgSend_light(v21, v22, v23, v24);
  if (!v13)
  {
    v13 = v25;
    if (!v25)
    {
      return 1.0;
    }
  }

  objc_msgSend_orthographicScale(v13, v26, v27, v28);
  return result;
}

- (void)_setPointOfViewOrthographicScale:(float)a3
{
  v7 = objc_msgSend_cameraController(self, a2, v3, v4);
  v11 = objc_msgSend_pointOfView(v7, v8, v9, v10);
  v15 = objc_msgSend_camera(v11, v12, v13, v14);
  v19 = objc_msgSend_cameraController(self, v16, v17, v18);
  v23 = objc_msgSend_pointOfView(v19, v20, v21, v22);
  v27 = objc_msgSend_light(v23, v24, v25, v26);
  if (v15 || (v15 = v27) != 0)
  {
    *&v31 = a3;

    objc_msgSend_setOrthographicScale_(v15, v28, v29, v30, v31);
  }
}

- (BOOL)_pointOfViewUsesOrthographicProjection
{
  v5 = objc_msgSend_cameraController(self, a2, v2, v3);
  v9 = objc_msgSend_pointOfView(v5, v6, v7, v8);
  v13 = objc_msgSend_camera(v9, v10, v11, v12);
  v17 = objc_msgSend_cameraController(self, v14, v15, v16);
  v21 = objc_msgSend_pointOfView(v17, v18, v19, v20);
  v25 = objc_msgSend_light(v21, v22, v23, v24);
  if (v13)
  {

    LOBYTE(v25) = objc_msgSend_usesOrthographicProjection(v13, v26, v27, v28);
  }

  else if (v25)
  {
    LOBYTE(v25) = objc_msgSend_type(v25, v26, v27, v28) == 2;
  }

  return v25;
}

- (void)_computeTranslationOrigin3DFromPoint:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  v6 = objc_msgSend_view(self, a2, v3, v4);
  objc_msgSend_bounds(v6, v7, v8, v9);
  v10.f64[0] = x;
  v10.f64[1] = y;
  v11 = vcvt_f32_f64(v10);
  v13.f64[1] = v12;
  v61 = vcvt_hight_f32_f64(0, v13);
  v17 = objc_msgSend_pointOfView(self, v14, v15, v16);
  objc_msgSend__worldBoundingSphere(self, v18, v19, v20);
  *self->_translationOrigin = v21;
  v25 = objc_msgSend_view(self, v22, v23, v24);
  v29 = objc_msgSend_world(v25, v26, v27, v28);
  v33 = objc_msgSend_worldRef(v29, v30, v31, v32);
  v37 = v33;
  if (v33)
  {
    sub_1AF1CEA20(v33);
  }

  v38 = objc_msgSend_nodeRef(v17, v34, v35, v36);
  v39.n128_u64[0] = v11;
  v43 = sub_1AF281C18(v38, v37, &v63, &v64, v61, v39);
  if (v44)
  {
    objc_msgSend_worldFront(self, v40, v41, v42, v43);
    v45 = vmulq_f32(*self->_translationOrigin, v46);
    v46.f32[3] = -(v45.f32[2] + vaddv_f32(*v45.f32));
    v47 = vsubq_f32(v64, v63);
    v48 = vmulq_f32(v47, v47);
    v48.f32[0] = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32));
    v49 = vdivq_f32(v47, vdupq_lane_s32(*v48.f32, 0));
    v49.i32[3] = 0;
    v50 = vmulq_f32(v46, v49);
    v51 = vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)));
    if (v51 != 0.0 && ((v52 = v63, v52.i32[3] = 1.0, v53 = vmulq_f32(v52, v46), v54 = -vaddv_f32(vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL))) / v51, v54 >= 0.0) ? (v55 = v54 <= v48.f32[0]) : (v55 = 0), v55))
    {
      v57 = vmlaq_n_f32(v52, v49, v54);
    }

    else
    {
      v56.i64[0] = 0x3F0000003F000000;
      v56.i64[1] = 0x3F0000003F000000;
      v57 = vmulq_f32(vaddq_f32(v63, v64), v56);
    }

    *self->_translationOrigin = v57;
  }

  else
  {
    v58 = sub_1AF0D5194();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AF0CE000, v58, OS_LOG_TYPE_DEFAULT, "Warning: _computeTranslationOrigin3DFromPoint: invalid zRange", buf, 2u);
    }
  }

  if (v37)
  {
    sub_1AF1CEA9C(v37);
  }
}

- (void)_translateToViewPoint:(CGPoint)a3
{
  x = a3.x;
  y = a3.y;
  v6 = objc_msgSend_view(self, a2, v3, v4);
  objc_msgSend_bounds(v6, v7, v8, v9);
  v11.f64[1] = v10;
  v79 = vcvt_hight_f32_f64(0, v11);
  v12.f64[0] = x;
  v12.f64[1] = y;
  v13 = vcvt_f32_f64(v12);
  v17 = objc_msgSend_pointOfView(self, v14, v15, v16);
  v21 = objc_msgSend_view(self, v18, v19, v20);
  v25 = objc_msgSend_world(v21, v22, v23, v24);
  v29 = objc_msgSend_worldRef(v25, v26, v27, v28);
  v33 = v29;
  if (v29)
  {
    sub_1AF1CEA20(v29);
  }

  v34 = objc_msgSend_nodeRef(v17, v30, v31, v32);
  v35.n128_u64[0] = v13;
  sub_1AF281C18(v34, v33, &v84, &v85, v79, v35);
  v40 = v39;
  if (v33)
  {
    sub_1AF1CEA9C(v33);
  }

  if (v40)
  {
    v78 = v84;
    v41 = vsubq_f32(v85, v84);
    v42 = vmulq_f32(v41, v41);
    v42.f32[0] = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
    v76 = v42.f32[0];
    v43 = vdivq_f32(v41, vdupq_lane_s32(*v42.f32, 0));
    v43.i32[3] = 0;
    v80 = v43;
    objc_msgSend_worldFront(self, v36, v37, v38);
    v47 = *self->_translationOrigin;
    v48 = vmulq_f32(v47, v49);
    v49.f32[3] = -(v48.f32[2] + vaddv_f32(*v48.f32));
    v50 = vmulq_f32(v49, v80);
    v51 = vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)));
    if (v51 != 0.0 && ((v52 = v78, v52.i32[3] = 1.0, v53 = vmulq_f32(v52, v49), v54 = -vaddv_f32(vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL))) / v51, v54 >= 0.0) ? (v55 = v54 <= v76) : (v55 = 0), v55))
    {
      v81 = vsubq_f32(v47, vmlaq_n_f32(v52, v80, v54));
      objc_msgSend_worldTransform(v17, v44, v45, v46);
      v87 = __invert_f4(v86);
      v82 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v87.columns[2], v81, 2), v87.columns[1], *v81.f32, 1), v87.columns[0], v81.f32[0]);
      objc_msgSend_begin(VFXTransaction, v57, v58, v59);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v60, v61, v62, 0.0);
      v66 = objc_msgSend_cameraController(self, v63, v64, v65);
      LODWORD(v68) = v82.i32[2];
      LODWORD(v67) = v82.i32[1];
      objc_msgSend_translateInCameraSpaceByX_Y_Z_(v66, v69, v70, v71, *v82.i64, v67, v68);
      objc_msgSend_commit(VFXTransaction, v72, v73, v74);
    }

    else
    {
      v56 = sub_1AF0D5194();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AF0CE000, v56, OS_LOG_TYPE_DEFAULT, "Warning: Warning: no CFXIntersectionRay3Plane", buf, 2u);
      }
    }
  }
}

- (void)__willChangePointOfView
{
  if (!self->_recordingPointOfViewEvents)
  {
    self->_recordingPointOfViewEvents = 1;
    objc_msgSend_delegate(self, a2, v2, v3);
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_delegate(self, v5, v6, v7);

      MEMORY[0x1EEE66B58](v8, sel_willChangePointOfView, v9, v10);
    }
  }
}

- (void)__didChangePointOfView
{
  if (self->_recordingPointOfViewEvents)
  {
    objc_msgSend_delegate(self, a2, v2, v3);
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_delegate(self, v5, v6, v7);
      objc_msgSend_didChangePointOfView(v8, v9, v10, v11);
    }

    self->_recordingPointOfViewEvents = 0;
  }
}

- (id).cxx_construct
{
  *(self + 45) = 0;
  *(self + 46) = 0;
  *(self + 44) = self + 360;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  return self;
}

@end