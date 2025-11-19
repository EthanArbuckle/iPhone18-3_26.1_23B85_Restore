uint64_t __vfx_script_WeatherV136DefaultBackground_graph_E98E71ED_C208_4BF9_B7C6_57A575CF000F()
{
  result = vfx_script_get_arguments_buffer();
  **(result + 24) = **(result + 16);
  return result;
}

double ParticleInit_WeatherV136DefaultBackground_particleInit_75(double a1, float32x4_t a2, float32x4_t a3, uint64_t a4, int a5, int a6, int a7, float *a8, void *a9, float32x4_t *a10)
{
  v30 = *a9;
  v16 = vfx_script_clock_simulation_index();
  v17 = a6 + a5;
  v18 = 277803737 * (((747796405 * (v17 + v16) - 1403630843) >> (((747796405 * (v17 + v16) - 1403630843) >> 28) + 4)) ^ (747796405 * (v17 + v16) - 1403630843));
  v19 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v18 >> 31) ^ (v18 >> 9) | 0x3F800000) + -1.0, 3uLL) + 1, 3uLL) + -0.0625;
  v20 = *(&a1 + 1);
  if (!a7)
  {
    v20 = *&a1;
  }

  v27 = v20;
  v21 = vfx_script_clock_simulation_index();
  v22 = 277803737 * (((747796405 * (v17 + v21) + 1340069426) >> (((747796405 * (v17 + v21) + 1340069426) >> 28) + 4)) ^ (747796405 * (v17 + v21) + 1340069426));
  v23 = vmlaq_n_f32(a2, vsubq_f32(a3, a2), COERCE_FLOAT((v22 >> 31) ^ (v22 >> 9) | 0x3F800000) + -1.0);
  v24 = vmulq_laneq_f32(v23, v23, 3);
  v24.i32[3] = v23.i32[3];
  *a8 = v19;
  *a10 = v24;
  result = COERCE_DOUBLE(__PAIR64__(LODWORD(v27), v30));
  *a9 = __PAIR64__(LODWORD(v27), v30);
  return result;
}

float __vfx_script_WeatherV136DefaultBackground_particleInit_217()
{
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_18(float a1, double a2, uint64_t a3, int a4, unsigned int a5, unint64_t a6, float *a7, __n128 *a8, uint64_t a9)
{
  v32 = *a8;
  v15 = *a8;
  v15.n128_u32[0] = *(a9 + 12);
  v33 = v15;
  v34 = HIDWORD(a2);
  v16 = vfx_script_clock_simulation_index();
  v17 = a5 + a4;
  v18 = 277803737 * (((747796405 * (v17 + v16) - 1403630843) >> (((747796405 * (v17 + v16) - 1403630843) >> 28) + 4)) ^ (747796405 * (v17 + v16) - 1403630843));
  v19 = ((((COERCE_FLOAT((v18 >> 31) ^ (v18 >> 9) | 0x3F800000) + -1.0) * 6.0) + 1) / 6.0) + -0.083333;
  v20.n128_f32[0] = (a1 + a1) / a6;
  if (!a6)
  {
    v20.n128_f32[0] = 0.0;
  }

  v20.n128_f32[0] = (v20.n128_f32[0] * a5) - a1;
  v31 = v20;
  v21 = vfx_script_clock_simulation_index();
  v22 = 277803737 * (((747796405 * (v17 + v21) + 1957069266) >> (((747796405 * (v17 + v21) + 1957069266) >> 28) + 4)) ^ (747796405 * (v17 + v21) + 1957069266));
  v29 = ((COERCE_FLOAT((v22 >> 31) ^ (v22 >> 9) | 0x3F800000) + -1.0) * 6.28) + -3.14;
  v23 = vfx_script_clock_simulation_index();
  v24 = 277803737 * (((747796405 * (v17 + v23 + 10) + 864546855) >> (((747796405 * (v17 + v23 + 10) + 864546855) >> 28) + 4)) ^ (747796405 * (v17 + v23 + 10) + 864546855));
  v25 = 1.0;
  if ((COERCE_FLOAT((v24 >> 31) ^ (v24 >> 9) | 0x3F800000) + -1.0) <= 0.5)
  {
    v25 = -1.0;
  }

  *a7 = v19;
  v26 = v31;
  *(v26.n128_u64 + 4) = *(v32.n128_u64 + 4);
  *&v27 = __PAIR64__(v34, LODWORD(v29));
  *a8 = v26;
  *(&v27 + 1) = __PAIR64__(v33.n128_u32[0], LODWORD(v25));
  result = v33;
  *a9 = v27;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_10(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, __n128 *a6)
{
  v9 = vfx_script_clock_simulation_index();
  v10 = 277803737 * (((747796405 * (a5 + a4 + v9) - 1670564325) >> (((747796405 * (a5 + a4 + v9) - 1670564325) >> 28) + 4)) ^ (747796405 * (a5 + a4 + v9) - 1670564325));
  v11 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v10 >> 31) ^ (v10 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v11, v11, 3);
  result.n128_u32[3] = v11.u32[3];
  *a6 = result;
  return result;
}

int8x16_t ParticleInit_WeatherV136DefaultBackground_particleInit_302(__n128 a1, __n128 a2, float32x4_t a3, float32x4_t a4, uint64_t a5, int a6, __n128 *a7, _OWORD *a8, int8x16_t *a9)
{
  v13 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v13 + a6) - 1881823590) >> (((747796405 * (v13 + a6) - 1881823590) >> 28) + 4)) ^ (747796405 * (v13 + a6) - 1881823590));
  v16 = COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0;
  if (v16 <= 0.5)
  {
    v14.n128_f32[0] = -a1.n128_f32[0];
    *(v14.n128_u64 + 4) = *(a1.n128_u64 + 4);
    a1 = v14;
  }

  v17 = vfx_script_clock_simulation_index();
  *&v19 = -a2.n128_f32[0];
  v20.i32[0] = 0.5;
  if (v16 > 0.5)
  {
    *&v19 = a2.n128_f32[0];
  }

  v18 = 277803737 * (((747796405 * (v17 + a6) - 558593783) >> (((747796405 * (v17 + a6) - 558593783) >> 28) + 4)) ^ (747796405 * (v17 + a6) - 558593783));
  *(&v19 + 1) = ((COERCE_FLOAT((v18 >> 31) ^ (v18 >> 9) | 0x3F800000) + -1.0) * 35.0) + -55.0;
  DWORD2(v19) = a2.n128_u32[2];
  *a7 = a1;
  result = vandq_s8(vmulq_n_f32(a3, a4.f32[0]), vdupq_lane_s32(*&vmvnq_s8(vcgtq_f32(v20, a4)), 0));
  *a8 = v19;
  *a9 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_327(double a1, uint64_t a2, int a3, int a4, __n128 *a5)
{
  v13 = *a5;
  v8 = vfx_script_clock_simulation_index();
  v9 = 277803737 * (((747796405 * (a4 + a3 + v8) + 1857158435) >> (((747796405 * (a4 + a3 + v8) + 1857158435) >> 28) + 4)) ^ (747796405 * (a4 + a3 + v8) + 1857158435));
  result.n128_f32[0] = COERCE_FLOAT((v9 >> 31) ^ (v9 >> 9) | 0x3F800000) + -1.0;
  v10 = 277803737 * (((747796405 * (a4 + a3) + 2048969569) >> (((747796405 * (a4 + a3) + 2048969569) >> 28) + 4)) ^ (747796405 * (a4 + a3) + 2048969569));
  result.n128_f32[1] = *&a1 + ((COERCE_FLOAT((v10 >> 31) ^ (v10 >> 9) | 0x3F800000) + -1.0) * vsub_f32(vdup_lane_s32(*&a1, 1), *&a1).f32[0]);
  result.n128_u64[1] = v13.n128_u64[1];
  *a5 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_252(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = a5 + a4;
  v13 = 277803737 * (((747796405 * (v12 + v11) - 1403630843) >> (((747796405 * (v12 + v11) - 1403630843) >> 28) + 4)) ^ (747796405 * (v12 + v11) - 1403630843));
  v14 = ((((COERCE_FLOAT((v13 >> 31) ^ (v13 >> 9) | 0x3F800000) + -1.0) * 9.0) + 1) / 9.0) + -0.055556;
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v12 + v15) - 769853048) >> (((747796405 * (v12 + v15) - 769853048) >> 28) + 4)) ^ (747796405 * (v12 + v15) - 769853048));
  v17 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v17, v17, 3);
  result.n128_u32[3] = v17.u32[3];
  *a6 = v14;
  *a7 = result;
  return result;
}

float32x4_t ParticleInit_WeatherV136DefaultBackground_particleInit_395(__n128 a1, float a2, float a3, float a4, float a5, float32x4_t a6, float32_t a7, uint64_t a8, int a9, uint64_t a10, int a11, __n128 *a12, uint64_t a13, __n128 *a14)
{
  v43 = *(a13 + 12);
  v44 = *a14;
  v20 = vfx_script_clock_simulation_index();
  v21 = vfx_script_clock_simulation_index();
  v22 = vfx_script_clock_simulation_index();
  result = vmulq_f32(a6, a6);
  result.f32[0] = sqrtf(result.f32[2] + vaddv_f32(*result.f32));
  v23 = result.f32[0] / 300.0;
  v25 = vmla_s32(0x86B85AE2390239B6, vadd_s32(vdup_n_s32(a11 + a9), __PAIR64__(v21, v20)), vdup_n_s32(0x2C9277B5u));
  v26 = vmul_s32(veor_s8(vshl_u32(v25, vsub_s32(0x300000003, vshr_n_u32(v25, 0x1CuLL))), v25), vdup_n_s32(0x108EF2D9u));
  __asm { FMOV            V6.2S, #1.0 }

  v32 = vorr_s8(veor_s8(vshl_u32(v26, 0xFFFFFFE1FFFFFFF7), vshl_u32(v26, 0xFFFFFFF7FFFFFFE1)), _D6);
  __asm { FMOV            V6.2S, #-1.0 }

  *&v34 = vmul_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(a10 == 0), 0x1FuLL)), __PAIR64__(LODWORD(a4), LODWORD(a2)), __PAIR64__(LODWORD(a5), LODWORD(a3))), vmla_f32(0x3F2666663F4CCCCDLL, 0x3EB333343E4CCCCCLL, vadd_f32(v32, _D6)));
  v35 = result.f32[0] <= 300.0;
  result.i32[0] = 1.0;
  if (v35)
  {
    result.f32[0] = v23;
  }

  *a12 = a1;
  v24 = 277803737 * (((747796405 * (a11 + a9 + v22) - 327886387) >> (((747796405 * (a11 + a9 + v22) - 327886387) >> 28) + 4)) ^ (747796405 * (a11 + a9 + v22) - 327886387));
  *(&v34 + 1) = __PAIR64__(v43, ((COERCE_FLOAT((v24 >> 31) ^ (v24 >> 9) | 0x3F800000) + -1.0) * 6.28) + -3.14);
  *a13 = v34;
  result.f32[1] = a7;
  result.i64[1] = v44.n128_i64[1];
  *a14 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_203(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, uint64_t a5, int a6, float *a7, __n128 *a8)
{
  vfx_script_clock_simulation_index();
  v13 = vfx_script_clock_simulation_index();
  v14 = 277803737 * (((747796405 * (a6 + a4 + v13) + 1378965688) >> (((747796405 * (a6 + a4 + v13) + 1378965688) >> 28) + 4)) ^ (747796405 * (a6 + a4 + v13) + 1378965688));
  v15 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v14 >> 31) ^ (v14 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v15, v15, 3);
  result.n128_u32[3] = v15.u32[3];
  *a7 = vcvts_n_f32_u64(a5 + 1, 3uLL) + -0.0625;
  *a8 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_385(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = a5 + a4;
  v13 = 277803737 * (((747796405 * (v12 + v11) - 1403630843) >> (((747796405 * (v12 + v11) - 1403630843) >> 28) + 4)) ^ (747796405 * (v12 + v11) - 1403630843));
  v14 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v13 >> 31) ^ (v13 >> 9) | 0x3F800000) + -1.0, 2uLL) + 1, 2uLL) + -0.125;
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v12 + v15) + 2048969569) >> (((747796405 * (v12 + v15) + 2048969569) >> 28) + 4)) ^ (747796405 * (v12 + v15) + 2048969569));
  v17 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v17, v17, 3);
  result.n128_u32[3] = v17.u32[3];
  *a6 = v14;
  *a7 = result;
  return result;
}

uint64_t ParticleInit_WeatherV136DefaultBackground_particleInit_551(float32x4_t a1, float a2, float32x4_t a3, uint64_t a4, int a5, int a6, float32x4_t *a7, float *a8, float *a9)
{
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v15 + a5) + 1415191774) >> (((747796405 * (v15 + a5) + 1415191774) >> 28) + 4)) ^ (747796405 * (v15 + a5) + 1415191774));
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.f32[3] = COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0;
  v29 = vmulq_f32(_Q1, a1);
  result = vfx_script_clock_simulation_index();
  v23 = 277803737 * (((747796405 * (a6 + a5 + result) - 1403630843) >> (((747796405 * (a6 + a5 + result) - 1403630843) >> 28) + 4)) ^ (747796405 * (a6 + a5 + result) - 1403630843));
  v24 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v23 >> 31) ^ (v23 >> 9) | 0x3F800000) + -1.0, 3uLL) + 1, 3uLL) + -0.0625;
  v25 = vaddq_f32(a3, xmmword_1BCE23090);
  v26 = vmulq_f32(v25, v25);
  _NF = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32)) < 175.0;
  v27 = 0.0;
  *a7 = v29;
  if (!_NF)
  {
    v27 = a2;
  }

  *a8 = v24;
  *a9 = v27;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_500(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = a5 + a4;
  v13 = 277803737 * (((747796405 * (v12 + v11) - 1403630843) >> (((747796405 * (v12 + v11) - 1403630843) >> 28) + 4)) ^ (747796405 * (v12 + v11) - 1403630843));
  v14 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v13 >> 31) ^ (v13 >> 9) | 0x3F800000) + -1.0, 2uLL) + 1, 2uLL) + -0.125;
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v12 + v15) + 572824890) >> (((747796405 * (v12 + v15) + 572824890) >> 28) + 4)) ^ (747796405 * (v12 + v15) + 572824890));
  v17 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v17, v17, 3);
  result.n128_u32[3] = v17.u32[3];
  *a6 = v14;
  *a7 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_129(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = a5 + a4;
  v13 = 277803737 * (((747796405 * (v12 + v11) - 1403630843) >> (((747796405 * (v12 + v11) - 1403630843) >> 28) + 4)) ^ (747796405 * (v12 + v11) - 1403630843));
  v14 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v13 >> 31) ^ (v13 >> 9) | 0x3F800000) + -1.0, 2uLL) + 1, 2uLL) + -0.125;
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v12 + v15) + 1187154554) >> (((747796405 * (v12 + v15) + 1187154554) >> 28) + 4)) ^ (747796405 * (v12 + v15) + 1187154554));
  v17 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v17, v17, 3);
  result.n128_u32[3] = v17.u32[3];
  *a6 = v14;
  *a7 = result;
  return result;
}

float ParticleInit_WeatherV136DefaultBackground_particleInit_87(double a1, float a2, float32x4_t a3, float a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, uint64_t a9, __int128 *a10, float *a11, float32x2_t *a12, float32x4_t *a13)
{
  v28 = *a10;
  v18 = vfx_script_clock_simulation_index();
  v19 = a7 / (a8 - 1);
  if (a8 == 1)
  {
    v19 = 0.0;
  }

  v20 = 277803737 * (((747796405 * (a7 + a6 + v18) - 174971515) >> (((747796405 * (a7 + a6 + v18) - 174971515) >> 28) + 4)) ^ (747796405 * (a7 + a6 + v18) - 174971515));
  v27 = v19 + (((COERCE_FLOAT((v20 >> 31) ^ (v20 >> 9) | 0x3F800000) + -1.0) * 0.08) + 0.0);
  vfx_script_clock_simulation_index();
  if (a7 % 0xC == 1 && a7 > 1)
  {
    v22 = 0.375;
  }

  else
  {
    v22 = ((a7 % 0xC + 1) / 12.0) + -0.041667;
  }

  vfx_script_clock_simulation_index();
  vfx_script_texture_sample1d();
  v24 = *&a1 + vmuls_n_f32(vsub_f32(vdup_lane_s32(*&a1, 1), *&a1).f32[0], v23);
  if (!a7)
  {
    v24 = 0.0;
  }

  if (a7 == 1)
  {
    v24 = *&a1;
  }

  *a11 = v22;
  *a12 = vmul_n_f32(vmul_n_f32(0x3F1C6A7F3F6ED917, v24), a2);
  *a13 = vmulq_n_f32(a3, a4);
  v25 = v28;
  *&v25 = v27;
  *a10 = v25;
  return *&v25;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_439(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = a5 + a4;
  v13 = 277803737 * (((747796405 * (v12 + v11) - 1403630843) >> (((747796405 * (v12 + v11) - 1403630843) >> 28) + 4)) ^ (747796405 * (v12 + v11) - 1403630843));
  v14 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v13 >> 31) ^ (v13 >> 9) | 0x3F800000) + -1.0, 2uLL) + 1, 2uLL) + -0.125;
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v12 + v15) + 322669363) >> (((747796405 * (v12 + v15) + 322669363) >> 28) + 4)) ^ (747796405 * (v12 + v15) + 322669363));
  v17 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v17, v17, 3);
  result.n128_u32[3] = v17.u32[3];
  *a6 = v14;
  *a7 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_20(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = 277803737 * (((747796405 * (v11 + a4) - 1403630843) >> (((747796405 * (v11 + a4) - 1403630843) >> 28) + 4)) ^ (747796405 * (v11 + a4) - 1403630843));
  v13 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v12 >> 31) ^ (v12 >> 9) | 0x3F800000) + -1.0, 2uLL) + 1, 2uLL) + -0.125;
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (a5 + a4 + v14) - 981112313) >> (((747796405 * (a5 + a4 + v14) - 981112313) >> 28) + 4)) ^ (747796405 * (a5 + a4 + v14) - 981112313));
  v16 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v16, v16, 3);
  result.n128_u32[3] = v16.u32[3];
  *a6 = v13;
  *a7 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_523(float32x4_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, float *a6, __n128 *a7)
{
  v11 = vfx_script_clock_simulation_index();
  v12 = a5 + a4;
  v13 = 277803737 * (((747796405 * (v12 + v11) - 1403630843) >> (((747796405 * (v12 + v11) - 1403630843) >> 28) + 4)) ^ (747796405 * (v12 + v11) - 1403630843));
  v14 = vcvts_n_f32_u64(vcvts_n_s32_f32(COERCE_FLOAT((v13 >> 31) ^ (v13 >> 9) | 0x3F800000) + -1.0, 3uLL) + 1, 3uLL) + -0.0625;
  v15 = vfx_script_clock_simulation_index();
  v16 = 277803737 * (((747796405 * (v12 + v15) + 725739762) >> (((747796405 * (v12 + v15) + 725739762) >> 28) + 4)) ^ (747796405 * (v12 + v15) + 725739762));
  v17 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), COERCE_FLOAT((v16 >> 31) ^ (v16 >> 9) | 0x3F800000) + -1.0);
  result = vmulq_laneq_f32(v17, v17, 3);
  result.n128_u32[3] = v17.u32[3];
  *a6 = v14;
  *a7 = result;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_204(__n128 a1, float a2, __n128 a3, uint64_t a4, int a5, unsigned int a6, unint64_t a7, int32x4_t *a8, __n128 *a9, __int128 *a10, __int128 *a11)
{
  v34 = *a10;
  v35 = *a11;
  v18 = vfx_script_clock_simulation_index();
  v19 = (a2 + a2) / a7;
  v20.i32[1] = 0;
  if (!a7)
  {
    v19 = 0.0;
  }

  v21 = a6 + a5;
  v22 = 277803737 * (((747796405 * (v21 + v18) + 211320929) >> (((747796405 * (v21 + v18) + 211320929) >> 28) + 4)) ^ (747796405 * (v21 + v18) + 211320929));
  *v20.i32 = COERCE_FLOAT((v22 >> 31) ^ (v22 >> 9) | 0x3F800000) + -1.0;
  v32 = v20;
  v23 = v19 * 0.5;
  v24 = (v19 * 0.5) + ((v19 * a6) - a2);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v21 + v25) - 152853208) >> (((747796405 * (v21 + v25) - 152853208) >> 28) + 4)) ^ (747796405 * (v21 + v25) - 152853208));
  *&v27 = v24 + (v23 * (COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0));
  v28 = a1;
  *a8 = vdupq_lane_s32(v32, 0);
  v28.n128_u32[3] = 1.0;
  *a9 = v28;
  v29 = v35;
  *(&v27 + 4) = *(&v34 + 4);
  *a10 = v27;
  result = a3;
  LODWORD(v29) = a3.n128_u32[0];
  *a11 = v29;
  return result;
}

