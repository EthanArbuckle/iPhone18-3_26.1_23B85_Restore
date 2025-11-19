uint64_t sub_1AF14F0C4()
{
  if (qword_1ED73AD58 != -1)
  {
    sub_1AFDD61E8();
  }

  return qword_1ED73AD50;
}

uint64_t sub_1AF14F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    return v14(a2, a1, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AF14F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD6274(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a4)
    {
      return (*(*(a2 + 16) + 88))(a1, a2, a3, a4, a5);
    }
  }

  else if (a4)
  {
    return (*(*(a2 + 16) + 88))(a1, a2, a3, a4, a5);
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return (*(*(a2 + 16) + 88))(a1, a2, a3, a4, a5);
}

uint64_t sub_1AF14F224(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 96))(a1);
}

uint64_t sub_1AF14F274(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

CFStringRef sub_1AF14F2BC(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t sub_1AF14F378(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1AF14F38C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[7];

  free(v5);
}

uint64_t sub_1AF14F3F8()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6584A0 = result;
  return result;
}

void *sub_1AF14F420(const void *a1, const void *a2, const void *a3)
{
  if (qword_1EB6584A8 != -1)
  {
    sub_1AFDD62EC();
  }

  v6 = sub_1AF0D160C(qword_1EB6584A0, 0x30uLL);
  v7 = CFRetain(a1);
  v6[2] = v7;
  sub_1AF14F0FC(v6, v7, a2);
  v6[4] = CFRetain(a3);
  v6[3] = CFRetain(a2);
  return v6;
}

void sub_1AF14F4B8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void sub_1AF14F4E8()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD30 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"influenceFactor", 0x48u, 1, 0);

  sub_1AF1DD018();
}

uint64_t sub_1AF14F554(uint64_t result)
{
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  return result;
}

void sub_1AF14F568()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD10 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"targetOffset", 0xB0u, 9, 0);
  sub_1AF1DD02C(@"worldUp", 0xA0u, 9, 0);
  sub_1AF1DD02C(@"localFront", 0xC0u, 8, 0);

  sub_1AF1DD018();
}

uint64_t sub_1AF14F61C(const void *a1)
{
  if (qword_1ED73AD18 != -1)
  {
    sub_1AFDD6314();
  }

  v2 = sub_1AF0D160C(qword_1ED73AD10, 0xC0uLL);
  *(v2 + 72) = 1065353216;
  *(v2 + 76) = 257;
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 136) = v3;
  *(v2 + 144) = 0;
  *(v2 + 176) = xmmword_1AFE201A0;
  *(v2 + 192) = xmmword_1AFE206C0;
  *(v2 + 160) = xmmword_1AFE20160;
  *(v2 + 88) = sub_1AF14F6D8;
  *(v2 + 96) = sub_1AF14FFB8;
  return v2;
}

uint64_t sub_1AF14F6D8(float a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  if (!a3)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6274(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a3 + 16);
  v18 = *(v17 + 136);
  if (v18)
  {
    _ZF = v18 == a4;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  v21 = sub_1AF1B8774(v18);
  v22 = v21;
  v23 = *(v17 + 136);
  if (v22)
  {
    *v24.i64 = sub_1AF1BA240(v23);
    v160 = v25;
    v165 = v24;
    v150 = v27;
    v153 = v26;
    v28 = sub_1AF1B9A6C(*(v17 + 136));
    if (v28)
    {
      v29 = sub_1AF1B9B04(v28);
      v30 = 0;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[3];
      v171[0] = *v29;
      v171[1] = v31;
      v171[2] = v32;
      v171[3] = v33;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      do
      {
        *(&v172 + v30 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165, COERCE_FLOAT(v171[v30])), v160, *&v171[v30], 1), v153, v171[v30], 2), v150, v171[v30], 3);
        ++v30;
      }

      while (v30 != 4);
      v34 = v172;
      v35 = v173;
      v36 = v174;
      v37 = v175;
    }

    else
    {
      v35 = v160;
      v34 = v165;
      v37 = v150;
      v36 = v153;
    }
  }

  else
  {
    v38 = sub_1AF1B9B04(v23);
    v34 = *v38;
    v35 = v38[1];
    v36 = v38[2];
    v37 = v38[3];
  }

  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(v17 + 176))), v35, *(v17 + 176), 1), v36, *(v17 + 176), 2), v37, *(v17 + 176), 3);
  v172 = xmmword_1AFE201A0;
  v161 = v39;
  if (*(v17 + 144) != 1)
  {
    v178 = *sub_1AF1B9B04(a4);
    v179 = __invert_f4(v178);
    v179.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v179.columns[3], v179.columns[2], v161, 2), v179.columns[1], *v161.f32, 1), v179.columns[0], v161.f32[0]);
    v179.columns[0] = vmulq_f32(v179.columns[3], v179.columns[3]);
    v179.columns[1].f32[0] = v179.columns[0].f32[2] + vaddv_f32(*v179.columns[0].f32);
    *v179.columns[0].f32 = vrsqrte_f32(v179.columns[1].u32[0]);
    *v179.columns[0].f32 = vmul_f32(*v179.columns[0].f32, vrsqrts_f32(v179.columns[1].u32[0], vmul_f32(*v179.columns[0].f32, *v179.columns[0].f32)));
    v179.columns[0] = vmulq_n_f32(v179.columns[3], vmul_f32(*v179.columns[0].f32, vrsqrts_f32(v179.columns[1].u32[0], vmul_f32(*v179.columns[0].f32, *v179.columns[0].f32))).f32[0]);
    v179.columns[1] = *(v17 + 192);
    v98 = vnegq_f32(v179.columns[1]);
    v179.columns[3] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v179.columns[0], v179.columns[0]), v179.columns[0], 0xCuLL), v98), v179.columns[0], vextq_s8(vuzp1q_s32(v179.columns[1], v179.columns[1]), v179.columns[1], 0xCuLL));
    v179.columns[2] = vextq_s8(vuzp1q_s32(v179.columns[3], v179.columns[3]), v179.columns[3], 0xCuLL);
    v179.columns[0] = vmulq_f32(v179.columns[1], v179.columns[0]);
    v179.columns[2].f32[3] = (v179.columns[0].f32[2] + vaddv_f32(*v179.columns[0].f32)) + 1.0;
    v179.columns[0] = vmulq_f32(v179.columns[2], v179.columns[2]);
    *v179.columns[0].f32 = vadd_f32(*v179.columns[0].f32, *&vextq_s8(v179.columns[0], v179.columns[0], 8uLL));
    v179.columns[0] = vdupq_lane_s32(vadd_f32(*v179.columns[0].f32, vdup_lane_s32(*v179.columns[0].f32, 1)), 0);
    v179.columns[1] = vrsqrteq_f32(v179.columns[0]);
    v179.columns[1] = vmulq_f32(v179.columns[1], vrsqrtsq_f32(v179.columns[0], vmulq_f32(v179.columns[1], v179.columns[1])));
    v179.columns[3] = vrsqrtsq_f32(v179.columns[0], vmulq_f32(v179.columns[1], v179.columns[1]));
    v179.columns[1] = vmulq_f32(vmulq_f32(v179.columns[1], v179.columns[3]), v179.columns[2]);
    v168 = vbslq_s8(vceqzq_f32(v179.columns[0]), v179.columns[2], v179.columns[1]);
    *_Q0.i64 = sub_1AF1BA0F4(a4, *v168.i64, *v179.columns[1].i64, *v179.columns[2].i64, *v179.columns[3].i64, *v98.i64, v99, v100);
    _Q6 = v168;
    _Q1.i32[0] = v168.i32[3];
    v41 = vnegq_f32(_Q0);
    v101 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v168, 0xCuLL), v41), v168, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v43 = vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL);
    v44 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, v168, 3), v168, _Q0, 3), v43);
    _Q2.i64[0] = vmulq_f32(_Q0, v168).u64[0];
    v43.f32[0] = vaddv_f32(*_Q2.f32);
    __asm { FMLA            S2, S1, V0.S[3] }

    v44.i32[3] = _Q2.i32[0];
LABEL_25:
    v172 = v44;
    goto LABEL_26;
  }

  result = sub_1AF1B9A6C(a4);
  if (!result)
  {
    return result;
  }

  v176 = *sub_1AF1B9B04(result);
  v177 = __invert_f4(v176);
  v149 = v177;
  v162 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v177.columns[3], v177.columns[2], v161, 2), v177.columns[1], *v161.f32, 1), v177.columns[0], v161.f32[0]);
  v148 = *(v17 + 160);
  *_Q0.i64 = sub_1AF1B9F08(a4);
  v43.i64[0] = v162.i64[0];
  v44 = xmmword_1AFE201A0;
  _Q2 = vabdq_f32(v162, _Q0);
  _Q1 = vcgeq_f32(vdupq_n_s32(0x3727C5ACu), _Q2);
  _Q1.i32[3] = _Q1.i32[2];
  _Q1.i32[0] = vminvq_u32(_Q1);
  if ((_Q1.i32[0] & 0x80000000) == 0)
  {
    v47 = vsubq_f32(v162, _Q0);
    v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v149.columns[0], v148.f32[0]), v149.columns[1], *v148.f32, 1), v149.columns[2], v148, 2), v149.columns[3], v148, 3);
    v49 = vmulq_f32(v48, v48);
    *&v50 = v49.f32[2] + vaddv_f32(*v49.f32);
    v51 = vrsqrte_f32(v50);
    v52 = vmul_f32(v51, vrsqrts_f32(v50, vmul_f32(v51, v51)));
    v154 = vmulq_n_f32(v48, vmul_f32(v52, vrsqrts_f32(v50, vmul_f32(v52, v52))).f32[0]);
    v53 = vmulq_f32(v47, v47);
    v49.f32[0] = v53.f32[2] + vaddv_f32(*v53.f32);
    *v53.f32 = vrsqrte_f32(v49.u32[0]);
    *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v53.f32, *v53.f32)));
    v166 = vmulq_n_f32(v47, vmul_f32(*v53.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v53.f32, *v53.f32))).f32[0]);
    *v54.i64 = sub_1AF1555CC(*(v17 + 192), v166);
    v163 = v54;
    v55 = vmulq_f32(v54, xmmword_1AFE21390);
    v56 = vnegq_f32(v55);
    v57 = vtrn2q_s32(v55, vtrn1q_s32(v55, v56));
    v58 = vmlaq_f32(vextq_s8(v55, v56, 8uLL), 0, vextq_s8(v57, v57, 8uLL));
    v59 = vrev64q_s32(v55);
    v59.i32[0] = v56.i32[1];
    v59.i32[3] = v56.i32[2];
    v60 = vmlaq_f32(v58, 0, v59);
    v61 = vnegq_f32(v60);
    v62 = vtrn2q_s32(v60, vtrn1q_s32(v60, v61));
    v63 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v60, v61, 8uLL), *v54.f32, 1), vextq_s8(v62, v62, 8uLL), v54.f32[0]);
    v64 = vrev64q_s32(v60);
    v64.i32[0] = v61.i32[1];
    v64.i32[3] = v61.i32[2];
    v65 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v60, v54, 3), v64, v54, 2), v63);
    v66 = vmulq_f32(v65, v166);
    v66.f32[0] = v66.f32[2] + vaddv_f32(*v66.f32);
    v67 = vmlsq_lane_f32(v65, v166, *v66.f32, 0);
    v68 = vmulq_f32(v67, v67);
    v68.f32[0] = v68.f32[2] + vaddv_f32(*v68.f32);
    v69 = vdupq_lane_s32(*v68.f32, 0);
    v69.i32[3] = 0;
    v70 = vrsqrteq_f32(v69);
    v71 = vmulq_f32(v70, vrsqrtsq_f32(v69, vmulq_f32(v70, v70)));
    v72 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v68.f32[0] != 0.0)), 0x1FuLL));
    v72.i32[3] = 0;
    v73 = vbslq_s8(vcltzq_s32(v72), vmulq_f32(vmulq_f32(v71, vrsqrtsq_f32(v69, vmulq_f32(v71, v71))), v67), v67);
    v74 = vmulq_f32(v154, v166);
    v74.f32[0] = v74.f32[2] + vaddv_f32(*v74.f32);
    v75 = vmlsq_lane_f32(v154, v166, *v74.f32, 0);
    v76 = vmulq_f32(v75, v75);
    v77 = v75;
    v76.f32[0] = v76.f32[2] + vaddv_f32(*v76.f32);
    v78 = vdupq_lane_s32(*v76.f32, 0);
    v78.i32[3] = 0;
    v79 = vrsqrteq_f32(v78);
    v80 = vmulq_f32(v79, vrsqrtsq_f32(v78, vmulq_f32(v79, v79)));
    v81 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v76.f32[0] != 0.0)), 0x1FuLL));
    v81.i32[3] = 0;
    v82 = vbslq_s8(vcltzq_s32(v81), vmulq_f32(vmulq_f32(v80, vrsqrtsq_f32(v78, vmulq_f32(v80, v80))), v77), v77);
    v83 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL), vnegq_f32(v73)), v82, vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
    v155 = vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL);
    v84 = vmulq_f32(v82, v73);
    v85 = acosf(fminf(fmaxf(v84.f32[2] + vaddv_f32(*v84.f32), -1.0), 1.0));
    v86 = vmulq_f32(v166, v155);
    v87 = (v86.f32[2] + vaddv_f32(*v86.f32)) <= 0.0;
    v88 = vmulq_f32(v166, v166);
    v88.f32[0] = v88.f32[2] + vaddv_f32(*v88.f32);
    v89 = vdupq_lane_s32(*v88.f32, 0);
    if (v87)
    {
      v85 = -v85;
    }

    v89.i32[3] = 0;
    v90 = vrsqrteq_f32(v89);
    v91 = vmulq_f32(v90, vrsqrtsq_f32(v89, vmulq_f32(v90, v90)));
    v92 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v88.f32[0] != 0.0)), 0x1FuLL));
    v92.i32[3] = 0;
    v167 = vbslq_s8(vcltzq_s32(v92), vmulq_f32(vmulq_f32(v91, vrsqrtsq_f32(v89, vmulq_f32(v91, v91))), v166), v166);
    v93 = __sincosf_stret(v85 * 0.5);
    *_Q1.i32 = v93.__cosval;
    _Q6 = v163;
    _Q0 = vmulq_n_f32(v167, v93.__sinval);
    _Q2 = vmlaq_n_f32(vmulq_laneq_f32(_Q0, v163, 3), v163, v93.__cosval);
    v41 = vnegq_f32(_Q0);
    v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q6, _Q6), v163, 0xCuLL), v41), v163, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
    v43 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
    v44 = vaddq_f32(_Q2, v43);
    _Q0.i64[0] = vmulq_f32(v163, _Q0).u64[0];
    _Q2.f32[0] = vaddv_f32(*_Q0.f32);
    __asm { FMLA            S0, S1, V6.S[3] }

    v44.i32[3] = _Q0.i32[0];
    goto LABEL_25;
  }

LABEL_26:
  _Q0.i32[0] = 1.0;
  if (a1 != 1.0)
  {
    v169 = v44;
    *v102.i64 = sub_1AF1BA0F4(a4, *_Q0.i64, *_Q1.i64, *_Q2.i64, *v43.i64, *v44.i64, *v41.i64, _Q6);
    v103 = v102;
    v104 = vmulq_f32(v102, v169);
    v164 = v103;
    v105 = 1.0;
    v106 = 1.0 - a1;
    if (vaddv_f32(vadd_f32(*v104.i8, *&vextq_s8(v104, v104, 8uLL))) >= 0.0)
    {
      v126 = vsubq_f32(v103, v169);
      v127 = vmulq_f32(v126, v126);
      v128 = vaddq_f32(v103, v169);
      v129 = vmulq_f32(v128, v128);
      v130 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v127.i8, *&vextq_s8(v127, v127, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL)))));
      v131 = v130 + v130;
      _ZF = (v130 + v130) == 0.0;
      v132 = 1.0;
      if (!_ZF)
      {
        v132 = sinf(v131) / v131;
      }

      v133 = v132;
      v134 = vrecpe_f32(LODWORD(v132));
      v135 = vmul_f32(v134, vrecps_f32(LODWORD(v133), v134));
      LODWORD(v136) = vmul_f32(v135, vrecps_f32(LODWORD(v133), v135)).u32[0];
      if ((v106 * v131) != 0.0)
      {
        v158 = v136;
        *v135.i32 = sinf(v106 * v131);
        v136 = v158;
        v105 = *v135.i32 / (v106 * v131);
      }

      *v135.i32 = v106 * (v136 * v105);
      v137 = vdupq_lane_s32(v135, 0);
      v138 = v131 * a1;
      v139 = 1.0;
      if (v138 != 0.0)
      {
        v152 = v137;
        v159 = v136;
        v140 = sinf(v138);
        v137 = v152;
        v136 = v159;
        v139 = v140 / v138;
      }

      v125 = vmlaq_f32(vmulq_n_f32(v169, (v136 * v139) * a1), v164, v137);
    }

    else
    {
      v107 = vaddq_f32(v103, v169);
      v108 = vmulq_f32(v107, v107);
      v109 = vsubq_f32(v103, v169);
      v110 = vmulq_f32(v109, v109);
      v111 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL)))));
      v112 = v111 + v111;
      _ZF = (v111 + v111) == 0.0;
      v113 = 1.0;
      if (!_ZF)
      {
        v113 = sinf(v112) / v112;
      }

      v114 = v113;
      v115 = vrecpe_f32(LODWORD(v113));
      v116 = vmul_f32(v115, vrecps_f32(LODWORD(v114), v115));
      LODWORD(v117) = vmul_f32(v116, vrecps_f32(LODWORD(v114), v116)).u32[0];
      if ((v106 * v112) != 0.0)
      {
        v156 = v117;
        v118 = sinf(v106 * v112);
        v117 = v156;
        v105 = v118 / (v106 * v112);
      }

      v119.i32[1] = v169.i32[1];
      v120 = vnegq_f32(v169);
      *v119.i32 = v106 * (v117 * v105);
      v121 = vdupq_lane_s32(v119, 0);
      v122 = v112 * a1;
      v123 = 1.0;
      if (v122 != 0.0)
      {
        v151 = v121;
        v157 = v117;
        v170 = v120;
        v124 = sinf(v122);
        v121 = v151;
        v117 = v157;
        v120 = v170;
        v123 = v124 / v122;
      }

      v125 = vmlaq_f32(vmulq_n_f32(v120, (v117 * v123) * a1), v164, v121);
    }

    v141 = vmulq_f32(v125, v125);
    *v141.i8 = vadd_f32(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
    v142 = vdupq_lane_s32(vadd_f32(*v141.i8, vdup_lane_s32(*v141.i8, 1)), 0);
    v143 = vrsqrteq_f32(v142);
    v144 = vmulq_f32(v143, vrsqrtsq_f32(v142, vmulq_f32(v143, v143)));
    v172 = vbslq_s8(vceqzq_f32(v142), v125, vmulq_f32(vmulq_f32(v144, vrsqrtsq_f32(v142, vmulq_f32(v144, v144))), v125));
  }

  v145 = sub_1AF1DE360(a5);
  v146 = sub_1AF1DE3A8(a5);
  v147 = sub_1AF288070(9);
  sub_1AF1C35C0(v145, v146, &v172, v147, 3, 0);
  return 1;
}

void sub_1AF14FFC8(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

CFTypeRef sub_1AF15001C(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 136);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 136) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 136) = result;
  }

  return result;
}

__n128 sub_1AF15009C(__n128 *a1, __n128 result)
{
  if (!a1)
  {
    v12 = result;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  result.n128_u32[3] = a1[11].n128_u32[3];
  a1[11] = result;
  return result;
}

__n128 sub_1AF150100(__n128 *a1, __n128 result)
{
  if (!a1)
  {
    v12 = result;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  result.n128_u32[3] = a1[10].n128_u32[3];
  a1[10] = result;
  return result;
}

void sub_1AF150164(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[12] = a2;
}

uint64_t sub_1AF1501C0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AD50 = result;
  return result;
}

uint64_t sub_1AF1501E8()
{
  if (qword_1ED73AD58 != -1)
  {
    sub_1AFDD61E8();
  }

  result = sub_1AF0D160C(qword_1ED73AD50, 0x80uLL);
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  *(result + 88) = sub_1AF15025C;
  *(result + 96) = sub_1AF150350;
  *(result + 136) = 263;
  return result;
}

BOOL sub_1AF15025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = sub_1AF12F10C(a1);
  if (v18)
  {
    v19 = *(a2 + 16);
    if (*(v19 + 136))
    {
      memset(v24, 0, sizeof(v24));
      sub_1AF150360(a1, v19, a3, v24, a5);
      v20 = sub_1AF1DE360(a4);
      v21 = sub_1AF1DE3A8(a4);
      v22 = sub_1AF288070(10);
      sub_1AF1C35C0(v20, v21, v24, v22, *(a4 + 34), *(a4 + 35));
    }
  }

  return v18 != 0;
}

