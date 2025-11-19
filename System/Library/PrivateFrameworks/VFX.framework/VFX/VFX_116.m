uint64_t sub_1AFA04844(uint64_t a1)
{
  v2 = sub_1AFA04E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA04880(uint64_t a1)
{
  v2 = sub_1AFA04E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA048BC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFA04C8C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1AFA04924()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA049C4()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t getEnumTagSinglePayload for ParticleVoxelRenderer(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ParticleVoxelRenderer(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AFA04BBC()
{
  result = qword_1EB641F08;
  if (!qword_1EB641F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F08);
  }

  return result;
}

unint64_t sub_1AFA04C10(uint64_t a1)
{
  result = sub_1AFA04C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AFA04C38()
{
  result = qword_1EB641F10;
  if (!qword_1EB641F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F10);
  }

  return result;
}

uint64_t sub_1AFA04C8C(void *a1)
{
  sub_1AFA04E9C(0, &qword_1EB641F18, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA04E48();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v13[15] = 0;
  v9 = sub_1AFDFE718();
  v13[14] = 1;
  v11 = sub_1AFDFE718();
  (*(v5 + 8))(v8, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

unint64_t sub_1AFA04E48()
{
  result = qword_1EB641F20;
  if (!qword_1EB641F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F20);
  }

  return result;
}

void sub_1AFA04E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA04E48();
    v7 = a3(a1, &type metadata for ParticleVoxelRenderer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA04F14()
{
  result = qword_1EB641F30;
  if (!qword_1EB641F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F30);
  }

  return result;
}

unint64_t sub_1AFA04F6C()
{
  result = qword_1EB641F38;
  if (!qword_1EB641F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F38);
  }

  return result;
}

unint64_t sub_1AFA04FC4()
{
  result = qword_1EB641F40;
  if (!qword_1EB641F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F40);
  }

  return result;
}

double sub_1AFA05018@<D0>(float32x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>, float32x4_t a8@<Q4>, float32x4_t a9@<Q5>, float32x4_t a10@<Q6>, float32x4_t a11@<Q7>)
{
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, a5.f32[0]), a9, *a5.f32, 1), a10, a5, 2), a11, a5, 3);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, a7.f32[0]), a9, *a7.f32, 1), a10, a7, 2), a11, a7, 3);
  v113 = v15;
  v110 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, a6.f32[0]), a9, *a6.f32, 1), a10, a6, 2), a11, a6, 3);
  v16 = v110;
  v17 = v14;
  v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, a4.f32[0]), a9, *a4.f32, 1), a10, a4, 2), a11, a4, 3);
  v18 = v106;
  if ((a1[8].i8[0] & 1) == 0)
  {
    v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, COERCE_FLOAT(*a1->f32)), a9, *a1, 1), a10, *a1->f32, 2), a11, *a1->f32, 3);
    v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, COERCE_FLOAT(*a1[2].f32)), a9, a1[2], 1), a10, *a1[2].f32, 2), a11, *a1[2].f32, 3);
    v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, COERCE_FLOAT(*a1[4].f32)), a9, a1[4], 1), a10, *a1[4].f32, 2), a11, *a1[4].f32, 3);
    v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a8, COERCE_FLOAT(*a1[6].f32)), a9, a1[6], 1), a10, *a1[6].f32, 2), a11, *a1[6].f32, 3);
  }

  v112 = v15;
  v19 = vmulq_f32(a4, a4);
  v20 = vmulq_f32(a5, a5);
  v21 = vmulq_f32(a6, a6);
  v22 = vzip2q_s32(v19, v21);
  v23 = vzip1q_s32(vzip1q_s32(v19, v21), v20);
  v24 = vtrn2q_s32(v19, v20);
  v24.i32[2] = v21.i32[1];
  v25 = vaddq_f32(vzip1q_s32(v22, vdupq_laneq_s32(v20, 2)), vaddq_f32(v23, v24));
  v24.i64[0] = 0x80000000800000;
  v24.i64[1] = 0x80000000800000;
  v26 = vcgeq_f32(v24, v25);
  v25.i32[3] = 0;
  v27 = vrsqrteq_f32(v25);
  v28 = vmulq_f32(v27, vrsqrtsq_f32(v25, vmulq_f32(v27, v27)));
  v29 = v26;
  v29.i32[3] = 0;
  v30 = vbslq_s8(vcltzq_s32(v29), v25, vmulq_f32(v28, vrsqrtsq_f32(v25, vmulq_f32(v28, v28))));
  v31 = vmulq_n_f32(a4, v30.f32[0]);
  v32 = vmulq_lane_f32(a5, *v30.f32, 1);
  v33 = vmulq_laneq_f32(a6, v30, 2);
  v34 = vuzp1q_s32(v33, v33);
  v35 = vuzp1q_s32(v32, v32);
  v36 = v31;
  if (v26.i32[0])
  {
    v37 = vmlaq_f32(vmulq_f32(vextq_s8(v34, v33, 0xCuLL), vnegq_f32(v32)), v33, vextq_s8(v35, v32, 0xCuLL));
    v36 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
  }

  v38 = vuzp1q_s32(v31, v31);
  v39 = v32;
  if (v26.i32[1])
  {
    v40 = vmlaq_f32(vmulq_f32(vextq_s8(v38, v31, 0xCuLL), vnegq_f32(v33)), v31, vextq_s8(v34, v33, 0xCuLL));
    v39 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
  }

  if (v26.i32[2])
  {
    v41 = vmlaq_f32(vmulq_f32(vextq_s8(v35, v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(v38, v31, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
  }

  v42 = (*v36.i32 + *&v39.i32[1]) + v33.f32[2];
  v108 = v14;
  v102 = v17;
  v104 = v18;
  v100 = v16;
  if (v42 > 0.0)
  {
    v43 = sqrtf(v42 + 1.0);
    *v44.f32 = vsub_f32(*&vzip2q_s32(v39, vuzp1q_s32(v39, v33)), *&vtrn2q_s32(v33, vzip2q_s32(v33, v36)));
    v44.f32[2] = *&v36.i32[1] - *v39.i32;
    v44.f32[3] = v43 * v43;
    v45 = 0.5 / v43;
    goto LABEL_11;
  }

  if (*v36.i32 >= *&v39.i32[1] && *v36.i32 >= v33.f32[2])
  {
    v48 = sqrtf(((*v36.i32 + 1.0) - *&v39.i32[1]) - v33.f32[2]);
    v52.f32[0] = v48 * v48;
    v49 = *&v36.i32[1] + *v39.i32;
    v50 = vzip2q_s32(v36, v39).u64[0];
    LODWORD(v51) = vadd_f32(v50, *v33.f32).u32[0];
    HIDWORD(v51) = vsub_f32(v50, *&v33).i32[1];
    v52.f32[1] = v49;
    v52.i64[1] = v51;
    goto LABEL_20;
  }

  if (*&v39.i32[1] > v33.f32[2])
  {
    v48 = sqrtf(((*&v39.i32[1] + 1.0) - *v36.i32) - v33.f32[2]);
    v52.f32[0] = *&v36.i32[1] + *v39.i32;
    v47 = vzip2q_s32(v36, v39).u64[0];
    v52.f32[1] = v48 * v48;
    *&v52.u32[2] = vext_s8(vadd_f32(*v33.f32, v47), vsub_f32(*v33.f32, v47), 4uLL);
LABEL_20:
    if (!sub_1AF6AF3F4(vmulq_n_f32(v52, 0.5 / v48)))
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v92 = vzip2q_s32(v36, v39).u64[0];
  v93 = __PAIR64__(v36.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v33.f32[2] + 1.0) - *v36.i32) - *&v39.i32[1])));
  v94 = vdup_lane_s32(*v39.i8, 0);
  v95 = vsub_f32(*v36.i8, v94);
  v94.i32[0] = v93.i32[0];
  v94.i32[0] = vmul_f32(v93, v94).u32[0];
  v94.i32[1] = v95.i32[1];
  *v44.f32 = vadd_f32(v92, *v33.f32);
  *&v44.u32[2] = v94;
  v45 = 0.5 / v93.f32[0];
LABEL_11:
  if (!sub_1AF6AF3F4(vmulq_n_f32(v44, v45)))
  {
    goto LABEL_23;
  }

LABEL_21:
  if ((*(v11 + 20) & 0x7FFFFFFF) == 0 && (*(a2 + 16) & 0x7FFFFFFF) == 0)
  {
    v96 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v113, 0, v110), 0, v108), 0, v106);
    v97 = vsubq_f32(v96, vmlaq_f32(vmlaq_f32(vmlaq_f32(v112, 0, v100), 0, v102), 0, v104));
    v97.i32[3] = 0;
    v114.columns[0] = v96;
    v114.columns[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v108), xmmword_1AFE52680), xmmword_1AFE52680, vabsq_f32(v106)), xmmword_1AFE52680, vabsq_f32(v110));
    v114.columns[2] = v97;
    sub_1AFA09DF8(&v114);
    goto LABEL_30;
  }

LABEL_23:
  v53 = vmulq_f32(v106, v106);
  v54 = vmulq_f32(v108, v108);
  v55 = vmulq_f32(v110, v110);
  v56 = vtrn2q_s32(v53, v54);
  v56.i32[2] = v55.i32[1];
  v57 = vaddq_f32(vzip1q_s32(vzip2q_s32(v53, v55), vdupq_laneq_s32(v54, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v53, v55), v54), v56));
  v58.i64[0] = 0x80000000800000;
  v58.i64[1] = 0x80000000800000;
  v59 = vcgeq_f32(v58, v57);
  v57.i32[3] = 0;
  v60 = vrsqrteq_f32(v57);
  v61 = vmulq_f32(v60, vrsqrtsq_f32(v57, vmulq_f32(v60, v60)));
  v62 = v59;
  v62.i32[3] = 0;
  v63 = vbslq_s8(vcltzq_s32(v62), v57, vmulq_f32(v61, vrsqrtsq_f32(v57, vmulq_f32(v61, v61))));
  v64 = vmulq_n_f32(v106, v63.f32[0]);
  v65 = vmulq_lane_f32(v108, *v63.f32, 1);
  v66 = vmulq_laneq_f32(v110, v63, 2);
  v67 = vuzp1q_s32(v66, v66);
  v68 = vuzp1q_s32(v65, v65);
  v69 = v64;
  if (v59.i32[0])
  {
    v70 = vmlaq_f32(vmulq_f32(vextq_s8(v67, v66, 0xCuLL), vnegq_f32(v65)), v66, vextq_s8(v68, v65, 0xCuLL));
    v69 = vextq_s8(vuzp1q_s32(v70, v70), v70, 0xCuLL);
  }

  v105 = v69;
  v71 = vuzp1q_s32(v64, v64);
  v72 = v65;
  if (v59.i32[1])
  {
    v73 = vmlaq_f32(vmulq_f32(vextq_s8(v71, v64, 0xCuLL), vnegq_f32(v66)), v64, vextq_s8(v67, v66, 0xCuLL));
    v72 = vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL);
  }

  v103 = v72;
  if (v59.i32[2])
  {
    v74 = vmlaq_f32(vmulq_f32(vextq_s8(v68, v65, 0xCuLL), vnegq_f32(v64)), v65, vextq_s8(v71, v64, 0xCuLL));
    v66 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
  }

  v101 = vextq_s8(v53, v53, 8uLL).u64[0];
  v75 = vadd_f32(*v53.i8, v101);
  v75.i32[0] = vadd_f32(v75, vdup_lane_s32(v75, 1)).u32[0];
  v76 = vrsqrte_f32(v75.u32[0]);
  v77 = vmul_f32(v76, vrsqrts_f32(v75.u32[0], vmul_f32(v76, v76)));
  v75.i32[0] = vmul_f32(v77, vrsqrts_f32(v75.u32[0], vmul_f32(v77, v77))).u32[0];
  v98 = v66;
  v99 = vextq_s8(v54, v54, 8uLL).u64[0];
  v78 = vadd_f32(*v54.i8, v99);
  v78.i32[0] = vadd_f32(v78, vdup_lane_s32(v78, 1)).u32[0];
  v128.columns[0] = vmulq_n_f32(v106, *v75.i32);
  v79 = vrsqrte_f32(v78.u32[0]);
  v80 = vmul_f32(v79, vrsqrts_f32(v78.u32[0], vmul_f32(v79, v79)));
  v78.i32[0] = vmul_f32(v80, vrsqrts_f32(v78.u32[0], vmul_f32(v80, v80))).u32[0];
  v81 = vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
  v128.columns[1] = vmulq_n_f32(v108, *v78.i32);
  v81.i32[0] = vadd_f32(v81, vdup_lane_s32(v81, 1)).u32[0];
  v82 = vrsqrte_f32(v81.u32[0]);
  v83 = vmul_f32(v82, vrsqrts_f32(v81.u32[0], vmul_f32(v82, v82)));
  v128.columns[2] = vmulq_n_f32(v110, vmul_f32(v83, vrsqrts_f32(v81.u32[0], vmul_f32(v83, v83))).f32[0]);
  v128.columns[3] = v113;
  v109 = *v54.i8;
  v111 = *v53.i8;
  v107 = v55;
  v129 = __invert_f4(v128);
  *&v84 = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(v101, v99), vadd_f32(vzip1_s32(v111, v109), vzip2_s32(v111, v109)))), 0x3F0000003F000000);
  *(&v84 + 2) = sqrtf(*&v107.i32[2] + vaddv_f32(*v107.i8)) * 0.5;
  HIDWORD(v84) = 0;
  v85 = vsubq_f32(v113, v112);
  v85.i32[3] = 0;
  v114 = v129;
  v115 = v105;
  v116 = v103;
  v117 = v98;
  v118 = v84;
  v119 = v85;
  sub_1AFA09DEC(&v114);
LABEL_30:
  v124 = v117;
  v125 = v118;
  v126 = v119;
  v86 = v120;
  v127 = v120;
  v121 = v114;
  v122 = v115;
  v123 = v116;
  v87 = v118;
  *(a3 + 96) = v117;
  *(a3 + 112) = v87;
  *(a3 + 128) = v126;
  *(a3 + 144) = v86;
  v88 = v121.columns[3];
  *(a3 + 32) = v121.columns[2];
  *(a3 + 48) = v88;
  v89 = v123;
  *(a3 + 64) = v122;
  *(a3 + 80) = v89;
  result = *v121.columns[0].i64;
  v91 = v121.columns[1];
  *a3 = v121.columns[0];
  *(a3 + 16) = v91;
  return result;
}

double sub_1AFA05658@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE916A0;
  *(a1 + 16) = 255;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  return result;
}

uint64_t sub_1AFA05678(void *a1)
{
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  result = sub_1AFA057E0(a1, &v10[-v7]);
  if (!v1)
  {
    v10[15] = 10;
    sub_1AFDFE8C8();
    v10[14] = 11;
    sub_1AFDFE8E8();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1AFA057E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  sub_1AFDFF3F8();
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AFDFE8E8();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFA08840();
  return sub_1AFDFE918();
}

uint64_t sub_1AFA059DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  sub_1AFDFF3F8();
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AFDFE8E8();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFA08840();
  return sub_1AFDFE918();
}

uint64_t sub_1AFA05BD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  sub_1AFDFF3F8();
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AFDFE8E8();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFA08840();
  return sub_1AFDFE918();
}

uint64_t sub_1AFA05DD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  sub_1AFDFF3F8();
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  sub_1AFDFE8E8();
  if (v2)
  {
    return (*(*(v5 - 8) + 8))(a2, v5);
  }

  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFDFE8E8();
  sub_1AFA08840();
  return sub_1AFDFE918();
}

uint64_t sub_1AFA05FE4(void *a1, char a2)
{
  v4 = v2;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  result = sub_1AFDFF3B8();
  if (!v3)
  {
    sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
    v8 = sub_1AFDFE6C8();
    v9 = *&v8;
    if ((v8 & 0x100000000) != 0)
    {
      v9 = 0.0;
    }

    *v2 = v9;
    v10 = sub_1AFDFE6C8();
    v11 = *&v10;
    if ((v10 & 0x100000000) != 0)
    {
      v11 = 0.0;
    }

    v2[1] = v11;
    sub_1AFDFE738();
    v13 = v12;
    v2[2] = v12;
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF69504C(1039, v14, v15) && (a2 & 1) == 0)
    {
      v4[2] = v13 + 1.0;
    }

    sub_1AFDFE738();
    *(v4 + 3) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF694FF8(2024, v17, v18))
    {
      sub_1AFDFE738();
      *(v4 + 7) = v19;
    }

    sub_1AFA08788();
    result = sub_1AFDFE6E8();
    v20 = v21;
    if (v22)
    {
      v20 = 255;
    }

    *(v4 + 4) = v20;
  }

  return result;
}

uint64_t sub_1AFA062DC(void *a1, char a2)
{
  v4 = v2;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  result = sub_1AFDFF3B8();
  if (!v3)
  {
    sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
    v8 = sub_1AFDFE6C8();
    v9 = *&v8;
    if ((v8 & 0x100000000) != 0)
    {
      v9 = 0.0;
    }

    *v2 = v9;
    v10 = sub_1AFDFE6C8();
    v11 = *&v10;
    if ((v10 & 0x100000000) != 0)
    {
      v11 = 0.0;
    }

    v2[1] = v11;
    sub_1AFDFE738();
    v13 = v12;
    v2[2] = v12;
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF69504C(1039, v14, v15) && (a2 & 1) == 0)
    {
      v4[2] = v13 + 1.0;
    }

    sub_1AFDFE738();
    *(v4 + 3) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF694FF8(2024, v17, v18))
    {
      sub_1AFDFE738();
      *(v4 + 4) = v19;
    }

    sub_1AFA08788();
    result = sub_1AFDFE6E8();
    v20 = v21;
    if (v22)
    {
      v20 = 255;
    }

    *(v4 + 5) = v20;
  }

  return result;
}

uint64_t sub_1AFA065D4(void *a1, char a2)
{
  v4 = v2;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA08734();
  result = sub_1AFDFF3B8();
  if (!v3)
  {
    sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
    v8 = sub_1AFDFE6C8();
    v9 = *&v8;
    if ((v8 & 0x100000000) != 0)
    {
      v9 = 0.0;
    }

    v2[1] = v9;
    v10 = sub_1AFDFE6C8();
    v11 = *&v10;
    if ((v10 & 0x100000000) != 0)
    {
      v11 = 0.0;
    }

    v2[2] = v11;
    sub_1AFDFE738();
    v13 = v12;
    v2[3] = v12;
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF69504C(1039, v14, v15) && (a2 & 1) == 0)
    {
      v4[3] = v13 + 1.0;
    }

    sub_1AFDFE738();
    *(v4 + 4) = v16;
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF694FF8(2024, v17, v18))
    {
      sub_1AFDFE738();
      *(v4 + 5) = v19;
    }

    sub_1AFA08788();
    result = sub_1AFDFE6E8();
    v20 = v21;
    if (v22)
    {
      v20 = 255;
    }

    *(v4 + 6) = v20;
  }

  return result;
}

double sub_1AFA068CC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA0852C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

double sub_1AFA0693C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF5C82B8(v1);

  result = *v1;
  xmmword_1EB6C34B0 = v1[0];
  unk_1EB6C34C0 = v1[1];
  qword_1EB6C34D0 = v2;
  return result;
}

void sub_1AFA069E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB637228 != -1)
  {
    swift_once();
  }

  v64[0] = xmmword_1EB6C34B0;
  v64[1] = unk_1EB6C34C0;
  v65 = qword_1EB6C34D0;
  sub_1AF6B06C0(a1, v64, a4 & 0xFFFFFFFFFFLL, v46);
  v39 = *&v46[0];
  if (*&v46[0])
  {
    v11 = *(&v46[2] + 1);
    v12 = *(&v47 + 1);
    v35 = *(&v48 + 1);
    v38 = v48;
    v51 = *(v46 + 8);
    v52 = *(&v46[1] + 8);
    MEMORY[0x1EEE9AC00](v9, v10);
    v36 = v27;
    v37 = v13;
    v27[2] = v4;
    v28 = a4;
    v29 = v14;
    v30 = a1;
    v31 = a1;
    v32 = a2;
    v33 = a3;
    if (v13 > 0 && v12)
    {
      v34 = &v34;
      v15 = v35;
      v16 = v35[4];
      v44 = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v45[2] = v46[2];
      v45[3] = v47;
      v45[4] = v48;
      v45[5] = v49;
      v45[0] = v46[0];
      v45[1] = v46[1];
      sub_1AF5DD298(v45, v59);
      for (i = (v11 + 24); ; i += 6)
      {
        v43 = 0;
        v18 = v16;
        v19 = *(i - 6);
        v20 = *(i - 5);
        v21 = *(i - 4);
        v22 = *(i - 1);
        v41 = *i;
        v42 = v22;
        v23 = i[2];
        v40 = i[1];
        if (v44)
        {
          v24 = *(v23 + 376);

          v15 = v35;
          os_unfair_lock_lock(v24);
          os_unfair_lock_lock(*(v23 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v18);

        sub_1AF630914(v25, v15, v50);

        LOBYTE(v53) = 1;
        v59[0] = v38;
        v59[1] = v23;
        v59[2] = v15;
        v59[3] = v21;
        v59[4] = (v20 - v19 + v21);
        v59[5] = v37;
        v59[6] = v19;
        v59[7] = v20;
        v59[8] = 0;
        v59[9] = 0;
        v60 = 1;
        v61 = v42;
        v62 = v41;
        v63 = v40;
        v26 = v43;
        sub_1AFA16A04(v59, sub_1AFA08894, v36);
        if (v26)
        {
          break;
        }

        v56 = v39;
        v57 = v51;
        v58 = v52;
        sub_1AF630994(v15, &v56, v50);
        sub_1AF62D29C(v23);
        ecs_stack_allocator_pop_snapshot(v18);
        v16 = v18;
        if (v44)
        {
          os_unfair_lock_unlock(*(v23 + 344));
          os_unfair_lock_unlock(*(v23 + 376));
        }

        if (!--v12)
        {
          sub_1AF5D1564(v46);
          sub_1AF5D1564(v46);
          return;
        }
      }

      v53 = v39;
      v54 = v51;
      v55 = v52;
      sub_1AF630994(v15, &v53, v50);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v23 + 344));
      os_unfair_lock_unlock(*(v23 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v46);
    }
  }
}