float ParticleInit_WeatherV136DefaultBackground_particleInit_320(const void *a1, unsigned int a2, float a3, float *a4)
{
  result = (a3 * 3.1416) / 180.0;
  *a4 = result;
  return result;
}

int32x4_t ParticleInit_WeatherV136DefaultBackground_particleInit_467(int32x2_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4)
{
  result = vdupq_lane_s32(a1, 0);
  *a4 = result;
  return result;
}

__n128 __vfx_script_WeatherV136DefaultBackground_particleInit_467()
{
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_71(__n128 result, float a2, uint64_t a3, uint64_t a4, __n128 *a5, __int128 *a6)
{
  v6 = *a6;
  result.n128_u32[3] = 1.0;
  *a5 = result;
  *&v6 = a2;
  *a6 = v6;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_94(__n128 a1, float a2, __n128 a3, uint64_t a4, int a5, unsigned int a6, unint64_t a7, int32x4_t *a8, __n128 *a9, __int128 *a10, __int128 *a11)
{
  v34 = *a10;
  v35 = *a11;
  v18 = vfx_script_clock_simulation_index();
  v19 = (a2 + a2) / a7;
  v20.i32[1] = 0;
  if (!a7)
  {
    v19 = 0.0;
  }

  v21 = a6 + a5;
  v22 = 277803737 * (((747796405 * (v21 + v18) - 497579214) >> (((747796405 * (v21 + v18) - 497579214) >> 28) + 4)) ^ (747796405 * (v21 + v18) - 497579214));
  *v20.i32 = COERCE_FLOAT((v22 >> 31) ^ (v22 >> 9) | 0x3F800000) + -1.0;
  v32 = v20;
  v23 = v19 * 0.5;
  v24 = (v19 * 0.5) + ((v19 * a6) - a2);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v21 + v25 + 5) + 1937621135) >> (((747796405 * (v21 + v25 + 5) + 1937621135) >> 28) + 4)) ^ (747796405 * (v21 + v25 + 5) + 1937621135));
  *&v27 = v24 + (v23 * (COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0));
  v28 = a1;
  *a8 = vdupq_lane_s32(v32, 0);
  v28.n128_u32[3] = 1.0;
  *a9 = v28;
  v29 = v35;
  *(&v27 + 4) = *(&v34 + 4);
  *a10 = v27;
  result = a3;
  LODWORD(v29) = a3.n128_u32[0];
  *a11 = v29;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_456(__n128 a1, float a2, __n128 a3, uint64_t a4, int a5, unsigned int a6, unint64_t a7, int32x4_t *a8, __n128 *a9, __int128 *a10, __int128 *a11)
{
  v34 = *a10;
  v35 = *a11;
  v18 = vfx_script_clock_simulation_index();
  v19 = (a2 + a2) / a7;
  v20.i32[1] = 0;
  if (!a7)
  {
    v19 = 0.0;
  }

  v21 = a6 + a5;
  v22 = 277803737 * (((747796405 * (v21 + v18) - 1534427408) >> (((747796405 * (v21 + v18) - 1534427408) >> 28) + 4)) ^ (747796405 * (v21 + v18) - 1534427408));
  *v20.i32 = COERCE_FLOAT((v22 >> 31) ^ (v22 >> 9) | 0x3F800000) + -1.0;
  v32 = v20;
  v23 = v19 * 0.5;
  v24 = (v19 * 0.5) + ((v19 * a6) - a2);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v21 + v25 + 4) + 1648569346) >> (((747796405 * (v21 + v25 + 4) + 1648569346) >> 28) + 4)) ^ (747796405 * (v21 + v25 + 4) + 1648569346));
  *&v27 = v24 + (v23 * (COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0));
  v28 = a1;
  *a8 = vdupq_lane_s32(v32, 0);
  v28.n128_u32[3] = 1.0;
  *a9 = v28;
  v29 = v35;
  *(&v27 + 4) = *(&v34 + 4);
  *a10 = v27;
  result = a3;
  LODWORD(v29) = a3.n128_u32[0];
  *a11 = v29;
  return result;
}

__n128 ParticleInit_WeatherV136DefaultBackground_particleInit_452(__n128 a1, float a2, __n128 a3, uint64_t a4, int a5, unsigned int a6, unint64_t a7, int32x4_t *a8, __n128 *a9, __int128 *a10, __int128 *a11)
{
  v34 = *a10;
  v35 = *a11;
  v18 = vfx_script_clock_simulation_index();
  v19 = (a2 + a2) / a7;
  v20.i32[1] = 0;
  if (!a7)
  {
    v19 = 0.0;
  }

  v21 = a6 + a5;
  v22 = 277803737 * (((747796405 * (v21 + v18) + 1859828611) >> (((747796405 * (v21 + v18) + 1859828611) >> 28) + 4)) ^ (747796405 * (v21 + v18) + 1859828611));
  *v20.i32 = COERCE_FLOAT((v22 >> 31) ^ (v22 >> 9) | 0x3F800000) + -1.0;
  v32 = v20;
  v23 = v19 * 0.5;
  v24 = (v19 * 0.5) + ((v19 * a6) - a2);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v21 + v25 + 6) + 747858069) >> (((747796405 * (v21 + v25 + 6) + 747858069) >> 28) + 4)) ^ (747796405 * (v21 + v25 + 6) + 747858069));
  *&v27 = v24 + (v23 * (COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0));
  v28 = a1;
  *a8 = vdupq_lane_s32(v32, 0);
  v28.n128_u32[3] = 1.0;
  *a9 = v28;
  v29 = v35;
  *(&v27 + 4) = *(&v34 + 4);
  *a10 = v27;
  result = a3;
  LODWORD(v29) = a3.n128_u32[0];
  *a11 = v29;
  return result;
}

float32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_378(float a1, float a2, double a3, float a4, float a5, float a6, float a7, uint64_t a8, uint64_t a9, float *a10, float32x4_t *a11)
{
  v21 = LODWORD(a3);
  v14 = ((a1 * 3.1416) / 180.0) + a2;
  v15 = *(&a3 + 1);
  v16 = ((a5 * a6) * 0.04) + a4;
  if (*(&a3 + 1) >= v16)
  {
    v15 = v16;
  }

  v20 = v15;
  v17 = __sincosf_stret(((180.0 - a1) * 3.1416) / 180.0);
  *&v18 = v17.__sinval * a7;
  *(&v18 + 1) = v17.__cosval * a7;
  result = vaddq_f32(v18, __PAIR64__(LODWORD(v20), v21));
  *a10 = v14;
  *a11 = result;
  return result;
}

__n128 ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_128(float32x4_t a1, float32x4_t a2, float32x4_t a3, __n128 a4, float a5, float32x4_t a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 *a12, float32x4_t *a13, float *a14, float *a15, float a16, float a17)
{
  v42 = *a12;
  if (vmovn_s32(vcgtq_f32(a2, a1)).u8[0])
  {
    v26 = -a1.f32[0];
  }

  else
  {
    v26 = a2.f32[0];
  }

  if (v26 >= -a1.f32[0])
  {
    *&v18 = v26;
  }

  else
  {
    *&v18 = a1.f32[0];
  }

  v38 = a3.f32[0];
  v27 = a3.f32[1] + a4.n128_f32[0];
  a4.n128_f32[0] = -a5;
  v41 = a4;
  v28 = vmulq_laneq_f32(a6, a6, 3);
  v29 = (0.075 * a1.f32[0]) - a1.f32[0];
  v30 = fminf(fmaxf(vaddq_f32(a1, a2).f32[0] / (a1.f32[0] + v29), 0.0), 1.0);
  v31 = a1.f32[0] - (0.075 * a1.f32[0]);
  v32 = fminf(fmaxf(vsubq_f32(a2, a1).f32[0] / (v31 - a1.f32[0]), 0.0), 1.0);
  if (v31 > a2.f32[0])
  {
    v32 = 1.0;
  }

  if (v29 >= a2.f32[0])
  {
    v32 = v30;
  }

  v40 = vmulq_n_f32(v28, v32);
  v33 = vmuls_lane_f32((a7 * 3.1416) / 180.0, a3, 2);
  *(&v18 + 1) = v27;
  DWORD2(v18) = *(a11 + 8);
  v39 = v18;
  vfx_script_clock_time();
  *&v34 = v34;
  v35 = sinf(v38 + (*&v34 * a8));
  v36 = v41;
  *a13 = v40;
  *a14 = v33;
  *a15 = (v35 * a16) + a17;
  *a11 = v39;
  result = v42;
  *(v36.n128_u64 + 4) = *(v42.n128_u64 + 4);
  *a12 = v36;
  return result;
}

int8x16_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_208(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, int8x16_t *a7)
{
  v7 = vsubq_f32(a2, a3);
  v8 = vmulq_f32(v7, v7);
  a3.i64[0] = 1017370378;
  v8.f32[0] = fminf(fmaxf((sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)) + -70.0) / 50.0, 0.0), 1.0);
  result = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a4, a3), 0), vmulq_n_f32(a1, (v8.f32[0] * v8.f32[0]) * ((v8.f32[0] * -2.0) + 3.0)), a1);
  *a7 = result;
  return result;
}

__n128 ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_543(float a1, float a2, float a3, __n128 a4, float a5, float a6, float a7, __n128 a8, uint64_t a9, uint64_t a10, float *a11, __n128 *a12, __n128 *a13, float *a14)
{
  v20 = (a1 * 3.1416) / 180.0;
  v21 = a4.n128_f32[1];
  v22 = (a6 * a7) * 0.5;
  if (a4.n128_f32[1] >= ((v22 * 0.08) + a5))
  {
    v21 = (v22 * 0.08) + a5;
  }

  a4.n128_f32[1] = v21;
  a4.n128_u32[2] = a12->n128_u32[2];
  v25 = a4;
  vfx_script_clock_time();
  *&v23 = v23;
  *a11 = v20 + (((a3 * 3.1416) / 180.0) * sinf(*&v23 * a2));
  result = v25;
  *a13 = a8;
  *a14 = v22;
  *a12 = v25;
  return result;
}

__n128 ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_465(float a1, __n128 a2, float a3, float a4, float a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, float *a11, __n128 *a12, int32x4_t *a13, float *a14)
{
  v23 = a2.n128_f32[1];
  v24 = ((a4 * a5) * 0.04) + a3;
  if (a2.n128_f32[1] >= v24)
  {
    v23 = v24;
  }

  a2.n128_f32[1] = v23;
  a2.n128_u32[2] = a12->n128_u32[2];
  v32 = a2;
  vfx_script_clock_time();
  v26 = v25;
  v27 = (((sinf(v26 * 0.15) * 20.0) + a1) * 3.1416) / 180.0;
  *v28.i32 = a6 * a7;
  v31 = v28;
  v29 = sinf(v26 * 0.2);
  *a11 = v27;
  *a13 = vdupq_lane_s32(v31, 0);
  *a14 = (((v29 + v29) + a8) * a5) * 0.6;
  result = v32;
  *a12 = v32;
  return result;
}

int32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_501(double a1, float a2, float a3, double a4, float a5, float a6, float a7, __n128 a8, uint64_t a9, uint64_t a10, int32x4_t *a11, __n128 *a12)
{
  v12 = *&a1 + a2;
  v13 = v12 + a3;
  v14 = fabsf(v12 + a3);
  v15 = v12 / v13;
  v16 = *(&a4 + 1);
  if (*&a4 >= a5)
  {
    v16 = 0.0;
  }

  v17 = v14 > 0.00000011921;
  if (v14 > 0.00000011921)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *&a1 / v13;
  if (!v17)
  {
    v19 = 0.0;
  }

  v20 = v16;
  if (v19 >= a6)
  {
    v20 = ((v16 * 0.05) * fminf(fmaxf(a6 / v19, 0.0), 1.0)) + 0.0;
  }

  if (v18 < a6)
  {
    v20 = v16 + ((0.0 - v16) * fminf(fmaxf((a6 - v18) / (1.0 - v18), 0.0), 1.0));
  }

  *&a1 = v20 * a7;
  result = vdupq_lane_s32(*&a1, 0);
  *a11 = result;
  a8.n128_f32[2] = a8.n128_f32[2] + -1.0;
  *a12 = a8;
  return result;
}

__n128 ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_360(float32x4_t a1, __n128 a2, float a3, float32x4_t a4, float32x4_t a5, float a6, float a7, int8x8_t a8, uint64_t a9, uint64_t a10, uint64_t a11, float32x4_t *a12, float *a13, uint64_t a14, uint64_t a15, uint64_t a16, int8x8_t a17, uint64_t a18, float a19, float a20, uint64_t a21, float a22)
{
  v46 = *(a14 + 8);
  vfx_script_clock_time();
  *&v28 = v28;
  *v29.i32 = a2.n128_f32[1] + vmuls_lane_f32(sinf(a2.n128_f32[2] + (*&v28 * a2.n128_f32[0])), a2.n128_u64[0], 1);
  v48 = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(v29, 0), a1), a3);
  v30 = vsubq_f32(vaddq_f32(a4, xmmword_1BCE22F80), a5);
  v31 = vmulq_f32(v30, v30);
  v31.f32[0] = fminf(fmaxf((sqrtf(v31.f32[2] + vaddv_f32(*v31.f32)) - (0.5 * a6)) / (((0.5 * a6) + 5.5) - (0.5 * a6)), 0.0), 1.0);
  v32 = (v31.f32[0] * v31.f32[0]) * ((v31.f32[0] * -2.0) + 3.0);
  if (a7 <= 0.02)
  {
    v32 = 1.0;
  }

  v33 = vbsl_s8(vceqd_s64(a11, 0), a8, a17);
  v34 = ((v33.f32[0] + (vsub_f32(vdup_lane_s32(v33, 1), v33).f32[0] * a20)) * a19) * v32;
  vfx_script_clock_delta_time();
  v36 = __sincosf_stret(v35 * a22);
  *&v39 = vrev64_s32(vmul_n_f32(*a4.f32, v36.__sinval));
  v37 = vmul_n_f32(*a4.f32, v36.__cosval);
  v38.i32[0] = vsub_f32(v37, *&v39).u32[0];
  v38.i32[1] = vadd_f32(v37, *&v39).i32[1];
  *&v39 = vadd_f32(v38, 0);
  if (*(&v39 + 1) >= 0.0)
  {
    v40 = *&v39;
  }

  else
  {
    v40 = -*&v39;
  }

  *a12 = v48;
  *a13 = v34;
  *&v39 = v40;
  DWORD2(v39) = v46;
  *a14 = v39;
  result.n128_u64[0] = v39;
  result.n128_u32[2] = DWORD2(v39);
  return result;
}

float32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_314(float32x4_t a1, float a2, float a3, uint64_t a4, uint64_t a5, float32x4_t *a6)
{
  result = vmulq_n_f32(vmulq_n_f32(a1, a2), a3);
  *a6 = result;
  return result;
}

