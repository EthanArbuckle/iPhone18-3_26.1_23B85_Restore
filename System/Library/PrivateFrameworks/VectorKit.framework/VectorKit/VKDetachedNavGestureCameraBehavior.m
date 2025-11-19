@interface VKDetachedNavGestureCameraBehavior
- (VKDetachedNavGestureCameraBehavior)initWithNavCameraController:(id)a3;
- (void)beginPitch:(CGPoint)a3;
- (void)dealloc;
- (void)tapZoom:(CGPoint)a3 levels:(double)a4 completionHandler:(id)a5;
- (void)updatePan:(CGPoint)a3 lastScreenPoint:(CGPoint)a4;
- (void)updatePitch:(CGPoint)a3 degrees:(double)a4;
- (void)updatePitch:(CGPoint)a3 translation:(double)a4;
- (void)updateRotate:(double)a3 atScreenPoint:(CGPoint)a4;
- (void)updateZoom:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5;
@end

@implementation VKDetachedNavGestureCameraBehavior

- (void)updatePitch:(CGPoint)a3 degrees:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained camera];
    if (*(&v40[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v40[0] + 1));
    }

    if (*&v40[0])
    {
      v8 = objc_loadWeakRetained(&self->super._cameraController);
      v9 = v8;
      if (v8)
      {
        [v8 camera];
        v10 = *(&v35 + 1);
        v8 = v35;
      }

      else
      {
        v10 = 0;
        v35 = 0uLL;
      }

      v11 = gdc::Camera::cameraFrame(v8);
      v12 = *(v11 + 16);
      v40[0] = *v11;
      v40[1] = v12;
      *v34 = v12;
      v41 = *(v11 + 32);
      v42 = *(v11 + 48);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(&v35, v40);
      v37 = v35;
      v38 = v36;
      geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v39, &v37);
      v13 = objc_loadWeakRetained(&self->super._cameraController);
      v14 = COERCE_DOUBLE(md::MapDataAccess::heightAtCoordinate([v13 mapDataAccess], v39));
      if ((v15 & 0x100) == 0)
      {
        v14 = v34[0];
      }

      v16 = v14 + 10.0;

      v17 = acos((v16 - v34[0]) / v34[1]);
      v18 = objc_loadWeakRetained(&self->_navCameraController);
      v19 = v18;
      if (v18)
      {
        [v18 maxCameraPitch];
        v20 = *&v35;
      }

      else
      {
        *&v35 = 0;
        v20 = 0.0;
      }

      v21 = objc_loadWeakRetained(&self->_navCameraController);
      v22 = v21;
      if (v21)
      {
        [v21 minCameraPitch];
        v23 = *&v37;
      }

      else
      {
        *&v37 = 0;
        v23 = 0.0;
      }

      v24 = a4 * 0.0174532925;
      v25 = 0.0698131701;
      v26 = rubberBandOffsetForOffset(v24, v20, v23, 0.0698131701);

      v27 = objc_loadWeakRetained(&self->_navCameraController);
      v28 = v27;
      if (v27)
      {
        [v27 minCameraPitch];
        v29 = *&v35;
      }

      else
      {
        *&v35 = 0;
        v29 = 0.0;
      }

      v30 = objc_loadWeakRetained(&self->_navCameraController);
      v31 = v30;
      if (v30)
      {
        [v30 maxCameraPitch];
        v25 = *&v37 + 0.0698131701;
      }

      else
      {
        *&v37 = 0;
      }

      *&v41 = fmin(fmax(v26, v29), fmin(v17, v25));
      v32 = objc_loadWeakRetained(&self->super._cameraController);
      v33 = v32;
      if (v32)
      {
        [v32 camera];
        v32 = v35;
      }

      else
      {
        v35 = 0uLL;
      }

      gdc::Camera::setCameraFrame(v32, v40);
      if (*(&v35 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v35 + 1));
      }
    }
  }
}