void sub_1AFA06D80(uint64_t a1, float32x2_t *a2, float32x4_t *a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a5 + 84);
  v11 = v10 & a2[2].i32[0];
  if (!v11)
  {
    return;
  }

  v205 = v9;
  v206 = v7;
  v207 = v8;
  v14 = a2;
  v15 = a2[3].f32[1];
  v16 = a6;
  v18 = *(a5 + 76);
  v17 = *(a5 + 80);
  if ((a6 & 0xFE00000000) != 0)
  {
    v16 = 0;
  }

  v153 = v16;
  v19 = a2[1].f32[0];
  v20 = *(a5 + 72);
  v21 = fminf(fmaxf(a2[1].f32[1] + v18, 0.0), 1.0);
  v22 = *(a5 + 64);
  __asm { FMOV            V6.2S, #1.0 }

  *&v180 = vminnm_f32(vmaxnm_f32(vadd_f32(*a2, v22), 0), _D6);
  DWORD2(v180) = fminf(fmaxf(v19 + v20, 0.0), 1.0);
  *(&v180 + 3) = 1.0 - v21;
  v181 = v15 + v17;
  v182 = v11;
  v27 = *(a5 + 160);
  v28 = *a2[2].f32;
  v203 = *a2->f32;
  v204 = v28;
  v29 = *a3;
  v30 = a3[1];
  v31 = a3[2];
  v32 = a3[3];
  v33 = a4[1];
  v34 = a4[2];
  v35 = a4[3];
  v196[0] = *a4;
  v196[1] = v33;
  v196[2] = v34;
  v196[3] = v35;
  v197 = 0;
  v36 = *(a5 + 96);
  v37 = *(a5 + 112);
  v38 = *(a5 + 128);
  v39 = *(a5 + 144);
  v198 = v22;
  v199 = v20;
  v200 = v18;
  v201 = v17;
  v202 = v10;
  v40 = _ZF || (a6 & 0xFE00000000) != 0;
  v152 = v40;
  sub_1AFA05018(v196, &v198, v158, v29, v30, v31, v32, v36, v37, v38, v39);
  v166[6] = v158[6];
  v166[7] = v158[7];
  v166[8] = v158[8];
  v167 = v159;
  v166[2] = v158[2];
  v166[3] = v158[3];
  v166[4] = v158[4];
  v166[5] = v158[5];
  v166[0] = v158[0];
  v166[1] = v158[1];
  v154 = v14;
  v155 = a5;
  if (sub_1AF13E41C(v166) == 1)
  {
    nullsub_106();
    v42 = *(v41 + 112);
    v174 = *(v41 + 96);
    v175 = v42;
    v176 = *(v41 + 128);
    v43 = *(v41 + 48);
    v170 = *(v41 + 32);
    v171 = v43;
    v44 = *(v41 + 80);
    v172 = *(v41 + 64);
    v173 = v44;
    v45 = *(v41 + 16);
    v168 = *v41;
    v169 = v45;
    v46 = *(a5 + 40);
    *v195 = *(a5 + 24);
    *&v195[16] = v46;
    *&v195[32] = *(a5 + 56);
    sub_1AF6B06C0(a7, v195, 0x200000000, v160);
    if (!*v160)
    {
      return;
    }

    v136 = v165;
    if (v165 <= 0 || (v134 = v162) == 0)
    {
LABEL_87:
      v124 = v160;
LABEL_89:
      sub_1AF5D1564(v124);
      return;
    }

    v47 = 0;
    v132 = v161;
    v130 = v163;
    v48 = *(v163 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v150 = *(v164 + 32);
    v177 = *v160;
    v178 = *&v160[8];
    v179 = *&v160[24];
    v128 = v48;
    v156 = v164;
LABEL_14:
    v148 = v47;
    v49 = (v132 + 48 * v47);
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v54 = *(v49 + 2);
    v53 = *(v49 + 3);
    v55 = *(v49 + 5);
    v138 = *(v49 + 4);
    if (v48)
    {
      v56 = *(v55 + 376);

      os_unfair_lock_lock(v56);
      os_unfair_lock_lock(*(v55 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v150);
    v57 = v156;
    v142 = *(v156 + 64);
    v144 = *(v156 + 48);
    v140 = *(v156 + 80);
    v58 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
    *(v156 + 48) = ecs_stack_allocator_allocate(*(v156 + 32), 48 * v58, 8);
    *(v156 + 56) = v58;
    *(v156 + 72) = 0;
    *(v156 + 80) = 0;
    *(v156 + 64) = 0;
    v183 = v130;
    v146 = v55;
    *&v184 = v55;
    *(&v184 + 1) = v156;
    *&v185 = v52;
    *(&v185 + 1) = (v51 - v50 + v52);
    v186 = v136;
    v187 = v50;
    v188 = v51;
    v189 = 0;
    v190 = 0;
    LOBYTE(v191) = 1;
    v192 = v54;
    v193 = v53;
    v194 = v138;
    sub_1AFA090A8(&v183, &v180, &v168, v155, v153 | (v152 << 32), v14, v27);
    v59 = *(v156 + 48);
    v60 = *(v156 + 64);
    if (!v60)
    {
      v82 = *(v156 + 56);
      v83 = *(v156 + 32);
      v84 = v148;
      goto LABEL_46;
    }

    v61 = 0;
    while (1)
    {
      v63 = (v59 + 48 * v61);
      v64 = *v63;
      v65 = v63[4];
      v66 = *(v57 + 72);
      if (v66)
      {
        _ZF = v64 == v66;
      }

      else
      {
        _ZF = 0;
      }

      if (!_ZF)
      {
        v68 = v177;
        if (v177[11])
        {
          v69 = v63[2];
          v70 = v177 + 41;
          v71 = v177[9];
          if (v71 < 0x10)
          {
            goto LABEL_35;
          }

          v72 = &v70[v177[8]];
          v73 = v71 >> 4;
          v74 = v177 + 41;
          while (*v72 != v64)
          {
            ++v74;
            v72 += 16;
            if (!--v73)
            {
              goto LABEL_35;
            }
          }

          v75 = v74[v177[10]];
          v76 = v75 > 5;
          v77 = (1 << v75) & 0x23;
          if (!v76 && v77 != 0)
          {
LABEL_35:
            if (!swift_conformsToProtocol2() || !v69)
            {
              goto LABEL_20;
            }

            if ((sub_1AF5FC8D8(v69) & 1) == 0)
            {
              v79 = v68[9];
              if (v79 >= 0x10)
              {
                v80 = &v70[v68[8]];
                v81 = 16 * (v79 >> 4);
                while (*v80 != v69)
                {
                  v80 += 16;
                  v81 -= 16;
                  if (!v81)
                  {
                    goto LABEL_19;
                  }
                }

                goto LABEL_20;
              }
            }
          }
        }
      }

LABEL_19:

      v65(v62);

LABEL_20:
      ++v61;
      v57 = v156;
      if (v61 == v60)
      {
        v82 = *(v156 + 56);
        v59 = *(v156 + 48);
        v83 = *(v156 + 32);
        v84 = v148;
        if (*(v156 + 64) >= 1)
        {
          swift_arrayDestroy();
        }

LABEL_46:
        v48 = v128;
        ecs_stack_allocator_deallocate(v83, v59, 48 * v82);
        *(v57 + 48) = v144;
        *(v57 + 64) = v142;
        *(v57 + 80) = v140;
        sub_1AF62D29C(v146);
        ecs_stack_allocator_pop_snapshot(v150);
        if (v128)
        {
          os_unfair_lock_unlock(*(v146 + 344));
          os_unfair_lock_unlock(*(v146 + 376));
        }

        v47 = v84 + 1;
        v14 = v154;
        if (v47 == v134)
        {
          goto LABEL_87;
        }

        goto LABEL_14;
      }
    }
  }

  nullsub_106();
  v135 = v85[1];
  v137 = *v85;
  v133 = v85[2];
  v86 = *(a5 + 40);
  *v160 = *(a5 + 24);
  *&v160[16] = v86;
  *&v160[32] = *(a5 + 56);
  sub_1AF6B06C0(a7, v160, 0x200000000, &v183);
  if (v183)
  {
    v131 = v191;
    if (v191 > 0)
    {
      v129 = v188;
      if (v188)
      {
        v87 = 0;
        v127 = v186;
        v126 = v189;
        v88 = *(v189 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v151 = *(v190 + 32);
        *v195 = v183;
        *&v195[8] = v184;
        *&v195[24] = v185;
        v125 = v88;
        v157 = v190;
        do
        {
          v149 = v87;
          v89 = (v127 + 48 * v87);
          v90 = *v89;
          v91 = v89[1];
          v92 = v89[2];
          v94 = *(v89 + 2);
          v93 = *(v89 + 3);
          v95 = *(v89 + 5);
          v139 = *(v89 + 4);
          if (v88)
          {
            v96 = *(v95 + 376);

            os_unfair_lock_lock(v96);
            os_unfair_lock_lock(*(v95 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v151);
          v97 = v157;
          v143 = *(v157 + 64);
          v145 = *(v157 + 48);
          v141 = *(v157 + 80);
          v98 = *(*(*(*(v95 + 40) + 16) + 32) + 16) + 1;
          *(v157 + 48) = ecs_stack_allocator_allocate(*(v157 + 32), 48 * v98, 8);
          *(v157 + 56) = v98;
          *(v157 + 72) = 0;
          *(v157 + 80) = 0;
          *(v157 + 64) = 0;
          v168.i64[0] = v126;
          v147 = v95;
          v168.i64[1] = v95;
          *&v169 = v157;
          *(&v169 + 1) = v92;
          *&v170 = (v91 - v90 + v92);
          *(&v170 + 1) = v131;
          *&v171 = v90;
          *(&v171 + 1) = v91;
          v172 = 0uLL;
          LOBYTE(v173) = 1;
          *(&v173 + 1) = v94;
          *&v174 = v93;
          LOBYTE(v177) = v152;
          *(&v174 + 1) = v139;
          sub_1AFA088D8(&v168, &v180, v155, v153 | (v152 << 32), v14, v137, v135, v133, v27);
          v99 = *(v157 + 48);
          v100 = *(v157 + 64);
          if (!v100)
          {
            v121 = *(v157 + 56);
            v122 = *(v157 + 32);
            v123 = v149;
            goto LABEL_85;
          }

          for (i = 0; i != v100; ++i)
          {
            v103 = (v99 + 48 * i);
            v104 = *v103;
            v105 = v103[4];
            v106 = *(v97 + 72);
            if (v106)
            {
              v107 = v104 == v106;
            }

            else
            {
              v107 = 0;
            }

            if (v107)
            {
              goto LABEL_58;
            }

            v108 = *v195;
            if (!*(*v195 + 22))
            {
              goto LABEL_58;
            }

            v109 = v103[2];
            v110 = *v195 + 41;
            v111 = *(*v195 + 18);
            if (v111 >= 0x10)
            {
              v112 = (v110 + *(*v195 + 16));
              v113 = v111 >> 4;
              v114 = *v195 + 41;
              while (*v112 != v104)
              {
                ++v114;
                v112 += 2;
                if (!--v113)
                {
                  goto LABEL_74;
                }
              }

              v115 = *(v114 + *(*v195 + 20));
              v76 = v115 > 5;
              v116 = (1 << v115) & 0x23;
              if (v76 || v116 == 0)
              {
LABEL_58:

                v105(v102);

                goto LABEL_59;
              }
            }

LABEL_74:
            if (swift_conformsToProtocol2() && v109)
            {
              if (sub_1AF5FC8D8(v109))
              {
                goto LABEL_58;
              }

              v118 = *(v108 + 18);
              if (v118 < 0x10)
              {
                goto LABEL_58;
              }

              v119 = (v110 + *(v108 + 16));
              v120 = 16 * (v118 >> 4);
              while (*v119 != v109)
              {
                v119 += 2;
                v120 -= 16;
                if (!v120)
                {
                  goto LABEL_58;
                }
              }
            }

LABEL_59:
            v97 = v157;
          }

          v121 = *(v157 + 56);
          v99 = *(v157 + 48);
          v122 = *(v157 + 32);
          v123 = v149;
          if (*(v157 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

LABEL_85:
          v88 = v125;
          ecs_stack_allocator_deallocate(v122, v99, 48 * v121);
          *(v97 + 48) = v145;
          *(v97 + 64) = v143;
          *(v97 + 80) = v141;
          sub_1AF62D29C(v147);
          ecs_stack_allocator_pop_snapshot(v151);
          if (v125)
          {
            os_unfair_lock_unlock(*(v147 + 344));
            os_unfair_lock_unlock(*(v147 + 376));
          }

          v87 = v123 + 1;
          v14 = v154;
        }

        while (v87 != v129);
      }
    }

    v124 = &v183;
    goto LABEL_89;
  }
}

uint64_t sub_1AFA076FC(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = sub_1AFA09D74(a1, v11);
  if (v11[28])
  {
    v6 = v11[11];
    MEMORY[0x1EEE9AC00](v5, v11[7]);
    v10[2] = v11;
    sub_1AF63291C(0, v7, 1, a2 | ((HIDWORD(a2) & 1) << 32), v8, a3, v10, v6);
    ecs_stack_allocator_deallocate(*(v6 + 32), v11[26], 80 * v11[27]);
  }

  sub_1AFA1C110(v11);
  return sub_1AFA09D20(v11);
}

void sub_1AFA077D4(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v166 = a6;
  v167 = a7;
  v164 = a4;
  v165 = a5;
  if (qword_1EB637228 != -1)
  {
    v145 = a3;
    swift_once();
    a3 = v145;
  }

  v227[0] = xmmword_1EB6C34B0;
  v227[1] = unk_1EB6C34C0;
  v228 = qword_1EB6C34D0;
  v215 = *(a3 + 72);
  v216 = *(a3 + 88);
  v217 = *(a3 + 104);
  v218 = *(a3 + 120);
  v212[0] = *(a3 + 8);
  v212[1] = *(a3 + 24);
  v213 = *(a3 + 40);
  v174 = a3;
  v214 = *(a3 + 56);
  if (BYTE12(v213))
  {
    v9 = 0x200000000;
  }

  else
  {
    v9 = DWORD2(v213);
  }

  sub_1AF6B06C0(a2, v227, v9, v196);
  if (*&v196[0])
  {
    if (v199 > 0)
    {
      v149 = *(&v197 + 1);
      if (*(&v197 + 1))
      {
        v148 = *(&v196[2] + 1);
        v153 = *(&v198 + 1);
        v152 = *(*(&v198 + 1) + 32);
        v10 = *(v198 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v209 = *&v196[0];
        v210 = *(v196 + 8);
        v211 = *(&v196[1] + 8);
        v195[2] = v196[2];
        v195[3] = v197;
        v195[4] = v198;
        v195[5] = v199;
        v195[0] = v196[0];
        v195[1] = v196[1];
        sub_1AF5DD298(v195, &v177);
        v11 = 0;
        v12 = 0;
        v154 = 0x80000001AFF43B60;
        v155 = 0x80000001AFF43B80;
        v163 = xmmword_1AFE431C0;
        v162 = xmmword_1AFE916B0;
        v13 = v174;
        v147 = v10;
        v173 = a1;
        do
        {
          v151 = v11;
          v14 = (v148 + 48 * v11);
          v15 = *v14;
          v172.i64[0] = v14[1];
          v17 = *(v14 + 2);
          v16 = *(v14 + 3);
          v19 = *(v14 + 4);
          v18 = *(v14 + 5);
          v175 = v12;
          if (v10)
          {
            v20 = *(v18 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v152);

          v22 = v153;
          sub_1AF630914(v21, v153, v200);

          v23 = v18;
          v24 = sub_1AF64B110(&type metadata for ParticleBoxCollider, &off_1F2552898, v17, v16, v19, v22);
          v25 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v17, v16, v19, v22);
          v150 = v23;
          v26 = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v17, v16, v19, v22);
          if (v17)
          {
            v27 = v173;
            if (v19)
            {
              v28 = v24 + 8;
              v29 = (v26 + 32);
              v30 = (v25 + 32);
              do
              {
                if ((*(v27 + 20) & *(v28 + 8)) != 0)
                {
                  v40 = fminf(fmaxf(*(v28 - 4) + *(v27 + 4), 0.0), 1.0);
                  v41 = fminf(fmaxf(*v28 + *(v27 + 8), 0.0), 1.0);
                  v42 = 1.0 - fminf(fmaxf(*(v28 + 4) + *(v27 + 12), 0.0), 1.0);
                  v43 = *(v28 + 8);
                  v221 = *(v28 - 8);
                  v222 = v43;
                  v44 = BYTE8(v43);
                  v45 = v30[-2];
                  v46 = v30[-1];
                  v47 = *v30;
                  v48 = v30[1];
                  v49 = *(v29 - 2);
                  v50 = *(v29 - 1);
                  v51 = *v29;
                  v52 = v29[1];
                  v194 = 0;
                  v219[0] = v49;
                  v219[1] = v50;
                  v219[2] = v51;
                  v219[3] = v52;
                  v220 = 0;
                  v171 = v46;
                  v172 = v45;
                  v169 = v48;
                  v170 = v47;
                  sub_1AFA05018(v219, v27, v201, v45, v46, v47, v48, v164, v165, v166, v167);
                  v53 = *(v27 + 16);
                  v205[6] = v201[6];
                  v205[7] = v201[7];
                  v205[8] = v201[8];
                  v206 = v202;
                  v205[2] = v201[2];
                  v205[3] = v201[3];
                  v205[4] = v201[4];
                  v205[5] = v201[5];
                  v205[0] = v201[0];
                  v205[1] = v201[1];
                  if (sub_1AF13E41C(v205) == 1)
                  {
                    nullsub_106();
                    v55 = *v54;
                    v159 = v54[1];
                    v160 = v55;
                    v56 = v54[2];
                    v157 = v54[3];
                    v158 = v56;
                    v57 = v54[8];
                    v161 = v54[7];
                    v156 = v57;
                    v58 = DWORD1(v222);
                    sub_1AFB943A8();
                    v177 = v59;
                    v178 = v41;
                    v179 = v42;
                    v180 = v156;
                    v181 = v160;
                    v182 = v159;
                    v183 = v158;
                    v184 = v157;
                    v185 = v172;
                    v186 = v171;
                    v187 = v170;
                    v188 = v169;
                    v189 = v161;
                    v190 = v58;
                    v191 = v44;
                    v192 = v40;
                    v193 = v53 * 0.5;
                    if (*v13)
                    {
                      ObjectType = swift_getObjectType();
                      type metadata accessor for particle_obb_collider_uniforms(0);
                      sub_1AF6F4524(&v177, 1, ObjectType, v61, v62, v63, v64, v65);
                    }

                    sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                    v31 = swift_allocObject();
                    v176 = 0;
                    v32 = v162;
                    *(v31 + 16) = v163;
                    *(v31 + 32) = v32;
                    *(v31 + 48) = 0;
                    *(v31 + 64) = v44;
                    *(v31 + 128) = 13;
                    v33 = v13[18];
                    v170.i32[0] = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                    v34 = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                    v172.i64[0] = v34;

                    v35 = v213;

                    v171.i64[0] = v146;
                    MEMORY[0x1EEE9AC00](v36, v37);
                    v38 = v168;
                    *&v146[-80] = v174;
                    *&v146[-72] = v38;
                    *&v146[-64] = 0xD000000000000015;
                    *&v146[-56] = v154;
                    *&v146[-48] = v31;
                    *&v146[-40] = v33;
                    *&v146[-32] = 0;
                    v146[-24] = v170.i8[0];
                    *&v146[-16] = v34;
                    *&v146[-8] = v212;
                  }

                  else
                  {
                    nullsub_106();
                    v67 = v66[1];
                    v171 = *v66;
                    v172 = v67;
                    v170 = v66[2];
                    sub_1AFB943A8();
                    v177 = v68;
                    v178 = v41;
                    v179 = v42;
                    v180 = v171;
                    v181 = v170;
                    v182 = v172;
                    v183.i8[0] = v44;
                    v183.f32[1] = v40;
                    if (*v13)
                    {
                      v69 = swift_getObjectType();
                      type metadata accessor for particle_aabb_collider_uniforms(0);
                      sub_1AF6F4524(&v177, 1, v69, v70, v71, v72, v73, v74);
                    }

                    sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                    v75 = swift_allocObject();
                    v176 = 0;
                    v76 = v162;
                    *(v75 + 16) = v163;
                    *(v75 + 32) = v76;
                    *(v75 + 48) = 0;
                    *(v75 + 64) = v44;
                    *(v75 + 128) = 13;
                    v77 = v13[18];
                    v170.i32[0] = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                    v78 = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                    v172.i64[0] = v78;

                    v35 = v213;

                    v171.i64[0] = v146;
                    MEMORY[0x1EEE9AC00](v79, v80);
                    v81 = v168;
                    *&v146[-80] = v174;
                    *&v146[-72] = v81;
                    v82 = v155;
                    *&v146[-64] = 0xD000000000000016;
                    *&v146[-56] = v82;
                    *&v146[-48] = v75;
                    *&v146[-40] = v77;
                    *&v146[-32] = 0;
                    v146[-24] = v170.i8[0];
                    *&v146[-16] = v78;
                    *&v146[-8] = v212;
                  }

                  v39 = v175;
                  sub_1AFCBF008(v35, sub_1AFA09F2C);
                  v175 = v39;
                  v13 = v174;

                  v27 = v173;
                }

                v28 += 32;
                v29 += 4;
                v30 += 4;
                --v19;
              }

              while (v19);
            }
          }

          else
          {
            v83 = v173;
            if (v15 != v172.i32[0])
            {
              v86 = v172.i64[0] - v15;
              v87 = v24 + 32 * v15 + 8;
              v88 = v15 << 6;
              v89 = (v26 + (v15 << 6) + 32);
              v90 = (v25 + v88 + 32);
              do
              {
                if ((*(v83 + 20) & *(v87 + 8)) != 0)
                {
                  v100 = fminf(fmaxf(*(v87 - 4) + *(v83 + 4), 0.0), 1.0);
                  v101 = fminf(fmaxf(*v87 + *(v83 + 8), 0.0), 1.0);
                  v102 = 1.0 - fminf(fmaxf(*(v87 + 4) + *(v83 + 12), 0.0), 1.0);
                  v103 = *(v87 + 8);
                  v225 = *(v87 - 8);
                  v226 = v103;
                  v104 = BYTE8(v103);
                  v105 = v90[-2];
                  v106 = v90[-1];
                  v107 = *v90;
                  v108 = v90[1];
                  v109 = *(v89 - 2);
                  v110 = *(v89 - 1);
                  v111 = *v89;
                  v112 = v89[1];
                  v194 = 0;
                  v223[0] = v109;
                  v223[1] = v110;
                  v223[2] = v111;
                  v223[3] = v112;
                  v224 = 0;
                  v171 = v106;
                  v172 = v105;
                  v169 = v108;
                  v170 = v107;
                  sub_1AFA05018(v223, v83, v203, v105, v106, v107, v108, v164, v165, v166, v167);
                  v113 = *(v83 + 16);
                  v207[6] = v203[6];
                  v207[7] = v203[7];
                  v207[8] = v203[8];
                  v208 = v204;
                  v207[2] = v203[2];
                  v207[3] = v203[3];
                  v207[4] = v203[4];
                  v207[5] = v203[5];
                  v207[0] = v203[0];
                  v207[1] = v203[1];
                  if (sub_1AF13E41C(v207) == 1)
                  {
                    nullsub_106();
                    v115 = *v114;
                    v159 = v114[1];
                    v160 = v115;
                    v116 = v114[2];
                    v157 = v114[3];
                    v158 = v116;
                    v117 = v114[8];
                    v161 = v114[7];
                    v156 = v117;
                    v118 = DWORD1(v226);
                    sub_1AFB943A8();
                    v177 = v119;
                    v178 = v101;
                    v179 = v102;
                    v180 = v156;
                    v181 = v160;
                    v182 = v159;
                    v183 = v158;
                    v184 = v157;
                    v185 = v172;
                    v186 = v171;
                    v187 = v170;
                    v188 = v169;
                    v189 = v161;
                    v190 = v118;
                    v191 = v104;
                    v192 = v100;
                    v193 = v113 * 0.5;
                    if (*v13)
                    {
                      v120 = swift_getObjectType();
                      type metadata accessor for particle_obb_collider_uniforms(0);
                      sub_1AF6F4524(&v177, 1, v120, v121, v122, v123, v124, v125);
                    }

                    sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                    v91 = swift_allocObject();
                    v176 = 0;
                    v92 = v162;
                    *(v91 + 16) = v163;
                    *(v91 + 32) = v92;
                    *(v91 + 48) = 0;
                    *(v91 + 64) = v104;
                    *(v91 + 128) = 13;
                    v93 = v13[18];
                    v170.i32[0] = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                    v94 = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                    v172.i64[0] = v94;

                    v95 = v213;

                    v171.i64[0] = v146;
                    MEMORY[0x1EEE9AC00](v96, v97);
                    v98 = v168;
                    *&v146[-80] = v174;
                    *&v146[-72] = v98;
                    *&v146[-64] = 0xD000000000000015;
                    *&v146[-56] = v154;
                    *&v146[-48] = v91;
                    *&v146[-40] = v93;
                    *&v146[-32] = 0;
                    v146[-24] = v170.i8[0];
                    *&v146[-16] = v94;
                    *&v146[-8] = v212;
                    v99 = v175;
                    sub_1AFCBF008(v95, sub_1AFA09E00);
                    v175 = v99;
                    v13 = v174;
                  }

                  else
                  {
                    nullsub_106();
                    v127 = v126[1];
                    v171 = *v126;
                    v172 = v127;
                    v170 = v126[2];
                    sub_1AFB943A8();
                    v177 = v128;
                    v178 = v101;
                    v179 = v102;
                    v180 = v171;
                    v181 = v170;
                    v182 = v172;
                    v183.i8[0] = v104;
                    v183.f32[1] = v100;
                    if (*v13)
                    {
                      v129 = swift_getObjectType();
                      type metadata accessor for particle_aabb_collider_uniforms(0);
                      sub_1AF6F4524(&v177, 1, v129, v130, v131, v132, v133, v134);
                    }

                    sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                    v135 = swift_allocObject();
                    v176 = 0;
                    v136 = v162;
                    *(v135 + 16) = v163;
                    *(v135 + 32) = v136;
                    *(v135 + 48) = 0;
                    *(v135 + 64) = v104;
                    *(v135 + 128) = 13;
                    v137 = v13[18];
                    v170.i32[0] = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                    v138 = *(*&v212[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                    v172.i64[0] = v138;

                    v139 = v213;

                    v171.i64[0] = v146;
                    MEMORY[0x1EEE9AC00](v140, v141);
                    v142 = v168;
                    *&v146[-80] = v174;
                    *&v146[-72] = v142;
                    v143 = v155;
                    *&v146[-64] = 0xD000000000000016;
                    *&v146[-56] = v143;
                    *&v146[-48] = v135;
                    *&v146[-40] = v137;
                    *&v146[-32] = 0;
                    v146[-24] = v170.i8[0];
                    *&v146[-16] = v138;
                    *&v146[-8] = v212;
                    v144 = v175;
                    sub_1AFCBF008(v139, sub_1AFA09F2C);
                    v175 = v144;
                    v13 = v174;
                  }

                  v83 = v173;
                }

                v87 += 32;
                v89 += 4;
                v90 += 4;
                --v86;
              }

              while (v86);
            }
          }

          v84 = v175;
          sub_1AF630994(v153, &v209, v200);
          v12 = v84;
          v85 = v150;
          sub_1AF62D29C(v150);
          ecs_stack_allocator_pop_snapshot(v152);
          v10 = v147;
          if (v147)
          {
            os_unfair_lock_unlock(*(v85 + 43));
            os_unfair_lock_unlock(*(v85 + 47));
          }

          v11 = v151 + 1;
          v13 = v174;
        }

        while (v151 + 1 != v149);
        sub_1AF5D1564(v196);
      }
    }

    sub_1AF5D1564(v196);
  }
}

uint64_t sub_1AFA0852C@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  v17 = xmmword_1AFE916A0;
  *&v18 = 255;
  HIDWORD(v18) = 0;
  sub_1AFA05FE4(a1, 0);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v19 = 10;
  BYTE8(v18) = sub_1AFDFE718() & 1;
  v12 = a1[3];
  v13 = a1[4];
  sub_1AF441150(a1, v12);
  if (sub_1AF694FF8(1042, v12, v13))
  {
    v19 = 11;
    sub_1AFDFE738();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    DWORD1(v18) = v15;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v16 = v18;
  *a2 = v17;
  a2[1] = v16;
  return result;
}

unint64_t sub_1AFA08734()
{
  result = qword_1EB641F48;
  if (!qword_1EB641F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F48);
  }

  return result;
}

unint64_t sub_1AFA08788()
{
  result = qword_1EB641F50;
  if (!qword_1EB641F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F50);
  }

  return result;
}

void sub_1AFA087DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA08734();
    v7 = a3(a1, &type metadata for ParticleCollidableCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA08840()
{
  result = qword_1EB641F60;
  if (!qword_1EB641F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F60);
  }

  return result;
}

uint64_t sub_1AFA088D8(__int128 *a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6, float32x4_t a7, float32x4_t a8, float a9)
{
  v172 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 11);
  v13 = *(a1 + 12);
  v14 = *(a1 + 13);
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v110 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v12, v13, v14, v16);
  v17 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v12, v13, v14, v16);
  v115 = sub_1AF9C5D1C();
  v129 = v18;
  v114 = sub_1AF9C5E38();
  v128 = v19;
  v148 = *a2;
  v20 = a1[5];
  v165 = a1[6];
  v21 = a1[4];
  v164 = v20;
  v163 = v21;
  v22 = a1[2];
  v162 = a1[3];
  v23 = a1[1];
  v159 = *a1;
  v160 = v23;
  v150 = &type metadata for CollisionProperties;
  v151 = &off_1F2553AE0;
  v149 = *(a2 + 2);
  v24 = *(a3 + 16);
  v152 = a8;
  v161 = v22;
  v25 = *(a1 + 6);
  v26 = *(a1 + 7);
  v27 = v16[4];

  v112 = ecs_stack_allocator_allocate(v27, 8 * (v26 - v25), 8);
  v166 = v112;
  v167 = v26 - v25;
  v168 = 0;
  sub_1AF441194(&v148, v153);
  v157 = a9;
  v156 = v24;
  sub_1AF649C6C(*(v15 + 40), &type metadata for Anchored, v147);
  v121 = v147[0];
  v158 = v147[0];
  v28 = ecs_stack_allocator_allocate(v16[4], 80 * (v26 - v25), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v148);
  v32 = a6.n128_u64[0];
  v31 = a7;
  v33 = a9;
  v169 = v28;
  v170 = v26 - v25;
  v171 = 0;
  if (v26 != v25)
  {
    v116 = 0;
    v117 = 0;
    __asm
    {
      FMOV            V16.4S, #-1.0
      FMOV            V17.4S, #1.0
    }

    v41 = xmmword_1AFE20A30;
    v120 = _Q16;
    v140 = _Q17;
    do
    {
      v45 = *(v17 + 16 * v25);
      v46 = vmuls_lane_f32(v33, v45, 2);
      v47 = *(v110 + 16 * v25);
      *v30.f32 = vmul_n_f32(*v45.f32, v33);
      v48 = v30;
      v48.f32[2] = v46;
      v49 = vsub_f32(*v47.f32, *v30.f32);
      v50 = COERCE_FLOAT(*(v110 + 16 * v25 + 8)) - v46;
      *v47.f32 = vsub_f32(v49, v32);
      v47.f32[2] = v50 - a6.n128_f32[2];
      v51 = vcgezq_f32(v48);
      v51.i32[3] = 0;
      v52 = vabsq_f32(v48);
      v52.i32[3] = 0;
      v53 = vdivq_f32(_Q17, vmaxnmq_f32(v52, v41));
      v54 = vmulq_f32(v31, v53);
      v55 = vnegq_f32(vbslq_s8(vcltzq_s32(v51), _Q17, _Q16));
      v56 = vmulq_f32(v47, vmulq_f32(v53, v55));
      v57 = vsubq_f32(v56, v54);
      v58 = vaddq_f32(v54, v56);
      v59 = fmaxf(fmaxf(v57.f32[0], v57.f32[2]), v57.f32[1]);
      v60 = fminf(fminf(v58.f32[0], v58.f32[2]), v58.f32[1]);
      if (v59 <= v60 && v60 >= 0.0)
      {
        if (*(a5 + 24))
        {
          v59 = v60;
          v61 = -1;
        }

        else
        {
          v61 = 0;
        }

        if (v59 >= 0.0 && v59 <= 1.0)
        {
          if (v129)
          {
            v123 = 0;
            v124 = 0;
          }

          else
          {
            v63 = (v115 + 16 * v25);
            v123 = v63[1];
            v124 = *v63;
          }

          v142 = v55;
          v144 = v59;
          v136 = v46;
          v138 = v29;
          v131 = v57;
          v134 = *v30.f32;
          v130 = v58;
          if (v128)
          {
            v122 = 0;
          }

          else
          {
            v122 = *(v114 + 4 * v25);
          }

          v64 = v154;
          v65 = v155;
          sub_1AF441150(v153, v154);
          v66 = (*(v65 + 56))(v64, v65);
          if (v66 > 0.0)
          {
            if (v66 >= 1.0 || (v67 = v66, v68 = drand48(), v67 > v68))
            {
              v112[v116++] = v25;
              v168 = v116;
            }
          }

          v69 = vbslq_s8(vdupq_n_s32(v61), vnegq_f32(v130), v131);
          v70 = vmulq_f32(vbslq_s8(vcgtq_f32(vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL), v69), 0, v140), vmulq_f32(vbslq_s8(vcgtq_f32(vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL), v69), 0, v140), v142));
          v72 = vcgezq_f32(v69);
          v71 = vorrq_s8(vcltzq_f32(v69), v72);
          v71.i32[3] = 0;
          v143 = vmulq_f32(v70, vandq_s8(vcltzq_s32(v71), v140));
          *v72.i8 = vadd_f32(v49, vmul_n_f32(v134, v144));
          v73 = v50 + (v136 * v144);
          v135 = v72;
          v137 = v73;
          if (v121)
          {
            *v74.f32 = vsub_f32(*v72.i8, *(v110 + 16 * v25));
            v74.f32[2] = v73 - COERCE_FLOAT(*(v110 + 16 * v25 + 8));
            v74.i32[3] = 0;
            v145 = v74;
            v75 = v74;
            v132 = *(v17 + 16 * v25);
            v75.i32[3] = HIDWORD(v132);
            *(v17 + 16 * v25) = v75;
            v76 = v154;
            v77 = v155;
            sub_1AF441150(v153, v154);
            v78 = (*(v77 + 8))(v76, v77);
            v79 = v154;
            v80 = v155;
            sub_1AF441150(v153, v154);
            (*(v80 + 32))(v79, v80);
            v82 = v145;
            v82.i32[3] = v138.i32[3];
            v83 = vaddq_f32(v82, a8);
            v84 = vmulq_f32(v143, v83);
            v85 = v84.f32[2] + vaddv_f32(*v84.f32);
            v146 = v82;
            v86 = v82;
            if (v85 < 0.0)
            {
              v87 = vmulq_n_f32(v143, v85);
              v86 = vmlaq_n_f32(vmulq_n_f32(v87, -v78), vsubq_f32(v83, v87), v81);
            }

            v86.i32[3] = HIDWORD(v132);
            v133 = v86;
            *(v17 + 16 * v25) = v86;
          }

          else
          {
            v88 = v154;
            v89 = v155;
            sub_1AF441150(v153, v154);
            v90 = (*(v89 + 8))(v88, v89);
            v91 = v154;
            v92 = v155;
            sub_1AF441150(v153, v154);
            (*(v92 + 32))(v91, v92);
            v94 = *(v110 + 16 * v25);
            v95 = v94;
            v95.i32[3] = v118;
            v96 = *(v17 + 16 * v25);
            v97 = v96;
            v97.i32[3] = v119;
            v98 = vaddq_f32(v97, a8);
            v99 = vmulq_f32(v143, v98);
            v100 = v99.f32[2] + vaddv_f32(*v99.f32);
            v101 = v95;
            v102 = v97;
            if (v100 < 0.0)
            {
              v103 = v135;
              v103.f32[2] = v137;
              v104 = vmulq_n_f32(v143, v100);
              v102 = vmlaq_n_f32(vmulq_n_f32(v104, -v90), vsubq_f32(v98, v104), v93);
              v101 = vmlaq_n_f32(vmlaq_f32(v103, vdupq_n_s32(0x38D1B717u), v143), v102, (1.0 - v144) * a9);
            }

            v102.i32[3] = v96.i32[3];
            v133 = v102;
            *(v17 + 16 * v25) = v102;
            v101.i32[3] = v94.i32[3];
            *(v110 + 16 * v25) = v101;
            v146 = v138;
          }

          v105 = v154;
          v106 = v155;
          sub_1AF441150(v153, v154);
          v107 = (*(v106 + 80))(v105, v106);
          if (v107 > 0.0)
          {
            if (v107 >= 1.0 || (v108 = v107, v109 = drand48(), v108 > v109))
            {
              *v42.f32 = vadd_f32(*v135.f32, vmul_f32(*v143.f32, vdup_n_s32(0x3C23D70Au)));
              v42.f32[2] = v137 + vmuls_lane_f32(0.01, v143, 2);
              v42.i32[3] = 0;
              v43 = v133;
              v43.i32[3] = v113;
              LOBYTE(v148) = v129 & 1;
              v147[0] = v128 & 1;
              v44 = &v28[10 * v117];
              *v44 = v42;
              v44[1] = v143;
              v44[2] = v43;
              v44[3].i64[0] = v124;
              v44[3].i64[1] = v123;
              v44[4].i8[0] = v129 & 1;
              v44[4].i32[1] = v122;
              v44[4].i8[8] = v128 & 1;
              v171 = ++v117;
            }
          }

          v33 = a9;
          _Q17 = v140;
          v32 = a6.n128_u64[0];
          v31 = a7;
          v41 = xmmword_1AFE20A30;
          _Q16 = v120;
          v29 = v146;
        }
      }

      ++v25;
    }

    while (v26 != v25);
  }

  sub_1AFA076FC(&v152, a4 | ((HIDWORD(a4) & 1) << 32), sub_1AFA09DD0);
  return sub_1AFA09D20(&v152);
}

uint64_t sub_1AFA090A8(__int128 *a1, __int128 *a2, float32x4_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, float a7)
{
  v259 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 11);
  v14 = *(a1 + 12);
  v15 = *(a1 + 13);
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  v214 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v13, v14, v15, v17);
  v189 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v13, v14, v15, v17);
  v193 = sub_1AF9C5D1C();
  v211 = v18;
  v213 = sub_1AF9C5D08();
  v212 = v19;
  v192 = sub_1AF9C5E38();
  v210 = v20;
  v235 = *a2;
  v21 = a1[3];
  v248 = a1[2];
  v22 = *a1;
  v247 = a1[1];
  v246 = v22;
  v23 = a1[5];
  v252 = a1[6];
  v24 = a1[4];
  v251 = v23;
  v238 = &off_1F2553AE0;
  v25 = *(a2 + 2);
  v237 = &type metadata for CollisionProperties;
  v236 = v25;
  v250 = v24;
  v26 = *(a4 + 16);
  v209 = a3[8];
  v239 = v209;
  v249 = v21;
  v27 = *(a1 + 6);
  v28 = *(a1 + 7);
  v29 = v17[4];

  v187 = ecs_stack_allocator_allocate(v29, 8 * (v28 - v27), 8);
  v253 = v187;
  v254 = v28 - v27;
  v255 = 0;
  sub_1AF441194(&v235, v240);
  v244 = a7;
  v243 = v26;
  sub_1AF649C6C(*(v16 + 40), &type metadata for Anchored, v234);
  v208 = v234[0];
  v245 = v234[0];
  v30 = ecs_stack_allocator_allocate(v17[4], 80 * (v28 - v27), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v235);
  v36 = v28;
  v37 = v212;
  v38 = a7;
  v39 = a4;
  v256 = v30;
  v257 = v28 - v27;
  v258 = 0;
  v40 = v213;
  v41 = v214;
  if (v28 != v27)
  {
    v194 = 0;
    v195 = 0;
    v43 = *(a4 + 80) * 0.5;
    v44 = *a3;
    v45 = a3[1];
    v46 = a3[2];
    v47 = a3[3];
    __asm
    {
      FMOV            V30.4S, #1.0
      FMOV            V31.4S, #-1.0
    }

    v53 = xmmword_1AFE20A30;
    v54.i64[0] = 0x8000000080000000;
    v54.i64[1] = 0x8000000080000000;
    v55 = 0uLL;
    v56 = 1.0;
    v202 = v45;
    v203 = *a3;
    v200 = v47;
    v201 = v46;
    v198 = _Q31;
    v199 = _Q30;
    v204 = v43;
    while (1)
    {
      v57 = *(v189 + 16 * v27);
      *&v34 = vmuls_lane_f32(v38, v57, 2);
      v58 = vmuls_lane_f32(v38, v57, 3);
      v59 = vmul_n_f32(*v57.f32, v38);
      *&v8 = vsub_f32(*(v41 + 16 * v27), v59);
      *&v7 = COERCE_FLOAT(*(v41 + 16 * v27 + 8)) - *&v34;
      v60 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(v44, *&v8), v45, *&v8, 1), v46, *&v7), v47, COERCE_FLOAT(HIDWORD(*(v41 + 16 * v27))) - v58);
      v61 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(v44, v59.f32[0]), v45, v59, 1), v46, *&v34), v47, v58);
      v62 = *(a6 + 20);
      v63 = vabsq_f32(v61);
      if (v62 > 0.0 || (*(v39 + 80) & 0x7FFFFFFF) != 0)
      {
        break;
      }

      v100 = vcgezq_f32(v61);
      v100.i32[3] = 0;
      v63.i32[3] = 0;
      v101 = vdivq_f32(_Q30, vmaxnmq_f32(v63, v53));
      v102 = vmulq_f32(a3[7], v101);
      v103 = vnegq_f32(vbslq_s8(vcltzq_s32(v100), _Q30, _Q31));
      v104 = vmulq_f32(v60, vmulq_f32(v101, v103));
      v105 = vsubq_f32(v104, v102);
      v106 = vaddq_f32(v102, v104);
      v107 = fmaxf(fmaxf(*v105.i32, *&v105.i32[2]), *&v105.i32[1]);
      v108 = fminf(fminf(v106.f32[0], v106.f32[2]), v106.f32[1]);
      if (v107 <= v108 && v108 >= 0.0)
      {
        if (*(a6 + 24))
        {
          v73 = v108;
        }

        else
        {
          v73 = v107;
        }

        v109 = vnegq_f32(v106);
        if (*(a6 + 24))
        {
          v110 = -1;
        }

        else
        {
          v110 = 0;
        }

        v111 = vbslq_s8(vdupq_n_s32(v110), v109, v105);
        v112 = vmulq_f32(vbslq_s8(vcgtq_f32(vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL), v111), v55, _Q30), vmulq_f32(vbslq_s8(vcgtq_f32(vextq_s8(vextq_s8(v111, v111, 0xCuLL), v111, 8uLL), v111), v55, _Q30), v103));
        v113 = vorrq_s8(vcltzq_f32(v111), vcgezq_f32(v111));
        v113.i32[3] = 0;
        v114 = vandq_s8(vcltzq_s32(v113), _Q30);
LABEL_62:
        v136 = vmulq_f32(v112, v114);
        if (v73 >= 0.0 && v73 <= v56)
        {
          if (v211)
          {
            v206 = 0;
            v207 = 0;
          }

          else
          {
            v138 = (v193 + 16 * v27);
            v206 = v138[1];
            v207 = *v138;
          }

          v231 = v73;
          v227 = v35;
          v223 = v59;
          v225 = v33;
          v228 = *&v34;
          v219 = v136;
          if (v210)
          {
            v205 = 0;
          }

          else
          {
            v205 = *(v192 + 4 * v27);
          }

          v216 = a3[4];
          v217 = a3[5];
          v218 = a3[6];
          v139 = v241;
          v140 = v242;
          sub_1AF441150(v240, v241);
          v141 = (*(v140 + 56))(v139, v140);
          if (v141 > 0.0)
          {
            if (v141 >= v56 || (v142 = v141, v143 = drand48(), v142 > v143))
            {
              v187[v194++] = v27;
              v255 = v194;
            }
          }

          v144.i64[1] = *(&v8 + 1);
          *v144.f32 = vadd_f32(*&v8, vmul_n_f32(v223, v231));
          v145 = *&v7 + (v228 * v231);
          v229 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v216, v219.f32[0]), v217, *v219.f32, 1), v218, v219, 2);
          v222 = v144;
          v224 = v145;
          if (v208)
          {
            *v146.f32 = vsub_f32(*v144.f32, *(v41 + 16 * v27));
            v146.f32[2] = v145 - COERCE_FLOAT(*(v41 + 16 * v27 + 8));
            v146.i32[3] = 0;
            v232 = v146;
            v147 = v146;
            v220 = *(v189 + 16 * v27);
            v147.i32[3] = HIDWORD(v220);
            *(v189 + 16 * v27) = v147;
            v148 = v241;
            v149 = v242;
            sub_1AF441150(v240, v241);
            v150 = (*(v149 + 8))(v148, v149);
            v151 = v241;
            v152 = v242;
            sub_1AF441150(v240, v241);
            (*(v152 + 32))(v151, v152);
            v154 = v232;
            v154.i32[3] = v225.i32[3];
            v155 = vaddq_f32(v209, v154);
            v156 = v229;
            v157 = vmulq_f32(v229, v155);
            v158 = v157.f32[2] + vaddv_f32(*v157.f32);
            v233 = v154;
            v159 = v154;
            if (v158 < 0.0)
            {
              v160 = vmulq_n_f32(v229, v158);
              v159 = vmlaq_n_f32(vmulq_n_f32(v160, -v150), vsubq_f32(v155, v160), v153);
            }

            v159.i32[3] = HIDWORD(v220);
            v221 = v159;
            *(v189 + 16 * v27) = v159;
            v41 = v214;
          }

          else
          {
            v161 = v241;
            v162 = v242;
            sub_1AF441150(v240, v241);
            v163 = (*(v162 + 8))(v161, v162);
            v164 = v241;
            v165 = v242;
            v41 = v214;
            sub_1AF441150(v240, v241);
            (*(v165 + 32))(v164, v165);
            v167 = *(v214 + 16 * v27);
            v168 = v167;
            v168.i32[3] = v196;
            v169 = *(v189 + 16 * v27);
            v170 = v169;
            v170.i32[3] = v197;
            v171 = vaddq_f32(v209, v170);
            v156 = v229;
            v172 = vmulq_f32(v229, v171);
            v173 = v172.f32[2] + vaddv_f32(*v172.f32);
            v174 = v168;
            v175 = v170;
            if (v173 < 0.0)
            {
              v176 = v222;
              v176.f32[2] = v224;
              v177 = vmulq_n_f32(v229, v173);
              v175 = vmlaq_n_f32(vmulq_n_f32(v177, -v163), vsubq_f32(v171, v177), v166);
              v174 = vmlaq_n_f32(vmlaq_f32(v176, vdupq_n_s32(0x38D1B717u), v229), v175, (v56 - v231) * a7);
            }

            v175.i32[3] = v169.i32[3];
            v221 = v175;
            *(v189 + 16 * v27) = v175;
            v174.i32[3] = v167.i32[3];
            *(v214 + 16 * v27) = v174;
            v233 = v225;
          }

          v156.i32[3] = HIDWORD(v9);
          v226 = v156;
          v178 = v241;
          v179 = v242;
          sub_1AF441150(v240, v241);
          v180 = (*(v179 + 80))(v178, v179);
          if (v180 <= 0.0 || v180 < v56 && (v181 = v180, v182 = drand48(), v181 <= v182))
          {
            v39 = a4;
            v38 = a7;
            v33 = v233;
            v40 = v213;
            v37 = v212;
            v36 = v28;
            v45 = v202;
            v44 = v203;
            v47 = v200;
            v46 = v201;
            _Q31 = v198;
            _Q30 = v199;
            v35 = v227;
            v53 = xmmword_1AFE20A30;
            v54.i64[0] = 0x8000000080000000;
            v54.i64[1] = 0x8000000080000000;
            v55 = 0uLL;
            HIDWORD(v9) = v226.i32[3];
          }

          else
          {
            *v183.f32 = vadd_f32(*v222.f32, vmul_f32(*v229.f32, vdup_n_s32(0x3C23D70Au)));
            v183.f32[2] = v224 + vmuls_lane_f32(0.01, v229, 2);
            v183.i32[3] = 0;
            v184 = v221;
            v184.i32[3] = v186;
            LOBYTE(v235) = v211 & 1;
            v234[0] = v210 & 1;
            v185 = &v30[10 * v195];
            HIDWORD(v9) = v226.i32[3];
            *v185 = v183;
            v185[1] = v226;
            v185[2] = v184;
            v185[3].i64[0] = v207;
            v185[3].i64[1] = v206;
            v185[4].i8[0] = v211 & 1;
            v185[4].i32[1] = v205;
            v185[4].i8[8] = v210 & 1;
            v258 = ++v195;
            v39 = a4;
            v38 = a7;
            v33 = v233;
            v40 = v213;
            v37 = v212;
            v36 = v28;
            v45 = v202;
            v44 = v203;
            v47 = v200;
            v46 = v201;
            _Q31 = v198;
            _Q30 = v199;
            v35 = v227;
            v53 = xmmword_1AFE20A30;
            v54.i64[0] = 0x8000000080000000;
            v54.i64[1] = 0x8000000080000000;
            v55 = 0uLL;
          }
        }
      }

