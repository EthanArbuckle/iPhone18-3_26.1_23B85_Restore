@interface NUNIAnimation
- (BOOL)update:(float)update;
- (NUNIAnimatable)animatable;
- (NUNIAnimation)initWithAnimatable:(id)animatable from:(unint64_t)from to:ctrl1:ctrl2:key:;
- (NUNIAnimation)initWithAnimatable:(id)animatable value:(unint64_t)value key:;
- (NUNIAnimation)initWithAnimatable:(id)animatable values:count:key:;
- (NUNIAnimationObserver)observer;
- (void)apply:(float)apply;
- (void)setPaused:(BOOL)paused;
@end

@implementation NUNIAnimation

- (NUNIAnimation)initWithAnimatable:(id)animatable values:count:key:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  animatableCopy = animatable;
  v19.receiver = self;
  v19.super_class = NUNIAnimation;
  v11 = [(NUNIAnimation *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_animatable, animatableCopy);
    v12->_key = v6;
    v12->_function = 3;
    __asm { FMOV            V0.2S, #-1.0 }

    *&v12->_startTime = -_D0;
    if (v7 >= 76)
    {
      [NUNIAnimation initWithAnimatable:values:count:key:];
    }

    memcpy(v12->_values, v8, 16 * v7);
    v12->_valuesCount = v7;
  }

  return v12;
}

