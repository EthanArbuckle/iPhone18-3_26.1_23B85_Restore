@interface WKBokehMotionManager
- (BOOL)zeroMovementSinceLastFrame;
- (WKBokehMotionManager)init;
- (double)accelerometerUpdateInterval;
- (double)attitude;
- (double)deviceMotionUpdateInterval;
- (double)initWithCoefficient:(double *)result;
- (double)initWithCoefficient:(double)coefficient threshold:;
- (double)pitch;
- (double)roll;
- (double)x;
- (double)yaw;
- (double)z;
- (id)motionFilterX;
- (id)motionFilterY;
- (id)motionFilterZ;
- (uint64_t)createMotionManager;
- (uint64_t)isDeviceMotionAvailable;
- (uint64_t)setAccelerometerUpdateInterval:(uint64_t)result;
- (uint64_t)setDeviceMotionUpdateInterval:(uint64_t)result;
- (uint64_t)startDeviceMotionUpdates;
- (void)_createFilters;
- (void)pauseDeviceMotionUpdates;
- (void)startDeviceAccelerometerUpdates;
- (void)startDeviceMotionUpdates;
- (void)stopDeviceAccelerometerUpdates;
- (void)stopDeviceMotionUpdates;
@end

@implementation WKBokehMotionManager

- (WKBokehMotionManager)init
{
  v3.receiver = self;
  v3.super_class = WKBokehMotionManager;
  result = [(WKBokehMotionManager *)&v3 init];
  if (result)
  {
    result->_referenceFrame = 1;
    result->_attitude.x = 0.0;
    result->_attitude.y = 0.0;
    result->_attitude.z = 0.0;
    result->_attitude.w = 1.0;
    result->_coefficient = 0.02;
  }

  return result;
}

- (void)startDeviceMotionUpdates
{
  if (self)
  {
    if (([(WKBokehMotionManager *)self startDeviceMotionUpdates]& 1) != 0)
    {
      v2 = location;
      v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      [v3 setMaxConcurrentOperationCount:1];
      objc_initWeak(&location, self);
      v4 = *v2;
      v5 = self[13];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48__WKBokehMotionManager_startDeviceMotionUpdates__block_invoke;
      v6[3] = &unk_1E87673F0;
      objc_copyWeak(&v7, &location);
      [v4 startDeviceMotionUpdatesUsingReferenceFrame:v5 toQueue:v3 withHandler:v6];
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __48__WKBokehMotionManager_startDeviceMotionUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 gravity];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v3 attitude];
  [v10 quaternion];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v33 = v17;

  v18 = [v3 attitude];
  [v18 roll];
  v32 = v19;

  v20 = [v3 attitude];
  [v20 pitch];
  v22 = v21;

  v23 = [v3 attitude];

  [v23 yaw];
  v25 = v24;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v34 = WeakRetained;
    WeakRetained[1] = [(WKBokehInfiniteImpulseResponseFilter *)*(WeakRetained + 16) filterWithInput:v5];
    v34[2] = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 17) filterWithInput:v7];
    v34[3] = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 18) filterWithInput:v9];
    v27 = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 19) filterWithInput:v12];
    v28 = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 20) filterWithInput:v14];
    v29 = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 21) filterWithInput:v16];
    v30 = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 22) filterWithInput:v33];
    v34[4] = v27;
    v34[5] = v28;
    v34[6] = v29;
    v34[7] = v30;
    v34[8] = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 23) filterWithInput:v32];
    v34[9] = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 24) filterWithInput:v22];
    v31 = [(WKBokehInfiniteImpulseResponseFilter *)*(v34 + 25) filterWithInput:v25];
    WeakRetained = v34;
    v34[10] = v31;
  }
}

