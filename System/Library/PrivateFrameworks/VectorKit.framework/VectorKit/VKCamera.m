@interface VKCamera
- ($7C969B71DD53AF2675E9F7E8E727D903)frustum;
- (CGPoint)screenPointFromGroundPoint:(const void *)a3;
- (CameraFrame<geo::Radians,)cameraFrame:(VKCamera *)self;
- (Matrix<double,)forwardVector;
- (Matrix<double,)groundPlaneIntersectionPoint;
- (Matrix<double,)groundPlaneIntersectionPoint:(const void *)a3 transform:(const void *)a4;
- (Matrix<double,)groundPoint;
- (Matrix<double,)rightVector;
- (Matrix<double,)upVector;
- (Mercator3<double>)mercatorPosition;
- (NSString)description;
- (Unit<geo::RadianUnitDescription,)horizontalFieldOfView;
- (Unit<geo::RadianUnitDescription,)verticalFieldOfView;
- (VKCamera)initWithRunLoopController:(RunLoopController *)a3;
- (VKCameraState)cameraState;
- (VKFootprint)footprint;
- (VKViewVolume)viewVolume;
- (View<double>)view:(SEL)a3;
- (double)displayZoomLevel;
- (double)pitch;
- (double)yaw;
- (float)zoomAtPoint:(CGPoint)a3;
- (id).cxx_construct;
- (id)descriptionDictionaryRepresentation;
- (optional<double>)maxDistanceToGroundRestriction;
- (optional<double>)minDistanceToGroundRestriction;
- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr atGroundLevel:(VKCamera *)self;
- (void)_setPosition:(const void *)a3;
- (void)adjustClipPlanes;
- (void)setAspectRatio:(double)a3;
- (void)setCameraState:(VKCameraState *)a3;
- (void)setFarClipDistance:(double)a3;
- (void)setHorizontalOffset:(double)a3;
- (void)setMercatorPosition:(const void *)a3;
- (void)setNearClipDistance:(double)a3;
- (void)setNeedsUpdate;
- (void)setOrientation:(const void *)a3;
- (void)setPosition:(const void *)a3;
- (void)setTransform:(const void *)a3;
- (void)setVerticalFieldOfView:()Unit<geo:(double>)a3 :RadianUnitDescription;
- (void)updateCamera:(shared_ptr<gdc:()CameraFrame<geo:(double> *)a4 :(function<BOOL)(std:()geo:(double>)& :()geo:(double>)& :Unit<geo::MeterUnitDescription Unit<geo::MeterUnitDescription :shared_ptr<gdc::Camera> Radians :Camera>)a3 cameraFrame:withAdjustment:;
- (void)updateCamera:(shared_ptr<gdc:(function<BOOL)(std:()geo:(double>)& :()geo:(double>)& :Unit<geo::MeterUnitDescription Unit<geo::MeterUnitDescription :shared_ptr<gdc::Camera> :Camera>)a3 withAdjustment:;
- (void)updateIfNeeded;
@end

@implementation VKCamera

- (id).cxx_construct
{
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 312) = 0u;
  *(self + 45) = 0x3FF0000000000000;
  *(self + 1152) = 0;
  *(self + 1160) = 0;
  *(self + 1168) = 0;
  *(self + 1176) = 0;
  return self;
}

- (void)setNeedsUpdate
{
  self->_needsUpdate = 1;
  runLoopController = self->_runLoopController;
  if (runLoopController)
  {
    var0 = runLoopController->var0;
    if (runLoopController->var0)
    {
      v4 = 4;
      md::MapEngine::setNeedsTick(var0, &v4);
    }
  }
}

- (void)updateIfNeeded
{
  if (self->_needsUpdate)
  {
    v164 = v9;
    v165 = v8;
    v166 = v7;
    v167 = v6;
    v168 = v5;
    v169 = v4;
    v170 = v2;
    v171 = v3;
    if (!self->_updating)
    {
      self->_updating = 1;
      [(VKCamera *)self cameraState];
      v150 = v157;
      v152 = v159;
      v151 = v158;
      v153 = v160;
      v11 = v162;
      v154 = v161;
      v155 = v162;
      v156 = v163;
      v12 = tan(0.5 * *&v163);
      *&v139 = 0;
      v138 = 0.0;
      *(&v139 + 1) = 0xBFF0000000000000;
      self->_forward._e[0] = gm::Quaternion<double>::operator*(&v152, &v138);
      self->_forward._e[1] = v13;
      self->_forward._e[2] = v14;
      v138 = v12 * v11;
      v139 = 0uLL;
      self->_right._e[0] = gm::Quaternion<double>::operator*(&v152, &v138);
      self->_right._e[1] = v15;
      self->_right._e[2] = v16;
      v138 = 0.0;
      v139 = *&v12;
      self->_up._e[0] = gm::Quaternion<double>::operator*(&v152, &v138);
      self->_up._e[1] = v17;
      self->_up._e[2] = v18;
      [(VKCamera *)self adjustClipPlanes];
      {
        *&qword_1EB842080 = 0u;
        unk_1EB8420A0 = 0u;
        unk_1EB8420C0 = 0u;
        unk_1EB8420B0 = 0u;
        unk_1EB842090 = 0u;
        *&algn_1EB842060[16] = 0u;
        *algn_1EB842060 = 0u;
        qword_1EB8420D0 = 0x3FF0000000000000;
        [VKCamera updateIfNeeded]::scaled = 0x4030000000000000;
        qword_1EB842080 = 0x4030000000000000;
        qword_1EB8420A8 = 0x4030000000000000;
      }

      v19 = self->_horizontalOffset + self->_horizontalOffset;
      v141 = 0u;
      v143 = 0;
      v139 = 0u;
      v140 = 0u;
      v142 = 0u;
      v138 = 1.0;
      *&v141 = 0x3FF0000000000000;
      v145 = 0;
      v144 = 0x3FF0000000000000;
      v149 = 0x3FF0000000000000;
      v146 = v19;
      v148 = 0;
      v147 = 0;
      p_transform = &self->_transform;
      geo::RigidTransform<double,double>::toMatrix(v132, &self->_transform);
      v21 = v135;
      *&self->_worldMatrix._e[8] = v134;
      *&self->_worldMatrix._e[10] = v21;
      v22 = v137;
      *&self->_worldMatrix._e[12] = v136;
      *&self->_worldMatrix._e[14] = v22;
      v23 = *&v132[16];
      *self->_worldMatrix._e = *v132;
      *&self->_worldMatrix._e[2] = v23;
      v24 = v133;
      *&self->_worldMatrix._e[4] = *&v132[32];
      *&self->_worldMatrix._e[6] = v24;
      geo::RigidTransform<double,double>::inverse(&v120, &self->_transform);
      geo::RigidTransform<double,double>::toMatrix(v132, &v120);
      v25 = 0;
      v26 = v135;
      *&self->_unscaledViewMatrix._e[8] = v134;
      *&self->_unscaledViewMatrix._e[10] = v26;
      v27 = v137;
      *&self->_unscaledViewMatrix._e[12] = v136;
      *&self->_unscaledViewMatrix._e[14] = v27;
      v28 = *&v132[16];
      *self->_unscaledViewMatrix._e = *v132;
      *&self->_unscaledViewMatrix._e[2] = v28;
      v29 = v133;
      v30 = &[VKCamera updateIfNeeded]::scaled;
      *&self->_unscaledViewMatrix._e[4] = *&v132[32];
      *&self->_unscaledViewMatrix._e[6] = v29;
      do
      {
        v31 = 0;
        p_unscaledViewMatrix = &self->_unscaledViewMatrix;
        do
        {
          v33 = 0;
          v34 = 0.0;
          v35 = v30;
          do
          {
            v36 = *v35;
            v35 += 4;
            v34 = v34 + p_unscaledViewMatrix->_e[v33++] * v36;
          }

          while (v33 != 4);
          *&v132[32 * v31++ + 8 * v25] = v34;
          p_unscaledViewMatrix = (p_unscaledViewMatrix + 32);
        }

        while (v31 != 4);
        ++v25;
        ++v30;
      }

      while (v25 != 4);
      v37 = v135;
      *&self->_scaledViewMatrix._e[8] = v134;
      *&self->_scaledViewMatrix._e[10] = v37;
      v38 = v137;
      *&self->_scaledViewMatrix._e[12] = v136;
      *&self->_scaledViewMatrix._e[14] = v38;
      v39 = *&v132[16];
      *self->_scaledViewMatrix._e = *v132;
      *&self->_scaledViewMatrix._e[2] = v39;
      v40 = v133;
      *&self->_scaledViewMatrix._e[4] = *&v132[32];
      *&self->_scaledViewMatrix._e[6] = v40;
      aspectRatio = self->_aspectRatio;
      near = self->_near;
      far = self->_far;
      ndcZNear = self->_ndcZNear;
      v45 = tan(self->_verticalFieldOfView._value * 0.5);
      v46 = 0;
      v47 = v45 + v45;
      memset(&v132[8], 0, 32);
      *v132 = (near + near) / (v47 * aspectRatio * near);
      *&v132[40] = (near + near) / (v47 * near);
      v133 = 0u;
      v134 = 0u;
      *&v135 = -(far - ndcZNear * near) / (far - near);
      v136 = 0uLL;
      *(&v135 + 1) = 0xBFF0000000000000;
      *&v137 = far * near * (ndcZNear + -1.0) / (far - near);
      *(&v137 + 1) = 0;
      v121 = 0u;
      v122 = 0u;
      v120 = near * 32.0 / (v47 * aspectRatio * (near * 16.0));
      v123 = near * 32.0 / (v47 * (near * 16.0));
      v48 = far * 16.0 - near * 16.0;
      v124 = 0u;
      v125 = 0u;
      v126 = -(far * 16.0 - ndcZNear * (near * 16.0)) / v48;
      v128 = 0;
      v129 = 0;
      v127 = 0xBFF0000000000000;
      v130 = far * 16.0 * (near * 16.0) * (ndcZNear + -1.0) / v48;
      v131 = 0;
      v49 = &v138;
      do
      {
        v50 = 0;
        v51 = &v120;
        do
        {
          v52 = 0;
          v53 = 0.0;
          v54 = v49;
          do
          {
            v55 = *v54;
            v54 += 4;
            v53 = v53 + v51[v52++] * v55;
          }

          while (v52 != 4);
          *(&v112 + 4 * v50++ + v46) = v53;
          v51 += 4;
        }

        while (v50 != 4);
        ++v46;
        ++v49;
      }

      while (v46 != 4);
      v56 = 0;
      v57 = v117;
      *&self->_scaledProjectionMatrix._e[8] = v116;
      *&self->_scaledProjectionMatrix._e[10] = v57;
      v58 = v119;
      *&self->_scaledProjectionMatrix._e[12] = v118;
      *&self->_scaledProjectionMatrix._e[14] = v58;
      v59 = v113;
      *self->_scaledProjectionMatrix._e = v112;
      *&self->_scaledProjectionMatrix._e[2] = v59;
      v60 = v115;
      v61 = &v138;
      *&self->_scaledProjectionMatrix._e[4] = v114;
      *&self->_scaledProjectionMatrix._e[6] = v60;
      do
      {
        v62 = 0;
        v63 = v132;
        do
        {
          v64 = 0;
          v65 = 0.0;
          v66 = v61;
          do
          {
            v67 = *v66;
            v66 += 4;
            v65 = v65 + *&v63[v64] * v67;
            v64 += 8;
          }

          while (v64 != 32);
          *(&v112 + 4 * v62++ + v56) = v65;
          v63 += 32;
        }

        while (v62 != 4);
        ++v56;
        ++v61;
      }

      while (v56 != 4);
      v68 = 0;
      v69 = v117;
      *&self->_unscaledProjectionMatrix._e[8] = v116;
      *&self->_unscaledProjectionMatrix._e[10] = v69;
      v70 = v119;
      *&self->_unscaledProjectionMatrix._e[12] = v118;
      *&self->_unscaledProjectionMatrix._e[14] = v70;
      v71 = v113;
      *self->_unscaledProjectionMatrix._e = v112;
      *&self->_unscaledProjectionMatrix._e[2] = v71;
      v72 = v115;
      v73 = 496;
      *&self->_unscaledProjectionMatrix._e[4] = v114;
      *&self->_unscaledProjectionMatrix._e[6] = v72;
      do
      {
        v74 = 0;
        p_scaledViewMatrix = &self->_scaledViewMatrix;
        do
        {
          v76 = 0;
          v77 = 0.0;
          v78 = v73;
          do
          {
            v77 = v77 + p_scaledViewMatrix->_e[v76++] * *(&self->super.isa + v78);
            v78 += 32;
          }

          while (v76 != 4);
          *(&v112 + 4 * v74++ + v68) = v77;
          p_scaledViewMatrix = (p_scaledViewMatrix + 32);
        }

        while (v74 != 4);
        ++v68;
        v73 += 8;
      }

      while (v68 != 4);
      v79 = v117;
      *&self->_scaledViewProjectionMatrix._e[8] = v116;
      *&self->_scaledViewProjectionMatrix._e[10] = v79;
      v80 = v119;
      *&self->_scaledViewProjectionMatrix._e[12] = v118;
      *&self->_scaledViewProjectionMatrix._e[14] = v80;
      v81 = v113;
      *self->_scaledViewProjectionMatrix._e = v112;
      *&self->_scaledViewProjectionMatrix._e[2] = v81;
      v82 = v115;
      *&self->_scaledViewProjectionMatrix._e[4] = v114;
      *&self->_scaledViewProjectionMatrix._e[6] = v82;
      viewVolume = self->_viewVolume;
      v84 = *&self->_frustum.height;
      v112 = *&self->_frustum.orthographic;
      v113 = v84;
      v114 = *&self->_frustum.far;
      [(VKViewVolume *)viewVolume updateWithFrustum:&v112 matrix:&self->_worldMatrix];
      [(VKFootprint *)self->_footprint computeFromCamera:self];
      *&self->_needsUpdate = 0;
      self->_tanHalfHorizFOV = self->_width * 0.5 / self->_near;
      [(VKCamera *)self farClipDistance];
      v86 = v85;
      [(VKCamera *)self pitch];
      v88 = 1.57079633 - v87;
      v89 = __sincos_stret(1.57079633 - v87);
      v90 = self->_transform._translation._e[2] / v89.__sinval;
      self->_screenHeightOfGroundAndFarClipPlaneIntersection = (self->_tanHalfVerticalFOV * v86 + (v86 - v90) * tan(v88)) / (self->_tanHalfVerticalFOV * v86 + self->_tanHalfVerticalFOV * v86);
      if (v89.__sinval < 0.00001 || v89.__cosval < 0.00001)
      {
        self->_distanceToGroundAndFarClipPlaneIntersection = 1.79769313e308;
      }

      else
      {
        [(VKCamera *)self forwardVector];
        v111[0] = v91;
        v111[1] = v92;
        v111[2] = v93;
        [(VKCamera *)self rightVector];
        *&v112 = -v95;
        *(&v112 + 1) = v94;
        *&v113 = 0;
        v96 = gm::Matrix<double,3,1>::normalized<int,void>(&v112);
        v97 = 0;
        *v110 = v96;
        v110[1] = v98;
        v110[2] = v99;
        v106 = *p_transform->_translation._e;
        v107 = 0;
        do
        {
          *(&v112 + v97 * 8) = *&v110[v97] * ((v86 - v90) / v89.__cosval + v90 * v89.__cosval);
          ++v97;
        }

        while (v97 != 3);
        v100 = 0;
        v104 = v112;
        v105 = v113;
        do
        {
          *(&v112 + v100) = *(&v104 + v100) + *(&v106 + v100);
          v100 += 8;
        }

        while (v100 != 24);
        v101 = 0;
        v108 = v112;
        v109 = v113;
        do
        {
          *(&v112 + v101 * 8) = *(&v108 + v101 * 8) - p_transform->_translation._e[v101];
          ++v101;
        }

        while (v101 != 3);
        v102 = 0;
        v103 = 0.0;
        do
        {
          v103 = v103 + *&v111[v102] * *(&v112 + v102 * 8);
          ++v102;
        }

        while (v102 != 3);
        self->_distanceToGroundAndFarClipPlaneIntersection = v103;
      }
    }
  }
}

- (VKCameraState)cameraState
{
  *retstr->var0._rotation._imaginary._e = *&self[4].var0._translation._e[2];
  retstr->var0._rotation._imaginary._e[2] = self[4].var0._rotation._imaginary._e[1];
  v3 = self[4].var0._rotation._imaginary._e[2];
  retstr->var0._translation._e[2] = self[4].var0._translation._e[1];
  *retstr->var0._translation._e = *&self[3].var3;
  v4 = self[3].var0._rotation._imaginary._e[0];
  retstr->var0._rotation._scalar = v3;
  retstr->var1 = v4;
  retstr->var2._value = self[3].var0._rotation._imaginary._e[1];
  retstr->var3 = self[3].var0._translation._e[0];
  return self;
}

- (void)adjustClipPlanes
{
  if (self->_nearFarReset)
  {
    v3 = +[VKDebugSettings sharedSettings];
    [v3 farClipPlaneFactor];
    v13 = v4;

    v5 = +[VKDebugSettings sharedSettings];
    [v5 nearClipPlaneFactor];
    v6.i32[1] = v13;
    v14 = vcvtq_f64_f32(v6);

    *&self->_near = vmaxnmq_f64(vmulq_n_f64(v14, self->_transform._translation._e[2] / -self->_forward._e[2]), xmmword_1B33B0690);
  }

  v7 = tan(self->_verticalFieldOfView._value * 0.5);
  aspectRatio = self->_aspectRatio;
  horizontalOffset = self->_horizontalOffset;
  self->_frustum.orthographic = 0;
  v10 = *&self->_near;
  v11 = (v7 + v7) * *&v10;
  v12 = v11 * aspectRatio;
  self->_width = v12;
  self->_height = v11;
  self->_frustum.width = v12;
  self->_frustum.height = v11;
  *&self->_frustum.near = v10;
  self->_frustum.horizontalOffset = horizontalOffset;
  self->_nearFarReset = 1;
}

- (VKViewVolume)viewVolume
{
  [(VKCamera *)self updateIfNeeded];
  viewVolume = self->_viewVolume;

  return viewVolume;
}

- (Matrix<double,)forwardVector
{
  [(VKCamera *)self updateIfNeeded];
  v3 = vnegq_f64(*&self->_worldMatrix._e[8]);
  v4 = v3.f64[1];
  v5 = -self->_worldMatrix._e[10];
  result._e[0] = v3.f64[0];
  result._e[2] = v5;
  result._e[1] = v4;
  return result;
}

- (double)pitch
{
  v4[0] = 0;
  v4[1] = 0;
  v4[2] = 0x3FF0000000000000;
  gm::Quaternion<double>::operator*(&self->_transform._rotation, v4);
  return acos(fmin(fmax(v2, -1.0), 1.0));
}

- (optional<double>)minDistanceToGroundRestriction
{
  v2 = *&self->_minDistanceToGroundRestriction.__engaged_;
  var0 = self->_minDistanceToGroundRestriction.var0;
  result.__engaged_ = v2;
  result.var0 = var0;
  return result;
}

- (optional<double>)maxDistanceToGroundRestriction
{
  v2 = *&self->_maxDistanceToGroundRestriction.__engaged_;
  var0 = self->_maxDistanceToGroundRestriction.var0;
  result.__engaged_ = v2;
  result.var0 = var0;
  return result;
}

- (Unit<geo::RadianUnitDescription,)verticalFieldOfView
{
  v3._value = self->_verticalFieldOfView._value;
  *v2 = *&v3._value;
  return v3;
}

- (Unit<geo::RadianUnitDescription,)horizontalFieldOfView
{
  v4 = v2;
  [(VKCamera *)self updateIfNeeded];
  v5 = atan(self->_width * 0.5 / self->_near);
  v6._value = v5 + v5;
  *v4 = v6._value;
  return v6;
}

- (Matrix<double,)groundPlaneIntersectionPoint
{
  [(VKCamera *)self forwardVector];
  v9[0] = v3;
  v9[1] = v4;
  v9[2] = v5;
  [(VKCamera *)self groundPlaneIntersectionPoint:v9 transform:&self->_transform];
  result._e[2] = v8;
  result._e[1] = v7;
  result._e[0] = v6;
  return result;
}

- (double)yaw
{
  [(VKCamera *)self updateIfNeeded];
  [(VKCamera *)self upVector];
  v4 = v3;
  v6 = -1.0;
  v8 = -v5 / sqrt(-(v7 * v7 + -1.0));
  if (v8 > -1.0)
  {
    v6 = 1.0;
    if (v8 < 1.0)
    {
      v6 = v8;
    }
  }

  v9 = acos(v6);
  if (v4 <= 0.0)
  {
    v9 = -v9;
  }

  v10 = v9 + 3.14159265;
  v11 = v9 + -3.14159265;
  if (v10 <= 3.14159265)
  {
    v11 = v10;
  }

  return -v11;
}

- (Matrix<double,)upVector
{
  [(VKCamera *)self updateIfNeeded];
  v3 = self->_worldMatrix._e[4];
  v4 = self->_worldMatrix._e[5];
  v5 = self->_worldMatrix._e[6];
  result._e[2] = v5;
  result._e[1] = v4;
  result._e[0] = v3;
  return result;
}

- (VKFootprint)footprint
{
  [(VKCamera *)self updateIfNeeded];
  footprint = self->_footprint;

  return footprint;
}

- (double)displayZoomLevel
{
  [(VKCamera *)self updateIfNeeded];
  [(VKFootprint *)self->_footprint nearestGroundPoint];
  v3 = 0;
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  do
  {
    *&v11[v3 + 3] = *&v11[v3] - self->_transform._translation._e[v3];
    ++v3;
  }

  while (v3 != 3);
  v7 = 0;
  v8 = 0.0;
  do
  {
    v8 = v8 + self->_forward._e[v7] * *&v11[v7 + 3];
    ++v7;
  }

  while (v7 != 3);
  [(VKCamera *)self widthOfViewAtDepth:v8];
  return -log2(v9);
}

- (Matrix<double,)rightVector
{
  [(VKCamera *)self updateIfNeeded];
  v3 = self->_worldMatrix._e[0];
  v4 = self->_worldMatrix._e[1];
  v5 = self->_worldMatrix._e[2];
  result._e[2] = v5;
  result._e[1] = v4;
  result._e[0] = v3;
  return result;
}

- (void)updateCamera:(shared_ptr<gdc:(function<BOOL)(std:()geo:(double>)& :()geo:(double>)& :Unit<geo::MeterUnitDescription Unit<geo::MeterUnitDescription :shared_ptr<gdc::Camera> :Camera>)a3 withAdjustment:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v18 = *MEMORY[0x1E69E9840];
  [(VKCamera *)self cameraFrame:**a3.__ptr_ == 0, a3.__cntrl_, a4];
  v7 = *ptr;
  v8 = *(ptr + 1);
  v11 = v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = v13;
  v9[1] = v14;
  v9[2] = v15;
  v10 = v16;
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v17, cntrl);
  [(VKCamera *)self updateCamera:&v11 cameraFrame:v9 withAdjustment:v17];
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v17);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }
}

