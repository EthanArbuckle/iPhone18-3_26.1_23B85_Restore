void sub_1AF10870C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_1AF10A380(a1, a2 - v2);
  }
}

void *sub_1AF10873C(uint64_t *a1, const char *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_meshSourceWithVertices_count_(VFXMeshSource, a2, *a1, (a1[1] - *a1) >> 4);
  v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v4, a1[6], a1[7] - a1[6]);
  v8 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(VFXMeshElement, v6, v5, 2, ((a1[7] - a1[6]) >> 1) >> 1, 2);
  v9 = a1[3];
  v10 = a1[4];
  if (v9 == v10)
  {
    v32 = v3;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, &v32, 1);
    v31 = v8;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, &v31, 1);
  }

  else
  {
    v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, v9, v10 - v9);
    v13 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v12, v11, @"kGeometrySourceSemanticColor", (a1[4] - a1[3]) >> 4, 1, 4, 4, 0, 0);
    v34[0] = v3;
    v34[1] = v13;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v34, 2);
    v33 = v8;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, &v33, 1);
  }

  v20 = objc_msgSend_meshWithSources_elements_(VFXMesh, v18, v15, v17);
  v23 = objc_msgSend_modelWithMesh_(VFXModel, v21, v20, v22);
  v27 = objc_msgSend_material(v23, v24, v25, v26);
  objc_msgSend_setShadingModel_(v27, v28, 2, v29);
  return v23;
}

void *sub_1AF1088E8(uint64_t *a1, const char *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_meshSourceWithVertices_count_(VFXMeshSource, a2, *a1, (a1[1] - *a1) >> 4);
  v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v4, a1[6], a1[7] - a1[6]);
  v8 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(VFXMeshElement, v6, v5, 0, ((a1[7] - a1[6]) >> 1) / 3uLL, 2);
  v9 = a1[3];
  v10 = a1[4];
  if (v9 == v10)
  {
    v32 = v3;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, &v32, 1);
    v31 = v8;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, &v31, 1);
  }

  else
  {
    v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, v9, v10 - v9);
    v13 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v12, v11, @"kGeometrySourceSemanticColor", (a1[4] - a1[3]) >> 4, 1, 4, 4, 0, 0);
    v34[0] = v3;
    v34[1] = v13;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v34, 2);
    v33 = v8;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, &v33, 1);
  }

  v20 = objc_msgSend_meshWithSources_elements_(VFXMesh, v18, v15, v17);
  v23 = objc_msgSend_modelWithMesh_(VFXModel, v21, v20, v22);
  v27 = objc_msgSend_material(v23, v24, v25, v26);
  objc_msgSend_setShadingModel_(v27, v28, 2, v29);
  return v23;
}

void *sub_1AF108AA0()
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v10 = xmmword_1AFE20760;
  sub_1AF108C08(&v11, &v10, &xmmword_1AFE20490, xmmword_1AFE20770);
  v0.f64[0] = -0.0000305175998;
  v0.f64[1] = -0.0000305175998;
  v8 = xmmword_1AFE20780;
  v9 = vnegq_f64(v0);
  v6 = v0;
  v7 = xmmword_1AFE20790;
  v5 = 0u;
  sub_1AF108D4C(&v11, &v5, &v9, &v8, &v7, &v6, &xmmword_1AFE204B0);
  v5 = xmmword_1AFE207A0;
  sub_1AF108E38(&v11, &v5, &xmmword_1AFE204B0, MEMORY[0x1E69E9B18], 0.5, 0.5);
  v4 = xmmword_1AFE207B0;
  sub_1AF108E38(&v11, &v4, &xmmword_1AFE204B0, MEMORY[0x1E69E9B18], 0.5, 0.5);
  v2 = sub_1AF10873C(&v11, v1);
  if (v14)
  {
    *(&v14 + 1) = v14;
    operator delete(v14);
  }

  if (*(&v12 + 1))
  {
    *&v13 = *(&v12 + 1);
    operator delete(*(&v12 + 1));
  }

  if (v11)
  {
    *(&v11 + 1) = v11;
    operator delete(v11);
  }

  return v2;
}

void sub_1AF108C08(uint64_t a1, float32x4_t *a2, _OWORD *a3, float32x4_t a4)
{
  v6 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v7 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v7;
  a4.i32[3] = 0;
  v8 = vsubq_f32(*a2, a4);
  v9 = vaddq_f32(a4, a4);
  v10 = vdupq_laneq_s32(v9, 3);
  v10.i32[0] = v9.i32[0];
  v16 = v8;
  v17 = vaddq_f32(v10, v8);
  v18 = vaddq_f32(vextq_s8(v9, vuzp2q_s32(v9, v9), 0xCuLL), v8);
  v19 = vaddq_f32(v10, v18);
  v11 = vzip2q_s32(v9, v9);
  v12 = vextq_s8(v11, v11, 8uLL);
  v20 = vaddq_f32(v12, v8);
  v21 = vaddq_f32(v12, v17);
  v22 = vaddq_f32(v12, v18);
  v23 = vaddq_f32(v12, v19);
  do
  {
    v15 = *(&v16 + v6);
    sub_1AF1083F4(a1, &v15);
    sub_1AF1084C8(a1 + 24, a3);
    v6 += 16;
  }

  while (v6 != 128);
  for (i = 0; i != 24; ++i)
  {
    sub_1AF1085A0(a1, word_1AFE20800[i]);
  }

  v14 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v14;
}

void sub_1AF108D4C(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, _OWORD *a7)
{
  v13 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v13;
  sub_1AF1083F4(a1, a2);
  sub_1AF1083F4(a1, a3);
  sub_1AF1083F4(a1, a4);
  sub_1AF1083F4(a1, a5);
  sub_1AF1083F4(a1, a6);
  v14 = 5;
  do
  {
    sub_1AF1084C8(a1 + 24, a7);
    --v14;
  }

  while (v14);
  for (i = 0; i != 16; ++i)
  {
    sub_1AF1085A0(a1, word_1AFE208A0[i]);
  }

  v16 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v16;
}

uint64_t sub_1AF108E38(uint64_t a1, float32x4_t *a2, _OWORD *a3, float32x4_t *a4, float a5, float a6)
{
  v11 = (a1 + 48);
  v12 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v12;
  sub_1AF108680(a1, 0x18u);
  v13 = 0;
  v14 = 0.0;
  do
  {
    v15 = v14 * 6.28318531 / 12.0;
    v16 = __sincosf_stret(v15);
    v17 = a4[1];
    v18 = a4[2];
    v19 = a4[3];
    v20 = vaddq_f32(vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a4, a6), v17, v16.__sinval * a5), v18, v16.__cosval * a5), 0, v19), *a2);
    *(*a1 + 16 * (v13 + *(a1 + 72))) = vaddq_f32(vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*a4, -a6), v17, v16.__sinval * a5), v18, v16.__cosval * a5), 0, v19), *a2);
    *(*a1 + 16 * (v13 + *(a1 + 72) + 12)) = v20;
    *(*(a1 + 24) + 16 * (v13 + *(a1 + 72))) = *a3;
    *(*(a1 + 24) + 16 * (v13 + *(a1 + 72) + 12)) = *a3;
    v14 = v14 + 1.0;
    ++v13;
  }

  while (v13 != 12);
  sub_1AF10870C(v11, ((*(a1 + 56) - *(a1 + 48)) >> 1) + 72);
  v21 = 0;
  v22 = *(a1 + 72);
  v23 = *(a1 + 76);
  v24 = *(a1 + 48);
  v25 = 1;
  v26 = v22;
  do
  {
    v27 = v23 + v21;
    *(v24 + 2 * (v23 + v21)) = v26;
    if (v21 == 66)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }

    *(v24 + 2 * (v27 + 1)) = v22 + v28;
    *(v24 + 2 * (v27 + 2)) = v26 + 12;
    result = (v27 + 3);
    *(v24 + 2 * result) = v22 + 12 + v28;
    *(v24 + 2 * (v27 + 4)) = v26;
    *(v24 + 2 * (v27 + 5)) = v26 + 12;
    v21 += 6;
    ++v26;
    ++v25;
  }

  while (v21 != 72);
  v30 = (*(a1 + 56) - v24) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v30;
  return result;
}

