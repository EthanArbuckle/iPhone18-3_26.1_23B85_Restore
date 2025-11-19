@interface VKMapGestureCameraController
- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double;
- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double delta:()3;
- (VKMapGestureCameraController)initWithCameraController:(id)a3;
- (VKMovableCamera)moveableCamera;
- (id).cxx_construct;
- (void)beginPitch:(CGPoint)a3;
- (void)endZoom:(CGPoint)a3;
- (void)updatePan:(CGPoint)a3 lastScreenPoint:(CGPoint)a4;
- (void)updatePitch:(CGPoint)a3 degrees:(double)a4;
- (void)updatePitch:(CGPoint)a3 translation:(double)a4;
- (void)updateRotate:(double)a3 atScreenPoint:(CGPoint)a4;
- (void)updateZoom:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5;
@end

@implementation VKMapGestureCameraController

- (id).cxx_construct
{
  *(self + 232) = 0;
  *(self + 240) = 0;
  *(self + 248) = 0;
  *(self + 256) = 0;
  return self;
}

- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double delta:()3
{
  v4 = a4._e[2];
  v5 = a4._e[1];
  v6 = a4._e[0];
  v7 = a3._e[2];
  v8 = a3._e[1];
  v9 = a3._e[0];
  *&v40.var1 = a3;
  *(&v40.var0._rotation._imaginary + 8) = a4;
  v11 = [(VKMapGestureCameraController *)self moveableCamera];
  v12 = [v11 regionRestriction];
  v13 = [v12 isEmpty];

  if (v13)
  {
    for (i = 0; i != 3; ++i)
    {
      *(&v35 + i * 8) = v40.var0._rotation._imaginary._e[i + 1] + *(&v40.var1 + i * 8);
    }

    v16 = *(&v35 + 1);
    v15 = *&v35;
    v17 = *&v36;
  }

  else
  {
    if (v11)
    {
      [v11 cameraState];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
    [WeakRetained centerScreenPoint];
    VKCameraMakeGroundPoint(&v40, v41, v19, &v35);

    [v11 groundPoint];
    v34[0] = v20;
    v34[1] = v21;
    v34[2] = v22;
    if ((LOBYTE(v40.var0._rotation._imaginary._e[0]) & 1) == 0)
    {
      v33 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v33);
    }

    for (j = 0; j != 3; ++j)
    {
      *(&v35 + j * 8) = v40.var0._translation._e[j] - *&v34[j];
    }

    v24 = v35;
    v25 = [v11 regionRestriction];
    [v25 clampedPositionForOrigin:*&v24 + v9 delta:{*(&v24 + 1) + v8, v6, v5}];
    v27 = v26;
    v29 = v28;

    v15 = v27 - *&v24;
    v16 = v29 - *(&v24 + 1);
    v17 = v4 + v7;
  }

  v30 = v15;
  v31 = v16;
  v32 = v17;
  result._e[2] = v32;
  result._e[1] = v31;
  result._e[0] = v30;
  return result;
}

- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double
{
  v3 = a3._e[2];
  v4 = a3._e[1];
  v5 = a3._e[0];
  v7 = [(VKMapGestureCameraController *)self moveableCamera];
  v8 = [v7 regionRestriction];
  v9 = [v8 isEmpty];

  if ((v9 & 1) == 0)
  {
    if (v7)
    {
      [v7 cameraState];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
    [WeakRetained centerScreenPoint];
    VKCameraMakeGroundPoint(&v28, v29, v11, v27);

    [v7 groundPoint];
    v26[0] = v12;
    v26[1] = v13;
    v26[2] = v14;
    if ((LOBYTE(v28.var0._rotation._imaginary._e[0]) & 1) == 0)
    {
      v25 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v25);
    }

    for (i = 0; i != 3; ++i)
    {
      *(v27 + i * 8) = v28.var0._translation._e[i] - *&v26[i];
    }

    v16 = v27[0];
    v17 = [v7 regionRestriction];
    [v17 clampedPosition:{*&v16 + v5, *(&v16 + 1) + v4}];
    v19 = v18;
    v21 = v20;

    v5 = v19 - *&v16;
    v4 = v21 - *(&v16 + 1);
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  result._e[2] = v24;
  result._e[1] = v23;
  result._e[0] = v22;
  return result;
}

- (void)updatePitch:(CGPoint)a3 degrees:(double)a4
{
  v6 = [(VKMapGestureCameraController *)self moveableCamera:a3.x];
  v7 = a4 * 0.0174532925;
  self->_isPitchIncreasing = self->_currentPitch < a4 * 0.0174532925;
  [v6 maxPitchRadian];
  v9 = v8;
  [v6 maxPitchRadian];
  v11 = v10;
  [v6 maxPitchRadian];
  v13 = v12;
  if (v9 == 0.0)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0.0698131701;
  }

  v15 = rubberBandOffsetForOffset(v7, v11, 0.0, v14);
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v17 = [WeakRetained isPitched];

  [v6 pitchRadian];
  v19 = v18;
  [v6 rightVector];
  v20 = fmin(fmax(v15, 0.0), v13 + 0.0698131701);
  v47[0] = v21;
  v47[1] = v22;
  v47[2] = v23;
  gm::quaternionFromAngleAxis<double>(v48, v47, v20 - v19);
  gm::Quaternion<double>::operator*(v47, v48, [v6 orientation]);
  v24 = objc_loadWeakRetained(&self->super._cameraController);
  [v24 centerScreenPoint];
  if (v6)
  {
    [v6 groundPointFromScreenPoint:?];
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  if (BYTE8(v46))
  {
    *&v43 = gm::rotateAboutPoint<double>([v6 position], v48, &v45);
    *(&v43 + 1) = v25;
    *&v44 = v26;
    [v6 setPosition:&v43];
    [v6 setOrientation:v47];
  }

  else
  {
    [v6 setOrientation:v47];
    v27 = objc_loadWeakRetained(&self->super._cameraController);
    [v27 centerScreenPoint];
    if (v6)
    {
      [v6 groundPointFromScreenPoint:?];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    if ((BYTE8(v44) & 1) == 0)
    {
      v39 = std::__throw_bad_optional_access[abi:nn200100]();
      v40 = self;
      v41 = v39;

      _Unwind_Resume(v41);
    }

    v28 = [v6 position];
    for (i = 0; i != 3; ++i)
    {
      *&v49[i] = *(&v43 + i * 8) - *(v28 + i * 8);
    }

    v31 = *v49;
    v30 = *&v49[1];
    v32 = *[v6 position];
    v33 = *([v6 position] + 8);
    v34 = *([v6 position] + 16);
    v42[0] = v32 - v31;
    v42[1] = v33 - v30;
    v42[2] = v34;
    [v6 setPosition:v42];
  }

  self->_currentPitch = v20;
  v35 = objc_loadWeakRetained(&self->super._cameraController);
  v36 = [v35 isPitched];

  if (!(v17 & 1 | ((v36 & 1) == 0)))
  {
    v37 = objc_loadWeakRetained(&self->super._cameraController);
    v38 = [v37 cameraDelegate];
    [v38 mapLayerDidBecomePitched:1];
    goto LABEL_20;
  }

  if (!(v36 & 1 | ((v17 & 1) == 0)))
  {
    v37 = objc_loadWeakRetained(&self->super._cameraController);
    v38 = [v37 cameraDelegate];
    [v38 mapLayerDidBecomePitched:0];
LABEL_20:
  }
}

- (void)updatePitch:(CGPoint)a3 translation:(double)a4
{
  v6 = [(VKMapGestureCameraController *)self moveableCamera:a3.x];
  v7 = v6;
  v8 = (a4 > 0.0) - (a4 < 0.0);
  v9 = fabs(a4);
  self->_isPitchIncreasing = v8 < 0;
  beganPitch = self->_beganPitch;
  if (v8 >= 0)
  {
    v11 = -v9;
  }

  else
  {
    v11 = v9;
  }

  [v6 maxPitchRadian];
  v13 = v12;
  [v7 maxPitchRadian];
  v15 = v14;
  [v7 maxPitchRadian];
  v17 = v16;
  if (v13 == 0.0)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.0698131701;
  }

  v19 = rubberBandOffsetForOffset(beganPitch + v11, v15, 0.0, v18);
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v21 = [WeakRetained isPitched];

  [v7 pitchRadian];
  v23 = v22;
  [v7 rightVector];
  v24 = fmin(fmax(v19, 0.0), v17 + 0.0698131701);
  v51[0] = v25;
  v51[1] = v26;
  v51[2] = v27;
  gm::quaternionFromAngleAxis<double>(v52, v51, v24 - v23);
  gm::Quaternion<double>::operator*(v51, v52, [v7 orientation]);
  v28 = objc_loadWeakRetained(&self->super._cameraController);
  [v28 centerScreenPoint];
  if (v7)
  {
    [v7 groundPointFromScreenPoint:?];
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  if (BYTE8(v50))
  {
    *&v47 = gm::rotateAboutPoint<double>([v7 position], v52, &v49);
    *(&v47 + 1) = v29;
    *&v48 = v30;
    [v7 setPosition:&v47];
    [v7 setOrientation:v51];
  }

  else
  {
    [v7 setOrientation:v51];
    v31 = objc_loadWeakRetained(&self->super._cameraController);
    [v31 centerScreenPoint];
    if (v7)
    {
      [v7 groundPointFromScreenPoint:?];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    if ((BYTE8(v48) & 1) == 0)
    {
      v43 = std::__throw_bad_optional_access[abi:nn200100]();
      v44 = self;
      v45 = v43;

      _Unwind_Resume(v45);
    }

    v32 = [v7 position];
    for (i = 0; i != 3; ++i)
    {
      *&v53[i] = *(&v47 + i * 8) - *(v32 + i * 8);
    }

    v35 = *v53;
    v34 = *&v53[1];
    v36 = *[v7 position];
    v37 = *([v7 position] + 8);
    v38 = *([v7 position] + 16);
    v46[0] = v36 - v35;
    v46[1] = v37 - v34;
    v46[2] = v38;
    [v7 setPosition:v46];
  }

  self->_currentPitch = v24;
  v39 = objc_loadWeakRetained(&self->super._cameraController);
  v40 = [v39 isPitched];

  if (!(v21 & 1 | ((v40 & 1) == 0)))
  {
    v41 = objc_loadWeakRetained(&self->super._cameraController);
    v42 = [v41 cameraDelegate];
    [v42 mapLayerDidBecomePitched:1];
    goto LABEL_23;
  }

  if (!(v40 & 1 | ((v21 & 1) == 0)))
  {
    v41 = objc_loadWeakRetained(&self->super._cameraController);
    v42 = [v41 cameraDelegate];
    [v42 mapLayerDidBecomePitched:0];
LABEL_23:
  }
}

- (void)beginPitch:(CGPoint)a3
{
  v5 = [(VKMapGestureCameraController *)self moveableCamera:a3.x];
  [v5 pitchRadian];
  self->_beganPitch = v4;
}

- (void)updateRotate:(double)a3 atScreenPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(VKMapGestureCameraController *)self moveableCamera];
  v9 = v8;
  if (v8)
  {
    [v8 groundPointFromScreenPoint:{x, y}];
    if (v24)
    {
      v10 = a3 * 0.5;
      v11 = sin(v10);
      for (i = 0; i != 24; i += 8)
      {
        *(&v25 + i) = *(&VKVectorZAxis + i) * v11;
      }

      v20 = v25;
      v21 = v26;
      v22 = cos(v10);
      v13 = [v9 position];
      if ((v24 & 1) == 0)
      {
        v17 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v17);
      }

      [(VKMapGestureCameraController *)self positionClampedToCameraRestriction:gm::rotateAboutPoint<double>(v13, &v20, v23)];
      v19[0] = v14;
      v19[1] = v15;
      v19[2] = v16;
      [v9 setPosition:v19];
      [v9 setOrientation:{v18, gm::Quaternion<double>::operator*(v18, &v20, objc_msgSend(v9, "orientation"))}];
    }
  }
}

