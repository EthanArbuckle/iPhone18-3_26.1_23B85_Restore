@interface VFXCameraController
- (BOOL)_isLocationValid:(CGPoint)a3 inViewport:(CGSize)a4;
- (BOOL)useOrbitInteractionMode;
- (VFXCameraController)init;
- (__n128)_targetRelativeToPointOfViewParent;
- (double)_convertRotationFromWorldToPointOfView:(uint64_t)a3;
- (double)_mapToSphere:(float64_t)a3 inViewport:(double)a4;
- (double)_orientationForMode;
- (double)_orthographicViewSpaceTranslationForZoomAtScreenPoint:(uint64_t)a3 scaleDelta:(uint64_t)a4 viewport:(double)a5;
- (double)lookAtWith:(uint64_t)a3 target:(uint64_t)a4;
- (double)unrolledWorldOrientation:(float *)a3;
- (float)maximumHorizontalAngle;
- (float)minimumHorizontalAngle;
- (void)_capOrientationAnglesToMaximum;
- (void)_directionForScreenPoint:(uint64_t)a3 viewport:(uint64_t)a4;
- (void)_endDraggingWithVelocity:(CGPoint)a3;
- (void)_resetOrientationState;
- (void)_rotateByX:(float)a3 Y:(float)a4;
- (void)_setInertiaRunning:(BOOL)a3;
- (void)_translateInCameraSpaceByX:(float)a3 Y:(float)a4 Z:(float)a5;
- (void)_updateArcballOrientation;
- (void)_updateInertiaAtTime:(double)a3;
- (void)_updateRotation;
- (void)beginInteraction:(CGPoint)a3 withViewport:(CGSize)a4;
- (void)clearRoll;
- (void)continueInteraction:(CGPoint)a3 withViewport:(CGSize)a4 sensitivity:(float)a5;
- (void)dealloc;
- (void)dollyBy:(float)a3 onScreenPoint:(CGPoint)a4 viewport:(CGSize)a5;
- (void)dollyToTarget:(float)a3;
- (void)frameNodes:(id)a3;
- (void)rollAroundTarget:(float)a3;
- (void)rollBy:(float)a3 aroundScreenPoint:(CGPoint)a4 viewport:(CGSize)a5;
- (void)rollCameraSpaceBy:(float)a3 withPoint:(CGPoint)a4 viewport:(CGSize)a5;
- (void)rotateByX:(float)a3 Y:(float)a4;
- (void)setInertiaEnabled:(BOOL)a3;
- (void)setInteractionMode:(int64_t)a3;
- (void)setMaximumHorizontalAngle:(float)a3;
- (void)setMaximumVerticalAngle:(float)a3;
- (void)setMinimumHorizontalAngle:(float)a3;
- (void)setMinimumVerticalAngle:(float)a3;
- (void)setPointOfView:(id)a3 updateUpTransform:(BOOL)a4;
- (void)setSimdUp:(VFXCameraController *)self;
- (void)translateInCameraSpaceByX:(float)a3 Y:(float)a4 Z:(float)a5;
- (void)translateInScreenSpaceTo:(CGPoint)a3 viewport:(CGSize)a4;
@end

@implementation VFXCameraController

- (VFXCameraController)init
{
  v3.receiver = self;
  v3.super_class = VFXCameraController;
  result = [(VFXCameraController *)&v3 init];
  if (result)
  {
    *&result->_inertia.friction = 0x3F8000003D4CCCCDLL;
    result->_inertia.translationSensitivity = 1.0;
    *result->_up = xmmword_1AFE20160;
    BYTE2(result->_delegate) = 0;
    result[1].super.isa = 1;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend__setInertiaRunning_(self, v3, 0, v4);
  v5.receiver = self;
  v5.super_class = VFXCameraController;
  [(VFXCameraController *)&v5 dealloc];
}

- (void)setPointOfView:(id)a3 updateUpTransform:(BOOL)a4
{
  if (self->_interactionMode != a3)
  {
    objc_msgSend__setInertiaRunning_(self, a2, 0, a4);

    self->_interactionMode = a3;
  }
}

- (void)setInteractionMode:(int64_t)a3
{
  if (self[1].super.isa != a3)
  {
    objc_msgSend__setInertiaRunning_(self, a2, 0, v3);
    self[1].super.isa = a3;
  }
}

- (void)setInertiaEnabled:(BOOL)a3
{
  self->_inertia.inertiaEnabled = a3;
  if (objc_msgSend_isInertiaRunning(self, a2, a3, v3) && !a3)
  {

    objc_msgSend__setInertiaRunning_(self, v6, 0, v7);
  }
}

- (void)setSimdUp:(VFXCameraController *)self
{
  v7 = v3;
  objc_msgSend__setInertiaRunning_(self, a2, 0, v2);
  v5 = vmulq_f32(v7, v7);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  *self->_up = vmulq_n_f32(v7, vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).f32[0]);
}

- (float)minimumHorizontalAngle
{
  v2 = *&self->_minimumAngles[7];
  LODWORD(result) = v2;
  return result;
}

- (float)maximumHorizontalAngle
{
  v2 = *&self->_maximumAngles[7];
  LODWORD(result) = v2;
  return result;
}

- (void)setMinimumVerticalAngle:(float)a3
{
  v3 = a3 / 180.0 * 3.14159265;
  if (v3 > 1.57079633)
  {
    v3 = 1.57079633;
  }

  v4 = fmax(v3, -1.57079633);
  *&self->_maximumAngles[3] = v4;
}

- (void)setMinimumHorizontalAngle:(float)a3
{
  v3 = a3 / 180.0 * 3.14159265;
  if (v3 > 3.14159265)
  {
    v3 = 3.14159265;
  }

  v4 = fmax(v3, -3.14159265);
  *&self->_minimumAngles[7] = v4;
}

- (void)setMaximumVerticalAngle:(float)a3
{
  v3 = a3 / 180.0 * 3.14159265;
  if (v3 > 1.57079633)
  {
    v3 = 1.57079633;
  }

  v4 = fmax(v3, -1.57079633);
  *(&self->_automaticTarget + 1) = v4;
}

- (void)setMaximumHorizontalAngle:(float)a3
{
  v3 = a3 / 180.0 * 3.14159265;
  if (v3 > 3.14159265)
  {
    v3 = 3.14159265;
  }

  v4 = fmax(v3, -3.14159265);
  *&self->_maximumAngles[7] = v4;
}

- (void)translateInCameraSpaceByX:(float)a3 Y:(float)a4 Z:(float)a5
{
  objc_msgSend__setInertiaRunning_(self, a2, 0, v5);
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;

  objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v10, v11, v12, v13, v14, v15);
}

- (void)translateInScreenSpaceTo:(CGPoint)a3 viewport:(CGSize)a4
{
  objc_msgSend__setInertiaRunning_(self, a2, 0, v4);
  __asm { FMOV            V1.2D, #-0.5 }

  v14 = objc_msgSend_pointOfView(self, v11, v12, v13);

  MEMORY[0x1EEE66B58](v14, sel_localTranslateBy_, v15, v16);
}

- (void)rotateByX:(float)a3 Y:(float)a4
{
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cameraRotationWillStartForController_(self->_pointOfView, v7, self, v8);
  }

  objc_msgSend__setInertiaRunning_(self, v7, 0, v8);
  if ((self->_delegate & 1) == 0)
  {
    objc_msgSend__resetOrientationState(self, v9, v10, v11);
  }

  v12 = a3 / 180.0 * 3.14159265;
  *&v12 = v12;
  v13 = a4 / 180.0 * 3.14159265;
  *&v13 = v13;
  objc_msgSend__rotateByX_Y_(self, v9, v10, v11, v12, v13);
  if (objc_opt_respondsToSelector())
  {
    pointOfView = self->_pointOfView;

    MEMORY[0x1EEE66B58](pointOfView, sel_cameraRotationDidEndForController_, self, v14);
  }
}

- (void)rollCameraSpaceBy:(float)a3 withPoint:(CGPoint)a4 viewport:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0, v5);
  objc_msgSend__directionForScreenPoint_viewport_(self, v12, v13, v14, x, y, width, height);
  v15 = a3 / 180.0 * 3.14159265;
  __sincosf_stret(v15 * 0.5);
  v19 = objc_msgSend_pointOfView(self, v16, v17, v18);

  MEMORY[0x1EEE66B58](v19, sel_localRotateBy_, v20, v21);
}