LABEL_5:
      if (v36 == ++v27)
      {
        goto LABEL_2;
      }
    }

    if (v37)
    {
      v64 = _Q30;
      v64.i32[3] = v35.i32[3];
      v35 = v64;
    }

    else
    {
      v64 = *(v40 + 16 * v27);
    }

    *v32.i32 = v43 * fmaxf(fmaxf(v64.f32[0], v64.f32[2]), v64.f32[1]);
    *v31.f32 = vadd_f32(*a3[7].f32, vdup_lane_s32(v32, 0));
    v65 = COERCE_FLOAT(a3[7].i64[1]) + *v32.i32;
    v66 = v31;
    v66.f32[2] = v65;
    v67 = vcgezq_f32(v61);
    v67.i32[3] = 0;
    v63.i32[3] = 0;
    v68 = vdivq_f32(_Q30, vmaxnmq_f32(v63, v53));
    v69 = vmulq_f32(v68, v66);
    v70 = vmulq_f32(v60, vmulq_f32(v68, vnegq_f32(vbslq_s8(vcltzq_s32(v67), _Q30, _Q31))));
    v71 = vsubq_f32(v70, v69);
    v72 = vaddq_f32(v70, v69);
    v73 = fmaxf(fmaxf(v71.f32[0], v71.f32[2]), v71.f32[1]);
    v74 = fminf(fminf(v72.f32[0], v72.f32[2]), v72.f32[1]);
    if (v73 > v74 || v74 < 0.0)
    {
      goto LABEL_5;
    }

    v75 = v62 + *v32.i32;
    v76 = vmlaq_n_f32(v60, v61, v73);
    v77 = vbslq_s8(vorrq_s8(vcltzq_f32(v76), vcgtzq_f32(v76)), vorrq_s8(vandq_s8(v76, v54), _Q30), v55);
    v78 = vmulq_f32(v60, v77);
    _Q3 = vmulq_f32(v61, v77);
    v31.f32[0] = fminf(v75, fminf(fminf(v31.f32[0], v65), v31.f32[1]));
    v80 = vsubq_f32(v66, vdupq_lane_s32(*v31.f32, 0));
    v81 = vsubq_f32(vmulq_f32(v76, v77), v80);
    v82 = vextq_s8(vextq_s8(v81, v81, 0xCuLL), v81, 8uLL);
    v81.i32[3] = 0;
    v82.i32[3] = 0;
    v83 = vmaxnmq_f32(v81, v82);
    if (fminf(fminf(v83.f32[0], v83.f32[2]), v83.f32[1]) >= 0.0 || (v73 >= 0.0 ? (v84 = v73 > v56) : (v84 = 1), v84))
    {
      v85 = vmulq_f32(_Q3, _Q3);
      v86 = vaddv_f32(*v85.f32);
      v87 = v85.f32[2] + v86;
      if ((v85.f32[2] + v86) < 0.00000011921)
      {
        goto LABEL_5;
      }

      v88 = _Q31;
      v89 = v7;
      v90 = v35;
      v91 = v34;
      v92 = v33;
      v93 = v31.f32[0] * v31.f32[0];
      v31 = vsubq_f32(v78, v80);
      v94 = vmulq_f32(_Q3, v31);
      v95 = vmulq_f32(v31, v31);
      v31.f32[0] = vaddv_f32(*v94.f32);
      v96 = v94.f32[2] + v31.f32[0];
      v97 = vaddv_f32(*v95.f32);
      v98 = (v96 * v96) - (v87 * ((v95.f32[2] + v97) - v93));
      v99 = v98 <= 0.0 ? 1.0e10 : (-v96 - sqrtf(v98)) / v87;
      v115 = v94.f32[1] + v94.f32[2];
      v116 = (v115 * v115) - ((v85.f32[1] + v85.f32[2]) * ((v95.f32[1] + v95.f32[2]) - v93));
      if (v116 <= 0.0)
      {
        v35 = v90;
        v73 = v99;
      }

      else
      {
        v117 = (-v115 - sqrtf(v116)) / (v85.f32[1] + v85.f32[2]);
        _NF = fabsf(v78.f32[0] + (_Q3.f32[0] * v117)) < v80.f32[0] && v117 < v99;
        v119 = _NF;
        if ((v119 & (v117 >= 0.0)) != 0)
        {
          v99 = v117;
        }

        v73 = v99;
        v35 = v90;
      }

      v120 = v85.f32[2] + v85.f32[0];
      v121 = v94.f32[2] + v94.f32[0];
      v122 = (v121 * v121) - (v120 * ((v95.f32[2] + v95.f32[0]) - v93));
      v7 = v89;
      if (v122 <= 0.0)
      {
        v33 = v92;
        v34 = v91;
        v54.i64[0] = 0x8000000080000000;
        v54.i64[1] = 0x8000000080000000;
        _Q31 = v88;
      }

      else
      {
        _S16 = (-v121 - sqrtf(v122)) / v120;
        __asm { FMLA            S17, S16, V3.S[1] }

        v125 = fabsf(_S17);
        v126 = _NF && v125 < v80.f32[1];
        v33 = v92;
        v34 = v91;
        v54.i64[0] = 0x8000000080000000;
        v54.i64[1] = 0x8000000080000000;
        _Q31 = v88;
        if (v126)
        {
          v73 = _S16;
        }
      }

      v127 = (v31.f32[0] * v31.f32[0]) - (v86 * (v97 - v93));
      v56 = 1.0;
      v43 = v204;
      v53 = xmmword_1AFE20A30;
      if (v127 <= 0.0)
      {
        v55 = 0uLL;
      }

      else
      {
        _S4 = (-v31.f32[0] - sqrtf(v127)) / v86;
        __asm { FMLA            S5, S4, V3.S[2] }

        v130 = fabsf(_S5);
        v131 = _NF && v130 < v80.f32[2];
        v55 = 0uLL;
        if (v131)
        {
          v73 = _S4;
        }
      }

      if (v73 < 0.0 || v73 > 1.0)
      {
        goto LABEL_5;
      }
    }

    v132 = vmlaq_f32(vmulq_n_f32(_Q3, v73), v77, v78);
    v133 = vsubq_f32(vabsq_f32(v132), v80);
    v133.i32[3] = 0;
    v112 = vbslq_s8(vorrq_s8(vcltzq_f32(v132), vcgtzq_f32(v132)), vorrq_s8(vandq_s8(v132, v54), _Q30), v55);
    v134 = vmaxnmq_f32(v133, v55);
    v135 = vmulq_f32(v134, v134);
    v132.f32[0] = v135.f32[2] + vaddv_f32(*v135.f32);
    *v135.f32 = vrsqrte_f32(v132.u32[0]);
    *v135.f32 = vmul_f32(*v135.f32, vrsqrts_f32(v132.u32[0], vmul_f32(*v135.f32, *v135.f32)));
    v114 = vmulq_n_f32(v134, vmul_f32(*v135.f32, vrsqrts_f32(v132.u32[0], vmul_f32(*v135.f32, *v135.f32))).f32[0]);
    goto LABEL_62;
  }

LABEL_2:
  sub_1AFA076FC(&v239, a5 | ((HIDWORD(a5) & 1) << 32), sub_1AFA09F14);
  return sub_1AFA09D20(&v239);
}

__n128 initializeWithCopy for ParticleBoxCollider(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleBoxCollider(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleBoxCollider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1AFA09F44@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE916A0;
  *(a1 + 16) = 0xFF00000000;
  return result;
}

float sub_1AFA09F5C@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v13 = xmmword_1AFE916A0;
  v14 = 0xFF00000000;
  sub_1AFA09EFC(a1, 0);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (!v2)
  {
    (*(v7 + 8))(v10, v6);
    result = *&v14;
    v12 = HIDWORD(v14);
    *a2 = v13;
    *(a2 + 16) = result;
    *(a2 + 20) = v12;
  }

  return result;
}

uint64_t sub_1AFA0A0A4(void *a1)
{
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  v11 = *v1;
  v12 = *(v1 + 2);
  result = sub_1AFA09EE4(a1, &v11 - v8);
  if (!v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double sub_1AFA0A1B8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF5C84B0(v1);

  result = *v1;
  xmmword_1EB6C34D8 = v1[0];
  unk_1EB6C34E8 = v1[1];
  qword_1EB6C34F8 = v2;
  return result;
}

void sub_1AFA0A264(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + 160);
  if (qword_1EB637230 != -1)
  {
    swift_once();
  }

  v66[0] = xmmword_1EB6C34D8;
  v66[1] = unk_1EB6C34E8;
  v67 = qword_1EB6C34F8;
  sub_1AF6B06C0(a1, v66, a4 & 0xFFFFFFFFFFLL, v48);
  v41 = *&v48[0];
  if (*&v48[0])
  {
    v12 = *(&v48[2] + 1);
    v13 = *(&v49 + 1);
    v37 = *(&v50 + 1);
    v40 = v50;
    v53 = *(v48 + 8);
    v54 = *(&v48[1] + 8);
    MEMORY[0x1EEE9AC00](v10, v11);
    v38 = v28;
    v39 = v14;
    v28[2] = v4;
    v29 = a4;
    v30 = v15;
    v31 = a1;
    v32 = v9;
    v33 = a1;
    v34 = a2;
    v35 = a3;
    if (v14 > 0 && v13)
    {
      v36 = &v36;
      v16 = v37;
      v17 = v37[4];
      v46 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v47[2] = v48[2];
      v47[3] = v49;
      v47[4] = v50;
      v47[5] = v51;
      v47[0] = v48[0];
      v47[1] = v48[1];
      sub_1AF5DD298(v47, v61);
      for (i = (v12 + 24); ; i += 6)
      {
        v45 = 0;
        v19 = v17;
        v20 = *(i - 6);
        v21 = *(i - 5);
        v22 = *(i - 4);
        v23 = *(i - 1);
        v43 = *i;
        v44 = v23;
        v24 = i[2];
        v42 = i[1];
        if (v46)
        {
          v25 = *(v24 + 376);

          v16 = v37;
          os_unfair_lock_lock(v25);
          os_unfair_lock_lock(*(v24 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v19);

        sub_1AF630914(v26, v16, v52);

        LOBYTE(v55) = 1;
        v61[0] = v40;
        v61[1] = v24;
        v61[2] = v16;
        v61[3] = v22;
        v61[4] = (v21 - v20 + v22);
        v61[5] = v39;
        v61[6] = v20;
        v61[7] = v21;
        v61[8] = 0;
        v61[9] = 0;
        v62 = 1;
        v63 = v44;
        v64 = v43;
        v65 = v42;
        v27 = v45;
        sub_1AFA16BC4(v61, sub_1AFA0AAF0, v38);
        if (v27)
        {
          break;
        }

        v58 = v41;
        v59 = v53;
        v60 = v54;
        sub_1AF630994(v16, &v58, v52);
        sub_1AF62D29C(v24);
        ecs_stack_allocator_pop_snapshot(v19);
        v17 = v19;
        if (v46)
        {
          os_unfair_lock_unlock(*(v24 + 344));
          os_unfair_lock_unlock(*(v24 + 376));
        }

        if (!--v13)
        {
          sub_1AF5D1564(v48);
          sub_1AF5D1564(v48);
          return;
        }
      }

      v55 = v41;
      v56 = v53;
      v57 = v54;
      sub_1AF630994(v16, &v55, v52);
      sub_1AF62D29C(v24);
      ecs_stack_allocator_pop_snapshot(v19);
      os_unfair_lock_unlock(*(v24 + 344));
      os_unfair_lock_unlock(*(v24 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v48);
    }
  }
}

void sub_1AFA0A610(float a1, uint64_t a2, float32x2_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 + 84) & a3[2].i32[1];
  if (v11)
  {
    v118 = v10;
    v119 = v8;
    v120 = v9;
    v15 = a7;
    v16 = (a7 & 0xFE00000000) != 0;
    if ((a7 & 0xFE00000000) != 0)
    {
      v15 = 0;
    }

    v77 = v15;
    v17 = a3[2].f32[0] + *(a6 + 80);
    v18 = a3[1].f32[0];
    v19 = *(a6 + 72);
    v20 = fminf(fmaxf(a3[1].f32[1] + *(a6 + 76), 0.0), 1.0);
    __asm { FMOV            V7.2S, #1.0 }

    *&v111 = vminnm_f32(vmaxnm_f32(vadd_f32(*a3, *(a6 + 64)), 0), _D7);
    DWORD2(v111) = fminf(fmaxf(v18 + v19, 0.0), 1.0);
    *(&v111 + 3) = 1.0 - v20;
    v112 = v17;
    v113 = v11;
    v25 = *a4;
    v26 = a4[1];
    v27 = a4[2];
    v28 = a4[3];
    v29 = a5[1];
    v30 = a5[2];
    v31 = a5[3];
    v116[0] = *a5;
    v116[1] = v29;
    v116[2] = v30;
    v116[3] = v31;
    v117 = 0;
    if (_ZF)
    {
      v16 = 1;
    }

    v76 = v16;
    sub_1AFA0B448(v116, v86, v25, v26, v27, v28, *(a6 + 96), *(a6 + 112), *(a6 + 128), *(a6 + 144));
    v32 = *(a6 + 40);
    v114[0] = *(a6 + 24);
    v114[1] = v32;
    v115 = *(a6 + 56);
    sub_1AF6B06C0(a8, v114, 0x200000000, &v87);
    if (v87)
    {
      v75 = v94;
      if (v94 > 0)
      {
        v74 = v91;
        if (v91)
        {
          v33 = 0;
          v72 = v90;
          v71 = v92;
          v34 = *(v92 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v84 = *(v93 + 32);
          v85 = v93;
          v95 = v87;
          v96 = v88;
          v97 = v89;
          v70 = v34;
          v73 = a6;
          do
          {
            v35 = (v72 + 48 * v33);
            v36 = *v35;
            v37 = v35[1];
            v38 = v35[2];
            v40 = *(v35 + 2);
            v39 = *(v35 + 3);
            v41 = *(v35 + 5);
            v78 = *(v35 + 4);
            if (v34)
            {
              v42 = *(v41 + 376);

              os_unfair_lock_lock(v42);
              os_unfair_lock_lock(*(v41 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v84);
            v43 = v85;
            v81 = *(v85 + 64);
            v82 = *(v85 + 48);
            v80 = *(v85 + 80);
            v44 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
            *(v85 + 48) = ecs_stack_allocator_allocate(*(v85 + 32), 48 * v44, 8);
            *(v85 + 56) = v44;
            *(v85 + 72) = 0;
            *(v85 + 80) = 0;
            *(v85 + 64) = 0;
            *&v98 = v71;
            *(&v98 + 1) = v41;
            v83 = v41;
            v99 = v85;
            v100 = v38;
            v101 = (v37 - v36 + v38);
            v102 = v75;
            v103 = v36;
            v104 = v37;
            v105 = 0;
            v106 = 0;
            v107 = 1;
            v108 = v40;
            v109 = v39;
            v110 = v78;
            sub_1AFA0B74C(&v98, &v111, v86, v73, v77 | (v76 << 32), a1);
            v45 = *(v85 + 48);
            v46 = *(v85 + 64);
            if (!v46)
            {
              v68 = *(v85 + 56);
              v69 = *(v85 + 32);
              goto LABEL_45;
            }

            v79 = v33;
            for (i = 0; i != v46; ++i)
            {
              v49 = (v45 + 48 * i);
              v50 = *v49;
              v51 = v49[4];
              v52 = *(v43 + 72);
              if (v52)
              {
                _ZF = v50 == v52;
              }

              else
              {
                _ZF = 0;
              }

              if (_ZF)
              {
                goto LABEL_17;
              }

              v54 = v95;
              if (!v95[11])
              {
                goto LABEL_17;
              }

              v55 = v49[2];
              v56 = v95 + 41;
              v57 = v95[9];
              if (v57 >= 0x10)
              {
                v58 = &v56[v95[8]];
                v59 = v57 >> 4;
                v60 = v95 + 41;
                while (*v58 != v50)
                {
                  ++v60;
                  v58 += 16;
                  if (!--v59)
                  {
                    goto LABEL_33;
                  }
                }

                v61 = v60[v95[10]];
                v62 = v61 > 5;
                v63 = (1 << v61) & 0x23;
                if (v62 || v63 == 0)
                {
LABEL_17:

                  v51(v48);

                  goto LABEL_18;
                }
              }

LABEL_33:
              if (swift_conformsToProtocol2() && v55)
              {
                if (sub_1AF5FC8D8(v55))
                {
                  goto LABEL_17;
                }

                v65 = v54[9];
                if (v65 < 0x10)
                {
                  goto LABEL_17;
                }

                v66 = &v56[v54[8]];
                v67 = 16 * (v65 >> 4);
                while (*v66 != v55)
                {
                  v66 += 16;
                  v67 -= 16;
                  if (!v67)
                  {
                    goto LABEL_17;
                  }
                }
              }

LABEL_18:
              v43 = v85;
            }

            v68 = *(v85 + 56);
            v45 = *(v85 + 48);
            v69 = *(v85 + 32);
            if (*(v85 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

            v33 = v79;
LABEL_45:
            ecs_stack_allocator_deallocate(v69, v45, 48 * v68);
            *(v43 + 48) = v82;
            *(v43 + 64) = v81;
            *(v43 + 80) = v80;
            sub_1AF62D29C(v83);
            ecs_stack_allocator_pop_snapshot(v84);
            v34 = v70;
            if (v70)
            {
              os_unfair_lock_unlock(*(v83 + 344));
              os_unfair_lock_unlock(*(v83 + 376));
            }

            ++v33;
          }

          while (v33 != v74);
        }
      }

      sub_1AF5D1564(&v87);
    }
  }
}

uint64_t sub_1AFA0AB38(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AFA09D74(a1, v9);
  if (v9[28])
  {
    v4 = v9[11];
    MEMORY[0x1EEE9AC00](v3, v9[7]);
    v8[2] = v9;
    sub_1AF63291C(0, v5, 1, a2 | ((HIDWORD(a2) & 1) << 32), v6, sub_1AFA09DD0, v8, v4);
    ecs_stack_allocator_deallocate(*(v4 + 32), v9[26], 80 * v9[27]);
  }

  sub_1AFA1C110(v9);
  return sub_1AFA09D20(v9);
}

void sub_1AFA0AC14(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v102 = a1;
  v99 = a6;
  v100 = a7;
  v97 = a4;
  v98 = a5;
  if (qword_1EB637230 != -1)
  {
    v87 = a3;
    swift_once();
    a3 = v87;
  }

  v151[0] = xmmword_1EB6C34D8;
  v151[1] = unk_1EB6C34E8;
  v152 = qword_1EB6C34F8;
  v143 = *(a3 + 72);
  v144 = *(a3 + 88);
  v145 = *(a3 + 104);
  v146 = *(a3 + 120);
  v140[0] = *(a3 + 8);
  v140[1] = *(a3 + 24);
  v141 = *(a3 + 40);
  v109 = a3;
  v142 = *(a3 + 56);
  if (BYTE12(v141))
  {
    v8 = 0x200000000;
  }

  else
  {
    v8 = DWORD2(v141);
  }

  sub_1AF6B06C0(a2, v151, v8, v128);
  if (*&v128[0])
  {
    if (v131 > 0)
    {
      v93 = *(&v129 + 1);
      if (*(&v129 + 1))
      {
        v92 = *(&v128[2] + 1);
        v9 = *(&v130 + 1);
        v10 = *(*(&v130 + 1) + 32);
        v11 = *(v130 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v137 = *&v128[0];
        v138 = *(v128 + 8);
        v139 = *(&v128[1] + 8);
        v127[2] = v128[2];
        v127[3] = v129;
        v127[4] = v130;
        v127[5] = v131;
        v127[0] = v128[0];
        v127[1] = v128[1];
        sub_1AF5DD298(v127, &v111);
        v12 = 0;
        v13 = 0;
        v96 = 0x80000001AFF43BA0;
        v90 = v10;
        v91 = v9;
        v89 = v11;
        while (1)
        {
          v110 = v13;
          v95 = v12;
          v14 = (v92 + 48 * v12);
          v15 = *v14;
          v108[0] = v14[1];
          v17 = *(v14 + 2);
          v16 = *(v14 + 3);
          v19 = *(v14 + 4);
          v18 = *(v14 + 5);
          if (v11)
          {
            v20 = *(v18 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v10);

          sub_1AF630914(v21, v9, v132);

          v22 = sub_1AF64B110(&type metadata for ParticleCylinderCollider, &off_1F2552A70, v17, v16, v19, v9);
          v23 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v17, v16, v19, v9);
          v94 = v18;
          v24 = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v17, v16, v19, v9);
          if (v17)
          {
            if (v19)
            {
              v103 = *(v102 + 20);
              v25 = v22 + 12;
              v26 = (v24 + 32);
              v27 = (v23 + 32);
              v28 = v109;
              v13 = v110;
              do
              {
                if ((v103 & *(v25 + 8)) != 0)
                {
                  v108[0] = v19;
                  v110 = v13;
                  v37 = v102;
                  v38 = 1.0 - fminf(fmaxf(*v25 + *(v102 + 12), 0.0), 1.0);
                  v39 = fminf(fmaxf(*(v25 - 4) + *(v102 + 8), 0.0), 1.0);
                  v40 = fminf(fmaxf(*(v25 - 8) + *(v102 + 4), 0.0), 1.0);
                  v41 = v27[-2];
                  v106 = v27[-1];
                  v107 = v41;
                  v42 = *v27;
                  v104 = v27[1];
                  v105 = v42;
                  v43 = v26[-2];
                  v44 = v26[-1];
                  v45 = *v26;
                  v46 = v26[1];
                  v126 = 0;
                  v147[0] = v43;
                  v147[1] = v44;
                  v147[2] = v45;
                  v147[3] = v46;
                  v148 = 0;
                  sub_1AFA0B448(v147, v133, v41, v106, v42, v104, v97, v98, v99, v100);
                  v47 = *(v37 + 16) * 0.5;
                  sub_1AFB943A8();
                  v111 = v48;
                  v112 = v39;
                  v113 = v38;
                  v114 = v133[0];
                  v115 = v133[1];
                  v116 = v133[2];
                  v117 = v133[3];
                  v118 = v107;
                  v119 = v106;
                  v120 = v105;
                  v121 = v104;
                  v122 = v133[7];
                  v123 = v134;
                  v124 = v40;
                  v125 = v47;
                  if (*v28)
                  {
                    ObjectType = swift_getObjectType();
                    type metadata accessor for particle_cylinder_collider_uniforms(0);
                    sub_1AF6F4524(&v111, 1, ObjectType, v50, v51, v52, v53, v54);
                  }

                  v29 = v28[18];
                  v30 = *(*&v140[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                  v31 = *(*&v140[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                  v107.i64[0] = v31;

                  v32 = v28;
                  v33 = v141;

                  v106.i64[0] = v88;
                  MEMORY[0x1EEE9AC00](v34, v35);
                  v36 = v101;
                  *&v88[-80] = v32;
                  *&v88[-72] = v36;
                  *&v88[-64] = 0xD00000000000001ALL;
                  *&v88[-56] = v96;
                  *&v88[-48] = 0;
                  *&v88[-40] = v29;
                  *&v88[-32] = 0;
                  v88[-24] = v30;
                  *&v88[-16] = v31;
                  *&v88[-8] = v140;
                  v13 = v110;
                  sub_1AFCBF008(v33, sub_1AFA09F2C);
                  v28 = v109;

                  v19 = v108[0];
                }

                v25 += 24;
                v26 += 4;
                v27 += 4;
                --v19;
              }

              while (v19);
              goto LABEL_24;
            }
          }

          else if (v15 != LODWORD(v108[0]))
          {
            v104.i32[0] = *(v102 + 20);
            v56 = v108[0] - v15;
            v57 = v22 + 24 * v15 + 12;
            v58 = v23;
            v59 = (v24 + (v15 << 6) + 32);
            v60 = v58 + (v15 << 6) + 32;
            v61 = v109;
            v13 = v110;
            do
            {
              if ((v104.i32[0] & *(v57 + 8)) != 0)
              {
                v110 = v13;
                v69 = v102;
                v70 = 1.0 - fminf(fmaxf(*v57 + *(v102 + 12), 0.0), 1.0);
                v71 = fminf(fmaxf(*(v57 - 4) + *(v102 + 8), 0.0), 1.0);
                v72 = fminf(fmaxf(*(v57 - 8) + *(v102 + 4), 0.0), 1.0);
                v73 = *(v60 - 32);
                v107 = *(v60 - 16);
                *v108 = v73;
                v74 = *v60;
                v105 = *(v60 + 16);
                v106 = v74;
                v75 = v59[-2];
                v76 = v59[-1];
                v77 = *v59;
                v78 = v59[1];
                v126 = 0;
                v149[0] = v75;
                v149[1] = v76;
                v149[2] = v77;
                v149[3] = v78;
                v150 = 0;
                sub_1AFA0B448(v149, v135, v73, v107, v74, v105, v97, v98, v99, v100);
                v79 = *(v69 + 16) * 0.5;
                sub_1AFB943A8();
                v111 = v80;
                v112 = v71;
                v113 = v70;
                v114 = v135[0];
                v115 = v135[1];
                v116 = v135[2];
                v117 = v135[3];
                v118 = *v108;
                v119 = v107;
                v120 = v106;
                v121 = v105;
                v122 = v135[7];
                v123 = v136;
                v124 = v72;
                v125 = v79;
                if (*v61)
                {
                  v81 = swift_getObjectType();
                  type metadata accessor for particle_cylinder_collider_uniforms(0);
                  sub_1AF6F4524(&v111, 1, v81, v82, v83, v84, v85, v86);
                }

                v62 = v61[18];
                v63 = *(*&v140[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                v64 = *(*&v140[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                v108[0] = v64;

                v65 = v141;

                v107.i64[0] = v88;
                MEMORY[0x1EEE9AC00](v66, v67);
                v68 = v101;
                *&v88[-80] = v109;
                *&v88[-72] = v68;
                *&v88[-64] = 0xD00000000000001ALL;
                *&v88[-56] = v96;
                *&v88[-48] = 0;
                *&v88[-40] = v62;
                *&v88[-32] = 0;
                v88[-24] = v63;
                *&v88[-16] = v64;
                *&v88[-8] = v140;
                v13 = v110;
                sub_1AFCBF008(v65, sub_1AFA09E00);
                v61 = v109;
              }

              v57 += 24;
              v59 += 4;
              v60 += 64;
              --v56;
            }

            while (v56);
            goto LABEL_24;
          }

          v13 = v110;
LABEL_24:
          v9 = v91;
          sub_1AF630994(v91, &v137, v132);
          v55 = v94;
          sub_1AF62D29C(v94);
          v10 = v90;
          ecs_stack_allocator_pop_snapshot(v90);
          v11 = v89;
          if (v89)
          {
            os_unfair_lock_unlock(*(v55 + 43));
            os_unfair_lock_unlock(*(v55 + 47));
          }

          v12 = v95 + 1;
          if (v95 + 1 == v93)
          {
            sub_1AF5D1564(v128);
            break;
          }
        }
      }
    }

    sub_1AF5D1564(v128);
  }
}

float32x2_t sub_1AFA0B448@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>, float32x4_t a7@<Q4>, float32x4_t a8@<Q5>, float32x4_t a9@<Q6>, float32x4_t a10@<Q7>)
{
  if (a1[4].i8[0])
  {
    v11 = a3;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v13 = a1[2];
    v14 = a1[3];
    v11 = *a1;
    v12 = a1[1];
  }

  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a3.f32[0]), a8, *a3.f32, 1), a9, a3, 2), a10, a3, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a4.f32[0]), a8, *a4.f32, 1), a9, a4, 2), a10, a4, 3);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a5.f32[0]), a8, *a5.f32, 1), a9, a5, 2), a10, a5, 3);
  v18 = vmulq_f32(v15, v15);
  v19 = vmulq_f32(v16, v16);
  v20 = vmulq_f32(v17, v17);
  v21 = vtrn2q_s32(v18, v19);
  v21.i32[2] = v20.i32[1];
  v22 = vaddq_f32(vzip1q_s32(vzip2q_s32(v18, v20), vdupq_laneq_s32(v19, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v18, v20), v19), v21));
  v23.i64[0] = 0x80000000800000;
  v23.i64[1] = 0x80000000800000;
  v24 = vcgeq_f32(v23, v22);
  v22.i32[3] = 0;
  v25 = vrsqrteq_f32(v22);
  v26 = vmulq_f32(v25, vrsqrtsq_f32(v22, vmulq_f32(v25, v25)));
  v27 = v24;
  v27.i32[3] = 0;
  v28 = vbslq_s8(vcltzq_s32(v27), v22, vmulq_f32(v26, vrsqrtsq_f32(v22, vmulq_f32(v26, v26))));
  v29 = vmulq_n_f32(v15, v28.f32[0]);
  v30 = vmulq_lane_f32(v16, *v28.f32, 1);
  v31 = vmulq_laneq_f32(v17, v28, 2);
  v32 = vuzp1q_s32(v31, v31);
  v33 = vuzp1q_s32(v30, v30);
  v34 = v29;
  if (v24.i32[0])
  {
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(v32, v31, 0xCuLL), vnegq_f32(v30)), v31, vextq_s8(v33, v30, 0xCuLL));
    v34 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v60 = v34;
  v36 = vuzp1q_s32(v29, v29);
  v37 = v30;
  if (v24.i32[1])
  {
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(v36, v29, 0xCuLL), vnegq_f32(v31)), v29, vextq_s8(v32, v31, 0xCuLL));
    v37 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
  }

  v59 = v37;
  if (v24.i32[2])
  {
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(v33, v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(v36, v29, 0xCuLL));
    v31 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
  }

  v55 = v31;
  v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v14.f32[0]), a8, *v14.f32, 1), a9, v14, 2), a10, v14, 3);
  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v13.f32[0]), a8, *v13.f32, 1), a9, v13, 2), a10, v13, 3);
  v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v12.f32[0]), a8, *v12.f32, 1), a9, v12, 2), a10, v12, 3);
  v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v11.f32[0]), a8, *v11.f32, 1), a9, v11, 2), a10, v11, 3);
  v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a6.f32[0]), a8, *a6.f32, 1), a9, a6, 2), a10, a6, 3);
  v58 = sqrtf(*&v19.i32[2] + vaddv_f32(*v19.i8));
  v57 = fmaxf(sqrtf(*&v18.i32[2] + vaddv_f32(*v18.i8)), sqrtf(*&v20.i32[2] + vaddv_f32(*v20.i8)));
  v45 = vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  v56 = vsubq_f32(vaddq_f32(v44, vmlaq_f32(vmlaq_f32(vmulq_f32(v15, 0), 0, v16), 0, v17)), vaddq_f32(v40, vmlaq_f32(vmlaq_f32(vmulq_f32(v43, 0), 0, v42), 0, v41)));
  v45.i32[0] = vadd_f32(v45, vdup_lane_s32(v45, 1)).u32[0];
  v46 = vrsqrte_f32(v45.u32[0]);
  v47 = vmul_f32(v46, vrsqrts_f32(v45.u32[0], vmul_f32(v46, v46)));
  v45.i32[0] = vmul_f32(v47, vrsqrts_f32(v45.u32[0], vmul_f32(v47, v47))).u32[0];
  v48 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v47.i32[0] = vadd_f32(v48, vdup_lane_s32(v48, 1)).u32[0];
  v61.columns[0] = vmulq_n_f32(v15, *v45.i32);
  v49 = vrsqrte_f32(v47.u32[0]);
  v50 = vmul_f32(v49, vrsqrts_f32(v47.u32[0], vmul_f32(v49, v49)));
  v50.i32[0] = vmul_f32(v50, vrsqrts_f32(v47.u32[0], vmul_f32(v50, v50))).u32[0];
  v51 = vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  v61.columns[1] = vmulq_n_f32(v16, v50.f32[0]);
  v50.i32[0] = vadd_f32(v51, vdup_lane_s32(v51, 1)).u32[0];
  v52 = vrsqrte_f32(v50.u32[0]);
  v53 = vmul_f32(v52, vrsqrts_f32(v50.u32[0], vmul_f32(v52, v52)));
  v61.columns[2] = vmulq_n_f32(v17, vmul_f32(v53, vrsqrts_f32(v50.u32[0], vmul_f32(v53, v53))).f32[0]);
  v61.columns[3] = v44;
  *a2 = __invert_f4(v61);
  *(a2 + 64) = v60;
  *(a2 + 80) = v59;
  *(a2 + 96) = v55;
  *(a2 + 112) = v56;
  result = vmul_f32(__PAIR64__(LODWORD(v58), LODWORD(v57)), 0x3F0000003F000000);
  *(a2 + 128) = result;
  return result;
}

uint64_t sub_1AFA0B74C(__int128 *a1, __int128 *a2, float32x4_t *a3, uint64_t a4, unint64_t a5, float a6)
{
  v216 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 11);
  v11 = *(a1 + 12);
  v12 = *(a1 + 13);
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v186 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v10, v11, v12, v14);
  v162 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v10, v11, v12, v14);
  v155 = sub_1AF9C5D1C();
  v181 = v15;
  v185 = sub_1AF9C5D08();
  v184 = v16;
  v154 = sub_1AF9C5E38();
  v180 = v17;
  v192 = *a2;
  v18 = a1[3];
  v205 = a1[2];
  v19 = *a1;
  v204 = a1[1];
  v203 = v19;
  v20 = a1[5];
  v209 = a1[6];
  v21 = a1[4];
  v208 = v20;
  v195 = &off_1F2553AE0;
  v22 = *(a2 + 2);
  v194 = &type metadata for CollisionProperties;
  v193 = v22;
  v207 = v21;
  v187 = a4;
  v23 = *(a4 + 16);
  v165 = a3[7];
  v196 = v165;
  v206 = v18;
  v25 = *(a1 + 6);
  v24 = *(a1 + 7);
  v26 = v14[4];

  v150 = ecs_stack_allocator_allocate(v26, 8 * (v24 - v25), 8);
  v210 = v150;
  v211 = v24 - v25;
  v212 = 0;
  sub_1AF441194(&v192, v197);
  v201 = a6;
  v200 = v23;
  sub_1AF649C6C(*(v13 + 40), &type metadata for Anchored, v191);
  v164 = v191[0];
  v202 = v191[0];
  v27 = ecs_stack_allocator_allocate(v14[4], 80 * (v24 - v25), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v192);
  v33 = v184;
  v34 = a6;
  v149 = v27;
  v213 = v27;
  v214 = v24 - v25;
  v215 = 0;
  v35 = v185;
  v36 = v186;
  if (v24 != v25)
  {
    v147 = 0;
    v148 = 0;
    v38 = *(v187 + 80) * 0.5;
    v39 = *a3;
    v40 = a3[1];
    v41 = a3[2];
    v42 = a3[3];
    v43 = a3[8].f32[0];
    v44 = a3[8].f32[1];
    __asm { FMOV            V25.4S, #1.0 }

    v29.i32[0] = 1.0;
    v50.i64[0] = 0x8000000080000000;
    v50.i64[1] = 0x8000000080000000;
    v159 = v40;
    v160 = *a3;
    v157 = v42;
    v158 = v41;
    v156 = _Q25;
    do
    {
      if (v33)
      {
        v54 = _Q25;
        HIDWORD(v54) = HIDWORD(v30);
        v30 = v54;
      }

      else
      {
        v54 = *(v35 + 16 * v25);
      }

      v55 = v38 * fmaxf(fmaxf(*&v54, *(&v54 + 2)), *(&v54 + 1));
      v56 = *(v162 + 16 * v25);
      v57 = vmuls_lane_f32(v34, v56, 2);
      v58 = vmuls_lane_f32(v34, v56, 3);
      v59 = vmul_n_f32(*v56.f32, v34);
      *&v6 = vsub_f32(*(v36 + 16 * v25), v59);
      *&v28 = COERCE_FLOAT(*(v36 + 16 * v25 + 8)) - v57;
      v60 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(v39, *&v6), v40, *&v6, 1), v41, *&v28), v42, COERCE_FLOAT(HIDWORD(*(v36 + 16 * v25))) - v58);
      v61 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v59.f32[0]), v40, v59, 1), v41, v57), v42, v58);
      v62 = v43 + v55;
      v63 = vmulq_f32(v61, v61);
      v64 = vmulq_f32(v61, v60);
      v65 = (v64.f32[0] + v64.f32[2]) + (v64.f32[0] + v64.f32[2]);
      v66 = vmulq_f32(v60, v60);
      v67 = (((v63.f32[0] + v63.f32[2]) * -4.0) * ((v66.f32[0] + v66.f32[2]) - (v62 * v62))) + (v65 * v65);
      if (v67 < 0.0)
      {
        goto LABEL_5;
      }

      v68 = fmaxf(v63.f32[0] + v63.f32[2], 0.00000011921);
      v69 = (-v65 - sqrtf(v67)) / (v68 + v68);
      if (v69 > *v29.i32)
      {
        goto LABEL_5;
      }

      v70 = v44 + v55;
      v71 = fminf(v55, fminf(v62, v44 + v55));
      v72 = vmlaq_n_f32(v60, v61, v69);
      v73 = fabsf(v72.f32[1]);
      v74 = v70 - v71;
      if (v73 <= (v70 - v71))
      {
        v72.i32[1] = 0;
        v91 = vmulq_f32(v72, v72);
        *&v92 = v91.f32[2] + vaddv_f32(*v91.f32);
        *v91.f32 = vrsqrte_f32(v92);
        *v91.f32 = vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32)));
        v90 = vmulq_n_f32(v72, vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32))).f32[0]);
        if (v69 <= 0.0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }

      if (v73 >= v70)
      {
        v93 = v28;
        v72.i32[0] = v61.i32[1];
        LODWORD(v76) = vbslq_s8(v50, v29, v72).u32[0];
        DWORD1(v28) = 0;
        if (v61.f32[1] == 0.0)
        {
          v94 = 0.0;
        }

        else
        {
          v94 = v76;
        }

        v69 = -(v60.f32[1] + (v94 * v70)) / v61.f32[1];
        v95 = vmlaq_n_f32(v60, v61, v69);
        v96 = vmulq_f32(v95, v95);
        v97 = v96.f32[0] + v96.f32[2];
        if (v69 > *v29.i32 || v97 > (v62 * v62))
        {
          goto LABEL_5;
        }

        v75 = v62 - v71;
        v28 = v93;
        if (v97 <= (v75 * v75))
        {
          v90.i32[0] = 0;
          v90.i64[1] = 0;
          v90.f32[1] = -v94;
          if (v69 <= 0.0)
          {
            goto LABEL_5;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v75 = v62 - v71;
        v72.i32[0] = v61.i32[1];
        LODWORD(v76) = vbslq_s8(v50, v29, v72).u32[0];
      }

      if (v72.f32[0] == 0.0)
      {
        v72.f32[0] = 0.0;
      }

      else
      {
        v72.f32[0] = v76;
      }

      v77 = v63.f32[2] + (v63.f32[0] + v63.f32[1]);
      if (v77 < 0.00000011921)
      {
        goto LABEL_5;
      }

      v78 = v60;
      v78.i32[1] = 0;
      v79 = vmulq_f32(v78, v78);
      *&v80 = v79.f32[2] + vaddv_f32(*v79.f32);
      *v79.f32 = vrsqrte_f32(v80);
      *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32)));
      v81 = vmulq_n_f32(v78, vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32))).f32[0]);
      v79.i32[0] = 0;
      v79.f32[1] = v74;
      v82 = vsubq_f32(v60, vmlaq_n_f32(vmulq_f32(v79.u64[0], vnegq_f32(vdupq_lane_s32(*v72.f32, 0))), v81, v75));
      v83 = vmulq_f32(v61, v82);
      v84 = v83.f32[2] + vaddv_f32(*v83.f32);
      v85 = vmulq_f32(v82, v82);
      v86 = (v84 * v84) - (v77 * ((v85.f32[2] + vaddv_f32(*v85.f32)) - (v71 * v71)));
      if (v86 < 0.0)
      {
        goto LABEL_5;
      }

      v69 = (-sqrtf(v86) - v84) / v77;
      if (v69 < 0.0)
      {
        goto LABEL_5;
      }

      if (v69 > *v29.i32)
      {
        goto LABEL_5;
      }

      v87 = vmlaq_n_f32(v82, v61, v69);
      v88 = vmulq_f32(v87, v87);
      *&v89 = v88.f32[2] + vaddv_f32(*v88.f32);
      *v88.f32 = vrsqrte_f32(v89);
      *v88.f32 = vmul_f32(*v88.f32, vrsqrts_f32(v89, vmul_f32(*v88.f32, *v88.f32)));
      v90 = vmulq_n_f32(v87, vmul_f32(*v88.f32, vrsqrts_f32(v89, vmul_f32(*v88.f32, *v88.f32))).f32[0]);
      if (v69 <= 0.0)
      {
        goto LABEL_5;
      }

