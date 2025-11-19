double sub_1AF382000(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = vadd_s32(v2, vdup_lane_s32(v2, 1));
  v3.i8[0] = *(*(a1 + 32) + v3.i32[0]);
  *v3.i32 = v3.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(v3, 0).u64[0];
  return result;
}

double sub_1AF382058(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a4.i64[0] = *(a1 + 8);
  *a2.f32 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(*a2.f32, vrndm_f32(*a2.f32)), vdup_n_s32(0x3F7FFFFFu)))), *a4.f32));
  *a3.f32 = vdup_lane_s32(*a2.f32, 1);
  *a2.f32 = vadd_s32(*a2.f32, *a3.f32);
  a2.i8[0] = *(*(a1 + 32) + a2.i32[0]);
  a3.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v9 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v10 = vmlaq_f32(a8, a6, a3);
  v11 = vmlaq_f32(v9, a2, v10);
  a6.i32[0] = 1064027478;
  v10.i32[0] = -1083773218;
  v12 = vmlaq_f32(v10, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v13 = vdupq_lane_s32(*&vmlaq_f32(v11, a5, vmlaq_f32(v12, a2, vmlaq_f32(a9, a6, a3))), 0);
  v14 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v14.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v14), v13, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF382150(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = (*(a1 + 32) + vadd_s32(v2, vdup_lane_s32(v2, 1)).i32[0]);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF3821C0(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = (*(a1 + 32) + vadd_s32(v2, vdup_lane_s32(v2, 1)).i32[0]);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6));
  v11 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6));
  v12 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v12.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v12), vmlaq_f32(v10, vmulq_f32(v8, v8), v11), v9).u64[0];
  return result;
}

double sub_1AF3822E4(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = (*(a1 + 32) + vadd_s32(v2, vdup_lane_s32(v2, 1)).i32[0]);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v6, v6, 0xCuLL).u64[0];
  return result;
}

double sub_1AF38235C(uint64_t a1, float32x2_t a2)
{
  v2 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vminnm_f32(vsub_f32(a2, vrndm_f32(a2)), vdup_n_s32(0x3F7FFFFFu)))), *(a1 + 8)));
  v3 = (*(a1 + 32) + vadd_s32(v2, vdup_lane_s32(v2, 1)).i32[0]);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6)), vmulq_f32(v8, v8), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6)));
  v11 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v11.i32[3] = 0;
  v12 = vbslq_s8(vcltzq_s32(v11), v10, v9);
  v12.i32[3] = v7.i32[3];
  v13 = vrev64q_s32(v12);
  *&result = vextq_s8(v13, v13, 0xCuLL).u64[0];
  return result;
}

double sub_1AF382488(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = vadd_s32(v4, vdup_lane_s32(v4, 1));
  v6 = *(*(a1 + 32) + v5.i32[0]);
  v7 = (v6 >> 10) & 0x1F;
  if (v7 == 31)
  {
    v8 = 2139095040;
  }

  else
  {
    v8 = (v6 >> 10) & 0x1F;
  }

  if (v7)
  {
    v9 = v7 == 31;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = (v7 << 23) + 939524096;
  }

  v5.i32[0] = v10 | (v6 << 16) & 0x80000000 | (v6 >> 7) & 7 | (8 * (v6 & 0x3FF)) & 0x1FFF | ((v6 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(v5, 0).u64[0];
  return result;
}

double sub_1AF38252C(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = (*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
  *&result = vld1q_dup_f32(v5).u64[0];
  return result;
}

double sub_1AF382588(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = *(*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v7 = vandq_s8(vmovl_s16(v5), v6);
  v8 = vshll_n_u16(v5, 0xDuLL);
  v9 = vorrq_s8(vandq_s8(v8, vdupq_n_s32(0xF800000u)), vorrq_s8(v7, vandq_s8(v8, vdupq_n_s32(0x7FE000u))));
  v7.i64[0] = 0x3800000038000000;
  v7.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v9, v7).u64[0];
  return result;
}

__n128 sub_1AF382618(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  return *(*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
}

double sub_1AF382670(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = vadd_s32(v4, vdup_lane_s32(v4, 1));
  v5.i8[0] = *(*(a1 + 32) + v5.i32[0]);
  *v5.i32 = v5.u32[0] * 0.0039216;
  *&result = vdupq_lane_s32(v5, 0).u64[0];
  return result;
}

double sub_1AF3826DC(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  *a4.f32 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, *a2.f32);
  *a2.f32 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(*a4.f32, vrndm_f32(*a4.f32)), vdup_n_s32(0x3F7FFFFFu)));
  a4.i64[0] = *(a1 + 8);
  *a2.f32 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(*a2.f32, *a2.f32))), *a4.f32));
  *a3.f32 = vdup_lane_s32(*a2.f32, 1);
  *a2.f32 = vadd_s32(*a2.f32, *a3.f32);
  a2.i8[0] = *(*(a1 + 32) + a2.i32[0]);
  a3.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v9 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v10 = vmlaq_f32(a8, a6, a3);
  v11 = vmlaq_f32(v9, a2, v10);
  a6.i32[0] = 1064027478;
  v10.i32[0] = -1083773218;
  v12 = vmlaq_f32(v10, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v13 = vdupq_lane_s32(*&vmlaq_f32(v11, a5, vmlaq_f32(v12, a2, vmlaq_f32(a9, a6, a3))), 0);
  v14 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v14.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v14), v13, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF3827E8(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = (*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
  v6 = vld1q_dup_f32(v5);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF38286C(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = (*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
  v6 = vld1q_dup_f32(v5);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7));
  v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
  v12 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8));
  v13 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8));
  v14 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
  v14.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v14), vmlaq_f32(v12, vmulq_f32(v10, v10), v13), v11).u64[0];
  return result;
}

double sub_1AF3829A4(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = (*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
  v6 = vld1q_dup_f32(v5);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double sub_1AF382A30(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, a2);
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = vmul_s32(*(a1 + 16), vmin_s32(vcvt_s32_f32(vmul_f32(*a1, vadd_f32(v3, v3))), *(a1 + 8)));
  v5 = (*(a1 + 32) + vadd_s32(v4, vdup_lane_s32(v4, 1)).i32[0]);
  v6 = vld1q_dup_f32(v5);
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7));
  v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
  v10 = vmulq_f32(v9, v9);
  v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
  v12 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8)), vmulq_f32(v10, v10), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8)));
  v13 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
  v13.i32[3] = 0;
  v14 = vbslq_s8(vcltzq_s32(v13), v12, v11);
  v14.i32[3] = v9.i32[3];
  v15 = vrev64q_s32(v14);
  *&result = vextq_s8(v15, v15, 0xCuLL).u64[0];
  return result;
}

double sub_1AF382B70(float32x2_t *a1, float32x2_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, double a7, float32x4_t a8)
{
  v8 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v13 = vorr_s8(vcge_f32(v8, _D1), vcltz_f32(v8));
  if ((vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v14 = a1[1];
  v15 = vmul_f32(*a1, v8);
  v16 = vmin_s32(vcvt_s32_f32(v15), v14);
  v17 = a1[4];
  *a5.f32 = a1[2];
  *a6.f32 = vand_s8(*a5.f32, vcgt_s32(v14, v16));
  v18 = vmul_s32(*a5.f32, v16);
  *a4.f32 = vdup_lane_s32(v18, 1);
  v19 = vadd_s32(v18, *a4.f32).i32[0];
  v20 = *(*&v17 + v19);
  v21 = (v20 >> 10) & 0x1F;
  if (v21 == 31)
  {
    v22 = 2139095040;
  }

  else
  {
    v22 = (v20 >> 10) & 0x1F;
  }

  if (v21)
  {
    _ZF = v21 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v24 = v22;
  }

  else
  {
    v24 = (v21 << 23) + 939524096;
  }

  a4.i32[0] = v24 | (v20 << 16) & 0x80000000 | (v20 >> 7) & 7 | (8 * (v20 & 0x3FF)) & 0x1FFF | ((v20 & 0x3FF) << 13);
  v25 = vdupq_lane_s32(*a4.f32, 0);
  v26 = v19 + a6.i32[0];
  v27 = v19 + a6.i32[1];
  v28 = v27 + a6.i32[0];
  v29 = *(*&v17 + v26);
  v30 = (v29 >> 10) & 0x1F;
  if (v30 == 31)
  {
    v31 = 2139095040;
  }

  else
  {
    v31 = (v29 >> 10) & 0x1F;
  }

  if (v30)
  {
    v32 = v30 == 31;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = (v30 << 23) + 939524096;
  }

  a5.i32[0] = v33 | (v29 << 16) & 0x80000000 | (v29 >> 7) & 7 | (8 * (v29 & 0x3FF)) & 0x1FFF | ((v29 & 0x3FF) << 13);
  v34 = *(*&v17 + v27);
  v35 = (v34 >> 10) & 0x1F;
  if (v35 == 31)
  {
    v36 = 2139095040;
  }

  else
  {
    v36 = (v34 >> 10) & 0x1F;
  }

  if (v35)
  {
    v37 = v35 == 31;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = (v35 << 23) + 939524096;
  }

  a6.i32[0] = v38 | (v34 << 16) & 0x80000000 | (v34 >> 7) & 7 | (8 * (v34 & 0x3FF)) & 0x1FFF | ((v34 & 0x3FF) << 13);
  v39 = vdupq_lane_s32(*a6.f32, 0);
  v40 = *(*&v17 + v28);
  v41 = (v40 >> 10) & 0x1F;
  if (v41 == 31)
  {
    v42 = 2139095040;
  }

  else
  {
    v42 = (v40 >> 10) & 0x1F;
  }

  if (v41)
  {
    v43 = v41 == 31;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    v42 = (v41 << 23) + 939524096;
  }

  a8.i32[0] = v42 | (v40 << 16) & 0x80000000 | (v40 >> 7) & 7 | (8 * (v40 & 0x3FF)) & 0x1FFF | ((v40 & 0x3FF) << 13);
  v44 = vsub_f32(v15, vrnd_f32(v15));
  v45 = vdupq_lane_s32(v44, 0);
  v46 = vmlaq_n_f32(v25, v45, vsubq_f32(a5, a4).f32[0]);
  *&result = vmlaq_lane_f32(v46, vmlaq_n_f32(vsubq_f32(v39, v46), v45, vsubq_f32(a8, a6).f32[0]), v44, 1).u64[0];
  return result;
}

double sub_1AF382D30(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vcgt_s32(v9, v11);
  v15 = vmul_s32(v13, v11);
  v16 = vdup_lane_s32(v15, 1);
  v17 = vadd_s32(v15, v16).i32[0];
  v16.i32[0] = *(*&v12 + v17);
  v18 = vand_s8(v13, v14);
  v19 = v17 + v18.i32[0];
  v20 = v17 + v18.i32[1];
  v13.i32[0] = *(*&v12 + v20);
  v21 = *(*&v12 + v20 + v18.i32[0]);
  v22 = vsub_f32(v10, vrnd_f32(v10));
  *v18.i32 = *(*&v12 + v19) - *v16.i32;
  v23 = vdupq_lane_s32(v18, 0);
  v24 = vmlaq_n_f32(vdupq_lane_s32(v16, 0), v23, v22.f32[0]);
  v23.f32[0] = v21 - *v13.i32;
  *&result = vmlaq_lane_f32(v24, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v13, 0), v24), vdupq_lane_s32(*v23.f32, 0), v22.f32[0]), v22, 1).u64[0];
  return result;
}

double sub_1AF382DEC(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vand_s8(v13, vcgt_s32(v9, v11));
  v15 = vmul_s32(v13, v11);
  v16 = vadd_s32(v15, vdup_lane_s32(v15, 1)).i32[0];
  v17 = *(*&v12 + v16);
  v18.i64[0] = 0x8000000080000000;
  v18.i64[1] = 0x8000000080000000;
  v19 = vandq_s8(vmovl_s16(v17), v18);
  v20 = vshll_n_u16(v17, 0xDuLL);
  v21 = vdupq_n_s32(0x7FE000u);
  v22 = vdupq_n_s32(0xF800000u);
  v23 = vorrq_s8(vandq_s8(v20, v22), vorrq_s8(v19, vandq_s8(v20, v21)));
  v19.i64[0] = 0x3800000038000000;
  v19.i64[1] = 0x3800000038000000;
  v24 = vaddq_s32(v23, v19);
  v25 = v16 + v14.i32[0];
  v26 = v16 + v14.i32[1];
  v27 = v26 + v14.i32[0];
  v28 = *(*&v12 + v25);
  v29 = vandq_s8(vmovl_s16(v28), v18);
  v30 = vshll_n_u16(v28, 0xDuLL);
  v31 = vaddq_s32(vorrq_s8(vandq_s8(v30, v22), vorrq_s8(v29, vandq_s8(v30, v21))), v19);
  v29.i64[0] = *(*&v12 + v26);
  v32 = vandq_s8(vmovl_s16(*v29.i8), v18);
  v33 = vshll_n_u16(*v29.i8, 0xDuLL);
  v34 = vaddq_s32(vorrq_s8(vandq_s8(v33, v22), vorrq_s8(v32, vandq_s8(v33, v21))), v19);
  v32.i64[0] = *(*&v12 + v27);
  v35 = vandq_s8(vmovl_s16(*v32.i8), v18);
  v36 = vshll_n_u16(*v32.i8, 0xDuLL);
  v37 = vsub_f32(v10, vrnd_f32(v10));
  v38 = vmlaq_n_f32(v24, vsubq_f32(v31, v24), v37.f32[0]);
  *&result = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(v34, v38), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v36, v22), vorrq_s8(v35, vandq_s8(v36, v21))), v19), v34), v37.f32[0]), v37, 1).u64[0];
  return result;
}

double sub_1AF382F30(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vand_s8(v13, vcgt_s32(v9, v11));
  v15 = vmul_s32(v13, v11);
  v16 = vadd_s32(v15, vdup_lane_s32(v15, 1)).i32[0];
  v17 = vsub_f32(v10, vrnd_f32(v10));
  v18 = vmlaq_n_f32(*(*&v12 + v16), vsubq_f32(*(*&v12 + v16 + v14.i32[0]), *(*&v12 + v16)), v17.f32[0]);
  *&result = vmlaq_lane_f32(v18, vmlaq_n_f32(vsubq_f32(*(*&v12 + v16 + v14.i32[1]), v18), vsubq_f32(*(*&v12 + v16 + v14.i32[1] + v14.i32[0]), *(*&v12 + v16 + v14.i32[1])), v17.f32[0]), v17, 1).u64[0];
  return result;
}

double sub_1AF382FDC(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v9 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v15 = vorr_s8(vcge_f32(v9, _D1), vcltz_f32(v9));
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v16 = a1[1];
  v17 = vmul_f32(*a1, v9);
  v18 = vmin_s32(vcvt_s32_f32(v17), v16);
  v19 = a1[4];
  v20 = a1[2];
  v21 = vcgt_s32(v16, v18);
  v22 = vmul_s32(v20, v18);
  v23 = vdup_lane_s32(v22, 1);
  v22.i32[0] = vadd_s32(v22, v23).u32[0];
  v24 = v22.i32[0];
  v25 = vand_s8(v20, v21);
  v22.i8[0] = *(*&v19 + v22.i32[0]);
  *v23.i32 = v22.u32[0] * 0.0039216;
  v26 = v24 + v25.i32[0];
  v27 = v24 + v25.i32[1];
  v28 = v27 + v25.i32[0];
  v25.i8[0] = *(*&v19 + v26);
  LOBYTE(a7) = *(*&v19 + v27);
  *&a7 = LODWORD(a7) * 0.0039216;
  LOBYTE(a9) = *(*&v19 + v28);
  v29 = vsub_f32(v17, vrnd_f32(v17));
  *v25.i32 = -(*v23.i32 - (v25.u32[0] * 0.0039216));
  v30 = vdupq_lane_s32(v25, 0);
  v31 = vmlaq_n_f32(vdupq_lane_s32(v23, 0), v30, v29.f32[0]);
  v30.f32[0] = -(*&a7 - (LODWORD(a9) * 0.0039216));
  *&result = vmlaq_lane_f32(v31, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*&a7, 0), v31), vdupq_lane_s32(*v30.f32, 0), v29.f32[0]), v29, 1).u64[0];
  return result;
}

double sub_1AF3830B8(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v9 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v15 = vorr_s8(vcge_f32(v9, _D1), vcltz_f32(v9));
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v16 = a1[1];
  v17 = vmul_f32(*a1, v9);
  v18 = vmin_s32(vcvt_s32_f32(v17), v16);
  v19 = a1[4];
  v20 = a1[2];
  v21 = vand_s8(v20, vcgt_s32(v16, v18));
  v22 = vmul_s32(v20, v18);
  v22.i32[0] = vadd_s32(v22, vdup_lane_s32(v22, 1)).u32[0];
  v23 = v22.i32[0];
  v22.i8[0] = *(*&v19 + v22.i32[0]);
  *&a6 = v22.u32[0] * 0.0039216;
  v24 = v23 + v21.i32[0];
  v25 = v23 + v21.i32[1];
  v26 = v25 + v21.i32[0];
  v21.i8[0] = *(*&v19 + v24);
  LOBYTE(a7) = *(*&v19 + v25);
  *&a7 = LODWORD(a7) * 0.0039216;
  LOBYTE(a9) = *(*&v19 + v26);
  v27 = vsub_f32(v17, vrnd_f32(v17));
  *v21.i32 = -(*&a6 - (v21.u32[0] * 0.0039216));
  v28 = vdupq_lane_s32(v21, 0);
  v29 = vmlaq_n_f32(vdupq_lane_s32(*&a6, 0), v28, v27.f32[0]);
  v28.f32[0] = -(*&a7 - (LODWORD(a9) * 0.0039216));
  v30 = vmlaq_lane_f32(v29, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*&a7, 0), v29), vdupq_lane_s32(*v28.f32, 0), v27.f32[0]), v27, 1);
  v31 = vmulq_f32(v30, v30);
  v32 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v30), v31, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v30)), vmulq_f32(v31, v31), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v30), v31, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v30)));
  v33 = vcgeq_f32(v30, vdupq_n_s32(0x3D25AEE6u));
  v33.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v33), v32, vmulq_f32(v30, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF383248(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vcgt_s32(v9, v11);
  v15 = vmul_s32(v13, v11);
  v16 = vand_s8(v13, v14);
  v17 = vadd_s32(v15, vdup_lane_s32(v15, 1)).i32[0];
  v18 = (*&v12 + v17);
  v19 = vld1q_dup_f32(v18);
  v20.i64[0] = 0xFF000000FFLL;
  v20.i64[1] = 0xFF000000FFLL;
  v21 = vdupq_n_s32(0x3B808081u);
  v22 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v19, xmmword_1AFE42AA0), v20)), v21);
  v23 = v17 + v16.i32[0];
  v24 = v17 + v16.i32[1];
  v25 = v24 + v16.i32[0];
  v26 = (*&v12 + v23);
  v27 = vld1q_dup_f32(v26);
  v28 = (*&v12 + v24);
  v29 = vld1q_dup_f32(v28);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v20)), v21);
  v31 = (*&v12 + v25);
  v32 = vld1q_dup_f32(v31);
  v33 = vsub_f32(v10, vrnd_f32(v10));
  v34 = vmlaq_n_f32(v22, vmlaq_f32(vnegq_f32(v22), v21, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v20))), v33.f32[0]);
  *&result = vmlaq_lane_f32(v34, vmlaq_n_f32(vsubq_f32(v30, v34), vmlaq_f32(vnegq_f32(v30), v21, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v20))), v33.f32[0]), v33, 1).u64[0];
  return result;
}

double sub_1AF38335C(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vand_s8(v13, vcgt_s32(v9, v11));
  v15 = vmul_s32(v13, v11);
  v16 = vadd_s32(v15, vdup_lane_s32(v15, 1)).i32[0];
  v17 = (*&v12 + v16);
  v18 = vld1q_dup_f32(v17);
  v19.i64[0] = 0xFF000000FFLL;
  v19.i64[1] = 0xFF000000FFLL;
  v20 = vdupq_n_s32(0x3B808081u);
  v21 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v18, xmmword_1AFE42AA0), v19)), v20);
  v22 = v16 + v14.i32[0];
  v23 = v16 + v14.i32[1];
  v24 = v23 + v14.i32[0];
  v25 = (*&v12 + v22);
  v26 = vld1q_dup_f32(v25);
  v27 = (*&v12 + v23);
  v28 = vld1q_dup_f32(v27);
  v29 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v28, xmmword_1AFE42AA0), v19)), v20);
  v30 = (*&v12 + v24);
  v31 = vld1q_dup_f32(v30);
  v32 = vsub_f32(v10, vrnd_f32(v10));
  v33 = vmlaq_n_f32(v21, vmlaq_f32(vnegq_f32(v21), v20, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v19))), v32.f32[0]);
  v34 = vmlaq_lane_f32(v33, vmlaq_n_f32(vsubq_f32(v29, v33), vmlaq_f32(vnegq_f32(v29), v20, vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v19))), v32.f32[0]), v32, 1);
  v35 = vmulq_f32(v34, v34);
  v36 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v34), v35, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v34)), vmulq_f32(v35, v35), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v34), v35, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v34)));
  v37 = vcgeq_f32(v34, vdupq_n_s32(0x3D25AEE6u));
  v37.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v37), v36, vmulq_f32(v34, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF383524(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vand_s8(v13, vcgt_s32(v9, v11));
  v15 = vmul_s32(v13, v11);
  v16 = vadd_s32(v15, vdup_lane_s32(v15, 1)).i32[0];
  v17 = (*&v12 + v16);
  v18 = vld1q_dup_f32(v17);
  v19.i64[0] = 0xFF000000FFLL;
  v19.i64[1] = 0xFF000000FFLL;
  v20 = vdupq_n_s32(0x3B808081u);
  v21 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v18, xmmword_1AFE42AA0), v19)), v20);
  v22 = v16 + v14.i32[0];
  v23 = v16 + v14.i32[1];
  v24 = v23 + v14.i32[0];
  v25 = (*&v12 + v22);
  v26 = vld1q_dup_f32(v25);
  v27 = (*&v12 + v23);
  v28 = vld1q_dup_f32(v27);
  v29 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v28, xmmword_1AFE42AA0), v19)), v20);
  v30 = (*&v12 + v24);
  v31 = vld1q_dup_f32(v30);
  v32 = vsub_f32(v10, vrnd_f32(v10));
  v33 = vmlaq_n_f32(v21, vmlaq_f32(vnegq_f32(v21), v20, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v19))), v32.f32[0]);
  v34 = vrev64q_s32(vmlaq_lane_f32(v33, vmlaq_n_f32(vsubq_f32(v29, v33), vmlaq_f32(vnegq_f32(v29), v20, vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v19))), v32.f32[0]), v32, 1));
  *&result = vextq_s8(v34, v34, 0xCuLL).u64[0];
  return result;
}

double sub_1AF383640(float32x2_t *a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, a1[6]);
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vorr_s8(vcge_f32(v2, _D1), vcltz_f32(v2));
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    return 0.0;
  }

  v9 = a1[1];
  v10 = vmul_f32(*a1, v2);
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = a1[4];
  v13 = a1[2];
  v14 = vcgt_s32(v9, v11);
  v15 = vmul_s32(v13, v11);
  v16 = vadd_s32(v15, vdup_lane_s32(v15, 1)).i32[0];
  v17 = (*&v12 + v16);
  v18 = vld1q_dup_f32(v17);
  v19 = vand_s8(v13, v14);
  v20.i64[0] = 0xFF000000FFLL;
  v20.i64[1] = 0xFF000000FFLL;
  v21 = vdupq_n_s32(0x3B808081u);
  v22 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v18, xmmword_1AFE42AA0), v20)), v21);
  v23 = v16 + v19.i32[0];
  v24 = v16 + v19.i32[1];
  v25 = v24 + v19.i32[0];
  v26 = (*&v12 + v23);
  v27 = vld1q_dup_f32(v26);
  v28 = (*&v12 + v24);
  v29 = vld1q_dup_f32(v28);
  v30 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v20)), v21);
  v31 = (*&v12 + v25);
  v32 = vld1q_dup_f32(v31);
  v33 = vsub_f32(v10, vrnd_f32(v10));
  v34 = vmlaq_n_f32(v22, vmlaq_f32(vnegq_f32(v22), v21, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v20))), v33.f32[0]);
  v35 = vmlaq_lane_f32(v34, vmlaq_n_f32(vsubq_f32(v30, v34), vmlaq_f32(vnegq_f32(v30), v21, vcvtq_f32_u32(vandq_s8(vshlq_u32(v32, xmmword_1AFE42AA0), v20))), v33.f32[0]), v33, 1);
  v36 = vmulq_f32(v35, v35);
  v37 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v35), v36, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v35)), vmulq_f32(v36, v36), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v35), v36, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v35)));
  v38 = vcgeq_f32(v35, vdupq_n_s32(0x3D25AEE6u));
  v38.i32[3] = 0;
  v39 = vbslq_s8(vcltzq_s32(v38), v37, vmulq_f32(v35, vdupq_n_s32(0x3D9E8391u)));
  v39.i32[3] = v35.i32[3];
  v40 = vrev64q_s32(v39);
  *&result = vextq_s8(v40, v40, 0xCuLL).u64[0];
  return result;
}

double sub_1AF383810(float32x2_t *a1, float32x2_t a2, double a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  __asm { FMOV            V1.2S, #1.0 }

  v12 = a1[1];
  v13 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v14 = vmin_s32(vcvt_s32_f32(v13), v12);
  v15 = a1[4];
  v16 = a1[2];
  *a4.f32 = vand_s8(v16, vcgt_s32(v12, v14));
  v17 = vmul_s32(v16, v14);
  v18 = vadd_s32(v17, vdup_lane_s32(v17, 1)).u32[0];
  v19 = *(*&v15 + v18);
  v20 = (v19 >> 10) & 0x1F;
  if (v20 == 31)
  {
    v21 = 2139095040;
  }

  else
  {
    v21 = (v19 >> 10) & 0x1F;
  }

  if (v20)
  {
    _ZF = v20 == 31;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v23 = v21;
  }

  else
  {
    v23 = (v20 << 23) + 939524096;
  }

  v24 = v18 + a4.i32[1];
  v25 = v24 + a4.i32[0];
  v26 = *(*&v15 + v18 + a4.i32[0]);
  v27 = (v26 >> 10) & 0x1F;
  if (v27 == 31)
  {
    v28 = 2139095040;
  }

  else
  {
    v28 = (v26 >> 10) & 0x1F;
  }

  if (v27)
  {
    v29 = v27 == 31;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = (v27 << 23) + 939524096;
  }

  v31 = *(*&v15 + v24);
  v32 = (v31 >> 10) & 0x1F;
  if (v32 == 31)
  {
    v33 = 2139095040;
  }

  else
  {
    v33 = (v31 >> 10) & 0x1F;
  }

  if (v32)
  {
    v34 = v32 == 31;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = (v32 << 23) + 939524096;
  }

  v36 = *(*&v15 + v25);
  v37 = (v36 >> 10) & 0x1F;
  if (v37 == 31)
  {
    v38 = 2139095040;
  }

  else
  {
    v38 = (v36 >> 10) & 0x1F;
  }

  if (v37)
  {
    v39 = v37 == 31;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v38 = (v37 << 23) + 939524096;
  }

  a4.i32[0] = v35 | (v31 << 16) & 0x80000000 | (v31 >> 7) & 7 | (8 * (v31 & 0x3FF)) & 0x1FFF | ((v31 & 0x3FF) << 13);
  a6.i32[0] = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
  a7.i32[0] = v23 | (v19 << 16) & 0x80000000 | (v19 >> 7) & 7 | (8 * (v19 & 0x3FF)) & 0x1FFF | ((v19 & 0x3FF) << 13);
  a8.i32[0] = v38 | (v36 << 16) & 0x80000000 | (v36 >> 7) & 7 | (8 * (v36 & 0x3FF)) & 0x1FFF | ((v36 & 0x3FF) << 13);
  v40 = vsub_f32(v13, vrnd_f32(v13));
  v41 = vdupq_lane_s32(v40, 0);
  v42 = vmlaq_n_f32(vdupq_lane_s32(*a7.f32, 0), v41, vsubq_f32(a6, a7).f32[0]);
  *&result = vmlaq_lane_f32(v42, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v42), v41, vsubq_f32(a8, a4).f32[0]), v40, 1).u64[0];
  return result;
}

double sub_1AF3839BC(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6)
{
  __asm { FMOV            V1.2S, #1.0 }

  v11 = a1[1];
  v12 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v13 = vmin_s32(vcvt_s32_f32(v12), v11);
  v14 = a1[4];
  v15 = a1[2];
  v16 = vand_s8(v15, vcgt_s32(v11, v13));
  v17 = vmul_s32(v15, v13);
  v18 = vdup_lane_s32(v17, 1);
  v19 = vadd_s32(v17, v18).i32[0];
  v18.i32[0] = *(*&v14 + v19);
  v20 = v19 + v16.i32[0];
  v21 = v19 + v16.i32[1];
  LODWORD(a6) = *(*&v14 + v21);
  v22 = *(*&v14 + v21 + v16.i32[0]);
  v23 = vsub_f32(v12, vrnd_f32(v12));
  *v16.i32 = *(*&v14 + v20) - *v18.i32;
  v24 = vdupq_lane_s32(v16, 0);
  v25 = vmlaq_n_f32(vdupq_lane_s32(v18, 0), v24, v23.f32[0]);
  v24.f32[0] = v22 - *&a6;
  *&result = vmlaq_lane_f32(v25, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*&a6, 0), v25), vdupq_lane_s32(*v24.f32, 0), v23.f32[0]), v23, 1).u64[0];
  return result;
}