void *sub_1AF109044()
{
  *__p = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  sub_1AF1090DC(v3, &xmmword_1AFE204B0);
  v1 = sub_1AF10873C(v3, v0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  return v1;
}

void sub_1AF1090DC(uint64_t a1, _OWORD *a2)
{
  v13 = 0uLL;
  __asm { FMOV            V3.4S, #-1.0 }

  v11 = xmmword_1AFE207C0;
  v12 = vnegq_f64(_Q3);
  v9 = xmmword_1AFE207D0;
  v10 = _Q3;
  sub_1AF109B84(a1, &v13, &v12, a2, a2);
  sub_1AF109B84(a1, &v13, &v11, a2, a2);
  sub_1AF109B84(a1, &v13, &v9, a2, a2);
  sub_1AF109B84(a1, &v13, &v10, a2, a2);
  sub_1AF109C30(a1, &v12, &v11, &v9, &v10, a2);
}

void *sub_1AF1091A4()
{
  *__p = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v8 = xmmword_1AFE206C0;
  *v9 = 0u;
  __asm { FMOV            V0.4S, #1.0 }

  sub_1AF108C08(v9, &v8, &xmmword_1AFE204B0, _Q0);
  v6 = sub_1AF10873C(v9, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[1])
  {
    *&v11 = v10[1];
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  return v6;
}

void sub_1AF109238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AF104BA0(va);
  _Unwind_Resume(a1);
}

void *sub_1AF109250()
{
  *__p = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  __asm { FMOV            V0.4S, #-1.0 }

  v15 = xmmword_1AFE207C0;
  v16 = vnegq_f64(_Q0);
  v14 = _Q0;
  v13 = xmmword_1AFE207D0;
  sub_1AF109C30(v8, &v16, &v15, &v13, &v14, &xmmword_1AFE204B0);
  v6 = sub_1AF10873C(v8, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[1])
  {
    *&v10 = v9[1];
    operator delete(v9[1]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v6;
}

void *sub_1AF10931C()
{
  *__p = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  __asm { FMOV            V0.4S, #-1.0 }

  v15 = xmmword_1AFE207C0;
  v16 = vnegq_f64(_Q0);
  v14 = _Q0;
  v13 = xmmword_1AFE207D0;
  sub_1AF109C30(v8, &v16, &v15, &v13, &v14, &xmmword_1AFE20480);
  v6 = sub_1AF10873C(v8, v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[1])
  {
    *&v10 = v9[1];
    operator delete(v9[1]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v6;
}

void *sub_1AF1093E8()
{
  *__p = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  v8 = 0u;
  sub_1AF109638(v3, &v8, 1u);
  v1 = sub_1AF10873C(v3, v0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }

  return v1;
}

void sub_1AF1094D0(uint64_t a1, __int128 *a2, _OWORD *a3, int32x2_t a4)
{
  v7 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v7;
  v8 = vdup_lane_s32(a4, 0);
  v9 = 0.0;
  v10 = 24;
  do
  {
    v11 = v9 * 6.28318531 / 23.0;
    v17 = *a2;
    v12 = __sincosf_stret(v11);
    *&v13 = vmla_f32(*&v17, __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), v8);
    *(&v13 + 2) = *(&v17 + 2) + 0.0;
    v18 = v13;
    sub_1AF1083F4(a1, &v18);
    sub_1AF1084C8(a1 + 24, a3);
    v9 = v9 + 1.0;
    --v10;
  }

  while (v10);
  for (i = 1; i != 25; ++i)
  {
    sub_1AF1085A0(a1, i - 1);
    if (i == 24)
    {
      v15 = 0;
    }

    else
    {
      v15 = i;
    }

    sub_1AF1085A0(a1, v15);
  }

  v16 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v16;
}

void sub_1AF109638(uint64_t a1, __n128 *a2, unsigned int a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v6;
  v7 = 48 * a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v56[-16 * v7];
  v10 = (32 * v9);
  v14 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v56[-2 * v10];
  if (v16)
  {
    v58 = v13;
    v17 = 0;
    v57 = 2 * a3;
    v60 = (a3 + 1);
    v18 = *a2;
    LODWORD(v59) = HIDWORD(a2->n128_u64[0]);
    v19 = v14.n128_f32[1];
    v61 = v14;
    v62 = v18;
    v20 = v18.n128_f32[2];
    v21 = v14.n128_f32[2];
    v22 = &v56[-16 * v7];
    do
    {
      v23 = ++v17 * 3.14159265 / v60;
      v24 = __sincosf_stret(v23);
      v25 = 0;
      v26 = v61.n128_f32[0] * v24.__sinval;
      v27.n128_f32[0] = v59 + (v19 * v24.__cosval);
      v63 = v27;
      v28 = 0.0;
      do
      {
        v29 = __sincosf_stret(v28);
        *&v30 = v62.n128_f32[0] + (v26 * v29.__cosval);
        DWORD1(v30) = v63.n128_u32[0];
        *(&v30 + 2) = v20 + ((v21 * v24.__sinval) * v29.__sinval);
        *&v22[v25] = v30;
        v28 = v28 + 0.2618;
        v25 += 16;
      }

      while (v25 != 384);
      v22 += 384;
    }

    while (v17 != a3);
    v31 = 0;
    v32 = 0.0;
    do
    {
      v33 = v32 * 3.14159265 / a3;
      v34 = __sincosf_stret(v33);
      v35 = 0;
      v36 = v61;
      v36.n128_f32[0] = v61.n128_f32[0] * v34.__cosval;
      v62 = v36;
      v37 = 0.0;
      do
      {
        v63 = *a2;
        v38 = __sincosf_stret(v37);
        *&v39 = vmla_f32(v63.n128_u64[0], __PAIR64__(LODWORD(v38.__sinval), LODWORD(v38.__cosval)), v62.n128_u64[0]);
        *(&v39 + 2) = v63.n128_f32[2] + ((v21 * v34.__sinval) * v38.__cosval);
        *&v22[v35] = v39;
        v37 = v37 + 0.2618;
        v35 += 16;
      }

      while (v35 != 384);
      v22 += 384;
      v32 = v32 + 1.0;
      ++v31;
    }

    while (v31 != a3);
    v40 = v58;
    v41 = v57;
    if (v57)
    {
      v42 = 0;
      v43.i64[0] = 0x100000001;
      v43.i64[1] = 0x100000001;
      v44.i64[0] = 0x1800000018;
      v44.i64[1] = 0x1800000018;
      v45.i64[0] = 0x800000008;
      v45.i64[1] = 0x800000008;
      v46 = &v56[-2 * v10];
      do
      {
        v47 = 0;
        v48 = vdupq_lane_s32(v42, 1);
        v49 = xmmword_1AFE202E0;
        v50 = xmmword_1AFE202D0;
        do
        {
          v51 = &v46[v47];
          v65.val[0] = vuzp1q_s16(vaddq_s32(v49, v48), vaddq_s32(v50, v48));
          v52 = vaddq_s32(v50, v43);
          v53 = vaddq_s32(v49, v43);
          v65.val[1] = vuzp1q_s16(vaddq_s32(vbicq_s8(v53, vceqq_s32(v53, v44)), v48), vaddq_s32(vbicq_s8(v52, vceqq_s32(v52, v44)), v48));
          vst2q_s16(v51, v65);
          v49 = vaddq_s32(v49, v45);
          v50 = vaddq_s32(v50, v45);
          v47 += 32;
        }

        while (v47 != 96);
        v42 = vadd_s32(v42, 0x1800000001);
        v46 += 96;
      }

      while (v42.i32[0] != v41);
    }

    if (v7)
    {
      do
      {
        sub_1AF1083F4(a1, v8);
        sub_1AF1084C8(a1 + 24, v40);
        ++v8;
        --v7;
      }

      while (v7);
    }

    if (v10)
    {
      do
      {
        v54 = *v15++;
        sub_1AF1085A0(a1, v54);
        --v10;
      }

      while (v10);
    }
  }

  v55 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v55;
}

void sub_1AF109998(uint64_t a1, _OWORD *a2, float a3)
{
  v5 = a3 * 5.5;
  v6 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v6;
  v7 = &unk_1AFE20834;
  v8 = 14;
  v9 = &unk_1AFE207F8;
  v10 = vld1q_dup_f32(v9);
  v11 = xmmword_1AFE207E0;
  v21 = v10;
  do
  {
    v10.f32[0] = *(v7 - 1) * 0.1;
    v12 = v21;
    v12.f32[0] = v10.f32[0] * 11.15;
    v10.f32[0] = sqrtf((v10.f32[0] * v10.f32[0]) + 78.613);
    v13 = vaddq_f32(vdivq_f32(v12, vdupq_lane_s32(*v10.f32, 0)), v11);
    v13.f32[1] = *v7 * 0.1;
    v13.f32[2] = v5 + v13.f32[2];
    v22 = v13;
    sub_1AF1083F4(a1, &v22);
    sub_1AF1084C8(a1 + 24, a2);
    v11 = xmmword_1AFE207E0;
    v7 += 2;
    --v8;
  }

  while (v8);
  v14 = &unk_1AFE20894;
  for (i = 13; i > 1; --i)
  {
    v10.f32[0] = *(v14 - 1) * -0.1;
    v16 = v21;
    v16.f32[0] = v10.f32[0] * 11.15;
    v10.f32[0] = sqrtf((v10.f32[0] * v10.f32[0]) + 78.613);
    v17 = vaddq_f32(vdivq_f32(v16, vdupq_lane_s32(*v10.f32, 0)), v11);
    v17.f32[1] = *v14 * 0.1;
    v17.f32[2] = v5 + v17.f32[2];
    v22 = v17;
    sub_1AF1083F4(a1, &v22);
    sub_1AF1084C8(a1 + 24, a2);
    v11 = xmmword_1AFE207E0;
    v14 -= 2;
  }

  for (j = 1; j != 27; ++j)
  {
    sub_1AF1085A0(a1, j - 1);
    if (j == 26)
    {
      v19 = 0;
    }

    else
    {
      v19 = j;
    }

    sub_1AF1085A0(a1, v19);
  }

  v20 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v20;
}

void sub_1AF109B84(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v9 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v9;
  sub_1AF1083F4(a1, a2);
  sub_1AF1083F4(a1, a3);
  sub_1AF1084C8(a1 + 24, a4);
  sub_1AF1084C8(a1 + 24, a5);
  sub_1AF1085A0(a1, 0);
  sub_1AF1085A0(a1, 1);
  v10 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v10;
}

void sub_1AF109C30(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6)
{
  v12 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v12;
  sub_1AF109B84(a1, a2, a3, a6, a6);
  sub_1AF109B84(a1, a3, a4, a6, a6);
  sub_1AF109B84(a1, a4, a5, a6, a6);
  sub_1AF109B84(a1, a5, a2, a6, a6);
  v13 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v13;
}

void sub_1AF109D00(uint64_t a1, float32x4_t *a2, float32x2_t *a3, _OWORD *a4, float a5, float a6)
{
  v10 = (a1 + 48);
  v11 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v11;
  sub_1AF108680(a1, 0x33u);
  v12 = 0;
  v13 = *a2;
  v28 = *a2;
  v13.i32[0] = a3[1];
  v14.i32[0] = 1.0;
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v15.i32[0] = vbslq_s8(v15, v14, v13).i32[0];
  v16 = COERCE_FLOAT(HIDWORD(*a3)) / (fabsf(v13.f32[0]) + 1.0);
  v17 = vmuls_lane_f32(v16, *a3, 1);
  v18.f32[0] = -(COERCE_FLOAT(*a3->f32) * v16);
  v13.f32[0] = v13.f32[0] + (*v15.i32 * v17);
  v13.f32[1] = *v15.i32 * v18.f32[0];
  v13.f32[2] = -COERCE_FLOAT(*a3->f32);
  v18.f32[1] = 1.0 - v17;
  v18.i32[2] = vmuls_lane_f32(-*v15.i32, *a3, 1);
  v31 = vmulq_n_f32(v13, a6);
  v33 = vmlaq_n_f32(*a2, *a3->f32, a5);
  v30 = vmulq_n_f32(v18, a6);
  v19 = 0.0;
  do
  {
    v20 = __sincosf_stret(v19);
    *(*a1 + 16 * (v12 + *(a1 + 72))) = vmlaq_n_f32(vmlaq_n_f32(v33, v31, v20.__cosval), v30, v20.__sinval);
    *(*(a1 + 24) + 16 * (v12 + *(a1 + 72))) = *a4;
    ++v12;
    v19 = v19 + 0.12566;
  }

  while (v12 != 50);
  *(*a1 + 16 * (*(a1 + 72) + 50)) = v28;
  *(*(a1 + 24) + 16 * (*(a1 + 72) + 50)) = *a4;
  sub_1AF10870C(v10, ((*(a1 + 56) - *(a1 + 48)) >> 1) + 108);
  v21 = *(a1 + 72);
  v22 = *(a1 + 76);
  v23 = *(a1 + 48);
  v24 = 1;
  v25 = v22;
  do
  {
    *(v23 + 2 * v25) = v21 + v24 - 1;
    if (v24 == 50)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    *(v23 + 2 * (v25 + 1)) = v21 + v26;
    v25 += 2;
    ++v24;
  }

  while (v24 != 51);
  *(v23 + 2 * (v22 + 100)) = v21 + 50;
  *(v23 + 2 * (v22 + 101)) = v21;
  *(v23 + 2 * (v22 + 102)) = v21 + 50;
  *(v23 + 2 * (v22 + 103)) = v21 + 12;
  *(v23 + 2 * (v22 + 104)) = v21 + 50;
  *(v23 + 2 * (v22 + 105)) = v21 + 25;
  *(v23 + 2 * (v22 + 106)) = v21 + 50;
  *(v23 + 2 * (v22 + 107)) = v21 + 37;
  v27 = (*(a1 + 56) - v23) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v27;
}

void sub_1AF109F44(uint64_t a1, _OWORD *a2)
{
  v4 = (a1 + 48);
  v5 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v5;
  sub_1AF108680(a1, 0x25u);
  sub_1AF10870C(v4, ((*(a1 + 56) - *v4) >> 1) + 180);
  v6 = 0;
  v7 = 5;
  v8 = 2;
  __asm
  {
    FMOV            V10.2S, #5.0
    FMOV            V0.2S, #0.75
  }

  v41 = _D0;
  v42 = vdupq_n_s64(0x3F847AE140000000uLL);
  __asm { FMOV            V0.4S, #0.75 }

  v40 = *(&_Q0 + 1);
  do
  {
    v16 = v6;
    v18 = __sincos_stret((2 * (v6 & 0x7FFFu)) * 3.14159265 / 12.0);
    v17.f64[0] = v18.__cosval;
    v19 = *(a1 + 72);
    v20 = v8 + v19;
    v21 = v8 + v19 - 2;
    v22 = v7 + *(a1 + 76);
    v23 = *(a1 + 48);
    *(v23 + 2 * (v22 - 5)) = v8 + v19 - 2;
    if (v6 == 11)
    {
      v24 = -36;
    }

    else
    {
      v24 = 0;
    }

    v25 = v8 + v24 + v19;
    v26 = v25 + 2;
    *(v23 + 2 * (v22 - 4)) = v25 + 2;
    *(v23 + 2 * (v22 - 3)) = v20 - 1;
    *(v23 + 2 * (v22 - 2)) = v21;
    *(v23 + 2 * (v22 - 1)) = v25 + 1;
    *(v23 + 2 * v22) = v25 + 2;
    *(v23 + 2 * (v22 + 1)) = v20 - 1;
    v25 += 3;
    *(v23 + 2 * (v22 + 2)) = v25;
    *(v23 + 2 * (v22 + 3)) = v20;
    *(v23 + 2 * (v22 + 4)) = v20 - 1;
    *(v23 + 2 * (v22 + 5)) = v26;
    *(v23 + 2 * (v22 + 6)) = v25;
    v17.f64[1] = v18.__sinval;
    v27 = vmulq_f64(v17, v42);
    *&v27.f64[0] = vcvt_f32_f64(v27);
    *(*a1 + 16 * v21) = v27;
    *&v28 = vmul_f32(*&v27.f64[0], _D10);
    *(&v28 + 1) = v41;
    *(&v29 + 1) = v40;
    *&v29 = v27.f64[0];
    *(*a1 + 16 * (v8 + *(a1 + 72) - 1)) = v29;
    *(*a1 + 16 * (v8 + *(a1 + 72))) = v28;
    ++v6;
    v7 += 12;
    v8 += 3;
  }

  while (v16 < 0xB);
  v30 = 0;
  v32 = *(a1 + 72);
  v31 = *(a1 + 76);
  v33 = v32 + 36;
  v34 = *(a1 + 48);
  v35 = v32 + 32;
  do
  {
    v36 = v31 + v30;
    *(v34 + 2 * (v31 + v30 + 144)) = v33;
    if (v30 == 33)
    {
      v37 = 36;
    }

    else
    {
      v37 = 0;
    }

    *(v34 + 2 * (v36 + 145)) = v37 + v35;
    *(v34 + 2 * (v36 + 146)) = v35 + 3;
    v35 -= 3;
    v30 += 3;
  }

  while (v30 != 36);
  v38 = 0;
  *(*a1 + 16 * v33) = xmmword_1AFE20180;
  do
  {
    *(*(a1 + 24) + 16 * (v38 + *(a1 + 72))) = *a2;
    ++v38;
  }

  while (v38 != 37);
  v39 = (*(a1 + 56) - *(a1 + 48)) >> 1;
  *(a1 + 72) = (*(a1 + 8) - *a1) >> 4;
  *(a1 + 76) = v39;
}

void sub_1AF10A1E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF10A228(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF10A26C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_1AF10A1D0();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1AF10A1E0(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1AF10A380(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1AF10A228(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_1AF10BB48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_node(VFXNode, a2, a3, a4);
  LODWORD(v6) = 1014350479;
  LODWORD(v7) = 1060320051;
  v11 = objc_msgSend_cylinderWithRadius_height_(VFXParametricModel, v8, v9, v10, v6, v7);
  v14 = objc_msgSend_nodeWithModel_(VFXNode, v12, v11, v13);
  objc_msgSend_setPosition_(v14, v15, v16, v17);
  objc_msgSend_addChildNode_(v5, v18, v14, v19);
  LODWORD(v20) = 1031127695;
  LODWORD(v21) = 1050253722;
  v25 = objc_msgSend_coneWithTopRadius_bottomRadius_height_(VFXParametricModel, v22, v23, v24, 0.0, v20, v21);
  v28 = objc_msgSend_nodeWithModel_(VFXNode, v26, v25, v27);
  objc_msgSend_setPosition_(v28, v29, v30, v31, 0.00156250037);
  objc_msgSend_addChildNode_(v5, v32, v28, v33);
  v37 = objc_msgSend_flattenedClone(v5, v34, v35, v36);
  LODWORD(v38) = 1028443341;
  LODWORD(v39) = 1060320051;
  v43 = objc_msgSend_cylinderWithRadius_height_(VFXParametricModel, v40, v41, v42, v38, v39);
  v46 = objc_msgSend_nodeWithModel_(VFXNode, v44, v43, v45);
  objc_msgSend_setPosition_(v46, v47, v48, v49, 0.000001144409);
  objc_msgSend_setHidden_(v46, v50, 1, v51);
  objc_msgSend_setCategoryBitMask_(v46, v52, 0xFFFFLL, v53);
  objc_msgSend_addChildNode_(v37, v54, v46, v55);
  v59 = objc_msgSend_material(VFXMaterial, v56, v57, v58);
  v63 = objc_msgSend_diffuse(v59, v60, v61, v62);
  objc_msgSend_setContents_(v63, v64, a1, v65);
  objc_msgSend_setShadingModel_(v59, v66, 2, v67);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = sub_1AF110F58;
  v71[3] = &unk_1E7A79810;
  v71[4] = v59;
  objc_msgSend_enumerateHierarchyUsingBlock_(v37, v68, v71, v69);
  return v37;
}

void *sub_1AF10BD04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_node(VFXNode, a2, a3, a4);
  LODWORD(v6) = 1008981770;
  LODWORD(v7) = 1058642330;
  v11 = objc_msgSend_cylinderWithRadius_height_(VFXParametricModel, v8, v9, v10, v6, v7);
  v14 = objc_msgSend_nodeWithModel_(VFXNode, v12, v11, v13);
  objc_msgSend_setPosition_(v14, v15, v16, v17, 0.000000381469818);
  objc_msgSend_addChildNode_(v5, v18, v14, v19);
  v23 = objc_msgSend_flattenedClone(v5, v20, v21, v22);
  v27 = objc_msgSend_material(VFXMaterial, v24, v25, v26);
  v31 = objc_msgSend_diffuse(v27, v28, v29, v30);
  objc_msgSend_setContents_(v31, v32, a1, v33);
  objc_msgSend_setShadingModel_(v27, v34, 2, v35);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1AF111000;
  v39[3] = &unk_1E7A79810;
  v39[4] = v27;
  objc_msgSend_enumerateHierarchyUsingBlock_(v23, v36, v39, v37);
  return v23;
}

void *sub_1AF10BE14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  LODWORD(a5) = 1050253722;
  LODWORD(a6) = 1050253722;
  v7 = objc_msgSend_planeWithWidth_height_(VFXParametricModel, a2, a3, a4, a5, a6);
  v10 = objc_msgSend_nodeWithModel_(VFXNode, v8, v7, v9);
  LODWORD(v11) = 1046034724;
  LODWORD(v12) = 1008981770;
  v16 = objc_msgSend_torusWithRingRadius_pipeRadius_(VFXParametricModel, v13, v14, v15, v11, v12);
  objc_msgSend_setPipeSegmentCount_(v16, v17, 3, v18);
  objc_msgSend_setRadialSegmentCount_(v16, v19, 4, v20);
  v23 = objc_msgSend_nodeWithModel_(VFXNode, v21, v16, v22);
  objc_msgSend_setEulerAngles_(v23, v24, v25, v26, COERCE_DOUBLE(1070141403));
  objc_msgSend_addChildNode_(v10, v27, v23, v28);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1AF1110A8;
  v32[3] = &unk_1E7A79810;
  v32[4] = a1;
  objc_msgSend_enumerateHierarchyUsingBlock_(v10, v29, v32, v30);
  return v10;
}

void *sub_1AF10BF20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_node(VFXNode, a2, a3, a4);
  LODWORD(v6) = 1050253722;
  v10 = objc_msgSend_cylinderWithRadius_height_(VFXParametricModel, v7, v8, v9, v6, 0.0);
  LODWORD(v11) = 0.25;
  objc_msgSend_setRadialSpan_(v10, v12, v13, v14, v11);
  objc_msgSend_setRadialSegmentCount_(v10, v15, 24, v16);
  v19 = objc_msgSend_nodeWithModel_(VFXNode, v17, v10, v18);
  objc_msgSend_addChildNode_(v5, v20, v19, v21);
  LODWORD(v22) = 1059984507;
  LODWORD(v23) = 1014350479;
  v27 = objc_msgSend_torusWithRingRadius_pipeRadius_(VFXParametricModel, v24, v25, v26, v22, v23);
  LODWORD(v28) = 0.25;
  objc_msgSend_setRadialSpan_(v27, v29, v30, v31, v28);
  objc_msgSend_setRadialSegmentCount_(v27, v32, 24, v33);
  objc_msgSend_setPipeSegmentCount_(v27, v34, 6, v35);
  v38 = objc_msgSend_nodeWithModel_(VFXNode, v36, v27, v37);
  objc_msgSend_addChildNode_(v5, v39, v38, v40);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1AF111268;
  v44[3] = &unk_1E7A79810;
  v44[4] = a1;
  objc_msgSend_enumerateHierarchyUsingBlock_(v5, v41, v44, v42);
  return v5;
}

void *sub_1AF10C05C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = LODWORD(a5);
  LODWORD(a6) = 1008981770;
  LODWORD(a5) = 1.0;
  v8 = objc_msgSend_torusWithRingRadius_pipeRadius_(VFXParametricModel, a2, a3, a4, a5, a6);
  objc_msgSend_setPipeSegmentCount_(v8, v9, 5, v10);
  objc_msgSend_setRadialSegmentCount_(v8, v11, 64, v12);
  v15 = objc_msgSend_nodeWithModel_(VFXNode, v13, v8, v14);
  objc_msgSend_setHittable_(v15, v16, 0, v17);
  LODWORD(v18) = 1032805417;
  LODWORD(v19) = 1.0;
  v23 = objc_msgSend_torusWithRingRadius_pipeRadius_(VFXParametricModel, v20, v21, v22, v19, v18);
  objc_msgSend_setPipeSegmentCount_(v23, v24, 5, v25);
  objc_msgSend_setRadialSegmentCount_(v23, v26, 30, v27);
  v30 = objc_msgSend_nodeWithModel_(VFXNode, v28, v23, v29);
  objc_msgSend_setHidden_(v30, v31, 1, v32);
  objc_msgSend_setCategoryBitMask_(v30, v33, 0xFFFFLL, v34);
  objc_msgSend_addChildNode_(v15, v35, v30, v36);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1AF111434;
  v40[3] = &unk_1E7A79838;
  v41 = v6;
  v40[4] = a1;
  objc_msgSend_enumerateHierarchyUsingBlock_(v15, v37, v40, v38);
  return v15;
}

uint64_t sub_1AF10C564(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_targets(a1, a2, a3, a4);
  result = objc_msgSend_firstObject(v5, v6, v7, v8);
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = objc_msgSend_effectiveEditingSpace(a1, v10, v11, v12);
  v18.columns[0] = 0uLL;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v18.columns[2] = xmmword_1AFE20180;
      v18.columns[1] = xmmword_1AFE20160;
      v18.columns[0] = xmmword_1AFE20150;
    }

    else
    {
      v18.columns[1] = 0uLL;
      v18.columns[2] = 0uLL;
      if (v14 == 3)
      {
        v20 = objc_msgSend_authoringEnvironment(a1, v15, v16, v17, 0.0, 0.0, 0.0);
        objc_msgSend_viewMatrix(v20, v21, v22, v23);
        v18 = __invert_f4(v57);
      }
    }

    goto LABEL_15;
  }

  if (v14)
  {
    v18.columns[1] = 0uLL;
    v18.columns[2] = 0uLL;
    if (v14 != 1)
    {
      goto LABEL_15;
    }

    v19 = objc_msgSend_parentItem(v13, v15, v16, v17, 0.0, 0.0, 0.0);
    if (!v19)
    {
      objc_msgSend_worldTransform(v13, v15, v16, v17);
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v13;
  }

  objc_msgSend_worldTransform(v19, v15, v16, v17);
LABEL_15:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v24 = objc_msgSend_targets(a1, v15, v16, v17, v18.columns[1].i64[0], v18.columns[1].i64[1], *v18.columns, v18.columns[2].i64[0], v18.columns[2].i64[1]);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v51, v55, 16);
  v29 = 0uLL;
  if (result)
  {
    v30 = result;
    v31 = *v52;
    v32 = 0.0;
    do
    {
      v33 = 0;
      do
      {
        v49 = v29;
        if (*v52 != v31)
        {
          objc_enumerationMutation(v24);
        }

        objc_msgSend_worldTransform(*(*(&v51 + 1) + 8 * v33), v26, v27, v28);
        v36 = vmovn_s32(vcgtq_f32(v34, v49)).u8[0];
        v37 = a1[78];
        if (v36)
        {
          v38 = v34.f32[0];
        }

        else
        {
          v38 = v49.f32[0];
        }

        v39 = vaddq_f32(v49, v34).u32[0];
        if (v36)
        {
          v40 = v49.f32[0];
        }

        else
        {
          v40 = v34.f32[0];
        }

        if (v37 != 1)
        {
          v40 = *&v39;
        }

        if (v37 == 2)
        {
          v35.f32[0] = v38;
        }

        else
        {
          v35.f32[0] = v40;
        }

        *(v35.i64 + 4) = *(v49.i64 + 4);
        v41 = a1[79];
        v42 = v49.f32[1];
        if (v49.f32[1] >= v34.f32[1])
        {
          v43 = v49.f32[1];
        }

        else
        {
          v43 = v34.f32[1];
        }

        if (v49.f32[1] >= v34.f32[1])
        {
          v42 = v34.f32[1];
        }

        if (v41 != 1)
        {
          v42 = v34.f32[1] + v49.f32[1];
        }

        if (v41 == 2)
        {
          v42 = v43;
        }

        v44 = v35;
        v44.f32[1] = v42;
        v45 = v34.f32[2];
        v46 = v34.f32[2] + v49.f32[2];
        if (v49.f32[2] >= v34.f32[2])
        {
          v47 = v49.f32[2];
        }

        else
        {
          v47 = v34.f32[2];
        }

        if (v37 == 2)
        {
          v46 = v47;
        }

        if (v49.f32[2] < v34.f32[2])
        {
          v45 = v49.f32[2];
        }

        if (a1[80] != 1)
        {
          v45 = v46;
        }

        v44.f32[2] = v45;
        v48 = v44;
        v48.i32[3] = v49.i32[3];
        v32 = v32 + 1.0;
        ++v33;
        v29 = v48;
      }

      while (v30 != v33);
      v50 = v48;
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v51, v55, 16);
      v29 = v50;
      v30 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF10CBD8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_blackColor(MEMORY[0x1E69DC888], a2, a3, a4);
  v9 = objc_msgSend_model(a2, v6, v7, v8);
  Material = objc_msgSend_firstMaterial(v9, v10, v11, v12);
  v17 = objc_msgSend_emission(Material, v14, v15, v16);
  objc_msgSend_setContents_(v17, v18, v5, v19);
  v23 = objc_msgSend_whiteColor(MEMORY[0x1E69DC888], v20, v21, v22);
  v27 = objc_msgSend_model(a2, v24, v25, v26);
  v31 = objc_msgSend_firstMaterial(v27, v28, v29, v30);
  v35 = objc_msgSend_multiply(v31, v32, v33, v34);

  return objc_msgSend_setContents_(v35, v36, v23, v37);
}

uint64_t sub_1AF10CF70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_whiteColor(MEMORY[0x1E69DC888], a2, a3, a4);
  v9 = objc_msgSend_model(a2, v6, v7, v8);
  Material = objc_msgSend_firstMaterial(v9, v10, v11, v12);
  v17 = objc_msgSend_emission(Material, v14, v15, v16);
  objc_msgSend_setContents_(v17, v18, v5, v19);
  v23 = objc_msgSend_orangeColor(MEMORY[0x1E69DC888], v20, v21, v22);
  v27 = objc_msgSend_model(a2, v24, v25, v26);
  v31 = objc_msgSend_firstMaterial(v27, v28, v29, v30);
  v35 = objc_msgSend_multiply(v31, v32, v33, v34);

  return objc_msgSend_setContents_(v35, v36, v23, v37);
}

__n128 sub_1AF10E1B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_initializeDraggedTransform(a2, a2, a3, a4);
  objc_msgSend_worldTransform(a2, v7, v8, v9);
  v66 = v11;
  v67 = v10;
  v65 = v12;
  v68 = v13;
  v14 = (*(*(a1 + 32) + 408) + (a3 << 6));
  objc_msgSend_transform(a2, v15, v16, v17);
  *v14 = v19;
  v14[1] = v20;
  v14[2] = v21;
  v14[3] = v18;
  v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL), vnegq_f32(v65)), v66, vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL));
  v23 = vmulq_f32(v67, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL));
  v53 = (v23.f32[2] + vaddv_f32(*v23.f32)) < 0.0;
  v24 = 1.0;
  if (v53)
  {
    v24 = -1.0;
  }

  v25 = vmulq_f32(v67, v67);
  v26 = vmulq_f32(v65, v65);
  *v18.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8))));
  v27 = vmulq_f32(v66, v66);
  v18.i32[2] = sqrtf(*&v27.i32[2] + vaddv_f32(*v27.i8));
  *(*(*(a1 + 32) + 416) + 16 * a3) = vmulq_n_f32(v18, v24);
  v28 = vzip2q_s32(v25, v27);
  v29 = vzip1q_s32(vzip1q_s32(v25, v27), v26);
  v30 = vtrn2q_s32(v25, v26);
  v30.i32[2] = v27.i32[1];
  v31 = vaddq_f32(vzip1q_s32(v28, vdupq_laneq_s32(v26, 2)), vaddq_f32(v29, v30));
  v30.i64[0] = 0x80000000800000;
  v30.i64[1] = 0x80000000800000;
  v32 = vcgeq_f32(v30, v31);
  v31.i32[3] = 0;
  v33 = vrsqrteq_f32(v31);
  v34 = vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33)));
  v35 = v32;
  v35.i32[3] = 0;
  v36 = vbslq_s8(vcltzq_s32(v35), v31, vmulq_f32(v34, vrsqrtsq_f32(v31, vmulq_f32(v34, v34))));
  v37 = vmulq_n_f32(v67, v36.f32[0]);
  v38 = vmulq_lane_f32(v65, *v36.f32, 1);
  v39 = vmulq_laneq_f32(v66, v36, 2);
  v40 = vuzp1q_s32(v39, v39);
  v41 = vuzp1q_s32(v38, v38);
  v42 = v37;
  if (v32.i32[0])
  {
    v43 = vmlaq_f32(vmulq_f32(vextq_s8(v40, v39, 0xCuLL), vnegq_f32(v38)), v39, vextq_s8(v41, v38, 0xCuLL));
    v42 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
  }

  v44 = vuzp1q_s32(v37, v37);
  v45 = v38;
  if (v32.i32[1])
  {
    v46 = vmlaq_f32(vmulq_f32(vextq_s8(v44, v37, 0xCuLL), vnegq_f32(v39)), v37, vextq_s8(v40, v39, 0xCuLL));
    v45 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
  }

  if (v32.i32[2])
  {
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(v41, v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(v44, v37, 0xCuLL));
    v39 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
  }

  v48 = (*v42.i32 + *&v45.i32[1]) + v39.f32[2];
  if (v48 <= 0.0)
  {
    v53 = *v42.i32 < *&v45.i32[1] || *v42.i32 < v39.f32[2];
    if (v53)
    {
      if (*&v45.i32[1] <= v39.f32[2])
      {
        v61 = vzip2q_s32(v42, v45).u64[0];
        v62 = __PAIR64__(v42.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v39.f32[2] + 1.0) - *v42.i32) - *&v45.i32[1])));
        v63 = vdup_lane_s32(*v45.i8, 0);
        v64 = vsub_f32(*v42.i8, v63);
        v63.i32[0] = v62.i32[0];
        v63.i32[0] = vmul_f32(v62, v63).u32[0];
        v63.i32[1] = v64.i32[1];
        *v50.f32 = vadd_f32(v61, *v39.f32);
        *&v50.u32[2] = v63;
        v51 = 0.5 / v62.f32[0];
        goto LABEL_11;
      }

      v55 = sqrtf(((*&v45.i32[1] + 1.0) - *v42.i32) - v39.f32[2]);
      v59.f32[0] = *&v42.i32[1] + *v45.i32;
      v54 = vzip2q_s32(v42, v45).u64[0];
      v59.f32[1] = v55 * v55;
      *&v59.u32[2] = vext_s8(vadd_f32(*v39.f32, v54), vsub_f32(*v39.f32, v54), 4uLL);
    }

    else
    {
      v55 = sqrtf(((*v42.i32 + 1.0) - *&v45.i32[1]) - v39.f32[2]);
      v59.f32[0] = v55 * v55;
      v56 = *&v42.i32[1] + *v45.i32;
      v57 = vzip2q_s32(v42, v45).u64[0];
      LODWORD(v58) = vadd_f32(v57, *v39.f32).u32[0];
      HIDWORD(v58) = vsub_f32(v57, *&v39).i32[1];
      v59.f32[1] = v56;
      v59.i64[1] = v58;
    }

    v52 = vmulq_n_f32(v59, 0.5 / v55);
    goto LABEL_20;
  }

  v49 = sqrtf(v48 + 1.0);
  *v50.f32 = vsub_f32(*&vzip2q_s32(v45, vuzp1q_s32(v45, v39)), *&vtrn2q_s32(v39, vzip2q_s32(v39, v42)));
  v50.f32[2] = *&v42.i32[1] - *v45.i32;
  v50.f32[3] = v49 * v49;
  v51 = 0.5 / v49;