__n128 __vfx_script_WeatherV136DefaultBackground_particleUpdate_314()
{
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

__n128 ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_120(float a1, float a2, float a3, float a4, float a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v16 = *a8;
  vfx_script_clock_time();
  *&v13 = v13;
  *&v14 = ((((sinf(*&v13 * a1) * a2) + a3) * a4) * a5) + 0.0;
  *(&v14 + 4) = *(&v16 + 4);
  *a8 = v14;
  result.n128_u64[0] = v14;
  result.n128_u32[2] = DWORD2(v14);
  return result;
}

float32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_138(float32x4_t a1, float32x4_t a2, __n128 a3, float a4, __n128 a5, double a6, float a7, float32x4_t a8, uint64_t a9, uint64_t a10, _OWORD *a11, __n128 *a12, float32x4_t *a13, float *a14, uint64_t a15, uint64_t a16, float a17, uint64_t a18, float a19, uint64_t a20, float32x2_t a21)
{
  v22 = *a12;
  if (vmovn_s32(vcgtq_f32(a2, a1)).u8[0])
  {
    v23 = -a1.f32[0];
  }

  else
  {
    v23 = a2.f32[0];
  }

  if (v23 >= -a1.f32[0])
  {
    *&v21 = v23;
  }

  else
  {
    *&v21 = a1.f32[0];
  }

  v24 = a3.n128_f32[1] + a4;
  v25 = a3.n128_f32[2] + a5.n128_f32[0];
  a5.n128_f32[0] = -(*&a6 + (vsub_f32(vdup_lane_s32(*&a6, 1), *&a6).f32[0] * a7));
  v26 = vmulq_laneq_f32(a8, a8, 3);
  a8.f32[0] = a17 * 0.6;
  v27 = vdupq_lane_s32(*a8.f32, 0);
  v27.i32[3] = 1.0;
  v28 = vmulq_f32(v26, v27);
  v29 = (0.075 * a1.f32[0]) - a1.f32[0];
  v30 = fminf(fmaxf(vaddq_f32(a1, a2).f32[0] / (a1.f32[0] + v29), 0.0), 1.0);
  v27.f32[0] = a1.f32[0] - (0.075 * a1.f32[0]);
  v31 = fminf(fmaxf(vsubq_f32(a2, a1).f32[0] / (v27.f32[0] - a1.f32[0]), 0.0), 1.0);
  if (v27.f32[0] > a2.f32[0])
  {
    v31 = 1.0;
  }

  if (v29 >= a2.f32[0])
  {
    v31 = v30;
  }

  result = vmulq_n_f32(v28, v31);
  *a13 = result;
  *a14 = a19 * (a21.f32[0] + (vsub_f32(vdup_lane_s32(a21, 1), a21).f32[0] * a7));
  *(&v21 + 1) = v24;
  *(&v21 + 2) = v25;
  *a11 = v21;
  a5.n128_u32[1] = v22.n128_u32[1];
  a5.n128_u32[2] = v22.n128_u32[2];
  *a12 = a5;
  return result;
}

float ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_474(double a1, float a2, float a3, uint64_t a4, uint64_t a5, float *a6, float *a7)
{
  result = ((*(&a1 + 1) + ((*&a1 - *(&a1 + 1)) * fminf(fmaxf(a2 / 30.0, 0.0), 1.0))) * 0.95) * 0.9;
  *a6 = result;
  *a7 = (a3 * 3.1416) / 180.0;
  return result;
}

float __vfx_script_WeatherV136DefaultBackground_particleUpdate_474()
{
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

float ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_402(float a1, float a2, double a3, float a4, float a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, unsigned int a11, float *a12, float a13)
{
  v17 = (a4 + a5) + a6;
  v18 = fabsf(v17);
  v19 = v18 > 0.00000011921;
  v20 = 0.0;
  if (v18 > 0.00000011921)
  {
    v21 = (a4 + a5) / v17;
  }

  else
  {
    v21 = 0.0;
  }

  if (v19)
  {
    v20 = a4 / v17;
  }

  v22 = a1 * a2;
  v23 = vmuls_lane_f32(a2, *&a3, 1);
  if (*&a3 != 0.0)
  {
    v22 = v23;
  }

  v24 = fminf(fmaxf((a7 - v21) / (1.0 - v21), 0.0), 1.0);
  v25 = fminf(fmaxf((a7 - v20) / ((a4 + a8) - v20), 0.0), 1.0);
  if (*&a3 == 0.0)
  {
    v25 = v24;
  }

  v26 = v22 * (1.0 - v25);
  if (((*&a3 + ((1.0 - *&a3) * ((a11 % 0x81) / 129.0))) * v20) >= a7)
  {
    v23 = 0.0;
  }

  if (v20 <= a7)
  {
    v23 = v26;
  }

  else
  {
    v22 = v23;
  }

  if (v21 < a7)
  {
    v22 = v26;
  }

  if (*&a3 != 0.0)
  {
    v22 = v23;
  }

  result = v22 * a13;
  *a12 = result;
  return result;
}

void ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_232(float a1, float a2, __n128 a3, float32x4_t a4, float a5, float32x2_t a6, float32x4_t a7, double a8, uint64_t a9, uint64_t a10, __int128 *a11, float32x4_t *a12, float *a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17, float a18, uint64_t a19, float a20)
{
  v21 = *a11;
  v22 = a3.n128_f32[2] + a5;
  v20.f32[0] = a4.f32[2] - v22;
  v23 = vaddq_f32(a4, vmulq_f32(v20, a17)).f32[0] / 15.6;
  *&a8 = *&a8 * 0.6;
  v24 = vdupq_lane_s32(*&a8, 0);
  v24.i32[3] = 1.0;
  v25 = vmulq_f32(vmulq_laneq_f32(a7, a7, 3), v24);
  v26 = vadd_f32(vzip2_s32(a3.n128_u64[0], vadd_f32(*a4.f32, vmul_n_f32(a6, a4.f32[2] - v22))), (LODWORD(a2) | 0x3F00000000000000));
  if (v26.f32[0] <= v26.f32[1])
  {
    v26.f32[0] = v26.f32[1];
  }

  v27 = v26.f32[0] + a1;
  v28 = a18 * a20;
  if (v23 > (a18 * a20))
  {
    v28 = v23;
  }

  *a12 = v25;
  *a13 = v28;
  *(&v21 + 1) = v27;
  *(&v21 + 2) = v22;
  *a11 = v21;
}

float32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_244(float32x4_t a1, float32x4_t a2, __n128 a3, float a4, __n128 a5, double a6, float a7, float32x4_t a8, uint64_t a9, uint64_t a10, _OWORD *a11, __n128 *a12, float32x4_t *a13, float *a14, uint64_t a15, uint64_t a16, float a17, uint64_t a18, float a19, uint64_t a20, float32x2_t a21)
{
  v22 = *a12;
  if (vmovn_s32(vcgtq_f32(a2, a1)).u8[0])
  {
    v23 = -a1.f32[0];
  }

  else
  {
    v23 = a2.f32[0];
  }

  if (v23 >= -a1.f32[0])
  {
    *&v21 = v23;
  }

  else
  {
    *&v21 = a1.f32[0];
  }

  v24 = a3.n128_f32[1] + a4;
  v25 = a3.n128_f32[2] + a5.n128_f32[0];
  a5.n128_f32[0] = -(*&a6 + (vsub_f32(vdup_lane_s32(*&a6, 1), *&a6).f32[0] * a7));
  v26 = (0.075 * a1.f32[0]) - a1.f32[0];
  v27 = fminf(fmaxf(vaddq_f32(a1, a2).f32[0] / (a1.f32[0] + v26), 0.0), 1.0);
  v28 = a1.f32[0] - (0.075 * a1.f32[0]);
  v29 = fminf(fmaxf(vsubq_f32(a2, a1).f32[0] / (v28 - a1.f32[0]), 0.0), 1.0);
  if (v28 > a2.f32[0])
  {
    v29 = 1.0;
  }

  if (v26 >= a2.f32[0])
  {
    v29 = v27;
  }

  *&a6 = a17 * 0.6;
  v30 = vdupq_lane_s32(*&a6, 0);
  v30.i32[3] = 1.0;
  result = vmulq_n_f32(vmulq_f32(vmulq_laneq_f32(a8, a8, 3), v30), v29);
  *a13 = result;
  *a14 = a19 * (a21.f32[0] + (vsub_f32(vdup_lane_s32(a21, 1), a21).f32[0] * a7));
  *(&v21 + 1) = v24;
  *(&v21 + 2) = v25;
  *a11 = v21;
  a5.n128_u32[1] = v22.n128_u32[1];
  a5.n128_u32[2] = v22.n128_u32[2];
  *a12 = a5;
  return result;
}

float32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_276(float32x4_t a1, float32x4_t a2, __n128 a3, float a4, __n128 a5, double a6, float a7, float32x4_t a8, uint64_t a9, uint64_t a10, _OWORD *a11, __n128 *a12, float32x4_t *a13, float *a14, uint64_t a15, uint64_t a16, float a17, uint64_t a18, float a19, uint64_t a20, float32x2_t a21)
{
  v22 = *a12;
  if (vmovn_s32(vcgtq_f32(a2, a1)).u8[0])
  {
    v23 = -a1.f32[0];
  }

  else
  {
    v23 = a2.f32[0];
  }

  if (v23 >= -a1.f32[0])
  {
    *&v21 = v23;
  }

  else
  {
    *&v21 = a1.f32[0];
  }

  v24 = a3.n128_f32[1] + a4;
  v25 = a3.n128_f32[2] + a5.n128_f32[0];
  a5.n128_f32[0] = -(*&a6 + (vsub_f32(vdup_lane_s32(*&a6, 1), *&a6).f32[0] * a7));
  v26 = vmulq_laneq_f32(a8, a8, 3);
  a8.f32[0] = a17 * 0.6;
  v27 = vdupq_lane_s32(*a8.f32, 0);
  v27.i32[3] = 1.0;
  v28 = vmulq_f32(v26, v27);
  v29 = (0.075 * a1.f32[0]) - a1.f32[0];
  v30 = fminf(fmaxf(vaddq_f32(a1, a2).f32[0] / (a1.f32[0] + v29), 0.0), 1.0);
  v27.f32[0] = a1.f32[0] - (0.075 * a1.f32[0]);
  v31 = fminf(fmaxf(vsubq_f32(a2, a1).f32[0] / (v27.f32[0] - a1.f32[0]), 0.0), 1.0);
  if (v27.f32[0] > a2.f32[0])
  {
    v31 = 1.0;
  }

  if (v29 >= a2.f32[0])
  {
    v31 = v30;
  }

  result = vmulq_n_f32(v28, v31);
  *a13 = result;
  *a14 = a19 * (a21.f32[0] + (vsub_f32(vdup_lane_s32(a21, 1), a21).f32[0] * a7));
  *(&v21 + 1) = v24;
  *(&v21 + 2) = v25;
  *a11 = v21;
  a5.n128_u32[1] = v22.n128_u32[1];
  a5.n128_u32[2] = v22.n128_u32[2];
  *a12 = a5;
  return result;
}

float32x4_t ParticleUpdate_WeatherV136DefaultBackground_particleUpdate_176(float32x4_t a1, float32x4_t a2, __n128 a3, float a4, float a5, float32x4_t a6, float a7, double a8, uint64_t a9, uint64_t a10, _OWORD *a11, float32x4_t *a12, float32x4_t *a13, float *a14, uint64_t a15, uint64_t a16, float a17, uint64_t a18, float a19, uint64_t a20, float32x2_t a21)
{
  v22 = *a13;
  if (vmovn_s32(vcgtq_f32(a2, a1)).u8[0])
  {
    v23 = -a1.f32[0];
  }

  else
  {
    v23 = a2.f32[0];
  }

  if (v23 >= -a1.f32[0])
  {
    *&v21 = v23;
  }

  else
  {
    *&v21 = a1.f32[0];
  }

  v24 = a3.n128_f32[1] + a4;
  v25 = a3.n128_f32[2] + a5;
  v26 = vmulq_laneq_f32(a6, a6, 3);
  a6.f32[0] = a7 * 0.6;
  v27 = vdupq_lane_s32(*a6.f32, 0);
  v27.i32[3] = 1.0;
  v28 = vmulq_f32(v26, v27);
  v29 = (0.075 * a1.f32[0]) - a1.f32[0];
  v30 = fminf(fmaxf(vaddq_f32(a1, a2).f32[0] / (a1.f32[0] + v29), 0.0), 1.0);
  v27.f32[0] = a1.f32[0] - (0.075 * a1.f32[0]);
  v31 = fminf(fmaxf(vsubq_f32(a2, a1).f32[0] / (v27.f32[0] - a1.f32[0]), 0.0), 1.0);
  if (v27.f32[0] > a2.f32[0])
  {
    v31 = 1.0;
  }

  if (v29 >= a2.f32[0])
  {
    v31 = v30;
  }

  result = vmulq_n_f32(v28, v31);
  v28.f32[0] = -(*&a8 + (vsub_f32(vdup_lane_s32(*&a8, 1), *&a8).f32[0] * a17));
  *a12 = result;
  *a14 = a19 * (a21.f32[0] + (vsub_f32(vdup_lane_s32(a21, 1), a21).f32[0] * a17));
  *(&v21 + 1) = v24;
  *(&v21 + 2) = v25;
  *a11 = v21;
  v28.i32[1] = v22.i32[1];
  v28.i32[2] = v22.i32[2];
  *a13 = v28;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BC9DC4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BC9DD50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BC9DD818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1BC9DE3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n64 _convertToRGBfFromSRGB8_fast(__int16 a1)
{
  result.n64_u32[0] = _CLKUIDecodeSRGBTable[a1];
  result.n64_u32[1] = _CLKUIDecodeSRGBTable[HIBYTE(a1)];
  return result;
}

double _convertToRGBfFromSRGBf_fast(double a1)
{
  LODWORD(v1) = _CLKUIDecodeSRGBTable[(255.0 * *&a1)];
  HIDWORD(v1) = _CLKUIDecodeSRGBTable[vmuls_lane_f32(255.0, *&a1, 1)];
  return v1;
}

double CLKUIConvertToRGBfFromXRSRGBf(float32x4_t a1)
{
  v1.i64[0] = 0x8000000080000000;
  v1.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vabsq_f32(a1);
  v10 = vandq_s8(vorrq_s8(vandq_s8(a1, v1), _Q2), vorrq_s8(vcltzq_f32(a1), vcgtzq_f32(a1)));
  v7 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v9), vdivq_f32(v9, vdupq_n_s32(0x414EB852u)), _simd_pow_f4(vdivq_f32(vaddq_f32(v9, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du)), vdupq_n_s64(0x4019999A4019999AuLL)));
  v7.i32[3] = v9.i32[3];
  *&result = vmulq_f32(v10, v7).u64[0];
  return result;
}

double CLKUIConvertToXRSRGBfFromRGBf(float32x4_t a1)
{
  v1.i64[0] = 0x8000000080000000;
  v1.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v9 = vabsq_f32(a1);
  v10 = vandq_s8(vorrq_s8(vandq_s8(a1, v1), _Q2), vorrq_s8(vcltzq_f32(a1), vcgtzq_f32(a1)));
  v7 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), v9), vmulq_f32(v9, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(v9, vdupq_n_s64(0x3ED555553ED55555uLL))));
  v7.i32[3] = v9.i32[3];
  *&result = vmulq_f32(v10, v7).u64[0];
  return result;
}

double CLKUIConvertToRGBfFromSRGBf_fast(float32x4_t a1)
{
  __asm { FMOV            V1.4S, #1.0 }

  return _convertToRGBfFromSRGBf_fast(*vminnmq_f32(vmaxnmq_f32(a1, 0), _Q1).i64);
}

__n64 CLKUIConvertToSRGBfFromRGBf_fast(float32x4_t a1)
{
  __asm { FMOV            V1.4S, #1.0 }

  v6 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(a1, 0), _Q1), vdupq_n_s32(0x45CDF000u)).u64[0];
  result.n64_u32[0] = _CLKUIEncodeSRGBTable[*&v6];
  result.n64_u32[1] = _CLKUIEncodeSRGBTable[*(&v6 + 1)];
  return result;
}

uint64_t CLKUIConvertToSRGB8FromRGBf_fast(float32x4_t a1)
{
  v1 = vmulq_f32(a1, vdupq_n_s32(0x45CDF000u));
  v1.i32[0] = _CLKUIEncodeSRGBTable[v1.f32[0]];
  v1.i32[1] = _CLKUIEncodeSRGBTable[v1.f32[1]];
  v1.i32[2] = _CLKUIEncodeSRGBTable[v1.f32[2]];
  v1.i32[3] = a1.i32[3];
  v2 = vmulq_f32(v1, vdupq_n_s32(0x437F0000u));
  v3 = *v2.i32;
  v2.i32[0] = vextq_s8(v2, v2, 8uLL).i32[1];
  *v2.i8 = vshl_u32(vcvt_s32_f32(*v2.i8), 0x800000018);
  return v2.i32[0] | (*&v2.i32[2] << 16) | v3 | v2.i32[1];
}

__n64 CLKUIConvertToRGBfFromSRGB8_fast(__int16 a1)
{
  result.n64_u32[0] = _CLKUIDecodeSRGBTable[a1];
  result.n64_u32[1] = _CLKUIDecodeSRGBTable[HIBYTE(a1)];
  return result;
}

double CLKUIConvertToRGBfFromUIColor_fast(void *a1)
{
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  v1.f64[0] = v7;
  v2.f64[0] = v5;
  v1.f64[1] = v6;
  v2.f64[1] = v4;
  return _convertToRGBfFromSRGBf_fast(*vcvt_hight_f32_f64(vcvt_f32_f64(v1), v2).i64);
}

int8x16_t CLKUIConvertToRGBfFromUIColor(void *a1)
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  [a1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  v1.f64[0] = v9;
  v2.f64[0] = v7;
  v1.f64[1] = v8;
  v2.f64[1] = v6;
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(v1), v2);
  v5 = vcvt_f32_f64(v2).i32[1];
  result = _simd_pow_f4(vdivq_f32(vaddq_f32(v4, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du)), vdupq_n_s64(0x4019999A4019999AuLL));
  result.i64[0] = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v4), vdivq_f32(v4, vdupq_n_s32(0x414EB852u)), result).u64[0];
  result.i32[3] = v5;
  return result;
}

uint64_t CLKUIConvertToUIColorFromRGBf(float32x4_t a1)
{
  v1 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), a1), vmulq_f32(a1, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(a1, vdupq_n_s64(0x3ED555553ED55555uLL))));
  v2 = MEMORY[0x1E69DC888];

  return [v2 colorWithRed:*v1.i32 green:*&v1.i32[1] blue:*&v1.i32[2] alpha:a1.f32[3]];
}

int8x16_t CLKUIConvertToRGBfFromUIColor_dynamic(void *a1)
{
  v12 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v1 = v12 >= 0.0 && v12 <= 1.0;
  v2.f64[0] = v12;
  v2.f64[1] = v11;
  v3.f64[0] = v10;
  v3.f64[1] = v9;
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(v2), v3);
  if (v1 && (v11 >= 0.0 ? (v5 = v11 <= 1.0) : (v5 = 0), v5 && (v10 >= 0.0 ? (v6 = v10 <= 1.0) : (v6 = 0), v6)))
  {
    *result.i64 = _convertToRGBfFromSRGBf_fast(*v4.i64);
  }

  else
  {
    v8 = v4;
    result = _simd_pow_f4(vdivq_f32(vaddq_f32(v4, vdupq_n_s32(0x3D6147AEu)), vdupq_n_s32(0x3F870A3Du)), vdupq_n_s64(0x4019999A4019999AuLL));
    result.i64[0] = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v8), vdivq_f32(v8, vdupq_n_s32(0x414EB852u)), result).u64[0];
    result.i32[3] = v8.i32[3];
  }

  return result;
}

uint64_t CLKUIConvertToUIColorFromRGBf_dynamic(float32x4_t a1)
{
  v2 = a1.f32[3];
  v3 = a1.f32[0] >= 0.0 && a1.f32[0] <= 1.0;
  if (v3 && (a1.f32[1] >= 0.0 ? (v4 = a1.f32[1] <= 1.0) : (v4 = 0), v4 && (a1.f32[2] >= 0.0 ? (v5 = a1.f32[2] <= 1.0) : (v5 = 0), v5)))
  {
    v10 = vmulq_f32(a1, vdupq_n_s32(0x45CDF000u));
    v7.i32[0] = _CLKUIEncodeSRGBTable[v10.f32[0]];
    v7.i32[1] = _CLKUIEncodeSRGBTable[v10.f32[1]];
    v7.i32[2] = _CLKUIEncodeSRGBTable[v10.f32[2]];
  }

  else
  {
    v6 = _simd_pow_f4(a1, vdupq_n_s64(0x3ED555553ED55555uLL));
    v2 = a1.f32[3];
    v7 = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3B4D2C6Eu), a1), vmulq_f32(a1, vdupq_n_s32(0x414EB852u)), vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), v6));
  }

  v8 = MEMORY[0x1E69DC888];

  return [v8 colorWithRed:*v7.i32 green:*&v7.i32[1] blue:*&v7.i32[2] alpha:v2];
}