BOOL sub_1AF150360(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float a5)
{
  v8 = sub_1AF12F10C(a1);
  if (v8)
  {
    *v9.i64 = sub_1AF1BA240(a3);
    v271 = v10;
    v277 = v9;
    v267 = v11;
    v263 = v12;
    v13 = sub_1AF1B9B04(a3);
    v14 = 0uLL;
    if (*(a2 + 137) == 1)
    {
      v15 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v267, v267), v267, 0xCuLL), vnegq_f32(v271)), v267, vextq_s8(vuzp1q_s32(v271, v271), v271, 0xCuLL));
      v16 = vmulq_f32(v277, vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL));
      v238 = (v16.f32[2] + vaddv_f32(*v16.f32)) < 0.0;
      v17 = 1.0;
      if (v238)
      {
        v17 = -1.0;
      }

      v18 = vmulq_f32(v277, v277);
      v19 = vmulq_f32(v271, v271);
      v20 = vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8));
      v21 = vextq_s8(v18, v18, 8uLL);
      *v21.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v21.f32, *&vextq_s8(v19, v19, 8uLL)), v20));
      v22 = vmulq_f32(v267, v267);
      v21.i32[2] = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
      v14 = vmulq_n_f32(v21, v17);
    }

    v262 = v14;
    v265 = *(v13 + 1);
    v266 = *v13;
    v282 = *(v13 + 3);
    v264 = *(v13 + 2);
    v23 = sub_1AF1B9B04(v8);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = *(a2 + 136);
    if (v27 <= 2)
    {
      v55 = v263;
      if (!*(a2 + 136))
      {
        v95 = v271;
        v94 = v277;
        v96 = v267;
        goto LABEL_67;
      }

      if (v27 == 1)
      {
        v119 = vmulq_f32(v26, 0);
        v120 = vmlaq_f32(vaddq_f32(v24, v119), 0, v25);
        v121 = vmulq_f32(v120, v120);
        v121.f32[0] = v121.f32[2] + vaddv_f32(*v121.f32);
        v122 = vdupq_lane_s32(*v121.f32, 0);
        v122.i32[3] = 0;
        v123 = vrsqrteq_f32(v122);
        v124 = vmulq_f32(v123, vrsqrtsq_f32(v122, vmulq_f32(v123, v123)));
        v125 = vmulq_f32(v120, vmulq_f32(v124, vrsqrtsq_f32(v122, vmulq_f32(v124, v124))));
        v126 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v121.f32[0] != 0.0)), 0x1FuLL));
        v126.i32[3] = 0;
        v127 = vaddq_f32(v25, vmlaq_f32(v119, 0, v24));
        v128 = vmulq_f32(v127, v127);
        v128.f32[0] = v128.f32[2] + vaddv_f32(*v128.f32);
        v129 = vdupq_lane_s32(*v128.f32, 0);
        v130 = vbslq_s8(vcltzq_s32(v126), v125, v120);
        v129.i32[3] = 0;
        v131 = vrsqrteq_f32(v129);
        v132 = vmulq_f32(v131, vrsqrtsq_f32(v129, vmulq_f32(v131, v131)));
        v133 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v128.f32[0] != 0.0)), 0x1FuLL));
        v133.i32[3] = 0;
        v134 = vbslq_s8(vcltzq_s32(v133), vmulq_f32(v127, vmulq_f32(v132, vrsqrtsq_f32(v129, vmulq_f32(v132, v132)))), v127);
        v135 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v130, v130), v130, 0xCuLL), vnegq_f32(v134)), v130, vextq_s8(vuzp1q_s32(v134, v134), v134, 0xCuLL));
        v136 = vextq_s8(vuzp1q_s32(v135, v135), v135, 0xCuLL);
        v137 = vmulq_f32(v135, v135);
        v132.f32[0] = v137.f32[1] + (v137.f32[2] + v137.f32[0]);
        *v137.f32 = vrsqrte_f32(v132.u32[0]);
        *v137.f32 = vmul_f32(*v137.f32, vrsqrts_f32(v132.u32[0], vmul_f32(*v137.f32, *v137.f32)));
        v138 = vmulq_n_f32(v136, vmul_f32(*v137.f32, vrsqrts_f32(v132.u32[0], vmul_f32(*v137.f32, *v137.f32))).f32[0]);
        v139 = vmulq_f32(v138, xmmword_1AFE213B0);
        v140 = vmlaq_f32(vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL), xmmword_1AFE20160, v138);
        v141 = vextq_s8(vuzp1q_s32(v140, v140), v140, 0xCuLL);
        v142 = vmulq_f32(v140, v140);
        v130.f32[0] = v142.f32[1] + (v142.f32[2] + v142.f32[0]);
        *v142.f32 = vrsqrte_f32(v130.u32[0]);
        *v142.f32 = vmul_f32(*v142.f32, vrsqrts_f32(v130.u32[0], vmul_f32(*v142.f32, *v142.f32)));
        v143 = vmulq_n_f32(v141, vmul_f32(*v142.f32, vrsqrts_f32(v130.u32[0], vmul_f32(*v142.f32, *v142.f32))).f32[0]);
        v144 = vmulq_f32(v143, xmmword_1AFE213B0);
        v145 = vmlaq_f32(vextq_s8(vuzp1q_s32(v144, v144), v144, 0xCuLL), xmmword_1AFE20160, v143);
        v146 = xmmword_1AFE20150;
        HIDWORD(v146) = HIDWORD(*v23);
        v143.i32[3] = HIDWORD(*&v23[1]);
        v147 = vextq_s8(vuzp1q_s32(v145, v145), v145, 0xCuLL);
        v147.i32[3] = HIDWORD(*&v23[2]);
        v25 = v146;
        v24 = v143;
        v26 = v147;
        v28 = a5;
      }

      else
      {
        v28 = a5;
        if (v27 == 2)
        {
          v56 = vmulq_f32(v26, 0);
          v57 = vaddq_f32(v25, vmlaq_f32(v56, 0, v24));
          v58 = vmulq_f32(v57, v57);
          v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
          v59 = vdupq_lane_s32(*v58.f32, 0);
          v59.i32[3] = 0;
          v60 = vrsqrteq_f32(v59);
          v61 = vmulq_f32(v60, vrsqrtsq_f32(v59, vmulq_f32(v60, v60)));
          v62 = vmulq_f32(v57, vmulq_f32(v61, vrsqrtsq_f32(v59, vmulq_f32(v61, v61))));
          v63 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v58.f32[0] != 0.0)), 0x1FuLL));
          v63.i32[3] = 0;
          v64 = vmlaq_f32(vaddq_f32(v24, v56), 0, v25);
          v65 = vmulq_f32(v64, v64);
          v65.f32[0] = v65.f32[2] + vaddv_f32(*v65.f32);
          v66 = vdupq_lane_s32(*v65.f32, 0);
          v66.i32[3] = 0;
          v67 = vbslq_s8(vcltzq_s32(v63), v62, v57);
          v68 = vrsqrteq_f32(v66);
          v69 = vmulq_f32(v68, vrsqrtsq_f32(v66, vmulq_f32(v68, v68)));
          v70 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v65.f32[0] != 0.0)), 0x1FuLL));
          v70.i32[3] = 0;
          v71 = vbslq_s8(vcltzq_s32(v70), vmulq_f32(v64, vmulq_f32(v69, vrsqrtsq_f32(v66, vmulq_f32(v69, v69)))), v64);
          v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL), vnegq_f32(v67)), v71, vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL));
          v73 = vmulq_f32(v72, v72);
          v69.f32[0] = v73.f32[1] + (v73.f32[2] + v73.f32[0]);
          *v73.f32 = vrsqrte_f32(v69.u32[0]);
          *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v69.u32[0], vmul_f32(*v73.f32, *v73.f32)));
          v74 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), vmul_f32(*v73.f32, vrsqrts_f32(v69.u32[0], vmul_f32(*v73.f32, *v73.f32))).f32[0]);
          v75 = vmulq_f32(v74, xmmword_1AFE213A0);
          v76 = vmlaq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), xmmword_1AFE20180, v74);
          v77 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
          v78 = vmulq_f32(v76, v76);
          v72.f32[0] = v78.f32[1] + (v78.f32[2] + v78.f32[0]);
          *v78.f32 = vrsqrte_f32(v72.u32[0]);
          *v78.f32 = vmul_f32(*v78.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v78.f32, *v78.f32)));
          v79 = vmulq_n_f32(v77, vmul_f32(*v78.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v78.f32, *v78.f32))).f32[0]);
          v80 = xmmword_1AFE20160;
          v81 = vmlaq_f32(vmulq_f32(v79, xmmword_1AFE213B0), xmmword_1AFE20160, vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL));
          v79.i32[3] = HIDWORD(*v23);
          HIDWORD(v80) = HIDWORD(*&v23[1]);
          v82 = vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL);
          v82.i32[3] = HIDWORD(*&v23[2]);
          v25 = v79;
          v24 = v80;
          v26 = v82;
        }
      }
    }

    else if (*(a2 + 136) > 4u)
    {
      v28 = a5;
      if (v27 == 5)
      {
        v108 = vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL);
        v109 = vmlaq_f32(vmulq_f32(v24, xmmword_1AFE213A0), xmmword_1AFE20180, v108);
        v110 = vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL);
        v111 = vmulq_f32(v109, v109);
        *&v112 = v111.f32[1] + (v111.f32[2] + v111.f32[0]);
        *v111.f32 = vrsqrte_f32(v112);
        *v111.f32 = vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32)));
        v113 = vmulq_n_f32(v110, vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32))).f32[0]);
        v114 = vmlaq_f32(vmulq_f32(v108, vnegq_f32(v113)), v24, vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL));
        v115 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
        v116 = vmulq_f32(v114, v114);
        *&v117 = v116.f32[1] + (v116.f32[2] + v116.f32[0]);
        *v116.f32 = vrsqrte_f32(v117);
        *v116.f32 = vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32)));
        v118 = vmulq_n_f32(v115, vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32))).f32[0]);
        v113.i32[3] = HIDWORD(*v23);
        v118.i32[3] = HIDWORD(*&v23[2]);
        v25 = v113;
        v26 = v118;
      }

      else if (v27 == 6)
      {
        v83 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v84 = vmlaq_f32(vmulq_f32(v83, xmmword_1AFE213A0), xmmword_1AFE20160, v26);
        v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
        v86 = vmulq_f32(v84, v84);
        *&v87 = v86.f32[1] + (v86.f32[2] + v86.f32[0]);
        *v86.f32 = vrsqrte_f32(v87);
        *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
        v88 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
        v89 = vmlaq_f32(vmulq_f32(v83, vnegq_f32(v88)), v26, vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL));
        v90 = vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL);
        v91 = vmulq_f32(v89, v89);
        *&v92 = v91.f32[1] + (v91.f32[2] + v91.f32[0]);
        *v91.f32 = vrsqrte_f32(v92);
        *v91.f32 = vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32)));
        v93 = vmulq_n_f32(v90, vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32))).f32[0]);
        v93.i32[3] = HIDWORD(*v23);
        v88.i32[3] = HIDWORD(*&v23[1]);
        v25 = v93;
        v24 = v88;
      }
    }

    else
    {
      v28 = a5;
      if (v27 == 3)
      {
        v97 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
        v98 = vmlaq_f32(vmulq_f32(v97, xmmword_1AFE213C0), xmmword_1AFE20180, v26);
        v99 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
        v100 = vmulq_f32(v98, v98);
        *&v101 = v100.f32[1] + (v100.f32[2] + v100.f32[0]);
        *v100.f32 = vrsqrte_f32(v101);
        *v100.f32 = vmul_f32(*v100.f32, vrsqrts_f32(v101, vmul_f32(*v100.f32, *v100.f32)));
        v102 = vmulq_n_f32(v99, vmul_f32(*v100.f32, vrsqrts_f32(v101, vmul_f32(*v100.f32, *v100.f32))).f32[0]);
        v103 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL), vnegq_f32(v26)), v102, v97);
        v104 = vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL);
        v105 = vmulq_f32(v103, v103);
        *&v106 = v105.f32[1] + (v105.f32[2] + v105.f32[0]);
        *v105.f32 = vrsqrte_f32(v106);
        *v105.f32 = vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32)));
        v107 = vmulq_n_f32(v104, vmul_f32(*v105.f32, vrsqrts_f32(v106, vmul_f32(*v105.f32, *v105.f32))).f32[0]);
        v102.i32[3] = HIDWORD(*v23);
        v107.i32[3] = HIDWORD(*&v23[1]);
        v25 = v102;
        v24 = v107;
      }

      else if (v27 == 4)
      {
        v29 = vaddq_f32(v25, vmlaq_f32(vmulq_f32(v26, 0), 0, v24));
        v30 = vmulq_f32(v29, v29);
        v30.f32[0] = v30.f32[2] + vaddv_f32(*v30.f32);
        v31 = vdupq_lane_s32(*v30.f32, 0);
        v31.i32[3] = 0;
        v32 = vrsqrteq_f32(v31);
        v33 = vmulq_f32(v32, vrsqrtsq_f32(v31, vmulq_f32(v32, v32)));
        v34 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v30.f32[0] != 0.0)), 0x1FuLL));
        v34.i32[3] = 0;
        v35 = vbslq_s8(vcltzq_s32(v34), vmulq_f32(v29, vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33)))), v29);
        v36 = vmlaq_f32(vmlaq_f32(v26, 0, v24), 0, v25);
        v37 = vmulq_f32(v36, v36);
        v37.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
        v38 = vdupq_lane_s32(*v37.f32, 0);
        v38.i32[3] = 0;
        v39 = vrsqrteq_f32(v38);
        v40 = vmulq_f32(v39, vrsqrtsq_f32(v38, vmulq_f32(v39, v39)));
        v41 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37.f32[0] != 0.0)), 0x1FuLL));
        v41.i32[3] = 0;
        v42 = vbslq_s8(vcltzq_s32(v41), vmulq_f32(v36, vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)))), v36);
        v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), vnegq_f32(v35)), v42, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
        v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
        v45 = vmulq_f32(v43, v43);
        v36.f32[0] = v45.f32[1] + (v45.f32[2] + v45.f32[0]);
        *v38.f32 = vrsqrte_f32(v36.u32[0]);
        *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v38.f32, *v38.f32)));
        v46 = vmulq_n_f32(v44, vmul_f32(*v38.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v38.f32, *v38.f32))).f32[0]);
        v47 = xmmword_1AFE20180;
        v48 = vmlaq_f32(vmulq_f32(v46, xmmword_1AFE213A0), xmmword_1AFE20180, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
        v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
        v50 = vmulq_f32(v48, v48);
        v45.f32[0] = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
        *v50.f32 = vrsqrte_f32(v45.u32[0]);
        *v50.f32 = vmul_f32(*v50.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v50.f32, *v50.f32)));
        v51 = vmulq_n_f32(v49, vmul_f32(*v50.f32, vrsqrts_f32(v45.u32[0], vmul_f32(*v50.f32, *v50.f32))).f32[0]);
        v52 = vmulq_f32(v51, xmmword_1AFE213C0);
        v53 = vmlaq_f32(vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL), xmmword_1AFE20150, v51);
        v54 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
        v51.i32[3] = HIDWORD(*v23);
        v54.i32[3] = HIDWORD(*&v23[1]);
        HIDWORD(v47) = HIDWORD(*&v23[2]);
        v25 = v51;
        v24 = v54;
        v26 = v47;
      }
    }

    v268 = v25;
    v272 = v24;
    v278 = v26;
    if (v28 != 1.0)
    {
      v285 = 0uLL;
      v284[0] = 0uLL;
      v292.i32[2] = 0;
      v292.i64[0] = 0;
      v291.i32[2] = 0;
      v291.i64[0] = 0;
      v290.i32[2] = 0;
      v290.i64[0] = 0;
      v289.i32[2] = 0;
      v289.i64[0] = 0;
      v148 = sub_1AF120324(&v285, &v292, &v290, v266, v265, v264, v282);
      v149 = sub_1AF120324(v284, &v291, &v289, v268, v272, v278, v282);
      if (v148 && v149)
      {
        v150 = vmulq_f32(v285, v284[0]);
        v283 = v285;
        v279 = v284[0];
        v151 = 1.0;
        if (vaddv_f32(vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL))) >= 0.0)
        {
          v174 = 1.0 - a5;
          v175 = vsubq_f32(v285, v284[0]);
          v176 = vmulq_f32(v175, v175);
          v177 = vaddq_f32(v285, v284[0]);
          v178 = vmulq_f32(v177, v177);
          v179 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v176.i8, *&vextq_s8(v176, v176, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v178.i8, *&vextq_s8(v178, v178, 8uLL)))));
          v180 = v179 + v179;
          v159 = (v179 + v179) == 0.0;
          v181 = 1.0;
          if (!v159)
          {
            v181 = sinf(v180) / v180;
          }

          v182 = v181;
          v183 = vrecpe_f32(LODWORD(v181));
          v184 = vmul_f32(v183, vrecps_f32(LODWORD(v182), v183));
          LODWORD(v185) = vmul_f32(v184, vrecps_f32(LODWORD(v182), v184)).u32[0];
          if ((v174 * v180) != 0.0)
          {
            v275 = v185;
            v184.f32[0] = sinf(v174 * v180);
            v185 = v275;
            v151 = v184.f32[0] / (v174 * v180);
          }

          v184.f32[0] = v174 * (v185 * v151);
          v186 = vdupq_lane_s32(v184, 0);
          v167 = a5;
          v187 = v180 * a5;
          v188 = 1.0;
          if (v187 != 0.0)
          {
            v270 = v186;
            v276 = v185;
            v189 = sinf(v187);
            v186 = v270;
            v185 = v276;
            v167 = a5;
            v188 = v189 / v187;
          }

          v173 = vmlaq_f32(vmulq_n_f32(v279, (v185 * v188) * v167), v283, v186);
        }

        else
        {
          v152 = 1.0 - a5;
          v153 = vaddq_f32(v285, v284[0]);
          v154 = vmulq_f32(v153, v153);
          v155 = vsubq_f32(v285, v284[0]);
          v156 = vmulq_f32(v155, v155);
          v157 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v154.i8, *&vextq_s8(v154, v154, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v156.i8, *&vextq_s8(v156, v156, 8uLL)))));
          v158 = v157 + v157;
          v159 = (v157 + v157) == 0.0;
          v160 = 1.0;
          if (!v159)
          {
            v160 = sinf(v158) / v158;
          }

          v161 = v160;
          v162 = vrecpe_f32(LODWORD(v160));
          v163 = vmul_f32(v162, vrecps_f32(LODWORD(v161), v162));
          LODWORD(v164) = vmul_f32(v163, vrecps_f32(LODWORD(v161), v163)).u32[0];
          if ((v152 * v158) != 0.0)
          {
            v273 = v164;
            v165 = sinf(v152 * v158);
            v164 = v273;
            v151 = v165 / (v152 * v158);
          }

          v166.i32[1] = v279.i32[1];
          v167 = a5;
          v168 = vnegq_f32(v279);
          *v166.i32 = v152 * (v164 * v151);
          v169 = vdupq_lane_s32(v166, 0);
          v170 = v158 * a5;
          v171 = 1.0;
          if (v170 != 0.0)
          {
            v274 = v164;
            v280 = v168;
            v269 = v169;
            v172 = sinf(v170);
            v169 = v269;
            v164 = v274;
            v168 = v280;
            v167 = a5;
            v171 = v172 / v170;
          }

          v173 = vmlaq_f32(vmulq_n_f32(v168, (v164 * v171) * v167), v283, v169);
        }

        v190 = vmulq_f32(v173, v173);
        *v190.i8 = vadd_f32(*v190.i8, *&vextq_s8(v190, v190, 8uLL));
        v191 = vdupq_lane_s32(vadd_f32(*v190.i8, vdup_lane_s32(*v190.i8, 1)), 0);
        v192 = vrsqrteq_f32(v191);
        v193 = vmulq_f32(v192, vrsqrtsq_f32(v191, vmulq_f32(v192, v192)));
        v194 = vbslq_s8(vceqzq_f32(v191), v173, vmulq_f32(vmulq_f32(v193, vrsqrtsq_f32(v191, vmulq_f32(v193, v193))), v173));
        v195 = vmlaq_n_f32(v290, vsubq_f32(v289, v290), v167);
        v196 = vmlaq_n_f32(v292, vsubq_f32(v291, v292), v167);
        v196.i32[3] = 1.0;
        v282 = v196;
        v197 = vabsq_f32(v195);
        v197.i32[3] = 0;
        v198.i64[0] = 0x8000000080000000;
        v198.i64[1] = 0x8000000080000000;
        v199 = vorrq_s8(vandq_s8(v195, v198), vabsq_f32(vmaxnmq_f32(v197, xmmword_1AFE20A30)));
        v200 = vmulq_f32(v194, v194);
        v201 = vmulq_laneq_f32(v194, v194, 3);
        v196.f32[0] = vmuls_lane_f32(v194.f32[0], *v194.f32, 1);
        v202 = vmuls_lane_f32(v194.f32[1], v194, 2);
        v194.f32[0] = vmuls_lane_f32(v194.f32[0], v194, 2);
        v203 = vaddq_f32(v199, v199);
        v204.i32[3] = 0;
        v204.f32[0] = (0.5 - v200.f32[1]) - v200.f32[2];
        v204.f32[1] = v196.f32[0] + v201.f32[2];
        v204.f32[2] = v194.f32[0] - v201.f32[1];
        v205.i32[3] = 0;
        v200.f32[0] = 0.5 - v200.f32[0];
        v206.i32[3] = 0;
        v206.f32[0] = v196.f32[0] - v201.f32[2];
        v206.f32[1] = v200.f32[0] - v200.f32[2];
        v206.f32[2] = v202 + v201.f32[0];
        v265 = vmulq_lane_f32(v206, *v203.f32, 1);
        v266 = vmulq_n_f32(v204, v203.f32[0]);
        v205.f32[0] = v194.f32[0] + v201.f32[1];
        v205.f32[1] = v202 - v201.f32[0];
        v205.f32[2] = v200.f32[0] - v200.f32[1];
        v264 = vmulq_laneq_f32(v205, v203, 2);
      }

      v268 = v266;
      v272 = v265;
      v278 = v264;
    }

    v207 = sub_1AF1B9A6C(a3);
    if (v207)
    {
      v208 = *sub_1AF1B9B04(v207);
    }

    else
    {
      v208 = *zmmword_1AFE213F0;
    }

    v293 = __invert_f4(v208);
    v209 = 0;
    v284[0] = v268;
    v284[1] = v272;
    v284[2] = v278;
    v284[3] = v282;
    v285 = 0u;
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    do
    {
      *(&v285 + v209 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v293.columns[0], COERCE_FLOAT(*&v284[v209])), v293.columns[1], *v284[v209].i8, 1), v293.columns[2], v284[v209], 2), v293.columns[3], v284[v209], 3);
      ++v209;
    }

    while (v209 != 4);
    v94 = v285;
    v95 = v286;
    v96 = v287;
    if (*(a2 + 137) == 1)
    {
      v210 = vmulq_f32(v285, v285);
      v211 = vmulq_f32(v286, v286);
      v212 = vmulq_f32(v287, v287);
      v213 = vzip2q_s32(v210, v212);
      v214 = vzip1q_s32(vzip1q_s32(v210, v212), v211);
      v215 = vtrn2q_s32(v210, v211);
      v215.i32[2] = v212.i32[1];
      v216 = vaddq_f32(vzip1q_s32(v213, vdupq_laneq_s32(v211, 2)), vaddq_f32(v214, v215));
      v211.i64[0] = 0x80000000800000;
      v211.i64[1] = 0x80000000800000;
      v217 = vcgeq_f32(v211, v216);
      v216.i32[3] = 0;
      v218 = vrsqrteq_f32(v216);
      v219 = vmulq_f32(v218, vrsqrtsq_f32(v216, vmulq_f32(v218, v218)));
      v220 = v217;
      v220.i32[3] = 0;
      v221 = vbslq_s8(vcltzq_s32(v220), v216, vmulq_f32(v219, vrsqrtsq_f32(v216, vmulq_f32(v219, v219))));
      v222 = vmulq_n_f32(v285, v221.f32[0]);
      v223 = vmulq_lane_f32(v286, *v221.f32, 1);
      v224 = vmulq_laneq_f32(v287, v221, 2);
      v225 = vuzp1q_s32(v224, v224);
      v226 = vuzp1q_s32(v223, v223);
      v227 = v222;
      if (v217.i32[0])
      {
        v228 = vmlaq_f32(vmulq_f32(vextq_s8(v225, v224, 0xCuLL), vnegq_f32(v223)), v224, vextq_s8(v226, v223, 0xCuLL));
        v227 = vextq_s8(vuzp1q_s32(v228, v228), v228, 0xCuLL);
      }

      v229 = vuzp1q_s32(v222, v222);
      v230 = v223;
      if (v217.i32[1])
      {
        v231 = vmlaq_f32(vmulq_f32(vextq_s8(v229, v222, 0xCuLL), vnegq_f32(v224)), v222, vextq_s8(v225, v224, 0xCuLL));
        v230 = vextq_s8(vuzp1q_s32(v231, v231), v231, 0xCuLL);
      }

      if (v217.i32[2])
      {
        v232 = vmlaq_f32(vmulq_f32(vextq_s8(v226, v223, 0xCuLL), vnegq_f32(v222)), v223, vextq_s8(v229, v222, 0xCuLL));
        v224 = vextq_s8(vuzp1q_s32(v232, v232), v232, 0xCuLL);
      }

      v233 = (*v227.i32 + *&v230.i32[1]) + v224.f32[2];
      if (v233 > 0.0)
      {
        v234 = sqrtf(v233 + 1.0);
        *v235.f32 = vsub_f32(*&vzip2q_s32(v230, vuzp1q_s32(v230, v224)), *&vtrn2q_s32(v224, vzip2q_s32(v224, v227)));
        v235.f32[2] = *&v227.i32[1] - *v230.i32;
        v235.f32[3] = v234 * v234;
        v236 = 0.5 / v234;
LABEL_56:
        v237 = vmulq_n_f32(v235, v236);
LABEL_66:
        v55 = v263;
        v55.i32[3] = 1.0;
        v245 = vabsq_f32(v262);
        v245.i32[3] = 0;
        v246.i64[0] = 0x8000000080000000;
        v246.i64[1] = 0x8000000080000000;
        v247 = vorrq_s8(vandq_s8(v262, v246), vabsq_f32(vmaxnmq_f32(v245, xmmword_1AFE20A30)));
        v248 = vmulq_f32(v237, v237);
        v249 = vmulq_laneq_f32(v237, v237, 3);
        v250 = vmuls_lane_f32(v237.f32[0], *v237.f32, 1);
        v251 = vmuls_lane_f32(v237.f32[1], v237, 2);
        v252 = vmuls_lane_f32(v237.f32[0], v237, 2);
        v253 = vaddq_f32(v247, v247);
        v254.i32[3] = 0;
        v254.f32[0] = (0.5 - v248.f32[1]) - v248.f32[2];
        v254.f32[1] = v250 + v249.f32[2];
        v254.f32[2] = v252 - v249.f32[1];
        v255.i32[3] = 0;
        v248.f32[0] = 0.5 - v248.f32[0];
        v256.i32[3] = 0;
        v256.f32[0] = v250 - v249.f32[2];
        v256.f32[1] = v248.f32[0] - v248.f32[2];
        v256.f32[2] = v251 + v249.f32[0];
        v94 = vmulq_n_f32(v254, v253.f32[0]);
        v95 = vmulq_lane_f32(v256, *v253.f32, 1);
        v255.f32[0] = v252 + v249.f32[1];
        v255.f32[1] = v251 - v249.f32[0];
        v255.f32[2] = v248.f32[0] - v248.f32[1];
        v96 = vmulq_laneq_f32(v255, v253, 2);
        goto LABEL_67;
      }

      v238 = *v227.i32 < *&v230.i32[1] || *v227.i32 < v224.f32[2];
      if (v238)
      {
        if (*&v230.i32[1] <= v224.f32[2])
        {
          v258 = vzip2q_s32(v227, v230).u64[0];
          v259 = __PAIR64__(v227.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v224.f32[2] + 1.0) - *v227.i32) - *&v230.i32[1])));
          v260 = vdup_lane_s32(*v230.i8, 0);
          v261 = vsub_f32(*v227.i8, v260);
          v260.i32[0] = v259.i32[0];
          v260.i32[0] = vmul_f32(v259, v260).u32[0];
          v260.i32[1] = v261.i32[1];
          *v235.f32 = vadd_f32(v258, *v224.f32);
          *&v235.u32[2] = v260;
          v236 = 0.5 / v259.f32[0];
          goto LABEL_56;
        }

        v240 = sqrtf(((*&v230.i32[1] + 1.0) - *v227.i32) - v224.f32[2]);
        v244.f32[0] = *&v227.i32[1] + *v230.i32;
        v239 = vzip2q_s32(v227, v230).u64[0];
        v244.f32[1] = v240 * v240;
        *&v244.u32[2] = vext_s8(vadd_f32(*v224.f32, v239), vsub_f32(*v224.f32, v239), 4uLL);
      }

      else
      {
        v240 = sqrtf(((*v227.i32 + 1.0) - *&v230.i32[1]) - v224.f32[2]);
        v244.f32[0] = v240 * v240;
        v241 = *&v227.i32[1] + *v230.i32;
        v242 = vzip2q_s32(v227, v230).u64[0];
        LODWORD(v243) = vadd_f32(v242, *v224.f32).u32[0];
        HIDWORD(v243) = vsub_f32(v242, *&v224).i32[1];
        v244.f32[1] = v241;
        v244.i64[1] = v243;
      }

      v237 = vmulq_n_f32(v244, 0.5 / v240);
      goto LABEL_66;
    }

    v55 = v263;
LABEL_67:
    *a4 = v94;
    a4[1] = v95;
    a4[2] = v96;
    a4[3] = v55;
  }

  return v8 != 0;
}

uint64_t sub_1AF15146C()
{
  if (qword_1ED734738 != -1)
  {
    sub_1AFDD63A0();
  }

  return qword_1ED739960;
}

void sub_1AF1514A8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF1514D8(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintConstantScale>");
}

CFStringRef sub_1AF15150C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintConstantScale>");
}

uint64_t sub_1AF151540()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739960 = result;
  return result;
}

uint64_t sub_1AF151568()
{
  if (qword_1ED734738 != -1)
  {
    sub_1AFDD63A0();
  }

  result = sub_1AF0D160C(qword_1ED739960, 0x80uLL);
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  *(result + 88) = sub_1AF1515D8;
  *(result + 96) = sub_1AF1522BC;
  *(result + 136) = 1065353216;
  return result;
}