- (void)rollAroundTarget:(float)a3
{
  objc_msgSend__setInertiaRunning_(self, a2, 0, v3);
  objc_msgSend_simdTarget(self, v6, v7, v8);
  v12 = objc_msgSend_pointOfView(self, v9, v10, v11);
  objc_msgSend_worldTransform(v12, v13, v14, v15);
  __invert_f4(v24);
  v16 = a3 / 180.0 * 3.14159265;
  __sincosf_stret(v16 * 0.5);
  v20 = objc_msgSend_pointOfView(self, v17, v18, v19);

  MEMORY[0x1EEE66B58](v20, sel_localRotateBy_, v21, v22);
}

- (void)dollyToTarget:(float)a3
{
  objc_msgSend__setInertiaRunning_(self, a2, 0, v3);
  v8 = objc_msgSend_pointOfView(self, v5, v6, v7);
  objc_msgSend_transform(v8, v9, v10, v11);
  __invert_f4(v35);
  v15 = objc_msgSend_pointOfView(self, v12, v13, v14);
  objc_msgSend_worldPosition(v15, v16, v17, v18);
  v22 = objc_msgSend_pointOfView(self, v19, v20, v21);
  objc_msgSend_localFront(VFXNode, v23, v24, v25);
  objc_msgSend_convertVector_toNode_(v22, v26, 0, v27);
  v31 = objc_msgSend_pointOfView(self, v28, v29, v30);

  MEMORY[0x1EEE66B58](v31, sel_localTranslateBy_, v32, v33);
}

- (BOOL)useOrbitInteractionMode
{
  if (objc_msgSend_interactionMode(self, a2, v2, v3) == 4 || objc_msgSend_interactionMode(self, v5, v6, v7) == 3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = objc_msgSend_interactionMode(self, v8, v9, v10);
    if (v11 != 1)
    {
      LOBYTE(v11) = objc_msgSend_interactionMode(self, v12, v13, v14) == 2;
    }
  }

  return v11;
}

- (double)unrolledWorldOrientation:(float *)a3
{
  v6 = objc_msgSend_pointOfView(a1, a2, a3, a4);
  objc_msgSend_worldOrientation(v6, v7, v8, v9);
  v137 = v10;
  v14 = objc_msgSend_pointOfView(a1, v11, v12, v13);
  objc_msgSend_worldFront(v14, v15, v16, v17);
  v139 = v18;
  objc_msgSend_simdUp(a1, v19, v20, v21);
  v26 = vmulq_f32(v139, v25);
  if (fabsf(fabsf(fminf(fmaxf(v26.f32[2] + vaddv_f32(*v26.f32), -1.0), 1.0)) + -1.0) >= 0.01)
  {
    objc_msgSend_simdTarget(a1, v22, v23, v24);
    v140 = v32;
    v36 = objc_msgSend_pointOfView(a1, v33, v34, v35);
    objc_msgSend_worldPosition(v36, v37, v38, v39);
    v127 = vsubq_f32(v140, v40);
    if (objc_msgSend_useOrbitInteractionMode(a1, v41, v42, v43))
    {
      v47 = v127;
      v48 = vcgeq_f32(vdupq_n_s32(0x3C23D70Au), vabdq_f32(0, v127));
      v48.i32[3] = v48.i32[2];
      v49 = v137;
      if ((vminvq_u32(v48) & 0x80000000) != 0)
      {
        v52 = 0;
      }

      else
      {
        v50 = vmulq_f32(v127, v127);
        *&v51 = v50.f32[2] + vaddv_f32(*v50.f32);
        *v50.f32 = vrsqrte_f32(v51);
        *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32)));
        v47 = vmulq_n_f32(v127, vmul_f32(*v50.f32, vrsqrts_f32(v51, vmul_f32(*v50.f32, *v50.f32))).f32[0]);
        v52 = 1;
      }
    }

    else
    {
      v52 = 0;
      v49 = v137;
      v47 = v127;
    }

    v53 = 0;
    v126 = vdupq_lane_s32(*v47.i8, 0);
    v128 = *v47.i8;
    v125 = vdupq_laneq_s32(v47, 2);
    v54 = 0.0;
    do
    {
      v138 = v49;
      v141 = vmulq_f32(v49, xmmword_1AFE21390);
      objc_msgSend_simdUp(a1, v44, v45, v46, *&v125, *&v126);
      v58 = v141;
      v60 = v59;
      v61 = vmulq_f32(v141, xmmword_1AFE21390);
      v62 = vnegq_f32(v61);
      v63 = vtrn2q_s32(v61, vtrn1q_s32(v61, v62));
      v64 = vextq_s8(v63, v63, 8uLL);
      v65 = vextq_s8(v61, v62, 8uLL);
      v66 = vrev64q_s32(v61);
      v66.i32[0] = v62.i32[1];
      v66.i32[3] = v62.i32[2];
      if (v52)
      {
        v67 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v65, v128, 1), v64, v126), v66, v125);
        v68 = vnegq_f32(v67);
        v69 = vtrn2q_s32(v67, vtrn1q_s32(v67, v68));
        v70 = vrev64q_s32(v67);
        v70.i32[0] = v68.i32[1];
        v70.i32[3] = v68.i32[2];
        v71 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v67, v141, 3), v70, vdupq_laneq_s32(v141, 2)), vmlaq_f32(vmulq_lane_f32(vextq_s8(v67, v68, 8uLL), *v141.f32, 1), vextq_s8(v69, v69, 8uLL), vdupq_lane_s32(*v141.f32, 0)));
      }

      else
      {
        v131 = v64;
        v133 = v60;
        v129 = v65;
        v130 = v66;
        objc_msgSend_localFront(VFXNode, v55, v56, v57);
        v65 = v129;
        v66 = v130;
        v64 = v131;
        v60 = v133;
        v58 = v141;
      }

      v136 = v71;
      v72 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v65, *v60.f32, 1), v64, v60.f32[0]), v66, v60, 2);
      v73 = vnegq_f32(v72);
      v74 = vtrn2q_s32(v72, vtrn1q_s32(v72, v73));
      v75 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v72, v73, 8uLL), *v58.f32, 1), vextq_s8(v74, v74, 8uLL), v58.f32[0]);
      v76 = vrev64q_s32(v72);
      v76.i32[0] = v73.i32[1];
      v76.i32[3] = v73.i32[2];
      v132 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v72, v58, 3), v76, v58, 2), v75);
      objc_msgSend_localUp(VFXNode, v55, v56, v57);
      v134 = v77;
      objc_msgSend_localFront(VFXNode, v78, v79, v80);
      v82 = vmulq_f32(v132, v81);
      v83.f32[0] = v82.f32[2] + vaddv_f32(*v82.f32);
      v84 = vmlsq_lane_f32(v132, v81, v83, 0);
      v85 = v81;
      v86 = vmulq_f32(v84, v84);
      v86.f32[0] = v86.f32[2] + vaddv_f32(*v86.f32);
      v87 = vdupq_lane_s32(*v86.f32, 0);
      v87.i32[3] = 0;
      v88 = vrsqrteq_f32(v87);
      v89 = vmulq_f32(v88, vrsqrtsq_f32(v87, vmulq_f32(v88, v88)));
      v90 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v86.f32[0] != 0.0)), 0x1FuLL));
      v90.i32[3] = 0;
      v91 = vbslq_s8(vcltzq_s32(v90), vmulq_f32(vmulq_f32(v89, vrsqrtsq_f32(v87, vmulq_f32(v89, v89))), v84), v84);
      v142 = v85;
      v92 = vmulq_f32(v134, v85);
      v92.f32[0] = v92.f32[2] + vaddv_f32(*v92.f32);
      v93 = vmlsq_lane_f32(v134, v85, *v92.f32, 0);
      v94 = vmulq_f32(v93, v93);
      v95 = v93;
      v94.f32[0] = v94.f32[2] + vaddv_f32(*v94.f32);
      v96 = vdupq_lane_s32(*v94.f32, 0);
      v96.i32[3] = 0;
      v97 = vrsqrteq_f32(v96);
      v98 = vmulq_f32(v97, vrsqrtsq_f32(v96, vmulq_f32(v97, v97)));
      v99 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v94.f32[0] != 0.0)), 0x1FuLL));
      v99.i32[3] = 0;
      v100 = vbslq_s8(vcltzq_s32(v99), vmulq_f32(v95, vmulq_f32(v98, vrsqrtsq_f32(v96, vmulq_f32(v98, v98)))), v95);
      v101 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL), vnegq_f32(v91)), v100, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
      v135 = vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL);
      v102 = vmulq_f32(v100, v91);
      v103 = acosf(fminf(fmaxf(v102.f32[2] + vaddv_f32(*v102.f32), -1.0), 1.0));
      v104 = vmulq_f32(v142, v135);
      if ((v104.f32[2] + vaddv_f32(*v104.f32)) <= 0.0)
      {
        v105 = -v103;
      }

      else
      {
        v105 = v103;
      }

      v106 = vmulq_f32(v136, v136);
      v106.f32[0] = v106.f32[2] + vaddv_f32(*v106.f32);
      v107 = vdupq_lane_s32(*v106.f32, 0);
      v107.i32[3] = 0;
      v108 = vrsqrteq_f32(v107);
      v109 = vmulq_f32(v108, vrsqrtsq_f32(v107, vmulq_f32(v108, v108)));
      v110 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v106.f32[0] != 0.0)), 0x1FuLL));
      v110.i32[3] = 0;
      v143 = vbslq_s8(vcltzq_s32(v110), vmulq_f32(v136, vmulq_f32(v109, vrsqrtsq_f32(v107, vmulq_f32(v109, v109)))), v136);
      v112 = __sincosf_stret(v105 * -0.5);
      _S1 = v112.__cosval;
      _Q0 = vmulq_n_f32(v143, v112.__sinval);
      _Q6 = v138;
      v115 = vmlaq_laneq_f32(vmulq_n_f32(v138, v112.__cosval), _Q0, v138, 3);
      v116 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(v138)), _Q0, vextq_s8(vuzp1q_s32(_Q6, _Q6), v138, 0xCuLL));
      __asm { FMLA            S0, S1, V6.S[3] }

      v49 = vaddq_f32(v115, vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL));
      v49.i32[3] = _Q0.i32[0];
      v54 = v54 + v105;
      if (fabsf(v103) <= 0.001)
      {
        break;
      }
    }

    while (v53++ < 0x63);
    if (a3)
    {
      *a3 = v54;
    }

    v121 = vmulq_f32(v49, v49);
    *v121.i8 = vadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
    v122 = vdupq_lane_s32(vadd_f32(*v121.i8, vdup_lane_s32(*v121.i8, 1)), 0);
    v123 = vrsqrteq_f32(v122);
    v124 = vmulq_f32(v123, vrsqrtsq_f32(v122, vmulq_f32(v123, v123)));
    *&result = vbslq_s8(vceqzq_f32(v122), v49, vmulq_f32(v49, vmulq_f32(v124, vrsqrtsq_f32(v122, vmulq_f32(v124, v124))))).u64[0];
  }

  else
  {
    if (a3)
    {
      *a3 = 0.0;
    }

    v27 = objc_msgSend_pointOfView(a1, v22, v23, v24);

    objc_msgSend_worldOrientation(v27, v28, v29, v30);
  }

  return result;
}