LABEL_11:
  v52 = vmulq_n_f32(v50, v51);
LABEL_20:
  *(*(*(a1 + 32) + 400) + 16 * a3) = v52;
  result = v68;
  *(*(*(a1 + 32) + 392) + 16 * a3) = v68;
  return result;
}

double sub_1AF10F130(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vmulq_f32(a3, a3);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  v5 = vrsqrte_f32(v4);
  v6 = vmul_f32(v5, vrsqrts_f32(v4, vmul_f32(v5, v5)));
  v7 = vmulq_n_f32(a3, vmul_f32(v6, vrsqrts_f32(v4, vmul_f32(v6, v6))).f32[0]);
  v8 = a1[19];
  v9 = a1[20];
  v10 = vmulq_f32(v9, v9);
  v3.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v3.u32[0]);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v3.u32[0], vmul_f32(*v10.f32, *v10.f32)));
  v11 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v3.u32[0], vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12 = vsubq_f32(v8, a2);
  v13 = vmulq_f32(v7, v11);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vmulq_f32(v7, v12);
  v15 = vmulq_f32(v12, v11);
  v15.f32[0] = -((v15.f32[2] + vaddv_f32(*v15.f32)) - (v13.f32[0] * (v14.f32[2] + vaddv_f32(*v14.f32)))) / (1.0 - (v13.f32[0] * v13.f32[0]));
  *&result = vmlaq_n_f32(v8, v11, v15.f32[0]).u64[0];
  return result;
}

double sub_1AF10F204(int a1, _BYTE *a2, float32x4_t a3, float32x4_t a4, float a5, float32x4_t a6, float32x4_t a7)
{
  v58 = a7;
  v59 = a6;
  v10 = vsubq_f32(a3, a4);
  v53 = a3;
  v51 = v10;
  if (fabsf(v10.f32[0]) <= 0.00001)
  {
    v16 = 0;
    v13 = a3;
    goto LABEL_15;
  }

  if (a3.f32[0] >= 0.0)
  {
    v11 = a3.f32[0];
  }

  else
  {
    v11 = -a3.f32[0];
  }

  v12 = fmodf(v11, a5);
  v14 = a5 * 0.3;
  if (v12 >= v14)
  {
    if (v12 <= (a5 - v14))
    {
      v16 = 0;
      a3 = v53;
      v13 = v53;
      v10 = v51;
      goto LABEL_15;
    }

    v15 = v11 + (a5 - v12);
  }

  else
  {
    v15 = v11 - v12;
  }

  a3 = v53;
  v10 = v51;
  if (v53.n128_f32[0] >= 0.0)
  {
    v13.f32[0] = v15;
  }

  else
  {
    v13.f32[0] = -v15;
  }

  *(v13.i64 + 4) = *(v53.n128_i64 + 4);
  v16 = 1;
LABEL_15:
  v50 = a3.f32[1];
  if (fabsf(v10.f32[1]) <= 0.00001)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v54 = v13;
  if (a3.f32[1] >= 0.0)
  {
    v17 = a3.f32[1];
  }

  else
  {
    v17 = -a3.f32[1];
  }

  v18 = fmodf(v17, a5);
  v19 = a5 * 0.3;
  if (v18 < v19)
  {
    v20 = v17 - v18;
    a3.i32[2] = v53.n128_i32[2];
    v13 = v54;
LABEL_24:
    if (v50 < 0.0)
    {
      v20 = -v20;
    }

    v22.i64[0] = __PAIR64__(LODWORD(v20), v13.u32[0]);
    v22.i64[1] = v13.i64[1];
    v21 = 1;
    v13 = v22;
    goto LABEL_28;
  }

  v13 = v54;
  if (v18 > (a5 - v19))
  {
    v20 = v17 + (a5 - v18);
    a3.i32[2] = v53.n128_i32[2];
    goto LABEL_24;
  }

  v21 = 0;
  a3.i32[2] = v53.n128_i32[2];
LABEL_28:
  v10.i32[2] = v51.i32[2];
LABEL_29:
  v23 = a3.f32[2];
  if (fabsf(v10.f32[2]) <= 0.00001)
  {
    goto LABEL_40;
  }

  v55 = v13;
  if (a3.f32[2] >= 0.0)
  {
    v24 = a3.f32[2];
  }

  else
  {
    v24 = -a3.f32[2];
  }

  v25 = fmodf(v24, a5);
  v26 = a5 * 0.3;
  if (v25 >= v26)
  {
    v13 = v55;
    if (v25 > (a5 - v26))
    {
      v27 = v24 + (a5 - v25);
      goto LABEL_37;
    }

LABEL_40:
    v29 = 0;
    goto LABEL_41;
  }

  v27 = v24 - v25;
  v13 = v55;
LABEL_37:
  if (v23 < 0.0)
  {
    v27 = -v27;
  }

  v28.i64[0] = v13.i64[0];
  v28.i64[1] = __PAIR64__(v13.u32[3], LODWORD(v27));
  v29 = 1;
  v13 = v28;
LABEL_41:
  v30 = a7;
  if (v16)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = v21 | v29;
    if (((v21 | v29) & 1) == 0)
    {
      return *v13.i64;
    }
  }

  if (a1)
  {
    v60 = 0u;
    v61 = 0u;
    v56 = v13;
    sub_1AF1DA1B4(&v60, &v59, &v58);
    sub_1AF110CD4(v16, v21, v29, 0, v56, v53, v60, v61);
    v13.i64[0] = v31;
    return *v13.i64;
  }

  v32 = vmulq_f32(a6, a7);
  v33 = v32.f32[2] + vaddv_f32(*v32.f32);
  v30.f32[3] = -v33;
  v66 = v30;
  if (v16 | v21 | v29)
  {
    v63 = v13;
    v64 = v13;
    v61 = 0u;
    v62 = v13;
    v60 = 0u;
    v34 = vmulq_f32(v13, v30);
    if (((v34.f32[2] + vaddv_f32(*v34.f32)) - v33) >= 5.0)
    {
      v57 = v13;
      if (v16)
      {
        v13.f32[1] = v50;
        v64.f32[2] = v23;
        v64.i64[0] = v13.i64[0];
        v65 = xmmword_1AFE20160;
        sub_1AF1DA1B4(&v60, &v64, &v65);
        if (sub_1AF28702C(&v60, &v66, &v64))
        {
          v35 = vsubq_f32(v53, v64);
          v36 = vmulq_f32(v35, v35);
          v37 = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
          v38 = 1;
        }

        else
        {
          v38 = 0;
          v37 = 3.4028e38;
        }

        v13 = v57;
        if (v21)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v38 = 0;
        v37 = 3.4028e38;
        if (v21)
        {
LABEL_55:
          v13.i32[0] = v53.n128_u32[0];
          v63.f32[2] = v23;
          v63.i64[0] = v13.i64[0];
          v65 = xmmword_1AFE20160;
          sub_1AF1DA1B4(&v60, &v63, &v65);
          if (sub_1AF28702C(&v60, &v66, &v63))
          {
            v42 = vsubq_f32(v53, v63);
            v43 = vmulq_f32(v42, v42);
            v40 = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
            v39 = 1;
          }

          else
          {
            v39 = 0;
            v40 = 3.4028e38;
          }

          v41 = v53.n128_u32[0];
          v13 = v57;
LABEL_59:
          if (v29 && (v62.i32[2] = v13.i32[2], v62.i64[0] = __PAIR64__(LODWORD(v50), v41), v65 = xmmword_1AFE20180, sub_1AF1DA1B4(&v60, &v62, &v65), v44 = sub_1AF28702C(&v60, &v66, &v62), v13.i64[0] = v57.i64[0], v44))
          {
            v45 = vsubq_f32(v53, v62);
            v46 = vmulq_f32(v45, v45);
            v47 = sqrtf(v46.f32[2] + vaddv_f32(*v46.f32));
          }

          else
          {
            if ((v38 | v39) != 1)
            {
              return *v13.i64;
            }

            v47 = 3.4028e38;
          }

          if (v37 >= v40)
          {
            if (v40 < v47)
            {
              v13.i64[0] = v63.i64[0];
              return *v13.i64;
            }
          }

          else if (v37 < v47)
          {
            v13.i64[0] = v64.i64[0];
            return *v13.i64;
          }

          v13.i64[0] = v62.i64[0];
          return *v13.i64;
        }
      }

      v39 = 0;
      v40 = 3.4028e38;
      v41 = v53.n128_u32[0];
      goto LABEL_59;
    }
  }

  return *v13.i64;
}

uint64_t sub_1AF110070(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_1AF110568(void *a1, char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v13, v17, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a1);
        }

        if (objc_msgSend_node(*(*(&v13 + 1) + 8 * v10), v5, v6, v7) == a2)
        {
          return 1;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v5, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = objc_msgSend_parentNode(a2, v5, v6, v7);
  return sub_1AF110568(a1, v11);
}

uint64_t sub_1AF1109A8(uint64_t a1, uint64_t a2, float *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2 - 1;
  if (a2 < 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (*(a1 + 24 * ((v5 + v4) / 2)) <= a4)
      {
        v5 = (v5 + v4) / 2;
      }

      else
      {
        v4 = (v5 + v4) / 2;
      }
    }

    while (v4 - v5 > 1);
  }

  v7 = vabds_f32(a4, *(a1 + 24 * v5));
  v8 = vabds_f32(*(a1 + 24 * v4), a4);
  if (v7 >= v8)
  {
    result = v4;
  }

  else
  {
    v8 = v7;
    result = v5;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF110A2C(uint64_t a1, uint64_t a2, _DWORD *a3, float a4, float a5)
{
  v10 = 0.0;
  result = sub_1AF1109A8(a1, a2, &v10, a4);
  v9 = fmax(a5, 0.1) * 0.3;
  if (v10 >= v9)
  {
    return -1;
  }

  *a3 = *(a1 + 24 * result);
  return result;
}

BOOL sub_1AF110CD4(_BOOL8 result, int a2, int a3, void *a4, float32x4_t a5, __n128 a6, __n128 a7, __n128 a8)
{
  v11 = a6;
  v20[0] = a7;
  v20[1] = a8;
  if (!result && (a2 & 1) == 0 && !a3)
  {
    return result;
  }

  v18 = a5;
  v19 = a5;
  v17 = a5;
  v16 = 0uLL;
  v15 = a5;
  if (result)
  {
    v19.i32[2] = a6.n128_i32[2];
    v19.i64[0] = __PAIR64__(a6.n128_u32[1], a5.u32[0]);
    sub_1AF1DA020(&v16, a5, xmmword_1AFE20150);
    result = sub_1AF28702C(v20, &v16, &v19);
    if (result)
    {
      v11 = a6;
    }

    else
    {
      v11 = a6;
      if (a4)
      {
        *a4 = -1;
      }
    }

    a5 = v15;
  }

  v12 = __PAIR64__(a5.u32[1], v11.n128_u32[0]);
  if (!a2)
  {
    if (!a3)
    {
      return result;
    }

    goto LABEL_19;
  }

  v18.i32[2] = v11.n128_i32[2];
  v13 = v11.n128_u32[0];
  v18.i64[0] = __PAIR64__(a5.u32[1], v11.n128_u32[0]);
  sub_1AF1DA020(&v16, v18, xmmword_1AFE20160);
  result = sub_1AF28702C(v20, &v16, &v18);
  if (result)
  {
    v11.n128_u32[1] = a6.n128_u32[1];
  }

  else
  {
    v11.n128_u32[1] = a6.n128_u32[1];
    if (a4)
    {
      a4[1] = -1;
    }
  }

  a5.i32[2] = v15.i32[2];
  LODWORD(v12) = v13;
  if (a3)
  {
LABEL_19:
    HIDWORD(v12) = v11.n128_u32[1];
    v17.i32[2] = a5.i32[2];
    v17.i64[0] = v12;
    sub_1AF1DA020(&v16, v17, xmmword_1AFE20180);
    result = sub_1AF28702C(v20, &v16, &v17);
    if (!result)
    {
      if (a4)
      {
        a4[2] = -1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF110F58(uint64_t a1, char *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = *(a1 + 32);
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v23, 1);
  v7 = objc_msgSend_model(a2, v4, v5, v6);
  objc_msgSend_setMaterials_(v7, v8, v3, v9);
  v13 = objc_msgSend_model(a2, v10, v11, v12);
  v17 = objc_msgSend_mesh(v13, v14, v15, v16);
  objc_msgSend_setName_(v17, v18, @"[Auth] Arrow", v19);
  return objc_msgSend_setIsAuthoring_(a2, v20, 1, v21);
}

uint64_t sub_1AF111000(uint64_t a1, char *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = *(a1 + 32);
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v23, 1);
  v7 = objc_msgSend_model(a2, v4, v5, v6);
  objc_msgSend_setMaterials_(v7, v8, v3, v9);
  v13 = objc_msgSend_model(a2, v10, v11, v12);
  v17 = objc_msgSend_mesh(v13, v14, v15, v16);
  objc_msgSend_setName_(v17, v18, @"[Auth] Axis", v19);
  return objc_msgSend_setIsAuthoring_(a2, v20, 1, v21);
}

uint64_t sub_1AF1110A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v117[1] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_model(a2, a2, a3, a4);
  v10 = objc_msgSend_copy(v6, v7, v8, v9);
  objc_msgSend_setModel_(a2, v11, v10, v12);
  v16 = objc_msgSend_model(a2, v13, v14, v15);
  if (objc_msgSend_firstMaterial(v16, v17, v18, v19))
  {
    v23 = objc_msgSend_model(a2, v20, v21, v22);
    Material = objc_msgSend_firstMaterial(v23, v24, v25, v26);
    v117[0] = objc_msgSend_copy(Material, v28, v29, v30);
    v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v117, 1);
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  v33 = objc_msgSend_model(a2, v20, v21, v22);
  objc_msgSend_setMaterials_(v33, v34, v32, v35);
  v39 = objc_msgSend_model(a2, v36, v37, v38);
  v43 = objc_msgSend_mesh(v39, v40, v41, v42);
  objc_msgSend_setName_(v43, v44, @"[Auth] Translation", v45);
  objc_msgSend_model(a2, v46, v47, v48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v52 = objc_msgSend_model(a2, v49, v50, v51), objc_msgSend_parametricType(v52, v53, v54, v55) == 8))
  {
    v56 = *(a1 + 32);
    v57 = objc_msgSend_model(a2, v49, v50, v51);
    v61 = objc_msgSend_firstMaterial(v57, v58, v59, v60);
    v65 = objc_msgSend_diffuse(v61, v62, v63, v64);
    objc_msgSend_setContents_(v65, v66, v56, v67);
  }

  else
  {
    v70 = *(a1 + 32);
    v71 = objc_msgSend_model(a2, v49, v50, v51);
    v75 = objc_msgSend_firstMaterial(v71, v72, v73, v74);
    v79 = objc_msgSend_diffuse(v75, v76, v77, v78);
    objc_msgSend_setContents_(v79, v80, v70, v81);
    v85 = objc_msgSend_model(a2, v82, v83, v84);
    v89 = objc_msgSend_firstMaterial(v85, v86, v87, v88);
    objc_msgSend_setBlendMode_(v89, v90, 1, v91);
    LODWORD(v92) = 1050253722;
    objc_msgSend_setOpacity_(a2, v93, v94, v95, v92);
    v99 = objc_msgSend_model(a2, v96, v97, v98);
    v103 = objc_msgSend_firstMaterial(v99, v100, v101, v102);
    objc_msgSend_setDoubleSided_(v103, v104, 1, v105);
  }

  objc_msgSend_setIsAuthoring_(a2, v68, 1, v69);
  v109 = objc_msgSend_model(a2, v106, v107, v108);
  v113 = objc_msgSend_firstMaterial(v109, v110, v111, v112);
  return objc_msgSend_setShadingModel_(v113, v114, 2, v115);
}

uint64_t sub_1AF111268(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v120[1] = *MEMORY[0x1E69E9840];
  result = objc_msgSend_model(a2, a2, a3, a4);
  if (result)
  {
    v10 = objc_msgSend_model(a2, v7, v8, v9);
    v14 = objc_msgSend_copy(v10, v11, v12, v13);
    objc_msgSend_setModel_(a2, v15, v14, v16);
    v20 = objc_msgSend_model(a2, v17, v18, v19);
    if (objc_msgSend_firstMaterial(v20, v21, v22, v23))
    {
      v27 = objc_msgSend_model(a2, v24, v25, v26);
      Material = objc_msgSend_firstMaterial(v27, v28, v29, v30);
      v120[0] = objc_msgSend_copy(Material, v32, v33, v34);
      v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v120, 1);
    }

    else
    {
      v36 = MEMORY[0x1E695E0F0];
    }

    v37 = objc_msgSend_model(a2, v24, v25, v26);
    objc_msgSend_setMaterials_(v37, v38, v36, v39);
    v43 = objc_msgSend_model(a2, v40, v41, v42);
    v47 = objc_msgSend_mesh(v43, v44, v45, v46);
    objc_msgSend_setName_(v47, v48, @"[Auth] RotationArc", v49);
    objc_msgSend_model(a2, v50, v51, v52);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v56 = objc_msgSend_model(a2, v53, v54, v55), objc_msgSend_parametricType(v56, v57, v58, v59) == 8))
    {
      v60 = *(a1 + 32);
      v61 = objc_msgSend_model(a2, v53, v54, v55);
      v65 = objc_msgSend_firstMaterial(v61, v62, v63, v64);
      v69 = objc_msgSend_diffuse(v65, v66, v67, v68);
      objc_msgSend_setContents_(v69, v70, v60, v71);
    }

    else
    {
      v74 = *(a1 + 32);
      v75 = objc_msgSend_model(a2, v53, v54, v55);
      v79 = objc_msgSend_firstMaterial(v75, v76, v77, v78);
      v83 = objc_msgSend_diffuse(v79, v80, v81, v82);
      objc_msgSend_setContents_(v83, v84, v74, v85);
      v89 = objc_msgSend_model(a2, v86, v87, v88);
      v93 = objc_msgSend_firstMaterial(v89, v90, v91, v92);
      objc_msgSend_setBlendMode_(v93, v94, 1, v95);
      LODWORD(v96) = 1058642330;
      objc_msgSend_setOpacity_(a2, v97, v98, v99, v96);
      v103 = objc_msgSend_model(a2, v100, v101, v102);
      v107 = objc_msgSend_firstMaterial(v103, v104, v105, v106);
      objc_msgSend_setDoubleSided_(v107, v108, 1, v109);
    }

    objc_msgSend_setIsAuthoring_(a2, v72, 1, v73);
    v113 = objc_msgSend_model(a2, v110, v111, v112);
    v117 = objc_msgSend_firstMaterial(v113, v114, v115, v116);
    return objc_msgSend_setShadingModel_(v117, v118, 2, v119);
  }

  return result;
}

uint64_t sub_1AF111434(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_model(a2, a2, a3, a4);
  v10 = objc_msgSend_copy(v6, v7, v8, v9);
  objc_msgSend_setModel_(a2, v11, v10, v12);
  v16 = *(a1 + 40);
  if (v16 != 1.0)
  {
    v17 = objc_msgSend_model(a2, v13, v14, v15);
    *&v18 = v16;
    objc_msgSend_setRadius_(v17, v19, v20, v21, v18);
  }

  v22 = objc_msgSend_model(a2, v13, v14, v15);
  if (objc_msgSend_firstMaterial(v22, v23, v24, v25))
  {
    v29 = objc_msgSend_model(a2, v26, v27, v28);
    Material = objc_msgSend_firstMaterial(v29, v30, v31, v32);
    v80[0] = objc_msgSend_copy(Material, v34, v35, v36);
    v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, v80, 1);
  }

  else
  {
    v38 = MEMORY[0x1E695E0F0];
  }

  v39 = objc_msgSend_model(a2, v26, v27, v28);
  objc_msgSend_setMaterials_(v39, v40, v38, v41);
  v42 = *(a1 + 32);
  v46 = objc_msgSend_model(a2, v43, v44, v45);
  v50 = objc_msgSend_firstMaterial(v46, v47, v48, v49);
  v54 = objc_msgSend_diffuse(v50, v51, v52, v53);
  objc_msgSend_setContents_(v54, v55, v42, v56);
  v60 = objc_msgSend_model(a2, v57, v58, v59);
  v64 = objc_msgSend_firstMaterial(v60, v61, v62, v63);
  objc_msgSend_setShadingModel_(v64, v65, 2, v66);
  v70 = objc_msgSend_model(a2, v67, v68, v69);
  v74 = objc_msgSend_mesh(v70, v71, v72, v73);
  objc_msgSend_setName_(v74, v75, @"[Auth] Circle", v76);
  return objc_msgSend_setIsAuthoring_(a2, v77, 1, v78);
}