- (void)updatePitch:(CGPoint)a3 translation:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained camera];
    if (*(&v41[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v41[0] + 1));
    }

    if (*&v41[0])
    {
      v8 = objc_loadWeakRetained(&self->super._cameraController);
      v9 = v8;
      if (v8)
      {
        [v8 camera];
        v10 = *(&v36 + 1);
        v8 = v36;
      }

      else
      {
        v10 = 0;
        v36 = 0uLL;
      }

      v11 = gdc::Camera::cameraFrame(v8);
      v12 = *(v11 + 16);
      v41[0] = *v11;
      v41[1] = v12;
      *v35 = v12;
      v42 = *(v11 + 32);
      v43 = *(v11 + 48);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(&v36, v41);
      v38 = v36;
      v39 = v37;
      geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v40, &v38);
      v13 = objc_loadWeakRetained(&self->super._cameraController);
      v14 = COERCE_DOUBLE(md::MapDataAccess::heightAtCoordinate([v13 mapDataAccess], v40));
      if ((v15 & 0x100) == 0)
      {
        v14 = v35[0];
      }

      v16 = v14 + 10.0;

      v17 = acos((v16 - v35[0]) / v35[1]);
      value = self->_startPitch._value;
      v19 = objc_loadWeakRetained(&self->_navCameraController);
      v20 = v19;
      if (v19)
      {
        [v19 maxCameraPitch];
        v21 = *&v36;
      }

      else
      {
        *&v36 = 0;
        v21 = 0.0;
      }

      v22 = objc_loadWeakRetained(&self->_navCameraController);
      v23 = v22;
      if (v22)
      {
        [v22 minCameraPitch];
        v24 = *&v38;
      }

      else
      {
        *&v38 = 0;
        v24 = 0.0;
      }

      v25 = value - a4;
      v26 = 0.0698131701;
      v27 = rubberBandOffsetForOffset(v25, v21, v24, 0.0698131701);

      v28 = objc_loadWeakRetained(&self->_navCameraController);
      v29 = v28;
      if (v28)
      {
        [v28 minCameraPitch];
        v30 = *&v36;
      }

      else
      {
        *&v36 = 0;
        v30 = 0.0;
      }

      v31 = objc_loadWeakRetained(&self->_navCameraController);
      v32 = v31;
      if (v31)
      {
        [v31 maxCameraPitch];
        v26 = *&v38 + 0.0698131701;
      }

      else
      {
        *&v38 = 0;
      }

      *&v42 = fmin(fmax(v27, v30), fmin(v17, v26));
      v33 = objc_loadWeakRetained(&self->super._cameraController);
      v34 = v33;
      if (v33)
      {
        [v33 camera];
        v33 = v36;
      }

      else
      {
        v36 = 0uLL;
      }

      gdc::Camera::setCameraFrame(v33, v41);
      if (*(&v36 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v36 + 1));
      }
    }
  }
}

- (void)beginPitch:(CGPoint)a3
{
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained camera];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    if (v9)
    {
      v6 = objc_loadWeakRetained(&self->super._cameraController);
      v7 = v6;
      if (v6)
      {
        [v6 camera];
        v8 = *(gdc::Camera::cameraFrame(v9) + 32);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }
      }

      else
      {
        v8 = *(gdc::Camera::cameraFrame(0) + 32);
      }

      self->_startPitch._value = v8;
    }
  }
}