double sub_1AF383A64(float32x2_t *a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = a1[1];
  v8 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v9 = vmin_s32(vcvt_s32_f32(v8), v7);
  v10 = a1[4];
  v11 = a1[2];
  v12 = vcgt_s32(v7, v9);
  v13 = vmul_s32(v11, v9);
  v14 = vadd_s32(v13, vdup_lane_s32(v13, 1)).i32[0];
  v15 = vand_s8(v11, v12);
  v16 = *(*&v10 + v14);
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = vandq_s8(vmovl_s16(v16), v17);
  v19 = vshll_n_u16(v16, 0xDuLL);
  v20 = vdupq_n_s32(0x7FE000u);
  v21 = vdupq_n_s32(0xF800000u);
  v22 = vorrq_s8(vandq_s8(v19, v21), vorrq_s8(v18, vandq_s8(v19, v20)));
  v18.i64[0] = 0x3800000038000000;
  v18.i64[1] = 0x3800000038000000;
  v23 = vaddq_s32(v22, v18);
  v24 = v14 + v15.i32[0];
  v25 = v14 + v15.i32[1];
  v26 = v25 + v15.i32[0];
  v27 = *(*&v10 + v24);
  v28 = vandq_s8(vmovl_s16(v27), v17);
  v29 = vshll_n_u16(v27, 0xDuLL);
  v30 = vaddq_s32(vorrq_s8(vandq_s8(v29, v21), vorrq_s8(v28, vandq_s8(v29, v20))), v18);
  v28.i64[0] = *(*&v10 + v25);
  v31 = vandq_s8(vmovl_s16(*v28.i8), v17);
  v32 = vshll_n_u16(*v28.i8, 0xDuLL);
  v33 = vorrq_s8(vandq_s8(v32, v21), vorrq_s8(v31, vandq_s8(v32, v20)));
  v31.i64[0] = *(*&v10 + v26);
  v34 = vaddq_s32(v33, v18);
  v35 = vandq_s8(vmovl_s16(*v31.i8), v17);
  v36 = vshll_n_u16(*v31.i8, 0xDuLL);
  v37 = vsub_f32(v8, vrnd_f32(v8));
  v38 = vmlaq_n_f32(v23, vsubq_f32(v30, v23), v37.f32[0]);
  *&result = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(v34, v38), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v36, v21), vorrq_s8(v35, vandq_s8(v36, v20))), v18), v34), v37.f32[0]), v37, 1).u64[0];
  return result;
}

double sub_1AF383B94(float32x2_t *a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = a1[1];
  v8 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v9 = vmin_s32(vcvt_s32_f32(v8), v7);
  v10 = a1[4];
  v11 = a1[2];
  v12 = vand_s8(v11, vcgt_s32(v7, v9));
  v13 = vmul_s32(v11, v9);
  v14 = vadd_s32(v13, vdup_lane_s32(v13, 1)).i32[0];
  v15 = vsub_f32(v8, vrnd_f32(v8));
  v16 = vmlaq_n_f32(*(*&v10 + v14), vsubq_f32(*(*&v10 + v14 + v12.i32[0]), *(*&v10 + v14)), v15.f32[0]);
  *&result = vmlaq_lane_f32(v16, vmlaq_n_f32(vsubq_f32(*(*&v10 + v14 + v12.i32[1]), v16), vsubq_f32(*(*&v10 + v14 + v12.i32[1] + v12.i32[0]), *(*&v10 + v14 + v12.i32[1])), v15.f32[0]), v15, 1).u64[0];
  return result;
}

double sub_1AF383C2C(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  __asm { FMOV            V1.2S, #1.0 }

  v14 = a1[1];
  v15 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v16 = vmin_s32(vcvt_s32_f32(v15), v14);
  v17 = a1[4];
  v18 = a1[2];
  v19 = vcgt_s32(v14, v16);
  v20 = vmul_s32(v18, v16);
  v21 = vdup_lane_s32(v20, 1);
  v20.i32[0] = vadd_s32(v20, v21).u32[0];
  v22 = v20.i32[0];
  v23 = vand_s8(v18, v19);
  v20.i8[0] = *(*&v17 + v20.i32[0]);
  *v21.i32 = v20.u32[0] * 0.0039216;
  v24 = v23.i32[0];
  v25 = v22 + v23.i32[0];
  v26 = v22 + v23.i32[1];
  v23.i8[0] = *(*&v17 + v25);
  LOBYTE(a7) = *(*&v17 + v26);
  *&a7 = LODWORD(a7) * 0.0039216;
  LOBYTE(a9) = *(*&v17 + v26 + v24);
  v27 = vsub_f32(v15, vrnd_f32(v15));
  *v23.i32 = -(*v21.i32 - (v23.u32[0] * 0.0039216));
  v28 = vdupq_lane_s32(v23, 0);
  v29 = vmlaq_n_f32(vdupq_lane_s32(v21, 0), v28, v27.f32[0]);
  v28.f32[0] = -(*&a7 - (LODWORD(a9) * 0.0039216));
  *&result = vmlaq_lane_f32(v29, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*&a7, 0), v29), vdupq_lane_s32(*v28.f32, 0), v27.f32[0]), v27, 1).u64[0];
  return result;
}

double sub_1AF383CF4(float32x2_t *a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  __asm { FMOV            V1.2S, #1.0 }

  v14 = a1[1];
  v15 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v16 = vmin_s32(vcvt_s32_f32(v15), v14);
  v17 = a1[4];
  v18 = a1[2];
  v19 = vcgt_s32(v14, v16);
  v20 = vmul_s32(v18, v16);
  v21 = vdup_lane_s32(v20, 1);
  v20.i32[0] = vadd_s32(v20, v21).u32[0];
  v22 = v20.i32[0];
  v23 = vand_s8(v18, v19);
  v20.i8[0] = *(*&v17 + v20.i32[0]);
  *v21.i32 = v20.u32[0] * 0.0039216;
  v24 = v22 + v23.i32[0];
  v25 = v22 + v23.i32[1];
  v26 = v25 + v23.i32[0];
  v23.i8[0] = *(*&v17 + v24);
  LOBYTE(a7) = *(*&v17 + v25);
  *&a7 = LODWORD(a7) * 0.0039216;
  LOBYTE(a9) = *(*&v17 + v26);
  v27 = vsub_f32(v15, vrnd_f32(v15));
  *v23.i32 = -(*v21.i32 - (v23.u32[0] * 0.0039216));
  v28 = vdupq_lane_s32(v23, 0);
  v29 = vmlaq_n_f32(vdupq_lane_s32(v21, 0), v28, v27.f32[0]);
  v28.f32[0] = -(*&a7 - (LODWORD(a9) * 0.0039216));
  v30 = vmlaq_lane_f32(v29, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*&a7, 0), v29), vdupq_lane_s32(*v28.f32, 0), v27.f32[0]), v27, 1);
  v31 = vmulq_f32(v30, v30);
  v32 = vmulq_f32(v31, v31);
  v33 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v30), v31, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v30));
  v34 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v30), v31, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v30));
  v35 = vcgeq_f32(v30, vdupq_n_s32(0x3D25AEE6u));
  v35.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v35), vmlaq_f32(v33, v32, v34), vmulq_f32(v30, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF383E70(float32x2_t *a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = a1[1];
  v8 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v9 = vmin_s32(vcvt_s32_f32(v8), v7);
  v10 = a1[4];
  v11 = a1[2];
  v12 = vcgt_s32(v7, v9);
  v13 = vmul_s32(v11, v9);
  v14 = vadd_s32(v13, vdup_lane_s32(v13, 1)).i32[0];
  v15 = (*&v10 + v14);
  v16 = vld1q_dup_f32(v15);
  v17 = vand_s8(v11, v12);
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v18)), v19);
  v21 = v14 + v17.i32[0];
  v22 = v14 + v17.i32[1];
  v23 = v22 + v17.i32[0];
  v24 = (*&v10 + v21);
  v25 = vld1q_dup_f32(v24);
  v26 = (*&v10 + v22);
  v27 = vld1q_dup_f32(v26);
  v28 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v18)), v19);
  v29 = (*&v10 + v23);
  v30 = vld1q_dup_f32(v29);
  v31 = vsub_f32(v8, vrnd_f32(v8));
  v32 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v18))), v31.f32[0]);
  *&result = vmlaq_lane_f32(v32, vmlaq_n_f32(vsubq_f32(v28, v32), vmlaq_f32(vnegq_f32(v28), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v18))), v31.f32[0]), v31, 1).u64[0];
  return result;
}

double sub_1AF383F70(float32x2_t *a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = a1[1];
  v8 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v9 = vmin_s32(vcvt_s32_f32(v8), v7);
  v10 = a1[4];
  v11 = a1[2];
  v12 = vcgt_s32(v7, v9);
  v13 = vmul_s32(v11, v9);
  v14 = vand_s8(v11, v12);
  v15 = vadd_s32(v13, vdup_lane_s32(v13, 1)).i32[0];
  v16 = (*&v10 + v15);
  v17 = vld1q_dup_f32(v16);
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v18)), v19);
  v21 = v15 + v14.i32[0];
  v22 = v15 + v14.i32[1];
  v23 = v22 + v14.i32[0];
  v24 = (*&v10 + v21);
  v25 = vld1q_dup_f32(v24);
  v26 = (*&v10 + v22);
  v27 = vld1q_dup_f32(v26);
  v28 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v18)), v19);
  v29 = (*&v10 + v23);
  v30 = vld1q_dup_f32(v29);
  v31 = vsub_f32(v8, vrnd_f32(v8));
  v32 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v18))), v31.f32[0]);
  v33 = vmlaq_lane_f32(v32, vmlaq_n_f32(vsubq_f32(v28, v32), vmlaq_f32(vnegq_f32(v28), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v30, xmmword_1AFE42AA0), v18))), v31.f32[0]), v31, 1);
  v34 = vmulq_f32(v33, v33);
  v35 = vmulq_f32(v34, v34);
  v36 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v33), v34, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v33));
  v37 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v33), v34, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v33));
  v38 = vcgeq_f32(v33, vdupq_n_s32(0x3D25AEE6u));
  v38.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v38), vmlaq_f32(v36, v35, v37), vmulq_f32(v33, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF384124(float32x2_t *a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = a1[1];
  v8 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v9 = vmin_s32(vcvt_s32_f32(v8), v7);
  v10 = a1[4];
  v11 = a1[2];
  v12 = vcgt_s32(v7, v9);
  v13 = vmul_s32(v11, v9);
  v14 = vadd_s32(v13, vdup_lane_s32(v13, 1)).i32[0];
  v15 = vand_s8(v11, v12);
  v16 = (*&v10 + v14);
  v17 = vld1q_dup_f32(v16);
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vdupq_n_s32(0x3B808081u);
  v20 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v18)), v19);
  v21 = v15.i32[0];
  v22 = v14 + v15.i32[0];
  v23 = v14 + v15.i32[1];
  v24 = (*&v10 + v22);
  v25 = vld1q_dup_f32(v24);
  v26 = v23 + v21;
  v27 = (*&v10 + v23);
  v28 = vld1q_dup_f32(v27);
  v29 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v28, xmmword_1AFE42AA0), v18)), v19);
  v30 = (*&v10 + v26);
  v31 = vld1q_dup_f32(v30);
  v32 = vsub_f32(v8, vrnd_f32(v8));
  v33 = vmlaq_n_f32(v20, vmlaq_f32(vnegq_f32(v20), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v18))), v32.f32[0]);
  v34 = vrev64q_s32(vmlaq_lane_f32(v33, vmlaq_n_f32(vsubq_f32(v29, v33), vmlaq_f32(vnegq_f32(v29), v19, vcvtq_f32_u32(vandq_s8(vshlq_u32(v31, xmmword_1AFE42AA0), v18))), v32.f32[0]), v32, 1));
  *&result = vextq_s8(v34, v34, 0xCuLL).u64[0];
  return result;
}

double sub_1AF38422C(float32x2_t *a1, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v7 = a1[1];
  v8 = vmul_f32(*a1, vminnm_f32(vmaxnm_f32(vsub_f32(a2, a1[6]), 0), _D1));
  v9 = vmin_s32(vcvt_s32_f32(v8), v7);
  v10 = a1[4];
  v11 = a1[2];
  v12 = vand_s8(v11, vcgt_s32(v7, v9));
  v13 = vmul_s32(v11, v9);
  v14 = vadd_s32(v13, vdup_lane_s32(v13, 1)).i32[0];
  v15 = (*&v10 + v14);
  v16 = vld1q_dup_f32(v15);
  v17.i64[0] = 0xFF000000FFLL;
  v17.i64[1] = 0xFF000000FFLL;
  v18 = vdupq_n_s32(0x3B808081u);
  v19 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v17)), v18);
  v20 = v14 + v12.i32[0];
  v21 = v14 + v12.i32[1];
  v22 = v21 + v12.i32[0];
  v23 = (*&v10 + v20);
  v24 = vld1q_dup_f32(v23);
  v25 = (*&v10 + v21);
  v26 = vld1q_dup_f32(v25);
  v27 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v17)), v18);
  v28 = (*&v10 + v22);
  v29 = vld1q_dup_f32(v28);
  v30 = vsub_f32(v8, vrnd_f32(v8));
  v31 = vmlaq_n_f32(v19, vmlaq_f32(vnegq_f32(v19), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v24, xmmword_1AFE42AA0), v17))), v30.f32[0]);
  v32 = vmlaq_lane_f32(v31, vmlaq_n_f32(vsubq_f32(v27, v31), vmlaq_f32(vnegq_f32(v27), v18, vcvtq_f32_u32(vandq_s8(vshlq_u32(v29, xmmword_1AFE42AA0), v17))), v30.f32[0]), v30, 1);
  v33 = vmulq_f32(v32, v32);
  v34 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v32), v33, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v32)), vmulq_f32(v33, v33), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v32), v33, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v32)));
  v35 = vcgeq_f32(v32, vdupq_n_s32(0x3D25AEE6u));
  v35.i32[3] = 0;
  v36 = vbslq_s8(vcltzq_s32(v35), v34, vmulq_f32(v32, vdupq_n_s32(0x3D9E8391u)));
  v36.i32[3] = v32.i32[3];
  v37 = vrev64q_s32(v36);
  *&result = vextq_s8(v37, v37, 0xCuLL).u64[0];
  return result;
}

double sub_1AF3843E8(uint64_t a1, float32x2_t a2, double a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vsub_f32(a2, *(a1 + 48));
  v9 = *(a1 + 8);
  v10 = vmul_f32(*a1, vminnm_f32(vsub_f32(v8, vrndm_f32(v8)), vdup_n_s32(0x3F7FFFFFu)));
  v11 = vmin_s32(vcvt_s32_f32(v10), v9);
  v12 = *(a1 + 32);
  a6.i64[0] = *(a1 + 16);
  *a4.f32 = vbsl_s8(vcgt_s32(v9, v11), *a6.f32, *(a1 + 24));
  v13 = vmul_s32(*a6.f32, v11);
  v14 = vadd_s32(v13, vdup_lane_s32(v13, 1)).u32[0];
  v15 = *(v12 + v14);
  v16 = (v15 >> 10) & 0x1F;
  if (v16 == 31)
  {
    v17 = 2139095040;
  }

  else
  {
    v17 = (v15 >> 10) & 0x1F;
  }

  if (v16)
  {
    v18 = v16 == 31;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = (v16 << 23) + 939524096;
  }

  v20 = v14 + a4.i32[1];
  v21 = v20 + a4.i32[0];
  v22 = *(v12 + v14 + a4.i32[0]);
  v23 = (v22 >> 10) & 0x1F;
  if (v23 == 31)
  {
    v24 = 2139095040;
  }

  else
  {
    v24 = (v22 >> 10) & 0x1F;
  }

  if (v23)
  {
    v25 = v23 == 31;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = (v23 << 23) + 939524096;
  }

  v27 = *(v12 + v20);
  v28 = (v27 >> 10) & 0x1F;
  if (v28 == 31)
  {
    v29 = 2139095040;
  }

  else
  {
    v29 = (v27 >> 10) & 0x1F;
  }

  if (v28)
  {
    v30 = v28 == 31;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = (v28 << 23) + 939524096;
  }

  v32 = *(v12 + v21);
  v33 = (v32 >> 10) & 0x1F;
  if (v33 == 31)
  {
    v34 = 2139095040;
  }

  else
  {
    v34 = (v32 >> 10) & 0x1F;
  }

  if (v33)
  {
    v35 = v33 == 31;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v34 = (v33 << 23) + 939524096;
  }

  a4.i32[0] = v31 | (v27 << 16) & 0x80000000 | (v27 >> 7) & 7 | (8 * (v27 & 0x3FF)) & 0x1FFF | ((v27 & 0x3FF) << 13);
  a6.i32[0] = v26 | (v22 << 16) & 0x80000000 | (v22 >> 7) & 7 | (8 * (v22 & 0x3FF)) & 0x1FFF | ((v22 & 0x3FF) << 13);
  a7.i32[0] = v19 | (v15 << 16) & 0x80000000 | (v15 >> 7) & 7 | (8 * (v15 & 0x3FF)) & 0x1FFF | ((v15 & 0x3FF) << 13);
  a8.i32[0] = v34 | (v32 << 16) & 0x80000000 | (v32 >> 7) & 7 | (8 * (v32 & 0x3FF)) & 0x1FFF | ((v32 & 0x3FF) << 13);
  v36 = vsub_f32(v10, vrnd_f32(v10));
  v37 = vdupq_lane_s32(v36, 0);
  v38 = vmlaq_n_f32(vdupq_lane_s32(*a7.f32, 0), v37, vsubq_f32(a6, a7).f32[0]);
  *&result = vmlaq_lane_f32(v38, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v38), v37, vsubq_f32(a8, a4).f32[0]), v36, 1).u64[0];
  return result;
}

double sub_1AF384598(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vbsl_s8(vcgt_s32(v3, v5), v7, *(a1 + 24));
  v9 = vmul_s32(v7, v5);
  v10 = vdup_lane_s32(v9, 1);
  v11 = vadd_s32(v9, v10).i32[0];
  v10.i32[0] = *(v6 + v11);
  v12 = v11 + v8.i32[0];
  v13 = v11 + v8.i32[1];
  v7.i32[0] = *(v6 + v13);
  v14 = *(v6 + v13 + v8.i32[0]);
  v15 = vsub_f32(v4, vrnd_f32(v4));
  *v8.i32 = *(v6 + v12) - *v10.i32;
  v16 = vdupq_lane_s32(v8, 0);
  v17 = vmlaq_n_f32(vdupq_lane_s32(v10, 0), v16, v15.f32[0]);
  v16.f32[0] = v14 - *v7.i32;
  *&result = vmlaq_lane_f32(v17, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v7, 0), v17), vdupq_lane_s32(*v16.f32, 0), v15.f32[0]), v15, 1).u64[0];
  return result;
}

double sub_1AF384644(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vcgt_s32(v3, v5);
  v9 = vmul_s32(v7, v5);
  v10 = vadd_s32(v9, vdup_lane_s32(v9, 1)).i32[0];
  v11 = vbsl_s8(v8, v7, *(a1 + 24));
  v12 = *(v6 + v10);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14 = vandq_s8(vmovl_s16(v12), v13);
  v15 = vshll_n_u16(v12, 0xDuLL);
  v16 = vdupq_n_s32(0x7FE000u);
  v17 = vdupq_n_s32(0xF800000u);
  v18 = vorrq_s8(vandq_s8(v15, v17), vorrq_s8(v14, vandq_s8(v15, v16)));
  v14.i64[0] = 0x3800000038000000;
  v14.i64[1] = 0x3800000038000000;
  v19 = vaddq_s32(v18, v14);
  v20 = v10 + v11.i32[0];
  v21 = v10 + v11.i32[1];
  v22 = v21 + v11.i32[0];
  v23 = *(v6 + v20);
  v24 = vandq_s8(vmovl_s16(v23), v13);
  v25 = vshll_n_u16(v23, 0xDuLL);
  v26 = vaddq_s32(vorrq_s8(vandq_s8(v25, v17), vorrq_s8(v24, vandq_s8(v25, v16))), v14);
  v24.i64[0] = *(v6 + v21);
  v27 = vandq_s8(vmovl_s16(*v24.i8), v13);
  v28 = vshll_n_u16(*v24.i8, 0xDuLL);
  v29 = vorrq_s8(vandq_s8(v28, v17), vorrq_s8(v27, vandq_s8(v28, v16)));
  v27.i64[0] = *(v6 + v22);
  v30 = vaddq_s32(v29, v14);
  v31 = vandq_s8(vmovl_s16(*v27.i8), v13);
  v32 = vshll_n_u16(*v27.i8, 0xDuLL);
  v33 = vsub_f32(v4, vrnd_f32(v4));
  v34 = vmlaq_n_f32(v19, vsubq_f32(v26, v19), v33.f32[0]);
  *&result = vmlaq_lane_f32(v34, vmlaq_n_f32(vsubq_f32(v30, v34), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v32, v17), vorrq_s8(v31, vandq_s8(v32, v16))), v14), v30), v33.f32[0]), v33, 1).u64[0];
  return result;
}

double sub_1AF384778(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vbsl_s8(vcgt_s32(v3, v5), v7, *(a1 + 24));
  v9 = vmul_s32(v7, v5);
  v10 = vadd_s32(v9, vdup_lane_s32(v9, 1)).i32[0];
  v11 = vsub_f32(v4, vrnd_f32(v4));
  v12 = vmlaq_n_f32(*(v6 + v10), vsubq_f32(*(v6 + v10 + v8.i32[0]), *(v6 + v10)), v11.f32[0]);
  *&result = vmlaq_lane_f32(v12, vmlaq_n_f32(vsubq_f32(*(v6 + v10 + v8.i32[1]), v12), vsubq_f32(*(v6 + v10 + v8.i32[1] + v8.i32[0]), *(v6 + v10 + v8.i32[1])), v11.f32[0]), v11, 1).u64[0];
  return result;
}

double sub_1AF384814(uint64_t a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v9 = vsub_f32(a2, *(a1 + 48));
  v10 = *(a1 + 8);
  v11 = vmul_f32(*a1, vminnm_f32(vsub_f32(v9, vrndm_f32(v9)), vdup_n_s32(0x3F7FFFFFu)));
  v12 = vmin_s32(vcvt_s32_f32(v11), v10);
  v13 = *(a1 + 32);
  v14 = *(a1 + 16);
  v15 = vcgt_s32(v10, v12);
  v16 = vmul_s32(v14, v12);
  v17 = vdup_lane_s32(v16, 1);
  v16.i32[0] = vadd_s32(v16, v17).u32[0];
  v18 = v16.i32[0];
  v19 = vbsl_s8(v15, v14, *(a1 + 24));
  v16.i8[0] = *(v13 + v16.i32[0]);
  *v14.i32 = v16.u32[0] * 0.0039216;
  v20 = v19.i32[0];
  v21 = v18 + v19.i32[0];
  v22 = v18 + v19.i32[1];
  v19.i8[0] = *(v13 + v21);
  v17.i8[0] = *(v13 + v22);
  *v17.i32 = v17.u32[0] * 0.0039216;
  LOBYTE(a9) = *(v13 + v22 + v20);
  v23 = vsub_f32(v11, vrnd_f32(v11));
  *v19.i32 = -(*v14.i32 - (v19.u32[0] * 0.0039216));
  v24 = vdupq_lane_s32(v19, 0);
  v25 = vmlaq_n_f32(vdupq_lane_s32(v14, 0), v24, v23.f32[0]);
  v24.f32[0] = -(*v17.i32 - (LODWORD(a9) * 0.0039216));
  *&result = vmlaq_lane_f32(v25, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v17, 0), v25), vdupq_lane_s32(*v24.f32, 0), v23.f32[0]), v23, 1).u64[0];
  return result;
}

double sub_1AF3848E0(uint64_t a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v9 = vsub_f32(a2, *(a1 + 48));
  v10 = *(a1 + 8);
  v11 = vmul_f32(*a1, vminnm_f32(vsub_f32(v9, vrndm_f32(v9)), vdup_n_s32(0x3F7FFFFFu)));
  v12 = vmin_s32(vcvt_s32_f32(v11), v10);
  v13 = *(a1 + 32);
  v14 = *(a1 + 16);
  v15 = vcgt_s32(v10, v12);
  v16 = vmul_s32(v14, v12);
  v17 = vdup_lane_s32(v16, 1);
  v16.i32[0] = vadd_s32(v16, v17).u32[0];
  v18 = v16.i32[0];
  v19 = vbsl_s8(v15, v14, *(a1 + 24));
  v16.i8[0] = *(v13 + v16.i32[0]);
  *v14.i32 = v16.u32[0] * 0.0039216;
  v20 = v18 + v19.i32[0];
  v21 = v18 + v19.i32[1];
  v22 = v21 + v19.i32[0];
  v19.i8[0] = *(v13 + v20);
  v17.i8[0] = *(v13 + v21);
  *v17.i32 = v17.u32[0] * 0.0039216;
  LOBYTE(a9) = *(v13 + v22);
  v23 = vsub_f32(v11, vrnd_f32(v11));
  *v19.i32 = -(*v14.i32 - (v19.u32[0] * 0.0039216));
  v24 = vdupq_lane_s32(v19, 0);
  v25 = vmlaq_n_f32(vdupq_lane_s32(v14, 0), v24, v23.f32[0]);
  v24.f32[0] = -(*v17.i32 - (LODWORD(a9) * 0.0039216));
  v26 = vmlaq_lane_f32(v25, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v17, 0), v25), vdupq_lane_s32(*v24.f32, 0), v23.f32[0]), v23, 1);
  v27 = vmulq_f32(v26, v26);
  v28 = vmulq_f32(v27, v27);
  v29 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v26), v27, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v26));
  v30 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v26), v27, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v26));
  v31 = vcgeq_f32(v26, vdupq_n_s32(0x3D25AEE6u));
  v31.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v31), vmlaq_f32(v29, v28, v30), vmulq_f32(v26, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF384A60(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vcgt_s32(v3, v5);
  v9 = vmul_s32(v7, v5);
  v10 = vadd_s32(v9, vdup_lane_s32(v9, 1)).i32[0];
  v11 = (v6 + v10);
  v12 = vld1q_dup_f32(v11);
  v13 = vbsl_s8(v8, v7, *(a1 + 24));
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vdupq_n_s32(0x3B808081u);
  v16 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v14)), v15);
  v17 = v10 + v13.i32[0];
  v18 = v10 + v13.i32[1];
  v19 = v18 + v13.i32[0];
  v20 = (v6 + v17);
  v21 = vld1q_dup_f32(v20);
  v22 = (v6 + v18);
  v23 = vld1q_dup_f32(v22);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v14)), v15);
  v25 = (v6 + v19);
  v26 = vld1q_dup_f32(v25);
  v27 = vsub_f32(v4, vrnd_f32(v4));
  v28 = vmlaq_n_f32(v16, vmlaq_f32(vnegq_f32(v16), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v14))), v27.f32[0]);
  *&result = vmlaq_lane_f32(v28, vmlaq_n_f32(vsubq_f32(v24, v28), vmlaq_f32(vnegq_f32(v24), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v14))), v27.f32[0]), v27, 1).u64[0];
  return result;
}

double sub_1AF384B64(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vcgt_s32(v3, v5);
  v9 = vmul_s32(v7, v5);
  v10 = vbsl_s8(v8, v7, *(a1 + 24));
  v11 = vadd_s32(v9, vdup_lane_s32(v9, 1)).i32[0];
  v12 = (v6 + v11);
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vdupq_n_s32(0x3B808081u);
  v16 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v13, xmmword_1AFE42AA0), v14)), v15);
  v17 = v11 + v10.i32[0];
  v18 = v11 + v10.i32[1];
  v19 = v18 + v10.i32[0];
  v20 = (v6 + v17);
  v21 = vld1q_dup_f32(v20);
  v22 = (v6 + v18);
  v23 = vld1q_dup_f32(v22);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v14)), v15);
  v25 = (v6 + v19);
  v26 = vld1q_dup_f32(v25);
  v27 = vsub_f32(v4, vrnd_f32(v4));
  v28 = vmlaq_n_f32(v16, vmlaq_f32(vnegq_f32(v16), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v14))), v27.f32[0]);
  v29 = vmlaq_lane_f32(v28, vmlaq_n_f32(vsubq_f32(v24, v28), vmlaq_f32(vnegq_f32(v24), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v14))), v27.f32[0]), v27, 1);
  v30 = vmulq_f32(v29, v29);
  v31 = vmulq_f32(v30, v30);
  v32 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v29), v30, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v29));
  v33 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v29), v30, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v29));
  v34 = vcgeq_f32(v29, vdupq_n_s32(0x3D25AEE6u));
  v34.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v34), vmlaq_f32(v32, v31, v33), vmulq_f32(v29, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF384D1C(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vcgt_s32(v3, v5);
  v9 = vmul_s32(v7, v5);
  v10 = vadd_s32(v9, vdup_lane_s32(v9, 1)).i32[0];
  v11 = vbsl_s8(v8, v7, *(a1 + 24));
  v12 = (v6 + v10);
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vdupq_n_s32(0x3B808081u);
  v16 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v13, xmmword_1AFE42AA0), v14)), v15);
  v17 = v11.i32[0];
  v18 = v10 + v11.i32[0];
  v19 = v10 + v11.i32[1];
  v20 = (v6 + v18);
  v21 = vld1q_dup_f32(v20);
  v22 = v19 + v17;
  v23 = (v6 + v19);
  v24 = vld1q_dup_f32(v23);
  v25 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v24, xmmword_1AFE42AA0), v14)), v15);
  v26 = (v6 + v22);
  v27 = vld1q_dup_f32(v26);
  v28 = vsub_f32(v4, vrnd_f32(v4));
  v29 = vmlaq_n_f32(v16, vmlaq_f32(vnegq_f32(v16), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v14))), v28.f32[0]);
  v30 = vrev64q_s32(vmlaq_lane_f32(v29, vmlaq_n_f32(vsubq_f32(v25, v29), vmlaq_f32(vnegq_f32(v25), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v14))), v28.f32[0]), v28, 1));
  *&result = vextq_s8(v30, v30, 0xCuLL).u64[0];
  return result;
}