_OWORD *sub_1AF111588(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_1AF1115D4(a1, a2);
  return a1;
}

void sub_1AF1115B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF1115D4(uint64_t a1, uint64_t a2)
{
  v60 = sub_1AF1A4CE8(a2, 1);
  v52 = a2;
  v51 = sub_1AF1A3CCC(a2);
  if (v51 >= 1)
  {
    v4 = 0;
    allocator = *MEMORY[0x1E695E480];
    v50 = a1;
    while (1)
    {
      v5 = sub_1AF1A3D1C(v52, v4, 1);
      v6 = sub_1AF1A7034(v5);
      v7 = sub_1AF1A7674(v5);
      if (v6 > 5 || ((1 << v6) & 0x23) == 0 || v7 == 0)
      {
        return;
      }

      v10 = v7;
      v11 = 3 * v7;
      v12 = 12 * v7;
      v64 = malloc_type_malloc(12 * v7, 0x100004052888210uLL);
      bytes = malloc_type_malloc(16 * v11, 0x100004052888210uLL);
      v67[0] = 0;
      v13 = sub_1AF1A73C0(v5, v67);
      v53 = v4;
      length = 16 * v11;
      v55 = v11;
      v56 = v12;
      if (v67[0] == 4)
      {
        BytePtr = CFDataGetBytePtr(v13);
        v58 = 0;
        v59 = 0;
      }

      else if (v67[0] == 2)
      {
        v58 = CFDataGetBytePtr(v13);
        v59 = 0;
        BytePtr = 0;
      }

      else
      {
        v59 = v67[0] == 1 ? CFDataGetBytePtr(v13) : 0;
        BytePtr = 0;
        v58 = 0;
      }

      if (v10 >= 1)
      {
        break;
      }

LABEL_39:
      v33 = sub_1AF1A2E00();
      v34 = CFDataCreate(allocator, bytes, length);
      v35 = sub_1AF1ADBE4(v34, 0, v55, 4, 1);
      CFRelease(v34);
      sub_1AF1A3F84(v33, v35, 0, 0);
      CFRelease(v35);
      v36 = sub_1AF1A6834();
      sub_1AF1A699C(v36, 0);
      v37 = CFDataCreate(allocator, v64, v56);
      sub_1AF1A72A0(v36, v10, v37, 4);
      CFRelease(v37);
      v39 = *(v50 + 8);
      v38 = *(v50 + 16);
      if (v39 >= v38)
      {
        v41 = (v39 - *v50) >> 4;
        v42 = v41 + 1;
        if ((v41 + 1) >> 60)
        {
          sub_1AF10A1D0();
        }

        v43 = v38 - *v50;
        if (v43 >> 3 > v42)
        {
          v42 = v43 >> 3;
        }

        if (v43 >= 0x7FFFFFFFFFFFFFF0)
        {
          v44 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v42;
        }

        if (v44)
        {
          sub_1AF112098(v50, v44);
        }

        v45 = (16 * v41);
        *v45 = v33;
        v45[1] = v36;
        v40 = 16 * v41 + 16;
        v46 = *(v50 + 8) - *v50;
        v47 = (16 * v41 - v46);
        memcpy(v47, *v50, v46);
        v48 = *v50;
        *v50 = v47;
        *(v50 + 8) = v40;
        *(v50 + 16) = 0;
        if (v48)
        {
          operator delete(v48);
        }
      }

      else
      {
        *v39 = v33;
        v39[1] = v36;
        v40 = (v39 + 2);
      }

      *(v50 + 8) = v40;
      free(v64);
      free(bytes);
      v4 = v53 + 1;
      if ((v53 + 1) == v51)
      {
        return;
      }
    }

    v16 = 0;
    v17 = 0;
    v18 = 6;
    v19 = 1;
    v20 = 2;
    v62 = v10;
    v61 = v6;
    while (1)
    {
      if (v6 == 5)
      {
        v21 = 0;
        v22 = (2 * (v17 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v23 = 2 * v17 + 2;
      }

      else if (v6 == 1)
      {
        v24 = 2 * v17;
        if (v17)
        {
          v22 = v24 | 1;
          v23 = v24 + 2;
        }

        else
        {
          v22 = v24 | 2;
          v23 = v24 | 1;
        }

        v21 = v17;
      }

      else if (v6)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
      }

      else
      {
        v21 = 3 * v17;
        v22 = v16 + 1;
        v23 = v16 + 2;
      }

      switch(v67[0])
      {
        case 4:
          v21 = *&BytePtr[4 * v21];
          v65 = *&BytePtr[4 * v22];
          v25 = *&BytePtr[4 * v23];
          break;
        case 2:
          v21 = *&v58[2 * v21];
          v65 = *&v58[2 * v22];
          v25 = *&v58[2 * v23];
          break;
        case 1:
          v21 = v59[v21];
          v65 = v59[v22];
          v25 = v59[v23];
          break;
        default:
          v66 = v23;
          v65 = v22;
          goto LABEL_38;
      }

      v66 = v25;
LABEL_38:
      *&bytes[4 * v18 - 24] = sub_1AF1AF084(v60, v21, v14, v15);
      *&bytes[4 * v18 - 16] = v26;
      *&bytes[4 * v18 - 12] = (v16 % 3);
      *&v64[4 * v16] = v16;
      *&bytes[4 * v18 - 8] = sub_1AF1AF084(v60, v65, v27, v28);
      *&bytes[4 * v18] = v29;
      *&bytes[4 * v18 + 4] = (v16 + 1 - 3 * (v19 / 3));
      *&v64[4 * (v16 + 1)] = v16 + 1;
      *&bytes[4 * v18 + 8] = sub_1AF1AF084(v60, v66, v30, v31);
      *&bytes[4 * v18 + 16] = v32;
      *&bytes[4 * v18 + 20] = (v16 + 2 - 3 * (v20 / 3));
      *&v64[4 * (v16 + 2)] = v16 + 2;
      ++v17;
      v18 += 12;
      v19 += 3;
      v20 += 3;
      v16 += 3;
      LODWORD(v10) = v62;
      v6 = v61;
      if (v62 == v17)
      {
        goto LABEL_39;
      }
    }
  }
}

uint64_t *sub_1AF111ACC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *(v2 + 8);
      CFRelease(*v2);
      CFRelease(v4);
      v2 += 16;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1AF111B34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF111B50(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5, uint64_t a6)
{
  *(a1 + 24) = a6;
  result = sub_1AF12E2AC(a2);
  if (result)
  {
    v13 = result;
    objc_msgSend_pushDebugGroup_(result, v11, @"VFX - Draw wireframe", v12);
    v17 = *a1;
    v18 = *(a1 + 8);
    if (*a1 != v18)
    {
      do
      {
        v19 = *v17;
        v20 = v17[1];
        v17 += 2;
        v21 = a4[1];
        v27[0] = *a4;
        v27[1] = v21;
        v22 = a4[3];
        v27[2] = a4[2];
        v27[3] = v22;
        v27[4] = *a5;
        v23 = sub_1AF15BBC4();
        v24 = sub_1AF0D839C();
        LOBYTE(v26) = 1;
        objc_msgSend_authoring_renderMesh_meshElement_withProgram_uniforms_uniformsLength_rasterizerStates_blendStates_texture_sampler_depthBias_(v13, v25, v19, v20, a3, v27, 80, 0, v23, 0, v24, v26);
      }

      while (v17 != v18);
    }

    return objc_msgSend_popDebugGroup(v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_1AF111D5C(uint64_t a1, unint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a1 + 32;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == a1 + 32 || *(v3 + 32) > a2)
  {
LABEL_9:
    operator new();
  }

  return *(v3 + 40);
}

uint64_t sub_1AF111E40(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v8 = *v4++;
      sub_1AF111B50(*v8, a2, a3, (v8 + 32), (v8 + 16), a1[6]);
      MEMORY[0x1B271C6B0](v8, 0x1020C406DF670C8);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a1[1] = v4;
  a1[6] = (a1[6] + 1);

  return sub_1AF111EF8(a1);
}

uint64_t sub_1AF111EF8(uint64_t result)
{
  v1 = (result + 24);
  v2 = *(result + 24);
  v3 = (result + 32);
  if (v2 != (result + 32))
  {
    v4 = result;
    do
    {
      v5 = v2[5];
      if (v5[3] >= *(v4 + 48) - 100)
      {
        v8 = v2[1];
        if (v8)
        {
          do
          {
            v6 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v6 = v2[2];
            v9 = *v6 == v2;
            v2 = v6;
          }

          while (!v9);
        }
      }

      else
      {
        v6 = sub_1AF112440(v1, v2);
        operator delete(v2);
        v7 = sub_1AF111ACC(v5);
        result = MEMORY[0x1B271C6B0](v7, 0x1020C4016EE4530);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_1AF112018(uint64_t result)
{
  if (result)
  {
    sub_1AF112058(result);

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

uint64_t sub_1AF112058(uint64_t a1)
{
  sub_1AF112128(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1AF112098(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF1120E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF112128(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1AF112128(a1, *a2);
    sub_1AF112128(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_1AF11217C(uint64_t a1, unint64_t *a2)
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

uint64_t *sub_1AF11224C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_1AF1122A4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_1AF1122A4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_1AF112440(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1AF1124B4(v6, a2);
  return v3;
}

uint64_t *sub_1AF1124B4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

id sub_1AF112834(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    CFRelease(v2);
    a1[13] = 0;
  }

  v3 = a1[12];
  if (v3)
  {
    CFRelease(v3);
    a1[12] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
    a1[8] = 0;
  }

  return sub_1AF16C9A4(a1);
}

uint64_t sub_1AF112898(uint64_t result)
{
  *(result + 80) = 1065353216;
  *(result + 84) |= 0x68u;
  return result;
}

const void *sub_1AF1128BC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    return 0;
  }

  v13 = sub_1AF1DB564(a2, v12, 1);
  v14 = v13;
  if (v13 && !sub_1AF1DE3A8(v13))
  {
    CFRelease(v14);
    return 0;
  }

  return v14;
}

CFTypeRef sub_1AF112944(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 64);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

void sub_1AF1129D0(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 72) = a2;
}

float sub_1AF112A24(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

float sub_1AF112A6C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 76);
  if (v10 == INFINITY || v10 == 3.4028e38)
  {
    return 3.4028e38;
  }

  v13 = 1.0;
  if (v10 == 0.0)
  {
    v10 = 1.0;
  }

  v14 = v10 * *(a1 + 72);
  if (*(a1 + 84))
  {
    v13 = 2.0;
  }

  return v14 * v13;
}

void sub_1AF112B00(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 76) = a2;
}

float sub_1AF112B54(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 76);
}

void sub_1AF112B9C(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFFE | a2;
}

uint64_t sub_1AF112BFC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 84) & 1;
}

CFTypeRef sub_1AF112C48(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 104);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 104) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 104) = result;
  }

  return result;
}

uint64_t sub_1AF112CC8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

void sub_1AF112D10(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
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

  *(a1 + 84) = *(a1 + 84) & 0xFFFD | v12;
}

uint64_t sub_1AF112D7C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 2) & 1;
}

void sub_1AF112DC8(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
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

  *(a1 + 84) = *(a1 + 84) & 0xFFFB | v12;
}

uint64_t sub_1AF112E34(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 1) & 1;
}

uint64_t sub_1AF112E80(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 3) & 1;
}

void sub_1AF112ECC(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFFF7 | v12;
}

CFStringRef sub_1AF112F38(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF16CC34(a1, theString);
}

uint64_t sub_1AF112F94(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1);
}

void sub_1AF112FE0(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
}

double sub_1AF113034(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

void sub_1AF11307C(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 120) = a2;
}

double sub_1AF1130D0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 120);
}

void sub_1AF113118(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 80) = a2;
}

float sub_1AF11316C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

uint64_t sub_1AF1131B4(_WORD *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  a1[42] = a1[42] & 0xFFEF | v12;
  v13 = CFGetTypeID(a1);
  result = sub_1AF1157BC();
  if (v13 == result)
  {
    result = sub_1AF115980(a1);
    if (result >= 1)
    {
      v15 = result;
      for (i = 0; i != v15; ++i)
      {
        v17 = sub_1AF1159CC(a1, i);
        result = sub_1AF1131B4(v17, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1AF113270(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 4) & 1;
}

uint64_t sub_1AF1132BC(_BYTE *a1)
{
  v2 = CFGetTypeID(a1);
  if (qword_1ED731B30 != -1)
  {
    sub_1AFDD0054();
  }

  if (v2 == qword_1ED731B28)
  {
    if (a1[356])
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[357];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1AF11332C()
{
  if (qword_1ED731B30 != -1)
  {
    sub_1AFDD0054();
  }

  return qword_1ED731B28;
}

uint64_t sub_1AF113364(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 128;
}

uint64_t sub_1AF1133AC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 144);
}

void sub_1AF1133F4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

uint64_t sub_1AF113448(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

CFTypeRef sub_1AF113490(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 96);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 96) = result;
  }

  return result;
}

void sub_1AF113510(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFEFF | v12;
}

uint64_t sub_1AF11357C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return HIBYTE(*(a1 + 84)) & 1;
}

uint64_t sub_1AF1135C8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 5) & 3;
}

void sub_1AF113614(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 84) = *(a1 + 84) & 0xFF9F | (32 * (a2 & 3));
}

uint64_t sub_1AF113678(float32x4_t *cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  if (qword_1ED731B30 != -1)
  {
    sub_1AFDD0068();
  }

  if (v12 == qword_1ED731B28)
  {
    cf[5].i64[1] = sub_1AF11376C;
    return sub_1AF1138D4(cf, a2);
  }

  else if (v12 == sub_1AF11D778())
  {
    cf[5].i64[1] = sub_1AF11D910;
    return sub_1AF11D9DC(cf);
  }

  else
  {
    v14 = sub_1AF0D5194();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDD0090(v14);
      return 0;
    }
  }

  return result;
}

BOOL sub_1AF11376C(float32x4_t *a1, int a2, uint64_t a3, float32x4_t a4)
{
  v6 = *a4.i64;
  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD00D4(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD014C(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  v24 = a1[22].i64[1];
  if (v24)
  {
    if (a1[22].i8[4])
    {
      v25 = a3;
    }

    else
    {
      v25 = &a1[10];
    }

    if (a1[22].i8[5] == 1)
    {
      v26 = a3;
      if ((a1[22].i8[6] & 4) != 0)
      {
        v26 = a1 + 18;
        sub_1AF288CA0(a1[22].i16[0], v25, &a1[14], a1 + 18, a4);
      }
    }

    else
    {
      v26 = a1 + 18;
    }

    v28 = a1[22].i64[1];
    v29 = sub_1AF112E34(a1);
    if (a2)
    {
      v30.n128_f64[0] = 1.0 - v6;
      v31 = v26;
      v32 = v25;
    }

    else
    {
      v30.n128_f64[0] = v6;
      v31 = v25;
      v32 = v26;
    }

    v28(v31, v32, 0, 0, 0, v29, a3, v30);
  }

  else
  {
    v27 = sub_1AF0D5194();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD01C4(v27);
    }
  }

  return v24 != 0;
}

uint64_t sub_1AF1138D4(float32x4_t *a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    v12 = sub_1AF1DE538(a2);
    v13 = sub_1AF1DE4A8(a2);
    goto LABEL_7;
  }

  v13 = 0;
  v12 = a1[22].i16[0];
LABEL_7:
  v14 = sub_1AF11DE20(v12, v13, 0, 0);
  a1[22].i64[1] = v14;
  if (!v14)
  {
    return 0;
  }

  v16 = a1[22].u8[6];
  if ((~v16 & 3) != 0)
  {
    if ((~v16 & 5) == 0)
    {
      sub_1AF288CA0(a1[22].i16[0], &a1[10], &a1[14], a1 + 18, v15);
      return 1;
    }

    if ((~v16 & 6) == 0)
    {
      sub_1AF288FD8(a1[22].i16[0], &a1[18], &a1[14], a1 + 10, v15);
      return 1;
    }

    if (v16)
    {
      v17 = 1;
      a1[22].i8[5] = 1;
      return v17;
    }

    if ((v16 & 2) != 0)
    {
      v17 = 1;
      a1[22].i8[4] = 1;
      return v17;
    }

    if ((v16 & 4) != 0)
    {
      a1[22].i16[2] = 257;
      return 1;
    }

    v18 = sub_1AF1DE3A8(a2);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1AF1CD954(v12);
      v21 = sub_1AF1DE360(a2);
      v22 = sub_1AF1CDA60(v20);
      v23 = sub_1AF1CDB3C(v20);
      v24 = sub_1AF1DE4A8(a2);
      v25 = sub_1AF1DE4F0(a2);
      sub_1AF1C34F8(v21, v19, v22, v23, v24, v25);
      sub_1AF11407C(a1, v20);
      v17 = 1;
      a1[22].i8[5] = 1;
      CFRelease(v20);
      return v17;
    }

    return 0;
  }

  return 1;
}

__n128 sub_1AF113A9C(uint64_t a1, __n128 *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0208(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDCFFDC(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF112F94(a1);
  sub_1AF112F38(a2, v20);
  sub_1AF112944(a2, *(a1 + 64));
  v21 = sub_1AF112A24(a1);
  sub_1AF1129D0(a2, v21);
  v22 = sub_1AF112B54(a1);
  sub_1AF112B00(a2, v22);
  v23 = sub_1AF112BFC(a1);
  sub_1AF112B9C(a2, v23);
  v24 = sub_1AF112CC8(a1);
  sub_1AF112C48(a2, v24);
  v25 = sub_1AF112E34(a1);
  sub_1AF112D10(a2, v25);
  v26 = sub_1AF112D7C(a1);
  sub_1AF112DC8(a2, v26);
  v27 = sub_1AF112E80(a1);
  sub_1AF112ECC(a2, v27);
  v28 = sub_1AF113034(a1);
  sub_1AF112FE0(a2, v28);
  v29 = sub_1AF1130D0(a1);
  sub_1AF11307C(a2, v29);
  v30 = sub_1AF11316C(a1);
  sub_1AF113118(a2, v30);
  v31 = sub_1AF113270(a1);
  sub_1AF1131B4(a2, v31);
  v32 = sub_1AF1135C8(a1);
  sub_1AF113614(a2, v32);
  v33 = sub_1AF113448(a1);
  sub_1AF113490(a2, v33);
  v34 = sub_1AF1133AC(a1);
  sub_1AF1133F4(a2, v34);
  a2[5].n128_u16[2] = a2[5].n128_u16[2] & 0xFF7F | *(a1 + 84) & 0x80;
  result = *(a1 + 128);
  a2[8] = result;
  return result;
}

CFTypeRef *sub_1AF113C58(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0208(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (qword_1ED731B30 != -1)
  {
    sub_1AFDD0068();
  }

  if (v10 == qword_1ED731B28)
  {
    v11 = sub_1AF113D84();
    sub_1AF113DD8(cf, v11);
  }

  else if (v10 == sub_1AF11D778())
  {
    v11 = sub_1AF11D7D8();
    sub_1AF11DD44(cf, v11);
  }

  else if (v10 == sub_1AF1157BC())
  {
    v11 = sub_1AF11581C();
    sub_1AF115ABC(cf, v11);
  }

  else
  {
    if (v10 != sub_1AF1142BC())
    {
      sub_1AF16D160(cf, 0);
      return 0;
    }

    v11 = sub_1AF11431C();
    sub_1AF114EFC(cf, v11);
  }

  sub_1AF16D160(cf, v11);
  if (v11)
  {
    sub_1AF113A9C(cf, v11);
  }

  return v11;
}

uint64_t sub_1AF113D84()
{
  if (qword_1ED731B30 != -1)
  {
    sub_1AFDD0054();
  }

  result = sub_1AF0D160C(qword_1ED731B28, 0x160uLL);
  *(result + 80) = 1065353216;
  *(result + 84) |= 0x68u;
  return result;
}

void *sub_1AF113DD8(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0208(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0280(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  *(a2 + 360) = *(a1 + 360);
  memcpy((a2 + 160), (a1 + 160), *(a1 + 354));
  memcpy((a2 + 288), (a1 + 288), *(a1 + 354));
  result = memcpy((a2 + 224), (a1 + 224), *(a1 + 354));
  v21 = *(a2 + 358) & 0xFE | *(a1 + 358) & 1;
  *(a2 + 358) = v21;
  v22 = v21 & 0xFD | (2 * ((*(a1 + 358) & 2) != 0));
  *(a2 + 358) = v22;
  *(a2 + 358) = v22 & 0xFB | *(a1 + 358) & 4;
  *(a2 + 354) = *(a1 + 354);
  *(a2 + 352) = *(a1 + 352);
  return result;
}

uint64_t sub_1AF113ED4(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (qword_1ED731B30 != -1)
  {
    sub_1AFDD0068();
  }

  if (v10 == qword_1ED731B28)
  {
    return *(cf + 176);
  }

  else if (v10 == sub_1AF11D778())
  {
    return *(*(cf + 19) + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF113F74()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED731B28 = result;
  return result;
}

size_t sub_1AF113F9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 352) = sub_1AF1CDAAC(a2);
  *(a1 + 358) |= 2u;
  return sub_1AF1CDC30(a2, (a1 + 288));
}

uint64_t sub_1AF114010(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 358) & 2) == 0)
  {
    return 0;
  }

  v10 = sub_1AF1CD954(*(a1 + 352));
  sub_1AF1CDB88(v10, (a1 + 288));
  return v10;
}

size_t sub_1AF11407C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 352) = sub_1AF1CDAAC(a2);
  *(a1 + 358) |= 1u;
  return sub_1AF1CDC30(a2, (a1 + 160));
}