uint64_t _CLKUIRawImageGenerateMipmapsSRGB8(uint64_t result, int a2)
{
  if (a2 >= 2)
  {
    v2 = result;
    v3 = a2;
    v4 = (result + 4 * v3 * v3);
    __asm { FMOV            V3.4S, #0.25 }

    v23 = _Q3;
    do
    {
      v10 = 0;
      v11 = v4;
      do
      {
        v12 = (v2 + 4 * v10 * v3);
        v13 = &v12[v3];
        do
        {
          v14 = &v12[v3];
          v15 = *v12;
          v16 = v12[1];
          v12 += 2;
          v17.i32[0] = _CLKUIDecodeSRGBTable[v15];
          v17.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v15)];
          v17.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v15)];
          v17.f32[3] = HIBYTE(v15) / 255.0;
          v18.i32[0] = _CLKUIDecodeSRGBTable[v16];
          v18.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v16)];
          v18.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v16)];
          v18.f32[3] = HIBYTE(v16) / 255.0;
          v19 = vaddq_f32(v17, v18);
          v20 = *v14;
          LODWORD(v14) = v14[1];
          v18.i32[0] = _CLKUIDecodeSRGBTable[v20];
          v18.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v20)];
          v18.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v20)];
          v18.f32[3] = HIBYTE(v20) / 255.0;
          v21 = vaddq_f32(v19, v18);
          v18.i32[0] = _CLKUIDecodeSRGBTable[v14];
          v18.i32[1] = _CLKUIDecodeSRGBTable[BYTE1(v14)];
          v18.i32[2] = _CLKUIDecodeSRGBTable[BYTE2(v14)];
          v18.f32[3] = BYTE3(v14) / 255.0;
          result = CLKUIConvertToSRGB8FromRGBf_fast(vmulq_f32(vaddq_f32(v21, v18), _Q3));
          _Q3 = v23;
          *v11++ = result;
        }

        while (v12 < v13);
        v10 += 2;
      }

      while (v10 < v3);
      v2 += 4 * v3 * v3;
      v4 += (v3 >> 1) * (v3 >> 1);
      v22 = v3 > 3;
      v3 >>= 1;
    }

    while (v22);
  }

  return result;
}

uint64_t _CLKUIRawImageWriteToFileSRGB8(const void *a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = CGDataProviderCreateWithData(0, a1, 4 * a2 * a3, 0);
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v10 = CGImageCreate(a2, a3, 8uLL, 0x20uLL, 4 * a2, v9, 0, v8, 0, 0, kCGRenderingIntentDefault);
  v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v10];
  v12 = UIImagePNGRepresentation(v11);
  [v12 writeToFile:v7 atomically:1];
  CGImageRelease(v10);
  CGDataProviderRelease(v8);
  CGColorSpaceRelease(v9);

  return 1;
}

id CLKUIInterpolateBetweenColors(void *a1, void *a2, float a3)
{
  v4 = a1;
  v5 = a2;
  if (CLKEqualObjects())
  {
    v6 = v5;
  }

  else
  {
    v11 = CLKUIConvertToRGBfFromUIColor_dynamic(v4);
    v7 = vmlaq_n_f32(v11, vsubq_f32(CLKUIConvertToRGBfFromUIColor_dynamic(v5), v11), a3);
    v8 = vmulq_f32(v7, vdupq_n_s32(0x45CDF000u));
    v6 = [MEMORY[0x1E69DC888] colorWithRed:*&_CLKUIEncodeSRGBTable[v8.f32[0]] green:*&_CLKUIEncodeSRGBTable[v8.f32[1]] blue:*&_CLKUIEncodeSRGBTable[v8.f32[2]] alpha:v7.f32[3]];
  }

  v9 = v6;

  return v9;
}

double _CLKUIRGB2LAB(float32x4_t a1)
{
  v1 = vdivq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1BCE23110, *a1.f32, 1), xmmword_1BCE23120, a1.f32[0]), xmmword_1BCE23130, a1, 2), xmmword_1BCE23140);
  v8 = v1;
  if (v1.f32[0] >= 0.0088565)
  {
    v3 = powf(v1.f32[0], 0.33333);
    v1 = v8;
    v2 = v3;
  }

  else
  {
    v2 = (v1.f32[0] * 7.787) + 0.13793;
  }

  if (v1.f32[1] >= 0.0088565)
  {
    v5 = powf(v1.f32[1], 0.33333);
    v1.i32[2] = v8.i32[2];
    v4 = v5;
  }

  else
  {
    v4 = (v1.f32[1] * 7.787) + 0.13793;
  }

  if (v1.f32[2] >= 0.0088565)
  {
    powf(v1.f32[2], 0.33333);
  }

  *&v6 = (v4 * 116.0) + -16.0;
  *(&v6 + 1) = (v2 - v4) * 500.0;
  return v6;
}

double _CLKUILAB2RGB(float32x4_t _Q0)
{
  _S2 = 990057071;
  __asm { FMLA            S3, S2, V0.S[1] }

  _S2 = -1146890486;
  _D3.f32[1] = (_Q0.f32[0] * 0.0086207) + 0.13793;
  __asm { FMLA            S1, S2, V0.S[2] }

  *_Q0.f32 = vbsl_s8(vcge_f32(_D3, vdup_n_s32(0x3E53DCB1u)), vmul_f32(_D3, vmul_f32(_D3, _D3)), vmul_f32(vadd_f32(_D3, vdup_n_s32(0xBE0D3DCB)), vdup_n_s32(0x3E038027u)));
  if (_S1 >= 0.2069)
  {
    v9 = _S1 * (_S1 * _S1);
  }

  else
  {
    v9 = (_S1 + -0.13793) * 0.12842;
  }

  _Q0.f32[2] = v9;
  v10 = vmulq_f32(_Q0, xmmword_1BCE23140);
  *&result = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(xmmword_1BCE23150, *v10.f32, 1), xmmword_1BCE23160, v10.f32[0]), xmmword_1BCE23170, v10, 2).u64[0];
  return result;
}

__n128 CLKUIConvertRGBtoLAB(float32x4_t a1)
{
  v2 = a1.u32[3];
  result.n128_f64[0] = _CLKUIRGB2LAB(a1);
  result.n128_u32[3] = v2;
  return result;
}

__n128 CLKUIConvertLABtoRGB(float32x4_t a1)
{
  v2 = a1.u32[3];
  result.n128_f64[0] = _CLKUILAB2RGB(a1);
  result.n128_u32[3] = v2;
  return result;
}

uint64_t CLKUICompareColorsByLightness(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v12 = CLKUIConvertToRGBfFromUIColor_dynamic(v3);
    v11 = CLKUIConvertToRGBfFromUIColor_dynamic(v4);
    *v6.i64 = _CLKUIRGB2LAB(v12);
    v13 = v6;
    *v7.i64 = _CLKUIRGB2LAB(v11);
    v8 = vmovn_s32(vcgtq_f32(v13, v7)).u8[0];
    v9 = vmovn_s32(vcgtq_f32(v7, v13)).u16[0];
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v5 = (v9 << 63) >> 63;
    }
  }

  return v5;
}

id CLKGetBytesFromImage(void *a1, size_t a2, size_t a3, uint64_t a4, size_t a5, CGColorSpace *a6, uint32_t a7)
{
  v13 = [a1 CGImage];
  v14 = a4 * a2;
  v15 = malloc_type_calloc(v14 * a3, 1uLL, 0x100004077774924uLL);
  v16 = CGBitmapContextCreate(v15, a2, a3, a5, v14, a6, a7);
  v20.size.width = a2;
  v20.size.height = a3;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  CGContextDrawImage(v16, v20, v13);
  CGContextRelease(v16);
  v17 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:v14 * a3];
  free(v15);

  return v17;
}

id CLKCreateImageFromBytes(UInt8 *bytes, size_t a2, size_t a3, uint64_t a4, size_t a5, CGColorSpace *a6, CGBitmapInfo a7)
{
  v13 = a4 * a2;
  v14 = CFDataCreate(0, bytes, a4 * a2 * a3);
  v15 = CGDataProviderCreateWithCFData(v14);
  v16 = CGImageCreate(a2, a3, a5, a5 * a4, v13, a6, a7, v15, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v15);
  CFRelease(v14);
  v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v16];
  CGImageRelease(v16);

  return v17;
}

unint64_t _CLKClamp(uint64_t a1, unint64_t a2)
{
  if (a1 <= a2)
  {
    return a1 & ~(a1 >> 63);
  }

  else
  {
    return a2;
  }
}

double _CLKPixelAtPosition(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint8x8_t a6)
{
  v6 = a2 - 1;
  if (a2 - 1 >= a4)
  {
    v6 = a4 & ~(a4 >> 63);
  }

  v7 = a3 - 1;
  if (a3 - 1 >= a5)
  {
    v7 = a5 & ~(a5 >> 63);
  }

  a6.i32[0] = *&a1[4 * v6 + 4 * v7 * a2];
  *&result = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a6))).u64[0];
  return result;
}

double _CLKIntensityForPixelAtPosition(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8)
{
  v8 = a2 - 1;
  if (a2 - 1 >= a4)
  {
    v8 = a4 & ~(a4 >> 63);
  }

  v9 = a3 - 1;
  if (a3 - 1 >= a5)
  {
    v9 = a5 & ~(a5 >> 63);
  }

  v10 = &a1[4 * v8 + 4 * v9 * a2];
  LOBYTE(a6) = *v10;
  LOBYTE(a7) = v10[1];
  LOBYTE(a8) = v10[2];
  return ((LODWORD(a6) + LODWORD(a7)) + LODWORD(a8)) / 3.0;
}

double _CLKCalculateNormal(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v16 = a5 - 1;
  v17 = a2 - 1;
  if (a2 - 1 >= (a4 - 1))
  {
    v18 = (a4 - 1) & ~((a4 - 1) >> 63);
  }

  else
  {
    v18 = a2 - 1;
  }

  v19 = a3 - 1;
  v20 = v16 & ~(v16 >> 63);
  if (a3 - 1 < v16)
  {
    v20 = a3 - 1;
  }

  v21 = v20 * a2;
  v22 = &a1[4 * v21 + 4 * v18];
  LOBYTE(a6) = *v22;
  LOBYTE(a7) = v22[1];
  LOBYTE(a8) = v22[2];
  v23 = LODWORD(a8);
  v24 = ((LODWORD(a6) + LODWORD(a7)) + v23) / 3.0;
  v25 = a5 & ~(a5 >> 63);
  if (v19 < a5)
  {
    v25 = a3 - 1;
  }

  v26 = v25 * a2;
  v27 = &a1[4 * v26 + 4 * v18];
  LOBYTE(v23) = *v27;
  LOBYTE(a9) = v27[1];
  v28 = LODWORD(a9);
  LOBYTE(a10) = v27[2];
  v29 = LODWORD(a10);
  v30 = ((LODWORD(v23) + v28) + v29) / 3.0;
  if (v19 >= a5 + 1)
  {
    v19 = (a5 + 1) & ~((a5 + 1) >> 63);
  }

  v31 = v19 * a2;
  v32 = &a1[4 * v31 + 4 * v18];
  LOBYTE(v28) = *v32;
  LOBYTE(v29) = v32[1];
  v33 = LODWORD(v29);
  LOBYTE(a11) = v32[2];
  v34 = LODWORD(a11);
  v35 = ((LODWORD(v28) + v33) + v34) / 3.0;
  v36 = a4 & ~(a4 >> 63);
  if (v17 < a4)
  {
    v36 = a2 - 1;
  }

  v37 = &a1[4 * v21 + 4 * v36];
  LOBYTE(v33) = *v37;
  LOBYTE(v34) = v37[1];
  *&v38 = LODWORD(v34);
  LOBYTE(a12) = v37[2];
  *&v39 = LODWORD(a12);
  v40 = ((LODWORD(v33) + *&v38) + *&v39) / 3.0;
  v41 = &a1[4 * v31 + 4 * v36];
  LOBYTE(v38) = *v41;
  LOBYTE(v39) = v41[1];
  v42 = v39;
  LOBYTE(a13) = v41[2];
  v43 = LODWORD(a13);
  v44 = ((v38 + v42) + v43) / 3.0;
  if (v17 >= a4 + 1)
  {
    v17 = (a4 + 1) & ~((a4 + 1) >> 63);
  }

  v45 = &a1[4 * v21 + 4 * v17];
  LOBYTE(v42) = *v45;
  LOBYTE(v43) = v45[1];
  *&v46 = LODWORD(v43);
  LOBYTE(v13) = v45[2];
  *&v47 = v13;
  v48 = ((LODWORD(v42) + *&v46) + *&v47) / 3.0;
  v49 = &a1[4 * v26 + 4 * v17];
  LOBYTE(v46) = *v49;
  LOBYTE(v47) = v49[1];
  *&v50 = v47;
  LOBYTE(v14) = v49[2];
  *&v51 = v14;
  v52 = ((v46 + *&v50) + *&v51) / 3.0;
  v53 = &a1[4 * v31 + 4 * v17];
  LOBYTE(v50) = *v53;
  LOBYTE(v51) = v53[1];
  LOBYTE(v15) = v53[2];
  v54 = ((v50 + v51) + v15) / 3.0;
  *&v55 = v48 + v52 * 2.0 + v54 - (v24 + v30 * 2.0 + v35);
  *&v56 = v35 + v44 * 2.0 + v54 - (v24 + v40 * 2.0 + v48);
  v57.i64[1] = 0x3F0000003F000000;
  v57.i64[0] = __PAIR64__(v56, v55);
  v58 = vmulq_f32(v57, v57);
  *&v59 = v58.f32[2] + vaddv_f32(*v58.f32);
  *v58.f32 = vrsqrte_f32(v59);
  *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32)));
  *&result = vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v59, vmul_f32(*v58.f32, *v58.f32))).f32[0]).u64[0];
  return result;
}

char *_CLKGenerateNormalMap(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = malloc_type_malloc(a3 * a2 * a4, 0x100004077774924uLL);
  if (a2)
  {
    v16 = 0;
    v17 = v23 + 3;
    do
    {
      if (a3)
      {
        v18 = 0;
        v19 = v17;
        do
        {
          v20 = _CLKCalculateNormal(a1, a2, a3, v16, v18, *&v8, *&v9, v10, v11, v12, v13, v14, v15);
          *(v19 - 3) = ((*&v20 + 1.0) * 127.5);
          v9 = (*(&v20 + 1) + 1.0) * 127.5;
          v8 = (v21 + 1.0) * 127.5;
          *(v19 - 2) = v9;
          *(v19 - 1) = v8;
          *v19 = 1;
          ++v18;
          v19 += a4 * a2;
        }

        while (a3 != v18);
      }

      ++v16;
      v17 += a4;
    }

    while (v16 != a2);
  }

  return v23;
}

id CLKGenerateNormalMapFromImageInRGBA8(void *a1)
{
  v1 = a1;
  v2 = [v1 CGImage];
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v6 = CLKGetBytesFromImage(v1, Width, Height, 4, 8uLL, v5, 0x4001u);
  CGColorSpaceRelease(v5);
  v7 = _CLKGenerateNormalMap([v6 bytes], Width, Height, 4);
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:4 * Width * Height];
  free(v7);

  return v8;
}

id CLKUIConvertUIImageToMTLTexture(void *a1, uint64_t a2)
{
  v24 = a1;
  v3 = +[CLKUIMetalResourceManager sharedDevice];
  v4 = [v24 CGImage];
  Width = CGImageGetWidth(v4);
  Height = CGImageGetHeight(v4);
  BytesPerRow = CGImageGetBytesPerRow(v4);
  BitsPerPixel = CGImageGetBitsPerPixel(v4);
  if ((BitsPerPixel & 7) != 0)
  {
    __assert_rtn("CLKUIConvertUIImageToMTLTexture", "CLKUIImageUtilities.mm", 1302, "bitsPerPixel % 8 == 0");
  }

  v9 = +[MetalDeviceInfo sharedInfo];
  v10 = BitsPerPixel >> 3;
  v11 = (BitsPerPixel >> 3) * Width;
  v12 = [v3 newBufferWithLength:v11 * Height options:{objc_msgSend(v9, "defaultResourceOptionForDevice:", v3)}];

  DataProvider = CGImageGetDataProvider(v4);
  v14 = CGDataProviderCopyData(DataProvider);
  v15 = v14;
  if (v14)
  {
    BytePtr = CFDataGetBytePtr(v14);
    v17 = [v12 contents];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CLKUIConvertUIImageToMTLTexture_block_invoke;
    block[3] = &__block_descriptor_72_e8_v16__0Q8l;
    block[4] = BytePtr;
    block[5] = Height;
    block[6] = BytesPerRow;
    block[7] = v17;
    block[8] = v11;
    dispatch_apply(Height, 0, block);
    CFRelease(v15);
    v18 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a2 width:Width height:Height mipmapped:0];
    [v18 setStorageMode:2];
    [v18 setUsage:1];
    v19 = [v3 newTextureWithDescriptor:v18];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __CLKUIConvertUIImageToMTLTexture_block_invoke_2;
    aBlock[3] = &unk_1E7FF8B28;
    v28 = Width;
    v29 = v10;
    v30 = Height;
    v26 = v12;
    v27 = v19;
    v20 = v19;
    v21 = _Block_copy(aBlock);
    v22 = _Block_copy(v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void *__CLKUIConvertUIImageToMTLTexture_block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 blitCommandEncoder];
  v4 = a1[7] * a1[6];
  v5 = a1[8];
  v12[0] = a1[6];
  v12[1] = v5;
  v12[2] = 1;
  v6 = a1[4];
  v7 = a1[5];
  memset(v11, 0, sizeof(v11));
  [v3 copyFromBuffer:v6 sourceOffset:0 sourceBytesPerRow:v4 sourceBytesPerImage:v4 * v5 sourceSize:v12 toTexture:v7 destinationSlice:0 destinationLevel:0 destinationOrigin:v11];
  [v3 endEncoding];
  v8 = a1[5];
  v9 = v8;

  return v8;
}

id CLKUIConvertMTLTextureToUIImage(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v7 = 1398;
  if (a2 <= 552)
  {
    if (a2 == 80)
    {
      v8 = MEMORY[0x1E695F138];
      goto LABEL_14;
    }

    if (a2 == 81)
    {
      v8 = MEMORY[0x1E695F1C0];
LABEL_14:
      v10 = CGColorSpaceCreateWithName(*v8);
      v11 = 8194;
      v12 = 8;
      goto LABEL_15;
    }

LABEL_20:
    __assert_rtn("CLKUIConvertMTLTextureToUIImage", "CLKUIImageUtilities.mm", v7, "NO");
  }

  if (a2 != 553 && a2 != 555)
  {
    goto LABEL_20;
  }

  if ([v5 pixelFormat] != 555)
  {
    if ([v6 pixelFormat] == 71)
    {
      v8 = MEMORY[0x1E695F0B8];
      goto LABEL_14;
    }

    v7 = 1393;
    goto LABEL_20;
  }

  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v11 = 270336;
  v12 = 10;
LABEL_15:
  v13 = [v6 width];
  v14 = [v6 height];
  v15 = ((v13 * 4.0) * v14);
  v16 = malloc_type_malloc(v15, 0x4E0DBA16uLL);
  v17 = vcvtd_n_u64_f64(v13, 2uLL);
  memset(v21, 0, 24);
  v21[3] = v13;
  v21[4] = v14;
  v21[5] = 1;
  [v6 getBytes:v16 bytesPerRow:v17 fromRegion:v21 mipmapLevel:0];
  v18 = CGDataProviderCreateWithData(0, v16, v15, frameBufferReleaseCallback);
  v19 = CGImageCreate(v13, v14, v12, 0x20uLL, v17, v10, v11, v18, 0, 1, kCGRenderingIntentDefault);
  v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v19 scale:0 orientation:a3];
  CGImageRelease(v19);
  CGColorSpaceRelease(v10);
  CGDataProviderRelease(v18);