double sub_1AF384E28(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 48));
  v3 = *(a1 + 8);
  v4 = vmul_f32(*a1, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v5 = vmin_s32(vcvt_s32_f32(v4), v3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = vbsl_s8(vcgt_s32(v3, v5), v7, *(a1 + 24));
  v9 = vmul_s32(v7, v5);
  v10 = vadd_s32(v9, vdup_lane_s32(v9, 1)).i32[0];
  v11 = (v6 + v10);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vdupq_n_s32(0x3B808081u);
  v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
  v16 = v10 + v8.i32[0];
  v17 = v10 + v8.i32[1];
  v18 = v17 + v8.i32[0];
  v19 = (v6 + v16);
  v20 = vld1q_dup_f32(v19);
  v21 = (v6 + v17);
  v22 = vld1q_dup_f32(v21);
  v23 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v13)), v14);
  v24 = (v6 + v18);
  v25 = vld1q_dup_f32(v24);
  v26 = vsub_f32(v4, vrnd_f32(v4));
  v27 = vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v13))), v26.f32[0]);
  v28 = vmlaq_lane_f32(v27, vmlaq_n_f32(vsubq_f32(v23, v27), vmlaq_f32(vnegq_f32(v23), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v13))), v26.f32[0]), v26, 1);
  v29 = vmulq_f32(v28, v28);
  v30 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v28), v29, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v28)), vmulq_f32(v29, v29), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v28), v29, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v28)));
  v31 = vcgeq_f32(v28, vdupq_n_s32(0x3D25AEE6u));
  v31.i32[3] = 0;
  v32 = vbslq_s8(vcltzq_s32(v31), v30, vmulq_f32(v28, vdupq_n_s32(0x3D9E8391u)));
  v32.i32[3] = v28.i32[3];
  v33 = vrev64q_s32(v32);
  *&result = vextq_s8(v33, v33, 0xCuLL).u64[0];
  return result;
}

double sub_1AF384FE8(uint64_t a1, float32x2_t a2, double a3, float32x4_t a4, double a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v9 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v8, vrndm_f32(v8)), vdup_n_s32(0x3F7FFFFFu)));
  v10 = *(a1 + 8);
  v11 = vmul_f32(v9, vadd_f32(*a1, *a1));
  v12 = vmin_s32(vcvt_s32_f32(v11), v10);
  v13 = *(a1 + 32);
  a6.i64[0] = *(a1 + 16);
  *a4.f32 = vbsl_s8(vcgt_s32(v10, v12), *a6.f32, *(a1 + 24));
  v14 = vmul_s32(*a6.f32, v12);
  v15 = vadd_s32(v14, vdup_lane_s32(v14, 1)).u32[0];
  v16 = *(v13 + v15);
  v17 = (v16 >> 10) & 0x1F;
  if (v17 == 31)
  {
    v18 = 2139095040;
  }

  else
  {
    v18 = (v16 >> 10) & 0x1F;
  }

  if (v17)
  {
    v19 = v17 == 31;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = (v17 << 23) + 939524096;
  }

  v21 = v15 + a4.i32[1];
  v22 = v21 + a4.i32[0];
  v23 = *(v13 + v15 + a4.i32[0]);
  v24 = (v23 >> 10) & 0x1F;
  if (v24 == 31)
  {
    v25 = 2139095040;
  }

  else
  {
    v25 = (v23 >> 10) & 0x1F;
  }

  if (v24)
  {
    v26 = v24 == 31;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = (v24 << 23) + 939524096;
  }

  v28 = *(v13 + v21);
  v29 = (v28 >> 10) & 0x1F;
  if (v29 == 31)
  {
    v30 = 2139095040;
  }

  else
  {
    v30 = (v28 >> 10) & 0x1F;
  }

  if (v29)
  {
    v31 = v29 == 31;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = (v29 << 23) + 939524096;
  }

  v33 = *(v13 + v22);
  v34 = (v33 >> 10) & 0x1F;
  if (v34 == 31)
  {
    v35 = 2139095040;
  }

  else
  {
    v35 = (v33 >> 10) & 0x1F;
  }

  if (v34)
  {
    v36 = v34 == 31;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    v35 = (v34 << 23) + 939524096;
  }

  a4.i32[0] = v32 | (v28 << 16) & 0x80000000 | (v28 >> 7) & 7 | (8 * (v28 & 0x3FF)) & 0x1FFF | ((v28 & 0x3FF) << 13);
  a6.i32[0] = v27 | (v23 << 16) & 0x80000000 | (v23 >> 7) & 7 | (8 * (v23 & 0x3FF)) & 0x1FFF | ((v23 & 0x3FF) << 13);
  a7.i32[0] = v20 | (v16 << 16) & 0x80000000 | (v16 >> 7) & 7 | (8 * (v16 & 0x3FF)) & 0x1FFF | ((v16 & 0x3FF) << 13);
  a8.i32[0] = v35 | (v33 << 16) & 0x80000000 | (v33 >> 7) & 7 | (8 * (v33 & 0x3FF)) & 0x1FFF | ((v33 & 0x3FF) << 13);
  v37 = vsub_f32(v11, vrnd_f32(v11));
  v38 = vdupq_lane_s32(v37, 0);
  v39 = vmlaq_n_f32(vdupq_lane_s32(*a7.f32, 0), v38, vsubq_f32(a6, a7).f32[0]);
  *&result = vmlaq_lane_f32(v39, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(*a4.f32, 0), v39), v38, vsubq_f32(a8, a4).f32[0]), v37, 1).u64[0];
  return result;
}

double sub_1AF3851AC(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vbsl_s8(vcgt_s32(v4, v6), v8, *(a1 + 24));
  v10 = vmul_s32(v8, v6);
  v11 = vdup_lane_s32(v10, 1);
  v12 = vadd_s32(v10, v11).i32[0];
  v11.i32[0] = *(v7 + v12);
  v13 = v12 + v9.i32[0];
  v14 = v12 + v9.i32[1];
  v8.i32[0] = *(v7 + v14);
  v15 = *(v7 + v14 + v9.i32[0]);
  v16 = vsub_f32(v5, vrnd_f32(v5));
  *v9.i32 = *(v7 + v13) - *v11.i32;
  v17 = vdupq_lane_s32(v9, 0);
  v18 = vmlaq_n_f32(vdupq_lane_s32(v11, 0), v17, v16.f32[0]);
  v17.f32[0] = v15 - *v8.i32;
  *&result = vmlaq_lane_f32(v18, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v8, 0), v18), vdupq_lane_s32(*v17.f32, 0), v16.f32[0]), v16, 1).u64[0];
  return result;
}

double sub_1AF38526C(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vcgt_s32(v4, v6);
  v10 = vmul_s32(v8, v6);
  v11 = vadd_s32(v10, vdup_lane_s32(v10, 1)).i32[0];
  v12 = vbsl_s8(v9, v8, *(a1 + 24));
  v13 = *(v7 + v11);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15 = vandq_s8(vmovl_s16(v13), v14);
  v16 = vshll_n_u16(v13, 0xDuLL);
  v17 = vdupq_n_s32(0x7FE000u);
  v18 = vdupq_n_s32(0xF800000u);
  v19 = vorrq_s8(vandq_s8(v16, v18), vorrq_s8(v15, vandq_s8(v16, v17)));
  v15.i64[0] = 0x3800000038000000;
  v15.i64[1] = 0x3800000038000000;
  v20 = vaddq_s32(v19, v15);
  v21 = v11 + v12.i32[0];
  v22 = v11 + v12.i32[1];
  v23 = v22 + v12.i32[0];
  v24 = *(v7 + v21);
  v25 = vandq_s8(vmovl_s16(v24), v14);
  v26 = vshll_n_u16(v24, 0xDuLL);
  v27 = vaddq_s32(vorrq_s8(vandq_s8(v26, v18), vorrq_s8(v25, vandq_s8(v26, v17))), v15);
  v25.i64[0] = *(v7 + v22);
  v28 = vandq_s8(vmovl_s16(*v25.i8), v14);
  v29 = vshll_n_u16(*v25.i8, 0xDuLL);
  v30 = vorrq_s8(vandq_s8(v29, v18), vorrq_s8(v28, vandq_s8(v29, v17)));
  v28.i64[0] = *(v7 + v23);
  v31 = vaddq_s32(v30, v15);
  v32 = vandq_s8(vmovl_s16(*v28.i8), v14);
  v33 = vshll_n_u16(*v28.i8, 0xDuLL);
  v34 = vsub_f32(v5, vrnd_f32(v5));
  v35 = vmlaq_n_f32(v20, vsubq_f32(v27, v20), v34.f32[0]);
  *&result = vmlaq_lane_f32(v35, vmlaq_n_f32(vsubq_f32(v31, v35), vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v33, v18), vorrq_s8(v32, vandq_s8(v33, v17))), v15), v31), v34.f32[0]), v34, 1).u64[0];
  return result;
}

double sub_1AF3853B4(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vbsl_s8(vcgt_s32(v4, v6), v8, *(a1 + 24));
  v10 = vmul_s32(v8, v6);
  v11 = vadd_s32(v10, vdup_lane_s32(v10, 1)).i32[0];
  v12 = vsub_f32(v5, vrnd_f32(v5));
  v13 = vmlaq_n_f32(*(v7 + v11), vsubq_f32(*(v7 + v11 + v9.i32[0]), *(v7 + v11)), v12.f32[0]);
  *&result = vmlaq_lane_f32(v13, vmlaq_n_f32(vsubq_f32(*(v7 + v11 + v9.i32[1]), v13), vsubq_f32(*(v7 + v11 + v9.i32[1] + v9.i32[0]), *(v7 + v11 + v9.i32[1])), v12.f32[0]), v12, 1).u64[0];
  return result;
}

double sub_1AF385464(uint64_t a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v9 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v10 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v9, vrndm_f32(v9)), vdup_n_s32(0x3F7FFFFFu)));
  v11 = *(a1 + 8);
  v12 = vmul_f32(v10, vadd_f32(*a1, *a1));
  v13 = vmin_s32(vcvt_s32_f32(v12), v11);
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = vcgt_s32(v11, v13);
  v17 = vmul_s32(v15, v13);
  v18 = vdup_lane_s32(v17, 1);
  v17.i32[0] = vadd_s32(v17, v18).u32[0];
  v19 = v17.i32[0];
  v20 = vbsl_s8(v16, v15, *(a1 + 24));
  v17.i8[0] = *(v14 + v17.i32[0]);
  *v15.i32 = v17.u32[0] * 0.0039216;
  v21 = v20.i32[0];
  v22 = v19 + v20.i32[0];
  v23 = v19 + v20.i32[1];
  v20.i8[0] = *(v14 + v22);
  v18.i8[0] = *(v14 + v23);
  *v18.i32 = v18.u32[0] * 0.0039216;
  LOBYTE(a9) = *(v14 + v23 + v21);
  v24 = vsub_f32(v12, vrnd_f32(v12));
  *v20.i32 = -(*v15.i32 - (v20.u32[0] * 0.0039216));
  v25 = vdupq_lane_s32(v20, 0);
  v26 = vmlaq_n_f32(vdupq_lane_s32(v15, 0), v25, v24.f32[0]);
  v25.f32[0] = -(*v18.i32 - (LODWORD(a9) * 0.0039216));
  *&result = vmlaq_lane_f32(v26, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v18, 0), v26), vdupq_lane_s32(*v25.f32, 0), v24.f32[0]), v24, 1).u64[0];
  return result;
}

double sub_1AF385544(uint64_t a1, float32x2_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v9 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v10 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v9, vrndm_f32(v9)), vdup_n_s32(0x3F7FFFFFu)));
  v11 = *(a1 + 8);
  v12 = vmul_f32(v10, vadd_f32(*a1, *a1));
  v13 = vmin_s32(vcvt_s32_f32(v12), v11);
  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = vcgt_s32(v11, v13);
  v17 = vmul_s32(v15, v13);
  v18 = vdup_lane_s32(v17, 1);
  v17.i32[0] = vadd_s32(v17, v18).u32[0];
  v19 = v17.i32[0];
  v20 = vbsl_s8(v16, v15, *(a1 + 24));
  v17.i8[0] = *(v14 + v17.i32[0]);
  *v15.i32 = v17.u32[0] * 0.0039216;
  v21 = v19 + v20.i32[0];
  v22 = v19 + v20.i32[1];
  v23 = v22 + v20.i32[0];
  v20.i8[0] = *(v14 + v21);
  v18.i8[0] = *(v14 + v22);
  *v18.i32 = v18.u32[0] * 0.0039216;
  LOBYTE(a9) = *(v14 + v23);
  v24 = vsub_f32(v12, vrnd_f32(v12));
  *v20.i32 = -(*v15.i32 - (v20.u32[0] * 0.0039216));
  v25 = vdupq_lane_s32(v20, 0);
  v26 = vmlaq_n_f32(vdupq_lane_s32(v15, 0), v25, v24.f32[0]);
  v25.f32[0] = -(*v18.i32 - (LODWORD(a9) * 0.0039216));
  v27 = vmlaq_lane_f32(v26, vmlaq_n_f32(vsubq_f32(vdupq_lane_s32(v18, 0), v26), vdupq_lane_s32(*v25.f32, 0), v24.f32[0]), v24, 1);
  v28 = vmulq_f32(v27, v27);
  v29 = vmulq_f32(v28, v28);
  v30 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v27), v28, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v27));
  v31 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v27), v28, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v27));
  v32 = vcgeq_f32(v27, vdupq_n_s32(0x3D25AEE6u));
  v32.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v32), vmlaq_f32(v30, v29, v31), vmulq_f32(v27, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF3856D8(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vcgt_s32(v4, v6);
  v10 = vmul_s32(v8, v6);
  v11 = vadd_s32(v10, vdup_lane_s32(v10, 1)).i32[0];
  v12 = (v7 + v11);
  v13 = vld1q_dup_f32(v12);
  v14 = vbsl_s8(v9, v8, *(a1 + 24));
  v15.i64[0] = 0xFF000000FFLL;
  v15.i64[1] = 0xFF000000FFLL;
  v16 = vdupq_n_s32(0x3B808081u);
  v17 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v13, xmmword_1AFE42AA0), v15)), v16);
  v18 = v11 + v14.i32[0];
  v19 = v11 + v14.i32[1];
  v20 = v19 + v14.i32[0];
  v21 = (v7 + v18);
  v22 = vld1q_dup_f32(v21);
  v23 = (v7 + v19);
  v24 = vld1q_dup_f32(v23);
  v25 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v24, xmmword_1AFE42AA0), v15)), v16);
  v26 = (v7 + v20);
  v27 = vld1q_dup_f32(v26);
  v28 = vsub_f32(v5, vrnd_f32(v5));
  v29 = vmlaq_n_f32(v17, vmlaq_f32(vnegq_f32(v17), v16, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v15))), v28.f32[0]);
  *&result = vmlaq_lane_f32(v29, vmlaq_n_f32(vsubq_f32(v25, v29), vmlaq_f32(vnegq_f32(v25), v16, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v15))), v28.f32[0]), v28, 1).u64[0];
  return result;
}

double sub_1AF3857F0(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vcgt_s32(v4, v6);
  v10 = vmul_s32(v8, v6);
  v11 = vbsl_s8(v9, v8, *(a1 + 24));
  v12 = vadd_s32(v10, vdup_lane_s32(v10, 1)).i32[0];
  v13 = (v7 + v12);
  v14 = vld1q_dup_f32(v13);
  v15.i64[0] = 0xFF000000FFLL;
  v15.i64[1] = 0xFF000000FFLL;
  v16 = vdupq_n_s32(0x3B808081u);
  v17 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v15)), v16);
  v18 = v12 + v11.i32[0];
  v19 = v12 + v11.i32[1];
  v20 = v19 + v11.i32[0];
  v21 = (v7 + v18);
  v22 = vld1q_dup_f32(v21);
  v23 = (v7 + v19);
  v24 = vld1q_dup_f32(v23);
  v25 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v24, xmmword_1AFE42AA0), v15)), v16);
  v26 = (v7 + v20);
  v27 = vld1q_dup_f32(v26);
  v28 = vsub_f32(v5, vrnd_f32(v5));
  v29 = vmlaq_n_f32(v17, vmlaq_f32(vnegq_f32(v17), v16, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v15))), v28.f32[0]);
  v30 = vmlaq_lane_f32(v29, vmlaq_n_f32(vsubq_f32(v25, v29), vmlaq_f32(vnegq_f32(v25), v16, vcvtq_f32_u32(vandq_s8(vshlq_u32(v27, xmmword_1AFE42AA0), v15))), v28.f32[0]), v28, 1);
  v31 = vmulq_f32(v30, v30);
  v32 = vmulq_f32(v31, v31);
  v33 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v30), v31, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v30));
  v34 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v30), v31, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v30));
  v35 = vcgeq_f32(v30, vdupq_n_s32(0x3D25AEE6u));
  v35.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v35), vmlaq_f32(v33, v32, v34), vmulq_f32(v30, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF3859BC(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vcgt_s32(v4, v6);
  v10 = vmul_s32(v8, v6);
  v11 = vadd_s32(v10, vdup_lane_s32(v10, 1)).i32[0];
  v12 = vbsl_s8(v9, v8, *(a1 + 24));
  v13 = (v7 + v11);
  v14 = vld1q_dup_f32(v13);
  v15.i64[0] = 0xFF000000FFLL;
  v15.i64[1] = 0xFF000000FFLL;
  v16 = vdupq_n_s32(0x3B808081u);
  v17 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v15)), v16);
  v18 = v12.i32[0];
  v19 = v11 + v12.i32[0];
  v20 = v11 + v12.i32[1];
  v21 = (v7 + v19);
  v22 = vld1q_dup_f32(v21);
  v23 = v20 + v18;
  v24 = (v7 + v20);
  v25 = vld1q_dup_f32(v24);
  v26 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v25, xmmword_1AFE42AA0), v15)), v16);
  v27 = (v7 + v23);
  v28 = vld1q_dup_f32(v27);
  v29 = vsub_f32(v5, vrnd_f32(v5));
  v30 = vmlaq_n_f32(v17, vmlaq_f32(vnegq_f32(v17), v16, vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, xmmword_1AFE42AA0), v15))), v29.f32[0]);
  v31 = vrev64q_s32(vmlaq_lane_f32(v30, vmlaq_n_f32(vsubq_f32(v26, v30), vmlaq_f32(vnegq_f32(v26), v16, vcvtq_f32_u32(vandq_s8(vshlq_u32(v28, xmmword_1AFE42AA0), v15))), v29.f32[0]), v29, 1));
  *&result = vextq_s8(v31, v31, 0xCuLL).u64[0];
  return result;
}

double sub_1AF385ADC(uint64_t a1, float32x2_t a2)
{
  v2 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, vsub_f32(a2, *(a1 + 48)));
  v3 = vabd_f32(0x3F0000003F000000, vminnm_f32(vsub_f32(v2, vrndm_f32(v2)), vdup_n_s32(0x3F7FFFFFu)));
  v4 = *(a1 + 8);
  v5 = vmul_f32(v3, vadd_f32(*a1, *a1));
  v6 = vmin_s32(vcvt_s32_f32(v5), v4);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = vbsl_s8(vcgt_s32(v4, v6), v8, *(a1 + 24));
  v10 = vmul_s32(v8, v6);
  v11 = vadd_s32(v10, vdup_lane_s32(v10, 1)).i32[0];
  v12 = (v7 + v11);
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vdupq_n_s32(0x3B808081u);
  v16 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v13, xmmword_1AFE42AA0), v14)), v15);
  v17 = v11 + v9.i32[0];
  v18 = v11 + v9.i32[1];
  v19 = v18 + v9.i32[0];
  v20 = (v7 + v17);
  v21 = vld1q_dup_f32(v20);
  v22 = (v7 + v18);
  v23 = vld1q_dup_f32(v22);
  v24 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v23, xmmword_1AFE42AA0), v14)), v15);
  v25 = (v7 + v19);
  v26 = vld1q_dup_f32(v25);
  v27 = vsub_f32(v5, vrnd_f32(v5));
  v28 = vmlaq_n_f32(v16, vmlaq_f32(vnegq_f32(v16), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v21, xmmword_1AFE42AA0), v14))), v27.f32[0]);
  v29 = vmlaq_lane_f32(v28, vmlaq_n_f32(vsubq_f32(v24, v28), vmlaq_f32(vnegq_f32(v24), v15, vcvtq_f32_u32(vandq_s8(vshlq_u32(v26, xmmword_1AFE42AA0), v14))), v27.f32[0]), v27, 1);
  v30 = vmulq_f32(v29, v29);
  v31 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v29), v30, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v29)), vmulq_f32(v30, v30), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v29), v30, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v29)));
  v32 = vcgeq_f32(v29, vdupq_n_s32(0x3D25AEE6u));
  v32.i32[3] = 0;
  v33 = vbslq_s8(vcltzq_s32(v32), v31, vmulq_f32(v29, vdupq_n_s32(0x3D9E8391u)));
  v33.i32[3] = v29.i32[3];
  v34 = vrev64q_s32(v33);
  *&result = vextq_s8(v34, v34, 0xCuLL).u64[0];
  return result;
}

float32x2_t vfx_sampler2d_make@<D0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, int32x2_t a6@<D0>)
{
  if ((a2 - 1) > 9)
  {
    v6 = 2;
  }

  else
  {
    v6 = dword_1AFE4834C[(a2 - 1)];
  }

  v7 = vcvt_f32_s32(a6);
  v8 = vdup_n_s32(v6);
  *a5 = v7;
  *(a5 + 8) = vadd_s32(a6, -1);
  v9 = vzip1_s32(0x100000001, a6);
  v10 = a6.i32[0] - a6.i32[0] * a6.i32[1];
  v11.i32[0] = 1 - a6.i32[0];
  v11.i32[1] = v10;
  v12 = *(&off_1F24ECB00[40 * a4] + 10 * a3 + a2);
  *(a5 + 16) = vmul_s32(v8, v9);
  *(a5 + 24) = vmul_s32(v8, v11);
  *(a5 + 32) = a1;
  *(a5 + 40) = v12;
  result = vdiv_f32(0x3F0000003F000000, v7);
  *(a5 + 48) = result;
  return result;
}

int32x2_t sub_1AF385D4C(uint64_t a1, float a2)
{
  *&result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = *(*(a1 + 16) + *(a1 + 8) * v4);
    v6 = (v5 >> 10) & 0x1F;
    if (v6 == 31)
    {
      v7 = 2139095040;
    }

    else
    {
      v7 = (v5 >> 10) & 0x1F;
    }

    if (v6)
    {
      v8 = v6 == 31;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = (v6 << 23) + 939524096;
    }

    result.i32[0] = v9 | (v5 << 16) & 0x80000000 | (v5 >> 7) & 7 | (8 * (v5 & 0x3FF)) & 0x1FFF | ((v5 & 0x3FF) << 13);
    return vdupq_lane_s32(result, 0).u64[0];
  }

  return result;
}

double sub_1AF385DE0(uint64_t a1, float a2)
{
  result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = (*(a1 + 16) + *(a1 + 8) * v4);
    *&result = vld1q_dup_f32(v5).u64[0];
  }

  return result;
}

double sub_1AF385E28(uint64_t a1, float a2)
{
  result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = *(*(a1 + 16) + *(a1 + 8) * v4);
    v6.i64[0] = 0x8000000080000000;
    v6.i64[1] = 0x8000000080000000;
    v7 = vandq_s8(vmovl_s16(v5), v6);
    v8 = vshll_n_u16(v5, 0xDuLL);
    v9 = vorrq_s8(vandq_s8(v8, vdupq_n_s32(0xF800000u)), vorrq_s8(v7, vandq_s8(v8, vdupq_n_s32(0x7FE000u))));
    v7.i64[0] = 0x3800000038000000;
    v7.i64[1] = 0x3800000038000000;
    *&result = vaddq_s32(v9, v7).u64[0];
  }

  return result;
}

__n128 sub_1AF385EA8(uint64_t a1, float a2)
{
  result.n128_u64[0] = 0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    return *(*(a1 + 16) + *(a1 + 8) * v4);
  }

  return result;
}

__n64 sub_1AF385EF0(uint64_t a1, float a2)
{
  result.n64_u64[0] = 0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    result.n64_f32[0] = *a1 * a2;
    v4 = result.n64_f32[0];
    if (result.n64_f32[0] >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    result.n64_u8[0] = *(*(a1 + 16) + *(a1 + 8) * v4);
    result.n64_f32[0] = result.n64_u32[0] * 0.0039216;
    return vdupq_lane_s32(result.n64_u64[0], 0).u64[0];
  }

  return result;
}

double sub_1AF385F4C(uint64_t a1, float a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v10 = 0uLL;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v10.f32[0] = *a1 * a2;
    v11 = v10.f32[0];
    if (v10.f32[0] >= *(a1 + 4))
    {
      v11 = *(a1 + 4);
    }

    v10.i8[0] = *(*(a1 + 16) + *(a1 + 8) * v11);
    a3.f32[0] = v10.u32[0] * 0.0039216;
    v10.f32[0] = a3.f32[0] * a3.f32[0];
    a4.f32[0] = v10.f32[0] * v10.f32[0];
    a5.i32[0] = 1033798545;
    a6.i32[0] = 1024588407;
    a7.i32[0] = 979221581;
    v12 = vmlaq_f32(a7, a6, a3);
    a6.i32[0] = 1063398495;
    a8.i32[0] = 1056330697;
    v13 = vmlaq_f32(a8, a6, a3);
    v14 = vmlaq_f32(v12, v10, v13);
    a6.i32[0] = 1064027478;
    v13.i32[0] = -1083773218;
    v15 = vmlaq_f32(v13, a6, a3);
    a6.i32[0] = 1042024814;
    a9.i32[0] = -1089305042;
    v10 = vdupq_lane_s32(*&vmlaq_f32(v14, a4, vmlaq_f32(v15, v10, vmlaq_f32(a9, a6, a3))), 0);
    v16 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
    v16.i32[3] = 0;
    v10.i64[0] = vbslq_s8(vcltzq_s32(v16), v10, vdupq_lane_s32(*&vmulq_f32(a3, a5), 0)).u64[0];
  }

  return *v10.i64;
}

double sub_1AF386048(uint64_t a1, float a2)
{
  result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = (*(a1 + 16) + *(a1 + 8) * v4);
    v6 = vld1q_dup_f32(v5);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7)), vdupq_n_s32(0x3B808081u)).u64[0];
  }

  return result;
}

double sub_1AF3860B8(uint64_t a1, float a2)
{
  result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = (*(a1 + 16) + *(a1 + 8) * v4);
    v6 = vld1q_dup_f32(v5);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7));
    v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
    v10 = vmulq_f32(v9, v9);
    v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
    v12 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8)), vmulq_f32(v10, v10), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8)));
    v13 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
    v13.i32[3] = 0;
    *&result = vbslq_s8(vcltzq_s32(v13), v12, v11).u64[0];
  }

  return result;
}

double sub_1AF3861DC(uint64_t a1, float a2)
{
  result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = (*(a1 + 16) + *(a1 + 8) * v4);
    v6 = vld1q_dup_f32(v5);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    v8 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7)), vdupq_n_s32(0x3B808081u)));
    *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  }

  return result;
}

double sub_1AF386254(uint64_t a1, float a2)
{
  result = 0.0;
  if (a2 < 1.0 && a2 >= 0.0)
  {
    v4 = (*a1 * a2);
    if (v4 >= *(a1 + 4))
    {
      v4 = *(a1 + 4);
    }

    v5 = (*(a1 + 16) + *(a1 + 8) * v4);
    v6 = vld1q_dup_f32(v5);
    v7.i64[0] = 0xFF000000FFLL;
    v7.i64[1] = 0xFF000000FFLL;
    v8 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v6, xmmword_1AFE42AA0), v7));
    v9 = vmulq_f32(v8, vdupq_n_s32(0x3B808081u));
    v10 = vmulq_f32(v9, v9);
    v11 = vmulq_f32(v8, vdupq_n_s32(0x399F22B4u));
    v12 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v8), v10, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v8)), vmulq_f32(v10, v10), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v8), v10, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v8)));
    v13 = vcgeq_f32(v9, vdupq_n_s32(0x3D25AEE6u));
    v13.i32[3] = 0;
    v14 = vbslq_s8(vcltzq_s32(v13), v12, v11);
    v14.i32[3] = v9.i32[3];
    v15 = vrev64q_s32(v14);
    *&result = vextq_s8(v15, v15, 0xCuLL).u64[0];
  }

  return result;
}

double sub_1AF386380(uint64_t a1, double a2)
{
  v2 = (*a1 * fminf(fmaxf(*&a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = *(*(a1 + 16) + *(a1 + 8) * v2);
  v4 = (v3 >> 10) & 0x1F;
  if (v4 == 31)
  {
    v5 = 2139095040;
  }

  else
  {
    v5 = (v3 >> 10) & 0x1F;
  }

  if (v4)
  {
    v6 = v4 == 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v4 << 23) + 939524096;
  }

  LODWORD(a2) = v7 | (v3 << 16) & 0x80000000 | (v3 >> 7) & 7 | (8 * (v3 & 0x3FF)) & 0x1FFF | ((v3 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF386408(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  *&result = vld1q_dup_f32(v3).u64[0];
  return result;
}

double sub_1AF386444(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = *(*(a1 + 16) + *(a1 + 8) * v2);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v5 = vandq_s8(vmovl_s16(v3), v4);
  v6 = vshll_n_u16(v3, 0xDuLL);
  v7 = vorrq_s8(vandq_s8(v6, vdupq_n_s32(0xF800000u)), vorrq_s8(v5, vandq_s8(v6, vdupq_n_s32(0x7FE000u))));
  v5.i64[0] = 0x3800000038000000;
  v5.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v7, v5).u64[0];
  return result;
}

__n128 sub_1AF3864B8(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  return *(*(a1 + 16) + *(a1 + 8) * v2);
}

double sub_1AF3864F4(uint64_t a1, double a2)
{
  *&a2 = *a1 * fminf(fmaxf(*&a2, 0.0), 1.0);
  v2 = *&a2;
  if (*&a2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  LOBYTE(a2) = *(*(a1 + 16) + *(a1 + 8) * v2);
  *&a2 = LODWORD(a2) * 0.0039216;
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF386544(unsigned int *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a3.i64[0] = *a1;
  a2.f32[0] = a3.f32[0] * fminf(fmaxf(a2.f32[0], 0.0), 1.0);
  v9 = a2.f32[0];
  if (a2.f32[0] >= a1[1])
  {
    v9 = a1[1];
  }

  a2.i8[0] = *(*(a1 + 2) + a1[2] * v9);
  a3.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v10 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v11 = vmlaq_f32(a8, a6, a3);
  v12 = vmlaq_f32(v10, a2, v11);
  a6.i32[0] = 1064027478;
  v11.i32[0] = -1083773218;
  v13 = vmlaq_f32(v11, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v14 = vdupq_lane_s32(*&vmlaq_f32(v12, a5, vmlaq_f32(v13, a2, vmlaq_f32(a9, a6, a3))), 0);
  v15 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), v14, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF386634(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF386698(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6));
  v11 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6));
  v12 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v12.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v12), vmlaq_f32(v10, vmulq_f32(v8, v8), v11), v9).u64[0];
  return result;
}

double sub_1AF3867B0(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v6, v6, 0xCuLL).u64[0];
  return result;
}

double sub_1AF38681C(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(fmaxf(a2, 0.0), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6)), vmulq_f32(v8, v8), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6)));
  v11 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v11.i32[3] = 0;
  v12 = vbslq_s8(vcltzq_s32(v11), v10, v9);
  v12.i32[3] = v7.i32[3];
  v13 = vrev64q_s32(v12);
  *&result = vextq_s8(v13, v13, 0xCuLL).u64[0];
  return result;
}

