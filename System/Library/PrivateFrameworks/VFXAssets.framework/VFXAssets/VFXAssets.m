__n128 Main_comAppleRealitykitVfxGeneral_graph_CABE86CB_8495_4BA5_8564_211F4E42EAD3(float a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, float32x4_t *a6)
{
  v16 = *a5;
  v8 = vrsqrteq_f32(xmmword_270C689A0);
  v9 = vmulq_f32(v8, vrsqrtsq_f32(xmmword_270C689A0, vmulq_f32(v8, v8)));
  v15 = vmulq_f32(vmulq_f32(v9, vrsqrtsq_f32(xmmword_270C689A0, vmulq_f32(v9, v9))), xmmword_270C689B0);
  v10 = 1.5708;
  if (!a4)
  {
    v10 = 0.0;
  }

  v11 = __sincosf_stret(v10);
  v12 = vmulq_n_f32(v15, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  *a6 = v12;
  v13 = v16;
  *(&v13 + 1) = a1;
  DWORD2(v13) = DWORD2(v16);
  *a5 = v13;
  result.n128_u64[0] = v13;
  result.n128_u32[2] = DWORD2(v13);
  return result;
}

float __vfx_script_comAppleRealitykitVfxGeneral_graph_CABE86CB_8495_4BA5_8564_211F4E42EAD3()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v12 = *v2;
  v4 = vrsqrteq_f32(xmmword_270C689A0);
  v5 = vmulq_f32(v4, vrsqrtsq_f32(xmmword_270C689A0, vmulq_f32(v4, v4)));
  v11 = vmulq_f32(vmulq_f32(v5, vrsqrtsq_f32(xmmword_270C689A0, vmulq_f32(v5, v5))), xmmword_270C689B0);
  v6 = 1.5708;
  if (!**(arguments_buffer + 24))
  {
    v6 = 0.0;
  }

  v7 = __sincosf_stret(v6);
  v8 = vmulq_n_f32(v11, v7.__sinval);
  v8.i32[3] = LODWORD(v7.__cosval);
  LODWORD(v9) = v12;
  DWORD1(v9) = *v1;
  *v3 = v8;
  *(&v9 + 1) = __PAIR64__(1.0, DWORD2(v12));
  result = 1.0;
  *v2 = v9;
  return result;
}

void Spawn_comAppleRealitykitVfxGeneral_graph_2EFCC965_6C2A_4409_B612_17DCDCF8132E(float a1, float a2, float a3, float a4, float a5, float a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, float *a13, float *a14, float *a15, float *a16, float *a17, _BYTE *a18, unint64_t *a19)
{
  v19 = a1 - a2;
  v20 = a1 + a2;
  v21 = fminf(v19, v20);
  v22 = fmaxf(v19, v20);
  v23 = a3 - a4;
  v24 = a3 + a4;
  v25 = fminf(v23, v24);
  v26 = fmaxf(v23, v24);
  v27 = a5 - a6;
  v28 = a5 + a6;
  v29 = fminf(v27, v28);
  v30 = fmaxf(v27, v28);
  v31 = 277803737 * (((747796405 * a8 - 2038165537) >> (((747796405 * a8 - 2038165537) >> 28) + 4)) ^ (747796405 * a8 - 2038165537));
  v32 = COERCE_FLOAT((v31 >> 31) ^ (v31 >> 9) | 0x3F800000) + -1.0;
  v33 = v21 + (v32 * (v22 - v21));
  v34 = v25 + (v32 * (v26 - v25));
  v35 = a10 - a11;
  if (!a12)
  {
    v35 = 0;
  }

  *a13 = v21;
  a13[1] = v22;
  v36 = a11 + a10;
  *a14 = v25;
  a14[1] = v26;
  if (!a12)
  {
    v36 = 0;
  }

  *a15 = v29;
  a15[1] = v30;
  *a16 = v33;
  *a17 = v34;
  *a18 = a9 ^ 1;
  if (v35 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  *a19 = v37;
  a19[1] = v38;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_2EFCC965_6C2A_4409_B612_17DCDCF8132E()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = *(arguments_buffer + 96);
  v7 = *(arguments_buffer + 104);
  v6 = *(arguments_buffer + 112);
  v8 = *(arguments_buffer + 120);
  v9 = *(arguments_buffer + 128);
  v11 = *(arguments_buffer + 136);
  v10 = *(arguments_buffer + 144);
  v12 = **(arguments_buffer + 16);
  v13 = **(arguments_buffer + 24);
  v14 = **(arguments_buffer + 32);
  v15 = **(arguments_buffer + 40);
  v16 = **(arguments_buffer + 48);
  v17 = **(arguments_buffer + 88);
  v18 = v12 - v13;
  v19 = v12 + v13;
  v20 = fminf(v18, v19);
  v21 = fmaxf(v18, v19);
  v22 = v14 - v15;
  v23 = v14 + v15;
  v24 = fminf(v22, v23);
  v25 = fmaxf(v22, v23);
  v26 = v16 - *v1;
  v27 = v16 + *v1;
  v28 = fminf(v26, v27);
  v29 = fmaxf(v26, v27);
  v30 = 747796405 * **(arguments_buffer + 8) - 2038165537;
  v31 = 277803737 * ((v30 >> ((v30 >> 28) + 4)) ^ v30);
  result = v31 >> 31;
  v33 = COERCE_FLOAT(result ^ (v31 >> 9) | 0x3F800000) + -1.0;
  v34 = v20 + (v33 * (v21 - v20));
  v35 = v24 + (v33 * (v25 - v24));
  v36 = *v2 ^ 1;
  v37 = *v3 - *v4;
  if (!v17)
  {
    v37 = 0;
  }

  v38 = *v4 + *v3;
  if (!v17)
  {
    v38 = 0;
  }

  *v5 = v20;
  v5[1] = v21;
  *v7 = v24;
  v7[1] = v25;
  *v6 = v28;
  v6[1] = v29;
  *v8 = v34;
  *v9 = v35;
  *v11 = v36;
  if (v37 >= v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v37;
  }

  if (v37 <= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v37;
  }

  *v10 = v39;
  v10[1] = v40;
  return result;
}

float Init_comAppleRealitykitVfxGeneral_graph_C4E7830E_DFD6_42B0_8C1E_C42D73D86C9C(float a1, float a2, float a3, float a4, float a5, float a6, float a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, float *a13, float *a14, BOOL *a15, float *a16, float a17, float a18, uint64_t a19, __int128 a20, float a21, float *a22, void *a23, void *a24, __n128 *a25, float *a26, _OWORD *a27, _OWORD *a28, float *a29)
{
  v29 = *a29;
  v30 = *a16;
  v31 = a1 - a2;
  v32 = a1 + a2;
  v33 = fminf(v31, v32);
  v34 = fmaxf(v31, v32);
  v35 = a3 - a4;
  v36 = a3 + a4;
  a8.n128_u64[0] = vand_s8(vcvt_u32_f32(vmaxnm_f32(a8.n128_u64[0], 0)), vceq_f32(a8.n128_u64[0], a8.n128_u64[0]));
  a8.n128_u32[2] = fmaxf(a8.n128_f32[2], 0.0);
  *a13 = v33;
  a13[1] = v34;
  v37 = fmaxf(a6 - a7, 0.02);
  *a14 = fminf(v35, v36);
  a14[1] = fmaxf(v35, v36);
  *a15 = a11 == 0;
  *a22 = fminf(v37, a6 + a7);
  a22[1] = fmaxf(v37, a6 + a7);
  *a23 = a11 == 2;
  *a24 = a12;
  *a25 = a8;
  *a26 = fminf(a17 - a18, a17 + a18);
  a26[1] = fmaxf(a17 - a18, a17 + a18);
  *a27 = a20;
  *a28 = a20;
  *a29 = fminf(v29, a21);
  a29[1] = fmaxf(v29, a21);
  result = fminf(v30, a5);
  *a16 = result;
  a16[1] = fmaxf(v30, a5);
  return result;
}

float __vfx_script_comAppleRealitykitVfxGeneral_graph_C4E7830E_DFD6_42B0_8C1E_C42D73D86C9C()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = *(arguments_buffer + 56);
  v5 = *(arguments_buffer + 64);
  v6 = *(arguments_buffer + 72);
  v7 = *(arguments_buffer + 80);
  v8 = *(arguments_buffer + 88);
  v9 = *(arguments_buffer + 96);
  v10 = *(arguments_buffer + 104);
  v11 = *(arguments_buffer + 112);
  v12 = *(arguments_buffer + 120);
  v13 = *(arguments_buffer + 128);
  v14 = *(arguments_buffer + 136);
  v16 = *(arguments_buffer + 144);
  v15 = *(arguments_buffer + 152);
  v17 = *(arguments_buffer + 160);
  v18 = *(arguments_buffer + 168);
  v20 = *(arguments_buffer + 176);
  v19 = *(arguments_buffer + 184);
  v21 = *(arguments_buffer + 192);
  v22 = *(arguments_buffer + 200);
  v24 = *(arguments_buffer + 208);
  v23 = *(arguments_buffer + 216);
  v25 = **(arguments_buffer + 16);
  v26 = **(arguments_buffer + 48);
  v27 = *v4;
  v28 = *v7;
  v29 = *v8;
  v30 = *v11;
  v31 = *v12;
  v32 = *v23;
  v33 = *v15;
  v34 = v25 - *v1;
  v35 = v25 + *v1;
  v36 = fminf(v34, v35);
  v37 = fmaxf(v34, v35);
  v38 = *v2 - *v3;
  v39 = *v2 + *v3;
  v40 = fminf(v38, v39);
  v41 = fmaxf(v38, v39);
  v42 = fmaxf(*v5 - *v6, 0.02);
  v43 = *v5 + *v6;
  v44 = fminf(v42, v43);
  v45 = fmaxf(v42, v43);
  *&v29 = vand_s8(vcvt_u32_f32(vmaxnm_f32(*&v29, 0)), vceq_f32(*&v29, *&v29));
  DWORD2(v29) = fmaxf(COERCE_FLOAT(*(v8 + 1)), 0.0);
  v46 = *v9 - *v10;
  v47 = *v9 + *v10;
  *v13 = v36;
  v13[1] = v37;
  *v14 = v40;
  v14[1] = v41;
  *v16 = v26 == 0;
  *v17 = v44;
  v17[1] = v45;
  *v18 = v26 == 2;
  *v20 = v28;
  *v19 = v29;
  *v21 = fminf(v46, v47);
  v21[1] = fmaxf(v46, v47);
  *v22 = v30;
  *v24 = v30;
  *v23 = fminf(v32, v31);
  v23[1] = fmaxf(v32, v31);
  v48 = fminf(v33, v27);
  result = fmaxf(v33, v27);
  *v15 = v48;
  v15[1] = result;
  return result;
}

__n128 Update_comAppleRealitykitVfxGeneral_graph_9D89648D_3FBB_4295_90CD_9E682BD76791(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, int32x4_t *a8, BOOL *a9, BOOL *a10, void *a11)
{
  v24 = a8->i32[2];
  vfx_script_clock_time();
  *&v20 = v20;
  *&v20 = (*&v20 * a1) * 0.1;
  v21 = a3 != 0.0;
  if (a4 != 0.0)
  {
    v21 = 1;
  }

  *a9 = a2 != 0.0;
  *a10 = v21;
  *a11 = a7 ^ 1u;
  v22 = vdupq_lane_s32(*&v20, 0);
  v22.i32[2] = v24;
  *a8 = v22;
  result.n128_u64[0] = v22.i64[0];
  result.n128_u32[2] = v22.u32[2];
  return result;
}