LABEL_16:

  return v9;
}

id CLKUIShadowImage(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = v13;
  if (v11)
  {
    if (v13)
    {
      [v13 CGSizeValue];
    }

    else
    {
      [v11 size];
    }

    v18 = v15;
    v19 = v16;
    v17 = 0;
    if (v15 >= 1.0 && v16 >= 1.0)
    {
      [v11 scale];
      v21 = v20;
      v22 = [v11 CGImage];
      v23 = [v12 CGColor];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      BitsPerComponent = CGImageGetBitsPerComponent(v22);
      v26 = CGBitmapContextCreate(0, ((v18 + (a4 + a6) * 2.0) * v21), ((v19 + (a5 + a6) * 2.0) * v21), BitsPerComponent, 0, DeviceRGB, 1u);
      CGColorSpaceRelease(DeviceRGB);
      v30.width = a4 * v21;
      v30.height = a5 * v21;
      CGContextSetShadowWithColor(v26, v30, v21 * a6, v23);
      CGContextSetFillColorWithColor(v26, v23);
      CGContextSetBlendMode(v26, kCGBlendModeColor);
      v31.origin.x = (a4 + a6) * v21;
      v31.origin.y = (a5 + a6) * v21;
      v31.size.width = v18 * v21;
      v31.size.height = v19 * v21;
      CGContextDrawImage(v26, v31, v22);
      Image = CGBitmapContextCreateImage(v26);
      CGContextRelease(v26);
      v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:objc_msgSend(v11 orientation:{"imageOrientation"), v21}];
      CGImageRelease(Image);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id CLKUIShadowImageFromView(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (v11)
  {
    v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v15 = [v11 image];
    v16 = [v14 initWithImage:v15];

    if (v13)
    {
      [v13 CGSizeValue];
      v18 = v17;
      v20 = v19;
    }

    else
    {
      [v11 frame];
      v18 = v22;
      v20 = v23;
    }

    v21 = 0;
    if (v18 >= 1.0 && v20 >= 1.0)
    {
      v24 = [v16 image];
      [v24 scale];
      v26 = v25;

      v27 = [v16 layer];
      LODWORD(v28) = 1.0;
      [v27 setShadowOpacity:v28];
      [v27 setShadowRadius:v26 * a6];
      v29 = v12;
      if (!v12)
      {
        v29 = [MEMORY[0x1E69DC888] blackColor];
      }

      [v27 setShadowColor:{objc_msgSend(v29, "CGColor")}];
      v30 = (v18 + (a4 + a6) * 2.0) * v26;
      if (!v12)
      {
      }

      [v27 setShadowOffset:{0.0 - v30, 0.0}];
      [v16 setFrame:{a4, a5, v18, v20}];
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v32 = (v20 + (a5 + a6) * 2.0) * v26;
      v33 = CGBitmapContextCreate(0, v30, v32, 8uLL, 0, DeviceRGB, 1u);
      CGColorSpaceRelease(DeviceRGB);
      CGContextTranslateCTM(v33, v30 + a6 * v26, v32 - a6 * v26);
      CGContextScaleCTM(v33, v26, -v26);
      [v27 renderInContext:v33];
      Image = CGBitmapContextCreateImage(v33);
      CGContextRelease(v33);
      v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v26];
      CGImageRelease(Image);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id filterNamesToIndicesMap()
{
  if (filterNamesToIndicesMap_onceToken != -1)
  {
    filterNamesToIndicesMap_cold_1();
  }

  v1 = filterNamesToIndicesMap_namesToIndices;

  return v1;
}

void __filterNamesToIndicesMap_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"CLKUITritiumViewFilterTypeBrightnessName";
  v2[1] = @"CLKUITritiumViewFilterTypeSaturationName";
  v3[0] = &unk_1F3B663A8;
  v3[1] = &unk_1F3B663C0;
  v2[2] = @"CLKUIViewFilterTypeNameTritiumTapThrough";
  v3[2] = &unk_1F3B663D8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = filterNamesToIndicesMap_namesToIndices;
  filterNamesToIndicesMap_namesToIndices = v0;
}

float CLKUITritiumMaxAPL()
{
  if (CLKUITritiumMaxAPL_onceToken != -1)
  {
    CLKUITritiumMaxAPL_cold_1();
  }

  if ((CLKUITritiumMaxAPL___needsUpdate & 1) == 0)
  {
    CLKUITritiumMaxAPL___needsUpdate = 1;
    v0 = [MEMORY[0x1E695B4F8] currentDevice];
    v1 = [v0 deviceCategory];

    if (v1 <= 4)
    {
      CLKUITritiumMaxAPL_maxAPL = dword_1BCE3A808[v1];
    }

    v2 = CFPreferencesCopyAppValue(@"NTKMaxTritiumFaceAPL", @"com.apple.NanoTimeKit");
    v3 = v2;
    if (v2)
    {
      [v2 floatValue];
      v5 = v4 / 100.0;
      if (v5 < 0.0)
      {
        v5 = 0.0;
      }

      *&v6 = fmin(v5, 1.0);
      CLKUITritiumMaxAPL_maxAPL = v6;
    }
  }

  return *&CLKUITritiumMaxAPL_maxAPL;
}

uint64_t __CLKUITritiumMaxAPL_block_invoke()
{
  v0 = [@"com.apple.NanoTimeKit.MaxAPLChanged" UTF8String];
  v1 = MEMORY[0x1E69E96A0];

  return notify_register_dispatch(v0, &CLKUITritiumMaxAPL_notifyToken, v1, &__block_literal_global_4);
}

float _linearizeAndComputeAPL(uint64_t a1, vDSP_Length a2)
{
  v2 = 0.0;
  if (a1)
  {
    v5 = malloc_type_malloc(12 * a2, 0x100004052888210uLL);
    if (v5)
    {
      v6 = v5;
      v7 = &v5[a2];
      v8 = &v5[2 * a2];
      if (a2)
      {
        v9 = (a1 + 2);
        v10 = a2;
        v11 = v5;
        do
        {
          *v11 = _NTKAPLGammaTable[*(v9 - 2)];
          v11[a2] = _NTKAPLGammaTable[*(v9 - 1)];
          v12 = *v9;
          v9 += 4;
          v11[2 * a2] = _NTKAPLGammaTable[v12];
          ++v11;
          --v10;
        }

        while (v10);
      }

      __C = 0;
      v15 = 0.0;
      vDSP_meanv(v5, 1, &__C + 1, a2);
      vDSP_meanv(v7, 1, &__C, a2);
      vDSP_meanv(v8, 1, &v15, a2);
      free(v6);
      v13.i64[0] = __PAIR64__(__C, HIDWORD(__C));
      v13.f32[2] = v15;
      return CLKUIConvertP3ToAPL(v13);
    }
  }

  return v2;
}

CGContext *CreateDrawImageToBitmap(void *a1)
{
  v1 = a1;
  [v1 size];
  v4 = 0;
  if (v2 != 0.0)
  {
    v5 = v3;
    if (v3 != 0.0)
    {
      v6 = v2;
      v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      v4 = CGBitmapContextCreate(0, v6, v5, 8uLL, 0, v7, 1u);
      CGContextSetInterpolationQuality(v4, kCGInterpolationNone);
      v8 = [v1 CGImage];
      v10.origin.x = 0.0;
      v10.origin.y = 0.0;
      v10.size.width = v6;
      v10.size.height = v5;
      CGContextDrawImage(v4, v10, v8);
      CGColorSpaceRelease(v7);
    }
  }

  return v4;
}

float CLKUIComputeDimmingRequiredToObtainAPLGivenAPL(float a1, float a2, float a3)
{
  v5 = CLKUITritiumMaxAPL() - a2;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = (v5 / a3) / a1;

  return powf(v6, 0.45455);
}

float CLKUIComputeImageAPL(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = 0.0;
  if (v1)
  {
    DrawImageToBitmap = CreateDrawImageToBitmap(v1);
    if (DrawImageToBitmap)
    {
      v5 = DrawImageToBitmap;
      Width = CGBitmapContextGetWidth(DrawImageToBitmap);
      Height = CGBitmapContextGetHeight(v5);
      Data = CGBitmapContextGetData(v5);
      if (Data)
      {
        v3 = _linearizeAndComputeAPL(Data, (Width * Height));
      }

      CGContextRelease(v5);
    }
  }

  return v3;
}

float CLKUIComputeDimmingRequiredToObtainImageAPLUnclamped(void *a1, float a2, float a3)
{
  v5 = CLKUIComputeImageAPL(a1);
  v6 = CLKUITritiumMaxAPL() - a2;
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = (v6 / a3) / v5;

  return powf(v7, 0.45455);
}

float CLKUIComputeDimmingRequiredToObtainImageAPL(void *a1, float a2, float a3)
{
  v5 = CLKUIComputeImageAPL(a1);
  v6 = CLKUITritiumMaxAPL() - a2;
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return fminf(powf((v6 / a3) / v5, 0.45455), 1.0);
}

float CLKUIComputeDimmingRequiredToObtainImageAPLClamped(void *a1, float a2)
{
  v2 = 0.082 - a2;
  v3 = CLKUIComputeImageAPL(a1);
  v4 = CLKUITritiumMaxAPL() - v2;
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  return fminf(powf(v4 / v3, 0.45455), 1.0);
}

float CLKUIComputeDimmingRequiredToObtainQuadAPLUnclamped(void *a1, float a2, float a3)
{
  [a1 computeAPL];
  v6 = v5;
  v7 = CLKUITritiumMaxAPL() - a2;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = (v7 / a3) / v6;

  return powf(v8, 0.45455);
}

float CLKUIComputeDimmingRequiredToObtainQuadAPL(void *a1, float a2, float a3)
{
  [a1 computeAPL];
  v6 = v5;
  v7 = CLKUITritiumMaxAPL() - a2;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  return fminf(powf((v7 / a3) / v6, 0.45455), 1.0);
}

id _CLKUIComputeTextureAPL(void *a1, void *a2, id *a3)
{
  v6 = a2;
  v7 = a1;
  v8 = +[CLKUIMetalResourceManager sharedDevice];
  v9 = [v8 supportsFamily:1004];
  if (!*a3)
  {
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v30 = 0;
    v11 = [v8 newDefaultLibraryWithBundle:v10 error:&v30];
    v12 = v30;

    v13 = [v11 newFunctionWithName:@"compute_apl"];
    v29 = v12;
    v3 = [v8 newComputePipelineStateWithFunction:v13 error:&v29];
    v14 = v29;

    v15 = v3;
    *a3 = v3;
  }

  v16 = [v8 newBufferWithLength:12 options:1];
  v17 = [v6 computeCommandEncoder];

  [v17 setComputePipelineState:*a3];
  [v17 setBuffer:v16 offset:0 atIndex:2];
  [v17 setBuffer:v16 offset:4 atIndex:3];
  [v17 setBuffer:v16 offset:8 atIndex:4];
  [v17 setTexture:v7 atIndex:0];
  v18 = [*a3 threadExecutionWidth];
  v19 = [*a3 maxTotalThreadsPerThreadgroup] / v18;
  LODWORD(v3) = vcvtpd_u64_f64([v7 width] / 6.0);
  v20 = [v7 height];

  LODWORD(v21) = vcvtpd_u64_f64(v20 / 6.0);
  if (v9)
  {
    v26 = v3;
    v27 = v21;
    v28 = 1;
    v23 = v18;
    v24 = v19;
    v25 = 1;
    [v17 dispatchThreads:&v26 threadsPerThreadgroup:&v23];
  }

  else
  {
    v26 = (v3 + v18 - 1) / v18;
    v27 = (v19 + v21 - 1) / v19;
    v28 = 1;
    v23 = v18;
    v24 = v19;
    v25 = 1;
    [v17 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v23];
  }

  [v17 endEncoding];

  return v16;
}

float CLKUIGetAPLFromSumBuffer(void *a1, uint64_t a2, uint64_t a3)
{
  *&v8 = (a3 * a2) * 255.0;
  v3 = [a1 contents];
  v4.i64[0] = *v3;
  v4.i64[1] = HIDWORD(*v3);
  v5 = vdupq_lane_s64(v8, 0);
  v6 = vdivq_f64(vcvtq_f64_u64(v4), v5);
  *v6.f32 = vcvt_f32_f64(v6);
  LODWORD(v5.f64[0]) = *(v3 + 8);
  *v5.f64 = *&v5.f64[0] / *&v8;
  v6.i32[2] = LODWORD(v5.f64[0]);

  return CLKUIConvertSRGBToAPL(v6);
}

id CLKUIComputeTextureAPL(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = _CLKUIComputeTextureAPL(v5, a2, a3);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __CLKUIComputeTextureAPL_block_invoke;
  v12[3] = &unk_1E7FF8EA0;
  v13 = v6;
  v14 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(v12);
  v10 = _Block_copy(v9);

  return v10;
}

float __CLKUIComputeTextureAPL_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) width];
  v4 = [*(a1 + 40) height];

  return CLKUIGetAPLFromSumBuffer(v2, v3, v4);
}

float CLKUIComputeColorAPL(void *a1)
{
  v1 = *MEMORY[0x1E695F0F0];
  v2 = a1;
  v3 = CGColorSpaceCreateWithName(v1);
  v4 = [v2 CGColor];

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentDefault, v4, 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v7 = *Components;
  *v7.f32 = vcvt_f32_f64(*Components);
  v8 = Components[1].f64[0];
  v7.f32[2] = v8;
  v9 = CLKUIConvertP3ToAPL(v7);
  CGColorRelease(CopyByMatchingToColorSpace);
  CGColorSpaceRelease(v3);
  return v9;
}

float CLKUIComputeDimmingRequiredToObtainColorAPLUnclamped(void *a1, float a2, float a3)
{
  v5 = CLKUIComputeColorAPL(a1);
  v6 = CLKUITritiumMaxAPL() - a2;
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = (v6 / a3) / v5;

  return powf(v7, 0.45455);
}

float CLKUIComputeDimmingRequiredToObtainColorAPL(void *a1, float a2, float a3)
{
  v5 = CLKUIComputeColorAPL(a1);
  v6 = CLKUITritiumMaxAPL() - a2;
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  return fminf(powf((v6 / a3) / v5, 0.45455), 1.0);
}

void CLKUIConvertTextureFromXRSRGBtoP3(void *a1, void *a2, void *a3, id *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [v7 width];
  if (v10 == [v8 width])
  {
    v11 = [v7 height];
    v12 = [v8 height];
    if (v8)
    {
      if (v7 && v11 == v12)
      {
        v13 = +[CLKUIMetalResourceManager sharedDevice];
        v14 = [v13 supportsFamily:1004];
        if (!*a4)
        {
          v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v35 = 0;
          v16 = [v13 newDefaultLibraryWithBundle:v15 error:&v35];
          v27 = v14;
          v17 = v35;

          v18 = [v16 newFunctionWithName:@"compute_convert_xrsrgb_to_p3"];
          v34 = v17;
          v19 = [v13 newComputePipelineStateWithFunction:v18 error:&v34];
          v20 = v34;

          v14 = v27;
          v21 = v19;

          *a4 = v19;
        }

        v22 = [v9 computeCommandEncoder];
        [v22 setComputePipelineState:*a4];
        [v22 setTexture:v7 atIndex:0];
        [v22 setTexture:v8 atIndex:1];
        v23 = [*a4 threadExecutionWidth];
        v24 = [*a4 maxTotalThreadsPerThreadgroup] / v23;
        v25 = [v7 width];
        v26 = [v7 height];
        if (v14)
        {
          v31 = v25;
          v32 = v26;
          v33 = 1;
          v28 = v23;
          v29 = v24;
          v30 = 1;
          [v22 dispatchThreads:&v31 threadsPerThreadgroup:&v28];
        }

        else
        {
          v31 = (v23 + v25 - 1) / v23;
          v32 = (v24 + v26 - 1) / v24;
          v33 = 1;
          v28 = v23;
          v29 = v24;
          v30 = 1;
          [v22 dispatchThreadgroups:&v31 threadsPerThreadgroup:&v28];
        }

        [v22 endEncoding];
      }
    }
  }
}

float NUNIAstronomyClampLatitude(float a1)
{
  result = 80.0;
  if (a1 <= 80.0)
  {
    result = a1;
    if (a1 < -80.0)
    {
      return -80.0;
    }
  }

  return result;
}

double _NTKAstronomyNormalizeCoordinateForRotationAroundCoordinate(double result, double a2, double a3, double a4)
{
    ;
  }

    ;
  }

    ;
  }

    ;
  }

  return result;
}

id NUNIBundle()
{
  if (NUNIBundle_onceToken != -1)
  {
    NUNIBundle_cold_1();
  }

  v1 = NUNIBundle___bundle;

  return v1;
}

uint64_t __NUNIBundle_block_invoke()
{
  NUNIBundle___bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1BC9E6B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double CLKUIComputePow2SubRect(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 size];
    [v1 scale];
    [v1 size];
    [v1 scale];
  }

  return 0.0;
}

uint64_t _CLKUIDeterminePlaneLength(int a1, int a2, int a3, int a4)
{
  if ((a1 - 5) > 1)
  {
    if ((a1 - 11) > 0x37)
    {
      return (a3 * a2 * a4);
    }

    else
    {
      v6 = HIDWORD(*&s_artFormatsAstcBlockSize[a1]);
      v7 = *&s_artFormatsAstcBlockSize[a1];
      return 16 * (a2 + v7 - 1) / v7 * ((a3 + v6 - 1) / v6);
    }
  }

  else
  {
    v4 = 4 * a3 * a2 + 7;
    if (v4 >= 0x100)
    {
      return v4 >> 3;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1BC9EA2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NUNILoggingObjectForDomain(uint64_t a1)
{
  if (NUNILoggingObjectForDomain_onceToken != -1)
  {
    NUNILoggingObjectForDomain_cold_1();
  }

  v2 = NUNILoggingObjectForDomain___logObjects;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void __NUNILoggingObjectForDomain_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = os_log_create("com.apple.NanoUniverse", "nanouniverse");
  if (v1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v0 setObject:v1 forKey:v2];
  }

  v3 = NUNILoggingObjectForDomain___logObjects;
  NUNILoggingObjectForDomain___logObjects = v0;
}

id _NUNAegirCreateTexture(void *a1, int a2, int a3, int a4, uint64_t a5)
{
  v9 = a1;
  if (a5)
  {
    v10 = objc_opt_new();
    [v10 setTextureType:2];
    [v10 setWidth:a2];
    [v10 setHeight:a3];
    [v10 setDepth:1];
    [v10 setPixelFormat:a5];
    [v10 setUsage:5];
    [v10 setResourceOptions:32];
    if (a4 >= 2)
    {
      [v10 setMipmapLevelCount:a4];
    }

    v11 = [v9 newTextureWithDescriptor:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = NUNILoggingObjectForDomain(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _NUNAegirCreateTexture_cold_1(v14);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _NUNIAegirRenderCompareObject(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CLKUIFetchPrimaryGamutMatrix(_OWORD *a1)
{
  v1 = MEMORY[0x1E69E9B10];
  v2 = *(MEMORY[0x1E69E9B10] + 16);
  *a1 = *MEMORY[0x1E69E9B10];
  a1[1] = v2;
  a1[2] = *(v1 + 32);
  return 1;
}

double CLKUIPrimaryGamutMatrix()
{
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
  }

  return *&CLKUIPrimaryGamutMatrix_p3ToNativeMatrix;
}

uint64_t __CLKUINativeToAPLCoeff_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock);
  if (_block_invoke___cachedDevice)
  {
    v3 = _block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_value;
  }

  else
  {
    _block_invoke___cachedDevice = v2;
    _block_invoke___previousCLKDeviceVersion = [v2 version];
    v6 = [v2 deviceCategory];
    if (v6 == 4)
    {
      v7 = xmmword_1BCE3AD00;
    }

    else if (v6 == 3)
    {
      v7 = xmmword_1BCE3ACF0;
    }

    else
    {
      v7 = xmmword_1BCE3ACE0;
    }

    CLKUINativeToAPLCoeff_coeff = v7;
    v5 = 1;
    _block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock);

  return v5;
}

double CLKUIConvertP3ToNative(float32x4_t a1)
{
  v1 = a1;
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
    v1 = a1;
  }

  v2 = vtrn2q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, *algn_1EBD0EB70);
  v2.i32[2] = DWORD1(xmmword_1EBD0EB80);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, xmmword_1EBD0EB80), *algn_1EBD0EB70), v1.f32[0]), v2, *v1.f32, 1), vzip1q_s32(vzip2q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, xmmword_1EBD0EB80), vdupq_laneq_s32(*algn_1EBD0EB70, 2)), v1, 2).u64[0];
  return result;
}