double sub_1AF38693C(uint64_t a1, double a2)
{
  v2 = (*a1 * fminf(*&a2 - floorf(*&a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = *(*(a1 + 16) + *(a1 + 8) * v2);
  v4 = (v3 >> 10) & 0x1F;
  if (v4 == 31)
  {
    v5 = 2139095040;
  }

  else
  {
    v5 = (v3 >> 10) & 0x1F;
  }

  if (v4)
  {
    v6 = v4 == 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v4 << 23) + 939524096;
  }

  LODWORD(a2) = v7 | (v3 << 16) & 0x80000000 | (v3 >> 7) & 7 | (8 * (v3 & 0x3FF)) & 0x1FFF | ((v3 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF3869C8(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  *&result = vld1q_dup_f32(v3).u64[0];
  return result;
}

double sub_1AF386A08(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = *(*(a1 + 16) + *(a1 + 8) * v2);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v5 = vandq_s8(vmovl_s16(v3), v4);
  v6 = vshll_n_u16(v3, 0xDuLL);
  v7 = vorrq_s8(vandq_s8(v6, vdupq_n_s32(0xF800000u)), vorrq_s8(v5, vandq_s8(v6, vdupq_n_s32(0x7FE000u))));
  v5.i64[0] = 0x3800000038000000;
  v5.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v7, v5).u64[0];
  return result;
}

__n128 sub_1AF386A80(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  return *(*(a1 + 16) + *(a1 + 8) * v2);
}

double sub_1AF386AC0(uint64_t a1, double a2)
{
  *&a2 = *a1 * fminf(*&a2 - floorf(*&a2), 1.0);
  v2 = *&a2;
  if (*&a2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  LOBYTE(a2) = *(*(a1 + 16) + *(a1 + 8) * v2);
  *&a2 = LODWORD(a2) * 0.0039216;
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF386B14(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.f32[0] = *a1 * fminf(a2.f32[0] - floorf(a2.f32[0]), 1.0);
  v9 = a2.f32[0];
  if (a2.f32[0] >= *(a1 + 4))
  {
    v9 = *(a1 + 4);
  }

  a2.i8[0] = *(*(a1 + 16) + *(a1 + 8) * v9);
  a3.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v10 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v11 = vmlaq_f32(a8, a6, a3);
  v12 = vmlaq_f32(v10, a2, v11);
  a6.i32[0] = 1064027478;
  v11.i32[0] = -1083773218;
  v13 = vmlaq_f32(v11, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v14 = vdupq_lane_s32(*&vmlaq_f32(v12, a5, vmlaq_f32(v13, a2, vmlaq_f32(a9, a6, a3))), 0);
  v15 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), v14, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF386C08(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF386C70(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6));
  v11 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6));
  v12 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v12.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v12), vmlaq_f32(v10, vmulq_f32(v8, v8), v11), v9).u64[0];
  return result;
}

double sub_1AF386D8C(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v6, v6, 0xCuLL).u64[0];
  return result;
}

double sub_1AF386DFC(uint64_t a1, float a2)
{
  v2 = (*a1 * fminf(a2 - floorf(a2), 1.0));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6)), vmulq_f32(v8, v8), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6)));
  v11 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v11.i32[3] = 0;
  v12 = vbslq_s8(vcltzq_s32(v11), v10, v9);
  v12.i32[3] = v7.i32[3];
  v13 = vrev64q_s32(v12);
  *&result = vextq_s8(v13, v13, 0xCuLL).u64[0];
  return result;
}

double sub_1AF386F20(uint64_t a1, double a2)
{
  v2 = (vabds_f32(0.5, fminf(((*&a2 * 0.5) + 0.5) - floorf((*&a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = *(*(a1 + 16) + *(a1 + 8) * v2);
  v4 = (v3 >> 10) & 0x1F;
  if (v4 == 31)
  {
    v5 = 2139095040;
  }

  else
  {
    v5 = (v3 >> 10) & 0x1F;
  }

  if (v4)
  {
    v6 = v4 == 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v4 << 23) + 939524096;
  }

  LODWORD(a2) = v7 | (v3 << 16) & 0x80000000 | (v3 >> 7) & 7 | (8 * (v3 & 0x3FF)) & 0x1FFF | ((v3 & 0x3FF) << 13);
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF386FBC(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  *&result = vld1q_dup_f32(v3).u64[0];
  return result;
}

double sub_1AF38700C(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = *(*(a1 + 16) + *(a1 + 8) * v2);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v5 = vandq_s8(vmovl_s16(v3), v4);
  v6 = vshll_n_u16(v3, 0xDuLL);
  v7 = vorrq_s8(vandq_s8(v6, vdupq_n_s32(0xF800000u)), vorrq_s8(v5, vandq_s8(v6, vdupq_n_s32(0x7FE000u))));
  v5.i64[0] = 0x3800000038000000;
  v5.i64[1] = 0x3800000038000000;
  *&result = vaddq_s32(v7, v5).u64[0];
  return result;
}

__n128 sub_1AF387094(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  return *(*(a1 + 16) + *(a1 + 8) * v2);
}

double sub_1AF3870E4(uint64_t a1, double a2)
{
  *&a2 = vabds_f32(0.5, fminf(((*&a2 * 0.5) + 0.5) - floorf((*&a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1);
  v2 = *&a2;
  if (*&a2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  LOBYTE(a2) = *(*(a1 + 16) + *(a1 + 8) * v2);
  *&a2 = LODWORD(a2) * 0.0039216;
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF387148(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a2.f32[0] = vabds_f32(0.5, fminf(((a2.f32[0] * 0.5) + 0.5) - floorf((a2.f32[0] * 0.5) + 0.5), 1.0)) * (*a1 + *a1);
  v9 = a2.f32[0];
  if (a2.f32[0] >= *(a1 + 4))
  {
    v9 = *(a1 + 4);
  }

  a2.i8[0] = *(*(a1 + 16) + *(a1 + 8) * v9);
  a3.f32[0] = a2.u32[0] * 0.0039216;
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v10 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v11 = vmlaq_f32(a8, a6, a3);
  v12 = vmlaq_f32(v10, a2, v11);
  a6.i32[0] = 1064027478;
  v11.i32[0] = -1083773218;
  v13 = vmlaq_f32(v11, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v14 = vdupq_lane_s32(*&vmlaq_f32(v12, a5, vmlaq_f32(v13, a2, vmlaq_f32(a9, a6, a3))), 0);
  v15 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v15), v14, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF38724C(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_1AF3872C4(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6));
  v11 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6));
  v12 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v12.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v12), vmlaq_f32(v10, vmulq_f32(v8, v8), v11), v9).u64[0];
  return result;
}

double sub_1AF3873F0(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5)), vdupq_n_s32(0x3B808081u)));
  *&result = vextq_s8(v6, v6, 0xCuLL).u64[0];
  return result;
}

double sub_1AF387470(uint64_t a1, float a2)
{
  v2 = (vabds_f32(0.5, fminf(((a2 * 0.5) + 0.5) - floorf((a2 * 0.5) + 0.5), 1.0)) * (*a1 + *a1));
  if (v2 >= *(a1 + 4))
  {
    v2 = *(a1 + 4);
  }

  v3 = (*(a1 + 16) + *(a1 + 8) * v2);
  v4 = vld1q_dup_f32(v3);
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v4, xmmword_1AFE42AA0), v5));
  v7 = vmulq_f32(v6, vdupq_n_s32(0x3B808081u));
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_f32(v6, vdupq_n_s32(0x399F22B4u));
  v10 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x39128D05u), v6), v8, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3B630F6Fu), v6)), vmulq_f32(v8, v8), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3B6CB209u), v6), v8, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3A1CA615u), v6)));
  v11 = vcgeq_f32(v7, vdupq_n_s32(0x3D25AEE6u));
  v11.i32[3] = 0;
  v12 = vbslq_s8(vcltzq_s32(v11), v10, v9);
  v12.i32[3] = v7.i32[3];
  v13 = vrev64q_s32(v12);
  *&result = vextq_s8(v13, v13, 0xCuLL).u64[0];
  return result;
}

double sub_1AF3875A4(uint64_t a1, float a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a2 - *(a1 + 32);
  v5 = 0uLL;
  if (v4 < 1.0 && v4 >= 0.0)
  {
    v5.f32[0] = *a1 * v4;
    v6 = *(a1 + 4);
    v7 = *(a1 + 8);
    if (v5.f32[0] >= v6)
    {
      v8 = *(a1 + 4);
    }

    else
    {
      v8 = v5.f32[0];
    }

    v9 = *(a1 + 16);
    if (v6 <= v5.f32[0])
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = v7 * v8;
    v12 = *(v9 + v7 * v8);
    v13 = (v12 >> 10) & 0x1F;
    if (v13 == 31)
    {
      v14 = 2139095040;
    }

    else
    {
      v14 = (v12 >> 10) & 0x1F;
    }

    if (v13)
    {
      v15 = v13 == 31;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = (v13 << 23) + 939524096;
    }

    a3.i32[0] = v16 | (v12 << 16) & 0x80000000 | (v12 >> 7) & 7 | (8 * (v12 & 0x3FF)) & 0x1FFF | ((v12 & 0x3FF) << 13);
    v17 = *(v9 + v11 + v10);
    v18 = (v17 >> 10) & 0x1F;
    if (v18 == 31)
    {
      v19 = 2139095040;
    }

    else
    {
      v19 = (v17 >> 10) & 0x1F;
    }

    if (v18)
    {
      v20 = v18 == 31;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = (v18 << 23) + 939524096;
    }

    a4.i32[0] = v21 | (v17 << 16) & 0x80000000 | (v17 >> 7) & 7 | (8 * (v17 & 0x3FF)) & 0x1FFF | ((v17 & 0x3FF) << 13);
    v5.f32[0] = v5.f32[0] - truncf(v5.f32[0]);
    v5.i64[0] = vdupq_lane_s32(*&vmlaq_f32(a3, v5, vsubq_f32(a4, a3)), 0).u64[0];
  }

  return *v5.i64;
}

double sub_1AF387698(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    *&result = *a1 * v2;
    v4 = *(a1 + 4);
    if (*&result >= v4)
    {
      v5 = *(a1 + 4);
    }

    else
    {
      v5 = *&result;
    }

    if (v4 <= *&result)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 8);
    }

    *&result = *(*(a1 + 16) + *(a1 + 8) * v5) + ((*(*(a1 + 16) + *(a1 + 8) * v5 + v6) - *(*(a1 + 16) + *(a1 + 8) * v5)) * (*&result - truncf(*&result)));
    *&result = vdupq_lane_s32(*&result, 0).u64[0];
  }

  return result;
}

double sub_1AF387704(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    v4 = *a1 * v2;
    v5 = *(a1 + 4);
    v6 = *(a1 + 8);
    if (v4 >= v5)
    {
      v7 = *(a1 + 4);
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a1 + 16);
    if (v5 <= v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = *(v8 + v6 * v7);
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    v12 = vandq_s8(vmovl_s16(v10), v11);
    v13 = vshll_n_u16(v10, 0xDuLL);
    v14 = vdupq_n_s32(0x7FE000u);
    v15 = vdupq_n_s32(0xF800000u);
    v16 = vorrq_s8(vandq_s8(v13, v15), vorrq_s8(v12, vandq_s8(v13, v14)));
    v12.i64[0] = 0x3800000038000000;
    v12.i64[1] = 0x3800000038000000;
    v17 = vaddq_s32(v16, v12);
    v18 = *(v8 + v6 * v7 + v9);
    v19 = vandq_s8(vmovl_s16(v18), v11);
    v20 = vshll_n_u16(v18, 0xDuLL);
    *&result = vmlaq_n_f32(v17, vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v20, v15), vorrq_s8(v19, vandq_s8(v20, v14))), v12), v17), v4 - truncf(v4)).u64[0];
  }

  return result;
}

double sub_1AF3877C4(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    v4 = *a1 * v2;
    v5 = *(a1 + 4);
    if (v4 >= v5)
    {
      v6 = *(a1 + 4);
    }

    else
    {
      v6 = v4;
    }

    if (v5 <= v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    *&result = vmlaq_n_f32(*(*(a1 + 16) + *(a1 + 8) * v6), vsubq_f32(*(*(a1 + 16) + *(a1 + 8) * v6 + v7), *(*(a1 + 16) + *(a1 + 8) * v6)), v4 - truncf(v4)).u64[0];
  }

  return result;
}

double sub_1AF38782C(uint64_t a1, float a2, double a3, double a4, float a5)
{
  v5 = a2 - *(a1 + 32);
  result = 0.0;
  if (v5 < 1.0 && v5 >= 0.0)
  {
    *&result = *a1 * v5;
    v7 = *(a1 + 4);
    v8 = *(a1 + 8);
    if (*&result >= v7)
    {
      v9 = *(a1 + 4);
    }

    else
    {
      v9 = *&result;
    }

    v10 = *(a1 + 16);
    if (v7 <= *&result)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 8);
    }

    LOBYTE(v5) = *(v10 + v8 * v9);
    LOBYTE(a5) = *(v10 + v8 * v9 + v11);
    *&result = (LODWORD(v5) * 0.0039216) + (-((LODWORD(v5) * 0.0039216) - (LODWORD(a5) * 0.0039216)) * (*&result - truncf(*&result)));
    *&result = vdupq_lane_s32(*&result, 0).u64[0];
  }

  return result;
}

double sub_1AF3878AC(uint64_t a1, float a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a3.f32[0] = a2 - *(a1 + 32);
  v9 = 0uLL;
  if (a3.f32[0] < 1.0 && a3.f32[0] >= 0.0)
  {
    v9.f32[0] = *a1 * a3.f32[0];
    v10 = *(a1 + 4);
    if (v9.f32[0] >= v10)
    {
      v11 = *(a1 + 4);
    }

    else
    {
      v11 = v9.f32[0];
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 8) * v11;
    if (v10 <= v9.f32[0])
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 8);
    }

    a5.i8[0] = *(v12 + v13 + v14);
    a3.i8[0] = *(v12 + v13);
    a3.f32[0] = (a3.u32[0] * 0.0039216) + (-((a3.u32[0] * 0.0039216) - (a5.u32[0] * 0.0039216)) * (v9.f32[0] - truncf(v9.f32[0])));
    v9.f32[0] = a3.f32[0] * a3.f32[0];
    a4.f32[0] = v9.f32[0] * v9.f32[0];
    a5.i32[0] = 1033798545;
    a6.i32[0] = 1024588407;
    a7.i32[0] = 979221581;
    v15 = vmlaq_f32(a7, a6, a3);
    a6.i32[0] = 1063398495;
    a8.i32[0] = 1056330697;
    v16 = vmlaq_f32(a8, a6, a3);
    v17 = vmlaq_f32(v15, v9, v16);
    a6.i32[0] = 1064027478;
    v16.i32[0] = -1083773218;
    v18 = vmlaq_f32(v16, a6, a3);
    a6.i32[0] = 1042024814;
    a9.i32[0] = -1089305042;
    v9 = vdupq_lane_s32(*&vmlaq_f32(v17, a4, vmlaq_f32(v18, v9, vmlaq_f32(a9, a6, a3))), 0);
    v19 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
    v19.i32[3] = 0;
    v9.i64[0] = vbslq_s8(vcltzq_s32(v19), v9, vdupq_lane_s32(*&vmulq_f32(a3, a5), 0)).u64[0];
  }

  return *v9.i64;
}

double sub_1AF3879CC(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    v4 = *a1 * v2;
    v5 = *(a1 + 4);
    v6 = *(a1 + 8);
    if (v4 >= v5)
    {
      v7 = *(a1 + 4);
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a1 + 16);
    if (v5 <= v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = v6 * v7;
    v11 = (v8 + v6 * v7);
    v12 = vld1q_dup_f32(v11);
    v13.i64[0] = 0xFF000000FFLL;
    v13.i64[1] = 0xFF000000FFLL;
    v14 = vdupq_n_s32(0x3B808081u);
    v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
    v16 = (v8 + v10 + v9);
    v17 = vld1q_dup_f32(v16);
    *&result = vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v13))), v4 - truncf(v4)).u64[0];
  }

  return result;
}

double sub_1AF387A74(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    v4 = *a1 * v2;
    v5 = *(a1 + 4);
    v6 = *(a1 + 8);
    if (v4 >= v5)
    {
      v7 = *(a1 + 4);
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a1 + 16);
    if (v5 <= v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = v6 * v7;
    v11 = (v8 + v6 * v7);
    v12 = vld1q_dup_f32(v11);
    v13.i64[0] = 0xFF000000FFLL;
    v13.i64[1] = 0xFF000000FFLL;
    v14 = vdupq_n_s32(0x3B808081u);
    v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
    v16 = (v8 + v10 + v9);
    v17 = vld1q_dup_f32(v16);
    v18 = vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v13))), v4 - truncf(v4));
    v19 = vmulq_f32(v18, v18);
    v20 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v18), v19, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v18)), vmulq_f32(v19, v19), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v18), v19, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v18)));
    v21 = vcgeq_f32(v18, vdupq_n_s32(0x3D25AEE6u));
    v21.i32[3] = 0;
    *&result = vbslq_s8(vcltzq_s32(v21), v20, vmulq_f32(v18, vdupq_n_s32(0x3D9E8391u))).u64[0];
  }

  return result;
}

double sub_1AF387BD0(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    v4 = *a1 * v2;
    v5 = *(a1 + 4);
    v6 = *(a1 + 8);
    if (v4 >= v5)
    {
      v7 = *(a1 + 4);
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a1 + 16);
    if (v5 <= v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v10 = v6 * v7;
    v11 = (v8 + v6 * v7);
    v12 = vld1q_dup_f32(v11);
    v13.i64[0] = 0xFF000000FFLL;
    v13.i64[1] = 0xFF000000FFLL;
    v14 = vdupq_n_s32(0x3B808081u);
    v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
    v16 = (v8 + v10 + v9);
    v17 = vld1q_dup_f32(v16);
    v18 = vrev64q_s32(vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v13))), v4 - truncf(v4)));
    *&result = vextq_s8(v18, v18, 0xCuLL).u64[0];
  }

  return result;
}

double sub_1AF387C80(uint64_t a1, float a2)
{
  v2 = a2 - *(a1 + 32);
  result = 0.0;
  if (v2 < 1.0 && v2 >= 0.0)
  {
    v4 = *a1 * v2;
    v5 = *(a1 + 4);
    v6 = *(a1 + 8);
    if (v4 >= v5)
    {
      v7 = *(a1 + 4);
    }

    else
    {
      v7 = v4;
    }

    v8 = *(a1 + 16);
    v9 = v5 <= v4;
    v10 = (v8 + v6 * v7);
    v11 = vld1q_dup_f32(v10);
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13.i64[0] = 0xFF000000FFLL;
    v13.i64[1] = 0xFF000000FFLL;
    v14 = vdupq_n_s32(0x3B808081u);
    v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v11, xmmword_1AFE42AA0), v13)), v14);
    v16 = (v8 + v6 * v7 + v12);
    v17 = vld1q_dup_f32(v16);
    v18 = vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v13))), v4 - truncf(v4));
    v19 = vmulq_f32(v18, v18);
    v20 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v18), v19, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v18)), vmulq_f32(v19, v19), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v18), v19, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v18)));
    v21 = vcgeq_f32(v18, vdupq_n_s32(0x3D25AEE6u));
    v21.i32[3] = 0;
    v22 = vbslq_s8(vcltzq_s32(v21), v20, vmulq_f32(v18, vdupq_n_s32(0x3D9E8391u)));
    v22.i32[3] = v18.i32[3];
    v23 = vrev64q_s32(v22);
    *&result = vextq_s8(v23, v23, 0xCuLL).u64[0];
  }

  return result;
}

double sub_1AF387DE4(float *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  a3.i64[0] = *a1;
  a2.f32[0] = fminf(fmaxf(a2.f32[0] - a1[8], 0.0), 1.0) * a3.f32[0];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (a2.f32[0] >= v4)
  {
    v6 = *(a1 + 1);
  }

  else
  {
    v6 = a2.f32[0];
  }

  v7 = *(a1 + 2);
  if (v4 <= a2.f32[0])
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 2);
  }

  v9 = v5 * v6;
  v10 = *(v7 + (v5 * v6));
  v11 = (v10 >> 10) & 0x1F;
  if (v11 == 31)
  {
    v12 = 2139095040;
  }

  else
  {
    v12 = (v10 >> 10) & 0x1F;
  }

  if (v11)
  {
    v13 = v11 == 31;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = (v11 << 23) + 939524096;
  }

  v15 = *(v7 + (v9 + v8));
  v16 = (v15 >> 10) & 0x1F;
  if (v16 == 31)
  {
    v17 = 2139095040;
  }

  else
  {
    v17 = (v15 >> 10) & 0x1F;
  }

  if (v16)
  {
    v18 = v16 == 31;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = (v16 << 23) + 939524096;
  }

  a3.i32[0] = v14 | (v10 << 16) & 0x80000000 | (v10 >> 7) & 7 | (8 * (v10 & 0x3FF)) & 0x1FFF | ((v10 & 0x3FF) << 13);
  a4.i32[0] = v19 | (v15 << 16) & 0x80000000 | (v15 >> 7) & 7 | (8 * (v15 & 0x3FF)) & 0x1FFF | ((v15 & 0x3FF) << 13);
  a2.f32[0] = a2.f32[0] - truncf(a2.f32[0]);
  a2.i64[0] = vdupq_lane_s32(*&vmlaq_f32(a3, a2, vsubq_f32(a4, a3)), 0).u64[0];
  return *a2.i64;
}

double sub_1AF387ED0(uint64_t a1, double a2)
{
  *&a2 = fminf(fmaxf(*&a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v2 = *&a2;
  v3 = *(a1 + 4);
  if (v3 <= *&a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v2 >= v3)
  {
    v2 = *(a1 + 4);
  }

  *&a2 = *(*(a1 + 16) + *(a1 + 8) * v2) + ((*(*(a1 + 16) + *(a1 + 8) * v2 + v4) - *(*(a1 + 16) + *(a1 + 8) * v2)) * (*&a2 - truncf(*&a2)));
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF387F34(uint64_t a1, float a2)
{
  v2 = fminf(fmaxf(a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 4);
  if (v5 <= v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v3 >= v5)
  {
    v3 = *(a1 + 4);
  }

  v7 = *(a1 + 8) * v3;
  v8 = *(v4 + v7);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vandq_s8(vmovl_s16(v8), v9);
  v11 = vshll_n_u16(v8, 0xDuLL);
  v12 = vdupq_n_s32(0x7FE000u);
  v13 = vdupq_n_s32(0xF800000u);
  v14 = vorrq_s8(vandq_s8(v11, v13), vorrq_s8(v10, vandq_s8(v11, v12)));
  v10.i64[0] = 0x3800000038000000;
  v10.i64[1] = 0x3800000038000000;
  v15 = vaddq_s32(v14, v10);
  v16 = *(v4 + v7 + v6);
  v17 = vandq_s8(vmovl_s16(v16), v9);
  v18 = vshll_n_u16(v16, 0xDuLL);
  *&result = vmlaq_n_f32(v15, vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v18, v13), vorrq_s8(v17, vandq_s8(v18, v12))), v10), v15), v2 - truncf(v2)).u64[0];
  return result;
}

double sub_1AF387FEC(uint64_t a1, float a2)
{
  v2 = fminf(fmaxf(a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v3 = v2;
  v4 = *(a1 + 4);
  if (v4 <= v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v3 >= v4)
  {
    v3 = *(a1 + 4);
  }

  *&result = vmlaq_n_f32(*(*(a1 + 16) + *(a1 + 8) * v3), vsubq_f32(*(*(a1 + 16) + *(a1 + 8) * v3 + v5), *(*(a1 + 16) + *(a1 + 8) * v3)), v2 - truncf(v2)).u64[0];
  return result;
}

double sub_1AF38804C(uint64_t a1, double a2, double a3, double a4, float a5)
{
  v5 = *a1;
  *&a2 = fminf(fmaxf(*&a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v6 = *&a2;
  v7 = *(a1 + 16);
  v8 = *(a1 + 4);
  if (v8 <= *&a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v6 >= v8)
  {
    v6 = *(a1 + 4);
  }

  v10 = *(a1 + 8) * v6;
  LOBYTE(v5) = *(v7 + v10);
  LOBYTE(a5) = *(v7 + v10 + v9);
  *&a2 = (v5 * 0.0039216) + (-((v5 * 0.0039216) - (LODWORD(a5) * 0.0039216)) * (*&a2 - truncf(*&a2)));
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF3880C4(float *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a3.i64[0] = *a1;
  a2.f32[0] = fminf(fmaxf(a2.f32[0] - a1[8], 0.0), 1.0) * a3.f32[0];
  v9 = a2.f32[0];
  v10 = *(a1 + 2);
  v11 = *(a1 + 1);
  if (v11 <= a2.f32[0])
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 2);
  }

  if (v9 >= v11)
  {
    v9 = *(a1 + 1);
  }

  v13 = *(a1 + 2) * v9;
  a3.i8[0] = *(v10 + v13);
  a5.i8[0] = *(v10 + (v13 + v12));
  a3.f32[0] = (a3.u32[0] * 0.0039216) + (-((a3.u32[0] * 0.0039216) - (a5.u32[0] * 0.0039216)) * (a2.f32[0] - truncf(a2.f32[0])));
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v14 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v15 = vmlaq_f32(a8, a6, a3);
  v16 = vmlaq_f32(v14, a2, v15);
  a6.i32[0] = 1064027478;
  v15.i32[0] = -1083773218;
  v17 = vmlaq_f32(v15, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v18 = vdupq_lane_s32(*&vmlaq_f32(v16, a5, vmlaq_f32(v17, a2, vmlaq_f32(a9, a6, a3))), 0);
  v19 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v19.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v19), v18, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF3881DC(uint64_t a1, float a2)
{
  v2 = fminf(fmaxf(a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 4);
  if (v5 <= v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v3 >= v5)
  {
    v3 = *(a1 + 4);
  }

  v7 = *(a1 + 8) * v3;
  v8 = (v4 + v7);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vdupq_n_s32(0x3B808081u);
  v12 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), v11);
  v13 = (v4 + v7 + v6);
  v14 = vld1q_dup_f32(v13);
  *&result = vmlaq_n_f32(v12, vmlaq_f32(vnegq_f32(v12), v11, vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v10))), v2 - truncf(v2)).u64[0];
  return result;
}

double sub_1AF38827C(uint64_t a1, float a2)
{
  v2 = fminf(fmaxf(a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 4);
  if (v5 <= v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v3 >= v5)
  {
    v3 = *(a1 + 4);
  }

  v7 = *(a1 + 8) * v3;
  v8 = (v4 + v7);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vdupq_n_s32(0x3B808081u);
  v12 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), v11);
  v13 = (v4 + v7 + v6);
  v14 = vld1q_dup_f32(v13);
  v15 = vmlaq_n_f32(v12, vmlaq_f32(vnegq_f32(v12), v11, vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v10))), v2 - truncf(v2));
  v16 = vmulq_f32(v15, v15);
  v17 = vmulq_f32(v16, v16);
  v18 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v15), v16, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v15));
  v19 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v15), v16, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v15));
  v20 = vcgeq_f32(v15, vdupq_n_s32(0x3D25AEE6u));
  v20.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v20), vmlaq_f32(v18, v17, v19), vmulq_f32(v15, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF3883D0(uint64_t a1, float a2)
{
  v2 = fminf(fmaxf(a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 4);
  if (v5 <= v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v3 >= v5)
  {
    v3 = *(a1 + 4);
  }

  v7 = *(a1 + 8) * v3;
  v8 = (v4 + v7);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vdupq_n_s32(0x3B808081u);
  v12 = (v4 + v7 + v6);
  v13 = vld1q_dup_f32(v12);
  v14 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), v11);
  v15 = vrev64q_s32(vmlaq_n_f32(v14, vmlaq_f32(vnegq_f32(v14), v11, vcvtq_f32_u32(vandq_s8(vshlq_u32(v13, xmmword_1AFE42AA0), v10))), v2 - truncf(v2)));
  *&result = vextq_s8(v15, v15, 0xCuLL).u64[0];
  return result;
}

double sub_1AF388478(uint64_t a1, float a2)
{
  v2 = fminf(fmaxf(a2 - *(a1 + 32), 0.0), 1.0) * *a1;
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 4);
  if (v5 <= v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v3 >= v5)
  {
    v3 = *(a1 + 4);
  }

  v7 = *(a1 + 8) * v3;
  v8 = (v4 + v7);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vdupq_n_s32(0x3B808081u);
  v12 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), v11);
  v13 = (v4 + v7 + v6);
  v14 = vld1q_dup_f32(v13);
  v15 = vmlaq_n_f32(v12, vmlaq_f32(vnegq_f32(v12), v11, vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v10))), v2 - truncf(v2));
  v16 = vmulq_f32(v15, v15);
  v17 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v15), v16, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v15)), vmulq_f32(v16, v16), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v15), v16, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v15)));
  v18 = vcgeq_f32(v15, vdupq_n_s32(0x3D25AEE6u));
  v18.i32[3] = 0;
  v19 = vbslq_s8(vcltzq_s32(v18), v17, vmulq_f32(v15, vdupq_n_s32(0x3D9E8391u)));
  v19.i32[3] = v15.i32[3];
  v20 = vrev64q_s32(v19);
  *&result = vextq_s8(v20, v20, 0xCuLL).u64[0];
  return result;
}