- (void)clearRoll
{
  objc_msgSend__setInertiaRunning_(self, a2, 0, v2);
  objc_msgSend_unrolledWorldOrientation_(self, v4, 0, v5);
  v14 = v6;
  v10 = objc_msgSend_pointOfView(self, v7, v8, v9);

  objc_msgSend_setWorldOrientation_(v10, v11, v12, v13, v14);
}

- (void)frameNodes:(id)a3
{
  v124[1] = *MEMORY[0x1E69E9840];
  objc_msgSend__setInertiaRunning_(self, a2, 0, v3);
  v9 = objc_msgSend_pointOfView(self, v6, v7, v8);
  if (objc_msgSend_camera(v9, v10, v11, v12))
  {
    v16 = objc_msgSend_pointOfView(self, v13, v14, v15);
    v20 = objc_msgSend_world(v16, v17, v18, v19);
    if (v20)
    {
      v23 = v20;
      VFXNodeGetBoundingSphere(a3, 0x1010101, v21, v22);
      v28 = v27.f32[3];
      if (v27.f32[3] != 0.0)
      {
        v123 = v27;
        v29 = objc_msgSend_pointOfView(self, v24, v25, v26);
        v33 = objc_msgSend_camera(v29, v30, v31, v32);
        if (objc_msgSend_usesOrthographicProjection(v33, v34, v35, v36))
        {
          v124[0] = objc_msgSend_rootNode(v23, v37, v38, v39);
          v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v40, v124, 1);
          VFXNodeGetBoundingSphere(v41, 0x10000, v42, v43);
          v45 = vsubq_f32(v123, v44);
          v46 = vmulq_f32(v45, v45);
          v47 = v44.f32[3] + sqrtf(v46.f32[2] + vaddv_f32(*v46.f32));
          v51 = objc_msgSend_pointOfView(self, v48, v49, v50);
          v55 = objc_msgSend_camera(v51, v52, v53, v54);
          objc_msgSend_zNear(v55, v56, v57, v58);
          *&v60 = v59 + v47;
          v120 = v60;
          v64 = objc_msgSend_pointOfView(self, v61, v62, v63);
          v68 = objc_msgSend_camera(v64, v65, v66, v67);
          *&v69 = v28 * 1.33;
          objc_msgSend_setOrthographicScale_(v68, v70, v71, v72, v69);
        }

        else
        {
          v76 = objc_msgSend_pointOfView(self, v37, v38, v39);
          v80 = objc_msgSend_camera(v76, v77, v78, v79);
          objc_msgSend_fieldOfView(v80, v81, v82, v83);
          v85 = (v84 * 0.5) / 180.0 * 3.14159265;
          v86 = v28 / sinf(v85);
          v90 = objc_msgSend_pointOfView(self, v87, v88, v89);
          v94 = objc_msgSend_camera(v90, v91, v92, v93);
          objc_msgSend_zNear(v94, v95, v96, v97);
          *&v99 = v98 + v86;
          v120 = v99;
        }

        v100 = objc_msgSend_pointOfView(self, v73, v74, v75, v120);
        objc_msgSend_worldFront(v100, v101, v102, v103);
        v105 = vmulq_f32(v104, v104);
        *&v106 = v105.f32[2] + vaddv_f32(*v105.f32);
        *v105.f32 = vrsqrte_f32(v106);
        *v105.f32 = vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32)));
        *&v122 = vmlsq_lane_f32(v123, vmulq_n_f32(v104, vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32))).f32[0]), v121, 0).u64[0];
        v110 = objc_msgSend_pointOfView(self, v107, v108, v109);
        objc_msgSend_setPosition_(v110, v111, v112, v113, v122);
        if (objc_msgSend_automaticTarget(self, v114, v115, v116))
        {
          objc_msgSend_setSimdTarget_(self, v117, v118, v119, *v123.i64);
        }
      }
    }
  }
}

- (double)lookAtWith:(uint64_t)a3 target:(uint64_t)a4
{
  objc_msgSend_simdUp(a1, a2, a3, a4);
  v6 = vsubq_f32(a6, a5);
  v7 = vmulq_f32(v6, v6);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  v9 = vrsqrte_f32(v8);
  v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
  v11 = vmulq_n_f32(vnegq_f32(v6), vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v12)), v11, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  v14 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
  v15 = vmulq_f32(v13, v13);
  *&v16 = v15.f32[1] + (v15.f32[2] + v15.f32[0]);
  *v15.f32 = vrsqrte_f32(v16);
  *v15.f32 = vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32)));
  *&result = vmulq_n_f32(v14, vmul_f32(*v15.f32, vrsqrts_f32(v16, vmul_f32(*v15.f32, *v15.f32))).f32[0]).u64[0];
  return result;
}