float CLKUIConvertNativeToAPL(float32x4_t a1)
{
  v1 = [MEMORY[0x1E695B4F8] currentDevice];
  __CLKUINativeToAPLCoeff_block_invoke(v1, v1);
  v2 = vmulq_f32(CLKUINativeToAPLCoeff_coeff, a1);
  v3 = v2.f32[2] + vaddv_f32(*v2.f32);

  return v3;
}

float CLKUIConvertP3ToAPL(float32x4_t a1)
{
  v2 = a1;
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
    v2 = a1;
  }

  v3 = vtrn2q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, *algn_1EBD0EB70);
  v3.i32[2] = DWORD1(xmmword_1EBD0EB80);
  v4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, xmmword_1EBD0EB80), *algn_1EBD0EB70), v2.f32[0]), v3, *v2.f32, 1), vzip1q_s32(vzip2q_s32(CLKUIPrimaryGamutMatrix_p3ToNativeMatrix, xmmword_1EBD0EB80), vdupq_laneq_s32(*algn_1EBD0EB70, 2)), v2, 2);

  return CLKUIConvertNativeToAPL(v4);
}

double sRGBtoNative()
{
  if (sRGBtoNative_onceToken != -1)
  {
    sRGBtoNative_cold_1();
  }

  return *&sRGBtoNative_sRGBToNative;
}

double __sRGBtoNative_block_invoke()
{
  if (CLKUIPrimaryGamutMatrix_onceToken != -1)
  {
    CLKUIPrimaryGamutMatrix_cold_1();
  }

  v0 = 0;
  v1 = CLKUIPrimaryGamutMatrix_p3ToNativeMatrix;
  v2 = *algn_1EBD0EB70;
  HIDWORD(v1) = 0;
  HIDWORD(v2) = 0;
  v3 = xmmword_1EBD0EB80;
  HIDWORD(v3) = 0;
  v5[0] = v1;
  v5[1] = v2;
  v5[2] = v3;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  do
  {
    *(&v6 + v0 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1BCE3AD10, COERCE_FLOAT(v5[v0])), xmmword_1BCE3AD20, *&v5[v0], 1), xmmword_1BCE3AD30, v5[v0], 2);
    ++v0;
  }

  while (v0 != 3);
  result = *&v6;
  DWORD2(sRGBtoNative_sRGBToNative) = DWORD2(v6);
  *algn_1EBD0EBD8 = DWORD2(v7);
  *&sRGBtoNative_sRGBToNative = v6;
  qword_1EBD0EBD0 = v7;
  DWORD2(xmmword_1EBD0EBE0) = DWORD2(v8);
  *&xmmword_1EBD0EBE0 = v8;
  return result;
}

float CLKUIConvertSRGBToAPL(float32x4_t a1)
{
  v2 = a1;
  if (sRGBtoNative_onceToken != -1)
  {
    sRGBtoNative_cold_1();
    v2 = a1;
  }

  v3 = vtrn2q_s32(sRGBtoNative_sRGBToNative, *&qword_1EBD0EBD0);
  v3.i32[2] = DWORD1(xmmword_1EBD0EBE0);
  v4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(sRGBtoNative_sRGBToNative, xmmword_1EBD0EBE0), *&qword_1EBD0EBD0), v2.f32[0]), v3, *v2.f32, 1), vzip1q_s32(vzip2q_s32(sRGBtoNative_sRGBToNative, xmmword_1EBD0EBE0), vdupq_laneq_s32(*&qword_1EBD0EBD0, 2)), v2, 2);

  return CLKUIConvertNativeToAPL(v4);
}

void sub_1BC9EEE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float _NUNISphereoidComputeRadius(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0.14894;
  }

  else
  {
    if (((1 << a1) & 0xFFC000) != 0)
    {
      v4 = a1 - 14;
    }

    else
    {
      v4 = a1;
    }

    if (v4)
    {
      if (v4 == 7)
      {
        v2 = 0.051282;
      }

      else if (v4 == 6)
      {
        v2 = 0.057692;
      }

      else
      {
        v2 = 0.044872;
      }
    }

    else
    {
      v2 = 0.070513;
    }
  }

  if ((a1 - 12) < 2)
  {
    v2 = v2 + v2;
    return v2 * 0.5;
  }

  if (a1 != 10)
  {
    if (a1 == 11)
    {
      return 0.3;
    }

    return v2 * 0.5;
  }

  return 0.5;
}

double NUNIComputeSpheroidParentPosition(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0000305175853;
  }

  v3 = a2;
  v4 = a1;
  v5 = [v4 parent];
  *v6.i64 = NUNIComputeSpheroidParentPosition(v5, v3);
  v10 = v6;

  v14 = 0;
  v13 = 0.0;
  v12 = 0;
  v11 = 0;
  [v4 date:v3 toEquatorRotation:&v14 + 4 toAngle:&v14 toLight:&v11 toDistance:&v13 toRadius:&v12];

  v7 = vmul_n_f32(__sincosf_stret(*&v14), v13);
  LODWORD(v8) = v7.i32[1];
  *(&v8 + 1) = -v7.f32[0];
  *&result = vaddq_f32(v10, v8).u64[0];
  return result;
}

__n128 NUNIComputeCameraView(uint64_t a1, uint64_t a2, float a3)
{
  v3 = -*&a2;
  if (a1 == 4)
  {
    v3 = 180.0 - *&a2;
  }

  if (a1 == 3)
  {
    v3 = -90.0 - *&a2;
  }

  v4 = COERCE_FLOAT(HIDWORD(a2) ^ 0x80000000) * 3.14159265 / 180.0;
  v5 = v3 * 3.14159265 / 180.0 - a3 + 0.0;
  v6 = __sincosf_stret(v4);
  v7 = __sincosf_stret(v5);
  result.n128_u64[0] = vmul_n_f32(__PAIR64__(LODWORD(v7.__sinval), LODWORD(v7.__cosval)), v6.__cosval);
  result.n128_u32[2] = LODWORD(v6.__sinval);
  return result;
}

void sub_1BC9F3024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CLKUIMetalAtlasPrewarmStateDescription(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"prewarming";
  }

  if (a1 == 2)
  {
    return @"prewarmed";
  }

  else
  {
    return v1;
  }
}

void sub_1BC9F4570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n64 UMFloat4x4Make(float a1, float a2, float a3, float a4)
{
  v4 = (a1 * (a2 + a2)) + (a4 * (a3 + a3));
  result.n64_f32[0] = 1.0 - ((a2 * (a2 + a2)) + (a3 * (a3 + a3)));
  result.n64_f32[1] = v4;
  return result;
}

float UMFloat4x4MakeOrtho(float32x2_t a1, float32x2_t a2, float32_t a3, float32_t a4, float a5, float a6)
{
  a2.f32[1] = a4;
  a1.f32[1] = a3;
  v6 = vsub_f32(a2, a1);
  __asm { FMOV            V1.2S, #1.0 }

  _D1.f32[0] = vdiv_f32(_D1, v6).f32[0];
  return _D1.f32[0] + _D1.f32[0];
}

BOOL UMFloat4x4Equal(simd_float4x4 a1, simd_float4x4 a2)
{
  v7 = a1;
  v6[0] = a2.columns[1];
  v6[1] = a2.columns[2];
  v6[2] = a2.columns[3];
  if ((vminvq_u32(vceqq_f32(a1.columns[0], a2.columns[0])) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v3 == 3)
    {
      break;
    }

    v5 = vminvq_u32(vceqq_f32(v7.columns[v3 + 1], v6[v3]));
    ++v3;
  }

  while ((v5 & 0x80000000) != 0);
  return v4 > 2;
}

float UMQuaternionMake(float a1, float a2, float a3)
{
  v5 = __sincosf_stret(a1 * 0.5);
  v6 = __sincosf_stret(a2 * 0.5);
  v7 = __sincosf_stret(a3 * 0.5);
  return (v5.__sinval * (v6.__cosval * v7.__cosval)) - ((v6.__sinval * v7.__sinval) * v5.__cosval);
}

double UMFloat4x4MakeRotateZ(float a1)
{
  v1 = __sincosf_stret(a1);
  *&v2 = v1.__cosval;
  *(&v2 + 1) = -v1.__sinval;
  return v2;
}

float UMSlerp(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v18 = a9;
  if (a9 <= 0.0)
  {
    return a1;
  }

  v19 = a5;
  if (a9 < 1.0)
  {
    v20 = (((a2 * a6) + (a1 * a5)) + (a3 * a7)) + (a4 * a8);
    if (v20 < 0.0)
    {
      v19 = -a5;
      v20 = -v20;
    }

    if (v20 <= 0.999)
    {
      v22 = sqrtf(1.0 - (v20 * v20));
      v25 = atan2f(v22, v20);
      v26 = 1.0 / v22;
      v23 = (1.0 - a9) * v25;
      v21 = (1.0 / v22) * sinf(v23);
      v18 = v26 * sinf(v25 * a9);
    }

    else
    {
      v21 = 1.0 - a9;
    }

    return (v19 * v18) + (v21 * a1);
  }

  return v19;
}

float32x2_t UMQuaternionMake(int8x16_t a1, int32x4_t a2, __n128 a3, double a4, double a5)
{
  v5 = ((*a1.i32 + *&a2.i32[1]) + a3.n128_f32[2]) + 1.0;
  if (v5 <= 0.0001)
  {
    if (*a1.i32 <= *&a2.i32[1] || *a1.i32 <= a3.n128_f32[2])
    {
      if (*&a2.i32[1] <= a3.n128_f32[2])
      {
        v18 = 0.5 / sqrtf(((a3.n128_f32[2] + 1.0) - *a1.i32) - *&a2.i32[1]);
        v6 = vmul_n_f32(vadd_f32(a3.n128_u64[0], vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL))), v18);
        _D2.f32[1] = (*&a1.i32[1] - *a2.i32) * v18;
        goto LABEL_12;
      }

      v14 = 0.5 / sqrtf(((*&a2.i32[1] + 1.0) - *a1.i32) - a3.n128_f32[2]);
      v6.f32[0] = (*&a1.i32[1] + *a2.i32) * v14;
      v16 = 0.25 / v14;
      _D2 = vmul_n_f32(vext_s8(vadd_f32(a3.n128_u64[0], vdup_laneq_s32(a2, 2)), vsub_f32(*&vextq_s8(a1, a1, 8uLL), a3.n128_u64[0]), 4uLL), v14);
    }

    else
    {
      v15 = 0.5 / sqrtf(((*a1.i32 + 1.0) - *&a2.i32[1]) - a3.n128_f32[2]);
      v6.f32[0] = 0.25 / v15;
      v16 = (*&a1.i32[1] + *a2.i32) * v15;
      v17.i32[0] = vadd_f32(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL)).u32[0];
      v17.i32[1] = vsub_f32(vdup_laneq_s32(a2, 2), *&a3).i32[1];
      _D2 = vmul_n_f32(v17, v15);
    }

    v6.f32[1] = v16;
  }

  else
  {
    *&a5 = 0.5 / sqrtf(v5);
    v6 = vmul_n_f32(vsub_f32(vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL), vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0])), *&a5);
    __asm { FMOV            V1.2S, #0.25 }

    _D2.i32[1] = vdiv_f32(_D1, vdup_lane_s32(*&a5, 0)).i32[1];
  }

LABEL_12:
  _D0 = vmul_f32(v6, v6);
  _S1 = _D2.i32[1];
  __asm { FMLA            S0, S1, V2.S[1] }

  *_D0.i32 = sqrtf(*_D0.i32);
  return vdiv_f32(v6, vdup_lane_s32(_D0, 0));
}