LABEL_24:
      if (v181)
      {
        v152 = 0;
        v153 = 0;
      }

      else
      {
        v99 = (v155 + 16 * v25);
        v152 = v99[1];
        v153 = *v99;
      }

      v178 = v31;
      v179 = v30;
      v174 = v59;
      v176 = v32;
      v182 = v57;
      v170 = *&v28;
      v169 = v90;
      if (v180)
      {
        v151 = 0;
      }

      else
      {
        v151 = *(v154 + 4 * v25);
      }

      v166 = a3[4];
      v167 = a3[5];
      v168 = a3[6];
      v100 = v198;
      v101 = v199;
      sub_1AF441150(v197, v198);
      v102 = (*(v101 + 56))(v100, v101);
      if (v102 > 0.0)
      {
        if (v102 >= 1.0 || (v103 = v102, v104 = drand48(), v103 > v104))
        {
          v150[v147++] = v25;
          v212 = v147;
        }
      }

      v105.i64[1] = *(&v6 + 1);
      *v105.f32 = vadd_f32(*&v6, vmul_n_f32(v174, v69));
      v106 = v170 + (v182 * v69);
      v183 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v166, v169.f32[0]), v167, *v169.f32, 1), v168, v169, 2);
      v173 = v105;
      v175 = v106;
      if (v164)
      {
        *v107.f32 = vsub_f32(*v105.f32, *(v36 + 16 * v25));
        v107.f32[2] = v106 - COERCE_FLOAT(*(v36 + 16 * v25 + 8));
        v107.i32[3] = 0;
        v188 = v107;
        v108 = v107;
        v171 = *(v162 + 16 * v25);
        v108.i32[3] = HIDWORD(v171);
        *(v162 + 16 * v25) = v108;
        v109 = v198;
        v110 = v199;
        sub_1AF441150(v197, v198);
        v111 = (*(v110 + 8))(v109, v110);
        v112 = v198;
        v113 = v199;
        sub_1AF441150(v197, v198);
        (*(v113 + 32))(v112, v113);
        v115 = v188;
        v115.i32[3] = v176.i32[3];
        v116 = vaddq_f32(v165, v115);
        v117 = v183;
        v118 = vmulq_f32(v183, v116);
        v119 = v118.f32[2] + vaddv_f32(*v118.f32);
        v189 = v115;
        v120 = v115;
        if (v119 < 0.0)
        {
          v121 = vmulq_n_f32(v183, v119);
          v120 = vmlaq_n_f32(vmulq_n_f32(v121, -v111), vsubq_f32(v116, v121), v114);
        }

        v120.i32[3] = HIDWORD(v171);
        v172 = v120;
        *(v162 + 16 * v25) = v120;
        v36 = v186;
      }

      else
      {
        v122 = v198;
        v123 = v199;
        sub_1AF441150(v197, v198);
        v124 = (*(v123 + 8))(v122, v123);
        v125 = v198;
        v126 = v199;
        v36 = v186;
        sub_1AF441150(v197, v198);
        (*(v126 + 32))(v125, v126);
        v128 = *(v186 + 16 * v25);
        v129 = v128;
        v129.i32[3] = v145;
        v130 = *(v162 + 16 * v25);
        v131 = v130;
        v131.i32[3] = v146;
        v132 = vaddq_f32(v165, v131);
        v117 = v183;
        v133 = vmulq_f32(v183, v132);
        v134 = v133.f32[2] + vaddv_f32(*v133.f32);
        v135 = v129;
        v136 = v131;
        if (v134 < 0.0)
        {
          v137 = v173;
          v137.f32[2] = v175;
          v138 = vmulq_n_f32(v183, v134);
          v136 = vmlaq_n_f32(vmulq_n_f32(v138, -v124), vsubq_f32(v132, v138), v127);
          v135 = vmlaq_n_f32(vmlaq_f32(v137, vdupq_n_s32(0x38D1B717u), v183), v136, (1.0 - v69) * a6);
        }

        v136.i32[3] = v130.i32[3];
        v172 = v136;
        *(v162 + 16 * v25) = v136;
        v135.i32[3] = v128.i32[3];
        *(v186 + 16 * v25) = v135;
        v189 = v176;
      }

      v117.i32[3] = v178;
      v177 = v117;
      v139 = v198;
      v140 = v199;
      sub_1AF441150(v197, v198);
      v141 = (*(v140 + 80))(v139, v140);
      if (v141 <= 0.0)
      {
        v34 = a6;
        v35 = v185;
        v33 = v184;
        v40 = v159;
        v39 = v160;
        v42 = v157;
        v41 = v158;
        _Q25 = v156;
        v29.i32[0] = 1.0;
        goto LABEL_54;
      }

      v29.i32[0] = 1.0;
      if (v141 < 1.0)
      {
        v142 = v141;
        v143 = drand48();
        v29.i32[0] = 1.0;
        *&v143 = v143;
        if (v142 <= *&v143)
        {
          v34 = a6;
          v35 = v185;
          v33 = v184;
          v40 = v159;
          v39 = v160;
          v42 = v157;
          v41 = v158;
          _Q25 = v156;
LABEL_54:
          v50.i64[0] = 0x8000000080000000;
          v50.i64[1] = 0x8000000080000000;
          v31 = v177.i32[3];
          v30 = v179;
          v32 = v189;
          goto LABEL_5;
        }
      }

      *v51.f32 = vadd_f32(*v173.f32, vmul_f32(*v183.f32, vdup_n_s32(0x3C23D70Au)));
      v51.f32[2] = v175 + vmuls_lane_f32(0.01, v183, 2);
      v51.i32[3] = 0;
      v52 = v172;
      v52.i32[3] = v144;
      LOBYTE(v192) = v181 & 1;
      v191[0] = v180 & 1;
      v53 = &v149[10 * v148];
      v31 = v177.i32[3];
      *v53 = v51;
      v53[1] = v177;
      v53[2] = v52;
      v53[3].i64[0] = v153;
      v53[3].i64[1] = v152;
      v53[4].i8[0] = v181 & 1;
      v53[4].i32[1] = v151;
      v53[4].i8[8] = v180 & 1;
      v215 = ++v148;
      v32 = v189;
      v34 = a6;
      v35 = v185;
      v33 = v184;
      v40 = v159;
      v39 = v160;
      v42 = v157;
      v41 = v158;
      _Q25 = v156;
      v50.i64[0] = 0x8000000080000000;
      v50.i64[1] = 0x8000000080000000;
      v30 = v179;
LABEL_5:
      ++v25;
    }

    while (v24 != v25);
  }

  sub_1AFA0AB38(&v196, a5 | ((HIDWORD(a5) & 1) << 32));
  return sub_1AFA09D20(&v196);
}

uint64_t sub_1AFA0C214(void *a1)
{
  v3 = v1;
  sub_1AFA0D438(0, &qword_1EB641F80, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA0D3E4();
  sub_1AFDFF3F8();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_1AF479914();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 3;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA0C3FC()
{
  v1 = 7892834;
  v2 = 0x6E6F697463697266;
  if (*v0 != 2)
  {
    v2 = 1885957222;
  }

  if (*v0)
  {
    v1 = 0x6963697473616C65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFA0C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA0C5E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA0C494(uint64_t a1)
{
  v2 = sub_1AFA0D3E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA0C4D0(uint64_t a1)
{
  v2 = sub_1AFA0D3E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA0C50C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA0C754(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

int32x2_t sub_1AFA0C588@<D0>(uint64_t a1@<X8>)
{
  sub_1AF57B4FC();
  v10 = v2;
  __asm { FMOV            V0.4S, #1.0 }

  sub_1AF57B4FC();
  *a1 = v10;
  *(a1 + 16) = v8;
  result = vdup_n_s32(0x3DCCCCCDu);
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AFA0C5E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6963697473616C65 && a2 == 0xEA00000000007974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697463697266 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1885957222 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1AFA0C754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA0D438(0, &qword_1EB641F70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA0D3E4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v22 = 0;
  sub_1AF4798C0();
  sub_1AFDFE768();
  v18 = v21;
  v19 = v20;
  LOBYTE(v20) = 1;
  sub_1AFDFE738();
  v12 = v11;
  LOBYTE(v20) = 2;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v20) = 3;
  v15 = sub_1AFDFE718();
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v17 = v18;
  *a2 = v19;
  *(a2 + 16) = v17;
  *(a2 + 32) = v12;
  *(a2 + 36) = v14;
  *(a2 + 40) = v15 & 1;
  return result;
}

uint64_t sub_1AFA0C994(uint64_t a1, char a2, float32x4_t a3, float32x4_t a4)
{
  result = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v8 = *(a1 + 48);
  v9 = *(a1 + 56) - v8;
  if (v9)
  {
    v10 = (result + 16 * v8);
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      v17 = v7.i32[3];
      v18 = *v10;
      v19 = vabdq_f32(*v10, a3);
      v7 = v19;
      v7.i32[3] = v17;
      if (a2)
      {
        v20 = vcgtq_f32(v7, a4);
        if ((v20.i32[2] | v20.i32[1] | v20.i32[0]) < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v21 = vcgtq_f32(a4, v7);
        if ((v21.i32[2] & v21.i32[1] & v21.i32[0]) < 0)
        {
LABEL_9:
          v22 = vsubq_f32(v18, a3);
          *v23.f32 = vsub_f32(*v19.f32, *a4.f32);
          v23.f32[2] = v19.f32[2] - a4.f32[2];
          v23.i32[3] = 0;
          v24 = vandq_s8(vorrq_s8(vandq_s8(v22, v11), _Q2), vorrq_s8(vcltzq_f32(v22), vcgtzq_f32(v22)));
          v25 = vmaxnmq_f32(v23, 0);
          *v18.f32 = vsub_f32(*v18.f32, vmul_f32(*v24.i8, *v25.f32));
          v18.f32[2] = v18.f32[2] - vmuls_lane_f32(*&v24.i32[2], v25, 2);
          v18.i32[3] = 1.0;
          *v10 = v18;
        }
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1AFA0CAD4(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  sub_1AF3CD2A8(v2, v87);
  v5 = v87[0];
  v4 = v87[1];
  v7 = v87[2];
  v6 = v87[3];
  v8 = v88;

  v76 = v8;
  if (v8 == 2)
  {
    v76 = 0;
    v73 = xmmword_1AFE208C0;
    v84 = xmmword_1AFE201A0;
  }

  else
  {
    v9.i64[0] = v5;
    v9.i64[1] = v4;
    v84 = v9;
    v9.i64[0] = v7;
    v9.i64[1] = v6;
    v73 = v9;
  }

  sub_1AF3C9244(v2, v89);
  if (v90)
  {
    v10.f32[0] = sub_1AF5AF890(v2);
    v80 = v11;
    v82 = v10;
    v78 = v12;
    v74 = v13;
  }

  else
  {
    v80 = v89[1];
    v82 = v89[0];
    v78 = v89[2];
    v74 = v89[3];
  }

  v14 = *(a1 + 104);
  v102 = *(a1 + 88);
  v103 = v14;
  v104 = *(a1 + 120);
  sub_1AF5C9174(v91);
  v100[0] = v91[0];
  v100[1] = v91[1];
  v101 = v92;
  sub_1AF6B06C0(v3, v100, 0x200000000, v93);
  if (*v93)
  {
    v72 = v96;
    if (v96 <= 0)
    {
      v107 = *&v93[32];
      v108 = v94;
      v109 = v95;
      v110 = v96;
      v105 = *v93;
      v106 = *&v93[16];
      sub_1AF5DD298(&v105, v86);
      sub_1AFA0D244(v91);
    }

    else
    {
      v71 = *(&v94 + 1);
      if (*(&v94 + 1))
      {
        v75 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v74, v78, v84, 2), v80, *v84.f32, 1), v82, v84.f32[0]);
        v70 = *&v93[40];
        v15 = *(&v95 + 1);
        v69 = v95;
        v16 = *(v95 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v17 = *(*(&v95 + 1) + 32);
        v97 = *v93;
        v98 = *&v93[8];
        v99 = *&v93[24];
        v86[2] = *&v93[32];
        v86[3] = v94;
        v86[4] = v95;
        v86[5] = v96;
        v86[0] = *v93;
        v86[1] = *&v93[16];
        sub_1AF5DD298(v86, &v105);
        v18 = 0;
        v68 = v16;
        v67 = v17;
        while (1)
        {
          v85 = v18;
          v19 = (v70 + 48 * v18);
          v21 = *v19;
          v20 = v19[1];
          v22 = v19[2];
          v23 = *(v19 + 2);
          v24 = *(v19 + 3);
          v25 = *(v19 + 4);
          v26 = *(v19 + 5);
          if (v16)
          {
            v27 = *(v26 + 376);

            os_unfair_lock_lock(v27);
            os_unfair_lock_lock(*(v26 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v17);
          v79 = *(v15 + 64);
          v81 = *(v15 + 48);
          v77 = *(v15 + 80);
          v28 = *(*(*(*(v26 + 40) + 16) + 32) + 16) + 1;
          *(v15 + 48) = ecs_stack_allocator_allocate(*(v15 + 32), 48 * v28, 8);
          *(v15 + 56) = v28;
          *(v15 + 72) = 0;
          *(v15 + 80) = 0;
          *(v15 + 64) = 0;
          *&v105 = v69;
          *(&v105 + 1) = v26;
          v83 = v26;
          *&v106 = v15;
          *(&v106 + 1) = v22;
          *&v107 = (v20 - v21 + v22);
          *(&v107 + 1) = v72;
          *&v108 = v21;
          *(&v108 + 1) = v20;
          v109 = 0uLL;
          LOBYTE(v110) = 1;
          *(&v110 + 1) = v23;
          v111 = v24;
          v112 = v25;
          sub_1AFA0C994(&v105, v76 & 1, v75, v73);
          v29 = *(v15 + 48);
          v30 = *(v15 + 64);
          if (!v30)
          {
            v52 = *(v15 + 56);
            v53 = *(v15 + 32);
            v54 = v85;
            goto LABEL_45;
          }

          for (i = 0; i != v30; ++i)
          {
            v33 = (v29 + 48 * i);
            v34 = *v33;
            v35 = v33[4];
            v36 = *(v15 + 72);
            if (v36)
            {
              v37 = v34 == v36;
            }

            else
            {
              v37 = 0;
            }

            if (v37)
            {
              goto LABEL_17;
            }

            v38 = v97;
            if (!v97[11])
            {
              goto LABEL_17;
            }

            v39 = v33[2];
            v40 = v97 + 41;
            v41 = v97[9];
            if (v41 >= 0x10)
            {
              v42 = &v40[v97[8]];
              v43 = v41 >> 4;
              v44 = v97 + 41;
              while (*v42 != v34)
              {
                ++v44;
                v42 += 16;
                if (!--v43)
                {
                  goto LABEL_33;
                }
              }

              v45 = v44[v97[10]];
              v46 = v45 > 5;
              v47 = (1 << v45) & 0x23;
              if (v46 || v47 == 0)
              {
LABEL_17:

                v35(v32);

                continue;
              }
            }

LABEL_33:
            if (swift_conformsToProtocol2() && v39)
            {
              if (sub_1AF5FC8D8(v39))
              {
                goto LABEL_17;
              }

              v49 = v38[9];
              if (v49 < 0x10)
              {
                goto LABEL_17;
              }

              v50 = &v40[v38[8]];
              v51 = 16 * (v49 >> 4);
              while (*v50 != v39)
              {
                v50 += 16;
                v51 -= 16;
                if (!v51)
                {
                  goto LABEL_17;
                }
              }
            }
          }

          v52 = *(v15 + 56);
          v29 = *(v15 + 48);
          v53 = *(v15 + 32);
          v54 = v85;
          if (*(v15 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v17 = v67;
LABEL_45:
          ecs_stack_allocator_deallocate(v53, v29, 48 * v52);
          *(v15 + 48) = v81;
          *(v15 + 64) = v79;
          *(v15 + 80) = v77;
          if (*(*(v15 + 104) + 16))
          {

            sub_1AF62F348(v55, v83);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57 = *(v15 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v58 = v57[2];
              v59 = swift_isUniquelyReferenced_nonNull_native();
              *(v15 + 104) = v57;
              if ((v59 & 1) == 0)
              {
                v57 = sub_1AF420EA0(0, v58, 1, v57);
                *(v15 + 104) = v57;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v58)
              {
                v60 = v57[2] - v58;
                memmove(v57 + 4, &v57[9 * v58 + 4], 72 * v60);
                v57[2] = v60;
              }

              *(v15 + 104) = v57;
            }

            else
            {
              v61 = MEMORY[0x1E69E7CC0];
              if (v57[3] >= 2uLL)
              {
                sub_1AF9FA280();
                v61 = swift_allocObject();
                v62 = j__malloc_size_0(v61);
                v61[2] = 0;
                v61[3] = 2 * ((v62 - 32) / 72);
              }

              *(v15 + 104) = v61;
            }

            if (*(*(v15 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v63 = *(v83 + 232);
              v64 = *(v83 + 256);
              if (v63 == v64)
              {
                v65 = *(v83 + 240);
              }

              else
              {
                sub_1AF6497A0(v64, v63);
                v64 = *(v83 + 232);
                v65 = *(v83 + 240);
                if (v65 == v64)
                {
                  v65 = 0;
                  v64 = 0;
                  *(v83 + 232) = 0;
                  *(v83 + 240) = 0;
                }
              }

              *(v83 + 248) = v65;
              *(v83 + 256) = v64;
            }
          }

          ecs_stack_allocator_pop_snapshot(v17);
          v16 = v68;
          if (v68)
          {
            os_unfair_lock_unlock(*(v83 + 344));
            os_unfair_lock_unlock(*(v83 + 376));
          }

          v18 = v54 + 1;
          if (v18 == v71)
          {
            goto LABEL_67;
          }
        }
      }

      v107 = *&v93[32];
      v108 = v94;
      v109 = v95;
      v110 = v96;
      v105 = *v93;
      v106 = *&v93[16];
      sub_1AF5DD298(&v105, v86);
LABEL_67:

      sub_1AFA0D244(v91);
    }

    sub_1AF5D1564(v93);
    return sub_1AF5D1564(v93);
  }

  else
  {
    sub_1AFA0D244(v91);
  }
}

uint64_t sub_1AFA0D244(uint64_t a1)
{
  sub_1AFA0D2A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA0D2A0()
{
  if (!qword_1EB641F68)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641F68);
    }
  }
}

__n128 initializeWithCopy for ParticleLocalBoxCollider(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleLocalBoxCollider(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleLocalBoxCollider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA0D3E4()
{
  result = qword_1EB641F78;
  if (!qword_1EB641F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F78);
  }

  return result;
}

void sub_1AFA0D438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA0D3E4();
    v7 = a3(a1, &type metadata for ParticleLocalBoxCollider.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA0D4B0()
{
  result = qword_1EB641F88;
  if (!qword_1EB641F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F88);
  }

  return result;
}

unint64_t sub_1AFA0D508()
{
  result = qword_1EB641F90;
  if (!qword_1EB641F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F90);
  }

  return result;
}

unint64_t sub_1AFA0D560()
{
  result = qword_1EB641F98;
  if (!qword_1EB641F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641F98);
  }

  return result;
}

double sub_1AFA0D60C@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE916A0;
  *(a1 + 16) = 0;
  result = NAN;
  *(a1 + 20) = 0xFFFFFFFF000000FFLL;
  *(a1 + 28) = 0;
  return result;
}

double sub_1AFA0D62C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA0E3F4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AFA0D668(void *a1)
{
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  v10 = v1[1];
  v14 = *v1;
  v15 = v10;
  result = sub_1AFA09ECC(a1, &v12[-v8]);
  if (!v2)
  {
    v13 = *(&v15 + 1);
    v12[7] = 12;
    sub_1AF480018();
    sub_1AFDFE918();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double sub_1AFA0D7B0()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF5C912C(v1);

  result = *v1;
  xmmword_1EB6C3500 = v1[0];
  *algn_1EB6C3510 = v1[1];
  qword_1EB6C3520 = v2;
  return result;
}

void sub_1AFA0D85C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB637238 != -1)
  {
    swift_once();
  }

  v63[0] = xmmword_1EB6C3500;
  v63[1] = *algn_1EB6C3510;
  v64 = qword_1EB6C3520;
  sub_1AF6B06C0(a1, v63, a4 & 0xFFFFFFFFFFLL, v45);
  v38 = *&v45[0];
  if (*&v45[0])
  {
    v11 = *(&v45[2] + 1);
    v12 = *(&v46 + 1);
    v34 = *(&v47 + 1);
    v37 = v47;
    v50 = *(v45 + 8);
    v51 = *(&v45[1] + 8);
    MEMORY[0x1EEE9AC00](v9, v10);
    v35 = v27;
    v36 = v13;
    v27[2] = v4;
    v27[3] = a1;
    v28 = a4;
    v29 = v14;
    v30 = a1;
    v31 = a2;
    v32 = a3;
    if (v13 > 0 && v12)
    {
      v33 = &v33;
      v15 = v34;
      v16 = v34[4];
      v43 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v44[2] = v45[2];
      v44[3] = v46;
      v44[4] = v47;
      v44[5] = v48;
      v44[0] = v45[0];
      v44[1] = v45[1];
      sub_1AF5DD298(v44, v58);
      for (i = (v11 + 24); ; i += 6)
      {
        v42 = 0;
        v18 = v16;
        v19 = *(i - 6);
        v20 = *(i - 5);
        v21 = *(i - 4);
        v22 = *(i - 1);
        v40 = *i;
        v41 = v22;
        v23 = i[2];
        v39 = i[1];
        if (v43)
        {
          v24 = *(v23 + 376);

          v15 = v34;
          os_unfair_lock_lock(v24);
          os_unfair_lock_lock(*(v23 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v18);

        sub_1AF630914(v25, v15, v49);

        LOBYTE(v52) = 1;
        v58[0] = v37;
        v58[1] = v23;
        v58[2] = v15;
        v58[3] = v21;
        v58[4] = (v20 - v19 + v21);
        v58[5] = v36;
        v58[6] = v19;
        v58[7] = v20;
        v58[8] = 0;
        v58[9] = 0;
        v59 = 1;
        v60 = v41;
        v61 = v40;
        v62 = v39;
        v26 = v42;
        sub_1AF889C7C(v58, sub_1AFA0E5A0, v35);
        if (v26)
        {
          break;
        }

        v55 = v38;
        v56 = v50;
        v57 = v51;
        sub_1AF630994(v15, &v55, v49);
        sub_1AF62D29C(v23);
        ecs_stack_allocator_pop_snapshot(v18);
        v16 = v18;
        if (v43)
        {
          os_unfair_lock_unlock(*(v23 + 344));
          os_unfair_lock_unlock(*(v23 + 376));
        }

        if (!--v12)
        {
          sub_1AF5D1564(v45);
          sub_1AF5D1564(v45);
          return;
        }
      }

      v52 = v38;
      v53 = v50;
      v54 = v51;
      sub_1AF630994(v15, &v52, v49);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v23 + 344));
      os_unfair_lock_unlock(*(v23 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v45);
    }
  }
}

uint64_t sub_1AFA0DBF0(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 160);
  result = sub_1AF3CA3E4(*(a2 + 24));
  if (v13)
  {
    v14 = result;

    if (v14)
    {
      v15 = *(a4 + 84) & *(a2 + 20);
      if (v15)
      {
        v16 = *(a4 + 80);
        v17 = *(a2 + 16) + v16;
        v18 = fminf(fmaxf(*(a2 + 12) + *(a4 + 76), 0.0), 1.0);
        v19 = fminf(fmaxf(*(a2 + 8) + *(a4 + 72), 0.0), 1.0);
        __asm { FMOV            V4.2S, #1.0 }

        *&v134 = vminnm_f32(vmaxnm_f32(vadd_f32(*a2, *(a4 + 64)), 0), _D4);
        *(&v134 + 2) = v19;
        *(&v134 + 3) = 1.0 - v18;
        v135 = v17;
        v136 = v15;
        v24 = *(a4 + 96);
        v25 = *(a4 + 112);
        v26 = *(a4 + 128);
        v27 = *(a4 + 144);
        v112 = *a3->f32;
        v114 = *a3[4].f32;
        v140.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*a3->f32)), v25, *a3, 1), v26, *a3->f32, 2), v27, *a3->f32, 3);
        v116 = *a3[2].f32;
        v140.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v116.f32[0]), v25, a3[2], 1), v26, v116, 2), v27, v116, 3);
        v140.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v114.f32[0]), v25, *v114.f32, 1), v26, v114, 2), v27, v114, 3);
        v140.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*a3[6].f32)), v25, a3[6], 1), v26, *a3[6].f32, 2), v27, *a3[6].f32, 3);
        v106 = v140.columns[1];
        v107 = v140.columns[0];
        v104 = v140.columns[3];
        v105 = v140.columns[2];
        v141 = __invert_f4(v140);
        v102 = v141.columns[1];
        v103 = v141.columns[0];
        v100 = v141.columns[3];
        v101 = v141.columns[2];
        if (v16 != 0.0)
        {
          v28 = vmulq_f32(v112, v112);
          v29 = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
          v30 = vmulq_f32(v116, v116);
          v31 = vmulq_f32(v114, v114);
          v32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v31.i8), vzip2_s32(*v30.i8, *v31.i8))));
          if (v29 != *v32.i32 || (vceq_f32(v32, vdup_lane_s32(v32, 1)).u8[0] & 1) == 0)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v33 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v88 = v33;
              swift_once();
              v33 = v88;
            }

            v129[0] = 0;
            sub_1AF0D4F18(v33, v129, 0xD00000000000004ALL, 0x80000001AFF43BF0);
          }
        }

        v34 = a6;
        if ((a6 & 0xFE00000000) != 0)
        {
          v34 = 0;
        }

        v99 = v34;
        if (a6)
        {
          v35 = (a6 & 0xFE00000000) != 0;
        }

        else
        {
          v35 = 1;
        }

        v98 = v35;
        v36 = *(a4 + 40);
        v137[0] = *(a4 + 24);
        v137[1] = v36;
        v138 = *(a4 + 56);
        sub_1AF6B06C0(a5, v137, 0x200000000, &v118);
        if (v118)
        {
          v97 = v125;
          if (v125 <= 0)
          {
            sub_1AF5D1564(&v118);
          }

          else
          {
            v96 = v122;
            if (v122)
            {
              v37 = 0;
              v38 = vmulq_f32(v107, v107);
              v39 = vmulq_f32(v106, v106);
              v40 = vmulq_f32(v105, v105);
              v41 = vtrn2q_s32(v38, v39);
              v41.i32[2] = v40.i32[1];
              v42 = vaddq_f32(vzip1q_s32(vzip2q_s32(v38, v40), vdupq_laneq_s32(v39, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v38, v40), v39), v41));
              v43 = vceqzq_f32(v42);
              __asm { FMOV            V2.4S, #1.0 }

              v43.i32[3] = 0;
              v45 = vbslq_s8(vcltzq_s32(v43), v42, vdivq_f32(_Q2, v42));
              v93 = vmulq_lane_f32(v106, *v45.f32, 1);
              v94 = vmulq_n_f32(v107, v45.f32[0]);
              v92 = vmulq_laneq_f32(v105, v45, 2);
              v91 = v121;
              v90 = v123;
              v46 = *(v123 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v115 = *(v124 + 32);
              v126 = v118;
              v127 = v119;
              v128 = v120;
              v89 = v46;
              v108 = v14;
              v95 = a4;
              v117 = v124;
              do
              {
                v113 = v37;
                v47 = (v91 + 48 * v37);
                v48 = *v47;
                v49 = v47[1];
                v50 = v47[2];
                v52 = *(v47 + 2);
                v51 = *(v47 + 3);
                v53 = *(v47 + 4);
                v54 = *(v47 + 5);
                if (v46)
                {
                  v55 = *(v54 + 376);

                  os_unfair_lock_lock(v55);
                  os_unfair_lock_lock(*(v54 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v115);
                v56 = v117;
                v110 = *(v117 + 64);
                v111 = *(v117 + 48);
                v109 = *(v117 + 80);
                v57 = *(*(*(*(v54 + 40) + 16) + 32) + 16) + 1;
                *(v117 + 48) = ecs_stack_allocator_allocate(*(v117 + 32), 48 * v57, 8);
                *(v117 + 56) = v57;
                *(v117 + 72) = 0;
                *(v117 + 80) = 0;
                *(v117 + 64) = 0;
                v129[0] = v90;
                v139 = v54;
                v129[1] = v54;
                v129[2] = v117;
                v129[3] = v50;
                v129[4] = (v49 - v48 + v50);
                v129[5] = v97;
                v129[6] = v48;
                v129[7] = v49;
                v129[8] = 0;
                v129[9] = 0;
                v130 = 1;
                v131 = v52;
                v132 = v51;
                v133 = v53;
                sub_1AFA0E5DC(v129, &v134, v95, v99 | (v98 << 32), v108, v11, v103, v102, v101, v100, v107, v106, v105, v58, v59, v60, v104, v94, v93, v92);
                v61 = *(v117 + 48);
                v62 = *(v117 + 64);
                if (!v62)
                {
                  v84 = *(v117 + 56);
                  v85 = *(v117 + 32);
                  v86 = v113;
                  goto LABEL_55;
                }

                for (i = 0; i != v62; ++i)
                {
                  v65 = (v61 + 48 * i);
                  v66 = *v65;
                  v67 = v65[4];
                  v68 = *(v56 + 72);
                  if (v68)
                  {
                    _ZF = v66 == v68;
                  }

                  else
                  {
                    _ZF = 0;
                  }

                  if (_ZF)
                  {
                    goto LABEL_27;
                  }

                  v70 = v126;
                  if (!v126[11])
                  {
                    goto LABEL_27;
                  }

                  v71 = v65[2];
                  v72 = v126 + 41;
                  v73 = v126[9];
                  if (v73 >= 0x10)
                  {
                    v74 = &v72[v126[8]];
                    v75 = v73 >> 4;
                    v76 = v126 + 41;
                    while (*v74 != v66)
                    {
                      ++v76;
                      v74 += 16;
                      if (!--v75)
                      {
                        goto LABEL_43;
                      }
                    }

                    v77 = v76[v126[10]];
                    v78 = v77 > 5;
                    v79 = (1 << v77) & 0x23;
                    if (v78 || v79 == 0)
                    {
LABEL_27:

                      v67(v64);

                      goto LABEL_28;
                    }
                  }

LABEL_43:
                  if (swift_conformsToProtocol2() && v71)
                  {
                    if (sub_1AF5FC8D8(v71))
                    {
                      goto LABEL_27;
                    }

                    v81 = v70[9];
                    if (v81 < 0x10)
                    {
                      goto LABEL_27;
                    }

                    v82 = &v72[v70[8]];
                    v83 = 16 * (v81 >> 4);
                    while (*v82 != v71)
                    {
                      v82 += 16;
                      v83 -= 16;
                      if (!v83)
                      {
                        goto LABEL_27;
                      }
                    }
                  }

LABEL_28:
                  v56 = v117;
                }

                v84 = *(v117 + 56);
                v61 = *(v117 + 48);
                v85 = *(v117 + 32);
                v86 = v113;
                if (*(v117 + 64) >= 1)
                {
                  swift_arrayDestroy();
                }

LABEL_55:
                v46 = v89;
                v87 = v139;
                ecs_stack_allocator_deallocate(v85, v61, 48 * v84);
                *(v56 + 48) = v111;
                *(v56 + 64) = v110;
                *(v56 + 80) = v109;
                sub_1AF62D29C(v87);
                ecs_stack_allocator_pop_snapshot(v115);
                if (v89)
                {
                  os_unfair_lock_unlock(*(v87 + 344));
                  os_unfair_lock_unlock(*(v87 + 376));
                }

                v37 = v86 + 1;
              }

              while (v37 != v96);
            }

            return sub_1AF5D1564(&v118);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1AFA0E318(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AFA09D74(a1, v9);
  if (v9[28])
  {
    v4 = v9[11];
    MEMORY[0x1EEE9AC00](v3, v9[7]);
    v8[2] = v9;
    sub_1AF63291C(0, v5, 1, a2 | ((HIDWORD(a2) & 1) << 32), v6, sub_1AFA09DD0, v8, v4);
    ecs_stack_allocator_deallocate(*(v4 + 32), v9[26], 80 * v9[27]);
  }

  sub_1AFA1C110(v9);
  return sub_1AFA09D20(v9);
}

uint64_t sub_1AFA0E3F4@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  v14 = xmmword_1AFE916A0;
  *&v15 = 0xFF00000000;
  sub_1AFA09EFC(a1, 0);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v13[15] = 12;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  result = (*(v7 + 8))(v10, v6);
  *(&v15 + 1) = v16;
  v12 = v15;
  *a2 = v14;
  a2[1] = v12;
  return result;
}

uint64_t sub_1AFA0E5DC(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, float a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17, float32x4_t a18, float32x4_t a19, float32x4_t a20)
{
  v1003 = *MEMORY[0x1E69E9840];
  v956 = *(a1 + 8);
  v925 = sub_1AF705C38(v956, a1);
  v926 = sub_1AF705CCC(v956, a1);
  v895 = sub_1AF9C5D1C();
  v907 = v24;
  v898 = sub_1AF9C5D08();
  v910 = v25;
  v894 = sub_1AF9C5E38();
  v906 = v26;
  v968 = *a2;
  v992 = *(a1 + 96);
  v27 = *(a1 + 64);
  v991 = *(a1 + 80);
  v990 = v27;
  v28 = *(a1 + 32);
  v989 = *(a1 + 48);
  v29 = *(a1 + 16);
  v986 = *a1;
  v987 = v29;
  *(&v969 + 1) = &type metadata for CollisionProperties;
  *&v970 = &off_1F2553AE0;
  *&v969 = *(a2 + 2);
  v917 = a3;
  v30 = *(a3 + 16);
  v979[1] = 0;
  v979[0] = 0;
  v988 = v28;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v33 = *(a1 + 16);
  v34 = *(v33 + 32);

  v893 = ecs_stack_allocator_allocate(v34, 8 * (v32 - v31), 8);
  v993 = v893;
  v994 = v32 - v31;
  v995 = 0;
  sub_1AF441194(&v968, v980);
  v984 = a6;
  v983 = v30;
  sub_1AF649C6C(*(v956 + 40), &type metadata for Anchored, v967);
  v901 = v967[0];
  v985 = v967[0];
  v35 = ecs_stack_allocator_allocate(*(v33 + 32), 80 * (v32 - v31), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v968);
  v912 = v32;
  v892 = v35;
  v996 = v35;
  v997 = v32 - v31;
  v998 = 0;
  if (v32 != v31)
  {
    v38 = v31;
    v896 = 0;
    v897 = 0;
    v909 = *(a3 + 80) * 0.5;
    v905 = a6;
    while (1)
    {
      v42 = 16 * v38;
      v43 = *(v926 + 16 * v38);
      v44 = a6 * v43.f32[0];
      v45 = vmuls_lane_f32(a6, *v43.f32, 1);
      v43.f32[0] = vmuls_lane_f32(a6, v43, 2);
      v46 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a10, a9, COERCE_FLOAT(*(v925 + 16 * v38 + 8)) - v43.f32[0]), a8, COERCE_FLOAT(HIDWORD(*(v925 + 16 * v38))) - v45), a7, COERCE_FLOAT(*(v925 + 16 * v38)) - v44);
      v47 = v46;
      v47.i32[3] = v36;
      v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a9, v43.f32[0]), a8, v45), a7, v44);
      v49 = v48;
      v49.i32[3] = v927;
      v937 = v38;
      v930 = v47.i32[3];
      if ((*(v917 + 80) & 0x7FFFFFFF) == 0)
      {
        sub_1AF8C5760(1, v999, v47, v49);
        if ((v1002 & 1) == 0)
        {
          v54 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(a20, v1001, 2), a19, *v1001.f32, 1), a18, v1001.f32[0]);
          v55 = vmulq_f32(v54, v54);
          v56 = vaddv_f32(*v55.f32);
          v57 = (v55.f32[2] + v56) != 0.0;
          if (v907)
          {
            v938 = 0;
            v932 = 0;
          }

          else
          {
            v832 = (v895 + 16 * v937);
            v938 = *v832;
            v932 = v832[1];
          }

          v55.f32[0] = v55.f32[2] + v56;
          v954 = *v55.f32;
          v964 = v54;
          if (v906)
          {
            v833 = 0;
          }

          else
          {
            v833 = *(v894 + 4 * v937);
          }

          v834 = v999[0];
          v948 = v1000;
          v835 = v981;
          v836 = v982;
          sub_1AF441150(v980, v981);
          v837 = (*(v836 + 56))(v835, v836);
          if (v837 > 0.0)
          {
            if (v837 >= 1.0 || (v838 = v837, v839 = drand48(), v838 > v839))
            {
              v893[v896++] = v937;
              v995 = v896;
            }
          }

          v840 = vdupq_lane_s32(v954, 0);
          v840.i32[3] = 0;
          v841 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a17, a13, v948, 2), a12, *v948.f32, 1), a11, v948.f32[0]);
          v842 = vrsqrteq_f32(v840);
          v843 = vmulq_f32(v842, vrsqrtsq_f32(v840, vmulq_f32(v842, v842)));
          v844 = vmulq_f32(v843, v843);
          v845 = vmulq_f32(v964, vmulq_f32(v843, vrsqrtsq_f32(v840, v844)));
          v846 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v57)), 0x1FuLL));
          v846.i32[3] = 0;
          v955 = vbslq_s8(vcltzq_s32(v846), v845, v964);
          v944 = v841;
          if (v901)
          {
            *v844.f32 = vsub_f32(*v841.f32, *(v925 + v42));
            v844.f32[2] = v841.f32[2] - COERCE_FLOAT(*(v925 + v42 + 8));
            v923 = v844;
            v847 = v844;
            v847.i32[3] = 0;
            v965 = v847;
            v949 = *(v926 + v42);
            v847.i32[3] = HIDWORD(v949);
            *(v926 + v42) = v847;
            v848 = v981;
            v849 = v982;
            sub_1AF441150(v980, v981);
            v850 = (*(v849 + 8))(v848, v849);
            v851 = v981;
            v852 = v982;
            sub_1AF441150(v980, v981);
            (*(v852 + 32))(v851, v852);
            v855 = v955;
            v854 = v965;
            v854.i32[3] = v928.i32[3];
            v856 = vaddq_f32(v923, 0);
            v857 = vmulq_f32(v856, v955);
            v858 = v857.f32[2] + vaddv_f32(*v857.f32);
            v966 = v854;
            v859 = v854;
            if (v858 < 0.0)
            {
              v860 = vmulq_n_f32(v955, v858);
              v859 = vmlaq_n_f32(vmulq_n_f32(v860, -v850), vsubq_f32(v856, v860), v853);
            }

            v859.i32[3] = HIDWORD(v949);
            v924 = v859;
            *(v926 + 16 * v937) = v859;
          }

          else
          {
            v861 = v981;
            v862 = v982;
            sub_1AF441150(v980, v981);
            v863 = (*(v862 + 8))(v861, v862);
            v864 = v981;
            v865 = v982;
            sub_1AF441150(v980, v981);
            (*(v865 + 32))(v864, v865);
            v867 = *(v925 + v42);
            v868 = v867;
            v868.i32[3] = v888;
            v869 = *(v926 + v42);
            v870 = v869;
            v870.i32[3] = v889;
            v871 = vaddq_f32(v869, 0);
            v855 = v955;
            v872 = vmulq_f32(v871, v955);
            v873 = v872.f32[2] + vaddv_f32(*v872.f32);
            v874 = v868;
            v875 = v870;
            if (v873 < 0.0)
            {
              v876 = vmulq_n_f32(v955, v873);
              v875 = vmlaq_n_f32(vmulq_n_f32(v876, -v863), vsubq_f32(v871, v876), v866);
              v874 = vmlaq_n_f32(vmlaq_f32(v944, vdupq_n_s32(0x38D1B717u), v955), v875, (1.0 - v834) * a6);
            }

            v875.i32[3] = v869.i32[3];
            v924 = v875;
            *(v926 + v42) = v875;
            v874.i32[3] = v867.i32[3];
            *(v925 + v42) = v874;
            v966 = v928;
          }

          v855.i32[3] = v929.i32[3];
          v950 = v855;
          v877 = v981;
          v878 = v982;
          sub_1AF441150(v980, v981);
          v879 = (*(v878 + 80))(v877, v878);
          if (v879 <= 0.0 || v879 < 1.0 && (v880 = v879, v881 = drand48(), v880 <= v881))
          {
            v41 = v937;
            v36 = v930;
            v39 = v966;
            v40 = v950;
          }

          else
          {
            *v882.f32 = vadd_f32(*v944.f32, vmul_f32(*v955.f32, vdup_n_s32(0x3C23D70Au)));
            v882.f32[2] = v944.f32[2] + vmuls_lane_f32(0.01, v955, 2);
            v882.i32[3] = 0;
            v883 = v924;
            v883.i32[3] = v886;
            LOBYTE(v968) = v907 & 1;
            v967[0] = v906 & 1;
            v884 = &v892[10 * v897];
            v40 = v950;
            *v884 = v882;
            v884[1] = v950;
            v884[2] = v883;
            v884[3].i64[0] = v938;
            v884[3].i64[1] = v932;
            v884[4].i8[0] = v907 & 1;
            v884[4].i32[1] = v833;
            v884[4].i8[8] = v906 & 1;
            v998 = ++v897;
            v41 = v937;
            v36 = v930;
            v39 = v966;
          }

          goto LABEL_7;
        }

        goto LABEL_5;
      }

      __asm { FMOV            V3.4S, #1.0 }

      v945 = v48;
      v951 = v46;
      v941 = _Q3;
      if (v910)
      {
        _Q3.i32[3] = v908;
        v957 = _Q3;
      }

      else
      {
        v957 = *(v898 + 16 * v38);
      }

      v58 = sub_1AF8C4D20(0);
      if (!v58)
      {
        goto LABEL_448;
      }

      v61 = v58;
      v62 = v59;
      v63 = v60;
      v64 = v909 * fmaxf(fmaxf(*v957.i32, *&v957.i32[2]), *&v957.i32[1]);
      if (v59 != 30)
      {
        break;
      }

      v65 = *(a5 + 40);
      v66 = *(v65 + 16);
      if (v66)
      {
        v911 = v42;
        v67 = v65 + 32;
        v68 = -v64;
        v918 = vnegq_f32(v945);
        v920 = vextq_s8(vuzp1q_s32(v945, v945), v945, 0xCuLL);
        v69 = vmulq_f32(v945, v945);
        v70 = v69.f32[2] + vaddv_f32(*v69.f32);
        v71 = -v70;

        v72 = 0;
        v939 = 0u;
        v942 = 0u;
        v73 = 0.0;
        v958 = 1;
        v933 = v66;
        while (2)
        {
          v74 = (v67 + 176 * v72);
          v75 = *v74;
          v76 = v74[2];
          v969 = v74[1];
          v970 = v76;
          v968 = v75;
          v77 = v74[3];
          v78 = v74[4];
          v79 = v74[6];
          v973 = v74[5];
          v974 = v79;
          v971 = v77;
          v972 = v78;
          v80 = v74[7];
          v81 = v74[8];
          v82 = v74[10];
          v977 = v74[9];
          v978 = v82;
          v975 = v80;
          v976 = v81;
          if (v968 != 3)
          {
            goto LABEL_21;
          }

          v83 = v970;
          if (!v970)
          {
            goto LABEL_21;
          }

          v84 = v67;
          v85 = *(&v970 + 1);
          v86 = *(&v972 + 1);
          if (v973 == 4)
          {
            swift_unknownObjectRetain_n();
            sub_1AF6E52F0(&v968, v967);
            if ([v83 storageMode] == 2)
            {
              goto LABEL_448;
            }

            v87 = [v83 contents];
            v88 = v83;
            if (v86 >= 1)
            {
              v92 = 0;
              v93 = &v87[v85];
              v94.i64[0] = 0x3F0000003F000000;
              v94.i64[1] = 0x3F0000003F000000;
              v66 = v933;
              v67 = v84;
              while (1)
              {
                v103 = &v93[4 * v92];
                if (__OFADD__(v92, 3))
                {
                  v92 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v92 += 3;
                }

                v104 = v61 + v63 * *v103;
                v91.i64[0] = *v104;
                v105 = *(v104 + 2);
                v106 = v91;
                v106.i32[2] = v105;
                v107 = v61 + v63 * *(v103 + 1);
                v90.i64[0] = *v107;
                v108 = *(v107 + 2);
                v109 = v90;
                v109.i32[2] = v108;
                v110 = v61 + v63 * *(v103 + 2);
                v89.i64[0] = *v110;
                v111 = v89;
                v111.i32[2] = *(v110 + 2);
                v112 = vsubq_f32(v109, v106);
                v113 = vsubq_f32(v111, v106);
                v114 = vnegq_f32(v112);
                v115 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), v114), v113, vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL));
                v116 = vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL);
                v117 = vmulq_f32(v115, v115);
                v117.f32[0] = v117.f32[1] + (v117.f32[2] + v117.f32[0]);
                v118 = vdupq_lane_s32(*v117.f32, 0);
                v118.i32[3] = 0;
                v119 = vrsqrteq_f32(v118);
                v120 = vmulq_f32(v119, vrsqrtsq_f32(v118, vmulq_f32(v119, v119)));
                v121 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v117.f32[0] != 0.0)), 0x1FuLL));
                v121.i32[3] = 0;
                v122 = vbslq_s8(vcltzq_s32(v121), vmulq_f32(vmulq_f32(v120, vrsqrtsq_f32(v118, vmulq_f32(v120, v120))), v116), v116);
                v123 = vmulq_f32(v945, v122);
                v124 = v123.f32[2] + vaddv_f32(*v123.f32);
                if (v124 >= 0.0)
                {
                  goto LABEL_34;
                }

                v91.i32[2] = v105;
                v125 = vmulq_f32(v91, v122);
                v126 = vmulq_f32(v951, v122);
                *v125.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v126, v126, 8uLL), *&vextq_s8(v125, v125, 8uLL)), vadd_f32(vzip1_s32(*v126.i8, *v125.i8), vzip2_s32(*v126.i8, *v125.i8)));
                v127 = vsub_f32(*v125.i8, vdup_lane_s32(*v125.i8, 1)).f32[0];
                if (v127 < v68)
                {
                  goto LABEL_34;
                }

                v90.i32[2] = v108;
                v89.i32[2] = *(v110 + 2);
                if (v127 <= v64)
                {
                  goto LABEL_45;
                }

                v128 = -(v127 - v64) / v124;
                if (v128 > 1.0)
                {
                  goto LABEL_34;
                }

                v129 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v113, v113, 0xCuLL), v113, 8uLL), v114), vextq_s8(vextq_s8(v112, v112, 0xCuLL), v112, 8uLL), v113);
                v130 = vmulq_f32(v129, v129);
                v130.f32[0] = v130.f32[2] + vaddv_f32(*v130.f32);
                v131.i64[0] = 0;
                v131.i32[2] = 0;
                if (fabsf(v130.f32[0]) >= 1.1755e-38)
                {
                  v132 = vmlaq_n_f32(v951, v945, v128);
                  v133 = vsubq_f32(v89, v132);
                  v134 = vsubq_f32(v90, v132);
                  v135 = vsubq_f32(v91, v132);
                  v136 = vextq_s8(vextq_s8(v134, v134, 0xCuLL), v134, 8uLL);
                  v137 = vextq_s8(vextq_s8(v133, v133, 0xCuLL), v133, 8uLL);
                  v138 = vmlaq_f32(vmulq_f32(v137, vnegq_f32(v134)), v136, v133);
                  v139 = vextq_s8(vextq_s8(v135, v135, 0xCuLL), v135, 8uLL);
                  v140 = vmlaq_f32(vmulq_f32(v139, vnegq_f32(v133)), v137, v135);
                  v141 = vmlaq_f32(vmulq_f32(v136, vnegq_f32(v135)), v139, v134);
                  v142 = vmulq_f32(v129, v138);
                  v143 = vmulq_f32(v129, v140);
                  v144 = vmulq_f32(v129, v141);
                  v145 = vdupq_laneq_s32(v143, 2);
                  v146 = vzip1q_s32(vzip1q_s32(v142, v144), v143);
                  v147 = vtrn2q_s32(v142, v143);
                  v147.i32[2] = v144.i32[1];
                  v148 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v142, v144), v145), vaddq_f32(v146, v147)), vdupq_lane_s32(*v130.f32, 0));
                  v144.i64[0] = 0xBF000000BF000000;
                  v144.i64[1] = 0xBF000000BF000000;
                  v131 = vcgeq_f32(v94, vabsq_f32(vaddq_f32(v148, v144)));
                }

                v131.i32[3] = v131.i32[2];
                if ((vminvq_u32(v131) & 0x80000000) == 0)
                {
LABEL_45:
                  v149 = vmulq_f32(v112, v112);
                  v150 = sqrtf(v149.f32[2] + vaddv_f32(*v149.f32));
                  v151 = vmulq_n_f32(v112, 1.0 / v150);
                  v152 = vextq_s8(vuzp1q_s32(v151, v151), v151, 0xCuLL);
                  v153 = vmlaq_f32(vmulq_f32(v152, v918), v151, v920);
                  v154 = vmulq_f32(v153, v153);
                  v155 = v154.f32[1] + (v154.f32[2] + v154.f32[0]);
                  v128 = 2.0;
                  v122 = 0uLL;
                  if (v155 != 0.0)
                  {
                    v156 = vmulq_f32(vaddq_f32(v91, v90), v94);
                    v157 = vsubq_f32(v951, v156);
                    v158 = vmlaq_f32(vmulq_f32(v152, vnegq_f32(v157)), v151, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL));
                    v159 = vmulq_f32(v153, v158);
                    v160 = (v159.f32[1] + (v159.f32[2] + v159.f32[0])) + (v159.f32[1] + (v159.f32[2] + v159.f32[0]));
                    v161 = vmulq_f32(v158, v158);
                    v162 = ((v155 * -4.0) * ((v161.f32[1] + (v161.f32[2] + v161.f32[0])) + (v68 * v64))) + (v160 * v160);
                    if (v162 >= 0.0)
                    {
                      v163 = (-v160 - sqrtf(v162)) / (v155 + v155);
                      if (v163 >= 0.0 && v163 <= 1.0)
                      {
                        v165 = v150 * 0.5;
                        v166 = vsubq_f32(vmlaq_n_f32(v951, v945, v163), v156);
                        v167 = vmulq_f32(v151, v166);
                        if (fabsf(v167.f32[2] + vaddv_f32(*v167.f32)) <= v165)
                        {
                          v168 = vmulq_f32(v166, v166);
                          *&v169 = v168.f32[2] + vaddv_f32(*v168.f32);
                          *v168.f32 = vrsqrte_f32(v169);
                          *v168.f32 = vmul_f32(*v168.f32, vrsqrts_f32(v169, vmul_f32(*v168.f32, *v168.f32)));
                          v170 = vmulq_n_f32(v166, vmul_f32(*v168.f32, vrsqrts_f32(v169, vmul_f32(*v168.f32, *v168.f32))).f32[0]);
                          v171 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL), vnegq_f32(v151)), v170, v152);
                          v172 = vextq_s8(vuzp1q_s32(v171, v171), v171, 0xCuLL);
                          v173 = vmlaq_f32(vmulq_f32(v152, vnegq_f32(v172)), v151, vextq_s8(vuzp1q_s32(v172, v172), v172, 0xCuLL));
                          v174 = vextq_s8(vuzp1q_s32(v173, v173), v173, 0xCuLL);
                          v175 = v163 >= 0.0;
                          v176 = v163 < 2.0;
                          _ZF = !v175 || !v176;
                          if (v175 && v176)
                          {
                            v178 = -1;
                          }

                          else
                          {
                            v178 = 0;
                          }

                          v122 = vandq_s8(v174, vdupq_n_s32(v178));
                          if (_ZF)
                          {
                            v128 = 2.0;
                          }

                          else
                          {
                            v128 = v163;
                          }
                        }
                      }
                    }
                  }

                  v179 = vsubq_f32(v89, v90);
                  v180 = vmulq_f32(v179, v179);
                  v181 = sqrtf(v180.f32[2] + vaddv_f32(*v180.f32));
                  v182 = vmulq_n_f32(v179, 1.0 / v181);
                  v183 = vextq_s8(vuzp1q_s32(v182, v182), v182, 0xCuLL);
                  v184 = vmlaq_f32(vmulq_f32(v183, v918), v182, v920);
                  v185 = vmulq_f32(v184, v184);
                  v186 = v185.f32[1] + (v185.f32[2] + v185.f32[0]);
                  if (v186 != 0.0)
                  {
                    v187 = vmulq_f32(vaddq_f32(v90, v89), v94);
                    v188 = vsubq_f32(v951, v187);
                    v189 = vmlaq_f32(vmulq_f32(v183, vnegq_f32(v188)), v182, vextq_s8(vuzp1q_s32(v188, v188), v188, 0xCuLL));
                    v190 = vmulq_f32(v184, v189);
                    v191 = (v190.f32[1] + (v190.f32[2] + v190.f32[0])) + (v190.f32[1] + (v190.f32[2] + v190.f32[0]));
                    v192 = vmulq_f32(v189, v189);
                    v193 = ((v186 * -4.0) * ((v192.f32[1] + (v192.f32[2] + v192.f32[0])) + (v68 * v64))) + (v191 * v191);
                    if (v193 >= 0.0)
                    {
                      v194 = (-v191 - sqrtf(v193)) / (v186 + v186);
                      if (v194 >= 0.0 && v194 <= 1.0)
                      {
                        v196 = v181 * 0.5;
                        v197 = vsubq_f32(vmlaq_n_f32(v951, v945, v194), v187);
                        v198 = vmulq_f32(v182, v197);
                        if (fabsf(v198.f32[2] + vaddv_f32(*v198.f32)) <= v196)
                        {
                          v199 = vmulq_f32(v197, v197);
                          *&v200 = v199.f32[2] + vaddv_f32(*v199.f32);
                          *v199.f32 = vrsqrte_f32(v200);
                          *v199.f32 = vmul_f32(*v199.f32, vrsqrts_f32(v200, vmul_f32(*v199.f32, *v199.f32)));
                          v201 = vmulq_n_f32(v197, vmul_f32(*v199.f32, vrsqrts_f32(v200, vmul_f32(*v199.f32, *v199.f32))).f32[0]);
                          v202 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v201, v201), v201, 0xCuLL), vnegq_f32(v182)), v201, v183);
                          v203 = vextq_s8(vuzp1q_s32(v202, v202), v202, 0xCuLL);
                          v204 = vmlaq_f32(vmulq_f32(v183, vnegq_f32(v203)), v182, vextq_s8(vuzp1q_s32(v203, v203), v203, 0xCuLL));
                          v205 = vextq_s8(vuzp1q_s32(v204, v204), v204, 0xCuLL);
                          v206 = v194 >= 0.0;
                          v207 = v194 < v128;
                          v208 = !v206 || !v207;
                          v209 = v206 && v207 ? -1 : 0;
                          v122 = vbslq_s8(vdupq_n_s32(v209), v205, v122);
                          if (!v208)
                          {
                            v128 = v194;
                          }
                        }
                      }
                    }
                  }

                  v210 = vsubq_f32(v91, v89);
                  v211 = vmulq_f32(v210, v210);
                  v212 = sqrtf(v211.f32[2] + vaddv_f32(*v211.f32));
                  v213 = vmulq_n_f32(v210, 1.0 / v212);
                  v214 = vextq_s8(vuzp1q_s32(v213, v213), v213, 0xCuLL);
                  v215 = vmlaq_f32(vmulq_f32(v214, v918), v213, v920);
                  v216 = vmulq_f32(v215, v215);
                  v217 = v216.f32[1] + (v216.f32[2] + v216.f32[0]);
                  if (v217 != 0.0)
                  {
                    v218 = vmulq_f32(vaddq_f32(v91, v89), v94);
                    v219 = vsubq_f32(v951, v218);
                    v220 = vmlaq_f32(vmulq_f32(v214, vnegq_f32(v219)), v213, vextq_s8(vuzp1q_s32(v219, v219), v219, 0xCuLL));
                    v221 = vmulq_f32(v215, v220);
                    v222 = (v221.f32[1] + (v221.f32[2] + v221.f32[0])) + (v221.f32[1] + (v221.f32[2] + v221.f32[0]));
                    v223 = vmulq_f32(v220, v220);
                    v224 = ((v217 * -4.0) * ((v223.f32[1] + (v223.f32[2] + v223.f32[0])) + (v68 * v64))) + (v222 * v222);
                    if (v224 >= 0.0)
                    {
                      v225 = (-v222 - sqrtf(v224)) / (v217 + v217);
                      if (v225 >= 0.0 && v225 <= 1.0)
                      {
                        v227 = v212 * 0.5;
                        v228 = vsubq_f32(vmlaq_n_f32(v951, v945, v225), v218);
                        v229 = vmulq_f32(v213, v228);
                        if (fabsf(v229.f32[2] + vaddv_f32(*v229.f32)) <= v227)
                        {
                          v230 = vmulq_f32(v228, v228);
                          *&v231 = v230.f32[2] + vaddv_f32(*v230.f32);
                          *v230.f32 = vrsqrte_f32(v231);
                          *v230.f32 = vmul_f32(*v230.f32, vrsqrts_f32(v231, vmul_f32(*v230.f32, *v230.f32)));
                          v232 = vmulq_n_f32(v228, vmul_f32(*v230.f32, vrsqrts_f32(v231, vmul_f32(*v230.f32, *v230.f32))).f32[0]);
                          v233 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v232, v232), v232, 0xCuLL), vnegq_f32(v213)), v232, v214);
                          v234 = vextq_s8(vuzp1q_s32(v233, v233), v233, 0xCuLL);
                          v235 = vmlaq_f32(vmulq_f32(v214, vnegq_f32(v234)), v213, vextq_s8(vuzp1q_s32(v234, v234), v234, 0xCuLL));
                          v236 = vextq_s8(vuzp1q_s32(v235, v235), v235, 0xCuLL);
                          v237 = v225 >= 0.0;
                          v238 = v225 < v128;
                          v239 = !v237 || !v238;
                          v240 = v237 && v238 ? -1 : 0;
                          v122 = vbslq_s8(vdupq_n_s32(v240), v236, v122);
                          if (!v239)
                          {
                            v128 = v225;
                          }
                        }
                      }
                    }
                  }

                  if (v128 > 1.0)
                  {
                    if (v70 < 0.00000011921)
                    {
                      goto LABEL_34;
                    }

                    v91 = vsubq_f32(v951, v91);
                    v241 = vmulq_f32(v945, v91);
                    v242 = v241.f32[2] + vaddv_f32(*v241.f32);
                    v243 = vmulq_f32(v91, v91);
                    v244 = v243.f32[2] + vaddv_f32(*v243.f32);
                    v245 = ((v244 + (v68 * v64)) * v71) + (v242 * v242);
                    if (v245 < 0.0 || ((v128 = (-sqrtf(v245) - v242) / v70, v128 >= 0.0) ? (v246 = v128 > 1.0) : (v246 = 1), v246))
                    {
                      v91 = vsubq_f32(v951, v90);
                      v90 = vmulq_f32(v945, v91);
                      v90.f32[0] = v90.f32[2] + vaddv_f32(*v90.f32);
                      v247 = vmulq_f32(v91, v91);
                      v244 = v247.f32[2] + vaddv_f32(*v247.f32);
                      v248 = ((v244 + (v68 * v64)) * v71) + (v90.f32[0] * v90.f32[0]);
                      if (v248 < 0.0 || ((v128 = (-sqrtf(v248) - v90.f32[0]) / v70, v128 >= 0.0) ? (v249 = v128 > 1.0) : (v249 = 1), v249))
                      {
                        v91 = vsubq_f32(v951, v89);
                        v89 = vmulq_f32(v945, v91);
                        v89.f32[0] = v89.f32[2] + vaddv_f32(*v89.f32);
                        v90 = vmulq_f32(v91, v91);
                        v244 = v90.f32[2] + vaddv_f32(*v90.f32);
                        v90.f32[0] = ((v244 + (v68 * v64)) * v71) + (v89.f32[0] * v89.f32[0]);
                        if (v90.f32[0] < 0.0)
                        {
                          goto LABEL_34;
                        }

                        v128 = (-sqrtf(v90.f32[0]) - v89.f32[0]) / v70;
                        if (v128 < 0.0 || v128 > 1.0)
                        {
                          goto LABEL_34;
                        }
                      }
                    }

                    v251 = vrsqrte_f32(LODWORD(v244));
                    v252 = vmul_f32(v251, vrsqrts_f32(LODWORD(v244), vmul_f32(v251, v251)));
                    v122 = vmulq_n_f32(v91, vmul_f32(v252, vrsqrts_f32(LODWORD(v244), vmul_f32(v252, v252))).f32[0]);
                  }
                }

                if (v128 < 0.0 || v128 > 1.0)
                {
                  goto LABEL_34;
                }

                if ((v958 & 1) == 0)
                {
                  break;
                }

                v958 = 1;
                if (v128 != INFINITY)
                {
                  goto LABEL_33;
                }