__n128 __vfx_script_comAppleRealitykitVfxGeneral_graph_9D89648D_3FBB_4295_90CD_9E682BD76791()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = **(arguments_buffer + 16);
  v6 = **(arguments_buffer + 24);
  v7 = **(arguments_buffer + 32);
  v8 = **(arguments_buffer + 40);
  v9 = **(arguments_buffer + 48);
  v13 = v1->n128_u32[2];
  vfx_script_clock_time();
  *&v10 = v10;
  *&v10 = (v5 * *&v10) * 0.1;
  v11 = v7 != 0.0;
  if (v8 != 0.0)
  {
    v11 = 1;
  }

  *v2 = v6 != 0.0;
  *v3 = v11;
  *v4 = v9 ^ 1;
  result.n128_u64[0] = vdupq_lane_s32(*&v10, 0).u64[0];
  result.n128_u64[1] = __PAIR64__(1.0, v13);
  *v1 = result;
  return result;
}

void Render_comAppleRealitykitVfxGeneral_graph_39FD28C5_BDF9_4DD6_B2B8_459F45892DBF(const void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6, unint64_t *a7, unint64_t *a8)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = qword_270C68A48[a3];
  v12[0] = xmmword_270C689C0;
  v12[1] = xmmword_270C689D0;
  v12[2] = xmmword_270C689E0;
  v13 = 0;
  v9 = *(v12 + a4);
  v10 = 2;
  if (a5 < 2)
  {
    v10 = a5;
  }

  *a6 = v8;
  *a7 = v9;
  *a8 = v10;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_39FD28C5_BDF9_4DD6_B2B8_459F45892DBF()
{
  v11 = *MEMORY[0x277D85DE8];
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 40);
  v2 = *(result + 48);
  v3 = *(result + 56);
  v4 = **(result + 24);
  v5 = **(result + 32);
  v6 = qword_270C68A48[**(result + 16)];
  v9[0] = xmmword_270C689C0;
  v9[1] = xmmword_270C689D0;
  v9[2] = xmmword_270C689E0;
  v10 = 0;
  v7 = *(v9 + v4);
  if (v5 >= 2)
  {
    v5 = 2;
  }

  *v1 = v6;
  *v2 = v7;
  *v3 = v5;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Spawn_comAppleRealitykitVfxGeneral_graph_3A6197AD_E251_4C3C_A4A4_97B88CE13708(const void *a1, int a2, float a3, float a4, BOOL a5, float a6, float *a7, BOOL *a8, BOOL *a9, float *a10)
{
  v17 = a3 - a4;
  v18 = a3 + a4;
  v19 = fminf(v17, v18);
  v20 = fmaxf(v17, v18);
  vfx_script_clock_time();
  *&v21 = v21;
  v22 = fmaxf(*&v21, 0.0);
  result = vfx_script_clock_simulation_index();
  v24 = 277803737 * (((747796405 * (result + a2 + v22) + 1270287430) >> (((747796405 * (result + a2 + v22) + 1270287430) >> 28) + 4)) ^ (747796405 * (result + a2 + v22) + 1270287430));
  *a7 = v19 + ((COERCE_FLOAT((v24 >> 31) ^ (v24 >> 9) | 0x3F800000) + -1.0) * (v20 - v19));
  *a8 = a5;
  *a9 = a6 != 0.0;
  *a10 = a6;
  return result;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_3A6197AD_E251_4C3C_A4A4_97B88CE13708()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 48);
  v4 = *(arguments_buffer + 56);
  v5 = *(arguments_buffer + 64);
  v6 = *(arguments_buffer + 72);
  v7 = **(arguments_buffer + 8);
  v8 = **(arguments_buffer + 32);
  v9 = **(arguments_buffer + 40);
  v10 = *v1 - *v2;
  v11 = *v1 + *v2;
  v12 = fminf(v10, v11);
  v13 = fmaxf(v10, v11);
  vfx_script_clock_time();
  *&v14 = v14;
  v15 = fmaxf(*&v14, 0.0);
  result = vfx_script_clock_simulation_index();
  v17 = 277803737 * (((747796405 * (result + v7 + v15) + 1270287430) >> (((747796405 * (result + v7 + v15) + 1270287430) >> 28) + 4)) ^ (747796405 * (result + v7 + v15) + 1270287430));
  *v3 = v12 + ((COERCE_FLOAT((v17 >> 31) ^ (v17 >> 9) | 0x3F800000) + -1.0) * (v13 - v12));
  *v4 = v8;
  *v5 = v9 != 0.0;
  *v6 = v9;
  return result;
}

float Init_comAppleRealitykitVfxGeneral_graph_808D496A_AA3D_4B1F_B709_6D736E35F2D4(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, float *a11, float *a12, float *a13, float *a14, float *a15, float *a16, float a17, float a18, float a19)
{
  v19 = *a14;
  v20 = a1 - a2;
  v21 = a1 + a2;
  v22 = fminf(v20, v21);
  v23 = fmaxf(v20, v21);
  v24 = a3 - a4;
  v25 = a3 + a4;
  v26 = fminf(v24, v25);
  v27 = fmaxf(v24, v25);
  v28 = a5 - a6;
  v29 = a5 + a6;
  v30 = fminf(v28, v29);
  v31 = fmaxf(v28, v29);
  v32 = fmaxf(a8 - a17, 0.02);
  v33 = a8 + a17;
  *a11 = v22;
  a11[1] = v23;
  *a12 = v26;
  a12[1] = v27;
  *a13 = v30;
  a13[1] = v31;
  *a15 = fminf(v32, v33);
  a15[1] = fmaxf(v32, v33);
  *a16 = fminf(a18 - a19, a18 + a19);
  a16[1] = fmaxf(a18 - a19, a18 + a19);
  result = fminf(v19, a7);
  *a14 = result;
  a14[1] = fmaxf(v19, a7);
  return result;
}

float __vfx_script_comAppleRealitykitVfxGeneral_graph_808D496A_AA3D_4B1F_B709_6D736E35F2D4()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  v7 = arguments_buffer[8];
  v8 = arguments_buffer[9];
  v9 = arguments_buffer[10];
  v10 = arguments_buffer[11];
  v11 = arguments_buffer[12];
  v12 = arguments_buffer[13];
  v13 = arguments_buffer[14];
  v14 = arguments_buffer[15];
  v15 = arguments_buffer[16];
  v16 = arguments_buffer[17];
  v17 = arguments_buffer[18];
  v18 = *v7;
  v19 = *v15;
  v20 = *v1 - *v2;
  v21 = *v1 + *v2;
  v22 = fminf(v20, v21);
  v23 = fmaxf(v20, v21);
  v24 = *v3 - *v4;
  v25 = *v3 + *v4;
  v26 = fminf(v24, v25);
  v27 = fmaxf(v24, v25);
  v28 = *v5 - *v6;
  v29 = *v5 + *v6;
  v30 = fminf(v28, v29);
  v31 = fmaxf(v28, v29);
  v32 = fmaxf(*v8 - *v9, 0.02);
  v33 = *v8 + *v9;
  v34 = fminf(v32, v33);
  v35 = fmaxf(v32, v33);
  v36 = *v10 - *v11;
  v37 = *v10 + *v11;
  *v12 = v22;
  v12[1] = v23;
  *v13 = v26;
  v13[1] = v27;
  *v14 = v30;
  v14[1] = v31;
  *v16 = v34;
  v16[1] = v35;
  *v17 = fminf(v36, v37);
  v17[1] = fmaxf(v36, v37);
  result = fminf(v19, v18);
  *v15 = result;
  v15[1] = fmaxf(v19, v18);
  return result;
}

__n128 Update_comAppleRealitykitVfxGeneral_graph_C0414514_1ABD_430C_99B8_0B75A900FA1A(float a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6, int a7, int32x4_t *a8, BOOL *a9, BOOL *a10, void *a11)
{
  v24 = a8->i32[2];
  vfx_script_clock_time();
  *&v20 = v20;
  *&v20 = (*&v20 * a1) * 0.1;
  v21 = a3 != 0.0;
  if (a4 != 0.0)
  {
    v21 = 1;
  }

  *a9 = a2 > 0.0;
  *a10 = v21;
  *a11 = a7 ^ 1u;
  v22 = vdupq_lane_s32(*&v20, 0);
  v22.i32[2] = v24;
  *a8 = v22;
  result.n128_u64[0] = v22.i64[0];
  result.n128_u32[2] = v22.u32[2];
  return result;
}

__n128 __vfx_script_comAppleRealitykitVfxGeneral_graph_C0414514_1ABD_430C_99B8_0B75A900FA1A()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 56);
  v2 = *(arguments_buffer + 64);
  v3 = *(arguments_buffer + 72);
  v4 = *(arguments_buffer + 80);
  v5 = **(arguments_buffer + 16);
  v6 = **(arguments_buffer + 24);
  v7 = **(arguments_buffer + 32);
  v8 = **(arguments_buffer + 40);
  v9 = **(arguments_buffer + 48);
  v13 = v1->n128_u32[2];
  vfx_script_clock_time();
  *&v10 = v10;
  *&v10 = (v5 * *&v10) * 0.1;
  v11 = v7 != 0.0;
  if (v8 != 0.0)
  {
    v11 = 1;
  }

  *v2 = v6 > 0.0;
  *v3 = v11;
  *v4 = v9 ^ 1;
  result.n128_u64[0] = vdupq_lane_s32(*&v10, 0).u64[0];
  result.n128_u64[1] = __PAIR64__(1.0, v13);
  *v1 = result;
  return result;
}

double Render_comAppleRealitykitVfxGeneral_graph_79611F84_9966_49FC_9DA9_42E714051A7E(const void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6, unint64_t *a7, unint64_t *a8)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = qword_270C68A48[a3];
  v12[0] = xmmword_270C689C0;
  v12[1] = xmmword_270C689D0;
  *&result = 1;
  v12[2] = xmmword_270C689E0;
  v13 = 0;
  v10 = *(v12 + a4);
  *a6 = v8;
  *a7 = v10;
  *a8 = a5;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double __vfx_script_comAppleRealitykitVfxGeneral_graph_79611F84_9966_49FC_9DA9_42E714051A7E()
{
  v12 = *MEMORY[0x277D85DE8];
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  v3 = *(arguments_buffer + 56);
  v4 = **(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  v6 = qword_270C68A48[**(arguments_buffer + 16)];
  v10[0] = xmmword_270C689C0;
  v10[1] = xmmword_270C689D0;
  *&result = 1;
  v10[2] = xmmword_270C689E0;
  v11 = 0;
  v8 = *(v10 + v4);
  *v1 = v6;
  *v2 = v8;
  *v3 = v5;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void Main_comAppleRealitykitVfxGeneral_graph_18FD4393_3EF4_4453_A815_8E3AD16F6D13(const void *a1, unsigned int a2, unint64_t a3, int a4, unint64_t a5, unint64_t *a6, unint64_t *a7)
{
  if (!a4)
  {
    a3 = 1;
  }

  if (!a4)
  {
    a5 = 1;
  }

  *a6 = a3;
  *a7 = a5;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_18FD4393_3EF4_4453_A815_8E3AD16F6D13()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 48);
  v2 = **(result + 16);
  if (**(result + 24))
  {
    v3 = **(result + 32);
  }

  else
  {
    v2 = 1;
    v3 = 1;
  }

  **(result + 40) = v2;
  *v1 = v3;
  return result;
}

void Main_comAppleRealitykitVfxGeneral_graph_73DD6AB1_ACCC_401A_9516_CEDA7AB07AC2(const void *a1, unsigned int a2, unint64_t a3, int a4, unint64_t a5, unint64_t *a6, unint64_t *a7)
{
  if (!a4)
  {
    a3 = 1;
  }

  if (!a4)
  {
    a5 = 1;
  }

  *a6 = a3;
  *a7 = a5;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_73DD6AB1_ACCC_401A_9516_CEDA7AB07AC2()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 48);
  v2 = **(result + 16);
  if (**(result + 24))
  {
    v3 = **(result + 32);
  }

  else
  {
    v2 = 1;
    v3 = 1;
  }

  **(result + 40) = v2;
  *v1 = v3;
  return result;
}