- (void)beginInteraction:(CGPoint)a3 withViewport:(CGSize)a4
{
  height = a4.height;
  y = a3.y;
  width = a4.width;
  x = a3.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0, v4);
  v6.f64[0] = width;
  v6.f64[1] = height;
  v51 = v6;
  LOBYTE(self->_delegate) = 1;
  if (objc_msgSend_automaticTarget(self, v7, v8, v9))
  {
    v13 = objc_msgSend_pointOfView(self, v10, v11, v12);
    v17 = objc_msgSend_worldRef(v13, v14, v15, v16);
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19.f64[0] = x;
    v50 = vcvt_hight_f32_f64(0, v51);
    v19.f64[1] = y;
    v20 = vcvt_f32_f64(v19);
    sub_1AF1CEA20(v17);
    v24 = objc_msgSend_pointOfView(self, v21, v22, v23);
    v28 = objc_msgSend_nodeRef(v24, v25, v26, v27);
    v30 = sub_1AF286C78(v18, v28, 0, *&v20, v50, v29);
    sub_1AF1CEA9C(v18);
    if (v30)
    {
      v31 = objc_msgSend_hitTestResultsFromHitTestResultRef_(VFXHitTestResult, v10, v30, v12);
      CFRelease(v30);
      if (objc_msgSend_count(v31, v32, v33, v34))
      {
        v35 = objc_msgSend_objectAtIndex_(v31, v10, 0, v12);
        objc_msgSend_worldCoordinates(v35, v36, v37, v38);
        objc_msgSend_setTarget_(self, v39, v40, v41);
      }
    }
  }

  else
  {
    v42.f64[0] = x;
    v42.f64[1] = y;
    v20 = vcvt_f32_f64(v42);
  }

  *self->_anon_70 = v20;
  *&self->_anon_70[16] = v20;
  objc_msgSend__resetOrientationState(self, v10, v11, v12, *&v50);
  if (objc_msgSend_interactionMode(self, v43, v44, v45) == 3 || objc_msgSend_interactionMode(self, v46, v47, v48) == 4)
  {
    *self->_anon_90 = vmla_f32(vneg_f32(*self->_anon_70), 0x3F0000003F000000, vcvt_f32_f64(v51));
    objc_msgSend__mapToSphere_inViewport_(self, v46, v47, v48, x, y, width, height);
    *&self->_anon_90[16] = v49;
  }
}

- (void)continueInteraction:(CGPoint)a3 withViewport:(CGSize)a4 sensitivity:(float)a5
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  *&self->_anon_70[8] = vcvt_f32_f64(a3);
  if (a4.width >= a4.height)
  {
    v11 = a4.width;
  }

  else
  {
    v11 = a4.height;
  }

  v12 = 360.0 / v11 * a5;
  self->_inertia.rotationSensitivity = v12;
  self->_inertia.translationSensitivity = a5;
  if (!objc_msgSend_interactionMode(self, a2, v5, v6, a3, *&a3.y) || objc_msgSend_interactionMode(self, v13, v14, v15) == 1 || objc_msgSend_interactionMode(self, v13, v14, v15) == 2)
  {
    v16 = *&self->_anon_70[8];
    v17 = COERCE_DOUBLE(vmul_n_f32(vsub_f32(*self->_anon_70, *&v16), self->_inertia.rotationSensitivity));
    LODWORD(v16) = HIDWORD(v17);
    objc_msgSend_rotateByX_Y_(self, v13, v14, v15, v17, v16);
    *self->_anon_70 = *&self->_anon_70[8];
  }

  else if (objc_msgSend_interactionMode(self, v13, v14, v15) == 3 || objc_msgSend_interactionMode(self, v18, v19, v20) == 4)
  {
    objc_msgSend__mapToSphere_inViewport_(self, v18, v19, v20, v36, v37, width, height);
    *&self->_anon_90[32] = v21;
    objc_msgSend__updateArcballOrientation(self, v22, v23, v24);
  }

  else if (objc_msgSend_interactionMode(self, v18, v19, v20) == 5)
  {
    v28 = vsub_f32(*&self->_anon_70[8], *&self->_anon_70[16]);
    v29 = COERCE_DOUBLE(vmul_n_f32(v28, self->_inertia.translationSensitivity));
    v28.f32[0] = -*&v29;
    LODWORD(v29) = HIDWORD(v29);
    objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v25, v26, v27, *&v28, v29, 0.0);
  }

  else if (objc_msgSend_interactionMode(self, v25, v26, v27) == 6)
  {
    v34 = COERCE_DOUBLE(vmul_n_f32(vsub_f32(*&self->_anon_70[8], *&self->_anon_70[16]), self->_inertia.translationSensitivity));
    *&v33 = -*(&v34 + 1);
    objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v30, v31, v32, v34, 0.0, v33);
  }

  *&self->_anon_70[16] = *&self->_anon_70[8];
}

- (void)rollBy:(float)a3 aroundScreenPoint:(CGPoint)a4 viewport:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0, v5);
  objc_msgSend__directionForScreenPoint_viewport_(self, v12, v13, v14, x, y, width, height);
  v16 = vmulq_f32(v15, v15);
  v16.f32[0] = v16.f32[2] + vaddv_f32(*v16.f32);
  v17 = vdupq_lane_s32(*v16.f32, 0);
  v18 = a3 / 180.0 * 3.14159265;
  v17.i32[3] = 0;
  v19 = vrsqrteq_f32(v17);
  v20 = vmulq_f32(v19, vrsqrtsq_f32(v17, vmulq_f32(v19, v19)));
  v21 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v16.f32[0] != 0.0)), 0x1FuLL));
  v21.i32[3] = 0;
  v45 = vbslq_s8(vcltzq_s32(v21), vmulq_f32(v15, vmulq_f32(v20, vrsqrtsq_f32(v17, vmulq_f32(v20, v20)))), v15);
  v22 = __sincosf_stret(v18 * 0.5);
  v46 = vmulq_n_f32(v45, v22.__sinval);
  v26 = objc_msgSend_pointOfView(self, v23, v24, v25);
  objc_msgSend_orientation(v26, v27, v28, v29);
  _S5 = v22.__cosval;
  v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vnegq_f32(_Q0)), v46, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  __asm { FMLA            S1, S5, V0.S[3] }

  *&v47 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(_Q0, v22.__cosval), v46, _Q0, 3), vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL)).u64[0];
  v41 = objc_msgSend_pointOfView(self, v38, v39, v40);

  objc_msgSend_setOrientation_(v41, v42, v43, v44, v47);
}

- (void)dollyBy:(float)a3 onScreenPoint:(CGPoint)a4 viewport:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0, v5);
  objc_msgSend__directionForScreenPoint_viewport_(self, v11, v12, v13, x, y, width, height);
  v17 = objc_msgSend_pointOfView(self, v14, v15, v16);

  MEMORY[0x1EEE66B58](v17, sel_localTranslateBy_, v18, v19);
}