LABEL_34:
                if (v92 >= v86)
                {
                  goto LABEL_20;
                }
              }

              if (v128 >= v73)
              {
                v958 = 0;
                goto LABEL_34;
              }

LABEL_33:
              v958 = 0;
              *v91.f32 = vadd_f32(*v951.f32, vmul_n_f32(*v945.f32, v128));
              v91.f32[2] = v951.f32[2] + (v945.f32[2] * v128);
              v91.i32[3] = 0;
              v939 = v122;
              v942 = v91;
              v73 = v128;
              goto LABEL_34;
            }

LABEL_19:
            v66 = v933;
            v67 = v84;
LABEL_20:
            swift_unknownObjectRelease();
            sub_1AF6E534C(&v968);
LABEL_21:
            if (++v72 != v66)
            {
              continue;
            }

            if (v958)
            {
              goto LABEL_408;
            }

LABEL_405:
            v776 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(a20, v939, 2), a19, *v939.f32, 1), a18, v939.f32[0]);
            v777 = vmulq_f32(v776, v776);
            v777.f32[0] = v777.f32[2] + vaddv_f32(*v777.f32);
            v778 = v777.f32[0] != 0.0;
            a6 = v905;
            if (v907)
            {
              v940 = 0;
              v779 = 0;
            }

            else
            {
              v780 = (v895 + 16 * v937);
              v779 = v780[1];
              v940 = *v780;
            }

            v952 = *v777.f32;
            v961 = v776;
            if (v906)
            {
              v781 = 0;
            }

            else
            {
              v781 = *(v894 + 4 * v937);
            }

            v782 = v981;
            v783 = v982;
            sub_1AF441150(v980, v981);
            v784 = (*(v783 + 56))(v782, v783);
            if (v784 > 0.0)
            {
              if (v784 >= 1.0 || (v785 = v784, v786 = drand48(), v785 > v786))
              {
                v893[v896++] = v937;
                v995 = v896;
              }
            }

            v787 = vdupq_lane_s32(v952, 0);
            v787.i32[3] = 0;
            v788 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a17, a13, v942, 2), a12, *v942.f32, 1), a11, v942.f32[0]);
            v789 = vrsqrteq_f32(v787);
            v790 = vmulq_f32(v789, vrsqrtsq_f32(v787, vmulq_f32(v789, v789)));
            v791 = vmulq_f32(v790, v790);
            v792 = vmulq_f32(v961, vmulq_f32(v790, vrsqrtsq_f32(v787, v791)));
            v793 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v778)), 0x1FuLL));
            v793.i32[3] = 0;
            v953 = vbslq_s8(vcltzq_s32(v793), v792, v961);
            v943 = v788;
            if (v901)
            {
              *v791.f32 = vsub_f32(*v788.f32, *(v925 + v911));
              v791.f32[2] = v788.f32[2] - COERCE_FLOAT(*(v925 + v911 + 8));
              v935 = v791;
              v794 = v791;
              v794.i32[3] = 0;
              v962 = v794;
              v946 = *(v926 + v911);
              v794.i32[3] = HIDWORD(v946);
              *(v926 + v911) = v794;
              v795 = v981;
              v796 = v982;
              sub_1AF441150(v980, v981);
              v797 = (*(v796 + 8))(v795, v796);
              v798 = v981;
              v799 = v982;
              sub_1AF441150(v980, v981);
              (*(v799 + 32))(v798, v799);
              v802 = v953;
              v801 = v962;
              v801.i32[3] = v899.i32[3];
              v803 = vaddq_f32(v935, 0);
              v804 = vmulq_f32(v803, v953);
              v805 = v804.f32[2] + vaddv_f32(*v804.f32);
              v963 = v801;
              v806 = v801;
              if (v805 < 0.0)
              {
                v807 = vmulq_n_f32(v953, v805);
                v806 = vmlaq_n_f32(vmulq_n_f32(v807, -v797), vsubq_f32(v803, v807), v800);
              }

              v806.i32[3] = HIDWORD(v946);
              v936 = v806;
              *(v926 + 16 * v937) = v806;
            }

            else
            {
              v808 = v981;
              v809 = v982;
              sub_1AF441150(v980, v981);
              v810 = (*(v809 + 8))(v808, v809);
              v811 = v981;
              v812 = v982;
              sub_1AF441150(v980, v981);
              (*(v812 + 32))(v811, v812);
              v814 = *(v925 + v911);
              v815 = v814;
              v815.i32[3] = v890;
              v816 = *(v926 + v911);
              v817 = v816;
              v817.i32[3] = v891;
              v818 = vaddq_f32(v816, 0);
              v802 = v953;
              v819 = vmulq_f32(v818, v953);
              v820 = v819.f32[2] + vaddv_f32(*v819.f32);
              v821 = v815;
              v822 = v817;
              if (v820 < 0.0)
              {
                v823 = vmulq_n_f32(v953, v820);
                v822 = vmlaq_n_f32(vmulq_n_f32(v823, -v810), vsubq_f32(v818, v823), v813);
                v821 = vmlaq_n_f32(vmlaq_f32(v943, vdupq_n_s32(0x38D1B717u), v953), v822, (1.0 - v73) * v905);
              }

              v822.i32[3] = v816.i32[3];
              v936 = v822;
              *(v926 + v911) = v822;
              v821.i32[3] = v814.i32[3];
              *(v925 + v911) = v821;
              v963 = v899;
            }

            v802.i32[3] = v900;
            v947 = v802;
            v824 = v981;
            v825 = v982;
            sub_1AF441150(v980, v981);
            v826 = (*(v825 + 80))(v824, v825);
            if (v826 <= 0.0 || v826 < 1.0 && (v827 = v826, v828 = drand48(), v827 <= v828))
            {
              v899 = v963;
              v900 = v947.i32[3];
            }

            else
            {
              *v829.f32 = vadd_f32(*v943.f32, vmul_f32(*v953.f32, vdup_n_s32(0x3C23D70Au)));
              v829.f32[2] = v943.f32[2] + vmuls_lane_f32(0.01, v953, 2);
              v829.i32[3] = 0;
              v830 = v936;
              v830.i32[3] = v887;
              LOBYTE(v968) = v907 & 1;
              v967[0] = v906 & 1;
              v831 = &v892[10 * v897];
              *v831 = v829;
              v831[1] = v947;
              v831[2] = v830;
              v831[3].i64[0] = v940;
              v831[3].i64[1] = v779;
              v831[4].i8[0] = v907 & 1;
              v831[4].i32[1] = v781;
              v899 = v963;
              v900 = v947.i32[3];
              v831[4].i8[8] = v906 & 1;
              v998 = ++v897;
            }

            goto LABEL_5;
          }

          break;
        }

        if (v973 != 2)
        {
          goto LABEL_448;
        }

        swift_unknownObjectRetain_n();
        sub_1AF6E52F0(&v968, v967);
        if ([v83 storageMode] == 2)
        {
          goto LABEL_448;
        }

        v95 = [v83 contents];
        v96 = v83;
        if (v86 < 1)
        {
          goto LABEL_19;
        }

        v100 = 0;
        v101 = &v95[v85];
        v102.i64[0] = 0x3F0000003F000000;
        v102.i64[1] = 0x3F0000003F000000;
        v66 = v933;
        v67 = v84;
        while (2)
        {
          v254 = &v101[2 * v100];
          if (__OFADD__(v100, 3))
          {
            v100 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v100 += 3;
          }

          v255 = v61 + v63 * *v254;
          v99.i64[0] = *v255;
          v256 = *(v255 + 2);
          v257 = v99;
          v257.i32[2] = v256;
          v258 = v61 + v63 * *(v254 + 1);
          v98.i64[0] = *v258;
          v259 = *(v258 + 2);
          v260 = v98;
          v260.i32[2] = v259;
          v261 = v61 + v63 * *(v254 + 2);
          v97.i64[0] = *v261;
          v262 = v97;
          v262.i32[2] = *(v261 + 2);
          v263 = vsubq_f32(v260, v257);
          v264 = vsubq_f32(v262, v257);
          v265 = vnegq_f32(v263);
          v266 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v264, v264), v264, 0xCuLL), v265), v264, vextq_s8(vuzp1q_s32(v263, v263), v263, 0xCuLL));
          v267 = vextq_s8(vuzp1q_s32(v266, v266), v266, 0xCuLL);
          v268 = vmulq_f32(v266, v266);
          v268.f32[0] = v268.f32[1] + (v268.f32[2] + v268.f32[0]);
          v269 = vdupq_lane_s32(*v268.f32, 0);
          v269.i32[3] = 0;
          v270 = vrsqrteq_f32(v269);
          v271 = vmulq_f32(v270, vrsqrtsq_f32(v269, vmulq_f32(v270, v270)));
          v272 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v268.f32[0] != 0.0)), 0x1FuLL));
          v272.i32[3] = 0;
          v273 = vbslq_s8(vcltzq_s32(v272), vmulq_f32(vmulq_f32(v271, vrsqrtsq_f32(v269, vmulq_f32(v271, v271))), v267), v267);
          v274 = vmulq_f32(v945, v273);
          v275 = v274.f32[2] + vaddv_f32(*v274.f32);
          if (v275 >= 0.0)
          {
            goto LABEL_115;
          }

          v99.i32[2] = v256;
          v276 = vmulq_f32(v99, v273);
          v277 = vmulq_f32(v951, v273);
          *v276.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v277, v277, 8uLL), *&vextq_s8(v276, v276, 8uLL)), vadd_f32(vzip1_s32(*v277.i8, *v276.i8), vzip2_s32(*v277.i8, *v276.i8)));
          v278 = vsub_f32(*v276.i8, vdup_lane_s32(*v276.i8, 1)).f32[0];
          if (v278 < v68)
          {
            goto LABEL_115;
          }

          v98.i32[2] = v259;
          v97.i32[2] = *(v261 + 2);
          if (v278 <= v64)
          {
            goto LABEL_126;
          }

          v279 = -(v278 - v64) / v275;
          if (v279 > 1.0)
          {
            goto LABEL_115;
          }

          v280 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v264, v264, 0xCuLL), v264, 8uLL), v265), vextq_s8(vextq_s8(v263, v263, 0xCuLL), v263, 8uLL), v264);
          v281 = vmulq_f32(v280, v280);
          v281.f32[0] = v281.f32[2] + vaddv_f32(*v281.f32);
          v282.i64[0] = 0;
          v282.i32[2] = 0;
          if (fabsf(v281.f32[0]) >= 1.1755e-38)
          {
            v283 = vmlaq_n_f32(v951, v945, v279);
            v284 = vsubq_f32(v97, v283);
            v285 = vsubq_f32(v98, v283);
            v286 = vsubq_f32(v99, v283);
            v287 = vextq_s8(vextq_s8(v285, v285, 0xCuLL), v285, 8uLL);
            v288 = vextq_s8(vextq_s8(v284, v284, 0xCuLL), v284, 8uLL);
            v289 = vmlaq_f32(vmulq_f32(v288, vnegq_f32(v285)), v287, v284);
            v290 = vextq_s8(vextq_s8(v286, v286, 0xCuLL), v286, 8uLL);
            v291 = vmlaq_f32(vmulq_f32(v290, vnegq_f32(v284)), v288, v286);
            v292 = vmlaq_f32(vmulq_f32(v287, vnegq_f32(v286)), v290, v285);
            v293 = vmulq_f32(v280, v289);
            v294 = vmulq_f32(v280, v291);
            v295 = vmulq_f32(v280, v292);
            v296 = vdupq_laneq_s32(v294, 2);
            v297 = vzip1q_s32(vzip1q_s32(v293, v295), v294);
            v298 = vtrn2q_s32(v293, v294);
            v298.i32[2] = v295.i32[1];
            v299 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v293, v295), v296), vaddq_f32(v297, v298)), vdupq_lane_s32(*v281.f32, 0));
            v295.i64[0] = 0xBF000000BF000000;
            v295.i64[1] = 0xBF000000BF000000;
            v282 = vcgeq_f32(v102, vabsq_f32(vaddq_f32(v299, v295)));
          }

          v282.i32[3] = v282.i32[2];
          if ((vminvq_u32(v282) & 0x80000000) == 0)
          {
LABEL_126:
            v300 = vmulq_f32(v263, v263);
            v301 = sqrtf(v300.f32[2] + vaddv_f32(*v300.f32));
            v302 = vmulq_n_f32(v263, 1.0 / v301);
            v303 = vextq_s8(vuzp1q_s32(v302, v302), v302, 0xCuLL);
            v304 = vmlaq_f32(vmulq_f32(v303, v918), v302, v920);
            v305 = vmulq_f32(v304, v304);
            v306 = v305.f32[1] + (v305.f32[2] + v305.f32[0]);
            v279 = 2.0;
            v273 = 0uLL;
            if (v306 != 0.0)
            {
              v307 = vmulq_f32(vaddq_f32(v99, v98), v102);
              v308 = vsubq_f32(v951, v307);
              v309 = vmlaq_f32(vmulq_f32(v303, vnegq_f32(v308)), v302, vextq_s8(vuzp1q_s32(v308, v308), v308, 0xCuLL));
              v310 = vmulq_f32(v304, v309);
              v311 = (v310.f32[1] + (v310.f32[2] + v310.f32[0])) + (v310.f32[1] + (v310.f32[2] + v310.f32[0]));
              v312 = vmulq_f32(v309, v309);
              v313 = ((v306 * -4.0) * ((v312.f32[1] + (v312.f32[2] + v312.f32[0])) + (v68 * v64))) + (v311 * v311);
              if (v313 >= 0.0)
              {
                v314 = (-v311 - sqrtf(v313)) / (v306 + v306);
                if (v314 >= 0.0 && v314 <= 1.0)
                {
                  v316 = v301 * 0.5;
                  v317 = vsubq_f32(vmlaq_n_f32(v951, v945, v314), v307);
                  v318 = vmulq_f32(v302, v317);
                  if (fabsf(v318.f32[2] + vaddv_f32(*v318.f32)) <= v316)
                  {
                    v319 = vmulq_f32(v317, v317);
                    *&v320 = v319.f32[2] + vaddv_f32(*v319.f32);
                    *v319.f32 = vrsqrte_f32(v320);
                    *v319.f32 = vmul_f32(*v319.f32, vrsqrts_f32(v320, vmul_f32(*v319.f32, *v319.f32)));
                    v321 = vmulq_n_f32(v317, vmul_f32(*v319.f32, vrsqrts_f32(v320, vmul_f32(*v319.f32, *v319.f32))).f32[0]);
                    v322 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v321, v321), v321, 0xCuLL), vnegq_f32(v302)), v321, v303);
                    v323 = vextq_s8(vuzp1q_s32(v322, v322), v322, 0xCuLL);
                    v324 = vmlaq_f32(vmulq_f32(v303, vnegq_f32(v323)), v302, vextq_s8(vuzp1q_s32(v323, v323), v323, 0xCuLL));
                    v325 = vextq_s8(vuzp1q_s32(v324, v324), v324, 0xCuLL);
                    v326 = v314 >= 0.0;
                    v327 = v314 < 2.0;
                    v328 = !v326 || !v327;
                    if (v326 && v327)
                    {
                      v329 = -1;
                    }

                    else
                    {
                      v329 = 0;
                    }

                    v273 = vandq_s8(v325, vdupq_n_s32(v329));
                    if (v328)
                    {
                      v279 = 2.0;
                    }

                    else
                    {
                      v279 = v314;
                    }
                  }
                }
              }
            }

            v330 = vsubq_f32(v97, v98);
            v331 = vmulq_f32(v330, v330);
            v332 = sqrtf(v331.f32[2] + vaddv_f32(*v331.f32));
            v333 = vmulq_n_f32(v330, 1.0 / v332);
            v334 = vextq_s8(vuzp1q_s32(v333, v333), v333, 0xCuLL);
            v335 = vmlaq_f32(vmulq_f32(v334, v918), v333, v920);
            v336 = vmulq_f32(v335, v335);
            v337 = v336.f32[1] + (v336.f32[2] + v336.f32[0]);
            if (v337 != 0.0)
            {
              v338 = vmulq_f32(vaddq_f32(v98, v97), v102);
              v339 = vsubq_f32(v951, v338);
              v340 = vmlaq_f32(vmulq_f32(v334, vnegq_f32(v339)), v333, vextq_s8(vuzp1q_s32(v339, v339), v339, 0xCuLL));
              v341 = vmulq_f32(v335, v340);
              v342 = (v341.f32[1] + (v341.f32[2] + v341.f32[0])) + (v341.f32[1] + (v341.f32[2] + v341.f32[0]));
              v343 = vmulq_f32(v340, v340);
              v344 = ((v337 * -4.0) * ((v343.f32[1] + (v343.f32[2] + v343.f32[0])) + (v68 * v64))) + (v342 * v342);
              if (v344 >= 0.0)
              {
                v345 = (-v342 - sqrtf(v344)) / (v337 + v337);
                if (v345 >= 0.0 && v345 <= 1.0)
                {
                  v347 = v332 * 0.5;
                  v348 = vsubq_f32(vmlaq_n_f32(v951, v945, v345), v338);
                  v349 = vmulq_f32(v333, v348);
                  if (fabsf(v349.f32[2] + vaddv_f32(*v349.f32)) <= v347)
                  {
                    v350 = vmulq_f32(v348, v348);
                    *&v351 = v350.f32[2] + vaddv_f32(*v350.f32);
                    *v350.f32 = vrsqrte_f32(v351);
                    *v350.f32 = vmul_f32(*v350.f32, vrsqrts_f32(v351, vmul_f32(*v350.f32, *v350.f32)));
                    v352 = vmulq_n_f32(v348, vmul_f32(*v350.f32, vrsqrts_f32(v351, vmul_f32(*v350.f32, *v350.f32))).f32[0]);
                    v353 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v352, v352), v352, 0xCuLL), vnegq_f32(v333)), v352, v334);
                    v354 = vextq_s8(vuzp1q_s32(v353, v353), v353, 0xCuLL);
                    v355 = vmlaq_f32(vmulq_f32(v334, vnegq_f32(v354)), v333, vextq_s8(vuzp1q_s32(v354, v354), v354, 0xCuLL));
                    v356 = vextq_s8(vuzp1q_s32(v355, v355), v355, 0xCuLL);
                    v357 = v345 >= 0.0;
                    v358 = v345 < v279;
                    v359 = !v357 || !v358;
                    v360 = v357 && v358 ? -1 : 0;
                    v273 = vbslq_s8(vdupq_n_s32(v360), v356, v273);
                    if (!v359)
                    {
                      v279 = v345;
                    }
                  }
                }
              }
            }

            v361 = vsubq_f32(v99, v97);
            v362 = vmulq_f32(v361, v361);
            v363 = sqrtf(v362.f32[2] + vaddv_f32(*v362.f32));
            v364 = vmulq_n_f32(v361, 1.0 / v363);
            v365 = vextq_s8(vuzp1q_s32(v364, v364), v364, 0xCuLL);
            v366 = vmlaq_f32(vmulq_f32(v365, v918), v364, v920);
            v367 = vmulq_f32(v366, v366);
            v368 = v367.f32[1] + (v367.f32[2] + v367.f32[0]);
            if (v368 != 0.0)
            {
              v369 = vmulq_f32(vaddq_f32(v99, v97), v102);
              v370 = vsubq_f32(v951, v369);
              v371 = vmlaq_f32(vmulq_f32(v365, vnegq_f32(v370)), v364, vextq_s8(vuzp1q_s32(v370, v370), v370, 0xCuLL));
              v372 = vmulq_f32(v366, v371);
              v373 = (v372.f32[1] + (v372.f32[2] + v372.f32[0])) + (v372.f32[1] + (v372.f32[2] + v372.f32[0]));
              v374 = vmulq_f32(v371, v371);
              v375 = ((v368 * -4.0) * ((v374.f32[1] + (v374.f32[2] + v374.f32[0])) + (v68 * v64))) + (v373 * v373);
              if (v375 >= 0.0)
              {
                v376 = (-v373 - sqrtf(v375)) / (v368 + v368);
                if (v376 >= 0.0 && v376 <= 1.0)
                {
                  v378 = v363 * 0.5;
                  v379 = vsubq_f32(vmlaq_n_f32(v951, v945, v376), v369);
                  v380 = vmulq_f32(v364, v379);
                  if (fabsf(v380.f32[2] + vaddv_f32(*v380.f32)) <= v378)
                  {
                    v381 = vmulq_f32(v379, v379);
                    *&v382 = v381.f32[2] + vaddv_f32(*v381.f32);
                    *v381.f32 = vrsqrte_f32(v382);
                    *v381.f32 = vmul_f32(*v381.f32, vrsqrts_f32(v382, vmul_f32(*v381.f32, *v381.f32)));
                    v383 = vmulq_n_f32(v379, vmul_f32(*v381.f32, vrsqrts_f32(v382, vmul_f32(*v381.f32, *v381.f32))).f32[0]);
                    v384 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v383, v383), v383, 0xCuLL), vnegq_f32(v364)), v383, v365);
                    v385 = vextq_s8(vuzp1q_s32(v384, v384), v384, 0xCuLL);
                    v386 = vmlaq_f32(vmulq_f32(v365, vnegq_f32(v385)), v364, vextq_s8(vuzp1q_s32(v385, v385), v385, 0xCuLL));
                    v387 = vextq_s8(vuzp1q_s32(v386, v386), v386, 0xCuLL);
                    v388 = v376 >= 0.0;
                    v389 = v376 < v279;
                    v390 = !v388 || !v389;
                    v391 = v388 && v389 ? -1 : 0;
                    v273 = vbslq_s8(vdupq_n_s32(v391), v387, v273);
                    if (!v390)
                    {
                      v279 = v376;
                    }
                  }
                }
              }
            }

            if (v279 > 1.0)
            {
              if (v70 >= 0.00000011921)
              {
                if ((v99 = vsubq_f32(v951, v99), v392 = vmulq_f32(v945, v99), v393 = v392.f32[2] + vaddv_f32(*v392.f32), v394 = vmulq_f32(v99, v99), v395 = v394.f32[2] + vaddv_f32(*v394.f32), v396 = ((v395 + (v68 * v64)) * v71) + (v393 * v393), v396 >= 0.0) && ((v279 = (-sqrtf(v396) - v393) / v70, v279 >= 0.0) ? (v397 = v279 > 1.0) : (v397 = 1), !v397) || (v99 = vsubq_f32(v951, v98), v98 = vmulq_f32(v945, v99), v98.f32[0] = v98.f32[2] + vaddv_f32(*v98.f32), v398 = vmulq_f32(v99, v99), v395 = v398.f32[2] + vaddv_f32(*v398.f32), v399 = ((v395 + (v68 * v64)) * v71) + (v98.f32[0] * v98.f32[0]), v399 >= 0.0) && ((v279 = (-sqrtf(v399) - v98.f32[0]) / v70, v279 >= 0.0) ? (v400 = v279 > 1.0) : (v400 = 1), !v400) || (v99 = vsubq_f32(v951, v97), v97 = vmulq_f32(v945, v99), v97.f32[0] = v97.f32[2] + vaddv_f32(*v97.f32), v98 = vmulq_f32(v99, v99), v395 = v98.f32[2] + vaddv_f32(*v98.f32), v98.f32[0] = ((v395 + (v68 * v64)) * v71) + (v97.f32[0] * v97.f32[0]), v98.f32[0] >= 0.0) && ((v279 = (-sqrtf(v98.f32[0]) - v97.f32[0]) / v70, v279 >= 0.0) ? (v401 = v279 > 1.0) : (v401 = 1), !v401))
                {
                  v402 = vrsqrte_f32(LODWORD(v395));
                  v403 = vmul_f32(v402, vrsqrts_f32(LODWORD(v395), vmul_f32(v402, v402)));
                  v273 = vmulq_n_f32(v99, vmul_f32(v403, vrsqrts_f32(LODWORD(v395), vmul_f32(v403, v403))).f32[0]);
                  goto LABEL_186;
                }
              }

              goto LABEL_115;
            }
          }