void Main_comAppleRealitykitVfxGeneral_graph_C81D8ED9_E765_4CB8_B826_CC8497F5A622(float32x4_t a1, float a2, uint64_t a3, uint64_t a4, int a5, float32x4_t *a6, float *a7, BOOL *a8, void *a9)
{
  v10 = vmulq_f32(a1, a1);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = vdupq_lane_s32(*v10.f32, 0);
  v11.i32[3] = 0;
  v12 = vrsqrteq_f32(v11);
  v13 = vmulq_f32(v12, vrsqrtsq_f32(v11, vmulq_f32(v12, v12)));
  v14 = vmulq_f32(v13, v13);
  v15 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v10.f32[0] != 0.0)), 0x1FuLL));
  v15.i32[3] = 0;
  v16 = vbslq_s8(vcltzq_s32(v15), vmulq_f32(vmulq_f32(v13, vrsqrtsq_f32(v11, v14)), a1), a1);
  v14.i32[0] = v16.i32[2];
  v9.i32[0] = 1.0;
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v13.f32[0] = *vbslq_s8(v15, v9, v14).i32;
  *v15.i32 = v16.f32[1] / (fabsf(v16.f32[2]) + 1.0);
  v17 = vmuls_lane_f32(*v15.i32, *v16.f32, 1);
  v18 = -(v16.f32[0] * *v15.i32);
  v19 = v16.f32[2] + (v13.f32[0] * v17);
  v20 = v13.f32[0] * v18;
  v21 = 1.0 - v17;
  v22 = vmuls_lane_f32(-v13.f32[0], *v16.f32, 1);
  v23 = v16.f32[2] + (v19 + v21);
  if (v23 <= 0.0)
  {
    if (v19 < v21 || v19 < v16.f32[2])
    {
      if (v21 <= v16.f32[2])
      {
        v32 = sqrtf(((v16.f32[2] + 1.0) - v19) - v21);
        v16.i32[0] = vsubq_f32(v16, v16).u32[0];
        v16.f32[1] = v16.f32[1] + v22;
        v16.f32[2] = v32 * v32;
        v16.f32[3] = v20 - v18;
        v26 = vmulq_n_f32(v16, 0.5 / v32);
      }

      else
      {
        v28 = sqrtf(((v21 + 1.0) - v19) - v16.f32[2]);
        v29.f32[0] = v18 + v20;
        v29.f32[1] = v28 * v28;
        *&v29.u32[2] = vrev64_s32(vadd_f32(*v16.f32, __PAIR64__(LODWORD(v22), v16.u32[0])));
        v26 = vmulq_n_f32(v29, 0.5 / v28);
      }
    }

    else
    {
      v30 = sqrtf(((v19 + 1.0) - v21) - v16.f32[2]);
      v31.f32[0] = v30 * v30;
      v31.f32[1] = v18 + v20;
      *&v31.u32[2] = vsub_f32(__PAIR64__(LODWORD(v22), v16.u32[0]), *v16.f32);
      v26 = vmulq_n_f32(v31, 0.5 / v30);
    }
  }

  else
  {
    v24 = sqrtf(v23 + 1.0);
    v25.f32[0] = v22 - v16.f32[1];
    v25.i32[1] = vaddq_f32(v16, v16).u32[0];
    v25.f32[2] = v20 - v18;
    v25.f32[3] = v24 * v24;
    v26 = vmulq_n_f32(v25, 0.5 / v24);
  }

  *a6 = v26;
  *a7 = -a2;
  *a8 = a2 != 0.0;
  *a9 = a5 ^ 1u;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_C81D8ED9_E765_4CB8_B826_CC8497F5A622()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 48);
  v2 = *(result + 56);
  v3 = *(result + 64);
  v4 = **(result + 16);
  v5 = **(result + 24);
  v6 = **(result + 32);
  v7 = vmulq_f32(v4, v4);
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  v8 = vdupq_lane_s32(*v7.f32, 0);
  v8.i32[3] = 0;
  v9 = vrsqrteq_f32(v8);
  v10 = vmulq_f32(v9, vrsqrtsq_f32(v8, vmulq_f32(v9, v9)));
  v11 = vmulq_f32(v10, v10);
  v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v7.f32[0] != 0.0)), 0x1FuLL));
  v12.i32[3] = 0;
  v13 = vbslq_s8(vcltzq_s32(v12), vmulq_f32(vmulq_f32(v10, vrsqrtsq_f32(v8, v11)), v4), v4);
  v11.i32[0] = v13.i32[2];
  v14.i32[0] = 1.0;
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v10.f32[0] = *vbslq_s8(v12, v14, v11).i32;
  *v12.i32 = v13.f32[1] / (fabsf(v13.f32[2]) + 1.0);
  v15 = vmuls_lane_f32(*v12.i32, *v13.f32, 1);
  v16 = -(v13.f32[0] * *v12.i32);
  v17 = v13.f32[2] + (v10.f32[0] * v15);
  v18 = v10.f32[0] * v16;
  v19 = 1.0 - v15;
  v20 = vmuls_lane_f32(-v10.f32[0], *v13.f32, 1);
  v21 = v13.f32[2] + (v17 + v19);
  if (v21 <= 0.0)
  {
    if (v17 < v19 || v17 < v13.f32[2])
    {
      if (v19 <= v13.f32[2])
      {
        v30 = sqrtf(((v13.f32[2] + 1.0) - v17) - v19);
        v13.i32[0] = vsubq_f32(v13, v13).u32[0];
        v13.f32[1] = v13.f32[1] + v20;
        v13.f32[2] = v30 * v30;
        v13.f32[3] = v18 - v16;
        v24 = vmulq_n_f32(v13, 0.5 / v30);
      }

      else
      {
        v26 = sqrtf(((v19 + 1.0) - v17) - v13.f32[2]);
        v27.f32[0] = v16 + v18;
        v27.f32[1] = v26 * v26;
        *&v27.u32[2] = vrev64_s32(vadd_f32(*v13.f32, __PAIR64__(LODWORD(v20), v13.u32[0])));
        v24 = vmulq_n_f32(v27, 0.5 / v26);
      }
    }

    else
    {
      v28 = sqrtf(((v17 + 1.0) - v19) - v13.f32[2]);
      v29.f32[0] = v28 * v28;
      v29.f32[1] = v16 + v18;
      *&v29.u32[2] = vsub_f32(__PAIR64__(LODWORD(v20), v13.u32[0]), *v13.f32);
      v24 = vmulq_n_f32(v29, 0.5 / v28);
    }
  }

  else
  {
    v22 = sqrtf(v21 + 1.0);
    v23.f32[0] = v20 - v13.f32[1];
    v23.i32[1] = vaddq_f32(v13, v13).u32[0];
    v23.f32[2] = v18 - v16;
    v23.f32[3] = v22 * v22;
    v24 = vmulq_n_f32(v23, 0.5 / v22);
  }

  **(result + 40) = v24;
  *v1 = -v5;
  *v2 = v5 != 0.0;
  *v3 = v6 ^ 1;
  return result;
}

