@interface NUNIAstronomyRotationModel
- (BOOL)isAtHomeCoordinate;
- (NUNIAstronomyRotationModel)init;
- (NUNIAstronomyRotationModelObserver)observer;
- (NUNIRotatable)rotatable;
- (void)_update;
- (void)dealloc;
- (void)push:(NUNIAstronomyRotationModel *)self;
- (void)stop;
@end

@implementation NUNIAstronomyRotationModel

- (NUNIAstronomyRotationModel)init
{
  v6.receiver = self;
  v6.super_class = NUNIAstronomyRotationModel;
  v2 = [(NUNIAstronomyRotationModel *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_interactionSettings = &init_defaults;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(NUNIAstronomyRotationModel *)self stop];
  v3.receiver = self;
  v3.super_class = NUNIAstronomyRotationModel;
  [(NUNIAstronomyRotationModel *)&v3 dealloc];
}

- (BOOL)isAtHomeCoordinate
{
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);
  [WeakRetained homeCoordinate];
  v5 = v4;
  v7 = v6;

  v8 = objc_loadWeakRetained(&self->_rotatable);
  scene = [v8 scene];
  [scene offsetCoordinate];
  v11 = v10;
  v13 = v5 + v12;

  v14 = objc_loadWeakRetained(&self->_rotatable);
  [v14 centerCoordinate];
  v16 = v15;
  v18 = v17;

  v19 = v13;
  v20 = v16;
  if (vabds_f32(v19, v20) >= 0.001)
  {
    return 0;
  }

  v21 = v7 + v11;
  v22 = v18;
  return vabds_f32(v21, v22) < 0.001;
}

- (void)stop
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_state = 0;
  *self->_accumulatedPushVector = 0;
  *&self->_effectivePushDeceleration = 0;
  v4 = MEMORY[0x1E69E58C0];

  [v4 cancelPreviousPerformRequestsWithTarget:self];
}

- (void)_update
{
  v3 = CACurrentMediaTime();
  v4 = v3 - self->_previousDisplayLinkCallbackTime;
  v50 = v4;
  self->_previousDisplayLinkCallbackTime = v3;
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);
  [WeakRetained centerCoordinate];
  v47 = v7;
  v48 = v6;

  interactionSettings = [(NUNIAstronomyRotationModel *)self interactionSettings];
  v9 = interactionSettings;
  var1 = interactionSettings[1].var1;
  if (var1 == 0.0)
  {
    var0 = interactionSettings[1].var0;
LABEL_9:
    self->_effectivePushDeceleration = var0;
    goto LABEL_10;
  }

  v12 = v3 - self->_pushStartTime;
  if (var1 >= v12)
  {
    v13 = v3 - self->_pushStartTime;
  }

  else
  {
    v13 = interactionSettings[1].var1;
  }

  var0 = self->_effectivePushDeceleration;
  v14 = interactionSettings[1].var0;
  if (var0 > v14 && v13 > 0.001)
  {
    var0 = 1.0 - powf(1.0 - v14, var1 / v13);
    goto LABEL_9;
  }