- (void)_resetOrientationState
{
  v5 = objc_msgSend_pointOfView(self, a2, v2, v3);
  objc_msgSend_worldTransform(v5, v6, v7, v8);
  *&self->_anon_10[16] = v12;
  *&self->_anon_10[32] = v13;
  *&self->_anon_10[48] = v14;
  *&self->_anon_10[64] = v15;
  v16 = vmulq_f32(v12, v12);
  v17 = vmulq_f32(v13, v13);
  v18 = vmulq_f32(v14, v14);
  v19 = vzip2q_s32(v16, v18);
  v20 = vzip1q_s32(vzip1q_s32(v16, v18), v17);
  v21 = vtrn2q_s32(v16, v17);
  v21.i32[2] = v18.i32[1];
  v22 = vaddq_f32(vzip1q_s32(v19, vdupq_laneq_s32(v17, 2)), vaddq_f32(v20, v21));
  v21.i64[0] = 0x80000000800000;
  v21.i64[1] = 0x80000000800000;
  v23 = vcgeq_f32(v21, v22);
  v22.i32[3] = 0;
  v24 = vrsqrteq_f32(v22);
  v25 = vmulq_f32(v24, vrsqrtsq_f32(v22, vmulq_f32(v24, v24)));
  v26 = v23;
  v26.i32[3] = 0;
  v27 = vbslq_s8(vcltzq_s32(v26), v22, vmulq_f32(v25, vrsqrtsq_f32(v22, vmulq_f32(v25, v25))));
  v28 = vmulq_n_f32(v12, v27.f32[0]);
  v29 = vmulq_lane_f32(v13, *v27.f32, 1);
  v30 = vmulq_laneq_f32(v14, v27, 2);
  v31 = vuzp1q_s32(v30, v30);
  v32 = vuzp1q_s32(v29, v29);
  v33 = v28;
  if (v23.i32[0])
  {
    v34 = vmlaq_f32(vmulq_f32(vextq_s8(v31, v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(v32, v29, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  }

  v35 = vuzp1q_s32(v28, v28);
  v36 = v29;
  if (v23.i32[1])
  {
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(v35, v28, 0xCuLL), vnegq_f32(v30)), v28, vextq_s8(v31, v30, 0xCuLL));
    v36 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
  }

  if (v23.i32[2])
  {
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(v32, v29, 0xCuLL), vnegq_f32(v28)), v29, vextq_s8(v35, v28, 0xCuLL));
    v30 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
  }

  v39 = (*v33.i32 + *&v36.i32[1]) + v30.f32[2];
  if (v39 <= 0.0)
  {
    if (*v33.i32 < *&v36.i32[1] || *v33.i32 < v30.f32[2])
    {
      if (*&v36.i32[1] <= v30.f32[2])
      {
        v105 = vzip2q_s32(v33, v36).u64[0];
        v106 = __PAIR64__(v33.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v30.f32[2] + 1.0) - *v33.i32) - *&v36.i32[1])));
        v107 = vdup_lane_s32(*v36.i8, 0);
        v108 = vsub_f32(*v33.i8, v107);
        v107.i32[0] = v106.i32[0];
        v107.i32[0] = vmul_f32(v106, v107).u32[0];
        v107.i32[1] = v108.i32[1];
        *v41.f32 = vadd_f32(v105, *v30.f32);
        *&v41.u32[2] = v107;
        v42 = 0.5 / v106.f32[0];
        goto LABEL_9;
      }

      v46 = sqrtf(((*&v36.i32[1] + 1.0) - *v33.i32) - v30.f32[2]);
      v50.f32[0] = *&v33.i32[1] + *v36.i32;
      v45 = vzip2q_s32(v33, v36).u64[0];
      v50.f32[1] = v46 * v46;
      *&v50.u32[2] = vext_s8(vadd_f32(*v30.f32, v45), vsub_f32(*v30.f32, v45), 4uLL);
    }

    else
    {
      v46 = sqrtf(((*v33.i32 + 1.0) - *&v36.i32[1]) - v30.f32[2]);
      v50.f32[0] = v46 * v46;
      v47 = *&v33.i32[1] + *v36.i32;
      v48 = vzip2q_s32(v33, v36).u64[0];
      LODWORD(v49) = vadd_f32(v48, *v30.f32).u32[0];
      HIDWORD(v49) = vsub_f32(v48, *&v30).i32[1];
      v50.f32[1] = v47;
      v50.i64[1] = v49;
    }

    v43 = vmulq_n_f32(v50, 0.5 / v46);
    goto LABEL_18;
  }

  v40 = sqrtf(v39 + 1.0);
  *v41.f32 = vsub_f32(*&vzip2q_s32(v36, vuzp1q_s32(v36, v30)), *&vtrn2q_s32(v30, vzip2q_s32(v30, v33)));
  v41.f32[2] = *&v33.i32[1] - *v36.i32;
  v41.f32[3] = v40 * v40;
  v42 = 0.5 / v40;
LABEL_9:
  v43 = vmulq_n_f32(v41, v42);
LABEL_18:
  *&self->_anon_10[80] = v43;
  *self->_anon_10 = 0;
  v51 = vmvn_s8(vceqz_f32(*&self->_minimumAngles[7]));
  if ((vpmax_u32(v51, v51).u32[0] & 0x80000000) != 0 || (v52.i64[0] = 0, v53 = vmvn_s8(vceqz_f32(*&self->_maximumAngles[7])), (vpmax_u32(v53, v53).u32[0] & 0x80000000) != 0))
  {
    v54 = objc_msgSend_interactionMode(self, v9, v10, v11);
    v58 = objc_msgSend_pointOfView(self, v55, v56, v57);
    if (v54)
    {
      objc_msgSend_worldPosition(v58, v59, v60, v61);
      v112 = v62;
      objc_msgSend_simdTarget(self, v63, v64, v65);
      v70 = vsubq_f32(v112, v69);
    }

    else
    {
      objc_msgSend_worldFront(v58, v59, v60, v61);
      v70 = vnegq_f32(v71);
    }

    v113 = v70;
    objc_msgSend_simdUp(self, v66, v67, v68);
    v73 = vmulq_f32(v113, v72);
    v73.f32[0] = v73.f32[2] + vaddv_f32(*v73.f32);
    v109 = vmlsq_lane_f32(v113, v72, *v73.f32, 0);
    v111 = atan2f(v109.f32[0], v109.f32[2]);
    v77 = objc_msgSend_pointOfView(self, v74, v75, v76);
    objc_msgSend_worldRight(v77, v78, v79, v80);
    v82 = vmulq_f32(v81, v109);
    v83.f32[0] = v82.f32[2] + vaddv_f32(*v82.f32);
    v84 = vmlsq_lane_f32(v109, v81, v83, 0);
    v85 = v81;
    v110 = v81;
    v86 = vmulq_f32(v84, v84);
    v86.f32[0] = v86.f32[2] + vaddv_f32(*v86.f32);
    v87 = vdupq_lane_s32(*v86.f32, 0);
    v87.i32[3] = 0;
    v88 = vrsqrteq_f32(v87);
    v89 = vmulq_f32(v88, vrsqrtsq_f32(v87, vmulq_f32(v88, v88)));
    v90 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v86.f32[0] != 0.0)), 0x1FuLL));
    v90.i32[3] = 0;
    v91 = vbslq_s8(vcltzq_s32(v90), vmulq_f32(vmulq_f32(v89, vrsqrtsq_f32(v87, vmulq_f32(v89, v89))), v84), v84);
    v92 = vmulq_f32(v113, v85);
    v92.f32[0] = v92.f32[2] + vaddv_f32(*v92.f32);
    v93 = vmlsq_lane_f32(v113, v85, *v92.f32, 0);
    v94 = vmulq_f32(v93, v93);
    v95 = v93;
    v94.f32[0] = v94.f32[2] + vaddv_f32(*v94.f32);
    v96 = vdupq_lane_s32(*v94.f32, 0);
    v96.i32[3] = 0;
    v97 = vrsqrteq_f32(v96);
    v98 = vmulq_f32(v97, vrsqrtsq_f32(v96, vmulq_f32(v97, v97)));
    v99 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v94.f32[0] != 0.0)), 0x1FuLL));
    v99.i32[3] = 0;
    v100 = vbslq_s8(vcltzq_s32(v99), vmulq_f32(v95, vmulq_f32(v98, vrsqrtsq_f32(v96, vmulq_f32(v98, v98)))), v95);
    v101 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v100, v100), v100, 0xCuLL), vnegq_f32(v91)), v100, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
    v114 = vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL);
    v102 = vmulq_f32(v100, v91);
    v103 = acosf(fminf(fmaxf(v102.f32[2] + vaddv_f32(*v102.f32), -1.0), 1.0));
    v52 = vmulq_f32(v110, v114);
    v104 = vaddv_f32(*v52.f32);
    v52.f32[0] = v111;
    if ((v52.f32[2] + v104) <= 0.0)
    {
      v103 = -v103;
    }

    v52.f32[1] = v103;
  }

  *&self->_anon_10[8] = v52.i64[0];
}