void Main_comAppleRealitykitVfxGeneral_graph_36892C5B_FE17_447F_9E03_D2C255C0486F(float32x4_t a1, float a2, uint64_t a3, uint64_t a4, int a5, float32x4_t *a6, float *a7, BOOL *a8, void *a9)
{
  v10 = vmulq_f32(a1, a1);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = vdupq_lane_s32(*v10.f32, 0);
  v11.i32[3] = 0;
  v12 = vrsqrteq_f32(v11);
  v13 = vmulq_f32(v12, vrsqrtsq_f32(v11, vmulq_f32(v12, v12)));
  v14 = vmulq_f32(v13, v13);
  v15 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v10.f32[0] != 0.0)), 0x1FuLL));
  v15.i32[3] = 0;
  v16 = vbslq_s8(vcltzq_s32(v15), vmulq_f32(vmulq_f32(v13, vrsqrtsq_f32(v11, v14)), a1), a1);
  v14.i32[0] = v16.i32[2];
  v9.i32[0] = 1.0;
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v13.f32[0] = *vbslq_s8(v15, v9, v14).i32;
  *v15.i32 = v16.f32[1] / (fabsf(v16.f32[2]) + 1.0);
  v17 = vmuls_lane_f32(*v15.i32, *v16.f32, 1);
  v18 = -(v16.f32[0] * *v15.i32);
  v19 = v16.f32[2] + (v13.f32[0] * v17);
  v20 = v13.f32[0] * v18;
  v21 = 1.0 - v17;
  v22 = vmuls_lane_f32(-v13.f32[0], *v16.f32, 1);
  v23 = v16.f32[2] + (v19 + v21);
  if (v23 <= 0.0)
  {
    if (v19 < v21 || v19 < v16.f32[2])
    {
      if (v21 <= v16.f32[2])
      {
        v32 = sqrtf(((v16.f32[2] + 1.0) - v19) - v21);
        v16.i32[0] = vsubq_f32(v16, v16).u32[0];
        v16.f32[1] = v16.f32[1] + v22;
        v16.f32[2] = v32 * v32;
        v16.f32[3] = v20 - v18;
        v26 = vmulq_n_f32(v16, 0.5 / v32);
      }

      else
      {
        v28 = sqrtf(((v21 + 1.0) - v19) - v16.f32[2]);
        v29.f32[0] = v18 + v20;
        v29.f32[1] = v28 * v28;
        *&v29.u32[2] = vrev64_s32(vadd_f32(*v16.f32, __PAIR64__(LODWORD(v22), v16.u32[0])));
        v26 = vmulq_n_f32(v29, 0.5 / v28);
      }
    }

    else
    {
      v30 = sqrtf(((v19 + 1.0) - v21) - v16.f32[2]);
      v31.f32[0] = v30 * v30;
      v31.f32[1] = v18 + v20;
      *&v31.u32[2] = vsub_f32(__PAIR64__(LODWORD(v22), v16.u32[0]), *v16.f32);
      v26 = vmulq_n_f32(v31, 0.5 / v30);
    }
  }

  else
  {
    v24 = sqrtf(v23 + 1.0);
    v25.f32[0] = v22 - v16.f32[1];
    v25.i32[1] = vaddq_f32(v16, v16).u32[0];
    v25.f32[2] = v20 - v18;
    v25.f32[3] = v24 * v24;
    v26 = vmulq_n_f32(v25, 0.5 / v24);
  }

  *a6 = v26;
  *a7 = -a2;
  *a8 = a2 != 0.0;
  *a9 = a5 ^ 1u;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_36892C5B_FE17_447F_9E03_D2C255C0486F()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 48);
  v2 = *(result + 56);
  v3 = *(result + 64);
  v4 = **(result + 16);
  v5 = **(result + 24);
  v6 = **(result + 32);
  v7 = vmulq_f32(v4, v4);
  v7.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  v8 = vdupq_lane_s32(*v7.f32, 0);
  v8.i32[3] = 0;
  v9 = vrsqrteq_f32(v8);
  v10 = vmulq_f32(v9, vrsqrtsq_f32(v8, vmulq_f32(v9, v9)));
  v11 = vmulq_f32(v10, v10);
  v12 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v7.f32[0] != 0.0)), 0x1FuLL));
  v12.i32[3] = 0;
  v13 = vbslq_s8(vcltzq_s32(v12), vmulq_f32(vmulq_f32(v10, vrsqrtsq_f32(v8, v11)), v4), v4);
  v11.i32[0] = v13.i32[2];
  v14.i32[0] = 1.0;
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v10.f32[0] = *vbslq_s8(v12, v14, v11).i32;
  *v12.i32 = v13.f32[1] / (fabsf(v13.f32[2]) + 1.0);
  v15 = vmuls_lane_f32(*v12.i32, *v13.f32, 1);
  v16 = -(v13.f32[0] * *v12.i32);
  v17 = v13.f32[2] + (v10.f32[0] * v15);
  v18 = v10.f32[0] * v16;
  v19 = 1.0 - v15;
  v20 = vmuls_lane_f32(-v10.f32[0], *v13.f32, 1);
  v21 = v13.f32[2] + (v17 + v19);
  if (v21 <= 0.0)
  {
    if (v17 < v19 || v17 < v13.f32[2])
    {
      if (v19 <= v13.f32[2])
      {
        v30 = sqrtf(((v13.f32[2] + 1.0) - v17) - v19);
        v13.i32[0] = vsubq_f32(v13, v13).u32[0];
        v13.f32[1] = v13.f32[1] + v20;
        v13.f32[2] = v30 * v30;
        v13.f32[3] = v18 - v16;
        v24 = vmulq_n_f32(v13, 0.5 / v30);
      }

      else
      {
        v26 = sqrtf(((v19 + 1.0) - v17) - v13.f32[2]);
        v27.f32[0] = v16 + v18;
        v27.f32[1] = v26 * v26;
        *&v27.u32[2] = vrev64_s32(vadd_f32(*v13.f32, __PAIR64__(LODWORD(v20), v13.u32[0])));
        v24 = vmulq_n_f32(v27, 0.5 / v26);
      }
    }

    else
    {
      v28 = sqrtf(((v17 + 1.0) - v19) - v13.f32[2]);
      v29.f32[0] = v28 * v28;
      v29.f32[1] = v16 + v18;
      *&v29.u32[2] = vsub_f32(__PAIR64__(LODWORD(v20), v13.u32[0]), *v13.f32);
      v24 = vmulq_n_f32(v29, 0.5 / v28);
    }
  }

  else
  {
    v22 = sqrtf(v21 + 1.0);
    v23.f32[0] = v20 - v13.f32[1];
    v23.i32[1] = vaddq_f32(v13, v13).u32[0];
    v23.f32[2] = v18 - v16;
    v23.f32[3] = v22 * v22;
    v24 = vmulq_n_f32(v23, 0.5 / v22);
  }

  **(result + 40) = v24;
  *v1 = -v5;
  *v2 = v5 != 0.0;
  *v3 = v6 ^ 1;
  return result;
}

void Main_comAppleRealitykitVfxGeneral_graph_3631C6CB_E76B_47C6_9BA0_12F4E98A26BD(const void *a1, unsigned int a2, float a3, int a4, float *a5, BOOL *a6, unint64_t *a7)
{
  *a5 = -a3;
  *a6 = a3 != 0.0;
  *a7 = a4 ^ 1u;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_3631C6CB_E76B_47C6_9BA0_12F4E98A26BD()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 40);
  v2 = *(result + 48);
  v3 = **(result + 16);
  v4 = **(result + 24) ^ 1;
  **(result + 32) = -v3;
  *v1 = v3 != 0.0;
  *v2 = v4;
  return result;
}

void Main_comAppleRealitykitVfxGeneral_graph_EAD9CBA2_783E_48D3_B113_0CC58281BB32(const void *a1, unsigned int a2, float a3, int a4, float *a5, BOOL *a6, unint64_t *a7)
{
  *a5 = -a3;
  *a6 = a3 != 0.0;
  *a7 = a4 ^ 1u;
}

uint64_t __vfx_script_comAppleRealitykitVfxGeneral_graph_EAD9CBA2_783E_48D3_B113_0CC58281BB32()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 40);
  v2 = *(result + 48);
  v3 = **(result + 16);
  v4 = **(result + 24) ^ 1;
  **(result + 32) = -v3;
  *v1 = v3 != 0.0;
  *v2 = v4;
  return result;
}

__n128 ParticleInit_comAppleRealitykitVfxGeneral_particleInit_52(float32x4_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  a2.i64[0] = 0;
  v5 = vdupq_lane_s32(*&vcgtq_f32(a1, a2), 0);
  v6 = vcgtz_f32(vext_s8(*a1.f32, *&vextq_s8(a1, a1, 8uLL), 4uLL));
  result = vaddq_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(v6, 2)), 0x1FuLL)), xmmword_270C68A00, vdupq_n_s32(0x3DCCCCCDu)), vaddq_f32(vbslq_s8(v5, xmmword_270C689B0, 0), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(v6, 0)), 0x1FuLL)), xmmword_270C689F0, 0)));
  result.n128_u32[3] = 1.0;
  *a5 = result;
  return result;
}