uint64_t sub_1AF1140F0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 358) & 1) == 0)
  {
    return 0;
  }

  v10 = sub_1AF1CD954(*(a1 + 352));
  sub_1AF1CDB88(v10, (a1 + 160));
  return v10;
}

size_t sub_1AF11415C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 352) = sub_1AF1CDAAC(a2);
  *(a1 + 358) |= 4u;
  return sub_1AF1CDC30(a2, (a1 + 224));
}

uint64_t sub_1AF1141D0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 358) & 4) == 0)
  {
    return 0;
  }

  v10 = sub_1AF1CD954(*(a1 + 352));
  sub_1AF1CDB88(v10, (a1 + 224));
  return v10;
}

uint64_t sub_1AF11424C()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658460 = result;
  return result;
}

uint64_t sub_1AF114274()
{
  if (qword_1EB658468 != -1)
  {
    sub_1AFDD02F8();
  }

  v1 = qword_1EB658460;

  return sub_1AF0D160C(v1, 0x40uLL);
}

uint64_t sub_1AF1142BC()
{
  if (qword_1ED73AE78 != -1)
  {
    sub_1AFDD030C();
  }

  return qword_1ED73AE70;
}

uint64_t sub_1AF1142F4()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AE70 = result;
  return result;
}

uint64_t sub_1AF11431C()
{
  if (qword_1ED73AE78 != -1)
  {
    sub_1AFDD030C();
  }

  v1 = qword_1ED73AE70;

  return sub_1AF0D160C(v1, 0x90uLL);
}

uint64_t sub_1AF114364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF11D7D8();
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 32) + 2 * a2);
  v7 = sub_1AF120260(*(*(a1 + 48) + 8 * a2));
  v8 = sub_1AF11C4D0(v5, v6, v7, 0, 0);
  v9 = *(a1 + 64);
  if (a2 >= 1)
  {
    v10 = *(a1 + 40);
    v11 = a2;
    do
    {
      v12 = *v10++;
      v9 += (v12 + 15) & 0xF0;
      --v11;
    }

    while (v11);
  }

  if (*(a1 + 16))
  {
    v13 = 0;
    do
    {
      sub_1AF11C604(v8, v13, v9, 0, 0, *(*(a1 + 56) + 4 * v13), 0.0, 0.0, 0.0);
      v9 += *(a1 + 24);
      ++v13;
    }

    while (v13 < *(a1 + 16));
  }

  sub_1AF112944(v4, *(*(a1 + 72) + 8 * a2));
  sub_1AF11D828(v4, v8);
  CFRelease(v8);
  return v4;
}

__n128 *sub_1AF11447C(uint64_t a1)
{
  v2 = sub_1AF11581C();
  sub_1AF113A9C(a1, v2);
  v6 = sub_1AF16CD08(a1, v3, v4, v5);
  sub_1AF16CD6C(v2, v6);
  v7 = sub_1AF112A24(a1);
  v8 = *(*(a1 + 152) + 20);
  if (v8)
  {
    v9 = v7;
    for (i = 0; i != v8; ++i)
    {
      v11 = sub_1AF114364(*(a1 + 152), i);
      sub_1AF1129D0(v11, v9);
      sub_1AF11588C(v2, v11);
      CFRelease(v11);
    }
  }

  return v2;
}

__n128 *sub_1AF114534(uint64_t a1)
{
  v1 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v82 = 0;
  if (!sub_1AF114B30(a1, &v82))
  {
    return 0;
  }

  v2 = sub_1AF114C7C(v1);
  v3 = v2;
  if ((v82 & 1) == 0 && v2 < 3)
  {
    return 0;
  }

  if (qword_1ED73AE78 != -1)
  {
    sub_1AFDD030C();
  }

  v5 = sub_1AF0D160C(qword_1ED73AE70, 0x90uLL);
  v9 = sub_1AF16CD08(v1, v6, v7, v8);
  sub_1AF16CD6C(v5, v9);
  *(v5 + 152) = sub_1AF114274();
  sub_1AF112898(v5);
  v79 = v5;
  v10 = *(v5 + 152);
  *(v10 + 20) = v3;
  v11 = v3;
  *(v10 + 32) = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
  *(v10 + 40) = malloc_type_malloc(v3, 0x100004077774924uLL);
  *(v10 + 48) = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
  *(v10 + 72) = malloc_type_malloc(8 * v3, 0x6004044C4A2DFuLL);
  v12 = malloc_type_malloc(8 * *(v10 + 20), 0x2004093837F09uLL);
  v81 = 0;
  sub_1AF114D08(v1, v12, &v81);
  v80 = v3;
  if (v3)
  {
    v13 = 0;
    for (i = 0; i != v3; v13 += (*(*(v10 + 40) + i++) + 15) & 0xF0)
    {
      v15 = v12[i];
      *(*(v10 + 72) + 8 * i) = sub_1AF112998(v15);
      CFRetain(*(*(v10 + 72) + 8 * i));
      v16 = *(v15 + 152);
      v17 = *(v10 + 40);
      *(*(v10 + 32) + 2 * i) = *(v16 + 28);
      *(v17 + i) = *(v16 + 30);
      *(*(v10 + 48) + 8 * i) = sub_1AF11DE20(*(*(v15 + 152) + 28), *(*(v15 + 152) + 99), 1, 0);
    }

    *(v10 + 24) = v13;
    v18 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if (v80)
    {
      v19 = 0;
      while (1)
      {
        v20 = sub_1AF11D8C8(v12[v19]);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        if (sub_1AF11D654(v20))
        {
          v22 = 1;
        }

        else
        {
          if (!sub_1AF11D698(v21))
          {
            break;
          }

          v22 = sub_1AF11CFA4(v21) != 0;
        }

LABEL_18:
        v18[v19++] = v22;
        if (v11 == v19)
        {
          goto LABEL_21;
        }
      }

      v22 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    *(v10 + 24) = 0;
    v18 = malloc_type_malloc(0, 0x100004077774924uLL);
    v13 = 0;
  }

LABEL_21:
  v23 = sub_1AF112A24(v1);
  v24 = v23;
  if (v23 < 0.0)
  {
    v81 = v11;
LABEL_37:
    v35 = sub_1AF0D5194();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0320(v35, v36, v37, v38, v39, v40, v41, v42);
    }

    v26 = 0;
    v34 = 1;
    goto LABEL_40;
  }

  v25 = v1;
  v26 = 0;
  v27 = 0.0;
  do
  {
    v28 = v23;
    if (v80)
    {
      v29 = v11;
      v30 = v12;
      v31 = v18;
      v28 = v23;
      do
      {
        v32 = *v31++;
        v33 = v27 + 0.0416666667;
        if ((v32 & 1) == 0)
        {
          sub_1AF114E20(*v30, v27, v24);
        }

        if (v33 < v28)
        {
          v28 = v33;
        }

        ++v30;
        --v29;
      }

      while (v29);
    }

    if (v28 >= v27 + 0.00833333333)
    {
      v27 = v28;
    }

    else
    {
      v27 = v27 + 0.00833333333;
    }

    ++v26;
  }

  while (v27 <= v24);
  v81 = v11;
  v1 = v25;
  if (!v26)
  {
    goto LABEL_37;
  }

  v34 = 0;
LABEL_40:
  *(v10 + 16) = v26;
  v43 = v26;
  *(v10 + 56) = malloc_type_malloc(4 * v26, 0x100004052888210uLL);
  if (v23 >= 0.0)
  {
    v77 = v34;
    v78 = v1;
    v44 = 0;
    v45 = 0.0;
    do
    {
      v46 = v45;
      v47 = v23;
      if (v80)
      {
        v48 = v11;
        v49 = v12;
        v50 = v18;
        v47 = v23;
        do
        {
          v51 = *v50++;
          v52 = v46 + 0.0416666667;
          if ((v51 & 1) == 0)
          {
            sub_1AF114E20(*v49, v46, v24);
          }

          if (v52 < v47)
          {
            v47 = v52;
          }

          ++v49;
          --v48;
        }

        while (v48);
      }

      v45 = v46 + 0.00833333333;
      if (v47 >= v46 + 0.00833333333)
      {
        v45 = v47;
      }

      v53 = v46;
      *(*(v10 + 56) + 4 * v44++) = v53;
    }

    while (v45 <= v24);
    v1 = v78;
    v34 = v77;
  }

  else
  {
    LODWORD(v44) = 0;
  }

  free(v18);
  if (v44 != v43)
  {
    v54 = sub_1AF0D5194();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD03E8(v54, v55, v56, v57, v58, v59, v60, v61);
    }
  }

  v62 = malloc_type_malloc(v13 * v43, 0x65D630DBuLL);
  v63 = v62;
  *(v10 + 64) = v62;
  v81 = 0;
  if (v34)
  {
    v64 = v62;
    v4 = v79;
  }

  else
  {
    v65 = 0;
    v4 = v79;
    do
    {
      if (v80)
      {
        v66 = 0;
        v67 = *(*(v10 + 56) + 4 * v65);
        do
        {
          sub_1AF11C7E4(*(v12[v66] + 152), 0, 0, v63, v67);
          v63 += (*(*(v10 + 40) + v66++) + 15) & 0xF0;
        }

        while (v11 != v66);
        v65 = v81;
      }

      v81 = ++v65;
    }

    while (v65 < v43);
    v64 = *(v10 + 64);
  }

  if (v63 != &v64[v13 * v43])
  {
    v68 = sub_1AF0D5194();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0460(v68, v69, v70, v71, v72, v73, v74, v75);
    }
  }

  free(v12);
  v4[4].n128_f32[2] = v23;
  sub_1AF113A9C(v1, v4);
  return v4;
}

uint64_t sub_1AF114B30(uint64_t a1, _BYTE *a2)
{
  if ((*(a1 + 84) & 6) != 0)
  {
    return 0;
  }

  v5 = sub_1AF115980(a1);
  if (sub_1AF112A24(a1) != 0.0)
  {
    if (v5 < 1)
    {
      return 1;
    }

    v6 = 0;
    while (1)
    {
      v7 = sub_1AF1159CC(a1, v6);
      if ((v7[42] & 6) != 0)
      {
        break;
      }

      v8 = v7;
      if (sub_1AF113034(v7) != 0.0 || sub_1AF1130D0(v8) != 0.0 || sub_1AF112A24(v8) == 0.0)
      {
        break;
      }

      if (sub_1AF1129A0(v8))
      {
        if ((sub_1AF114B30(v8, a2) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v9 = CFGetTypeID(v8);
        if (v9 != sub_1AF11D778())
        {
          return 0;
        }

        v10 = sub_1AF11D8C8(v8);
        if (sub_1AF11CEF0(v10))
        {
          return 0;
        }

        if (sub_1AF11D698(v10))
        {
          if (sub_1AF11CFA4(v10))
          {
            *a2 = 1;
          }
        }
      }

      ++v6;
      result = 1;
      if (v5 == v6)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1AF114C7C(uint64_t a1)
{
  v2 = sub_1AF115980(a1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  LODWORD(v4) = 0;
  for (i = 0; i != v3; ++i)
  {
    v6 = sub_1AF1159CC(a1, i);
    if (sub_1AF1129A0(v6))
    {
      v7 = sub_1AF114C7C(v6);
    }

    else
    {
      v7 = 1;
    }

    v4 = (v7 + v4);
  }

  return v4;
}

void sub_1AF114D08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *&v14[5] = *MEMORY[0x1E69E9840];
  v6 = sub_1AF115980(a1);
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_1AF1159CC(a1, i);
      if (sub_1AF1129A0(v9))
      {
        sub_1AF114D08(v9, a2, a3);
      }

      else
      {
        v10 = CFGetTypeID(v9);
        if (v10 != sub_1AF11D778())
        {
          v11 = sub_1AF0D5194();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD04D8(v13, v14, v11);
          }
        }

        v12 = *a3;
        *(a2 + 8 * *a3) = v9;
        *a3 = v12 + 1;
      }
    }
  }
}

void sub_1AF114E20(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 152);
  v4 = a2 / a3 * *(v3 + 16);
  v5 = v4 + 0.00001;
  v16 = v5;
  v6 = sub_1AF11C410(*(v3 + 40), *(v3 + 24), &v16);
  if (v6 < *(v3 + 24) - 1)
  {
    v7 = v4;
    if (*(*(v3 + 40) + 4 * (v6 + 1)) < v7)
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0528(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

CFTypeRef sub_1AF114EFC(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0208(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0280(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 152);
  if (result)
  {
    result = CFRetain(result);
  }

  *(a2 + 152) = result;
  return result;
}

__CFArray *sub_1AF114F84(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  if (!v2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, *(v1 + 20), MEMORY[0x1E695E9C0]);
  v5 = 0;
  v6 = 8 * v2;
  do
  {
    v7 = sub_1AF28A428(*(*(*(a1 + 152) + 72) + v5));
    if (v7)
    {
      v8 = v7;
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v8);
    }

    v5 += 8;
  }

  while (v6 != v5);
  return Mutable;
}

void sub_1AF11502C(uint64_t a1)
{
  free(*(a1 + 32));
  free(*(a1 + 40));
  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v2 = *(a1 + 20);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 72) + 8 * i);
      if (v4)
      {
        CFRelease(v4);
        *(*(a1 + 72) + 8 * i) = 0;
        v2 = *(a1 + 20);
      }
    }
  }

  v5 = *(a1 + 72);

  free(v5);
}

void sub_1AF1150C8(void *a1)
{
  sub_1AF112834(a1);
  v2 = a1[19];
  if (v2)
  {
    CFRelease(v2);
    a1[19] = 0;
  }
}

void sub_1AF115108(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(*(a1 + 16) + v4);
      if (v5)
      {
        _Block_release(v5);
        v2 = *(a1 + 32);
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {

    free(v6);
  }
}

uint64_t sub_1AF115198()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658470 = result;
  return result;
}

uint64_t sub_1AF1151C0(size_t a1)
{
  if (qword_1EB658478 != -1)
  {
    sub_1AFDD05A0();
  }

  v2 = sub_1AF0D160C(qword_1EB658470, 0x18uLL);
  *(v2 + 16) = malloc_type_calloc(0x10uLL, a1, 0x4CB144AEuLL);
  *(v2 + 24) = a1;
  return v2;
}

void *sub_1AF115228(void *a1, void *aBlock, double a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a1[4] >= a1[3])
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD062C(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  *(a1[2] + 16 * a1[4]) = a3;
  result = _Block_copy(aBlock);
  v23 = a1[4];
  *(a1[2] + 16 * v23 + 8) = result;
  a1[4] = v23 + 1;
  return result;
}

void sub_1AF1152E0(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  if (!a2)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a3 == a4)
  {
    if (!a4)
    {
      if (a7 >= a6)
      {
        v28 = a1;
        v29 = a2;
        v30 = a6;
        goto LABEL_17;
      }

      v25 = 1.0;
      v23 = a1;
      v24 = a2;
      v22 = a6;
      v26 = 0;
LABEL_13:
      sub_1AF11544C(v23, v24, v26, a5, v22, v25);
      v30 = 0.0;
      v28 = a1;
      v29 = a2;
LABEL_17:
      v27 = a7;
      goto LABEL_18;
    }

    if (a6 < a7)
    {
      sub_1AF11544C(a1, a2, 0, a5, 0.0, a6);
      v27 = 1.0;
      v28 = a1;
      v29 = a2;
      v30 = a7;
LABEL_18:
      v31 = 0;
      goto LABEL_19;
    }

    v28 = a1;
    v29 = a2;
    v30 = a7;
    v27 = a6;
  }

  else
  {
    if (a3)
    {
      v22 = 0.0;
      v23 = a1;
      v24 = a2;
      v25 = a6;
      v26 = 1;
      goto LABEL_13;
    }

    sub_1AF11544C(a1, a2, 0, a5, a6, 1.0);
    v27 = 1.0;
    v28 = a1;
    v29 = a2;
    v30 = a7;
  }

  v31 = 1;
LABEL_19:
  sub_1AF11544C(v28, v29, v31, a5, v30, v27);
}

void sub_1AF11544C(void *a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  *&v35[5] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a5 > a6)
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD06A4(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (a5 != a6)
  {
    v28 = sub_1AF1156D8(a2, a3, a5);
    v29 = sub_1AF1156D8(a2, a3, a6);
    v30 = v28 & ~(v28 >> 63);
    v31 = v29 >= *(a2 + 32) ? *(a2 + 32) : v29;
    if (v30 < v31)
    {
      v32 = (16 * v30) | 8;
      do
      {
        if (*(a2 + 32) <= v30)
        {
          v33 = sub_1AF0D5194();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD071C(v34, v35, v33);
          }
        }

        sub_1AF116BE8(a1, *(*(a2 + 16) + v32), a4, a3);
        ++v30;
        v32 += 16;
      }

      while (v31 != v30);
    }
  }
}

uint64_t sub_1AF1155D8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t sub_1AF115620(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 16) + 16 * a2 + 8);
}

double sub_1AF11567C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 16) + 16 * a2);
}

uint64_t sub_1AF1156D8(uint64_t a1, int a2, double a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD05B4(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 16);
  if (v14 < 2)
  {
    v16 = 0;
    result = 1;
  }

  else
  {
    v16 = 0;
    do
    {
      if (*(v15 + 16 * (v16 + (v14 - v16) * 0.5)) > a3)
      {
        v14 = (v16 + (v14 - v16) * 0.5);
      }

      else
      {
        v16 = (v16 + (v14 - v16) * 0.5);
      }

      result = v16 + 1;
    }

    while (v14 > v16 + 1);
  }

  v18 = *(v15 + 16 * v16);
  if (v18 >= a3)
  {
    v19 = a3 != 1.0;
    if (v18 != a3)
    {
      v19 = 1;
    }

    if (v19 | a2)
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_1AF1157BC()
{
  if (qword_1ED73AE68 != -1)
  {
    sub_1AFDD076C();
  }

  return qword_1ED73AE60;
}

uint64_t sub_1AF1157F4()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AE60 = result;
  return result;
}

uint64_t sub_1AF11581C()
{
  if (qword_1ED73AE68 != -1)
  {
    sub_1AFDD076C();
  }

  v0 = sub_1AF0D160C(qword_1ED73AE60, 0x90uLL);
  sub_1AF112898(v0);
  *(v0 + 152) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  return v0;
}

void sub_1AF11588C(uint64_t a1, void *value)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0780(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFArrayAppendValue(*(a1 + 152), value);
}

void sub_1AF1158E8(uint64_t a1, CFArrayRef theArray)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD07F8(v4, v5, v6, v7, v8, v9, v10, v11);
    if (theArray)
    {
      goto LABEL_6;
    }
  }

  else if (theArray)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0870(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 152);
  v21.length = CFArrayGetCount(theArray);
  v21.location = 0;
  CFArrayAppendArray(v20, theArray, v21);
}

CFIndex sub_1AF115980(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0780(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return CFArrayGetCount(*(a1 + 152));
}

const void *sub_1AF1159CC(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0780(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return CFArrayGetValueAtIndex(*(a1 + 152), idx);
}

uint64_t sub_1AF115A28(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0780(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 152);
}

void sub_1AF115A70(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0780(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  CFArrayRemoveAllValues(*(a1 + 152));
}

void sub_1AF115ABC(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0208(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0280(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  sub_1AF115A70(a2);
  v20 = sub_1AF115A28(a1);
  Count = CFArrayGetCount(v20);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
      v25 = sub_1AF113C58(ValueAtIndex);
      CFArrayAppendValue(Mutable, v25);
      CFRelease(v25);
    }
  }

  sub_1AF1158E8(a2, Mutable);
  CFRelease(Mutable);
  v26 = sub_1AF115C4C(a1);
  sub_1AF115BE0(a2, v26);
}

void sub_1AF115BE0(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD07F8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 128;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 84) = *(a1 + 84) & 0xFF7F | v12;
}

uint64_t sub_1AF115C4C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD07F8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 84) >> 7) & 1;
}

id sub_1AF115C9C(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    CFRelease(v2);
    a1[19] = 0;
  }

  return sub_1AF112834(a1);
}

CFStringRef sub_1AF115CE0(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | animations: %@>", v3, a1, a1[19]);
}

CFStringRef sub_1AF115D38(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | animations: %@>", v3, a1, a1[19]);
}

uint64_t sub_1AF115D90()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED737CA0 = result;
  return result;
}

uint64_t sub_1AF115DB8()
{
  if (qword_1ED737CA8[0] != -1)
  {
    sub_1AFDD08E8();
  }

  v0 = sub_1AF0D160C(qword_1ED737CA0, 0xA0uLL);
  if (v0)
  {
    *(v0 + 24) = sub_1AF159954(256, 64);
    *(v0 + 32) = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(v0 + 48) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    *(v0 + 56) = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v0 + 80) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(v0 + 112) = sub_1AF1D26F8(40, 64);
    *(v0 + 64) = 0;
  }

  return v0;
}