- (void)startDeviceAccelerometerUpdates
{
  if (self)
  {
    [(WKBokehMotionManager *)self _createFilters];
    [(WKBokehMotionManager *)self createMotionManager];
    [self[14] setAccelerometerUpdateInterval:0.0166666667];
    v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v2 setMaxConcurrentOperationCount:1];
    objc_initWeak(&location, self);
    v3 = self[14];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__WKBokehMotionManager_startDeviceAccelerometerUpdates__block_invoke;
    v4[3] = &unk_1E8767418;
    objc_copyWeak(&v5, &location);
    [v3 startAccelerometerUpdatesToQueue:v2 withHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __55__WKBokehMotionManager_startDeviceAccelerometerUpdates__block_invoke(uint64_t a1, void *a2)
{
  [a2 acceleration];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    WeakRetained[1] = [(WKBokehInfiniteImpulseResponseFilter *)*(WeakRetained + 16) filterWithInput:v4];
    v11[2] = [(WKBokehInfiniteImpulseResponseFilter *)*(v11 + 17) filterWithInput:v6];
    v10 = [(WKBokehInfiniteImpulseResponseFilter *)*(v11 + 18) filterWithInput:v8];
    WeakRetained = v11;
    v11[3] = v10;
  }
}

- (double)initWithCoefficient:(double *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = WKBokehMotionManager;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result = OUTLINED_FUNCTION_1_1(result);
      result[11] = a2;
    }
  }

  return result;
}

- (double)initWithCoefficient:(double)coefficient threshold:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = WKBokehMotionManager;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result = OUTLINED_FUNCTION_1_1(result);
      result[11] = a2;
      result[12] = coefficient;
    }
  }

  return result;
}

- (double)accelerometerUpdateInterval
{
  if (!self)
  {
    return 0.0;
  }

  [(WKBokehMotionManager *)self createMotionManager];
  v2 = *(self + 112);

  [v2 accelerometerUpdateInterval];
  return result;
}

- (uint64_t)createMotionManager
{
  if (result)
  {
    v1 = result;
    if (!*(result + 112))
    {
      v2 = objc_alloc_init(MEMORY[0x1E69634D0]);
      v3 = *(v1 + 112);
      *(v1 + 112) = v2;

      return MEMORY[0x1EEE66BB8]();
    }
  }

  return result;
}

- (uint64_t)setAccelerometerUpdateInterval:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [(WKBokehMotionManager *)result createMotionManager];
    v4 = *(v3 + 112);

    return [v4 setAccelerometerUpdateInterval:a2];
  }

  return result;
}

- (double)deviceMotionUpdateInterval
{
  if (!self)
  {
    return 0.0;
  }

  [(WKBokehMotionManager *)self createMotionManager];
  v2 = *(self + 112);

  [v2 deviceMotionUpdateInterval];
  return result;
}

- (uint64_t)setDeviceMotionUpdateInterval:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [(WKBokehMotionManager *)result createMotionManager];
    v4 = *(v3 + 112);

    return [v4 setDeviceMotionUpdateInterval:a2];
  }

  return result;
}

- (double)x
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (double)z
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

- (id)motionFilterX
{
  if (self)
  {
    self = self[16];
    v1 = vars8;
  }

  return self;
}

- (id)motionFilterY
{
  if (self)
  {
    self = self[17];
    v1 = vars8;
  }

  return self;
}

- (id)motionFilterZ
{
  if (self)
  {
    self = self[18];
    v1 = vars8;
  }

  return self;
}

- (double)attitude
{
  if (!self)
  {
    return 0.0;
  }

  result = *(self + 32);
  v2 = *(self + 40);
  v3 = *(self + 48);
  v4 = *(self + 56);
  return result;
}

- (double)roll
{
  if (self)
  {
    return *(self + 64);
  }

  else
  {
    return 0.0;
  }
}

- (double)pitch
{
  if (self)
  {
    return *(self + 72);
  }

  else
  {
    return 0.0;
  }
}