- (void)updateCamera:(shared_ptr<gdc:()CameraFrame<geo:(double> *)a4 :(function<BOOL)(std:()geo:(double>)& :()geo:(double>)& :Unit<geo::MeterUnitDescription Unit<geo::MeterUnitDescription :shared_ptr<gdc::Camera> Radians :Camera>)a3 cameraFrame:withAdjustment:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v9 = *a3.__cntrl_;
  v10 = cos(v9 + v9);
  v11 = cos(v9 * 4.0);
  v12 = cos(v9 * 6.0);
  v13 = v9 * 0.5;
  v14 = tan(v9 * 0.5 + 0.78103484);
  v15 = log(v14);
  v16 = tan(v13 + 0.789761487);
  v17 = log(v16);
  *&v18 = gdc::Camera::setCameraFrame(*ptr, cntrl).n128_u64[0];
  v19 = *ptr;
  [(VKCamera *)self verticalFieldOfView];
  gdc::Camera::setVerticalFieldOfView(v19, &v37);
  v20 = +[VKDebugSettings sharedSettings];
  v21 = [v20 shouldFreezeLayoutCamera];

  if (v21)
  {
    [(VKCamera *)self setNearClipDistance:0.000000124766011];
    [(VKCamera *)self maxHeight];
    [(VKCamera *)self setFarClipDistance:?];
  }

  else
  {
    value = a4->_distanceFromTarget._value;
    if (value != 0.0)
    {
      v23 = *ptr;
      v37 = *gdc::Camera::near(*ptr);
      v36 = *gdc::Camera::far(v23);
      v24 = *(ptr + 1);
      v34 = v23;
      v35 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        value = a4->_distanceFromTarget._value;
        if (value == 0.0)
        {
          v33 = std::__throw_bad_function_call[abi:nn200100]();
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v35);
          }

          _Unwind_Resume(v33);
        }
      }

      v25 = (*(**&value + 48))(COERCE_DOUBLE(*&value), &v34, &v37, &v36);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v35);
      }

      if (v25)
      {
        [(VKCamera *)self setFarClipDistance:v36 * 0.0000000249532021, v34];
        [(VKCamera *)self setNearClipDistance:v37 * 0.0000000249532021];
      }
    }

    v26 = fabs((v17 - v15) * 0.159154943) / (v10 * -559.82 + 111132.92 + v11 * 1.175 + v12 * -0.0023);
    v27 = *ptr;
    [(VKCamera *)self nearClipDistance];
    *&v29 = v28 / v26;
    [(VKCamera *)self farClipDistance];
    v37 = v30 / v26;
    gdc::Camera::setNearFar(v27, v29, &v37);
  }

  v31 = *ptr;
  [(VKCamera *)self horizontalOffset];
  gdc::Camera::setHorizontalOffset(v31, v32);
  gdc::Camera::setVerticalOffset(*ptr, 0.0);
}