__n128 ParticleInit_comAppleRealitykitVfxGeneral_particleInit_3(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float a5, float a6, float a7, float a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, unint64_t a18, unint64_t a19, float a20, float32x4_t a21, float a22, float a23, uint64_t a24, float32x4_t a25, float a26, float a27, int a28, unint64_t a29, int8x16_t *a30, int8x16_t *a31, int8x16_t *a32, _OWORD *a33, _DWORD *a34, float32x4_t *a35, float *a36, float32x4_t *a37, float32x4_t *a38, _OWORD *a39)
{
  v44 = vfx_script_clock_simulation_index();
  v45 = vfx_script_clock_simulation_index();
  v46 = a11 + a10;
  v47 = 277803737 * (((747796405 * (v45 + v46) - 745064565) >> (((747796405 * (v45 + v46) - 745064565) >> 28) + 4)) ^ (747796405 * (v45 + v46) - 745064565));
  v48 = a16 * a15;
  v49 = fmaxf(v48, 1.0);
  v50 = ((a7 - a8) + ((COERCE_FLOAT((v47 >> 31) ^ (v47 >> 9) | 0x3F800000) + -1.0) * ((a7 + a8) - (a7 - a8)))) / v49;
  v51 = vfx_script_clock_simulation_index();
  v52 = 277803737 * (((747796405 * (v51 + v46) - 745064565) >> (((747796405 * (v51 + v46) - 745064565) >> 28) + 4)) ^ (747796405 * (v51 + v46) - 745064565));
  v53 = fmaxf((a18 - a19) + ((COERCE_FLOAT((v52 >> 31) ^ (v52 >> 9) | 0x3F800000) + -1.0) * ((a18 + a19) - (a18 - a19))), 0.0) / v49;
  v54 = 0.999;
  if (!a17)
  {
    v54 = 0.0;
  }

  v157 = v54 * v50;
  v55 = 747796405 * (v46 + v44) - 606257472;
  v56 = 277803737 * ((v55 >> ((v55 >> 28) + 4)) ^ v55);
  v57 = COERCE_FLOAT((v56 >> 31) ^ (v56 >> 9) | 0x3F800000) + -1.0;
  v58 = 277803737 * (((747796405 * v55 - 1403630843) >> (((747796405 * v55 - 1403630843) >> 28) + 4)) ^ (747796405 * v55 - 1403630843));
  v59 = COERCE_FLOAT((v58 >> 31) ^ (v58 >> 9) | 0x3F800000) + -1.0;
  if (!a13)
  {
    v59 = 0.0;
  }

  v60 = vmlaq_n_f32(a3, vsubq_f32(a4, a3), v59);
  if (!a12)
  {
    v57 = 0.0;
  }

  v61 = vsubq_f32(a2, a1);
  if (a14)
  {
    v62 = -1;
  }

  else
  {
    v62 = 0;
  }

  v164 = vmlaq_n_f32(a1, v61, v57);
  v63 = vbslq_s8(vdupq_n_s32(v62), v60, v164);
  if (((v48 > 1) & a17) == 0)
  {
    v53 = 0.0;
  }

  v151 = v53;
  v153 = v63;
  v64 = 747796405 * (vfx_script_clock_simulation_index() + v46) + 85864716;
  v65.i32[0] = v64;
  v65.i32[1] = 747796405 * v64 - 1403630843;
  v66 = vmul_s32(veor_s8(vshl_u32(v65, vsub_s32(0x300000003, vshr_n_u32(v65, 0x1CuLL))), v65), vdup_n_s32(0x108EF2D9u));
  __asm { FMOV            V1.2S, #1.0 }

  v72 = vorr_s8(veor_s8(vshl_u32(v66, 0xFFFFFFE1FFFFFFF7), vshl_u32(v66, 0xFFFFFFF7FFFFFFE1)), _D1);
  __asm { FMOV            V1.2S, #-1.0 }

  *v74.f32 = vadd_f32(v72, _D1);
  v75 = 277803737 * (((747796405 * (747796405 * v64 - 1403630843) - 1403630843) >> (((747796405 * (747796405 * v64 - 1403630843) - 1403630843) >> 28) + 4)) ^ (747796405 * (747796405 * v64 - 1403630843) - 1403630843));
  v74.f32[2] = COERCE_FLOAT((v75 >> 31) ^ (v75 >> 9) | 0x3F800000) + -1.0;
  v74.i32[3] = 0;
  v76 = vmaxnmq_f32(v74, 0);
  v76.i32[3] = 0;
  v77.i64[0] = 0x4000000040000000;
  v77.i64[1] = 0x4000000040000000;
  __asm { FMOV            V2.4S, #-1.0 }

  v79 = vmlaq_f32(_Q2, v77, vminnmq_f32(v76, xmmword_270C689A0));
  v80 = vmulq_f32(v79, v79);
  v80.f32[0] = v80.f32[2] + vaddv_f32(*v80.f32);
  v81 = vdupq_lane_s32(*v80.f32, 0);
  v81.i32[3] = 0;
  v82 = vrsqrteq_f32(v81);
  v83 = vmulq_f32(v82, vrsqrtsq_f32(v81, vmulq_f32(v82, v82)));
  v84 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v80.f32[0] != 0.0)), 0x1FuLL));
  v84.i32[3] = 0;
  v85 = vbslq_s8(vcltzq_s32(v84), vmulq_f32(v79, vmulq_f32(v83, vrsqrtsq_f32(v81, vmulq_f32(v83, v83)))), v79);
  v86 = vmulq_f32(a21, a21);
  v86.f32[0] = v86.f32[2] + vaddv_f32(*v86.f32);
  v87 = vdupq_lane_s32(*v86.f32, 0);
  v87.i32[3] = 0;
  v88 = vrsqrteq_f32(v87);
  v89 = vmulq_f32(v88, vrsqrtsq_f32(v87, vmulq_f32(v88, v88)));
  v90 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v86.f32[0] != 0.0)), 0x1FuLL));
  v90.i32[3] = 0;
  v91 = vbslq_s8(vcltzq_s32(v90), vmulq_f32(a21, vmulq_f32(v89, vrsqrtsq_f32(v87, vmulq_f32(v89, v89)))), a21);
  v144 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL), vnegq_f32(v85)), v91, vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL));
  v147 = vextq_s8(vuzp1q_s32(v144, v144), v144, 0xCuLL);
  v92 = vmulq_f32(v91, v85);
  v93 = acosf(v92.f32[2] + vaddv_f32(*v92.f32));
  v94 = vmulq_f32(v144, v144);
  v94.f32[0] = v94.f32[1] + (v94.f32[2] + v94.f32[0]);
  v95 = vdupq_lane_s32(*v94.f32, 0);
  v95.i32[3] = 0;
  v96 = vrsqrteq_f32(v95);
  v97 = vmulq_f32(v96, vrsqrtsq_f32(v95, vmulq_f32(v96, v96)));
  v98 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v94.f32[0] != 0.0)), 0x1FuLL));
  v98.i32[3] = 0;
  v148 = vbslq_s8(vcltzq_s32(v98), vmulq_f32(vmulq_f32(v97, vrsqrtsq_f32(v95, vmulq_f32(v97, v97))), v147), v147);
  v99 = __sincosf_stret((v93 * a20) * 0.5);
  v100 = vmulq_n_f32(v148, v99.__sinval);
  v101 = v100;
  v101.i32[3] = LODWORD(v99.__cosval);
  v102 = vmulq_f32(v101, xmmword_270C68A10);
  v103 = vnegq_f32(v102);
  v104 = vtrn2q_s32(v102, vtrn1q_s32(v102, v103));
  v105 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v102, v103, 8uLL), *a21.f32, 1), vextq_s8(v104, v104, 8uLL), a21.f32[0]);
  v106 = vrev64q_s32(v102);
  v106.i32[0] = v103.i32[1];
  v106.i32[3] = v103.i32[2];
  v107 = vmlaq_laneq_f32(v105, v106, a21, 2);
  v108 = vnegq_f32(v107);
  v109 = vtrn2q_s32(v107, vtrn1q_s32(v107, v108));
  v110 = vrev64q_s32(v107);
  v110.i32[0] = v108.i32[1];
  v110.i32[3] = v108.i32[2];
  v111 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v107, v101, 3), v110, v100, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v107, v108, 8uLL), *v100.f32, 1), vextq_s8(v109, v109, 8uLL), v100.f32[0]));
  v112 = vmulq_f32(v111, v111);
  v112.f32[0] = v112.f32[2] + vaddv_f32(*v112.f32);
  v113 = vdupq_lane_s32(*v112.f32, 0);
  v113.i32[3] = 0;
  v114 = vrsqrteq_f32(v113);
  v115 = vmulq_f32(v114, vrsqrtsq_f32(v113, vmulq_f32(v114, v114)));
  v116 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v112.f32[0] != 0.0)), 0x1FuLL));
  v116.i32[3] = 0;
  v162 = vbslq_s8(vcltzq_s32(v116), vmulq_f32(vmulq_f32(v115, vrsqrtsq_f32(v113, vmulq_f32(v115, v115))), v111), v111);
  v117 = vfx_script_clock_simulation_index();
  v118 = 277803737 * (((747796405 * (v117 + v46) - 745064565) >> (((747796405 * (v117 + v46) - 745064565) >> 28) + 4)) ^ (747796405 * (v117 + v46) - 745064565));
  v119.n128_f32[0] = (a22 - a23) + ((COERCE_FLOAT((v118 >> 31) ^ (v118 >> 9) | 0x3F800000) + -1.0) * ((a22 + a23) - (a22 - a23)));
  v149 = v119;
  v120 = vmulq_f32(v162, v162);
  v120.f32[0] = v120.f32[2] + vaddv_f32(*v120.f32);
  v121 = v120.f32[0] != 0.0;
  if (a24 == 1)
  {
    v122 = 0.0;
  }

  else
  {
    v122 = v119.n128_f32[0];
  }

  v123 = v119.n128_f32[0] * 0.5;
  v124 = vdupq_lane_s32(*v120.f32, 0);
  v124.i32[3] = 0;
  v125 = vrsqrteq_f32(v124);
  v126 = vmulq_f32(v125, vrsqrtsq_f32(v124, vmulq_f32(v125, v125)));
  v127 = vmulq_f32(vmulq_f32(v126, vrsqrtsq_f32(v124, vmulq_f32(v126, v126))), v162);
  v128 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v121)), 0x1FuLL));
  v128.i32[3] = 0;
  v154 = vbslq_s8(vcltzq_s32(v128), v127, v162);
  if (a24 == 1)
  {
    v129 = v123;
  }

  else
  {
    v129 = 0.0;
  }

  v130 = __sincosf_stret(v129);
  v131 = vmulq_n_f32(v154, v130.__sinval);
  v131.i32[3] = LODWORD(v130.__cosval);
  v155 = v131;
  v132 = vmulq_f32(a25, a25);
  v132.f32[0] = v132.f32[2] + vaddv_f32(*v132.f32);
  v133 = vdupq_lane_s32(*v132.f32, 0);
  v133.i32[3] = 0;
  v134 = vrsqrteq_f32(v133);
  v135 = vmulq_f32(v134, vrsqrtsq_f32(v133, vmulq_f32(v134, v134)));
  v136 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v132.f32[0] != 0.0)), 0x1FuLL));
  v136.i32[3] = 0;
  v145 = vbslq_s8(vcltzq_s32(v136), vmulq_f32(vmulq_f32(v135, vrsqrtsq_f32(v133, vmulq_f32(v135, v135))), a25), a25);
  v137 = vfx_script_clock_simulation_index();
  v138 = 277803737 * (((747796405 * (v137 + v46) - 745064565) >> (((747796405 * (v137 + v46) - 745064565) >> 28) + 4)) ^ (747796405 * (v137 + v46) - 745064565));
  v158 = vmulq_n_f32(v145, (a26 - a27) + ((COERCE_FLOAT((v138 >> 31) ^ (v138 >> 9) | 0x3F800000) + -1.0) * ((a26 + a27) - (a26 - a27))));
  vfx_script_clock_time();
  *&v139 = *&v139;
  *a30 = v164;
  *a31 = v164;
  *a32 = v153;
  *a34 = LODWORD(v151);
  *a36 = v122;
  *a37 = v155;
  DWORD1(v139) = a28;
  *(&v139 + 2) = a29;
  *a38 = v158;
  *a39 = v139;
  *&v139 = __PAIR64__(LODWORD(a6), LODWORD(a5));
  *(&v139 + 1) = __PAIR64__(LODWORD(v151), LODWORD(v157));
  *a33 = v139;
  result = v149;
  v141 = v162;
  v141.i32[3] = v149.n128_u32[0];
  *a35 = v141;
  return result;
}