LABEL_186:
          if (v279 >= 0.0 && v279 <= 1.0)
          {
            if (v958)
            {
              v958 = 1;
              if (v279 == INFINITY)
              {
                goto LABEL_115;
              }
            }

            else if (v279 >= v73)
            {
              v958 = 0;
              goto LABEL_115;
            }

            v958 = 0;
            *v99.f32 = vadd_f32(*v951.f32, vmul_n_f32(*v945.f32, v279));
            v99.f32[2] = v951.f32[2] + (v945.f32[2] * v279);
            v99.i32[3] = 0;
            v939 = v273;
            v942 = v99;
            v73 = v279;
          }

LABEL_115:
          if (v100 >= v86)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

LABEL_5:
      v39 = v928;
      v40 = v929;
LABEL_6:
      v41 = v937;
      v36 = v930;
LABEL_7:
      v38 = v41 + 1;
      v928 = v39;
      v929 = v40;
      if (v38 == v912)
      {
        goto LABEL_2;
      }
    }

    v911 = v42;
    v405 = swift_slowAlloc();
    v409 = v405;
    v410 = *(a5 + 48);
    v412 = v945;
    v411 = v951.f32[2];
    if (v410)
    {
      if ((v62 - 9) >= 0x2D || ((0x1C01805FFC09uLL >> (v62 - 9)) & 1) == 0)
      {
        *&v968 = 0;
        *(&v968 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF395D0);
        *v967 = v62;
        type metadata accessor for MTLVertexFormat(0);
        sub_1AFDFE458();
        while (1)
        {
LABEL_448:
          sub_1AFDFE518();
          __break(1u);
        }
      }

      v413 = (v405 + 8);
      do
      {
        switch(v62)
        {
          case 9:
            *v406.i64 = sub_1AF57F008(v61->i32[0]);
            v412 = v945;
            v411 = v951.f32[2];
            break;
          case 12:
            *v420.i8 = vshl_u32(vdup_n_s32(v61->i32[0]), 0x1000000018);
            v420.i32[2] = v61->i32[0] << 8;
            v420.i32[3] = v61->i32[0];
            __asm { FMOV            V1.4S, #-1.0 }

            v421 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v420, 0x18uLL)), vdupq_n_s32(0x3C010204u)), _Q1);
            _Q1.i16[1] = v941.i16[1];
            v406 = vminnmq_f32(v421, v941);
            break;
          case 19:
            v406.i16[0] = v61->i16[0];
            v425.f32[0] = v406.u32[0];
            _Q1.i16[0] = v61->i16[1];
            v425.f32[1] = _Q1.u32[0];
            *_Q1.f32 = vdup_n_s32(0x37800080u);
            *v406.f32 = vmul_f32(v425, *_Q1.f32);
            break;
          case 20:
            v406.i16[0] = v61->i16[0];
            _Q1.i16[0] = v61->i16[1];
            _Q1.f32[0] = _Q1.u32[0];
            v408.i16[0] = v61->i16[2];
            v423.i32[3] = 0;
            v423.f32[0] = v406.u32[0];
            v423.i32[1] = _Q1.i32[0];
            v423.f32[2] = v408.u32[0];
            v406 = vmulq_f32(v423, vdupq_n_s32(0x37800080u));
            break;
          case 21:
            v418 = vcvtq_f32_u32(vmovl_u16(*v61));
            v419 = 931135616;
            goto LABEL_214;
          case 22:
            v422.i32[0] = v61->i16[0];
            v422.i32[1] = v61->i16[1];
            *_Q1.f32 = vdup_n_s32(0x38000100u);
            *v406.f32 = vmul_f32(vadd_f32(vadd_s32(v422, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), *_Q1.f32);
            break;
          case 23:
            v426.i32[0] = v61->i32[0];
            v426.i32[1] = v61->u16[2];
            v427 = vaddw_s16(vdupq_n_s32(0x4B400000u), v426);
            goto LABEL_213;
          case 24:
            v427 = vaddw_s16(vdupq_n_s32(0x4B400000u), *v61);
LABEL_213:
            v418 = vaddq_f32(v427, vdupq_n_s32(0xCB400000));
            v419 = 939524352;
LABEL_214:
            _Q1 = vdupq_n_s32(v419);
            v406 = vmulq_f32(v418, _Q1);
            break;
          case 25:
            v959.i32[0] = sub_1AF1F2AC4(v61->u16[0]);
            v406.f32[0] = sub_1AF1F2AC4(v61->u16[1]);
            v412 = v945;
            v411 = v951.f32[2];
            _Q1.i16[1] = v406.i16[1];
            v406.i32[2] = 0;
            v408.i16[1] = v959.i16[1];
            v406.i64[0] = __PAIR64__(v406.u32[0], v959.u32[0]);
            break;
          case 26:
            v430.i32[0] = v61->u16[0];
            v430.i32[1] = v61->u16[1];
            v430.i64[1] = v61->u16[2];
            v431.i64[0] = 0x8000000080000000;
            v431.i64[1] = 0x8000000080000000;
            v432 = vandq_s8(vshlq_n_s32(v430, 0x10uLL), v431);
            v433 = vshlq_n_s32(v430, 0xDuLL);
            _Q1 = vorrq_s8(v432, vandq_s8(v433, vdupq_n_s32(0x7FE000u)));
            v408.i64[0] = 0x3800000038000000;
            v408.i64[1] = 0x3800000038000000;
            v406 = vaddq_s32(vaddq_s32(vandq_s8(v433, vdupq_n_s32(0xF800000u)), v408), _Q1);
            break;
          case 27:
            v414.i64[0] = 0x8000000080000000;
            v414.i64[1] = 0x8000000080000000;
            v415 = vshll_n_u16(*v61, 0xDuLL);
            v416 = vorrq_s8(vandq_s8(vmovl_s16(*v61), v414), vandq_s8(v415, vdupq_n_s32(0x7FE000u)));
            v408 = vdupq_n_s32(0xF800000u);
            v417 = vorrq_s8(vandq_s8(v415, v408), v416);
            _Q1.i64[0] = 0x3800000038000000;
            _Q1.i64[1] = 0x3800000038000000;
            v406 = vaddq_s32(v417, _Q1);
            break;
          case 28:
            v406.i32[0] = v61->i32[0];
            break;
          case 29:
            *v406.f32 = *v61;
            break;
          case 31:
            v406 = *v61->i8;
            break;
          case 41:
            v428 = vld1q_dup_f32(v61);
            _Q1.i16[1] = 14976;
            v406 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v428, xmmword_1AFE473A0), xmmword_1AFE47360)), xmmword_1AFE473B0);
            break;
          case 51:
            v406.i16[0] = v61->i16[0];
            v406.f32[0] = v406.u32[0];
            v429 = 0.000015259;
            goto LABEL_221;
          case 52:
            v406.i16[0] = v61->i16[0];
            v406.f32[0] = vmovl_s16(*v406.f32).i32[0];
            v429 = 0.000030519;
LABEL_221:
            _Q1.f32[0] = v406.f32[0] * v429;
            goto LABEL_222;
          case 53:
            v434 = sub_1AF1F2AC4(v61->u16[0]);
            v412 = v945;
            v411 = v951.f32[2];
            _Q1.f32[0] = v434;
LABEL_222:
            v406.i32[2] = 0;
            v406.i64[0] = _Q1.u32[0];
            break;
          default:
            v424 = vld1q_dup_f32(v61);
            _Q1.i16[1] = 15104;
            v406 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v424, xmmword_1AFE47380), xmmword_1AFE47390)), xmmword_1AFE473C0);
            break;
        }

        *(v413 - 1) = v406.i64[0];
        *v413 = v406.i32[2];
        v61 = (v61 + v63);
        v413 += 3;
        --v410;
      }

      while (v410);
    }

    v435 = *(a5 + 40);
    v436 = *(v435 + 16);
    if (!v436)
    {
      MEMORY[0x1B271DEA0](v409, -1, -1);
LABEL_408:
      v39 = v928;
      v40 = v929;
      a6 = v905;
      goto LABEL_6;
    }

    v437 = v435 + 32;
    v438 = -v64;
    v919 = vnegq_f32(v412);
    v921 = vextq_s8(vuzp1q_s32(v412, v412), v412, 0xCuLL);
    v439 = vmulq_f32(v412, v412);
    v440 = v439.f32[2] + vaddv_f32(*v439.f32);
    v441 = -v440;
    v922 = v412.f32[2];
    v442 = v411;

    v443 = 0;
    v939 = 0u;
    v942 = 0u;
    v73 = 0.0;
    v444 = 1;
    v960 = v437;
    v934 = v436;
    while (1)
    {
      v445 = (v437 + 176 * v443);
      v446 = *v445;
      v447 = v445[2];
      v969 = v445[1];
      v970 = v447;
      v968 = v446;
      v448 = v445[3];
      v449 = v445[4];
      v450 = v445[6];
      v973 = v445[5];
      v974 = v450;
      v971 = v448;
      v972 = v449;
      v451 = v445[7];
      v452 = v445[8];
      v453 = v445[10];
      v977 = v445[9];
      v978 = v453;
      v975 = v451;
      v976 = v452;
      if (v968 == 3)
      {
        v454 = v970;
        if (v970)
        {
          break;
        }
      }

LABEL_228:
      if (++v443 == v436)
      {

        MEMORY[0x1B271DEA0](v409, -1, -1);
        if (v444)
        {
          goto LABEL_408;
        }

        goto LABEL_405;
      }
    }

    v455 = *(&v970 + 1);
    v456 = *(&v972 + 1);
    if (v973 == 4)
    {
      v457 = v444;
      swift_unknownObjectRetain_n();
      sub_1AF6E52F0(&v968, v967);
      if ([v454 storageMode] == 2)
      {
        goto LABEL_448;
      }

      v458 = [v454 contents];
      v459 = v454;
      if (v456 >= 1)
      {
        v463 = 0;
        v464 = &v458[v455];
        v465.i64[0] = 0x3F0000003F000000;
        v465.i64[1] = 0x3F0000003F000000;
        v437 = v960;
        v444 = v457;
        v436 = v934;
        while (1)
        {
          v474 = &v464[4 * v463];
          if (__OFADD__(v463, 3))
          {
            v463 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v463 += 3;
          }

          v475 = v409 + 12 * *v474;
          v462.i64[0] = *v475;
          v476 = *(v475 + 8);
          v477 = v462;
          v477.i32[2] = v476;
          v478 = v409 + 12 * *(v474 + 1);
          v461.i64[0] = *v478;
          v479 = *(v478 + 8);
          v480 = v461;
          v480.i32[2] = v479;
          v481 = v409 + 12 * *(v474 + 2);
          v460.i64[0] = *v481;
          v482 = v460;
          v482.i32[2] = *(v481 + 8);
          v483 = vsubq_f32(v480, v477);
          v484 = vsubq_f32(v482, v477);
          v485 = vnegq_f32(v483);
          v486 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v484, v484), v484, 0xCuLL), v485), v484, vextq_s8(vuzp1q_s32(v483, v483), v483, 0xCuLL));
          v487 = vextq_s8(vuzp1q_s32(v486, v486), v486, 0xCuLL);
          v488 = vmulq_f32(v486, v486);
          v488.f32[0] = v488.f32[1] + (v488.f32[2] + v488.f32[0]);
          v489 = vdupq_lane_s32(*v488.f32, 0);
          v489.i32[3] = 0;
          v490 = vrsqrteq_f32(v489);
          v491 = vmulq_f32(v490, vrsqrtsq_f32(v489, vmulq_f32(v490, v490)));
          v492 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v488.f32[0] != 0.0)), 0x1FuLL));
          v492.i32[3] = 0;
          v493 = vbslq_s8(vcltzq_s32(v492), vmulq_f32(vmulq_f32(v491, vrsqrtsq_f32(v489, vmulq_f32(v491, v491))), v487), v487);
          v494 = vmulq_f32(v945, v493);
          v495 = v494.f32[2] + vaddv_f32(*v494.f32);
          if (v495 >= 0.0)
          {
            goto LABEL_241;
          }

          v462.i32[2] = v476;
          v496 = vmulq_f32(v462, v493);
          v497 = vmulq_f32(v951, v493);
          *v496.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v497, v497, 8uLL), *&vextq_s8(v496, v496, 8uLL)), vadd_f32(vzip1_s32(*v497.i8, *v496.i8), vzip2_s32(*v497.i8, *v496.i8)));
          v498 = vsub_f32(*v496.i8, vdup_lane_s32(*v496.i8, 1)).f32[0];
          if (v498 < v438)
          {
            goto LABEL_241;
          }

          v461.i32[2] = v479;
          v460.i32[2] = *(v481 + 8);
          if (v498 <= v64)
          {
            goto LABEL_252;
          }

          v499 = -(v498 - v64) / v495;
          if (v499 > 1.0)
          {
            goto LABEL_241;
          }

          v500 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v484, v484, 0xCuLL), v484, 8uLL), v485), vextq_s8(vextq_s8(v483, v483, 0xCuLL), v483, 8uLL), v484);
          v501 = vmulq_f32(v500, v500);
          v501.f32[0] = v501.f32[2] + vaddv_f32(*v501.f32);
          v502.i64[0] = 0;
          v502.i32[2] = 0;
          if (fabsf(v501.f32[0]) >= 1.1755e-38)
          {
            v503 = vmlaq_n_f32(v951, v945, v499);
            v504 = vsubq_f32(v460, v503);
            v505 = vsubq_f32(v461, v503);
            v506 = vsubq_f32(v462, v503);
            v507 = vextq_s8(vextq_s8(v505, v505, 0xCuLL), v505, 8uLL);
            v508 = vextq_s8(vextq_s8(v504, v504, 0xCuLL), v504, 8uLL);
            v509 = vmlaq_f32(vmulq_f32(v508, vnegq_f32(v505)), v507, v504);
            v510 = vextq_s8(vextq_s8(v506, v506, 0xCuLL), v506, 8uLL);
            v511 = vmlaq_f32(vmulq_f32(v510, vnegq_f32(v504)), v508, v506);
            v512 = vmlaq_f32(vmulq_f32(v507, vnegq_f32(v506)), v510, v505);
            v513 = vmulq_f32(v500, v509);
            v514 = vmulq_f32(v500, v511);
            v515 = vmulq_f32(v500, v512);
            v516 = vdupq_laneq_s32(v514, 2);
            v517 = vzip1q_s32(vzip1q_s32(v513, v515), v514);
            v518 = vtrn2q_s32(v513, v514);
            v518.i32[2] = v515.i32[1];
            v519 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v513, v515), v516), vaddq_f32(v517, v518)), vdupq_lane_s32(*v501.f32, 0));
            v515.i64[0] = 0xBF000000BF000000;
            v515.i64[1] = 0xBF000000BF000000;
            v502 = vcgeq_f32(v465, vabsq_f32(vaddq_f32(v519, v515)));
          }

          v502.i32[3] = v502.i32[2];
          if ((vminvq_u32(v502) & 0x80000000) == 0)
          {
LABEL_252:
            v520 = vmulq_f32(v483, v483);
            v521 = sqrtf(v520.f32[2] + vaddv_f32(*v520.f32));
            v522 = vmulq_n_f32(v483, 1.0 / v521);
            v523 = vextq_s8(vuzp1q_s32(v522, v522), v522, 0xCuLL);
            v524 = vmlaq_f32(vmulq_f32(v523, v919), v522, v921);
            v525 = vmulq_f32(v524, v524);
            v526 = v525.f32[1] + (v525.f32[2] + v525.f32[0]);
            v499 = 2.0;
            v493 = 0uLL;
            if (v526 != 0.0)
            {
              v527 = vmulq_f32(vaddq_f32(v462, v461), v465);
              v528 = vsubq_f32(v951, v527);
              v529 = vmlaq_f32(vmulq_f32(v523, vnegq_f32(v528)), v522, vextq_s8(vuzp1q_s32(v528, v528), v528, 0xCuLL));
              v530 = vmulq_f32(v524, v529);
              v531 = (v530.f32[1] + (v530.f32[2] + v530.f32[0])) + (v530.f32[1] + (v530.f32[2] + v530.f32[0]));
              v532 = vmulq_f32(v529, v529);
              v533 = ((v526 * -4.0) * ((v532.f32[1] + (v532.f32[2] + v532.f32[0])) + (v438 * v64))) + (v531 * v531);
              if (v533 >= 0.0)
              {
                v534 = (-v531 - sqrtf(v533)) / (v526 + v526);
                if (v534 >= 0.0 && v534 <= 1.0)
                {
                  v536 = v521 * 0.5;
                  v537 = vsubq_f32(vmlaq_n_f32(v951, v945, v534), v527);
                  v538 = vmulq_f32(v522, v537);
                  if (fabsf(v538.f32[2] + vaddv_f32(*v538.f32)) <= v536)
                  {
                    v539 = vmulq_f32(v537, v537);
                    *&v540 = v539.f32[2] + vaddv_f32(*v539.f32);
                    *v539.f32 = vrsqrte_f32(v540);
                    *v539.f32 = vmul_f32(*v539.f32, vrsqrts_f32(v540, vmul_f32(*v539.f32, *v539.f32)));
                    v541 = vmulq_n_f32(v537, vmul_f32(*v539.f32, vrsqrts_f32(v540, vmul_f32(*v539.f32, *v539.f32))).f32[0]);
                    v542 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v541, v541), v541, 0xCuLL), vnegq_f32(v522)), v541, v523);
                    v543 = vextq_s8(vuzp1q_s32(v542, v542), v542, 0xCuLL);
                    v544 = vmlaq_f32(vmulq_f32(v523, vnegq_f32(v543)), v522, vextq_s8(vuzp1q_s32(v543, v543), v543, 0xCuLL));
                    v545 = vextq_s8(vuzp1q_s32(v544, v544), v544, 0xCuLL);
                    v546 = v534 >= 0.0;
                    v547 = v534 < 2.0;
                    v548 = !v546 || !v547;
                    if (v546 && v547)
                    {
                      v549 = -1;
                    }

                    else
                    {
                      v549 = 0;
                    }

                    v493 = vandq_s8(v545, vdupq_n_s32(v549));
                    if (v548)
                    {
                      v499 = 2.0;
                    }

                    else
                    {
                      v499 = v534;
                    }
                  }
                }
              }
            }

            v550 = vsubq_f32(v460, v461);
            v551 = vmulq_f32(v550, v550);
            v552 = sqrtf(v551.f32[2] + vaddv_f32(*v551.f32));
            v553 = vmulq_n_f32(v550, 1.0 / v552);
            v554 = vextq_s8(vuzp1q_s32(v553, v553), v553, 0xCuLL);
            v555 = vmlaq_f32(vmulq_f32(v554, v919), v553, v921);
            v556 = vmulq_f32(v555, v555);
            v557 = v556.f32[1] + (v556.f32[2] + v556.f32[0]);
            if (v557 != 0.0)
            {
              v558 = vmulq_f32(vaddq_f32(v461, v460), v465);
              v559 = vsubq_f32(v951, v558);
              v560 = vmlaq_f32(vmulq_f32(v554, vnegq_f32(v559)), v553, vextq_s8(vuzp1q_s32(v559, v559), v559, 0xCuLL));
              v561 = vmulq_f32(v555, v560);
              v562 = (v561.f32[1] + (v561.f32[2] + v561.f32[0])) + (v561.f32[1] + (v561.f32[2] + v561.f32[0]));
              v563 = vmulq_f32(v560, v560);
              v564 = ((v557 * -4.0) * ((v563.f32[1] + (v563.f32[2] + v563.f32[0])) + (v438 * v64))) + (v562 * v562);
              if (v564 >= 0.0)
              {
                v565 = (-v562 - sqrtf(v564)) / (v557 + v557);
                if (v565 >= 0.0 && v565 <= 1.0)
                {
                  v567 = v552 * 0.5;
                  v568 = vsubq_f32(vmlaq_n_f32(v951, v945, v565), v558);
                  v569 = vmulq_f32(v553, v568);
                  if (fabsf(v569.f32[2] + vaddv_f32(*v569.f32)) <= v567)
                  {
                    v570 = vmulq_f32(v568, v568);
                    *&v571 = v570.f32[2] + vaddv_f32(*v570.f32);
                    *v570.f32 = vrsqrte_f32(v571);
                    *v570.f32 = vmul_f32(*v570.f32, vrsqrts_f32(v571, vmul_f32(*v570.f32, *v570.f32)));
                    v572 = vmulq_n_f32(v568, vmul_f32(*v570.f32, vrsqrts_f32(v571, vmul_f32(*v570.f32, *v570.f32))).f32[0]);
                    v573 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v572, v572), v572, 0xCuLL), vnegq_f32(v553)), v572, v554);
                    v574 = vextq_s8(vuzp1q_s32(v573, v573), v573, 0xCuLL);
                    v575 = vmlaq_f32(vmulq_f32(v554, vnegq_f32(v574)), v553, vextq_s8(vuzp1q_s32(v574, v574), v574, 0xCuLL));
                    v576 = vextq_s8(vuzp1q_s32(v575, v575), v575, 0xCuLL);
                    v577 = v565 >= 0.0;
                    v578 = v565 < v499;
                    v579 = !v577 || !v578;
                    v580 = v577 && v578 ? -1 : 0;
                    v493 = vbslq_s8(vdupq_n_s32(v580), v576, v493);
                    if (!v579)
                    {
                      v499 = v565;
                    }
                  }
                }
              }
            }

            v581 = vsubq_f32(v462, v460);
            v582 = vmulq_f32(v581, v581);
            v583 = sqrtf(v582.f32[2] + vaddv_f32(*v582.f32));
            v584 = vmulq_n_f32(v581, 1.0 / v583);
            v585 = vextq_s8(vuzp1q_s32(v584, v584), v584, 0xCuLL);
            v586 = vmlaq_f32(vmulq_f32(v585, v919), v584, v921);
            v587 = vmulq_f32(v586, v586);
            v588 = v587.f32[1] + (v587.f32[2] + v587.f32[0]);
            if (v588 != 0.0)
            {
              v589 = vmulq_f32(vaddq_f32(v462, v460), v465);
              v590 = vsubq_f32(v951, v589);
              v591 = vmlaq_f32(vmulq_f32(v585, vnegq_f32(v590)), v584, vextq_s8(vuzp1q_s32(v590, v590), v590, 0xCuLL));
              v592 = vmulq_f32(v586, v591);
              v593 = (v592.f32[1] + (v592.f32[2] + v592.f32[0])) + (v592.f32[1] + (v592.f32[2] + v592.f32[0]));
              v594 = vmulq_f32(v591, v591);
              v595 = ((v588 * -4.0) * ((v594.f32[1] + (v594.f32[2] + v594.f32[0])) + (v438 * v64))) + (v593 * v593);
              if (v595 >= 0.0)
              {
                v596 = (-v593 - sqrtf(v595)) / (v588 + v588);
                if (v596 >= 0.0 && v596 <= 1.0)
                {
                  v598 = v583 * 0.5;
                  v599 = vsubq_f32(vmlaq_n_f32(v951, v945, v596), v589);
                  v600 = vmulq_f32(v584, v599);
                  if (fabsf(v600.f32[2] + vaddv_f32(*v600.f32)) <= v598)
                  {
                    v601 = vmulq_f32(v599, v599);
                    *&v602 = v601.f32[2] + vaddv_f32(*v601.f32);
                    *v601.f32 = vrsqrte_f32(v602);
                    *v601.f32 = vmul_f32(*v601.f32, vrsqrts_f32(v602, vmul_f32(*v601.f32, *v601.f32)));
                    v603 = vmulq_n_f32(v599, vmul_f32(*v601.f32, vrsqrts_f32(v602, vmul_f32(*v601.f32, *v601.f32))).f32[0]);
                    v604 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v603, v603), v603, 0xCuLL), vnegq_f32(v584)), v603, v585);
                    v605 = vextq_s8(vuzp1q_s32(v604, v604), v604, 0xCuLL);
                    v606 = vmlaq_f32(vmulq_f32(v585, vnegq_f32(v605)), v584, vextq_s8(vuzp1q_s32(v605, v605), v605, 0xCuLL));
                    v607 = vextq_s8(vuzp1q_s32(v606, v606), v606, 0xCuLL);
                    v608 = v596 >= 0.0;
                    v609 = v596 < v499;
                    v610 = !v608 || !v609;
                    v611 = v608 && v609 ? -1 : 0;
                    v493 = vbslq_s8(vdupq_n_s32(v611), v607, v493);
                    if (!v610)
                    {
                      v499 = v596;
                    }
                  }
                }
              }
            }

            if (v499 > 1.0)
            {
              if (v440 < 0.00000011921)
              {
                goto LABEL_241;
              }

              v462 = vsubq_f32(v951, v462);
              v612 = vmulq_f32(v945, v462);
              v613 = v612.f32[2] + vaddv_f32(*v612.f32);
              v614 = vmulq_f32(v462, v462);
              v615 = v614.f32[2] + vaddv_f32(*v614.f32);
              v616 = ((v615 + (v438 * v64)) * v441) + (v613 * v613);
              if (v616 < 0.0 || ((v499 = (-sqrtf(v616) - v613) / v440, v499 >= 0.0) ? (v617 = v499 > 1.0) : (v617 = 1), v617))
              {
                v462 = vsubq_f32(v951, v461);
                v461 = vmulq_f32(v945, v462);
                v461.f32[0] = v461.f32[2] + vaddv_f32(*v461.f32);
                v618 = vmulq_f32(v462, v462);
                v615 = v618.f32[2] + vaddv_f32(*v618.f32);
                v619 = ((v615 + (v438 * v64)) * v441) + (v461.f32[0] * v461.f32[0]);
                if (v619 < 0.0 || ((v499 = (-sqrtf(v619) - v461.f32[0]) / v440, v499 >= 0.0) ? (v620 = v499 > 1.0) : (v620 = 1), v620))
                {
                  v462 = vsubq_f32(v951, v460);
                  v460 = vmulq_f32(v945, v462);
                  v460.f32[0] = v460.f32[2] + vaddv_f32(*v460.f32);
                  v461 = vmulq_f32(v462, v462);
                  v615 = v461.f32[2] + vaddv_f32(*v461.f32);
                  v461.f32[0] = ((v615 + (v438 * v64)) * v441) + (v460.f32[0] * v460.f32[0]);
                  if (v461.f32[0] < 0.0)
                  {
                    goto LABEL_241;
                  }

                  v499 = (-sqrtf(v461.f32[0]) - v460.f32[0]) / v440;
                  if (v499 < 0.0 || v499 > 1.0)
                  {
                    goto LABEL_241;
                  }
                }
              }

              v622 = vrsqrte_f32(LODWORD(v615));
              v623 = vmul_f32(v622, vrsqrts_f32(LODWORD(v615), vmul_f32(v622, v622)));
              v493 = vmulq_n_f32(v462, vmul_f32(v623, vrsqrts_f32(LODWORD(v615), vmul_f32(v623, v623))).f32[0]);
            }
          }

          if (v499 < 0.0 || v499 > 1.0)
          {
            goto LABEL_241;
          }

          if ((v444 & 1) == 0)
          {
            break;
          }

          v444 = 1;
          if (v499 != INFINITY)
          {
            goto LABEL_240;
          }