- (CameraFrame<geo::Radians,)cameraFrame:(VKCamera *)self
{
  [(VKCamera *)self updateIfNeeded];
  retstr->_roll._value = 0.0;
  [(VKCamera *)self groundPlaneIntersectionPoint];
  v8 = v7 * 6.28318531;
  v10 = exp(v9 * 6.28318531 + -3.14159265);
  v11 = atan(v10) * 2.0 + -1.57079633;
  v12 = fmod(v8, 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531);
  retstr->_target.latitude._value = v11;
  retstr->_target.longitude._value = v13 + -3.14159265;
  retstr->_target.altitude._value = 0.0;
  [(VKCamera *)self pitch];
  retstr->_pitch._value = v14;
  [(VKCamera *)self yaw];
  retstr->_heading._value = -v15;
  v16 = *([(VKCamera *)self position]+ 16);
  [(VKCamera *)self pitch];
  v18 = v17;
  if (a4)
  {
    v19 = 0.0000000249532021;
  }

  else
  {
    v20 = cos(v11 + v11) * -559.82 + 111132.92;
    v21 = v20 + cos(v11 * 4.0) * 1.175;
    v22 = v21 + cos(v11 * 6.0) * -0.0023;
    v23 = v11 * 0.5;
    v24 = tan(v23 + 0.78103484);
    v25 = log(v24);
    v26 = tan(v23 + 0.789761487);
    v19 = fabs((log(v26) - v25) * 0.159154943) / v22;
  }

  retstr->_distanceFromTarget._value = v16 / (v19 * cos(v18));
  return result;
}