double sub_1AF3885D4(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  a2.f32[0] = fminf((a2.f32[0] - *(a1 + 32)) - floorf(a2.f32[0] - *(a1 + 32)), 1.0) * *a1;
  v4 = *(a1 + 4);
  if (a2.f32[0] >= v4)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = a2.f32[0];
  }

  v6 = 12;
  if (v4 > a2.f32[0])
  {
    v6 = 8;
  }

  v7 = *(a1 + v6);
  v8 = *(a1 + 16);
  v9 = *(a1 + 8) * v5;
  v10 = *(v8 + v9);
  v11 = (v10 >> 10) & 0x1F;
  if (v11 == 31)
  {
    v12 = 2139095040;
  }

  else
  {
    v12 = (v10 >> 10) & 0x1F;
  }

  if (v11)
  {
    v13 = v11 == 31;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = (v11 << 23) + 939524096;
  }

  v15 = *(v8 + v7 + v9);
  v16 = (v15 >> 10) & 0x1F;
  if (v16 == 31)
  {
    v17 = 2139095040;
  }

  else
  {
    v17 = (v15 >> 10) & 0x1F;
  }

  if (v16)
  {
    v18 = v16 == 31;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = (v16 << 23) + 939524096;
  }

  a3.i32[0] = v14 | (v10 << 16) & 0x80000000 | (v10 >> 7) & 7 | (8 * (v10 & 0x3FF)) & 0x1FFF | ((v10 & 0x3FF) << 13);
  a4.i32[0] = v19 | (v15 << 16) & 0x80000000 | (v15 >> 7) & 7 | (8 * (v15 & 0x3FF)) & 0x1FFF | ((v15 & 0x3FF) << 13);
  a2.f32[0] = a2.f32[0] - truncf(a2.f32[0]);
  a2.i64[0] = vdupq_lane_s32(*&vmlaq_f32(a3, a2, vsubq_f32(a4, a3)), 0).u64[0];
  return *a2.i64;
}

double sub_1AF3886D4(uint64_t a1, double a2)
{
  *&a2 = fminf((*&a2 - *(a1 + 32)) - floorf(*&a2 - *(a1 + 32)), 1.0) * *a1;
  v2 = *(a1 + 4);
  if (*&a2 >= v2)
  {
    v3 = *(a1 + 4);
  }

  else
  {
    v3 = *&a2;
  }

  v4 = 12;
  if (v2 > *&a2)
  {
    v4 = 8;
  }

  *&a2 = *(*(a1 + 16) + *(a1 + 8) * v3) + ((*(*(a1 + 16) + *(a1 + v4) + (*(a1 + 8) * v3)) - *(*(a1 + 16) + *(a1 + 8) * v3)) * (*&a2 - truncf(*&a2)));
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF38874C(uint64_t a1, float a2)
{
  v2 = fminf((a2 - *(a1 + 32)) - floorf(a2 - *(a1 + 32)), 1.0) * *a1;
  v3 = *(a1 + 4);
  if (v2 >= v3)
  {
    v4 = *(a1 + 4);
  }

  else
  {
    v4 = v2;
  }

  v5 = 12;
  if (v3 > v2)
  {
    v5 = 8;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 8) * v4;
  v8 = *(v6 + v7);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vandq_s8(vmovl_s16(v8), v9);
  v11 = vshll_n_u16(v8, 0xDuLL);
  v12 = vdupq_n_s32(0x7FE000u);
  v13 = vdupq_n_s32(0xF800000u);
  v14 = vorrq_s8(vandq_s8(v11, v13), vorrq_s8(v10, vandq_s8(v11, v12)));
  v10.i64[0] = 0x3800000038000000;
  v10.i64[1] = 0x3800000038000000;
  v15 = vaddq_s32(v14, v10);
  v16 = *(v6 + *(a1 + v5) + v7);
  v17 = vandq_s8(vmovl_s16(v16), v9);
  v18 = vshll_n_u16(v16, 0xDuLL);
  *&result = vmlaq_n_f32(v15, vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v18, v13), vorrq_s8(v17, vandq_s8(v18, v12))), v10), v15), v2 - truncf(v2)).u64[0];
  return result;
}

double sub_1AF388818(uint64_t a1, float a2)
{
  v2 = fminf((a2 - *(a1 + 32)) - floorf(a2 - *(a1 + 32)), 1.0) * *a1;
  v3 = *(a1 + 4);
  if (v2 >= v3)
  {
    v4 = *(a1 + 4);
  }

  else
  {
    v4 = v2;
  }

  v5 = 12;
  if (v3 > v2)
  {
    v5 = 8;
  }

  *&result = vmlaq_n_f32(*(*(a1 + 16) + *(a1 + 8) * v4), vsubq_f32(*(*(a1 + 16) + *(a1 + v5) + (*(a1 + 8) * v4)), *(*(a1 + 16) + *(a1 + 8) * v4)), v2 - truncf(v2)).u64[0];
  return result;
}

double sub_1AF38888C(uint64_t a1, double a2, double a3, double a4, float a5)
{
  v5 = *a1;
  *&a2 = fminf((*&a2 - *(a1 + 32)) - floorf(*&a2 - *(a1 + 32)), 1.0) * *a1;
  v6 = *(a1 + 4);
  if (*&a2 >= v6)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    v7 = *&a2;
  }

  v8 = 12;
  if (v6 > *&a2)
  {
    v8 = 8;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 8) * v7;
  LOBYTE(v5) = *(v9 + v10);
  LOBYTE(a5) = *(v9 + *(a1 + v8) + v10);
  *&a2 = (v5 * 0.0039216) + (-((v5 * 0.0039216) - (LODWORD(a5) * 0.0039216)) * (*&a2 - truncf(*&a2)));
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF388918(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  a3.i32[0] = *a1;
  a2.f32[0] = fminf((a2.f32[0] - *(a1 + 32)) - floorf(a2.f32[0] - *(a1 + 32)), 1.0) * *a1;
  v9 = *(a1 + 4);
  if (a2.f32[0] >= v9)
  {
    v10 = *(a1 + 4);
  }

  else
  {
    v10 = a2.f32[0];
  }

  v11 = 12;
  if (v9 > a2.f32[0])
  {
    v11 = 8;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 8) * v10;
  a3.i8[0] = *(v12 + v13);
  a5.i8[0] = *(v12 + *(a1 + v11) + v13);
  a3.f32[0] = (a3.u32[0] * 0.0039216) + (-((a3.u32[0] * 0.0039216) - (a5.u32[0] * 0.0039216)) * (a2.f32[0] - truncf(a2.f32[0])));
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v14 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v15 = vmlaq_f32(a8, a6, a3);
  v16 = vmlaq_f32(v14, a2, v15);
  a6.i32[0] = 1064027478;
  v15.i32[0] = -1083773218;
  v17 = vmlaq_f32(v15, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v18 = vdupq_lane_s32(*&vmlaq_f32(v16, a5, vmlaq_f32(v17, a2, vmlaq_f32(a9, a6, a3))), 0);
  v19 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v19.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v19), v18, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF388A44(uint64_t a1, float a2)
{
  v2 = fminf((a2 - *(a1 + 32)) - floorf(a2 - *(a1 + 32)), 1.0) * *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  if (v2 >= v3)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = v2;
  }

  v6 = 12;
  if (v3 > v2)
  {
    v6 = 8;
  }

  v7 = *(a1 + 16);
  v8 = (v7 + v4 * v5);
  v9 = vld1q_dup_f32(v8);
  v10.i64[0] = 0xFF000000FFLL;
  v10.i64[1] = 0xFF000000FFLL;
  v11 = vdupq_n_s32(0x3B808081u);
  v12 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v9, xmmword_1AFE42AA0), v10)), v11);
  v13 = (v7 + *(a1 + v6) + (v4 * v5));
  v14 = vld1q_dup_f32(v13);
  *&result = vmlaq_n_f32(v12, vmlaq_f32(vnegq_f32(v12), v11, vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v10))), v2 - truncf(v2)).u64[0];
  return result;
}

double sub_1AF388AF8(uint64_t a1, float a2)
{
  v2 = fminf((a2 - *(a1 + 32)) - floorf(a2 - *(a1 + 32)), 1.0) * *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  if (v2 >= v3)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = v2;
  }

  v6 = 12;
  if (v3 > v2)
  {
    v6 = 8;
  }

  v7 = *(a1 + 16);
  v8 = v4 * v5;
  v9 = (v7 + v4 * v5);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12 = vdupq_n_s32(0x3B808081u);
  v13 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11)), v12);
  v14 = (v7 + *(a1 + v6) + v8);
  v15 = vld1q_dup_f32(v14);
  v16 = vmlaq_n_f32(v13, vmlaq_f32(vnegq_f32(v13), v12, vcvtq_f32_u32(vandq_s8(vshlq_u32(v15, xmmword_1AFE42AA0), v11))), v2 - truncf(v2));
  v17 = vmulq_f32(v16, v16);
  v18 = vmulq_f32(v17, v17);
  v19 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v16), v17, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v16));
  v20 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v16), v17, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v16));
  v21 = vcgeq_f32(v16, vdupq_n_s32(0x3D25AEE6u));
  v21.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v21), vmlaq_f32(v19, v18, v20), vmulq_f32(v16, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF388C60(uint64_t a1, float a2)
{
  v2 = fminf((a2 - *(a1 + 32)) - floorf(a2 - *(a1 + 32)), 1.0) * *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  if (v2 >= v3)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = v2;
  }

  v6 = 12;
  if (v3 > v2)
  {
    v6 = 8;
  }

  v7 = *(a1 + 16);
  v8 = v4 * v5;
  v9 = (v7 + v4 * v5);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12 = vdupq_n_s32(0x3B808081u);
  v13 = (v7 + *(a1 + v6) + v8);
  v14 = vld1q_dup_f32(v13);
  v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11)), v12);
  v16 = vrev64q_s32(vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v12, vcvtq_f32_u32(vandq_s8(vshlq_u32(v14, xmmword_1AFE42AA0), v11))), v2 - truncf(v2)));
  *&result = vextq_s8(v16, v16, 0xCuLL).u64[0];
  return result;
}

double sub_1AF388D1C(uint64_t a1, float a2)
{
  v2 = fminf((a2 - *(a1 + 32)) - floorf(a2 - *(a1 + 32)), 1.0) * *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  if (v2 >= v3)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = v2;
  }

  v6 = 12;
  if (v3 > v2)
  {
    v6 = 8;
  }

  v7 = *(a1 + 16);
  v8 = v4 * v5;
  v9 = (v7 + v4 * v5);
  v10 = vld1q_dup_f32(v9);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  v12 = vdupq_n_s32(0x3B808081u);
  v13 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE42AA0), v11)), v12);
  v14 = (v7 + *(a1 + v6) + v8);
  v15 = vld1q_dup_f32(v14);
  v16 = vmlaq_n_f32(v13, vmlaq_f32(vnegq_f32(v13), v12, vcvtq_f32_u32(vandq_s8(vshlq_u32(v15, xmmword_1AFE42AA0), v11))), v2 - truncf(v2));
  v17 = vmulq_f32(v16, v16);
  v18 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v16), v17, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v16)), vmulq_f32(v17, v17), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v16), v17, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v16)));
  v19 = vcgeq_f32(v16, vdupq_n_s32(0x3D25AEE6u));
  v19.i32[3] = 0;
  v20 = vbslq_s8(vcltzq_s32(v19), v18, vmulq_f32(v16, vdupq_n_s32(0x3D9E8391u)));
  v20.i32[3] = v16.i32[3];
  v21 = vrev64q_s32(v20);
  *&result = vextq_s8(v21, v21, 0xCuLL).u64[0];
  return result;
}

double sub_1AF388E8C(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = ((a2.f32[0] - *(a1 + 32)) * 0.5) + 0.5;
  v5 = vabds_f32(0.5, fminf(v4 - floorf(v4), 1.0));
  a2.f32[0] = *a1 * (v5 + v5);
  v6 = *(a1 + 4);
  if (a2.f32[0] >= v6)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    v7 = a2.f32[0];
  }

  v8 = 12;
  if (v6 > a2.f32[0])
  {
    v8 = 8;
  }

  v9 = *(a1 + v8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 8) * v7;
  v12 = *(v10 + v11);
  v13 = (v12 >> 10) & 0x1F;
  if (v13 == 31)
  {
    v14 = 2139095040;
  }

  else
  {
    v14 = (v12 >> 10) & 0x1F;
  }

  if (v13)
  {
    v15 = v13 == 31;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = (v13 << 23) + 939524096;
  }

  v17 = *(v10 + v9 + v11);
  v18 = (v17 >> 10) & 0x1F;
  if (v18 == 31)
  {
    v19 = 2139095040;
  }

  else
  {
    v19 = (v17 >> 10) & 0x1F;
  }

  if (v18)
  {
    v20 = v18 == 31;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = (v18 << 23) + 939524096;
  }

  a3.i32[0] = v16 | (v12 << 16) & 0x80000000 | (v12 >> 7) & 7 | (8 * (v12 & 0x3FF)) & 0x1FFF | ((v12 & 0x3FF) << 13);
  a4.i32[0] = v21 | (v17 << 16) & 0x80000000 | (v17 >> 7) & 7 | (8 * (v17 & 0x3FF)) & 0x1FFF | ((v17 & 0x3FF) << 13);
  a2.f32[0] = a2.f32[0] - truncf(a2.f32[0]);
  a2.i64[0] = vdupq_lane_s32(*&vmlaq_f32(a3, a2, vsubq_f32(a4, a3)), 0).u64[0];
  return *a2.i64;
}

double sub_1AF388F9C(uint64_t a1, double a2)
{
  v2 = ((*&a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  *&a2 = *a1 * (v3 + v3);
  v4 = *(a1 + 4);
  if (*&a2 >= v4)
  {
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = *&a2;
  }

  v6 = 12;
  if (v4 > *&a2)
  {
    v6 = 8;
  }

  *&a2 = *(*(a1 + 16) + *(a1 + 8) * v5) + ((*&a2 - truncf(*&a2)) * (*(*(a1 + 16) + *(a1 + v6) + (*(a1 + 8) * v5)) - *(*(a1 + 16) + *(a1 + 8) * v5)));
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF389024(uint64_t a1, float a2)
{
  v2 = ((a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  v4 = *a1 * (v3 + v3);
  v5 = *(a1 + 4);
  if (v4 >= v5)
  {
    v6 = *(a1 + 4);
  }

  else
  {
    v6 = v4;
  }

  v7 = 12;
  if (v5 > v4)
  {
    v7 = 8;
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8) * v6;
  v10 = *(v8 + v9);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = vandq_s8(vmovl_s16(v10), v11);
  v13 = vshll_n_u16(v10, 0xDuLL);
  v14 = vdupq_n_s32(0x7FE000u);
  v15 = vdupq_n_s32(0xF800000u);
  v16 = vorrq_s8(vandq_s8(v13, v15), vorrq_s8(v12, vandq_s8(v13, v14)));
  v12.i64[0] = 0x3800000038000000;
  v12.i64[1] = 0x3800000038000000;
  v17 = vaddq_s32(v16, v12);
  v18 = *(v8 + *(a1 + v7) + v9);
  v19 = vandq_s8(vmovl_s16(v18), v11);
  v20 = vshll_n_u16(v18, 0xDuLL);
  *&result = vmlaq_n_f32(v17, vsubq_f32(vaddq_s32(vorrq_s8(vandq_s8(v20, v15), vorrq_s8(v19, vandq_s8(v20, v14))), v12), v17), v4 - truncf(v4)).u64[0];
  return result;
}

double sub_1AF389100(uint64_t a1, float a2)
{
  v2 = ((a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  v4 = *a1 * (v3 + v3);
  v5 = *(a1 + 4);
  if (v4 >= v5)
  {
    v6 = *(a1 + 4);
  }

  else
  {
    v6 = v4;
  }

  v7 = 12;
  if (v5 > v4)
  {
    v7 = 8;
  }

  *&result = vmlaq_n_f32(*(*(a1 + 16) + *(a1 + 8) * v6), vsubq_f32(*(*(a1 + 16) + *(a1 + v7) + (*(a1 + 8) * v6)), *(*(a1 + 16) + *(a1 + 8) * v6)), v4 - truncf(v4)).u64[0];
  return result;
}

double sub_1AF389184(uint64_t a1, double a2, double a3, double a4, float a5)
{
  v5 = ((*&a2 - *(a1 + 32)) * 0.5) + 0.5;
  v6 = vabds_f32(0.5, fminf(v5 - floorf(v5), 1.0));
  v7 = *a1;
  *&a2 = *a1 * (v6 + v6);
  v8 = *(a1 + 4);
  if (*&a2 >= v8)
  {
    v9 = *(a1 + 4);
  }

  else
  {
    v9 = *&a2;
  }

  v10 = 12;
  if (v8 > *&a2)
  {
    v10 = 8;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 8) * v9;
  LOBYTE(v7) = *(v11 + v12);
  LOBYTE(a5) = *(v11 + *(a1 + v10) + v12);
  *&a2 = (v7 * 0.0039216) + ((*&a2 - truncf(*&a2)) * -((v7 * 0.0039216) - (LODWORD(a5) * 0.0039216)));
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

double sub_1AF389220(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = ((a2.f32[0] - *(a1 + 32)) * 0.5) + 0.5;
  v10 = vabds_f32(0.5, fminf(v9 - floorf(v9), 1.0));
  a3.i32[0] = *a1;
  a2.f32[0] = *a1 * (v10 + v10);
  v11 = *(a1 + 4);
  if (a2.f32[0] >= v11)
  {
    v12 = *(a1 + 4);
  }

  else
  {
    v12 = a2.f32[0];
  }

  v13 = 12;
  if (v11 > a2.f32[0])
  {
    v13 = 8;
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 8) * v12;
  a3.i8[0] = *(v14 + v15);
  a5.i8[0] = *(v14 + *(a1 + v13) + v15);
  a3.f32[0] = (a3.u32[0] * 0.0039216) + ((a2.f32[0] - truncf(a2.f32[0])) * -((a3.u32[0] * 0.0039216) - (a5.u32[0] * 0.0039216)));
  a2.f32[0] = a3.f32[0] * a3.f32[0];
  a4.i32[0] = 1033798545;
  a5.f32[0] = a2.f32[0] * a2.f32[0];
  a6.i32[0] = 1024588407;
  a7.i32[0] = 979221581;
  v16 = vmlaq_f32(a7, a6, a3);
  a6.i32[0] = 1063398495;
  a8.i32[0] = 1056330697;
  v17 = vmlaq_f32(a8, a6, a3);
  v18 = vmlaq_f32(v16, a2, v17);
  a6.i32[0] = 1064027478;
  v17.i32[0] = -1083773218;
  v19 = vmlaq_f32(v17, a6, a3);
  a6.i32[0] = 1042024814;
  a9.i32[0] = -1089305042;
  v20 = vdupq_lane_s32(*&vmlaq_f32(v18, a5, vmlaq_f32(v19, a2, vmlaq_f32(a9, a6, a3))), 0);
  v21 = vmovl_s16(vdup_lane_s16(vmovn_s32(vcgeq_f32(a3, vdupq_n_s32(0x3D25AEE6u))), 0));
  v21.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v21), v20, vdupq_lane_s32(*&vmulq_f32(a3, a4), 0)).u64[0];
  return result;
}

double sub_1AF38935C(uint64_t a1, float a2)
{
  v2 = ((a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  v4 = *a1 * (v3 + v3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v4 >= v5)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    v7 = v4;
  }

  v8 = 12;
  if (v5 > v4)
  {
    v8 = 8;
  }

  v9 = *(a1 + 16);
  v10 = (v9 + v6 * v7);
  v11 = vld1q_dup_f32(v10);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vdupq_n_s32(0x3B808081u);
  v14 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v11, xmmword_1AFE42AA0), v12)), v13);
  v15 = (v9 + *(a1 + v8) + (v6 * v7));
  v16 = vld1q_dup_f32(v15);
  *&result = vmlaq_n_f32(v14, vmlaq_f32(vnegq_f32(v14), v13, vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v12))), v4 - truncf(v4)).u64[0];
  return result;
}

double sub_1AF389420(uint64_t a1, float a2)
{
  v2 = ((a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  v4 = *a1 * (v3 + v3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v4 >= v5)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    v7 = v4;
  }

  v8 = 12;
  if (v5 > v4)
  {
    v8 = 8;
  }

  v9 = *(a1 + 16);
  v10 = v6 * v7;
  v11 = (v9 + v6 * v7);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vdupq_n_s32(0x3B808081u);
  v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
  v16 = (v9 + *(a1 + v8) + v10);
  v17 = vld1q_dup_f32(v16);
  v18 = vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v13))), v4 - truncf(v4));
  v19 = vmulq_f32(v18, v18);
  v20 = vmulq_f32(v19, v19);
  v21 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v18), v19, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v18));
  v22 = vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v18), v19, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v18));
  v23 = vcgeq_f32(v18, vdupq_n_s32(0x3D25AEE6u));
  v23.i32[3] = 0;
  *&result = vbslq_s8(vcltzq_s32(v23), vmlaq_f32(v21, v20, v22), vmulq_f32(v18, vdupq_n_s32(0x3D9E8391u))).u64[0];
  return result;
}

double sub_1AF389598(uint64_t a1, float a2)
{
  v2 = ((a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  v4 = *a1 * (v3 + v3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v4 >= v5)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    v7 = v4;
  }

  v8 = 12;
  if (v5 > v4)
  {
    v8 = 8;
  }

  v9 = *(a1 + 16);
  v10 = v6 * v7;
  v11 = (v9 + v6 * v7);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vdupq_n_s32(0x3B808081u);
  v15 = (v9 + *(a1 + v8) + v10);
  v16 = vld1q_dup_f32(v15);
  v17 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
  v18 = vrev64q_s32(vmlaq_n_f32(v17, vmlaq_f32(vnegq_f32(v17), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v16, xmmword_1AFE42AA0), v13))), v4 - truncf(v4)));
  *&result = vextq_s8(v18, v18, 0xCuLL).u64[0];
  return result;
}

double sub_1AF389664(uint64_t a1, float a2)
{
  v2 = ((a2 - *(a1 + 32)) * 0.5) + 0.5;
  v3 = vabds_f32(0.5, fminf(v2 - floorf(v2), 1.0));
  v4 = *a1 * (v3 + v3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v4 >= v5)
  {
    v7 = *(a1 + 4);
  }

  else
  {
    v7 = v4;
  }

  v8 = 12;
  if (v5 > v4)
  {
    v8 = 8;
  }

  v9 = *(a1 + 16);
  v10 = v6 * v7;
  v11 = (v9 + v6 * v7);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0xFF000000FFLL;
  v13.i64[1] = 0xFF000000FFLL;
  v14 = vdupq_n_s32(0x3B808081u);
  v15 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v12, xmmword_1AFE42AA0), v13)), v14);
  v16 = (v9 + *(a1 + v8) + v10);
  v17 = vld1q_dup_f32(v16);
  v18 = vmlaq_n_f32(v15, vmlaq_f32(vnegq_f32(v15), v14, vcvtq_f32_u32(vandq_s8(vshlq_u32(v17, xmmword_1AFE42AA0), v13))), v4 - truncf(v4));
  v19 = vmulq_f32(v18, v18);
  v20 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vdupq_n_s32(0x3A5DBC4Du), vdupq_n_s32(0x3D11FA77u), v18), v19, vmlaq_f32(vdupq_n_s32(0x3EF653C9u), vdupq_n_s32(0x3F622C5Fu), v18)), vmulq_f32(v19, v19), vmlaq_f32(vmlaq_f32(vdupq_n_s32(0xBF66EEDE), vdupq_n_s32(0x3F6BC556u), v18), v19, vmlaq_f32(vdupq_n_s32(0xBF12862E), vdupq_n_s32(0x3E1C096Eu), v18)));
  v21 = vcgeq_f32(v18, vdupq_n_s32(0x3D25AEE6u));
  v21.i32[3] = 0;
  v22 = vbslq_s8(vcltzq_s32(v21), v20, vmulq_f32(v18, vdupq_n_s32(0x3D9E8391u)));
  v22.i32[3] = v18.i32[3];
  v23 = vrev64q_s32(v22);
  *&result = vextq_s8(v23, v23, 0xCuLL).u64[0];
  return result;
}

float vfx_sampler1d_make@<S0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  if ((a3 - 1) > 9)
  {
    v6 = 2;
  }

  else
  {
    v6 = dword_1AFE4834C[(a3 - 1)];
  }

  *a6 = a2;
  *(a6 + 4) = a2 - 1;
  *(a6 + 8) = v6;
  v7 = *(&off_1F24ECD80[40 * a5] + 10 * a4 + a3);
  *(a6 + 12) = v6 - v6 * a2;
  *(a6 + 16) = a1;
  *(a6 + 24) = v7;
  result = 0.5 / a2;
  *(a6 + 32) = result;
  return result;
}

char *sub_1AF389854(char *result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5, float a6)
{
  v9 = result;
  v10 = *a4;
  if (*a4 != a5 || *(a2 + 4 * (a5 - 1)) > a6)
  {
    v11 = 0;
    if (v10)
    {
      v12 = *a4;
      do
      {
        v13 = v11 + (v12 >> 1);
        v14 = v12 >> 1;
        v12 += ~(v12 >> 1);
        if (*(a2 + 4 * v13) > a6)
        {
          v12 = v14;
        }

        else
        {
          v11 = v13 + 1;
        }
      }

      while (v12);
    }

    if (v10 + 1 < a5)
    {
      v15 = v10 + 1;
    }

    else
    {
      v15 = a5;
    }

    *a4 = v15;
    v16 = v11;
    v17 = v15 + ~v11;
    if (v17)
    {
      memmove(&result[8 * v11 + 8], &result[8 * v11], 8 * (v15 + ~v11));
      result = memmove((a2 + 4 * v16 + 4), (a2 + 4 * v16), 4 * v17);
    }

    *&v9[8 * v16] = a3;
    *(a2 + 4 * v16) = a6;
  }

  return result;
}

uint64_t vfx_uniform_grid_destroy(uint64_t result)
{
  if (result)
  {
    sub_1AF38A6B8(result);

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

void vfx_uniform_grid_fill2d(void *a1, uint64_t *a2, unsigned int a3, float a4, float32x4_t a5, double a6, float32x4_t a7)
{
  *&a6 = a4;
  a5.i64[0] = *a2;
  if (a3 < 2)
  {
    v12 = a5;
  }

  else
  {
    v10 = a3 - 1;
    v11 = (a2 + 1);
    v12 = a5;
    do
    {
      v13 = *v11++;
      a7.i64[0] = v13;
      v12.i32[3] = 0;
      a7.i32[3] = 0;
      v12 = vminnmq_f32(v12, a7);
      a5.i32[3] = 0;
      a5 = vmaxnmq_f32(a5, a7);
      --v10;
    }

    while (v10);
  }

  sub_1AF389F84(a1, v12, a5, a6);
  sub_1AF389A78(a1, a2, a3);

  sub_1AF389AF8(a1);
}

double sub_1AF389A78(void *a1, uint64_t *a2, unsigned int a3)
{
  sub_1AF38AC3C(a1, a2, a3);
  v6 = a1[15];
  v7 = 0;
  v8 = a1[16] - 1;
  if (a1[16] != 1)
  {
    v9 = a1[15];
    v10 = a1[16] - 1;
    do
    {
      v11 = *v9;
      *v9++ = v7;
      v7 += v11;
      --v10;
    }

    while (v10);
  }

  *(v6 + 4 * v8) = v7;

  return sub_1AF38ACF8(a1, a2, a3);
}

void sub_1AF389AF8(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 248) - *(a1 + 240);
  v50 = (v2 >> 2);
  sub_1AF38A610((a1 + 288), v50);
  v3 = *(a1 + 288);
  v4 = *(a1 + 296);
  while (v3 != v4)
  {
    v3[1] = *v3;
    sub_1AF17A60C(v3, 0x32uLL);
    v3 += 3;
  }

  if ((v2 & 0x3FFFFFFFCLL) == 0)
  {
    return;
  }

  v5 = 0;
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  v7 = vaddq_s32(*a1, v6);
  v49 = v7;
  do
  {
    v8 = 0;
    v9 = 0;
    v51 = v5;
    v57[0] = *(*(a1 + 240) + 4 * v5);
    v10 = (*(a1 + 264) + 8 * v57[0]);
    v11 = *v10;
    v12 = *(a1 + 40);
    v13 = *v10 / v12;
    v14 = *v10 % v12;
    v16 = *a1;
    v15 = *a1;
    v16.i32[0] = v14 % v15;
    v16.i32[1] = v14 / v15;
    v16.i32[2] = v13;
    v17 = v10[1] + 1;
    v18 = -1;
    v19 = -1;
    do
    {
      v20 = vaddq_s32(xmmword_1AFE48380[v8], v16);
      v21 = vorrq_s8(vcltzq_s32(v20), vcgtq_s32(v20, v7));
      v21.i32[3] = v21.i32[2];
      if ((vmaxvq_u32(v21) & 0x80000000) == 0)
      {
        v22 = vmulq_s32(*(a1 + 32), v20);
        v23 = v22.i32[0] + v22.i32[1] + v22.i32[2];
        v24 = *(a1 + 120);
        v25 = *(v24 + 4 * v23);
        v26 = *(v24 + 4 * (v23 + 1));
        if (v25 != v26)
        {
          if (v11 == v23)
          {
            v25 += v17;
          }

          else if (v18 == v25)
          {
            v27 = v9 - 1;
LABEL_14:
            v28 = &v57[2 * v27 + 1];
            *v28 = v19;
            v28[1] = v26;
            v18 = v26;
            goto LABEL_15;
          }

          v27 = v9++;
          v19 = v25;
          goto LABEL_14;
        }
      }

LABEL_15:
      ++v8;
    }

    while (v8 != 14);
    if (v9)
    {
      v29 = 0;
      v30 = (*(a1 + 168) + 4 * v51);
      v31 = vld1q_dup_f32(v30);
      v32 = (*(a1 + 192) + 4 * v51);
      v33 = vld1q_dup_f32(v32);
      v54 = v33;
      v55 = v31;
      v34 = (*(a1 + 216) + 4 * v51);
      v35 = vld1q_dup_f32(v34);
      v33.f32[0] = *(a1 + 112) * *(a1 + 112);
      v52 = vdupq_lane_s32(*v33.f32, 0);
      v53 = v35;
      v36 = v9;
      do
      {
        v37 = &v57[2 * v29 + 1];
        v38 = v37[1];
        v39 = *v37 & 0xFFFFFFFC;
        if (v39 < v38)
        {
          v40 = ~(-1 << (*v37 & 3));
          do
          {
            v41 = v39 + 4;
            if ((v39 + 4 - v38) <= 0)
            {
              v42 = 0;
            }

            else
            {
              v42 = (0xF0u >> (4 - (v38 & 3))) & 0xF;
            }

            v43 = 4 * v39;
            v44 = vsubq_f32(*(*(a1 + 168) + v43), v55);
            v45 = vsubq_f32(*(*(a1 + 192) + v43), v54);
            v46 = vsubq_f32(*(*(a1 + 216) + v43), v53);
            v47 = vaddvq_s32(vandq_s8(vcltzq_s32(vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v45, v45), v44, v44), v46, v46), v52)), xmmword_1AFE20C60)) & ~(v42 | v40);
            while (v47)
            {
              v48 = __clz(__rbit32(v47));
              v47 &= ~(1 << v48);
              v56 = *(*(a1 + 240) + 4 * (v48 + v39));
              sub_1AF121C58((*(a1 + 288) + 24 * v57[0]), &v56);
              sub_1AF121C58((*(a1 + 288) + 24 * v56), v57);
            }

            v40 = 0;
            v39 += 4;
          }

          while (v41 < v38);
        }

        ++v29;
      }

      while (v29 != v36);
    }

    v5 = v51 + 1;
    v7 = v49;
  }

  while (v51 + 1 != v50);
}

