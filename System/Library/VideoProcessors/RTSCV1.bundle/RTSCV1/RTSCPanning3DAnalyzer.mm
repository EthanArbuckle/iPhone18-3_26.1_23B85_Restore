@interface RTSCPanning3DAnalyzer
- (RTSCPanning3DAnalyzer)initWithTimeConstant:(float)a3 initialVariance:;
- (__n128)panningCovariance;
- (void)reset;
- (void)updateWithPose:(double)a3 atTime:;
@end

@implementation RTSCPanning3DAnalyzer

- (RTSCPanning3DAnalyzer)initWithTimeConstant:(float)a3 initialVariance:
{
  v8 = v3;
  v9.receiver = self;
  v9.super_class = RTSCPanning3DAnalyzer;
  v5 = [(RTSCPanning3DAnalyzer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_timeConstant = a3;
    *&v5->_initVariance[4] = v8;
    [(RTSCPanning3DAnalyzer *)v5 reset];
  }

  return v6;
}

- (void)reset
{
  LOBYTE(self->_prevTime) = 0;
  self->_averageTime = 0.0;
  *&self->_panningRate[8] = 0u;
  v2 = *&self->_initVariance[4];
  HIDWORD(v3) = HIDWORD(*&self->_initVariance[4]);
  *self[1]._anon_38 = DWORD2(v2);
  LODWORD(v3) = 0;
  *&self[1]._initVariance[4] = 0;
  *&self[1]._timeConstant = v2;
  LODWORD(self[1]._prevTime) = 0;
  *&self[1]._initVariance[12] = v3;
  self[1]._averageTime = 0.0;
  *&self->_anon_94[4] = self->_timeConstant * self->_timeConstant;
}

- (void)updateWithPose:(double)a3 atTime:
{
  v6 = *(a1 + 8);
  if (*(a1 + 32) == 1)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 64);
  }

  else
  {
    v7 = a3 - v6;
    v10 = *(a1 + 16);
    HIDWORD(v11) = HIDWORD(*(a1 + 16));
    *(a1 + 136) = DWORD2(v10);
    *(a1 + 80) = COERCE_UNSIGNED_INT(v6 * v6);
    LODWORD(v11) = 0;
    *(a1 + 104) = 0;
    *(a1 + 96) = v10;
    *(a1 + 120) = 0;
    *(a1 + 112) = v11;
    *(a1 + 128) = 0;
    *(a1 + 32) = 1;
    v9 = a2;
    v8 = a3;
  }

  *&v12 = a3 - v8;
  *v12.i32 = *v12.i32;
  *v12.i32 = v6 / (v6 + *v12.i32);
  v13 = a3 + *v12.i32 * (v7 - a3);
  *(a1 + 48) = v13;
  v14 = vmulq_f32(a2, v9);
  v15 = vextq_s8(v14, v14, 8uLL);
  *v14.f32 = vadd_f32(*v14.f32, *v15.f32);
  v14.f32[0] = vaddv_f32(*v14.f32);
  v15.i64[0] = 0;
  v16 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v14, v15)), 0), vnegq_f32(v9), v9);
  v17 = 1.0;
  v75 = a2;
  v77 = v12;
  v18 = 1.0 - *v12.i32;
  v19 = vsubq_f32(a2, v16);
  v20 = vmulq_f32(v19, v19);
  v73 = v16;
  v21 = vaddq_f32(a2, v16);
  v22 = vmulq_f32(v21, v21);
  v23 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)))));
  v24 = v23 + v23;
  v25 = (v23 + v23) == 0.0;
  v26 = 1.0;
  if (!v25)
  {
    v26 = sinf(v24) / v24;
  }

  v27 = v26;
  v28 = vrecpe_f32(LODWORD(v26));
  v29 = vmul_f32(v28, vrecps_f32(LODWORD(v27), v28));
  LODWORD(v30) = vmul_f32(v29, vrecps_f32(LODWORD(v27), v29)).u32[0];
  if ((v18 * v24) != 0.0)
  {
    v70 = v30;
    v29.f32[0] = sinf(v18 * v24);
    v30 = v70;
    v17 = v29.f32[0] / (v18 * v24);
  }

  v29.f32[0] = v18 * (v30 * v17);
  v31 = vdupq_lane_s32(v29, 0);
  v32 = *v77.i32;
  v33 = *v77.i32 * v24;
  v34 = 1.0;
  if (v33 != 0.0)
  {
    v69 = v31;
    v71 = v30;
    v35 = sinf(v33);
    v31 = v69;
    v30 = v71;
    v32 = *v77.i32;
    v34 = v35 / v33;
  }

  v36 = vmlaq_f32(vmulq_n_f32(v73, v32 * (v30 * v34)), v75, v31);
  v37 = vmulq_f32(v36, v36);
  *v37.i8 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  if (vaddv_f32(*v37.i8) == 0.0)
  {
    v38 = xmmword_11B30;
  }

  else
  {
    v39 = vadd_f32(*v37.i8, vdup_lane_s32(*v37.i8, 1)).u32[0];
    v40 = vrsqrte_f32(v39);
    v41 = vmul_f32(v40, vrsqrts_f32(v39, vmul_f32(v40, v40)));
    v38 = vmulq_n_f32(v36, vmul_f32(v41, vrsqrts_f32(v39, vmul_f32(v41, v41))).f32[0]);
  }

  *(a1 + 64) = v38;
  *v37.i64 = a3 - v13;
  v42 = vmulq_f32(v38, xmmword_11B60);
  v43 = vnegq_f32(v75);
  v44 = vtrn2q_s32(v75, vtrn1q_s32(v75, v43));
  v45 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v75, v43, 8uLL), *v42.f32, 1), vextq_s8(v44, v44, 8uLL), v42.f32[0]);
  v46 = vrev64q_s32(v75);
  v46.i32[0] = v43.i32[1];
  *v37.i32 = a3 - v13;
  v74 = v37;
  v46.i32[3] = v43.i32[2];
  v76 = vaddq_f32(v45, vmlaq_laneq_f32(vmulq_laneq_f32(v75, v42, 3), v46, v42, 2));
  v47 = vmulq_f32(v76, v76);
  v72 = v47.f32[2] + vaddv_f32(*v47.f32);
  v48 = atan2f(sqrtf(v72), v76.f32[3]);
  v49 = vrsqrte_f32(LODWORD(v72));
  v50 = vmul_f32(v49, vrsqrts_f32(LODWORD(v72), vmul_f32(v49, v49)));
  v51 = vmulq_n_f32(vmulq_n_f32(v76, vmul_f32(v50, vrsqrts_f32(LODWORD(v72), vmul_f32(v50, v50))).f32[0]), v48 + v48);
  v52 = vextq_s8(vextq_s8(v74, v74, 4uLL), v51, 0xCuLL);
  v53 = vmulq_n_f32(v52, *v74.i32);
  v79[0] = v53;
  v79[1] = vmulq_n_f32(v52, v51.f32[0]);
  v79[2] = vmulq_lane_f32(v52, *v51.f32, 1);
  v79[3] = vmulq_laneq_f32(v52, v51, 2);
  v54 = (a1 + 96);
  v55 = vdupq_lane_s32(v77, 0);
  v55.i32[3] = 0;
  for (i = 1; i != 4; ++i)
  {
    v57 = vextq_s8(v79[i], v53, 4uLL);
    v58 = vsubq_f32(*v54, v57);
    v58.i32[3] = 0;
    v57.i32[3] = 0;
    *v54++ = vmlaq_f32(v57, v58, v55);
  }

  v59 = vmlaq_n_f32(v53, vsubq_f32(*(a1 + 80), v53), *v77.i32);
  *(a1 + 80) = v59;
  *(a1 + 40) = a3;
  v60 = vrecpe_f32(v59.u32[0]);
  v61 = vmul_f32(v60, vrecps_f32(v59.u32[0], v60));
  v62 = vextq_s8(v59, v59, 4uLL);
  v63 = vmulq_n_f32(v62, vmul_f32(v61, vrecps_f32(v59.u32[0], v61)).f32[0]);
  *(a1 + 160) = v63;
  v64 = vnegq_f32(v63);
  v65 = (a1 + 176);
  v66 = -3;
  do
  {
    v67 = v65[-5];
    v78 = v62;
    *v65++ = vmlaq_n_f32(v67, v64, *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v66 - 1) & 3))));
  }

  while (!__CFADD__(v66++, 1));
  *(a1 + 144) = v59.i32[0];
}

- (__n128)panningCovariance
{
  result = *(a1 + 176);
  v2 = *(a1 + 192);
  v3 = *(a1 + 208);
  return result;
}

@end