uint64_t sub_1AF1515D8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v8 = *(a2 + 16);
  *v9.i64 = sub_1AF1B7F84(a3);
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v228 = v9;
  v231 = v10;
  v220 = v12;
  v223 = v11;
  if (*(v8 + 140))
  {
    result = sub_1AF12F10C(a1);
    if (!result)
    {
      return result;
    }

    v14 = result;
    result = sub_1AF1BB260(result);
    if (!result)
    {
      return result;
    }

    result = sub_1AF15E428(result);
    if (!result)
    {
      return result;
    }

    v15 = result;
    if (*result)
    {
      v25 = *(result + 40);
    }

    else
    {
      v249 = *sub_1AF1B9B04(v14);
      v250 = __invert_f4(v249);
      v205 = v250.columns[0];
      v208 = v250.columns[1];
      v216 = v250.columns[2];
      v211 = v250.columns[3];
      v16 = sub_1AF1B9AB4(a3);
      v17 = vmulq_f32(vaddq_f32(v211, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v205, v16.n128_f32[0]), v208, v16.n128_u64[0], 1), v216, v16, 2)), xmmword_1AFE206C0);
      v18 = v17.f32[2] + vaddv_f32(*v17.f32);
      v19 = sub_1AF15E4B8(v15);
      v20 = 1.0 / (tan(v19 * 3.14159265 / 180.0 * 0.5) + v18);
      v22 = sub_1AF130548(a1);
      v21 = v22.n128_u64[1];
      v22.n128_f64[0] = v22.n128_f32[3];
      if (v22.n128_f32[3] < 0.000001)
      {
        v22.n128_f64[0] = 0.000001;
      }

      v23 = v22.n128_f32[2] / v22.n128_f64[0];
      if (sub_1AF15DE9C(v15, v23))
      {
        v24 = *&v21;
      }

      else
      {
        v24 = *(&v21 + 1);
      }

      v25 = v24 * v20;
    }

    v85 = v228;
    v86 = v231;
    v87 = v223;
    if (v25 == 0.0)
    {
      return 0;
    }

    v155 = vmulq_f32(v228, v228);
    v156 = vmulq_f32(v223, v223);
    v157 = vmulq_f32(v220, v220);
    v158 = vzip2q_s32(v155, v157);
    v159 = vzip1q_s32(vzip1q_s32(v155, v157), v156);
    v160 = vtrn2q_s32(v155, v156);
    v160.i32[2] = v157.i32[1];
    v161 = vaddq_f32(vzip1q_s32(v158, vdupq_laneq_s32(v156, 2)), vaddq_f32(v159, v160));
    v156.i64[0] = 0x80000000800000;
    v156.i64[1] = 0x80000000800000;
    v162 = vcgeq_f32(v156, v161);
    v161.i32[3] = 0;
    v163 = vrsqrteq_f32(v161);
    v164 = vmulq_f32(v163, vrsqrtsq_f32(v161, vmulq_f32(v163, v163)));
    v165 = v162;
    v165.i32[3] = 0;
    v166 = vbslq_s8(vcltzq_s32(v165), v161, vmulq_f32(v164, vrsqrtsq_f32(v161, vmulq_f32(v164, v164))));
    v167 = vmulq_n_f32(v228, v166.f32[0]);
    v168 = vmulq_lane_f32(v223, *v166.f32, 1);
    v169 = vmulq_laneq_f32(v220, v166, 2);
    v170 = vuzp1q_s32(v169, v169);
    v171 = vuzp1q_s32(v168, v168);
    v172 = v167;
    if (v162.i32[0])
    {
      v173 = vmlaq_f32(vmulq_f32(vextq_s8(v170, v169, 0xCuLL), vnegq_f32(v168)), v169, vextq_s8(v171, v168, 0xCuLL));
      v172 = vextq_s8(vuzp1q_s32(v173, v173), v173, 0xCuLL);
    }

    v174 = vuzp1q_s32(v167, v167);
    v175 = v168;
    if (v162.i32[1])
    {
      v170 = vmlaq_f32(vmulq_f32(vextq_s8(v174, v167, 0xCuLL), vnegq_f32(v169)), v167, vextq_s8(v170, v169, 0xCuLL));
      v175 = vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL);
    }

    *v170.i32 = *(v8 + 136) / v25;
    if (v162.i32[2])
    {
      v176 = vmlaq_f32(vmulq_f32(vextq_s8(v171, v168, 0xCuLL), vnegq_f32(v167)), v168, vextq_s8(v174, v167, 0xCuLL));
      v169 = vextq_s8(vuzp1q_s32(v176, v176), v176, 0xCuLL);
    }

    v177 = (*v172.i32 + *&v175.i32[1]) + v169.f32[2];
    if (v177 > 0.0)
    {
      v178 = sqrtf(v177 + 1.0);
      *v179.f32 = vsub_f32(*&vzip2q_s32(v175, vuzp1q_s32(v175, v169)), *&vtrn2q_s32(v169, vzip2q_s32(v169, v172)));
      v179.f32[2] = *&v172.i32[1] - *v175.i32;
      v179.f32[3] = v178 * v178;
      v180 = 0.5 / v178;
LABEL_73:
      v181 = vmulq_n_f32(v179, v180);
LABEL_83:
      v67 = v231;
      v67.n128_u32[3] = 1.0;
      v189 = vabsq_f32(vdupq_lane_s32(*v170.i8, 0));
      v189.i32[3] = 0;
      v190.i64[0] = 0x8000000080000000;
      v190.i64[1] = 0x8000000080000000;
      v191 = vorrq_s8(vdupq_lane_s32(*&vandq_s8(v170, v190), 0), vabsq_f32(vmaxnmq_f32(v189, xmmword_1AFE20A30)));
      v192 = vmulq_f32(v181, v181);
      v193 = vmulq_laneq_f32(v181, v181, 3);
      v194 = vmuls_lane_f32(v181.f32[0], *v181.f32, 1);
      v195 = vmuls_lane_f32(v181.f32[1], v181, 2);
      v196 = vmuls_lane_f32(v181.f32[0], v181, 2);
      v197 = vaddq_f32(v191, v191);
      v198.i32[3] = 0;
      v198.f32[0] = (0.5 - v192.f32[1]) - v192.f32[2];
      v198.f32[1] = v194 + v193.f32[2];
      v198.f32[2] = v196 - v193.f32[1];
      v199.i32[3] = 0;
      v192.f32[0] = 0.5 - v192.f32[0];
      v200.i32[3] = 0;
      v200.f32[0] = v194 - v193.f32[2];
      v200.f32[1] = v192.f32[0] - v192.f32[2];
      v200.f32[2] = v195 + v193.f32[0];
      v78 = vmulq_n_f32(v198, v197.f32[0]);
      v81 = vmulq_lane_f32(v200, *v197.f32, 1);
      v199.f32[0] = v196 + v193.f32[1];
      v199.f32[1] = v195 - v193.f32[0];
      v199.f32[2] = v192.f32[0] - v192.f32[1];
      v82 = vmulq_laneq_f32(v199, v197, 2);
      v84 = a5;
      goto LABEL_37;
    }

    if (*v172.i32 < *&v175.i32[1] || *v172.i32 < v169.f32[2])
    {
      if (*&v175.i32[1] <= v169.f32[2])
      {
        v201 = vzip2q_s32(v172, v175).u64[0];
        v202 = __PAIR64__(v172.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v169.f32[2] + 1.0) - *v172.i32) - *&v175.i32[1])));
        v203 = vdup_lane_s32(*v175.i8, 0);
        v204 = vsub_f32(*v172.i8, v203);
        v203.i32[0] = v202.i32[0];
        v203.i32[0] = vmul_f32(v202, v203).u32[0];
        v203.i32[1] = v204.i32[1];
        *v179.f32 = vadd_f32(v201, *v169.f32);
        *&v179.u32[2] = v203;
        v180 = 0.5 / v202.f32[0];
        goto LABEL_73;
      }

      v184 = sqrtf(((*&v175.i32[1] + 1.0) - *v172.i32) - v169.f32[2]);
      v188.f32[0] = *&v172.i32[1] + *v175.i32;
      v183 = vzip2q_s32(v172, v175).u64[0];
      v188.f32[1] = v184 * v184;
      *&v188.u32[2] = vext_s8(vadd_f32(*v169.f32, v183), vsub_f32(*v169.f32, v183), 4uLL);
    }

    else
    {
      v184 = sqrtf(((*v172.i32 + 1.0) - *&v175.i32[1]) - v169.f32[2]);
      v188.f32[0] = v184 * v184;
      v185 = *&v172.i32[1] + *v175.i32;
      v186 = vzip2q_s32(v172, v175).u64[0];
      LODWORD(v187) = vadd_f32(v186, *v169.f32).u32[0];
      HIDWORD(v187) = vsub_f32(v186, *&v169).i32[1];
      v188.f32[1] = v185;
      v188.i64[1] = v187;
    }

    v181 = vmulq_n_f32(v188, 0.5 / v184);
    goto LABEL_83;
  }

  v26 = sub_1AF1B9A6C(a3);
  v27 = v26;
  v28 = v228;
  v29 = v231;
  v30 = v220;
  v31 = v223;
  if (v26)
  {
    v32 = sub_1AF1B9B04(v26);
    v33 = 0;
    v34 = *v32;
    v35 = v32[1];
    v36 = v32[2];
    v37 = v32[3];
    v237 = v228;
    v238 = v223;
    v239 = v220;
    v240 = v231;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    do
    {
      *(&v241 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v237 + v33))), v35, *&v237.f32[v33 / 4], 1), v36, *(&v237 + v33), 2), v37, *(&v237 + v33), 3);
      v33 += 16;
    }

    while (v33 != 64);
    v28 = v241;
    v31 = v242;
    v30 = v243;
    v29 = v244;
  }

  v38 = vmulq_f32(v28, v28);
  v39 = vmulq_f32(v31, v31);
  v40 = vmulq_f32(v30, v30);
  v41 = vzip2q_s32(v38, v40);
  v42 = vzip1q_s32(vzip1q_s32(v38, v40), v39);
  v43 = vtrn2q_s32(v38, v39);
  v43.i32[2] = v40.i32[1];
  v44 = vaddq_f32(vzip1q_s32(v41, vdupq_laneq_s32(v39, 2)), vaddq_f32(v42, v43));
  v43.i64[0] = 0x80000000800000;
  v43.i64[1] = 0x80000000800000;
  v45 = vcgeq_f32(v43, v44);
  v44.i32[3] = 0;
  v46 = vrsqrteq_f32(v44);
  v47 = vmulq_f32(v46, vrsqrtsq_f32(v44, vmulq_f32(v46, v46)));
  v48 = v45;
  v48.i32[3] = 0;
  v49 = vbslq_s8(vcltzq_s32(v48), v44, vmulq_f32(v47, vrsqrtsq_f32(v44, vmulq_f32(v47, v47))));
  v50 = vmulq_n_f32(v28, v49.f32[0]);
  v51 = vmulq_lane_f32(v31, *v49.f32, 1);
  v52 = vmulq_laneq_f32(v30, v49, 2);
  v53 = vuzp1q_s32(v52, v52);
  v54 = vuzp1q_s32(v51, v51);
  v55 = v50;
  if (v45.i32[0])
  {
    v56 = vmlaq_f32(vmulq_f32(vextq_s8(v53, v52, 0xCuLL), vnegq_f32(v51)), v52, vextq_s8(v54, v51, 0xCuLL));
    v55 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
  }

  v57 = vuzp1q_s32(v50, v50);
  v58 = v51;
  if (v45.i32[1])
  {
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(v57, v50, 0xCuLL), vnegq_f32(v52)), v50, vextq_s8(v53, v52, 0xCuLL));
    v58 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL);
  }

  if (v45.i32[2])
  {
    v60 = vextq_s8(v57, v50, 0xCuLL);
    v50 = vnegq_f32(v50);
    v45 = vmlaq_f32(vmulq_f32(vextq_s8(v54, v51, 0xCuLL), v50), v51, v60);
    v52 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
  }

  v61 = (*v55.i32 + *&v58.i32[1]) + v52.f32[2];
  v217 = v29;
  if (v61 <= 0.0)
  {
    if (*v55.i32 < *&v58.i32[1] || *v55.i32 < v52.f32[2])
    {
      if (*&v58.i32[1] <= v52.f32[2])
      {
        *v45.i32 = sqrtf(((v52.f32[2] + 1.0) - *v55.i32) - *&v58.i32[1]);
        v62.i64[0] = vzip2q_s32(v55, v58).u64[0];
        v50.i64[0] = __PAIR64__(v55.u32[1], v45.u32[0]);
        v154 = vdup_lane_s32(*v58.i8, 0);
        *v55.i8 = vsub_f32(*v55.i8, v154);
        v154.i32[0] = v45.i32[0];
        v58.i32[0] = vmul_f32(*v50.f32, v154).u32[0];
        v58.i32[1] = v55.i32[1];
        *v63.f32 = vadd_f32(*v62.f32, *v52.f32);
        v63.i64[1] = v58.i64[0];
        *v55.i32 = 0.5 / *v45.i32;
        goto LABEL_24;
      }

      *v45.i32 = sqrtf(((*&v58.i32[1] + 1.0) - *v55.i32) - v52.f32[2]);
      v62.f32[0] = *&v55.i32[1] + *v58.i32;
      v50.f32[0] = *v45.i32 * *v45.i32;
      v55.i64[0] = vzip2q_s32(v55, v58).u64[0];
      *v58.i8 = vadd_f32(*v52.f32, *v55.i8);
      v62.f32[1] = *v45.i32 * *v45.i32;
      *&v62.u32[2] = vext_s8(*v58.i8, vsub_f32(*v52.f32, *v55.i8), 4uLL);
    }

    else
    {
      *v45.i32 = sqrtf(((*v55.i32 + 1.0) - *&v58.i32[1]) - v52.f32[2]);
      v62.f32[0] = *v45.i32 * *v45.i32;
      v50.f32[0] = *&v55.i32[1] + *v58.i32;
      v55.i64[0] = vzip2q_s32(v55, v58).u64[0];
      v58.i32[0] = vadd_f32(*v55.i8, *v52.f32).u32[0];
      v58.i32[1] = vsub_f32(*&v55, *&v52).i32[1];
      v62.i32[1] = v50.i32[0];
      v62.i64[1] = v58.i64[0];
    }

    v64 = vmulq_n_f32(v62, 0.5 / *v45.i32);
    goto LABEL_33;
  }

  *v45.i32 = sqrtf(v61 + 1.0);
  v62.i64[0] = vzip2q_s32(v58, vuzp1q_s32(v58, v52)).u64[0];
  v50 = vzip2q_s32(v52, v55);
  *v63.f32 = vsub_f32(*v62.f32, *&vtrn2q_s32(v52, v50));
  v63.f32[2] = *&v55.i32[1] - *v58.i32;
  v63.f32[3] = *v45.i32 * *v45.i32;
  *v55.i32 = 0.5 / *v45.i32;
LABEL_24:
  v64 = vmulq_n_f32(v63, *v55.i32);
LABEL_33:
  v212 = v64;
  *v66.i64 = sub_1AF1BA070(a3, *v64.i64, *v55.i64, *v58.i64, *v45.i64, *v62.i64, *v50.i64, v54);
  v67 = v217;
  v67.n128_u32[3] = 1.0;
  v68 = vabsq_f32(v66);
  v68.i32[3] = 0;
  v69.i64[0] = 0x8000000080000000;
  v69.i64[1] = 0x8000000080000000;
  v70 = vorrq_s8(vandq_s8(v66, v69), vabsq_f32(vmaxnmq_f32(v68, xmmword_1AFE20A30)));
  v71 = v212;
  v72 = vmulq_f32(v71, v71);
  v73 = vmulq_laneq_f32(v71, v71, 3);
  v74 = vmuls_lane_f32(v71.f32[0], *v71.f32, 1);
  v75 = vmuls_lane_f32(v212.f32[1], v212, 2);
  v71.f32[0] = vmuls_lane_f32(v71.f32[0], v71, 2);
  v76 = vaddq_f32(v70, v70);
  v77.i32[3] = 0;
  v77.f32[0] = (0.5 - v72.f32[1]) - v72.f32[2];
  v77.f32[1] = v74 + v73.f32[2];
  v77.f32[2] = v71.f32[0] - v73.f32[1];
  v78 = vmulq_n_f32(v77, v76.f32[0]);
  v72.f32[0] = 0.5 - v72.f32[0];
  v79.i32[3] = 0;
  v79.f32[0] = v74 - v73.f32[2];
  v79.f32[1] = v72.f32[0] - v72.f32[2];
  v79.f32[2] = v75 + v73.f32[0];
  v73.f32[0] = v75 - v73.f32[0];
  v80.f32[0] = v71.f32[0] + v73.f32[1];
  v80.i32[1] = v73.i32[0];
  v80.i64[1] = COERCE_UNSIGNED_INT(v72.f32[0] - v72.f32[1]);
  v81 = vmulq_lane_f32(v79, *v76.f32, 1);
  v233 = v78;
  v234 = v81;
  v82 = vmulq_laneq_f32(v80, v76, 2);
  v235 = v82;
  v236 = v67;
  if (!v27)
  {
    v84 = a5;
    v85 = v228;
    v86 = v231;
    v87 = v223;
    goto LABEL_39;
  }

  v218 = v67;
  v206 = v78;
  v209 = v81;
  v213 = v82;
  v251 = *sub_1AF1B9B04(v27);
  v252 = __invert_f4(v251);
  v83 = 0;
  v237 = v206;
  v238 = v209;
  v239 = v213;
  v240 = v218;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  do
  {
    *(&v241 + v83) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v252.columns[0], COERCE_FLOAT(*(&v237 + v83))), v252.columns[1], *&v237.f32[v83 / 4], 1), v252.columns[2], *(&v237 + v83), 2), v252.columns[3], *(&v237 + v83), 3);
    v83 += 16;
  }

  while (v83 != 64);
  v78 = v241;
  v81 = v242;
  v82 = v243;
  v67 = v244;
  v84 = a5;
  v85 = v228;
  v86 = v231;
  v87 = v223;
LABEL_37:
  v233 = v78;
  v234 = v81;
  v235 = v82;
  v236 = v67;
LABEL_39:
  if (v84 != 1.0)
  {
    v241 = 0uLL;
    v237 = 0uLL;
    v248.i32[2] = 0;
    v248.i64[0] = 0;
    v247.i32[2] = 0;
    v247.i64[0] = 0;
    v246.i32[2] = 0;
    v246.i64[0] = 0;
    v245.i32[2] = 0;
    v245.i64[0] = 0;
    v210 = v81;
    v214 = v82;
    v219 = v67;
    v207 = v78;
    v88 = sub_1AF120324(&v241, &v248, &v246, v85, v87, v220, v86);
    v89 = sub_1AF120324(&v237, &v247, &v245, v207, v210, v214, v219);
    if (v88)
    {
      v90 = v228;
      v91 = v231;
      v92 = v220;
      v93 = v223;
      if (v89)
      {
        v94 = vmulq_f32(v241, v237);
        v229 = v237;
        v232 = v241;
        v95 = 1.0;
        if (vaddv_f32(vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL))) >= 0.0)
        {
          v118 = 1.0 - a5;
          v119 = vsubq_f32(v241, v237);
          v120 = vmulq_f32(v119, v119);
          v121 = vaddq_f32(v241, v237);
          v122 = vmulq_f32(v121, v121);
          v123 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v122.i8, *&vextq_s8(v122, v122, 8uLL)))));
          v124 = v123 + v123;
          v103 = (v123 + v123) == 0.0;
          v125 = 1.0;
          if (!v103)
          {
            v125 = sinf(v124) / v124;
          }

          v126 = v125;
          v127 = vrecpe_f32(LODWORD(v125));
          v128 = vmul_f32(v127, vrecps_f32(LODWORD(v126), v127));
          LODWORD(v129) = vmul_f32(v128, vrecps_f32(LODWORD(v126), v128)).u32[0];
          if ((v118 * v124) != 0.0)
          {
            v226 = v129;
            *v128.i32 = sinf(v118 * v124);
            v129 = v226;
            v95 = *v128.i32 / (v118 * v124);
          }

          *v128.i32 = v118 * (v129 * v95);
          v130 = vdupq_lane_s32(v128, 0);
          v113 = a5;
          v131 = v124 * a5;
          v132 = 1.0;
          if (v131 != 0.0)
          {
            v222 = v130;
            v227 = v129;
            v133 = sinf(v131);
            v130 = v222;
            v129 = v227;
            v113 = a5;
            v132 = v133 / v131;
          }

          v117 = vmlaq_f32(vmulq_n_f32(v229, (v129 * v132) * v113), v232, v130);
        }

        else
        {
          v96 = 1.0 - a5;
          v97 = vaddq_f32(v241, v237);
          v98 = vmulq_f32(v97, v97);
          v99 = vsubq_f32(v241, v237);
          v100 = vmulq_f32(v99, v99);
          v101 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v98.i8, *&vextq_s8(v98, v98, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)))));
          v102 = v101 + v101;
          v103 = (v101 + v101) == 0.0;
          v104 = 1.0;
          if (!v103)
          {
            v104 = sinf(v102) / v102;
          }

          v105 = v104;
          v106 = vrecpe_f32(LODWORD(v104));
          v107 = vmul_f32(v106, vrecps_f32(LODWORD(v105), v106));
          LODWORD(v108) = vmul_f32(v107, vrecps_f32(LODWORD(v105), v107)).u32[0];
          if ((v96 * v102) != 0.0)
          {
            v224 = v108;
            v109 = sinf(v96 * v102);
            v108 = v224;
            v95 = v109 / (v96 * v102);
          }

          v110.i32[1] = v229.i32[1];
          v111 = vnegq_f32(v229);
          *v110.i32 = v96 * (v108 * v95);
          v112 = vdupq_lane_s32(v110, 0);
          v113 = a5;
          v114 = v102 * a5;
          v115 = 1.0;
          if (v114 != 0.0)
          {
            v225 = v108;
            v230 = v111;
            v221 = v112;
            v116 = sinf(v114);
            v112 = v221;
            v108 = v225;
            v111 = v230;
            v113 = a5;
            v115 = v116 / v114;
          }

          v117 = vmlaq_f32(vmulq_n_f32(v111, (v108 * v115) * v113), v232, v112);
        }

        v134 = vmulq_f32(v117, v117);
        *v134.i8 = vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL));
        v135 = vdupq_lane_s32(vadd_f32(*v134.i8, vdup_lane_s32(*v134.i8, 1)), 0);
        v136 = vrsqrteq_f32(v135);
        v137 = vmulq_f32(v136, vrsqrtsq_f32(v135, vmulq_f32(v136, v136)));
        v138 = vbslq_s8(vceqzq_f32(v135), v117, vmulq_f32(vmulq_f32(v137, vrsqrtsq_f32(v135, vmulq_f32(v137, v137))), v117));
        v139 = vmlaq_n_f32(v246, vsubq_f32(v245, v246), v113);
        v91 = vmlaq_n_f32(v248, vsubq_f32(v247, v248), v113);
        v91.i32[3] = 1.0;
        v140 = vabsq_f32(v139);
        v140.i32[3] = 0;
        v141.i64[0] = 0x8000000080000000;
        v141.i64[1] = 0x8000000080000000;
        v142 = vorrq_s8(vandq_s8(v139, v141), vabsq_f32(vmaxnmq_f32(v140, xmmword_1AFE20A30)));
        v143 = vmulq_f32(v138, v138);
        v144 = vmulq_laneq_f32(v138, v138, 3);
        v145 = vmuls_lane_f32(v138.f32[0], *v138.f32, 1);
        v146 = vmuls_lane_f32(v138.f32[1], v138, 2);
        v138.f32[0] = vmuls_lane_f32(v138.f32[0], v138, 2);
        v147 = vaddq_f32(v142, v142);
        v148.i32[3] = 0;
        v148.f32[0] = (0.5 - v143.f32[1]) - v143.f32[2];
        v148.f32[1] = v145 + v144.f32[2];
        v148.f32[2] = v138.f32[0] - v144.f32[1];
        v149.i32[3] = 0;
        v143.f32[0] = 0.5 - v143.f32[0];
        v150.i32[3] = 0;
        v150.f32[0] = v145 - v144.f32[2];
        v150.f32[1] = v143.f32[0] - v143.f32[2];
        v150.f32[2] = v146 + v144.f32[0];
        v90 = vmulq_n_f32(v148, v147.f32[0]);
        v93 = vmulq_lane_f32(v150, *v147.f32, 1);
        v149.f32[0] = v138.f32[0] + v144.f32[1];
        v149.f32[1] = v146 - v144.f32[0];
        v149.f32[2] = v143.f32[0] - v143.f32[1];
        v92 = vmulq_laneq_f32(v149, v147, 2);
      }
    }

    else
    {
      v90 = v228;
      v91 = v231;
      v92 = v220;
      v93 = v223;
    }

    v233 = v90;
    v234 = v93;
    v235 = v92;
    v236 = v91;
  }

  v151 = sub_1AF1DE360(a4);
  v152 = sub_1AF1DE3A8(a4);
  v153 = sub_1AF288070(10);
  sub_1AF1C35C0(v151, v152, &v233, v153, *(a4 + 34), *(a4 + 35));
  return 1;
}

void sub_1AF1522E0(uint64_t a1)
{
  _Block_release(*(a1 + 136));
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF152328(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintProcedural>");
}

CFStringRef sub_1AF15235C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintProcedural>");
}

uint64_t sub_1AF152390()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739958 = result;
  return result;
}

uint64_t sub_1AF1523B8(const void *a1, const void *a2)
{
  if (qword_1ED734720 != -1)
  {
    sub_1AFDD6198();
  }

  v4 = sub_1AF0D160C(qword_1ED739958, 0x88uLL);
  *(v4 + 72) = 1065353216;
  *(v4 + 76) = 257;
  *(v4 + 136) = _Block_copy(a1);
  *(v4 + 144) = CFRetain(a2);
  *(v4 + 88) = sub_1AF152468;
  *(v4 + 96) = sub_1AF152494;
  *(v4 + 72) = 1065353216;
  *(v4 + 76) = 1;
  return v4;
}

void *sub_1AF15249C(uint64_t a1)
{
  if (qword_1ED734720 != -1)
  {
    sub_1AFDD6198();
  }

  v2 = sub_1AF0D160C(qword_1ED739958, 0x88uLL);
  v2[17] = _Block_copy(*(a1 + 136));
  v2[18] = CFRetain(*(a1 + 144));
  v2[11] = sub_1AF152468;
  v2[12] = sub_1AF152494;
  return v2;
}

void sub_1AF152524()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD20 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"targetPosition", 0x90u, 8, 0);

  sub_1AF1DD018();
}

uint64_t sub_1AF1525A8()
{
  if (qword_1ED73AD28 != -1)
  {
    sub_1AFDD61AC();
  }

  result = sub_1AF0D160C(qword_1ED73AD20, 0xB0uLL);
  *(result + 72) = 1065353216;
  *(result + 76) = 257;
  *(result + 88) = sub_1AF152614;
  *(result + 96) = sub_1AF1530AC;
  return result;
}

