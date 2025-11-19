@interface RTLocationEstimationState
- (RTLocationEstimationState)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)updateMotionX:(double)a3 motionY:(double)a4 dt:(double)a5 error:(double)a6;
- (void)updateObservationX:(double)a3 observationY:(double)a4 sigmaX:(double)a5 sigmaY:(double)a6;
- (void)updatePostObservationDeltaX:(double)a3 observationDeltaY:(double)a4 errProX:(double)a5 errProY:(double)a6 sigmaX:(double)a7 sigmaY:(double)a8;
@end

@implementation RTLocationEstimationState

- (RTLocationEstimationState)init
{
  v3.receiver = self;
  v3.super_class = RTLocationEstimationState;
  result = [(RTLocationEstimationState *)&v3 init];
  if (result)
  {
    *result->X = 0u;
    *&result->i = 0u;
    *result->errPro = vdupq_n_s64(0x408F400000000000uLL);
  }

  return result;
}

- (void)updateMotionX:(double)a3 motionY:(double)a4 dt:(double)a5 error:(double)a6
{
  v20 = *MEMORY[0x277D85DE8];
  *self->X = vaddq_f64(*self->X, *&a3);
  v7 = vsqrtq_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(a6 * a6), 0), vmulq_f64(*self->errPro, *self->errPro)));
  *self->errPro = v7;
  *self->errEst = v7;
  v8 = self->i % 100;
  v9 = v8 > 90 || v8 == 0;
  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      i = self->i;
      v14 = 134218498;
      v15 = i;
      v16 = 2112;
      v17 = self;
      v18 = 2048;
      v19 = a6;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "RTLocationSmootherKF, %lu, update motion, %@, qk, %f", &v14, 0x20u);
    }
  }
}

- (void)updateObservationX:(double)a3 observationY:(double)a4 sigmaX:(double)a5 sigmaY:(double)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = self->X[0];
  v8 = self->X[1];
  v10 = a3 - v9;
  _D10 = a4 - v8;
  v12 = *self->errPro;
  v13.f64[0] = a5;
  v13.f64[1] = a6;
  _Q3 = vdivq_f64(v12, vaddq_f64(v12, v13));
  __asm { FMLA            D2, D10, V3.D[1] }

  self->X[0] = v9 + _Q3.f64[0] * v10;
  self->X[1] = _D2;
  __asm { FMOV            V1.2D, #1.0 }

  v28 = _Q3;
  v20 = vmulq_f64(v12, vsubq_f64(_Q1, _Q3));
  *self->errPro = v20;
  *self->errEst = v20;
  v21 = self->i % 100;
  _ZF = v21 > 90 || v21 == 0;
  if (_ZF && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      i = self->i;
      v26 = self->X[0];
      v27 = self->X[1];
      *buf = 134221570;
      v31 = i;
      v32 = 2112;
      v33 = self;
      v34 = 2048;
      v35 = v9;
      v36 = 2048;
      v37 = v28.f64[0];
      v38 = 2048;
      v39 = a3;
      v40 = 2048;
      v41 = v26;
      v42 = 2048;
      v43 = v10;
      v44 = 2048;
      v45 = v26 - v9;
      v46 = 2048;
      v47 = v8;
      v48 = 2048;
      v49 = v28.f64[1];
      v50 = 2048;
      v51 = a4;
      v52 = 2048;
      v53 = v27;
      v54 = 2048;
      v55 = _D10;
      v56 = 2048;
      v57 = v27 - v8;
      v58 = 2048;
      v59 = a5;
      _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "RTLocationSmootherKF, %lu, update obs, %@, (%f+%f*%f->%f)(%f,%f), (%f+%f*%f->%f)(%f,%f), sigma, %f", buf, 0x98u);
    }
  }
}

- (void)updatePostObservationDeltaX:(double)a3 observationDeltaY:(double)a4 errProX:(double)a5 errProY:(double)a6 sigmaX:(double)a7 sigmaY:(double)a8
{
  _D8 = a4;
  v11.f64[0] = a7;
  v11.f64[1] = a8;
  v58 = *MEMORY[0x277D85DE8];
  v12 = vaddq_f64(*&a5, v11);
  v14 = self->X[0];
  v13 = self->X[1];
  v15 = vdivq_f64(*&a5, v12);
  v16 = *self->errPro;
  _Q0 = vdivq_f64(v16, v12);
  __asm { FMLA            D3, D8, V0.D[1] }

  self->X[0] = v14 + _Q0.f64[0] * a3;
  self->X[1] = _D3;
  __asm { FMOV            V2.2D, #1.0 }

  v24 = vmulq_f64(vsubq_f64(_Q2, v15), v16);
  *self->errPro = v24;
  _Q2.f64[1] = v24.f64[1];
  _Q2.f64[0] = self->errEst[0];
  *self->errEst = vmlsq_f64(_Q2, _Q0, v24);
  if (__ROR8__(0x8F5C28F5C28F5C29 * self->i + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v30 = v15;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        i = self->i;
        v28 = self->X[0];
        v29 = self->X[1];
        *buf = 134221058;
        v33 = i;
        v34 = 2112;
        v35 = self;
        v36 = 2048;
        v37 = a7;
        v38 = 2048;
        v39 = v14;
        v40 = 2048;
        v41 = v30.f64[0];
        v42 = 2048;
        v43 = a3;
        v44 = 2048;
        v45 = v28;
        v46 = 2048;
        v47 = v28 - v14;
        v48 = 2048;
        v49 = v13;
        v50 = 2048;
        v51 = v30.f64[1];
        v52 = 2048;
        v53 = _D8;
        v54 = 2048;
        v55 = v29;
        v56 = 2048;
        v57 = v29 - v13;
        _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "RTLocationSmootherKF, %lu, update post obs, %@, sigma, %f, (%f+%f*%f->%f,%f , %f+%f*%f->%f, %f)", buf, 0x84u);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_opt_new();
  *(result + 1) = self->i;
  *(result + 24) = *self->X;
  *(result + 2) = *&self->time;
  *(result + 40) = *self->errPro;
  *(result + 56) = *self->errEst;
  return result;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"i, %lu, t, %f, X, %f, %f, errPro, %f, %f, errEst, %f, %f", self->i, *&self->time, *&self->X[0], *&self->X[1], *&self->errPro[0], *&self->errPro[1], *&self->errEst[0], *&self->errEst[1]];

  return v2;
}

@end