- (NUNIAnimation)initWithAnimatable:(id)animatable from:(unint64_t)from to:ctrl1:ctrl2:key:
{
  v21 = v6;
  v22 = v7;
  v19 = v5;
  v20 = v4;
  animatableCopy = animatable;
  v23.receiver = self;
  v23.super_class = NUNIAnimation;
  v11 = [(NUNIAnimation *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_animatable, animatableCopy);
    *v12->_to = v19;
    *v12->_from = v20;
    v12->_key = from;
    *v12->_ctrl1 = v21;
    *v12->_ctrl2 = v22;
    v12->_function = 1;
    __asm { FMOV            V0.2S, #-1.0 }

    *&v12->_startTime = -_D0;
  }

  return v12;
}

- (NUNIAnimation)initWithAnimatable:(id)animatable value:(unint64_t)value key:
{
  animatableCopy = animatable;
  [animatableCopy animatedFloatForKey:value];
  v7 = [NUNIAnimation initWithAnimatable:"initWithAnimatable:from:to:ctrl1:ctrl2:key:" from:animatableCopy to:value ctrl1:? ctrl2:? key:?];

  return v7;
}

- (BOOL)update:(float)update
{
  self->_prevTime = update;
  startTime = self->_startTime;
  if (startTime < 0.0)
  {
    startTime = self->_delay + update;
    self->_startTime = startTime;
  }

  v10 = v3;
  if (self->_paused)
  {
    return 1;
  }

  update = fmaxf(update - startTime, 0.0) / self->_duration;
  if (update <= 1.0)
  {
    v8 = 1;
  }

  else if (self->_repeat)
  {
    self->_startTime = -1.0;
    v8 = 1;
    *&update = 0;
  }

  else
  {
    v8 = 0;
    update = 1.0;
  }

  [(NUNIAnimation *)self apply:*&update, v4, v10, v5, v6];
  return v8;
}

- (void)apply:(float)apply
{
  function = self->_function;
  v5 = 0;
  if (function <= 1)
  {
    if (function)
    {
      if (function != 1)
      {
        goto LABEL_27;
      }

      apply = (apply * apply) * ((apply * -2.0) + 3.0);
    }

    v5 = vmlaq_n_f32(*self->_from, vsubq_f32(*self->_to, *self->_from), apply).u64[0];
  }

  else
  {
    switch(function)
    {
      case 2:
        v5 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*self->_from, (1.0 - apply) * ((1.0 - apply) * (1.0 - apply))), *self->_ctrl1, (((1.0 - apply) * (1.0 - apply)) * 3.0) * apply), *self->_ctrl2, (apply * apply) * ((1.0 - apply) * 3.0)), *self->_to, (apply * apply) * apply).u64[0];
        break;
      case 3:
        valuesCount = self->_valuesCount;
        v34 = valuesCount - 1;
        v35 = (valuesCount - 1);
        v36 = valuesCount - 2;
        if ((v35 * apply) < v36)
        {
          v36 = (v35 * apply);
        }

        v37 = v36 + 1;
        v38 = v36 / v35;
        v39 = v37 / v35;
        v41 = (apply - v38) / (v39 - v38);
        v42 = v41 * v41;
        v43 = v41 * (v41 * v41);
        if (v36 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v36;
        }

        v45 = v44 - 1;
        if (v36 + 2 < v34)
        {
          v34 = v36 + 2;
        }

        v46 = v42 * 3.0;
        v47 = 1.0 - ((v42 * 3.0) - (v43 * 2.0));
        v48 = v41 + (v43 + (v42 * -2.0));
        v49 = v43 - v42;
        v50 = *&self->_values[16 * v36];
        v51 = v46 + (v43 * -2.0);
        v52 = *&self->_values[16 * v37];
        v53 = vsubq_f32(v52, v50);
        v40 = v39 - v38;
        v5 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v53, (v38 - (v45 / v35)) / (v40 + (v38 - (v45 / v35)))), vsubq_f32(v50, *&self->_values[16 * v45]), v40 / (v40 + (v38 - (v45 / v35)))), v48), v50, v47), vmlaq_n_f32(vmulq_n_f32(vsubq_f32(*&self->_values[16 * v34], v52), v40 / (v40 + ((v34 / v35) - v39))), v53, ((v34 / v35) - v39) / (v40 + ((v34 / v35) - v39))), v49), v52, v51).u64[0];
        break;
      case 4:
        v6 = *self->_from;
        v7 = *self->_to;
        v8 = vmulq_f32(v6, v7);
        v9 = vextq_s8(v8, v8, 8uLL);
        *v8.f32 = vadd_f32(*v8.f32, *v9.f32);
        v8.f32[0] = vaddv_f32(*v8.f32);
        v9.i64[0] = 0;
        v10 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v8, v9)), 0), vnegq_f32(v7), v7);
        v11 = 1.0;
        *v61 = v6;
        applyCopy = apply;
        v12 = 1.0 - apply;
        v13 = vsubq_f32(v6, v10);
        v14 = vmulq_f32(v13, v13);
        v60 = v10;
        v15 = vaddq_f32(v6, v10);
        v16 = vmulq_f32(v15, v15);
        v17 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))));
        v18 = v17 + v17;
        v19 = (v17 + v17) == 0.0;
        v20 = 1.0;
        if (!v19)
        {
          v20 = sinf(v18) / v18;
        }

        v21 = LODWORD(v20);
        v22 = vrecpe_f32(LODWORD(v20));
        v23 = vmul_f32(v22, vrecps_f32(v21, v22));
        LODWORD(v24) = vmul_f32(v23, vrecps_f32(v21, v23)).u32[0];
        if ((v12 * v18) != 0.0)
        {
          v58 = v24;
          v23.f32[0] = sinf(v12 * v18);
          v24 = v58;
          v11 = v23.f32[0] / (v12 * v18);
        }

        v23.f32[0] = v12 * (v24 * v11);
        v25 = vdupq_lane_s32(v23, 0);
        v26 = applyCopy;
        v27 = v18 * applyCopy;
        v28 = 1.0;
        if (v27 != 0.0)
        {
          v57 = v25;
          v59 = v24;
          v29 = sinf(v27);
          v25 = v57;
          v24 = v59;
          v26 = applyCopy;
          v28 = v29 / v27;
        }

        v30 = vmlaq_f32(vmulq_n_f32(v60, (v24 * v28) * v26), *v61, v25);
        v31 = vmulq_f32(v30, v30);
        v32 = vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
        if (vaddv_f32(v32) == 0.0)
        {
          v5 = 0;
        }

        else
        {
          v54 = vadd_f32(v32, vdup_lane_s32(v32, 1)).u32[0];
          v55 = vrsqrte_f32(v54);
          v56 = vmul_f32(v55, vrsqrts_f32(v54, vmul_f32(v55, v55)));
          v5 = vmulq_n_f32(v30, vmul_f32(v56, vrsqrts_f32(v54, vmul_f32(v56, v56))).f32[0]).u64[0];
        }

        break;
    }
  }

LABEL_27:
  v64 = *&v5;
  WeakRetained = objc_loadWeakRetained(&self->_animatable);
  [WeakRetained setAnimatedFloat:self->_key forKey:v64];
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    prevTime = self->_prevTime;
    if (paused)
    {
      self->_pauseTime = prevTime;
    }

    else
    {
      self->_startTime = prevTime - (self->_pauseTime - self->_startTime);
    }
  }
}

- (NUNIAnimatable)animatable
{
  WeakRetained = objc_loadWeakRetained(&self->_animatable);

  return WeakRetained;
}

- (NUNIAnimationObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end