- (void)updateRotate:(double)a3 atScreenPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained camera];
    if (*(&v107 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v107 + 1));
    }

    if (v107)
    {
      v10 = objc_loadWeakRetained(&self->super._cameraController);
      v11 = [v10 mapDataAccess];

      v12 = objc_loadWeakRetained(&self->super._cameraController);
      v13 = v12;
      if (v12)
      {
        [v12 camera];
        v14 = *(&v107 + 1);
        v12 = v107;
      }

      else
      {
        v14 = 0;
        v107 = 0uLL;
      }

      v15 = gdc::Camera::cameraFrame(v12);
      v87 = *(v15 + 16);
      v88 = *v15;
      v100 = *v15;
      v101 = v87;
      __x = *(v15 + 32);
      v102 = __x;
      v16 = *(v15 + 48);
      v103 = v16;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      v17 = objc_loadWeakRetained(&self->_navCameraController);
      v18 = [v17 canvas];
      [v18 size];
      v20 = v19;
      v21 = objc_loadWeakRetained(&self->_navCameraController);
      v22 = [v21 canvas];
      [v22 size];
      v23.f64[0] = v20 * x;
      v23.f64[1] = v24 * (1.0 - y);
      v89 = v23;

      md::MapDataAccess::groundCoordinateForScreenPoint(&v97, v11, &v100, 0, 0, v89);
      v25 = v97;
      v26 = v99;
      if (v97 != -3.14159265 || v98 != -3.14159265 || v99 != 0.0)
      {
        v96[0] = v97;
        v96[1] = v98;
        v96[2] = v99;
        v28 = v87;
        v27 = v88;
        if (*(v11 + 8) != 1)
        {
          v112 = 0uLL;
          v113 = 0.0;
          LODWORD(v29) = *(v11 + 9);
          if ((LODWORD(v29) - 1) >= 3)
          {
            if (!*(v11 + 9))
            {
              __xc = v98;
              gdc::CameraFrame<geo::Radians,double>::toLookAtMercator(&v107, &v100);
              v120 = v107;
              v34 = *v110;
              v121 = v108;
              v118 = v109;
              v119 = *v110;
              v116 = *&v110[8];
              v117 = v111;
              v35 = tan(v25 * 0.5 + 0.785398163);
              v36 = log(v35);
              v37.f64[0] = __xc;
              v37.f64[1] = v36;
              __asm { FMOV            V1.2D, #0.5 }

              v114 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v37);
              v115 = v26;
              v43 = *&v109 * 6.28318531;
              v44 = exp(*(&v109 + 1) * 6.28318531 + -3.14159265);
              v45 = atan(v44) * 2.0 + -1.57079633;
              v46 = fmod(v43, 6.28318531);
              v47 = fmod(v46 + 6.28318531, 6.28318531);
              *&v112 = v45;
              *(&v112 + 1) = v47 + -3.14159265;
              v113 = v34;
              v121 = v121 * 40075017.0;
            }
          }

          else
          {
            __xb = v98;
            gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(&v107, &v100);
            v120 = v107;
            v29 = *v110;
            v121 = v108;
            v90 = v109;
            v118 = v109;
            v119 = *v110;
            v116 = *&v110[8];
            v117 = v111;
            v30 = __sincos_stret(v25);
            v31 = 6378137.0 / sqrt(v30.__sinval * v30.__sinval * -0.00669437999 + 1.0);
            v32 = (v31 + v26) * v30.__cosval;
            v33 = __sincos_stret(__xb);
            v114.f64[0] = v32 * v33.__cosval;
            v114.f64[1] = v32 * v33.__sinval;
            v115 = (v26 + v31 * 0.99330562) * v30.__sinval;
            v124 = v90;
            v125 = v29;
            geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v112, &v124);
            LOBYTE(v29) = *(v11 + 9);
          }

          *&v124 = md::MapDataAccess::upForCoordinate(LOBYTE(v29), v96);
          *(&v124 + 1) = v48;
          v125 = v49;
          v50 = a3 * 0.5;
          v51 = sin(v50);
          for (i = 0; i != 24; i += 8)
          {
            *(&v107 + i) = *(&v124 + i) * v51;
          }

          __xd = v107;
          v53 = v108;
          v54 = cos(v50);
          v104 = __xd;
          v105 = v53;
          v106 = v54;
          *&v120 = gm::rotateAboutPoint<double>(&v120, &v104, &v114);
          *(&v120 + 1) = v55;
          v121 = v56;
          *&v118 = gm::rotateAboutPoint<double>(&v118, &v104, &v114);
          *(&v118 + 1) = v57;
          v119 = v58;
          *&v116 = gm::rotateAboutPoint<double>(&v116, &v104, &v114);
          *(&v116 + 1) = v59;
          v117 = v60;
          v61 = md::MapDataAccess::upForCoordinate(LOBYTE(v29), &v112);
          v62 = 0;
          *v132 = v61;
          v132[1] = v63;
          v132[2] = v64;
          do
          {
            *(&v107 + v62) = *(&v118 + v62) - *(&v120 + v62);
            v62 += 8;
          }

          while (v62 != 24);
          v65 = 0;
          v130 = v107;
          v131 = v108;
          v66 = 0.0;
          do
          {
            v66 = v66 + *(&v130 + v65) * *(&v130 + v65);
            v65 += 8;
          }

          while (v65 != 24);
          v67 = 0;
          v68 = 0.0;
          do
          {
            v68 = v68 + *(&v130 + v67) * *(&v130 + v67);
            v67 += 8;
          }

          while (v67 != 24);
          v69 = 0;
          v70 = 1.0 / sqrt(v68);
          do
          {
            *(&v130 + v69) = *(&v130 + v69) * v70;
            v69 += 8;
          }

          while (v69 != 24);
          v71 = gm::Matrix<double,3,1>::normalized<int,void>(&v116);
          v72 = 0;
          *v129 = v71;
          v129[1] = v73;
          v129[2] = v74;
          v75 = 0.0;
          do
          {
            v75 = v75 + *(&v130 + v72 * 8) * *&v132[v72];
            ++v72;
          }

          while (v72 != 3);
          __xa = acos(fmin(fmax(-v75, -1.0), 1.0));
          v76 = cos(__xa);
          for (j = 0; j != 3; ++j)
          {
            *(&v107 + j * 8) = *&v129[j] * v76;
          }

          v124 = v107;
          v125 = v108;
          v78 = sin(__xa);
          for (k = 0; k != 24; k += 8)
          {
            *(&v107 + k) = *(&v130 + k) * v78;
          }

          v80 = 0;
          v122 = v107;
          v123 = v108;
          do
          {
            *(&v107 + v80) = *(&v122 + v80) + *(&v124 + v80);
            v80 += 8;
          }

          while (v80 != 24);
          v127 = v107;
          v128 = v108;
          *v110 = 0u;
          v109 = 0u;
          v107 = v112;
          v108 = v113;
          gdc::ViewDataAccess::rigidTransformForFrame(&v122, **(v11 + 16), &v107);
          geo::RigidTransform<double,double>::inverse(&v124, &v122);
          v81 = gm::Quaternion<double>::operator*(&v126, &v127);
          v83 = atan2(-v81, v82);
          v27 = v112;
          *&v28 = v113;
          *&v84 = __xa;
          *(&v28 + 1) = sqrt(v66);
          *(&v84 + 1) = v83;
          __x = v84;
          v16 = 0;
        }

        v100 = v27;
        v101 = v28;
        v102 = __x;
        v103 = v16;
        v85 = objc_loadWeakRetained(&self->super._cameraController);
        v86 = v85;
        if (v85)
        {
          [v85 camera];
          v85 = v107;
        }

        else
        {
          v107 = 0uLL;
        }

        gdc::Camera::setCameraFrame(v85, &v100);
        if (*(&v107 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v107 + 1));
        }
      }
    }
  }
}