LABEL_10:
  v15 = vmul_n_f32(*self->_accumulatedPushVector, var0);
  *self->_accumulatedPushVector = v15;
  v16.f64[0] = v47;
  v16.f64[1] = v48;
  v17 = vaddq_f64(v16, vcvtq_f64_f32(vmul_n_f32(v15, v50)));
  if (self->_isPulling)
  {
    var3 = v9[1].var3;
    if (var3 == 0.0)
    {
      var2 = v9[1].var2;
    }

    else
    {
      v20 = v3 - self->_pullStartTime;
      if (var3 >= v20)
      {
        v21 = v3 - self->_pullStartTime;
      }

      else
      {
        v21 = v9[1].var3;
      }

      var2 = self->_effectivePullAcceleration;
      if (var2 >= v9[1].var2 || v21 <= 0.001)
      {
        goto LABEL_20;
      }

      v51 = v17;
      var2 = powf(v9[1].var2, var3 / v21);
      v17 = v51;
    }

    self->_effectivePullAcceleration = var2;
LABEL_20:
    v17 = vmlsq_lane_f64(v17, vsubq_f64(v17, vextq_s8(self->_landingCoordinate, self->_landingCoordinate, 8uLL)), var2, 0);
  }

  v52 = v17;
  v22 = objc_loadWeakRetained(&self->_rotatable);
  [v22 homeCoordinate];
  v24 = v23;
  v26 = v25;

  v27 = objc_loadWeakRetained(&self->_rotatable);
  scene = [v27 scene];
  [scene offsetCoordinate];
  v30 = v24 + v29;
  v32 = v26 + v31;

  v33 = _NTKAstronomyNormalizeCoordinateForRotationAroundCoordinate(v52.f64[1], v52.f64[0], v30, v32);
  v35 = v34;
  v36 = v33;
  v37 = 80.0;
  if (v36 <= 80.0)
  {
    v37 = v36;
    if (v36 < -80.0)
    {
      v37 = -80.0;
    }
  }

  v38 = v37;
  v39 = objc_loadWeakRetained(&self->_rotatable);
  [v39 setCenterCoordinate:{v38, v35}];

  v40 = objc_loadWeakRetained(&self->_rotatable);
  [v40 centerCoordinate];
  v49 = v42;
  v53 = v41;

  if (!self->_isPulling || (v43.f64[0] = v53, v43.f64[1] = v49, *&v43.f64[0] = vsub_f32(vcvt_f32_f64(v43), vcvt_f32_f64(self->_landingCoordinate)), sqrtf(COERCE_FLOAT(vmul_f32(*&v43, *&v43).i32[1]) + (*v43.f64 * *v43.f64)) < 0.1))
  {
    v44 = vcgt_f32(vdup_n_s32(0x3DCCCCCDu), vabs_f32(*self->_accumulatedPushVector));
    if (v44.i32[0] & v44.i32[1])
    {
      if (self->_isPulling)
      {
        v45 = objc_loadWeakRetained(&self->_rotatable);
        [v45 setCenterCoordinate:{v30, v32}];
      }

      v46 = objc_loadWeakRetained(&self->_observer);
      [v46 rotationModelStoppedByDecelerating:self];

      [(NUNIAstronomyRotationModel *)self stop];
    }
  }
}

- (void)push:(NUNIAstronomyRotationModel *)self
{
  v3 = v2;
  interactionSettings = [(NUNIAstronomyRotationModel *)self interactionSettings];
  v6 = CACurrentMediaTime();
  self->_effectivePullAcceleration = interactionSettings[1].var2 * 0.01;
  *self->_accumulatedPushVector = vadd_f32(*self->_accumulatedPushVector, v3);
  self->_effectivePushDeceleration = 1.0;
  self->_pushStartTime = v6;
  self->_pullStartTime = v6;
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);
  [WeakRetained homeCoordinate];
  v9 = v8;
  v11 = v10;

  v12 = objc_loadWeakRetained(&self->_rotatable);
  scene = [v12 scene];
  [scene offsetCoordinate];
  v15 = v9 + v14;
  v17 = v11 + v16;

  state = self->_state;
  if (state == 1)
  {
    latitude = self->_landingCoordinate.latitude;
    longitude = self->_landingCoordinate.longitude;
  }

  else
  {
    latitude = v15;
    longitude = v17;
    if (!state)
    {
      v21 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:{sel__handleDisplayLink, v15, v17}];
      displayLink = self->_displayLink;
      self->_displayLink = v21;

      v23 = self->_displayLink;
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [(CADisplayLink *)v23 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

      self->_previousDisplayLinkCallbackTime = v6;
      self->_state = 1;
      latitude = v15;
      longitude = v17;
    }
  }

  self->_landingCoordinate.latitude = _NTKAstronomyNormalizeCoordinateForRotationAroundCoordinate(latitude, longitude, v15, v17);
  self->_landingCoordinate.longitude = v25;
}

- (NUNIRotatable)rotatable
{
  WeakRetained = objc_loadWeakRetained(&self->_rotatable);

  return WeakRetained;
}

- (NUNIAstronomyRotationModelObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end