__n128 ParticleInit_comAppleRealitykitVfxGeneral_particleInit_65(int8x16_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6, float a7, float a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, uint64_t a16, float a17, uint64_t a18, unint64_t a19, unint64_t a20, float a21, uint64_t a22, float32x4_t a23, float a24, float a25, uint64_t a26, int8x16_t *a27, int8x16_t *a28, int8x16_t *a29, _OWORD *a30, _DWORD *a31, float32x4_t *a32, float *a33, float32x4_t *a34, __int128 *a35)
{
  v154 = *a35;
  v39 = vfx_script_clock_simulation_index();
  v40 = fminf(a8 - a17, a8 + a17);
  v41 = vfx_script_clock_simulation_index();
  v42 = a11 + a10;
  v43 = 277803737 * (((747796405 * (v41 + v42) + 1492984298) >> (((747796405 * (v41 + v42) + 1492984298) >> 28) + 4)) ^ (747796405 * (v41 + v42) + 1492984298));
  v44 = a18 * a16;
  v45 = fmaxf(v44, 1.0);
  v153 = ((v40 + ((COERCE_FLOAT((v43 >> 31) ^ (v43 >> 9) | 0x3F800000) + -1.0) * (fmaxf(a8 - a17, a8 + a17) - v40))) / v45) * 0.999;
  v46 = a19 - a20;
  v47 = a19 + a20;
  v48 = fminf(v46, v47);
  v49 = fmaxf(v46, v47);
  v50 = vfx_script_clock_simulation_index();
  v51 = 277803737 * (((747796405 * (v50 + v42) + 1492984298) >> (((747796405 * (v50 + v42) + 1492984298) >> 28) + 4)) ^ (747796405 * (v50 + v42) + 1492984298));
  v52 = fmaxf(v48 + ((COERCE_FLOAT((v51 >> 31) ^ (v51 >> 9) | 0x3F800000) + -1.0) * (v49 - v48)), 0.0) / v45;
  v53 = 747796405 * (v42 + v39) - 478131083;
  v54 = 277803737 * ((v53 >> ((v53 >> 28) + 4)) ^ v53);
  v55 = COERCE_FLOAT((v54 >> 31) ^ (v54 >> 9) | 0x3F800000) + -1.0;
  v56 = 277803737 * (((747796405 * v53 - 1403630843) >> (((747796405 * v53 - 1403630843) >> 28) + 4)) ^ (747796405 * v53 - 1403630843));
  v57 = COERCE_FLOAT((v56 >> 31) ^ (v56 >> 9) | 0x3F800000) + -1.0;
  if (!a14)
  {
    v57 = 0.0;
  }

  v58 = vmlaq_n_f32(a4, vsubq_f32(a5, a4), v57);
  if (!a12)
  {
    v55 = 0.0;
  }

  v59 = vmlaq_n_f32(a2, vsubq_f32(a3, a2), v55);
  if (a13)
  {
    v60 = -1;
  }

  else
  {
    v60 = 0;
  }

  v61 = vbslq_s8(vdupq_n_s32(v60), a1, v59);
  v146 = v61;
  if (a15)
  {
    v62 = -1;
  }

  else
  {
    v62 = 0;
  }

  v63 = vbslq_s8(vdupq_n_s32(v62), v58, v61);
  if (v44 <= 1)
  {
    v52 = 0.0;
  }

  v148 = v52;
  v150 = v63;
  v64 = 747796405 * (vfx_script_clock_simulation_index() + v42) + 85864716;
  v65.i32[0] = v64;
  v65.i32[1] = 747796405 * v64 - 1403630843;
  v66 = vmul_s32(veor_s8(vshl_u32(v65, vsub_s32(0x300000003, vshr_n_u32(v65, 0x1CuLL))), v65), vdup_n_s32(0x108EF2D9u));
  __asm { FMOV            V1.2S, #1.0 }

  v72 = vorr_s8(veor_s8(vshl_u32(v66, 0xFFFFFFE1FFFFFFF7), vshl_u32(v66, 0xFFFFFFF7FFFFFFE1)), _D1);
  __asm { FMOV            V1.2S, #-1.0 }

  *v74.f32 = vadd_f32(v72, _D1);
  v75 = 277803737 * (((747796405 * (747796405 * v64 - 1403630843) - 1403630843) >> (((747796405 * (747796405 * v64 - 1403630843) - 1403630843) >> 28) + 4)) ^ (747796405 * (747796405 * v64 - 1403630843) - 1403630843));
  v74.f32[2] = COERCE_FLOAT((v75 >> 31) ^ (v75 >> 9) | 0x3F800000) + -1.0;
  v74.i32[3] = 0;
  v76 = vmaxnmq_f32(v74, 0);
  v76.i32[3] = 0;
  v77.i64[0] = 0x4000000040000000;
  v77.i64[1] = 0x4000000040000000;
  __asm { FMOV            V2.4S, #-1.0 }

  v79 = vmlaq_f32(_Q2, v77, vminnmq_f32(v76, xmmword_270C689A0));
  v80 = vmulq_f32(v79, v79);
  v80.f32[0] = v80.f32[2] + vaddv_f32(*v80.f32);
  v81 = vdupq_lane_s32(*v80.f32, 0);
  v81.i32[3] = 0;
  v82 = vrsqrteq_f32(v81);
  v83 = vmulq_f32(v82, vrsqrtsq_f32(v81, vmulq_f32(v82, v82)));
  v84 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v80.f32[0] != 0.0)), 0x1FuLL));
  v84.i32[3] = 0;
  v85 = vbslq_s8(vcltzq_s32(v84), vmulq_f32(v79, vmulq_f32(v83, vrsqrtsq_f32(v81, vmulq_f32(v83, v83)))), v79);
  v86 = vmulq_f32(a23, a23);
  v86.f32[0] = v86.f32[2] + vaddv_f32(*v86.f32);
  v87 = vdupq_lane_s32(*v86.f32, 0);
  v87.i32[3] = 0;
  v88 = vrsqrteq_f32(v87);
  v89 = vmulq_f32(v88, vrsqrtsq_f32(v87, vmulq_f32(v88, v88)));
  v90 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v86.f32[0] != 0.0)), 0x1FuLL));
  v90.i32[3] = 0;
  v91 = vbslq_s8(vcltzq_s32(v90), vmulq_f32(a23, vmulq_f32(v89, vrsqrtsq_f32(v87, vmulq_f32(v89, v89)))), a23);
  v140 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL), vnegq_f32(v85)), v91, vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL));
  v142 = vextq_s8(vuzp1q_s32(v140, v140), v140, 0xCuLL);
  v92 = vmulq_f32(v91, v85);
  v93 = acosf(v92.f32[2] + vaddv_f32(*v92.f32));
  v94 = vmulq_f32(v140, v140);
  v94.f32[0] = v94.f32[1] + (v94.f32[2] + v94.f32[0]);
  v95 = vdupq_lane_s32(*v94.f32, 0);
  v95.i32[3] = 0;
  v96 = vrsqrteq_f32(v95);
  v97 = vmulq_f32(v96, vrsqrtsq_f32(v95, vmulq_f32(v96, v96)));
  v98 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v94.f32[0] != 0.0)), 0x1FuLL));
  v98.i32[3] = 0;
  v143 = vbslq_s8(vcltzq_s32(v98), vmulq_f32(vmulq_f32(v97, vrsqrtsq_f32(v95, vmulq_f32(v97, v97))), v142), v142);
  v99 = __sincosf_stret((v93 * a21) * 0.5);
  v100 = vmulq_n_f32(v143, v99.__sinval);
  v101 = v100;
  v101.i32[3] = LODWORD(v99.__cosval);
  v102 = vmulq_f32(v101, xmmword_270C68A10);
  v103 = vnegq_f32(v102);
  v104 = vtrn2q_s32(v102, vtrn1q_s32(v102, v103));
  v105 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v102, v103, 8uLL), *a23.f32, 1), vextq_s8(v104, v104, 8uLL), a23.f32[0]);
  v106 = vrev64q_s32(v102);
  v106.i32[0] = v103.i32[1];
  v106.i32[3] = v103.i32[2];
  v107 = vmlaq_laneq_f32(v105, v106, a23, 2);
  v108 = vnegq_f32(v107);
  v109 = vtrn2q_s32(v107, vtrn1q_s32(v107, v108));
  v110 = vrev64q_s32(v107);
  v110.i32[0] = v108.i32[1];
  v110.i32[3] = v108.i32[2];
  v111 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v107, v101, 3), v110, v100, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v107, v108, 8uLL), *v100.f32, 1), vextq_s8(v109, v109, 8uLL), v100.f32[0]));
  v112 = vmulq_f32(v111, v111);
  v112.f32[0] = v112.f32[2] + vaddv_f32(*v112.f32);
  v113 = vdupq_lane_s32(*v112.f32, 0);
  v113.i32[3] = 0;
  v114 = vrsqrteq_f32(v113);
  v115 = vmulq_f32(v114, vrsqrtsq_f32(v113, vmulq_f32(v114, v114)));
  v116 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v112.f32[0] != 0.0)), 0x1FuLL));
  v116.i32[3] = 0;
  v158 = vbslq_s8(vcltzq_s32(v116), vmulq_f32(vmulq_f32(v115, vrsqrtsq_f32(v113, vmulq_f32(v115, v115))), v111), v111);
  v117 = fminf(a24 - a25, a24 + a25);
  v118 = vfx_script_clock_simulation_index();
  v119 = 277803737 * (((747796405 * (v118 + v42) + 1492984298) >> (((747796405 * (v118 + v42) + 1492984298) >> 28) + 4)) ^ (747796405 * (v118 + v42) + 1492984298));
  v120.n128_f32[0] = v117 + ((COERCE_FLOAT((v119 >> 31) ^ (v119 >> 9) | 0x3F800000) + -1.0) * (fmaxf(a24 - a25, a24 + a25) - v117));
  v144 = v120;
  v121 = vmulq_f32(v158, v158);
  v121.f32[0] = v121.f32[2] + vaddv_f32(*v121.f32);
  v122 = v121.f32[0] != 0.0;
  if (a26 == 1)
  {
    v123 = 0.0;
  }

  else
  {
    v123 = v120.n128_f32[0];
  }

  v124 = v120.n128_f32[0] * 0.5;
  v125 = vdupq_lane_s32(*v121.f32, 0);
  v125.i32[3] = 0;
  v126 = vrsqrteq_f32(v125);
  v127 = vmulq_f32(v126, vrsqrtsq_f32(v125, vmulq_f32(v126, v126)));
  v128 = vmulq_f32(vmulq_f32(v127, vrsqrtsq_f32(v125, vmulq_f32(v127, v127))), v158);
  v129 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v122)), 0x1FuLL));
  v129.i32[3] = 0;
  v151 = vbslq_s8(vcltzq_s32(v129), v128, v158);
  if (a26 == 1)
  {
    v130 = v124;
  }

  else
  {
    v130 = 0.0;
  }

  v131 = __sincosf_stret(v130);
  v132 = vmulq_n_f32(v151, v131.__sinval);
  v132.i32[3] = LODWORD(v131.__cosval);
  v152 = v132;
  vfx_script_clock_time();
  *&v133 = *&v133;
  *a27 = v146;
  *a28 = v146;
  *a29 = v150;
  *a31 = LODWORD(v148);
  *a33 = v123;
  *(&v133 + 4) = *(&v154 + 4);
  *a34 = v152;
  *a35 = v133;
  *&v133 = __PAIR64__(LODWORD(a7), LODWORD(a6));
  *(&v133 + 1) = __PAIR64__(LODWORD(v148), LODWORD(v153));
  *a30 = v133;
  result = v144;
  v135 = v158;
  v135.i32[3] = v144.n128_u32[0];
  *a32 = v135;
  return result;
}

void ParticleUpdate_comAppleRealitykitVfxGeneral_particleUpdate_19(float32x4_t a1, float32x4_t a2, float a3, __n128 a4, float32x4_t a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, float32x4_t *a13, float *a14, float *a15, float32x4_t *a16, float32x4_t a17, float *a18)
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = 1.0 - a3;
  v53 = a3;
  v54 = sinf(a3 * 3.1416);
  v55 = v54 * v54;
  v56 = v53 * v53;
  v57 = 1.0 - (v53 * v53);
  v58 = 1065353216;
  v27 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), powf(v53, a4.n128_f32[1]));
  v28 = fminf(fmaxf(v27.f32[3], 0.0), 1.0) * *(&v52 + a4.n128_f32[2]);
  v29 = vmulq_n_f32(v27, v28);
  v29.f32[3] = v28;
  v48 = v29;
  v30 = a5.f32[1] + ((vmuls_lane_f32(a6, *a5.f32, 1) - a5.f32[1]) * powf(v53, a7));
  vfx_script_clock_time();
  *&v31 = v31;
  v32 = *&v31 - a4.n128_f32[0];
  v33 = vmulq_f32(a17, a17);
  v34 = vaddv_f32(*v33.f32);
  v35 = (v33.f32[2] + v34) != 0.0;
  if (a11 == 1)
  {
    a8 = 0.0;
  }

  v36 = (a17.f32[3] + (v32 * a5.f32[0])) * 0.5;
  v33.f32[0] = v33.f32[2] + v34;
  v37 = vdupq_lane_s32(*v33.f32, 0);
  v37.i32[3] = 0;
  v38 = vrsqrteq_f32(v37);
  v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
  v40 = vmulq_f32(vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39))), a17);
  v41 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v35)), 0x1FuLL));
  v41.i32[3] = 0;
  v51 = vbslq_s8(vcltzq_s32(v41), v40, a17);
  if (a11 != 1)
  {
    v36 = 0.0;
  }

  v42 = __sincosf_stret(v36);
  v43 = vmulq_n_f32(v51, v42.__sinval);
  v43.i32[3] = LODWORD(v42.__cosval);
  v44 = vmuls_lane_f32(v32, a5, 2);
  if (!a12)
  {
    v44 = 0.0;
  }

  *a13 = v48;
  *a14 = v30;
  *a15 = a8;
  *a16 = v43;
  *a18 = a5.f32[3] + v44;
  v45 = *MEMORY[0x277D85DE8];
}

void __vfx_script_comAppleRealitykitVfxGeneral_particleUpdate_19()
{
  v1 = *MEMORY[0x277D85DE8];
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  v0 = *MEMORY[0x277D85DE8];
}

