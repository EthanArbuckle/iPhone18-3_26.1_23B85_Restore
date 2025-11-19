@interface PRUISTestingDeviceMotionProvider
+ (id)motionProvider;
- (PRUISDeviceMotionProviderDelegate)delegate;
- (PRUISTestingDeviceMotionProvider)init;
- (float64x2_t)_circularRotationWithProgress:(double)a3@<D1> radius:;
- (void)_rescheduleTimer;
- (void)_scheduleTimerIfNeeded;
- (void)dealloc;
- (void)setMotionUpdateInterval:(double)a3;
- (void)stopGeneratingMotionEvents;
@end

@implementation PRUISTestingDeviceMotionProvider

- (PRUISTestingDeviceMotionProvider)init
{
  v3.receiver = self;
  v3.super_class = PRUISTestingDeviceMotionProvider;
  result = [(PRUISTestingDeviceMotionProvider *)&v3 init];
  if (result)
  {
    result->_motionUpdateInterval = 0.01667;
  }

  return result;
}

- (void)dealloc
{
  [(PRUISTestingDeviceMotionProvider *)self stopGeneratingMotionEvents];
  v3.receiver = self;
  v3.super_class = PRUISTestingDeviceMotionProvider;
  [(PRUISTestingDeviceMotionProvider *)&v3 dealloc];
}

+ (id)motionProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PRUISTestingDeviceMotionProvider_motionProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (motionProvider_onceToken_0 != -1)
  {
    dispatch_once(&motionProvider_onceToken_0, block);
  }

  v2 = motionProvider_motionProvider;

  return v2;
}

uint64_t __50__PRUISTestingDeviceMotionProvider_motionProvider__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  motionProvider_motionProvider = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

- (void)setMotionUpdateInterval:(double)a3
{
  if (self->_motionUpdateInterval != a3)
  {
    self->_motionUpdateInterval = a3;
    [(PRUISTestingDeviceMotionProvider *)self _rescheduleTimer];
  }
}

- (void)stopGeneratingMotionEvents
{
  v3 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "Stopping motion updates (testing provider)", v5, 2u);
  }

  [(BSAbsoluteMachTimer *)self->_motionUpdateTimer invalidate];
  motionUpdateTimer = self->_motionUpdateTimer;
  self->_motionUpdateTimer = 0;
}

- (void)_scheduleTimerIfNeeded
{
  motionUpdateTimer = self->_motionUpdateTimer;
  if (motionUpdateTimer)
  {
    if (([(BSAbsoluteMachTimer *)motionUpdateTimer isScheduled]& 1) != 0)
    {
      return;
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E698E5E8]);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRUISTestingDeviceMotionProvider._motionUpdateTimer"];
    v6 = [v4 initWithIdentifier:v5];
    v7 = self->_motionUpdateTimer;
    self->_motionUpdateTimer = v6;
  }

  v8 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1CAE63000, v8, OS_LOG_TYPE_DEFAULT, "Starting motion updates (testing provider)", buf, 2u);
  }

  objc_initWeak(buf, self);
  v9 = self->_motionUpdateTimer;
  motionUpdateInterval = self->_motionUpdateInterval;
  v11 = MEMORY[0x1E69E96A0];
  v12 = MEMORY[0x1E69E96A0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PRUISTestingDeviceMotionProvider__scheduleTimerIfNeeded__block_invoke;
  v13[3] = &unk_1E83A8DD8;
  objc_copyWeak(&v14, buf);
  v13[4] = self;
  [(BSAbsoluteMachTimer *)v9 scheduleRepeatingWithFireInterval:v11 repeatInterval:v13 leewayInterval:motionUpdateInterval queue:motionUpdateInterval handler:0.0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __58__PRUISTestingDeviceMotionProvider__scheduleTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained(WeakRetained + 4);
  v8 = 0u;
  v9 = 0u;
  v4 = *(a1 + 32);
  [v4 _truncatingReminderOfValue:CACurrentMediaTime() dividingBy:1.0];
  if (v4)
  {
    [v4 _circularRotationWithProgress:? radius:?];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v5 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __58__PRUISTestingDeviceMotionProvider__scheduleTimerIfNeeded__block_invoke_cold_1(&v8, v5);
  }

  v6 = *(a1 + 32);
  v7[0] = v8;
  v7[1] = v9;
  [v3 motionProvider:v6 motionDidUpdateWithRotation:v7];
}

- (void)_rescheduleTimer
{
  [(PRUISTestingDeviceMotionProvider *)self stopGeneratingMotionEvents];

  [(PRUISTestingDeviceMotionProvider *)self _scheduleTimerIfNeeded];
}

- (float64x2_t)_circularRotationWithProgress:(double)a3@<D1> radius:
{
  v4 = fmin(fmax(a2, 0.0), 1.0);
  v5 = fmin(fmax(a3, 0.0), 1.0);
  v6 = __sincos_stret(v4 * 3.14159265 + v4 * 3.14159265);
  v7.f64[0] = v5 * v6.__cosval;
  v7.f64[1] = v5 * v6.__sinval;
  __asm { FMOV            V0.2D, #0.5 }

  x = vmulq_f64(v7, _Q0);
  v21 = _simd_cos_d2(x);
  v22 = _simd_cos_d2(0);
  xa = _simd_sin_d2(x);
  v13 = _simd_sin_d2(0);
  v14.f64[0] = v22.f64[0];
  v14.f64[1] = xa.f64[1];
  v15 = vdupq_lane_s64(*&v13.f64[0], 0);
  v16 = vzip1q_s64(v13, v21);
  v13.f64[1] = v21.f64[1];
  v17.f64[1] = v15.f64[1];
  v17.f64[0] = -xa.f64[0];
  v15.f64[0] = -v21.f64[0];
  result = vmlaq_f64(vmulq_f64(vmulq_f64(vextq_s8(xa, xa, 8uLL), v13), v15), vzip1q_s64(xa, v22), vmulq_f64(vextq_s8(v21, v21, 8uLL), v14));
  *a1 = result;
  a1[1] = vmlaq_f64(vmulq_f64(vmulq_laneq_f64(v17, xa, 1), vzip1q_s64(v22, xa)), v16, vmulq_f64(v21, vextq_s8(v21, v22, 8uLL)));
  return result;
}

- (PRUISDeviceMotionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

__n128 __58__PRUISTestingDeviceMotionProvider__scheduleTimerIfNeeded__block_invoke_cold_1(__int128 *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v5 = 134218752;
  v6 = v3;
  v7 = 2048;
  *(&v5 | 0xE) = *(&v3 + 1);
  v8 = 2048;
  v9 = v2;
  v10 = 2048;
  v11 = *(&v2 + 1);
  _os_log_debug_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_DEBUG, "Random rotation data: x: %f, y: %f, z: %f, w: %f", &v5, 0x2Au);
  return result;
}

@end