uint64_t static CurrentObservationsHeaderViewStyle.== infix(_:_:)()
{
  sub_1BC9F6BBC();
  if (sub_1BCE1DAC0() & 1) != 0 && (sub_1BCE1DAC0() & 1) != 0 && (sub_1BCE1DAC0() & 1) != 0 && (sub_1BCE1DAC0())
  {
    return sub_1BCE1DAC0() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BC9F6BBC()
{
  result = qword_1EDA1C0B8;
  if (!qword_1EDA1C0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA1C0B8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BC9F6C18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC9F6C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC9F6CCC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC9F6CEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t sub_1BC9F6DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1BC9F6E60(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1BC9F6E84(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1BC9F6EE8(uint64_t a1, id *a2)
{
  result = sub_1BCE1D260();
  *a2 = 0;
  return result;
}

uint64_t sub_1BC9F6F60(uint64_t a1, id *a2)
{
  v3 = sub_1BCE1D270();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BC9F6FE0()
{
  v0 = sub_1BCE1D280();
  v1 = MEMORY[0x1BFB2FB90](v0);

  return v1;
}

uint64_t sub_1BC9F7018()
{
  sub_1BCE1D280();
  sub_1BCE1D370();
}

uint64_t sub_1BC9F706C()
{
  sub_1BCE1D280();
  sub_1BCE1E100();
  sub_1BCE1D370();
  v0 = sub_1BCE1E150();

  return v0;
}

uint64_t sub_1BC9F7184()
{
  sub_1BCE1E100();
  swift_getWitnessTable();
  sub_1BCE1AB70();
  return sub_1BCE1E150();
}

uint64_t sub_1BC9F71EC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_13();
  *a1 = result;
  return result;
}

uint64_t sub_1BC9F7214@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC9F6E50(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BC9F7244(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_8(a1);
  result = sub_1BCA24F5C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1BC9F726C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC9F6E58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BC9F72A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC9F6E60(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BC9F72D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BC9F6E84(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BC9F7324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC9F6EAC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BC9F73AC()
{
  swift_getWitnessTable();

  return sub_1BCE1AB60();
}

uint64_t sub_1BC9F7418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC9F6DFC(a1);
  *a2 = result;
  return result;
}

void sub_1BC9F7440(uint64_t a1@<X8>)
{
  sub_1BC9F7474();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1BC9F747C()
{
  v1 = OUTLINED_FUNCTION_1_3();
  result = GEOLocationCoordinate2DMake(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1BC9F74A4(uint64_t a1)
{
  v2 = sub_1BC9F75F0(&qword_1EDA1C110, type metadata accessor for Key);
  v3 = sub_1BC9F75F0(&qword_1EBD07718, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC9F75F0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BC9F7680@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BC9F7840(uint64_t a1)
{
  v2 = sub_1BC9F75F0(&qword_1EBD07768, type metadata accessor for Option);
  v3 = sub_1BC9F75F0(&unk_1EBD07770, type metadata accessor for Option);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC9F78FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BCE1D240();

  *a1 = v2;
  return result;
}

uint64_t sub_1BC9F7944(uint64_t a1)
{
  v2 = sub_1BC9F75F0(&qword_1EBD07758, type metadata accessor for Origin);
  v3 = sub_1BC9F75F0(&qword_1EBD07760, type metadata accessor for Origin);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BC9F7A00()
{
  sub_1BCE1D280();
  v0 = sub_1BCE1D240();

  return v0;
}

uint64_t sub_1BC9F7A6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC9F7A8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t type metadata accessor for ComplicationHourlyGaugeViewModel()
{
  result = qword_1EBD07840;
  if (!qword_1EBD07840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC9F7D18()
{
  sub_1BC9F7E14(319, &qword_1EDA1C200, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BC9F7E14(319, &qword_1EBD07850, MEMORY[0x1E6981AA8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1BCE19060();
      if (v2 <= 0x3F)
      {
        sub_1BCE19470();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC9F7E14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BC9F7E64(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BC9F857C();
  v4 = v3;
  sub_1BC9F857C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42A0000042480000;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_1BCE3BEE0;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3BF10;
  *(a1 + 240) = 0x41F0000040A00000;
  *(a1 + 248) = 1166843904;
  *(a1 + 256) = 0x3D23D70A3CA3D70ALL;
  *(a1 + 264) = 0x404D7252416522BCLL;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 1086324736;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3EC1C9A8;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x4094035940A00000;
  *(a1 + 624) = _Q0;
  *(a1 + 640) = _Q0;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = xmmword_1BCE3BF50;
  *(a1 + 832) = 1077936128;
  *(a1 + 840) = 0x3F9333333F800000;
  *(a1 + 848) = 0x4200000042000000;
  *(a1 + 856) = 3231711232;
  *(a1 + 864) = 0;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3BF60;
  *(a1 + 896) = 0x7970736957;
  *(a1 + 904) = 0xE500000000000000;
  strcpy((a1 + 912), "Wispy_Single");
  *(a1 + 925) = 0;
  *(a1 + 926) = -5120;
  *(a1 + 928) = 6;
  *(a1 + 944) = xmmword_1BCE3BF70;
  *(a1 + 960) = 1077936128;
  *(a1 + 968) = vdup_n_s32(0x3F8CCCCDu);
  *(a1 + 976) = 0x4160000041500000;
  *(a1 + 984) = 1056964608;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3BF80;
  *(a1 + 1024) = 0x7970736957;
  *(a1 + 1032) = 0xE500000000000000;
  strcpy((a1 + 1040), "Wispy_Single");
  *(a1 + 1053) = 0;
  *(a1 + 1054) = -5120;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1077936128;
  *(a1 + 1096) = 0x4013333340066666;
  __asm { FMOV            V3.2S, #6.0 }

  *(a1 + 1104) = _D3;
  *(a1 + 1112) = 3209481421;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 3;
  *(a1 + 1136) = xmmword_1BCE3BF90;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = _Q0;
  *(a1 + 1392) = xmmword_1BCE3BFB0;
  *(a1 + 1408) = _Q0;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3BFD0;
  *(a1 + 1568) = 0x42B5FAE142458F5CLL;
  *(a1 + 1584) = xmmword_1BCE3BFE0;
  *(a1 + 1600) = xmmword_1BCE3BFF0;
  __asm { FMOV            V2.2S, #-15.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1638) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 210) = 16777217;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 3;
  *(a1 + 1776) = xmmword_1BCE3C030;
  *(a1 + 1792) = xmmword_1BCE3C040;
  *(a1 + 1808) = xmmword_1BCE3C050;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F80000041400000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

__n128 sub_1BC9F857C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C0B0;
  *(v0 + 48) = xmmword_1BCE3C0C0;
  *(v0 + 200) = xmmword_1BCE3C0D0;
  *(v0 + 216) = xmmword_1BCE3C0E0;
  *(v0 + 232) = xmmword_1BCE3C0F0;
  *(v0 + 248) = xmmword_1BCE3C100;
  *(v0 + 3696) = xmmword_1BCE3C030;
  *(v0 + 4912) = xmmword_1BCE3C030;
  *(v0 + 3712) = 0x43FA000043149A74;
  *(v0 + 4928) = 0x43FA000043149A74;
  v1 = vdupq_n_s64(0x3FCF1B2BA0000000uLL);
  *(v0 + 3728) = v1;
  *(v0 + 4944) = v1;
  *(v0 + 3744) = xmmword_1BCE3C3A0;
  *(v0 + 4960) = xmmword_1BCE3C3A0;
  *(v0 + 3856) = xmmword_1BCE3C3B0;
  *(v0 + 5072) = xmmword_1BCE3C3B0;
  *(v0 + 3872) = xmmword_1BCE3C3C0;
  *(v0 + 5088) = xmmword_1BCE3C3C0;
  *(v0 + 3888) = xmmword_1BCE3C3D0;
  *(v0 + 5104) = xmmword_1BCE3C3D0;
  *(v0 + 3904) = xmmword_1BCE3C3E0;
  *(v0 + 5120) = xmmword_1BCE3C3E0;
  *(v0 + 3920) = xmmword_1BCE3C3F0;
  *(v0 + 5136) = xmmword_1BCE3C3F0;
  *(v0 + 3936) = xmmword_1BCE3C400;
  *(v0 + 5152) = xmmword_1BCE3C400;
  *(v0 + 4016) = xmmword_1BCE3C410;
  *(v0 + 5232) = xmmword_1BCE3C410;
  *(v0 + 4032) = 0x3EC1C9A83F800000;
  *(v0 + 5248) = 0x3EC1C9A83F800000;
  *(v0 + 4096) = xmmword_1BCE3C420;
  *(v0 + 5312) = xmmword_1BCE3C420;
  *(v0 + 4128) = xmmword_1BCE3C430;
  *(v0 + 5344) = xmmword_1BCE3C430;
  *(v0 + 4272) = xmmword_1BCE3C440;
  *(v0 + 5488) = xmmword_1BCE3C440;
  *(v0 + 4288) = xmmword_1BCE3C450;
  *(v0 + 5504) = xmmword_1BCE3C450;
  *(v0 + 4304) = xmmword_1BCE3C460;
  *(v0 + 5520) = xmmword_1BCE3C460;
  *(v0 + 4320) = xmmword_1BCE3C470;
  *(v0 + 5536) = xmmword_1BCE3C470;
  *(v0 + 4720) = xmmword_1BCE3C480;
  *(v0 + 5936) = xmmword_1BCE3C480;
  *(v0 + 4736) = xmmword_1BCE3C490;
  *(v0 + 5952) = xmmword_1BCE3C490;
  *(v0 + 4752) = xmmword_1BCE3C4A0;
  *(v0 + 5968) = xmmword_1BCE3C4A0;
  *(v0 + 4768) = xmmword_1BCE3C4B0;
  *(v0 + 5984) = xmmword_1BCE3C4B0;
  *(v0 + 2480) = xmmword_1BCE3C250;
  *(v0 + 6128) = xmmword_1BCE3C250;
  *(v0 + 2496) = 0x43FA000042E04D3ALL;
  *(v0 + 6144) = 0x43FA000042E04D3ALL;
  v2 = vdupq_n_s64(0x3FAF1B2C00000000uLL);
  *(v0 + 2512) = v2;
  *(v0 + 6160) = v2;
  *(v0 + 2528) = xmmword_1BCE3C260;
  *(v0 + 6176) = xmmword_1BCE3C260;
  *(v0 + 2640) = xmmword_1BCE3C270;
  *(v0 + 6288) = xmmword_1BCE3C270;
  *(v0 + 2656) = xmmword_1BCE3C280;
  *(v0 + 6304) = xmmword_1BCE3C280;
  *(v0 + 2672) = xmmword_1BCE3C290;
  *(v0 + 6320) = xmmword_1BCE3C290;
  *(v0 + 2688) = xmmword_1BCE3C2A0;
  *(v0 + 6336) = xmmword_1BCE3C2A0;
  *(v0 + 2704) = xmmword_1BCE3C2B0;
  *(v0 + 6352) = xmmword_1BCE3C2B0;
  *(v0 + 2720) = xmmword_1BCE3C2C0;
  *(v0 + 6368) = xmmword_1BCE3C2C0;
  *(v0 + 2800) = xmmword_1BCE3C2D0;
  *(v0 + 6448) = xmmword_1BCE3C2D0;
  *(v0 + 2816) = 0x3F5839353F800000;
  *(v0 + 6464) = 0x3F5839353F800000;
  *(v0 + 2864) = xmmword_1BCE3C2E0;
  *(v0 + 6512) = xmmword_1BCE3C2E0;
  *(v0 + 2880) = xmmword_1BCE3C2F0;
  *(v0 + 6528) = xmmword_1BCE3C2F0;
  *(v0 + 2896) = xmmword_1BCE3C300;
  *(v0 + 6544) = xmmword_1BCE3C300;
  *(v0 + 2912) = xmmword_1BCE3C310;
  *(v0 + 6560) = xmmword_1BCE3C310;
  *(v0 + 3056) = xmmword_1BCE3C320;
  *(v0 + 6704) = xmmword_1BCE3C320;
  *(v0 + 3072) = xmmword_1BCE3C330;
  *(v0 + 6720) = xmmword_1BCE3C330;
  *(v0 + 3088) = xmmword_1BCE3C340;
  *(v0 + 6736) = xmmword_1BCE3C340;
  *(v0 + 3104) = xmmword_1BCE3C350;
  *(v0 + 6752) = xmmword_1BCE3C350;
  *(v0 + 3504) = xmmword_1BCE3C360;
  *(v0 + 7152) = xmmword_1BCE3C360;
  *(v0 + 3520) = xmmword_1BCE3C370;
  *(v0 + 7168) = xmmword_1BCE3C370;
  *(v0 + 3536) = xmmword_1BCE3C380;
  *(v0 + 7184) = xmmword_1BCE3C380;
  *(v0 + 3552) = xmmword_1BCE3C390;
  *(v0 + 7200) = xmmword_1BCE3C390;
  v3 = vdupq_n_s64(0x3C74BCC7A0000000uLL);
  *(v0 + 1296) = v3;
  *(v0 + 7376) = v3;
  *(v0 + 1312) = xmmword_1BCE3C1B0;
  *(v0 + 7392) = xmmword_1BCE3C1B0;
  *(v0 + 1664) = xmmword_1BCE3C200;
  *(v0 + 7744) = xmmword_1BCE3C200;
  *(v0 + 1696) = xmmword_1BCE3C210;
  *(v0 + 7776) = xmmword_1BCE3C210;
  *(v0 + 1840) = xmmword_1BCE3C220;
  *(v0 + 7920) = xmmword_1BCE3C220;
  *(v0 + 1856) = xmmword_1BCE3C230;
  *(v0 + 7936) = xmmword_1BCE3C230;
  *(v0 + 1888) = xmmword_1BCE3C240;
  *(v0 + 7968) = xmmword_1BCE3C240;
  *(v0 + 64) = 0x43FA000042C80000;
  *(v0 + 1264) = xmmword_1BCE3C0C0;
  *(v0 + 7344) = xmmword_1BCE3C0C0;
  *(v0 + 8560) = xmmword_1BCE3C0C0;
  *(v0 + 88) = 0u;
  *(v0 + 1280) = 0x43FA000042C80000;
  *(v0 + 7360) = 0x43FA000042C80000;
  *(v0 + 8576) = 0x43FA000042C80000;
  *(v0 + 8592) = 0u;
  *(v0 + 1424) = xmmword_1BCE3C1C0;
  *(v0 + 7504) = xmmword_1BCE3C1C0;
  *(v0 + 8720) = xmmword_1BCE3C1C0;
  *(v0 + 1440) = xmmword_1BCE3C1D0;
  *(v0 + 7520) = xmmword_1BCE3C1D0;
  *(v0 + 8736) = xmmword_1BCE3C1D0;
  *(v0 + 1456) = xmmword_1BCE3C1E0;
  *(v0 + 7536) = xmmword_1BCE3C1E0;
  *(v0 + 8752) = xmmword_1BCE3C1E0;
  *(v0 + 1472) = xmmword_1BCE3C1F0;
  *(v0 + 7552) = xmmword_1BCE3C1F0;
  *(v0 + 8768) = xmmword_1BCE3C1F0;
  *(v0 + 272) = xmmword_1BCE3C110;
  *(v0 + 288) = xmmword_1BCE3C120;
  *(v0 + 1488) = xmmword_1BCE3C110;
  *(v0 + 7568) = xmmword_1BCE3C110;
  *(v0 + 8784) = xmmword_1BCE3C110;
  __asm { FMOV            V1.4S, #1.0 }

  *(v0 + 368) = _Q1;
  *(v0 + 1504) = xmmword_1BCE3C120;
  *(v0 + 7584) = xmmword_1BCE3C120;
  *(v0 + 8800) = xmmword_1BCE3C120;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 384) = _D0;
  *(v0 + 1584) = _Q1;
  *(v0 + 7664) = _Q1;
  *(v0 + 8880) = _Q1;
  *(v0 + 1600) = _D0;
  *(v0 + 7680) = _D0;
  *(v0 + 8896) = _D0;
  *(v0 + 432) = xmmword_1BCE3C130;
  *(v0 + 448) = xmmword_1BCE3C140;
  *(v0 + 1648) = xmmword_1BCE3C130;
  *(v0 + 7728) = xmmword_1BCE3C130;
  *(v0 + 8944) = xmmword_1BCE3C130;
  *(v0 + 8960) = xmmword_1BCE3C140;
  *(v0 + 464) = xmmword_1BCE3C150;
  *(v0 + 480) = xmmword_1BCE3C160;
  *(v0 + 1680) = xmmword_1BCE3C150;
  *(v0 + 7760) = xmmword_1BCE3C150;
  *(v0 + 8976) = xmmword_1BCE3C150;
  *(v0 + 8992) = xmmword_1BCE3C160;
  *(v0 + 624) = xmmword_1BCE3C170;
  *(v0 + 640) = xmmword_1BCE3C180;
  *(v0 + 9136) = xmmword_1BCE3C170;
  *(v0 + 9152) = xmmword_1BCE3C180;
  *(v0 + 1872) = xmmword_1BCE3C190;
  *(v0 + 7952) = xmmword_1BCE3C190;
  *(v0 + 9168) = xmmword_1BCE3C190;
  *(v0 + 656) = xmmword_1BCE3C190;
  *(v0 + 672) = xmmword_1BCE3C1A0;
  *(v0 + 9184) = xmmword_1BCE3C1A0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 104) = result;
  *(v0 + 120) = result;
  *(v0 + 136) = result;
  *(v0 + 152) = result;
  *(v0 + 168) = result;
  *(v0 + 184) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = result;
  *(v0 + 352) = result;
  *(v0 + 400) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = result;
  *(v0 + 1088) = result;
  *(v0 + 1104) = result;
  *(v0 + 1120) = result;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1288) = 0;
  *(v0 + 1328) = result;
  *(v0 + 1344) = result;
  *(v0 + 1360) = result;
  *(v0 + 1376) = result;
  *(v0 + 1392) = result;
  *(v0 + 1408) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = result;
  *(v0 + 1568) = result;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 0;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 1760) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 5328) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 1808) = result;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 1824) = result;
  *(v0 + 1904) = result;
  *(v0 + 5168) = result;
  *(v0 + 5184) = result;
  *(v0 + 5200) = result;
  *(v0 + 5216) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 5056) = result;
  *(v0 + 2000) = result;
  *(v0 + 4976) = result;
  *(v0 + 4992) = result;
  *(v0 + 5008) = result;
  *(v0 + 5024) = result;
  *(v0 + 5040) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 4936) = 0;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4905) = *v14;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 4904) = 1;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 2208) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 4112) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 2256) = result;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = result;
  *(v0 + 3952) = result;
  *(v0 + 3968) = result;
  *(v0 + 3984) = result;
  *(v0 + 4000) = result;
  *(v0 + 2304) = result;
  *(v0 + 2320) = result;
  *(v0 + 2336) = result;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 3840) = result;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 3776) = result;
  *(v0 + 3792) = result;
  *(v0 + 3808) = result;
  *(v0 + 3824) = result;
  *(v0 + 2416) = result;
  *(v0 + 3689) = *v13;
  *(v0 + 3720) = 0;
  *(v0 + 3760) = result;
  *(v0 + 2432) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2504) = 0;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 2544) = result;
  *(v0 + 2560) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 2576) = result;
  *(v0 + 2592) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 2608) = result;
  *(v0 + 2624) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2736) = result;
  *(v0 + 2752) = result;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 0;
  *(v0 + 2768) = result;
  *(v0 + 2784) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6192) = result;
  *(v0 + 6208) = result;
  *(v0 + 6224) = result;
  *(v0 + 6240) = result;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6384) = result;
  *(v0 + 6400) = result;
  *(v0 + 6416) = result;
  *(v0 + 6432) = result;
  *(v0 + 6480) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7408) = result;
  *(v0 + 7424) = result;
  *(v0 + 7440) = result;
  *(v0 + 7456) = result;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7600) = result;
  *(v0 + 7616) = result;
  *(v0 + 7632) = result;
  *(v0 + 7648) = result;
  *(v0 + 7696) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8368) = result;
  *(v0 + 8384) = result;
  *(v0 + 8400) = result;
  *(v0 + 8416) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8480) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8624) = result;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 8816) = result;
  *(v0 + 8832) = result;
  *(v0 + 8848) = result;
  *(v0 + 8864) = result;
  *(v0 + 8912) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9584) = result;
  *(v0 + 9600) = result;
  *(v0 + 9616) = result;
  *(v0 + 9632) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 9728) = result;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 424) = 0;
  *(v0 + 40) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 264) = 0x3FE02A0DC0000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0xC018000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 0;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 0;
  *(v0 + 7688) = 0x3FF0000000000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC056800000000000;
  *(v0 + 8553) = *v17;
  *(v0 + 8552) = 1;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 0;
  *(v0 + 8608) = 0;
  *(v0 + 8616) = 0x3FF0000000000000;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_1BC9F9310@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BC9F9AA0();
  v4 = v3;
  sub_1BC9FBAA0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3D4800000000000;
  *(a1 + 80) = xmmword_1BCE3C650;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 128) = _Q0;
  *(a1 + 144) = _Q0;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  *(a1 + 288) = _Q0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = _Q0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F333333;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = _Q0;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = _Q0;
  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C690;
  *(a1 + 640) = xmmword_1BCE3C6A0;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = xmmword_1BCE3C6B0;
  *(a1 + 704) = 1061997773;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x4150000041300000;
  *(a1 + 728) = 1102714503;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3C6C0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = xmmword_1BCE3C6D0;
  *(a1 + 832) = 1060320051;
  *(a1 + 840) = 0x3E99999A3E800000;
  *(a1 + 848) = 0x41BFD70A41900000;
  *(a1 + 856) = 0xBFFCEC2041349DF0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE3C6E0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79320;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79340;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1061997773;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x4150000041100000;
  *(a1 + 984) = 1086701088;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = xmmword_1BCE3C700;
  *(a1 + 1088) = 1061997773;
  *(a1 + 1096) = 0;
  __asm { FMOV            V2.2S, #3.25 }

  *(a1 + 1104) = _D2;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3C710;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE3C720;
  *(a1 + 1216) = xmmword_1BCE3C730;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1376) = xmmword_1BCE3C740;
  *(a1 + 1392) = xmmword_1BCE3C750;
  *(a1 + 1408) = xmmword_1BCE3C760;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = _Q0;
  *(a1 + 1600) = _Q0;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = 0x1000101010001;
  *(v2 + 206) = 0x10000;
  *(a1 + 1646) = 1;
  *(a1 + 1648) = 16843009;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v14;
  *(a1 + 1659) = v15;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 2;
  *(a1 + 1776) = xmmword_1BCE3C780;
  *(a1 + 1792) = xmmword_1BCE3C790;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = xmmword_1BCE3C7C0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417D020C3F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE3C7F0;
  *(a1 + 2240) = xmmword_1BCE3C800;
  result = 0.000188131962;
  *(a1 + 2256) = xmmword_1BCE3C810;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v13;
  return result;
}