- (View<double>)view:(SEL)a3
{
  v12 = a4;
  near = self->_near;
  value = self->_verticalFieldOfView._value;
  geo::PerspectiveView<double>::PerspectiveView(&v8, &self->_transform, &v12, &value, near, self->_far, self->_ndcZNear);
  *retstr->var0._translation._e = v8;
  retstr->var0._translation._e[2] = v9;
  retstr->var0._rotation = v10;
  return memcpy(&retstr->var1, v11, 0x198uLL);
}

- (float)zoomAtPoint:(CGPoint)a3
{
  v16 = self->_transform._translation._e[2];
  v15 = *self->_transform._translation._e;
  forward = self->_forward;
  [(VKCamera *)self groundPointFromScreenPoint:a3.x, a3.y];
  if (v13[24])
  {
    for (i = 0; i != 24; i += 8)
    {
      *(&v17 + i) = *&v13[i] - *(&v15 + i);
    }

    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + forward._e[v5] * *(&v17 + v5 * 8);
      ++v5;
    }

    while (v5 != 3);
    [(VKCamera *)self widthOfViewAtDepth:v6];
    *&v8 = log2(v7);
    *&v8 = -*&v8;
  }

  else
  {
    v9 = std::__throw_bad_optional_access[abi:nn200100]();
    v8 = [(VKCamera *)v9 depthForViewWidth:v10, v11];
  }

  return *&v8;
}