- (double)yaw
{
  if (self)
  {
    return *(self + 80);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)isDeviceMotionAvailable
{
  if (result)
  {
    v1 = result;
    [(WKBokehMotionManager *)result createMotionManager];
    v2 = *(v1 + 112);

    return [v2 isDeviceMotionAvailable];
  }

  return result;
}

- (BOOL)zeroMovementSinceLastFrame
{
  if (!self || ![(WKBokehInfiniteImpulseResponseFilter *)self[16] zeroGradient]|| ![(WKBokehInfiniteImpulseResponseFilter *)self[17] zeroGradient])
  {
    return 0;
  }

  v2 = self[18];

  return [(WKBokehInfiniteImpulseResponseFilter *)v2 zeroGradient];
}

- (void)_createFilters
{
  if (self)
  {
    if (!*(self + 128))
    {
      v2 = OUTLINED_FUNCTION_0_4();
      v3 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v2];
      v4 = *(self + 128);
      *(self + 128) = v3;

      v5 = OUTLINED_FUNCTION_0_4();
      v6 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v5];
      v7 = *(self + 136);
      *(self + 136) = v6;

      v8 = OUTLINED_FUNCTION_0_4();
      v9 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v8];
      v10 = *(self + 144);
      *(self + 144) = v9;

      v11 = OUTLINED_FUNCTION_0_4();
      v12 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v11];
      v13 = *(self + 152);
      *(self + 152) = v12;

      v14 = OUTLINED_FUNCTION_0_4();
      v15 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v14];
      v16 = *(self + 160);
      *(self + 160) = v15;

      v17 = OUTLINED_FUNCTION_0_4();
      v18 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v17];
      v19 = *(self + 168);
      *(self + 168) = v18;

      v20 = OUTLINED_FUNCTION_0_4();
      v21 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v20];
      v22 = *(self + 176);
      *(self + 176) = v21;

      v23 = OUTLINED_FUNCTION_0_4();
      v24 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v23];
      v25 = *(self + 184);
      *(self + 184) = v24;

      v26 = OUTLINED_FUNCTION_0_4();
      v27 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v26];
      v28 = *(self + 192);
      *(self + 192) = v27;

      v29 = OUTLINED_FUNCTION_0_4();
      v30 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v29];
      v31 = *(self + 200);
      *(self + 200) = v30;

      v32 = 3;
      do
      {
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 176) filterWithInput:?];
        --v32;
      }

      while (v32);
      v33 = *(self + 96);
      if (v33 > 0.0)
      {
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 128) setZeroGradientThreshold:v33];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 136) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 144) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 152) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 160) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 168) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 176) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 184) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(self + 192) setZeroGradientThreshold:?];
        v34 = *(self + 96);
        v35 = *(self + 200);

        [(WKBokehInfiniteImpulseResponseFilter *)v35 setZeroGradientThreshold:v34];
      }
    }
  }
}

- (void)stopDeviceMotionUpdates
{
  if (result)
  {
    result = result[14];
    if (result)
    {
      return [result stopDeviceMotionUpdates];
    }
  }

  return result;
}

- (void)pauseDeviceMotionUpdates
{
  if (result)
  {
    v1 = result;
    result = result[14];
    if (result)
    {
      result = [result setDeviceMotionUpdateInterval:10.0];
      *(v1 + 120) = 1;
    }
  }

  return result;
}

- (void)stopDeviceAccelerometerUpdates
{
  if (result)
  {
    result = result[14];
    if (result)
    {
      return [result stopAccelerometerUpdates];
    }
  }

  return result;
}

- (uint64_t)startDeviceMotionUpdates
{
  [(WKBokehMotionManager *)self _createFilters];
  [(WKBokehMotionManager *)self createMotionManager];
  *a2 = self + 112;
  [*(self + 112) setDeviceMotionUpdateInterval:0.0166666667];
  if (*(self + 120) != 1)
  {
    return 1;
  }

  result = 0;
  *(self + 120) = 0;
  return result;
}

@end