BOOL sub_1AF152614(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 16);
  v5 = v4[8].n128_u64[1];
  if (!v5)
  {
    return 0;
  }

  v7 = v4[10].n128_u64[0];
  if (v7)
  {
LABEL_3:
    v215 = v4[10].n128_i64[1];
    v8 = sub_1AF1C3FAC(v5);
    if (v8 && (v9 = sub_1AF1CFFC0(v8)) != 0)
    {
      v15 = v9;
      v16 = 0;
    }

    else
    {
      v17 = sub_1AF0D5194();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD63B4(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      v15 = 0;
      v16 = 1;
    }

    v214 = a1;
    if (a1 != 1.0 && v215 >= 1)
    {
      v25 = v215;
      v26 = v7;
      do
      {
        sub_1AF1DEE48(v15, *v26);
        *&v34 = sub_1AF1BA0F4(*v26, v27, v28, v29, v30, v31, v32, v33);
        *(v26 + 2) = v34;
        v26 += 6;
        --v25;
      }

      while (v25);
    }

    v35 = 0;
    v36 = v215 - 1;
    v233 = 0u;
    v37 = 0.5;
    v220 = 0u;
    do
    {
      v38 = (v7 + 8);
      if (v215 >= 2)
      {
        do
        {
          v39 = *v7;
          v40 = v38[-1].i64[0];
          if (!v35)
          {
            sub_1AF1DEE48(v15, v38[-1].i64[0]);
          }

          v41.n128_f64[0] = sub_1AF1B9F08(v39);
          v234 = v41;
          v42 = sub_1AF1B9A6C(v39);
          *v43.i64 = sub_1AF15328C(v42, v40, v234);
          v233 = v43;
          *v44.i64 = sub_1AF15328C(0, v40, v4[9]);
          v45 = v44;
          v46 = vmulq_f32(v233, v233);
          *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
          *v46.f32 = vrsqrte_f32(v47);
          *v46.f32 = vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32)));
          v48 = vmulq_n_f32(v233, vmul_f32(*v46.f32, vrsqrts_f32(v47, vmul_f32(*v46.f32, *v46.f32))).f32[0]);
          v49 = vmulq_f32(v45, v45);
          *&v50 = v49.f32[2] + vaddv_f32(*v49.f32);
          *v49.f32 = vrsqrte_f32(v50);
          *v49.f32 = vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32)));
          v228 = v48;
          v220 = v45;
          v221 = vmulq_n_f32(v45, vmul_f32(*v49.f32, vrsqrts_f32(v50, vmul_f32(*v49.f32, *v49.f32))).f32[0]);
          v51 = vmulq_f32(v48, v221);
          v52 = v51.f32[2] + vaddv_f32(*v51.f32);
          v53 = v52 > 1.0 || v52 < -1.0;
          if (v52 <= 1.0 && v52 < -1.0)
          {
            v54 = -1.0;
          }

          else
          {
            v54 = 1.0;
          }

          if (v53)
          {
            v52 = v54;
          }

          v55 = acosf(v52);
          if ((v4[11].n128_u8[8] & 1) != 0 || v55 > 0.00001)
          {
            v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v221, v221), v221, 0xCuLL), vnegq_f32(v228)), v221, vextq_s8(vuzp1q_s32(v228, v228), v228, 0xCuLL));
            v57 = vmulq_f32(v56, v56);
            v57.f32[0] = v57.f32[1] + (v57.f32[2] + v57.f32[0]);
            v58 = vdupq_lane_s32(*v57.f32, 0);
            v58.i32[3] = 0;
            v59 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
            v60 = vrsqrteq_f32(v58);
            v61 = vmulq_f32(v60, vrsqrtsq_f32(v58, vmulq_f32(v60, v60)));
            v62 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v57.f32[0] != 0.0)), 0x1FuLL));
            v62.i32[3] = 0;
            v63 = vbslq_s8(vcltzq_s32(v62), vmulq_f32(v59, vmulq_f32(v61, vrsqrtsq_f32(v58, vmulq_f32(v61, v61)))), v59);
            v64 = vmulq_f32(v63, v63);
            v64.f32[0] = v64.f32[2] + vaddv_f32(*v64.f32);
            v65 = vdupq_lane_s32(*v64.f32, 0);
            v65.i32[3] = 0;
            v66 = vrsqrteq_f32(v65);
            v67 = vmulq_f32(v66, vrsqrtsq_f32(v65, vmulq_f32(v66, v66)));
            v68 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v64.f32[0] != 0.0)), 0x1FuLL));
            v68.i32[3] = 0;
            v229 = vbslq_s8(vcltzq_s32(v68), vmulq_f32(vmulq_f32(v67, vrsqrtsq_f32(v65, vmulq_f32(v67, v67))), v63), v63);
            v70 = __sincosf_stret(v55 * v37);
            *&v69 = v70.__cosval;
            v222 = v69;
            v71 = *v229.i64;
            v230 = vmulq_n_f32(v229, v70.__sinval);
            *_Q0.i64 = sub_1AF1BA0F4(v40, *v230.i64, v71, v72, v73, v74, v75, v76);
            _D5 = v222;
            v79 = v230;
            v80 = vnegq_f32(_Q0);
            v81 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v230, 0xCuLL), v80), v230, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
            v86 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(_Q0, *&v222), v230, _Q0, 3), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL));
            __asm { FMLA            S2, S5, V0.S[3] }

            v86.i32[3] = _S2;
            v87 = vmulq_f32(v86, v86);
            *v87.i8 = vadd_f32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
            v88 = vdupq_lane_s32(vadd_f32(*v87.i8, vdup_lane_s32(*v87.i8, 1)), 0);
            v89 = vrsqrteq_f32(v88);
            v90 = vmulq_f32(v89, vrsqrtsq_f32(v88, vmulq_f32(v89, v89)));
            v91 = vmulq_f32(vmulq_f32(v90, vrsqrtsq_f32(v88, vmulq_f32(v90, v90))), v86);
            _Q3 = vbslq_s8(vceqzq_f32(v88), v86, v91);
            v93 = v38[-1].f32[2];
            if (v93 < 3.14159265)
            {
              _Q1 = vmulq_f32(*v38, *v38);
              *_Q1.i8 = vadd_f32(*_Q1.i8, *&vextq_s8(_Q1, _Q1, 8uLL));
              v223 = *v38;
              v231 = _Q3;
              _Q1.i32[0] = vdivq_f32(vmulq_f32(*v38, xmmword_1AFE21390), vdupq_lane_s32(vadd_f32(*&_Q1, vdup_lane_s32(*&_Q1, 1)), 0)).i32[3];
              __asm { FMLA            S0, S1, V3.S[3]; float }

              v96 = acosf(_S0);
              v97 = fabsf(v96 + v96);
              if (v97 <= v93)
              {
                _Q3 = v231;
              }

              else
              {
                v98 = v93 / v97;
                v99 = vmulq_f32(v231, v223);
                v100 = vaddq_f32(v231, v223);
                v101 = 1.0;
                if (vaddv_f32(vadd_f32(*v99.i8, *&vextq_s8(v99, v99, 8uLL))) >= 0.0)
                {
                  v119 = vsubq_f32(v223, v231);
                  v120 = vmulq_f32(v119, v119);
                  v121 = vmulq_f32(v100, v100);
                  v122 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL)))));
                  v123 = v122 + v122;
                  v124 = 1.0;
                  if ((v122 + v122) != 0.0)
                  {
                    v124 = sinf(v122 + v122) / v123;
                  }

                  v125 = (1.0 - v98) * v123;
                  if (v125 != 0.0)
                  {
                    v218 = v124;
                    v126 = sinf((1.0 - v98) * v123);
                    v124 = v218;
                    v101 = v126 / v125;
                  }

                  v127 = v98 * v123;
                  v128 = 1.0;
                  if (v127 != 0.0)
                  {
                    v219 = v124;
                    v129 = sinf(v127);
                    v124 = v219;
                    v128 = v129 / v127;
                  }

                  v130 = v124;
                  v131 = vrecpe_f32(LODWORD(v124));
                  v132 = vmul_f32(v131, vrecps_f32(LODWORD(v130), v131));
                  v133 = vmul_f32(v132, vrecps_f32(LODWORD(v130), v132)).f32[0];
                  *v132.i32 = (1.0 - v98) * (v133 * v101);
                  v117 = vdupq_lane_s32(v132, 0);
                  v118 = vmulq_n_f32(v231, v98 * (v133 * v128));
                }

                else
                {
                  v102 = vmulq_f32(v100, v100);
                  v103 = vsubq_f32(v223, v231);
                  v104 = vmulq_f32(v103, v103);
                  v105 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v104.i8, *&vextq_s8(v104, v104, 8uLL)))));
                  v106 = v105 + v105;
                  v107 = 1.0;
                  if ((v105 + v105) != 0.0)
                  {
                    v107 = sinf(v105 + v105) / v106;
                  }

                  v108 = (1.0 - v98) * v106;
                  if (v108 != 0.0)
                  {
                    v216 = v107;
                    v109 = sinf((1.0 - v98) * v106);
                    v107 = v216;
                    v101 = v109 / v108;
                  }

                  v110 = v98 * v106;
                  v111 = 1.0;
                  if (v110 != 0.0)
                  {
                    v217 = v107;
                    v112 = sinf(v110);
                    v107 = v217;
                    v111 = v112 / v110;
                  }

                  v113 = v107;
                  v114 = vrecpe_f32(LODWORD(v107));
                  v115 = vmul_f32(v114, vrecps_f32(LODWORD(v113), v114));
                  v116 = vmul_f32(v115, vrecps_f32(LODWORD(v113), v115)).f32[0];
                  *v115.i32 = (1.0 - v98) * (v116 * v101);
                  v117 = vdupq_lane_s32(v115, 0);
                  v118 = vmulq_n_f32(vnegq_f32(v231), v98 * (v116 * v111));
                }

                v134 = vmlaq_f32(v118, v223, v117);
                v135 = vmulq_f32(v134, v134);
                *v135.i8 = vadd_f32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
                v136 = vdupq_lane_s32(vadd_f32(*v135.i8, vdup_lane_s32(*v135.i8, 1)), 0);
                v137 = vrsqrteq_f32(v136);
                v138 = vmulq_f32(v137, vrsqrtsq_f32(v136, vmulq_f32(v137, v137)));
                v91 = vmulq_f32(vmulq_f32(v138, vrsqrtsq_f32(v136, vmulq_f32(v138, v138))), v134);
                v86 = vceqzq_f32(v136);
                _Q3 = vbslq_s8(v86, v134, v91);
                v37 = 0.5;
              }
            }

            sub_1AF1BA184(v40, _Q3, *v86.i64, *v91.i64, _Q3.n128_f64[0], *v80.i64, _D5, v79);
          }

          if ((v16 & 1) == 0)
          {
            sub_1AF1DEDE8(v15, v40);
          }

          v38 += 3;
          --v36;
        }

        while (v36);
      }

      HIDWORD(v141) = v220.i32[1];
      v139 = vsubq_f32(v233, v220);
      v140 = vmulq_f32(v139, v139);
      ++v35;
      LODWORD(v141) = 1063675494;
      _ZF = sqrtf(v140.f32[2] + vaddv_f32(*v140.f32)) < 0.9 || v35 == 10;
      v36 = v215 - 1;
    }

    while (!_ZF);
    result = 1;
    v140.i32[0] = 1.0;
    if (v214 != 1.0 && v215 >= 2)
    {
      v144 = 1.0 - v214;
      v145 = (v7 + 10);
      do
      {
        v146 = v145[-2].i64[0];
        *v147.i64 = sub_1AF1BA0F4(v146, *v140.i64, v141, v10, v11, v12, v13, v14);
        v148 = v147;
        v149 = *v145;
        v150 = vmulq_f32(v147, *v145);
        v151 = vaddq_f32(v148, *v145);
        v232 = v148;
        v235 = *v145;
        if (vaddv_f32(vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL))) >= 0.0)
        {
          v172 = vsubq_f32(v149, v148);
          v173 = vmulq_f32(v172, v172);
          v174 = vmulq_f32(v151, v151);
          v175 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v173.i8, *&vextq_s8(v173, v173, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v174.i8, *&vextq_s8(v174, v174, 8uLL)))));
          v176 = v175 + v175;
          v177 = 1.0;
          v178 = 1.0;
          if ((v175 + v175) != 0.0)
          {
            v178 = sinf(v175 + v175) / v176;
          }

          if ((v144 * v176) != 0.0)
          {
            v226 = v178;
            v179 = sinf(v144 * v176);
            v178 = v226;
            v177 = v179 / (v144 * v176);
          }

          v180 = v176 * v214;
          v181 = 1.0;
          if (v180 != 0.0)
          {
            v227 = v178;
            v182 = sinf(v180);
            v178 = v227;
            v181 = v182 / v180;
          }

          v183 = v178;
          v184 = vrecpe_f32(LODWORD(v178));
          v185 = vmul_f32(v184, vrecps_f32(LODWORD(v183), v184));
          v186 = vmul_f32(v185, vrecps_f32(LODWORD(v183), v185)).f32[0];
          *v185.i32 = v144 * (v186 * v177);
          v170 = vdupq_lane_s32(v185, 0);
          v171 = vmulq_n_f32(v232, (v186 * v181) * v214);
        }

        else
        {
          v152 = vmulq_f32(v151, v151);
          v153 = vsubq_f32(v149, v148);
          v154 = vmulq_f32(v153, v153);
          v155 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v152.i8, *&vextq_s8(v152, v152, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v154.i8, *&vextq_s8(v154, v154, 8uLL)))));
          v159 = v155 + v155;
          v160 = 1.0;
          v161 = 1.0;
          if ((v155 + v155) != 0.0)
          {
            v161 = sinf(v155 + v155) / v159;
          }

          if ((v144 * v159) != 0.0)
          {
            v224 = v161;
            v162 = sinf(v144 * v159);
            v161 = v224;
            v160 = v162 / (v144 * v159);
          }

          v163 = v159 * v214;
          v164 = 1.0;
          if (v163 != 0.0)
          {
            v225 = v161;
            v165 = sinf(v163);
            v161 = v225;
            v164 = v165 / v163;
          }

          v166 = v161;
          v167 = vrecpe_f32(LODWORD(v161));
          v168 = vmul_f32(v167, vrecps_f32(LODWORD(v166), v167));
          v169 = vmul_f32(v168, vrecps_f32(LODWORD(v166), v168)).f32[0];
          *v168.i32 = v144 * (v169 * v160);
          v170 = vdupq_lane_s32(v168, 0);
          v171 = vmulq_n_f32(vnegq_f32(v232), (v169 * v164) * v214);
        }

        v187 = vmlaq_f32(v171, v235, v170);
        v188 = vmulq_f32(v187, v187);
        *v188.i8 = vadd_f32(*v188.i8, *&vextq_s8(v188, v188, 8uLL));
        v189 = vdupq_lane_s32(vadd_f32(*v188.i8, vdup_lane_s32(*v188.i8, 1)), 0);
        v190 = vrsqrteq_f32(v189);
        v191 = vmulq_f32(v190, vrsqrtsq_f32(v189, vmulq_f32(v190, v190)));
        v192 = vrsqrtsq_f32(v189, vmulq_f32(v191, v191));
        v193 = vmulq_f32(vmulq_f32(v191, v192), v187);
        v194 = vceqzq_f32(v189);
        sub_1AF1BA184(v146, vbslq_s8(v194, v187, v193), *v194.i64, *v193.i64, *v192.i64, v156, v157, v158);
        v145 += 3;
        --v36;
      }

      while (v36);
      return 1;
    }

    return result;
  }

  v195 = a4;
  if (v5 == a4)
  {
    if ((byte_1EB6584B1 & 1) == 0)
    {
      byte_1EB6584B1 = 1;
      v212 = sub_1AF0D5194();
      result = os_log_type_enabled(v212, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1AFDD6470(v212);
    }

    return 0;
  }

  v196 = 0;
  v197 = 0;
  v198 = a4;
  while (v198)
  {
    ++v197;
    v198 = sub_1AF1B9A6C(v198);
    v196 += 48;
    if (v198 == v5)
    {
      v199 = malloc_type_malloc(v196, 0x102004031CE6520uLL);
      v207 = 0;
      v4[10].n128_u64[0] = v199;
      v4[10].n128_u64[1] = v197;
      do
      {
        v208 = v4[10].n128_u64[0];
        *(v208 + v207 + 8) = 1078530011;
        v209 = v4[11].n128_u64[0];
        if (v209)
        {
          Value = CFDictionaryGetValue(v209, v195);
          v208 = v4[10].n128_u64[0];
          if (Value)
          {
            *(v208 + v207 + 8) = Value;
          }
        }

        *(v208 + v207) = v195;
        *&v211 = sub_1AF1BA0F4(v195, v200, v201, v202, v203, v204, v205, v206);
        *(v4[10].n128_u64[0] + v207 + 16) = v211;
        v195 = sub_1AF1B9A6C(v195);
        v207 += 48;
        --v197;
      }

      while (v197);
      v7 = v4[10].n128_u64[0];
      goto LABEL_3;
    }
  }

  if (byte_1EB6584B0)
  {
    return 0;
  }

  byte_1EB6584B0 = 1;
  v213 = sub_1AF0D5194();
  result = os_log_type_enabled(v213, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD642C(v213);
    return 0;
  }

  return result;
}

void sub_1AF1530BC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
  v12 = *(a1 + 160);
  if (v12)
  {
    free(v12);
    *(a1 + 160) = 0;
  }
}

void sub_1AF153120(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[9] = a2;
}

void sub_1AF15317C(uint64_t a1, void *key, float a3)
{
  Mutable = *(a1 + 176);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a1 + 176) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, LODWORD(a3));
  *(a1 + 184) = 1;
  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = *(a1 + 168);
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = vdupq_n_s64(v9);
      v12 = xmmword_1AFE21100;
      v13 = xmmword_1AFE21110;
      v14 = (v7 + 104);
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (vuzp1_s16(v16, *v11.i8).u8[0])
        {
          *(v14 - 24) = a3;
        }

        if (vuzp1_s16(v16, *&v11).i8[2])
        {
          *(v14 - 12) = a3;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
        {
          *v14 = a3;
          v14[12] = a3;
        }

        v12 = vaddq_s64(v12, v15);
        v13 = vaddq_s64(v13, v15);
        v14 += 48;
        v10 -= 4;
      }

      while (v10);
    }
  }
}

double sub_1AF15328C(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 != a2)
  {
    v32 = v3;
    v33 = v4;
    v23 = a3;
    v34 = *sub_1AF1B9B04(a2);
    v35 = __invert_f4(v34);
    if (a1)
    {
      v21 = v35.columns[1];
      v22 = v35.columns[0];
      v19 = v35.columns[3];
      v20 = v35.columns[2];
      v6 = sub_1AF1B9B04(a1);
      v35.columns[3] = v19;
      v35.columns[2] = v20;
      v35.columns[1] = v21;
      v35.columns[0] = v22;
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
    }

    else
    {
      v10 = *&zmmword_1AFE213F0[32];
      v9 = *&zmmword_1AFE213F0[48];
      v8 = *zmmword_1AFE213F0;
      v7 = *&zmmword_1AFE213F0[16];
    }

    v11 = 0;
    v12 = v23;
    v12.n128_u32[3] = 1.0;
    v24 = v8;
    v25 = v7;
    v26 = v10;
    v27 = v9;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    do
    {
      *(&v28 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(&v24 + v11))), v35.columns[1], *(&v24 + v11), 1), v35.columns[2], *(&v24 + v11), 2), v35.columns[3], *(&v24 + v11), 3);
      v11 += 16;
    }

    while (v11 != 64);
    v13 = 0;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = v31;
    v24 = xmmword_1AFE20150;
    v25 = xmmword_1AFE20160;
    v26 = xmmword_1AFE20180;
    v27 = v12;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    do
    {
      *(&v28 + v13) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*(&v24 + v13))), v15, *(&v24 + v13), 1), v16, *(&v24 + v13), 2), v17, *(&v24 + v13), 3);
      v13 += 16;
    }

    while (v13 != 64);
    a3.n128_u64[0] = v31.i64[0];
  }

  return a3.n128_f64[0];
}

void sub_1AF1533C8()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD40 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"minimumDistance", 0x90u, 1, 0);
  sub_1AF1DD02C(@"maximumDistance", 0x94u, 1, 0);

  sub_1AF1DD018();
}

void sub_1AF153464(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[11] = a2;
}

void sub_1AF1534C0(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 152) = a2;
}

void sub_1AF153514(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

void sub_1AF153568(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 148) = a2;
}

BOOL sub_1AF1535BC(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a3 + 16);
  v17 = v16[8].i64[1];
  if (v17)
  {
    v130 = sub_1AF1B9AB4(v16[8].i64[1]);
    v132 = sub_1AF1B9AB4(a4);
    v18 = vsubq_f32(v132, v130);
    v19 = vmulq_f32(v18, v18);
    v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    v129 = v19;
    if (v19.f32[0] == 0.0)
    {
      v20.f32[0] = arc4random();
      v127 = v20;
      v125 = arc4random();
      v21 = arc4random();
      v23 = v127;
      v23.f32[1] = v125;
      v23.f32[2] = v21;
      v18 = vmulq_f32(v23, v23);
      v22 = v23;
      v23.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
      *v18.f32 = vrsqrte_f32(v23.u32[0]);
      *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v23.u32[0], vmul_f32(*v18.f32, *v18.f32)));
      *v23.f32 = vrsqrts_f32(v23.u32[0], vmul_f32(*v18.f32, *v18.f32));
      *v18.f32 = vmul_f32(*v18.f32, *v23.f32);
      v24 = vmulq_n_f32(v22, v18.f32[0]);
    }

    else
    {
      v23 = vdupq_lane_s32(*v19.f32, 0);
      v24 = vdivq_f32(v18, v23);
    }

    if (v16[9].i8[8] == 1)
    {
      v123 = v24;
      *v25.i64 = sub_1AF1B9BEC(v16[8].i64[1]);
      v128 = v25;
      v26 = vmulq_f32(v25, xmmword_1AFE21390);
      v27 = vmulq_f32(v26, v26);
      *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v28 = vdupq_lane_s32(vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)), 0);
      v29 = vrsqrteq_f32(v28);
      v30 = vmulq_f32(v29, vrsqrtsq_f32(v28, vmulq_f32(v29, v29)));
      v126 = v26;
      v31 = vbslq_s8(vceqzq_f32(v28), v26, vmulq_f32(v26, vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)))));
      v32 = vmulq_f32(v31, xmmword_1AFE21390);
      v33 = vnegq_f32(v32);
      v34 = vtrn2q_s32(v32, vtrn1q_s32(v32, v33));
      v35 = vmulq_lane_f32(vextq_s8(v32, v33, 8uLL), *&vnegq_f32(v123), 1);
      v36 = vrev64q_s32(v32);
      v36.i32[0] = v33.i32[1];
      v36.i32[3] = v33.i32[2];
      v37 = vmlsq_laneq_f32(vmlsq_lane_f32(v35, vextq_s8(v34, v34, 8uLL), *v123.f32, 0), v36, v123, 2);
      v38 = vnegq_f32(v37);
      v39 = vtrn2q_s32(v37, vtrn1q_s32(v37, v38));
      v40 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v37, v38, 8uLL), *v31.f32, 1), vextq_s8(v39, v39, 8uLL), v31.f32[0]);
      v41 = vrev64q_s32(v37);
      v41.i32[0] = v38.i32[1];
      v41.i32[3] = v38.i32[2];
      v124 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v37, v31, 3), v41, v31, 2), v40);
      *v42.i64 = sub_1AF1555CC(v124, v16[11]);
      v43 = v42;
      v44 = vmulq_f32(v42, xmmword_1AFE201A0);
      v121 = v43;
      v45 = 1.0;
      if (vaddv_f32(vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL))) >= 0.0)
      {
        v68 = 1.0 - a1;
        v69 = vsubq_f32(xmmword_1AFE201A0, v43);
        v70 = vmulq_f32(v69, v69);
        v71 = vaddq_f32(v43, xmmword_1AFE201A0);
        v72 = vmulq_f32(v71, v71);
        v73 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)))));
        v74 = v73 + v73;
        v53 = (v73 + v73) == 0.0;
        v75 = 1.0;
        if (!v53)
        {
          v75 = sinf(v74) / v74;
        }

        v76 = v75;
        v77 = vrecpe_f32(LODWORD(v75));
        v78 = vmul_f32(v77, vrecps_f32(LODWORD(v76), v77));
        LODWORD(v79) = vmul_f32(v78, vrecps_f32(LODWORD(v76), v78)).u32[0];
        if ((v68 * v74) != 0.0)
        {
          v119 = v79;
          *v78.i32 = sinf(v68 * v74);
          v79 = v119;
          v45 = *v78.i32 / (v68 * v74);
        }

        *v78.i32 = v68 * (v79 * v45);
        v80 = vdupq_lane_s32(v78, 0);
        v81 = a1;
        v82 = v74 * a1;
        v83 = 1.0;
        if (v82 != 0.0)
        {
          v116 = v80;
          v120 = v79;
          v84 = sinf(v82);
          v80 = v116;
          v79 = v120;
          v81 = a1;
          v83 = v84 / v82;
        }

        v67 = vmlaq_f32(vmulq_n_f32(v121, (v79 * v83) * v81), xmmword_1AFE201A0, v80);
      }

      else
      {
        v46 = 1.0 - a1;
        v47 = vaddq_f32(v43, xmmword_1AFE201A0);
        v48 = vmulq_f32(v47, v47);
        v49 = vsubq_f32(xmmword_1AFE201A0, v43);
        v50 = vmulq_f32(v49, v49);
        v51 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)))));
        v52 = v51 + v51;
        v53 = (v51 + v51) == 0.0;
        v54 = 1.0;
        if (!v53)
        {
          v54 = sinf(v52) / v52;
        }

        v55 = v54;
        v56 = vrecpe_f32(LODWORD(v54));
        v57 = vmul_f32(v56, vrecps_f32(LODWORD(v55), v56));
        LODWORD(v58) = vmul_f32(v57, vrecps_f32(LODWORD(v55), v57)).u32[0];
        if ((v46 * v52) != 0.0)
        {
          v117 = v58;
          v59 = sinf(v46 * v52);
          v58 = v117;
          v45 = v59 / (v46 * v52);
        }

        v60.i32[1] = v121.i32[1];
        v61 = vnegq_f32(v121);
        *v60.i32 = v46 * (v58 * v45);
        v62 = vdupq_lane_s32(v60, 0);
        v63 = a1;
        v64 = v52 * a1;
        v65 = 1.0;
        if (v64 != 0.0)
        {
          v118 = v58;
          v122 = v61;
          v115 = v62;
          v66 = sinf(v64);
          v62 = v115;
          v58 = v118;
          v61 = v122;
          v63 = a1;
          v65 = v66 / v64;
        }

        v67 = vmlaq_f32(vmulq_n_f32(v61, (v58 * v65) * v63), xmmword_1AFE201A0, v62);
      }

      v85 = vmulq_f32(v67, v67);
      *v85.i8 = vadd_f32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
      v86 = vdupq_lane_s32(vadd_f32(*v85.i8, vdup_lane_s32(*v85.i8, 1)), 0);
      v87 = vrsqrteq_f32(v86);
      v88 = vmulq_f32(v87, vrsqrtsq_f32(v86, vmulq_f32(v87, v87)));
      v89 = vbslq_s8(vceqzq_f32(v86), v67, vmulq_f32(vmulq_f32(v88, vrsqrtsq_f32(v86, vmulq_f32(v88, v88))), v67));
      v90 = vmulq_f32(v89, xmmword_1AFE21390);
      v91 = vnegq_f32(v90);
      v92 = vtrn2q_s32(v90, vtrn1q_s32(v90, v91));
      v93 = vmulq_lane_f32(vextq_s8(v90, v91, 8uLL), *v124.f32, 1);
      v94 = vrev64q_s32(v90);
      v94.i32[0] = v91.i32[1];
      v94.i32[3] = v91.i32[2];
      v95 = vmlaq_laneq_f32(vmlaq_n_f32(v93, vextq_s8(v92, v92, 8uLL), v124.f32[0]), v94, v124, 2);
      v96 = vnegq_f32(v95);
      v97 = vtrn2q_s32(v95, vtrn1q_s32(v95, v96));
      v98 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v95, v96, 8uLL), *v89.f32, 1), vextq_s8(v97, v97, 8uLL), v89.f32[0]);
      v99 = vrev64q_s32(v95);
      v99.i32[0] = v96.i32[1];
      v99.i32[3] = v96.i32[2];
      v100 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v95, v89, 3), v99, v89, 2), v98);
      v101 = vnegq_f32(v126);
      v102 = vtrn2q_s32(v126, vtrn1q_s32(v126, v101));
      v103 = vmlsq_lane_f32(vmulq_lane_f32(vextq_s8(v126, v101, 8uLL), *&vnegq_f32(v100), 1), vextq_s8(v102, v102, 8uLL), *v100.f32, 0);
      v104 = vrev64q_s32(v126);
      v104.i32[0] = v101.i32[1];
      v104.i32[3] = v101.i32[2];
      v23 = vmlsq_laneq_f32(v103, v104, v100, 2);
      v105 = vnegq_f32(v23);
      v106 = vtrn2q_s32(v23, vtrn1q_s32(v23, v105));
      v107 = vrev64q_s32(v23);
      v107.i32[0] = v105.i32[1];
      v108 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v105, 8uLL), *v128.f32, 1), vextq_s8(v106, v106, 8uLL), v128.f32[0]);
      v107.i32[3] = v105.i32[2];
      v18 = vmlaq_laneq_f32(vmulq_laneq_f32(v23, v128, 3), v107, v128, 2);
      v24 = vaddq_f32(v18, v108);
    }

    v18.i32[0] = v16[9].i32[0];
    v23.i32[0] = v16[9].i32[1];
    v133 = vmlaq_n_f32(v132, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v18, v129), 0), vmlaq_n_f32(v130, v24, v18.f32[0]), vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v129, v23), 0), vmlaq_n_f32(v130, v24, v23.f32[0]), vmlaq_n_f32(v130, v24, v129.f32[0]))), v132), a1);
    v109 = sub_1AF1B9A6C(a4);
    if (v109)
    {
      v110 = *sub_1AF1B9B04(v109);
    }

    else
    {
      v110 = *zmmword_1AFE213F0;
    }

    v135 = __invert_f4(v110);
    v134 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v135.columns[3], v135.columns[2], v133, 2), v135.columns[1], *v133.f32, 1), v135.columns[0], v133.f32[0]);
    v111 = sub_1AF1DE360(a5);
    v112 = sub_1AF1DE3A8(a5);
    v113 = sub_1AF288070(8);
    sub_1AF1C35C0(v111, v112, &v134, v113, 6, 0);
  }

  return v17 != 0;
}

int32x2_t sub_1AF153BCC()
{
  if (qword_1ED73AD48 != -1)
  {
    sub_1AFDD6184();
  }

  v0 = sub_1AF0D160C(qword_1ED73AD40, 0xB0uLL);
  *(v0 + 72) = 1065353216;
  *(v0 + 76) = 257;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0x7F7FFFFF00000000;
  *(v0 + 152) = 0;
  *(v0 + 176) = xmmword_1AFE206C0;
  result = vdup_n_s32(0x43B40000u);
  *(v0 + 156) = result;
  *(v0 + 88) = sub_1AF1535BC;
  *(v0 + 96) = sub_1AF153BBC;
  return result;
}

void sub_1AF153C64()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD60 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"maximumLinearAcceleration", 0x8Cu, 1, 0);
  sub_1AF1DD02C(@"maximumLinearVelocity", 0x88u, 1, 0);
  sub_1AF1DD02C(@"decelerationDistance", 0x90u, 1, 0);
  sub_1AF1DD02C(@"damping", 0x94u, 1, 0);

  sub_1AF1DD018();
}

void sub_1AF153D30(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
}

void sub_1AF153D84(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 140) = a2;
}

uint64_t sub_1AF153DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD61FC(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = malloc_type_calloc(1uLL, 0x60uLL, 0x100004084AB7CDAuLL);
  *(a2 + 56) = v13;
  *v13 = sub_1AF1B9AB4(a3);
  v13[1] = 0u;
  v14.n128_f64[0] = sub_1AF1B9BEC(a3);
  v13[2] = v14;
  v13[3] = 0u;
  return 1;
}