- (void)updatePan:(CGPoint)a3 lastScreenPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained camera];
    if (v64 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v64);
    }

    if (v63 != 0.0)
    {
      v11 = objc_loadWeakRetained(&self->super._cameraController);
      v12 = [v11 mapDataAccess];

      v13 = COERCE_DOUBLE(objc_loadWeakRetained(&self->super._cameraController));
      v14 = v13;
      if (v13 == 0.0)
      {
        v15 = 0;
        v56 = 0.0;
        v57 = 0.0;
      }

      else
      {
        [*&v13 camera];
        v13 = v56;
        v15 = *&v57;
      }

      v16 = gdc::Camera::cameraFrame(*&v13);
      v18 = *v16;
      v17 = *(v16 + 8);
      v63 = *v16;
      v64 = *&v17;
      v47 = *&v17;
      v19 = *(v16 + 16);
      v65 = v19;
      v44 = *(v16 + 24);
      v66 = v44;
      v20 = *(v16 + 40);
      v21 = *(v16 + 48);
      v67 = v20;
      v68 = v21;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }

      v56 = v18;
      v57 = v47;
      v58 = v19;
      v59 = v44;
      v61 = v20;
      v62 = v21;
      v60 = 0;
      v22 = objc_loadWeakRetained(&self->_navCameraController);
      v23 = [v22 canvas];
      [v23 size];
      v25 = v24;
      v26 = objc_loadWeakRetained(&self->_navCameraController);
      v27 = [v26 canvas];
      [v27 size];
      v28.f64[0] = v25 * v7;
      v28.f64[1] = v29 * (1.0 - v6);
      v45 = v28;

      md::MapDataAccess::groundCoordinateForScreenPoint(&v53, v12, &v56, 0, 0, v45);
      v30 = objc_loadWeakRetained(&self->_navCameraController);
      v31 = [v30 canvas];
      [v31 size];
      v33 = v32;
      v34 = objc_loadWeakRetained(&self->_navCameraController);
      v35 = [v34 canvas];
      [v35 size];
      v36.f64[0] = v33 * x;
      v36.f64[1] = v37 * (1.0 - y);
      v46 = v36;

      md::MapDataAccess::groundCoordinateForScreenPoint(&v50, v12, &v56, 0, 0, v46);
      if ((v53 != -3.14159265 || v54 != -3.14159265 || v55 != 0.0) && (v50 != -3.14159265 || v51 != -3.14159265 || v52 != 0.0))
      {
        v63 = fmax(fmin((v18 + v50 - v53) * 57.2957795, 75.0), -75.0) * 0.0174532925;
        v38 = fmod(v51 - v54 + v47 + 3.14159265, 6.28318531);
        v64 = fmod(v38 + 6.28318531, 6.28318531) + -3.14159265;
        v39 = md::MapDataAccess::heightAtCoordinate(v12, &v63);
        if ((v40 & 0x100) != 0)
        {
          v41 = v39;
        }

        else
        {
          v41 = v19;
        }

        v65 = v41;
        v42 = objc_loadWeakRetained(&self->super._cameraController);
        v43 = v42;
        if (v42)
        {
          [v42 camera];
          v42 = v48;
        }

        else
        {
          v49 = 0;
        }

        gdc::Camera::setCameraFrame(v42, &v63);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v49);
        }
      }
    }
  }
}

