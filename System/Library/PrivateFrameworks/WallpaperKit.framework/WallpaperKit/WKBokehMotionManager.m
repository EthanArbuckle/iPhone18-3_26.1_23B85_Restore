@interface WKBokehMotionManager
- (BOOL)zeroMovementSinceLastFrame;
- (WKBokehMotionManager)init;
- (double)accelerometerUpdateInterval;
- (double)attitude;
- (double)deviceMotionUpdateInterval;
- (double)initWithCoefficient:(double *)result;
- (double)initWithCoefficient:(double)a3 threshold:;
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
  if (a1)
  {
    if (([(WKBokehMotionManager *)a1 startDeviceMotionUpdates]& 1) != 0)
    {
      v2 = location;
      v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      [v3 setMaxConcurrentOperationCount:1];
      objc_initWeak(&location, a1);
      v4 = *v2;
      v5 = a1[13];
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
  if (a1)
  {
    [(WKBokehMotionManager *)a1 _createFilters];
    [(WKBokehMotionManager *)a1 createMotionManager];
    [a1[14] setAccelerometerUpdateInterval:0.0166666667];
    v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v2 setMaxConcurrentOperationCount:1];
    objc_initWeak(&location, a1);
    v3 = a1[14];
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

- (double)initWithCoefficient:(double)a3 threshold:
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
      result[12] = a3;
    }
  }

  return result;
}

- (double)accelerometerUpdateInterval
{
  if (!a1)
  {
    return 0.0;
  }

  [(WKBokehMotionManager *)a1 createMotionManager];
  v2 = *(a1 + 112);

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
  if (!a1)
  {
    return 0.0;
  }

  [(WKBokehMotionManager *)a1 createMotionManager];
  v2 = *(a1 + 112);

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
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

- (double)z
{
  if (a1)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0.0;
  }
}

- (id)motionFilterX
{
  if (a1)
  {
    a1 = a1[16];
    v1 = vars8;
  }

  return a1;
}

- (id)motionFilterY
{
  if (a1)
  {
    a1 = a1[17];
    v1 = vars8;
  }

  return a1;
}

- (id)motionFilterZ
{
  if (a1)
  {
    a1 = a1[18];
    v1 = vars8;
  }

  return a1;
}

- (double)attitude
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  return result;
}

- (double)roll
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

- (double)pitch
{
  if (a1)
  {
    return *(a1 + 72);
  }

  else
  {
    return 0.0;
  }
}

- (double)yaw
{
  if (a1)
  {
    return *(a1 + 80);
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
  if (!a1 || ![(WKBokehInfiniteImpulseResponseFilter *)a1[16] zeroGradient]|| ![(WKBokehInfiniteImpulseResponseFilter *)a1[17] zeroGradient])
  {
    return 0;
  }

  v2 = a1[18];

  return [(WKBokehInfiniteImpulseResponseFilter *)v2 zeroGradient];
}

- (void)_createFilters
{
  if (a1)
  {
    if (!*(a1 + 128))
    {
      v2 = OUTLINED_FUNCTION_0_4();
      v3 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v2];
      v4 = *(a1 + 128);
      *(a1 + 128) = v3;

      v5 = OUTLINED_FUNCTION_0_4();
      v6 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v5];
      v7 = *(a1 + 136);
      *(a1 + 136) = v6;

      v8 = OUTLINED_FUNCTION_0_4();
      v9 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v8];
      v10 = *(a1 + 144);
      *(a1 + 144) = v9;

      v11 = OUTLINED_FUNCTION_0_4();
      v12 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v11];
      v13 = *(a1 + 152);
      *(a1 + 152) = v12;

      v14 = OUTLINED_FUNCTION_0_4();
      v15 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v14];
      v16 = *(a1 + 160);
      *(a1 + 160) = v15;

      v17 = OUTLINED_FUNCTION_0_4();
      v18 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v17];
      v19 = *(a1 + 168);
      *(a1 + 168) = v18;

      v20 = OUTLINED_FUNCTION_0_4();
      v21 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v20];
      v22 = *(a1 + 176);
      *(a1 + 176) = v21;

      v23 = OUTLINED_FUNCTION_0_4();
      v24 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v23];
      v25 = *(a1 + 184);
      *(a1 + 184) = v24;

      v26 = OUTLINED_FUNCTION_0_4();
      v27 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v26];
      v28 = *(a1 + 192);
      *(a1 + 192) = v27;

      v29 = OUTLINED_FUNCTION_0_4();
      v30 = [WKBokehInfiniteImpulseResponseFilter lowpassInertiaFilterWithCoefficient:v29];
      v31 = *(a1 + 200);
      *(a1 + 200) = v30;

      v32 = 3;
      do
      {
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 176) filterWithInput:?];
        --v32;
      }

      while (v32);
      v33 = *(a1 + 96);
      if (v33 > 0.0)
      {
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 128) setZeroGradientThreshold:v33];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 136) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 144) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 152) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 160) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 168) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 176) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 184) setZeroGradientThreshold:?];
        [(WKBokehInfiniteImpulseResponseFilter *)*(a1 + 192) setZeroGradientThreshold:?];
        v34 = *(a1 + 96);
        v35 = *(a1 + 200);

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
  [(WKBokehMotionManager *)a1 _createFilters];
  [(WKBokehMotionManager *)a1 createMotionManager];
  *a2 = a1 + 112;
  [*(a1 + 112) setDeviceMotionUpdateInterval:0.0166666667];
  if (*(a1 + 120) != 1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 120) = 0;
  return result;
}

@end