void ParticleUpdate_comAppleRealitykitVfxGeneral_particleUpdate_12(float32x4_t a1, float32x4_t a2, float a3, float a4, float32x4_t a5, float a6, float a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, float32x4_t *a14, float *a15, float *a16, float a17, uint64_t a18, float32x4_t a19, float *a20, float32x4_t *a21)
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = 1.0 - a3;
  v59 = a3;
  v60 = sinf(a3 * 3.1416);
  v61 = v60 * v60;
  v62 = v59 * v59;
  v63 = 1.0 - (v59 * v59);
  v64 = 1065353216;
  v30 = vmlaq_n_f32(a1, vsubq_f32(a2, a1), powf(v59, a4));
  v31 = fminf(fmaxf(v30.f32[3], 0.0), 1.0) * *(&v58 + a11);
  v32 = vmulq_n_f32(v30, v31);
  v32.f32[3] = v31;
  v54 = v32;
  v33 = a5.f32[1] + ((vmuls_lane_f32(a6, *a5.f32, 1) - a5.f32[1]) * powf(v59, a7));
  vfx_script_clock_time();
  *&v34 = v34;
  v35 = *&v34 - a8;
  v36 = vmuls_lane_f32(v35, a5, 2);
  if (!a12)
  {
    v36 = 0.0;
  }

  v37 = a5.f32[3] + v36;
  v38 = a19.f32[3] + (v35 * a5.f32[0]);
  v39 = vmulq_f32(a19, a19);
  v40 = vaddv_f32(*v39.f32);
  v41 = (v39.f32[2] + v40) != 0.0;
  if (a13 == 1)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = a17;
  }

  v43 = v38 * 0.5;
  v39.f32[0] = v39.f32[2] + v40;
  v44 = vdupq_lane_s32(*v39.f32, 0);
  v44.i32[3] = 0;
  v45 = vrsqrteq_f32(v44);
  v46 = vmulq_f32(v45, vrsqrtsq_f32(v44, vmulq_f32(v45, v45)));
  v47 = vmulq_f32(vmulq_f32(v46, vrsqrtsq_f32(v44, vmulq_f32(v46, v46))), a19);
  v48 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v41)), 0x1FuLL));
  v48.i32[3] = 0;
  v57 = vbslq_s8(vcltzq_s32(v48), v47, a19);
  if (a13 != 1)
  {
    v43 = 0.0;
  }

  v49 = __sincosf_stret(v43);
  v50 = vmulq_n_f32(v57, v49.__sinval);
  v50.i32[3] = LODWORD(v49.__cosval);
  *a14 = v54;
  *a15 = v33;
  *a16 = v37;
  *a20 = v42;
  *a21 = v50;
  v51 = *MEMORY[0x277D85DE8];
}

void __vfx_script_comAppleRealitykitVfxGeneral_particleUpdate_12()
{
  v1 = *MEMORY[0x277D85DE8];
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  v0 = *MEMORY[0x277D85DE8];
}

void Spawn_comAppleVfxConfetti_graph_5(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (a2 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  *a4 = v4;
  a4[1] = v5;
}

uint64_t __vfx_script_comAppleVfxConfetti_graph_5(uint64_t a1)
{
  unsafe_script_context = a1;
  vfx_script_clock_time();
  vfx_script_clock_delta_time();
  result = vfx_script_get_arguments_buffer();
  v2 = *(result + 24);
  v3 = **(result + 8);
  v4 = **(result + 16);
  if (v3 >= v4)
  {
    v5 = **(result + 16);
  }

  else
  {
    v5 = **(result + 8);
  }

  if (v3 <= v4)
  {
    v3 = **(result + 16);
  }

  *v2 = v5;
  v2[1] = v3;
  return result;
}

uint64_t sub_270C64A80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546B0, &unk_270C68AD0);
  v0 = *(sub_270C685C8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_270C689E0;
  result = sub_270C68598();
  off_280854680 = v3;
  return result;
}

id sub_270C64B64()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v9 - v1;
  sub_270C64C78(&v9 - v1);
  v3 = sub_270C68528();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = 0;
  if (v5 != 1)
  {
    v7 = sub_270C68508();
    (*(v4 + 8))(v2, v3);
    v6 = v7;
  }

  return v6;
}

uint64_t sub_270C64C78@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for comAppleVfxConfetti();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_270C68608();
  v5 = sub_270C68608();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_270C68518();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_270C68528();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *sub_270C64DB0()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v3 = &v16 - v2;
  v4 = sub_270C68528();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_270C64C78(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_270C659B4(v3);
    v12 = sub_270C68578();
    sub_270C65A1C();
    swift_allocError();
    *v13 = 0xD00000000000001ALL;
    v13[1] = 0x8000000270C69250;
    (*(*(v12 - 1) + 104))(v13, *MEMORY[0x277D78108], v12);
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    v12 = objc_allocWithZone(sub_270C685E8());
    v14 = sub_270C68588();
    if (!v0)
    {
      v12 = v14;
    }

    (*(v5 + 8))(v11, v4);
  }

  return v12;
}

uint64_t sub_270C65048()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_270C68528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270C64C78(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_270C659B4(v5);
    v11 = sub_270C68578();
    sub_270C65A1C();
    swift_allocError();
    *v12 = 0xD00000000000001ALL;
    v12[1] = 0x8000000270C69250;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D78108], v11);
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = [objc_allocWithZone(sub_270C685E8()) init];
    v14 = sub_270C685D8();
    if (!v0)
    {
      v1 = v14;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v1;
}

id sub_270C652B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();

  return v4;
}

id sub_270C6533C()
{
  sub_270C6596C(0, &qword_2808546B8, 0x277CCABB0);
  v0 = sub_270C68628();

  return v0;
}

id sub_270C6538C()
{
  sub_270C6550C();
  sub_270C6596C(0, &qword_2808546A8, 0x277CCAE60);
  v0 = sub_270C685F8();

  return v0;
}

id sub_270C65408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for comAppleVfxConfetti();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __vfx_get_effect_class_comAppleVfxConfetti()
{
  type metadata accessor for comAppleVfxConfetti();

  return swift_getObjCClassFromMetadata();
}