- (CGPoint)screenPointFromGroundPoint:(const void *)a3
{
  v14 = *a3;
  v4 = *&v14;
  v5 = *&v14 + -1.0;
  v6 = *&v14 + 1.0;
  v7 = [(VKCamera *)self position:v14];
  v8 = vabdd_f64(*v7, v4);
  v9 = vabdd_f64(*v7, v5);
  v10 = vabdd_f64(*v7, v6);
  if (v9 < v8 && v9 < v10)
  {
    *&v14 = v5;
  }

  else if (v10 < v8)
  {
    *&v14 = v6;
  }

  v12 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>([(VKCamera *)self scaledViewProjectionMatrix], &v14);
  result.y = v13;
  result.x = v12;
  return result;
}

- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr atGroundLevel:(VKCamera *)self
{
  y = a4.y;
  x = a4.x;
  result = [(VKCamera *)self updateIfNeeded];
  v11 = 0;
  p_transform = &self->_transform;
  v13 = (x - self->_horizontalOffset) * 2.0 + -1.0;
  v14 = y * 2.0 + -1.0;
  v15 = self->_transform._translation._e[2];
  v16 = self->_forward._e[2] + v15 + self->_right._e[2] * v13 + self->_up._e[2] * v14;
  v31 = vmlaq_n_f64(vmlaq_n_f64(vaddq_f64(*self->_forward._e, *self->_transform._translation._e), *self->_right._e, v13), *self->_up._e, v14);
  v32 = v16;
  do
  {
    *(&v33 + v11 * 8) = v31.f64[v11] - p_transform->_translation._e[v11];
    ++v11;
  }

  while (v11 != 3);
  v17 = 0;
  v29 = v33;
  v30 = v34;
  v18 = 0.0;
  do
  {
    v18 = v18 + *(&v29 + v17) * *(&v29 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v19 = 0;
  v20 = 1.0 / sqrt(v18);
  do
  {
    *(&v29 + v19) = *(&v29 + v19) * v20;
    v19 += 8;
  }

  while (v19 != 24);
  v21 = v30;
  retstr->var0.__null_state_ = 0;
  retstr->__engaged_ = 0;
  if (v15 > 0.0 && v21 < 0.0)
  {
    v22 = 0;
    v23 = a5 - v15;
    v24 = 1.0 / v21;
    do
    {
      *(&v33 + v22) = v23 * *(&v29 + v22) * v24;
      v22 += 8;
    }

    while (v22 != 24);
    v25 = 0;
    v27 = v33;
    v28 = v34;
    do
    {
      *(&v33 + v25 * 8) = *(&v27 + v25 * 8) + p_transform->_translation._e[v25];
      ++v25;
    }

    while (v25 != 3);
    v26 = v34;
    *&retstr->var0.__null_state_ = v33;
    retstr->var0.__val_._e[2] = v26;
    retstr->__engaged_ = 1;
  }

  return result;
}

- (Matrix<double,)groundPlaneIntersectionPoint:(const void *)a3 transform:(const void *)a4
{
  v21[0] = 0;
  v21[1] = 0;
  v21[2] = 0x3FF0000000000000;
  v5 = gm::Matrix<double,3,1>::normalized<int,void>(a3);
  v6 = 0;
  *v20 = v5;
  v20[1] = v7;
  v20[2] = v8;
  v9 = 0.0;
  do
  {
    v9 = v9 + *&v20[v6] * *&v21[v6];
    ++v6;
  }

  while (v6 != 3);
  if (fabs(v9) < 0.0000001)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *(a4 + v10 * 8) * *&v21[v10];
    ++v10;
  }

  while (v10 != 3);
  v12 = -v11 / v9;
  if (v12 >= 0.0)
  {
    for (i = 0; i != 3; ++i)
    {
      *(&v22 + i * 8) = *&v20[i] * v12;
    }

    v17 = 0;
    v18 = v22;
    v19 = v23;
    do
    {
      *(&v22 + v17) = *(&v18 + v17) + *(a4 + v17);
      v17 += 8;
    }

    while (v17 != 24);
    v14 = *(&v22 + 1);
    v13 = *&v22;
    v15 = v23;
  }

  else
  {
LABEL_7:
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
  }

  result._e[2] = v15;
  result._e[1] = v14;
  result._e[0] = v13;
  return result;
}

- (void)setCameraState:(VKCameraState *)a3
{
  p_rotation = &a3->var0._rotation;
  for (i = 42; i != 45; ++i)
  {
    v5 = p_rotation->_imaginary._e[0];
    p_rotation = (p_rotation + 8);
    *(&self->super.isa + i) = v5;
  }

  self->_transform._rotation._scalar = a3->var0._rotation._scalar;
  v6 = 39;
  v7 = a3;
  do
  {
    v8 = v7->var0._translation._e[0];
    v7 = (v7 + 8);
    *(&self->super.isa + v6++) = v8;
  }

  while (v6 != 42);
  self->_aspectRatio = a3->var1;
  self->_verticalFieldOfView._value = a3->var2._value;
  self->_horizontalOffset = a3->var3;
  [(VKCamera *)self setNeedsUpdate];
}

- (Matrix<double,)groundPoint
{
  [(VKCamera *)self updateIfNeeded];
  v3 = self->_transform._translation._e[0];
  v4 = self->_transform._translation._e[1];
  v5 = 0.0;
  result._e[2] = v5;
  result._e[1] = v4;
  result._e[0] = v3;
  return result;
}

- (void)setNearClipDistance:(double)a3
{
  self->_needsUpdate = 1;
  self->_nearFarReset = 0;
  self->_near = a3;
}

- (void)setFarClipDistance:(double)a3
{
  self->_needsUpdate = 1;
  self->_nearFarReset = 0;
  self->_far = a3;
}

- (void)setVerticalFieldOfView:()Unit<geo:(double>)a3 :RadianUnitDescription
{
  v5 = *v3;
  if (*v3 != self->_verticalFieldOfView._value)
  {
    self->_verticalFieldOfView._value = v5;
    self->_tanHalfVerticalFOV = tan(v5 * 0.5);

    [(VKCamera *)self setNeedsUpdate];
  }
}

- (void)setAspectRatio:(double)a3
{
  if (self->_aspectRatio != a3)
  {
    self->_aspectRatio = a3;
    [(VKCamera *)self setNeedsUpdate];
  }
}

- (void)setOrientation:(const void *)a3
{
  v4 = *&self->_transform._rotation._imaginary._e[0] == *a3 && *&self->_transform._rotation._imaginary._e[1] == *(a3 + 1) && *&self->_transform._rotation._imaginary._e[2] == *(a3 + 2);
  if (!v4 || self->_transform._rotation._scalar != *(a3 + 3))
  {
    v5 = 42;
    v6 = a3;
    do
    {
      v7 = *v6++;
      *(&self->super.isa + v5++) = v7;
    }

    while (v5 != 45);
    self->_transform._rotation._scalar = *(a3 + 3);
    [(VKCamera *)self setNeedsUpdate];
  }
}

- ($7C969B71DD53AF2675E9F7E8E727D903)frustum
{
  result = [(VKCamera *)self updateIfNeeded];
  v6 = *&self->_frustum.height;
  *&retstr->var0 = *&self->_frustum.orthographic;
  *&retstr->var2 = v6;
  *&retstr->var4 = *&self->_frustum.far;
  return result;
}

- (void)setTransform:(const void *)a3
{
  v3 = (a3 + 24);
  v5 = *(a3 + 3) == *&self->_transform._rotation._imaginary._e[0] && *(a3 + 4) == *&self->_transform._rotation._imaginary._e[1] && *(a3 + 5) == *&self->_transform._rotation._imaginary._e[2];
  if (!v5 || *(a3 + 6) != self->_transform._rotation._scalar || (*a3 == *&self->_transform._translation._e[0] ? (v6 = *(a3 + 1) == *&self->_transform._translation._e[1]) : (v6 = 0), v6 ? (v7 = *(a3 + 2) == *&self->_transform._translation._e[2]) : (v7 = 0), !v7))
  {
    for (i = 42; i != 45; ++i)
    {
      v9 = *v3++;
      *(&self->super.isa + i) = v9;
    }

    self->_transform._rotation._scalar = *(a3 + 6);
    for (j = 39; j != 42; ++j)
    {
      v11 = *a3;
      a3 = a3 + 8;
      *(&self->super.isa + j) = v11;
    }

    [(VKCamera *)self setNeedsUpdate];
  }
}

- (void)setPosition:(const void *)a3
{
  v13 = *a3;
  v15 = *(a3 + 2);
  v3 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (*a3 == v3.i64[0] && *(a3 + 1) == v3.i64[1] && *(a3 + 2) == 0x7FF8000000000000)
  {
    v11 = [MEMORY[0x1E69A2398] sharedPlatform];
    v12 = [v11 isInternalInstall];

    if (v12)
    {
      NSLog(@"Attempt to set camera position set to NANs (%f, %f, %f)! Bailing", v13, *&v15);
    }
  }

  else
  {
    v6 = fmax(v15, 0.0);
    v16 = v6;
    v7 = *&v13 - floor(*&v13);
    if (v7 < 0.0)
    {
      v7 = v7 + 1.0;
    }

    v8 = fmin(fmax(*(&v13 + 1), self->_tanHalfVerticalFOV * v6), 1.0 - self->_tanHalfVerticalFOV * v6);
    *&v14 = v7;
    *(&v14 + 1) = v8;
    if (*&self->_transform._translation._e[0] != *&v7 || *&self->_transform._translation._e[1] != *&v8 || *&self->_transform._translation._e[2] != *&v16)
    {
      *self->_transform._translation._e = v14;
      self->_transform._translation._e[2] = v16;

      [(VKCamera *)self setNeedsUpdate];
    }
  }
}

- (Mercator3<double>)mercatorPosition
{
  [(VKCamera *)self updateIfNeeded];
  v3 = self->_transform._translation._e[0];
  v4 = self->_transform._translation._e[1];
  v5 = exp(v4 * 6.28318531 + -3.14159265);
  v6 = atan(v5) * 2.0 + -1.57079633;
  v7 = cos(v6 + v6) * -559.82 + 111132.92;
  v8 = v7 + cos(v6 * 4.0) * 1.175;
  v9 = v8 + cos(v6 * 6.0) * -0.0023;
  v10 = v6 * 0.5;
  v11 = tan(v6 * 0.5 + 0.78103484);
  v12 = log(v11);
  v13 = tan(v10 + 0.789761487);
  v14 = v9 * self->_transform._translation._e[2] / fabs((log(v13) - v12) * 0.159154943);
  v15 = v3;
  v16 = v4;
  result._e[2] = v14;
  result._e[1] = v16;
  result._e[0] = v15;
  return result;
}

- (void)setMercatorPosition:(const void *)a3
{
  v5 = exp(*(a3 + 1) * 6.28318531 + -3.14159265);
  v6 = atan(v5) * 2.0 + -1.57079633;
  v7 = cos(v6 + v6) * -559.82 + 111132.92;
  v8 = v7 + cos(v6 * 4.0) * 1.175;
  v9 = v8 + cos(v6 * 6.0) * -0.0023;
  v10 = v6 * 0.5;
  v11 = tan(v6 * 0.5 + 0.78103484);
  v12 = log(v11);
  v13 = tan(v10 + 0.789761487);
  v14 = log(v13);
  v16 = *(a3 + 2);
  v15 = *a3;
  v16 = fabs((v14 - v12) * 0.159154943) * v16 / v9;
  [(VKCamera *)self setPosition:&v15];
  [(VKCamera *)self setNeedsUpdate];
}

- (void)_setPosition:(const void *)a3
{
  for (i = 39; i != 42; ++i)
  {
    v4 = *a3;
    a3 = a3 + 8;
    *(&self->super.isa + i) = v4;
  }

  [(VKCamera *)self setNeedsUpdate];
}

- (id)descriptionDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = VKCamera;
  v5 = [(VKCamera *)&v17 description];
  v6 = [v4 stringWithFormat:@"%@", v5];
  [v3 setObject:v6 forKey:@"Super: VKCamera"];

  v7 = MEMORY[0x1E696AEC0];
  gm::Matrix<double,3,1>::description(&__p, &self->_transform);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v9 = [v7 stringWithFormat:@"%s\n", p_p];
  [v3 setObject:v9 forKey:@"position"];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f, %f, %f, %f", *&self->_transform._rotation._imaginary._e[0], *&self->_transform._rotation._imaginary._e[1], *&self->_transform._rotation._imaginary._e[2], gm::Quaternion<double>::angle(&self->_transform._rotation)];
  [v3 setObject:v10 forKey:@"orientation quaternion"];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.9f, height: %.9f, near: %.9f, far: %.9f", *&self->_width, *&self->_height, *&self->_near, *&self->_far];
  [v3 setObject:v11 forKey:@"Frustum width"];

  v12 = MEMORY[0x1E696AEC0];
  gm::Matrix<double,4,4>::description(&__p, &self->_scaledViewProjectionMatrix);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__p;
  }

  else
  {
    v13 = __p.__r_.__value_.__r.__words[0];
  }

  v14 = [v12 stringWithFormat:@"%s", v13];
  [v3 setObject:v14 forKey:@"view projection matrix"];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = VKCamera;
  v4 = [(VKCamera *)&v10 description];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  gm::Matrix<double,3,1>::description(&__p, &self->_transform);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  [v5 appendFormat:@"position: %s\n", p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v5 appendFormat:@"orientation quaternion: %f, %f, %f, %f\n", *&self->_transform._rotation._imaginary._e[0], *&self->_transform._rotation._imaginary._e[1], *&self->_transform._rotation._imaginary._e[2], gm::Quaternion<double>::angle(&self->_transform._rotation)];
  [v5 appendFormat:@"Frustum width: %.9f, height: %.9f, near: %.9f, far: %.9f\n", *&self->_width, *&self->_height, *&self->_near, *&self->_far];
  gm::Matrix<double,4,4>::description(&__p, &self->_scaledViewProjectionMatrix);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  [v5 appendFormat:@"view projection matrix:\n%s\n", v7];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