- (void)_directionForScreenPoint:(uint64_t)a3 viewport:(uint64_t)a4
{
  v8 = objc_msgSend_pointOfView(a1, a2, a3, a4);
  result = objc_msgSend_nodeRef(v8, v9, v10, v11);
  if (result)
  {
    v13 = result;
    result = sub_1AF1C3FAC(result);
    if (result)
    {
      v14 = result;
      v15 = sub_1AF1C3FAC(v13);
      sub_1AF1CEA20(v15);
      memset(v27, 0, sizeof(v27));
      if (sub_1AF27F12C(v13, v27))
      {
        if ((v27[0] & 2) != 0)
        {
          sub_1AF27F230(v27, v13, 0, v14);
        }

        v16.f64[0] = a7;
        v16.f64[1] = a8;
        v26 = vcvt_hight_f32_f64(0, v16);
        v28 = *sub_1AF15E62C(v27, &v26);
        __invert_f4(v28);
        __asm { FMOV            V1.4S, #-1.0 }

        v22 = sub_1AF1C3FAC(v13);
        return sub_1AF1CEA9C(v22);
      }

      else
      {
        v23 = sub_1AF1C3FAC(v13);
        return sub_1AF1CEA9C(v23);
      }
    }
  }

  return result;
}

- (void)_updateInertiaAtTime:(double)a3
{
  if (self->_inertia.inertiaRunning)
  {
    v6 = (a3 - self->_inertia.lastSimulationTime) * 60.0;
    v7 = fmaxf(v6, 1.0);
    self->_inertia.lastSimulationTime = a3;
    if (v7 >= 1)
    {
      friction = self->_inertia.friction;
      do
      {
        if (friction != 0.0)
        {
          if (v6 <= 1.0)
          {
            v9 = v6;
          }

          else
          {
            v9 = 1.0;
          }

          *self->_anon_e0 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*self->_anon_e0), 1.0 - (fmaxf(v9, 0.0) * friction)));
        }

        v6 = v6 + -1.0;
        --v7;
      }

      while (v7);
    }

    if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, a2, v3, v4) & 1) == 0)
    {
      objc_msgSend_begin(VFXTransaction, v10, v11, v12);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v13, v14, v15, 0.0);
    }

    v16 = *self->_anon_e0;
    v17 = vmulq_f64(vcvtq_f64_f32(*&v16), vdupq_n_s64(0x3F847AE147AE147BuLL));
    *v17.f32 = vcvt_f32_f64(v17);
    v17.i32[2] = 0;
    v18 = vaddq_f32(*&self->_anon_90[32], vaddq_f32(*&self->_anon_90[16], v17));
    v19 = vmulq_f32(v18, v18);
    *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v19.f32 = vrsqrte_f32(v20);
    *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
    v21 = COERCE_DOUBLE(vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))));
    *&self->_anon_90[32] = vmulq_n_f32(v18, *&v21);
    isa = self[1].super.isa;
    if (isa <= 2)
    {
      if (isa < 3)
      {
        v24 = vmul_n_f32(*&v16, self->_inertia.rotationSensitivity);
        v25 = -v24.f32[0] / 180.0 * 3.14159265;
        *&v25 = v25;
        v26 = v24.f32[1] / 180.0 * 3.14159265;
        *&v26 = v26;
        objc_msgSend__rotateByX_Y_(self, v10, v11, v12, v25, v26);
      }
    }

    else if ((isa - 3) < 2)
    {
      objc_msgSend__updateArcballOrientation(self, v10, v11, v12);
    }

    else if (isa == 5)
    {
      v27 = COERCE_DOUBLE(vmul_n_f32(*&v16, self->_inertia.translationSensitivity));
      *&v16 = -*&v27;
      *&v27 = -*(&v27 + 1);
      objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v10, v11, v12, v16, v27, 0.0);
    }

    else if (isa == 6)
    {
      v23 = COERCE_DOUBLE(vmul_n_f32(*&v16, self->_inertia.translationSensitivity));
      LODWORD(v21) = HIDWORD(v23);
      objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v10, v11, v12, v23, 0.0, v21);
    }

    if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, v10, v11, v12) & 1) == 0)
    {
      objc_msgSend_commit(VFXTransaction, v28, v29, v30);
    }

    if (vaddv_f32(vmul_f32(*self->_anon_e0, *self->_anon_e0)) < 0.1)
    {

      objc_msgSend__setInertiaRunning_(self, v28, 0, v30);
    }
  }
}

- (__n128)_targetRelativeToPointOfViewParent
{
  v5 = objc_msgSend_pointOfView(a1, a2, a3, a4);
  if (objc_msgSend_parentNode(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_pointOfView(a1, v9, v10, v11);
    v16 = objc_msgSend_parentNode(v12, v13, v14, v15);
    v19 = a1[16];

    objc_msgSend_convertPosition_fromNode_(v16, v17, 0, v18, v19.n128_f64[0]);
  }

  else
  {
    return a1[16];
  }

  return result;
}

- (void)_translateInCameraSpaceByX:(float)a3 Y:(float)a4 Z:(float)a5
{
  v7 = objc_msgSend_pointOfView(self, a2, v5, v6);

  MEMORY[0x1EEE66B58](v7, sel_localTranslateBy_, v8, v9);
}

- (void)_rotateByX:(float)a3 Y:(float)a4
{
  v5 = vceqz_f32(*&a3);
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v6 = vadd_f32(*&a3, *self->_anon_10);
    *&v7 = *v6.i32 + -6.28318531;
    v8 = vbsl_s8(vcgtd_f64(*v6.i32, 6.28318531), __PAIR64__(v6.u32[1], v7), v6);
    *&v9 = *v8.i32 + 6.28318531;
    v10 = vbsl_s8(vcgtd_f64(-6.28318531, *v8.i32), __PAIR64__(v8.u32[1], v9), v8);
    *&v11 = *&v10.i32[1] + -6.28318531;
    v12 = vbsl_s8(vcgtd_f64(*&v10.i32[1], 6.28318531), __PAIR64__(v11, v10.u32[0]), v10);
    *&v13 = *&v12.i32[1] + 6.28318531;
    *self->_anon_10 = vbsl_s8(vcgtd_f64(-6.28318531, *&v12.i32[1]), __PAIR64__(v13, v12.u32[0]), v12);
    (MEMORY[0x1EEE66B58])(self, sel__updateRotation);
  }
}

- (double)_orientationForMode
{
  if (objc_msgSend_interactionMode(a1, a2, a3, a4))
  {
    if (objc_msgSend_interactionMode(a1, v5, v6, v7) == 1)
    {
      objc_msgSend_simdUp(a1, v8, v9, v10);
    }

    else
    {
      if (objc_msgSend_interactionMode(a1, v8, v9, v10) != 2)
      {
        v58 = xmmword_1AFE201A0;
        goto LABEL_9;
      }

      v32 = objc_msgSend_pointOfView(a1, v29, v30, v31);
      objc_msgSend_worldUp(v32, v33, v34, v35);
    }

    v36 = vmulq_f32(v11, v11);
    v36.f32[0] = v36.f32[2] + vaddv_f32(*v36.f32);
    v37 = vdupq_lane_s32(*v36.f32, 0);
    v37.i32[3] = 0;
    v38 = vrsqrteq_f32(v37);
    v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
    v40 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v36.f32[0] != 0.0)), 0x1FuLL));
    v40.i32[3] = 0;
    v67 = vbslq_s8(vcltzq_s32(v40), vmulq_f32(v11, vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39)))), v11);
    v41 = __sincosf_stret(a1[4] * 0.5);
    cosval = v41.__cosval;
    v66 = vmulq_n_f32(v67, v41.__sinval);
    v45 = objc_msgSend_pointOfView(a1, v42, v43, v44);
    objc_msgSend_worldRight(v45, v46, v47, v48);
  }

  else
  {
    v12 = objc_msgSend_pointOfView(a1, v5, v6, v7);
    objc_msgSend_simdUp(a1, v13, v14, v15);
    objc_msgSend_convertVector_fromNode_(v12, v16, 0, v17);
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
    v20 = vdupq_lane_s32(*v19.f32, 0);
    v20.i32[3] = 0;
    v21 = vrsqrteq_f32(v20);
    v22 = vmulq_f32(v21, vrsqrtsq_f32(v20, vmulq_f32(v21, v21)));
    v23 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v19.f32[0] != 0.0)), 0x1FuLL));
    v23.i32[3] = 0;
    v65 = vbslq_s8(vcltzq_s32(v23), vmulq_f32(v18, vmulq_f32(v22, vrsqrtsq_f32(v20, vmulq_f32(v22, v22)))), v18);
    v24 = __sincosf_stret(a1[4] * 0.5);
    cosval = v24.__cosval;
    v66 = vmulq_n_f32(v65, v24.__sinval);
    objc_msgSend_localRight(VFXNode, v25, v26, v27);
  }

  v49 = vmulq_f32(v28, v28);
  v49.f32[0] = v49.f32[2] + vaddv_f32(*v49.f32);
  v50 = vdupq_lane_s32(*v49.f32, 0);
  v50.i32[3] = 0;
  v51 = vrsqrteq_f32(v50);
  v52 = vmulq_f32(v51, vrsqrtsq_f32(v50, vmulq_f32(v51, v51)));
  v53 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v49.f32[0] != 0.0)), 0x1FuLL));
  v53.i32[3] = 0;
  v64 = vbslq_s8(vcltzq_s32(v53), vmulq_f32(v28, vmulq_f32(v52, vrsqrtsq_f32(v50, vmulq_f32(v52, v52)))), v28);
  v54 = __sincosf_stret(a1[5] * 0.5);
  v55 = vmulq_n_f32(v64, v54.__sinval);
  v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v66)), v55, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
  v58 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v66, v54.__cosval), v55, cosval), vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL));
  v57 = vmulq_f32(v66, v55);
  v58.f32[3] = -((v57.f32[2] + vaddv_f32(*v57.f32)) - (cosval * v54.__cosval));