uint64_t sub_1AF115E90(uint64_t a1, uint64_t a2, const void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD09EC(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF1199E8(a2);
  v31 = sub_1AF113678(v30, a3);
  if (v31)
  {
    sub_1AF11A7A4(a2, a3);
    if (sub_1AF1132BC(v30))
    {
      v32 = 4096;
    }

    else
    {
      v32 = 0;
    }

    *(a2 + 145) = *(a2 + 145) & 0xFFFFEFFF | v32;
    if ((v30[5].i8[4] & 4) != 0 && v30[4].f32[3] > 1.0)
    {
      v33 = sub_1AF1DE538(a3);
      v34 = sub_1AF288070(v33);
      v35 = sub_1AF113ED4(v30);
      if (v35 != v33)
      {
        v36 = sub_1AF0D5194();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v53 = *(a2 + 160);
          *buf = 138412802;
          v55 = v53;
          v56 = 2112;
          v57 = sub_1AF2883D8(v35);
          v58 = 2112;
          v59 = sub_1AF2883D8(v33);
          _os_log_error_impl(&dword_1AF0CE000, v36, OS_LOG_TYPE_ERROR, "Error: type for key %@ is switching from %@ to %@, this will lead to improper animation", buf, 0x20u);
        }
      }

      v37 = sub_1AF1CD954(v35);
      v38 = sub_1AF1CD954(v35);
      v39 = malloc_type_calloc(0x20uLL, 1uLL, 0x83D4197CuLL);
      *(a2 + 136) = v39;
      v39[2] = v37;
      v39[3] = v38;
      v40 = sub_1AF1CDA60(v37);
      if (sub_1AF1CDB3C(v37) >= v34)
      {
        sub_1AF1DE3F0(a3, v40);
        sub_1AF1128B4(v30);
      }
    }

    v41 = CFGetTypeID(a2);
    if (v41 == sub_1AF11AD44())
    {
      v42 = sub_1AF0D5194();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0A64(v42, v43, v44, v45, v46, v47, v48, v49);
      }
    }

    v50 = sub_1AF1DE3A8(a3);
    sub_1AF116190(a1, a2, v50, a3);
  }

  else
  {
    v51 = sub_1AF0D5194();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AF0CE000, v51, OS_LOG_TYPE_DEFAULT, "Warning: fail to setup the animation - won't be added to the animation stack", buf, 2u);
    }
  }

  return v31;
}

void sub_1AF116190(uint64_t a1, void *a2, void *key, const void *a4)
{
  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(a1 + 32), key);
  if (Value && (v25 = Value - 1, (v26 = sub_1AF159A64(*(a1 + 24), Value - 1)) != 0))
  {
    v27 = v26;
  }

  else
  {
    if (CFDictionaryContainsKey(*(a1 + 32), key))
    {
      v28 = sub_1AF0D5194();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0ADC(v28, v29, v30, v31, v32, v33, v34, v35);
      }
    }

    v25 = sub_1AF1599D4(*(a1 + 24));
    v27 = sub_1AF159BD4(*(a1 + 24), 0);
    CFDictionaryAddValue(*(a1 + 32), key, (v25 + 1));
    sub_1AF11BA50(v27);
    *(v27 + 40) = key;
    sub_1AF11BC8C(v27, a4);
    v36 = sub_1AF11AD44();
    v37 = CFGetTypeID(a2);
    *(v27 + 48) = v36 == v37;
    if (v36 != v37)
    {
      v38 = sub_1AF11BD2C(v27);
      v39 = v38;
      if (*(v38 + 37) == 1)
      {
        *(v27 + 128) = 1;
        if (!*(a2[3] + 34))
        {
          v40 = sub_1AF0D5194();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD0B54(v40, v41, v42, v43, v44, v45, v46, v47);
          }
        }

        *(v39 + 32) = 10;
        *(v39 + 36) = sub_1AF288070(10);
        *(v39 + 34) = 8;
        v48 = 10;
        v49 = 8;
      }

      else
      {
        *(v27 + 128) = 0;
        v50 = sub_1AF1DE538(v38);
        v49 = sub_1AF1DE4A8(v39);
        v48 = v50;
      }

      *(v27 + 248) = sub_1AF11DE20(v48, v49, 0, 0);
      v51 = sub_1AF1DE538(v39);
      *(v27 + 242) = sub_1AF288070(v51);
      v52 = sub_1AF116670(a1);
      if (!v52)
      {
        v53 = sub_1AF0D5194();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD0BCC(v53, v54, v55, v56, v57, v58, v59, v60);
        }
      }

      *(v27 + 32) = sub_1AF1DE784(v52, v39);
    }
  }

  ++*(a1 + 160);
  v61 = sub_1AF1199E8(a2);
  if (sub_1AF11357C(v61))
  {
    ++*(a1 + 168);
  }

  a2[22] = v25;
  a2[23] = key;
  sub_1AF11BD74(v27, a2, a1);
}

void sub_1AF11640C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(a1 + 90))
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0C44(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  Count = CFArrayGetCount(*(a1 + 80));
  if (Count >= 1)
  {
    v19 = Count;
    Copy = CFArrayCreateCopy(0, *(a1 + 80));
    CFArrayRemoveAllValues(*(a1 + 80));
    v21 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Copy, v21);
      v23 = sub_1AF1199E8(ValueAtIndex);
      v24 = v23;
      v25 = *(ValueAtIndex + 145);
      *(ValueAtIndex + 145) = v25 & 0xFFFE1FFF;
      if ((v25 & 0x22000) == 0x2000)
      {
        *(ValueAtIndex + 145) = v25 & 0xFFFC1FFF | 0x20000;
        (*(v23 + 128))(ValueAtIndex);
      }

      if ((v25 & 0x8000) != 0)
      {
        v26 = *(ValueAtIndex + 145);
        if ((v26 & 0x80000) == 0)
        {
          *(ValueAtIndex + 145) = v26 | 0x80000;
          v27 = *(ValueAtIndex + 29);
          if (v27)
          {
            v27(ValueAtIndex);
          }

          if (sub_1AF113270(v24))
          {
            if (!v24[17])
            {
              v28 = sub_1AF116670(a1);
              if (v28)
              {
                v29 = *(ValueAtIndex + 22);
                if (v29 != -1)
                {
                  v30 = v28;
                  v31 = sub_1AF159A64(*(a1 + 24), v29);
                  sub_1AF1DE904(v30, *(v31 + 32));
                }
              }
            }
          }
        }
      }

      if ((v25 & 0x4000) == 0)
      {
        goto LABEL_32;
      }

      v32 = *(ValueAtIndex + 145);
      if ((v32 & 0x40000) != 0)
      {
        goto LABEL_32;
      }

      *(ValueAtIndex + 145) = v32 | 0x40000;
      CFRetain(v24);
      v33 = v24[17];
      if (v33 && (v33(ValueAtIndex, (v32 >> 10) & 1, a1, *(ValueAtIndex + 20)) & 1) != 0 || *(ValueAtIndex + 11) == 0.0 && !sub_1AF11A68C(ValueAtIndex))
      {
        goto LABEL_31;
      }

      v34 = sub_1AF119A30(ValueAtIndex);
      if ((sub_1AF11357C(v24) & 1) == 0 && v34 && sub_1AF1166B8(a1, v34, *(ValueAtIndex + 20)) == ValueAtIndex)
      {
        break;
      }

      sub_1AF116778(a1, ValueAtIndex, 8);
      CFRelease(v24);
LABEL_35:
      if (v19 == ++v21)
      {
        CFRelease(Copy);
        return;
      }
    }

    sub_1AF1186AC(a1, v34, *(ValueAtIndex + 20));
LABEL_31:
    CFRelease(v24);
LABEL_32:
    if ((v25 & 0x10000) != 0)
    {
      v35 = *(ValueAtIndex + 145);
      if ((v35 & 0x100000) == 0)
      {
        *(ValueAtIndex + 145) = v35 | 0x100000;
        sub_1AF116840(a1, ValueAtIndex);
      }
    }

    goto LABEL_35;
  }
}

uint64_t sub_1AF116670(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

const __CFDictionary *sub_1AF1166B8(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0CBC(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  result = sub_1AF117B5C(a1, key, 0);
  if (result)
  {
    return CFDictionaryGetValue(result, a3);
  }

  return result;
}

void sub_1AF116778(uint64_t a1, char *value, char a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (*(a1 + 90))
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0DAC(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(value + 145);
  *(value + 145) = v30 | ((a3 & 0xF) << 13);
  if ((v30 & 0x1E000) == 0)
  {
    CFArrayAppendValue(*(a1 + 80), value);
  }
}

void sub_1AF116840(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = a2[22];
  if (v20 != -1)
  {
    v21 = sub_1AF159A64(*(a1 + 24), v20);
    v22 = sub_1AF1199E8(a2);
    --*(a1 + 160);
    if (sub_1AF11357C(v22))
    {
      v23 = *(a1 + 168);
      if (v23)
      {
        *(a1 + 168) = v23 - 1;
      }

      else
      {
        v24 = sub_1AF0D5194();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD0E24();
        }
      }
    }

    sub_1AF11C21C(v21, a2);
    if (*(v21 + 48) == 1)
    {
      sub_1AF11BAA0(v21, a2, *(a1 + 16), (*(v22 + 84) & 0x10) == 0);
    }

    if ((*(a1 + 92) & 1) == 0 && sub_1AF11C2E8(v21))
    {
      v25 = a2[23];
      v26 = sub_1AF116670(a1);
      if (v26 && (*(v21 + 48) & 1) == 0)
      {
        v27 = v26;
        sub_1AF1DEACC(v26, *(v21 + 32));
        sub_1AF1DEBA4(v27, *(v21 + 32));
      }

      if (*(v21 + 241) == 1)
      {
        sub_1AF116DF8(a1, -1);
      }

      if (CFDictionaryContainsKey(*(a1 + 32), v25) != 1)
      {
        v28 = sub_1AF0D5194();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD0E64(v28, v29, v30, v31, v32, v33, v34, v35);
        }
      }

      Value = CFDictionaryGetValue(*(a1 + 32), v25);
      if (!Value)
      {
        v37 = sub_1AF0D5194();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD0EDC(v37, v38, v39, v40, v41, v42, v43, v44);
        }
      }

      v45 = Value - 1;
      CFDictionaryRemoveValue(*(a1 + 32), v25);
      if (!sub_1AF1599D4(*(a1 + 24)))
      {
        v46 = sub_1AF0D5194();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD0F54(v46, v47, v48, v49, v50, v51, v52, v53);
        }
      }

      v54 = sub_1AF159A64(*(a1 + 24), v45);
      sub_1AF11BBD0(v54, *(a1 + 16));
      v55 = *(a1 + 40);
      *(a1 + 40) = v55 + 1;
      if (v55 >= 511)
      {
        v56 = sub_1AF1599D4(*(a1 + 24));
        if (v56 < 1)
        {
          v57 = 0;
        }

        else
        {
          v57 = 0;
          for (i = 0; i != v56; ++i)
          {
            v59 = sub_1AF159A64(*(a1 + 24), i);
            if (*v59 == 1)
            {
              if (v57)
              {
                v60 = v59;
                v61 = sub_1AF159A64(*(a1 + 24), i - v57);
                v62 = v60[3];
                v64 = *v60;
                v63 = v60[1];
                *(v61 + 32) = v60[2];
                *(v61 + 48) = v62;
                *v61 = v64;
                *(v61 + 16) = v63;
                v65 = v60[7];
                v67 = v60[4];
                v66 = v60[5];
                *(v61 + 96) = v60[6];
                *(v61 + 112) = v65;
                *(v61 + 64) = v67;
                *(v61 + 80) = v66;
                v68 = v60[11];
                v70 = v60[8];
                v69 = v60[9];
                *(v61 + 160) = v60[10];
                *(v61 + 176) = v68;
                *(v61 + 128) = v70;
                *(v61 + 144) = v69;
                v71 = v60[15];
                v73 = v60[12];
                v72 = v60[13];
                *(v61 + 224) = v60[14];
                *(v61 + 240) = v71;
                *(v61 + 192) = v73;
                *(v61 + 208) = v72;
                v60[14] = 0u;
                v60[15] = 0u;
                v60[12] = 0u;
                v60[13] = 0u;
                v60[10] = 0u;
                v60[11] = 0u;
                v60[8] = 0u;
                v60[9] = 0u;
                v60[6] = 0u;
                v60[7] = 0u;
                v60[4] = 0u;
                v60[5] = 0u;
                v60[2] = 0u;
                v60[3] = 0u;
                *v60 = 0u;
                v60[1] = 0u;
                *v60 = 0;
                CFDictionarySetValue(*(a1 + 32), *(v61 + 40), (i - v57 + 1));
                for (j = *(v61 + 8); j; j = *(j + 200))
                {
                  *(j + 176) = i - v57;
                }
              }
            }

            else
            {
              ++v57;
            }
          }
        }

        v75 = v56 - v57;
        sub_1AF159B7C(*(a1 + 24), v75);
        if (v75 <= 64)
        {
          v76 = 64;
        }

        else
        {
          v76 = v75;
        }

        sub_1AF159B38(*(a1 + 24), v76);
        *(a1 + 40) = 0;
      }
    }
  }

  if (!sub_1AF119DEC(a2))
  {
    v77 = sub_1AF119C34(a2);
    if (v77)
    {
      sub_1AF11B1C4(v77, a2);
    }

    sub_1AF119C1C(a2, 0);
    CFSetRemoveValue(*(a1 + 56), a2);
  }
}