uint64_t sub_1AF153E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a2 + 56);
  v18 = sub_1AF1302D4(a1);
  if (v18 != *(v17 + 72))
  {
    v19 = sub_1AF1B9A6C(a3);
    if (v19)
    {
      v20 = *sub_1AF1B9B04(v19);
    }

    else
    {
      v20 = *zmmword_1AFE213F0;
    }

    v68 = __invert_f4(v20);
    v62 = v68.columns[0];
    v63 = v68.columns[1];
    v64 = v68.columns[3];
    v65 = v68.columns[2];
    if (*(v17 + 80) == 1)
    {
      *v68.columns[0].i64 = v18 - *(v17 + 72);
      v68.columns[0].f32[0] = *v68.columns[0].i64;
    }

    else
    {
      v68.columns[0].i32[0] = 1015580809;
    }

    v61 = *v68.columns[0].f32;
    v21 = *(a2 + 16);
    v22 = sub_1AF1B9AB4(a3);
    if ((*(v17 + 80) & 1) == 0)
    {
      *v17 = v22;
      *(v17 + 80) = 1;
    }

    v60 = v22;
    *(v17 + 72) = sub_1AF1302D4(a1);
    v23 = v21[34];
    v24 = v21[35];
    v25 = *v17;
    v26 = *(v17 + 16);
    v27 = vsubq_f32(v60, *v17);
    v28 = vdupq_lane_s32(v61, 0);
    v29 = vdivq_f32(v27, v28);
    v30 = vdivq_f32(vsubq_f32(v29, v26), v28);
    v31 = vmulq_f32(v30, v30);
    v32 = v31.f32[2] + vaddv_f32(*v31.f32);
    if (sqrtf(v32) > v24)
    {
      v33 = v32;
      v34 = vrsqrte_f32(LODWORD(v32));
      v35 = vmul_f32(v34, vrsqrts_f32(LODWORD(v33), vmul_f32(v34, v34)));
      v29 = vmlaq_f32(v26, v28, vmulq_n_f32(vmulq_n_f32(v30, vmul_f32(v35, vrsqrts_f32(LODWORD(v33), vmul_f32(v35, v35))).f32[0]), v24));
    }

    v36 = vmulq_f32(v29, v29);
    v37 = v36.f32[2] + vaddv_f32(*v36.f32);
    if (sqrtf(v37) > v23)
    {
      v38 = v37;
      v39 = vrsqrte_f32(LODWORD(v37));
      v40 = vmul_f32(v39, vrsqrts_f32(LODWORD(v38), vmul_f32(v39, v39)));
      v29 = vmulq_n_f32(vmulq_n_f32(v29, vmul_f32(v40, vrsqrts_f32(LODWORD(v38), vmul_f32(v40, v40))).f32[0]), v23);
    }

    v41 = v21[36];
    v42 = vmulq_n_f32(v29, 1.0 - v21[37]);
    if (v41 != 0.0)
    {
      v43 = vmulq_f32(v27, v27);
      v44 = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
      v45 = vmulq_f32(v42, v42);
      v46 = v45.f32[2] + vaddv_f32(*v45.f32);
      v47 = sqrtf(v46);
      if (v44 >= v41)
      {
        *(v17 + 64) = v47;
      }

      else
      {
        v48 = v44 / v41;
        if (v48 >= 1.0)
        {
          v49 = 1.0;
        }

        else
        {
          v49 = v48 * v48;
        }

        v50 = v49 * *(v17 + 64);
        if (v47 > v50)
        {
          v51 = v46;
          v52 = vrsqrte_f32(LODWORD(v46));
          v53 = vmul_f32(v52, vrsqrts_f32(LODWORD(v51), vmul_f32(v52, v52)));
          v42 = vmulq_n_f32(vmulq_n_f32(v42, vmul_f32(v53, vrsqrts_f32(LODWORD(v51), vmul_f32(v53, v53))).f32[0]), v50);
        }
      }
    }

    v54 = vmlaq_n_f32(v25, v42, *v61.i32);
    if (a5 != 0.0)
    {
      v55 = vmlaq_n_f32(v60, vsubq_f32(v54, v60), a5);
      v42 = vdivq_f32(vsubq_f32(v55, v25), v28);
      v54 = v55;
    }

    *v17 = v54;
    *(v17 + 16) = v42;
    v67 = vaddq_f32(v64, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, v54.f32[0]), v63, *v54.f32, 1), v65, v54, 2));
    v56 = sub_1AF1DE360(a4);
    v57 = sub_1AF1DE3A8(a4);
    v58 = sub_1AF288070(8);
    sub_1AF1C35C0(v56, v57, &v67, v58, 6, 0);
  }

  return 1;
}

double sub_1AF154184()
{
  if (qword_1ED73AD68 != -1)
  {
    sub_1AFDD61C0();
  }

  v0 = sub_1AF0D160C(qword_1ED73AD60, 0x88uLL);
  *(v0 + 72) = 1065353216;
  *(v0 + 76) = 257;
  result = 1.40444743e306;
  *(v0 + 136) = xmmword_1AFE213D0;
  *(v0 + 88) = sub_1AF153E74;
  *(v0 + 96) = sub_1AF154174;
  *(v0 + 80) = sub_1AF153DD8;
  return result;
}

void sub_1AF15420C()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD00 = v0;
  if (qword_1ED73AD38 != -1)
  {
    sub_1AFDD6300();
  }

  sub_1AF1DCFAC(v0, qword_1ED73AD30);
  sub_1AF1DD02C(@"orientationOffset", 0xC0u, 9, 3);
  sub_1AF1DD02C(@"positionOffset", 0xA0u, 8, 6);
  sub_1AF1DD02C(@"scaleOffset", 0xB0u, 8, 7);

  sub_1AF1DD018();
}

void sub_1AF1542C0(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = *(a1 + 144) & 0xFE | a2;
}

void sub_1AF154320(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 144) = *(a1 + 144) & 0xFD | v12;
}

void sub_1AF15438C(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 144) = *(a1 + 144) & 0xFB | v12;
}

void sub_1AF1543F8(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[10] = a2;
}

uint64_t sub_1AF154454(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a3 + 16);
  if (!v16[8].i64[1])
  {
    return 0;
  }

  v17 = sub_1AF1B9A6C(a4);
  result = sub_1AF1B9B04(a4);
  if (result)
  {
    v19 = result;
    if (v17)
    {
      v20 = *sub_1AF1B9B04(v17);
    }

    else
    {
      v20 = *zmmword_1AFE213F0;
    }

    v274 = __invert_f4(v20);
    v269 = v274.columns[1];
    v270 = v274.columns[0];
    v267 = v274.columns[3];
    v268 = v274.columns[2];
    if (v16[9].i8[0])
    {
      v266 = sub_1AF1B9AB4(v16[8].i64[1]);
      v52 = sub_1AF1B9AB4(a4);
      v265 = vmlaq_n_f32(v52, vsubq_f32(vaddq_f32(v266, v16[10]), v52), a1);
      if ((v16[9].i8[0] & 2) != 0)
      {
LABEL_12:
        v21 = sub_1AF1B9B04(v16[8].i64[1]);
        v22 = *(v21 + 16);
        v23 = *(v21 + 32);
        v24 = vmulq_f32(*v21, *v21);
        v25 = vmulq_f32(v22, v22);
        v26 = vmulq_f32(v23, v23);
        v27 = vzip2q_s32(v24, v26);
        v28 = vzip1q_s32(vzip1q_s32(v24, v26), v25);
        v29 = vtrn2q_s32(v24, v25);
        v29.i32[2] = v26.i32[1];
        v30 = vaddq_f32(vzip1q_s32(v27, vdupq_laneq_s32(v25, 2)), vaddq_f32(v28, v29));
        v29.i64[0] = 0x80000000800000;
        v29.i64[1] = 0x80000000800000;
        v31 = vcgeq_f32(v29, v30);
        v30.i32[3] = 0;
        v32 = vrsqrteq_f32(v30);
        v33 = vmulq_f32(v32, vrsqrtsq_f32(v30, vmulq_f32(v32, v32)));
        v34 = v31;
        v34.i32[3] = 0;
        v35 = vbslq_s8(vcltzq_s32(v34), v30, vmulq_f32(v33, vrsqrtsq_f32(v30, vmulq_f32(v33, v33))));
        v36 = vmulq_n_f32(*v21, v35.f32[0]);
        v37 = vmulq_lane_f32(v22, *v35.f32, 1);
        v38 = vmulq_laneq_f32(v23, v35, 2);
        v39 = vuzp1q_s32(v38, v38);
        v40 = vuzp1q_s32(v37, v37);
        v41 = v36;
        if (v31.i32[0])
        {
          v42 = vmlaq_f32(vmulq_f32(vextq_s8(v39, v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(v40, v37, 0xCuLL));
          v41 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
        }

        v43 = vuzp1q_s32(v36, v36);
        v44 = v37;
        if (v31.i32[1])
        {
          v45 = vmlaq_f32(vmulq_f32(vextq_s8(v43, v36, 0xCuLL), vnegq_f32(v38)), v36, vextq_s8(v39, v38, 0xCuLL));
          v44 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
        }

        if (v31.i32[2])
        {
          v46 = vmlaq_f32(vmulq_f32(vextq_s8(v40, v37, 0xCuLL), vnegq_f32(v36)), v37, vextq_s8(v43, v36, 0xCuLL));
          v38 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
        }

        v47 = (*v41.i32 + *&v44.i32[1]) + v38.f32[2];
        if (v47 > 0.0)
        {
          v48 = sqrtf(v47 + 1.0);
          *v49.f32 = vsub_f32(*&vzip2q_s32(v44, vuzp1q_s32(v44, v38)), *&vtrn2q_s32(v38, vzip2q_s32(v38, v41)));
          v49.f32[2] = *&v41.i32[1] - *v44.i32;
          v49.f32[3] = v48 * v48;
          v50 = 0.5 / v48;
LABEL_20:
          v51 = vmulq_n_f32(v49, v50);
          goto LABEL_46;
        }

        _NF = *v41.i32 < *&v44.i32[1] || *v41.i32 < v38.f32[2];
        if (_NF)
        {
          if (*&v44.i32[1] <= v38.f32[2])
          {
            v240 = vzip2q_s32(v41, v44).u64[0];
            v241 = __PAIR64__(v41.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v38.f32[2] + 1.0) - *v41.i32) - *&v44.i32[1])));
            v242 = vdup_lane_s32(*v44.i8, 0);
            v243 = vsub_f32(*v41.i8, v242);
            v242.i32[0] = v241.i32[0];
            v242.i32[0] = vmul_f32(v241, v242).u32[0];
            v242.i32[1] = v243.i32[1];
            *v49.f32 = vadd_f32(v240, *v38.f32);
            *&v49.u32[2] = v242;
            v50 = 0.5 / v241.f32[0];
            goto LABEL_20;
          }

          v87 = sqrtf(((*&v44.i32[1] + 1.0) - *v41.i32) - v38.f32[2]);
          v91.f32[0] = *&v41.i32[1] + *v44.i32;
          v84 = vzip2q_s32(v41, v44).u64[0];
          v91.f32[1] = v87 * v87;
          *&v91.u32[2] = vext_s8(vadd_f32(*v38.f32, v84), vsub_f32(*v38.f32, v84), 4uLL);
        }

        else
        {
          v87 = sqrtf(((*v41.i32 + 1.0) - *&v44.i32[1]) - v38.f32[2]);
          v91.f32[0] = v87 * v87;
          v88 = *&v41.i32[1] + *v44.i32;
          v89 = vzip2q_s32(v41, v44).u64[0];
          LODWORD(v90) = vadd_f32(v89, *v38.f32).u32[0];
          HIDWORD(v90) = vsub_f32(v89, *&v38).i32[1];
          v91.f32[1] = v88;
          v91.i64[1] = v90;
        }

        v51 = vmulq_n_f32(v91, 0.5 / v87);
LABEL_46:
        v261 = v51;
        v92 = sub_1AF1B9B04(a4);
        v93 = *(v92 + 16);
        v94 = *(v92 + 32);
        v95 = vmulq_f32(*v92, *v92);
        v96 = vmulq_f32(v93, v93);
        v97 = vmulq_f32(v94, v94);
        v98 = vzip2q_s32(v95, v97);
        v99 = vzip1q_s32(vzip1q_s32(v95, v97), v96);
        v100 = vtrn2q_s32(v95, v96);
        v100.i32[2] = v97.i32[1];
        v101 = vaddq_f32(vzip1q_s32(v98, vdupq_laneq_s32(v96, 2)), vaddq_f32(v99, v100));
        v100.i64[0] = 0x80000000800000;
        v100.i64[1] = 0x80000000800000;
        v102 = vcgeq_f32(v100, v101);
        v101.i32[3] = 0;
        v103 = vrsqrteq_f32(v101);
        v104 = vmulq_f32(v103, vrsqrtsq_f32(v101, vmulq_f32(v103, v103)));
        v105 = v102;
        v105.i32[3] = 0;
        v106 = vbslq_s8(vcltzq_s32(v105), v101, vmulq_f32(v104, vrsqrtsq_f32(v101, vmulq_f32(v104, v104))));
        v107 = vmulq_n_f32(*v92, v106.f32[0]);
        v108 = vmulq_lane_f32(v93, *v106.f32, 1);
        v109 = vmulq_laneq_f32(v94, v106, 2);
        v110 = vuzp1q_s32(v109, v109);
        v111 = vuzp1q_s32(v108, v108);
        v112 = v107;
        if (v102.i32[0])
        {
          v113 = vmlaq_f32(vmulq_f32(vextq_s8(v110, v109, 0xCuLL), vnegq_f32(v108)), v109, vextq_s8(v111, v108, 0xCuLL));
          v112 = vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL);
        }

        v114 = vuzp1q_s32(v107, v107);
        v115 = v108;
        if (v102.i32[1])
        {
          v116 = vmlaq_f32(vmulq_f32(vextq_s8(v114, v107, 0xCuLL), vnegq_f32(v109)), v107, vextq_s8(v110, v109, 0xCuLL));
          v115 = vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL);
        }

        if (v102.i32[2])
        {
          v117 = vmlaq_f32(vmulq_f32(vextq_s8(v111, v108, 0xCuLL), vnegq_f32(v107)), v108, vextq_s8(v114, v107, 0xCuLL));
          v109 = vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL);
        }

        v118 = (*v112.i32 + *&v115.i32[1]) + v109.f32[2];
        if (v118 > 0.0)
        {
          v119 = sqrtf(v118 + 1.0);
          *v120.f32 = vsub_f32(*&vzip2q_s32(v115, vuzp1q_s32(v115, v109)), *&vtrn2q_s32(v109, vzip2q_s32(v109, v112)));
          v120.f32[2] = *&v112.i32[1] - *v115.i32;
          v120.f32[3] = v119 * v119;
          v121 = 0.5 / v119;
LABEL_54:
          v122 = vmulq_n_f32(v120, v121);
LABEL_64:
          _Q0 = v16[12];
          _S1 = _Q0.i32[3];
          _Q6 = v261;
          v138 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(v261)), _Q0, vextq_s8(vuzp1q_s32(_Q6, _Q6), v261, 0xCuLL));
          v142 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v261, _Q0, 3), _Q0, v261, 3), vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL));
          __asm { FMLA            S0, S1, V6.S[3] }

          v142.i32[3] = _Q0.i32[0];
          v143 = vmulq_f32(v122, v142);
          v259 = v122;
          v262 = v142;
          v144 = 1.0;
          if (vaddv_f32(vadd_f32(*v143.i8, *&vextq_s8(v143, v143, 8uLL))) >= 0.0)
          {
            v166 = 1.0 - a1;
            v167 = vsubq_f32(v122, v142);
            v168 = vmulq_f32(v167, v167);
            v169 = vaddq_f32(v122, v142);
            v170 = vmulq_f32(v169, v169);
            v171 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v168.i8, *&vextq_s8(v168, v168, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v170.i8, *&vextq_s8(v170, v170, 8uLL)))));
            v172 = v171 + v171;
            _ZF = (v171 + v171) == 0.0;
            v173 = 1.0;
            if (!_ZF)
            {
              v173 = sinf(v172) / v172;
            }

            v174 = v173;
            v175 = vrecpe_f32(LODWORD(v173));
            v176 = vmul_f32(v175, vrecps_f32(LODWORD(v174), v175));
            LODWORD(v177) = vmul_f32(v176, vrecps_f32(LODWORD(v174), v176)).u32[0];
            if ((v166 * v172) != 0.0)
            {
              v256 = v177;
              *v176.i32 = sinf(v166 * v172);
              v177 = v256;
              v144 = *v176.i32 / (v166 * v172);
            }

            *v176.i32 = v166 * (v177 * v144);
            v178 = vdupq_lane_s32(v176, 0);
            v179 = a1;
            v180 = v172 * a1;
            v181 = 1.0;
            if (v180 != 0.0)
            {
              v253 = v178;
              v257 = v177;
              v182 = sinf(v180);
              v178 = v253;
              v177 = v257;
              v179 = a1;
              v181 = v182 / v180;
            }

            v165 = vmlaq_f32(vmulq_n_f32(v262, (v177 * v181) * v179), v259, v178);
          }

          else
          {
            v145 = 1.0 - a1;
            v146 = vaddq_f32(v122, v142);
            v147 = vmulq_f32(v146, v146);
            v148 = vsubq_f32(v122, v142);
            v149 = vmulq_f32(v148, v148);
            v150 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v147.i8, *&vextq_s8(v147, v147, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v149.i8, *&vextq_s8(v149, v149, 8uLL)))));
            v151 = v150 + v150;
            _ZF = (v150 + v150) == 0.0;
            v152 = 1.0;
            if (!_ZF)
            {
              v152 = sinf(v151) / v151;
            }

            v153 = v152;
            v154 = vrecpe_f32(LODWORD(v152));
            v155 = vmul_f32(v154, vrecps_f32(LODWORD(v153), v154));
            LODWORD(v156) = vmul_f32(v155, vrecps_f32(LODWORD(v153), v155)).u32[0];
            if ((v145 * v151) != 0.0)
            {
              v254 = v156;
              v157 = sinf(v145 * v151);
              v156 = v254;
              v144 = v157 / (v145 * v151);
            }

            v158.i32[1] = v262.i32[1];
            v159 = vnegq_f32(v262);
            *v158.i32 = v145 * (v156 * v144);
            v160 = vdupq_lane_s32(v158, 0);
            v161 = a1;
            v162 = v151 * a1;
            v163 = 1.0;
            if (v162 != 0.0)
            {
              v252 = v160;
              v255 = v156;
              v263 = v159;
              v164 = sinf(v162);
              v160 = v252;
              v156 = v255;
              v159 = v263;
              v161 = a1;
              v163 = v164 / v162;
            }

            v165 = vmlaq_f32(vmulq_n_f32(v159, (v156 * v163) * v161), v259, v160);
          }

          v183 = vmulq_f32(v165, v165);
          *v183.i8 = vadd_f32(*v183.i8, *&vextq_s8(v183, v183, 8uLL));
          v184 = vdupq_lane_s32(vadd_f32(*v183.i8, vdup_lane_s32(*v183.i8, 1)), 0);
          v185 = vrsqrteq_f32(v184);
          v186 = vmulq_f32(v185, vrsqrtsq_f32(v184, vmulq_f32(v185, v185)));
          v82 = vbslq_s8(vceqzq_f32(v184), v165, vmulq_f32(vmulq_f32(v186, vrsqrtsq_f32(v184, vmulq_f32(v186, v186))), v165));
          goto LABEL_80;
        }

        if (*v112.i32 < *&v115.i32[1] || *v112.i32 < v109.f32[2])
        {
          if (*&v115.i32[1] <= v109.f32[2])
          {
            v248 = vzip2q_s32(v112, v115).u64[0];
            v249 = __PAIR64__(v112.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v109.f32[2] + 1.0) - *v112.i32) - *&v115.i32[1])));
            v250 = vdup_lane_s32(*v115.i8, 0);
            v251 = vsub_f32(*v112.i8, v250);
            v250.i32[0] = v249.i32[0];
            v250.i32[0] = vmul_f32(v249, v250).u32[0];
            v250.i32[1] = v251.i32[1];
            *v120.f32 = vadd_f32(v248, *v109.f32);
            *&v120.u32[2] = v250;
            v121 = 0.5 / v249.f32[0];
            goto LABEL_54;
          }

          v130 = sqrtf(((*&v115.i32[1] + 1.0) - *v112.i32) - v109.f32[2]);
          v134.f32[0] = *&v112.i32[1] + *v115.i32;
          v124 = vzip2q_s32(v112, v115).u64[0];
          v134.f32[1] = v130 * v130;
          *&v134.u32[2] = vext_s8(vadd_f32(*v109.f32, v124), vsub_f32(*v109.f32, v124), 4uLL);
        }

        else
        {
          v130 = sqrtf(((*v112.i32 + 1.0) - *&v115.i32[1]) - v109.f32[2]);
          v134.f32[0] = v130 * v130;
          v131 = *&v112.i32[1] + *v115.i32;
          v132 = vzip2q_s32(v112, v115).u64[0];
          LODWORD(v133) = vadd_f32(v132, *v109.f32).u32[0];
          HIDWORD(v133) = vsub_f32(v132, *&v109).i32[1];
          v134.f32[1] = v131;
          v134.i64[1] = v133;
        }

        v122 = vmulq_n_f32(v134, 0.5 / v130);
        goto LABEL_64;
      }
    }

    else
    {
      v265 = v19[3];
      if ((v16[9].i8[0] & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v53 = v19[1];
    v54 = v19[2];
    v55 = vmulq_f32(*v19, *v19);
    v56 = vmulq_f32(v53, v53);
    v57 = vmulq_f32(v54, v54);
    v58 = vzip2q_s32(v55, v57);
    v59 = vzip1q_s32(vzip1q_s32(v55, v57), v56);
    v60 = vtrn2q_s32(v55, v56);
    v60.i32[2] = v57.i32[1];
    v61 = vaddq_f32(vzip1q_s32(v58, vdupq_laneq_s32(v56, 2)), vaddq_f32(v59, v60));
    v60.i64[0] = 0x80000000800000;
    v60.i64[1] = 0x80000000800000;
    v62 = vcgeq_f32(v60, v61);
    v61.i32[3] = 0;
    v63 = vrsqrteq_f32(v61);
    v64 = vmulq_f32(v63, vrsqrtsq_f32(v61, vmulq_f32(v63, v63)));
    v65 = v62;
    v65.i32[3] = 0;
    v66 = vbslq_s8(vcltzq_s32(v65), v61, vmulq_f32(v64, vrsqrtsq_f32(v61, vmulq_f32(v64, v64))));
    v67 = vmulq_n_f32(*v19, v66.f32[0]);
    v68 = vmulq_lane_f32(v53, *v66.f32, 1);
    v69 = vmulq_laneq_f32(v54, v66, 2);
    v70 = vuzp1q_s32(v69, v69);
    v71 = vuzp1q_s32(v68, v68);
    v72 = v67;
    if (v62.i32[0])
    {
      v73 = vmlaq_f32(vmulq_f32(vextq_s8(v70, v69, 0xCuLL), vnegq_f32(v68)), v69, vextq_s8(v71, v68, 0xCuLL));
      v72 = vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL);
    }

    v74 = vuzp1q_s32(v67, v67);
    v75 = v68;
    if (v62.i32[1])
    {
      v76 = vmlaq_f32(vmulq_f32(vextq_s8(v74, v67, 0xCuLL), vnegq_f32(v69)), v67, vextq_s8(v70, v69, 0xCuLL));
      v75 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
    }

    if (v62.i32[2])
    {
      v77 = vmlaq_f32(vmulq_f32(vextq_s8(v71, v68, 0xCuLL), vnegq_f32(v67)), v68, vextq_s8(v74, v67, 0xCuLL));
      v69 = vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL);
    }

    v78 = (*v72.i32 + *&v75.i32[1]) + v69.f32[2];
    if (v78 > 0.0)
    {
      v79 = sqrtf(v78 + 1.0);
      *v80.f32 = vsub_f32(*&vzip2q_s32(v75, vuzp1q_s32(v75, v69)), *&vtrn2q_s32(v69, vzip2q_s32(v69, v72)));
      v80.f32[2] = *&v72.i32[1] - *v75.i32;
      v80.f32[3] = v79 * v79;
      v81 = 0.5 / v79;
LABEL_30:
      v82 = vmulq_n_f32(v80, v81);
LABEL_80:
      if ((v16[9].i8[0] & 4) != 0)
      {
        v264 = v82;
        v198 = sub_1AF1B9B04(v16[8].i64[1]);
        v199 = *(v198 + 16);
        v200 = *(v198 + 32);
        v201 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v200, v200), v200, 0xCuLL), vnegq_f32(v199)), v200, vextq_s8(vuzp1q_s32(v199, v199), v199, 0xCuLL));
        v202 = vextq_s8(vuzp1q_s32(v201, v201), v201, 0xCuLL);
        v203 = vmulq_f32(v202, *v198);
        v204 = vmulq_f32(*v198, *v198);
        v205 = vmulq_f32(v199, v199);
        *v202.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v204, v204, 8uLL), *&vextq_s8(v205, v205, 8uLL)), vadd_f32(vzip1_s32(*v204.i8, *v205.i8), vzip2_s32(*v204.i8, *v205.i8))));
        v206 = vmulq_f32(v200, v200);
        v202.i32[2] = sqrtf(v206.f32[2] + vaddv_f32(*v206.f32));
        v258 = v202;
        v260 = v203;
        v207 = sub_1AF1B9B04(a4);
        v208 = *(v207 + 16);
        v209 = *(v207 + 32);
        v210 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v209, v209), v209, 0xCuLL), vnegq_f32(v208)), v209, vextq_s8(vuzp1q_s32(v208, v208), v208, 0xCuLL));
        v211 = vmulq_f32(vextq_s8(vuzp1q_s32(v210, v210), v210, 0xCuLL), *v207);
        v212 = vcltz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v211, v211, 8uLL), *&vextq_s8(v260, v260, 8uLL)), vadd_f32(vzip1_s32(*v211.i8, *v260.i8), vzip2_s32(*v211.i8, *v260.i8))));
        if (v212.i8[4])
        {
          v213 = -1.0;
        }

        else
        {
          v213 = 1.0;
        }

        v214 = vmulq_n_f32(v258, v213);
        _ZF = (v212.i8[0] & 1) == 0;
        v215 = vmulq_f32(*v207, *v207);
        v216 = vmulq_f32(v208, v208);
        v217 = vadd_f32(vzip1_s32(*v215.i8, *v216.i8), vzip2_s32(*v215.i8, *v216.i8));
        v219 = vextq_s8(v215, v215, 8uLL);
        *v219.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v219.f32, *&vextq_s8(v216, v216, 8uLL)), v217));
        v218 = vmulq_f32(v209, v209);
        v219.i32[2] = sqrtf(v218.f32[2] + vaddv_f32(*v218.f32));
        if (_ZF)
        {
          v220 = 1.0;
        }

        else
        {
          v220 = -1.0;
        }

        v221 = vmulq_n_f32(v219, v220);
        v222 = vmulq_f32(v16[11], v214);
        v82 = v264;
        v197 = vmlaq_n_f32(v221, vsubq_f32(v222, v221), a1);
      }

      else
      {
        v187 = v19[1];
        v188 = v19[2];
        v189 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v188, v188), v188, 0xCuLL), vnegq_f32(v187)), v188, vextq_s8(vuzp1q_s32(v187, v187), v187, 0xCuLL));
        v190 = vmulq_f32(vextq_s8(vuzp1q_s32(v189, v189), v189, 0xCuLL), *v19);
        _NF = (v190.f32[2] + vaddv_f32(*v190.f32)) < 0.0;
        v191 = 1.0;
        if (_NF)
        {
          v191 = -1.0;
        }

        v192 = vmulq_f32(*v19, *v19);
        v193 = vmulq_f32(v187, v187);
        v194 = vadd_f32(vzip1_s32(*v192.i8, *v193.i8), vzip2_s32(*v192.i8, *v193.i8));
        v195 = vextq_s8(v192, v192, 8uLL);
        *v195.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v195.f32, *&vextq_s8(v193, v193, 8uLL)), v194));
        v196 = vmulq_f32(v188, v188);
        v195.i32[2] = sqrtf(v196.f32[2] + vaddv_f32(*v196.f32));
        v197 = vmulq_n_f32(v195, v191);
      }

      v223 = 0;
      v224 = v265;
      v224.i32[3] = 1.0;
      v225 = vabsq_f32(v197);
      v225.i32[3] = 0;
      v226.i64[0] = 0x8000000080000000;
      v226.i64[1] = 0x8000000080000000;
      v227 = vorrq_s8(vandq_s8(v197, v226), vabsq_f32(vmaxnmq_f32(v225, xmmword_1AFE20A30)));
      v228 = vmulq_f32(v82, v82);
      v229 = vmulq_laneq_f32(v82, v82, 3);
      v230 = vmuls_lane_f32(v82.f32[0], *v82.f32, 1);
      v231 = vmuls_lane_f32(v82.f32[1], v82, 2);
      v232 = vmuls_lane_f32(v82.f32[0], v82, 2);
      v233.i32[3] = 0;
      v233.f32[0] = (0.5 - v228.f32[1]) - v228.f32[2];
      v233.f32[1] = v230 + v229.f32[2];
      v233.f32[2] = v232 - v229.f32[1];
      v228.f32[0] = 0.5 - v228.f32[0];
      v234.i32[3] = 0;
      v234.f32[0] = v230 - v229.f32[2];
      v234.f32[1] = v228.f32[0] - v228.f32[2];
      v234.f32[2] = v231 + v229.f32[0];
      v229.f32[0] = v231 - v229.f32[0];
      v235.i32[3] = 0;
      v235.f32[0] = v232 + v229.f32[1];
      v235.i32[1] = v229.i32[0];
      v235.f32[2] = v228.f32[0] - v228.f32[1];
      v236 = vaddq_f32(v227, v227);
      v272[0] = vmulq_n_f32(v233, v236.f32[0]);
      v272[1] = vmulq_lane_f32(v234, *v236.f32, 1);
      v272[2] = vmulq_laneq_f32(v235, v236, 2);
      v272[3] = v224;
      memset(v273, 0, sizeof(v273));
      do
      {
        v273[v223] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v270, COERCE_FLOAT(v272[v223])), v269, *&v272[v223], 1), v268, v272[v223], 2), v267, v272[v223], 3);
        ++v223;
      }

      while (v223 != 4);
      v237 = sub_1AF1DE360(a5);
      v238 = sub_1AF1DE3A8(a5);
      v239 = sub_1AF288070(10);
      sub_1AF1C35C0(v237, v238, v273, v239, *(a5 + 34), *(a5 + 35));
      return 1;
    }

    if (*v72.i32 < *&v75.i32[1] || *v72.i32 < v69.f32[2])
    {
      if (*&v75.i32[1] <= v69.f32[2])
      {
        v244 = vzip2q_s32(v72, v75).u64[0];
        v245 = __PAIR64__(v72.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v69.f32[2] + 1.0) - *v72.i32) - *&v75.i32[1])));
        v246 = vdup_lane_s32(*v75.i8, 0);
        v247 = vsub_f32(*v72.i8, v246);
        v246.i32[0] = v245.i32[0];
        v246.i32[0] = vmul_f32(v245, v246).u32[0];
        v246.i32[1] = v247.i32[1];
        *v80.f32 = vadd_f32(v244, *v69.f32);
        *&v80.u32[2] = v246;
        v81 = 0.5 / v245.f32[0];
        goto LABEL_30;
      }

      v125 = sqrtf(((*&v75.i32[1] + 1.0) - *v72.i32) - v69.f32[2]);
      v129.f32[0] = *&v72.i32[1] + *v75.i32;
      v86 = vzip2q_s32(v72, v75).u64[0];
      v129.f32[1] = v125 * v125;
      *&v129.u32[2] = vext_s8(vadd_f32(*v69.f32, v86), vsub_f32(*v69.f32, v86), 4uLL);
    }

    else
    {
      v125 = sqrtf(((*v72.i32 + 1.0) - *&v75.i32[1]) - v69.f32[2]);
      v129.f32[0] = v125 * v125;
      v126 = *&v72.i32[1] + *v75.i32;
      v127 = vzip2q_s32(v72, v75).u64[0];
      LODWORD(v128) = vadd_f32(v127, *v69.f32).u32[0];
      HIDWORD(v128) = vsub_f32(v127, *&v69).i32[1];
      v129.f32[1] = v126;
      v129.i64[1] = v128;
    }

    v82 = vmulq_n_f32(v129, 0.5 / v125);
    goto LABEL_80;
  }

  return result;
}