- (void)updatePan:(CGPoint)a3 lastScreenPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(VKMapGestureCameraController *)self moveableCamera];
  LOBYTE(v49) = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v11 = [WeakRetained isPitched];

  if (v11)
  {
    [v9 pitchRadian];
    v13 = v12;
    [v9 rightVector];
    v36.var0._rotation._imaginary._e[1] = v14;
    v36.var0._rotation._imaginary._e[2] = v15;
    v36.var0._rotation._scalar = v16;
    gm::quaternionFromAngleAxis<double>(v46, &v36.var0._rotation._imaginary._e[1], -v13);
    gm::Quaternion<double>::operator*(&v43, v46, [v9 orientation]);
    v17 = objc_loadWeakRetained(&self->super._cameraController);
    [v17 centerScreenPoint];
    if (v9)
    {
      [v9 groundPointFromScreenPoint:?];
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    if (BYTE8(v42))
    {
      v20 = [v9 position];
      if ((BYTE8(v42) & 1) == 0)
      {
        v34 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v34);
      }

      v22 = gm::rotateAboutPoint<double>(v20, v46, &v41);
      v24 = v23;
      v25 = v21;
      if (v9)
      {
        [v9 cameraState];
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
      }

      *&v36.var1 = v43;
      v36.var3 = v44;
      v37 = v45;
      v36.var0._rotation._imaginary._e[1] = v22;
      v36.var0._rotation._imaginary._e[2] = v24;
      v36.var0._rotation._scalar = v25;
      v51.x = v7;
      v51.y = v6;
      VKCameraMakeGroundPoint(&v36, v51, v21, &v36.var0._rotation._imaginary._e[1]);
      var1_low = LOBYTE(v36.var0._rotation._imaginary._e[0]);
      if (LOBYTE(v36.var0._rotation._imaginary._e[0]))
      {
        v49 = *v36.var0._translation._e;
        scalar = v36.var0._translation._e[2];
      }

      v52.x = x;
      v52.y = y;
      VKCameraMakeGroundPoint(&v36, v52, v26, &v36.var0._rotation._imaginary._e[1]);
      if (LOBYTE(v36.var0._rotation._imaginary._e[0]))
      {
        v47 = *v36.var0._translation._e;
        v19 = v36.var0._translation._e[2];
LABEL_19:
        v48 = v19;
        if (var1_low)
        {
          for (i = 0; i != 3; ++i)
          {
            v36.var0._rotation._imaginary._e[i + 1] = *(&v47 + i * 8) - *(&v49 + i * 8);
          }

          v28 = v36.var0._rotation._imaginary._e[1];
          v29 = v36.var0._rotation._imaginary._e[2];
          v30 = [v9 position];
          [(VKMapGestureCameraController *)self positionClampedToCameraRestriction:*v30 delta:v30[1], v30[2], v28, v29, 0.0];
          v35[0] = v31;
          v35[1] = v32;
          v35[2] = v33;
          [v9 setPosition:v35];
          self->_panLastScreenPoint.x = v7;
          self->_panLastScreenPoint.y = v6;
        }
      }
    }
  }

  else if (v9)
  {
    [v9 groundPointFromScreenPoint:{v7, v6}];
    var1_low = LOBYTE(v36.var1);
    if (LOBYTE(v36.var1))
    {
      v49 = *&v36.var0._rotation._imaginary._e[1];
      scalar = v36.var0._rotation._scalar;
    }

    [v9 groundPointFromScreenPoint:{x, y}];
    if (LOBYTE(v36.var1))
    {
      v47 = *&v36.var0._rotation._imaginary._e[1];
      v19 = v36.var0._rotation._scalar;
      goto LABEL_19;
    }
  }
}