uint64_t sub_1AF116BE8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1AF119A30(a3);
  v9 = v8;
  if (v8)
  {
    if (sub_1AF16D234(v8))
    {
      v9 = sub_1AF16CDEC(v9);
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = sub_1AF1199E8(a3);
  v11 = sub_1AF16CDEC(v10);
  v12 = sub_1AF1D2760(a1[14]);
  result = objc_msgSend_userAnimation(v11, v13, v14, v15);
  *(v12 + 1) = result;
  *(v12 + 2) = v9;
  v12[24] = a4;
  *v12 = a2;
  *(v12 + 4) = 0;
  v17 = a1[13];
  if (v17)
  {
    v18 = (v17 + 32);
  }

  else
  {
    v18 = (a1 + 12);
  }

  *v18 = v12;
  a1[13] = v12;
  return result;
}

void sub_1AF116CA4(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0FCC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
}

void sub_1AF116CF8(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0FCC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

double sub_1AF116D4C(uint64_t a1, uint64_t a2)
{
  if (!sub_1AF11357C(*(a2 + 16)))
  {
    if (!a1)
    {
      v8 = sub_1AF0D5194();
      v2 = 0.0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDD1044();
      }

      return v2;
    }

    v6 = sub_1AF119C3C(a2);
    if (!v6)
    {
      return *(a1 + 144);
    }

    v7 = sub_1AF11B874(v6);
    if (v7 == 1)
    {
      return *(a1 + 136);
    }

    if (!v7)
    {
      return *(a1 + 144);
    }

    return v2;
  }

  sub_1AF277058();
  return result;
}

void sub_1AF116DF8(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 164) + a2;
  *(a1 + 164) = v12;
  if (v12 < 0)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1084(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void sub_1AF116E78(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD08FC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 88) = 1;
  v10 = *(a1 + 24);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF116FCC;
  v16[3] = &unk_1E7A79918;
  v16[4] = a1;
  sub_1AF159C78(v10, v16);
  v11 = *(a1 + 56);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF117754;
  v15[3] = &unk_1E7A79938;
  v15[4] = a1;
  sub_1AF28A5A0(v11, v15);
  *(a1 + 88) = 0;
  v12 = *(a1 + 96);
  if (v12)
  {
    do
    {
      v13 = v12[4];
      *v14.i64 = (*(*v12 + 16))();
      v12[4] = 0;
      sub_1AF1D28EC(*(a1 + 112), v12, v14);
      *(a1 + 96) = v13;
      v12 = v13;
    }

    while (v13);
  }

  *(a1 + 104) = 0;
  sub_1AF11640C(a1);
}

void sub_1AF116FCC(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8, uint64_t a9, __n128 *a10)
{
  if (a10->n128_u8[0] == 1)
  {
    sub_1AF116FE8(*(a1 + 32), a10, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1AF116FE8(uint64_t a1, __n128 *a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v9 = a2;
  v10 = a1;
  *(&v90[1] + 4) = *MEMORY[0x1E69E9840];
  if (a2[3].n128_u8[0] == 1)
  {
    v11 = a2->n128_i64[1];
    if (!v11)
    {
      v13 = 1;
LABEL_79:
      if (v9[15].n128_u8[1] != v13)
      {
        v9[15].n128_u8[1] = v13;
        if (v13)
        {
          v72 = 1;
        }

        else
        {
          v72 = -1;
        }

        v73 = v10;
        goto LABEL_91;
      }

      return;
    }

    v12 = 0;
    v13 = 1;
    while (1)
    {
      if ((*(v11 + 145) & 0x804) != 0)
      {
        v14 = 1;
      }

      else
      {
        v15 = *(v11 + 16);
        v14 = !sub_1AF11776C(v10, v11);
        if ((*(v11 + 145) & 0x20) != 0)
        {
          v21 = sub_1AF11A510(v11, *(v11 + 60));
          *(v11 + 56) = v21;
          if (v21 == 0.0)
          {
            v12 = 1;
          }

          else
          {
            v22 = *(v15 + 152);
            v80 = *(v11 + 72) * *(v15 + 72);
            v79 = *(v22 + 20);
            v23 = sub_1AF11C410(*(v22 + 56), *(v22 + 16), &v80);
            if (v23 + 1 < *(v22 + 16) - 1)
            {
              v24 = v23 + 1;
            }

            else
            {
              v24 = *(v22 + 16) - 1;
            }

            v25 = *(v22 + 56);
            v26 = *(v25 + 4 * v23);
            v27 = *(v25 + 4 * v24) - v26;
            v75 = v14;
            v76 = v13;
            if (v27 == 0.0)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = (v80 - v26) / v27;
            }

            v80 = v28;
            v29 = *(v22 + 64);
            v30 = *(v22 + 24);
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            if (v79)
            {
              v31 = 0;
              v32 = v29 + v30 * v24;
              v33 = v29 + v30 * v23;
              v77 = v22;
              do
              {
                v34 = *(*(v11 + 248) + 4 * v31);
                v35 = *(*(v22 + 40) + v31);
                if (v34 != -1)
                {
                  v36 = sub_1AF159A64(v9[3].n128_i64[1], v34);
                  if (!*v36)
                  {
                    v37 = sub_1AF0D5194();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
                    {
                      sub_1AFDD114C(buf, v90, v37);
                    }
                  }

                  (*(*(v22 + 48) + 8 * v31))(v33, v32, 0, 0, 0, 0, &v85, v80);
                  if (*(v11 + 56) < 1.0)
                  {
                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v38 = *v36;
                    sub_1AF1DEEC0(*(v10 + 16), *v36);
                    v39 = *(v38 + 136);
                    v40 = v10;
                    v41 = sub_1AF1DE360(*(v38 + 24));
                    v42 = sub_1AF1DE3A8(*(v38 + 24));
                    v43 = v41;
                    v10 = v40;
                    v9 = a2;
                    v39(v43, v42, &v81, v35, *(v36 + 8), *(v36 + 9));
                    v22 = v77;
                    (*(v36 + 16))(&v81, &v85, 0, 0, 0, 0, &v85, *(v11 + 56));
                  }

                  sub_1AF1DEFC8(*(v10 + 16), *v36, *(v36 + 8), *(v36 + 9), &v85, v35);
                }

                v44 = (v35 + 15) & 0xF0;
                v33 += v44;
                v32 += v44;
                ++v31;
              }

              while (v79 != v31);
            }

            v12 = 1;
            v14 = v75;
            v13 = v76;
          }

          goto LABEL_33;
        }
      }

      if (!v12)
      {
        v16 = *(*(*(v11 + 16) + 152) + 20);
        if (v16)
        {
          v17 = 0;
          v18 = 4 * v16;
          do
          {
            v19 = *(*(v11 + 248) + v17);
            if (v19 != -1)
            {
              v20 = sub_1AF159A64(v9[3].n128_i64[1], v19);
              sub_1AF1DEACC(*(v10 + 16), *v20);
            }

            v17 += 4;
          }

          while (v18 != v17);
        }

        v12 = 0;
      }

LABEL_33:
      v13 &= v14;
      v11 = *(v11 + 200);
      if (!v11)
      {
        goto LABEL_79;
      }
    }
  }

  a2[15].n128_u8[0] = 0;
  v45 = a2[2].n128_u64[0];
  v46 = a2[8].n128_u8[0];
  if (v46 == 1)
  {
    v48 = v45[3];
    a2[9] = v45[2];
    a2[10] = v48;
    v49 = v45[4];
    v50 = v45[5];
    v51 = v45[6];
    v52 = v45[7];
    a2[13] = v51;
    a2[14] = v52;
    a2[11] = v49;
    a2[12] = v50;
  }

  else
  {
    memcpy(&a2[4], &v45[2], v45[8].n128_i16[1]);
  }

  v53 = v9->n128_i64[1];
  if (!v53)
  {
    LOBYTE(v55) = 1;
    goto LABEL_85;
  }

  v54 = 0;
  v55 = 1;
  do
  {
    if ((*(v53 + 145) & 0x804) == 0)
    {
      v55 &= !sub_1AF11776C(a1, v53);
      if ((*(v53 + 145) & 0x20) != 0)
      {
        v49.n128_f32[0] = sub_1AF11A510(v53, *(v53 + 60));
        *(v53 + 56) = v49.n128_u32[0];
        if (v49.n128_f32[0] != 0.0)
        {
          v49.n128_u64[1] = 0;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v49.n128_u64[0] = *(v53 + 56);
          if (v49.n128_f32[0] >= 1.0)
          {
            v59 = a2;
          }

          else
          {
            if (v46)
            {
              a2[4] = sub_1AF1CBF20(&a2[9]);
              a2[5] = v56;
              a2[6] = v57;
              a2[7] = v58;
            }

            v59 = a2;
            __memcpy_chk();
            LOBYTE(v46) = 0;
          }

          if (v59[8].n128_u8[0] == 1 && ((*(*(v53 + 16) + 84) & 2) != 0 || (*(v53 + 146) & 0x10) != 0))
          {
            sub_1AF1CCF54(&a2[9], &a2[4], *(*(v53 + 24) + 36), *(*(v53 + 24) + 34), *(*(v53 + 24) + 35), v49.n128_f64[0], v50.n128_f64[0], v51.n128_f64[0], v52.n128_f64[0], a7, a8, a9);
          }

          if (!a1)
          {
            v60 = sub_1AF0D5194();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD10FC(buf, v90, v60);
            }
          }

          if ((*(v53 + 145) & 0x20) != 0)
          {
            v62 = sub_1AF1199E8(v53);
            v63 = v62;
            v64 = *(v53 + 136);
            if (v64 && *v64)
            {
              v65 = *(v64 + 24);
              sub_1AF1CDA60(v65);
              v66 = sub_1AF1CDB3C(v65);
              if (v66 >= 0x40)
              {
                sub_1AF1CDB88(v65, &a2[4]);
              }

              v61 = sub_1AF1128B4(v63);
              v49.n128_f32[0] = sub_1AF1CE158(*(v64 + 8), v65, v65);
              if (v66 <= 0x40)
              {
                sub_1AF1CDC30(v65, &a2[4]);
              }
            }

            else
            {
              v61 = sub_1AF1128B4(v62);
            }
          }

          else
          {
            v61 = 0;
          }

          v54 |= v61;
          if (v54)
          {
            v67 = a2;
            if (a2[8].n128_u8[0])
            {
              a2[15].n128_u8[0] |= *(v53 + 144);
              sub_1AF1CD69C(a2 + 9, &a2[4], *(*(v53 + 24) + 36), *(*(v53 + 24) + 34), *(*(v53 + 24) + 35), v49, v50.n128_f64[0], v51.n128_f64[0], v52.n128_f64[0], a7, a8, a9);
              v49.n128_u32[0] = *(v53 + 56);
              if (v49.n128_f32[0] >= 1.0)
              {
                LOBYTE(v46) = 1;
                goto LABEL_74;
              }
            }

            else
            {
              v49.n128_u32[0] = *(v53 + 56);
              if (v49.n128_f32[0] >= 1.0)
              {
                goto LABEL_74;
              }

              v67 = a2;
              if ((v46 & 1) == 0)
              {
                goto LABEL_72;
              }
            }

            v67[4] = sub_1AF1CBF20(&v67[9]);
            v67[5] = v68;
            v67[6] = v69;
            v67[7] = v70;
LABEL_72:
            __memcpy_chk();
            (v67[15].n128_u64[1])(&v85, &v81, 0, 0, 0, 0, &v67[4], *(v53 + 56));
            LOBYTE(v46) = 0;
            if (v67[8].n128_u8[0] == 1)
            {
              sub_1AF1CD69C(a2 + 9, &a2[4], *(a2[1].n128_u64[1] + 36), *(a2[1].n128_u64[1] + 34), *(a2[1].n128_u64[1] + 35), v49, v50.n128_f64[0], v51.n128_f64[0], v52.n128_f64[0], a7, a8, a9);
              LOBYTE(v46) = 0;
            }
          }
        }
      }
    }

LABEL_74:
    v53 = *(v53 + 200);
  }

  while (v53);
  v9 = a2;
  v45 = a2[2].n128_u64[0];
  if ((v54 & 1) == 0)
  {
LABEL_85:
    sub_1AF1DEACC(*(a1 + 16), v45);
    goto LABEL_86;
  }

  v71 = *(a1 + 16);
  if (a2[8].n128_u8[0] == 1)
  {
    sub_1AF1DF068(*(a1 + 16), a2[2].n128_u64[0], a2 + 9, a2[15].n128_i8[0], v49.n128_f64[0], v50.n128_f64[0], v51.n128_f64[0], v52.n128_f64[0], a7, a8, a9);
  }

  else
  {
    v74 = sub_1AF1DE4F0(v45[1].n128_i64[1]);
    sub_1AF1DEFC8(v71, v45, 0, v74, &a2[4], a2[15].n128_u8[2]);
  }

LABEL_86:
  if (v9[15].n128_u8[1] != (v55 & 1))
  {
    v9[15].n128_u8[1] = v55 & 1;
    if (v55)
    {
      v72 = 1;
    }

    else
    {
      v72 = -1;
    }

    v73 = a1;
LABEL_91:
    sub_1AF116DF8(v73, v72);
  }
}

BOOL sub_1AF117754(_BOOL8 result, uint64_t a2)
{
  if (*(a2 + 176) == -1)
  {
    return sub_1AF11776C(*(result + 32), a2);
  }

  return result;
}

BOOL sub_1AF11776C(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0974(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a2 + 16);
  if (sub_1AF11A7F8(a2) || (*(a2 + 145) & 4) != 0)
  {
    return 0;
  }

  v21 = sub_1AF116D4C(a1, a2);
  v22 = *(a2 + 145);
  if ((v22 & 2) != 0)
  {
    *(a2 + 145) = v22 & 0xFFFFFFFD;
    if (sub_1AF11357C(v20))
    {
      v23 = v21 + sub_1AF113034(v20);
    }

    else
    {
      v24 = sub_1AF119C3C(a2);
      v25 = sub_1AF113034(v20);
      v23 = v25;
      if (v24)
      {
        v26 = sub_1AF11B950(v24);
        if (v26 != 1)
        {
          if (v26)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v21 + v23;
          }
        }
      }

      else
      {
        v23 = v21 + v25;
      }
    }

    *(a2 + 80) = v23;
    v22 = *(a2 + 145);
  }

  v43 = 0;
  v42 = 0;
  v27 = sub_1AF11A050(a2, &v43 + 1, &v43, &v42, v21);
  v28 = *(a2 + 145);
  v29 = HIBYTE(v43);
  v30 = v42;
  *(a2 + 145) = v28 & 0xFFFFFFCF | (16 * HIBYTE(v43)) | (32 * v42);
  if ((v28 & 0x20) != 0 || v30)
  {
    v31 = *(v20 + 72);
    v32 = v31;
    v33 = v31 == 0.0;
    v34 = 1.0;
    if (!v33)
    {
      v34 = v32;
    }

    v35 = v27 / v34;
    v36 = *(a2 + 72);
    v37 = v35;
    *(a2 + 72) = v37;
    v38 = *(v20 + 96);
    if (v38)
    {
      sub_1AF1152E0(a1, v38, (v28 >> 4) & 1, v29, a2, v36, v35);
    }
  }

  if ((*(a1 + 90) & 1) == 0)
  {
    v39 = *(a2 + 145);
    if ((v39 & 1) == 0)
    {
      *(a2 + 145) = v39 | 1;
      if (*(v20 + 128))
      {
        sub_1AF116778(a1, a2, 1);
      }
    }

    if (v43 == 1)
    {
      *(a2 + 145) |= 0x400u;
      sub_1AF119804(a1, a2);
    }
  }

  result = 1;
  if (v22 & 0x100) != 0 && (v43)
  {
    v41 = *(a2 + 40);
    if (v41)
    {
      return (*(v41 + 146) & 1) == 0;
    }

    return 0;
  }

  return result;
}

void sub_1AF117998(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    *(a1 + 88) = 1;
    v12 = (a1 + 88);
    *(a1 + 90) = 1;
    v13 = (a1 + 90);
    goto LABEL_10;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  *(a1 + 88) = 1;
  v12 = (a1 + 88);
  *(a1 + 90) = 1;
  v13 = (a1 + 90);
  v22 = sub_1AF0D5194();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD119C(v22, v23, v24, v25, v26, v27, v28, v29);
  }

LABEL_10:
  v30 = sub_1AF1DE3A8(a2);
  Value = CFDictionaryGetValue(*(a1 + 32), v30);
  if (Value)
  {
    v32 = sub_1AF159A64(*(a1 + 24), Value - 1);
    if (v32)
    {
      *(v32[2].n128_u64[0] + 152) = 0;
      sub_1AF116FE8(a1, v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  *v12 = 0;
  *v13 = 0;
}

BOOL sub_1AF117AA8(uint64_t a1, int a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0FCC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    v12 = *(a1 + 168) <= 0;
    return !v12;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = sub_1AF1599D4(v13) - *(a1 + 40);
  }

  else
  {
    v14 = 0;
  }

  if (v14 < *(a1 + 164))
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1214(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v12 = v14 <= *(a1 + 164);
  return !v12;
}

const void *sub_1AF117B5C(uint64_t a1, void *key, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD128C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(a1 + 48), key);
  if (Value)
  {
    v23 = 1;
  }

  else
  {
    v23 = a3 == 0;
  }

  if (!v23)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(*(a1 + 48), key, Value);
    CFRelease(Value);
  }

  return Value;
}

void sub_1AF117C30(uint64_t a1, uint64_t a2, void *a3, const void *a4, const void *a5, double a6)
{
  v12 = sub_1AF11B17C(a2);
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (sub_1AF1157BC() == v14)
  {
    if (!a1 && (v15 = sub_1AF0D5194(), os_log_type_enabled(v15, OS_LOG_TYPE_FAULT)))
    {
      sub_1AFDD08FC(v15, v16, v17, v18, v19, v20, v21, v22);
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else if (a3)
    {
      goto LABEL_8;
    }

    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD128C(v23, v24, v25, v26, v27, v28, v29, v30);
    }

LABEL_8:
    if (!a4)
    {
      v31 = sub_1AF0D5194();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD0D34(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    sub_1AF1186AC(a1, a3, a4);
    v39 = sub_1AF11A9D4(a1, v13, a3, a4);
    if (v39)
    {
      v40 = v39;
      sub_1AF119A78(v39, a3);
      sub_1AF119C1C(v40, a1);
      CFSetAddValue(*(a1 + 56), v40);
LABEL_24:
      v66 = sub_1AF117B5C(a1, a3, 1);
      CFDictionarySetValue(v66, a4, v40);
      sub_1AF27814C(v40);
      CFRelease(v40);
LABEL_25:
      sub_1AF11B280(a2, v40);
      *(v40 + 14) = a6;
      v67 = v40[15];
      if (v67 != a5)
      {
        if (v67)
        {
          CFRelease(v67);
          v40[15] = 0;
        }

        if (a5)
        {
          v68 = CFRetain(a5);
        }

        else
        {
          v68 = 0;
        }

        v40[15] = v68;
      }

      if ((sub_1AF11B5C0(a2) & 1) == 0)
      {
        sub_1AF118094(a1, v40);
      }

      return;
    }

    return;
  }

  if (sub_1AF1142BC() != v14)
  {
    v69 = sub_1AF1128BC(v13, a3);
    if (v69)
    {
      v70 = v69;
      v40 = sub_1AF117F24(a1, v13, v69, a3, a4);
      CFRelease(v70);
      if (!v40)
      {
        return;
      }

      goto LABEL_25;
    }

    v71 = sub_1AF0D5194();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD1304();
    }

    return;
  }

  if (!a1 && (v41 = sub_1AF0D5194(), os_log_type_enabled(v41, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v41, v42, v43, v44, v45, v46, v47, v48);
    if (a3)
    {
      goto LABEL_19;
    }
  }

  else if (a3)
  {
    goto LABEL_19;
  }

  v49 = sub_1AF0D5194();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD128C(v49, v50, v51, v52, v53, v54, v55, v56);
  }

LABEL_19:
  if (!a4)
  {
    v57 = sub_1AF0D5194();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v57, v58, v59, v60, v61, v62, v63, v64);
    }
  }

  sub_1AF1186AC(a1, a3, a4);
  v65 = sub_1AF11AB88(a1, v13, a3, a4);
  if (v65)
  {
    v40 = v65;
    sub_1AF119A78(v65, a3);
    sub_1AF119C1C(v40, a1);
    sub_1AF116190(a1, v40, a3, 0);
    goto LABEL_24;
  }
}