- (void)updateZoom:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  if (WeakRetained)
  {
    v11 = WeakRetained;
    [WeakRetained camera];
    if (*(&v67 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v67 + 1));
    }

    if (v67)
    {
      v12 = objc_loadWeakRetained(&self->super._cameraController);
      v13 = [v12 mapDataAccess];

      v14 = COERCE_DOUBLE(objc_loadWeakRetained(&self->super._cameraController));
      v15 = v14;
      if (v14 == 0.0)
      {
        v16 = 0;
        v64 = 0.0;
        v65 = 0.0;
      }

      else
      {
        [*&v14 camera];
        v14 = v64;
        v16 = *&v65;
      }

      v17 = gdc::Camera::cameraFrame(*&v14);
      v58 = *(v17 + 16);
      v59 = *v17;
      v67 = *v17;
      v68 = v58;
      v69 = *(v17 + 32);
      v70 = *(v17 + 48);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }

      v18 = objc_loadWeakRetained(&self->_navCameraController);
      v19 = [v18 canvas];
      [v19 size];
      v21 = v20;
      v22 = objc_loadWeakRetained(&self->_navCameraController);
      v23 = [v22 canvas];
      [v23 size];
      v24.f64[0] = v21 * x;
      v24.f64[1] = v25 * (1.0 - y);
      v60 = v24;

      md::MapDataAccess::groundCoordinateForScreenPoint(&v64, v13, &v67, 0, 0, v60);
      if (v64 != -3.14159265 || v65 != -3.14159265 || v66 != 0.0)
      {
        v26 = objc_loadWeakRetained(&self->_navCameraController);
        [v26 minZoomHeight];
        v28 = v27;

        v29 = objc_loadWeakRetained(&self->_navCameraController);
        [v29 maxZoomHeight];
        v31 = v30;

        v32 = 1.0 - 1.0 / a4;
        v33 = v32;
        v34 = 1.0 / (1.0 - v32);
        v57 = v64;
        v35 = 1.0 - 1.0 / a5;
        v36 = fmod((*(&v59 + 1) - v65 * v32) * v34 + 3.14159265 + (v65 - (*(&v59 + 1) - v65 * v32) * v34) * v35, 6.28318531);
        v37 = fmod(v36 + 6.28318531, 6.28318531);
        v38 = objc_loadWeakRetained(&self->_navCameraController);
        [v38 minZoomHeight];
        v40 = v39;
        v61 = v28;
        v41 = objc_loadWeakRetained(&self->_navCameraController);
        [v41 maxZoomHeight];
        v43 = fmin(fmax(*(&v58 + 1) * v34 - *(&v58 + 1) * v34 * v35, v40), v42);

        v44 = *(&v58 + 1);
        if (vabdd_f64(v43, *(&v58 + 1)) > 1.0)
        {
          *&v67 = fmax(fmin(((*&v59 - v57 * v33) * v34 + (v57 - (*&v59 - v57 * v33) * v34) * v35) * 57.2957795, 75.0), -75.0) * 0.0174532925;
          *(&v67 + 1) = v37 + -3.14159265;
          *&v68 = v58;
          *(&v68 + 1) = v43;
          v45 = objc_loadWeakRetained(&self->super._cameraController);
          v46 = v45;
          if (v45)
          {
            [v45 camera];
            v45 = v62;
          }

          else
          {
            v63 = 0;
          }

          gdc::Camera::setCameraFrame(v45, &v67);
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v63);
          }

          v44 = v43;
        }

        v47 = objc_loadWeakRetained(&self->_navCameraController);
        [v47 minZoomHeight];
        v49 = v48;

        v50 = objc_loadWeakRetained(&self->_navCameraController);
        [v50 maxZoomHeight];
        v52 = v51;

        if (v61 >= *(&v58 + 1) == v49 < v44)
        {
          v53 = objc_loadWeakRetained(&self->_navCameraController);
          v54 = [v53 cameraDelegate];
          [v54 mapLayerCanZoomInDidChange:v49 < v44];
        }

        if (v31 <= *(&v58 + 1) == v52 > v44)
        {
          v55 = objc_loadWeakRetained(&self->_navCameraController);
          v56 = [v55 cameraDelegate];
          [v56 mapLayerCanZoomOutDidChange:v52 > v44];
        }
      }
    }
  }
}