void vfx_uniform_grid_fill3d(void *a1, float32x4_t *a2, unsigned int a3, float a4, double a5, double a6)
{
  *&a6 = a4;
  v9 = *a2;
  if (a3 < 2)
  {
    v12 = *a2;
  }

  else
  {
    v10 = a3 - 1;
    v11 = a2 + 1;
    v12 = *a2;
    do
    {
      v13 = *v11++;
      v14 = v13;
      v12.i32[3] = 0;
      v14.i32[3] = 0;
      v12 = vminnmq_f32(v12, v14);
      v9.i32[3] = 0;
      v9 = vmaxnmq_f32(v9, v14);
      --v10;
    }

    while (v10);
  }

  sub_1AF389F84(a1, v12, v9, a6);
  sub_1AF389F00(a1, a2, a3);

  sub_1AF389AF8(a1);
}

double sub_1AF389F00(void *a1, float32x4_t *a2, unsigned int a3)
{
  sub_1AF38ADB4(a1, a2, a3);
  v6 = a1[15];
  v7 = 0;
  v8 = a1[16] - 1;
  if (a1[16] != 1)
  {
    v9 = a1[15];
    v10 = a1[16] - 1;
    do
    {
      v11 = *v9;
      *v9++ = v7;
      v7 += v11;
      --v10;
    }

    while (v10);
  }

  *(v6 + 4 * v8) = v7;

  *&result = sub_1AF38AE6C(a1, a2, a3).n128_u64[0];
  return result;
}

void sub_1AF389F84(uint64_t a1, float32x4_t a2, float32x4_t a3, double a4)
{
  v5 = vmulq_f32(vsubq_f32(a3, a2), vdupq_n_s32(0x3C23D70Au));
  v6 = vsubq_f32(a2, v5);
  v7 = vaddq_f32(a3, v5);
  v8 = vsubq_f32(v7, v6);
  *&a4 = fmaxf(*&a4, fmaxf(fmaxf(v8.f32[0], v8.f32[2]), v8.f32[1]) * 0.0039062);
  v9 = vdupq_lane_s32(*&a4, 0);
  *(a1 + 112) = LODWORD(a4);
  *(a1 + 64) = v7;
  *(a1 + 80) = v9;
  __asm { FMOV            V1.4S, #1.0 }

  *(a1 + 96) = vdivq_f32(_Q1, v9);
  v19 = v9;
  v15 = vcvtq_s32_f32(vdivq_f32(v8, v9));
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vaddq_s32(v15, v16);
  *a1 = v17;
  *(a1 + 16) = v15;
  v16.i32[1] = v17.i32[0];
  v16.i32[2] = v17.i32[0] * v17.i32[1];
  *(a1 + 32) = v16;
  *(a1 + 48) = v6;
  v18 = v17.i32[0] * v17.i32[1] * v17.i32[2] + 1;
  *(a1 + 128) = v18;
  if (*(a1 + 136) >= v18)
  {
    bzero(*(a1 + 120), 4 * v18);
  }

  else
  {
    *(a1 + 136) = v18;
    free(*(a1 + 120));
    *(a1 + 120) = malloc_type_calloc(*(a1 + 128), 4uLL, 0x100004052888210uLL);
  }

  *(a1 + 64) = vmlaq_f32(*(a1 + 48), vcvtq_f32_s32(*a1), v19);

  sub_1AF1086DC((a1 + 144), 0);
}

uint64_t sub_1AF38A0F0(uint64_t a1, uint64_t a2, int a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v56 = v8.u32[1];
  v60 = v8.u32[3];
  v54 = v5;
  v55 = v9;
  v57 = v10;
  v58 = &v51[-v11];
  v59 = v12;
  LOBYTE(v60) = v13;
  v15 = *(v14 + 112);
  if (v15 * 0.5 > v7)
  {
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    v17 = vmlaq_f32(*(a1 + 48), *(a1 + 80), vaddq_f32(vcvtq_f32_s32(v6), v16));
    v16.i64[0] = -1;
    v16.i64[1] = -1;
    v18 = vbslq_s8(vcgtq_f32(v17, v5), v6, vaddq_s32(v6, v16));
    v18.i32[3] = 0;
    v19 = vmaxq_s32(v18, v8);
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    v21 = vbslq_s8(vcgtq_f32(v5, v17), v6, vaddq_s32(v6, v20));
    v22 = vaddq_s32(*a1, v16);
    v22.i32[3] = 0;
    v21.i32[3] = 0;
    v23 = vminq_s32(v22, v21);
    v24 = v19.i32[2];
    v25 = v23.i32[2];
    if (v19.i32[2] <= v23.i32[2])
    {
      result = 0;
      v27 = v19.i32[1];
      v28 = v23.i32[1];
      v29 = v19.i32[0];
      v30 = v23.i32[0];
      v31 = v23.i32[0] + 1;
      v52 = v19.i32[1];
      v53 = v51;
      while (v27 > v28)
      {
LABEL_5:
        v32 = v24++ == v25;
        v27 = v52;
        if (v32)
        {
          return result;
        }
      }

      while (1)
      {
        v33 = v29;
        if (v29 <= v30)
        {
          break;
        }

LABEL_12:
        v32 = v27++ == v28;
        if (v32)
        {
          goto LABEL_5;
        }
      }

      while (1)
      {
        v23.i64[0] = __PAIR64__(v27, v33);
        v23.i32[2] = v24;
        v34 = vmulq_s32(*(a1 + 32), v23);
        sub_1AF38A98C(a1, *(*(a1 + 120) + 4 * (v34.i32[0] + v34.i32[1] + v34.i32[2])), *(*(a1 + 120) + 4 * (v34.i32[0] + v34.i32[1] + v34.i32[2] + 1)), &v61, &v54);
        result = v61;
        if (a3)
        {
          if (v61 == a3)
          {
            return result;
          }
        }

        if (v31 == ++v33)
        {
          goto LABEL_12;
        }
      }
    }

    return 0;
  }

  if (v7 >= v15)
  {
    sub_1AF38A98C(a1, 0, (*(a1 + 248) - *(a1 + 240)) >> 2, &v61, &v54);
    return v61;
  }

  v35.i64[0] = -1;
  v35.i64[1] = -1;
  v36 = vaddq_s32(v6, v35);
  v36.i32[3] = 0;
  v37 = vmaxq_s32(v36, v8);
  v38 = vaddq_s32(*a1, v35);
  v38.i32[3] = 0;
  v39.i64[0] = 0x100000001;
  v39.i64[1] = 0x100000001;
  v40 = vaddq_s32(v6, v39);
  v40.i32[3] = 0;
  v41 = vminq_s32(v38, v40);
  v42 = v37.i32[2];
  v43 = v41.i32[2];
  if (v37.i32[2] > v41.i32[2])
  {
    return 0;
  }

  result = 0;
  v44 = v37.i32[1];
  v45 = v41.i32[1];
  v46 = v37.i32[0];
  v47 = v41.i32[0];
  v48 = v41.i32[0] + 1;
  v52 = v37.i32[1];
  v53 = v51;
  while (v44 > v45)
  {
LABEL_21:
    v32 = v42++ == v43;
    v44 = v52;
    if (v32)
    {
      return result;
    }
  }

  while (1)
  {
    v49 = v46;
    if (v46 <= v47)
    {
      break;
    }

LABEL_28:
    v32 = v44++ == v45;
    if (v32)
    {
      goto LABEL_21;
    }
  }

  while (1)
  {
    v37.i64[0] = __PAIR64__(v44, v49);
    v37.i32[2] = v42;
    v50 = vmulq_s32(*(a1 + 32), v37);
    sub_1AF38A98C(a1, *(*(a1 + 120) + 4 * (v50.i32[0] + v50.i32[1] + v50.i32[2])), *(*(a1 + 120) + 4 * (v50.i32[0] + v50.i32[1] + v50.i32[2] + 1)), &v61, &v54);
    result = v61;
    if (a3)
    {
      if (v61 == a3)
      {
        return result;
      }
    }

    if (v48 == ++v49)
    {
      goto LABEL_28;
    }
  }
}

uint64_t vfx_uniform_grid_apply(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (*(result + 288) + 24 * a2);
  if (((v3[1] - *v3) >> 2))
  {
    return (*(a3 + 16))(a3);
  }

  return result;
}

uint64_t vfx_uniform_grid_find(uint64_t a1, unsigned int a2, void *a3, unsigned int a4)
{
  v4 = *(a1 + 288) + 24 * a2;
  v5 = (*(v4 + 8) - *v4) >> 2;
  if (a3)
  {
    bzero(a3, 4 * a4);
    if (v5)
    {
      if (v5 >= a4)
      {
        v5 = a4;
      }

      else
      {
        v5 = v5;
      }

      memcpy(a3, *v4, 4 * v5);
    }
  }

  return v5;
}

__n128 vfx_uniform_grid_get_aabb(uint64_t a1, _OWORD *a2, __n128 *a3)
{
  *a2 = *(a1 + 48);
  result = *(a1 + 64);
  *a3 = result;
  return result;
}

uint64_t vfx_uniform_grid_for_each_cell(uint64_t result, uint64_t a2, double a3, int32x4_t a4)
{
  v4 = (*result * HIDWORD(*result) * *(result + 8));
  if (v4)
  {
    v6 = result;
    for (i = 0; i != v4; ++i)
    {
      v8 = *(*(v6 + 120) + 4 * i);
      v9 = *(*(v6 + 120) + 4 * i + 4);
      v10 = (v9 - v8);
      if (v9 != v8)
      {
        v11 = *(v6 + 40);
        v12 = i / v11;
        v13 = i % v11;
        v14 = *v6;
        a4.i32[0] = v13 % v14;
        a4.i32[1] = v13 / v14;
        a4.i32[2] = v12;
        v15 = *(v6 + 80);
        v16 = vmlaq_f32(*(v6 + 48), v15, vcvtq_f32_s32(a4));
        result = (*(a2 + 16))(a2, v10, v16, vaddq_f32(v15, v16));
      }
    }
  }

  return result;
}

void sub_1AF38A610(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1AF38AA78(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t sub_1AF38A6B8(uint64_t a1)
{
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  v9 = (a1 + 288);
  sub_1AF179AF8(&v9);
  v2 = *(a1 + 264);
  if (v2)
  {
    *(a1 + 272) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 216);
  if (v4)
  {
    *(a1 + 224) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    *(a1 + 200) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    *(a1 + 176) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    *(a1 + 152) = v7;
    operator delete(v7);
  }

  return a1;
}

char *sub_1AF38A760(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_1AF10A1D0();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_1AF10A1E0(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &a4[v5];
      v25 = &a4[v5 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

char *sub_1AF38A98C(char *result, unsigned int a2, unsigned int a3, unsigned int *a4, uint64_t a5)
{
  v5 = a3 - a2;
  if (a3 > a2)
  {
    v8 = result;
    v9 = 4 * a2;
    do
    {
      v10 = *(*(v8 + 21) + v9) - COERCE_FLOAT(*a5);
      v11 = *(*(v8 + 24) + v9) - COERCE_FLOAT(HIDWORD(*a5));
      v12 = ((v11 * v11) + (v10 * v10)) + ((*(*(v8 + 27) + v9) - COERCE_FLOAT(*(a5 + 8))) * (*(*(v8 + 27) + v9) - COERCE_FLOAT(*(a5 + 8))));
      if (v12 < *(a5 + 16))
      {
        v13 = *(a5 + 40);
        if (!v13)
        {
          v15 = *a4 + 1;
LABEL_10:
          *a4 = v15;
          goto LABEL_11;
        }

        v14 = *(*(v8 + 30) + v9);
        if (*(a5 + 44) != 1)
        {
          v16 = *a4;
          if (v16 >= v13)
          {
            return result;
          }

          *(*(a5 + 24) + 8 * v16) = v14;
          v15 = v16 + 1;
          goto LABEL_10;
        }

        result = sub_1AF389854(*(a5 + 24), *(a5 + 32), v14, a4, v13, v12);
      }

LABEL_11:
      v9 += 4;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AF38AA78(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1AF10A1D0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1AF38ABE4(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1AF343584(v18);
  }
}

void sub_1AF38ABE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF38AC3C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = a3;
  sub_1AF122E00((a1 + 264), a3);
  if (a3)
  {
    v8 = *(a1 + 120);
    v9 = (*(a1 + 264) + 4);
    do
    {
      v10 = *a2++;
      v7.i64[0] = v10;
      v11 = *(a1 + 16);
      v11.i32[3] = 0;
      v12 = vcvtq_s32_f32(vmulq_f32(*(a1 + 96), vsubq_f32(v7, *(a1 + 48))));
      v12.i32[3] = 0;
      v13 = vminq_s32(v11, v12);
      v13.i32[3] = 0;
      v7 = vmulq_s32(*(a1 + 32), vmaxq_s32(v13, 0));
      v14 = v7.i32[0] + v7.i32[1] + v7.i32[2];
      v15 = *(v8 + 4 * v14);
      *(v8 + 4 * v14) = v15 + 1;
      *(v9 - 1) = v14;
      *v9 = v15;
      v9 += 2;
      --v6;
    }

    while (v6);
  }
}

double sub_1AF38ACF8(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  sub_1AF121C28(a1 + 21, a3);
  sub_1AF121C28(a1 + 24, v6);
  sub_1AF121C28(a1 + 27, v6);
  sub_1AF121C28(a1 + 30, v6);
  if (a3)
  {
    v8 = 0;
    v9 = a1[15];
    v10 = a1[21];
    v11 = a1[24];
    v12 = a1[27];
    v13 = a1[30];
    v14 = (a1[33] + 4);
    do
    {
      v15 = *v14 + *(v9 + 4 * *(v14 - 1));
      result = *(a2 + 8 * v8);
      *(v10 + 4 * v15) = LODWORD(result);
      *(v11 + 4 * v15) = HIDWORD(result);
      *(v12 + 4 * v15) = 0;
      *(v13 + 4 * v15) = v8++;
      v14 += 2;
    }

    while (v6 != v8);
  }

  return result;
}

void sub_1AF38ADB4(uint64_t a1, float32x4_t *a2, unsigned int a3)
{
  v6 = a3;
  sub_1AF122E00((a1 + 264), a3);
  if (a3)
  {
    v7 = *(a1 + 120);
    v8 = (*(a1 + 264) + 4);
    do
    {
      v9 = *a2++;
      v10 = *(a1 + 16);
      v10.i32[3] = 0;
      v11 = vcvtq_s32_f32(vmulq_f32(vsubq_f32(v9, *(a1 + 48)), *(a1 + 96)));
      v11.i32[3] = 0;
      v12 = vminq_s32(v10, v11);
      v12.i32[3] = 0;
      v13 = vmulq_s32(*(a1 + 32), vmaxq_s32(v12, 0));
      v14 = v13.i32[0] + v13.i32[1] + v13.i32[2];
      v15 = *(v7 + 4 * v14);
      *(v7 + 4 * v14) = v15 + 1;
      *(v8 - 1) = v14;
      *v8 = v15;
      v8 += 2;
      --v6;
    }

    while (v6);
  }
}

__n128 sub_1AF38AE6C(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  sub_1AF121C28(a1 + 21, a3);
  sub_1AF121C28(a1 + 24, v6);
  sub_1AF121C28(a1 + 27, v6);
  sub_1AF121C28(a1 + 30, v6);
  if (a3)
  {
    v8 = 0;
    v9 = a1[15];
    v10 = a1[21];
    v11 = a1[24];
    v12 = a1[27];
    v13 = a1[30];
    v14 = (a1[33] + 4);
    do
    {
      result = *(a2 + 16 * v8);
      v15 = *v14 + *(v9 + 4 * *(v14 - 1));
      *(v10 + 4 * v15) = result.n128_u32[0];
      *(v11 + 4 * v15) = result.n128_u32[1];
      *(v12 + 4 * v15) = result.n128_u32[2];
      *(v13 + 4 * v15) = v8++;
      v14 += 2;
    }

    while (v6 != v8);
  }

  return result;
}

void radix_sort_float_with_input_indices_0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v43 = *MEMORY[0x1E69E9840];
  bzero(v42, 0x6000uLL);
  if (v3)
  {
    if (v7)
    {
      v12 = v7;
      v13 = v3;
      do
      {
        v14 = *v13++;
        v15 = ((v11[v14] >> 31) | 0x80000000) ^ v11[v14];
        ++v42[v15 & 0x7FF];
        ++v42[((v15 >> 11) & 0x7FF) + 2048];
        ++v42[(v15 >> 22) + 4096];
        --v12;
      }

      while (v12);
    }
  }

  else if (v7)
  {
    v16 = v7;
    v17 = v11;
    do
    {
      v18 = *v17++;
      v19 = ((v18 >> 31) | 0x80000000) ^ v18;
      ++v42[v19 & 0x7FF];
      ++v42[((v19 >> 11) & 0x7FF) + 2048];
      ++v42[(v19 >> 22) + 4096];
      --v16;
    }

    while (v16);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = &v42[v20];
    v25 = v42[v20];
    *v24 = v21;
    v21 += v25;
    v26 = v42[v20 + 2048];
    v24[2048] = v22;
    v22 += v26;
    v27 = v42[v20 + 4096];
    v24[4096] = v23;
    v23 += v27;
    ++v20;
  }

  while (v20 != 2048);
  *v9 = 666;
  if (v3)
  {
    if (!v7)
    {
      return;
    }

    v28 = v7;
    do
    {
      v29 = *v3++;
      v30 = v42[(v11[v29] ^ (v11[v29] >> 31)) & 0x7FF];
      v42[(v11[v29] ^ (v11[v29] >> 31)) & 0x7FF] = v30 + 1;
      v9[v30] = v29;
      --v28;
    }

    while (v28);
  }

  else
  {
    if (!v7)
    {
      return;
    }

    for (i = 0; i != v7; v9[v32] = i++)
    {
      v32 = v42[(v11[i] ^ (v11[i] >> 31)) & 0x7FF];
      v42[(v11[i] ^ (v11[i] >> 31)) & 0x7FF] = v32 + 1;
    }
  }

  v33 = v7;
  v34 = v7;
  v35 = v9;
  do
  {
    v36 = *v35++;
    v37 = ((v11[v36] ^ (v11[v36] >> 31)) >> 11) & 0x7FF;
    v38 = v42[v37 + 2048];
    v42[v37 + 2048] = v38 + 1;
    v5[v38] = v36;
    --v34;
  }

  while (v34);
  do
  {
    v39 = *v5++;
    v40 = (((v11[v39] >> 31) | 0x80000000) ^ v11[v39]) >> 22;
    v41 = v42[v40 + 4096];
    v42[v40 + 4096] = v41 + 1;
    v9[v41] = v39;
    --v33;
  }

  while (v33);
}

void radix_sort_float_destructive(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v38 = *MEMORY[0x1E69E9840];
  v10 = v4;
  bzero(v37, 0x6000uLL);
  if (v5)
  {
    v11 = v10;
    v12 = v9;
    do
    {
      v13 = *v12++;
      v14 = ((v13 >> 31) | 0x80000000) ^ v13;
      ++v37[v14 & 0x7FF];
      ++v37[((v14 >> 11) & 0x7FF) + 2048];
      ++v37[(v14 >> 22) + 4096];
      --v11;
    }

    while (v11);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = &v3[v5];
  do
  {
    v20 = &v37[v15];
    v21 = v37[v15];
    *v20 = v16;
    v16 += v21;
    v22 = v37[v15 + 2048];
    v20[2048] = v17;
    v17 += v22;
    v23 = v37[v15 + 4096];
    v20[4096] = v18;
    v18 += v23;
    ++v15;
  }

  while (v15 != 2048);
  *v7 = 666;
  if (v5)
  {
    v24 = 0;
    do
    {
      v25 = ((v9[v24] >> 31) | 0x80000000) ^ v9[v24];
      v26 = v37[v25 & 0x7FF];
      v37[v25 & 0x7FF] = v26 + 1;
      v7[v26] = v24;
      v19[v26] = v25;
      ++v24;
    }

    while (v10 != v24);
    v27 = v10;
    v28 = v7;
    do
    {
      v29 = (*v19 >> 11) & 0x7FF;
      v30 = v37[v29 + 2048];
      v37[v29 + 2048] = v30 + 1;
      v31 = *v28++;
      v3[v30] = v31;
      v32 = *v19++;
      v9[v30] = v32;
      --v27;
    }

    while (v27);
    do
    {
      v33 = *v9++;
      v34 = (v33 >> 20) & 0xFFC;
      v35 = *(&v37[4096] + v34);
      *(&v37[4096] + v34) = v35 + 1;
      v36 = *v3++;
      v7[v35] = v36;
      --v10;
    }

    while (v10);
  }
}

uint64_t reverse_order(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      *(result + 4 * *(a2 + 4 * i)) = i;
    }
  }

  return result;
}

char *ordered_memcpy(char *result, uint64_t a2, uint64_t a3, size_t __n, unint64_t a5)
{
  if (a5)
  {
    v9 = result;
    v10 = 0;
    v11 = 1;
    do
    {
      result = memcpy(&v9[v10 * __n], (a2 + *(a3 + 4 * v10) * __n), __n);
      v10 = v11++;
    }

    while (v10 < a5);
  }

  return result;
}

void CGBitmapContext_fixIncorrectPremultiply(CGContext *a1)
{
  v71 = *MEMORY[0x1E69E9840];
  Width = CGBitmapContextGetWidth(a1);
  Height = CGBitmapContextGetHeight(a1);
  Data = CGBitmapContextGetData(a1);
  if (Data)
  {
    v5 = Data;
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(a1);
    v7 = CGBitmapContextGetBitsPerPixel(a1) / BitsPerComponent * BitsPerComponent;
    BytesPerRow = CGBitmapContextGetBytesPerRow(a1);
    if ((v7 & 0xFFFFFFFFFFFFFFF8) == 0x20)
    {
      v9 = BytesPerRow;
      v10 = 0;
      v11 = xmmword_1AFE48460;
      v12 = xmmword_1AFE48470;
      v13 = xmmword_1AFE202D0;
      v14 = xmmword_1AFE202E0;
      v50 = vdupq_n_s32(0x437F0000u);
      do
      {
        v51 = v14;
        v52 = v12;
        v49 = v13;
        v53 = v11;
        v54 = vdivq_f32(vcvtq_f32_u32(v12), v50);
        v57 = vdivq_f32(vcvtq_f32_u32(v11), v50);
        v58 = vdivq_f32(vcvtq_f32_u32(v13), v50);
        v62 = vdivq_f32(vcvtq_f32_u32(v14), v50);
        v66 = powf(v62.f32[1], 0.45455);
        v15.f32[0] = powf(v62.f32[0], 0.45455);
        v15.f32[1] = v66;
        v67 = v15;
        v16 = powf(v62.f32[2], 0.45455);
        v17 = v67;
        v17.f32[2] = v16;
        v68 = v17;
        v18 = powf(v62.f32[3], 0.45455);
        v19 = v68;
        v19.f32[3] = v18;
        v69 = v19;
        v62.i32[0] = powf(v58.f32[1], 0.45455);
        v20.f32[0] = powf(v58.f32[0], 0.45455);
        v20.i32[1] = v62.i32[0];
        v63 = v20;
        v21 = powf(v58.f32[2], 0.45455);
        v22 = v63;
        v22.f32[2] = v21;
        v64 = v22;
        v23 = powf(v58.f32[3], 0.45455);
        v24 = v64;
        v24.f32[3] = v23;
        v65 = v24;
        v58.i32[0] = powf(v54.f32[1], 0.45455);
        v25.f32[0] = powf(v54.f32[0], 0.45455);
        v25.i32[1] = v58.i32[0];
        v59 = v25;
        v26 = powf(v54.f32[2], 0.45455);
        v27 = v59;
        v27.f32[2] = v26;
        v60 = v27;
        v28 = powf(v54.f32[3], 0.45455);
        v29 = v60;
        v29.f32[3] = v28;
        v61 = v29;
        v54.i32[0] = powf(v57.f32[1], 0.45455);
        v30.f32[0] = powf(v57.f32[0], 0.45455);
        v30.i32[1] = v54.i32[0];
        v55 = v30;
        v31 = powf(v57.f32[2], 0.45455);
        v32 = v55;
        v32.f32[2] = v31;
        v56 = v32;
        v33 = powf(v57.f32[3], 0.45455);
        v34 = v56;
        v34.f32[3] = v33;
        v35.i64[0] = 0x3F0000003F000000;
        v35.i64[1] = 0x3F0000003F000000;
        v36 = vmlaq_f32(v35, v50, v34);
        v34.i64[0] = 0x3F0000003F000000;
        v34.i64[1] = 0x3F0000003F000000;
        v37.i64[0] = 0x3F0000003F000000;
        v37.i64[1] = 0x3F0000003F000000;
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
        *&v70[v10] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v38, v50, v69)), vcvtq_s32_f32(vmlaq_f32(v37, v50, v65))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_f32(v34, v50, v61)), vcvtq_s32_f32(v36)));
        v10 += 16;
        v39.i64[0] = 0x1000000010;
        v39.i64[1] = 0x1000000010;
        v14 = vaddq_s32(v51, v39);
        v13 = vaddq_s32(v49, v39);
        v12 = vaddq_s32(v52, v39);
        v11 = vaddq_s32(v53, v39);
      }

      while (v10 != 256);
      if (Height)
      {
        v40 = 0;
        v41.i64[0] = 0xFF000000FFLL;
        v41.i64[1] = 0xFF000000FFLL;
        do
        {
          v42 = Width;
          v43 = v5;
          if (Width)
          {
            do
            {
              v44 = *v43;
              if (HIBYTE(*v43))
              {
                v45 = v44 >> 24;
                if (HIBYTE(*v43) != 255)
                {
                  v46 = vshlq_u32(vdupq_n_s32(v44), xmmword_1AFE42AA0);
                  v47 = vmulq_s32(vdupq_n_s32(v70[v45]), vandq_s8(v46, v41));
                  v47.i32[0] /= v45;
                  v47.i32[1] /= v45;
                  v47.i32[2] /= v45;
                  v47.i32[3] = v46.i32[3];
                  v48 = vshlq_u32(vandq_s8(v47, v41), xmmword_1AFE48480);
                  *v48.i8 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
                  *v43 = v48.i32[0] | v48.i32[1];
                }
              }

              ++v43;
              --v42;
            }

            while (v42);
          }

          ++v40;
          v5 = (v5 + v9);
        }

        while (v40 != Height);
      }
    }
  }
}

size_t CGBitmapContext_unpremultiply(CGContext *a1)
{
  Width = CGBitmapContextGetWidth(a1);
  Height = CGBitmapContextGetHeight(a1);
  result = CGBitmapContextGetData(a1);
  if (result)
  {
    v5 = result;
    result = CGBitmapContextGetBitsPerComponent(a1);
    v6 = result;
    if (result == 32 || result == 16)
    {
      result = CGBitmapContextGetBitsPerPixel(a1);
      if (result / v6 == 4)
      {
        result = CGBitmapContextGetBytesPerRow(a1);
        if (Height)
        {
          v9 = 0;
          v10 = Width;
          v11 = v5 + 8;
          v12 = 4 * Width;
          v13 = vdupq_n_s32(0x7FE000u);
          v14 = vdupq_n_s32(0xF800000u);
          v15.i64[0] = 0x8000000080000000;
          v15.i64[1] = 0x8000000080000000;
          v16.i64[0] = 0x3800000038000000;
          v16.i64[1] = 0x3800000038000000;
          do
          {
            if (v6 == 16)
            {
              if (v10)
              {
                v17 = 0;
                do
                {
                  v18 = (v5 + result * v9 + 2 * (v17 & 0xFFFFFFFC));
                  v19 = vshll_n_u16(*v18, 0xDuLL);
                  v20 = vorrq_s8(vandq_s8(vmovl_s16(*v18), v15), vandq_s8(v19, v13));
                  v7 = vaddq_s32(vorrq_s8(vandq_s8(v19, v14), v20), v16);
                  *v20.i32 = fmaxf(v7.f32[3], 0.000015266);
                  v8 = vdivq_f32(v7, vdupq_lane_s32(*v20.i8, 0));
                  v21 = HIWORD(v8.i32[0]) & 0x8000;
                  v22 = (v8.i32[0] >> 23);
                  v23 = v22 - 112;
                  v24 = v21 | 0x7BFF;
                  if ((v8.i32[0] & 0x7FFFFF) != 0)
                  {
                    LOWORD(v25) = v21 + 1;
                  }

                  else
                  {
                    v25 = HIWORD(v8.i32[0]) & 0x8000;
                  }

                  v26 = v25 | 0x7C00;
                  v27 = v22 - 113;
                  if (v22 == 255)
                  {
                    v24 = v26;
                  }

                  if (v22 >= 0x71)
                  {
                    v28 = v24;
                  }

                  else
                  {
                    v28 = v8.i16[1] & 0x8000;
                  }

                  v29 = HIWORD(v8.i32[0]) & 0x8000 | (v8.i32[0] >> 13) & 0x3FF | (v23 << 10);
                  v30 = HIWORD(v8.i32[1]) & 0x8000;
                  v31 = (v8.i32[1] >> 23);
                  if (v27 > 0x1D)
                  {
                    LOWORD(v29) = v28;
                  }

                  v32 = v30 | 0x7BFF;
                  if ((v8.i32[1] & 0x7FFFFF) != 0)
                  {
                    LOWORD(v33) = v30 + 1;
                  }

                  else
                  {
                    v33 = HIWORD(v8.i32[1]) & 0x8000;
                  }

                  v34 = v33 | 0x7C00;
                  if (v31 == 255)
                  {
                    v32 = v34;
                  }

                  if (v31 < 0x71)
                  {
                    v32 = v8.i16[3] & 0x8000;
                  }

                  v35 = HIWORD(v8.i32[1]) & 0x8000 | (v8.i32[1] >> 13) & 0x3FF | ((v31 - 112) << 10);
                  if (v31 - 113 > 0x1D)
                  {
                    LOWORD(v35) = v32;
                  }

                  v36 = HIWORD(v8.i32[2]) & 0x8000;
                  v37 = (v8.i32[2] >> 23);
                  v38 = v37 - 112;
                  v39 = v36 | 0x7BFF;
                  if ((v8.i32[2] & 0x7FFFFF) != 0)
                  {
                    LOWORD(v40) = v36 + 1;
                  }

                  else
                  {
                    v40 = HIWORD(v8.i32[2]) & 0x8000;
                  }

                  v41 = v40 | 0x7C00;
                  if (v37 == 255)
                  {
                    v39 = v41;
                  }

                  v42 = v37 - 113;
                  if (v37 >= 0x71)
                  {
                    v43 = v39;
                  }

                  else
                  {
                    v43 = v8.i16[5] & 0x8000;
                  }

                  v44 = HIWORD(v8.i32[2]) & 0x8000 | (v8.i32[2] >> 13) & 0x3FF | (v38 << 10);
                  v18->i16[0] = v29;
                  v45 = HIWORD(v7.i32[3]) & 0x8000;
                  v46 = (v7.i32[3] >> 23);
                  if (v42 > 0x1D)
                  {
                    LOWORD(v44) = v43;
                  }

                  if ((v7.i32[3] & 0x7FE000) != 0)
                  {
                    LOWORD(v47) = v45 + 1;
                  }

                  else
                  {
                    v47 = HIWORD(v7.i32[3]) & 0x8000;
                  }

                  v48 = v47 | 0x7C00;
                  v18->i16[1] = v35;
                  if (v46 == 255)
                  {
                    v49 = v48;
                  }

                  else
                  {
                    v49 = v45 | 0x7BFF;
                  }

                  if (v46 < 0x71)
                  {
                    v49 = v7.i16[7] & 0x8000;
                  }

                  v18->i16[2] = v44;
                  if (v46 - 113 <= 0x1D)
                  {
                    v49 = v7.i16[7] & 0x8000 | (v7.i32[3] >> 13) & 0x3FF | ((v46 - 112) << 10);
                  }

                  v18->i16[3] = v49;
                  v17 += 4;
                }

                while (v12 != v17);
              }
            }

            else if (v10)
            {
              v50 = v10;
              v51 = v11;
              do
              {
                v7.i64[0] = *(v51 - 8);
                v7.i32[2] = *v51;
                v8.f32[0] = fmaxf(*(v51 + 4), 0.00000011921);
                v8 = vdupq_lane_s32(*v8.f32, 0);
                v7 = vdivq_f32(v7, v8);
                *(v51 - 8) = v7.i64[0];
                *v51 = v7.i32[2];
                v51 += 16;
                --v50;
              }

              while (v50);
            }

            ++v9;
            v11 += result;
          }

          while (v9 != Height);
        }
      }
    }
  }

  return result;
}

uint64_t MurmurHash2(unsigned __int8 *a1, int a2, int a3)
{
  v3 = a3 ^ a2;
  if (a2 < 4)
  {
    v5 = a2;
  }

  else
  {
    do
    {
      v4 = *a1;
      a1 += 4;
      v3 = (1540483477 * ((1540483477 * v4) ^ ((1540483477 * v4) >> 24))) ^ (1540483477 * v3);
      v5 = a2 - 4;
      v6 = a2 > 7;
      a2 -= 4;
    }

    while (v6);
  }

  switch(v5)
  {
    case 1:
      goto LABEL_10;
    case 2:
LABEL_9:
      v3 ^= a1[1] << 8;
LABEL_10:
      v3 = 1540483477 * (v3 ^ *a1);
      return (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
    case 3:
      v3 ^= a1[2] << 16;
      goto LABEL_9;
  }

  return (1540483477 * (v3 ^ (v3 >> 13))) ^ ((1540483477 * (v3 ^ (v3 >> 13))) >> 15);
}

_DWORD *memset_pattern4_nocache(_DWORD *result, int *a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = *a2;
    v4 = 1;
    do
    {
      *result++ = v3;
    }

    while (a3 >> 2 > v4++);
  }

  return result;
}

void *memset_pattern8_nocache(void *result, uint64_t *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = *a2;
    v4 = 1;
    do
    {
      *result++ = v3;
    }

    while (a3 >> 3 > v4++);
  }

  return result;
}