double sub_1AF155220()
{
  if (qword_1ED73AD08 != -1)
  {
    sub_1AFDD61D4();
  }

  v0 = sub_1AF0D160C(qword_1ED73AD00, 0xC0uLL);
  *(v0 + 72) = 1065353216;
  *(v0 + 76) = 257;
  *(v0 + 144) = 7;
  __asm { FMOV            V1.4S, #1.0 }

  *(v0 + 160) = 0u;
  *(v0 + 176) = _Q1;
  result = 0.0;
  *(v0 + 192) = xmmword_1AFE201A0;
  *(v0 + 88) = sub_1AF154454;
  *(v0 + 96) = sub_1AF155210;
  return result;
}

CFStringRef sub_1AF1552AC(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p %@>", v3, a1, a1[8]);
}

CFStringRef sub_1AF155304(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p %@>", v3, a1, a1[8]);
}

void sub_1AF155360(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void sub_1AF1553AC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void sub_1AF155460(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 176) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void sub_1AF155524(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF155564(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintDistance>");
}

CFStringRef sub_1AF155598(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintDistance>");
}

double sub_1AF1555CC(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_1AFE213B0);
          v44 = xmmword_1AFE20160;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_1AFE213A0);
          v44 = xmmword_1AFE20180;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_1AFE213C0);
        v44 = xmmword_1AFE20150;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

void sub_1AF1558FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF15592C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintAcceleration>");
}

CFStringRef sub_1AF155960(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintAcceleration>");
}

void sub_1AF155998(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef sub_1AF1559D8(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintReplicator>");
}

CFStringRef sub_1AF155A0C(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<CFXConstraintReplicator>");
}

uint64_t sub_1AF155A40()
{
  if (qword_1ED734648 != -1)
  {
    sub_1AFDD64B4();
  }

  return qword_1ED7398E0;
}

uint64_t sub_1AF155A88()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398E0 = result;
  return result;
}

double sub_1AF155AB0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vsubq_f32(a4, a1);
  v7 = vmulq_f32(v4, v6);
  v8 = vmulq_f32(v5, v6);
  _D7 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v7.i8), vzip2_s32(*v8.i8, *v7.i8)));
  *v8.i8 = vclez_f32(_D7);
  v10 = v8.i8[4] & v8.i8[0];
  v11 = a1.i64[0];
  if (v10)
  {
    return *&v11;
  }

  v12 = vsubq_f32(a4, a2);
  v13 = vmulq_f32(v4, v12);
  v14 = vmulq_f32(v5, v12);
  _D17 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v13.i8), vzip2_s32(*v14.i8, *v13.i8)));
  v16 = _D17.f32[1] < 0.0 || _D17.f32[0] > _D17.f32[1];
  v11 = a2.i64[0];
  if (!v16)
  {
    return *&v11;
  }

  __asm { FMLA            S16, S17, V7.S[1] }

  if (_D17.f32[1] <= 0.0 && _D7.f32[1] >= 0.0 && _S16 <= 0.0)
  {
    *&result = vmlaq_n_f32(a1, v4, _D7.f32[1] / (_D7.f32[1] - _D17.f32[1])).u64[0];
    return result;
  }

  v23 = vsubq_f32(a4, a3);
  v24 = vmulq_f32(v4, v23);
  v25 = vmulq_f32(v5, v23);
  v26 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v27 = v26.f32[1] < 0.0 || v26.f32[0] > v26.f32[1];
  v11 = a3.i64[0];
  if (!v27)
  {
    return *&v11;
  }

  v28 = (v26.f32[0] * _D7.f32[0]) - (_D7.f32[1] * v26.f32[1]);
  if (v26.f32[1] <= 0.0 && v28 <= 0.0 && _D7.f32[0] >= 0.0)
  {
    v29 = _D7.f32[0] / (_D7.f32[0] - v26.f32[1]);
LABEL_25:
    *&result = vmlaq_n_f32(a1, v5, v29).u64[0];
    return result;
  }

  v30 = (_D17.f32[1] * v26.f32[1]) - (v26.f32[0] * _D17.f32[0]);
  if (v30 > 0.0 || (v31 = _D17.f32[0] - _D17.f32[1], v31 < 0.0) || (v32 = v26.f32[0] - v26.f32[1], v32 < 0.0))
  {
    v33 = 1.0 / (_S16 + (v30 + v28));
    v34 = v28 * v33;
    v29 = _S16 * v33;
    a1 = vmlaq_n_f32(a1, v4, v34);
    goto LABEL_25;
  }

  *&result = vmlaq_n_f32(a2, vsubq_f32(a3, a2), v31 / (v31 + v32)).u64[0];
  return result;
}

void sub_1AF155C40(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float a5, double a6)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = vsubq_f32(v7, *a1);
  v10 = a1[2];
  v11 = vsubq_f32(v10, *a1);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v9)), v11, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = vmulq_f32(*a1, v16);
  v18 = *a2;
  v19 = vmulq_f32(*a2, v16);
  v20 = vmulq_f32(v16, vnegq_f32(v16));
  v21 = vadd_f32(vzip1_s32(*v17.i8, *v20.i8), vzip2_s32(*v17.i8, *v20.i8));
  v23 = vextq_s8(v20, v20, 8uLL).u64[0];
  v22 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), v23), v21);
  *v23.i32 = (v22.f32[0] - (v19.f32[2] + vaddv_f32(*v19.f32))) / v22.f32[1];
  if (*v23.i32 >= 0.0)
  {
    if (*v23.i32 <= *&a6)
    {
      v42 = *&a6;
      v32 = vmlsq_lane_f32(v18, v16, v23, 0);
    }

    else
    {
      v28 = vmlsq_lane_f32(v18, v16, *&a6, 0);
      v29 = vmulq_f32(v16, v28);
      v30 = vmulq_f32(v16, *a3);
      *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
      v31 = vdiv_f32(vsub_f32(v22, *v30.i8), vdup_lane_s32(*v30.i8, 1)).f32[0];
      if (v31 < 0.0)
      {
        return;
      }

      v42 = *&a6;
      v32 = vmlaq_n_f32(v28, *a3, v31);
    }

    v41 = v32;
    v45 = v32;
    v43[2] = v10;
    v44 = v32;
    v43[0] = v8;
    v43[1] = v7;
    v33 = sub_1AF1DA4CC(v43, &v45);
    v34 = v41;
    if (!v33)
    {
      *v34.i64 = sub_1AF155AB0(*a1, a1[1], a1[2], v45);
      v44 = v34;
    }

    v35 = vsubq_f32(*a2, v34);
    v36 = vmulq_f32(v35, v35);
    v36.f32[0] = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
    v37 = vmulq_f32(v35, vnegq_f32(*a3));
    v37.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
    v38 = -(((v36.f32[0] * v36.f32[0]) - (v37.f32[0] * v37.f32[0])) - (v42 * v42));
    v39 = v37.f32[0] - sqrtf(v38);
    if (v38 < 0.0)
    {
      v39 = -1.0;
    }

    if (v39 >= 0.0 && v39 <= a5)
    {
      (*(a4 + 16))(a4, a1, &v44);
    }
  }
}

float32x4_t sub_1AF155E58(float32x4_t *a1, double a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(a2);
  v70 = *MEMORY[0x1E69E9840];
  *&a2 = *&a2 + 0.001;
  v11 = vdupq_lane_s32(*&a2, 0);
  v11.i32[3] = 0;
  v38 = v11;
  while (1)
  {
    v12 = vmulq_f32(a4, a4);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    v14 = sqrtf(v13);
    if (v14 < 0.001)
    {
      break;
    }

    v61 = 0;
    v62 = &v61;
    v63 = 0x2000000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2000000000;
    v60 = 2139095039;
    v65 = 0;
    v66 = &v65;
    v15 = a3;
    v15.i32[3] = 1.0;
    v67 = 0x3000000000;
    v16 = v13;
    v17 = vrsqrte_f32(LODWORD(v13));
    v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
    v19 = vmulq_n_f32(a4, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]);
    v41 = a4;
    v20 = vaddq_f32(a4, a3);
    v39 = v20;
    v20.i32[3] = 1.0;
    v21 = vminnmq_f32(vsubq_f32(v15, v38), vsubq_f32(v20, v38));
    v22 = vmaxnmq_f32(vaddq_f32(v38, v15), vaddq_f32(v38, v20));
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    v23 = vmulq_f32(vaddq_f32(v21, v22), v15);
    v24 = vmulq_f32(vsubq_f32(v22, v21), v15);
    v68 = 0;
    v69 = 0;
    a1[13] = v23;
    a1[14] = v24;
    a1[11].i64[0] = a1[10].i64[1];
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = sub_1AF1561A4;
    v43[3] = &unk_1E7A7A638;
    v44 = v23;
    v45 = v24;
    v51 = a7;
    v52 = a1;
    v46 = a3;
    v47 = v19;
    v40 = v19;
    v53 = v14;
    v54 = v8;
    v48 = &v61;
    v49 = &v57;
    v50 = &v65;
    v42 = a3;
    sub_1AF1271CC(v43, v55);
    *&v55[0] = a1[10].i64[0];
    sub_1AF12829C(a6, v55);
    v25 = *(v62 + 24);
    if (v25)
    {
      v26 = v66[2];
      v27 = v58[6];
      v28 = vsubq_f32(vmlaq_n_f32(v42, v40, v27), v26);
      v29 = vmulq_f32(v28, v28);
      *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
      *v29.f32 = vrsqrte_f32(v30);
      *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
      v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
      v32 = vmulq_f32(v26, v31);
      v33 = vmlaq_n_f32(v42, v40, v14 + -0.001);
      v34 = vmulq_f32(v33, v31);
      v35 = vmulq_f32(v31, v31);
      *v32.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v35.i8), vzip2_s32(*v32.i8, *v35.i8)));
      v41 = vsubq_f32(vmlaq_n_f32(v33, v31, (*v32.i32 - (v34.f32[2] + vaddv_f32(*v34.f32))) / *&v32.i32[1]), v26);
      v42 = vmlaq_n_f32(v42, v40, v27 + -0.001);
    }

    else
    {
      v37 = v39;
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    a4 = v41;
    a3 = v42;
    if ((v25 & 1) == 0)
    {
      return v37;
    }
  }

  return a3;
}

void sub_1AF1561A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v77[1] + 4) = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = vdup_n_s32(0x3727C5ACu);
    do
    {
      v8 = *(a2 + 8 * v6);
      v9 = *(a1 + 120);
      if (v8 != v9 && !sub_1AF1BAAD8(*(a2 + 8 * v6), v9))
      {
        v10 = sub_1AF1B75A0(v8);
        v11 = sub_1AF1B329C(v10);
        v12 = sub_1AF1B9B04(v8);
        v13 = *(v12 + 16);
        v14.columns[2] = *(v12 + 32);
        v14.columns[1] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v14.columns[2], v14.columns[2]), v14.columns[2], 0xCuLL), vnegq_f32(v13)), v14.columns[2], vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
        v14.columns[0] = vmulq_f32(*v12, vextq_s8(vuzp1q_s32(v14.columns[1], v14.columns[1]), v14.columns[1], 0xCuLL));
        if ((v14.columns[0].f32[2] + vaddv_f32(*v14.columns[0].f32)) >= 0.0)
        {
          v14.columns[0].f32[0] = 1.0;
        }

        else
        {
          v14.columns[0].f32[0] = -1.0;
        }

        v14.columns[1] = vmulq_f32(*v12, *v12);
        v15 = vmulq_f32(v13, v13);
        v16 = vadd_f32(vzip1_s32(*v14.columns[1].f32, *v15.i8), vzip2_s32(*v14.columns[1].f32, *v15.i8));
        v14.columns[1] = vextq_s8(v14.columns[1], v14.columns[1], 8uLL);
        *v14.columns[1].f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.columns[1].f32, *&vextq_s8(v15, v15, 8uLL)), v16));
        v17 = vmulq_f32(v14.columns[2], v14.columns[2]);
        v14.columns[1].i32[2] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32));
        v18 = vmulq_n_f32(v14.columns[1], v14.columns[0].f32[0]);
        *v18.i8 = vcgt_f32(v7, vabd_f32(*v18.i8, vdup_laneq_s32(v18, 2)));
        v39 = *(v12 + 48);
        v40 = *(v12 + 32);
        v37 = *(v12 + 16);
        v38 = *v12;
        if ((vpmin_u32(*v18.i8, *v18.i8).u32[0] & 0x80000000) != 0)
        {
          v14.columns[0] = *v12;
          v14.columns[1] = *(v12 + 16);
          v14.columns[3] = *(v12 + 48);
          v78 = __invert_f4(v14);
          v33 = *(a1 + 48);
          v78.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v78.columns[3], v78.columns[2], *(a1 + 32), 2), v78.columns[1], *(a1 + 32), 1), v78.columns[0], COERCE_FLOAT(*(a1 + 32)));
          v78.columns[3].i32[3] = HIDWORD(*(a1 + 32));
          v34 = v33;
          v34.i32[1] = v33.i32[0];
          v34.i32[2] = v33.i32[0];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 0x40000000;
          v65[2] = sub_1AF1565F8;
          v65[3] = &unk_1E7A7A5C0;
          v66 = v38;
          v67 = v37;
          v78.columns[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v78.columns[1]), vuzp2q_s32(vdupq_lane_s32(*v33.i8, 1), v33)), v34, vabsq_f32(v78.columns[0])), vzip2q_s32(vtrn1q_s32(v33, v33), v33), vabsq_f32(v78.columns[2]));
          v68 = v40;
          v69 = v39;
          v35 = *(a1 + 128);
          v78.columns[2] = *(a1 + 80);
          v70 = *(a1 + 64);
          v71 = v78.columns[2];
          v75 = *(a1 + 136);
          v72 = *(a1 + 96);
          v36 = *(a1 + 112);
          v74 = v35;
          v73 = v36;
          sub_1AF1A5C00(v11, v65, v78.columns[3], v78.columns[1]);
        }

        else
        {
          v19 = sub_1AF1A3CCC(v11);
          if (v19)
          {
            v20 = v19;
            v21 = sub_1AF1A4CE8(v11, 0);
            if (sub_1AF1AE6EC(v21))
            {
              v63 = 0u;
              v64 = 0u;
              sub_1AF1AE1A8(v21, &v63);
              if (BYTE4(v64) != 8)
              {
                v22 = sub_1AF0D5194();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                {
                  sub_1AFDD64C8(v76, v77, v22);
                }
              }

              v23 = v64;
              v24 = sub_1AF1A4C6C(v11, 0, 0);
              if (v20 >= 1)
              {
                v25 = v24;
                v26 = 0;
                v27 = v23 - 1;
                do
                {
                  v28 = sub_1AF1A3D1C(v11, v26, 0);
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  sub_1AF1A767C(v28, v25, &v59);
                  if ((BYTE2(v61) & 0xFA) != 0)
                  {
                    v29 = sub_1AF0D5194();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1AF0CE000, v29, OS_LOG_TYPE_DEFAULT, "Warning: Slider can only process triangles.", buf, 2u);
                    }
                  }

                  else
                  {
                    *buf = v59;
                    v56 = v60;
                    v57 = v61;
                    v58 = v62;
                    v41[0] = MEMORY[0x1E69E9820];
                    v41[1] = 0x40000000;
                    v41[2] = sub_1AF156930;
                    v41[3] = &unk_1E7A7A610;
                    v50 = v63;
                    v51 = v64;
                    v53 = v27;
                    v42 = v38;
                    v43 = v37;
                    v44 = v40;
                    v45 = v39;
                    v30 = *(a1 + 128);
                    v31 = *(a1 + 80);
                    v46 = *(a1 + 64);
                    v47 = v31;
                    v54 = *(a1 + 136);
                    v48 = *(a1 + 96);
                    v32 = *(a1 + 112);
                    v52 = v30;
                    v49 = v32;
                    sub_1AF1A80E4(buf, v41, v48);
                  }

                  ++v26;
                }

                while (v20 != v26);
              }
            }
          }
        }
      }

      ++v6;
    }

    while (v6 != a3);
  }
}

uint64_t sub_1AF1565F8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 3 * a3;
    do
    {
      v7 = *(a2 + 16 * (v5 + 1));
      v8 = *(a2 + 16 * (v5 + 2));
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = *(a1 + 64);
      v12 = *(a1 + 80);
      v20[0] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v11, *(a2 + 16 * v5), 2), v10, *(a2 + 16 * v5), 1), v9, COERCE_FLOAT(*(a2 + 16 * v5)));
      v20[1] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v11, v7, 2), v10, *v7.f32, 1), v9, v7.f32[0]);
      v20[2] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v12, v11, v8, 2), v10, *v8.f32, 1), v9, v8.f32[0]);
      v13 = *(a1 + 152);
      if (*(v13 + 128))
      {
        sub_1AF156740(v13 + 240, v20);
        v13 = *(a1 + 152);
      }

      v14 = *(a1 + 160);
      v7.i32[0] = *(a1 + 164);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = sub_1AF156848;
      v16[3] = &unk_1E7A7A598;
      v17 = *(a1 + 128);
      v18 = *(a1 + 144);
      v19 = v13;
      sub_1AF155C40(v20, (a1 + 96), (a1 + 112), v16, v14, *v7.i64);
      v5 += 3;
    }

    while (v6 != v5);
  }

  return 0;
}

void sub_1AF156740(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1AF10A1D0();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_1AF157EB0(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_1AF156848(void *a1, __int128 *a2, _OWORD *a3, float a4)
{
  v5 = *(a1[5] + 8);
  if (*(*(a1[4] + 8) + 24) != 1 || (v6 = *(v5 + 24), v6 > a4))
  {
    *(v5 + 24) = a4;
    *(*(a1[6] + 8) + 32) = *a3;
    v8 = a1 + 7;
    v7 = a1[7];
    *(*(a1[4] + 8) + 24) = 1;
    if (!*(v7 + 128))
    {
      return;
    }

    *(v7 + 248) -= 48;
    sub_1AF156740(*v8 + 264, a2);
    goto LABEL_11;
  }

  v9 = v6 + -0.001;
  v10 = v6 + 0.001;
  if (v9 < a4 && v10 > a4)
  {
    v8 = a1 + 7;
LABEL_11:
    v12 = *v8 + 168;

    sub_1AF156740(v12, a2);
  }
}

void sub_1AF156930(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6518(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 152);
  v15 = *(a1 + 174);
  v16 = *(a1 + 192);
  v17 = *a3;
  if (v16 < *a3)
  {
    v17 = *(a1 + 192);
  }

  v18 = vmul_s32(vmin_u32(vdup_n_s32(v16), *(a3 + 1)), vdup_n_s32(v15));
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v23 = vaddq_f32(v22, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, *(v14 + v18.u32[0])), v20, *(v14 + v18.u32[0] + 4)), v21, *(v14 + v18.u32[0] + 8)));
  v24 = vaddq_f32(v22, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, *(v14 + v18.u32[1])), v20, *(v14 + v18.u32[1] + 4)), v21, *(v14 + v18.u32[1] + 8)));
  v31[0] = vaddq_f32(v22, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, *(v14 + v17 * v15)), v20, *(v14 + v17 * v15 + 4)), v21, *(v14 + v17 * v15 + 8)));
  v31[1] = v23;
  v31[2] = v24;
  v25 = *(a1 + 184);
  if (*(v25 + 128))
  {
    sub_1AF156740(v25 + 240, v31);
    v25 = *(a1 + 184);
  }

  v26 = *(a1 + 196);
  v23.i32[0] = *(a1 + 200);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = sub_1AF156AB0;
  v27[3] = &unk_1E7A7A5E8;
  v28 = *(a1 + 128);
  v29 = *(a1 + 144);
  v30 = v25;
  sub_1AF155C40(v31, (a1 + 96), (a1 + 112), v27, v26, *v23.i64);
}

void sub_1AF156AB0(void *a1, __int128 *a2, _OWORD *a3, float a4)
{
  v5 = *(a1[5] + 8);
  if (*(*(a1[4] + 8) + 24) != 1 || (v6 = *(v5 + 24), v6 > a4))
  {
    *(v5 + 24) = a4;
    *(*(a1[6] + 8) + 32) = *a3;
    v8 = a1 + 7;
    v7 = a1[7];
    *(*(a1[4] + 8) + 24) = 1;
    if (!*(v7 + 128))
    {
      return;
    }

    *(v7 + 248) -= 48;
    sub_1AF156740(*v8 + 264, a2);
    goto LABEL_11;
  }

  v9 = v6 + -0.001;
  v10 = v6 + 0.001;
  if (v9 < a4 && v10 > a4)
  {
    v8 = a1 + 7;
LABEL_11:
    v12 = *v8 + 168;

    sub_1AF156740(v12, a2);
  }
}

uint64_t sub_1AF156B98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a2 + 16);
  v47 = sub_1AF1B9AB4(a3);
  v16 = sub_1AF1C3FAC(a3);
  if (v16)
  {
    v17 = *(a2 + 56);
    v18 = sub_1AF1D01D0(v16);
    v19 = sub_1AF1B9B04(a3);
    v21 = *v19;
    v22 = *(v19 + 16);
    v23 = *(v19 + 32);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v22)), v23, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
    v25 = vmulq_f32(*v19, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
    v26 = (v25.f32[2] + vaddv_f32(*v25.f32)) < 0.0;
    v27 = 1.0;
    if (v26)
    {
      v27 = -1.0;
    }

    v28 = vmulq_f32(v21, v21);
    v29 = vmulq_f32(v22, v22);
    v30 = vadd_f32(vzip1_s32(*v28.i8, *v29.i8), vzip2_s32(*v28.i8, *v29.i8));
    v31 = vextq_s8(v28, v28, 8uLL);
    *v31.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v31.f32, *&vextq_s8(v29, v29, 8uLL)), v30));
    v32 = vmulq_f32(v23, v23);
    v31.i32[2] = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
    v33 = vmulq_n_f32(v31, v27);
    v34 = v15[9];
    v35 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v19 + 48), v23, v34, 2), v22, *v34.f32, 1), v21, v34.f32[0]), v47);
    v38 = *v17;
    v36 = vaddq_f32(*v17, v35);
    v46 = v35;
    v37 = vaddq_f32(v47, v35);
    v38.f32[0] = vmuls_lane_f32(fmaxf(fmaxf(v33.f32[0], v33.f32[2]), v33.f32[1]), v34, 3);
    v39 = v37;
    v39.i32[3] = v38.i32[0];
    v15[12] = v39;
    if (v15[8].i64[0])
    {
      v15[15].i64[1] = v15[15].i64[0];
      v15[17].i64[0] = v15[16].i64[1];
    }

    v48 = vsubq_f32(sub_1AF155E58(v15, *v38.i64, v36, vsubq_f32(v37, v36), v20, v18, a3), v46);
    *v17 = v48;
    v40 = sub_1AF1B9A6C(a3);
    if (v40)
    {
      v41 = *sub_1AF1B9B04(v40);
    }

    else
    {
      v41 = *zmmword_1AFE21460;
    }

    v50 = __invert_f4(v41);
    v49 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v50.columns[3], v50.columns[2], v48, 2), v50.columns[1], *v48.f32, 1), v50.columns[0], v48.f32[0]);
    v42 = sub_1AF1DE360(a4);
    v43 = sub_1AF1DE3A8(a4);
    v44 = sub_1AF288070(8);
    sub_1AF1C35C0(v42, v43, &v49, v44, 6, 0);
  }

  return 1;
}

void sub_1AF156DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = xmmword_1AFE20150;
  v23[1] = xmmword_1AFE20160;
  v23[2] = xmmword_1AFE20180;
  v23[3] = xmmword_1AFE201A0;
  v22 = xmmword_1AFE21170;
  sub_1AF0FE168(a2, v23, &v22, a4, *(a1 + 192));
  v21 = xmmword_1AFE21180;
  sub_1AF0FEDA4(a2, (a1 + 208), v23, &v21);
  v6 = *(a1 + 240);
  v7 = *(a1 + 248);
  v20 = xmmword_1AFE21170;
  while (v6 != v7)
  {
    sub_1AF0FE080(a2, 0, &v20, 0, *v6, v6[1]);
    sub_1AF0FE080(a2, 0, &v20, 0, v6[1], v6[2]);
    v8 = v6[2];
    v9 = *v6;
    v6 += 3;
    sub_1AF0FE080(a2, 0, &v20, 0, v8, v9);
  }

  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  v19 = xmmword_1AFE21180;
  while (v10 != v11)
  {
    sub_1AF0FE080(a2, 0, &v19, 0, *v10, v10[1]);
    sub_1AF0FE080(a2, 0, &v19, 0, v10[1], v10[2]);
    v12 = v10[2];
    v13 = *v10;
    v10 += 3;
    sub_1AF0FE080(a2, 0, &v19, 0, v12, v13);
  }

  v15 = *(a1 + 264);
  v14 = *(a1 + 272);
  v18 = xmmword_1AFE20BF0;
  while (v15 != v14)
  {
    sub_1AF0FE080(a2, 0, &v18, 0, *v15, v15[1]);
    sub_1AF0FE080(a2, 0, &v18, 0, v15[1], v15[2]);
    v16 = v15[2];
    v17 = *v15;
    v15 += 3;
    sub_1AF0FE080(a2, 0, &v18, 0, v16, v17);
  }
}

uint64_t sub_1AF156F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF1B9AB4(a3);
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 56) = v4;
  *v4 = v6;
  return 1;
}

uint64_t sub_1AF157008()
{
  if (qword_1ED734648 != -1)
  {
    sub_1AFDD64B4();
  }

  v0 = sub_1AF0D160C(qword_1ED7398E0, 0x110uLL);
  sub_1AF14F554(v0);
  *(v0 + 160) = -1;
  *(v0 + 156) = 1065353216;
  *(v0 + 80) = sub_1AF156F98;
  *(v0 + 88) = sub_1AF156B98;
  *(v0 + 96) = sub_1AF156FF8;
  *(v0 + 112) = sub_1AF156DC4;
  return v0;
}