const void *sub_1AF117F24(uint64_t a1, const void *a2, const void *a3, void *key, const void *a5)
{
  if (!a1 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDCFFDC(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (!a3 && (v26 = sub_1AF0D5194(), os_log_type_enabled(v26, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD119C(v26, v27, v28, v29, v30, v31, v32, v33);
    if (key)
    {
      goto LABEL_11;
    }
  }

  else if (key)
  {
    goto LABEL_11;
  }

  v34 = sub_1AF0D5194();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD128C(v34, v35, v36, v37, v38, v39, v40, v41);
  }

LABEL_11:
  if (!a5)
  {
    v42 = sub_1AF0D5194();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v42, v43, v44, v45, v46, v47, v48, v49);
    }
  }

  sub_1AF1186AC(a1, key, a5);
  v50 = sub_1AF11AC70(a1, a2, a3, a5);
  v51 = v50;
  if (v50)
  {
    sub_1AF119A78(v50, key);
    sub_1AF119C1C(v51, a1);
    v52 = sub_1AF117B5C(a1, key, 1);
    CFDictionarySetValue(v52, a5, v51);
    sub_1AF27814C(v51);
    CFRelease(v51);
  }

  return v51;
}

uint64_t sub_1AF118094(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD08FC(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a2 + 145);
  *(a2 + 145) = v20 & 0xFFFBFFFF;
  sub_1AF11A854(a2, 0);
  v21 = sub_1AF1199E8(a2);
  if (sub_1AF11357C(v21))
  {
    v22 = sub_1AF113034(v21);
    sub_1AF277058();
    v23 = 0;
    v25 = v22 + v24;
    if ((v20 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v26 = sub_1AF119C3C(a2);
  if (!v26)
  {
LABEL_19:
    v23 = 0;
    v25 = 0.0;
    if ((v20 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v27 = v26;
  v28 = sub_1AF11B874(v26);
  if (v28)
  {
    v29 = 0.0;
    if (v28 != 1)
    {
      goto LABEL_15;
    }

    v30 = 136;
  }

  else
  {
    v30 = 144;
  }

  v29 = *(a1 + v30);
LABEL_15:
  v25 = sub_1AF113034(v21);
  v31 = sub_1AF11B950(v27);
  if (v31 != 1)
  {
    if (!v31)
    {
      v25 = v29 + v25;
      v23 = 1;
      if ((v20 & 0x200000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v23 = 0;
  if ((v20 & 0x200000) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*(a2 + 152) != 0.0)
  {
    v32 = sub_1AF11A938(a2);
    sub_1AF119BB8(a2, v25 - v32);
    *(a2 + 152) = 0;
    goto LABEL_26;
  }

LABEL_24:
  sub_1AF119ACC(a2, v25);
  if (v23)
  {
    sub_1AF119B20(a2);
  }

LABEL_26:
  *(a2 + 104) = 0;
  *(a2 + 145) &= 0xFFFFFFF3;
  *(a2 + 72) = -1082130432;
  v33 = *(a2 + 176);
  if (v33 != -1)
  {
    v34 = sub_1AF159A64(*(a1 + 24), v33);
    sub_1AF11C17C(v34, 0, a1);
  }

  result = sub_1AF119ED4(a2);
  if (result >= 1)
  {
    v36 = result;
    for (i = 0; i != v36; ++i)
    {
      v38 = sub_1AF119F24(a2, i);
      result = sub_1AF118094(a1, v38);
    }
  }

  return result;
}

const void *sub_1AF118298(uint64_t a1, const void *a2, const void *a3, void *a4, const void *a5)
{
  result = sub_1AF117F24(a1, a2, a3, a4, a5);
  if (result)
  {

    return sub_1AF118094(a1, result);
  }

  return result;
}

const void *sub_1AF1182E4(uint64_t a1, const void *a2, const void *a3, void *key, const void *a5)
{
  *(a1 + 92) = 1;
  sub_1AF118354(a1, key, a5);
  result = sub_1AF118298(a1, a2, a3, key, a5);
  *(a1 + 92) = 0;
  return result;
}

void sub_1AF118354(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD128C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  sub_1AF1186AC(a1, key, a3);
}

void sub_1AF1183E0(uint64_t a1, void *key)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD13F4(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = sub_1AF117B5C(a1, key, 0);
  if (v20)
  {
    v21 = v20;
    CFRetain(v20);
    Copy = CFDictionaryCreateCopy(0, v21);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1AF1184F8;
    v23[3] = &unk_1E7A79958;
    v23[4] = a1;
    sub_1AF28A67C(Copy, v23);
    CFDictionaryRemoveValue(*(a1 + 48), key);
    CFRelease(Copy);
    CFRelease(v21);
  }
}

void sub_1AF1184F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    sub_1AF118558(v4, a3);
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDD146C();
    }
  }
}

void sub_1AF118558(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD08FC(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  CFRetain(a2);
  if (*(a1 + 88))
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD14E0(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  sub_1AF119804(a1, a2);
  if (*(a1 + 88))
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD1558(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  sub_1AF116840(a1, a2);
  *(a2 + 145) |= 0x800u;
  sub_1AF119A78(a2, 0);
  v36 = *(a2 + 216);
  if (v36)
  {
    sub_1AF11B1C4(v36, a2);
  }

  v37 = sub_1AF119ED4(a2);
  if (v37 >= 1)
  {
    v38 = v37;
    for (i = 0; i != v38; ++i)
    {
      v40 = sub_1AF119F24(a2, i);
      sub_1AF118558(a1, v40);
    }
  }

  CFRelease(a2);
}

void sub_1AF1186AC(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD128C(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF117B5C(a1, key, 0);
  if (v30)
  {
    v31 = v30;
    CFRetain(v30);
    Value = CFDictionaryGetValue(v31, a3);
    if (Value)
    {
      v33 = Value;
      CFRetain(Value);
      sub_1AF119A78(v33, 0);
      sub_1AF118558(a1, v33);
      CFDictionaryRemoveValue(v31, a3);
      CFRelease(v33);
    }

    if (!CFDictionaryGetCount(v31))
    {
      CFDictionaryRemoveValue(*(a1 + 48), key);
    }

    CFRelease(v31);
  }
}

void sub_1AF1187D4(uint64_t a1, void *key, uint64_t a3, double a4)
{
  if (a4 == 0.0)
  {

    sub_1AF1183E0(a1, key);
    return;
  }

  if (!a1 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v8, v9, v10, v11, v12, v13, v14, v15);
    if (!key)
    {
LABEL_8:
      v16 = sub_1AF0D5194();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD13F4(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else if (!key)
  {
    goto LABEL_8;
  }

  v24 = sub_1AF117B5C(a1, key, 0);
  if (v24)
  {
    v25 = v24;
    CFRetain(v24);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1AF11891C;
    v26[3] = &unk_1E7A79978;
    v26[4] = a1;
    *&v26[5] = a4;
    v26[6] = a3;
    sub_1AF28A67C(v25, v26);
    CFRelease(v25);
  }
}

CFTypeRef sub_1AF11891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = sub_1AF116D4C(*(a1 + 32), a3);
  *(a3 + 96) = sub_1AF116D4C(*(a1 + 32), a3);
  v5 = *(a1 + 40);
  if (v5 < 0.0001)
  {
    v5 = 0.0001;
  }

  *(a3 + 104) = v5;
  v6 = *(a3 + 128);
  result = *(a1 + 48);
  if (v6 != result)
  {
    if (v6)
    {
      CFRelease(*(a3 + 128));
      *(a3 + 128) = 0;
      result = *(a1 + 48);
    }

    if (result)
    {
      result = CFRetain(result);
    }

    *(a3 + 128) = result;
  }

  return result;
}

void sub_1AF1189A8(uint64_t a1, void *key, const void *a3, const void *a4, double a5)
{
  if (a5 == 0.0)
  {

    sub_1AF1186AC(a1, key, a3);
    return;
  }

  if (!a1 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v10, v11, v12, v13, v14, v15, v16, v17);
    if (!key)
    {
LABEL_8:
      v18 = sub_1AF0D5194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD128C(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  else if (!key)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  v34 = sub_1AF117B5C(a1, key, 0);
  if (v34)
  {
    v35 = v34;
    CFRetain(v34);
    Value = CFDictionaryGetValue(v35, a3);
    if (Value)
    {
      v37 = Value;
      Value[11] = sub_1AF116D4C(a1, Value);
      v38 = sub_1AF116D4C(a1, v37);
      v39 = 0.0001;
      if (a5 >= 0.0001)
      {
        v39 = a5;
      }

      *(v37 + 96) = v38;
      *(v37 + 104) = v39;
      v40 = *(v37 + 128);
      if (v40 != a4)
      {
        if (v40)
        {
          CFRelease(v40);
          *(v37 + 128) = 0;
        }

        if (a4)
        {
          v41 = CFRetain(a4);
        }

        else
        {
          v41 = 0;
        }

        *(v37 + 128) = v41;
      }
    }

    CFRelease(v35);
  }
}

const __CFDictionary *sub_1AF118B34(uint64_t a1, void *key, const void *a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v6, v7, v8, v9, v10, v11, v12, v13);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD13F4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  return sub_1AF1166B8(a1, key, a3);
}

uint64_t sub_1AF118BE4(uint64_t a1, uint64_t a2, float a3)
{
  if (!a2 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD08FC(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = *(a2 + 145);
  if (a3 == 0.0)
  {
    *(a2 + 145) = v22 & 0xFFFFFFDB | 4;
  }

  else
  {
    *(a2 + 145) = v22 | 8;
    *(a2 + 96) = sub_1AF116D4C(a1, a2);
    *(a2 + 104) = a3;
  }

  *(a2 + 152) = 0;
  result = sub_1AF119ED4(a2);
  if (result >= 1)
  {
    v24 = result;
    for (i = 0; i != v24; ++i)
    {
      v26 = sub_1AF119F24(a2, i);
      result = sub_1AF118BE4(a1, v26, a3);
    }
  }

  return result;
}

uint64_t sub_1AF118CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!a2 && (v10 = sub_1AF0D5194(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD08FC(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (a4)
  {
    result = sub_1AF11A92C(a2);
    if (result == a3)
    {
      return result;
    }

    v27 = sub_1AF11A7F8(a2);
    sub_1AF11A8C0(a2, a3);
  }

  else
  {
    result = sub_1AF11A808(a2);
    if (result == a3)
    {
      return result;
    }

    v27 = sub_1AF11A7F8(a2);
    sub_1AF11A854(a2, a3);
  }

  if (sub_1AF11A7F8(a2))
  {
    v28 = 1;
  }

  else
  {
    v28 = (*(a2 + 145) >> 2) & 1;
  }

  if (v28 != v27)
  {
    v29 = sub_1AF116D4C(a1, a2);
    if (sub_1AF11A7F8(a2))
    {
      sub_1AF11A980(a2, v29);
    }

    else
    {
      v30 = *(a2 + 176);
      if (v30 != -1)
      {
        v31 = sub_1AF159A64(*(a1 + 24), v30);
        sub_1AF11C17C(v31, 0, a1);
      }

      if ((*(a2 + 145) & 4) != 0)
      {
        sub_1AF119ACC(a2, v29);
      }

      else
      {
        v32 = sub_1AF11A938(a2);
        sub_1AF119BB8(a2, v29 - v32);
      }

      *(a2 + 145) &= ~4u;
    }
  }

  result = sub_1AF119ED4(a2);
  if (result >= 1)
  {
    v33 = result;
    for (i = 0; i != v33; ++i)
    {
      v35 = sub_1AF119F24(a2, i);
      result = sub_1AF118CE4(a1, v35, a3, a4, a5);
    }
  }

  return result;
}

const __CFDictionary *sub_1AF118EBC(uint64_t a1, void *key, const void *a3, uint64_t a4, uint64_t a5, double a6)
{
  if (!a1 && (v12 = sub_1AF0D5194(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v12, v13, v14, v15, v16, v17, v18, v19);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v20 = sub_1AF0D5194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD128C(v20, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_6:
  if (!a3)
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0D34(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  result = sub_1AF117B5C(a1, key, 0);
  if (result)
  {
    result = CFDictionaryGetValue(result, a3);
    if (result)
    {
      return sub_1AF118CE4(a1, result, a4, a5, a6);
    }
  }

  return result;
}

CFTypeRef sub_1AF118FB0(uint64_t a1, CFTypeRef cf)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD08FC(v4, v5, v6, v7, v8, v9, v10, v11);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD15D0(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

void sub_1AF1190C0(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 64));
  v4 = *(a1 + 72);
  if (v4)
  {
    objc_msgSend_enumerateObjectsUsingBlock_(v4, v2, &unk_1F24E6AB0, v3);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void *sub_1AF119110(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v3 = sub_1AF1DE3A8(a2[2]);
  v4 = sub_1AF1DE360(a2[3]);
  v5 = sub_1AF1DE3A8(a2[3]);
  v6 = a2[4];
  if (v6)
  {
    (*(v6 + 16))(v6, v3, v5, v12);
    v3 = v12;
  }

  v7 = sub_1AF1DE538(a2[3]);
  v8 = sub_1AF288070(v7);
  v9 = sub_1AF1DE4A8(a2[3]);
  v10 = sub_1AF1DE4F0(a2[3]);
  return sub_1AF1C35C0(v4, v5, v3, v8, v9, v10);
}

BOOL sub_1AF119208(uint64_t a1, void *a2, const __CFString *a3, void *a4, const __CFString *a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = sub_1AF1DB6D0(a2, a3, 0);
  if (!v12)
  {
LABEL_9:
    v21 = sub_1AF16D234(a2);
    v22 = sub_1AF0D5194();
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (!result)
      {
        return result;
      }

      sub_1AFDD16C4(a2, a3, v22);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_1AFDD1648();
    }

    return 0;
  }

  v13 = v12;
  if (!sub_1AF1DE3A8(v12))
  {
    CFRelease(v13);
    goto LABEL_9;
  }

  v14 = sub_1AF1DB6D0(a4, a5, 0);
  if (!v14)
  {
    v24 = v13;
LABEL_16:
    CFRelease(v24);
    return 0;
  }

  v15 = v14;
  if (!sub_1AF1DE3A8(v14))
  {
    CFRelease(v13);
    v24 = v15;
    goto LABEL_16;
  }

  v16 = sub_1AF1DE538(v13);
  if (v16 != sub_1AF1DE538(v15))
  {
    CFRelease(v13);
    CFRelease(v15);
    if (sub_1AF16D234(a2) && sub_1AF16D234(a4))
    {
      v25 = sub_1AF0D5194();
      result = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v28 = 138413058;
      v29 = sub_1AF16CBEC(a2);
      v30 = 2112;
      v31 = a3;
      v32 = 2112;
      v33 = sub_1AF16CBEC(a4);
      v34 = 2112;
      v35 = a5;
    }

    else
    {
      v25 = sub_1AF0D5194();
      result = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v28 = 138413058;
      v29 = a2;
      v30 = 2112;
      v31 = a3;
      v32 = 2112;
      v33 = a4;
      v34 = 2112;
      v35 = a5;
    }

    _os_log_error_impl(&dword_1AF0CE000, v25, OS_LOG_TYPE_ERROR, "Error: Binding: Trying to bind two incompatible keypaths: %@(%@) -> %@(%@)", &v28, 0x2Au);
    return 0;
  }

  sub_1AF1194EC(a1, a2, a3);
  v19 = objc_alloc_init(CFXAnimationBinding);
  v19->_source = v15;
  v19->_destination = v13;
  if (a2)
  {
    v20 = CFRetain(a2);
  }

  else
  {
    v20 = 0;
  }

  v19->_owner = v20;
  v26 = objc_msgSend_objectForKeyedSubscript_(a6, v17, @"VFXBindingValueTransformerKey", v18);
  if (v26)
  {
    v19->_valueTransformer = _Block_copy(v26);
  }

  os_unfair_lock_lock((a1 + 64));
  v27 = *(a1 + 72);
  if (!v27)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(a1 + 72) = v27;
  }

  CFArrayAppendValue(v27, v19);
  os_unfair_lock_unlock((a1 + 64));

  return 1;
}

void sub_1AF1194EC(uint64_t a1, void *a2, const __CFString *a3)
{
  os_unfair_lock_lock((a1 + 64));
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = sub_1AF1DB6D0(a2, a3, 0);
    v8 = sub_1AF1DE3A8(v7);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF1195BC;
    v14[3] = &unk_1E7A799B8;
    v14[4] = a2;
    v14[5] = v8;
    v11 = objc_msgSend_indexesOfObjectsPassingTest_(v6, v9, v14, v10);
    objc_msgSend_removeObjectsAtIndexes_(v6, v12, v11, v13);
    CFRelease(v7);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void sub_1AF11960C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 64));
  v6 = *(a1 + 72);
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF1196B8;
    v10[3] = &unk_1E7A799D8;
    v10[4] = a2;
    v7 = objc_msgSend_indexesOfObjectsPassingTest_(v6, v4, v10, v5);
    objc_msgSend_removeObjectsAtIndexes_(v6, v8, v7, v9);
  }

  os_unfair_lock_unlock((a1 + 64));
}

void sub_1AF1196D0(void *a1)
{
  v2 = a1[3];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1AF1197F4;
  v13[3] = &unk_1E7A79918;
  v13[4] = a1;
  sub_1AF159C78(v2, v13);
  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
    a1[10] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }

  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
    a1[16] = 0;
  }

  v12 = a1[9];
  if (v12)
  {
    CFRelease(v12);
    a1[9] = 0;
  }
}

void sub_1AF119804(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 90) & 1) == 0)
  {
    v2 = *(a2 + 145);
    if ((v2 & 0x40) == 0)
    {
      *(a2 + 145) = v2 | 0x40;
      sub_1AF116778(a1, a2, 6);
    }
  }
}

double sub_1AF119848()
{
  qword_1ED731C68 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E6B10;
  xmmword_1ED721BE8 = xmmword_1F24E6B10;
  return result;
}

uint64_t sub_1AF11988C(const void *a1)
{
  if (qword_1ED731C70 != -1)
  {
    sub_1AFDD1754();
  }

  v2 = sub_1AF0D160C(qword_1ED731C68, 0xE8uLL);
  v3 = v2;
  if (v2)
  {
    sub_1AF1198EC(v2, a1);
  }

  return v3;
}

void sub_1AF1198EC(uint64_t a1, const void *a2)
{
  *(a1 + 60) = 2139095039;
  *(a1 + 72) = -1082130432;
  v4 = *(a1 + 145);
  *(a1 + 176) = -1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 48) = _D0;
  *(a1 + 145) = v4 | 0x24;
  sub_1AF119968(a1, a2);
  v10 = sub_1AF112A24(a2);
  if (v10 == 0.0)
  {
    v10 = sub_1AF277EDC();
    if (v10 == 0.0)
    {
      v10 = 0.25;
    }
  }

  *(a1 + 76) = v10;
}

CFTypeRef sub_1AF119968(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF1199E8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF119A30(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

void sub_1AF119A78(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 168) = a2;
}

void sub_1AF119ACC(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 80) = a2;
}

void sub_1AF119B20(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 145) |= 2u;
}

double sub_1AF119B70(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void sub_1AF119BB8(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 145))
  {
    *(a1 + 80) = *(a1 + 80) + a2;
  }
}

uint64_t sub_1AF119C3C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    v1 = *(a1 + 216);
    if (v1)
    {
      break;
    }

    a1 = *(a1 + 40);
    if (!a1)
    {
      return 0;
    }
  }

  return v1;
}

CFTypeRef sub_1AF119C5C(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 160);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 160) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 160) = result;
  }

  return result;
}

uint64_t sub_1AF119CDC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 232;
}

CFTypeRef sub_1AF119D24(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 224);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 224) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 224) = result;
  }

  return result;
}

uint64_t sub_1AF119DA4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 224);
}

uint64_t sub_1AF119DEC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

void sub_1AF119E34(uint64_t a1, void *value)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD0974(v4, v5, v6, v7, v8, v9, v10, v11);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD1768(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Mutable = *(a1 + 32);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 32) = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
  *(value + 5) = a1;
}

const __CFArray *sub_1AF119ED4(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *sub_1AF119F24(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetValueAtIndex(result, idx);
  }

  return result;
}

void sub_1AF119F84(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 136);
  if (!v3)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD17E0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *v3;
  if (*v3 != a2)
  {
    v14 = *(v3 + 8);
    v13 = *(v3 + 16);
    if (!v14)
    {
      v15 = sub_1AF1CDAAC(*(v3 + 16));
      v14 = sub_1AF1CD954(v15);
      *(v3 + 8) = v14;
      v12 = *v3;
    }

    if (v12 - 1 >= a2)
    {
      v16 = sub_1AF1CDA60(v14);
      sub_1AF1CDC30(v13, v16);
      v12 = 1;
    }

    v17 = a2 - v12;
    if (a2 > v12)
    {
      do
      {
        sub_1AF1CE158(v14, v13, v14);
        --v17;
      }

      while (v17);
    }

    *v3 = a2;
  }
}

double sub_1AF11A050(uint64_t a1, BOOL *a2, _BYTE *a3, BOOL *a4, double a5)
{
  if (!a1)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if ((*(a1 + 147) & 0x60) != 0)
  {
    a5 = *(a1 + 152);
  }

  if (a5 != *(a1 + 60))
  {
    v18 = a5;
    *(a1 + 60) = v18;
    v63 = 0;
    v62 = 1;
    v19 = *(a1 + 40);
    if (v19)
    {
      sub_1AF11A050(v19, &v63 + 1, &v63, &v62, a5);
      v21 = v62;
      if (!v62)
      {
        v32 = 0;
        v33 = 0;
        v28.i64[0] = 0;
        v34 = 0.0;
        goto LABEL_94;
      }

      a5 = v20;
    }

    v22 = sub_1AF1199E8(a1);
    v23 = sub_1AF112A24(v22);
    if (*(a1 + 40))
    {
      v24 = sub_1AF113034(v22);
    }

    else
    {
      v24 = sub_1AF119B70(a1);
    }

    v25 = v24;
    v26 = *(a1 + 52);
    v27 = v26 * sub_1AF11316C(v22);
    v30 = sub_1AF1130D0(v22);
    if (v23 > 0.0)
    {
      v31 = v23;
    }

    else
    {
      v31 = 1.0;
    }

    if (v27 < 0.0)
    {
      HIBYTE(v63) ^= 1u;
    }

    *v28.i64 = a5 - v25;
    if (v23 == 0.0)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0.0;
LABEL_93:
      v21 = 128;
LABEL_94:
      v57 = v34;
      v58 = *(a1 + 145) & 0xFFFFFC7F | (HIBYTE(v63) << 9);
      v59 = *v28.i64;
      *(a1 + 64) = v57;
      *(a1 + 68) = v59;
      if (v32)
      {
        if (*(a1 + 40))
        {
          v60 = v63 << 8;
        }

        else
        {
          v60 = 256;
        }
      }

      else
      {
        v60 = 0;
      }

      *(a1 + 145) = v58 | v21 | v60;
      if (*(a1 + 136))
      {
        sub_1AF119F84(a1, v33);
      }

      goto LABEL_101;
    }

    if (v27 == 0.0)
    {
      v34 = *(a1 + 64);
    }

    else
    {
      v34 = *v28.i64 * fabsf(v27) / v31;
    }

    *v28.i64 = v34;
    if (v34 < 0.0)
    {
      v35 = sub_1AF1135C8(v22);
      v28.i64[0] = 0;
      if ((v35 & 2) == 0)
      {
        v21 = 0;
        v32 = 0;
        v33 = 0;
        goto LABEL_94;
      }
    }

    v36 = *(v22 + 76);
    v37 = v36 == 3.4028e38 || v36 == INFINITY;
    v38 = *(v22 + 84);
    if ((v38 & 1) != 0 || (v33 = 0, v39 = 1.0, v36 != 0.0) && v36 != 1.0)
    {
      if (v36 == 0.0)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = *(v22 + 76);
      }

      if (v37)
      {
        v40 = v34 * 0.5;
        if ((v38 & 1) == 0)
        {
          v40 = v34;
        }

        v33 = v40;
      }

      else
      {
        if (v38)
        {
          v39 = v39 + v39;
        }

        v41 = v34 * 0.5;
        if ((v38 & 1) == 0)
        {
          v41 = v34;
        }

        v33 = v41;
        v34 = v34 / v39;
      }
    }

    v42 = !v37;
    if (v34 < 1.0)
    {
      v42 = 0;
    }

    v32 = v42 | v63;
    v43 = *(a1 + 88);
    if (v43 != 0.0)
    {
      v32 |= v43 + *(a1 + 104) < a5;
    }

    if (v34 > 1.0 && (v32 & 1) != 0)
    {
      if (((v38 & 0x10) == 0 || (*(a1 + 145) & 0x40) != 0 || *(a1 + 40)) && (sub_1AF1135C8(v22) & 1) == 0)
      {
        v21 = 0;
        v28.i64[0] = 0;
        v32 = 1;
        goto LABEL_94;
      }

      *v28.i64 = v39;
      v34 = 1.0;
      if (v37)
      {
        *v28.i64 = 1.0;
      }
    }

    v44 = 0.0;
    v45 = v31;
    v46 = -(v30 / v45);
    if (v27 >= 0.0)
    {
      v46 = v30 / v45;
    }

    *v29.i64 = v46 + *v28.i64;
    if (v30 == 0.0)
    {
      v29.i64[0] = v28.i64[0];
    }

    else
    {
      v44 = v46;
    }

    if (*v29.i64 <= 1.0)
    {
      v28.i64[0] = v29.i64[0];
      if (*v29.i64 < 0.0)
      {
        *v28.i64 = *v29.i64 - trunc(*v29.i64);
        v48.f64[0] = NAN;
        v48.f64[1] = NAN;
        *v28.i64 = *vbslq_s8(vnegq_f64(v48), v28, v29).i64 + 1.0;
      }
    }

    else
    {
      *v28.i64 = *v29.i64 - trunc(*v29.i64);
      v47.f64[0] = NAN;
      v47.f64[1] = NAN;
      v28.i64[0] = vbslq_s8(vnegq_f64(v47), v28, v29).u64[0];
    }

    if (*(v22 + 84))
    {
      v49 = v34 < 1.0 || v37;
      if (v49)
      {
        if (*v29.i64 >= 0.0)
        {
          v50 = *v29.i64;
        }

        else
        {
          v50 = 1.0 - *v29.i64;
        }
      }

      else
      {
        v51 = v44 + v39;
        if (v51 <= 0.0)
        {
          v50 = 1.0 - v51;
        }

        else
        {
          v50 = v51;
        }
      }

      v52 = v50;
      if (v27 < 0.0)
      {
        if (v52)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      if (v52)
      {
LABEL_82:
        HIBYTE(v63) ^= 1u;
        *v28.i64 = 1.0 - *v28.i64;
      }
    }

LABEL_83:
    if (v27 >= 0.0)
    {
      v53 = *v28.i64;
    }

    else
    {
      v53 = 1.0 - *v28.i64;
    }

    v54 = sub_1AF112CC8(v22);
    if (v54)
    {
      if (v53 >= 0.0 && v53 <= 1.0)
      {
        sub_1AF120D98(v54, v53, v23);
        v53 = v56;
      }
    }

    *v28.i64 = v53 * v45;
    goto LABEL_93;
  }

LABEL_101:
  if (a2)
  {
    *a2 = (*(a1 + 145) & 0x200) != 0;
  }

  if (a3)
  {
    *a3 = *(a1 + 146) & 1;
  }

  if (a4)
  {
    *a4 = (*(a1 + 145) & 0x80) != 0;
  }

  return *(a1 + 68);
}

float sub_1AF11A510(uint64_t a1, double a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 40))
  {
    v12 = sub_1AF11A510(a2);
  }

  else
  {
    v12 = 1.0;
  }

  v13 = sub_1AF1199E8(a1);
  v14 = v12 * *(a1 + 48);
  if (*(a1 + 112) != 0.0)
  {
    v15 = *(a1 + 64);
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = fminf(v15, 1.0);
    v17 = *(v13 + 76);
    if (v17 == INFINITY || v17 == 3.4028e38)
    {
      v19 = sub_1AF112A24(v13);
    }

    else
    {
      v19 = sub_1AF112A6C(v13);
    }

    v20 = (v16 * v19);
    v21 = *(a1 + 112);
    if (v21 > v20)
    {
      v22 = v20 / v21;
      v23 = *(a1 + 120);
      if (v23)
      {
        sub_1AF120D98(v23, v22, 1.0);
        v22 = v24;
      }

      v14 = v14 * v22;
    }
  }

  v25 = *(a1 + 104);
  if (v25 != 0.0)
  {
    v26 = 1.0 - (a2 - *(a1 + 96)) / v25;
    if (v26 <= 0.0)
    {
      v26 = 0.0;
    }

    v27 = v26;
    v28 = *(a1 + 128);
    if (v28)
    {
      sub_1AF120D98(v28, v27, 1.0);
      v27 = v29;
    }

    v14 = v14 * v27;
    if (v27 == 0.0)
    {
      v30 = *(a1 + 145);
      if ((v30 & 8) != 0)
      {
        *(a1 + 145) = v30 & 0xFFFFFFD3 | 4;
      }
    }
  }

  return v14;
}

uint64_t sub_1AF11A68C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD0974(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = sub_1AF112E80(*(a1 + 16));
  if (result)
  {
    if (sub_1AF119DEC(a1))
    {
      return sub_1AF11A68C();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1AF11A6F4(uint64_t a1, float a2)
{
  v3 = *(a1 + 52);
  if (v3 != a2)
  {
    if (*(a1 + 145))
    {
      v5 = *(*(a1 + 16) + 80);
      v6 = v3 * v5;
      v7 = v5 * a2;
      v8 = sub_1AF116D4C(*(a1 + 208), a1);
      if (v6 == 0.0)
      {
        v9 = (*(a1 + 64) * *(a1 + 76));
      }

      else
      {
        v9 = (v8 - *(a1 + 80)) * v6;
      }

      if (v7 != 0.0)
      {
        *(a1 + 80) = -(v9 / v7 - v8);
      }
    }

    *(a1 + 52) = a2;
  }
}

CFTypeRef sub_1AF11A7A4(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t sub_1AF11A808(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 147) >> 5) & 1;
}

void sub_1AF11A854(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFFDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 0x200000;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 145) = *(a1 + 145) & 0xFFDFFFFF | v12;
}