void memset_pattern16_nocache(_OWORD *a1, __int128 *a2, size_t a3)
{
  if ((a1 & 0xF) != 0)
  {
    memset_pattern16(a1, a2, a3);
  }

  else if (a3 >= 0x10)
  {
    v3 = *a2;
    v4 = 1;
    do
    {
      *a1++ = v3;
    }

    while (a3 >> 4 > v4++);
  }
}

uint64_t memswap_pattern4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    v3 = 0;
    do
    {
      v4 = *(a2 + 4 * v3);
      *(a2 + 4 * v3) = *(result + 4 * v3);
      *(result + 4 * v3++) = v4;
    }

    while (a3 >> 2 > v3);
  }

  return result;
}

uint64_t memswap_pattern8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = 0;
    do
    {
      v4 = *(a2 + 8 * v3);
      *(a2 + 8 * v3) = *(result + 8 * v3);
      *(result + 8 * v3++) = v4;
    }

    while (a3 >> 3 > v3);
  }

  return result;
}

__n128 memswap_pattern16(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x10)
  {
    v3 = 0;
    do
    {
      result = *(a2 + 16 * v3);
      *(a2 + 16 * v3) = *(a1 + 16 * v3);
      *(a1 + 16 * v3++) = result;
    }

    while (a3 >> 4 > v3);
  }

  return result;
}

uint64_t ecs_sysctl_get_int_value(const char *a1)
{
  v5 = 0;
  v4 = 4;
  v1 = sysctlbyname(a1, &v5, &v4, 0, 0);
  v2 = v5;
  if (v1)
  {
    return 0;
  }

  return v2;
}

void *sub_1AF38BEA0(void *a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v15 = 0;
  v8 = objc_msgSend_newLibraryWithSource_options_error_(a1, a2, a3, a4, &v15);
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    if (*a5)
    {
      v11 = v9;
      *a5 = v10;
    }

    v12 = v8;
  }

  else if (a6)
  {
    v13 = v9;
    *a6 = v10;
  }

  return v8;
}

void sub_1AF38C160(uint64_t a1, uint64_t a2)
{
  if (a2 && a1 + 544 != a2)
  {
    sub_1AF38C160();

    free((a2 - 32));
  }
}

char *ecs_stack_allocator_create(uint64_t a1)
{
  v1 = (a1 + 31) & 0xFFFFFFFFFFFFFFE0;
  result = malloc_type_aligned_alloc(0x20uLL, (v1 + 575) & 0xFFFFFFFFFFFFFFE0, 0x100004077774924uLL);
  if (result)
  {
    *result = result + 544;
    *(result + 1) = v1;
    *(result + 2) = 0;
    *(result + 134) = 0;
    v3 = result + 32;
    v4 = 32;
    do
    {
      *(v3 - 1) = 0;
      *v3 = 0;
      v3 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

void ecs_stack_allocator_destroy(uint64_t *a1)
{
  sub_1AF38C160(a1, *a1);

  free(a1);
}

void *ecs_stack_allocator_allocate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + *(a1 + 16) - 1) & -a3;
  v5 = v4 + a2;
  if ((v4 + a2) <= *(a1 + 8))
  {
    *(a1 + 16) = v5;
    return (*a1 + v4);
  }

  else
  {
    v7 = (v5 - 1) | ((v5 - 1) >> 1) | (((v5 - 1) | ((v5 - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | (v8 >> 16);
    v10 = v9 + 1;
    v11 = malloc_type_aligned_alloc(0x20uLL, (v9 & 0xFFFFFFFFFFFFFFE0) + 64, 0x100004077774924uLL);
    *v11 = *a1;
    result = v11 + 4;
    *a1 = result;
    *(a1 + 8) = v10;
    *(a1 + 16) = a2;
    v13 = *(a1 + 536);
    if (v13)
    {
      v14 = (a1 + 32);
      do
      {
        *(v14 - 1) = result;
        *v14 = 0;
        v14 += 4;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

void *ecs_stack_allocator_deallocate(void *result, unint64_t a2, unint64_t a3)
{
  v3 = result[2];
  if (v3 >= a3 && ((*result + v3 - a3) ^ a2) <= 7)
  {
    result[2] = a2 - *result;
  }

  return result;
}

uint64_t ecs_stack_allocator_push_snapshot(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 536);
  v3 = result + 16 * v2;
  *(v3 + 24) = *result;
  *(v3 + 32) = v1;
  *(result + 536) = v2 + 1;
  return result;
}

uint64_t ecs_stack_allocator_pop_snapshot(uint64_t result)
{
  v1 = *(result + 536);
  if (v1)
  {
    v2 = v1 - 1;
    *(result + 536) = v2;
    *(result + 16) = *(result + 16 * v2 + 32);
  }

  return result;
}

void *vfx_allocate_memory_entry@<X0>(size_t a1@<X0>, size_t a2@<X1>, task_t a3@<W2>, uint64_t a4@<X8>)
{
  address = 0;
  size = (a1 + a2 - 1) & -a2;
  *object_handle = 0;
  v8 = MEMORY[0x1E69E9A60];
  if (!mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, 0, 401411, object_handle, 0))
  {
    if (mach_vm_map(*v8, &address, size, 0, 1442840579, object_handle[0], 0, 0, 3, 3, 1u))
    {
      v9 = address;
    }

    else
    {
      if (a3 - 1 <= 0xFFFFFFFD)
      {
        if (mach_memory_entry_ownership(object_handle[0], a3, 4, 0))
        {
          v10 = sub_1AF0D5194();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDFB55C(v10);
          }
        }

        else
        {
          mach_port_deallocate(*v8, object_handle[0]);
          object_handle[0] = 0;
        }
      }

      result = MEMORY[0x1B271E2A0](*v8, address, 0, &object_handle[1]);
      v9 = address;
      if (!result)
      {
        v12 = 0;
        v13 = size;
        *a4 = address;
        *(a4 + 8) = v13;
        *(a4 + 16) = object_handle[0];
        goto LABEL_16;
      }
    }

    if (v9)
    {
      mach_vm_deallocate(*v8, v9, size);
    }
  }

  if (object_handle[0])
  {
    mach_port_deallocate(*v8, object_handle[0]);
  }

  result = malloc_type_aligned_alloc(a2, a1, 0x77EA04A2uLL);
  if (!result)
  {
    abort();
  }

  *a4 = result;
  *(a4 + 8) = a1;
  v12 = 1;
  *(a4 + 16) = 0;
LABEL_16:
  *(a4 + 20) = v12;
  return result;
}

void vfx_deallocate_memory_entry(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 20) == 1)
  {
    free(*a1);
  }

  else
  {
    if (v2)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v2, *(a1 + 8));
    }

    v3 = *(a1 + 16);
    if (v3 + 1 >= 2)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);
    }
  }

  *(a1 + 16) = 0;
  *a1 = 0;
}

uint64_t vfx_attribute_memory(uint64_t result, task_t a2)
{
  if ((*(result + 20) & 1) == 0)
  {
    if (a2)
    {
      v2 = result;
      result = *(result + 16);
      if (result)
      {
        if (mach_memory_entry_ownership(result, a2, 4, 0))
        {
          v3 = sub_1AF0D5194();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDFB55C(v3);
          }
        }

        result = mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v2 + 16));
        *(v2 + 16) = 0;
      }
    }
  }

  return result;
}

void *sub_1AF38C6BC(const char *a1)
{
  if (sel_isEqual(a1, "uv0") || sel_isEqual(a1, sel__screenSize))
  {
    return &unk_1F24ED000;
  }

  if (sel_isEqual(a1, sel_localCoordinates) || sel_isEqual(a1, sel_worldCoordinates) || sel_isEqual(a1, sel_localNormal) || sel_isEqual(a1, sel_worldNormal))
  {
    return &unk_1F24ED020;
  }

  if (sel_isEqual(a1, sel_modelTransform))
  {
    return &unk_1F24ED040;
  }

  if (sel_isEqual(a1, sel_projectPoint_) || sel_isEqual(a1, sel_unprojectPoint_))
  {
    return &unk_1F24ED060;
  }

  if (sel_isEqual(a1, sel_localTranslateBy_))
  {
    return &unk_1F24ED080;
  }

  if (sel_isEqual(a1, sel_localRotateBy_))
  {
    return &unk_1F24ED0A0;
  }

  if (sel_isEqual(a1, sel_convertPosition_toNode_) || sel_isEqual(a1, sel_convertPosition_fromNode_))
  {
    return &unk_1F24ED0C0;
  }

  if (sel_isEqual(a1, sel_rotateBy_aroundTarget_))
  {
    return &unk_1F24ED0E0;
  }

  if (sel_isEqual(a1, sel_applyForce_atPosition_impulse_))
  {
    return &unk_1F24ED100;
  }

  if (sel_isEqual(a1, sel_applyTorque_impulse_))
  {
    return &unk_1F24ED120;
  }

  return 0;
}

id sub_1AF38C890(int a1, id a2, SEL a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = [a2 a3];
  *a6 = v8;
  return result;
}

id sub_1AF38C8C0(int a1, id a2, SEL a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  result = [a2 a3];
  *a6 = v8;
  return result;
}

id sub_1AF38C8F0(int a1, id a2, SEL a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  result = [a2 a3];
  *a6 = v8;
  a6[1] = v9;
  a6[2] = v10;
  a6[3] = v11;
  return result;
}

id sub_1AF38C924(int a1, id a2, SEL a3, double **a4, uint64_t a5, _OWORD *a6)
{
  result = [a2 a3];
  *a6 = v8;
  return result;
}

id sub_1AF38C984(int a1, id a2, SEL a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  result = [a2 a3];
  *a6 = v8;
  return result;
}

_BYTE *sub_1AF38CA1C(void *a1, const char *a2, uint64_t *a3, uint64_t a4, void **a5)
{
  v10 = sub_1AF38C6BC(a2);
  if (v10)
  {
    v13 = *(v10 + 2);

    return v13();
  }

  else
  {
    v15 = objc_msgSend_methodSignatureForSelector_(a1, v11, a2, v12);
    v18 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x1E695DF50], v16, v15, v17);
    objc_msgSend_setTarget_(v18, v19, a1, v20);
    objc_msgSend_setSelector_(v18, v21, a2, v22);
    if (a4)
    {
      v26 = 2;
      do
      {
        v27 = *a3++;
        objc_msgSend_setArgument_atIndex_(v18, v23, v27, v26++);
        --a4;
      }

      while (a4);
    }

    result = objc_msgSend_invoke(v18, v23, v24, v25);
    if (a5)
    {
      result = objc_msgSend_methodReturnLength(v15, v28, v29, v30);
      if (result)
      {
        objc_msgSend_getReturnValue_(v18, v31, a5, v32);
        result = objc_msgSend_methodReturnType(v15, v33, v34, v35);
        if (result)
        {
          if (*result == 64)
          {
            v36 = *a5;

            return v36;
          }
        }
      }
    }
  }

  return result;
}

uint64_t vfx_setOwnerWithIdentity(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setResponsibleProcess_(v5, v6, a2, v7);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_setOwnerWithIdentity_(v5, v8, a3, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t VFXMTLTextureTypeGetArrayElementType(uint64_t a1)
{
  v1 = 5;
  v2 = 2;
  if (a1 != 3)
  {
    v2 = a1;
  }

  if (a1 != 6)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t VFXMTLPixelFormatSRGBVariant(uint64_t result)
{
  if (result > 499)
  {
    if (result > 506)
    {
      if (result <= 509)
      {
        if (result == 507)
        {
          return 527;
        }

        else if (result == 508)
        {
          return 528;
        }

        else
        {
          return 529;
        }
      }

      else if (result > 551)
      {
        if (result == 552)
        {
          return 553;
        }

        else if (result == 554)
        {
          return 555;
        }
      }

      else if (result == 510)
      {
        return 530;
      }

      else if (result == 550)
      {
        return 551;
      }
    }

    else if (result <= 502)
    {
      if (result == 500)
      {
        return 520;
      }

      else if (result == 501)
      {
        return 521;
      }

      else
      {
        return 522;
      }
    }

    else if (result > 504)
    {
      if (result == 505)
      {
        return 525;
      }

      else
      {
        return 526;
      }
    }

    else if (result == 503)
    {
      return 523;
    }

    else
    {
      return 524;
    }
  }

  else if (result <= 163)
  {
    if (result > 79)
    {
      switch(result)
      {
        case 80:
          return 81;
        case 160:
          return 161;
        case 162:
          return 163;
      }
    }

    else
    {
      switch(result)
      {
        case 10:
          return 11;
        case 30:
          return 31;
        case 70:
          return 71;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 178:
        result = 179;
        break;
      case 179:
      case 181:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 209:
        return result;
      case 180:
        result = 181;
        break;
      case 182:
        result = 183;
        break;
      case 204:
        result = 186;
        break;
      case 205:
        result = 187;
        break;
      case 206:
        result = 188;
        break;
      case 207:
        result = 189;
        break;
      case 208:
        result = 190;
        break;
      case 210:
        result = 192;
        break;
      case 211:
        result = 193;
        break;
      case 212:
        result = 194;
        break;
      case 213:
        result = 195;
        break;
      case 214:
        result = 196;
        break;
      case 215:
        result = 197;
        break;
      case 216:
        result = 198;
        break;
      case 217:
        result = 199;
        break;
      case 218:
        result = 200;
        break;
      default:
        if (result == 164)
        {
          result = 165;
        }

        else if (result == 166)
        {
          result = 167;
        }

        break;
    }
  }

  return result;
}

uint64_t VFXMTLPixelFormatNonSRGBVariant(uint64_t result)
{
  if (result <= 160)
  {
    if (result > 70)
    {
      if (result == 71)
      {
        return 70;
      }

      else if (result == 81)
      {
        return 80;
      }
    }

    else if (result == 11)
    {
      return 10;
    }

    else if (result == 31)
    {
      return 30;
    }
  }

  else if (result > 550)
  {
    switch(result)
    {
      case 551:
        return 550;
      case 553:
        return 552;
      case 555:
        return 554;
    }
  }

  else
  {
    switch(result)
    {
      case 161:
        result = 160;
        break;
      case 163:
        result = 162;
        break;
      case 165:
        result = 164;
        break;
      case 167:
        result = 166;
        break;
      case 179:
        result = 178;
        break;
      case 181:
        result = 180;
        break;
      case 183:
        result = 182;
        break;
      case 186:
        result = 204;
        break;
      case 187:
        result = 205;
        break;
      case 188:
        result = 206;
        break;
      case 189:
        result = 207;
        break;
      case 190:
        result = 208;
        break;
      case 192:
        result = 210;
        break;
      case 193:
        result = 211;
        break;
      case 194:
        result = 212;
        break;
      case 195:
        result = 213;
        break;
      case 196:
        result = 214;
        break;
      case 197:
        result = 215;
        break;
      case 198:
        result = 216;
        break;
      case 199:
        result = 217;
        break;
      case 200:
        result = 218;
        break;
      default:
        return result;
    }
  }

  return result;
}

__CFString *sub_1AF38D02C(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Never";
  }

  else
  {
    return off_1E7A7FAF0[a1 - 1];
  }
}

__CFString *sub_1AF38D054(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Keep";
  }

  else
  {
    return off_1E7A7FB28[a1 - 1];
  }
}

__CFString *sub_1AF38D07C(unint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF38D02C(a1 & 0xF);
  v4 = sub_1AF38D054(a1 >> 4);
  v5 = sub_1AF38D054((a1 >> 8) & 0xF);
  v6 = sub_1AF38D054(a1 >> 12);
  CFStringAppendFormat(Mutable, 0, @"%@|SF:%@|DF:%@PASS:%@ read:%x write:%x", v3, v4, v5, v6, BYTE2(a1), BYTE3(a1));
  return Mutable;
}

__CFString *CFXDepthStencilDescCopyDescription(unint64_t a1, char a2)
{
  v3 = a1;
  v4 = sub_1AF38D07C(HIDWORD(a1));
  v5 = sub_1AF38D07C(v3);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"back{%@},", v4);
  CFStringAppendFormat(Mutable, 0, @"front{%@},", v5);
  v7 = sub_1AF38D02C(a2 & 0x7F);
  CFStringAppendFormat(Mutable, 0, @"depth: %@,", v7);
  v8 = "Y";
  if ((a2 & 0x80) == 0)
  {
    v8 = "N";
  }

  CFStringAppendFormat(Mutable, 0, @"write: %s", v8);
  CFRelease(v4);
  CFRelease(v5);
  return Mutable;
}

CFX::RG::RenderGraphContext *RGContextDestroy(CFX::RG::RenderGraphContext *result)
{
  if (result)
  {
    CFX::RG::RenderGraphContext::~RenderGraphContext(result);

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

void sub_1AF38D33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1AF271A90(a10);
  }

  _Unwind_Resume(exception_object);
}

void RGContextReleasePersistentRenderGraph(CFX::RG::RenderGraphContext *a1, CFX::RG::RenderGraphBuilder *a2)
{
  CFX::RG::RenderGraphContext::release(a1, a2, &v2);
  if (v3)
  {
    sub_1AF271A90(v3);
  }
}

uint64_t RGContextTryResolveTextureDescriptor@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  result = CFX::RG::RenderGraphContext::tryResolveTextureDescriptor(a1, a2, a4);
  *a3 = result;
  return result;
}

CFX::RG::Resource *RGBuilderCreateTexture(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v11[0] = *a3;
  v11[1] = v3;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[5];
  v11[4] = a3[4];
  v11[5] = v6;
  v11[2] = v4;
  v11[3] = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[9];
  v11[8] = a3[8];
  v11[9] = v9;
  v11[6] = v7;
  v11[7] = v8;
  return sub_1AF233CC8(a1, a2, v11);
}

CFX::RG::Resource *RGBuilderCreateCopy(uint64_t *a1, uint64_t a2, uint64_t a3, CFX::RG::Pass *a4, __int128 *a5)
{
  v9 = a5[1];
  v19 = *a5;
  v20 = v9;
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[5];
  v23 = a5[4];
  v24 = v12;
  v21 = v10;
  v22 = v11;
  v13 = a5[6];
  v14 = a5[7];
  v15 = a5[9];
  v27 = a5[8];
  v28 = v15;
  v25 = v13;
  v26 = v14;
  v16 = sub_1AF233CC8(a1, a2, &v19);
  *&v19 = a3;
  DWORD2(v19) = 0;
  *&v20 = v16;
  *(&v20 + 1) = 0x100000000;
  CopyPass = CFX::RG::makeCopyPass(a1, a2, &v19);
  if (a4)
  {
    CFX::RG::Pass::dependsOn(CopyPass, a4);
  }

  return v16;
}

CFX::RG::Resource *RGBuilderCreateReference(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v11[0] = *a3;
  v11[1] = v3;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[5];
  v11[4] = a3[4];
  v11[5] = v6;
  v11[2] = v4;
  v11[3] = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[9];
  v11[8] = a3[8];
  v11[9] = v9;
  v11[6] = v7;
  v11[7] = v8;
  return sub_1AF233CC8(a1, a2, v11);
}

CFX::RG::Resource *RGBuilderCreateExternalBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v15, a3, a4, v11, v12);
  v13 = sub_1AF24BF34(a1, a2, v15);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v15);

  return v13;
}

void sub_1AF38D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a9);

  _Unwind_Resume(a1);
}

CFX::RG::Resource *RGBuilderCreateExternalTexture(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v13, a3);
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v14, v13, v9, v10);
  v11 = sub_1AF24BF34(a1, a2, v14);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v14);

  return v11;
}

void sub_1AF38D748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a29);

  _Unwind_Resume(a1);
}

CFX::RG::Resource *RGBuilderCreateExternalTexture(uint64_t *a1, uint64_t a2, _OWORD *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a3[1];
  v20[0] = *a3;
  v20[1] = v11;
  v12 = a3[2];
  v13 = a3[3];
  v14 = a3[5];
  v20[4] = a3[4];
  v20[5] = v14;
  v20[2] = v12;
  v20[3] = v13;
  v15 = a3[6];
  v16 = a3[7];
  v17 = a3[9];
  v20[8] = a3[8];
  v20[9] = v17;
  v20[6] = v15;
  v20[7] = v16;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v21, v20, v9, v10);
  v18 = sub_1AF24BF34(a1, a2, v21);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v21);

  return v18;
}

void sub_1AF38D824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(&a29);

  _Unwind_Resume(a1);
}

uint64_t sub_1AF38D848(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v13 = a2;
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v9 = a6;
  v7 = sub_1AF38D8C4(a1, &v13, &v10, &v12, &v11, &v9);

  return v7;
}

uint64_t sub_1AF38D8C4(uint64_t *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t *a5, void **a6)
{
  v10 = a1[1];
  v12[0] = *a1;
  v12[1] = v10;
  v12[0] = sub_1AF38ED9C(v12[0], v10, v12, a2, a3, a4, a5, a6);
  sub_1AF235000(a1 + 22, v12);
  return v12[0];
}

uint64_t RGBuilderCreateRenderPass(uint64_t *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = strlen(a2);
  if (a2)
  {
    v7 = 0xC6A4A7935BD1E995 * v6;
    if (v6 >= 8)
    {
      v10 = v6 >> 3;
      v8 = &a2[8 * v10];
      v11 = 8 * v10;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 8;
        v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v13) ^ ((0xC6A4A7935BD1E995 * v13) >> 47))) ^ v7);
        v11 -= 8;
      }

      while (v11);
    }

    else
    {
      v8 = a2;
    }

    v14 = v6 & 7;
    if (v14 <= 3)
    {
      if ((v6 & 7) <= 1)
      {
        if ((v6 & 7) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v14 == 2)
      {
LABEL_22:
        v7 ^= v8[1] << 8;
LABEL_23:
        v7 = 0xC6A4A7935BD1E995 * (v7 ^ *v8);
LABEL_24:
        v9 = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
        goto LABEL_25;
      }

LABEL_21:
      v7 ^= v8[2] << 16;
      goto LABEL_22;
    }

    if ((v6 & 7) > 5)
    {
      if (v14 != 6)
      {
        v7 ^= v8[6] << 48;
      }

      v7 ^= v8[5] << 40;
    }

    else if (v14 == 4)
    {
      goto LABEL_20;
    }

    v7 ^= v8[4] << 32;
LABEL_20:
    v7 ^= v8[3] << 24;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_25:
  v15 = sub_1AF38D848(a1, a2, v9, 0, 3, v5);

  return v15;
}

uint64_t RGBuilderCreateComputePass(uint64_t *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = strlen(a2);
  if (a2)
  {
    v7 = 0xC6A4A7935BD1E995 * v6;
    if (v6 >= 8)
    {
      v10 = v6 >> 3;
      v8 = &a2[8 * v10];
      v11 = 8 * v10;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 8;
        v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v13) ^ ((0xC6A4A7935BD1E995 * v13) >> 47))) ^ v7);
        v11 -= 8;
      }

      while (v11);
    }

    else
    {
      v8 = a2;
    }

    v14 = v6 & 7;
    if (v14 <= 3)
    {
      if ((v6 & 7) <= 1)
      {
        if ((v6 & 7) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v14 == 2)
      {
LABEL_22:
        v7 ^= v8[1] << 8;
LABEL_23:
        v7 = 0xC6A4A7935BD1E995 * (v7 ^ *v8);
LABEL_24:
        v9 = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
        goto LABEL_25;
      }

LABEL_21:
      v7 ^= v8[2] << 16;
      goto LABEL_22;
    }

    if ((v6 & 7) > 5)
    {
      if (v14 != 6)
      {
        v7 ^= v8[6] << 48;
      }

      v7 ^= v8[5] << 40;
    }

    else if (v14 == 4)
    {
      goto LABEL_20;
    }

    v7 ^= v8[4] << 32;
LABEL_20:
    v7 ^= v8[3] << 24;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_25:
  v15 = sub_1AF38D848(a1, a2, v9, 0, 4, v5);

  return v15;
}

uint64_t RGBuilderCreateBlitPass(uint64_t *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = strlen(a2);
  if (a2)
  {
    v7 = 0xC6A4A7935BD1E995 * v6;
    if (v6 >= 8)
    {
      v10 = v6 >> 3;
      v8 = &a2[8 * v10];
      v11 = 8 * v10;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 8;
        v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v13) ^ ((0xC6A4A7935BD1E995 * v13) >> 47))) ^ v7);
        v11 -= 8;
      }

      while (v11);
    }

    else
    {
      v8 = a2;
    }

    v14 = v6 & 7;
    if (v14 <= 3)
    {
      if ((v6 & 7) <= 1)
      {
        if ((v6 & 7) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v14 == 2)
      {
LABEL_22:
        v7 ^= v8[1] << 8;
LABEL_23:
        v7 = 0xC6A4A7935BD1E995 * (v7 ^ *v8);
LABEL_24:
        v9 = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
        goto LABEL_25;
      }

LABEL_21:
      v7 ^= v8[2] << 16;
      goto LABEL_22;
    }

    if ((v6 & 7) > 5)
    {
      if (v14 != 6)
      {
        v7 ^= v8[6] << 48;
      }

      v7 ^= v8[5] << 40;
    }

    else if (v14 == 4)
    {
      goto LABEL_20;
    }

    v7 ^= v8[4] << 32;
LABEL_20:
    v7 ^= v8[3] << 24;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_25:
  v15 = sub_1AF38D848(a1, a2, v9, 0, 2, v5);

  return v15;
}