- (void)tapZoom:(CGPoint)a3 levels:(double)a4 completionHandler:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  startZoomScale = self->_startZoomScale;
  v11 = exp2(a4);
  WeakRetained = objc_loadWeakRetained(&self->_navCameraController);
  [WeakRetained minZoomScale];
  v14 = v13;
  v15 = objc_loadWeakRetained(&self->_navCameraController);
  [v15 maxZoomScale];
  v17 = v16;

  [(VKAnimation *)self->_tapZoomAnimation stop];
  v18 = [[VKTimedAnimation alloc] initWithDuration:0.25];
  v19 = fmin(fmax(startZoomScale * v11, v14), v17);
  tapZoomAnimation = self->_tapZoomAnimation;
  self->_tapZoomAnimation = v18;

  v21 = self->_startZoomScale;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  *&v32[3] = v21;
  objc_initWeak(&location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __71__VKDetachedNavGestureCameraBehavior_tapZoom_levels_completionHandler___block_invoke;
  v29[3] = &unk_1E7B3D5A0;
  objc_copyWeak(v30, &location);
  v30[1] = *&v21;
  v30[2] = *&v19;
  v30[3] = *&x;
  v30[4] = *&y;
  v29[4] = v32;
  [(VKTimedAnimation *)self->_tapZoomAnimation setStepHandler:v29];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __71__VKDetachedNavGestureCameraBehavior_tapZoom_levels_completionHandler___block_invoke_2;
  v27 = &unk_1E7B3D578;
  v22 = v9;
  v28 = v22;
  [(VKAnimation *)self->_tapZoomAnimation setCompletionHandler:&v24];
  v23 = objc_loadWeakRetained(&self->_navCameraController);
  md::AnimationRunner::runAnimation([v23 animationRunner], &self->_tapZoomAnimation->super);

  objc_destroyWeak(v30);
  objc_destroyWeak(&location);
  _Block_object_dispose(v32, 8);
}

void __71__VKDetachedNavGestureCameraBehavior_tapZoom_levels_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 48) + (*(a1 + 56) - *(a1 + 48)) * a2;
    v7 = WeakRetained;
    [WeakRetained updateZoom:*(a1 + 64) oldFactor:*(a1 + 72) newFactor:{*(*(*(a1 + 32) + 8) + 24), v5}];
    *(*(*(a1 + 32) + 8) + 24) = v5;
    v6 = objc_loadWeakRetained(v7 + 23);
    [v6 startIgnoreStyleChangeTimer];

    WeakRetained = v7;
  }
}

uint64_t __71__VKDetachedNavGestureCameraBehavior_tapZoom_levels_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  [(VKAnimation *)self->_tapZoomAnimation stop];
  tapZoomAnimation = self->_tapZoomAnimation;
  self->_tapZoomAnimation = 0;

  v4.receiver = self;
  v4.super_class = VKDetachedNavGestureCameraBehavior;
  [(VKDetachedNavGestureCameraBehavior *)&v4 dealloc];
}

- (VKDetachedNavGestureCameraBehavior)initWithNavCameraController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VKDetachedNavGestureCameraBehavior;
  v5 = [(VKGestureCameraBehavior *)&v8 initWithCameraController:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navCameraController, v4);
    v6->super._notifyCameraStateChanges = 1;
    v6->_startZoomScale = 1.0;
    v6->_startPitch._value = 0.0;
  }

  return v6;
}

@end