- (void)endZoom:(CGPoint)a3
{
  if (self->_zoomPreviousT.__engaged_)
  {
    self->_zoomPreviousT.__engaged_ = 0;
  }

  if (self->_rubberbandZoomStartFactor.__engaged_)
  {
    self->_rubberbandZoomStartFactor.__engaged_ = 0;
  }
}

- (void)updateZoom:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5
{
  y = a3.y;
  x = a3.x;
  v10 = [(VKMapGestureCameraController *)self moveableCamera];
  v11 = [(VKGestureCameraBehavior *)self allowsZoomRubberbanding];
  val = 1.0 - 1.0 / a4;
  if (v11 && self->_zoomPreviousT.__engaged_)
  {
    val = self->_zoomPreviousT.var0.__val_;
  }

  if (v10)
  {
    [v10 groundPointFromScreenPoint:{x, y}];
    if (v42)
    {
      v13 = [v10 position];
      v14 = 0;
      v15 = val;
      v16 = v15;
      v17 = (v13[1].f64[0] - v41 * v16) / (1.0 - v16);
      v18 = 1.0 - 1.0 / a5;
      v38 = vdivq_f64(vmlsq_lane_f64(*v13, v40, v16, 0), vdupq_lane_s64(COERCE__INT64(1.0 - v16), 0));
      v43 = v38;
      v44 = v17;
      do
      {
        v43.f64[v14] = v43.f64[v14] + (v40.f64[v14] - v43.f64[v14]) * v18;
        ++v14;
      }

      while (v14 != 3);
      v20 = v43.f64[1];
      v19 = v43.f64[0];
      v21 = v44;
      if (v11 && (([v10 minHeight], v21 < v22) || (objc_msgSend(v10, "maxHeight"), v21 > v23)))
      {
        p_rubberbandZoomStartFactor = &self->_rubberbandZoomStartFactor;
        if (self->_rubberbandZoomStartFactor.__engaged_)
        {
          [v10 position];
          if (!self->_rubberbandZoomStartFactor.__engaged_ || (v25 = p_rubberbandZoomStartFactor->var0.__val_, GEOConfigGetDouble(), v27 = rubberBandOffsetForOffset(v18, 1.0 - 1.0 / v25, 1.0 - 1.0 / v25, v26), (v42 & 1) == 0))
          {
            v37 = std::__throw_bad_optional_access[abi:nn200100]();

            _Unwind_Resume(v37);
          }

          v18 = v27;
          v28 = 0;
          v43 = v38;
          v44 = v17;
          do
          {
            v43.f64[v28] = v43.f64[v28] + (v40.f64[v28] - v43.f64[v28]) * v27;
            ++v28;
          }

          while (v28 != 3);
          v20 = v43.f64[1];
          v19 = v43.f64[0];
          v29 = v44;
          goto LABEL_22;
        }

        p_rubberbandZoomStartFactor->var0.__val_ = a5;
        self->_rubberbandZoomStartFactor.__engaged_ = 1;
        [v10 minHeight];
        v31 = v33;
        [v10 maxHeight];
      }

      else
      {
        if (self->_rubberbandZoomStartFactor.__engaged_)
        {
          self->_rubberbandZoomStartFactor.__engaged_ = 0;
        }

        [v10 minHeight];
        v31 = v30;
        [v10 maxHeight];
      }

      v29 = fmin(fmax(v21, v31), v32);
LABEL_22:
      self->_zoomPreviousT.var0.__val_ = v18;
      self->_zoomPreviousT.__engaged_ = 1;
      if (v29 != *([v10 position] + 16))
      {
        [(VKMapGestureCameraController *)self positionClampedToCameraRestriction:v19, v20, v29];
        v39[0] = v34;
        v39[1] = v35;
        v39[2] = v36;
        [v10 setPosition:v39];
      }
    }
  }
}

- (VKMapGestureCameraController)initWithCameraController:(id)a3
{
  v4.receiver = self;
  v4.super_class = VKMapGestureCameraController;
  return [(VKGestureCameraBehavior *)&v4 initWithCameraController:a3];
}

- (VKMovableCamera)moveableCamera
{
  moveableCamera = self->_moveableCamera;
  if (moveableCamera)
  {
    v3 = moveableCamera;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
    v3 = [WeakRetained vkCamera];
  }

  return v3;
}

@end