uint64_t RGBuilderCreateCustomPass(uint64_t *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = strlen(a2);
  if (a2)
  {
    v7 = 0xC6A4A7935BD1E995 * v6;
    if (v6 >= 8)
    {
      v10 = v6 >> 3;
      v8 = &a2[8 * v10];
      v11 = 8 * v10;
      v12 = a2;
      do
      {
        v13 = *v12;
        v12 += 8;
        v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v13) ^ ((0xC6A4A7935BD1E995 * v13) >> 47))) ^ v7);
        v11 -= 8;
      }

      while (v11);
    }

    else
    {
      v8 = a2;
    }

    v14 = v6 & 7;
    if (v14 <= 3)
    {
      if ((v6 & 7) <= 1)
      {
        if ((v6 & 7) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v14 == 2)
      {
LABEL_22:
        v7 ^= v8[1] << 8;
LABEL_23:
        v7 = 0xC6A4A7935BD1E995 * (v7 ^ *v8);
LABEL_24:
        v9 = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
        goto LABEL_25;
      }

LABEL_21:
      v7 ^= v8[2] << 16;
      goto LABEL_22;
    }

    if ((v6 & 7) > 5)
    {
      if (v14 != 6)
      {
        v7 ^= v8[6] << 48;
      }

      v7 ^= v8[5] << 40;
    }

    else if (v14 == 4)
    {
      goto LABEL_20;
    }

    v7 ^= v8[4] << 32;
LABEL_20:
    v7 ^= v8[3] << 24;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_25:
  v15 = sub_1AF38D848(a1, a2, v9, 0, 1, v5);

  return v15;
}

uint64_t RGResourceIdentifierMake(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  v6 = objc_msgSend_UTF8String(v2, v3, v4, v5);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v9, v6);
  v7 = CFX::RG::ResourceIdentifier::id(v9);

  return v7;
}

BOOL RGResourceIdentifierMatch(uint64_t a1, uint64_t a2)
{
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, a1);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v4, a2);
  return CFX::RG::ResourceIdentifier::match(&v5, v4);
}

id RGResourceIdentifierGetPath(uint64_t a1)
{
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v8, a1);
  v1 = MEMORY[0x1E696AEC0];
  CFX::RG::ResourceIdentifier::pathName(&v8, __p);
  if (v7 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(v1, v2, __p, v3);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(v1, v2, __p[0], v3);
  }
  v4 = ;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1AF38E044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RGTextureReferenceDescriptorDestroy(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorGetTextureType(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 40;
  }

  else
  {
    return 0;
  }
}

uint64_t RGTextureReferenceDescriptorSetTextureType(uint64_t result, uint64_t a2)
{
  *(result + 40) = a2;
  *(result + 48) = 1;
  return result;
}

uint64_t RGTextureReferenceDescriptorClearTextureType(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorGetWidth(uint64_t result)
{
  if (!*(result + 2))
  {
    return 0;
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorSetWidth(uint64_t result, __int16 a2)
{
  *result = a2;
  *(result + 2) = 1;
  return result;
}

uint64_t RGTextureReferenceDescriptorClearWidth(uint64_t result)
{
  if (*(result + 2) == 1)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorGetHeight(uint64_t a1)
{
  if (*(a1 + 6))
  {
    return a1 + 4;
  }

  else
  {
    return 0;
  }
}

uint64_t RGTextureReferenceDescriptorSetHeight(uint64_t result, __int16 a2)
{
  *(result + 4) = a2;
  *(result + 6) = 1;
  return result;
}

uint64_t RGTextureReferenceDescriptorClearHeight(uint64_t result)
{
  if (*(result + 6) == 1)
  {
    *(result + 6) = 0;
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorGetDepth(uint64_t a1)
{
  if (*(a1 + 10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RGTextureReferenceDescriptorSetDepth(uint64_t result, __int16 a2)
{
  *(result + 8) = a2;
  *(result + 10) = 1;
  return result;
}

uint64_t RGTextureReferenceDescriptorClearDepth(uint64_t result)
{
  if (*(result + 10) == 1)
  {
    *(result + 10) = 0;
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorGetSampleCount(uint64_t a1)
{
  if (*(a1 + 19))
  {
    return a1 + 18;
  }

  else
  {
    return 0;
  }
}

uint64_t RGTextureReferenceDescriptorClearSampleCount(uint64_t result)
{
  if (*(result + 19) == 1)
  {
    *(result + 19) = 0;
  }

  return result;
}

uint64_t RGTextureReferenceDescriptorGetPixelFormat(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return a1 + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t RGTextureReferenceDescriptorSetPixelFormat(uint64_t result, uint64_t a2)
{
  *(result + 24) = a2;
  *(result + 32) = 1;
  return result;
}

uint64_t RGTextureReferenceDescriptorClearPixelFormat(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    *(result + 32) = 0;
  }

  return result;
}

double RGPassReadsFrom(CFX::RG::Temporal *a1, unint64_t a2)
{
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

uint64_t RGPassGetFirstOutput(uint64_t a1)
{
  if (*(a1 + 232))
  {
    return **(a1 + 240);
  }

  else
  {
    return 0;
  }
}

CFX::RG::Resource *RGPassGetOutputNamed(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 232);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 240);
  v5 = 8 * v2;
  while (1)
  {
    v6 = *v4;
    v7 = CFX::RG::Resource::name(*v4);
    if (!strcmp(v7, a2))
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t RGPassGetFirstInput(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return **(a1 + 80);
  }

  else
  {
    return 0;
  }
}

CFX::RG::Resource *RGPassGetInputNamed(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 80);
  v5 = 16 * v2;
  while (1)
  {
    v6 = *v4;
    v7 = CFX::RG::Resource::name(*v4);
    if (!strcmp(v7, a2))
    {
      break;
    }

    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t RGCrossFrameResourceGetData(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void RGCrossFrameResourceManagerCreate(CFX::CrossFrameResourceManager *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  aBlock = a5;
  v8 = sub_1AF38E6F4(a1, a2);
  *(v8 + 24) = a3;
  v9 = _Block_copy(aBlock);
  v10 = *(v8 + 16);
  *(v8 + 16) = v9;
}

uint64_t sub_1AF38E6F4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *RGGPUResourceManagerGetTexture(CFX::RG::Temporal *a1, uint64_t a2)
{
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::GPUResourceManager::getTexture(a1, a2, v4);
}

void *RGGPUResourceManagerGetPreviousFrameTexture(CFX::RG::Temporal *a1, uint64_t a2)
{
  v4 = CFX::RG::Temporal::previousFrame(a1);

  return CFX::GPUResourceManager::getTexture(a1, a2, v4);
}

id RGGPUResourceManagerGetBuffer(CFX::RG::Temporal *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v10 = CFX::RG::Temporal::currentFrame(a1);
  CFX::GPUResourceManager::getBuffer(a1, a2, v10);
  v12 = v11;
  result = CFXBufferSliceGetMTLBuffer(v13, v11);
  *a3 = result;
  *a4 = HIDWORD(v12);
  *a5 = v12;
  return result;
}

id RGGPUResourceManagerGetDevice(CFX::GPUResourceManager *a1)
{
  v1 = CFX::GPUResourceManager::gpuDevice(a1);

  return CFXGPUDeviceGetMTLDevice(v1);
}

void RGCrossFrameResourceManagerTransferResources_0(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF38EA24;
  v3[3] = &unk_1E7A7FB60;
  v3[4] = a1;
  sub_1AF38E96C(a2, v3);
  sub_1AF275690(a2);
}

void sub_1AF38E96C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 28);
  if (v3 != -15)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(*(a1 + 16) + 2 * v5))
      {
        v6[2](v6, *(*a1 + 8 * v5), *(a1 + 8) + v4);
        v3 = *(a1 + 28);
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < (v3 + 15));
  }
}

uint64_t sub_1AF38EA2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  while (1)
  {
    v6 = *(a1 + 28);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 16);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v6 + 15;
    if (v12 >= v7 + 496)
    {
      v12 = v7 + 496;
    }

    LODWORD(v13) = v7;
    v14 = v12 - v7;
    if (v12 > v7)
    {
      v13 = v7;
      while ((*(v8 + 2 * v13) & 1) != 0)
      {
        ++v13;
        if (!--v14)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 != v12)
    {
      v15 = *(v8 + 2 * v13) | 1;
      *(v8 + 2 * v13) = v15;
      if (v13 <= v7 + 14)
      {
        v32 = v13;
LABEL_36:
        v33 = *a3;
        *a3 = 0;
        v34 = *a1;
        *(*(a1 + 8) + 8 * v32) = v33;
        *(v34 + 8 * v32) = a2;
        *(v8 + 2 * v32) = v15;
        result = 1;
        *(v8 + 2 * v7) |= 1 << (v13 - v7 + 1);
        ++*(a1 + 24);
        return result;
      }

      while (1)
      {
        v16 = v13;
        v17 = v13 - 14;
        if (v13 < 0xF)
        {
          v17 = 0;
        }

        v18 = v17 - 1;
        v19 = v17 <= v13 ? v13 : v17;
        v20 = 1;
        while (1)
        {
          v13 = v18 + 1;
          if (v17 <= v13)
          {
            break;
          }

LABEL_25:
          ++v20;
          v18 = v13;
          if (v13 == v19)
          {
            goto LABEL_32;
          }
        }

        v21 = 1 << (v18 - v17 + 2);
        v22 = v20;
        v23 = v17;
        while (1)
        {
          v24 = v23;
          v25 = *(v8 + 2 * v23);
          if ((v21 & v25) != 0)
          {
            break;
          }

          v23 = v24 + 1;
          v21 = v21 >> 1;
          --v22;
          if (v24 + 1 > v13)
          {
            goto LABEL_25;
          }
        }

        if (v13 >= v16)
        {
          break;
        }

        v26 = *(a1 + 8);
        *(*a1 + 8 * v16) = *(*a1 + 8 * v13);
        v27 = *(v26 + 8 * v13);
        *(v26 + 8 * v13) = 0;
        *(v26 + 8 * v16) = v27;
        v28 = *(v26 + 8 * v13);
        *(v26 + 8 * v13) = 0;
        if (v28)
        {
          (*(*v28 + 8))(v28);
          v8 = *(a1 + 16);
          LOWORD(v25) = *(v8 + 2 * v24);
        }

        *(v8 + 2 * v24) = (v25 | (1 << (v16 - v24 + 1))) ^ (1 << v22);
        if (v13 <= v7 + 14)
        {
          v15 = *(v8 + 2 * v13) | 1;
          v32 = v13;
          goto LABEL_36;
        }
      }

LABEL_32:
      *(v8 + 2 * v16) ^= 1u;
    }

LABEL_33:
    sub_1AF38ECC0(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*a1 + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v29 = *(a1 + 8);
  v30 = *a3;
  *a3 = 0;
  result = *(v29 + 8 * v10);
  *(v29 + 8 * v10) = v30;
  if (result)
  {
    (*(*result + 8))(result);
    return 0;
  }

  return result;
}

void sub_1AF38ECC0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF140928(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF38EA2C(a1, *v8, v7);
        v11 = *v7;
        *v7 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

CFX::RG::Pass *sub_1AF38ED9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char *a5, uint64_t *a6, uint64_t *a7, void **a8)
{
  v16[0] = a1;
  v16[1] = a2;
  v14 = sub_1AF23498C(v16, 0x1B0u, 8u);
  return sub_1AF38EE1C(v14, *a3, a3[1], *a4, *a5, *a6, *a7, *a8);
}

CFX::RG::Pass *sub_1AF38EE1C(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = a8;
  CFX::RG::Pass::Pass(a1, a2, a3, a4, a5, a6, a7);
  *a1 = &unk_1F24ED150;
  *(a1 + 53) = 0;
  v16 = _Block_copy(v15);
  v17 = *(a1 + 53);
  *(a1 + 53) = v16;

  return a1;
}

void sub_1AF38EEE0(id *a1)
{

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF38EF1C(id *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF38EF94(uint64_t a1)
{
  sub_1AF38EFCC(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF38EFCC(uint64_t a1)
{
  *a1 = &unk_1F24ED188;
  (*(*(a1 + 16) + 16))();

  return a1;
}

CFX::CrossFrameResourceManager *CFX::CrossFrameResourceManager::CrossFrameResourceManager(CFX::CrossFrameResourceManager *this)
{
  sub_1AF140928(this, 32);
  return this;
}

{
  sub_1AF140928(this, 32);
  return this;
}

uint64_t CFX::CrossFrameResourceManager::get(CFX::CrossFrameResourceManager *this, uint64_t a2)
{
  v2 = (*(this + 7) - 1) & a2;
  v3 = *(*(this + 2) + 2 * v2);
  if (v3 < 2)
  {
    return 0;
  }

  while ((v3 & 2) == 0 || *(*this + 8 * v2) != a2)
  {
    ++v2;
    v4 = v3 >= 4;
    v3 >>= 1;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = *(this + 1);
  if (!v6)
  {
    return 0;
  }

  result = *(v6 + 8 * v2);
  *(result + 8) = 0;
  return result;
}

uint64_t CFX::CrossFrameResourceManager::set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  sub_1AF38EA2C(a1, a2, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1AF38F15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1AFDFB5A0(a10);
  }

  _Unwind_Resume(exception_object);
}

void CFX::CrossFrameResourceManager::nextFrame(CFX::CrossFrameResourceManager *this)
{
  v18 = 0x2000000000;
  v19 = v20;
  v1 = *(this + 7);
  if (v1 != -15)
  {
    v3 = 0;
    do
    {
      if (*(*(this + 2) + 2 * v3))
      {
        v4 = *this;
        v5 = *(*(this + 1) + 8 * v3);
        v6 = *(v5 + 8);
        *(v5 + 8) = v6 + 1;
        if (v6 >= 0xA)
        {
          sub_1AF1576F0(&v18, (v4 + 8 * v3));
          v1 = *(this + 7);
        }
      }

      ++v3;
    }

    while (v3 < (v1 + 15));
    if (v18)
    {
      v7 = v19;
      v8 = v19 + 8 * v18;
      do
      {
        v9 = (*(this + 7) - 1) & *v7;
        v10 = *(this + 2);
        v11 = *(v10 + 2 * v9);
        if (v11 >= 2)
        {
          v12 = 1;
          v13 = *(v10 + 2 * v9);
          while (1)
          {
            if ((v13 & 2) != 0)
            {
              v14 = v9 + v12 - 1;
              if (*v7 == *(*this + 8 * v14))
              {
                break;
              }
            }

            ++v12;
            v15 = v13 > 3;
            v13 >>= 1;
            if (!v15)
            {
              goto LABEL_18;
            }
          }

          *(v10 + 2 * v9) = v11 ^ (1 << v12);
          *(v10 + 2 * v14) ^= 1u;
          v16 = *(this + 1);
          v17 = *(v16 + 8 * v14);
          *(v16 + 8 * v14) = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          --*(this + 6);
        }

LABEL_18:
        v7 += 8;
      }

      while (v7 != v8);
    }
  }

  if (HIDWORD(v18))
  {
    if (v19 != v20)
    {
      free(v19);
    }
  }
}

void sub_1AF38F30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, void *a11)
{
  if (a10)
  {
    if (a11 != v11)
    {
      free(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void CFX::CrossFrameResourceManager::~CrossFrameResourceManager(CFX::CrossFrameResourceManager *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    sub_1AF2756F4(v2, *(this + 2), *(this + 7) + 15);
    free(*(this + 1));
  }

  free(*this);
  free(*(this + 2));
}

int *sub_1AF38F384(vm_address_t *address, uint64_t a2)
{
  v3 = ((*MEMORY[0x1E69E9AC8] - 1) | (a2 - 1)) + 1;
  result = vm_allocate(*MEMORY[0x1E69E9A60], address, v3, 1);
  if (result)
  {
    result = __error();
    *result = 12;
    *address = 0;
  }

  else
  {
    address[1] = v3;
  }

  return result;
}

int *sub_1AF38F3F8(int *result, unint64_t a2)
{
  v3 = result;
  *(result + 2) = 0;
  v4 = *(result + 3);
  v5 = MEMORY[0x1E69E9A60];
  if (v4)
  {
    do
    {
      v6 = v4[3];
      mach_vm_deallocate(*v5, *v4, v4[1]);
      result = MEMORY[0x1B271C6B0](v4, 0x10A0C4064A2AE3FLL);
      v4 = v6;
    }

    while (v6);
  }

  v3[3] = 0;
  v3[4] = v3;
  v7 = v3[1];
  if (v7 < a2)
  {
    mach_vm_deallocate(*v5, *v3, v7);

    return sub_1AF38F384(v3, a2);
  }

  return result;
}

uint64_t CScratchAllocatorAllocateAligned_0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 - 1;
  v5 = -a3;
  while (1)
  {
    v7 = a1[1];
    v8 = a1[2];
    v9 = *a1 + v8;
    v10 = ((v4 + v9) & v5) - v9 + a2;
    if (v10 <= v7 - v8)
    {
      break;
    }

    v3 += v7;
    a1 = a1[3];
    if (!a1)
    {
      operator new();
    }
  }

  a1[2] = v10 + v8;
  return (v4 + v9) & v5;
}

int *CScratchAllocatorReset_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 24); i; i = *(i + 24))
  {
    v1 += *(i + 8);
  }

  return sub_1AF38F3F8(a1, v1);
}

int *CScratchAllocatorDestroy(int *result)
{
  if (result)
  {
    v1 = result;
    sub_1AF38F3F8(result, 0);
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *v1, v1[1]);

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

uint64_t CScratchAllocatorCapacity(uint64_t a1)
{
  v1 = a1;
  for (result = *(a1 + 8); ; result += *(v1 + 8))
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      break;
    }
  }

  return result;
}

uint64_t CScratchAllocatorSize(uint64_t a1)
{
  v1 = a1;
  for (result = *(a1 + 16); ; result += *(v1 + 16))
  {
    v1 = *(v1 + 24);
    if (!v1)
    {
      break;
    }
  }

  return result;
}

uint64_t CStackAllocatorDestroy(uint64_t a1)
{
  result = sub_1AF38F858(a1, 0);
  if (a1)
  {

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

uint64_t sub_1AF38F858(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  if (*result == a2)
  {
    v7 = *result;
  }

  else
  {
    v5 = result + 8;
    v6 = MEMORY[0x1E69E9A60];
    do
    {
      v7 = *(v3 + 16);
      result = mach_vm_deallocate(*v6, *v3, *(v3 + 8));
      if (v3 != v5)
      {
        result = MEMORY[0x1B271C6B0](v3, 0x1030C40D5FA72FALL);
      }

      v3 = v7;
    }

    while (v7 != a2);
  }

  *v2 = v7;
  return result;
}

void *CStackAllocatorAllocateAligned(uint64_t *a1, size_t a2, uint64_t a3, int a4)
{
  v4 = *a1;
  while (1)
  {
    v5 = *(v4 + 12);
    v6 = *v4 + v5;
    v7 = ((a3 - 1 + v6) & -a3);
    if (v7 + a2 - v6 <= (*(v4 + 8) - v5))
    {
      break;
    }

    v4 = *(v4 + 16);
    if (!v4)
    {
      operator new();
    }
  }

  *(v4 + 12) = a2 + v7 - *v4;
  if (a4 == 2)
  {

    return memset(v7, 255, a2);
  }

  else
  {
    if (a4 == 1)
    {
      bzero(v7, a2);
    }

    return v7;
  }
}

void *CStackAllocatorResizeLast(uint64_t *a1, size_t a2)
{
  v2 = a1[4];
  v3 = *a1;
  v4 = **a1;
  v5 = v2 + a2 - v4;
  if (*(*a1 + 8) > v5)
  {
    *(v3 + 3) = v5;
    return v2;
  }

  v6 = (v4 + *(v3 + 3) - v2);
  Aligned = CStackAllocatorAllocateAligned(a1, a2, 32, 2);
  if (v2)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return Aligned;
  }

  return memcpy(Aligned, v2, v6);
}

void *CStackAllocatorReallocate(uint64_t *a1, unint64_t a2, size_t a3, size_t a4, uint64_t a5)
{
  if (a1[4] == a2 && ((a5 - 1) & a2) == 0)
  {

    return CStackAllocatorResizeLast(a1, a4);
  }

  else
  {
    result = CStackAllocatorAllocateAligned(a1, a4, a5, 2);
    if (a2 && a3)
    {

      return memcpy(result, a2, a3);
    }
  }

  return result;
}

unsigned int *CStackAllocatorPushFrame(unsigned int *result)
{
  v1 = result[140];
  if (v1 != 31)
  {
    result[140] = v1 + 1;
    v2 = *(*result + 12);
    v3 = &result[4 * v1];
    *(v3 + 6) = *result;
    v3[14] = v2;
  }

  return result;
}

uint64_t CStackAllocatorPopFrame(uint64_t a1)
{
  v2 = *(a1 + 560) - 1;
  v3 = a1 + 16 * v2;
  v6 = *(v3 + 48);
  v4 = v3 + 48;
  v5 = v6;
  *(a1 + 560) = v2;
  v7 = *(v4 + 8);
  *(v6 + 12) = v7;
  v8 = a1 + 8;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 == v8;
  }

  if (v9)
  {
    v10 = v5;
  }

  else
  {
    v10 = *(v5 + 16);
  }

  result = sub_1AF38F858(a1, v10);
  if (v5 == v8 && !*(v10 + 12))
  {
    v12 = *(v10 + 8);
    if (*(a1 + 40) > v12)
    {
      v13 = MEMORY[0x1E69E9A60];
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], *v10, v12);
      v14 = ((*MEMORY[0x1E69E9AC8] - 1) | (*(a1 + 40) - 1)) + 1;
      *(v10 + 8) = v14;
      result = vm_allocate(*v13, v10, v14, 1);
    }
  }

  *v4 = 0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t CStackAllocatorSize(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += *(v1 + 12);
    v1 = *(v1 + 16);
  }

  while (v1);
  return result;
}

void CFX::GPUResourceManager::~GPUResourceManager(CFX::GPUResourceManager *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AF3919CC(v2);
    MEMORY[0x1B271C6B0](v3, 0x10B0C400869E0CBLL);
  }
}

void CFX::GPUResourceManager::clear(CFX::GPUResourceManager *this)
{
  sub_1AF38FE70(*this + 8);
  sub_1AF38FEFC(*this + 104);
  sub_1AF38FE70(*this + 40);
  sub_1AF38FEFC(*this + 136);
  v2 = *this;
  memset(*(v2 + 224), 255, 8 * (*(v2 + 252) + 15));
  bzero(*(v2 + 240), 2 * (*(v2 + 252) + 15));
  *(v2 + 248) = 0;
}

void sub_1AF38FE70(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = (v2 + 15);
  if (v2 == -15)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    do
    {
      v6 = *v5++;
      if (v6)
      {
      }

      ++v4;
      --v3;
    }

    while (v3);
    v7 = 8 * (*(a1 + 28) + 15);
  }

  memset(*a1, 255, v7);
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void sub_1AF38FEFC(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = (v2 + 15);
  if (v2 == -15)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    do
    {
      v6 = *v5++;
      if (v6)
      {
      }

      v4 += 3;
      --v3;
    }

    while (v3);
    v7 = 8 * (*(a1 + 28) + 15);
  }

  memset(*a1, 255, v7);
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void CFX::GPUResourceManager::nextFrame(CFX::GPUResourceManager *this)
{
  sub_1AF38FE70(*this + 8);
  sub_1AF38FEFC(*this + 104);
  CFXTextureAllocatorPerFrameNextFrame(*(*this + 168));
  CFXBufferAllocatorPerFrameNextFrame(*(*this + 184));
  CFXBufferAllocatorPerFrameNextFrame(*(*this + 176));
  v2 = *this;
  memset(*(v2 + 224), 255, 8 * (*(v2 + 252) + 15));
  bzero(*(v2 + 240), 2 * (*(v2 + 252) + 15));
  *(v2 + 248) = 0;
}

void CFX::GPUResourceManager::clearResourcesMapping(CFX::GPUResourceManager *this)
{
  v1 = *this;
  memset(*(*this + 192), 255, 8 * (*(*this + 220) + 15));
  bzero(*(v1 + 208), 2 * (*(v1 + 220) + 15));
  *(v1 + 216) = 0;
}

BOOL CFX::GPUResourceManager::isAllocated(CFX::GPUResourceManager *this, const CFX::RG::Resource *a2)
{
  v4 = CFX::RG::Resource::type(a2);
  if (v4 != 3)
  {
    if (v4 != 2)
    {
      if (v4 != 1)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v5 = CFX::RG::Resource::externalResourceDesc(a2);
    v4 = CFX::RG::ExternalResourceDesc::kind(v5);
    if (!v4)
    {
LABEL_8:
      v8 = CFX::RG::Temporal::currentFrame(v4);
      CFX::GPUResourceManager::getBuffer(this, a2, v8);
      v7 = CFXBufferSliceGetMTLBuffer(v9, v10);
      goto LABEL_9;
    }

    v4 = CFX::RG::ExternalResourceDesc::kind(v5);
    if (v4 != 1)
    {
      return 0;
    }
  }

  v6 = CFX::RG::Temporal::currentFrame(v4);
  v7 = CFX::GPUResourceManager::getTexture(this, a2, v6);
LABEL_9:
  v11 = v7 != 0;

  return v11;
}

void CFX::GPUResourceManager::getBuffer(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = CFX::GPUResourceManager::remappedResource(a1, a2);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = CFX::RG::Resource::lifetime(v5);
  if (v8 == 2)
  {
    if (CFX::RG::Resource::frameCount(v5) < 2)
    {
      v17 = 0;
    }

    else
    {
      v13 = *a1;
      v14 = (*(*a1 + 100) - 1) & v7;
      v15 = *(*(*a1 + 88) + 2 * v14);
      if (v15 < 2)
      {
LABEL_13:
        LODWORD(v16) = 0;
      }

      else
      {
        while ((v15 & 2) == 0 || v7 != *(*(v13 + 72) + 8 * v14))
        {
          ++v14;
          v12 = v15 >= 4;
          v15 >>= 1;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v16 = *(v13 + 80);
        if (v16)
        {
          LODWORD(v16) = *(v16 + v14);
        }
      }

      v17 = (v16 + a3) % CFX::RG::Resource::frameCount(v5);
    }

    v18 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v7)));
    v19 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
    v20 = *a1;
    v21 = (*(*a1 + 164) - 1) & v19;
    v22 = *(*(*a1 + 152) + 2 * v21);
    if (v22 >= 2)
    {
      while ((v22 & 2) == 0 || v19 != *(*(v20 + 136) + 8 * v21))
      {
        ++v21;
        v12 = v22 >= 4;
        v22 >>= 1;
        if (!v12)
        {
          return;
        }
      }

      if (*(v20 + 144))
      {
        goto LABEL_24;
      }
    }
  }

  else if (v8 == 1)
  {
    v9 = *a1;
    v10 = (*(*a1 + 132) - 1) & v7;
    v11 = *(*(*a1 + 120) + 2 * v10);
    if (v11 >= 2)
    {
      while ((v11 & 2) == 0 || v7 != *(*(v9 + 104) + 8 * v10))
      {
        ++v10;
        v12 = v11 >= 4;
        v11 >>= 1;
        if (!v12)
        {
          return;
        }
      }

      if (*(v9 + 112))
      {
LABEL_24:
        CFXBufferSliceMake();
      }
    }
  }
}

void *CFX::GPUResourceManager::getTexture(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = CFX::GPUResourceManager::remappedResource(a1, a2);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v5) ^ ((0x9DDFEA08EB382D69 * v5) >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = CFX::RG::Resource::lifetime(v5);
  if (v8 == 2)
  {
    if (CFX::RG::Resource::frameCount(v5) < 2)
    {
      v17 = 0;
    }

    else
    {
      v13 = *a1;
      v14 = (*(*a1 + 100) - 1) & v7;
      v15 = *(*(*a1 + 88) + 2 * v14);
      if (v15 < 2)
      {
LABEL_13:
        LODWORD(v16) = 0;
      }

      else
      {
        while ((v15 & 2) == 0 || v7 != *(*(v13 + 72) + 8 * v14))
        {
          ++v14;
          v12 = v15 >= 4;
          v15 >>= 1;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        v16 = *(v13 + 80);
        if (v16)
        {
          LODWORD(v16) = *(v16 + v14);
        }
      }

      v17 = (v16 + a3) % CFX::RG::Resource::frameCount(v5);
    }

    v19 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v7)));
    v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
    v21 = *a1;
    v22 = (*(*a1 + 68) - 1) & v20;
    v23 = *(*(*a1 + 56) + 2 * v22);
    if (v23 >= 2)
    {
      while ((v23 & 2) == 0 || v20 != *(*(v21 + 40) + 8 * v22))
      {
        ++v22;
        v12 = v23 >= 4;
        v23 >>= 1;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v24 = *(v21 + 48);
      if (!v24)
      {
        goto LABEL_22;
      }

      v10 = v22;
LABEL_30:
      v24 = v24[v10];
      goto LABEL_22;
    }
  }

  else
  {
    if (v8 != 1)
    {
      v18 = 0;
      goto LABEL_23;
    }

    v9 = *a1;
    LODWORD(v10) = (*(*a1 + 36) - 1) & v7;
    v11 = *(*(*a1 + 24) + 2 * v10);
    if (v11 >= 2)
    {
      while ((v11 & 2) == 0 || v7 != *(*(v9 + 8) + 8 * v10))
      {
        LODWORD(v10) = v10 + 1;
        v12 = v11 >= 4;
        v11 >>= 1;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v24 = *(v9 + 16);
      if (!v24)
      {
        goto LABEL_22;
      }

      v10 = v10;
      goto LABEL_30;
    }
  }

LABEL_21:
  v24 = 0;
LABEL_22:
  v18 = v24;
LABEL_23:

  return v18;
}