void sub_1AF1570A8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 160) = a2;
}

void sub_1AF1570FC(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 156) = a2;
}

__n128 sub_1AF157150(__n128 *a1, __n128 result)
{
  if (!a1)
  {
    v12 = result;
    v3 = sub_1AF0D5194();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      sub_1AFDD6328(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  result.n128_u32[3] = a1[9].n128_u32[3];
  a1[9] = result;
  return result;
}

uint64_t sub_1AF1571B4()
{
  if (qword_1ED734618 != -1)
  {
    sub_1AFDD6590();
  }

  return qword_1ED7398C8;
}

void sub_1AF1571F0(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  sub_1AF14F4B8(a1);
}

uint64_t sub_1AF15724C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398C8 = result;
  return result;
}

CFTypeRef sub_1AF157274(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 144);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 144) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 144) = result;
  }

  return result;
}

void sub_1AF1572F4(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6328(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 0.0001;
  if (a2 >= 0.0001)
  {
    v12 = a2;
  }

  *(a1 + 168) = v12;
}

BOOL sub_1AF157364(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1E0C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = sub_1AF1C3FAC(a3);
  if (!v15)
  {
    return 0;
  }

  v16 = sub_1AF1D01D0(v15);
  v17 = *(a2 + 16);
  v18 = *(v17 + 136);
  v61 = v18;
  v19 = v18 != 0;
  if (v18)
  {
    v20 = v16;
    v58 = 0xA00000000;
    v59 = v60;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2000000000;
    v57[3] = &v58;
    if (*(v17 + 152) == 1)
    {
      sub_1AF157668(&v58, v18);
      sub_1AF157668(&v58, a3);
    }

    else
    {
      sub_1AF1576F0(&v58, &v61);
      *&v47[0] = a3;
      sub_1AF1576F0(&v58, v47);
    }

    v21 = 126 - 2 * __clz(v58);
    if (v58)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    sub_1AF157F08(v59, &v59[v58], v47, v22, 1);
    v37 = sub_1AF1B9AB4(a3);
    v23 = sub_1AF1B9AB4(v61);
    v24 = vsubq_f32(v37, v23);
    v25 = vmulq_f32(v24, v24);
    v25.f32[0] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
    __asm { FMOV            V2.4S, #1.0 }

    v35 = vdivq_f32(v24, vdupq_lane_s32(*v25.f32, 0));
    v53 = 0;
    v54 = &v53;
    v55 = 0x2000000000;
    v56 = 2139095039;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2000000000;
    v52 = 0;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 0x40000000;
    v39[2] = sub_1AF15774C;
    v39[3] = &unk_1E7A7A6A8;
    v42 = &v49;
    v43 = &v53;
    v36 = v23;
    v40 = v23;
    v41 = v37;
    v44 = v57;
    v45 = v17;
    v46 = a3;
    sub_1AF1271CC(v39, v47);
    *&v47[0] = *(v17 + 160);
    sub_1AF127D6C(v20, v47);
    if (*(v50 + 24) == 1)
    {
      v38 = vmlaq_n_f32(v36, v35, v54[6] - *(v17 + 168));
      v31 = sub_1AF1DE360(a4);
      v32 = sub_1AF1DE3A8(a4);
      v33 = sub_1AF288070(8);
      sub_1AF1C35C0(v31, v32, &v38, v33, 6, 0);
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(v57, 8);
    if (HIDWORD(v58) && v59 != v60)
    {
      free(v59);
    }
  }

  return v19;
}

uint64_t sub_1AF157668(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  sub_1AF1576F0(a1, &v5);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = sub_1AF158D94;
  v4[3] = &unk_1E7A7A6C8;
  v4[4] = a1;
  return sub_1AF1B94AC(v5, v4);
}

void sub_1AF1576F0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *a1 + 1;
  if (v5 > *(a1 + 4))
  {
    sub_1AF158DE0(a1, 1, 0);
    v4 = *a1;
    v5 = *a1 + 1;
  }

  *(*(a1 + 8) + 8 * v4) = *a2;
  *a1 = v5;
}

void sub_1AF15774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v83[1] + 4) = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v6 = 0;
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = *(*(*(a1 + 72) + 8) + 24);
    do
    {
      v9 = *(v4 + 8 * v6);
      v10 = *(*(*(a1 + 80) + 8) + 24);
      v11 = *(v10 + 1);
      v12 = *v10;
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[v14 >> 1];
          v18 = *v16;
          v17 = v16 + 1;
          v14 += ~(v14 >> 1);
          if (v18 < v9)
          {
            v13 = v17;
          }

          else
          {
            v14 = v15;
          }
        }

        while (v14);
      }

      else
      {
        v13 = v11;
      }

      if (v13 == &v11[v12] || v9 < *v13)
      {
        v19 = sub_1AF1B75A0(*(v4 + 8 * v6));
        v20 = sub_1AF1B9B04(v9);
        v22.columns[1] = *(v20 + 16);
        v22.columns[2] = *(v20 + 32);
        v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22.columns[2], v22.columns[2]), v22.columns[2], 0xCuLL), vnegq_f32(v22.columns[1])), v22.columns[2], vextq_s8(vuzp1q_s32(v22.columns[1], v22.columns[1]), v22.columns[1], 0xCuLL));
        v22.columns[0] = vmulq_f32(*v20, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
        v22.columns[0].f32[0] = (v22.columns[0].f32[2] + vaddv_f32(*v22.columns[0].f32)) >= 0.0 ? 1.0 : -1.0;
        v54 = v22.columns[0].f32[0];
        v51 = *(v20 + 16);
        v52 = *v20;
        v22.columns[0] = *v20;
        v58 = *(v20 + 32);
        v22.columns[3] = *(v20 + 48);
        v84 = __invert_f4(v22);
        v59 = v84.columns[0];
        v61 = v84.columns[3];
        v55 = v84.columns[2];
        v53 = *(a1 + 32);
        v56 = *(a1 + 48);
        v57 = v84.columns[1];
        v23 = sub_1AF1B329C(v19);
        v24 = sub_1AF1A3CCC(v23);
        if (v24)
        {
          v25 = v24;
          v26 = sub_1AF1A4CE8(v23, 0);
          if (sub_1AF1AE6EC(v26))
          {
            v50 = v7;
            v80 = 0u;
            v81 = 0u;
            sub_1AF1AE1A8(v26, &v80);
            v27 = sub_1AF1A4C6C(v23, 0, 0);
            if (BYTE4(v81) != 8)
            {
              v28 = sub_1AF0D5194();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDD65A4(v82, v83, v28);
              }
            }

            if (v25 >= 1)
            {
              v29 = 0;
              v30 = vmulq_f32(v52, v52);
              v31 = vmulq_f32(v51, v51);
              v32 = vadd_f32(vzip1_s32(*v30.i8, *v31.i8), vzip2_s32(*v30.i8, *v31.i8));
              v33 = vextq_s8(v30, v30, 8uLL);
              *v33.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v33.f32, *&vextq_s8(v31, v31, 8uLL)), v32));
              v34 = vmulq_f32(v58, v58);
              v33.i32[2] = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
              v35 = vmulq_n_f32(v33, v54);
              v36 = fmaxf(fmaxf(v35.f32[0], v35.f32[2]), v35.f32[1]);
              v37 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v61, v55, v53, 2), v57, *v53.f32, 1), v59, v53.f32[0]);
              v38 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v61, v55, v56, 2), v57, *v56.f32, 1), v59, v56.f32[0]);
              v39 = vsubq_f32(v38, v37);
              v40 = vmulq_f32(v39, v39);
              v32.f32[0] = v40.f32[2] + vaddv_f32(*v40.f32);
              *v40.f32 = vrsqrte_f32(v32.u32[0]);
              *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v40.f32, *v40.f32)));
              v60 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v40.f32, *v40.f32))).f32[0]);
              v62 = v37;
              v41 = vsubq_f32(v37, v38);
              v42 = vmulq_f32(v41, v41);
              v43 = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32));
              v44 = v81 - 1;
              do
              {
                v45 = sub_1AF1A3D1C(v23, v29, 0);
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                sub_1AF1A767C(v45, v27, &v76);
                if ((BYTE2(v78) & 0xFA) != 0)
                {
                  v46 = sub_1AF0D5194();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1AF0CE000, v46, OS_LOG_TYPE_DEFAULT, "Warning: Occluder can only process triangles.", buf, 2u);
                  }
                }

                else
                {
                  *buf = v76;
                  v73 = v77;
                  v74 = v78;
                  v75 = v79;
                  v63[0] = MEMORY[0x1E69E9820];
                  v63[1] = 0x40000000;
                  v63[2] = sub_1AF157C28;
                  v63[3] = &unk_1E7A7A680;
                  v67 = v80;
                  v68 = v81;
                  v69 = v44;
                  v64 = v62;
                  v65 = v60;
                  v70 = v43;
                  v71 = v36;
                  v66 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
                  sub_1AF1A80E4(buf, v63, v66);
                }

                ++v29;
              }

              while (v25 != v29);
            }

            v4 = a2;
            v3 = a3;
            if (*(*(*(a1 + 72) + 8) + 24) < v8)
            {
              v47 = *(*(a1 + 88) + 144);
              if (v47)
              {
                if (sub_1AF14EE94(v47, v9, *(a1 + 96)))
                {
                  sub_1AF14EF08(*(*(a1 + 88) + 144), v9, *(a1 + 96));
                }

                else
                {
                  *(*(*(a1 + 64) + 8) + 24) = v50 & 1;
                  *(*(*(a1 + 72) + 8) + 24) = v8;
                }
              }
            }

            v7 = *(*(*(a1 + 64) + 8) + 24);
            v8 = *(*(*(a1 + 72) + 8) + 24);
          }
        }
      }

      ++v6;
    }

    while (v6 != v3);
  }
}

float32_t sub_1AF157C28(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6518(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[5].i64[0];
  v15 = a1[6].u8[6];
  v16 = a1[7].u32[0];
  v17 = *a3;
  if (v16 < *a3)
  {
    v17 = a1[7].i32[0];
  }

  v18 = v14 + v17 * v15;
  v19.i64[0] = *v18;
  v19.i32[2] = *(v18 + 8);
  v19.i32[3] = 1.0;
  v20 = vmul_s32(vmin_u32(vdup_n_s32(v16), *(a3 + 4)), vdup_n_s32(v15));
  v21 = v14 + v20.u32[0];
  v22.i64[0] = *v21;
  v22.i32[2] = *(v21 + 8);
  v22.i32[3] = 1.0;
  v23 = v14 + v20.u32[1];
  v24.i64[0] = *v23;
  v24.i32[2] = *(v23 + 8);
  v24.i32[3] = 1.0;
  v25 = vsubq_f32(v22, v19);
  v26 = vsubq_f32(v24, v19);
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmulq_f32(v27, v27);
  *&v30 = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
  *v29.f32 = vrsqrte_f32(v30);
  *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
  v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
  v32 = vmulq_f32(v19, v31);
  v33 = a1[2];
  v34 = a1[3];
  v35 = vmulq_f32(v33, v31);
  v36 = vmulq_f32(v34, v31);
  *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v36.i8), vzip2_s32(*v32.i8, *v36.i8)));
  v37 = (*v36.i32 - (v35.f32[2] + vaddv_f32(*v35.f32))) / *&v36.i32[1];
  if (v37 > 0.0 && v37 < a1[7].f32[1])
  {
    v41 = vmlaq_n_f32(v33, v34, v37);
    v40[0] = v19;
    v40[1] = v22;
    v40[2] = v24;
    v19.f32[0] = v37 * a1[7].f32[2];
    if (v19.f32[0] < *(*(a1[4].i64[0] + 8) + 24))
    {
      v39 = v37;
      if (sub_1AF1DA4CC(v40, &v41))
      {
        *(*(a1[4].i64[1] + 8) + 24) = 1;
        v19.f32[0] = v39 * a1[7].f32[2];
        *(*(a1[4].i64[0] + 8) + 24) = v19.i32[0];
      }
    }
  }

  return v19.f32[0];
}

uint64_t sub_1AF157E28()
{
  if (qword_1ED734618 != -1)
  {
    sub_1AFDD6590();
  }

  v0 = sub_1AF0D160C(qword_1ED7398C8, 0xA0uLL);
  sub_1AF14F554(v0);
  *(v0 + 160) = 1;
  *(v0 + 168) = 925353388;
  *(v0 + 152) = 1;
  *(v0 + 88) = sub_1AF157364;
  *(v0 + 96) = sub_1AF157E18;
  return v0;
}

void sub_1AF157EB0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF157F08(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = (v9 + 1);
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = (v9 + 2);
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = (v9 + 2);
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            v59 = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = (v9 + 1);
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = (v9 + 2);
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = (v9 + 2);
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          v51 = result;
          v49 = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        v49 = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_1AF158B04(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = sub_1AF158608(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = sub_1AF1586B8(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = sub_1AF15876C(v9, v41);
    v9 = v41 + 1;
    result = sub_1AF15876C(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = sub_1AF157F08(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unint64_t *sub_1AF158608(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *sub_1AF1586B8(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL sub_1AF15876C(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

unint64_t *sub_1AF158B04(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1AF158CD0(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_1AF158CD0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 < v22)
            {
              v18 = v21;
            }

            else
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1AF158CD0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[1])
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = (2 * v7) | 1;
          v8 = (result + 8 * v12);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v12;
          }

          else
          {
            v10 = *v8;
            if (*v8 >= v8[1])
            {
              v7 = v12;
            }

            else
            {
              v10 = v8[1];
              ++v8;
            }
          }
        }

        while (v10 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF158D94(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 && sub_1AF1B8088(a2))
  {
    sub_1AF1576F0(*(a1 + 32), &v4);
  }

  return 0;
}

void sub_1AF158DE0(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(8 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 8 * v7);
  memcpy(v8, v4, 8 * *a1);
  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

void sub_1AF158EB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF158EE8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734728 = result;
  return result;
}

uint64_t sub_1AF158F10(uint64_t a1)
{
  if (qword_1ED734730 != -1)
  {
    sub_1AFDD65F4();
  }

  result = sub_1AF0D160C(qword_1ED734728, 0x18uLL);
  *(result + 24) = a1;
  return result;
}

void sub_1AF158F5C(uint64_t a1, const __CFArray *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = a1;
  v101 = *MEMORY[0x1E69E9840];
  if (!a1 && (v7 = sub_1AF0D5194(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v7, v8, a3, a4, v9, v10, v11, v12);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0D34(v13, v14, a3, a4, v15, v16, v17, v18);
  }

LABEL_6:
  if (!v6)
  {
    v19 = sub_1AF0D5194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v19, v20, a3, a4, v21, v22, v23, v24);
    }
  }

  v25 = *(v6 + 16);
  if (!v25)
  {
    v25 = sub_1AF375248();
    *(v6 + 16) = v25;
  }

  v88 = v6;
  theArray = sub_1AF375228(v25, v4, a3, a4);
  v82 = v4;
  if (theArray)
  {
    v28 = sub_1AF27835C();
    if (v28 > 0.0)
    {
      v29 = v28;
      Count = CFArrayGetCount(theArray);
      v81 = sub_1AF1CFFC0(*(v6 + 24));
      Mutable = CFSetCreateMutable(0, Count, 0);
      v89 = Count;
      if (Count >= 1)
      {
        v32 = 0;
        v33 = v29;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32);
          v35 = *(ValueAtIndex + 4);
          v36 = sub_1AF1DE3A8(v35);
          if (!CFSetContainsValue(Mutable, v36))
          {
            if (sub_1AF1DE538(v35) == 10)
            {
              CFSetAddValue(Mutable, v36);
              v37 = sub_1AF1CF830(*(v6 + 24));
              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              v85 = v36[1];
              v86 = *v36;
              v83 = v36[3];
              v84 = v36[2];
              sub_1AF1DEACC(v81, *(ValueAtIndex + 5));
              v87 = v37;
              sub_1AF117998(v37, v35);
              v102 = __invert_f4(*v36->f32);
              v38 = 0;
              v96 = v102;
              *buf = 0u;
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              do
              {
                *&buf[v38 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(*&v96.columns[v38])), v85, *v96.columns[v38].f32, 1), v84, v96.columns[v38], 2), v83, v96.columns[v38], 3);
                ++v38;
              }

              while (v38 != 4);
              v92 = *buf;
              v93 = v98;
              v94 = v99;
              v95 = v100;
              v39 = sub_1AF1CD954(10);
              v40 = sub_1AF1CD954(10);
              sub_1AF1CDB88(v39, &v92);
              sub_1AF1CDB88(v40, MEMORY[0x1E69E9B18]);
              v41 = sub_1AF113D84();
              sub_1AF112D10(v41, 1);
              sub_1AF112ECC(v41, 1);
              sub_1AF1129D0(v41, v33);
              sub_1AF278318();
              sub_1AF112C48(v41, v42);
              sub_1AF11407C(v41, v39);
              sub_1AF113F9C(v41, v40);
              CFRelease(v39);
              CFRelease(v40);
              sub_1AF118298(v87, v41, v35, *(ValueAtIndex + 3), @"__controller");
              CFRelease(v41);
              v6 = v88;
            }

            else
            {
              v43 = sub_1AF0D5194();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v44 = sub_1AF1DE538(v35);
                *buf = 67109120;
                *&buf[4] = v44;
                _os_log_impl(&dword_1AF0CE000, v43, OS_LOG_TYPE_DEFAULT, "Warning: unsupported ease out for contraint applied on base type %d", buf, 8u);
              }
            }
          }

          ++v32;
        }

        while (v32 != v89);
      }

      CFRelease(Mutable);
      v4 = v82;
    }

    v45 = sub_1AF375228(*(v6 + 16), v4, v26, v27);
    if (v45)
    {
      v46 = v45;
      v47 = CFArrayGetCount(v45);
      v48 = sub_1AF1CFFC0(*(v6 + 24));
      if (v47 >= 1)
      {
        v51 = v48;
        for (i = 0; i != v47; ++i)
        {
          v53 = CFArrayGetValueAtIndex(v46, i);
          sub_1AF1DEACC(v51, v53[5]);
          sub_1AF1DEBA4(v51, v53[5]);
        }
      }

      v6 = v88;
      sub_1AF375238(*(v88 + 16), v4, v49, v50);
    }
  }

  if (a2)
  {
    if (!a3)
    {
      v54 = sub_1AF0D5194();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD119C(v54, v55, v56, v57, v58, v59, v60, v61);
      }
    }

    v62 = CFArrayGetCount(a2);
    v63 = CFArrayCreateMutable(0, v62, MEMORY[0x1E695E9C0]);
    v64 = sub_1AF1CFFC0(*(v6 + 24));
    if (v62 >= 1)
    {
      v65 = v64;
      for (j = 0; j != v62; ++j)
      {
        v67 = CFArrayGetValueAtIndex(a2, j);
        v68 = sub_1AF14F224(v67);
        if (!v68)
        {
          v69 = sub_1AF0D5194();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD6608(buf, &buf[4], v69);
          }
        }

        v70 = sub_1AF1DB6D0(a3, v68, 0);
        v71 = sub_1AF14F420(v67, a3, v70);
        v71[5] = sub_1AF1DE784(v65, v70);
        CFArrayAppendValue(v63, v71);
        CFRelease(v71);
        CFRelease(v70);
        if (+[VFXTransaction disableActions]_0() || (v72 = sub_1AF27835C(), v72 <= 0.0))
        {
          *(v71 + 12) = 1065353216;
        }

        else
        {
          v73 = v72;
          v74 = sub_1AF1CF830(*(v6 + 24));
          v96.columns[0].i32[0] = 1065353216;
          v75 = sub_1AF1CD954(1);
          sub_1AF1CDB88(v75, &v96);
          v76 = sub_1AF113D84();
          sub_1AF1131B4(v76, 1);
          v77 = v73;
          sub_1AF1129D0(v76, v77);
          sub_1AF278318();
          sub_1AF112C48(v76, v78);
          sub_1AF113F9C(v76, v75);
          CFRelease(v75);
          v79 = sub_1AF1DE1CC(v71, (v71 + 6), 1, 0);
          sub_1AF118298(v74, v76, v79, v71, @"__controller");
          CFRelease(v76);
          v80 = v79;
          v6 = v88;
          CFRelease(v80);
        }
      }
    }

    sub_1AF375230(*(v6 + 16), v82, v63);
    CFRelease(v63);
  }
}

BOOL sub_1AF15956C(void *a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[4];
    v12 = sub_1AF1CFFC0(a1[3]);
    v13 = a1[2];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = sub_1AF159630;
    v17[3] = &unk_1E7A7A708;
    v17[4] = v12;
    v17[5] = v11;
    sub_1AF375240(v13, v17, v14, v15);
  }

  return v10 != 0;
}

void sub_1AF159630(uint64_t a1, int a2, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      v9 = *(ValueAtIndex + 2);
      if (*(v9 + 76) != 1)
      {
        goto LABEL_14;
      }

      v10 = ValueAtIndex[12] * *(v9 + 72);
      if (v10 <= 0.0)
      {
        goto LABEL_14;
      }

      v11 = sub_1AF14F360(v9);
      if (v11)
      {
        break;
      }

      if (!sub_1AF1BBE50(*(ValueAtIndex + 3)) || !sub_1AF356D38(*(ValueAtIndex + 3), v12, v13, v14))
      {
        sub_1AF1DEEC0(*(a1 + 32), *(ValueAtIndex + 5));
LABEL_12:
        if ((v11 & sub_1AF14F170(*(a1 + 40), ValueAtIndex, *(ValueAtIndex + 3), *(ValueAtIndex + 4), v10)) == 1)
        {
          sub_1AF1DE904(*(a1 + 32), *(ValueAtIndex + 5));
        }

        goto LABEL_14;
      }

      if ((sub_1AF356D00(*(ValueAtIndex + 3), v15, v16, v17) & 1) == 0)
      {
        break;
      }

LABEL_14:
      if (v6 == ++v7)
      {
        return;
      }
    }

    sub_1AF1DEDDC(*(a1 + 32), *(ValueAtIndex + 5));
    goto LABEL_12;
  }
}

uint64_t sub_1AF159740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v6, v7, a3, a4, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = sub_1AF1597F0;
    v13[3] = &unk_1E7A7A728;
    v13[4] = a2;
    return sub_1AF375240(result, v13, a3, a4);
  }

  return result;
}

CFIndex sub_1AF1597F0(int a1, int a2, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      result = *(CFArrayGetValueAtIndex(theArray, i) + 2);
      if (*(result + 76) == 1 && *(result + 72) > 0.0)
      {
        result = sub_1AF14F378(result);
      }
    }
  }

  return result;
}

CFStringRef sub_1AF15987C(unsigned int *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %d objects>", v3, a1, a1[6]);
}

CFStringRef sub_1AF1598D4(unsigned int *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %d objects>", v3, a1, a1[6]);
}

uint64_t sub_1AF15992C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739968 = result;
  return result;
}

uint64_t sub_1AF159954(int a1, int a2)
{
  if (qword_1ED739970 != -1)
  {
    sub_1AFDD6658();
  }

  v4 = sub_1AF0D160C(qword_1ED739968, 0x18uLL);
  v5 = v4;
  *(v4 + 32) = a1;
  v6 = *(v4 + 28);
  if (v6 != a2)
  {
    sub_1AF159D08(v4, v6 * a1, (a2 * a1));
    *(v5 + 28) = a2;
  }

  return v5;
}

uint64_t sub_1AF1599D4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF159A1C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 28);
}

uint64_t sub_1AF159A64(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1599D4(a1) <= a2)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD66E4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return *(a1 + 16) + *(a1 + 32) * a2;
}

uint64_t sub_1AF159AF0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

void sub_1AF159B38(uint64_t a1, int a2)
{
  v3 = *(a1 + 28);
  if (v3 != a2)
  {
    sub_1AF159D08(a1, *(a1 + 32) * v3, (*(a1 + 32) * a2));
    *(a1 + 28) = a2;
  }
}

void sub_1AF159B7C(_DWORD *a1, unsigned int a2)
{
  if (a1[6] != a2)
  {
    v4 = a1[7];
    if (v4 < a2)
    {
      sub_1AF159D08(a1, a1[8] * v4, a1[8] * a2);
      a1[7] = a2;
    }

    a1[6] = a2;
  }
}

uint64_t sub_1AF159BD4(uint64_t a1, void *__src)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 28))
  {
    v5 = v4 ? 2 * v4 : 4;
    if (v4 != v5)
    {
      sub_1AF159D08(a1, *(a1 + 32) * v4, (*(a1 + 32) * v5));
      *(a1 + 28) = v5;
      v4 = *(a1 + 24);
    }
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = (v7 * v4);
  v9 = (v6 + v8);
  if (__src)
  {
    memcpy(v9, __src, v7);
  }

  else
  {
    bzero(v9, *(a1 + 32));
  }

  ++*(a1 + 24);
  return v6 + v8;
}

void sub_1AF159C78(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD666C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 24))
  {
    v12 = 0;
    do
    {
      (*(a2 + 16))(a2, v12, *(a1 + 16) + (*(a1 + 32) * v12));
      ++v12;
    }

    while (v12 < *(a1 + 24));
  }
}

void sub_1AF159D08(uint64_t a1, unsigned int a2, size_t size)
{
  v4 = *(a1 + 16);
  if (size)
  {
    v5 = size;
    v6 = size;
    if (v4)
    {
      v8 = malloc_type_realloc(v4, size, 0x111CC173uLL);
      *(a1 + 16) = v8;
      v9 = v5 - a2;
      if (v5 <= a2)
      {
        return;
      }

      v10 = &v8[a2];
    }

    else
    {
      v10 = sub_1AF288064(size);
      *(a1 + 16) = v10;
      v9 = v6;
    }

    bzero(v10, v9);
  }

  else
  {
    free(v4);
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1AF159DAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_reset(*(a1 + 16), a2, a3, a4);
  v8 = objc_msgSend_engine(*(a1 + 16), v5, v6, v7);
  objc_msgSend_disconnectNodeInput_(v8, v9, *(a1 + 16), v10);
  v14 = objc_msgSend_engine(*(a1 + 16), v11, v12, v13);
  objc_msgSend_disconnectNodeOutput_(v14, v15, *(a1 + 16), v16);
  v20 = objc_msgSend_engine(*(a1 + 16), v17, v18, v19);
  objc_msgSend_detachNode_(v20, v21, *(a1 + 16), v22);

  v23 = *(a1 + 32);
  if (v23 != (a1 + 40))
  {
    do
    {
      v24 = v23[4];
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = v23[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v23[2];
          v27 = *v26 == v23;
          v23 = v26;
        }

        while (!v27);
      }

      v23 = v26;
    }

    while (v26 != (a1 + 40));
  }

  sub_1AF112128(a1 + 32, *(a1 + 40));
  return a1;
}

void *sub_1AF159E98(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!result[2])
  {
    v4 = result;
    objc_msgSend_lock(*(*result + 8), a2, a3, a4);
    v8 = *v4;
    if (v4[2])
    {
      v9 = *(v8 + 8);

      return objc_msgSend_unlock(v9, v5, v6, v7);
    }

    else
    {
      v10 = sub_1AF159FA8(v8, v5, v6, v7);
      if (objc_msgSend_mainMixerNode(v10, v11, v12, v13))
      {
        v14 = objc_alloc_init(MEMORY[0x1E6958400]);
        v4[2] = v14;
        objc_msgSend_attachNode_(v10, v15, v14, v16);
        v17 = objc_alloc(MEMORY[0x1E6958418]);
        inited = objc_msgSend_initStandardFormatWithSampleRate_channels_(v17, v18, 2, v19, 44100.0);
        v21 = v4[2];
        v25 = objc_msgSend_mainMixerNode(v10, v22, v23, v24);
        objc_msgSend_connect_to_format_(v10, v26, v21, v25, inited);
      }

      else
      {
        v30 = sub_1AF0D5194();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD675C(v30);
        }
      }

      return objc_msgSend_unlock(*(*v4 + 8), v27, v28, v29);
    }
  }

  return result;
}