LABEL_241:
          if (v463 >= v456)
          {
            goto LABEL_227;
          }
        }

        if (v499 >= v73)
        {
          v444 = 0;
          goto LABEL_241;
        }

LABEL_240:
        v444 = 0;
        *v462.f32 = vadd_f32(*v951.f32, vmul_n_f32(*v945.f32, v499));
        v462.f32[2] = v442 + (v922 * v499);
        v462.i32[3] = 0;
        v939 = v493;
        v942 = v462;
        v73 = v499;
        goto LABEL_241;
      }

      v437 = v960;
      v444 = v457;
      goto LABEL_226;
    }

    if (v973 != 2)
    {
      goto LABEL_448;
    }

    swift_unknownObjectRetain_n();
    sub_1AF6E52F0(&v968, v967);
    if ([v454 storageMode] == 2)
    {
      goto LABEL_448;
    }

    v466 = [v454 contents];
    v467 = v454;
    if (v456 < 1)
    {
      v437 = v960;
LABEL_226:
      v436 = v934;
LABEL_227:
      swift_unknownObjectRelease();
      sub_1AF6E534C(&v968);
      goto LABEL_228;
    }

    v471 = 0;
    v472 = &v466[v455];
    v473.i64[0] = 0x3F0000003F000000;
    v473.i64[1] = 0x3F0000003F000000;
    v437 = v960;
    v436 = v934;
    while (1)
    {
      v625 = &v472[2 * v471];
      if (__OFADD__(v471, 3))
      {
        v471 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v471 += 3;
      }

      v626 = v409 + 12 * *v625;
      v470.i64[0] = *v626;
      v627 = *(v626 + 8);
      v628 = v470;
      v628.i32[2] = v627;
      v629 = v409 + 12 * *(v625 + 1);
      v469.i64[0] = *v629;
      v630 = *(v629 + 8);
      v631 = v469;
      v631.i32[2] = v630;
      v632 = v409 + 12 * *(v625 + 2);
      v468.i64[0] = *v632;
      v633 = v468;
      v633.i32[2] = *(v632 + 8);
      v634 = vsubq_f32(v631, v628);
      v635 = vsubq_f32(v633, v628);
      v636 = vnegq_f32(v634);
      v637 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v635, v635), v635, 0xCuLL), v636), v635, vextq_s8(vuzp1q_s32(v634, v634), v634, 0xCuLL));
      v638 = vextq_s8(vuzp1q_s32(v637, v637), v637, 0xCuLL);
      v639 = vmulq_f32(v637, v637);
      v639.f32[0] = v639.f32[1] + (v639.f32[2] + v639.f32[0]);
      v640 = vdupq_lane_s32(*v639.f32, 0);
      v640.i32[3] = 0;
      v641 = vrsqrteq_f32(v640);
      v642 = vmulq_f32(v641, vrsqrtsq_f32(v640, vmulq_f32(v641, v641)));
      v643 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v639.f32[0] != 0.0)), 0x1FuLL));
      v643.i32[3] = 0;
      v644 = vbslq_s8(vcltzq_s32(v643), vmulq_f32(vmulq_f32(v642, vrsqrtsq_f32(v640, vmulq_f32(v642, v642))), v638), v638);
      v645 = vmulq_f32(v945, v644);
      v646 = v645.f32[2] + vaddv_f32(*v645.f32);
      if (v646 >= 0.0)
      {
        goto LABEL_322;
      }

      v470.i32[2] = v627;
      v647 = vmulq_f32(v470, v644);
      v648 = vmulq_f32(v951, v644);
      *v647.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v648, v648, 8uLL), *&vextq_s8(v647, v647, 8uLL)), vadd_f32(vzip1_s32(*v648.i8, *v647.i8), vzip2_s32(*v648.i8, *v647.i8)));
      v649 = vsub_f32(*v647.i8, vdup_lane_s32(*v647.i8, 1)).f32[0];
      if (v649 < v438)
      {
        goto LABEL_322;
      }

      v469.i32[2] = v630;
      v468.i32[2] = *(v632 + 8);
      if (v649 <= v64)
      {
        goto LABEL_333;
      }

      v650 = -(v649 - v64) / v646;
      if (v650 > 1.0)
      {
        goto LABEL_322;
      }

      v651 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v635, v635, 0xCuLL), v635, 8uLL), v636), vextq_s8(vextq_s8(v634, v634, 0xCuLL), v634, 8uLL), v635);
      v652 = vmulq_f32(v651, v651);
      v652.f32[0] = v652.f32[2] + vaddv_f32(*v652.f32);
      v653.i64[0] = 0;
      v653.i32[2] = 0;
      if (fabsf(v652.f32[0]) >= 1.1755e-38)
      {
        v654 = vmlaq_n_f32(v951, v945, v650);
        v655 = vsubq_f32(v468, v654);
        v656 = vsubq_f32(v469, v654);
        v657 = vsubq_f32(v470, v654);
        v658 = vextq_s8(vextq_s8(v656, v656, 0xCuLL), v656, 8uLL);
        v659 = vextq_s8(vextq_s8(v655, v655, 0xCuLL), v655, 8uLL);
        v660 = vmlaq_f32(vmulq_f32(v659, vnegq_f32(v656)), v658, v655);
        v661 = vextq_s8(vextq_s8(v657, v657, 0xCuLL), v657, 8uLL);
        v662 = vmlaq_f32(vmulq_f32(v661, vnegq_f32(v655)), v659, v657);
        v663 = vmlaq_f32(vmulq_f32(v658, vnegq_f32(v657)), v661, v656);
        v664 = vmulq_f32(v651, v660);
        v665 = vmulq_f32(v651, v662);
        v666 = vmulq_f32(v651, v663);
        v667 = vdupq_laneq_s32(v665, 2);
        v668 = vzip1q_s32(vzip1q_s32(v664, v666), v665);
        v669 = vtrn2q_s32(v664, v665);
        v669.i32[2] = v666.i32[1];
        v670 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v664, v666), v667), vaddq_f32(v668, v669)), vdupq_lane_s32(*v652.f32, 0));
        v666.i64[0] = 0xBF000000BF000000;
        v666.i64[1] = 0xBF000000BF000000;
        v653 = vcgeq_f32(v473, vabsq_f32(vaddq_f32(v670, v666)));
      }

      v653.i32[3] = v653.i32[2];
      if ((vminvq_u32(v653) & 0x80000000) == 0)
      {
LABEL_333:
        v671 = vmulq_f32(v634, v634);
        v672 = sqrtf(v671.f32[2] + vaddv_f32(*v671.f32));
        v673 = vmulq_n_f32(v634, 1.0 / v672);
        v674 = vextq_s8(vuzp1q_s32(v673, v673), v673, 0xCuLL);
        v675 = vmlaq_f32(vmulq_f32(v674, v919), v673, v921);
        v676 = vmulq_f32(v675, v675);
        v677 = v676.f32[1] + (v676.f32[2] + v676.f32[0]);
        v650 = 2.0;
        v644 = 0uLL;
        if (v677 != 0.0)
        {
          v678 = vmulq_f32(vaddq_f32(v470, v469), v473);
          v679 = vsubq_f32(v951, v678);
          v680 = vmlaq_f32(vmulq_f32(v674, vnegq_f32(v679)), v673, vextq_s8(vuzp1q_s32(v679, v679), v679, 0xCuLL));
          v681 = vmulq_f32(v675, v680);
          v682 = (v681.f32[1] + (v681.f32[2] + v681.f32[0])) + (v681.f32[1] + (v681.f32[2] + v681.f32[0]));
          v683 = vmulq_f32(v680, v680);
          v684 = ((v677 * -4.0) * ((v683.f32[1] + (v683.f32[2] + v683.f32[0])) + (v438 * v64))) + (v682 * v682);
          if (v684 >= 0.0)
          {
            v685 = (-v682 - sqrtf(v684)) / (v677 + v677);
            if (v685 >= 0.0 && v685 <= 1.0)
            {
              v687 = v672 * 0.5;
              v688 = vsubq_f32(vmlaq_n_f32(v951, v945, v685), v678);
              v689 = vmulq_f32(v673, v688);
              if (fabsf(v689.f32[2] + vaddv_f32(*v689.f32)) <= v687)
              {
                v690 = vmulq_f32(v688, v688);
                *&v691 = v690.f32[2] + vaddv_f32(*v690.f32);
                *v690.f32 = vrsqrte_f32(v691);
                *v690.f32 = vmul_f32(*v690.f32, vrsqrts_f32(v691, vmul_f32(*v690.f32, *v690.f32)));
                v692 = vmulq_n_f32(v688, vmul_f32(*v690.f32, vrsqrts_f32(v691, vmul_f32(*v690.f32, *v690.f32))).f32[0]);
                v693 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v692, v692), v692, 0xCuLL), vnegq_f32(v673)), v692, v674);
                v694 = vextq_s8(vuzp1q_s32(v693, v693), v693, 0xCuLL);
                v695 = vmlaq_f32(vmulq_f32(v674, vnegq_f32(v694)), v673, vextq_s8(vuzp1q_s32(v694, v694), v694, 0xCuLL));
                v696 = vextq_s8(vuzp1q_s32(v695, v695), v695, 0xCuLL);
                v697 = v685 >= 0.0;
                v698 = v685 < 2.0;
                v699 = !v697 || !v698;
                if (v697 && v698)
                {
                  v700 = -1;
                }

                else
                {
                  v700 = 0;
                }

                v644 = vandq_s8(v696, vdupq_n_s32(v700));
                if (v699)
                {
                  v650 = 2.0;
                }

                else
                {
                  v650 = v685;
                }
              }
            }
          }
        }

        v701 = vsubq_f32(v468, v469);
        v702 = vmulq_f32(v701, v701);
        v703 = sqrtf(v702.f32[2] + vaddv_f32(*v702.f32));
        v704 = vmulq_n_f32(v701, 1.0 / v703);
        v705 = vextq_s8(vuzp1q_s32(v704, v704), v704, 0xCuLL);
        v706 = vmlaq_f32(vmulq_f32(v705, v919), v704, v921);
        v707 = vmulq_f32(v706, v706);
        v708 = v707.f32[1] + (v707.f32[2] + v707.f32[0]);
        if (v708 != 0.0)
        {
          v709 = vmulq_f32(vaddq_f32(v469, v468), v473);
          v710 = vsubq_f32(v951, v709);
          v711 = vmlaq_f32(vmulq_f32(v705, vnegq_f32(v710)), v704, vextq_s8(vuzp1q_s32(v710, v710), v710, 0xCuLL));
          v712 = vmulq_f32(v706, v711);
          v713 = (v712.f32[1] + (v712.f32[2] + v712.f32[0])) + (v712.f32[1] + (v712.f32[2] + v712.f32[0]));
          v714 = vmulq_f32(v711, v711);
          v715 = ((v708 * -4.0) * ((v714.f32[1] + (v714.f32[2] + v714.f32[0])) + (v438 * v64))) + (v713 * v713);
          if (v715 >= 0.0)
          {
            v716 = (-v713 - sqrtf(v715)) / (v708 + v708);
            if (v716 >= 0.0 && v716 <= 1.0)
            {
              v718 = v703 * 0.5;
              v719 = vsubq_f32(vmlaq_n_f32(v951, v945, v716), v709);
              v720 = vmulq_f32(v704, v719);
              if (fabsf(v720.f32[2] + vaddv_f32(*v720.f32)) <= v718)
              {
                v721 = vmulq_f32(v719, v719);
                *&v722 = v721.f32[2] + vaddv_f32(*v721.f32);
                *v721.f32 = vrsqrte_f32(v722);
                *v721.f32 = vmul_f32(*v721.f32, vrsqrts_f32(v722, vmul_f32(*v721.f32, *v721.f32)));
                v723 = vmulq_n_f32(v719, vmul_f32(*v721.f32, vrsqrts_f32(v722, vmul_f32(*v721.f32, *v721.f32))).f32[0]);
                v724 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v723, v723), v723, 0xCuLL), vnegq_f32(v704)), v723, v705);
                v725 = vextq_s8(vuzp1q_s32(v724, v724), v724, 0xCuLL);
                v726 = vmlaq_f32(vmulq_f32(v705, vnegq_f32(v725)), v704, vextq_s8(vuzp1q_s32(v725, v725), v725, 0xCuLL));
                v727 = vextq_s8(vuzp1q_s32(v726, v726), v726, 0xCuLL);
                v728 = v716 >= 0.0;
                v729 = v716 < v650;
                v730 = !v728 || !v729;
                v731 = v728 && v729 ? -1 : 0;
                v644 = vbslq_s8(vdupq_n_s32(v731), v727, v644);
                if (!v730)
                {
                  v650 = v716;
                }
              }
            }
          }
        }

        v732 = vsubq_f32(v470, v468);
        v733 = vmulq_f32(v732, v732);
        v734 = sqrtf(v733.f32[2] + vaddv_f32(*v733.f32));
        v735 = vmulq_n_f32(v732, 1.0 / v734);
        v736 = vextq_s8(vuzp1q_s32(v735, v735), v735, 0xCuLL);
        v737 = vmlaq_f32(vmulq_f32(v736, v919), v735, v921);
        v738 = vmulq_f32(v737, v737);
        v739 = v738.f32[1] + (v738.f32[2] + v738.f32[0]);
        if (v739 != 0.0)
        {
          v740 = vmulq_f32(vaddq_f32(v470, v468), v473);
          v741 = vsubq_f32(v951, v740);
          v742 = vmlaq_f32(vmulq_f32(v736, vnegq_f32(v741)), v735, vextq_s8(vuzp1q_s32(v741, v741), v741, 0xCuLL));
          v743 = vmulq_f32(v737, v742);
          v744 = (v743.f32[1] + (v743.f32[2] + v743.f32[0])) + (v743.f32[1] + (v743.f32[2] + v743.f32[0]));
          v745 = vmulq_f32(v742, v742);
          v746 = ((v739 * -4.0) * ((v745.f32[1] + (v745.f32[2] + v745.f32[0])) + (v438 * v64))) + (v744 * v744);
          if (v746 >= 0.0)
          {
            v747 = (-v744 - sqrtf(v746)) / (v739 + v739);
            if (v747 >= 0.0 && v747 <= 1.0)
            {
              v749 = v734 * 0.5;
              v750 = vsubq_f32(vmlaq_n_f32(v951, v945, v747), v740);
              v751 = vmulq_f32(v735, v750);
              if (fabsf(v751.f32[2] + vaddv_f32(*v751.f32)) <= v749)
              {
                v752 = vmulq_f32(v750, v750);
                *&v753 = v752.f32[2] + vaddv_f32(*v752.f32);
                *v752.f32 = vrsqrte_f32(v753);
                *v752.f32 = vmul_f32(*v752.f32, vrsqrts_f32(v753, vmul_f32(*v752.f32, *v752.f32)));
                v754 = vmulq_n_f32(v750, vmul_f32(*v752.f32, vrsqrts_f32(v753, vmul_f32(*v752.f32, *v752.f32))).f32[0]);
                v755 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v754, v754), v754, 0xCuLL), vnegq_f32(v735)), v754, v736);
                v756 = vextq_s8(vuzp1q_s32(v755, v755), v755, 0xCuLL);
                v757 = vmlaq_f32(vmulq_f32(v736, vnegq_f32(v756)), v735, vextq_s8(vuzp1q_s32(v756, v756), v756, 0xCuLL));
                v758 = vextq_s8(vuzp1q_s32(v757, v757), v757, 0xCuLL);
                v759 = v747 >= 0.0;
                v760 = v747 < v650;
                v761 = !v759 || !v760;
                v762 = v759 && v760 ? -1 : 0;
                v644 = vbslq_s8(vdupq_n_s32(v762), v758, v644);
                if (!v761)
                {
                  v650 = v747;
                }
              }
            }
          }
        }

        if (v650 > 1.0)
        {
          if (v440 < 0.00000011921)
          {
            goto LABEL_322;
          }

          v470 = vsubq_f32(v951, v470);
          v763 = vmulq_f32(v945, v470);
          v764 = v763.f32[2] + vaddv_f32(*v763.f32);
          v765 = vmulq_f32(v470, v470);
          v766 = v765.f32[2] + vaddv_f32(*v765.f32);
          v767 = ((v766 + (v438 * v64)) * v441) + (v764 * v764);
          if (v767 < 0.0 || ((v650 = (-sqrtf(v767) - v764) / v440, v650 >= 0.0) ? (v768 = v650 > 1.0) : (v768 = 1), v768))
          {
            v470 = vsubq_f32(v951, v469);
            v469 = vmulq_f32(v945, v470);
            v469.f32[0] = v469.f32[2] + vaddv_f32(*v469.f32);
            v769 = vmulq_f32(v470, v470);
            v766 = v769.f32[2] + vaddv_f32(*v769.f32);
            v770 = ((v766 + (v438 * v64)) * v441) + (v469.f32[0] * v469.f32[0]);
            if (v770 < 0.0 || ((v650 = (-sqrtf(v770) - v469.f32[0]) / v440, v650 >= 0.0) ? (v771 = v650 > 1.0) : (v771 = 1), v771))
            {
              v470 = vsubq_f32(v951, v468);
              v468 = vmulq_f32(v945, v470);
              v468.f32[0] = v468.f32[2] + vaddv_f32(*v468.f32);
              v469 = vmulq_f32(v470, v470);
              v766 = v469.f32[2] + vaddv_f32(*v469.f32);
              v469.f32[0] = ((v766 + (v438 * v64)) * v441) + (v468.f32[0] * v468.f32[0]);
              if (v469.f32[0] < 0.0)
              {
                goto LABEL_322;
              }

              v650 = (-sqrtf(v469.f32[0]) - v468.f32[0]) / v440;
              if (v650 < 0.0 || v650 > 1.0)
              {
                goto LABEL_322;
              }
            }
          }

          v773 = vrsqrte_f32(LODWORD(v766));
          v774 = vmul_f32(v773, vrsqrts_f32(LODWORD(v766), vmul_f32(v773, v773)));
          v644 = vmulq_n_f32(v470, vmul_f32(v774, vrsqrts_f32(LODWORD(v766), vmul_f32(v774, v774))).f32[0]);
        }
      }

      if (v650 < 0.0 || v650 > 1.0)
      {
        goto LABEL_322;
      }

      if ((v444 & 1) == 0)
      {
        break;
      }

      v444 = 1;
      if (v650 != INFINITY)
      {
        goto LABEL_321;
      }

LABEL_322:
      if (v471 >= v456)
      {
        goto LABEL_227;
      }
    }

    if (v650 >= v73)
    {
      v444 = 0;
      goto LABEL_322;
    }

LABEL_321:
    v444 = 0;
    *v470.f32 = vadd_f32(*v951.f32, vmul_n_f32(*v945.f32, v650));
    v470.f32[2] = v442 + (v922 * v650);
    v470.i32[3] = 0;
    v939 = v644;
    v942 = v470;
    v73 = v650;
    goto LABEL_322;
  }

LABEL_2:
  sub_1AFA0E318(v979, a4 | ((HIDWORD(a4) & 1) << 32));
  return sub_1AFA09D20(v979);
}

double sub_1AFA11EF8()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AFCC5898(1, 1, v1);

  result = *v1;
  xmmword_1EB6C3528 = v1[0];
  unk_1EB6C3538 = v1[1];
  qword_1EB6C3548 = v2;
  return result;
}

double sub_1AFA11FAC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 1;
  result = 0.0;
  *(a1 + 4) = xmmword_1AFE201A0;
  *(a1 + 20) = 0xFF00000000;
  return result;
}

uint64_t sub_1AFA11FD0(void *a1)
{
  sub_1AFA13984(0, &qword_1EB641F58, sub_1AFA08734, &type metadata for ParticleCollidableCodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  result = sub_1AFA05BD8(a1, &v10[-v7]);
  if (!v1)
  {
    v10[15] = 6;
    sub_1AFDFE8C8();
    v10[14] = 7;
    sub_1AFDFE8C8();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

double sub_1AFA12154@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA135B8(a1, v5);
  if (!v2)
  {
    *a2 = *v5;
    result = *&v5[12];
    *(a2 + 12) = *&v5[12];
  }

  return result;
}

void sub_1AFA121D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1EB637240 != -1)
  {
    swift_once();
  }

  v64[0] = xmmword_1EB6C3528;
  v64[1] = unk_1EB6C3538;
  v65 = qword_1EB6C3548;
  sub_1AF6B06C0(a1, v64, a4 & 0xFFFFFFFFFFLL, v46);
  v39 = *&v46[0];
  if (*&v46[0])
  {
    v11 = *(&v46[2] + 1);
    v12 = *(&v47 + 1);
    v35 = *(&v48 + 1);
    v38 = v48;
    v51 = *(v46 + 8);
    v52 = *(&v46[1] + 8);
    MEMORY[0x1EEE9AC00](v9, v10);
    v36 = v27;
    v37 = v13;
    v27[2] = v4;
    v28 = a4;
    v29 = v14;
    v30 = a1;
    v31 = a1;
    v32 = a2;
    v33 = a3;
    if (v13 > 0 && v12)
    {
      v34 = &v34;
      v15 = v35;
      v16 = v35[4];
      v44 = *(v38 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v45[2] = v46[2];
      v45[3] = v47;
      v45[4] = v48;
      v45[5] = v49;
      v45[0] = v46[0];
      v45[1] = v46[1];
      sub_1AF5DD298(v45, v59);
      for (i = (v11 + 24); ; i += 6)
      {
        v43 = 0;
        v18 = v16;
        v19 = *(i - 6);
        v20 = *(i - 5);
        v21 = *(i - 4);
        v22 = *(i - 1);
        v41 = *i;
        v42 = v22;
        v23 = i[2];
        v40 = i[1];
        if (v44)
        {
          v24 = *(v23 + 376);

          v15 = v35;
          os_unfair_lock_lock(v24);
          os_unfair_lock_lock(*(v23 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v18);

        sub_1AF630914(v25, v15, v50);

        LOBYTE(v53) = 1;
        v59[0] = v38;
        v59[1] = v23;
        v59[2] = v15;
        v59[3] = v21;
        v59[4] = (v20 - v19 + v21);
        v59[5] = v37;
        v59[6] = v19;
        v59[7] = v20;
        v59[8] = 0;
        v59[9] = 0;
        v60 = 1;
        v61 = v42;
        v62 = v41;
        v63 = v40;
        v26 = v43;
        sub_1AF889B00(v59, sub_1AFA139EC, v36);
        if (v26)
        {
          break;
        }

        v56 = v39;
        v57 = v51;
        v58 = v52;
        sub_1AF630994(v15, &v56, v50);
        sub_1AF62D29C(v23);
        ecs_stack_allocator_pop_snapshot(v18);
        v16 = v18;
        if (v44)
        {
          os_unfair_lock_unlock(*(v23 + 344));
          os_unfair_lock_unlock(*(v23 + 376));
        }

        if (!--v12)
        {
          sub_1AF5D1564(v46);
          sub_1AF5D1564(v46);
          return;
        }
      }

      v53 = v39;
      v54 = v51;
      v55 = v52;
      sub_1AF630994(v15, &v53, v50);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v23 + 344));
      os_unfair_lock_unlock(*(v23 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v46);
    }
  }
}

void sub_1AFA1256C(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 + 84) & *(a2 + 24);
  if (v6)
  {
    v11 = *(a2 + 20) + *(a4 + 80);
    *&v12 = 1.0 - fminf(fmaxf(*(a2 + 16) + *(a4 + 76), 0.0), 1.0);
    *&v13 = fminf(fmaxf(*(a2 + 12) + *(a4 + 72), 0.0), 1.0);
    __asm { FMOV            V4.2S, #1.0 }

    *&v116 = vminnm_f32(vmaxnm_f32(vadd_f32(*(a2 + 4), *(a4 + 64)), 0), _D4);
    *(&v116 + 1) = __PAIR64__(v12, v13);
    v117 = v11;
    v118 = v6;
    v18 = *(a1 + 32);

    v19 = sub_1AF64B03C(&type metadata for LastFrameWorldTransform);
    v21 = v20;

    if (v21)
    {
      v22 = 1;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
    }

    else
    {
      v22 = 0;
      v27 = (v19 + (v18 << 6));
      v23 = *v27;
      v24 = v27[1];
      v25 = v27[2];
      v26 = v27[3];
      v91[0] = 0;
    }

    v28 = a5;
    v121[0] = v23;
    v121[1] = v24;
    if ((a5 & 0xFE00000000) != 0)
    {
      v28 = 0;
    }

    v81 = v28;
    v121[2] = v25;
    v121[3] = v26;
    v122 = v22;
    v29 = a2;
    v30 = *a2;
    v31 = !a5 || (a5 & 0xFE00000000) != 0;
    v79 = v31;
    v80 = *(a2 + 2);
    sub_1AFA13A2C(v121, v91, *a3, a3[1], a3[2], a3[3], *(a4 + 96), *(a4 + 112), *(a4 + 128), *(a4 + 144));
    v32 = *(a4 + 160);
    v33 = *(a4 + 40);
    v119[0] = *(a4 + 24);
    v119[1] = v33;
    v120 = *(a4 + 56);
    sub_1AF6B06C0(a6, v119, 0x200000000, &v92);
    if (v92)
    {
      v78 = v99;
      if (v99 >= 1)
      {
        v77 = v96;
        if (v96)
        {
          v34 = 0;
          v75 = v30 ^ 1;
          v74 = v95;
          v35 = v98;
          v73 = v97;
          v36 = *(v97 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v88 = *(v98 + 32);
          v100 = v92;
          v101 = v93;
          v102 = v94;
          v72 = v36;
          v76 = a4;
          do
          {
            v87 = v34;
            v37 = (v74 + 48 * v34);
            v38 = *v37;
            v39 = v37[1];
            v40 = v37[2];
            v42 = *(v37 + 2);
            v41 = *(v37 + 3);
            v43 = *(v37 + 5);
            v89 = *(v37 + 4);
            if (v36)
            {
              v44 = *(v43 + 376);

              os_unfair_lock_lock(v44);
              os_unfair_lock_lock(*(v43 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v88);
            v84 = *(v35 + 64);
            v85 = *(v35 + 48);
            v83 = *(v35 + 80);
            v45 = *(*(*(*(v43 + 40) + 16) + 32) + 16) + 1;
            *(v35 + 48) = ecs_stack_allocator_allocate(*(v35 + 32), 48 * v45, 8);
            *(v35 + 56) = v45;
            *(v35 + 72) = 0;
            *(v35 + 80) = 0;
            *(v35 + 64) = 0;
            *&v103 = v73;
            *(&v103 + 1) = v43;
            v86 = v43;
            v104 = v35;
            v105 = v40;
            v106 = (v39 - v38 + v40);
            v107 = v78;
            v108 = v38;
            v109 = v39;
            v110 = 0;
            v111 = 0;
            v112 = 1;
            v113 = v42;
            v114 = v41;
            v115 = v89;
            sub_1AFA13D0C(&v103, &v116, v91, v76, v81 | (v79 << 32), v29, v75 & 1, v80, v32);
            v46 = *(v35 + 48);
            v47 = *(v35 + 64);
            if (!v47)
            {
              v69 = *(v35 + 56);
              v70 = *(v35 + 32);
              v71 = v87;
              v36 = v72;
              goto LABEL_48;
            }

            v90 = *(v35 + 48);
            for (i = 0; i != v47; ++i)
            {
              v50 = (v90 + 48 * i);
              v51 = *v50;
              v52 = v50[4];
              v53 = *(v35 + 72);
              if (v53)
              {
                _ZF = v51 == v53;
              }

              else
              {
                _ZF = 0;
              }

              if (_ZF)
              {
                goto LABEL_20;
              }

              v55 = v100;
              if (!v100[11])
              {
                goto LABEL_20;
              }

              v56 = v50[2];
              v57 = v100 + 41;
              v58 = v100[9];
              if (v58 >= 0x10)
              {
                v59 = &v57[v100[8]];
                v60 = v58 >> 4;
                v61 = v100 + 41;
                while (*v59 != v51)
                {
                  ++v61;
                  v59 += 16;
                  if (!--v60)
                  {
                    goto LABEL_36;
                  }
                }

                v62 = v61[v100[10]];
                v63 = v62 > 5;
                v64 = (1 << v62) & 0x23;
                if (v63 || v64 == 0)
                {
LABEL_20:

                  v52(v49);

                  continue;
                }
              }

LABEL_36:
              if (swift_conformsToProtocol2() && v56)
              {
                if (sub_1AF5FC8D8(v56))
                {
                  goto LABEL_20;
                }

                v66 = v55[9];
                if (v66 < 0x10)
                {
                  goto LABEL_20;
                }

                v67 = &v57[v55[8]];
                v68 = 16 * (v66 >> 4);
                while (*v67 != v56)
                {
                  v67 += 16;
                  v68 -= 16;
                  if (!v68)
                  {
                    goto LABEL_20;
                  }
                }
              }
            }

            v46 = *(v35 + 48);
            v69 = *(v35 + 56);
            v70 = *(v35 + 32);
            v36 = v72;
            if (*(v35 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

            v71 = v87;
LABEL_48:
            ecs_stack_allocator_deallocate(v70, v46, 48 * v69);
            *(v35 + 48) = v85;
            *(v35 + 64) = v84;
            *(v35 + 80) = v83;
            sub_1AF62D29C(v86);
            ecs_stack_allocator_pop_snapshot(v88);
            if (v36)
            {
              os_unfair_lock_unlock(*(v86 + 344));
              os_unfair_lock_unlock(*(v86 + 376));
            }

            v34 = v71 + 1;
            v29 = a2;
          }

          while (v34 != v77);
        }
      }

      sub_1AF5D1564(&v92);
    }
  }
}

uint64_t sub_1AFA12AF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AFA09D74(a1, v9);
  if (v9[28])
  {
    v4 = v9[11];
    MEMORY[0x1EEE9AC00](v3, v9[7]);
    v8[2] = v9;
    sub_1AF63291C(0, v5, 1, a2 | ((HIDWORD(a2) & 1) << 32), v6, sub_1AFA09DD0, v8, v4);
    ecs_stack_allocator_deallocate(*(v4 + 32), v9[26], 80 * v9[27]);
  }

  sub_1AFA1C110(v9);
  return sub_1AFA09D20(v9);
}

void sub_1AFA12BD4(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v131 = a6;
  v132 = a7;
  v129 = a4;
  v130 = a5;
  if (qword_1EB637240 != -1)
  {
    swift_once();
  }

  v184[0] = xmmword_1EB6C3528;
  v184[1] = unk_1EB6C3538;
  v185 = qword_1EB6C3548;
  v10 = *(a3 + 88);
  v176 = *(a3 + 72);
  v177 = v10;
  v11 = *(a3 + 120);
  v178 = *(a3 + 104);
  v179 = v11;
  v12 = *(a3 + 24);
  v173[0] = *(a3 + 8);
  v173[1] = v12;
  v13 = *(a3 + 56);
  v174 = *(a3 + 40);
  v175 = v13;
  if (BYTE12(v174))
  {
    v14 = 0x200000000;
  }

  else
  {
    v14 = DWORD2(v174);
  }

  sub_1AF6B06C0(a2, v184, v14, v161);
  if (*&v161[0])
  {
    if (v164 > 0)
    {
      v119 = *(&v162 + 1);
      if (*(&v162 + 1))
      {
        v118 = *(&v161[2] + 1);
        v15 = *(&v163 + 1);
        v16 = *(*(&v163 + 1) + 32);
        v17 = *(v163 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v170 = *&v161[0];
        v171 = *(v161 + 8);
        v172 = *(&v161[1] + 8);
        v160[2] = v161[2];
        v160[3] = v162;
        v160[4] = v163;
        v160[5] = v164;
        v160[0] = v161[0];
        v160[1] = v161[1];
        sub_1AF5DD298(v160, &v144);
        v18 = 0;
        v128 = 0x80000001AFF43C60;
        v127 = xmmword_1AFE4C680;
        v126 = xmmword_1AFE91AE0;
        v125 = xmmword_1AFE91AF0;
        v124 = xmmword_1AFE91B00;
        v140 = a3;
        v116 = v16;
        v117 = v15;
        v115 = v17;
        v138 = a1;
        do
        {
          v19 = v16;
          v120 = v18;
          v20 = (v118 + 48 * v18);
          v137 = *v20;
          v136 = v20[1];
          v22 = *(v20 + 2);
          v21 = *(v20 + 3);
          v24 = *(v20 + 4);
          v23 = *(v20 + 5);
          if (v17)
          {
            v25 = *(v23 + 376);

            os_unfair_lock_lock(v25);
            os_unfair_lock_lock(*(v23 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v19);

          sub_1AF630914(v26, v15, v165);

          v27 = sub_1AF64B110(&type metadata for ParticlePlaneCollider, &off_1F25530C8, v22, v21, v24, v15);
          v139 = v23;
          v123 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v22, v21, v24, v15);
          if (v22)
          {
            v28 = v138;
            if (v24)
            {
              v29 = v22;
              v30 = v24;
              v31 = *(v138 + 4);
              v121 = *(v138 + 8);
              v122 = v31;
              v32 = *(v138 + 12);
              v33 = v27 + 12;
              v34 = (v123 + 32);
              LODWORD(v123) = *(v138 + 20);
              v35 = v139;
              do
              {
                v47 = *v29++;
                v46 = v47;
                if ((v123 & *(v33 + 12)) != 0)
                {
                  v136 = v30;
                  v137 = v29;
                  v49 = *(v33 - 4);
                  v48 = *v33;
                  v50 = *(v33 + 4);

                  v51 = sub_1AF64B03C(&type metadata for LastFrameWorldTransform);
                  v53 = v52;

                  if (v53)
                  {
                    v54 = 1;
                    v55 = 0uLL;
                    v56 = 0uLL;
                    v57 = 0uLL;
                    v58 = 0uLL;
                  }

                  else
                  {
                    v54 = 0;
                    v59 = (v51 + (v46 << 6));
                    v55 = *v59;
                    v56 = v59[1];
                    v57 = v59[2];
                    v58 = v59[3];
                    LOBYTE(v144) = 0;
                  }

                  v60 = fminf(fmaxf(v49 + v122, 0.0), 1.0);
                  v61 = fminf(fmaxf(v48 + v121, 0.0), 1.0);
                  v180[0] = v55;
                  v180[1] = v56;
                  v62 = 1.0 - fminf(fmaxf(v50 + v32, 0.0), 1.0);
                  v180[2] = v57;
                  v180[3] = v58;
                  v181 = v54;
                  v63 = *(v33 - 12);
                  v64 = *(v33 - 11);
                  sub_1AFA13A2C(v180, v166, v34[-2], v34[-1], *v34, v34[1], v129, v130, v131, v132);
                  v65 = *(v28 + 16);
                  sub_1AFB943A8();
                  v144 = v66;
                  v145 = v61;
                  v146 = v62;
                  v147 = v166[0];
                  v148 = v166[1];
                  v149 = v166[2];
                  v150 = v166[3];
                  v151 = v166[4];
                  v152 = v166[5];
                  v153 = v166[6];
                  v154 = v166[7];
                  v155 = v166[8];
                  v156 = v166[9];
                  v157 = v167;
                  v158 = v60;
                  v159 = v65 * 0.5;
                  if (*a3)
                  {
                    ObjectType = swift_getObjectType();
                    type metadata accessor for particle_plane_collider_uniforms(0);
                    sub_1AF6F4524(&v144, 1, ObjectType, v68, v69, v70, v71, v72);
                  }

                  sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                  v36 = swift_allocObject();
                  v141 = 0;
                  v37 = v126;
                  *(v36 + 16) = v127;
                  *(v36 + 32) = v37;
                  *(v36 + 48) = 0;
                  *(v36 + 64) = v63;
                  *(v36 + 128) = 13;
                  v142 = 0;
                  v38 = v124;
                  *(v36 + 144) = v125;
                  *(v36 + 160) = 0;
                  *(v36 + 176) = v65 > 0.0;
                  *(v36 + 240) = 13;
                  v143 = 0;
                  *(v36 + 256) = v38;
                  *(v36 + 272) = 0;
                  *(v36 + 288) = v64;
                  *(v36 + 352) = 13;
                  v39 = *(a3 + 144);
                  v40 = *(*&v173[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                  v41 = *(*&v173[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                  v135 = v41;

                  v42 = v174;

                  v134 = v114;
                  MEMORY[0x1EEE9AC00](v43, v44);
                  v45 = v133;
                  *&v114[-80] = v140;
                  *&v114[-72] = v45;
                  *&v114[-64] = 0xD000000000000017;
                  *&v114[-56] = v128;
                  *&v114[-48] = v36;
                  *&v114[-40] = v39;
                  *&v114[-32] = 0;
                  v114[-24] = v40;
                  a3 = v140;
                  *&v114[-16] = v41;
                  *&v114[-8] = v173;
                  sub_1AFCBF008(v42, sub_1AFA09F2C);

                  v28 = v138;
                  v35 = v139;
                  v30 = v136;
                  v29 = v137;
                }

                v33 += 28;
                v34 += 4;
                --v30;
              }

              while (v30);
            }

            else
            {
              v35 = v139;
            }
          }

          else
          {
            v73 = (v136 - v137);
            v74 = v27 + 28 * v137 + 12;
            v75 = v137 << 6;
            v76 = v138;
            v35 = v139;
            while (v73)
            {
              if ((*(v76 + 20) & *(v74 + 12)) != 0)
              {
                v137 = v73;
                v88 = *(v74 - 4);
                v89 = *v74;
                v90 = *(v74 + 4);
                v92 = *(v76 + 4);
                v91 = *(v76 + 8);
                v93 = *(v76 + 12);

                v94 = sub_1AF64B03C(&type metadata for LastFrameWorldTransform);
                v96 = v95;

                if (v96)
                {
                  v97 = 1;
                  v98 = 0uLL;
                  v99 = 0uLL;
                  v100 = 0uLL;
                  v101 = 0uLL;
                }

                else
                {
                  v97 = 0;
                  v98 = *(v94 + v75);
                  v99 = *(v94 + v75 + 16);
                  v100 = *(v94 + v75 + 32);
                  v101 = *(v94 + v75 + 48);
                  LOBYTE(v144) = 0;
                }

                v102 = fminf(fmaxf(v89 + v91, 0.0), 1.0);
                v103 = 1.0 - fminf(fmaxf(v90 + v93, 0.0), 1.0);
                v182[0] = v98;
                v182[1] = v99;
                v182[2] = v100;
                v182[3] = v101;
                v183 = v97;
                v104 = *(v74 - 12);
                v105 = *(v74 - 11);
                v136 = v75;
                sub_1AFA13A2C(v182, v168, *(v123 + v75), *(v123 + v75 + 16), *(v123 + v75 + 32), *(v123 + v75 + 48), v129, v130, v131, v132);
                v106 = *(v76 + 16);
                sub_1AFB943A8();
                v144 = v107;
                v145 = v102;
                v146 = v103;
                v147 = v168[0];
                v148 = v168[1];
                v149 = v168[2];
                v150 = v168[3];
                v151 = v168[4];
                v152 = v168[5];
                v153 = v168[6];
                v154 = v168[7];
                v155 = v168[8];
                v156 = v168[9];
                v157 = v169;
                v158 = fminf(fmaxf(v88 + v92, 0.0), 1.0);
                v159 = v106 * 0.5;
                if (*a3)
                {
                  v108 = swift_getObjectType();
                  type metadata accessor for particle_plane_collider_uniforms(0);
                  sub_1AF6F4524(&v144, 1, v108, v109, v110, v111, v112, v113);
                }

                sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                v77 = swift_allocObject();
                v141 = 0;
                v78 = v126;
                *(v77 + 16) = v127;
                *(v77 + 32) = v78;
                *(v77 + 48) = 0;
                *(v77 + 64) = v104;
                *(v77 + 128) = 13;
                v142 = 0;
                v79 = v124;
                *(v77 + 144) = v125;
                *(v77 + 160) = 0;
                *(v77 + 176) = v106 > 0.0;
                *(v77 + 240) = 13;
                v143 = 0;
                *(v77 + 256) = v79;
                *(v77 + 272) = 0;
                *(v77 + 288) = v105;
                *(v77 + 352) = 13;
                v80 = v140;
                v81 = *(v140 + 144);
                v82 = *(*&v173[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                v83 = *(*&v173[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                v135 = v83;

                v84 = v174;

                v134 = v114;
                MEMORY[0x1EEE9AC00](v85, v86);
                v87 = v133;
                *&v114[-80] = v80;
                *&v114[-72] = v87;
                *&v114[-64] = 0xD000000000000017;
                *&v114[-56] = v128;
                *&v114[-48] = v77;
                *&v114[-40] = v81;
                *&v114[-32] = 0;
                v114[-24] = v82;
                *&v114[-16] = v83;
                *&v114[-8] = v173;
                sub_1AFCBF008(v84, sub_1AFA09E00);
                a3 = v80;

                v76 = v138;
                v35 = v139;
                v75 = v136;
                v73 = v137;
              }

              v73 = (v73 - 1);
              v74 += 28;
              v75 += 64;
            }
          }

          v15 = v117;
          sub_1AF630994(v117, &v170, v165);
          sub_1AF62D29C(v35);
          v16 = v116;
          ecs_stack_allocator_pop_snapshot(v116);
          v17 = v115;
          if (v115)
          {
            os_unfair_lock_unlock(*(v35 + 344));
            os_unfair_lock_unlock(*(v35 + 376));
          }

          v18 = v120 + 1;
        }

        while (v120 + 1 != v119);
        sub_1AF5D1564(v161);
      }
    }

    sub_1AF5D1564(v161);
  }
}

uint64_t sub_1AFA135B8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA13984(0, &qword_1EB641FA0, sub_1AFA08734, &type metadata for ParticleCollidableCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  *&v29[1] = 256;
  *&v29[4] = xmmword_1AFE201A0;
  *&v29[20] = 0xFF00000000;
  sub_1AFA065D4(a1, 0);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v26) = 6;
  v29[0] = sub_1AFDFE6A8() & 1;
  sub_1AFA13984(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v30 = 8;
  sub_1AF80A5A8();
  sub_1AFDFE6E8();
  if ((BYTE8(v26) & 1) == 0)
  {
    v11.i64[0] = v26;
    v25 = v11;
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    v15 = sub_1AF6950A0(v13, v14);
    v25 = vzip1q_s32(0, v25);
    v16 = *(v15 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v15 + 72) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AF423348(0, v16[2] + 1, 1, v16);
      *(v15 + 72) = v16;
    }

    v25 = vtrn2q_s32(v25, 0);
    v19 = v16[2];
    v18 = v16[3];
    v24 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1AF423348(v18 > 1, v19 + 1, 1, v16);
    }

    v27 = &type metadata for Scale3;
    v28 = &off_1F252F998;
    *&v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v16[2] = v24;
    sub_1AF616568(&v26, &v16[5 * v19 + 4]);
    *(v15 + 72) = v16;
  }

  v20 = a1[3];
  v21 = a1[4];
  sub_1AF441150(a1, v20);
  if (sub_1AF694FF8(2024, v20, v21))
  {
    LOBYTE(v26) = 7;
    v22 = sub_1AFDFE718();
    (*(v7 + 8))(v10, v6);
    v29[1] = v22 & 1;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = *v29;
  *(a2 + 12) = *&v29[12];
  return result;
}

void sub_1AFA13984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

float32x2_t sub_1AFA13A2C@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>, float32x4_t a7@<Q4>, float32x4_t a8@<Q5>, float32x4_t a9@<Q6>, float32x4_t a10@<Q7>)
{
  v11 = a6;
  if ((a1[4].i8[0] & 1) == 0)
  {
    v11 = a1[3];
  }

  v48 = v11;
  v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a4.f32[0]), a8, *a4.f32, 1), a9, a4, 2), a10, a4, 3);
  v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a3.f32[0]), a8, *a3.f32, 1), a9, a3, 2), a10, a3, 3);
  v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a5.f32[0]), a8, *a5.f32, 1), a9, a5, 2), a10, a5, 3);
  v56 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a6.f32[0]), a8, *a6.f32, 1), a9, a6, 2), a10, a6, 3);
  *&v12 = sub_1AF6DE0B4(xmmword_1AFE91B10, v55, v54, v53);
  v47 = v12;
  v44 = vmulq_f32(v55, v55);
  v46 = vextq_s8(v44, v44, 8uLL).u64[0];
  *&v12 = vadd_f32(*v44.i8, v46);
  LODWORD(v12) = vadd_f32(*&v12, vdup_lane_s32(*&v12, 1)).u32[0];
  v13 = vrsqrte_f32(v12);
  v14 = vmul_f32(v13, vrsqrts_f32(v12, vmul_f32(v13, v13)));
  v57.columns[0] = vmulq_n_f32(v55, vmul_f32(v14, vrsqrts_f32(v12, vmul_f32(v14, v14))).f32[0]);
  v43 = vmulq_f32(v54, v54);
  v15 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  v15.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
  v16 = vrsqrte_f32(v15.u32[0]);
  v17 = vmul_f32(v16, vrsqrts_f32(v15.u32[0], vmul_f32(v16, v16)));
  v15.i32[0] = vmul_f32(v17, vrsqrts_f32(v15.u32[0], vmul_f32(v17, v17))).u32[0];
  v42 = vmulq_f32(v53, v53);
  v45 = vextq_s8(v42, v42, 8uLL).u64[0];
  v18 = vadd_f32(*v42.i8, v45);
  v57.columns[1] = vmulq_n_f32(v54, *v15.i32);
  v18.i32[0] = vadd_f32(v18, vdup_lane_s32(v18, 1)).u32[0];
  v19 = vrsqrte_f32(v18.u32[0]);
  v20 = vmul_f32(v19, vrsqrts_f32(v18.u32[0], vmul_f32(v19, v19)));
  v57.columns[2] = vmulq_n_f32(v53, vmul_f32(v20, vrsqrts_f32(v18.u32[0], vmul_f32(v20, v20))).f32[0]);
  v57.columns[3] = v56;
  v58 = __invert_f4(v57);
  v21 = vtrn2q_s32(v44, v43);
  v21.i32[2] = v42.i32[1];
  v22 = vaddq_f32(vzip1q_s32(vzip2q_s32(v44, v42), vdupq_laneq_s32(v43, 2)), vaddq_f32(vzip1q_s32(vzip1q_s32(v44, v42), v43), v21));
  v23.i64[0] = 0x80000000800000;
  v23.i64[1] = 0x80000000800000;
  v24 = vcgeq_f32(v23, v22);
  v22.i32[3] = 0;
  v25 = vrsqrteq_f32(v22);
  v26 = vmulq_f32(v25, vrsqrtsq_f32(v22, vmulq_f32(v25, v25)));
  v27 = v24;
  v27.i32[3] = 0;
  v28 = vbslq_s8(vcltzq_s32(v27), v22, vmulq_f32(v26, vrsqrtsq_f32(v22, vmulq_f32(v26, v26))));
  v29 = vmulq_n_f32(v55, v28.f32[0]);
  v30 = vmulq_lane_f32(v54, *v28.f32, 1);
  v31 = vmulq_laneq_f32(v53, v28, 2);
  v32 = vuzp1q_s32(v31, v31);
  v33 = vuzp1q_s32(v30, v30);
  v34 = v29;
  if (v24.i32[0])
  {
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(v32, v31, 0xCuLL), vnegq_f32(v30)), v31, vextq_s8(v33, v30, 0xCuLL));
    v34 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v36 = vuzp1q_s32(v29, v29);
  v37 = v30;
  if (v24.i32[1])
  {
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(v36, v29, 0xCuLL), vnegq_f32(v31)), v29, vextq_s8(v32, v31, 0xCuLL));
    v37 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
  }

  if (v24.i32[2])
  {
    v39 = vmlaq_f32(vmulq_f32(vextq_s8(v33, v30, 0xCuLL), vnegq_f32(v29)), v30, vextq_s8(v36, v29, 0xCuLL));
    v31 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
  }

  v40 = vsubq_f32(v56, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v48.f32[0]), a8, *v48.f32, 1), a9, v48, 2), a10, v48, 3));
  v40.i32[3] = 0;
  *a2 = v47;
  *(a2 + 16) = v56;
  *(a2 + 32) = v40;
  *(a2 + 48) = v58;
  *(a2 + 112) = v34;
  result = vmul_f32(vsqrt_f32(vadd_f32(vzip1_s32(v46, v45), vadd_f32(vzip1_s32(*v44.i8, *v42.i8), vzip2_s32(*v44.i8, *v42.i8)))), 0x3F0000003F000000);
  *(a2 + 128) = v37;
  *(a2 + 144) = v31;
  *(a2 + 160) = result;
  return result;
}