LABEL_9:
  v59 = vmulq_f32(v58, v58);
  *v59.i8 = vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
  v60 = vdupq_lane_s32(vadd_f32(*v59.i8, vdup_lane_s32(*v59.i8, 1)), 0);
  v61 = vrsqrteq_f32(v60);
  v62 = vmulq_f32(v61, vrsqrtsq_f32(v60, vmulq_f32(v61, v61)));
  *&result = vbslq_s8(vceqzq_f32(v60), v58, vmulq_f32(v58, vmulq_f32(v62, vrsqrtsq_f32(v60, vmulq_f32(v62, v62))))).u64[0];
  return result;
}

- (void)_capOrientationAnglesToMaximum
{
  isa = self[1].super.isa;
  if (isa > 1)
  {
    return;
  }

  v3 = *self->_anon_10;
  v4 = vadd_f32(*&self->_anon_10[8], v3);
  v5.i32[0] = v4.i32[0];
  v5.i32[1] = vneg_f32(v4).i32[1];
  v6 = vbsl_s8(vceqd_s64(isa, 0), v4, v5);
  v7 = *&self->_maximumAngles[7];
  if (v7.f32[0] != 0.0 || COERCE_FLOAT(*&self->_minimumAngles[7]) != 0.0)
  {
    if ((vcgt_f32(v6, v7).u8[0] & 1) != 0 && v3.f32[0] > 0.0)
    {
      v8 = fmaxf(vadd_f32(v3, vsub_f32(v7, v6)).f32[0], 0.0);
LABEL_11:
      v3.f32[0] = v8;
      *self->_anon_10 = v3;
      goto LABEL_12;
    }

    v9 = *&self->_minimumAngles[7];
    if ((vcgt_f32(v9, v6).u8[0] & 1) != 0 && v3.f32[0] < 0.0)
    {
      v8 = vadd_f32(v3, vsub_f32(v9, v6)).f32[0];
      if (v8 > 0.0)
      {
        v8 = 0.0;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  if (v7.f32[1] != 0.0 || *&self->_maximumAngles[3] != 0.0)
  {
    if (isa)
    {
      if (v6.f32[1] > v7.f32[1])
      {
        v10 = v3.f32[1];
        if (v3.f32[1] < 0.0)
        {
          v11 = v6.f32[1] - v7.f32[1];
          goto LABEL_28;
        }
      }

      v12 = *&self->_maximumAngles[3];
      if (v6.f32[1] < v12)
      {
        v13 = v3.f32[1];
        if (v3.f32[1] > 0.0)
        {
          v14 = v6.f32[1] - v12;
LABEL_24:
          v15 = fmaxf(v14 + v13, 0.0);
LABEL_30:
          v3.f32[1] = v15;
          *self->_anon_10 = v3;
        }
      }
    }

    else
    {
      if (v6.f32[1] > v7.f32[1])
      {
        v13 = v3.f32[1];
        if (v3.f32[1] > 0.0)
        {
          v14 = v7.f32[1] - v6.f32[1];
          goto LABEL_24;
        }
      }

      v16 = *&self->_maximumAngles[3];
      if (v6.f32[1] < v16)
      {
        v10 = v3.f32[1];
        if (v3.f32[1] < 0.0)
        {
          v11 = v16 - v6.f32[1];
LABEL_28:
          v15 = v11 + v10;
          if (v15 > 0.0)
          {
            v15 = 0.0;
          }

          goto LABEL_30;
        }
      }
    }
  }
}

- (void)_updateRotation
{
  if (self[1].super.isa <= 2)
  {
    objc_msgSend__capOrientationAnglesToMaximum(self, a2, v2, v3);
    if (objc_msgSend_useOrbitInteractionMode(self, v5, v6, v7))
    {
      v46 = *&self->_anon_10[64];
      v44 = *&self->_anon_10[32];
      v45 = *&self->_anon_10[48];
      v43 = *&self->_anon_10[16];
      v11 = objc_msgSend_pointOfView(self, v8, v9, v10);
      objc_msgSend_setWorldTransform_(v11, v12, v13, v14, *&v43, *&v44, *&v45, *&v46);
      v18 = objc_msgSend_pointOfView(self, v15, v16, v17);
      objc_msgSend__orientationForMode(self, v19, v20, v21);
      v47 = v22;
      objc_msgSend_simdTarget(self, v23, v24, v25);

      objc_msgSend_rotateBy_aroundTarget_(v18, v26, v27, v28, v47, v29);
    }

    else
    {
      v48 = *&self->_anon_10[80];
      v30 = objc_msgSend_pointOfView(self, v8, v9, v10);
      objc_msgSend_setWorldOrientation_(v30, v31, v32, v33, *&v48);
      v37 = objc_msgSend_pointOfView(self, v34, v35, v36);
      objc_msgSend__orientationForMode(self, v38, v39, v40);

      MEMORY[0x1EEE66B58](v37, sel_localRotateBy_, v41, v42);
    }
  }
}

- (double)_convertRotationFromWorldToPointOfView:(uint64_t)a3
{
  v6 = objc_msgSend_pointOfView(a1, a2, a3, a4);
  objc_msgSend_worldOrientation(v6, v7, v8, v9);
  v34 = v10;
  v14 = objc_msgSend_pointOfView(a1, v11, v12, v13);
  objc_msgSend_worldOrientation(v14, v15, v16, v17);
  v19 = vmulq_f32(v18, xmmword_1AFE21390);
  _S1 = v19.i32[3];
  _Q7 = a5;
  _Q6 = v34;
  v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(a5)), v19, vextq_s8(vuzp1q_s32(_Q7, _Q7), a5, 0xCuLL));
  v24 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, v19, 3), v19, a5, 3), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
  __asm { FMLA            S3, S1, V7.S[3] }

  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v34)), v24, vextq_s8(vuzp1q_s32(_Q6, _Q6), v34, 0xCuLL));
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v34, _S3), v24, v34, 3), vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL)).u64[0];
  __asm { FMLA            S1, S3, V6.S[3] }

  return result;
}