id sub_1AF159FA8(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF15A7D0;
  block[3] = &unk_1E7A79EE8;
  block[4] = a1;
  if (qword_1EB6584B8 != -1)
  {
    dispatch_once(&qword_1EB6584B8, block);
  }

  objc_msgSend_lock(a1[1], a2, a3, a4);
  if ((objc_msgSend_isRunning(*a1, v5, v6, v7) & 1) == 0)
  {
    v15 = 0;
    if ((objc_msgSend_startAndReturnError_(*a1, v8, &v15, v10) & 1) == 0)
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD67E0(&v15, v11, v12, v13);
      }

      *a1 = 0;
    }
  }

  objc_msgSend_unlock(a1[1], v8, v9, v10);
  return *a1;
}

uint64_t sub_1AF15A0A0(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_1AF159E98(a1, a2, a3, a4);
  v9 = objc_msgSend_audioPlayer(a2, v6, v7, v8);
  if ((objc_msgSend_customAudioNode(a2, v10, v11, v12) & 1) == 0)
  {
    v16 = sub_1AF159FA8(*a1, v13, v14, v15);
    if (objc_msgSend_engine(v9, v17, v18, v19) != v16)
    {
      v23 = objc_msgSend_engine(v9, v20, v21, v22);
      objc_msgSend_detachNode_(v23, v24, v9, v25);
      objc_msgSend_attachNode_(v16, v26, v9, v27);
    }

    v28 = a1[2];
    v29 = objc_msgSend_audioBufferFormat(a2, v20, v21, v22);
    objc_msgSend_connect_to_format_(v16, v30, v9, v28, v29);
    if (v9)
    {
      objc_msgSend_play(a2, v13, v14, v15);
    }
  }

  v31 = objc_msgSend_nodeRef(a2, v13, v14, v15);
  v39 = v31;
  objc_msgSend_lock(*(*a1 + 8), v32, v33, v34);
  if (v31)
  {
    CFRetain(v31);
  }

  sub_1AF15AE68((a1 + 4), &v39);
  return objc_msgSend_unlock(*(*a1 + 8), v35, v36, v37);
}

uint64_t sub_1AF15A1B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  cf = objc_msgSend_nodeRef(a2, a2, a3, a4);
  v9 = sub_1AF159FA8(*a1, v6, v7, v8);
  v13 = objc_msgSend_audioNode(a2, v10, v11, v12);
  result = objc_msgSend_detachNode_(v9, v14, v13, v15);
  if (cf)
  {
    objc_msgSend_lock(*(*a1 + 8), v17, v18, v19);
    sub_1AF15AF34((a1 + 32), &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    return objc_msgSend_unlock(*(*a1 + 8), v20, v21, v22);
  }

  return result;
}

uint64_t sub_1AF15A254(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2 || (v2 = sub_1AF12F344(v1[1])) != 0)
    {
      v6 = sub_1AF1B9B04(v2);
      v7 = *(v6 + 16);
      v23 = *(v6 + 32);
      v24 = v7;
      v8 = v1[2];
      LODWORD(v7) = HIDWORD(*(v6 + 48));
      LODWORD(v9) = *(v6 + 56);
      objc_msgSend_setListenerPosition_(v8, v10, v11, v12, *(v6 + 48), *&v7, v9);
      v25 = vneg_f32(*&v23);
      v26 = -*(&v23 + 2);
      v27 = v24;
      v28 = DWORD2(v24);
      objc_msgSend_setListenerVectorOrientation_(v8, v13, &v25, v14);
    }

    objc_msgSend_lock(*(*v1 + 8), v3, v4, v5);
    v18 = v1[4];
    if (v18 != v1 + 5)
    {
      do
      {
        v19 = v18[4];
        if (v19)
        {
          sub_1AF1BBAE0(v19);
        }

        v20 = v18[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v18[2];
            v22 = *v21 == v18;
            v18 = v21;
          }

          while (!v22);
        }

        v18 = v21;
      }

      while (v21 != v1 + 5);
    }

    return objc_msgSend_unlock(*(*v1 + 8), v15, v16, v17);
  }

  return result;
}

void *sub_1AF15A36C(void *a1)
{
  *a1 = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[4] = 0;
  a1[6] = 0;
  a1[5] = a1 + 6;
  a1[7] = 0;
  a1[1] = objc_alloc_init(MEMORY[0x1E696AE68]);
  return a1;
}

void sub_1AF15A3DC(_Unwind_Exception *a1)
{
  sub_1AF112128(v2, *v4);
  sub_1AF15AFB8(v1, *v3);
  _Unwind_Resume(a1);
}

unint64_t sub_1AF15A468(uint64_t a1, unint64_t a2)
{
  v7 = sub_1AF12DDCC(a2);
  if (v7)
  {
    objc_msgSend_lock(*(a1 + 8), v4, v5, v6, v7, a2);
    v11 = *(a1 + 24);
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = a1 + 24;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= v7;
      v15 = v13 < v7;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 == a1 + 24)
    {
      goto LABEL_18;
    }

    if (v7 < *(v12 + 32))
    {
      goto LABEL_18;
    }

    v18 = *(v12 + 48);
    v16 = v12 + 48;
    v17 = v18;
    if (!v18)
    {
      goto LABEL_18;
    }

    v19 = v16;
    do
    {
      v20 = *(v17 + 32);
      v14 = v20 >= a2;
      v21 = v20 < a2;
      if (v14)
      {
        v19 = v17;
      }

      v17 = *(v17 + 8 * v21);
    }

    while (v17);
    if (v19 == v16 || *(v19 + 32) > a2)
    {
LABEL_18:
      operator new();
    }

    v7 = *(v19 + 40);
    objc_msgSend_unlock(*(a1 + 8), v8, v9, v10);
  }

  return v7;
}

uint64_t sub_1AF15A5C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AF12DDCC(a2);
  objc_msgSend_lock(*(a1 + 8), v5, v6, v7);
  if (v4)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = a1 + 24;
      do
      {
        v13 = *(v11 + 32);
        v14 = v13 >= v4;
        v15 = v13 < v4;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 != a1 + 24 && v4 >= *(v12 + 32))
      {
        v16 = *(v12 + 48);
        if (v16)
        {
          v17 = (v12 + 48);
          do
          {
            v18 = v16[4];
            v14 = v18 >= a2;
            v19 = v18 < a2;
            if (v14)
            {
              v17 = v16;
            }

            v16 = v16[v19];
          }

          while (v16);
          if (v17 != (v12 + 48) && v17[4] <= a2)
          {
            v20 = v17[5];
            if (v20)
            {
              v21 = sub_1AF159DAC(v20, v8, v9, v10);
              MEMORY[0x1B271C6B0](v21, 0x10A0C406E04462DLL);
            }

            sub_1AF112440((v12 + 40), v17);
            operator delete(v17);
          }
        }

        if (!*(v12 + 56))
        {
          sub_1AF15B0F4((a1 + 16), v12);
        }
      }
    }
  }

  else
  {
    v22 = *(a1 + 16);
    if (v22 != a1 + 24)
    {
      do
      {
        v23 = *(v22 + 48);
        if (v23)
        {
          v24 = (v22 + 48);
          do
          {
            v25 = v23[4];
            v14 = v25 >= a2;
            v26 = v25 < a2;
            if (v14)
            {
              v24 = v23;
            }

            v23 = v23[v26];
          }

          while (v23);
          if (v24 != (v22 + 48) && v24[4] <= a2)
          {
            v27 = v24[5];
            if (v27)
            {
              v28 = sub_1AF159DAC(v27, v8, v9, v10);
              MEMORY[0x1B271C6B0](v28, 0x10A0C406E04462DLL);
            }

            sub_1AF112440((v22 + 40), v24);
            operator delete(v24);
          }
        }

        if (*(v22 + 56))
        {
          v29 = *(v22 + 8);
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = *(v22 + 16);
              v31 = *v30 == v22;
              v22 = v30;
            }

            while (!v31);
          }
        }

        else
        {
          v30 = sub_1AF15B0F4((a1 + 16), v22);
        }

        v22 = v30;
      }

      while (v30 != (a1 + 24));
    }
  }

  v32 = *(a1 + 8);

  return objc_msgSend_unlock(v32, v8, v9, v10);
}

void sub_1AF15A7D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = objc_alloc_init(MEMORY[0x1E69583F8]);
  v10 = objc_alloc_init(MEMORY[0x1E6958458]);
  objc_msgSend_attachNode_(*v1, v2, v10, v3);
  v4 = *v1;
  v8 = objc_msgSend_mainMixerNode(v4, v5, v6, v7);
  objc_msgSend_connect_to_format_(v4, v9, v10, v8, 0);
}

uint64_t sub_1AF15A858(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_audioPlayer(a2, a2, a3, a4);
  result = objc_msgSend_customAudioNode(a2, v6, v7, v8);
  if ((result & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      objc_msgSend_lock(*(a1 + 8), v10, v11, v12);
      v25[0] = objc_msgSend_world(a2, v13, v14, v15);
      v25[2] = v25;
      v16 = sub_1AF15B018(a1 + 16, v25);
      v20 = v16[5];
      v21 = v16 + 6;
      if (v20 != v16 + 6)
      {
        do
        {
          sub_1AF15A0A0(v20[5], a2, v18, v19);
          v22 = v20[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v20[2];
              v24 = *v23 == v20;
              v20 = v23;
            }

            while (!v24);
          }

          v20 = v23;
        }

        while (v23 != v21);
      }

      return objc_msgSend_unlock(*(a1 + 8), v17, v18, v19);
    }
  }

  return result;
}

uint64_t sub_1AF15A954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_customAudioNode(a2, a2, a3, a4);
  if ((result & 1) == 0)
  {
    objc_msgSend_lock(*(a1 + 8), v7, v8, v9);
    v22[0] = objc_msgSend_world(a2, v10, v11, v12);
    v22[2] = v22;
    v13 = sub_1AF15B018(a1 + 16, v22);
    v17 = v13[5];
    v18 = v13 + 6;
    if (v17 != v13 + 6)
    {
      do
      {
        sub_1AF15A1B8(v17[5], a2, v15, v16);
        v19 = v17[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v17[2];
            v21 = *v20 == v17;
            v17 = v20;
          }

          while (!v21);
        }

        v17 = v20;
      }

      while (v20 != v18);
    }

    return objc_msgSend_unlock(*(a1 + 8), v14, v15, v16);
  }

  return result;
}

uint64_t sub_1AF15AA28(void *a1, const char *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, __n128 a8)
{
  v8 = objc_msgSend_audioNode(a1, a2, a3, a4);
  result = objc_msgSend_conformsToProtocol_(v8, v9, &unk_1F2629150, v10);
  if (result)
  {
    LODWORD(v16) = a8.n128_u32[2];
    LODWORD(v15) = a8.n128_u32[1];

    return objc_msgSend_setPosition_(v8, v12, v13, v14, a8.n128_f64[0], v15, v16);
  }

  return result;
}

uint64_t sub_1AF15AA98(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_audioPlayer(a1, a2, a3, a4);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v9 = objc_msgSend_audioPlayer(a1, v6, v7, v8);
    result = objc_msgSend_engine(v9, v10, v11, v12);
    if (result)
    {
      return objc_msgSend_play(v9, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_1AF15AB24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v5 = qword_1ED73A410;

  return sub_1AF15A858(v5, a1, a3, a4);
}

uint64_t sub_1AF15AB78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v5 = qword_1ED73A410;

  return sub_1AF15A954(v5, a1, a3, a4);
}

unint64_t sub_1AF15ABCC(unint64_t a1, uint64_t a2)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

unint64_t sub_1AF15AC20(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

unint64_t sub_1AF15AC70(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {

    return sub_1AF15A254(result);
  }

  return result;
}

id sub_1AF15ACD8(char a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (qword_1ED739AD8 != -1)
    {
      sub_1AFDD6870();
    }

    v4 = qword_1ED73A410;

    return sub_1AF159FA8(v4, a2, a3, a4);
  }

  else if (qword_1ED73A410)
  {
    if (qword_1ED739AD8 != -1)
    {
      sub_1AFDD6870();
    }

    return *qword_1ED73A410;
  }

  else
  {
    return 0;
  }
}

void *sub_1AF15AD68(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  result = sub_1AF15A468(qword_1ED73A410, a1);
  if (result)
  {
    v6 = result;
    sub_1AF159E98(result, v3, v4, v5);
    return v6[2];
  }

  return result;
}

unint64_t sub_1AF15ADC0(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v2 = qword_1ED73A410;

  return sub_1AF15A468(v2, a1);
}

uint64_t sub_1AF15AE14(unint64_t a1)
{
  if (qword_1ED739AD8 != -1)
  {
    sub_1AFDD6870();
  }

  v2 = qword_1ED73A410;

  return sub_1AF15A5C8(v2, a1);
}

void *sub_1AF15AE68(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF15AF34(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1AF112440(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1AF15AFB8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AF15AFB8(a1, *a2);
    sub_1AF15AFB8(a1, a2[1]);
    sub_1AF112128((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *sub_1AF15B018(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1AF15B0F4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1AF112440(a1, a2);
  sub_1AF112128(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_1AF15B134()
{
  if (qword_1ED734758[0] != -1)
  {
    sub_1AFDD6884();
  }

  return qword_1ED734750;
}

double sub_1AF15B16C()
{
  qword_1ED734750 = _CFRuntimeRegisterClass();
  xmmword_1ED722E10 = xmmword_1F24E73A8;
  qword_1ED722E68 = sub_1AF15B3C0;
  result = *&xmmword_1F24E73B8;
  unk_1ED722E28 = xmmword_1F24E73B8;
  return result;
}

uint64_t sub_1AF15B1E0()
{
  if (qword_1ED734758[0] != -1)
  {
    sub_1AFDD6884();
  }

  v0 = sub_1AF0D160C(qword_1ED734750, 0x90uLL);
  sub_1AF1706A4(v0);
  *(v0 + 64) = &off_1F24E7398;
  v1 = MEMORY[0x1E69E9B18];
  v2 = *(MEMORY[0x1E69E9B18] + 16);
  *(v0 + 96) = *MEMORY[0x1E69E9B18];
  *(v0 + 112) = v2;
  v3 = *(v1 + 48);
  *(v0 + 128) = *(v1 + 32);
  *(v0 + 144) = v3;
  return v0;
}

void sub_1AF15B254(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }
}

void sub_1AF15B29C(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 72) = v5;
    v6 = sub_1AF21CF54(cf);
    v7 = *(a1 + 80);
    if (v7 != v6)
    {
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 80) = 0;
      }

      if (v6)
      {
        v8 = CFRetain(v6);
      }

      else
      {
        v8 = 0;
      }

      *(a1 + 80) = v8;
    }

    CFRelease(v6);
  }
}

__n128 *sub_1AF15B358(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  result[9] = a5;
  return result;
}

id sub_1AF15B370(uint64_t a1)
{
  sub_1AF15B254(a1);

  return sub_1AF1705EC(a1);
}

CFTypeRef *sub_1AF15B3C0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6898(v2);
    }
  }

  v3 = sub_1AF15B1E0();
  sub_1AF1706AC(a1, v3);
  sub_1AF15B29C(v3, *(a1 + 72));
  return v3;
}

uint64_t sub_1AF15B428(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v24 = 0;
  v25 = 0;
  sub_1AF21D67C(a1[5].i64[0], &v25, &v24);
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  v11 = vmulq_lane_f32(v8, v25, 1);
  v12 = vmlaq_f32(vmlaq_n_f32(v11, v7, v25.f32[0]), 0, v9);
  v13 = vmulq_lane_f32(v8, v24, 1);
  v14 = vmlaq_f32(vmlaq_n_f32(v13, v7, v25.f32[0]), 0, v9);
  v15 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(v11, v7, v24.f32[0]), 0, v9));
  v16 = vaddq_f32(v10, vmlaq_f32(vmlaq_n_f32(v13, v7, v24.f32[0]), 0, v9));
  v15.i32[3] = 0;
  v16.i32[3] = 0;
  v17 = vaddq_f32(v10, v14);
  v18 = vminnmq_f32(v15, v16);
  v17.i32[3] = 0;
  v18.i32[3] = 0;
  v19 = vaddq_f32(v10, v12);
  v20 = vminnmq_f32(v17, v18);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = vmaxnmq_f32(v15, v16);
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v17, v21);
  v22.i32[3] = 0;
  *a3 = vminnmq_f32(v19, v20);
  *a4 = vmaxnmq_f32(v19, v22);
  return 1;
}

uint64_t sub_1AF15B50C(float32x4_t *a1, uint64_t a2, _OWORD *a3)
{
  v10.i32[2] = 0;
  v10.i64[0] = 0;
  v9.i32[2] = 0;
  v9.i64[0] = 0;
  sub_1AF15B428(a1, 0, &v10, &v9);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v8 = vmlaq_f32(v10, v4, vsubq_f32(v9, v10));
  v5 = vsubq_f32(v8, v10);
  v6 = vmulq_f32(v5, v5);
  sub_1AF1DA1D0(a3, &v8, sqrtf(v6.f32[2] + vaddv_f32(*v6.f32)));
  return 1;
}

__CFString *sub_1AF15B598(unsigned int a1)
{
  if (a1 >= 0xF)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD691C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return off_1E7A7A790[a1];
}

__CFString *sub_1AF15B5EC(unsigned int a1)
{
  if (a1 >= 5)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6994(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return off_1E7A7A808[a1];
}

__CFString *sub_1AF15B64C(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | targetCount:%d needsBlendColor:%d\n", v3, a1, *(a1 + 48), *(a1 + 56));
  if (*(a1 + 48) >= 1)
  {
    v4 = 0;
    v5 = (a1 + 23);
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      if (*(v5 - 6))
      {
        v9 = *v5;
        v10 = a1;
        v11 = Mutable;
        v12 = *(v5 - 1);
        v13 = *(v5 - 2);
        v14 = "true";
        if ((*(v5 - 7) & 1) == 0)
        {
          v14 = "false";
        }

        v30 = v14;
        v15 = sub_1AF15B598(v6);
        v16 = sub_1AF15B5EC(v8);
        v17 = sub_1AF15B598(v7);
        v18 = sub_1AF15B598(v13);
        v19 = sub_1AF15B5EC(v9);
        v20 = v12;
        Mutable = v11;
        a1 = v10;
        v29 = sub_1AF15B598(v20);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)] alpha[(src * %@) %@ (dst * %@)]\n", v30, v15, v16, v17, v18, v19, v29);
      }

      else
      {
        if (*(v5 - 7))
        {
          v21 = "true";
        }

        else
        {
          v21 = "false";
        }

        v22 = sub_1AF15B598(v6);
        v23 = sub_1AF15B5EC(v8);
        v25 = sub_1AF15B598(v7);
        CFStringAppendFormat(Mutable, 0, @"  blend:%s col[(src * %@) %@ (dst * %@)]\n", v21, v22, v23, v25, v26, v27, v28);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < *(a1 + 48));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF15B81C()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D40 = result;
  return result;
}

uint64_t sub_1AF15B844(uint64_t a1, uint64_t a2)
{
  if (qword_1EB654D48 != -1)
  {
    sub_1AFDD6A0C();
  }

  result = sub_1AF0D160C(qword_1EB654D40, 0x30uLL);
  if (a2 > 3)
  {
    return 0;
  }

  *(result + 48) = a2;
  if (a2 < 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    v7 = (result + 16);
    v8 = (a1 + 2);
    do
    {
      *v7 = *(v8 - 1);
      if (*(v8 - 2) == 1)
      {
        v5.i16[0] = *v8;
        v5.i64[1] = v5.i64[0];
        *v5.i8 = vceq_s8(vqtbl1_s8(v5, 0x101000000000101), 0xC0A0D0B0C0A0D0BLL);
        v5.i8[0] = vmaxv_u8(*v5.i8);
        v6 |= v5.i32[0];
        if (*(v8 - 1) == 1)
        {
          v5.i16[0] = *(v8 + 3);
          v5.i64[1] = v5.i64[0];
          *v5.i8 = vceq_s8(vqtbl1_s8(v5, 16843009), 0xC0A0D0B0C0A0D0BLL);
          v5.i8[0] = vmaxv_u8(*v5.i8);
          v6 |= v5.i32[0];
        }
      }

      v8 += 4;
      ++v7;
      --a2;
    }

    while (a2);
  }

  *(result + 56) = v6 & 1;
  return result;
}

uint64_t sub_1AF15B948(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 48) <= a2)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A98(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return *(a1 + 8 * a2 + 16);
}

uint64_t sub_1AF15B9CC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 56);
}

uint64_t sub_1AF15BA14(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF15BA5C()
{
  if (qword_1EB6584C8 != -1)
  {
    sub_1AFDD6B10();
  }

  return qword_1EB6584C0;
}

uint64_t sub_1AF15BA94()
{
  v1 = 0x1010001010001;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584C0 = result;
  return result;
}

uint64_t sub_1AF15BAD4()
{
  if (qword_1EB6584D8 != -1)
  {
    sub_1AFDD6B24();
  }

  return qword_1EB6584D0;
}

uint64_t sub_1AF15BB0C()
{
  v1 = 0x2000002000001;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584D0 = result;
  return result;
}

uint64_t sub_1AF15BB4C()
{
  if (qword_1EB6584E8 != -1)
  {
    sub_1AFDD6B38();
  }

  return qword_1EB6584E0;
}

uint64_t sub_1AF15BB84()
{
  v1 = 0x10002000101;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584E0 = result;
  return result;
}

uint64_t sub_1AF15BBC4()
{
  if (qword_1ED731C60 != -1)
  {
    sub_1AFDD6B4C();
  }

  return qword_1ED731C58;
}

uint64_t sub_1AF15BBFC()
{
  v1 = 0x5010005010001;
  result = sub_1AF15B844(&v1, 1);
  qword_1ED731C58 = result;
  return result;
}

uint64_t sub_1AF15BC40()
{
  if (qword_1EB654D58[0] != -1)
  {
    sub_1AFDD6B60();
  }

  return qword_1EB654D50;
}

uint64_t sub_1AF15BC78()
{
  v1 = 0x10000010000;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB654D50 = result;
  return result;
}

uint64_t sub_1AF15BCB4()
{
  if (qword_1EB6584F8 != -1)
  {
    sub_1AFDD6B74();
  }

  return qword_1EB6584F0;
}

uint64_t sub_1AF15BCEC()
{
  v1 = 0x1000201010101;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB6584F0 = result;
  return result;
}

uint64_t sub_1AF15BD2C()
{
  if (qword_1EB658508 != -1)
  {
    sub_1AFDD6B88();
  }

  return qword_1EB658500;
}

uint64_t sub_1AF15BD64()
{
  v1 = 0x401010401010001;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB658500 = result;
  return result;
}

uint64_t sub_1AF15BDA8()
{
  if (qword_1EB644898[0] != -1)
  {
    sub_1AFDD6B9C();
  }

  return qword_1EB644890;
}

uint64_t sub_1AF15BDE0()
{
  v1 = 0x5010003010101;
  result = sub_1AF15B844(&v1, 1);
  qword_1EB644890 = result;
  return result;
}

void sub_1AF15BE24(void *a1)
{
  values = a1;
  v1 = CFDictionaryCreate(0, off_1E7A7B9E8, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = sub_1AF1C3FAC(values);
  sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v2, v1, 1u);
  CFRelease(v1);
}

uint64_t sub_1AF15BEA8()
{
  if (qword_1ED73AD88 != -1)
  {
    sub_1AFDD6BB0();
  }

  return qword_1ED73AD80;
}

double sub_1AF15BEE0()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AD80 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD02C(@"sensorHeight", 0xF8u, 1, 0);
  sub_1AF1DD02C(@"filmOffset", 0x50u, 7, 0);
  sub_1AF1DD02C(@"postProjectionTransformTranslation", 0x58u, 7, 0);
  sub_1AF1DD02C(@"postProjectionTransformScale", 0x60u, 7, 0);
  sub_1AF1DD02C(@"focusDistance", 0xF0u, 1, 0);
  sub_1AF1DD02C(@"focalLength", 0xF4u, 1, 0);
  sub_1AF1DD02C(@"fieldOfView", 0x6Cu, 1, 0);
  sub_1AF1DD02C(@"orthographicScale", 0x68u, 1, 0);
  sub_1AF1DD02C(@"projectionTransform", 0x70u, 10, 0);
  sub_1AF1DD02C(@"zFar", 0x48u, 1, 0);
  sub_1AF1DD02C(@"zNear", 0x44u, 1, 0);
  sub_1AF1DD02C(@"depthOfField", 0x100u, 5, 1);
  sub_1AF1DD02C(@"motionBlur", 0x108u, 5, 1);
  sub_1AF1DD02C(@"grain", 0x110u, 5, 1);
  sub_1AF1DD02C(@"exposure", 0x118u, 5, 1);
  sub_1AF1DD02C(@"toneMapping", 0x120u, 5, 1);
  sub_1AF1DD02C(@"bloom", 0x128u, 5, 1);
  sub_1AF1DD02C(@"vignetting", 0x130u, 5, 1);
  sub_1AF1DD02C(@"lensBlur", 0x138u, 5, 1);
  sub_1AF1DD02C(@"colorFringe", 0x140u, 5, 1);
  sub_1AF1DD02C(@"colorGrading", 0x148u, 5, 1);
  sub_1AF1DD02C(@"chromaticTransform", 0x150u, 5, 1);
  sub_1AF1DD02C(@"doughnutBokeh", 0x158u, 5, 1);
  sub_1AF1DD018();
  xmmword_1ED72F530 = xmmword_1F24E7508;
  qword_1ED72F540 = sub_1AF15F06C;
  result = *&xmmword_1F24E7518;
  unk_1ED72F558 = xmmword_1F24E7518;
  unk_1ED72F568 = unk_1F24E7528;
  qword_1ED72F578 = qword_1F24E7538;
  unk_1ED72F580 = sub_1AF1606B0;
  return result;
}

double sub_1AF15C19C()
{
  if (qword_1ED73AD88 != -1)
  {
    sub_1AFDD6BB0();
  }

  v0 = sub_1AF0D160C(qword_1ED73AD80, 0x1B0uLL);
  *(v0 + 68) = 0x42C800003DCCCCCDLL;
  *(v0 + 88) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(v0 + 96) = _D1;
  *(v0 + 104) = 0x41D7EE863F800000;
  *(v0 + 248) = 1103101952;
  *(v0 + 240) = 0x4248000040200000;
  *(v0 + 432) = -1;
  v6 = *(v0 + 360);
  *(v0 + 368) = xmmword_1AFE20150;
  *(v0 + 384) = xmmword_1AFE20160;
  result = 0.0;
  *(v0 + 400) = xmmword_1AFE20180;
  *(v0 + 416) = xmmword_1AFE201A0;
  *(v0 + 360) = v6 & 0xFC;
  return result;
}

void sub_1AF15C248(_BYTE *a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[360];
  if (((((v12 & 2) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    a1[360] = v12 & 0xFD | v13;
    sub_1AF15BE24(a1);
  }
}

uint64_t sub_1AF15C2CC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 256);
}

void sub_1AF15C314(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[32];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[32];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[32] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[32] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C3C4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 264);
}

void sub_1AF15C40C(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[33];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[33];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[33] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[33] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C4BC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 272);
}

void sub_1AF15C504(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[34];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[34];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[34] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[34] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C5B4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 280);
}

void sub_1AF15C5FC(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[35];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[35];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[35] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[35] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C6AC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 288);
}

void sub_1AF15C6F4(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[36];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[36];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[36] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[36] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C7A4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 296);
}

void sub_1AF15C7EC(uint64_t *a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[37];
  if (v12 != a2)
  {
    if (v12)
    {
      sub_1AF1C3A90(v12, a1[6]);
      v13 = a1[37];
      if (v13 == a2)
      {
        goto LABEL_14;
      }

      if (v13)
      {
        CFRelease(v13);
        a1[37] = 0;
      }

      if (!a2)
      {
        v13 = 0;
LABEL_13:
        a1[37] = v13;
LABEL_14:
        if (v13)
        {
          sub_1AF1C3CB4(v13, a1[6]);
        }

        goto LABEL_16;
      }
    }

    else if (!a2)
    {
LABEL_16:
      sub_1AF15BE24(a1);
      return;
    }

    v13 = CFRetain(a2);
    goto LABEL_13;
  }
}

uint64_t sub_1AF15C89C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6BC4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 304);
}