uint64_t sub_1AFA13D0C(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, char a8, float a9)
{
  v243 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 11);
  v13 = *(a1 + 12);
  v14 = *(a1 + 13);
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  v206 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v12, v13, v14, v16);
  v208 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v12, v13, v14, v16);
  v198 = sub_1AF9C5D1C();
  v203 = v17;
  v212 = sub_1AF9C5D08();
  v213 = v18;
  v197 = sub_1AF9C5E38();
  v202 = v19;
  v219 = *a2;
  v20 = a1[3];
  v232 = a1[2];
  v21 = *a1;
  v231 = a1[1];
  v230 = v21;
  v22 = a1[5];
  v236 = a1[6];
  v23 = a1[4];
  v235 = v22;
  v221 = &type metadata for CollisionProperties;
  v222 = &off_1F2553AE0;
  v220 = *(a2 + 2);
  v234 = v23;
  v24 = *(a4 + 16);
  v201 = *(a3 + 32);
  v223 = v201;
  v233 = v20;
  v25 = *(a1 + 6);
  v26 = *(a1 + 7);
  v27 = v16[4];

  v28 = v27;
  v29 = v206;
  v196 = ecs_stack_allocator_allocate(v28, 8 * (v26 - v25), 8);
  v237 = v196;
  v238 = v26 - v25;
  v239 = 0;
  sub_1AF441194(&v219, v224);
  v228 = a9;
  v227 = v24;
  sub_1AF649C6C(*(v15 + 40), &type metadata for Anchored, v218);
  v200 = v218[0];
  v229 = v218[0];
  v30 = v208;
  v31 = ecs_stack_allocator_allocate(v16[4], 80 * (v26 - v25), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v219);
  v36 = v213;
  v37 = a9;
  v38 = a4;
  v39 = a6;
  v240 = v31;
  v241 = v26 - v25;
  v242 = 0;
  v40 = v212;
  if (v26 != v25)
  {
    v191 = 0;
    v192 = 0;
    v42 = *(a4 + 80) * 0.5;
    v43 = *a3;
    LODWORD(v185) = *(a3 + 8);
    LODWORD(v44) = HIDWORD(*a3);
    v45 = vext_s8(*v43.f32, *&vextq_s8(v43, v43, 8uLL), 4uLL);
    __asm { FMOV            V28.4S, #1.0 }

    v35.i32[0] = 1.0;
    v50.i64[0] = 0x8000000080000000;
    v50.i64[1] = 0x8000000080000000;
    v51 = &off_1AFE20000;
    v52.i64[0] = 0x8000000080000000;
    v52.i64[1] = 0x8000000080000000;
    v53 = 0uLL;
    v193 = _Q28;
    v194 = *a3;
    do
    {
      if (v36)
      {
        v54 = _Q28;
      }

      else
      {
        v54 = *(v40 + 16 * v25);
      }

      v55 = *(v30 + 16 * v25);
      v32.f32[0] = v37 * v55.f32[0];
      v56 = vextq_s8(v55, v55, 8uLL);
      *v56.i8 = vext_s8(*v55.f32, *v56.i8, 4uLL);
      *v33.f32 = vmul_n_f32(*v56.i8, v37);
      v57 = *(v29 + 16 * v25);
      v58 = vmul_f32(v45, *v33.f32);
      *v56.i32 = v58.f32[1] + ((v43.f32[0] * (v37 * v55.f32[0])) + v58.f32[0]);
      v59 = vbslq_s8(v50, v35, v56);
      if (*v56.i32 == 0.0)
      {
        v60 = 0.0;
      }

      else
      {
        v60 = *v59.i32;
      }

      if ((*(v39 + 1) & 1) == 0 && v60 >= 0.0)
      {
        goto LABEL_6;
      }

      v61 = vzip1q_s32(v32, v33);
      v61.i32[2] = v33.i32[1];
      v62 = vmuls_lane_f32(v37, v55, 3);
      v63 = v61;
      v63.f32[3] = v62;
      *v59.i32 = *&v57 - v32.f32[0];
      v64 = v59;
      v64.f32[1] = *(&v57 + 1) - v33.f32[0];
      v65 = v64;
      v65.f32[2] = *(&v57 + 2) - v33.f32[1];
      v66 = v65;
      v66.f32[3] = *(&v57 + 3) - v62;
      v67 = v42 * fmaxf(fmaxf(v54.f32[0], v54.f32[2]), v54.f32[1]);
      if (*(v39 + 1))
      {
        v68 = v43;
        v68.f32[3] = v44 + (v60 * v67);
        v69 = vmulq_f32(v63, v68);
        v70 = vaddv_f32(vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL)));
        if (v70 == 0.0)
        {
          goto LABEL_28;
        }

        v71 = vmulq_f32(v66, v68);
        v72 = vaddv_f32(vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL)));
      }

      else
      {
        v73 = vmulq_f32(v43, v61);
        v70 = v73.f32[2] + vaddv_f32(*v73.f32);
        if (v70 >= 0.0)
        {
LABEL_28:
          if ((*(v38 + 80) & 0x7FFFFFFF) == 0 || (a7 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_30;
        }

        v74 = vmulq_f32(v43, v65);
        v72 = (v74.f32[2] + vaddv_f32(*v74.f32)) + (v44 + (v60 * v67));
      }

      v75 = -v72 / v70;
      if (v75 > *v35.i32)
      {
        goto LABEL_6;
      }

      if ((*(v38 + 80) & 0x7FFFFFFF) == 0 || (a7 & 1) == 0)
      {
        if (v75 >= 0.0)
        {
          v76 = vmlaq_n_f32(v66, v63, v75);
          if ((a7 & 1) == 0)
          {
            goto LABEL_70;
          }

          v77 = *(a3 + 112);
          v78 = *(a3 + 144);
          v79 = vext_s8(*v78.i8, *v77.i8, 4uLL);
          v80 = vextq_s8(v78, v78, 8uLL).u64[0];
          v78.i32[1] = HIDWORD(*(a3 + 112));
          v32 = vsubq_f32(v76, *(a3 + 16));
          v33 = vextq_s8(v77, v77, 8uLL);
          *v32.f32 = vabs_f32(vrev64_s32(vadd_f32(vmul_laneq_f32(vzip1_s32(v80, *v33.f32), v32, 2), vadd_f32(vmul_f32(*v32.f32, *v78.i8), vmul_f32(vrev64_s32(*v32.f32), v79)))));
          v33.i64[0] = *(a3 + 160);
          if (a8)
          {
            *v32.f32 = vcgt_f32(*v32.f32, *v33.f32);
            if (((v32.i32[1] | v32.i32[0]) & 0x80000000) == 0)
            {
              goto LABEL_70;
            }
          }

          else
          {
            *v32.f32 = vcge_f32(*v33.f32, *v32.f32);
            if ((v32.i32[1] & v32.i32[0]) >= 0)
            {
LABEL_70:
              v140.i64[0] = vmulq_n_f32(v43, -v60).u64[0];
              v140.i64[1] = COERCE_UNSIGNED_INT(-(v60 * v185));
              v207 = v140;
              if (v203)
              {
LABEL_71:
                v189 = 0;
                v190 = 0;
                goto LABEL_72;
              }

LABEL_68:
              v139 = (v198 + 16 * v25);
              v189 = v139[1];
              v190 = *v139;
LABEL_72:
              v199 = v34;
              v209 = v75;
              if (v202)
              {
                v188 = 0;
              }

              else
              {
                v188 = *(v197 + 4 * v25);
              }

              v141 = v225;
              v142 = v226;
              sub_1AF441150(v224, v225);
              v143 = (*(v142 + 56))(v141, v142);
              if (v143 > 0.0)
              {
                if (v143 >= 1.0 || (v144 = v143, v145 = drand48(), v144 > v145))
                {
                  v196[v191++] = v25;
                  v239 = v191;
                }
              }

              if (v200)
              {
                v146 = vsubq_f32(v76, *(v29 + 16 * v25));
                v146.i32[3] = 0;
                v210 = v146;
                v186 = *(v30 + 16 * v25);
                v146.i32[3] = v186.i32[3];
                *(v30 + 16 * v25) = v146;
                v147 = v225;
                v148 = v226;
                sub_1AF441150(v224, v225);
                v149 = (*(v148 + 8))(v147, v148);
                v150 = v225;
                v151 = v226;
                sub_1AF441150(v224, v225);
                (*(v151 + 32))(v150, v151);
                v153 = v210;
                v153.i32[3] = v199.i32[3];
                v154 = vaddq_f32(v201, v153);
                v155 = vmulq_f32(v207, v154);
                v156 = v155.f32[2] + vaddv_f32(*v155.f32);
                v211 = v153;
                v157 = v153;
                if (v156 < 0.0)
                {
                  v158 = vmulq_n_f32(v207, v156);
                  v157 = vmlaq_n_f32(vmulq_n_f32(v158, -v149), vsubq_f32(v154, v158), v152);
                }

                v157.i32[3] = v186.i32[3];
                v187 = v157;
                *(v30 + 16 * v25) = v157;
              }

              else
              {
                v159 = v225;
                v160 = v226;
                sub_1AF441150(v224, v225);
                v161 = (*(v160 + 8))(v159, v160);
                v162 = v225;
                v163 = v226;
                sub_1AF441150(v224, v225);
                (*(v163 + 32))(v162, v163);
                v165 = *(v29 + 16 * v25);
                v166 = v165;
                v166.i32[3] = v183;
                v167 = *(v30 + 16 * v25);
                v168 = v167;
                v168.i32[3] = v184;
                v169 = vaddq_f32(v201, v168);
                v170 = vmulq_f32(v207, v169);
                v171 = v170.f32[2] + vaddv_f32(*v170.f32);
                v172 = v166;
                v173 = v168;
                if (v171 < 0.0)
                {
                  v174 = vmulq_n_f32(v207, v171);
                  v173 = vmlaq_n_f32(vmulq_n_f32(v174, -v161), vsubq_f32(v169, v174), v164);
                  v172 = vmlaq_n_f32(vmlaq_f32(v76, vdupq_n_s32(0x38D1B717u), v207), v173, (1.0 - v209) * a9);
                }

                v173.i32[3] = v167.i32[3];
                v187 = v173;
                *(v30 + 16 * v25) = v173;
                v172.i32[3] = v165.i32[3];
                *(v29 + 16 * v25) = v172;
                v211 = v199;
                v40 = v212;
              }

              v175 = v225;
              v176 = v226;
              sub_1AF441150(v224, v225);
              v177 = (*(v176 + 80))(v175, v176);
              if (v177 <= 0.0)
              {
                v39 = a6;
                v38 = a4;
                v37 = a9;
                v36 = v213;
                _Q28 = v193;
                v43 = v194;
                v35.i32[0] = 1.0;
              }

              else
              {
                v35.i32[0] = 1.0;
                if (v177 >= 1.0 || (v178 = v177, v179 = drand48(), v35.i32[0] = 1.0, *&v179 = v179, v178 > *&v179))
                {
                  v32.i64[0] = vaddq_f32(v76, vmulq_f32(v207, vdupq_n_s32(0x3C23D70Au))).u64[0];
                  v32.f32[2] = v76.f32[2] + vmuls_lane_f32(0.01, v207, 2);
                  v32.i32[3] = 0;
                  v33 = v187;
                  v33.i32[3] = v181;
                  LOBYTE(v219) = v203 & 1;
                  v218[0] = v202 & 1;
                  v180 = &v31[10 * v192];
                  *v180 = v32;
                  v180[1] = v207;
                  v180[2] = v33;
                  v180[3].i64[0] = v190;
                  v180[3].i64[1] = v189;
                  v180[4].i8[0] = v203 & 1;
                  v180[4].i32[1] = v188;
                  v180[4].i8[8] = v202 & 1;
                  v242 = ++v192;
                }

                v39 = a6;
                v38 = a4;
                v37 = a9;
                v36 = v213;
                _Q28 = v193;
                v43 = v194;
              }

              v50.i64[0] = 0x8000000080000000;
              v50.i64[1] = 0x8000000080000000;
              v51 = &off_1AFE20000;
              v52.i64[0] = 0x8000000080000000;
              v52.i64[1] = 0x8000000080000000;
              v53 = 0uLL;
              v34 = v211;
              goto LABEL_6;
            }
          }
        }

        goto LABEL_6;
      }

LABEL_30:
      v81 = *(a3 + 48);
      v86 = *(a3 + 64);
      v82 = *(a3 + 80);
      v83 = *(a3 + 96);
      v84 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, *v59.i32), v86, *v64.f32, 1), v82, v65, 2), v83, v66, 3);
      v85 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(vmulq_n_f32(v81, v32.f32[0]), v86, v33.f32[0]), v82, *v33.f32, 1), v83, v63, 3);
      v86.f32[0] = v67 + COERCE_FLOAT(*(a3 + 160));
      v87 = v86;
      v87.f32[1] = v67 + 0.0;
      v87.f32[2] = v67 + COERCE_FLOAT(HIDWORD(*(a3 + 160)));
      v88 = vcgezq_f32(v85);
      v88.i32[3] = 0;
      __asm { FMOV            V2.4S, #-1.0 }

      v90 = vbslq_s8(vcltzq_s32(v88), _Q28, _Q2);
      v91 = vabsq_f32(v85);
      v91.i32[3] = 0;
      v92 = vdivq_f32(_Q28, vmaxnmq_f32(v91, v51[163]));
      v93 = vmulq_f32(v92, v87);
      v94 = vmulq_f32(v84, vmulq_f32(v92, vnegq_f32(v90)));
      v33 = vsubq_f32(v94, v93);
      v32 = vaddq_f32(v93, v94);
      v75 = fmaxf(fmaxf(v33.f32[0], v33.f32[2]), v33.f32[1]);
      v32.f32[0] = fminf(fminf(v32.f32[0], v32.f32[2]), v32.f32[1]);
      if (v75 > v32.f32[0] || v32.f32[0] < 0.0)
      {
        goto LABEL_6;
      }

      v95 = vmlaq_n_f32(v84, v85, v75);
      v32 = vbslq_s8(vorrq_s8(vcltzq_f32(v95), vcgtzq_f32(v95)), vorrq_s8(vandq_s8(v95, v52), _Q28), v53);
      v33 = vmulq_f32(v84, v32);
      _Q4 = vmulq_f32(v85, v32);
      v65.f32[0] = fminf(v67, fminf(fminf(v86.f32[0], v67 + COERCE_FLOAT(HIDWORD(*(a3 + 160)))), v67 + 0.0));
      v97 = vsubq_f32(v87, vdupq_lane_s32(*v65.f32, 0));
      v98 = vsubq_f32(vmulq_f32(v95, v32), v97);
      v99 = vextq_s8(vextq_s8(v98, v98, 0xCuLL), v98, 8uLL);
      v98.i32[3] = 0;
      v99.i32[3] = 0;
      v100 = vmaxnmq_f32(v98, v99);
      if (fminf(fminf(v100.f32[0], v100.f32[2]), v100.f32[1]) >= 0.0 || (v75 >= 0.0 ? (v101 = v75 > *v35.i32) : (v101 = 1), v101))
      {
        v102 = vmulq_f32(_Q4, _Q4);
        v103 = vaddv_f32(*v102.f32);
        v104 = v102.f32[2] + v103;
        if ((v102.f32[2] + v103) < 0.00000011921)
        {
          goto LABEL_6;
        }

        v105 = v34;
        v106 = v65.f32[0] * v65.f32[0];
        v107 = vsubq_f32(v33, v97);
        v108 = vmulq_f32(_Q4, v107);
        v109 = vmulq_f32(v107, v107);
        v110 = vaddv_f32(*v108.f32);
        v111 = v108.f32[2] + v110;
        v112 = vaddv_f32(*v109.f32);
        v113 = (v111 * v111) - (v104 * ((v109.f32[2] + v112) - v106));
        if (v113 <= 0.0)
        {
          v75 = 1.0e10;
        }

        else
        {
          v75 = (-v111 - sqrtf(v113)) / v104;
        }

        v114 = v108.f32[1] + v108.f32[2];
        v115 = (v114 * v114) - ((v102.f32[1] + v102.f32[2]) * ((v109.f32[1] + v109.f32[2]) - v106));
        if (v115 > 0.0)
        {
          v116 = (-v114 - sqrtf(v115)) / (v102.f32[1] + v102.f32[2]);
          _NF = fabsf(v33.f32[0] + (_Q4.f32[0] * v116)) < v97.f32[0] && v116 < v75;
          v118 = _NF;
          if (v118 && v116 >= 0.0)
          {
            v75 = v116;
          }
        }

        v119 = v102.f32[2] + v102.f32[0];
        v120 = v108.f32[2] + v108.f32[0];
        v121 = (v120 * v120) - (v119 * ((v109.f32[2] + v109.f32[0]) - v106));
        if (v121 <= 0.0)
        {
          v34 = v105;
          v52.i64[0] = 0x8000000080000000;
          v52.i64[1] = 0x8000000080000000;
        }

        else
        {
          _S17 = (-v120 - sqrtf(v121)) / v119;
          __asm { FMLA            S18, S17, V4.S[1] }

          v124 = fabsf(_S18);
          v125 = _NF && v124 < v97.f32[1];
          v34 = v105;
          v52.i64[0] = 0x8000000080000000;
          v52.i64[1] = 0x8000000080000000;
          if (v125)
          {
            v75 = _S17;
          }
        }

        v126 = (v110 * v110) - (v103 * (v112 - v106));
        if (v126 <= 0.0)
        {
          goto LABEL_64;
        }

        _S5 = (-v110 - sqrtf(v126)) / v103;
        __asm { FMLA            S6, S5, V4.S[2] }

        v129 = fabsf(_S6);
        if (_NF && v129 < v97.f32[2])
        {
          v75 = _S5;
          if (_S5 < 0.0)
          {
            goto LABEL_6;
          }
        }

        else
        {
LABEL_64:
          if (v75 < 0.0)
          {
            goto LABEL_6;
          }
        }

        if (v75 > *v35.i32)
        {
          goto LABEL_6;
        }
      }

      v131 = vmulq_n_f32(_Q4, v75);
      if (v75 >= 0.0)
      {
        v132 = vmlaq_f32(v131, v32, v33);
        v133 = vbslq_s8(vorrq_s8(vcltzq_f32(v132), vcgtzq_f32(v132)), vorrq_s8(vandq_s8(v132, v52), _Q28), v53);
        v134 = vsubq_f32(vabsq_f32(v132), v97);
        v134.i32[3] = 0;
        v135 = vmaxnmq_f32(v134, v53);
        v136 = vmulq_f32(v135, v135);
        v132.f32[0] = v136.f32[2] + vaddv_f32(*v136.f32);
        *v136.f32 = vrsqrte_f32(v132.u32[0]);
        *v136.f32 = vmul_f32(*v136.f32, vrsqrts_f32(v132.u32[0], vmul_f32(*v136.f32, *v136.f32)));
        v137 = vmulq_f32(v133, vmulq_n_f32(v135, vmul_f32(*v136.f32, vrsqrts_f32(v132.u32[0], vmul_f32(*v136.f32, *v136.f32))).f32[0]));
        v138 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a3 + 112), v137.f32[0]), *(a3 + 128), *v137.f32, 1), *(a3 + 144), v137, 2);
        v138.i32[3] = v182;
        v76 = vmlaq_n_f32(v66, v85, v75);
        v207 = v138;
        if (v203)
        {
          goto LABEL_71;
        }

        goto LABEL_68;
      }

LABEL_6:
      ++v25;
    }

    while (v26 != v25);
  }

  sub_1AFA12AF8(&v223, a5 | ((HIDWORD(a5) & 1) << 32));
  return sub_1AFA09D20(&v223);
}

uint64_t getEnumTagSinglePayload for ParticlePlaneCollider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[28])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticlePlaneCollider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_1AFA14A84@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA17114(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1AFA14AC0(void *a1)
{
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  v10 = v1[1];
  v14 = *v1;
  v15 = v10;
  result = sub_1AFA09ECC(a1, &v12[-v8]);
  if (!v2)
  {
    v13 = *(&v15 + 1);
    v12[7] = 9;
    sub_1AF480018();
    sub_1AFDFE918();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double sub_1AFA14C08()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF5C86A8(v1);

  result = *v1;
  xmmword_1EB6C3550 = v1[0];
  unk_1EB6C3560 = v1[1];
  qword_1EB6C3570 = v2;
  return result;
}

void sub_1AFA14CB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + 160);
  if (qword_1EB637248 != -1)
  {
    swift_once();
  }

  v66[0] = xmmword_1EB6C3550;
  v66[1] = unk_1EB6C3560;
  v67 = qword_1EB6C3570;
  sub_1AF6B06C0(a1, v66, a4 & 0xFFFFFFFFFFLL, v48);
  v41 = *&v48[0];
  if (*&v48[0])
  {
    v12 = *(&v48[2] + 1);
    v13 = *(&v49 + 1);
    v37 = *(&v50 + 1);
    v40 = v50;
    v53 = *(v48 + 8);
    v54 = *(&v48[1] + 8);
    MEMORY[0x1EEE9AC00](v10, v11);
    v38 = v28;
    v39 = v14;
    v28[2] = v4;
    v29 = a4;
    v30 = v15;
    v31 = a1;
    v32 = v9;
    v33 = a1;
    v34 = a2;
    v35 = a3;
    if (v14 > 0 && v13)
    {
      v36 = &v36;
      v16 = v37;
      v17 = v37[4];
      v46 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v47[2] = v48[2];
      v47[3] = v49;
      v47[4] = v50;
      v47[5] = v51;
      v47[0] = v48[0];
      v47[1] = v48[1];
      sub_1AF5DD298(v47, v61);
      for (i = (v12 + 24); ; i += 6)
      {
        v45 = 0;
        v19 = v17;
        v20 = *(i - 6);
        v21 = *(i - 5);
        v22 = *(i - 4);
        v23 = *(i - 1);
        v43 = *i;
        v44 = v23;
        v24 = i[2];
        v42 = i[1];
        if (v46)
        {
          v25 = *(v24 + 376);

          v16 = v37;
          os_unfair_lock_lock(v25);
          os_unfair_lock_lock(*(v24 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v19);

        sub_1AF630914(v26, v16, v52);

        LOBYTE(v55) = 1;
        v61[0] = v40;
        v61[1] = v24;
        v61[2] = v16;
        v61[3] = v22;
        v61[4] = (v21 - v20 + v22);
        v61[5] = v39;
        v61[6] = v20;
        v61[7] = v21;
        v61[8] = 0;
        v61[9] = 0;
        v62 = 1;
        v63 = v44;
        v64 = v43;
        v65 = v42;
        v27 = v45;
        sub_1AFA16F54(v61, sub_1AFA172C0, v38);
        if (v27)
        {
          break;
        }

        v58 = v41;
        v59 = v53;
        v60 = v54;
        sub_1AF630994(v16, &v58, v52);
        sub_1AF62D29C(v24);
        ecs_stack_allocator_pop_snapshot(v19);
        v17 = v19;
        if (v46)
        {
          os_unfair_lock_unlock(*(v24 + 344));
          os_unfair_lock_unlock(*(v24 + 376));
        }

        if (!--v13)
        {
          sub_1AF0D9DB0(v48, &qword_1ED725EA0);
          sub_1AF0D9DB0(v48, &qword_1ED725EA0);
          return;
        }
      }

      v55 = v41;
      v56 = v53;
      v57 = v54;
      sub_1AF630994(v16, &v55, v52);
      sub_1AF62D29C(v24);
      ecs_stack_allocator_pop_snapshot(v19);
      os_unfair_lock_unlock(*(v24 + 344));
      os_unfair_lock_unlock(*(v24 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF0D9DB0(v48, &qword_1ED725EA0);
    }
  }
}