uint64_t type metadata accessor for comAppleVfxConfetti()
{
  result = qword_280854698;
  if (!qword_280854698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270C6550C()
{
  v0 = sub_270C685C8();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280854678 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v4 = off_280854680;
    v44 = *(off_280854680 + 2);
    if (!v44)
    {
      return MEMORY[0x277D84F98];
    }

    v5 = objc_opt_self();
    v6 = 0;
    v42 = v4 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v43 = v5;
    v40 = (v45 + 8);
    v41 = v45 + 16;
    v7 = MEMORY[0x277D84F98];
    v39 = v4;
    while (v6 < v4[2])
    {
      (*(v45 + 16))(v3, &v42[*(v45 + 72) * v6], v0);

      v12 = sub_270C685A8();
      v14 = v13;
      v15 = [v43 valueWithPointer_];
      if (!v15)
      {
        v27 = sub_270C679F0(v12, v14);
        v29 = v28;

        if (v29)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v7;
          v31 = v7;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_270C67F74();
            v31 = v46;
          }

          v32 = *(*(v31 + 48) + 16 * v27 + 8);

          sub_270C67D0C(v27, v31);

          (*v40)(v3, v0);
          v7 = v31;
        }

        else
        {
          (*v40)(v3, v0);
        }

        goto LABEL_6;
      }

      v16 = v15;
      v17 = v0;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v7;
      v19 = sub_270C679F0(v12, v14);
      v21 = v7[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_27;
      }

      v25 = v20;
      if (v7[3] < v24)
      {
        sub_270C67A68(v24, v18);
        v19 = sub_270C679F0(v12, v14);
        if ((v25 & 1) != (v26 & 1))
        {
          result = sub_270C68678();
          __break(1u);
          return result;
        }

LABEL_18:
        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_4;
      }

      if (v18)
      {
        goto LABEL_18;
      }

      v37 = v19;
      sub_270C67F74();
      v19 = v37;
      if ((v25 & 1) == 0)
      {
LABEL_19:
        v33 = v46;
        v46[(v19 >> 6) + 8] |= 1 << v19;
        v34 = (v33[6] + 16 * v19);
        *v34 = v12;
        v34[1] = v14;
        *(v33[7] + 8 * v19) = v16;

        v0 = v17;
        (*v40)(v3, v17);
        v35 = v33[2];
        v23 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v33[2] = v36;
        v7 = v33;
        goto LABEL_5;
      }

LABEL_4:
      v8 = v19;

      v9 = v46;
      v10 = v46[7];
      v11 = *(v10 + 8 * v8);
      *(v10 + 8 * v8) = v16;

      v0 = v17;
      (*v40)(v3, v17);
      v7 = v9;
LABEL_5:
      v4 = v39;
LABEL_6:
      if (v44 == ++v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_270C6596C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_270C659B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_270C65A1C()
{
  result = qword_2808546C8;
  if (!qword_2808546C8)
  {
    sub_270C68578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808546C8);
  }

  return result;
}

void sub_270C65A78(uint64_t a1)
{
  qword_2808546D0 = a1;
  sub_270C68538();
  *&v1 = v1;
  dword_2808546D8 = LODWORD(v1);
  sub_270C68548();
  dword_2808546DC = v2;
  v3 = sub_270C68568();
  if (!v3[1])
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3[2];
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v3[3];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v3[4];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3[5];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = *v6;
  v8 = vrsqrteq_f32(xmmword_270C689A0);
  v9 = vmulq_f32(v8, vrsqrtsq_f32(xmmword_270C689A0, vmulq_f32(v8, v8)));
  v14 = vmulq_f32(vmulq_f32(v9, vrsqrtsq_f32(xmmword_270C689A0, vmulq_f32(v9, v9))), xmmword_270C689B0);
  v10 = 1.5708;
  if (!*v5)
  {
    v10 = 0.0;
  }

  v11 = __sincosf_stret(v10);
  v12 = vmulq_n_f32(v14, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  LODWORD(v13) = v15;
  DWORD1(v13) = *v4;
  *v7 = v12;
  *(&v13 + 1) = __PAIR64__(1.0, DWORD2(v15));
  *v6 = v13;
}

uint64_t sub_270C65B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546B0, &unk_270C68AD0);
  v0 = *(sub_270C685C8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_270C68AA0;
  sub_270C68598();
  sub_270C68598();
  sub_270C68598();
  sub_270C68598();
  result = sub_270C68598();
  off_2808546E0 = v3;
  return result;
}

uint64_t sub_270C65D60(uint64_t a1)
{
  qword_2808546E8 = a1;
  sub_270C68538();
  *&v1 = v1;
  dword_2808546F0 = LODWORD(v1);
  result = qword_2808546E8;
  if (!qword_2808546E8)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_270C68548();
  dword_2808546F4 = v3;
  result = qword_2808546E8;
  if (!qword_2808546E8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_270C68568();
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(result + 16);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_2808546E8)
  {
    *v5 = *v4;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_270C65DEC(uint64_t a1)
{
  qword_2808546E8 = a1;
  sub_270C68538();
  *&v1 = v1;
  dword_2808546F0 = LODWORD(v1);
  result = qword_2808546E8;
  if (!qword_2808546E8)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_270C68548();
  dword_2808546F4 = v3;
  result = qword_2808546E8;
  if (!qword_2808546E8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_270C68568();
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(result + 16);
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_2808546E8)
  {
    v6 = COERCE_FLOAT(*v4) / 3.1416;
    v7 = COERCE_FLOAT(HIDWORD(*v4)) / 3.1416;
    *v5 = fminf(v6, v7);
    v5[1] = fmaxf(v6, v7);
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_270C65E98(uint64_t a1)
{
  qword_2808546E8 = a1;
  sub_270C68538();
  *&v1 = v1;
  dword_2808546F0 = LODWORD(v1);
  result = qword_2808546E8;
  if (!qword_2808546E8)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_270C68548();
  dword_2808546F4 = v3;
  result = qword_2808546E8;
  if (!qword_2808546E8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_270C68568();
  v4 = result[1];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result[2];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result[3];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result[4];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (qword_2808546E8)
  {
    v8 = *v5;
    *v6 = *v4;
    *v7 = v8;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_270C65F44(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  qword_2808546E8 = a1;
  sub_270C68538();
  *&v1 = v1;
  dword_2808546F0 = LODWORD(v1);
  if (!qword_2808546E8)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_270C68548();
  dword_2808546F4 = v2;
  if (!qword_2808546E8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_270C68558();
  if (!qword_2808546E8)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (!*(sub_270C68568() + 8))
  {
    goto LABEL_9;
  }

  v3 = *MEMORY[0x277D85DE8];
}

void *sub_270C6606C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  qword_2808546E8 = a1;
  sub_270C68538();
  *&v1 = v1;
  dword_2808546F0 = LODWORD(v1);
  if (!qword_2808546E8)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_270C68548();
  dword_2808546F4 = v2;
  if (!qword_2808546E8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_270C68558();
  if (!qword_2808546E8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_270C68568();
  if (!result[1])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!result[2])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!result[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!result[4])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!result[5])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!result[6])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!result[7])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!result[8])
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (!result[9])
  {
    goto LABEL_25;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for comAppleSystemEnvironmentsRain()
{
  result = qword_2808546F8;
  if (!qword_2808546F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_270C66370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  sub_270C66484(&v10 - v2);
  v4 = sub_270C68528();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_270C68508();
    (*(v5 + 8))(v3, v4);
    v7 = v8;
  }

  return v7;
}

uint64_t sub_270C66484@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for comAppleSystemEnvironmentsRain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_270C68608();
  v5 = sub_270C68608();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_270C68518();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_270C68528();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *sub_270C665BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_270C68528();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_270C66484(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_270C659B4(v4);
    v13 = sub_270C68578();
    sub_270C65A1C();
    swift_allocError();
    *v14 = 0xD000000000000026;
    v14[1] = 0x8000000270C693D0;
    (*(*(v13 - 1) + 104))(v14, *MEMORY[0x277D78108], v13);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 16))(v10, v12, v5);
    v13 = objc_allocWithZone(sub_270C685E8());
    v15 = sub_270C68588();
    if (!v0)
    {
      v13 = v15;
    }

    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_270C66854()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_270C68528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270C66484(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_270C659B4(v5);
    v11 = sub_270C68578();
    sub_270C65A1C();
    swift_allocError();
    *v12 = 0xD000000000000026;
    v12[1] = 0x8000000270C693D0;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D78108], v11);
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = [objc_allocWithZone(sub_270C685E8()) init];
    v14 = sub_270C685D8();
    if (!v0)
    {
      v1 = v14;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v1;
}

id sub_270C66AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();

  return v4;
}

id sub_270C66B48()
{
  sub_270C6596C(0, &qword_2808546B8, 0x277CCABB0);
  v0 = sub_270C68628();

  return v0;
}

id sub_270C66B98()
{
  sub_270C66C54();
  sub_270C6596C(0, &qword_2808546A8, 0x277CCAE60);
  v0 = sub_270C685F8();

  return v0;
}

id sub_270C66C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for comAppleSystemEnvironmentsRain();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_270C66C54()
{
  v0 = sub_270C685C8();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280854688 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v4 = off_2808546E0;
    v44 = *(off_2808546E0 + 2);
    if (!v44)
    {
      return MEMORY[0x277D84F98];
    }

    v5 = objc_opt_self();
    v6 = 0;
    v42 = v4 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v43 = v5;
    v40 = (v45 + 8);
    v41 = v45 + 16;
    v7 = MEMORY[0x277D84F98];
    v39 = v4;
    while (v6 < v4[2])
    {
      (*(v45 + 16))(v3, &v42[*(v45 + 72) * v6], v0);

      v12 = sub_270C685A8();
      v14 = v13;
      v15 = [v43 valueWithPointer_];
      if (!v15)
      {
        v27 = sub_270C679F0(v12, v14);
        v29 = v28;

        if (v29)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v7;
          v31 = v7;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_270C67F74();
            v31 = v46;
          }

          v32 = *(*(v31 + 48) + 16 * v27 + 8);

          sub_270C67D0C(v27, v31);

          (*v40)(v3, v0);
          v7 = v31;
        }

        else
        {
          (*v40)(v3, v0);
        }

        goto LABEL_6;
      }

      v16 = v15;
      v17 = v0;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v7;
      v19 = sub_270C679F0(v12, v14);
      v21 = v7[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_27;
      }

      v25 = v20;
      if (v7[3] < v24)
      {
        sub_270C67A68(v24, v18);
        v19 = sub_270C679F0(v12, v14);
        if ((v25 & 1) != (v26 & 1))
        {
          result = sub_270C68678();
          __break(1u);
          return result;
        }

LABEL_18:
        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_4;
      }

      if (v18)
      {
        goto LABEL_18;
      }

      v37 = v19;
      sub_270C67F74();
      v19 = v37;
      if ((v25 & 1) == 0)
      {
LABEL_19:
        v33 = v46;
        v46[(v19 >> 6) + 8] |= 1 << v19;
        v34 = (v33[6] + 16 * v19);
        *v34 = v12;
        v34[1] = v14;
        *(v33[7] + 8 * v19) = v16;

        v0 = v17;
        (*v40)(v3, v17);
        v35 = v33[2];
        v23 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v33[2] = v36;
        v7 = v33;
        goto LABEL_5;
      }

LABEL_4:
      v8 = v19;

      v9 = v46;
      v10 = v46[7];
      v11 = *(v10 + 8 * v8);
      *(v10 + 8 * v8) = v16;

      v0 = v17;
      (*v40)(v3, v17);
      v7 = v9;
LABEL_5:
      v4 = v39;
LABEL_6:
      if (v44 == ++v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t type metadata accessor for comAppleVfxPrivateRemoteEdition()
{
  result = qword_280854710;
  if (!qword_280854710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_270C6710C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  sub_270C67220(&v10 - v2);
  v4 = sub_270C68528();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_270C68508();
    (*(v5 + 8))(v3, v4);
    v7 = v8;
  }

  return v7;
}

uint64_t sub_270C67220@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for comAppleVfxPrivateRemoteEdition();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_270C68608();
  v5 = sub_270C68608();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_270C68518();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_270C68528();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *sub_270C67358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_270C68528();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_270C67220(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_270C659B4(v4);
    v13 = sub_270C68578();
    sub_270C65A1C();
    swift_allocError();
    *v14 = 0xD000000000000027;
    v14[1] = 0x8000000270C69430;
    (*(*(v13 - 1) + 104))(v14, *MEMORY[0x277D78108], v13);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 16))(v10, v12, v5);
    v13 = objc_allocWithZone(sub_270C685E8());
    v15 = sub_270C68588();
    if (!v0)
    {
      v13 = v15;
    }

    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_270C675F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808546C0, &unk_270C68A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_270C68528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270C67220(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_270C659B4(v5);
    v11 = sub_270C68578();
    sub_270C65A1C();
    swift_allocError();
    *v12 = 0xD000000000000027;
    v12[1] = 0x8000000270C69430;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D78108], v11);
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = [objc_allocWithZone(sub_270C685E8()) init];
    v14 = sub_270C685D8();
    if (!v0)
    {
      v1 = v14;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v1;
}

id sub_270C6785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();

  return v4;
}

id sub_270C678E4()
{
  sub_270C6596C(0, &qword_2808546B8, 0x277CCABB0);
  v0 = sub_270C68628();

  return v0;
}

id sub_270C67934()
{
  sub_270C680E0();
  sub_270C6596C(0, &qword_2808546A8, 0x277CCAE60);
  v0 = sub_270C685F8();

  return v0;
}

id sub_270C679AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for comAppleVfxPrivateRemoteEdition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_270C679F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_270C68688();
  sub_270C68618();
  v6 = sub_270C68698();

  return sub_270C67EBC(a1, a2, v6);
}

uint64_t sub_270C67A68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280854720, &unk_270C68B10);
  v39 = a2;
  result = sub_270C68658();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_270C68688();
      sub_270C68618();
      result = sub_270C68698();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_270C67D0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_270C68638() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_270C68688();

      sub_270C68618();
      v13 = sub_270C68698();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_270C67EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_270C68668())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_270C67F74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280854720, &unk_270C68B10);
  v2 = *v0;
  v3 = sub_270C68648();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_270C680E0()
{
  v0 = sub_270C685C8();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280854690 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v4 = off_280854708;
    v44 = *(off_280854708 + 2);
    if (!v44)
    {
      return MEMORY[0x277D84F98];
    }

    v5 = objc_opt_self();
    v6 = 0;
    v42 = v4 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v43 = v5;
    v40 = (v45 + 8);
    v41 = v45 + 16;
    v7 = MEMORY[0x277D84F98];
    v39 = v4;
    while (v6 < v4[2])
    {
      (*(v45 + 16))(v3, &v42[*(v45 + 72) * v6], v0);

      v12 = sub_270C685A8();
      v14 = v13;
      v15 = [v43 valueWithPointer_];
      if (!v15)
      {
        v27 = sub_270C679F0(v12, v14);
        v29 = v28;

        if (v29)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v7;
          v31 = v7;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_270C67F74();
            v31 = v46;
          }

          v32 = *(*(v31 + 48) + 16 * v27 + 8);

          sub_270C67D0C(v27, v31);

          (*v40)(v3, v0);
          v7 = v31;
        }

        else
        {
          (*v40)(v3, v0);
        }

        goto LABEL_6;
      }

      v16 = v15;
      v17 = v0;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v7;
      v19 = sub_270C679F0(v12, v14);
      v21 = v7[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_27;
      }

      v25 = v20;
      if (v7[3] < v24)
      {
        sub_270C67A68(v24, v18);
        v19 = sub_270C679F0(v12, v14);
        if ((v25 & 1) != (v26 & 1))
        {
          sub_270C68678();
          __break(1u);
          return sub_270C684F8();
        }

LABEL_18:
        if ((v25 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_4;
      }

      if (v18)
      {
        goto LABEL_18;
      }

      v37 = v19;
      sub_270C67F74();
      v19 = v37;
      if ((v25 & 1) == 0)
      {
LABEL_19:
        v33 = v46;
        v46[(v19 >> 6) + 8] |= 1 << v19;
        v34 = (v33[6] + 16 * v19);
        *v34 = v12;
        v34[1] = v14;
        *(v33[7] + 8 * v19) = v16;

        v0 = v17;
        (*v40)(v3, v17);
        v35 = v33[2];
        v23 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v33[2] = v36;
        v7 = v33;
        goto LABEL_5;
      }

LABEL_4:
      v8 = v19;

      v9 = v46;
      v10 = v46[7];
      v11 = *(v10 + 8 * v8);
      *(v10 + 8 * v8) = v16;

      v0 = v17;
      (*v40)(v3, v17);
      v7 = v9;
LABEL_5:
      v4 = v39;
LABEL_6:
      if (v44 == ++v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}