- (void)_updateArcballOrientation
{
  if (self[1].super.isa >= 2)
  {
    v4 = *&self->_anon_90[16];
    v3 = *&self->_anon_90[32];
    v5 = vcgeq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v4, v3));
    v5.i32[3] = v5.i32[2];
    if ((vminvq_u32(v5) & 0x80000000) == 0)
    {
      v6 = vmulq_f32(v4, v3);
      v7 = v6.f32[2] + vaddv_f32(*v6.f32);
      if (fabsf(v7) < 1.0)
      {
        v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vnegq_f32(v4)), v3, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
        v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
        v8 = acosf(v7);
        v9 = vmulq_f32(v34, v34);
        v9.f32[0] = v9.f32[1] + (v9.f32[2] + v9.f32[0]);
        v10 = vdupq_lane_s32(*v9.f32, 0);
        v10.i32[3] = 0;
        v11 = vrsqrteq_f32(v10);
        v12 = vmulq_f32(v11, vrsqrtsq_f32(v10, vmulq_f32(v11, v11)));
        v13 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v9.f32[0] != 0.0)), 0x1FuLL));
        v13.i32[3] = 0;
        v36 = vbslq_s8(vcltzq_s32(v13), vmulq_f32(v35, vmulq_f32(v12, vrsqrtsq_f32(v10, vmulq_f32(v12, v12)))), v35);
        LODWORD(v14) = *&__sincosf_stret((v8 * -2.0) * 0.5);
        objc_msgSend__convertRotationFromWorldToPointOfView_(self, v15, v16, v17, *vmulq_n_f32(v36, v14).i64);
        v37 = v18;
        v22 = objc_msgSend_pointOfView(self, v19, v20, v21);
        v23 = vmulq_f32(v37, v37);
        *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
        v24 = vdupq_lane_s32(vadd_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)), 0);
        v25 = vrsqrteq_f32(v24);
        v26 = vmulq_f32(v25, vrsqrtsq_f32(v24, vmulq_f32(v25, v25)));
        v37.i64[0] = vbslq_s8(vceqzq_f32(v24), v37, vmulq_f32(v37, vmulq_f32(v26, vrsqrtsq_f32(v24, vmulq_f32(v26, v26))))).u64[0];
        objc_msgSend_simdTarget(self, v27, v28, v29);
        objc_msgSend_rotateBy_aroundTarget_(v22, v30, v31, v32, *v37.i64, v33);
        v3 = *&self->_anon_90[32];
      }

      *&self->_anon_90[16] = v3;
    }
  }
}

- (BOOL)_isLocationValid:(CGPoint)a3 inViewport:(CGSize)a4
{
  v4 = a3.x <= a4.width;
  if (a3.y > a4.height)
  {
    v4 = 0;
  }

  if (a3.y < 0.0)
  {
    v4 = 0;
  }

  return a3.x >= 0.0 && v4;
}

- (double)_mapToSphere:(float64_t)a3 inViewport:(double)a4
{
  a2.f64[1] = a3;
  if (*&a1[40] == 3)
  {
    a2 = vaddq_f64(a2, vcvtq_f64_f32(a1[18]));
  }

  if (a4 >= a5)
  {
    v5 = a4;
  }

  else
  {
    v5 = a5;
  }

  *&v5 = v5;
  v6 = vsubq_f64(a2, vdupq_lane_s64(COERCE__INT64((*&v5 * 0.5)), 0));
  *v6.f32 = vdiv_f32(vcvt_f32_f64(v6), vdup_lane_s32(*&v5, 0));
  v7 = COERCE_FLOAT(vmul_f32(*&v6, *&v6).i32[1]) + (v6.f32[0] * v6.f32[0]);
  v8 = v7 < 0.125;
  v9 = 0.125 / sqrtf(v7);
  v10 = sqrtf(0.25 - v7);
  if (!v8)
  {
    v10 = v9;
  }

  v6.f32[2] = v10;
  v11 = vmulq_f32(v6, v6);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v6.i64[0] = vmulq_n_f32(v6, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]).u64[0];
  return *v6.i64;
}

- (void)_endDraggingWithVelocity:(CGPoint)a3
{
  if (self->_inertia.inertiaEnabled)
  {
    y = a3.y;
    v7 = vcvt_f32_f64(a3);
    v8 = vcge_f32(vabs_f32(v7), vdup_n_s32(0x3DCCCCCDu));
    if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
    {
      v17 = v4;
      v10 = vdiv_f32(v7, vdup_n_s32(0x42700000u));
      *self->_anon_e0 = v10;
      if (self->_inertia.friction == 0.0)
      {
        v11 = vdup_lane_s32(vcgt_f32(v10, 0), 0);
        v12 = -20.0;
        if (v10.f32[0] >= -20.0)
        {
          v13 = v10.f32[0];
        }

        else
        {
          v13 = -20.0;
        }

        v10.i32[0] = fminf(v10.f32[0], 20.0);
        v14 = vbsl_s8(v11, v10, __PAIR64__(v10.u32[1], LODWORD(v13)));
        v15 = fminf(*&v14.i32[1], 20.0);
        if (*&v14.i32[1] >= -20.0)
        {
          v12 = *&v14.i32[1];
        }

        if (*&v14.i32[1] <= 0.0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        *&v14.i32[1] = v16;
        *self->_anon_e0 = v14;
      }

      else
      {
        v16 = v10.f32[1];
      }

      *&self->_anon_e0[4] = -v16;
      objc_msgSend__setInertiaRunning_(self, a2, 1, v3, v5, v17);
      self->_inertia.lastSimulationTime = CACurrentMediaTime();
    }
  }
}

- (void)_setInertiaRunning:(BOOL)a3
{
  if (self->_inertia.inertiaRunning != a3)
  {
    v18[7] = v4;
    v18[8] = v5;
    if (a3)
    {
      objc_msgSend_delegate(self, a2, a3, v3);
      if (objc_opt_respondsToSelector())
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1AF2A9D48;
        v18[3] = &unk_1E7A7A770;
        v18[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v18);
      }

      if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, v8, v9, v10) & 1) == 0)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_1AF2A9D84;
        v17[3] = &unk_1E7A7E5A0;
        v17[4] = self;
        *&self->_anon_e0[8] = objc_msgSend_scheduledTimerWithTimeInterval_repeats_block_(MEMORY[0x1E695DFF0], v11, 1, v17, 0.0166666667);
      }

      self->_inertia.inertiaRunning = a3;
    }

    else
    {
      if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, a2, a3, v3) & 1) == 0)
      {
        v15 = *&self->_anon_e0[8];
        if (v15)
        {
          objc_msgSend_invalidate(v15, v12, v13, v14);
        }

        *&self->_anon_e0[8] = 0;
      }

      self->_inertia.inertiaRunning = a3;
      objc_msgSend_delegate(self, v12, v13, v14);
      if (objc_opt_respondsToSelector())
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1AF2A9DBC;
        block[3] = &unk_1E7A7A770;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

- (double)_orthographicViewSpaceTranslationForZoomAtScreenPoint:(uint64_t)a3 scaleDelta:(uint64_t)a4 viewport:(double)a5
{
  v9 = objc_msgSend_pointOfView(a1, a2, a3, a4);
  v13 = objc_msgSend_nodeRef(v9, v10, v11, v12);
  v14 = 0.0;
  if (v13)
  {
    v15 = v13;
    v16 = sub_1AF1C3FAC(v13);
    if (v16)
    {
      v17 = v16;
      v18 = sub_1AF1C3FAC(v15);
      sub_1AF1CEA20(v18);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      memset(v40, 0, sizeof(v40));
      if (sub_1AF27F12C(v15, v40))
      {
        if ((v40[0] & 4) != 0)
        {
          v29 = sub_1AF1C3FAC(v15);
          sub_1AF1CEA9C(v29);
          v30 = sub_1AF0D5194();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF4DC8(v30);
          }
        }

        else
        {
          if ((v40[0] & 2) != 0)
          {
            sub_1AF27F230(v40, v15, 0, v17);
          }

          v19 = sub_1AF1C3FAC(v15);
          sub_1AF1CEA9C(v19);
          v20.f64[0] = a7;
          v20.f64[1] = a8;
          v39 = vcvt_hight_f32_f64(0, v20);
          v50 = *sub_1AF15E62C(v40, &v39);
          v51 = __invert_f4(v50);
          v32 = v51.columns[0];
          v33 = v51.columns[1];
          v34 = v51.columns[2];
          v35 = *v51.columns[3].f32;
          *(&v41 + 2) = *(&v41 + 2) + a6;
          v52 = *sub_1AF15E62C(v40, &v39);
          v53 = __invert_f4(v52);
          v21 = (*&a5 + *&a5) / a7 + -1.0;
          v22 = (*(&a5 + 1) + *(&a5 + 1)) / a8 + -1.0;
          __asm { FMOV            V7.4S, #-1.0 }

          return COERCE_DOUBLE(vsub_f32(vadd_f32(v35, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v32, v21), v33, v22), _Q7, v34)), vadd_f32(*v53.columns[3].f32, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v53.columns[0], v21), v53.columns[1], v22), _Q7, v53.columns[2]))));
        }
      }

      else
      {
        v28 = sub_1AF1C3FAC(v15);
        sub_1AF1CEA9C(v28);
      }
    }
  }

  return v14;
}

@end