- (VKCamera)initWithRunLoopController:(RunLoopController *)a3
{
  v19.receiver = self;
  v19.super_class = VKCamera;
  v4 = [(VKCamera *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_runLoopController = a3;
    v6 = objc_alloc_init(VKViewVolume);
    viewVolume = v5->_viewVolume;
    v5->_viewVolume = v6;

    v8 = objc_alloc_init(VKFootprint);
    footprint = v5->_footprint;
    v5->_footprint = v8;

    v5->_frustum.orthographic = 1;
    __asm { FMOV            V0.2D, #1.0 }

    *&v5->_frustum.width = _Q0;
    *&v5->_frustum.near = xmmword_1B33B0530;
    v5->_frustum.horizontalOffset = 0.0;
    v5->_transform._rotation._imaginary._e[0] = 0.0;
    v5->_transform._rotation._imaginary._e[1] = 0.0;
    v5->_transform._rotation._imaginary._e[2] = 0.0;
    v5->_transform._rotation._scalar = 1.0;
    v5->_transform._translation._e[0] = 0.5;
    *&v5->_transform._translation._e[1] = xmmword_1B33B06A0;
    v5->_verticalFieldOfView._value = 0.523598776;
    v15 = tan(0.261799388);
    v5->_tanHalfHorizFOV = v15;
    v5->_tanHalfVerticalFOV = v15;
    v5->_aspectRatio = 1.0;
    v5->_needsUpdate = 1;
    *&v5->_maxHeight = xmmword_1B33B06B0;
    v5->_canonicalPitch = 1.31946891;
    v5->_ndcZNear = -1.0;
    v16 = [[VKCameraRegionRestriction alloc] initWithMapRegion:0];
    regionRestriction = v5->_regionRestriction;
    v5->_regionRestriction = v16;

    v5->_nearFarReset = 1;
  }

  return v5;
}

- (void)setHorizontalOffset:(double)a3
{
  if (self->_horizontalOffset != a3)
  {
    self->_horizontalOffset = a3;
    [(VKCamera *)self setNeedsUpdate];
  }
}

@end