__n128 sub_1BC9F9AA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 208) = result;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = xmmword_1BCE3C8D0;
  *(v0 + 288) = xmmword_1BCE3C8E0;
  *(v0 + 304) = result;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v9;
  *(v0 + 1260) = *&v9[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = result;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = xmmword_1BCE3C8D0;
  *(v0 + 1504) = xmmword_1BCE3C8E0;
  *(v0 + 1520) = result;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v10;
  *(v0 + 2476) = *&v10[3];
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = result;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3C9C0;
  *(v0 + 2720) = xmmword_1BCE3C9D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v11;
  *(v0 + 3692) = *&v11[3];
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4704) = result;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 3920) = result;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = result;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v12;
  *(v0 + 4908) = *&v12[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5040) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7552) = xmmword_1BCE3CBB0;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v6 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v6;
  *(v0 + 10096) = v6;
  *(v0 + 11312) = v6;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  v7 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v7;
  *(v0 + 8592) = v7;
  *(v0 + 9808) = v7;
  *(v0 + 11024) = v7;
  *(v0 + 12240) = v7;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12448) = xmmword_1BCE3CEE0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = result;
  *(v0 + 5120) = xmmword_1BCE3CBB0;
  *(v0 + 5136) = result;
  *(v0 + 5152) = xmmword_1BCE3CBC0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6121) = *v13;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v13[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = xmmword_1BCE3CBB0;
  *(v0 + 6352) = result;
  *(v0 + 6368) = xmmword_1BCE3CBC0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v14;
  *(v0 + 7340) = *&v14[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 8768) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 9984) = xmmword_1BCE3CBB0;
  *(v0 + 11200) = xmmword_1BCE3CBB0;
  *(v0 + 12416) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 13632) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14848) = xmmword_1BCE3CBB0;
  *(v0 + 16064) = xmmword_1BCE3CBB0;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 7584) = xmmword_1BCE3CBC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 8800) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10016) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 11232) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 13664) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14880) = xmmword_1BCE3CBC0;
  *(v0 + 16096) = xmmword_1BCE3CBC0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3D280;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 19728) = xmmword_1BCE3C8D0;
  *(v0 + 20944) = xmmword_1BCE3C8D0;
  *(v0 + 19744) = xmmword_1BCE3C8E0;
  *(v0 + 20960) = xmmword_1BCE3C8E0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 17600) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 18080) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 7568) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 17296) = result;
  *(v0 + 17312) = result;
  *(v0 + 17328) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 17232) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v22;
  *(v0 + 17068) = *&v22[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8032) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8048) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 15984) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v21;
  *(v0 + 15852) = *&v21[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8352) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 8496) = result;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8552) = 0;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8553) = *v15;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 8556) = *&v15[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 14768) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8704) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8784) = result;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v20;
  *(v0 + 14636) = *&v20[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8936) = 0;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9008) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9072) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 13648) = result;
  *(v0 + 13680) = result;
  *(v0 + 9136) = result;
  *(v0 + 9152) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v19;
  *(v0 + 13420) = *&v19[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9360) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12432) = result;
  *(v0 + 12496) = result;
  *(v0 + 9488) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9568) = result;
  *(v0 + 12201) = *v18;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v18[3];
  *(v0 + 9648) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9728) = result;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 9769) = *v16;
  *(v0 + 9772) = *&v16[3];
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 11184) = result;
  *(v0 + 11216) = result;
  *(v0 + 9968) = result;
  *(v0 + 10000) = result;
  *(v0 + 10080) = result;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10985) = *v17;
  *(v0 + 10988) = *&v17[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18448) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19664) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19760) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20880) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20976) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v23;
  *(v0 + 18284) = *&v23[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v24;
  *(v0 + 19500) = *&v24[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v25;
  *(v0 + 20716) = *&v25[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BC9FBAA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  v1 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 80) = v1;
  *(v0 + 96) = xmmword_1BCE3D340;
  v2 = v1;
  v15 = v1;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 208) = _Q0;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v8 = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 1072) = v8;
  v9 = v8;
  *(v0 + 1088) = xmmword_1BCE3C940;
  *(v0 + 1104) = xmmword_1BCE3C950;
  *(v0 + 1120) = xmmword_1BCE3C960;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4100000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v16;
  *(v0 + 1260) = *&v16[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = v2;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q0;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 3472) = _Q0;
  v10 = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3616) = xmmword_1BCE3D3F0;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v18;
  *(v0 + 3692) = *&v18[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = _Q0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4824) = 0x3FE6666660000000;
  *(v0 + 4832) = xmmword_1BCE3D420;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v19;
  *(v0 + 4908) = *&v19[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 6048) = xmmword_1BCE3D450;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3D470;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7552) = xmmword_1BCE3CBB0;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v11 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v11;
  *(v0 + 10096) = v11;
  *(v0 + 11312) = v11;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  v12 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v12;
  *(v0 + 8592) = v12;
  *(v0 + 9808) = v12;
  *(v0 + 11024) = v12;
  *(v0 + 12240) = v12;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12448) = xmmword_1BCE3CEE0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  __asm { FMOV            V1.2D, #0.5 }

  *(v0 + 10912) = _Q1;
  *(v0 + 12128) = _Q1;
  *(v0 + 13344) = _Q1;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3D530;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3600) = 0x4100000042B40000;
  *(v0 + 3608) = 0x3FE87AE120000000;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = v10;
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3584) = _Q0;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2473) = *v17;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2476) = *&v17[3];
  *(v0 + 2640) = _Q0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3D3B0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3D3A0;
  *(v0 + 2496) = 0x4396000043160000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2256) = _Q0;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4100000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2272) = _Q0;
  *(v0 + 2288) = v9;
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = xmmword_1BCE3CBB0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = xmmword_1BCE3CBC0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6CCCCE0000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v20;
  *(v0 + 6124) = *&v20[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = xmmword_1BCE3CBB0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = xmmword_1BCE3CBC0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE0A3D6C0000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v21;
  *(v0 + 7340) = *&v21[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3D550;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 8768) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 9984) = xmmword_1BCE3CBB0;
  *(v0 + 11200) = xmmword_1BCE3CBB0;
  *(v0 + 12416) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 13632) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14848) = xmmword_1BCE3CBB0;
  *(v0 + 16064) = xmmword_1BCE3CBB0;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3D590;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1;
  *(v0 + 18208) = xmmword_1BCE3D5E0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18304) = 0x4396000043160000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3D3A0;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3D3B0;
  *(v0 + 18416) = xmmword_1BCE3C9B0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3C9E0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = v10;
  *(v0 + 19328) = xmmword_1BCE3CA20;
  *(v0 + 19344) = xmmword_1BCE3CA30;
  *(v0 + 19360) = xmmword_1BCE3CA40;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4100000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 7584) = xmmword_1BCE3CBC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 8800) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10016) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 11232) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 13664) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14880) = xmmword_1BCE3CBC0;
  *(v0 + 16096) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = v15;
  *(v0 + 20752) = v15;
  *(v0 + 19552) = xmmword_1BCE3D340;
  *(v0 + 20768) = xmmword_1BCE3D340;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 12384) = xmmword_1BCE3C8C0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 13600) = xmmword_1BCE3C8C0;
  *(v0 + 14816) = xmmword_1BCE3C8C0;
  *(v0 + 16032) = xmmword_1BCE3C8C0;
  *(v0 + 17232) = _Q0;
  *(v0 + 17248) = xmmword_1BCE3C8C0;
  *(v0 + 17264) = _Q0;
  *(v0 + 17120) = _Q0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18464) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19680) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20896) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v29;
  *(v0 + 17068) = *&v29[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 20528) = v9;
  *(v0 + 21744) = v9;
  *(v0 + 16336) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 20544) = xmmword_1BCE3C940;
  *(v0 + 21760) = xmmword_1BCE3C940;
  *(v0 + 16256) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 20560) = xmmword_1BCE3C950;
  *(v0 + 21776) = xmmword_1BCE3C950;
  *(v0 + 20576) = xmmword_1BCE3C960;
  *(v0 + 21792) = xmmword_1BCE3C960;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4100000042FA0000;
  *(v0 + 21840) = 0x4100000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 7568) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v28;
  *(v0 + 15852) = *&v28[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE3333340000000;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14633) = *v27;
  *(v0 + 8272) = _Q0;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v27[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FDCCCCCC0000000;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8553) = *v22;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v22[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 13417) = *v26;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v26[3];
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 12201) = *v25;
  *(v0 + 12204) = *&v25[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9328) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9456) = _Q0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9769) = *v23;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10985) = *v24;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v24[3];
  *(v0 + 9772) = *&v23[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18448) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19664) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20880) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v30;
  *(v0 + 18284) = *&v30[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332E0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v31;
  *(v0 + 19500) = *&v31[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v32;
  *(v0 + 20716) = *&v32[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

__n128 WeatherConditionConfigurationModel.init(condition:windSpeed:cloudCover:cloudKind:elevation:date:sunrise:sunset:timeZone:moonData:cameraPositionType:dynamicTypeSize:targetWindowSizeClass:displayLocation:collisionViewMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32, uint64_t a33, char *a34, char *a35, __int128 *a36)
{
  OUTLINED_FUNCTION_5_0();
  v62 = v40;
  v42 = v41;
  OUTLINED_FUNCTION_7_8();
  v44 = *v43;
  v46 = *v45;
  v47 = *(v45 + 8);
  v61 = *a32;
  v63 = *a34;
  v64 = *a35;
  v66 = *a36;
  v65 = *(a36 + 2);
  sub_1BCE199D0();
  OUTLINED_FUNCTION_0_3();
  (*(v48 + 32))(v36, v37);
  v49 = type metadata accessor for WeatherConditionConfigurationModel();
  v50 = v49[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  OUTLINED_FUNCTION_0_3();
  (*(v51 + 32))(v36 + v50, v38);
  *(v36 + v49[6]) = v39;
  *(v36 + v49[7]) = v44;
  v52 = v36 + v49[8];
  *v52 = v46;
  *(v52 + 8) = v47;
  v53 = v49[9];
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_3();
  (*(v54 + 32))(v36 + v53, v42);
  OUTLINED_FUNCTION_8_1(v49[10]);
  OUTLINED_FUNCTION_6_3();
  v55 = v49[12];
  sub_1BCE19470();
  OUTLINED_FUNCTION_0_3();
  (*(v56 + 32))(v36 + v55, v62);
  sub_1BC9FE308(a31, v36 + v49[13], &qword_1EBD07870);
  *(v36 + v49[14]) = v61;
  v57 = v49[15];
  sub_1BCE1B7E0();
  OUTLINED_FUNCTION_0_3();
  (*(v58 + 32))(v36 + v57, a33);
  *(v36 + v49[16]) = v63;
  *(v36 + v49[17]) = v64;
  v59 = v36 + v49[18];
  *v59 = v66;
  *(v59 + 16) = v65;
  OUTLINED_FUNCTION_4_6();
  return result;
}

uint64_t sub_1BC9FE308(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 sub_1BC9FE38C@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BC9FEA84();
  v4 = v3;
  sub_1BCA00A70();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC348000000000000;
  *(a1 + 80) = xmmword_1BCE3D830;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3D850;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4190000041200000;
  *(a1 + 664) = 0x400CCCCD3E99999ALL;
  *(a1 + 672) = 0x408000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3D8D0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3D8E0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F3333333E4CCCCDLL;
  *(a1 + 2008) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x414000003F333333;
  *(a1 + 2224) = xmmword_1BCE3D8F0;
  *(a1 + 2240) = xmmword_1BCE3D900;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

__n128 sub_1BC9FEA84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  __asm { FMOV            V3.2D, #0.5 }

  *(v0 + 208) = _Q3;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3D920;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = _Q3;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3D920;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE3CB30;
  *(v0 + 2496) = 0x447A000044160000;
  *(v0 + 2504) = 1061997773;
  *(v0 + 2512) = xmmword_1BCE3CA60;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3D930;
  *(v0 + 2560) = xmmword_1BCE3CA80;
  *(v0 + 2576) = xmmword_1BCE3D940;
  *(v0 + 2592) = xmmword_1BCE3D950;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 2656) = xmmword_1BCE3D960;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2736) = result;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3CAD0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v7 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = 0x3F4CCCCD3F59999ALL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 3712) = 0x4496000044160000;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4064) = 0x3FE5555540000000;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4016) = vdupq_n_s32(0x3F5DDDDEu);
  *(v0 + 4032) = 0x3DCCCCCD3F5DDDDELL;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = result;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3984) = xmmword_1BCE3DA00;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3952) = xmmword_1BCE3D9E0;
  *(v0 + 3968) = xmmword_1BCE3D9F0;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3872) = xmmword_1BCE3D9D0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3840) = 0u;
  *(v0 + 3856) = vdupq_n_s64(0x3FEB079E00000000uLL);
  *(v0 + 3728) = xmmword_1BCE3D970;
  *(v0 + 3808) = xmmword_1BCE3D9C0;
  *(v0 + 3824) = 0u;
  *(v0 + 3776) = xmmword_1BCE3D9A0;
  *(v0 + 3792) = xmmword_1BCE3D9B0;
  *(v0 + 3744) = xmmword_1BCE3D980;
  *(v0 + 3760) = xmmword_1BCE3D990;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5040) = xmmword_1BCE3DA50;
  *(v0 + 5056) = xmmword_1BCE3DA60;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v8;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6152) = 1060739482;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6256) = xmmword_1BCE3DAC0;
  *(v0 + 6272) = xmmword_1BCE3DAD0;
  *(v0 + 6288) = result;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DB20;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 8848) = xmmword_1BCE3DB40;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = v8;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = 0u;
  *(v0 + 7488) = 0u;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DB70;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3DB80;
  *(v0 + 14720) = xmmword_1BCE3DB90;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14768) = xmmword_1BCE3DBC0;
  *(v0 + 14784) = xmmword_1BCE3DBD0;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 15984) = xmmword_1BCE3DC30;
  *(v0 + 16000) = xmmword_1BCE3DC40;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 12528) = v8;
  *(v0 + 13744) = v8;
  *(v0 + 14960) = v8;
  *(v0 + 16176) = v8;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 17392) = v7;
  *(v0 + 17408) = 0x3DCCCCCD3F59999ALL;
  *(v0 + 17424) = xmmword_1BCE3DC80;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3DCA0;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3DCC0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  v9 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 18608) = v9;
  *(v0 + 18624) = v9.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  __asm { FMOV            V25.2D, #0.25 }

  *(v0 + 20528) = _Q25;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 8688) = 0u;
  *(v0 + 8704) = 0u;
  *(v0 + 9904) = 0u;
  *(v0 + 9920) = 0u;
  *(v0 + 11120) = 0u;
  *(v0 + 11136) = 0u;
  *(v0 + 12336) = 0u;
  *(v0 + 12352) = 0u;
  *(v0 + 13552) = 0u;
  *(v0 + 13568) = 0u;
  *(v0 + 17200) = 0u;
  *(v0 + 17216) = 0u;
  *(v0 + 18416) = 0u;
  *(v0 + 18432) = 0u;
  *(v0 + 19632) = 0u;
  *(v0 + 19648) = 0u;
  *(v0 + 20848) = 0u;
  *(v0 + 20864) = 0u;
  *(v0 + 18448) = _Q3;
  *(v0 + 19664) = _Q3;
  *(v0 + 20880) = _Q3;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 7728) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7744) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 17416) = 0x3FEF1F1F40000000;
  *(v0 + 17440) = 0;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 17264) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8112) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 8128) = result;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 16112) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 15849) = *v23;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8480) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8553) = *v17;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 8552) = 0;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8672) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 14633) = *v22;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 8992) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14432) = result;
  *(v0 + 14512) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 9072) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 9152) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13584) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v21;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9360) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9488) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12368) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v20;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9768) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9769) = *v18;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 11296) = result;
  *(v0 + 10000) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10304) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10320) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCA00A70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043C80000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 176) = _Q0;
  *(v0 + 192) = _Q0;
  __asm { FMOV            V20.2D, #0.5 }

  *(v0 + 208) = _Q20;
  *(v0 + 224) = xmmword_1BCE3D910;
  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = _Q0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3D920;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v14;
  *(v0 + 1260) = *&v14[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043C80000;
  *(v0 + 1288) = 1040242952;
  v13 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 1296) = v13;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = _Q0;
  *(v0 + 1408) = _Q0;
  *(v0 + 1424) = _Q20;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = _Q0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3D920;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v15;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2528) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = _Q0;
  *(v0 + 2624) = _Q0;
  *(v0 + 2640) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 2656) = xmmword_1BCE3D960;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2704) = _Q0;
  *(v0 + 2720) = _Q0;
  *(v0 + 2736) = _Q0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3CAD0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v7 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = 0x3F4CCCCD3F59999ALL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3648) = xmmword_1BCE3DD10;
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = _Q0;
  *(v0 + 3840) = _Q0;
  *(v0 + 3856) = vdupq_n_s64(0x3FEB079E00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D9D0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = xmmword_1BCE3D9E0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4864) = xmmword_1BCE3DD30;
  *(v0 + 4848) = xmmword_1BCE3DD00;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3DD20;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3D9F0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 3984) = xmmword_1BCE3DA00;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4048) = _Q0;
  *(v0 + 4064) = 0x3FE5555540000000;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = vdupq_n_s32(0x3F5DDDDEu);
  *(v0 + 4032) = 0x3DCCCCCD3F5DDDDELL;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3608) = 0x3FEB439580000000;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 3616) = xmmword_1BCE3DCF0;
  *(v0 + 3744) = _Q0;
  *(v0 + 3632) = xmmword_1BCE3DD00;
  *(v0 + 3689) = *v16;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v16[3];
  *(v0 + 6048) = xmmword_1BCE3DD20;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3DD40;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3DD50;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  _Q1 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = _Q1;
  *(v0 + 8592) = _Q1;
  *(v0 + 9808) = _Q1;
  *(v0 + 11024) = _Q1;
  *(v0 + 12240) = _Q1;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3DD60;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2476) = *&v15[3];
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2496) = 0x4396000043FA0000;
  *(v0 + 2272) = _Q0;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v17;
  *(v0 + 4908) = *&v17[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 5040) = _Q0;
  *(v0 + 5056) = _Q0;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  v9 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5232) = v9;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE7333340000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6121) = *v18;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v18[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6448) = v9;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE369D020000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4028000000000000;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v19;
  *(v0 + 7340) = *&v19[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3DD70;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 8736) = xmmword_1BCE3DA70;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 12384) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v9;
  *(v0 + 8880) = v9;
  *(v0 + 10096) = v9;
  *(v0 + 11312) = v9;
  *(v0 + 12528) = v9;
  *(v0 + 13744) = v9;
  *(v0 + 14960) = v9;
  *(v0 + 16176) = v9;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3DD80;
  *(v0 + 17008) = xmmword_1BCE3DD90;
  *(v0 + 17024) = xmmword_1BCE3DDA0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = v7;
  *(v0 + 17408) = 0x3DCCCCCD3F59999ALL;
  *(v0 + 17424) = xmmword_1BCE3DC80;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1.i64[0];
  *(v0 + 18208) = xmmword_1BCE3DDB0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 18224) = xmmword_1BCE3D4E0;
  *(v0 + 18240) = xmmword_1BCE3DDC0;
  *(v0 + 18304) = 0x4396000043FA0000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3DDD0;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  v10 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = v10;
  *(v0 + 18624) = v10.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3DCF0;
  *(v0 + 19440) = xmmword_1BCE3DD00;
  *(v0 + 19456) = xmmword_1BCE3DDE0;
  *(v0 + 19536) = v13;
  *(v0 + 19552) = xmmword_1BCE3D340;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043C80000;
  *(v0 + 20736) = 0x432A000043C80000;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 10912) = _Q20;
  *(v0 + 12128) = _Q20;
  *(v0 + 13344) = _Q20;
  *(v0 + 18448) = _Q20;
  *(v0 + 19664) = _Q20;
  *(v0 + 20880) = _Q20;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 8848) = xmmword_1BCE3C8F0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 18080) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17416) = 0x3FEF1F1F40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 1065353216;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 17200) = _Q0;
  *(v0 + 17216) = _Q0;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 17120) = _Q0;
  *(v0 + 7600) = _Q0;
  *(v0 + 17056) = 0xC018000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v27;
  *(v0 + 17068) = *&v27[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16112) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16000) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 15849) = *v26;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8160) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v26[3];
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 8432) = _Q0;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14848) = _Q0;
  *(v0 + 14896) = _Q0;
  *(v0 + 8544) = 0x4032000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 8553) = *v20;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8556) = *&v20[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 14633) = *v25;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v25[3];
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8816) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 8960) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13417) = *v24;
  *(v0 + 13448) = 1060320051;
  *(v0 + 9120) = _Q0;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v24[3];
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9200) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 9312) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9328) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 12464) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 12201) = *v23;
  *(v0 + 12204) = *&v23[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4032000000000000;
  *(v0 + 12200) = 1;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 11296) = _Q0;
  *(v0 + 9760) = 0x403E000000000000;
  *(v0 + 9768) = 0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 9769) = *v21;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9772) = *&v21[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 9920) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10976) = 0x403E000000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v22;
  *(v0 + 10988) = *&v22[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18416) = _Q0;
  *(v0 + 18432) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19632) = _Q0;
  *(v0 + 19648) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19776) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20848) = _Q0;
  *(v0 + 20864) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 20992) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v28;
  *(v0 + 18284) = *&v28[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FEAE14760000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v29;
  *(v0 + 19500) = *&v29[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v30;
  *(v0 + 20716) = *&v30[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}